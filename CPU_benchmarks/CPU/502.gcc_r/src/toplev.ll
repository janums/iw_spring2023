; ModuleID = 'toplev.bc'
source_filename = "toplev.c"
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
%struct.gimple_df = type opaque
%struct.loops = type { i32, %struct.VEC_loop_p_gc*, %struct.htab*, %struct.loop* }
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
%struct.array_descr_info = type { i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, [10 x %struct.array_descr_dimen] }
%struct.array_descr_dimen = type { %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void ()*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i8 (%union.tree_node*)*, void (i32, i8*, i32, i8)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)*, void (i32)*, void (%struct.rtx_def*)*, void ()*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void (i32)*, void (%union.tree_node*, %union.tree_node*)*, i32 }
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
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.cl_option = type { i8*, i8*, i16, i8, i32, i32, i8*, i32, i32 }
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8* (i8*, i64)* }
%struct.host_hooks = type { void ()*, i8* (i64, i32)*, i32 (i8*, i64, i32, i64)*, i64 ()* }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.cl_option_state = type { i8*, i64, i8 }
%struct.timeval = type { i64, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@optimize = dso_local local_unnamed_addr global i32 3, align 4, !dbg !0
@optimize_size = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1934
@in_lto_p = dso_local local_unnamed_addr global i8 0, align 1, !dbg !1936
@flag_detailed_statistics = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1938
@flag_pcc_struct_return = dso_local local_unnamed_addr global i32 1, align 4, !dbg !1940
@flag_complex_method = dso_local local_unnamed_addr global i32 1, align 4, !dbg !1942
@flag_gen_aux_info = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1944
@flag_next_runtime = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1946
@flag_tls_default = dso_local local_unnamed_addr global i32 2, align 4, !dbg !1948
@flag_ira_algorithm = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1950
@flag_ira_region = dso_local local_unnamed_addr global i32 2, align 4, !dbg !1952
@flag_ira_verbose = dso_local local_unnamed_addr global i32 5, align 4, !dbg !1954
@flag_excess_precision_cmdline = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1956
@flag_excess_precision = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1958
@flag_pedantic_errors = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1960
@flag_permissive = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1962
@flag_debug_asm = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1964
@flag_dump_rtl_in_asm = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1966
@flag_var_tracking = dso_local local_unnamed_addr global i32 2, align 4, !dbg !1968
@flag_var_tracking_assignments = dso_local local_unnamed_addr global i32 2, align 4, !dbg !1970
@flag_var_tracking_assignments_toggle = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1972
@flag_stack_check = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1974
@user_defined_section_attribute = dso_local local_unnamed_addr global i8 0, align 1, !dbg !1976
@flag_evaluation_order = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1978
@dump_file = dso_local local_unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !1980
@src_pwd = internal unnamed_addr global i8* null, align 8, !dbg !2217
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@quiet_flag = external dso_local local_unnamed_addr global i32, align 4
@rtl_dump_and_exit = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2167
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@current_function_decl = common dso_local local_unnamed_addr global %union.tree_node* null, align 8, !dbg !2177
@flag_random_seed = internal unnamed_addr global i8* null, align 8, !dbg !2181
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid option argument %qs\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\09.file\09\00", align 1
@tree_contains_struct = external dso_local local_unnamed_addr global [191 x [64 x i8]], align 16
@cgraph_global_info_ready = external dso_local local_unnamed_addr global i8, align 1
@flag_keep_static_consts = external dso_local local_unnamed_addr global i32, align 4
@warn_unused_function = external dso_local local_unnamed_addr global i32, align 4
@input_location = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2072
@.str.7 = private unnamed_addr constant [28 x i8] c"%q+F used but never defined\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"%q+F declared %<static%> but never defined\00", align 1
@warn_unused_variable = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"%q+D defined but not used\00", align 1
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@debug_hooks = common dso_local local_unnamed_addr global %struct.gcc_debug_hooks* null, align 8, !dbg !2086
@warn_deprecated_decl = external dso_local local_unnamed_addr global i32, align 4
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"deprecated\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"%qD is deprecated (declared at %s:%d): %s\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"%qD is deprecated (declared at %s:%d)\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"%qE is deprecated (declared at %s:%d): %s\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"%qE is deprecated (declared at %s:%d)\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"type is deprecated (declared at %s:%d): %s\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"type is deprecated (declared at %s:%d)\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"%qE is deprecated: %s\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%qE is deprecated\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"type is deprecated: %s\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"type is deprecated\00", align 1
@flag_print_asm_name = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2169
@graph_dump_format = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2171
@set_yydebug = internal unnamed_addr global i1 false, align 4, !dbg !2247
@.str.21 = private unnamed_addr constant [38 x i8] c"unrecognized gcc debugging option: %c\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"stabs\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"coff\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"dwarf-2\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"xcoff\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"vms\00", align 1
@debug_type_names = dso_local local_unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0)], align 16, !dbg !2032
@print_version.fmt1 = internal constant [59 x i8] c"%s%s%s %sversion %s (%s)\0A%s\09compiled by GNU C version %s, \00", align 16, !dbg !2038
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pkgversion_string = external dso_local constant [0 x i8], align 1
@version_string = external dso_local constant [0 x i8], align 1
@.str.30 = private unnamed_addr constant [96 x i8] c"Clang 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)\00", align 1
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@cl_options_count = external dso_local local_unnamed_addr constant i32, align 4
@flag_pic = external dso_local local_unnamed_addr global i32, align 4
@flag_pie = external dso_local local_unnamed_addr global i32, align 4
@target_flags = external dso_local global i32, align 4
@.str.31 = private unnamed_addr constant [50 x i8] c"created and used with different settings of -fpic\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"created and used with different settings of -fpie\00", align 1
@cl_options = external dso_local local_unnamed_addr constant [0 x %struct.cl_option], align 8
@.str.33 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@save_argv = internal unnamed_addr global i8** null, align 8, !dbg !2068
@version_flag = external dso_local local_unnamed_addr global i32, align 4
@help_flag = external dso_local local_unnamed_addr global i32, align 4
@exit_after_options = external dso_local local_unnamed_addr global i8, align 1
@progname = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !2066
@main_input_filename = common dso_local global i8* null, align 8, !dbg !2070
@line_table = common dso_local local_unnamed_addr global %struct.line_maps* null, align 8, !dbg !2074
@dump_base_name = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !2076
@dump_dir_name = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !2078
@aux_base_name = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !2080
@profile_data_prefix = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !2082
@target_flags_explicit = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2084
@asm_file_name = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !2173
@flag_generate_lto = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2175
@current_function_func_begin_label = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !2179
@local_tick = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2183
@flag_signed_char = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2185
@flag_short_enums = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2187
@aux_info_file_name = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !2189
@flag_shlib = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2191
@stack_limit_rtx = common dso_local local_unnamed_addr global %struct.rtx_def* null, align 8, !dbg !2193
@align_loops_log = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2195
@align_loops_max_skip = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2197
@align_jumps_log = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2199
@align_jumps_max_skip = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2201
@align_labels_log = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2203
@align_labels_max_skip = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2205
@align_functions_log = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !2207
@user_label_prefix = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !2209
@asm_out_file = common dso_local local_unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !2211
@aux_info_file = common dso_local local_unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !2213
@dump_file_name = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !2215
@init_random_seed.random_seed = internal global [19 x i8] zeroinitializer, align 16, !dbg !2219
@.str.34 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"getting core file size maximum limit: %m\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"setting core file size limit to maximum: %m\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"created and used with differing settings of '%s'\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@caller_save_initialized_p = external dso_local local_unnamed_addr global i8, align 1
@align_loops = external dso_local local_unnamed_addr global i32, align 4
@align_jumps = external dso_local local_unnamed_addr global i32, align 4
@align_labels = external dso_local local_unnamed_addr global i32, align 4
@align_functions = external dso_local local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"toplev.c\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_unsafe_math_optimizations = external dso_local local_unnamed_addr global i32, align 4
@ix86_fpmath = external dso_local local_unnamed_addr global i32, align 4
@host_hooks = external dso_local local_unnamed_addr constant %struct.host_hooks, align 8
@lang_independent_params = internal constant [120 x %struct.param_info] [%struct.param_info { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0), i32 10, i8 0, i32 0, i32 100, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.44, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i32 0, i32 0), i32 2, i8 0, i32 0, i32 50, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.46, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i32 0, i32 0), i32 400, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.48, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0), i32 50, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.50, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i32 0, i32 0), i32 450, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.52, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.53, i32 0, i32 0), i32 450, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.54, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i32 0, i32 0), i32 8, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.56, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i32 8, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.58, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.60, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.62, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0), i32 1, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.64, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i32 0, i32 0), i32 1, i8 0, i32 1, i32 0, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.66, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.68, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i32 333, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.70, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i32 0, i32 0), i32 32, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.72, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), i32 2700, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.74, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i32 0, i32 0), i32 500, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.76, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0), i32 10000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.78, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i32 0, i32 0), i32 30, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.80, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.81, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.82, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.83, i32 0, i32 0), i32 8, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.84, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0), i32 256, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.86, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.87, i32 0, i32 0), i32 1000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.88, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0), i32 52428800, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.90, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.91, i32 0, i32 0), i32 3, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.92, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.93, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.94, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0), i32 200, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.96, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i32 0, i32 0), i32 80, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.98, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i32 0, i32 0), i32 8, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.100, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.101, i32 0, i32 0), i32 400, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.102, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0), i32 16, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.104, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.105, i32 0, i32 0), i32 400, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.106, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.107, i32 0, i32 0), i32 16, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.108, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.109, i32 0, i32 0), i32 400, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.110, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.111, i32 0, i32 0), i32 8, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.112, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0), i32 50, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.114, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.115, i32 0, i32 0), i32 3, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.116, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.117, i32 0, i32 0), i32 1000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.118, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.119, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.120, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.121, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.122, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.123, i32 0, i32 0), i32 0, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.124, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i32 0, i32 0), i32 0, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.126, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.127, i32 0, i32 0), i32 10000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.128, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.129, i32 0, i32 0), i32 1000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.130, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.132, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.133, i32 0, i32 0), i32 4, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.134, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.135, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.136, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.137, i32 0, i32 0), i32 95, i8 0, i32 0, i32 100, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.138, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.139, i32 0, i32 0), i32 75, i8 0, i32 0, i32 100, i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.140, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.141, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.142, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.143, i32 0, i32 0), i32 10, i8 0, i32 0, i32 100, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.144, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.145, i32 0, i32 0), i32 80, i8 0, i32 0, i32 100, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.146, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.147, i32 0, i32 0), i32 50, i8 0, i32 0, i32 100, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.148, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.149, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.150, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.151, i32 0, i32 0), i32 5, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.152, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.153, i32 0, i32 0), i32 8, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.154, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.155, i32 0, i32 0), i32 8, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.156, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.157, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.158, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.159, i32 0, i32 0), i32 1000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.160, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.161, i32 0, i32 0), i32 20, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.162, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.163, i32 0, i32 0), i32 30, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.164, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.165, i32 0, i32 0), i32 250, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.166, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.167, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.168, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.169, i32 0, i32 0), i32 20, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.170, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.171, i32 0, i32 0), i32 128, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.172, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0), i32 256, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.174, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.175, i32 0, i32 0), i32 128, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.176, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.177, i32 0, i32 0), i32 18, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.178, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.179, i32 0, i32 0), i32 550, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.180, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.181, i32 0, i32 0), i32 500, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.182, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.183, i32 0, i32 0), i32 0, i8 0, i32 0, i32 1, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.184, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.185, i32 0, i32 0), i32 6, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.186, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.187, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.188, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.189, i32 0, i32 0), i32 500, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.190, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.191, i32 0, i32 0), i32 30, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.192, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.193, i32 0, i32 0), i32 4096, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.194, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.195, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.196, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.197, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.198, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.199, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.200, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.201, i32 0, i32 0), i32 15, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.198, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.202, i32 0, i32 0), i32 200, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.200, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.203, i32 0, i32 0), i32 40, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.204, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.205, i32 0, i32 0), i32 0, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.206, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.207, i32 0, i32 0), i32 3, i8 0, i32 1, i32 10, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.208, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.209, i32 0, i32 0), i32 40, i8 0, i32 0, i32 100, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.210, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.211, i32 0, i32 0), i32 50, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.212, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.213, i32 0, i32 0), i32 2, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.214, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.215, i32 0, i32 0), i32 2, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.216, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.217, i32 0, i32 0), i32 1, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.218, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.219, i32 0, i32 0), i32 10000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.220, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.221, i32 0, i32 0), i32 256, i8 0, i32 2, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.222, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.223, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.224, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.225, i32 0, i32 0), i32 3, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.226, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.227, i32 0, i32 0), i32 8, i8 0, i32 1, i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.228, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.229, i32 0, i32 0), i32 15, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.230, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.231, i32 0, i32 0), i32 0, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.232, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.233, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.234, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.235, i32 0, i32 0), i32 200, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.236, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.237, i32 0, i32 0), i32 3, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.238, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.239, i32 0, i32 0), i32 64, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.240, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.241, i32 0, i32 0), i32 32, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.242, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.243, i32 0, i32 0), i32 512, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.244, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.245, i32 0, i32 0), i32 1, i8 0, i32 0, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.246, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.247, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.248, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.249, i32 0, i32 0), i32 10000, i8 0, i32 10, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.250, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.251, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.252, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.253, i32 0, i32 0), i32 1000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.254, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.255, i32 0, i32 0), i32 2, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.256, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.257, i32 0, i32 0), i32 8, i8 0, i32 1, i32 0, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.258, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.259, i32 0, i32 0), i32 51, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.260, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.261, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.262, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.263, i32 0, i32 0), i32 100, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.264, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.265, i32 0, i32 0), i32 10000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.266, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.267, i32 0, i32 0), i32 1000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.268, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.269, i32 0, i32 0), i32 10, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.270, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.271, i32 0, i32 0), i32 3, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.272, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.273, i32 0, i32 0), i32 50000000, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.274, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.275, i32 0, i32 0), i32 0, i8 0, i32 1, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.276, i32 0, i32 0) }, %struct.param_info { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.277, i32 0, i32 0), i32 2, i8 0, i32 0, i32 0, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.278, i32 0, i32 0) }, %struct.param_info zeroinitializer], align 16, !dbg !2227
@this_is_asm_operands = external dso_local local_unnamed_addr global %struct.rtx_def*, align 8
@.str.41 = private unnamed_addr constant [20 x i8] c"unrecoverable error\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"struct-reorg-cold-struct-ratio\00", align 1
@.str.44 = private unnamed_addr constant [65 x i8] c"The threshold ratio between current and hottest structure counts\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"predictable-branch-outcome\00", align 1
@.str.46 = private unnamed_addr constant [59 x i8] c"Maximal estimated outcome of branch considered predictable\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"max-inline-insns-single\00", align 1
@.str.48 = private unnamed_addr constant [78 x i8] c"The maximum number of instructions in a single function eligible for inlining\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"max-inline-insns-auto\00", align 1
@.str.50 = private unnamed_addr constant [63 x i8] c"The maximum number of instructions when automatically inlining\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"max-inline-insns-recursive\00", align 1
@.str.52 = private unnamed_addr constant [86 x i8] c"The maximum number of instructions inline function can grow to via recursive inlining\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"max-inline-insns-recursive-auto\00", align 1
@.str.54 = private unnamed_addr constant [90 x i8] c"The maximum number of instructions non-inline function can grow to via recursive inlining\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"max-inline-recursive-depth\00", align 1
@.str.56 = private unnamed_addr constant [61 x i8] c"The maximum depth of recursive inlining for inline functions\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"max-inline-recursive-depth-auto\00", align 1
@.str.58 = private unnamed_addr constant [65 x i8] c"The maximum depth of recursive inlining for non-inline functions\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"min-inline-recursive-probability\00", align 1
@.str.60 = private unnamed_addr constant [90 x i8] c"Inline recursively only when the probability of call being executed exceeds the parameter\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"max-early-inliner-iterations\00", align 1
@.str.62 = private unnamed_addr constant [74 x i8] c"The maximum number of nested indirect inlining performed by early inliner\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"max-variable-expansions-in-unroller\00", align 1
@.str.64 = private unnamed_addr constant [140 x i8] c"If -fvariable-expansion-in-unroller is used, the maximum number of times that an individual variable will be expanded during loop unrolling\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"min-vect-loop-bound\00", align 1
@.str.66 = private unnamed_addr constant [97 x i8] c"If -ftree-vectorize is used, the minimal loop bound of a loop to be considered for vectorization\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"max-delay-slot-insn-search\00", align 1
@.str.68 = private unnamed_addr constant [68 x i8] c"The maximum number of instructions to consider to fill a delay slot\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"max-delay-slot-live-search\00", align 1
@.str.70 = private unnamed_addr constant [90 x i8] c"The maximum number of instructions to consider to find accurate live register information\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"max-pending-list-length\00", align 1
@.str.72 = private unnamed_addr constant [59 x i8] c"The maximum length of scheduling's pending operations list\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"large-function-insns\00", align 1
@.str.74 = private unnamed_addr constant [49 x i8] c"The size of function body to be considered large\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"large-function-growth\00", align 1
@.str.76 = private unnamed_addr constant [62 x i8] c"Maximal growth due to inlining of large function (in percent)\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"large-unit-insns\00", align 1
@.str.78 = private unnamed_addr constant [52 x i8] c"The size of translation unit to be considered large\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"inline-unit-growth\00", align 1
@.str.80 = private unnamed_addr constant [78 x i8] c"How much can given compilation unit grow because of the inlining (in percent)\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"ipcp-unit-growth\00", align 1
@.str.82 = private unnamed_addr constant [106 x i8] c"How much can given compilation unit grow because of the interprocedural constant propagation (in percent)\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"early-inlining-insns\00", align 1
@.str.84 = private unnamed_addr constant [82 x i8] c"Maximal estimated growth of function body caused by early inlining of single call\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"large-stack-frame\00", align 1
@.str.86 = private unnamed_addr constant [47 x i8] c"The size of stack frame to be considered large\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"large-stack-frame-growth\00", align 1
@.str.88 = private unnamed_addr constant [56 x i8] c"Maximal stack frame growth due to inlining (in percent)\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"max-gcse-memory\00", align 1
@.str.90 = private unnamed_addr constant [53 x i8] c"The maximum amount of memory to be allocated by GCSE\00", align 1
@.str.91 = private unnamed_addr constant [35 x i8] c"gcse-after-reload-partial-fraction\00", align 1
@.str.92 = private unnamed_addr constant [79 x i8] c"The threshold ratio for performing partial redundancy elimination after reload\00", align 1
@.str.93 = private unnamed_addr constant [36 x i8] c"gcse-after-reload-critical-fraction\00", align 1
@.str.94 = private unnamed_addr constant [113 x i8] c"The threshold ratio of critical edges execution count that permit performing redundancy elimination after reload\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"max-unrolled-insns\00", align 1
@.str.96 = private unnamed_addr constant [67 x i8] c"The maximum number of instructions to consider to unroll in a loop\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"max-average-unrolled-insns\00", align 1
@.str.98 = private unnamed_addr constant [78 x i8] c"The maximum number of instructions to consider to unroll in a loop on average\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"max-unroll-times\00", align 1
@.str.100 = private unnamed_addr constant [50 x i8] c"The maximum number of unrollings of a single loop\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"max-peeled-insns\00", align 1
@.str.102 = private unnamed_addr constant [45 x i8] c"The maximum number of insns of a peeled loop\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"max-peel-times\00", align 1
@.str.104 = private unnamed_addr constant [48 x i8] c"The maximum number of peelings of a single loop\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"max-completely-peeled-insns\00", align 1
@.str.106 = private unnamed_addr constant [56 x i8] c"The maximum number of insns of a completely peeled loop\00", align 1
@.str.107 = private unnamed_addr constant [26 x i8] c"max-completely-peel-times\00", align 1
@.str.108 = private unnamed_addr constant [74 x i8] c"The maximum number of peelings of a single loop that is peeled completely\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"max-once-peeled-insns\00", align 1
@.str.110 = private unnamed_addr constant [66 x i8] c"The maximum number of insns of a peeled loop that rolls only once\00", align 1
@.str.111 = private unnamed_addr constant [36 x i8] c"max-completely-peel-loop-nest-depth\00", align 1
@.str.112 = private unnamed_addr constant [52 x i8] c"The maximum depth of a loop nest we completely peel\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"max-unswitch-insns\00", align 1
@.str.114 = private unnamed_addr constant [50 x i8] c"The maximum number of insns of an unswitched loop\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"max-unswitch-level\00", align 1
@.str.116 = private unnamed_addr constant [52 x i8] c"The maximum number of unswitchings in a single loop\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"max-iterations-to-track\00", align 1
@.str.118 = private unnamed_addr constant [95 x i8] c"Bound on the number of iterations the brute force # of iterations analysis algorithm evaluates\00", align 1
@.str.119 = private unnamed_addr constant [32 x i8] c"max-iterations-computation-cost\00", align 1
@.str.120 = private unnamed_addr constant [71 x i8] c"Bound on the cost of an expression to compute the number of iterations\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"sms-max-ii-factor\00", align 1
@.str.122 = private unnamed_addr constant [91 x i8] c"A factor for tuning the upper bound that swing modulo scheduler uses for scheduling a loop\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"sms-dfa-history\00", align 1
@.str.124 = private unnamed_addr constant [92 x i8] c"The number of cycles the swing modulo scheduler considers when checking conflicts using DFA\00", align 1
@.str.125 = private unnamed_addr constant [33 x i8] c"sms-loop-average-count-threshold\00", align 1
@.str.126 = private unnamed_addr constant [79 x i8] c"A threshold on the average loop count considered by the swing modulo scheduler\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"hot-bb-count-fraction\00", align 1
@.str.128 = private unnamed_addr constant [131 x i8] c"Select fraction of the maximal count of repetitions of basic block in program given basic block needs to have to be considered hot\00", align 1
@.str.129 = private unnamed_addr constant [26 x i8] c"hot-bb-frequency-fraction\00", align 1
@.str.130 = private unnamed_addr constant [135 x i8] c"Select fraction of the maximal frequency of executions of basic block in function given basic block needs to have to be considered hot\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"align-threshold\00", align 1
@.str.132 = private unnamed_addr constant [114 x i8] c"Select fraction of the maximal frequency of executions of basic block in function given basic block get alignment\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"align-loop-iterations\00", align 1
@.str.134 = private unnamed_addr constant [81 x i8] c"Loops iterating at least selected number of iterations will get loop alignement.\00", align 1
@.str.135 = private unnamed_addr constant [25 x i8] c"max-predicted-iterations\00", align 1
@.str.136 = private unnamed_addr constant [60 x i8] c"The maximum number of loop iterations we predict statically\00", align 1
@.str.137 = private unnamed_addr constant [33 x i8] c"tracer-dynamic-coverage-feedback\00", align 1
@.str.138 = private unnamed_addr constant [142 x i8] c"The percentage of function, weighted by execution frequency, that must be covered by trace formation. Used when profile feedback is available\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"tracer-dynamic-coverage\00", align 1
@.str.140 = private unnamed_addr constant [146 x i8] c"The percentage of function, weighted by execution frequency, that must be covered by trace formation. Used when profile feedback is not available\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"tracer-max-code-growth\00", align 1
@.str.142 = private unnamed_addr constant [60 x i8] c"Maximal code growth caused by tail duplication (in percent)\00", align 1
@.str.143 = private unnamed_addr constant [24 x i8] c"tracer-min-branch-ratio\00", align 1
@.str.144 = private unnamed_addr constant [101 x i8] c"Stop reverse growth if the reverse probability of best edge is less than this threshold (in percent)\00", align 1
@.str.145 = private unnamed_addr constant [39 x i8] c"tracer-min-branch-probability-feedback\00", align 1
@.str.146 = private unnamed_addr constant [134 x i8] c"Stop forward growth if the probability of best edge is less than this threshold (in percent). Used when profile feedback is available\00", align 1
@.str.147 = private unnamed_addr constant [30 x i8] c"tracer-min-branch-probability\00", align 1
@.str.148 = private unnamed_addr constant [138 x i8] c"Stop forward growth if the probability of best edge is less than this threshold (in percent). Used when profile feedback is not available\00", align 1
@.str.149 = private unnamed_addr constant [20 x i8] c"max-crossjump-edges\00", align 1
@.str.150 = private unnamed_addr constant [66 x i8] c"The maximum number of incoming edges to consider for crossjumping\00", align 1
@.str.151 = private unnamed_addr constant [20 x i8] c"min-crossjump-insns\00", align 1
@.str.152 = private unnamed_addr constant [73 x i8] c"The minimum number of matching instructions to consider for crossjumping\00", align 1
@.str.153 = private unnamed_addr constant [23 x i8] c"max-grow-copy-bb-insns\00", align 1
@.str.154 = private unnamed_addr constant [55 x i8] c"The maximum expansion factor when copying basic blocks\00", align 1
@.str.155 = private unnamed_addr constant [27 x i8] c"max-goto-duplication-insns\00", align 1
@.str.156 = private unnamed_addr constant [73 x i8] c"The maximum number of insns to duplicate when unfactoring computed gotos\00", align 1
@.str.157 = private unnamed_addr constant [20 x i8] c"max-cse-path-length\00", align 1
@.str.158 = private unnamed_addr constant [45 x i8] c"The maximum length of path considered in cse\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"max-cse-insns\00", align 1
@.str.160 = private unnamed_addr constant [53 x i8] c"The maximum instructions CSE process before flushing\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c"lim-expensive\00", align 1
@.str.162 = private unnamed_addr constant [73 x i8] c"The minimum cost of an expensive expression in the loop invariant motion\00", align 1
@.str.163 = private unnamed_addr constant [33 x i8] c"iv-consider-all-candidates-bound\00", align 1
@.str.164 = private unnamed_addr constant [91 x i8] c"Bound on number of candidates below that all candidates are considered in iv optimizations\00", align 1
@.str.165 = private unnamed_addr constant [23 x i8] c"iv-max-considered-uses\00", align 1
@.str.166 = private unnamed_addr constant [65 x i8] c"Bound on number of iv uses in loop optimized in iv optimizations\00", align 1
@.str.167 = private unnamed_addr constant [31 x i8] c"iv-always-prune-cand-set-bound\00", align 1
@.str.168 = private unnamed_addr constant [106 x i8] c"If number of candidates in the set is smaller, we always try to remove unused ivs during its optimization\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"scev-max-expr-size\00", align 1
@.str.170 = private unnamed_addr constant [68 x i8] c"Bound on size of expressions used in the scalar evolutions analyzer\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"omega-max-vars\00", align 1
@.str.172 = private unnamed_addr constant [61 x i8] c"Bound on the number of variables in Omega constraint systems\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"omega-max-geqs\00", align 1
@.str.174 = private unnamed_addr constant [64 x i8] c"Bound on the number of inequalities in Omega constraint systems\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"omega-max-eqs\00", align 1
@.str.176 = private unnamed_addr constant [62 x i8] c"Bound on the number of equalities in Omega constraint systems\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"omega-max-wild-cards\00", align 1
@.str.178 = private unnamed_addr constant [62 x i8] c"Bound on the number of wild cards in Omega constraint systems\00", align 1
@.str.179 = private unnamed_addr constant [22 x i8] c"omega-hash-table-size\00", align 1
@.str.180 = private unnamed_addr constant [64 x i8] c"Bound on the size of the hash table in Omega constraint systems\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"omega-max-keys\00", align 1
@.str.182 = private unnamed_addr constant [56 x i8] c"Bound on the number of keys in Omega constraint systems\00", align 1
@.str.183 = private unnamed_addr constant [38 x i8] c"omega-eliminate-redundant-constraints\00", align 1
@.str.184 = private unnamed_addr constant [76 x i8] c"When set to 1, use expensive methods to eliminate all redundant constraints\00", align 1
@.str.185 = private unnamed_addr constant [38 x i8] c"vect-max-version-for-alignment-checks\00", align 1
@.str.186 = private unnamed_addr constant [99 x i8] c"Bound on number of runtime checks inserted by the vectorizer's loop versioning for alignment check\00", align 1
@.str.187 = private unnamed_addr constant [34 x i8] c"vect-max-version-for-alias-checks\00", align 1
@.str.188 = private unnamed_addr constant [95 x i8] c"Bound on number of runtime checks inserted by the vectorizer's loop versioning for alias check\00", align 1
@.str.189 = private unnamed_addr constant [28 x i8] c"max-cselib-memory-locations\00", align 1
@.str.190 = private unnamed_addr constant [48 x i8] c"The maximum memory locations recorded by cselib\00", align 1
@.str.191 = private unnamed_addr constant [15 x i8] c"ggc-min-expand\00", align 1
@.str.192 = private unnamed_addr constant [100 x i8] c"Minimum heap expansion to trigger garbage collection, as a percentage of the total size of the heap\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c"ggc-min-heapsize\00", align 1
@.str.194 = private unnamed_addr constant [67 x i8] c"Minimum heap size before we start collecting garbage, in kilobytes\00", align 1
@.str.195 = private unnamed_addr constant [24 x i8] c"max-reload-search-insns\00", align 1
@.str.196 = private unnamed_addr constant [89 x i8] c"The maximum number of instructions to search backward when looking for equivalent reload\00", align 1
@.str.197 = private unnamed_addr constant [24 x i8] c"max-sched-region-blocks\00", align 1
@.str.198 = private unnamed_addr constant [84 x i8] c"The maximum number of blocks in a region to be considered for interblock scheduling\00", align 1
@.str.199 = private unnamed_addr constant [23 x i8] c"max-sched-region-insns\00", align 1
@.str.200 = private unnamed_addr constant [83 x i8] c"The maximum number of insns in a region to be considered for interblock scheduling\00", align 1
@.str.201 = private unnamed_addr constant [27 x i8] c"max-pipeline-region-blocks\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"max-pipeline-region-insns\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"min-spec-prob\00", align 1
@.str.204 = private unnamed_addr constant [89 x i8] c"The minimum probability of reaching a source block for interblock speculative scheduling\00", align 1
@.str.205 = private unnamed_addr constant [31 x i8] c"max-sched-extend-regions-iters\00", align 1
@.str.206 = private unnamed_addr constant [63 x i8] c"The maximum number of iterations through CFG to extend regions\00", align 1
@.str.207 = private unnamed_addr constant [30 x i8] c"max-sched-insn-conflict-delay\00", align 1
@.str.208 = private unnamed_addr constant [79 x i8] c"The maximum conflict delay for an insn to be considered for speculative motion\00", align 1
@.str.209 = private unnamed_addr constant [23 x i8] c"sched-spec-prob-cutoff\00", align 1
@.str.210 = private unnamed_addr constant [106 x i8] c"The minimal probability of speculation success (in percents), so that speculative insn will be scheduled.\00", align 1
@.str.211 = private unnamed_addr constant [23 x i8] c"selsched-max-lookahead\00", align 1
@.str.212 = private unnamed_addr constant [65 x i8] c"The maximum size of the lookahead window of selective scheduling\00", align 1
@.str.213 = private unnamed_addr constant [25 x i8] c"selsched-max-sched-times\00", align 1
@.str.214 = private unnamed_addr constant [56 x i8] c"Maximum number of times that an insn could be scheduled\00", align 1
@.str.215 = private unnamed_addr constant [25 x i8] c"selsched-insns-to-rename\00", align 1
@.str.216 = private unnamed_addr constant [91 x i8] c"Maximum number of instructions in the ready list that are considered eligible for renaming\00", align 1
@.str.217 = private unnamed_addr constant [24 x i8] c"sched-mem-true-dep-cost\00", align 1
@.str.218 = private unnamed_addr constant [61 x i8] c"Minimal distance between possibly conflicting store and load\00", align 1
@.str.219 = private unnamed_addr constant [19 x i8] c"max-last-value-rtl\00", align 1
@.str.220 = private unnamed_addr constant [78 x i8] c"The maximum number of RTL nodes that can be recorded as combiner's last value\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"integer-share-limit\00", align 1
@.str.222 = private unnamed_addr constant [46 x i8] c"The upper bound for sharing integer constants\00", align 1
@.str.223 = private unnamed_addr constant [21 x i8] c"min-virtual-mappings\00", align 1
@.str.224 = private unnamed_addr constant [81 x i8] c"Minimum number of virtual mappings to consider switching to full virtual renames\00", align 1
@.str.225 = private unnamed_addr constant [23 x i8] c"virtual-mappings-ratio\00", align 1
@.str.226 = private unnamed_addr constant [78 x i8] c"Ratio between virtual mappings and virtual symbols to do full virtual renames\00", align 1
@.str.227 = private unnamed_addr constant [16 x i8] c"ssp-buffer-size\00", align 1
@.str.228 = private unnamed_addr constant [76 x i8] c"The lower bound for a buffer to be considered for stack smashing protection\00", align 1
@.str.229 = private unnamed_addr constant [34 x i8] c"max-jump-thread-duplication-stmts\00", align 1
@.str.230 = private unnamed_addr constant [97 x i8] c"Maximum number of statements allowed in a block that needs to be duplicated when threading jumps\00", align 1
@.str.231 = private unnamed_addr constant [31 x i8] c"max-fields-for-field-sensitive\00", align 1
@.str.232 = private unnamed_addr constant [106 x i8] c"Maximum number of fields in a structure before pointer analysis treats the structure as a single variable\00", align 1
@.str.233 = private unnamed_addr constant [22 x i8] c"max-sched-ready-insns\00", align 1
@.str.234 = private unnamed_addr constant [121 x i8] c"The maximum number of instructions ready to be issued to be considered by the scheduler during the first scheduling pass\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"prefetch-latency\00", align 1
@.str.236 = private unnamed_addr constant [58 x i8] c"The number of insns executed before prefetch is completed\00", align 1
@.str.237 = private unnamed_addr constant [24 x i8] c"simultaneous-prefetches\00", align 1
@.str.238 = private unnamed_addr constant [55 x i8] c"The number of prefetches that can run at the same time\00", align 1
@.str.239 = private unnamed_addr constant [14 x i8] c"l1-cache-size\00", align 1
@.str.240 = private unnamed_addr constant [21 x i8] c"The size of L1 cache\00", align 1
@.str.241 = private unnamed_addr constant [19 x i8] c"l1-cache-line-size\00", align 1
@.str.242 = private unnamed_addr constant [26 x i8] c"The size of L1 cache line\00", align 1
@.str.243 = private unnamed_addr constant [14 x i8] c"l2-cache-size\00", align 1
@.str.244 = private unnamed_addr constant [21 x i8] c"The size of L2 cache\00", align 1
@.str.245 = private unnamed_addr constant [20 x i8] c"use-canonical-types\00", align 1
@.str.246 = private unnamed_addr constant [31 x i8] c"Whether to use canonical types\00", align 1
@.str.247 = private unnamed_addr constant [25 x i8] c"max-partial-antic-length\00", align 1
@.str.248 = private unnamed_addr constant [74 x i8] c"Maximum length of partial antic set when performing tree pre optimization\00", align 1
@.str.249 = private unnamed_addr constant [19 x i8] c"sccvn-max-scc-size\00", align 1
@.str.250 = private unnamed_addr constant [63 x i8] c"Maximum size of a SCC before SCCVN stops processing a function\00", align 1
@.str.251 = private unnamed_addr constant [18 x i8] c"ira-max-loops-num\00", align 1
@.str.252 = private unnamed_addr constant [33 x i8] c"Max loops number for regional RA\00", align 1
@.str.253 = private unnamed_addr constant [28 x i8] c"ira-max-conflict-table-size\00", align 1
@.str.254 = private unnamed_addr constant [33 x i8] c"Max size of conflict table in MB\00", align 1
@.str.255 = private unnamed_addr constant [23 x i8] c"ira-loop-reserved-regs\00", align 1
@.str.256 = private unnamed_addr constant [75 x i8] c"The number of registers in each class kept unused by loop invariant motion\00", align 1
@.str.257 = private unnamed_addr constant [35 x i8] c"switch-conversion-max-branch-ratio\00", align 1
@.str.258 = private unnamed_addr constant [95 x i8] c"The maximum ratio between array size and switch branches for a switch conversion to take place\00", align 1
@.str.259 = private unnamed_addr constant [21 x i8] c"loop-block-tile-size\00", align 1
@.str.260 = private unnamed_addr constant [32 x i8] c"size of tiles for loop blocking\00", align 1
@.str.261 = private unnamed_addr constant [28 x i8] c"graphite-max-nb-scop-params\00", align 1
@.str.262 = private unnamed_addr constant [39 x i8] c"maximum number of parameters in a SCoP\00", align 1
@.str.263 = private unnamed_addr constant [30 x i8] c"graphite-max-bbs-per-function\00", align 1
@.str.264 = private unnamed_addr constant [71 x i8] c"maximum number of basic blocks per function to be analyzed by Graphite\00", align 1
@.str.265 = private unnamed_addr constant [31 x i8] c"loop-invariant-max-bbs-in-loop\00", align 1
@.str.266 = private unnamed_addr constant [58 x i8] c"Max basic blocks number in loop for loop invariant motion\00", align 1
@.str.267 = private unnamed_addr constant [20 x i8] c"slp-max-insns-in-bb\00", align 1
@.str.268 = private unnamed_addr constant [85 x i8] c"Maximum number of instructions in basic block to be considered for SLP vectorization\00", align 1
@.str.269 = private unnamed_addr constant [27 x i8] c"min-insn-to-prefetch-ratio\00", align 1
@.str.270 = private unnamed_addr constant [94 x i8] c"Min. ratio of insns to prefetches to enable prefetching for a loop with an unknown trip count\00", align 1
@.str.271 = private unnamed_addr constant [31 x i8] c"prefetch-min-insn-to-mem-ratio\00", align 1
@.str.272 = private unnamed_addr constant [63 x i8] c"Min. ratio of insns to mem ops to enable prefetching in a loop\00", align 1
@.str.273 = private unnamed_addr constant [18 x i8] c"max-vartrack-size\00", align 1
@.str.274 = private unnamed_addr constant [38 x i8] c"Max. size of var tracking hash tables\00", align 1
@.str.275 = private unnamed_addr constant [22 x i8] c"min-nondebug-insn-uid\00", align 1
@.str.276 = private unnamed_addr constant [47 x i8] c"The minimum UID to be used for a nondebug insn\00", align 1
@.str.277 = private unnamed_addr constant [26 x i8] c"ipa-sra-ptr-growth-factor\00", align 1
@.str.278 = private unnamed_addr constant [97 x i8] c"Maximum allowed growth of size of new parameters ipa-sra replaces a pointer to an aggregate with\00", align 1
@time_report = external dso_local local_unnamed_addr global i32, align 4
@no_backend = internal unnamed_addr global i8 0, align 1, !dbg !2245
@do_nothing_debug_hooks = external dso_local constant %struct.gcc_debug_hooks, align 8
@warn_unused = external dso_local local_unnamed_addr global i32, align 4
@warn_unused_label = external dso_local local_unnamed_addr global i32, align 4
@warn_unused_parameter = external dso_local local_unnamed_addr global i32, align 4
@extra_warnings = external dso_local local_unnamed_addr global i32, align 4
@warn_unused_value = external dso_local local_unnamed_addr global i32, align 4
@warn_uninitialized = external dso_local local_unnamed_addr global i32, align 4
@flag_compare_debug = external dso_local local_unnamed_addr global i32, align 4
@flag_section_anchors = external dso_local local_unnamed_addr global i32, align 4
@.str.279 = private unnamed_addr constant [33 x i8] c"this target does not support %qs\00", align 1
@.str.280 = private unnamed_addr constant [18 x i8] c"-fsection-anchors\00", align 1
@.str.281 = private unnamed_addr constant [7 x i8] c"gccaux\00", align 1
@flag_graphite = external dso_local local_unnamed_addr global i32, align 4
@flag_loop_block = external dso_local local_unnamed_addr global i32, align 4
@flag_loop_interchange = external dso_local local_unnamed_addr global i32, align 4
@flag_loop_strip_mine = external dso_local local_unnamed_addr global i32, align 4
@flag_graphite_identity = external dso_local local_unnamed_addr global i32, align 4
@flag_loop_parallelize_all = external dso_local local_unnamed_addr global i32, align 4
@.str.282 = private unnamed_addr constant [43 x i8] c"Graphite loop optimizations cannot be used\00", align 1
@flag_unroll_all_loops = external dso_local local_unnamed_addr global i32, align 4
@flag_unroll_loops = external dso_local local_unnamed_addr global i32, align 4
@flag_rerun_cse_after_loop = external dso_local local_unnamed_addr global i32, align 4
@flag_peel_loops = external dso_local local_unnamed_addr global i32, align 4
@flag_web = external dso_local local_unnamed_addr global i32, align 4
@flag_rename_registers = external dso_local local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external dso_local local_unnamed_addr global i32, align 4
@flag_asynchronous_unwind_tables = external dso_local local_unnamed_addr global i32, align 4
@flag_unwind_tables = external dso_local local_unnamed_addr global i32, align 4
@flag_value_profile_transformations = external dso_local local_unnamed_addr global i32, align 4
@flag_profile_values = external dso_local local_unnamed_addr global i32, align 4
@flag_delayed_branch = external dso_local local_unnamed_addr global i32, align 4
@.str.283 = private unnamed_addr constant [51 x i8] c"this target machine does not have delayed branches\00", align 1
@flag_leading_underscore = external dso_local local_unnamed_addr global i32, align 4
@.str.284 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.285 = private unnamed_addr constant [60 x i8] c"-f%sleading-underscore not supported on this target machine\00", align 1
@.str.286 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@flag_syntax_only = external dso_local local_unnamed_addr global i32, align 4
@write_symbols = external dso_local local_unnamed_addr global i32, align 4
@profile_flag = external dso_local local_unnamed_addr global i32, align 4
@flag_gtoggle = external dso_local local_unnamed_addr global i32, align 4
@debug_info_level = external dso_local local_unnamed_addr global i32, align 4
@flag_dump_final_insns = external dso_local local_unnamed_addr global i8*, align 8
@.str.287 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.288 = private unnamed_addr constant [44 x i8] c"could not open final insn dump file %qs: %s\00", align 1
@.str.289 = private unnamed_addr constant [46 x i8] c"could not close zeroed insn dump file %qs: %s\00", align 1
@dwarf_strict = external dso_local local_unnamed_addr global i32, align 4
@dwarf2_debug_hooks = external dso_local constant %struct.gcc_debug_hooks, align 8
@dbx_debug_hooks = external dso_local constant %struct.gcc_debug_hooks, align 8
@.str.290 = private unnamed_addr constant [53 x i8] c"target system does not support the \22%s\22 debug format\00", align 1
@flag_var_tracking_uninit = external dso_local local_unnamed_addr global i32, align 4
@.str.291 = private unnamed_addr constant [69 x i8] c"variable tracking requested, but useless unless producing debug info\00", align 1
@.str.292 = private unnamed_addr constant [68 x i8] c"variable tracking requested, but not supported by this debug format\00", align 1
@flag_selective_scheduling = external dso_local local_unnamed_addr global i32, align 4
@flag_selective_scheduling2 = external dso_local local_unnamed_addr global i32, align 4
@.str.293 = private unnamed_addr constant [54 x i8] c"var-tracking-assignments changes selective scheduling\00", align 1
@flag_tree_cselim = external dso_local local_unnamed_addr global i32, align 4
@.str.294 = private unnamed_addr constant [19 x i8] c"can%'t open %s: %m\00", align 1
@flag_function_sections = external dso_local local_unnamed_addr global i32, align 4
@.str.295 = private unnamed_addr constant [50 x i8] c"-ffunction-sections not supported for this target\00", align 1
@flag_data_sections = external dso_local local_unnamed_addr global i32, align 4
@.str.296 = private unnamed_addr constant [46 x i8] c"-fdata-sections not supported for this target\00", align 1
@.str.297 = private unnamed_addr constant [60 x i8] c"-ffunction-sections disabled; it makes profiling impossible\00", align 1
@flag_prefetch_loop_arrays = external dso_local local_unnamed_addr global i32, align 4
@x86_prefetch_sse = external dso_local local_unnamed_addr global i32, align 4
@ix86_isa_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.298 = private unnamed_addr constant [75 x i8] c"-fprefetch-loop-arrays not supported for this target (try -march switches)\00", align 1
@.str.299 = private unnamed_addr constant [49 x i8] c"-fprefetch-loop-arrays is not supported with -Os\00", align 1
@flag_signaling_nans = external dso_local local_unnamed_addr global i32, align 4
@flag_trapping_math = external dso_local local_unnamed_addr global i32, align 4
@flag_associative_math = external dso_local local_unnamed_addr global i32, align 4
@flag_signed_zeros = external dso_local local_unnamed_addr global i32, align 4
@.str.300 = private unnamed_addr constant [59 x i8] c"-fassociative-math disabled; other options take precedence\00", align 1
@flag_cx_limited_range = external dso_local local_unnamed_addr global i32, align 4
@flag_cx_fortran_rules = external dso_local local_unnamed_addr global i32, align 4
@flag_stack_protect = external dso_local local_unnamed_addr global i32, align 4
@warn_stack_protect = external dso_local local_unnamed_addr global i32, align 4
@flag_omit_frame_pointer = external dso_local local_unnamed_addr global i32, align 4
@.str.301 = private unnamed_addr constant [64 x i8] c"unwind tables currently require a frame pointer for correctness\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.302 = private unnamed_addr constant [17 x i8] c"options passed: \00", align 1
@.str.303 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.304 = private unnamed_addr constant [10 x i8] c"-dumpbase\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"-dumpdir\00", align 1
@.str.306 = private unnamed_addr constant [9 x i8] c"-auxbase\00", align 1
@.str.307 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str.308 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.309 = private unnamed_addr constant [18 x i8] c"options enabled: \00", align 1
@.str.310 = private unnamed_addr constant [8 x i8] c"gccdump\00", align 1
@.str.311 = private unnamed_addr constant [3 x i8] c".s\00", align 1
@.str.312 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.313 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.314 = private unnamed_addr constant [31 x i8] c"can%'t open %s for writing: %m\00", align 1
@flag_record_gcc_switches = external dso_local local_unnamed_addr global i32, align 4
@.str.315 = private unnamed_addr constant [61 x i8] c"-frecord-gcc-switches is not supported by the current target\00", align 1
@flag_verbose_asm = external dso_local local_unnamed_addr global i32, align 4
@.str.316 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@ggc_protect_identifiers = external dso_local local_unnamed_addr global i8, align 1
@flag_mudflap = external dso_local local_unnamed_addr global i32, align 4
@.str.317 = private unnamed_addr constant [8 x i8] c"\09.comm\09\00", align 1
@.str.318 = private unnamed_addr constant [13 x i8] c"__gnu_lto_v1\00", align 1
@.str.319 = private unnamed_addr constant [9 x i8] c",%lu,%u\0A\00", align 1
@flag_no_ident = external dso_local local_unnamed_addr global i32, align 4
@.str.320 = private unnamed_addr constant [7 x i8] c"(GNU) \00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"(GCC) \00", align 1
@.str.322 = private unnamed_addr constant [15 x i8] c"%s\22GCC: %s%s\22\0A\00", align 1
@.str.323 = private unnamed_addr constant [9 x i8] c"\09.ident\09\00", align 1
@.str.324 = private unnamed_addr constant [24 x i8] c"error writing to %s: %m\00", align 1
@.str.325 = private unnamed_addr constant [21 x i8] c"error closing %s: %m\00", align 1
@flag_wpa = external dso_local local_unnamed_addr global i32, align 4
@mem_report = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2252 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2266, metadata !DIExpression()), !dbg !2267
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2268
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2269
  ret i32 %call, !dbg !2270
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2271 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2275
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2276
  ret i32 %call, !dbg !2277
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2278 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2282, metadata !DIExpression()), !dbg !2283
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2284
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2284
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2284
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2284
  %cmp = icmp uge i8* %0, %1, !dbg !2284
  %conv1 = zext i1 %cmp to i64, !dbg !2284
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2284
  %tobool = icmp eq i64 %expval, 0, !dbg !2284
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2284

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2284
  br label %cond.end, !dbg !2284

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2284
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2284
  %2 = load i8, i8* %0, align 1, !dbg !2284
  %conv3 = zext i8 %2 to i32, !dbg !2284
  br label %cond.end, !dbg !2284

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2284
  ret i32 %cond, !dbg !2285
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2286 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2288, metadata !DIExpression()), !dbg !2289
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2290
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2290
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2290
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2290
  %cmp = icmp uge i8* %0, %1, !dbg !2290
  %conv1 = zext i1 %cmp to i64, !dbg !2290
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2290
  %tobool = icmp eq i64 %expval, 0, !dbg !2290
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2290

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2290
  br label %cond.end, !dbg !2290

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2290
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2290
  %2 = load i8, i8* %0, align 1, !dbg !2290
  %conv3 = zext i8 %2 to i32, !dbg !2290
  br label %cond.end, !dbg !2290

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2290
  ret i32 %cond, !dbg !2291
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2292 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2293
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2293
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2293
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2293
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2293
  %cmp = icmp uge i8* %1, %2, !dbg !2293
  %conv1 = zext i1 %cmp to i64, !dbg !2293
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2293
  %tobool = icmp eq i64 %expval, 0, !dbg !2293
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2293

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2293
  br label %cond.end, !dbg !2293

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2293
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2293
  %3 = load i8, i8* %1, align 1, !dbg !2293
  %conv3 = zext i8 %3 to i32, !dbg !2293
  br label %cond.end, !dbg !2293

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2293
  ret i32 %cond, !dbg !2294
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2295 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2299, metadata !DIExpression()), !dbg !2300
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2301
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2302
  ret i32 %call, !dbg !2303
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2304 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2309, metadata !DIExpression()), !dbg !2310
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2311
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2311
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2311
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2311
  %cmp = icmp uge i8* %0, %1, !dbg !2311
  %conv1 = zext i1 %cmp to i64, !dbg !2311
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2311
  %tobool = icmp eq i64 %expval, 0, !dbg !2311
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2311

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2311
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2311
  br label %cond.end, !dbg !2311

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2311
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2311
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2311
  store i8 %conv2, i8* %0, align 1, !dbg !2311
  %conv6 = and i32 %__c, 255, !dbg !2311
  br label %cond.end, !dbg !2311

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2311
  ret i32 %cond, !dbg !2312
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2313 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2316, metadata !DIExpression()), !dbg !2317
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2318
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2318
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2318
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2318
  %cmp = icmp uge i8* %0, %1, !dbg !2318
  %conv1 = zext i1 %cmp to i64, !dbg !2318
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2318
  %tobool = icmp eq i64 %expval, 0, !dbg !2318
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2318

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2318
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2318
  br label %cond.end, !dbg !2318

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2318
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2318
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2318
  store i8 %conv2, i8* %0, align 1, !dbg !2318
  %conv6 = and i32 %__c, 255, !dbg !2318
  br label %cond.end, !dbg !2318

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2318
  ret i32 %cond, !dbg !2319
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2320 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2322, metadata !DIExpression()), !dbg !2323
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2324
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2324
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2324
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2324
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2324
  %cmp = icmp uge i8* %1, %2, !dbg !2324
  %conv1 = zext i1 %cmp to i64, !dbg !2324
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2324
  %tobool = icmp eq i64 %expval, 0, !dbg !2324
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2324

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2324
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2324
  br label %cond.end, !dbg !2324

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2324
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2324
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2324
  store i8 %conv4, i8* %1, align 1, !dbg !2324
  %conv6 = and i32 %__c, 255, !dbg !2324
  br label %cond.end, !dbg !2324

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2324
  ret i32 %cond, !dbg !2325
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2326 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2332, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2333, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2334, metadata !DIExpression()), !dbg !2335
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2336
  ret i64 %call, !dbg !2337
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2338 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2340, metadata !DIExpression()), !dbg !2341
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2342
  %0 = load i32, i32* %_flags, align 8, !dbg !2342
  %and = lshr i32 %0, 4, !dbg !2342
  %and.lobit = and i32 %and, 1, !dbg !2342
  ret i32 %and.lobit, !dbg !2343
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2344 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2346, metadata !DIExpression()), !dbg !2347
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2348
  %0 = load i32, i32* %_flags, align 8, !dbg !2348
  %and = lshr i32 %0, 5, !dbg !2348
  %and.lobit = and i32 %and, 1, !dbg !2348
  ret i32 %and.lobit, !dbg !2349
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2350 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2353, metadata !DIExpression()), !dbg !2354
  %__c.off = add i32 %__c, 128, !dbg !2355
  %0 = icmp ult i32 %__c.off, 384, !dbg !2355
  br i1 %0, label %cond.true, label %cond.end, !dbg !2355

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2356
  %1 = load i32*, i32** %call, align 8, !dbg !2357
  %idxprom = sext i32 %__c to i64, !dbg !2358
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2358
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2358
  br label %cond.end, !dbg !2359

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2359
  ret i32 %cond, !dbg !2360
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2361 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2363, metadata !DIExpression()), !dbg !2364
  %__c.off = add i32 %__c, 128, !dbg !2365
  %0 = icmp ult i32 %__c.off, 384, !dbg !2365
  br i1 %0, label %cond.true, label %cond.end, !dbg !2365

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2366
  %1 = load i32*, i32** %call, align 8, !dbg !2367
  %idxprom = sext i32 %__c to i64, !dbg !2368
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2368
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2368
  br label %cond.end, !dbg !2369

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2369
  ret i32 %cond, !dbg !2370
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2371 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2376, metadata !DIExpression()), !dbg !2377
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2378
  %conv = trunc i64 %call to i32, !dbg !2379
  ret i32 %conv, !dbg !2380
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2381 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2385, metadata !DIExpression()), !dbg !2386
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2387
  ret i64 %call, !dbg !2388
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2389 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2394, metadata !DIExpression()), !dbg !2395
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2396
  ret i64 %call, !dbg !2397
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2398 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2404, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2405, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2406, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2407, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2408, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 0, metadata !2409, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2410, metadata !DIExpression()), !dbg !2414
  br label %while.cond, !dbg !2415

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2416
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2414
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2410, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2409, metadata !DIExpression()), !dbg !2414
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2417
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2415

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2418
  %div = lshr i64 %add, 1, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %div, metadata !2411, metadata !DIExpression()), !dbg !2414
  %mul = mul i64 %div, %__size, !dbg !2421
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2422
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2412, metadata !DIExpression()), !dbg !2414
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2423
  call void @llvm.dbg.value(metadata i32 %call, metadata !2413, metadata !DIExpression()), !dbg !2414
  %cmp1 = icmp slt i32 %call, 0, !dbg !2424
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2426

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2427
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2429

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2409, metadata !DIExpression()), !dbg !2414
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2414
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2414
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2410, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2409, metadata !DIExpression()), !dbg !2414
  br label %while.cond, !dbg !2415, !llvm.loop !2431

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2414
  ret i8* %retval.0, !dbg !2433
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2434 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2440, metadata !DIExpression()), !dbg !2441
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2442
  ret double %call, !dbg !2443
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2444 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2453, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2454, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 %base, metadata !2455, metadata !DIExpression()), !dbg !2456
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2457
  ret i64 %call, !dbg !2458
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2459 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2465, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %base, metadata !2467, metadata !DIExpression()), !dbg !2468
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2469
  ret i64 %call, !dbg !2470
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2471 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2482, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 %base, metadata !2484, metadata !DIExpression()), !dbg !2485
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2486
  ret i64 %call, !dbg !2487
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2488 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2492, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2493, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 %base, metadata !2494, metadata !DIExpression()), !dbg !2495
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2496
  ret i64 %call, !dbg !2497
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2498 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2538, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2539, metadata !DIExpression()), !dbg !2540
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2541
  ret i32 %call, !dbg !2542
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2543 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2545, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2546, metadata !DIExpression()), !dbg !2547
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2548
  ret i32 %call, !dbg !2549
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2550 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2554, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2555, metadata !DIExpression()), !dbg !2556
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2557
  ret i32 %call, !dbg !2558
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2559 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2563, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2564, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2565, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2566, metadata !DIExpression()), !dbg !2567
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2568
  ret i32 %call, !dbg !2569
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2570 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2575, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2576, metadata !DIExpression(DW_OP_deref)), !dbg !2577
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2578
  ret i32 %call, !dbg !2579
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2580 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2584, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2585, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2587, metadata !DIExpression()), !dbg !2588
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2587, metadata !DIExpression(DW_OP_deref)), !dbg !2588
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2589
  ret i32 %call, !dbg !2590
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2591 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2615, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2616, metadata !DIExpression()), !dbg !2617
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2618
  ret i32 %call, !dbg !2619
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2620 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2622, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2623, metadata !DIExpression()), !dbg !2624
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2625
  ret i32 %call, !dbg !2626
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2627 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2631, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2632, metadata !DIExpression()), !dbg !2633
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2634
  ret i32 %call, !dbg !2635
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2636 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2640, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2641, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2642, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2643, metadata !DIExpression()), !dbg !2644
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2645
  ret i32 %call, !dbg !2646
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @set_src_pwd(i8* %pwd) local_unnamed_addr #4 !dbg !2647 {
entry:
  call void @llvm.dbg.value(metadata i8* %pwd, metadata !2651, metadata !DIExpression()), !dbg !2652
  %0 = load i8*, i8** @src_pwd, align 8, !dbg !2653
  %tobool = icmp eq i8* %0, null, !dbg !2653
  br i1 %tobool, label %if.end, label %if.then, !dbg !2655

if.then:                                          ; preds = %entry
  %call = tail call i32 @strcmp(i8* nonnull %0, i8* %pwd) #6, !dbg !2656
  %cmp = icmp eq i32 %call, 0, !dbg !2659
  %. = zext i1 %cmp to i8, !dbg !2660
  br label %return, !dbg !2660

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @xstrdup(i8* %pwd) #6, !dbg !2661
  store i8* %call2, i8** @src_pwd, align 8, !dbg !2662
  br label %return, !dbg !2663

return:                                           ; preds = %if.then, %if.end
  %retval.0 = phi i8 [ 1, %if.end ], [ %., %if.then ], !dbg !2652
  ret i8 %retval.0, !dbg !2664
}

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @get_src_pwd() local_unnamed_addr #4 !dbg !2665 {
entry:
  %0 = load i8*, i8** @src_pwd, align 8, !dbg !2668
  %tobool = icmp eq i8* %0, null, !dbg !2668
  br i1 %tobool, label %if.then, label %if.end3, !dbg !2670

if.then:                                          ; preds = %entry
  %call = tail call i8* @getpwd() #6, !dbg !2671
  %tobool1 = icmp eq i8* %call, null, !dbg !2673
  %spec.store.select = select i1 %tobool1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %call, !dbg !2675
  store i8* %spec.store.select, i8** @src_pwd, align 8, !dbg !2676
  br label %if.end3, !dbg !2677

if.end3:                                          ; preds = %entry, %if.then
  %1 = phi i8* [ %0, %entry ], [ %spec.store.select, %if.then ], !dbg !2678
  ret i8* %1, !dbg !2679
}

declare dso_local i8* @getpwd() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @announce_function(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !2680 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2682, metadata !DIExpression()), !dbg !2683
  %0 = load i32, i32* @quiet_flag, align 4, !dbg !2684
  %tobool = icmp eq i32 %0, 0, !dbg !2684
  br i1 %tobool, label %if.then, label %if.end8, !dbg !2686

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @rtl_dump_and_exit, align 4, !dbg !2687
  %tobool1 = icmp eq i32 %1, 0, !dbg !2687
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2690
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !2691

if.then2:                                         ; preds = %if.then
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2692
  %3 = bitcast %union.tree_node** %name to %struct.tree_identifier**, !dbg !2692
  %4 = load %struct.tree_identifier*, %struct.tree_identifier** %3, align 8, !dbg !2692
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %4, i64 0, i32 1, i32 0, !dbg !2692
  %5 = load i8*, i8** %str, align 8, !dbg !2692
  %call = tail call i8* @identifier_to_locale(i8* %5) #6, !dbg !2693
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %call) #6, !dbg !2694
  br label %if.end, !dbg !2694

if.else:                                          ; preds = %if.then
  %6 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !2695
  %call4 = tail call i8* %6(%union.tree_node* %decl, i32 2) #6, !dbg !2696
  %call5 = tail call i8* @identifier_to_locale(i8* %call4) #6, !dbg !2697
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %call5) #6, !dbg !2698
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2699
  %call7 = tail call i32 @fflush(%struct._IO_FILE* %7) #6, !dbg !2700
  %8 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2701
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %8, i64 0, i32 0, !dbg !2701
  %9 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !2701
  %need_newline = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %9, i64 0, i32 8, !dbg !2701
  store i8 1, i8* %need_newline, align 1, !dbg !2702
  %10 = load i64, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !2703
  %last_function = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %8, i64 0, i32 10, !dbg !2703
  %11 = bitcast %union.tree_node** %last_function to i64*, !dbg !2703
  store i64 %10, i64* %11, align 8, !dbg !2703
  br label %if.end8, !dbg !2704

if.end8:                                          ; preds = %entry, %if.end
  ret void, !dbg !2705
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local i8* @identifier_to_locale(i8*) local_unnamed_addr #1

declare dso_local i32 @fflush(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @get_random_seed(i8 zeroext %noinit) local_unnamed_addr #4 !dbg !2706 {
entry:
  call void @llvm.dbg.value(metadata i8 %noinit, metadata !2710, metadata !DIExpression()), !dbg !2711
  %0 = load i8*, i8** @flag_random_seed, align 8, !dbg !2712
  %tobool = icmp ne i8* %0, null, !dbg !2712
  %tobool1 = icmp ne i8 %noinit, 0, !dbg !2714
  %or.cond = or i1 %tobool, %tobool1, !dbg !2715
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2715

if.then:                                          ; preds = %entry
  tail call fastcc void @init_random_seed() #7, !dbg !2716
  %.pre = load i8*, i8** @flag_random_seed, align 8, !dbg !2717
  br label %if.end, !dbg !2716

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i8* [ %.pre, %if.then ], [ %0, %entry ], !dbg !2717
  ret i8* %1, !dbg !2718
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_random_seed() unnamed_addr #4 !dbg !2221 {
entry:
  %0 = load i32, i32* @local_tick, align 4, !dbg !2719
  %call = tail call i32 @getpid() #6, !dbg !2720
  %xor = xor i32 %0, %call, !dbg !2721
  %conv = zext i32 %xor to i64, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2223, metadata !DIExpression()), !dbg !2722
  %call1 = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @init_random_seed.random_seed, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i64 %conv) #6, !dbg !2723
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @init_random_seed.random_seed, i64 0, i64 0), i8** @flag_random_seed, align 8, !dbg !2724
  ret void, !dbg !2725
}

; Function Attrs: nounwind uwtable
define dso_local i8* @set_random_seed(i8* %val) local_unnamed_addr #4 !dbg !2726 {
entry:
  call void @llvm.dbg.value(metadata i8* %val, metadata !2730, metadata !DIExpression()), !dbg !2732
  %0 = load i8*, i8** @flag_random_seed, align 8, !dbg !2733
  call void @llvm.dbg.value(metadata i8* %0, metadata !2731, metadata !DIExpression()), !dbg !2732
  store i8* %val, i8** @flag_random_seed, align 8, !dbg !2734
  ret i8* %0, !dbg !2735
}

; Function Attrs: nounwind uwtable
define dso_local i32 @read_integral_parameter(i8* %p, i8* %pname, i32 %defval) local_unnamed_addr #4 !dbg !2736 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2741, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8* %pname, metadata !2742, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 %defval, metadata !2743, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8* %p, metadata !2744, metadata !DIExpression()), !dbg !2745
  br label %while.cond, !dbg !2746

while.cond:                                       ; preds = %if.then, %entry
  %endp.0 = phi i8* [ %p, %entry ], [ %incdec.ptr, %if.then ], !dbg !2745
  call void @llvm.dbg.value(metadata i8* %endp.0, metadata !2744, metadata !DIExpression()), !dbg !2745
  %0 = load i8, i8* %endp.0, align 1, !dbg !2747
  %tobool = icmp eq i8 %0, 0, !dbg !2746
  br i1 %tobool, label %while.end, label %while.body, !dbg !2746

while.body:                                       ; preds = %while.cond
  %idxprom = zext i8 %0 to i64, !dbg !2748
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2748
  %1 = load i16, i16* %arrayidx, align 2, !dbg !2748
  %2 = and i16 %1, 4, !dbg !2748
  %tobool3 = icmp eq i16 %2, 0, !dbg !2748
  br i1 %tobool3, label %while.end, label %if.then, !dbg !2751

if.then:                                          ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %endp.0, i64 1, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2744, metadata !DIExpression()), !dbg !2745
  br label %while.cond, !dbg !2746, !llvm.loop !2753

while.end:                                        ; preds = %while.body, %while.cond
  %tobool.lcssa = phi i1 [ %tobool, %while.body ], [ %tobool, %while.cond ], !dbg !2746
  call void @llvm.dbg.value(metadata i8* %endp.0, metadata !2744, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8* %endp.0, metadata !2744, metadata !DIExpression()), !dbg !2745
  br i1 %tobool.lcssa, label %if.end11, label %if.then6, !dbg !2755

if.then6:                                         ; preds = %while.end
  %cmp7 = icmp eq i8* %pname, null, !dbg !2756
  br i1 %cmp7, label %cleanup, label %if.then9, !dbg !2760

if.then9:                                         ; preds = %if.then6
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* nonnull %pname) #6, !dbg !2761
  br label %cleanup, !dbg !2761

if.end11:                                         ; preds = %while.end
  %call = tail call i32 @atoi(i8* %p) #7, !dbg !2762
  br label %cleanup, !dbg !2763

cleanup:                                          ; preds = %if.then6, %if.then9, %if.end11
  %retval.0 = phi i32 [ %call, %if.end11 ], [ %defval, %if.then9 ], [ %defval, %if.then6 ], !dbg !2745
  ret i32 %retval.0, !dbg !2764
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @floor_log2(i64 %x) local_unnamed_addr #4 !dbg !2765 {
entry:
  call void @llvm.dbg.value(metadata i64 %x, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 0, metadata !2770, metadata !DIExpression()), !dbg !2771
  %cmp = icmp eq i64 %x, 0, !dbg !2772
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2774

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i64 %x, 4294967295, !dbg !2775
  %spec.select = select i1 %cmp1, i32 32, i32 0, !dbg !2778
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2770, metadata !DIExpression()), !dbg !2771
  %add5 = or i32 %spec.select, 16, !dbg !2779
  %sh_prom6 = zext i32 %add5 to i64, !dbg !2781
  %x.highbits = lshr i64 %x, %sh_prom6, !dbg !2782
  %cmp8 = icmp eq i64 %x.highbits, 0, !dbg !2782
  %t.1 = select i1 %cmp8, i32 %spec.select, i32 %add5, !dbg !2783
  call void @llvm.dbg.value(metadata i32 %t.1, metadata !2770, metadata !DIExpression()), !dbg !2771
  %add12 = or i32 %t.1, 8, !dbg !2784
  %sh_prom13 = zext i32 %add12 to i64, !dbg !2786
  %x.highbits3 = lshr i64 %x, %sh_prom13, !dbg !2787
  %cmp15 = icmp eq i64 %x.highbits3, 0, !dbg !2787
  %spec.select1 = select i1 %cmp15, i32 %t.1, i32 %add12, !dbg !2788
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2770, metadata !DIExpression()), !dbg !2771
  %add19 = or i32 %spec.select1, 4, !dbg !2789
  %sh_prom20 = zext i32 %add19 to i64, !dbg !2791
  %x.highbits4 = lshr i64 %x, %sh_prom20, !dbg !2792
  %cmp22 = icmp eq i64 %x.highbits4, 0, !dbg !2792
  %t.3 = select i1 %cmp22, i32 %spec.select1, i32 %add19, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %t.3, metadata !2770, metadata !DIExpression()), !dbg !2771
  %add26 = add nsw i32 %t.3, 2, !dbg !2794
  %sh_prom27 = zext i32 %add26 to i64, !dbg !2796
  %x.highbits5 = lshr i64 %x, %sh_prom27, !dbg !2797
  %cmp29 = icmp eq i64 %x.highbits5, 0, !dbg !2797
  %spec.select2 = select i1 %cmp29, i32 %t.3, i32 %add26, !dbg !2798
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !2770, metadata !DIExpression()), !dbg !2771
  %add33 = add nsw i32 %spec.select2, 1, !dbg !2799
  %sh_prom34 = zext i32 %add33 to i64, !dbg !2801
  %x.highbits6 = lshr i64 %x, %sh_prom34, !dbg !2802
  %cmp36 = icmp eq i64 %x.highbits6, 0, !dbg !2802
  %t.5 = select i1 %cmp36, i32 %spec.select2, i32 %add33, !dbg !2803
  br label %cleanup, !dbg !2803

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %t.5, %if.end ], !dbg !2771
  ret i32 %retval.0, !dbg !2804
}

; Function Attrs: nounwind uwtable
define dso_local i32 @exact_log2(i64 %x) local_unnamed_addr #4 !dbg !2805 {
entry:
  call void @llvm.dbg.value(metadata i64 %x, metadata !2807, metadata !DIExpression()), !dbg !2808
  %0 = tail call i64 @llvm.ctpop.i64(i64 %x), !dbg !2809, !range !2811
  %cmp = icmp ugt i64 %0, 1, !dbg !2809
  br i1 %cmp, label %return, label %if.end, !dbg !2812

if.end:                                           ; preds = %entry
  %call = tail call i32 @floor_log2(i64 %x) #7, !dbg !2813
  br label %return, !dbg !2814

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry ], !dbg !2808
  ret i32 %retval.0, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local void @strip_off_ending(i8* %name, i32 %len) local_unnamed_addr #4 !dbg !2816 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !2820, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 %len, metadata !2821, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 2, metadata !2822, metadata !DIExpression()), !dbg !2823
  %0 = sext i32 %len to i64, !dbg !2824
  %1 = sext i32 %len to i64, !dbg !2824
  br label %for.cond, !dbg !2824

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 2, %entry ], !dbg !2826
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2822, metadata !DIExpression()), !dbg !2823
  %cmp = icmp ult i64 %indvars.iv, 6, !dbg !2827
  %cmp1 = icmp slt i64 %indvars.iv, %0, !dbg !2829
  %spec.select = and i1 %cmp, %cmp1, !dbg !2830
  br i1 %spec.select, label %for.body, label %for.end.loopexit, !dbg !2831

for.body:                                         ; preds = %for.cond
  %2 = sub nsw i64 %1, %indvars.iv, !dbg !2832
  %arrayidx = getelementptr inbounds i8, i8* %name, i64 %2, !dbg !2835
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2835
  %cmp2 = icmp eq i8 %3, 46, !dbg !2836
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !2837

if.then:                                          ; preds = %for.body
  %arrayidx.lcssa = phi i8* [ %arrayidx, %for.body ], !dbg !2835
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2822, metadata !DIExpression()), !dbg !2823
  store i8 0, i8* %arrayidx.lcssa, align 1, !dbg !2838
  br label %for.end, !dbg !2840

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2841
  call void @llvm.dbg.value(metadata i32 undef, metadata !2822, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2823
  br label %for.cond, !dbg !2842, !llvm.loop !2843

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !2845

for.end:                                          ; preds = %for.end.loopexit, %if.then
  ret void, !dbg !2845
}

; Function Attrs: nounwind uwtable
define dso_local void @output_quoted_string(%struct._IO_FILE* %asm_file, i8* %string) local_unnamed_addr #4 !dbg !2846 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %asm_file, metadata !2848, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %string, metadata !2849, metadata !DIExpression()), !dbg !2851
  %call = tail call i32 @putc(i32 34, %struct._IO_FILE* %asm_file) #6, !dbg !2852
  br label %while.cond, !dbg !2853

while.cond:                                       ; preds = %if.end17, %entry
  %string.addr.0 = phi i8* [ %string, %entry ], [ %incdec.ptr, %if.end17 ]
  call void @llvm.dbg.value(metadata i8* %string.addr.0, metadata !2849, metadata !DIExpression()), !dbg !2851
  %incdec.ptr = getelementptr inbounds i8, i8* %string.addr.0, i64 1, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2849, metadata !DIExpression()), !dbg !2851
  %0 = load i8, i8* %string.addr.0, align 1, !dbg !2855
  call void @llvm.dbg.value(metadata i8 %0, metadata !2850, metadata !DIExpression()), !dbg !2851
  %cmp = icmp eq i8 %0, 0, !dbg !2856
  br i1 %cmp, label %while.end, label %while.body, !dbg !2853

while.body:                                       ; preds = %while.cond
  %idxprom = zext i8 %0 to i64, !dbg !2857
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2857
  %1 = load i16, i16* %arrayidx, align 2, !dbg !2857
  %2 = and i16 %1, 16, !dbg !2857
  %tobool = icmp eq i16 %2, 0, !dbg !2857
  br i1 %tobool, label %if.else, label %if.then, !dbg !2860

if.then:                                          ; preds = %while.body
  %cmp6 = icmp eq i8 %0, 34, !dbg !2861
  %cmp9 = icmp eq i8 %0, 92, !dbg !2864
  %or.cond = or i1 %cmp6, %cmp9, !dbg !2865
  br i1 %or.cond, label %if.then11, label %if.end, !dbg !2865

if.then11:                                        ; preds = %if.then
  %call12 = tail call i32 @putc(i32 92, %struct._IO_FILE* %asm_file) #6, !dbg !2866
  br label %if.end, !dbg !2866

if.end:                                           ; preds = %if.then, %if.then11
  %conv13 = sext i8 %0 to i32, !dbg !2867
  %call14 = tail call i32 @putc(i32 %conv13, %struct._IO_FILE* %asm_file) #6, !dbg !2868
  br label %if.end17, !dbg !2869

if.else:                                          ; preds = %while.body
  %conv15 = zext i8 %0 to i32, !dbg !2870
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %asm_file, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %conv15) #6, !dbg !2871
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %while.cond, !dbg !2853, !llvm.loop !2872

while.end:                                        ; preds = %while.cond
  %call18 = tail call i32 @putc(i32 34, %struct._IO_FILE* %asm_file) #6, !dbg !2874
  ret void, !dbg !2875
}

; Function Attrs: nounwind uwtable
define dso_local void @output_file_directive(%struct._IO_FILE* %asm_file, i8* %input_name) local_unnamed_addr #4 !dbg !2876 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %asm_file, metadata !2878, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %input_name, metadata !2879, metadata !DIExpression()), !dbg !2882
  %cmp = icmp eq i8* %input_name, null, !dbg !2883
  br i1 %cmp, label %if.end, label %if.else, !dbg !2885

if.else:                                          ; preds = %entry
  %call = tail call i8* @remap_debug_filename(i8* nonnull %input_name) #6, !dbg !2886
  call void @llvm.dbg.value(metadata i8* %call, metadata !2879, metadata !DIExpression()), !dbg !2882
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %input_name.addr.0 = phi i8* [ %call, %if.else ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %entry ], !dbg !2887
  call void @llvm.dbg.value(metadata i8* %input_name.addr.0, metadata !2879, metadata !DIExpression()), !dbg !2882
  %call1 = tail call i64 @strlen(i8* %input_name.addr.0) #6, !dbg !2888
  %sext = shl i64 %call1, 32, !dbg !2889
  %idx.ext = ashr exact i64 %sext, 32, !dbg !2889
  %add.ptr = getelementptr inbounds i8, i8* %input_name.addr.0, i64 %idx.ext, !dbg !2889
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2881, metadata !DIExpression()), !dbg !2882
  br label %while.cond, !dbg !2890

while.cond:                                       ; preds = %if.end8, %if.end
  %na.0 = phi i8* [ %add.ptr, %if.end ], [ %arrayidx, %if.end8 ], !dbg !2882
  call void @llvm.dbg.value(metadata i8* %na.0, metadata !2881, metadata !DIExpression()), !dbg !2882
  %cmp2 = icmp ugt i8* %na.0, %input_name.addr.0, !dbg !2891
  br i1 %cmp2, label %while.body, label %while.end, !dbg !2890

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds i8, i8* %na.0, i64 -1, !dbg !2892
  %0 = load i8, i8* %arrayidx, align 1, !dbg !2892
  %cmp5 = icmp eq i8 %0, 47, !dbg !2892
  br i1 %cmp5, label %while.end, label %if.end8, !dbg !2895

if.end8:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata i8* %arrayidx, metadata !2881, metadata !DIExpression()), !dbg !2882
  br label %while.cond, !dbg !2890, !llvm.loop !2896

while.end:                                        ; preds = %while.body, %while.cond
  %na.0.lcssa = phi i8* [ %na.0, %while.body ], [ %na.0, %while.cond ], !dbg !2882
  call void @llvm.dbg.value(metadata i8* %na.0.lcssa, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %na.0.lcssa, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %na.0.lcssa, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %na.0.lcssa, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %na.0.lcssa, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %na.0.lcssa, metadata !2881, metadata !DIExpression()), !dbg !2882
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %asm_file, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2898
  tail call void @output_quoted_string(%struct._IO_FILE* %asm_file, i8* %na.0.lcssa) #7, !dbg !2899
  %call10 = tail call i32 @putc(i32 10, %struct._IO_FILE* %asm_file) #6, !dbg !2900
  ret void, !dbg !2901
}

declare dso_local i8* @remap_debug_filename(i8*) local_unnamed_addr #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @wrapup_global_declaration_1(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !2902 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2904, metadata !DIExpression()), !dbg !2905
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2906
  %bf.load = load i64, i64* %0, align 8, !dbg !2906
  %bf.cast = and i64 %bf.load, 65535, !dbg !2906
  %arrayidx1 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast, i64 13, !dbg !2906
  %1 = load i8, i8* %arrayidx1, align 1, !dbg !2906
  %tobool = icmp eq i8 %1, 0, !dbg !2906
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2908

land.lhs.true:                                    ; preds = %entry
  %defer_output = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2909
  %2 = bitcast i24* %defer_output to i32*, !dbg !2909
  %bf.load2 = load i32, i32* %2, align 8, !dbg !2909
  %bf.clear3 = and i32 %bf.load2, 1, !dbg !2909
  %cmp = icmp eq i32 %bf.clear3, 0, !dbg !2910
  br i1 %cmp, label %if.end, label %if.then, !dbg !2911

if.then:                                          ; preds = %land.lhs.true
  %bf.clear8 = and i32 %bf.load2, -2, !dbg !2912
  store i32 %bf.clear8, i32* %2, align 8, !dbg !2912
  br label %if.end, !dbg !2913

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %cmp13 = icmp eq i64 %bf.cast, 32, !dbg !2914
  br i1 %cmp13, label %land.lhs.true15, label %if.end19, !dbg !2916

land.lhs.true15:                                  ; preds = %if.end
  %size = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2917
  %3 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !2917
  %cmp16 = icmp eq %union.tree_node* %3, null, !dbg !2918
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !2919

if.then18:                                        ; preds = %land.lhs.true15
  %4 = load void (%union.tree_node*)*, void (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 14), align 8, !dbg !2920
  tail call void %4(%union.tree_node* %decl) #6, !dbg !2921
  br label %if.end19, !dbg !2921

if.end19:                                         ; preds = %if.then18, %land.lhs.true15, %if.end
  ret void, !dbg !2922
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @wrapup_global_declaration_2(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !2923 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2927, metadata !DIExpression()), !dbg !2948
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2949
  %bf.load = load i64, i64* %0, align 8, !dbg !2949
  %bf.cast1 = and i64 %bf.load, 4194304, !dbg !2949
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2949
  br i1 %tobool, label %lor.lhs.false, label %return, !dbg !2951

lor.lhs.false:                                    ; preds = %entry
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2952
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !2952
  %bf.load1 = load i64, i64* %1, align 8, !dbg !2952
  %bf.cast42 = and i64 %bf.load1, 33554432, !dbg !2952
  %tobool5 = icmp eq i64 %bf.cast42, 0, !dbg !2952
  br i1 %tobool5, label %if.end, label %return, !dbg !2953

if.end:                                           ; preds = %lor.lhs.false
  %bf.cast93 = and i64 %bf.load, 65535, !dbg !2954
  %cmp = icmp eq i64 %bf.cast93, 32, !dbg !2954
  br i1 %cmp, label %land.lhs.true, label %if.end96, !dbg !2955

land.lhs.true:                                    ; preds = %if.end
  %bf.cast144 = and i64 %bf.load, 67108864, !dbg !2956
  %tobool15 = icmp eq i64 %bf.cast144, 0, !dbg !2956
  br i1 %tobool15, label %if.end96, label %if.then16, !dbg !2957

if.then16:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i8 1, metadata !2947, metadata !DIExpression()), !dbg !2958
  %call = tail call %struct.varpool_node* @varpool_node(%union.tree_node* %decl) #6, !dbg !2959
  call void @llvm.dbg.value(metadata %struct.varpool_node* %call, metadata !2928, metadata !DIExpression()), !dbg !2958
  %finalized = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %call, i64 0, i32 5, !dbg !2960
  %bf.load17 = load i8, i8* %finalized, align 4, !dbg !2960
  %bf.clear19 = and i8 %bf.load17, 8, !dbg !2960
  %tobool21 = icmp eq i8 %bf.clear19, 0, !dbg !2962
  br i1 %tobool21, label %if.else, label %if.end91, !dbg !2963

if.else:                                          ; preds = %if.then16
  %bf.clear25 = and i8 %bf.load17, 64, !dbg !2964
  %tobool27 = icmp eq i8 %bf.clear25, 0, !dbg !2966
  br i1 %tobool27, label %if.else29, label %if.end91, !dbg !2967

if.else29:                                        ; preds = %if.else
  %2 = load i8, i8* @cgraph_global_info_ready, align 1, !dbg !2968
  %tobool30 = icmp eq i8 %2, 0, !dbg !2968
  br i1 %tobool30, label %land.lhs.true31, label %if.else47, !dbg !2970

land.lhs.true31:                                  ; preds = %if.else29
  %bf.load33 = load i64, i64* %0, align 8, !dbg !2971
  %bf.cast365 = and i64 %bf.load33, 16777216, !dbg !2971
  %tobool37 = icmp eq i64 %bf.cast365, 0, !dbg !2971
  br i1 %tobool37, label %lor.lhs.false38, label %if.end91, !dbg !2972

lor.lhs.false38:                                  ; preds = %land.lhs.true31
  %call39 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !2973
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call39, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2973
  %bf.load41 = load i64, i64* %3, align 8, !dbg !2973
  %bf.cast446 = and i64 %bf.load41, 16777216, !dbg !2973
  %tobool45 = icmp eq i64 %bf.cast446, 0, !dbg !2973
  br i1 %tobool45, label %lor.lhs.false38.if.else47_crit_edge, label %if.end91, !dbg !2974

lor.lhs.false38.if.else47_crit_edge:              ; preds = %lor.lhs.false38
  %bf.load49.pre = load i8, i8* %finalized, align 4, !dbg !2975
  br label %if.else47, !dbg !2974

if.else47:                                        ; preds = %lor.lhs.false38.if.else47_crit_edge, %if.else29
  %bf.load49 = phi i8 [ %bf.load49.pre, %lor.lhs.false38.if.else47_crit_edge ], [ %bf.load17, %if.else29 ], !dbg !2975
  %bf.clear50 = and i8 %bf.load49, 1, !dbg !2975
  %tobool52 = icmp eq i8 %bf.clear50, 0, !dbg !2977
  br i1 %tobool52, label %if.else54, label %if.end91, !dbg !2978

if.else54:                                        ; preds = %if.else47
  %comdat_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2979
  %4 = bitcast i24* %comdat_flag to i32*, !dbg !2979
  %bf.load55 = load i32, i32* %4, align 8, !dbg !2979
  %bf.clear57 = and i32 %bf.load55, 512, !dbg !2979
  %tobool58 = icmp eq i32 %bf.clear57, 0, !dbg !2979
  br i1 %tobool58, label %if.else60, label %if.end91, !dbg !2981

if.else60:                                        ; preds = %if.else54
  %bf.load62 = load i64, i64* %0, align 8, !dbg !2982
  %bf.cast657 = and i64 %bf.load62, 1048576, !dbg !2982
  %tobool66 = icmp eq i64 %bf.cast657, 0, !dbg !2982
  br i1 %tobool66, label %if.end91, label %land.lhs.true67, !dbg !2984

land.lhs.true67:                                  ; preds = %if.else60
  %bf.cast728 = and i64 %bf.load62, 134217728, !dbg !2985
  %tobool73 = icmp eq i64 %bf.cast728, 0, !dbg !2985
  br i1 %tobool73, label %land.lhs.true74, label %if.end91, !dbg !2986

land.lhs.true74:                                  ; preds = %land.lhs.true67
  %5 = load i32, i32* @optimize, align 4, !dbg !2987
  %tobool75 = icmp eq i32 %5, 0, !dbg !2987
  %6 = load i32, i32* @flag_keep_static_consts, align 4, !dbg !2988
  %tobool77 = icmp ne i32 %6, 0, !dbg !2988
  %or.cond = and i1 %tobool75, %tobool77, !dbg !2989
  br i1 %or.cond, label %lor.lhs.false78, label %if.then85, !dbg !2989

lor.lhs.false78:                                  ; preds = %land.lhs.true74
  %bf.load80 = load i64, i64* %1, align 8, !dbg !2990
  %bf.cast839 = and i64 %bf.load80, 4096, !dbg !2990
  %tobool84 = icmp eq i64 %bf.cast839, 0, !dbg !2990
  br i1 %tobool84, label %if.end91, label %if.then85, !dbg !2991

if.then85:                                        ; preds = %lor.lhs.false78, %land.lhs.true74
  call void @llvm.dbg.value(metadata i8 0, metadata !2947, metadata !DIExpression()), !dbg !2958
  br label %if.end91, !dbg !2992

if.end91:                                         ; preds = %lor.lhs.false78, %land.lhs.true67, %if.else60, %if.else54, %if.else47, %lor.lhs.false38, %land.lhs.true31, %if.else, %if.then16, %if.then85
  %needed.5 = phi i1 [ false, %if.then16 ], [ false, %if.else ], [ true, %lor.lhs.false38 ], [ true, %land.lhs.true31 ], [ true, %if.else47 ], [ false, %if.else54 ], [ true, %land.lhs.true67 ], [ false, %if.then85 ], [ true, %lor.lhs.false78 ], [ true, %if.else60 ]
  br i1 %needed.5, label %if.then93, label %cleanup, !dbg !2993

if.then93:                                        ; preds = %if.end91
  tail call void @rest_of_decl_compilation(%union.tree_node* %decl, i32 1, i32 1) #6, !dbg !2994
  br label %cleanup, !dbg !2997

cleanup:                                          ; preds = %if.end91, %if.then93
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then93 ], [ true, %if.end91 ]
  br i1 %cleanup.dest.slot.0, label %if.end96, label %return

if.end96:                                         ; preds = %land.lhs.true, %cleanup, %if.end
  br label %return, !dbg !2998

return:                                           ; preds = %lor.lhs.false, %entry, %cleanup, %if.end96
  %retval.1 = phi i8 [ 1, %cleanup ], [ 0, %if.end96 ], [ 0, %lor.lhs.false ], [ 0, %entry ], !dbg !2948
  ret i8 %retval.1, !dbg !2999
}

declare dso_local %struct.varpool_node* @varpool_node(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @rest_of_decl_compilation(%union.tree_node*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @wrapup_global_declarations(%union.tree_node** %vec, i32 %len) local_unnamed_addr #4 !dbg !3000 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %vec, metadata !3004, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 %len, metadata !3005, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8 0, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 0, metadata !3008, metadata !DIExpression()), !dbg !3009
  %0 = sext i32 %len to i64, !dbg !3010
  br label %for.cond, !dbg !3010

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.body ], [ 0, %entry ], !dbg !3012
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3008, metadata !DIExpression()), !dbg !3009
  %cmp = icmp slt i64 %indvars.iv2, %0, !dbg !3013
  br i1 %cmp, label %for.body, label %do.body.preheader, !dbg !3015

do.body.preheader:                                ; preds = %for.cond
  %1 = sext i32 %len to i64, !dbg !3016
  br label %do.body, !dbg !3016

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %vec, i64 %indvars.iv2, !dbg !3017
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3017
  tail call void @wrapup_global_declaration_1(%union.tree_node* %2) #7, !dbg !3018
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3019
  call void @llvm.dbg.value(metadata i32 undef, metadata !3008, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3009
  br label %for.cond, !dbg !3020, !llvm.loop !3021

do.body:                                          ; preds = %do.body.preheader, %for.end10
  %output_something.0 = phi i8 [ %spec.select, %for.end10 ], [ 0, %do.body.preheader ], !dbg !3009
  call void @llvm.dbg.value(metadata i8 %output_something.0, metadata !3007, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8 0, metadata !3006, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i32 0, metadata !3008, metadata !DIExpression()), !dbg !3009
  br label %for.cond1, !dbg !3023

for.cond1:                                        ; preds = %for.body3, %do.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %do.body ], !dbg !3026
  %reconsider.0 = phi i8 [ %or1, %for.body3 ], [ 0, %do.body ], !dbg !3026
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8 %reconsider.0, metadata !3006, metadata !DIExpression()), !dbg !3009
  %cmp2 = icmp slt i64 %indvars.iv, %1, !dbg !3027
  br i1 %cmp2, label %for.body3, label %for.end10, !dbg !3029

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds %union.tree_node*, %union.tree_node** %vec, i64 %indvars.iv, !dbg !3030
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx5, align 8, !dbg !3030
  %call = tail call zeroext i8 @wrapup_global_declaration_2(%union.tree_node* %3) #7, !dbg !3031
  %or1 = or i8 %reconsider.0, %call, !dbg !3032
  call void @llvm.dbg.value(metadata i8 %or1, metadata !3006, metadata !DIExpression()), !dbg !3009
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3033
  call void @llvm.dbg.value(metadata i32 undef, metadata !3008, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3009
  br label %for.cond1, !dbg !3034, !llvm.loop !3035

for.end10:                                        ; preds = %for.cond1
  %reconsider.0.lcssa = phi i8 [ %reconsider.0, %for.cond1 ], !dbg !3026
  call void @llvm.dbg.value(metadata i8 %reconsider.0.lcssa, metadata !3006, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8 %reconsider.0.lcssa, metadata !3006, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata i8 %reconsider.0.lcssa, metadata !3006, metadata !DIExpression()), !dbg !3009
  %tobool = icmp eq i8 %reconsider.0.lcssa, 0, !dbg !3037
  %spec.select = select i1 %tobool, i8 %output_something.0, i8 1, !dbg !3039
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !3007, metadata !DIExpression()), !dbg !3009
  br i1 %tobool, label %do.end, label %do.body, !dbg !3040, !llvm.loop !3041

do.end:                                           ; preds = %for.end10
  %spec.select.lcssa = phi i8 [ %spec.select, %for.end10 ], !dbg !3039
  ret i8 %spec.select.lcssa, !dbg !3043
}

; Function Attrs: nounwind uwtable
define dso_local void @check_global_declaration_1(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !3044 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3046, metadata !DIExpression()), !dbg !3047
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3048
  %bf.load = load i64, i64* %0, align 8, !dbg !3048
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3050
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !3050
  br i1 %cmp, label %land.lhs.true, label %if.end49, !dbg !3051

land.lhs.true:                                    ; preds = %entry
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !3052
  %1 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !3052
  %cmp1 = icmp eq %union.tree_node* %1, null, !dbg !3053
  br i1 %cmp1, label %land.lhs.true2, label %if.end49, !dbg !3054

land.lhs.true2:                                   ; preds = %land.lhs.true
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3055
  %2 = bitcast i40* %decl_flag_1 to i64*, !dbg !3055
  %bf.load4 = load i64, i64* %2, align 8, !dbg !3055
  %bf.cast613 = and i64 %bf.load4, 33554432, !dbg !3055
  %tobool = icmp eq i64 %bf.cast613, 0, !dbg !3055
  br i1 %tobool, label %if.end49, label %land.lhs.true7, !dbg !3056

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %bf.cast1214 = and i64 %bf.load4, 4096, !dbg !3057
  %tobool13 = icmp eq i64 %bf.cast1214, 0, !dbg !3057
  br i1 %tobool13, label %land.lhs.true14, label %if.end49, !dbg !3058

land.lhs.true14:                                  ; preds = %land.lhs.true7
  %bf.cast1915 = and i64 %bf.load, 8388608, !dbg !3059
  %tobool20 = icmp eq i64 %bf.cast1915, 0, !dbg !3059
  br i1 %tobool20, label %land.lhs.true21, label %if.end49, !dbg !3060

land.lhs.true21:                                  ; preds = %land.lhs.true14
  %bf.cast2616 = and i64 %bf.load, 134217728, !dbg !3061
  %tobool27 = icmp eq i64 %bf.cast2616, 0, !dbg !3061
  br i1 %tobool27, label %land.lhs.true28, label %if.end49, !dbg !3062

land.lhs.true28:                                  ; preds = %land.lhs.true21
  %3 = load i32, i32* @warn_unused_function, align 4, !dbg !3063
  %tobool29 = icmp eq i32 %3, 0, !dbg !3063
  br i1 %tobool29, label %lor.lhs.false, label %if.then, !dbg !3064

lor.lhs.false:                                    ; preds = %land.lhs.true28
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !3065
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3065
  %bf.load31 = load i64, i64* %4, align 8, !dbg !3065
  %bf.cast3417 = and i64 %bf.load31, 67108864, !dbg !3065
  %tobool35 = icmp eq i64 %bf.cast3417, 0, !dbg !3065
  br i1 %tobool35, label %if.end49, label %if.then, !dbg !3066

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true28
  %call36 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !3067
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call36, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3067
  %bf.load38 = load i64, i64* %5, align 8, !dbg !3067
  %bf.cast4118 = and i64 %bf.load38, 67108864, !dbg !3067
  %tobool42 = icmp eq i64 %bf.cast4118, 0, !dbg !3067
  br i1 %tobool42, label %if.else, label %if.then43, !dbg !3070

if.then43:                                        ; preds = %if.then
  %6 = load i32, i32* @input_location, align 4, !dbg !3071
  %call44 = tail call zeroext i8 (i32, i32, i8*, ...) @pedwarn(i32 %6, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), %union.tree_node* %decl) #6, !dbg !3072
  br label %if.end, !dbg !3072

if.else:                                          ; preds = %if.then
  %call45 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 220, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), %union.tree_node* %decl) #6, !dbg !3073
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then43
  %bf.load47 = load i64, i64* %0, align 8, !dbg !3074
  %bf.set = or i64 %bf.load47, 134217728, !dbg !3074
  store i64 %bf.set, i64* %0, align 8, !dbg !3074
  tail call void @assemble_external(%union.tree_node* %decl) #6, !dbg !3075
  br label %if.end49, !dbg !3076

if.end49:                                         ; preds = %lor.lhs.false, %land.lhs.true21, %land.lhs.true14, %land.lhs.true7, %land.lhs.true2, %if.end, %land.lhs.true, %entry
  %7 = load i32, i32* @warn_unused_function, align 4, !dbg !3077
  %tobool50 = icmp eq i32 %7, 0, !dbg !3077
  br i1 %tobool50, label %lor.lhs.false57, label %land.lhs.true51, !dbg !3079

land.lhs.true51:                                  ; preds = %if.end49
  %bf.load53 = load i64, i64* %0, align 8, !dbg !3080
  %bf.cast5512 = and i64 %bf.load53, 65535, !dbg !3081
  %cmp56 = icmp eq i64 %bf.cast5512, 29, !dbg !3081
  br i1 %cmp56, label %land.lhs.true72, label %lor.lhs.false57, !dbg !3082

lor.lhs.false57:                                  ; preds = %if.end49, %land.lhs.true51
  %8 = load i32, i32* @warn_unused_variable, align 4, !dbg !3083
  %tobool58 = icmp eq i32 %8, 0, !dbg !3083
  br i1 %tobool58, label %if.end142, label %land.lhs.true59, !dbg !3084

land.lhs.true59:                                  ; preds = %lor.lhs.false57
  %bf.load61 = load i64, i64* %0, align 8, !dbg !3085
  %bf.cast632 = and i64 %bf.load61, 65535, !dbg !3086
  %cmp64 = icmp eq i64 %bf.cast632, 32, !dbg !3086
  br i1 %cmp64, label %land.lhs.true65, label %if.end142, !dbg !3087

land.lhs.true65:                                  ; preds = %land.lhs.true59
  %bf.cast703 = and i64 %bf.load61, 1048576, !dbg !3088
  %tobool71 = icmp eq i64 %bf.cast703, 0, !dbg !3088
  br i1 %tobool71, label %land.lhs.true72, label %if.end142, !dbg !3089

land.lhs.true72:                                  ; preds = %land.lhs.true65, %land.lhs.true51
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3090
  %9 = load i32, i32* %locus, align 8, !dbg !3090
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %9) #6, !dbg !3090
  %sysp = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 3, !dbg !3090
  %10 = load i8, i8* %sysp, align 8, !dbg !3090
  %cmp73 = icmp eq i8 %10, 0, !dbg !3090
  br i1 %cmp73, label %land.lhs.true75, label %if.end142, !dbg !3091

land.lhs.true75:                                  ; preds = %land.lhs.true72
  %bf.load77 = load i64, i64* %0, align 8, !dbg !3092
  %bf.cast804 = and i64 %bf.load77, 16777216, !dbg !3092
  %tobool81 = icmp eq i64 %bf.cast804, 0, !dbg !3092
  br i1 %tobool81, label %land.lhs.true82, label %if.end142, !dbg !3093

land.lhs.true82:                                  ; preds = %land.lhs.true75
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3094
  %11 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !3094
  %tobool84 = icmp eq %union.tree_node* %11, null, !dbg !3094
  br i1 %tobool84, label %land.lhs.true94, label %land.lhs.true85, !dbg !3095

land.lhs.true85:                                  ; preds = %land.lhs.true82
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3095
  %bf.load89 = load i64, i64* %12, align 8, !dbg !3096
  %bf.cast9211 = and i64 %bf.load89, 16777216, !dbg !3096
  %tobool93 = icmp eq i64 %bf.cast9211, 0, !dbg !3096
  br i1 %tobool93, label %land.lhs.true94, label %if.end142, !dbg !3097

land.lhs.true94:                                  ; preds = %land.lhs.true85, %land.lhs.true82
  %decl_flag_196 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3098
  %13 = bitcast i40* %decl_flag_196 to i64*, !dbg !3098
  %bf.load97 = load i64, i64* %13, align 8, !dbg !3098
  %bf.cast1005 = and i64 %bf.load97, 33554432, !dbg !3098
  %tobool101 = icmp eq i64 %bf.cast1005, 0, !dbg !3098
  br i1 %tobool101, label %land.lhs.true102, label %if.end142, !dbg !3099

land.lhs.true102:                                 ; preds = %land.lhs.true94
  %bf.cast1076 = and i64 %bf.load77, 134217728, !dbg !3100
  %tobool108 = icmp eq i64 %bf.cast1076, 0, !dbg !3100
  br i1 %tobool108, label %land.lhs.true109, label %if.end142, !dbg !3101

land.lhs.true109:                                 ; preds = %land.lhs.true102
  %bf.cast1147 = and i64 %bf.load77, 524288, !dbg !3102
  %tobool115 = icmp eq i64 %bf.cast1147, 0, !dbg !3102
  br i1 %tobool115, label %land.lhs.true116, label %if.end142, !dbg !3103

land.lhs.true116:                                 ; preds = %land.lhs.true109
  %bf.cast1208 = and i64 %bf.load77, 65535, !dbg !3104
  %cmp121 = icmp eq i64 %bf.cast1208, 32, !dbg !3104
  br i1 %cmp121, label %land.lhs.true123, label %land.lhs.true130, !dbg !3105

land.lhs.true123:                                 ; preds = %land.lhs.true116
  %bf.cast12810 = and i64 %bf.load97, 16777216, !dbg !3106
  %tobool129 = icmp eq i64 %bf.cast12810, 0, !dbg !3106
  br i1 %tobool129, label %land.lhs.true130, label %if.end142, !dbg !3107

land.lhs.true130:                                 ; preds = %land.lhs.true123, %land.lhs.true116
  %14 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 33, i32 7), align 8, !dbg !3108
  %call131 = call zeroext i8 %14(%union.tree_node* %decl) #6, !dbg !3109
  %tobool133 = icmp eq i8 %call131, 0, !dbg !3109
  br i1 %tobool133, label %if.end142, label %if.then134, !dbg !3110

if.then134:                                       ; preds = %land.lhs.true130
  %bf.load136 = load i64, i64* %0, align 8, !dbg !3111
  %bf.cast1389 = and i64 %bf.load136, 65535, !dbg !3112
  %cmp139 = icmp eq i64 %bf.cast1389, 29, !dbg !3112
  %cond = select i1 %cmp139, i32 220, i32 230, !dbg !3113
  %call141 = call zeroext i8 (i32, i8*, ...) @warning(i32 %cond, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), %union.tree_node* %decl) #6, !dbg !3114
  br label %if.end142, !dbg !3114

if.end142:                                        ; preds = %land.lhs.true85, %land.lhs.true123, %land.lhs.true130, %land.lhs.true109, %land.lhs.true102, %land.lhs.true94, %land.lhs.true75, %land.lhs.true72, %land.lhs.true65, %lor.lhs.false57, %if.then134, %land.lhs.true59
  ret void, !dbg !3115
}

declare dso_local zeroext i8 @pedwarn(i32, i32, i8*, ...) local_unnamed_addr #1

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #1

declare dso_local void @assemble_external(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @check_global_declarations(%union.tree_node** %vec, i32 %len) local_unnamed_addr #4 !dbg !3116 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %vec, metadata !3120, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i32 %len, metadata !3121, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i32 0, metadata !3122, metadata !DIExpression()), !dbg !3123
  %0 = sext i32 %len to i64, !dbg !3124
  br label %for.cond, !dbg !3124

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3126
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3122, metadata !DIExpression()), !dbg !3123
  %cmp = icmp slt i64 %indvars.iv, %0, !dbg !3127
  br i1 %cmp, label %for.body, label %for.end, !dbg !3129

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %vec, i64 %indvars.iv, !dbg !3130
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3130
  tail call void @check_global_declaration_1(%union.tree_node* %1) #7, !dbg !3131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3132
  call void @llvm.dbg.value(metadata i32 undef, metadata !3122, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3123
  br label %for.cond, !dbg !3133, !llvm.loop !3134

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3136
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_debug_global_declarations(%union.tree_node** %vec, i32 %len) local_unnamed_addr #4 !dbg !3137 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %vec, metadata !3139, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %len, metadata !3140, metadata !DIExpression()), !dbg !3142
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3143
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 4, !dbg !3143
  %1 = load i32, i32* %arrayidx, align 8, !dbg !3143
  %cmp = icmp eq i32 %1, 0, !dbg !3145
  br i1 %cmp, label %lor.lhs.false, label %cleanup.cont, !dbg !3146

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 5, !dbg !3147
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !3147
  %cmp3 = icmp eq i32 %2, 0, !dbg !3148
  br i1 %cmp3, label %do.body, label %cleanup.cont, !dbg !3149

do.body:                                          ; preds = %lor.lhs.false
  %3 = load i8, i8* @timevar_enable, align 1, !dbg !3150
  %tobool = icmp eq i8 %3, 0, !dbg !3150
  br i1 %tobool, label %do.end, label %if.then4, !dbg !3153

if.then4:                                         ; preds = %do.body
  tail call void @timevar_push_1(i32 166) #6, !dbg !3150
  br label %do.end, !dbg !3150

do.end:                                           ; preds = %do.body, %if.then4
  call void @llvm.dbg.value(metadata i32 0, metadata !3141, metadata !DIExpression()), !dbg !3142
  %4 = sext i32 %len to i64, !dbg !3154
  br label %for.cond, !dbg !3154

for.cond:                                         ; preds = %for.body, %do.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %do.end ], !dbg !3156
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3141, metadata !DIExpression()), !dbg !3142
  %cmp6 = icmp slt i64 %indvars.iv, %4, !dbg !3157
  br i1 %cmp6, label %for.body, label %do.body8, !dbg !3159

for.body:                                         ; preds = %for.cond
  %5 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !3160
  %global_decl = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %5, i64 0, i32 17, !dbg !3161
  %6 = load void (%union.tree_node*)*, void (%union.tree_node*)** %global_decl, align 8, !dbg !3161
  %arrayidx7 = getelementptr inbounds %union.tree_node*, %union.tree_node** %vec, i64 %indvars.iv, !dbg !3162
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8, !dbg !3162
  tail call void %6(%union.tree_node* %7) #6, !dbg !3160
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3163
  call void @llvm.dbg.value(metadata i32 undef, metadata !3141, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3142
  br label %for.cond, !dbg !3164, !llvm.loop !3165

do.body8:                                         ; preds = %for.cond
  %8 = load i8, i8* @timevar_enable, align 1, !dbg !3167
  %tobool9 = icmp eq i8 %8, 0, !dbg !3167
  br i1 %tobool9, label %cleanup.cont, label %if.then10, !dbg !3170

if.then10:                                        ; preds = %do.body8
  tail call void @timevar_pop_1(i32 166) #6, !dbg !3167
  br label %cleanup.cont, !dbg !3167

cleanup.cont:                                     ; preds = %do.body8, %lor.lhs.false, %entry, %if.then10
  ret void, !dbg !3171
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #1

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @warn_deprecated_use(%union.tree_node* %node, %union.tree_node* %attr) local_unnamed_addr #4 !dbg !3172 {
entry:
  %xloc = alloca %struct.expanded_location, align 8
  %xloc96 = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %node, metadata !3174, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata %union.tree_node* %attr, metadata !3175, metadata !DIExpression()), !dbg !3200
  %cmp = icmp ne %union.tree_node* %node, null, !dbg !3201
  %0 = load i32, i32* @warn_deprecated_decl, align 4, !dbg !3203
  %tobool = icmp ne i32 %0, 0, !dbg !3203
  %or.cond = and i1 %cmp, %tobool, !dbg !3204
  br i1 %or.cond, label %if.end, label %cleanup.cont, !dbg !3204

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq %union.tree_node* %attr, null, !dbg !3205
  br i1 %tobool1, label %if.then2, label %if.end21, !dbg !3206

if.then2:                                         ; preds = %if.end
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %node, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3207
  %bf.load = load i64, i64* %1, align 8, !dbg !3207
  %bf.cast = and i64 %bf.load, 65535, !dbg !3207
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !3207
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3207
  %cmp3 = icmp eq i32 %2, 3, !dbg !3207
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !3208

if.then4:                                         ; preds = %if.then2
  %attributes = getelementptr inbounds %union.tree_node, %union.tree_node* %node, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !3209
  %3 = load %union.tree_node*, %union.tree_node** %attributes, align 8, !dbg !3209
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3175, metadata !DIExpression()), !dbg !3200
  br label %if.end21, !dbg !3210

if.else:                                          ; preds = %if.then2
  %cmp11 = icmp eq i32 %2, 2, !dbg !3211
  br i1 %cmp11, label %if.then12, label %if.end21, !dbg !3212

if.then12:                                        ; preds = %if.else
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %node, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3213
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3213
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3177, metadata !DIExpression()), !dbg !3214
  %tobool13 = icmp eq %union.tree_node* %4, null, !dbg !3215
  br i1 %tobool13, label %if.end21, label %if.then14, !dbg !3217

if.then14:                                        ; preds = %if.then12
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3218
  %5 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3218
  %6 = load %struct.tree_type*, %struct.tree_type** %5, align 8, !dbg !3218
  %attributes17 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i64 0, i32 4, !dbg !3218
  %7 = load %union.tree_node*, %union.tree_node** %attributes17, align 8, !dbg !3218
  %call = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %union.tree_node* %7) #6, !dbg !3219
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3175, metadata !DIExpression()), !dbg !3200
  br label %if.end21, !dbg !3220

if.end21:                                         ; preds = %if.then12, %if.end, %if.then4, %if.then14, %if.else
  %attr.addr.3 = phi %union.tree_node* [ %attr, %if.end ], [ %3, %if.then4 ], [ null, %if.else ], [ %call, %if.then14 ], [ null, %if.then12 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %attr.addr.3, metadata !3175, metadata !DIExpression()), !dbg !3200
  %tobool22 = icmp eq %union.tree_node* %attr.addr.3, null, !dbg !3221
  br i1 %tobool22, label %if.end25, label %if.then23, !dbg !3223

if.then23:                                        ; preds = %if.end21
  %call24 = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %union.tree_node* nonnull %attr.addr.3) #6, !dbg !3224
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !3175, metadata !DIExpression()), !dbg !3200
  br label %if.end25, !dbg !3225

if.end25:                                         ; preds = %if.end21, %if.then23
  %attr.addr.4 = phi %union.tree_node* [ %call24, %if.then23 ], [ null, %if.end21 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %attr.addr.4, metadata !3175, metadata !DIExpression()), !dbg !3200
  %tobool26 = icmp eq %union.tree_node* %attr.addr.4, null, !dbg !3226
  br i1 %tobool26, label %if.end31, label %if.then27, !dbg !3228

if.then27:                                        ; preds = %if.end25
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %attr.addr.4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3229
  %9 = bitcast %union.tree_node** %8 to %struct.tree_list**, !dbg !3229
  %10 = load %struct.tree_list*, %struct.tree_list** %9, align 8, !dbg !3229
  %value29 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %10, i64 0, i32 2, !dbg !3229
  %11 = bitcast %union.tree_node** %value29 to %struct.tree_string**, !dbg !3229
  %12 = load %struct.tree_string*, %struct.tree_string** %11, align 8, !dbg !3229
  %arraydecay = getelementptr inbounds %struct.tree_string, %struct.tree_string* %12, i64 0, i32 2, i64 0, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %arraydecay, metadata !3176, metadata !DIExpression()), !dbg !3200
  br label %if.end31, !dbg !3230

if.end31:                                         ; preds = %if.end25, %if.then27
  %msg.0 = phi i8* [ %arraydecay, %if.then27 ], [ null, %if.end25 ], !dbg !3231
  call void @llvm.dbg.value(metadata i8* %msg.0, metadata !3176, metadata !DIExpression()), !dbg !3200
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %node, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3232
  %bf.load33 = load i64, i64* %13, align 8, !dbg !3232
  %bf.cast35 = and i64 %bf.load33, 65535, !dbg !3232
  %arrayidx37 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast35, !dbg !3232
  %14 = load i32, i32* %arrayidx37, align 4, !dbg !3232
  %cmp38 = icmp eq i32 %14, 3, !dbg !3232
  br i1 %cmp38, label %if.then39, label %if.else48, !dbg !3233

if.then39:                                        ; preds = %if.end31
  %15 = bitcast %struct.expanded_location* %xloc to i8*, !dbg !3234
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15) #8, !dbg !3234
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %node, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3235
  %16 = load i32, i32* %locus, align 8, !dbg !3235
  call void @llvm.dbg.value(metadata %struct.expanded_location* %xloc, metadata !3183, metadata !DIExpression(DW_OP_deref)), !dbg !3236
  call void @expand_location(%struct.expanded_location* nonnull sret %xloc, i32 %16) #6, !dbg !3237
  %tobool40 = icmp eq i8* %msg.0, null, !dbg !3238
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 0, !dbg !3240
  %17 = load i8*, i8** %file, align 8, !dbg !3240
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 1, !dbg !3240
  %18 = load i32, i32* %line, align 8, !dbg !3240
  br i1 %tobool40, label %if.else43, label %if.then41, !dbg !3241

if.then41:                                        ; preds = %if.then39
  %call42 = call zeroext i8 (i32, i8*, ...) @warning(i32 68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), %union.tree_node* nonnull %node, i8* %17, i32 %18, i8* nonnull %msg.0) #6, !dbg !3242
  br label %if.end47, !dbg !3242

if.else43:                                        ; preds = %if.then39
  %call46 = call zeroext i8 (i32, i8*, ...) @warning(i32 68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), %union.tree_node* nonnull %node, i8* %17, i32 %18) #6, !dbg !3243
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #8, !dbg !3244
  br label %cleanup.cont, !dbg !3245

if.else48:                                        ; preds = %if.end31
  %cmp55 = icmp eq i32 %14, 2, !dbg !3246
  br i1 %cmp55, label %if.then56, label %cleanup.cont, !dbg !3247

if.then56:                                        ; preds = %if.else48
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3193, metadata !DIExpression()), !dbg !3248
  %chain59 = getelementptr inbounds %union.tree_node, %union.tree_node* %node, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3249
  %19 = load %union.tree_node*, %union.tree_node** %chain59, align 8, !dbg !3249
  call void @llvm.dbg.value(metadata %union.tree_node* %19, metadata !3196, metadata !DIExpression()), !dbg !3248
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %node, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !3250
  %21 = load %union.tree_node*, %union.tree_node** %20, align 8, !dbg !3250
  %tobool61 = icmp eq %union.tree_node* %21, null, !dbg !3250
  br i1 %tobool61, label %if.end93, label %if.then62, !dbg !3252

if.then62:                                        ; preds = %if.then56
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3252
  %bf.load66 = load i64, i64* %22, align 8, !dbg !3253
  %bf.cast681 = and i64 %bf.load66, 65535, !dbg !3256
  %cmp69 = icmp eq i64 %bf.cast681, 1, !dbg !3256
  br i1 %cmp69, label %if.end93, label %if.else73, !dbg !3257

if.else73:                                        ; preds = %if.then62
  %cmp80 = icmp eq i64 %bf.cast681, 35, !dbg !3258
  br i1 %cmp80, label %land.lhs.true, label %if.end93, !dbg !3260

land.lhs.true:                                    ; preds = %if.else73
  %name84 = getelementptr inbounds %union.tree_node, %union.tree_node* %21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3261
  %23 = load %union.tree_node*, %union.tree_node** %name84, align 8, !dbg !3261
  %tobool85 = icmp eq %union.tree_node* %23, null, !dbg !3261
  br i1 %tobool85, label %if.end93, label %if.then86, !dbg !3262

if.then86:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %union.tree_node* %23, metadata !3193, metadata !DIExpression()), !dbg !3248
  br label %if.end93, !dbg !3263

if.end93:                                         ; preds = %land.lhs.true, %if.then56, %if.then62, %if.then86, %if.else73
  %what.2 = phi %union.tree_node* [ null, %if.then56 ], [ %21, %if.then62 ], [ %23, %if.then86 ], [ null, %land.lhs.true ], [ null, %if.else73 ], !dbg !3248
  call void @llvm.dbg.value(metadata %union.tree_node* %what.2, metadata !3193, metadata !DIExpression()), !dbg !3248
  %tobool94 = icmp eq %union.tree_node* %19, null, !dbg !3264
  br i1 %tobool94, label %if.else123, label %if.then95, !dbg !3265

if.then95:                                        ; preds = %if.end93
  %24 = bitcast %struct.expanded_location* %xloc96 to i8*, !dbg !3266
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %24) #8, !dbg !3266
  %locus98 = getelementptr inbounds %union.tree_node, %union.tree_node* %19, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3267
  %25 = load i32, i32* %locus98, align 8, !dbg !3267
  call void @llvm.dbg.value(metadata %struct.expanded_location* %xloc96, metadata !3197, metadata !DIExpression(DW_OP_deref)), !dbg !3268
  call void @expand_location(%struct.expanded_location* nonnull sret %xloc96, i32 %25) #6, !dbg !3269
  %tobool99 = icmp eq %union.tree_node* %what.2, null, !dbg !3270
  %tobool101 = icmp ne i8* %msg.0, null, !dbg !3272
  %file103 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc96, i64 0, i32 0, !dbg !3272
  %26 = load i8*, i8** %file103, align 8, !dbg !3272
  %line104 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc96, i64 0, i32 1, !dbg !3272
  %27 = load i32, i32* %line104, align 8, !dbg !3272
  br i1 %tobool99, label %if.else111, label %if.then100, !dbg !3273

if.then100:                                       ; preds = %if.then95
  br i1 %tobool101, label %if.then102, label %if.else106, !dbg !3274

if.then102:                                       ; preds = %if.then100
  %call105 = call zeroext i8 (i32, i8*, ...) @warning(i32 68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), %union.tree_node* nonnull %what.2, i8* %26, i32 %27, i8* nonnull %msg.0) #6, !dbg !3276
  br label %if.end122, !dbg !3276

if.else106:                                       ; preds = %if.then100
  %call109 = call zeroext i8 (i32, i8*, ...) @warning(i32 68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), %union.tree_node* nonnull %what.2, i8* %26, i32 %27) #6, !dbg !3278
  br label %if.end122

if.else111:                                       ; preds = %if.then95
  br i1 %tobool101, label %if.then113, label %if.else117, !dbg !3279

if.then113:                                       ; preds = %if.else111
  %call116 = call zeroext i8 (i32, i8*, ...) @warning(i32 68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i8* %26, i32 %27, i8* nonnull %msg.0) #6, !dbg !3281
  br label %if.end122, !dbg !3281

if.else117:                                       ; preds = %if.else111
  %call120 = call zeroext i8 (i32, i8*, ...) @warning(i32 68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8* %26, i32 %27) #6, !dbg !3283
  br label %if.end122

if.end122:                                        ; preds = %if.then113, %if.else117, %if.then102, %if.else106
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24) #8, !dbg !3284
  br label %cleanup.cont, !dbg !3285

if.else123:                                       ; preds = %if.end93
  %tobool124 = icmp eq %union.tree_node* %what.2, null, !dbg !3286
  %tobool126 = icmp ne i8* %msg.0, null, !dbg !3289
  br i1 %tobool124, label %if.else132, label %if.then125, !dbg !3290

if.then125:                                       ; preds = %if.else123
  br i1 %tobool126, label %if.then127, label %if.else129, !dbg !3291

if.then127:                                       ; preds = %if.then125
  %call128 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), %union.tree_node* nonnull %what.2, i8* nonnull %msg.0) #6, !dbg !3293
  br label %cleanup.cont, !dbg !3293

if.else129:                                       ; preds = %if.then125
  %call130 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), %union.tree_node* nonnull %what.2) #6, !dbg !3295
  br label %cleanup.cont

if.else132:                                       ; preds = %if.else123
  br i1 %tobool126, label %if.then134, label %if.else136, !dbg !3296

if.then134:                                       ; preds = %if.else132
  %call135 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %msg.0) #6, !dbg !3298
  br label %cleanup.cont, !dbg !3298

if.else136:                                       ; preds = %if.else132
  %call137 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !3300
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %entry, %if.else48, %if.else129, %if.then127, %if.else136, %if.then134, %if.end122, %if.end47
  ret void, !dbg !3301
}

declare dso_local %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @decode_d_option(i8* %arg) local_unnamed_addr #4 !dbg !3302 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !3304, metadata !DIExpression()), !dbg !3306
  br label %while.cond, !dbg !3307

while.cond:                                       ; preds = %sw.epilog, %entry
  %arg.addr.0 = phi i8* [ %arg, %entry ], [ %incdec.ptr, %sw.epilog ]
  call void @llvm.dbg.value(metadata i8* %arg.addr.0, metadata !3304, metadata !DIExpression()), !dbg !3306
  %0 = load i8, i8* %arg.addr.0, align 1, !dbg !3308
  %tobool = icmp eq i8 %0, 0, !dbg !3307
  br i1 %tobool, label %while.end, label %while.body, !dbg !3307

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %arg.addr.0, i64 1, !dbg !3309
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3304, metadata !DIExpression()), !dbg !3306
  %conv = sext i8 %0 to i32, !dbg !3310
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3305, metadata !DIExpression()), !dbg !3306
  switch i32 %conv, label %sw.default [
    i32 65, label %sw.bb
    i32 112, label %sw.bb1
    i32 80, label %sw.bb2
    i32 118, label %sw.bb3
    i32 120, label %sw.bb4
    i32 121, label %sw.bb5
    i32 68, label %sw.epilog
    i32 73, label %sw.epilog
    i32 77, label %sw.epilog
    i32 78, label %sw.epilog
    i32 85, label %sw.epilog
    i32 72, label %sw.bb7
    i32 97, label %sw.bb8
  ], !dbg !3311

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* @flag_debug_asm, align 4, !dbg !3312
  br label %sw.epilog, !dbg !3314

sw.bb1:                                           ; preds = %while.body
  store i32 1, i32* @flag_print_asm_name, align 4, !dbg !3315
  br label %sw.epilog, !dbg !3316

sw.bb2:                                           ; preds = %while.body
  store i32 1, i32* @flag_dump_rtl_in_asm, align 4, !dbg !3317
  store i32 1, i32* @flag_print_asm_name, align 4, !dbg !3318
  br label %sw.epilog, !dbg !3319

sw.bb3:                                           ; preds = %while.body
  store i32 1, i32* @graph_dump_format, align 4, !dbg !3320
  br label %sw.epilog, !dbg !3321

sw.bb4:                                           ; preds = %while.body
  store i32 1, i32* @rtl_dump_and_exit, align 4, !dbg !3322
  br label %sw.epilog, !dbg !3323

sw.bb5:                                           ; preds = %while.body
  store i1 true, i1* @set_yydebug, align 4, !dbg !3324
  br label %sw.epilog, !dbg !3325

sw.bb7:                                           ; preds = %while.body
  tail call fastcc void @setup_core_dumping() #7, !dbg !3326
  br label %sw.epilog, !dbg !3327

sw.bb8:                                           ; preds = %while.body
  %call = tail call zeroext i8 @enable_rtl_dump_file() #6, !dbg !3328
  br label %sw.epilog, !dbg !3329

sw.default:                                       ; preds = %while.body
  %call9 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i32 %conv) #6, !dbg !3330
  br label %sw.epilog, !dbg !3331

sw.epilog:                                        ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %sw.default, %sw.bb8, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  br label %while.cond, !dbg !3307, !llvm.loop !3332

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3334
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setup_core_dumping() unnamed_addr #4 !dbg !3335 {
entry:
  %rlim = alloca %struct.rlimit, align 8
  %call = tail call void (i32)* @signal(i32 6, void (i32)* null) #6, !dbg !3346
  %0 = bitcast %struct.rlimit* %rlim to i8*, !dbg !3347
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3347
  call void @llvm.dbg.value(metadata %struct.rlimit* %rlim, metadata !3337, metadata !DIExpression(DW_OP_deref)), !dbg !3348
  %call1 = call i32 @getrlimit(i32 4, %struct.rlimit* nonnull %rlim) #6, !dbg !3349
  %cmp = icmp eq i32 %call1, 0, !dbg !3351
  br i1 %cmp, label %if.end, label %if.then, !dbg !3352

if.then:                                          ; preds = %entry
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !3353
  br label %if.end, !dbg !3353

if.end:                                           ; preds = %entry, %if.then
  %rlim_max = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i64 0, i32 1, !dbg !3354
  %1 = load i64, i64* %rlim_max, align 8, !dbg !3354
  %rlim_cur = getelementptr inbounds %struct.rlimit, %struct.rlimit* %rlim, i64 0, i32 0, !dbg !3355
  store i64 %1, i64* %rlim_cur, align 8, !dbg !3356
  call void @llvm.dbg.value(metadata %struct.rlimit* %rlim, metadata !3337, metadata !DIExpression(DW_OP_deref)), !dbg !3348
  %call2 = call i32 @setrlimit(i32 4, %struct.rlimit* nonnull %rlim) #6, !dbg !3357
  %cmp3 = icmp eq i32 %call2, 0, !dbg !3359
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !3360

if.then4:                                         ; preds = %if.end
  call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !3361
  br label %if.end5, !dbg !3361

if.end5:                                          ; preds = %if.end, %if.then4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !3362
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3363
  %abort_on_error = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %2, i64 0, i32 6, !dbg !3363
  store i8 1, i8* %abort_on_error, align 1, !dbg !3363
  ret void, !dbg !3364
}

declare dso_local zeroext i8 @enable_rtl_dump_file() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @print_version(%struct._IO_FILE* %file, i8* %indent) local_unnamed_addr #4 !dbg !2040 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2044, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* %indent, metadata !2045, metadata !DIExpression()), !dbg !3365
  %0 = load i8, i8* %indent, align 1, !dbg !3366
  %cmp1 = icmp eq i8 %0, 0, !dbg !3367
  %cond3 = select i1 %cmp1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), !dbg !3366
  %1 = load i8*, i8** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 0), align 8, !dbg !3368
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @print_version.fmt1, i64 0, i64 0), i8* %indent, i8* %cond3, i8* %1, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @pkgversion_string, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @version_string, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0), i8* %indent, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !3369
  ret void, !dbg !3370
}

; Function Attrs: nounwind uwtable
define dso_local i8* @default_get_pch_validity(i64* %sz) local_unnamed_addr #4 !dbg !3371 {
entry:
  %state = alloca %struct.cl_option_state, align 8
  call void @llvm.dbg.value(metadata i64* %sz, metadata !3375, metadata !DIExpression()), !dbg !3386
  %0 = bitcast %struct.cl_option_state* %state to i8*, !dbg !3387
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3387
  store i64 2, i64* %sz, align 8, !dbg !3388
  %1 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 76), align 8, !dbg !3389
  %tobool = icmp eq i8* (i32)* %1, null, !dbg !3391
  br i1 %tobool, label %if.end, label %if.then, !dbg !3392

if.then:                                          ; preds = %entry
  store i64 6, i64* %sz, align 8, !dbg !3393
  br label %if.end, !dbg !3394

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata i64 0, metadata !3383, metadata !DIExpression()), !dbg !3386
  %2 = load i32, i32* @cl_options_count, align 4, !dbg !3395
  %conv = zext i32 %2 to i64, !dbg !3395
  %size = getelementptr inbounds %struct.cl_option_state, %struct.cl_option_state* %state, i64 0, i32 1, !dbg !3398
  br label %for.cond, !dbg !3400

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i64 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !3401
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3383, metadata !DIExpression()), !dbg !3386
  %exitcond1 = icmp eq i64 %i.0, %conv, !dbg !3402
  br i1 %exitcond1, label %for.end, label %for.body, !dbg !3403

for.body:                                         ; preds = %for.cond
  %conv2 = trunc i64 %i.0 to i32, !dbg !3404
  call void @llvm.dbg.value(metadata %struct.cl_option_state* %state, metadata !3376, metadata !DIExpression(DW_OP_deref)), !dbg !3386
  %call = call fastcc zeroext i8 @option_affects_pch_p(i32 %conv2, %struct.cl_option_state* nonnull %state) #7, !dbg !3405
  %tobool3 = icmp eq i8 %call, 0, !dbg !3405
  br i1 %tobool3, label %for.inc, label %if.then4, !dbg !3406

if.then4:                                         ; preds = %for.body
  %3 = load i64, i64* %size, align 8, !dbg !3407
  %4 = load i64, i64* %sz, align 8, !dbg !3408
  %add5 = add i64 %4, %3, !dbg !3408
  store i64 %add5, i64* %sz, align 8, !dbg !3408
  br label %for.inc, !dbg !3409

for.inc:                                          ; preds = %for.body, %if.then4
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3410
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3383, metadata !DIExpression()), !dbg !3386
  br label %for.cond, !dbg !3411, !llvm.loop !3412

for.end:                                          ; preds = %for.cond
  %5 = load i64, i64* %sz, align 8, !dbg !3414
  %call7 = call i8* @xmalloc(i64 %5) #6, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %call7, metadata !3385, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %call7, metadata !3384, metadata !DIExpression()), !dbg !3386
  %6 = load i32, i32* @flag_pic, align 4, !dbg !3415
  %conv8 = trunc i32 %6 to i8, !dbg !3415
  store i8 %conv8, i8* %call7, align 1, !dbg !3416
  %7 = load i32, i32* @flag_pie, align 4, !dbg !3417
  %conv9 = trunc i32 %7 to i8, !dbg !3417
  %arrayidx10 = getelementptr inbounds i8, i8* %call7, i64 1, !dbg !3418
  store i8 %conv9, i8* %arrayidx10, align 1, !dbg !3419
  %add.ptr = getelementptr inbounds i8, i8* %call7, i64 2, !dbg !3420
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3385, metadata !DIExpression()), !dbg !3386
  %8 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 76), align 8, !dbg !3421
  %tobool11 = icmp eq i8* (i32)* %8, null, !dbg !3423
  br i1 %tobool11, label %if.end15, label %if.then12, !dbg !3424

if.then12:                                        ; preds = %for.end
  %call13 = call i8* @memcpy(i8* nonnull %add.ptr, i8* bitcast (i32* @target_flags to i8*), i64 4) #6, !dbg !3425
  %add.ptr14 = getelementptr inbounds i8, i8* %call7, i64 6, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %add.ptr14, metadata !3385, metadata !DIExpression()), !dbg !3386
  br label %if.end15, !dbg !3428

if.end15:                                         ; preds = %for.end, %if.then12
  %r.0 = phi i8* [ %add.ptr14, %if.then12 ], [ %add.ptr, %for.end ], !dbg !3386
  call void @llvm.dbg.value(metadata i8* %r.0, metadata !3385, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 0, metadata !3383, metadata !DIExpression()), !dbg !3386
  %data = getelementptr inbounds %struct.cl_option_state, %struct.cl_option_state* %state, i64 0, i32 0, !dbg !3429
  br label %for.cond16, !dbg !3434

for.cond16:                                       ; preds = %for.inc30, %if.end15
  %i.1 = phi i64 [ 0, %if.end15 ], [ %inc31, %for.inc30 ], !dbg !3435
  %r.1 = phi i8* [ %r.0, %if.end15 ], [ %r.2, %for.inc30 ], !dbg !3386
  call void @llvm.dbg.value(metadata i8* %r.1, metadata !3385, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !3383, metadata !DIExpression()), !dbg !3386
  %exitcond = icmp eq i64 %i.1, %conv, !dbg !3436
  br i1 %exitcond, label %for.end32, label %for.body20, !dbg !3437

for.body20:                                       ; preds = %for.cond16
  %conv21 = trunc i64 %i.1 to i32, !dbg !3438
  call void @llvm.dbg.value(metadata %struct.cl_option_state* %state, metadata !3376, metadata !DIExpression(DW_OP_deref)), !dbg !3386
  %call22 = call fastcc zeroext i8 @option_affects_pch_p(i32 %conv21, %struct.cl_option_state* nonnull %state) #7, !dbg !3439
  %tobool23 = icmp eq i8 %call22, 0, !dbg !3439
  br i1 %tobool23, label %for.inc30, label %if.then24, !dbg !3440

if.then24:                                        ; preds = %for.body20
  %9 = load i8*, i8** %data, align 8, !dbg !3441
  %10 = load i64, i64* %size, align 8, !dbg !3442
  %call26 = call i8* @memcpy(i8* %r.1, i8* %9, i64 %10) #6, !dbg !3443
  %11 = load i64, i64* %size, align 8, !dbg !3444
  %add.ptr28 = getelementptr inbounds i8, i8* %r.1, i64 %11, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %add.ptr28, metadata !3385, metadata !DIExpression()), !dbg !3386
  br label %for.inc30, !dbg !3446

for.inc30:                                        ; preds = %for.body20, %if.then24
  %r.2 = phi i8* [ %add.ptr28, %if.then24 ], [ %r.1, %for.body20 ], !dbg !3386
  call void @llvm.dbg.value(metadata i8* %r.2, metadata !3385, metadata !DIExpression()), !dbg !3386
  %inc31 = add nuw nsw i64 %i.1, 1, !dbg !3447
  call void @llvm.dbg.value(metadata i64 %inc31, metadata !3383, metadata !DIExpression()), !dbg !3386
  br label %for.cond16, !dbg !3448, !llvm.loop !3449

for.end32:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3451
  ret i8* %call7, !dbg !3452
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @option_affects_pch_p(i32 %option, %struct.cl_option_state* %state) unnamed_addr #0 !dbg !3453 {
entry:
  call void @llvm.dbg.value(metadata i32 %option, metadata !3458, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.cl_option_state* %state, metadata !3459, metadata !DIExpression()), !dbg !3460
  %idxprom = sext i32 %option to i64, !dbg !3461
  %flags = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %idxprom, i32 5, !dbg !3463
  %0 = load i32, i32* %flags, align 8, !dbg !3463
  %and = and i32 %0, 1048576, !dbg !3464
  %cmp = icmp eq i32 %and, 0, !dbg !3465
  br i1 %cmp, label %return, label %if.end, !dbg !3466

if.end:                                           ; preds = %entry
  %flag_var = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %idxprom, i32 6, !dbg !3467
  %1 = load i8*, i8** %flag_var, align 8, !dbg !3467
  %cmp3 = icmp eq i8* %1, bitcast (i32* @target_flags to i8*), !dbg !3469
  %2 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 76), align 8, !dbg !3470
  %tobool = icmp ne i8* (i32)* %2, null, !dbg !3472
  %or.cond = and i1 %cmp3, %tobool, !dbg !3473
  br i1 %or.cond, label %return, label %if.end7, !dbg !3473

if.end7:                                          ; preds = %if.end
  %call = tail call zeroext i8 @get_option_state(i32 %option, %struct.cl_option_state* %state) #6, !dbg !3474
  br label %return, !dbg !3475

return:                                           ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi i8 [ %call, %if.end7 ], [ 0, %entry ], [ 0, %if.end ], !dbg !3460
  ret i8 %retval.0, !dbg !3476
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @default_pch_valid_p(i8* %data_p, i64 %len) local_unnamed_addr #4 !dbg !3477 {
entry:
  %state = alloca %struct.cl_option_state, align 8
  %tf = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %data_p, metadata !3481, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %len, metadata !3482, metadata !DIExpression()), !dbg !3490
  %0 = bitcast %struct.cl_option_state* %state to i8*, !dbg !3491
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3491
  call void @llvm.dbg.value(metadata i8* %data_p, metadata !3484, metadata !DIExpression()), !dbg !3490
  %1 = load i8, i8* %data_p, align 1, !dbg !3492
  %conv = sext i8 %1 to i32, !dbg !3492
  %2 = load i32, i32* @flag_pic, align 4, !dbg !3494
  %cmp = icmp eq i32 %2, %conv, !dbg !3495
  br i1 %cmp, label %if.end, label %cleanup37, !dbg !3496

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8, i8* %data_p, i64 1, !dbg !3497
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !3497
  %conv3 = sext i8 %3 to i32, !dbg !3497
  %4 = load i32, i32* @flag_pie, align 4, !dbg !3499
  %cmp4 = icmp eq i32 %4, %conv3, !dbg !3500
  br i1 %cmp4, label %if.end7, label %cleanup37, !dbg !3501

if.end7:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %data_p, i64 2, !dbg !3502
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3484, metadata !DIExpression()), !dbg !3490
  %5 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 76), align 8, !dbg !3503
  %tobool = icmp eq i8* (i32)* %5, null, !dbg !3504
  br i1 %tobool, label %if.end16, label %if.then8, !dbg !3505

if.then8:                                         ; preds = %if.end7
  %6 = bitcast i32* %tf to i8*, !dbg !3506
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8, !dbg !3506
  %call = call i8* @memcpy(i8* nonnull %6, i8* nonnull %add.ptr, i64 4) #6, !dbg !3507
  %add.ptr9 = getelementptr inbounds i8, i8* %data_p, i64 6, !dbg !3508
  call void @llvm.dbg.value(metadata i8* %add.ptr9, metadata !3484, metadata !DIExpression()), !dbg !3490
  %7 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 76), align 8, !dbg !3509
  %8 = load i32, i32* %tf, align 4, !dbg !3510
  call void @llvm.dbg.value(metadata i32 %8, metadata !3486, metadata !DIExpression()), !dbg !3511
  %call10 = call i8* %7(i32 %8) #6, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %call10, metadata !3489, metadata !DIExpression()), !dbg !3511
  %cmp11 = icmp eq i8* %call10, null, !dbg !3513
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8, !dbg !3515
  br i1 %cmp11, label %if.end16, label %cleanup37

if.end16:                                         ; preds = %if.end7, %if.then8
  %data.0 = phi i8* [ %add.ptr, %if.end7 ], [ %add.ptr9, %if.then8 ], !dbg !3490
  call void @llvm.dbg.value(metadata i8* %data.0, metadata !3484, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 0, metadata !3485, metadata !DIExpression()), !dbg !3490
  %9 = load i32, i32* @cl_options_count, align 4, !dbg !3516
  %conv17 = zext i32 %9 to i64, !dbg !3516
  %data24 = getelementptr inbounds %struct.cl_option_state, %struct.cl_option_state* %state, i64 0, i32 0, !dbg !3519
  %size = getelementptr inbounds %struct.cl_option_state, %struct.cl_option_state* %state, i64 0, i32 1, !dbg !3519
  br label %for.cond, !dbg !3523

for.cond:                                         ; preds = %for.inc, %if.end16
  %i.0 = phi i64 [ 0, %if.end16 ], [ %inc, %for.inc ], !dbg !3524
  %data.1 = phi i8* [ %data.0, %if.end16 ], [ %data.2, %for.inc ], !dbg !3490
  call void @llvm.dbg.value(metadata i8* %data.1, metadata !3484, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3485, metadata !DIExpression()), !dbg !3490
  %exitcond = icmp eq i64 %i.0, %conv17, !dbg !3525
  br i1 %exitcond, label %cleanup37.loopexit, label %for.body, !dbg !3526

for.body:                                         ; preds = %for.cond
  %conv20 = trunc i64 %i.0 to i32, !dbg !3527
  call void @llvm.dbg.value(metadata %struct.cl_option_state* %state, metadata !3483, metadata !DIExpression(DW_OP_deref)), !dbg !3490
  %call21 = call fastcc zeroext i8 @option_affects_pch_p(i32 %conv20, %struct.cl_option_state* nonnull %state) #7, !dbg !3528
  %tobool22 = icmp eq i8 %call21, 0, !dbg !3528
  br i1 %tobool22, label %for.inc, label %if.then23, !dbg !3529

if.then23:                                        ; preds = %for.body
  %10 = load i8*, i8** %data24, align 8, !dbg !3530
  %11 = load i64, i64* %size, align 8, !dbg !3531
  %call25 = call i32 @memcmp(i8* %data.1, i8* %10, i64 %11) #6, !dbg !3532
  %cmp26 = icmp eq i32 %call25, 0, !dbg !3533
  br i1 %cmp26, label %if.end31, label %if.then28, !dbg !3534

if.then28:                                        ; preds = %if.then23
  %i.0.lcssa3 = phi i64 [ %i.0, %if.then23 ], !dbg !3524
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa3, metadata !3485, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa3, metadata !3485, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa3, metadata !3485, metadata !DIExpression()), !dbg !3490
  %opt_text = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %i.0.lcssa3, i32 0, !dbg !3535
  %12 = load i8*, i8** %opt_text, align 8, !dbg !3535
  %call30 = call fastcc i8* @pch_option_mismatch(i8* %12) #7, !dbg !3536
  br label %cleanup37, !dbg !3537

if.end31:                                         ; preds = %if.then23
  %13 = load i64, i64* %size, align 8, !dbg !3538
  %add.ptr33 = getelementptr inbounds i8, i8* %data.1, i64 %13, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %add.ptr33, metadata !3484, metadata !DIExpression()), !dbg !3490
  br label %for.inc, !dbg !3540

for.inc:                                          ; preds = %for.body, %if.end31
  %data.2 = phi i8* [ %add.ptr33, %if.end31 ], [ %data.1, %for.body ], !dbg !3490
  call void @llvm.dbg.value(metadata i8* %data.2, metadata !3484, metadata !DIExpression()), !dbg !3490
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3541
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3485, metadata !DIExpression()), !dbg !3490
  br label %for.cond, !dbg !3542, !llvm.loop !3543

cleanup37.loopexit:                               ; preds = %for.cond
  br label %cleanup37, !dbg !3545

cleanup37:                                        ; preds = %cleanup37.loopexit, %if.end, %entry, %if.then8, %if.then28
  %retval.1 = phi i8* [ %call10, %if.then8 ], [ %call30, %if.then28 ], [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i64 0, i64 0), %entry ], [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0), %if.end ], [ null, %cleanup37.loopexit ], !dbg !3490
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3545
  ret i8* %retval.1, !dbg !3545
}

declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @pch_option_mismatch(i8* %option) unnamed_addr #4 !dbg !3546 {
entry:
  %r = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %option, metadata !3548, metadata !DIExpression()), !dbg !3550
  %0 = bitcast i8** %r to i8*, !dbg !3551
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3551
  call void @llvm.dbg.value(metadata i8** %r, metadata !3549, metadata !DIExpression(DW_OP_deref)), !dbg !3550
  %call = call i32 (i8**, i8*, ...) @asprintf(i8** nonnull %r, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0), i8* %option) #6, !dbg !3552
  %1 = load i8*, i8** %r, align 8, !dbg !3553
  call void @llvm.dbg.value(metadata i8* %1, metadata !3549, metadata !DIExpression()), !dbg !3550
  %cmp = icmp eq i8* %1, null, !dbg !3555
  call void @llvm.dbg.value(metadata i8* %1, metadata !3549, metadata !DIExpression()), !dbg !3550
  %retval.0 = select i1 %cmp, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* %1, !dbg !3556
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3557
  ret i8* %retval.0, !dbg !3557
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @default_tree_printer(%struct.pretty_print_info* %pp, %struct.text_info* %text, i8* %spec, i32 %precision, i8 zeroext %wide, i8 zeroext %set_locus, i8 zeroext %hash) #4 !dbg !3558 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !3625, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata %struct.text_info* %text, metadata !3626, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i8* %spec, metadata !3627, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i32 %precision, metadata !3628, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i8 %wide, metadata !3629, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i8 %set_locus, metadata !3630, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i8 %hash, metadata !3631, metadata !DIExpression()), !dbg !3636
  %cmp = icmp ne i32 %precision, 0, !dbg !3637
  %0 = or i8 %wide, %hash, !dbg !3639
  %1 = icmp ne i8 %0, 0, !dbg !3639
  %2 = or i1 %1, %cmp, !dbg !3639
  br i1 %2, label %cleanup, label %if.end, !dbg !3639

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %spec, align 1, !dbg !3640
  %conv4 = sext i8 %3 to i32, !dbg !3640
  switch i32 %conv4, label %cleanup [
    i32 69, label %sw.bb
    i32 68, label %sw.bb14
    i32 70, label %sw.bb37
    i32 84, label %sw.bb37
  ], !dbg !3641

sw.bb:                                            ; preds = %if.end
  %args_ptr = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 1, !dbg !3642
  %4 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr, align 8, !dbg !3642
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0, !dbg !3642
  %gp_offset = load i32, i32* %gp_offset_p, align 8, !dbg !3642
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !3642
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !3642

vaarg.in_reg:                                     ; preds = %sw.bb
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3, !dbg !3642
  %reg_save_area = load i8*, i8** %5, align 8, !dbg !3642
  %6 = sext i32 %gp_offset to i64, !dbg !3642
  %7 = getelementptr i8, i8* %reg_save_area, i64 %6, !dbg !3642
  %8 = add i32 %gp_offset, 8, !dbg !3642
  store i32 %8, i32* %gp_offset_p, align 8, !dbg !3642
  br label %vaarg.end, !dbg !3642

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2, !dbg !3642
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !3642
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !3642
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !3642
  br label %vaarg.end, !dbg !3642

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %7, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to %union.tree_node**, !dbg !3642
  %9 = load %union.tree_node*, %union.tree_node** %vaarg.addr, align 8, !dbg !3642
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !3632, metadata !DIExpression()), !dbg !3636
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3644
  %bf.load = load i64, i64* %10, align 8, !dbg !3644
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !3646
  %cmp5 = icmp eq i64 %bf.cast3, 1, !dbg !3646
  br i1 %cmp5, label %if.then7, label %sw.epilog, !dbg !3647

if.then7:                                         ; preds = %vaarg.end
  %translate_identifiers = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 9, !dbg !3648
  %11 = load i8, i8* %translate_identifiers, align 2, !dbg !3648
  %tobool9 = icmp eq i8 %11, 0, !dbg !3648
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3648
  %str = bitcast i32* %id to i8**, !dbg !3648
  %12 = load i8*, i8** %str, align 8, !dbg !3648
  br i1 %tobool9, label %cond.end, label %cond.true, !dbg !3648

cond.true:                                        ; preds = %if.then7
  %call = tail call i8* @identifier_to_locale(i8* %12) #6, !dbg !3648
  br label %cond.end, !dbg !3648

cond.end:                                         ; preds = %if.then7, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %12, %if.then7 ], !dbg !3648
  tail call void @pp_base_string(%struct.pretty_print_info* %pp, i8* %cond) #6, !dbg !3648
  br label %cleanup, !dbg !3650

sw.bb14:                                          ; preds = %if.end
  %args_ptr15 = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 1, !dbg !3651
  %13 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr15, align 8, !dbg !3651
  %gp_offset_p17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0, i32 0, !dbg !3651
  %gp_offset18 = load i32, i32* %gp_offset_p17, align 8, !dbg !3651
  %fits_in_gp19 = icmp ult i32 %gp_offset18, 41, !dbg !3651
  br i1 %fits_in_gp19, label %vaarg.in_reg20, label %vaarg.in_mem22, !dbg !3651

vaarg.in_reg20:                                   ; preds = %sw.bb14
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0, i32 3, !dbg !3651
  %reg_save_area21 = load i8*, i8** %14, align 8, !dbg !3651
  %15 = sext i32 %gp_offset18 to i64, !dbg !3651
  %16 = getelementptr i8, i8* %reg_save_area21, i64 %15, !dbg !3651
  %17 = add i32 %gp_offset18, 8, !dbg !3651
  store i32 %17, i32* %gp_offset_p17, align 8, !dbg !3651
  br label %vaarg.end26, !dbg !3651

vaarg.in_mem22:                                   ; preds = %sw.bb14
  %overflow_arg_area_p23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0, i32 2, !dbg !3651
  %overflow_arg_area24 = load i8*, i8** %overflow_arg_area_p23, align 8, !dbg !3651
  %overflow_arg_area.next25 = getelementptr i8, i8* %overflow_arg_area24, i64 8, !dbg !3651
  store i8* %overflow_arg_area.next25, i8** %overflow_arg_area_p23, align 8, !dbg !3651
  br label %vaarg.end26, !dbg !3651

vaarg.end26:                                      ; preds = %vaarg.in_mem22, %vaarg.in_reg20
  %vaarg.addr27.in = phi i8* [ %16, %vaarg.in_reg20 ], [ %overflow_arg_area24, %vaarg.in_mem22 ]
  %vaarg.addr27 = bitcast i8* %vaarg.addr27.in to %union.tree_node**, !dbg !3651
  %18 = load %union.tree_node*, %union.tree_node** %vaarg.addr27, align 8, !dbg !3651
  call void @llvm.dbg.value(metadata %union.tree_node* %18, metadata !3632, metadata !DIExpression()), !dbg !3636
  %debug_expr_is_from = getelementptr inbounds %union.tree_node, %union.tree_node* %18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3652
  %19 = bitcast i40* %debug_expr_is_from to i64*, !dbg !3652
  %bf.load28 = load i64, i64* %19, align 8, !dbg !3652
  %bf.cast302 = and i64 %bf.load28, 16384, !dbg !3652
  %tobool31 = icmp eq i64 %bf.cast302, 0, !dbg !3652
  br i1 %tobool31, label %sw.epilog, label %land.lhs.true, !dbg !3654

land.lhs.true:                                    ; preds = %vaarg.end26
  %call32 = tail call %union.tree_node* @decl_debug_expr_lookup(%union.tree_node* %18) #6, !dbg !3655
  %tobool33 = icmp eq %union.tree_node* %call32, null, !dbg !3655
  br i1 %tobool33, label %sw.epilog, label %if.then34, !dbg !3656

if.then34:                                        ; preds = %land.lhs.true
  %call35 = tail call %union.tree_node* @decl_debug_expr_lookup(%union.tree_node* %18) #6, !dbg !3657
  call void @llvm.dbg.value(metadata %union.tree_node* %call35, metadata !3632, metadata !DIExpression()), !dbg !3636
  br label %sw.epilog, !dbg !3658

sw.bb37:                                          ; preds = %if.end, %if.end
  %args_ptr38 = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 1, !dbg !3659
  %20 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr38, align 8, !dbg !3659
  %gp_offset_p40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %20, i64 0, i64 0, i32 0, !dbg !3659
  %gp_offset41 = load i32, i32* %gp_offset_p40, align 8, !dbg !3659
  %fits_in_gp42 = icmp ult i32 %gp_offset41, 41, !dbg !3659
  br i1 %fits_in_gp42, label %vaarg.in_reg43, label %vaarg.in_mem45, !dbg !3659

vaarg.in_reg43:                                   ; preds = %sw.bb37
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %20, i64 0, i64 0, i32 3, !dbg !3659
  %reg_save_area44 = load i8*, i8** %21, align 8, !dbg !3659
  %22 = sext i32 %gp_offset41 to i64, !dbg !3659
  %23 = getelementptr i8, i8* %reg_save_area44, i64 %22, !dbg !3659
  %24 = add i32 %gp_offset41, 8, !dbg !3659
  store i32 %24, i32* %gp_offset_p40, align 8, !dbg !3659
  br label %vaarg.end49, !dbg !3659

vaarg.in_mem45:                                   ; preds = %sw.bb37
  %overflow_arg_area_p46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %20, i64 0, i64 0, i32 2, !dbg !3659
  %overflow_arg_area47 = load i8*, i8** %overflow_arg_area_p46, align 8, !dbg !3659
  %overflow_arg_area.next48 = getelementptr i8, i8* %overflow_arg_area47, i64 8, !dbg !3659
  store i8* %overflow_arg_area.next48, i8** %overflow_arg_area_p46, align 8, !dbg !3659
  br label %vaarg.end49, !dbg !3659

vaarg.end49:                                      ; preds = %vaarg.in_mem45, %vaarg.in_reg43
  %vaarg.addr50.in = phi i8* [ %23, %vaarg.in_reg43 ], [ %overflow_arg_area47, %vaarg.in_mem45 ]
  %vaarg.addr50 = bitcast i8* %vaarg.addr50.in to %union.tree_node**, !dbg !3659
  %25 = load %union.tree_node*, %union.tree_node** %vaarg.addr50, align 8, !dbg !3659
  call void @llvm.dbg.value(metadata %union.tree_node* %25, metadata !3632, metadata !DIExpression()), !dbg !3636
  br label %sw.epilog, !dbg !3660

sw.epilog:                                        ; preds = %land.lhs.true, %vaarg.end26, %if.then34, %vaarg.end, %vaarg.end49
  %t.1 = phi %union.tree_node* [ %25, %vaarg.end49 ], [ %9, %vaarg.end ], [ %call35, %if.then34 ], [ %18, %land.lhs.true ], [ %18, %vaarg.end26 ], !dbg !3661
  call void @llvm.dbg.value(metadata %union.tree_node* %t.1, metadata !3632, metadata !DIExpression()), !dbg !3636
  %tobool52 = icmp eq i8 %set_locus, 0, !dbg !3662
  br i1 %tobool52, label %if.end58, label %land.lhs.true53, !dbg !3664

land.lhs.true53:                                  ; preds = %sw.epilog
  %locus = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 3, !dbg !3665
  %26 = load i32*, i32** %locus, align 8, !dbg !3665
  %tobool54 = icmp eq i32* %26, null, !dbg !3666
  br i1 %tobool54, label %if.end58, label %if.then55, !dbg !3667

if.then55:                                        ; preds = %land.lhs.true53
  %locus56 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3668
  %27 = load i32, i32* %locus56, align 8, !dbg !3668
  store i32 %27, i32* %26, align 4, !dbg !3669
  br label %if.end58, !dbg !3670

if.end58:                                         ; preds = %land.lhs.true53, %sw.epilog, %if.then55
  %28 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3671
  %bf.load60 = load i64, i64* %28, align 8, !dbg !3671
  %bf.cast62 = and i64 %bf.load60, 65535, !dbg !3671
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast62, !dbg !3671
  %29 = load i32, i32* %arrayidx, align 4, !dbg !3671
  %cmp63 = icmp eq i32 %29, 3, !dbg !3671
  br i1 %cmp63, label %if.then65, label %if.else, !dbg !3672

if.then65:                                        ; preds = %if.end58
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %t.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3673
  %30 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !3673
  %tobool67 = icmp eq %union.tree_node* %30, null, !dbg !3673
  br i1 %tobool67, label %cond.end72, label %cond.true68, !dbg !3673

cond.true68:                                      ; preds = %if.then65
  %31 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3674
  %call69 = tail call i8* %31(%union.tree_node* %t.1, i32 2) #6, !dbg !3675
  %call70 = tail call i8* @identifier_to_locale(i8* %call69) #6, !dbg !3676
  br label %cond.end72, !dbg !3673

cond.end72:                                       ; preds = %if.then65, %cond.true68
  %cond73 = phi i8* [ %call70, %cond.true68 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), %if.then65 ], !dbg !3673
  call void @llvm.dbg.value(metadata i8* %cond73, metadata !3633, metadata !DIExpression()), !dbg !3677
  tail call void @pp_base_string(%struct.pretty_print_info* %pp, i8* %cond73) #6, !dbg !3678
  br label %cleanup, !dbg !3679

if.else:                                          ; preds = %if.end58
  %call74 = tail call i32 @dump_generic_node(%struct.pretty_print_info* %pp, %union.tree_node* %t.1, i32 0, i32 32768, i8 zeroext 0) #6, !dbg !3680
  br label %cleanup

cleanup:                                          ; preds = %cond.end72, %if.else, %if.end, %entry, %cond.end
  %retval.0 = phi i8 [ 1, %cond.end ], [ 0, %entry ], [ 0, %if.end ], [ 1, %if.else ], [ 1, %cond.end72 ], !dbg !3636
  ret i8 %retval.0, !dbg !3681
}

declare dso_local void @pp_base_string(%struct.pretty_print_info*, i8*) local_unnamed_addr #1

declare dso_local %union.tree_node* @decl_debug_expr_lookup(%union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @dump_generic_node(%struct.pretty_print_info*, %union.tree_node*, i32, i32, i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @target_reinit() local_unnamed_addr #4 !dbg !3682 {
entry:
  tail call fastcc void @backend_init_target() #7, !dbg !3683
  tail call fastcc void @lang_dependent_init_target() #7, !dbg !3684
  ret void, !dbg !3685
}

; Function Attrs: nounwind uwtable
define internal fastcc void @backend_init_target() unnamed_addr #4 !dbg !3686 {
entry:
  tail call fastcc void @init_alignments() #7, !dbg !3687
  tail call void @init_emit_regs() #6, !dbg !3688
  tail call void @init_regs() #6, !dbg !3689
  tail call void @init_fake_stack_mems() #6, !dbg !3690
  tail call void @init_alias_target() #6, !dbg !3691
  tail call void @init_reload() #6, !dbg !3692
  tail call void @init_dummy_function_start() #6, !dbg !3693
  tail call void @init_expmed() #6, !dbg !3694
  store i8 0, i8* @caller_save_initialized_p, align 1, !dbg !3695
  tail call void @expand_dummy_function_end() #6, !dbg !3696
  ret void, !dbg !3697
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lang_dependent_init_target() unnamed_addr #4 !dbg !3698 {
entry:
  tail call fastcc void @init_excess_precision() #7, !dbg !3699
  tail call void @init_optabs() #6, !dbg !3700
  tail call void @init_dummy_function_start() #6, !dbg !3701
  tail call void @init_expr_target() #6, !dbg !3702
  tail call void @init_set_costs() #6, !dbg !3703
  tail call void @ira_init() #6, !dbg !3704
  tail call void @expand_dummy_function_end() #6, !dbg !3705
  ret void, !dbg !3706
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_memory_report(i8 zeroext %final) local_unnamed_addr #4 !dbg !3707 {
entry:
  call void @llvm.dbg.value(metadata i8 %final, metadata !3711, metadata !DIExpression()), !dbg !3712
  tail call void @ggc_print_statistics() #6, !dbg !3713
  tail call void @stringpool_statistics() #6, !dbg !3714
  tail call void @dump_tree_statistics() #6, !dbg !3715
  tail call void @dump_gimple_statistics() #6, !dbg !3716
  tail call void @dump_rtx_statistics() #6, !dbg !3717
  tail call void @dump_varray_statistics() #6, !dbg !3718
  tail call void @dump_alloc_pool_statistics() #6, !dbg !3719
  tail call void @dump_bitmap_statistics() #6, !dbg !3720
  tail call void @dump_vec_loc_statistics() #6, !dbg !3721
  tail call void @dump_ggc_loc_statistics(i8 zeroext %final) #6, !dbg !3722
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3723
  tail call void @dump_alias_stats(%struct._IO_FILE* %0) #6, !dbg !3724
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3725
  tail call void @dump_pta_stats(%struct._IO_FILE* %1) #6, !dbg !3726
  ret void, !dbg !3727
}

declare dso_local void @ggc_print_statistics() local_unnamed_addr #1

declare dso_local void @stringpool_statistics() local_unnamed_addr #1

declare dso_local void @dump_tree_statistics() local_unnamed_addr #1

declare dso_local void @dump_gimple_statistics() local_unnamed_addr #1

declare dso_local void @dump_rtx_statistics() local_unnamed_addr #1

declare dso_local void @dump_varray_statistics() local_unnamed_addr #1

declare dso_local void @dump_alloc_pool_statistics() local_unnamed_addr #1

declare dso_local void @dump_bitmap_statistics() local_unnamed_addr #1

declare dso_local void @dump_vec_loc_statistics() local_unnamed_addr #1

declare dso_local void @dump_ggc_loc_statistics(i8 zeroext) local_unnamed_addr #1

declare dso_local void @dump_alias_stats(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @dump_pta_stats(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @toplev_main(i32 %argc, i8** %argv) local_unnamed_addr #4 !dbg !3728 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !3732, metadata !DIExpression()), !dbg !3734
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.value(metadata i8** %argv, metadata !3733, metadata !DIExpression()), !dbg !3734
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.value(metadata i32* %argc.addr, metadata !3732, metadata !DIExpression(DW_OP_deref)), !dbg !3734
  call void @llvm.dbg.value(metadata i8*** %argv.addr, metadata !3733, metadata !DIExpression(DW_OP_deref)), !dbg !3734
  call void @expandargv(i32* nonnull %argc.addr, i8*** nonnull %argv.addr) #6, !dbg !3735
  %0 = bitcast i8*** %argv.addr to i64*, !dbg !3736
  %1 = load i64, i64* %0, align 8, !dbg !3736
  store i64 %1, i64* bitcast (i8*** @save_argv to i64*), align 8, !dbg !3737
  %.cast = inttoptr i64 %1 to i8**, !dbg !3738
  call void @llvm.dbg.value(metadata i8** %.cast, metadata !3733, metadata !DIExpression()), !dbg !3734
  %2 = load i8*, i8** %.cast, align 8, !dbg !3738
  call fastcc void @general_init(i8* %2) #7, !dbg !3739
  %3 = load i32, i32* %argc.addr, align 4, !dbg !3740
  call void @llvm.dbg.value(metadata i32 %3, metadata !3732, metadata !DIExpression()), !dbg !3734
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !3741
  call void @llvm.dbg.value(metadata i8** %4, metadata !3733, metadata !DIExpression()), !dbg !3734
  call void @decode_options(i32 %3, i8** %4) #6, !dbg !3742
  call fastcc void @init_local_tick() #7, !dbg !3743
  call void @initialize_plugins() #6, !dbg !3744
  %5 = load i32, i32* @version_flag, align 4, !dbg !3745
  %tobool = icmp eq i32 %5, 0, !dbg !3745
  br i1 %tobool, label %if.end, label %if.then, !dbg !3747

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3748
  call void @print_version(%struct._IO_FILE* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !3749
  br label %if.end, !dbg !3749

if.end:                                           ; preds = %entry, %if.then
  %7 = load i32, i32* @help_flag, align 4, !dbg !3750
  %tobool1 = icmp eq i32 %7, 0, !dbg !3750
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3752

if.then2:                                         ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3753
  call void @print_plugins_help(%struct._IO_FILE* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !3754
  br label %if.end3, !dbg !3754

if.end3:                                          ; preds = %if.end, %if.then2
  %9 = load i8, i8* @exit_after_options, align 1, !dbg !3755
  %tobool4 = icmp eq i8 %9, 0, !dbg !3755
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3757

if.then5:                                         ; preds = %if.end3
  call fastcc void @do_compile() #7, !dbg !3758
  br label %if.end6, !dbg !3758

if.end6:                                          ; preds = %if.end3, %if.then5
  %10 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3759
  %arrayidx7 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %10, i64 0, i32 1, i64 6, !dbg !3759
  %11 = load i32, i32* %arrayidx7, align 8, !dbg !3759
  %tobool8 = icmp eq i32 %11, 0, !dbg !3759
  br i1 %tobool8, label %lor.lhs.false, label %if.then12, !dbg !3761

lor.lhs.false:                                    ; preds = %if.end6
  %arrayidx10 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %10, i64 0, i32 1, i64 4, !dbg !3762
  %12 = load i32, i32* %arrayidx10, align 8, !dbg !3762
  %tobool11 = icmp eq i32 %12, 0, !dbg !3762
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3763

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  call void @print_ignored_options() #6, !dbg !3764
  br label %if.end13, !dbg !3764

if.end13:                                         ; preds = %lor.lhs.false, %if.then12
  %call = call i32 @invoke_plugin_callbacks(i32 4, i8* null) #6, !dbg !3765
  call void @finalize_plugins() #6, !dbg !3766
  %13 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3767
  %arrayidx15 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %13, i64 0, i32 1, i64 4, !dbg !3767
  %14 = load i32, i32* %arrayidx15, align 8, !dbg !3767
  %tobool16 = icmp eq i32 %14, 0, !dbg !3767
  br i1 %tobool16, label %lor.lhs.false17, label %return, !dbg !3769

lor.lhs.false17:                                  ; preds = %if.end13
  %arrayidx19 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %13, i64 0, i32 1, i64 5, !dbg !3770
  %15 = load i32, i32* %arrayidx19, align 4, !dbg !3770
  %tobool20 = icmp ne i32 %15, 0, !dbg !3770
  %spec.select = zext i1 %tobool20 to i32, !dbg !3771
  ret i32 %spec.select, !dbg !3771

return:                                           ; preds = %if.end13
  ret i32 1, !dbg !3772
}

declare dso_local void @expandargv(i32*, i8***) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @general_init(i8* %argv0) unnamed_addr #4 !dbg !3773 {
entry:
  call void @llvm.dbg.value(metadata i8* %argv0, metadata !3775, metadata !DIExpression()), !dbg !3777
  %call = tail call i64 @strlen(i8* %argv0) #6, !dbg !3778
  %add.ptr = getelementptr inbounds i8, i8* %argv0, i64 %call, !dbg !3779
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3776, metadata !DIExpression()), !dbg !3777
  br label %while.cond, !dbg !3780

while.cond:                                       ; preds = %while.body, %entry
  %p.0 = phi i8* [ %add.ptr, %entry ], [ %arrayidx, %while.body ], !dbg !3777
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !3776, metadata !DIExpression()), !dbg !3777
  %cmp = icmp eq i8* %p.0, %argv0, !dbg !3781
  br i1 %cmp, label %while.end, label %land.rhs, !dbg !3782

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i8, i8* %p.0, i64 -1, !dbg !3783
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3783
  %cmp1 = icmp eq i8 %0, 47, !dbg !3783
  br i1 %cmp1, label %while.end, label %while.body, !dbg !3780

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata i8* %arrayidx, metadata !3776, metadata !DIExpression()), !dbg !3777
  br label %while.cond, !dbg !3780, !llvm.loop !3784

while.end:                                        ; preds = %land.rhs, %while.cond
  %p.0.lcssa = phi i8* [ %p.0, %land.rhs ], [ %p.0, %while.cond ], !dbg !3777
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3776, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3776, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3776, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3776, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3776, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3776, metadata !DIExpression()), !dbg !3777
  store i8* %p.0.lcssa, i8** @progname, align 8, !dbg !3786
  tail call void @xmalloc_set_program_name(i8* %p.0.lcssa) #6, !dbg !3787
  tail call void @hex_init() #6, !dbg !3788
  tail call void @unlock_std_streams() #6, !dbg !3789
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3790
  tail call void @diagnostic_initialize(%struct.diagnostic_context* %1) #6, !dbg !3791
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3792
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %2, i64 0, i32 0, !dbg !3792
  %3 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3792
  %format_decoder = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %3, i64 0, i32 6, !dbg !3792
  store i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)* @default_tree_printer, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)** %format_decoder, align 8, !dbg !3793
  %call3 = tail call void (i32)* @signal(i32 11, void (i32)* nonnull @crash_signal) #6, !dbg !3794
  %call4 = tail call void (i32)* @signal(i32 4, void (i32)* nonnull @crash_signal) #6, !dbg !3795
  %call5 = tail call void (i32)* @signal(i32 7, void (i32)* nonnull @crash_signal) #6, !dbg !3796
  %call6 = tail call void (i32)* @signal(i32 6, void (i32)* nonnull @crash_signal) #6, !dbg !3797
  %call7 = tail call void (i32)* @signal(i32 8, void (i32)* nonnull @crash_signal) #6, !dbg !3798
  %4 = load void ()*, void ()** getelementptr inbounds (%struct.host_hooks, %struct.host_hooks* @host_hooks, i64 0, i32 0), align 8, !dbg !3799
  tail call void %4() #6, !dbg !3800
  tail call void @init_ggc() #6, !dbg !3801
  tail call void @init_stringpool() #6, !dbg !3802
  %call8 = tail call i8* @ggc_alloc_stat(i64 56) #6, !dbg !3803
  store i8* %call8, i8** bitcast (%struct.line_maps** @line_table to i8**), align 8, !dbg !3804
  %.cast = bitcast i8* %call8 to %struct.line_maps*, !dbg !3805
  tail call void @linemap_init(%struct.line_maps* %.cast) #6, !dbg !3806
  %5 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !3807
  %reallocator = getelementptr inbounds %struct.line_maps, %struct.line_maps* %5, i64 0, i32 10, !dbg !3808
  store i8* (i8*, i64)* @realloc_for_line_map, i8* (i8*, i64)** %reallocator, align 8, !dbg !3809
  tail call void @init_ttree() #6, !dbg !3810
  tail call void @init_reg_sets() #6, !dbg !3811
  tail call void @add_params(%struct.param_info* getelementptr inbounds ([120 x %struct.param_info], [120 x %struct.param_info]* @lang_independent_params, i64 0, i64 0), i64 119) #6, !dbg !3812
  tail call void @init_ggc_heuristics() #6, !dbg !3813
  tail call void @init_optimization_passes() #6, !dbg !3814
  tail call void @statistics_early_init() #6, !dbg !3815
  ret void, !dbg !3816
}

declare dso_local void @decode_options(i32, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @init_local_tick() unnamed_addr #4 !dbg !3817 {
entry:
  %tv = alloca %struct.timeval, align 8
  %0 = load i8*, i8** @flag_random_seed, align 8, !dbg !3829
  %tobool = icmp eq i8* %0, null, !dbg !3829
  br i1 %tobool, label %if.then, label %if.else, !dbg !3830

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.timeval* %tv to i8*, !dbg !3831
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3831
  call void @llvm.dbg.value(metadata %struct.timeval* %tv, metadata !3819, metadata !DIExpression(DW_OP_deref)), !dbg !3832
  %call = call i32 @gettimeofday(%struct.timeval* nonnull %tv, i8* null) #6, !dbg !3833
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !3834
  %2 = load i64, i64* %tv_sec, align 8, !dbg !3834
  %mul = mul nsw i64 %2, 1000, !dbg !3835
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !3836
  %3 = load i64, i64* %tv_usec, align 8, !dbg !3836
  %div = sdiv i64 %3, 1000, !dbg !3837
  %add = add nsw i64 %mul, %div, !dbg !3838
  %conv = trunc i64 %add to i32, !dbg !3839
  store i32 %conv, i32* @local_tick, align 4, !dbg !3840
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3841
  br label %if.end, !dbg !3842

if.else:                                          ; preds = %entry
  store i32 -1, i32* @local_tick, align 4, !dbg !3843
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3844
}

declare dso_local void @initialize_plugins() local_unnamed_addr #1

declare dso_local void @print_plugins_help(%struct._IO_FILE*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @do_compile() unnamed_addr #4 !dbg !3845 {
entry:
  %0 = load i32, i32* @time_report, align 4, !dbg !3846
  %1 = load i32, i32* @quiet_flag, align 4, !dbg !3848
  %tobool1 = icmp eq i32 %1, 0, !dbg !3848
  %2 = load i32, i32* @flag_detailed_statistics, align 4, !dbg !3849
  %3 = or i32 %0, %2, !dbg !3850
  %4 = icmp ne i32 %3, 0, !dbg !3850
  %5 = or i1 %4, %tobool1, !dbg !3850
  br i1 %5, label %if.then, label %if.end, !dbg !3850

if.then:                                          ; preds = %entry
  tail call void @timevar_init() #6, !dbg !3851
  br label %if.end, !dbg !3851

if.end:                                           ; preds = %entry, %if.then
  tail call void @timevar_start(i32 1) #6, !dbg !3852
  tail call fastcc void @process_options() #7, !dbg !3853
  %6 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3854
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %6, i64 0, i32 1, i64 4, !dbg !3854
  %7 = load i32, i32* %arrayidx, align 8, !dbg !3854
  %tobool4 = icmp eq i32 %7, 0, !dbg !3854
  br i1 %tobool4, label %if.then5, label %if.end12, !dbg !3856

if.then5:                                         ; preds = %if.end
  tail call void @init_adjust_machine_modes() #6, !dbg !3857
  %8 = load i8, i8* @no_backend, align 1, !dbg !3859
  %tobool6 = icmp eq i8 %8, 0, !dbg !3859
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3861

if.then7:                                         ; preds = %if.then5
  tail call fastcc void @backend_init() #7, !dbg !3862
  br label %if.end8, !dbg !3862

if.end8:                                          ; preds = %if.then5, %if.then7
  %9 = load i8*, i8** @main_input_filename, align 8, !dbg !3863
  %call = tail call fastcc i32 @lang_dependent_init(i8* %9) #7, !dbg !3865
  %tobool9 = icmp eq i32 %call, 0, !dbg !3865
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3866

if.then10:                                        ; preds = %if.end8
  tail call fastcc void @compile_file() #7, !dbg !3867
  br label %if.end11, !dbg !3867

if.end11:                                         ; preds = %if.end8, %if.then10
  tail call fastcc void @finalize() #7, !dbg !3868
  br label %if.end12, !dbg !3869

if.end12:                                         ; preds = %if.end, %if.end11
  tail call void @timevar_stop(i32 1) #6, !dbg !3870
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3871
  tail call void @timevar_print(%struct._IO_FILE* %10) #6, !dbg !3872
  ret void, !dbg !3873
}

declare dso_local void @print_ignored_options() local_unnamed_addr #1

declare dso_local i32 @invoke_plugin_callbacks(i32, i8*) local_unnamed_addr #1

declare dso_local void @finalize_plugins() local_unnamed_addr #1

declare dso_local i32 @getpid() local_unnamed_addr #1

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #1

declare dso_local void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #1

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) local_unnamed_addr #1

declare dso_local void @fatal_error(i8*, ...) local_unnamed_addr #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) local_unnamed_addr #1

declare dso_local zeroext i8 @get_option_state(i32, %struct.cl_option_state*) local_unnamed_addr #1

declare dso_local i32 @asprintf(i8**, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @init_alignments() unnamed_addr #4 !dbg !3874 {
entry:
  %0 = load i32, i32* @align_loops, align 4, !dbg !3875
  %cmp = icmp slt i32 %0, 1, !dbg !3877
  br i1 %cmp, label %if.then, label %if.end, !dbg !3878

if.then:                                          ; preds = %entry
  store i32 1, i32* @align_loops, align 4, !dbg !3879
  br label %if.end, !dbg !3880

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ 1, %if.then ], [ %0, %entry ], !dbg !3881
  %2 = load i32, i32* @align_loops_max_skip, align 4, !dbg !3883
  %cmp1 = icmp sgt i32 %2, %1, !dbg !3884
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3885

if.then2:                                         ; preds = %if.end
  %sub = add nsw i32 %1, -1, !dbg !3886
  store i32 %sub, i32* @align_loops_max_skip, align 4, !dbg !3887
  br label %if.end3, !dbg !3888

if.end3:                                          ; preds = %if.then2, %if.end
  %mul = shl nsw i32 %1, 1, !dbg !3889
  %sub4 = add nsw i32 %mul, -1, !dbg !3890
  %conv = sext i32 %sub4 to i64, !dbg !3891
  %call = tail call i32 @floor_log2(i64 %conv) #7, !dbg !3892
  store i32 %call, i32* @align_loops_log, align 4, !dbg !3893
  %3 = load i32, i32* @align_jumps, align 4, !dbg !3894
  %cmp5 = icmp slt i32 %3, 1, !dbg !3896
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !3897

if.then7:                                         ; preds = %if.end3
  store i32 1, i32* @align_jumps, align 4, !dbg !3898
  br label %if.end8, !dbg !3899

if.end8:                                          ; preds = %if.then7, %if.end3
  %4 = phi i32 [ 1, %if.then7 ], [ %3, %if.end3 ], !dbg !3900
  %5 = load i32, i32* @align_jumps_max_skip, align 4, !dbg !3902
  %cmp9 = icmp sgt i32 %5, %4, !dbg !3903
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !3904

if.then11:                                        ; preds = %if.end8
  %sub12 = add nsw i32 %4, -1, !dbg !3905
  store i32 %sub12, i32* @align_jumps_max_skip, align 4, !dbg !3906
  br label %if.end13, !dbg !3907

if.end13:                                         ; preds = %if.then11, %if.end8
  %mul14 = shl nsw i32 %4, 1, !dbg !3908
  %sub15 = add nsw i32 %mul14, -1, !dbg !3909
  %conv16 = sext i32 %sub15 to i64, !dbg !3910
  %call17 = tail call i32 @floor_log2(i64 %conv16) #7, !dbg !3911
  store i32 %call17, i32* @align_jumps_log, align 4, !dbg !3912
  %6 = load i32, i32* @align_labels, align 4, !dbg !3913
  %cmp18 = icmp slt i32 %6, 1, !dbg !3915
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !3916

if.then20:                                        ; preds = %if.end13
  store i32 1, i32* @align_labels, align 4, !dbg !3917
  br label %if.end21, !dbg !3918

if.end21:                                         ; preds = %if.then20, %if.end13
  %7 = phi i32 [ 1, %if.then20 ], [ %6, %if.end13 ], !dbg !3919
  %mul22 = shl nsw i32 %7, 1, !dbg !3920
  %sub23 = add nsw i32 %mul22, -1, !dbg !3921
  %conv24 = sext i32 %sub23 to i64, !dbg !3919
  %call25 = tail call i32 @floor_log2(i64 %conv24) #7, !dbg !3922
  store i32 %call25, i32* @align_labels_log, align 4, !dbg !3923
  %8 = load i32, i32* @align_labels_max_skip, align 4, !dbg !3924
  %9 = load i32, i32* @align_labels, align 4, !dbg !3926
  %cmp26 = icmp sgt i32 %8, %9, !dbg !3927
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !3928

if.then28:                                        ; preds = %if.end21
  %sub29 = add nsw i32 %9, -1, !dbg !3929
  store i32 %sub29, i32* @align_labels_max_skip, align 4, !dbg !3930
  br label %if.end30, !dbg !3931

if.end30:                                         ; preds = %if.then28, %if.end21
  %10 = load i32, i32* @align_functions, align 4, !dbg !3932
  %cmp31 = icmp slt i32 %10, 1, !dbg !3934
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !3935

if.then33:                                        ; preds = %if.end30
  store i32 1, i32* @align_functions, align 4, !dbg !3936
  br label %if.end34, !dbg !3937

if.end34:                                         ; preds = %if.then33, %if.end30
  %11 = phi i32 [ 1, %if.then33 ], [ %10, %if.end30 ], !dbg !3938
  %mul35 = shl nsw i32 %11, 1, !dbg !3939
  %sub36 = add nsw i32 %mul35, -1, !dbg !3940
  %conv37 = sext i32 %sub36 to i64, !dbg !3938
  %call38 = tail call i32 @floor_log2(i64 %conv37) #7, !dbg !3941
  store i32 %call38, i32* @align_functions_log, align 4, !dbg !3942
  ret void, !dbg !3943
}

declare dso_local void @init_emit_regs() local_unnamed_addr #1

declare dso_local void @init_regs() local_unnamed_addr #1

declare dso_local void @init_fake_stack_mems() local_unnamed_addr #1

declare dso_local void @init_alias_target() local_unnamed_addr #1

declare dso_local void @init_reload() local_unnamed_addr #1

declare dso_local void @init_dummy_function_start() local_unnamed_addr #1

declare dso_local void @init_expmed() local_unnamed_addr #1

declare dso_local void @expand_dummy_function_end() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @init_excess_precision() unnamed_addr #4 !dbg !3944 {
entry:
  %0 = load i32, i32* @flag_excess_precision_cmdline, align 4, !dbg !3949
  %cmp = icmp eq i32 %0, 0, !dbg !3949
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3949

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i32 2227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !3949
  %.pre = load i32, i32* @flag_excess_precision_cmdline, align 4, !dbg !3950
  br label %cond.end, !dbg !3949

cond.end:                                         ; preds = %entry, %cond.true
  %1 = phi i32 [ %0, %entry ], [ %.pre, %cond.true ], !dbg !3950
  %2 = load i32, i32* @flag_unsafe_math_optimizations, align 4, !dbg !3951
  %tobool = icmp eq i32 %2, 0, !dbg !3951
  %spec.store.select = select i1 %tobool, i32 %1, i32 1, !dbg !3953
  store i32 %spec.store.select, i32* @flag_excess_precision, align 4, !dbg !3954
  %cmp1 = icmp eq i32 %spec.store.select, 2, !dbg !3955
  br i1 %cmp1, label %if.then2, label %if.end12, !dbg !3956

if.then2:                                         ; preds = %cond.end
  %3 = load i32, i32* @ix86_fpmath, align 4, !dbg !3957
  %and = and i32 %3, 3, !dbg !3957
  %cmp3 = icmp eq i32 %and, 3, !dbg !3957
  br i1 %cmp3, label %cond.end9, label %cond.false5, !dbg !3957

cond.false5:                                      ; preds = %if.then2
  %and6 = and i32 %3, 2, !dbg !3957
  %4 = xor i32 %and6, 2, !dbg !3957
  br label %cond.end9, !dbg !3957

cond.end9:                                        ; preds = %if.then2, %cond.false5
  %cond10 = phi i32 [ %4, %cond.false5 ], [ -1, %if.then2 ], !dbg !3957
  call void @llvm.dbg.value(metadata i32 %cond10, metadata !3946, metadata !DIExpression()), !dbg !3958
  switch i32 %cond10, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %if.end12
    i32 2, label %if.end12
  ], !dbg !3959

sw.bb:                                            ; preds = %cond.end9, %cond.end9
  store i32 1, i32* @flag_excess_precision, align 4, !dbg !3960
  br label %if.end12, !dbg !3962

sw.default:                                       ; preds = %cond.end9
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), i32 2251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !3963
  br label %if.end12, !dbg !3964

if.end12:                                         ; preds = %sw.bb, %sw.default, %cond.end9, %cond.end9, %cond.end
  ret void, !dbg !3965
}

declare dso_local void @init_optabs() local_unnamed_addr #1

declare dso_local void @init_expr_target() local_unnamed_addr #1

declare dso_local void @init_set_costs() local_unnamed_addr #1

declare dso_local void @ira_init() local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local void @xmalloc_set_program_name(i8*) local_unnamed_addr #1

declare dso_local void @hex_init() local_unnamed_addr #1

declare dso_local void @unlock_std_streams() local_unnamed_addr #1

declare dso_local void @diagnostic_initialize(%struct.diagnostic_context*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @crash_signal(i32 %signo) #4 !dbg !3966 {
entry:
  call void @llvm.dbg.value(metadata i32 %signo, metadata !3968, metadata !DIExpression()), !dbg !3969
  %call = tail call void (i32)* @signal(i32 %signo, void (i32)* null) #6, !dbg !3970
  %0 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8, !dbg !3971
  %tobool = icmp eq %struct.rtx_def* %0, null, !dbg !3971
  br i1 %tobool, label %if.end, label %if.then, !dbg !3973

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !3974
  tail call void @exit(i32 1) #6, !dbg !3976
  br label %if.end, !dbg !3977

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call i8* @strsignal(i32 %signo) #6, !dbg !3978
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %call1) #6, !dbg !3979
  ret void, !dbg !3980
}

declare dso_local void @init_ggc() local_unnamed_addr #1

declare dso_local void @init_stringpool() local_unnamed_addr #1

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

declare dso_local void @linemap_init(%struct.line_maps*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i8* @realloc_for_line_map(i8* %ptr, i64 %len) #4 !dbg !3981 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !3983, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %len, metadata !3984, metadata !DIExpression()), !dbg !3985
  %call = tail call i8* @ggc_realloc_stat(i8* %ptr, i64 %len) #6, !dbg !3986
  ret i8* %call, !dbg !3987
}

declare dso_local void @init_ttree() local_unnamed_addr #1

declare dso_local void @init_reg_sets() local_unnamed_addr #1

declare dso_local void @add_params(%struct.param_info*, i64) local_unnamed_addr #1

declare dso_local void @init_ggc_heuristics() local_unnamed_addr #1

declare dso_local void @init_optimization_passes() local_unnamed_addr #1

declare dso_local void @statistics_early_init() local_unnamed_addr #1

declare dso_local void @output_operand_lossage(i8*, ...) local_unnamed_addr #1

declare dso_local void @exit(i32) local_unnamed_addr #1

declare dso_local void @internal_error(i8*, ...) local_unnamed_addr #1

declare dso_local i8* @strsignal(i32) local_unnamed_addr #1

declare dso_local i8* @ggc_realloc_stat(i8*, i64) local_unnamed_addr #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) local_unnamed_addr #1

declare dso_local void @timevar_init() local_unnamed_addr #1

declare dso_local void @timevar_start(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @process_options() unnamed_addr #4 !dbg !3988 {
entry:
  store %struct.gcc_debug_hooks* @do_nothing_debug_hooks, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !3997
  %0 = load i32, i32* @warn_unused_function, align 4, !dbg !3998
  %cmp = icmp eq i32 %0, -1, !dbg !4000
  br i1 %cmp, label %if.then, label %if.end, !dbg !4001

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @warn_unused, align 4, !dbg !4002
  store i32 %1, i32* @warn_unused_function, align 4, !dbg !4003
  br label %if.end, !dbg !4004

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @warn_unused_label, align 4, !dbg !4005
  %cmp1 = icmp eq i32 %2, -1, !dbg !4007
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4008

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* @warn_unused, align 4, !dbg !4009
  store i32 %3, i32* @warn_unused_label, align 4, !dbg !4010
  br label %if.end3, !dbg !4011

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i32, i32* @warn_unused_parameter, align 4, !dbg !4012
  %cmp4 = icmp eq i32 %4, -1, !dbg !4014
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !4015

if.then5:                                         ; preds = %if.end3
  %5 = load i32, i32* @warn_unused, align 4, !dbg !4016
  %tobool = icmp ne i32 %5, 0, !dbg !4016
  %6 = load i32, i32* @extra_warnings, align 4, !dbg !4017
  %tobool6 = icmp ne i32 %6, 0, !dbg !4017
  %7 = and i1 %tobool6, %tobool, !dbg !4017
  %land.ext = zext i1 %7 to i32, !dbg !4017
  store i32 %land.ext, i32* @warn_unused_parameter, align 4, !dbg !4018
  br label %if.end7, !dbg !4019

if.end7:                                          ; preds = %if.then5, %if.end3
  %8 = load i32, i32* @warn_unused_variable, align 4, !dbg !4020
  %cmp8 = icmp eq i32 %8, -1, !dbg !4022
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4023

if.then9:                                         ; preds = %if.end7
  %9 = load i32, i32* @warn_unused, align 4, !dbg !4024
  store i32 %9, i32* @warn_unused_variable, align 4, !dbg !4025
  br label %if.end10, !dbg !4026

if.end10:                                         ; preds = %if.then9, %if.end7
  %10 = load i32, i32* @warn_unused_value, align 4, !dbg !4027
  %cmp11 = icmp eq i32 %10, -1, !dbg !4029
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !4030

if.then12:                                        ; preds = %if.end10
  %11 = load i32, i32* @warn_unused, align 4, !dbg !4031
  store i32 %11, i32* @warn_unused_value, align 4, !dbg !4032
  br label %if.end13, !dbg !4033

if.end13:                                         ; preds = %if.then12, %if.end10
  %12 = load i32, i32* @warn_uninitialized, align 4, !dbg !4034
  %cmp14 = icmp eq i32 %12, -1, !dbg !4036
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !4037

if.then15:                                        ; preds = %if.end13
  %13 = load i32, i32* @extra_warnings, align 4, !dbg !4038
  store i32 %13, i32* @warn_uninitialized, align 4, !dbg !4039
  br label %if.end16, !dbg !4040

if.end16:                                         ; preds = %if.then15, %if.end13
  %14 = load i8 (i8**)*, i8 (i8**)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 8), align 8, !dbg !4041
  %call = tail call zeroext i8 %14(i8** nonnull @main_input_filename) #6, !dbg !4042
  store i8 %call, i8* @no_backend, align 1, !dbg !4043
  tail call void @override_options(i8 zeroext 1) #6, !dbg !4044
  %15 = load i32, i32* @flag_compare_debug, align 4, !dbg !4045
  %tobool17 = icmp eq i32 %15, 0, !dbg !4045
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4047

if.then18:                                        ; preds = %if.end16
  %16 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !4048
  tail call fastcc void @diagnostic_inhibit_notes(%struct.diagnostic_context* %16) #7, !dbg !4049
  br label %if.end19, !dbg !4049

if.end19:                                         ; preds = %if.end16, %if.then18
  %17 = load i32, i32* @flag_section_anchors, align 4, !dbg !4050
  %tobool20 = icmp eq i32 %17, 0, !dbg !4050
  br i1 %tobool20, label %if.end25, label %land.lhs.true, !dbg !4052

land.lhs.true:                                    ; preds = %if.end19
  %call21 = tail call fastcc zeroext i8 @target_supports_section_anchors_p() #7, !dbg !4053
  %tobool22 = icmp eq i8 %call21, 0, !dbg !4053
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !4054

if.then23:                                        ; preds = %land.lhs.true
  %call24 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 592, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.279, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.280, i64 0, i64 0)) #6, !dbg !4055
  store i32 0, i32* @flag_section_anchors, align 4, !dbg !4057
  br label %if.end25, !dbg !4058

if.end25:                                         ; preds = %land.lhs.true, %if.end19, %if.then23
  %18 = load i32, i32* @flag_short_enums, align 4, !dbg !4059
  %cmp26 = icmp eq i32 %18, 2, !dbg !4061
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !4062

if.then27:                                        ; preds = %if.end25
  %19 = load i8 ()*, i8 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 77), align 8, !dbg !4063
  %call28 = tail call zeroext i8 %19() #6, !dbg !4064
  %conv = zext i8 %call28 to i32, !dbg !4064
  store i32 %conv, i32* @flag_short_enums, align 4, !dbg !4065
  br label %if.end29, !dbg !4066

if.end29:                                         ; preds = %if.then27, %if.end25
  %20 = load i8*, i8** @aux_base_name, align 8, !dbg !4067
  %tobool30 = icmp eq i8* %20, null, !dbg !4067
  br i1 %tobool30, label %if.else, label %if.end40, !dbg !4068

if.else:                                          ; preds = %if.end29
  %21 = load i8*, i8** @main_input_filename, align 8, !dbg !4069
  %tobool32 = icmp eq i8* %21, null, !dbg !4069
  br i1 %tobool32, label %if.else38, label %if.then33, !dbg !4070

if.then33:                                        ; preds = %if.else
  %call34 = tail call i8* @lbasename(i8* nonnull %21) #6, !dbg !4071
  %call35 = tail call i8* @xstrdup(i8* %call34) #6, !dbg !4072
  call void @llvm.dbg.value(metadata i8* %call35, metadata !3990, metadata !DIExpression()), !dbg !4073
  %call36 = tail call i64 @strlen(i8* %call35) #6, !dbg !4074
  %conv37 = trunc i64 %call36 to i32, !dbg !4074
  tail call void @strip_off_ending(i8* %call35, i32 %conv37) #7, !dbg !4075
  store i8* %call35, i8** @aux_base_name, align 8, !dbg !4076
  br label %if.end40, !dbg !4077

if.else38:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.281, i64 0, i64 0), i8** @aux_base_name, align 8, !dbg !4078
  br label %if.end40

if.end40:                                         ; preds = %if.end29, %if.then33, %if.else38
  %22 = load i32, i32* @flag_graphite, align 4, !dbg !4079
  %23 = load i32, i32* @flag_loop_block, align 4, !dbg !4081
  %24 = or i32 %22, %23, !dbg !4082
  %25 = load i32, i32* @flag_loop_interchange, align 4, !dbg !4083
  %26 = or i32 %24, %25, !dbg !4082
  %27 = load i32, i32* @flag_loop_strip_mine, align 4, !dbg !4084
  %28 = or i32 %26, %27, !dbg !4082
  %29 = load i32, i32* @flag_graphite_identity, align 4, !dbg !4085
  %30 = or i32 %28, %29, !dbg !4082
  %31 = load i32, i32* @flag_loop_parallelize_all, align 4, !dbg !4086
  %32 = or i32 %30, %31, !dbg !4082
  %33 = icmp eq i32 %32, 0, !dbg !4082
  br i1 %33, label %if.end52, label %if.then51, !dbg !4082

if.then51:                                        ; preds = %if.end40
  tail call void (i8*, ...) @sorry(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.282, i64 0, i64 0)) #6, !dbg !4087
  br label %if.end52, !dbg !4087

if.end52:                                         ; preds = %if.end40, %if.then51
  %34 = load i32, i32* @flag_unroll_all_loops, align 4, !dbg !4088
  %tobool53 = icmp eq i32 %34, 0, !dbg !4088
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !4090

if.then54:                                        ; preds = %if.end52
  store i32 1, i32* @flag_unroll_loops, align 4, !dbg !4091
  br label %if.end55, !dbg !4092

if.end55:                                         ; preds = %if.end52, %if.then54
  %35 = load i32, i32* @flag_rerun_cse_after_loop, align 4, !dbg !4093
  %cmp56 = icmp eq i32 %35, 2, !dbg !4095
  br i1 %cmp56, label %if.then58, label %if.end61, !dbg !4096

if.then58:                                        ; preds = %if.end55
  %36 = load i32, i32* @flag_unroll_loops, align 4, !dbg !4097
  %37 = load i32, i32* @flag_peel_loops, align 4, !dbg !4098
  %38 = or i32 %37, %36, !dbg !4098
  %39 = icmp ne i32 %38, 0, !dbg !4098
  %lor.ext = zext i1 %39 to i32, !dbg !4098
  store i32 %lor.ext, i32* @flag_rerun_cse_after_loop, align 4, !dbg !4099
  br label %if.end61, !dbg !4100

if.end61:                                         ; preds = %if.then58, %if.end55
  %40 = load i32, i32* @flag_web, align 4, !dbg !4101
  %cmp62 = icmp eq i32 %40, 2, !dbg !4103
  br i1 %cmp62, label %if.then64, label %if.end70, !dbg !4104

if.then64:                                        ; preds = %if.end61
  %41 = load i32, i32* @flag_unroll_loops, align 4, !dbg !4105
  %42 = load i32, i32* @flag_peel_loops, align 4, !dbg !4106
  %43 = or i32 %42, %41, !dbg !4106
  %44 = icmp ne i32 %43, 0, !dbg !4106
  %lor.ext69 = zext i1 %44 to i32, !dbg !4106
  store i32 %lor.ext69, i32* @flag_web, align 4, !dbg !4107
  br label %if.end70, !dbg !4108

if.end70:                                         ; preds = %if.then64, %if.end61
  %45 = load i32, i32* @flag_rename_registers, align 4, !dbg !4109
  %cmp71 = icmp eq i32 %45, 2, !dbg !4111
  br i1 %cmp71, label %if.then73, label %if.end79, !dbg !4112

if.then73:                                        ; preds = %if.end70
  %46 = load i32, i32* @flag_unroll_loops, align 4, !dbg !4113
  %47 = load i32, i32* @flag_peel_loops, align 4, !dbg !4114
  %48 = or i32 %47, %46, !dbg !4114
  %49 = icmp ne i32 %48, 0, !dbg !4114
  %lor.ext78 = zext i1 %49 to i32, !dbg !4114
  store i32 %lor.ext78, i32* @flag_rename_registers, align 4, !dbg !4115
  br label %if.end79, !dbg !4116

if.end79:                                         ; preds = %if.then73, %if.end70
  %50 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !4117
  %tobool80 = icmp eq i32 %50, 0, !dbg !4117
  br i1 %tobool80, label %if.end79.if.end82_crit_edge, label %if.then81, !dbg !4119

if.end79.if.end82_crit_edge:                      ; preds = %if.end79
  %.pre = load i32, i32* @flag_asynchronous_unwind_tables, align 4, !dbg !4120
  br label %if.end82, !dbg !4119

if.then81:                                        ; preds = %if.end79
  store i32 1, i32* @flag_asynchronous_unwind_tables, align 4, !dbg !4122
  br label %if.end82, !dbg !4123

if.end82:                                         ; preds = %if.end79.if.end82_crit_edge, %if.then81
  %51 = phi i32 [ %.pre, %if.end79.if.end82_crit_edge ], [ 1, %if.then81 ], !dbg !4120
  %tobool83 = icmp eq i32 %51, 0, !dbg !4120
  br i1 %tobool83, label %if.end85, label %if.then84, !dbg !4124

if.then84:                                        ; preds = %if.end82
  store i32 1, i32* @flag_unwind_tables, align 4, !dbg !4125
  br label %if.end85, !dbg !4126

if.end85:                                         ; preds = %if.end82, %if.then84
  %52 = load i32, i32* @flag_value_profile_transformations, align 4, !dbg !4127
  %tobool86 = icmp eq i32 %52, 0, !dbg !4127
  br i1 %tobool86, label %if.end88, label %if.then87, !dbg !4129

if.then87:                                        ; preds = %if.end85
  store i32 1, i32* @flag_profile_values, align 4, !dbg !4130
  br label %if.end88, !dbg !4131

if.end88:                                         ; preds = %if.end85, %if.then87
  %53 = load i32, i32* @flag_delayed_branch, align 4, !dbg !4132
  %tobool89 = icmp eq i32 %53, 0, !dbg !4132
  br i1 %tobool89, label %if.end92, label %if.then90, !dbg !4134

if.then90:                                        ; preds = %if.end88
  %call91 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.283, i64 0, i64 0)) #6, !dbg !4135
  br label %if.end92, !dbg !4135

if.end92:                                         ; preds = %if.end88, %if.then90
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0), i8** @user_label_prefix, align 8, !dbg !4136
  %54 = load i32, i32* @flag_leading_underscore, align 4, !dbg !4137
  %cmp93 = icmp eq i32 %54, -1, !dbg !4139
  br i1 %cmp93, label %if.end116, label %if.then95, !dbg !4140

if.then95:                                        ; preds = %if.end92
  br i1 true, label %if.then109, label %lor.lhs.false99, !dbg !4141

lor.lhs.false99:                                  ; preds = %if.then95
  br i1 undef, label %land.lhs.true104, label %if.else111, !dbg !4144

land.lhs.true104:                                 ; preds = %lor.lhs.false99
  br i1 undef, label %land.lhs.true104.if.then109_crit_edge, label %if.else111, !dbg !4145

land.lhs.true104.if.then109_crit_edge:            ; preds = %land.lhs.true104
  br label %if.then109, !dbg !4145

if.then109:                                       ; preds = %land.lhs.true104.if.then109_crit_edge, %if.then95
  %tobool110 = icmp eq i32 %54, 0, !dbg !4146
  %cond = select i1 %tobool110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.284, i64 0, i64 0), !dbg !4146
  store i8* %cond, i8** @user_label_prefix, align 8, !dbg !4148
  br label %if.end116, !dbg !4149

if.else111:                                       ; preds = %land.lhs.true104, %lor.lhs.false99
  br label %if.end116

if.end116:                                        ; preds = %if.end92, %if.then109, %if.else111
  %55 = load i32, i32* @version_flag, align 4, !dbg !4150
  %tobool117 = icmp eq i32 %55, 0, !dbg !4150
  br i1 %tobool117, label %if.end122, label %if.then118, !dbg !4152

if.then118:                                       ; preds = %if.end116
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4153
  tail call void @print_version(%struct._IO_FILE* %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !4155
  %57 = load i32, i32* @quiet_flag, align 4, !dbg !4156
  %tobool119 = icmp eq i32 %57, 0, !dbg !4156
  br i1 %tobool119, label %if.then120, label %if.end122, !dbg !4158

if.then120:                                       ; preds = %if.then118
  tail call fastcc void @print_switch_values(i32 (i32, i8*)* nonnull @print_to_stderr) #7, !dbg !4159
  br label %if.end122, !dbg !4159

if.end122:                                        ; preds = %if.then118, %if.end116, %if.then120
  %58 = load i32, i32* @flag_syntax_only, align 4, !dbg !4160
  %tobool123 = icmp eq i32 %58, 0, !dbg !4160
  br i1 %tobool123, label %if.end125, label %if.then124, !dbg !4162

if.then124:                                       ; preds = %if.end122
  store i32 0, i32* @write_symbols, align 4, !dbg !4163
  store i32 0, i32* @profile_flag, align 4, !dbg !4165
  br label %if.end125, !dbg !4166

if.end125:                                        ; preds = %if.end122, %if.then124
  %59 = load i32, i32* @flag_gtoggle, align 4, !dbg !4167
  %tobool126 = icmp eq i32 %59, 0, !dbg !4167
  br i1 %tobool126, label %if.end137, label %if.then127, !dbg !4169

if.then127:                                       ; preds = %if.end125
  %60 = load i32, i32* @debug_info_level, align 4, !dbg !4170
  %cmp128 = icmp eq i32 %60, 0, !dbg !4173
  br i1 %cmp128, label %if.then130, label %if.else135, !dbg !4174

if.then130:                                       ; preds = %if.then127
  store i32 2, i32* @debug_info_level, align 4, !dbg !4175
  %61 = load i32, i32* @write_symbols, align 4, !dbg !4177
  %cmp131 = icmp eq i32 %61, 0, !dbg !4179
  br i1 %cmp131, label %if.then133, label %if.end137, !dbg !4180

if.then133:                                       ; preds = %if.then130
  store i32 3, i32* @write_symbols, align 4, !dbg !4181
  br label %if.end137, !dbg !4182

if.else135:                                       ; preds = %if.then127
  store i32 0, i32* @debug_info_level, align 4, !dbg !4183
  br label %if.end137

if.end137:                                        ; preds = %if.end125, %if.else135, %if.then133, %if.then130
  %62 = load i8*, i8** @flag_dump_final_insns, align 8, !dbg !4184
  %tobool138 = icmp eq i8* %62, null, !dbg !4184
  %tobool140 = icmp ne i32 %58, 0, !dbg !4185
  %or.cond5 = or i1 %tobool138, %tobool140, !dbg !4186
  %63 = load i8, i8* @no_backend, align 1, !dbg !4187
  %tobool142 = icmp ne i8 %63, 0, !dbg !4187
  %or.cond6 = or i1 %or.cond5, %tobool142, !dbg !4186
  br i1 %or.cond6, label %if.end157, label %if.then143, !dbg !4186

if.then143:                                       ; preds = %if.end137
  %call144 = tail call %struct._IO_FILE* @fopen_unlocked(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.287, i64 0, i64 0)) #6, !dbg !4188
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call144, metadata !3994, metadata !DIExpression()), !dbg !4189
  %tobool145 = icmp eq %struct._IO_FILE* %call144, null, !dbg !4190
  br i1 %tobool145, label %if.then146, label %if.else149, !dbg !4192

if.then146:                                       ; preds = %if.then143
  %64 = load i8*, i8** @flag_dump_final_insns, align 8, !dbg !4193
  %call147 = tail call i32* @__errno_location() #6, !dbg !4195
  %65 = load i32, i32* %call147, align 4, !dbg !4195
  %call148 = tail call i8* @strerror(i32 %65) #6, !dbg !4196
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.288, i64 0, i64 0), i8* %64, i8* %call148) #6, !dbg !4197
  store i8* null, i8** @flag_dump_final_insns, align 8, !dbg !4198
  br label %if.end157, !dbg !4199

if.else149:                                       ; preds = %if.then143
  %call150 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call144) #6, !dbg !4200
  %tobool151 = icmp eq i32 %call150, 0, !dbg !4200
  br i1 %tobool151, label %if.end157, label %if.then152, !dbg !4202

if.then152:                                       ; preds = %if.else149
  %66 = load i8*, i8** @flag_dump_final_insns, align 8, !dbg !4203
  %call153 = tail call i32* @__errno_location() #6, !dbg !4205
  %67 = load i32, i32* %call153, align 4, !dbg !4205
  %call154 = tail call i8* @strerror(i32 %67) #6, !dbg !4206
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.289, i64 0, i64 0), i8* %66, i8* %call154) #6, !dbg !4207
  store i8* null, i8** @flag_dump_final_insns, align 8, !dbg !4208
  br label %if.end157, !dbg !4209

if.end157:                                        ; preds = %if.else149, %if.then146, %if.then152, %if.end137
  %68 = load i32, i32* @dwarf_strict, align 4, !dbg !4210
  %cmp158 = icmp slt i32 %68, 0, !dbg !4212
  br i1 %cmp158, label %if.then160, label %if.end161, !dbg !4213

if.then160:                                       ; preds = %if.end157
  store i32 0, i32* @dwarf_strict, align 4, !dbg !4214
  br label %if.end161, !dbg !4215

if.end161:                                        ; preds = %if.then160, %if.end157
  %69 = load i32, i32* @debug_info_level, align 4, !dbg !4216
  %cmp162 = icmp eq i32 %69, 0, !dbg !4218
  br i1 %cmp162, label %if.then164, label %if.end161.if.end165_crit_edge, !dbg !4219

if.end161.if.end165_crit_edge:                    ; preds = %if.end161
  %.pre15 = load i32, i32* @write_symbols, align 4, !dbg !4220
  br label %if.end165, !dbg !4219

if.then164:                                       ; preds = %if.end161
  store i32 0, i32* @write_symbols, align 4, !dbg !4222
  br label %if.end165, !dbg !4223

if.end165:                                        ; preds = %if.end161.if.end165_crit_edge, %if.then164
  %70 = phi i32 [ %.pre15, %if.end161.if.end165_crit_edge ], [ 0, %if.then164 ], !dbg !4220
  %cmp166 = icmp eq i32 %70, 0, !dbg !4224
  br i1 %cmp166, label %if.end181, label %if.else169, !dbg !4225

if.else169:                                       ; preds = %if.end165
  %cmp170 = icmp eq i32 %70, 1, !dbg !4226
  br i1 %cmp170, label %if.then172, label %if.else173, !dbg !4228

if.then172:                                       ; preds = %if.else169
  store %struct.gcc_debug_hooks* @dbx_debug_hooks, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !4229
  br label %if.end181, !dbg !4230

if.else173:                                       ; preds = %if.else169
  %cmp174 = icmp eq i32 %70, 3, !dbg !4231
  br i1 %cmp174, label %if.then176, label %if.else177, !dbg !4233

if.then176:                                       ; preds = %if.else173
  store %struct.gcc_debug_hooks* @dwarf2_debug_hooks, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !4234
  br label %if.end181, !dbg !4235

if.else177:                                       ; preds = %if.else173
  %idxprom = zext i32 %70 to i64, !dbg !4236
  %arrayidx178 = getelementptr inbounds [6 x i8*], [6 x i8*]* @debug_type_names, i64 0, i64 %idxprom, !dbg !4236
  %71 = load i8*, i8** %arrayidx178, align 8, !dbg !4236
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.290, i64 0, i64 0), i8* %71) #6, !dbg !4237
  %.pre16 = load i32, i32* @debug_info_level, align 4, !dbg !4238
  br label %if.end181

if.end181:                                        ; preds = %if.then172, %if.else177, %if.then176, %if.end165
  %72 = phi i32 [ %69, %if.then172 ], [ %.pre16, %if.else177 ], [ %69, %if.then176 ], [ %69, %if.end165 ], !dbg !4238
  %cmp182 = icmp ult i32 %72, 2, !dbg !4240
  br i1 %cmp182, label %if.then187, label %lor.lhs.false184, !dbg !4241

lor.lhs.false184:                                 ; preds = %if.end181
  %73 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !4242
  %var_location = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %73, i64 0, i32 24, !dbg !4243
  %74 = load void (%struct.rtx_def*)*, void (%struct.rtx_def*)** %var_location, align 8, !dbg !4243
  %75 = load void (%struct.rtx_def*)*, void (%struct.rtx_def*)** getelementptr inbounds (%struct.gcc_debug_hooks, %struct.gcc_debug_hooks* @do_nothing_debug_hooks, i64 0, i32 24), align 8, !dbg !4244
  %cmp185 = icmp eq void (%struct.rtx_def*)* %74, %75, !dbg !4245
  br i1 %cmp185, label %if.then187, label %lor.lhs.false184.if.end202_crit_edge, !dbg !4246

lor.lhs.false184.if.end202_crit_edge:             ; preds = %lor.lhs.false184
  %.pre17 = load i32, i32* @flag_var_tracking_uninit, align 4, !dbg !4247
  br label %if.end202, !dbg !4246

if.then187:                                       ; preds = %lor.lhs.false184, %if.end181
  %76 = load i32, i32* @flag_var_tracking, align 4, !dbg !4249
  %cmp188 = icmp eq i32 %76, 1, !dbg !4252
  %77 = load i32, i32* @flag_var_tracking_uninit, align 4, !dbg !4253
  %cmp191 = icmp eq i32 %77, 1, !dbg !4254
  %or.cond7 = or i1 %cmp188, %cmp191, !dbg !4255
  br i1 %or.cond7, label %if.then193, label %if.end201, !dbg !4255

if.then193:                                       ; preds = %if.then187
  br i1 %cmp182, label %if.then196, label %if.else198, !dbg !4256

if.then196:                                       ; preds = %if.then193
  %call197 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.291, i64 0, i64 0)) #6, !dbg !4258
  br label %if.end201, !dbg !4258

if.else198:                                       ; preds = %if.then193
  %call199 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.292, i64 0, i64 0)) #6, !dbg !4260
  br label %if.end201

if.end201:                                        ; preds = %if.then196, %if.else198, %if.then187
  store i32 0, i32* @flag_var_tracking, align 4, !dbg !4261
  store i32 0, i32* @flag_var_tracking_uninit, align 4, !dbg !4262
  br label %if.end202, !dbg !4263

if.end202:                                        ; preds = %lor.lhs.false184.if.end202_crit_edge, %if.end201
  %78 = phi i32 [ %.pre17, %lor.lhs.false184.if.end202_crit_edge ], [ 0, %if.end201 ], !dbg !4247
  %tobool203 = icmp eq i32 %78, 0, !dbg !4247
  br i1 %tobool203, label %if.end202.if.end205_crit_edge, label %if.then204, !dbg !4264

if.end202.if.end205_crit_edge:                    ; preds = %if.end202
  %.pre18 = load i32, i32* @flag_var_tracking, align 4, !dbg !4265
  br label %if.end205, !dbg !4264

if.then204:                                       ; preds = %if.end202
  store i32 1, i32* @flag_var_tracking, align 4, !dbg !4267
  br label %if.end205, !dbg !4268

if.end205:                                        ; preds = %if.end202.if.end205_crit_edge, %if.then204
  %79 = phi i32 [ %.pre18, %if.end202.if.end205_crit_edge ], [ 1, %if.then204 ], !dbg !4265
  %cmp206 = icmp eq i32 %79, 2, !dbg !4269
  br i1 %cmp206, label %if.then208, label %if.end211, !dbg !4270

if.then208:                                       ; preds = %if.end205
  %80 = load i32, i32* @optimize, align 4, !dbg !4271
  %cmp209 = icmp sgt i32 %80, 0, !dbg !4272
  %conv210 = zext i1 %cmp209 to i32, !dbg !4272
  store i32 %conv210, i32* @flag_var_tracking, align 4, !dbg !4273
  br label %if.end211, !dbg !4274

if.end211:                                        ; preds = %if.then208, %if.end205
  %81 = phi i32 [ %conv210, %if.then208 ], [ %79, %if.end205 ]
  %82 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !4275
  %cmp212 = icmp eq i32 %82, 2, !dbg !4277
  br i1 %cmp212, label %if.then214, label %if.end224, !dbg !4278

if.then214:                                       ; preds = %if.end211
  %tobool215 = icmp eq i32 %81, 0, !dbg !4279
  br i1 %tobool215, label %land.end222, label %land.rhs216, !dbg !4280

land.rhs216:                                      ; preds = %if.then214
  %83 = load i32, i32* @flag_selective_scheduling, align 4, !dbg !4281
  %84 = load i32, i32* @flag_selective_scheduling2, align 4, !dbg !4282
  %85 = or i32 %84, %83, !dbg !4282
  %86 = icmp eq i32 %85, 0, !dbg !4282
  br label %land.end222

land.end222:                                      ; preds = %if.then214, %land.rhs216
  %87 = phi i1 [ false, %if.then214 ], [ %86, %land.rhs216 ], !dbg !4283
  %land.ext223 = zext i1 %87 to i32, !dbg !4280
  store i32 %land.ext223, i32* @flag_var_tracking_assignments, align 4, !dbg !4284
  br label %if.end224, !dbg !4285

if.end224:                                        ; preds = %land.end222, %if.end211
  %88 = phi i32 [ %land.ext223, %land.end222 ], [ %82, %if.end211 ]
  %89 = load i32, i32* @flag_var_tracking_assignments_toggle, align 4, !dbg !4286
  %tobool225 = icmp eq i32 %89, 0, !dbg !4286
  br i1 %tobool225, label %if.end229, label %if.then226, !dbg !4288

if.then226:                                       ; preds = %if.end224
  %tobool227 = icmp eq i32 %88, 0, !dbg !4289
  %lnot.ext = zext i1 %tobool227 to i32, !dbg !4289
  store i32 %lnot.ext, i32* @flag_var_tracking_assignments, align 4, !dbg !4290
  br label %if.end229, !dbg !4291

if.end229:                                        ; preds = %if.end224, %if.then226
  %90 = phi i32 [ %88, %if.end224 ], [ %lnot.ext, %if.then226 ], !dbg !4292
  %tobool230 = icmp eq i32 %90, 0, !dbg !4292
  %tobool232 = icmp ne i32 %81, 0, !dbg !4294
  %or.cond8 = or i1 %tobool230, %tobool232, !dbg !4295
  br i1 %or.cond8, label %if.end234, label %if.then233, !dbg !4295

if.then233:                                       ; preds = %if.end229
  store i32 -1, i32* @flag_var_tracking_assignments, align 4, !dbg !4296
  store i32 -1, i32* @flag_var_tracking, align 4, !dbg !4297
  br label %if.end234, !dbg !4298

if.end234:                                        ; preds = %if.end229, %if.then233
  %91 = phi i32 [ %90, %if.end229 ], [ -1, %if.then233 ], !dbg !4299
  %tobool235 = icmp eq i32 %91, 0, !dbg !4299
  br i1 %tobool235, label %if.end242, label %land.lhs.true236, !dbg !4301

land.lhs.true236:                                 ; preds = %if.end234
  %92 = load i32, i32* @flag_selective_scheduling, align 4, !dbg !4302
  %93 = load i32, i32* @flag_selective_scheduling2, align 4, !dbg !4303
  %94 = or i32 %92, %93, !dbg !4304
  %95 = icmp eq i32 %94, 0, !dbg !4304
  br i1 %95, label %if.end242, label %if.then240, !dbg !4304

if.then240:                                       ; preds = %land.lhs.true236
  %call241 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.293, i64 0, i64 0)) #6, !dbg !4305
  br label %if.end242, !dbg !4305

if.end242:                                        ; preds = %land.lhs.true236, %if.end234, %if.then240
  %96 = load i32, i32* @flag_tree_cselim, align 4, !dbg !4306
  %cmp243 = icmp eq i32 %96, 2, !dbg !4308
  br i1 %cmp243, label %if.then245, label %if.end246, !dbg !4309

if.then245:                                       ; preds = %if.end242
  store i32 1, i32* @flag_tree_cselim, align 4, !dbg !4310
  br label %if.end246, !dbg !4311

if.end246:                                        ; preds = %if.then245, %if.end242
  %97 = load i32, i32* @flag_gen_aux_info, align 4, !dbg !4312
  %tobool247 = icmp eq i32 %97, 0, !dbg !4312
  br i1 %tobool247, label %if.end254, label %if.then248, !dbg !4314

if.then248:                                       ; preds = %if.end246
  %98 = load i8*, i8** @aux_info_file_name, align 8, !dbg !4315
  %call249 = tail call %struct._IO_FILE* @fopen_unlocked(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.287, i64 0, i64 0)) #6, !dbg !4315
  store %struct._IO_FILE* %call249, %struct._IO_FILE** @aux_info_file, align 8, !dbg !4317
  %cmp250 = icmp eq %struct._IO_FILE* %call249, null, !dbg !4318
  br i1 %cmp250, label %if.then252, label %if.end254, !dbg !4320

if.then252:                                       ; preds = %if.then248
  %99 = load i8*, i8** @aux_info_file_name, align 8, !dbg !4321
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.294, i64 0, i64 0), i8* %99) #6, !dbg !4322
  br label %if.end254, !dbg !4322

if.end254:                                        ; preds = %if.end246, %if.then248, %if.then252
  %100 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 110), align 1, !dbg !4323
  %tobool255 = icmp eq i8 %100, 0, !dbg !4325
  br i1 %tobool255, label %if.then256, label %if.end265, !dbg !4326

if.then256:                                       ; preds = %if.end254
  %101 = load i32, i32* @flag_function_sections, align 4, !dbg !4327
  %tobool257 = icmp eq i32 %101, 0, !dbg !4327
  br i1 %tobool257, label %if.end260, label %if.then258, !dbg !4330

if.then258:                                       ; preds = %if.then256
  %call259 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.295, i64 0, i64 0)) #6, !dbg !4331
  store i32 0, i32* @flag_function_sections, align 4, !dbg !4333
  br label %if.end260, !dbg !4334

if.end260:                                        ; preds = %if.then256, %if.then258
  %102 = load i32, i32* @flag_data_sections, align 4, !dbg !4335
  %tobool261 = icmp eq i32 %102, 0, !dbg !4335
  br i1 %tobool261, label %if.end265, label %if.then262, !dbg !4337

if.then262:                                       ; preds = %if.end260
  %call263 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.296, i64 0, i64 0)) #6, !dbg !4338
  store i32 0, i32* @flag_data_sections, align 4, !dbg !4340
  br label %if.end265, !dbg !4341

if.end265:                                        ; preds = %if.end260, %if.end254, %if.then262
  %103 = load i32, i32* @flag_function_sections, align 4, !dbg !4342
  %tobool266 = icmp ne i32 %103, 0, !dbg !4342
  %104 = load i32, i32* @profile_flag, align 4, !dbg !4344
  %tobool268 = icmp ne i32 %104, 0, !dbg !4344
  %or.cond10 = and i1 %tobool266, %tobool268, !dbg !4345
  br i1 %or.cond10, label %if.then269, label %if.end271, !dbg !4345

if.then269:                                       ; preds = %if.end265
  %call270 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.297, i64 0, i64 0)) #6, !dbg !4346
  store i32 0, i32* @flag_function_sections, align 4, !dbg !4348
  br label %if.end271, !dbg !4349

if.end271:                                        ; preds = %if.then269, %if.end265
  %105 = load i32, i32* @flag_prefetch_loop_arrays, align 4, !dbg !4350
  %tobool272 = icmp eq i32 %105, 0, !dbg !4350
  %106 = load i32, i32* @x86_prefetch_sse, align 4, !dbg !4352
  %tobool274 = icmp ne i32 %106, 0, !dbg !4352
  %or.cond11 = or i1 %tobool272, %tobool274, !dbg !4353
  br i1 %or.cond11, label %if.end280, label %lor.lhs.false275, !dbg !4353

lor.lhs.false275:                                 ; preds = %if.end271
  %107 = load i32, i32* @ix86_isa_flags, align 4, !dbg !4352
  %and = and i32 %107, 1, !dbg !4352
  %cmp276 = icmp eq i32 %and, 0, !dbg !4352
  br i1 %cmp276, label %if.then278, label %if.end280, !dbg !4354

if.then278:                                       ; preds = %lor.lhs.false275
  %call279 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.298, i64 0, i64 0)) #6, !dbg !4355
  store i32 0, i32* @flag_prefetch_loop_arrays, align 4, !dbg !4357
  br label %if.end280, !dbg !4358

if.end280:                                        ; preds = %lor.lhs.false275, %if.end271, %if.then278
  %108 = phi i32 [ %105, %lor.lhs.false275 ], [ %105, %if.end271 ], [ 0, %if.then278 ], !dbg !4359
  %tobool281 = icmp ne i32 %108, 0, !dbg !4359
  %109 = load i32, i32* @optimize_size, align 4, !dbg !4361
  %tobool283 = icmp ne i32 %109, 0, !dbg !4361
  %or.cond12 = and i1 %tobool281, %tobool283, !dbg !4362
  br i1 %or.cond12, label %if.then284, label %if.end286, !dbg !4362

if.then284:                                       ; preds = %if.end280
  %call285 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.299, i64 0, i64 0)) #6, !dbg !4363
  store i32 0, i32* @flag_prefetch_loop_arrays, align 4, !dbg !4365
  br label %if.end286, !dbg !4366

if.end286:                                        ; preds = %if.then284, %if.end280
  %110 = load i32, i32* @flag_signaling_nans, align 4, !dbg !4367
  %tobool287 = icmp eq i32 %110, 0, !dbg !4367
  br i1 %tobool287, label %if.end289, label %if.then288, !dbg !4369

if.then288:                                       ; preds = %if.end286
  store i32 1, i32* @flag_trapping_math, align 4, !dbg !4370
  br label %if.end289, !dbg !4371

if.end289:                                        ; preds = %if.end286, %if.then288
  %111 = load i32, i32* @flag_associative_math, align 4, !dbg !4372
  %tobool290 = icmp eq i32 %111, 0, !dbg !4372
  br i1 %tobool290, label %if.end297, label %land.lhs.true291, !dbg !4374

land.lhs.true291:                                 ; preds = %if.end289
  %112 = load i32, i32* @flag_trapping_math, align 4, !dbg !4375
  %113 = load i32, i32* @flag_signed_zeros, align 4, !dbg !4376
  %114 = or i32 %112, %113, !dbg !4377
  %115 = icmp eq i32 %114, 0, !dbg !4377
  br i1 %115, label %if.end297, label %if.then295, !dbg !4377

if.then295:                                       ; preds = %land.lhs.true291
  %call296 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.300, i64 0, i64 0)) #6, !dbg !4378
  store i32 0, i32* @flag_associative_math, align 4, !dbg !4380
  br label %if.end297, !dbg !4381

if.end297:                                        ; preds = %land.lhs.true291, %if.end289, %if.then295
  %116 = load i32, i32* @flag_cx_limited_range, align 4, !dbg !4382
  %tobool298 = icmp eq i32 %116, 0, !dbg !4382
  br i1 %tobool298, label %if.end300, label %if.then299, !dbg !4384

if.then299:                                       ; preds = %if.end297
  store i32 0, i32* @flag_complex_method, align 4, !dbg !4385
  br label %if.end300, !dbg !4386

if.end300:                                        ; preds = %if.end297, %if.then299
  %117 = load i32, i32* @flag_cx_fortran_rules, align 4, !dbg !4387
  %tobool301 = icmp eq i32 %117, 0, !dbg !4387
  br i1 %tobool301, label %if.end303, label %if.then302, !dbg !4389

if.then302:                                       ; preds = %if.end300
  store i32 1, i32* @flag_complex_method, align 4, !dbg !4390
  br label %if.end303, !dbg !4391

if.end303:                                        ; preds = %if.end300, %if.then302
  %118 = load i32, i32* @flag_stack_protect, align 4, !dbg !4392
  %tobool304 = icmp eq i32 %118, 0, !dbg !4392
  br i1 %tobool304, label %if.then305, label %if.end306, !dbg !4394

if.then305:                                       ; preds = %if.end303
  store i32 0, i32* @warn_stack_protect, align 4, !dbg !4395
  br label %if.end306, !dbg !4396

if.end306:                                        ; preds = %if.end303, %if.then305
  %119 = load i32, i32* @flag_unwind_tables, align 4, !dbg !4397
  %tobool307 = icmp eq i32 %119, 0, !dbg !4397
  br i1 %tobool307, label %if.end320, label %land.lhs.true308, !dbg !4399

land.lhs.true308:                                 ; preds = %if.end306
  %120 = load i32, i32* @target_flags, align 4, !dbg !4400
  %and309 = and i32 %120, 4, !dbg !4400
  %cmp310 = icmp eq i32 %and309, 0, !dbg !4400
  br i1 %cmp310, label %lor.lhs.false312, label %if.end320, !dbg !4400

lor.lhs.false312:                                 ; preds = %land.lhs.true308
  %call313 = tail call i32 @ix86_cfun_abi() #6, !dbg !4400
  %cmp314 = icmp ne i32 %call313, 1, !dbg !4400
  %121 = load i32, i32* @flag_omit_frame_pointer, align 4, !dbg !4401
  %tobool317 = icmp ne i32 %121, 0, !dbg !4401
  %or.cond14 = and i1 %cmp314, %tobool317, !dbg !4402
  br i1 %or.cond14, label %if.then318, label %if.end320, !dbg !4402

if.then318:                                       ; preds = %lor.lhs.false312
  %call319 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.301, i64 0, i64 0)) #6, !dbg !4403
  store i32 0, i32* @flag_omit_frame_pointer, align 4, !dbg !4405
  br label %if.end320, !dbg !4406

if.end320:                                        ; preds = %land.lhs.true308, %if.end306, %lor.lhs.false312, %if.then318
  %call321 = tail call %union.tree_node* @build_optimization_node() #6, !dbg !4407
  store %union.tree_node* %call321, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 125), align 8, !dbg !4408
  %.cast = ptrtoint %union.tree_node* %call321 to i64, !dbg !4409
  store i64 %.cast, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 126) to i64*), align 16, !dbg !4410
  ret void, !dbg !4411
}

declare dso_local void @init_adjust_machine_modes() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @backend_init() unnamed_addr #4 !dbg !4412 {
entry:
  tail call void @init_emit_once() #6, !dbg !4413
  tail call void @init_rtlanal() #6, !dbg !4414
  tail call void @init_inline_once() #6, !dbg !4415
  tail call void @init_varasm_once() #6, !dbg !4416
  tail call void @save_register_info() #6, !dbg !4417
  tail call void @ira_init_once() #6, !dbg !4418
  tail call fastcc void @backend_init_target() #7, !dbg !4419
  ret void, !dbg !4420
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lang_dependent_init(i8* %name) unnamed_addr #4 !dbg !4421 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !4423, metadata !DIExpression()), !dbg !4425
  %0 = load i32, i32* @input_location, align 4, !dbg !4426
  call void @llvm.dbg.value(metadata i32 %0, metadata !4424, metadata !DIExpression()), !dbg !4425
  %1 = load i8*, i8** @dump_base_name, align 8, !dbg !4427
  %cmp = icmp eq i8* %1, null, !dbg !4429
  br i1 %cmp, label %if.then, label %if.end, !dbg !4430

if.then:                                          ; preds = %entry
  %tobool = icmp eq i8* %name, null, !dbg !4431
  br i1 %tobool, label %cond.false, label %land.lhs.true, !dbg !4432

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8, i8* %name, align 1, !dbg !4433
  %tobool1 = icmp eq i8 %2, 0, !dbg !4433
  br i1 %tobool1, label %cond.false, label %cond.end, !dbg !4431

cond.false:                                       ; preds = %land.lhs.true, %if.then
  br label %cond.end, !dbg !4431

cond.end:                                         ; preds = %land.lhs.true, %cond.false
  %cond = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.310, i64 0, i64 0), %cond.false ], [ %name, %land.lhs.true ], !dbg !4431
  store i8* %cond, i8** @dump_base_name, align 8, !dbg !4434
  br label %if.end, !dbg !4435

if.end:                                           ; preds = %cond.end, %entry
  store i32 1, i32* @input_location, align 4, !dbg !4436
  %3 = load i8 ()*, i8 ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 9), align 8, !dbg !4437
  %call = tail call zeroext i8 %3() #6, !dbg !4439
  %cmp3 = icmp eq i8 %call, 0, !dbg !4440
  br i1 %cmp3, label %cleanup, label %if.end6, !dbg !4441

if.end6:                                          ; preds = %if.end
  store i32 %0, i32* @input_location, align 4, !dbg !4442
  tail call fastcc void @init_asm_output(i8* %name) #7, !dbg !4443
  tail call void @init_eh() #6, !dbg !4444
  tail call fastcc void @lang_dependent_init_target() #7, !dbg !4445
  %4 = load i8, i8* @timevar_enable, align 1, !dbg !4446
  %tobool7 = icmp eq i8 %4, 0, !dbg !4446
  br i1 %tobool7, label %do.end, label %if.then8, !dbg !4449

if.then8:                                         ; preds = %if.end6
  tail call void @timevar_push_1(i32 166) #6, !dbg !4446
  br label %do.end, !dbg !4446

do.end:                                           ; preds = %if.end6, %if.then8
  %call10 = tail call i32 @dwarf2out_do_frame() #6, !dbg !4450
  %tobool11 = icmp eq i32 %call10, 0, !dbg !4450
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4452

if.then12:                                        ; preds = %do.end
  tail call void @dwarf2out_frame_init() #6, !dbg !4453
  br label %if.end13, !dbg !4453

if.end13:                                         ; preds = %do.end, %if.then12
  %5 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !4454
  %init = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %5, i64 0, i32 0, !dbg !4455
  %6 = load void (i8*)*, void (i8*)** %init, align 8, !dbg !4455
  tail call void %6(i8* %name) #6, !dbg !4456
  %7 = load i8, i8* @timevar_enable, align 1, !dbg !4457
  %tobool15 = icmp eq i8 %7, 0, !dbg !4457
  br i1 %tobool15, label %cleanup, label %if.then16, !dbg !4460

if.then16:                                        ; preds = %if.end13
  tail call void @timevar_pop_1(i32 166) #6, !dbg !4457
  br label %cleanup, !dbg !4457

cleanup:                                          ; preds = %if.end13, %if.then16, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.then16 ], [ 1, %if.end13 ], !dbg !4425
  ret i32 %retval.0, !dbg !4461
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compile_file() unnamed_addr #4 !dbg !4462 {
entry:
  store i8 1, i8* @ggc_protect_identifiers, align 1, !dbg !4467
  tail call void @init_cgraph() #6, !dbg !4468
  %0 = load i8*, i8** @main_input_filename, align 8, !dbg !4469
  tail call void @init_final(i8* %0) #6, !dbg !4470
  %1 = load i8*, i8** @aux_base_name, align 8, !dbg !4471
  tail call void @coverage_init(i8* %1) #6, !dbg !4472
  tail call void @statistics_init() #6, !dbg !4473
  %call = tail call i32 @invoke_plugin_callbacks(i32 12, i8* null) #6, !dbg !4474
  %2 = load i8, i8* @timevar_enable, align 1, !dbg !4475
  %tobool = icmp eq i8 %2, 0, !dbg !4475
  br i1 %tobool, label %do.end, label %if.then, !dbg !4478

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 44) #6, !dbg !4475
  br label %do.end, !dbg !4475

do.end:                                           ; preds = %entry, %if.then
  %3 = load void (i32)*, void (i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 11), align 8, !dbg !4479
  %.b = load i1, i1* @set_yydebug, align 4, !dbg !4480
  %4 = zext i1 %.b to i32, !dbg !4480
  tail call void %3(i32 %4) #6, !dbg !4481
  %5 = load i8, i8* @timevar_enable, align 1, !dbg !4482
  %tobool2 = icmp eq i8 %5, 0, !dbg !4482
  br i1 %tobool2, label %do.end5, label %if.then3, !dbg !4485

if.then3:                                         ; preds = %do.end
  tail call void @timevar_pop_1(i32 44) #6, !dbg !4482
  br label %do.end5, !dbg !4482

do.end5:                                          ; preds = %do.end, %if.then3
  %6 = load i32, i32* @flag_syntax_only, align 4, !dbg !4486
  %tobool6 = icmp eq i32 %6, 0, !dbg !4486
  br i1 %tobool6, label %if.end8, label %return, !dbg !4488

if.end8:                                          ; preds = %do.end5
  store i8 0, i8* @ggc_protect_identifiers, align 1, !dbg !4489
  %7 = load void ()*, void ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 33, i32 8), align 8, !dbg !4490
  tail call void %7() #6, !dbg !4491
  %8 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !4492
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %8, i64 0, i32 1, i64 4, !dbg !4492
  %9 = load i32, i32* %arrayidx, align 8, !dbg !4492
  %tobool9 = icmp eq i32 %9, 0, !dbg !4492
  br i1 %tobool9, label %lor.lhs.false, label %return, !dbg !4494

lor.lhs.false:                                    ; preds = %if.end8
  %arrayidx11 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %8, i64 0, i32 1, i64 5, !dbg !4495
  %10 = load i32, i32* %arrayidx11, align 4, !dbg !4495
  %tobool12 = icmp eq i32 %10, 0, !dbg !4495
  br i1 %tobool12, label %if.end14, label %return, !dbg !4496

if.end14:                                         ; preds = %lor.lhs.false
  %call15 = tail call zeroext i8 @varpool_assemble_pending_decls() #6, !dbg !4497
  tail call void @finish_aliases_2() #6, !dbg !4498
  %11 = load i32, i32* @flag_mudflap, align 4, !dbg !4499
  %tobool16 = icmp eq i32 %11, 0, !dbg !4499
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4501

if.then17:                                        ; preds = %if.end14
  tail call void @mudflap_finish_file() #6, !dbg !4502
  br label %if.end18, !dbg !4502

if.end18:                                         ; preds = %if.end14, %if.then17
  %12 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 113), align 4, !dbg !4503
  %tobool19 = icmp eq i8 %12, 0, !dbg !4505
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4506

if.then20:                                        ; preds = %if.end18
  tail call void @emutls_finish() #6, !dbg !4507
  br label %if.end21, !dbg !4507

if.end21:                                         ; preds = %if.end18, %if.then20
  tail call void @output_shared_constant_pool() #6, !dbg !4508
  tail call void @output_object_blocks() #6, !dbg !4509
  tail call void @weak_finish() #6, !dbg !4510
  %13 = load void ()*, void ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 0, i32 31), align 8, !dbg !4511
  tail call void %13() #6, !dbg !4512
  %14 = load i8, i8* @timevar_enable, align 1, !dbg !4513
  %tobool23 = icmp eq i8 %14, 0, !dbg !4513
  br i1 %tobool23, label %do.end26, label %if.then24, !dbg !4516

if.then24:                                        ; preds = %if.end21
  tail call void @timevar_push_1(i32 166) #6, !dbg !4513
  br label %do.end26, !dbg !4513

do.end26:                                         ; preds = %if.end21, %if.then24
  %call27 = tail call i32 @dwarf2out_do_frame() #6, !dbg !4517
  %tobool28 = icmp eq i32 %call27, 0, !dbg !4517
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !4519

if.then29:                                        ; preds = %do.end26
  tail call void @dwarf2out_frame_finish() #6, !dbg !4520
  br label %if.end30, !dbg !4520

if.end30:                                         ; preds = %do.end26, %if.then29
  %15 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !4521
  %finish = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %15, i64 0, i32 1, !dbg !4522
  %16 = load void (i8*)*, void (i8*)** %finish, align 8, !dbg !4522
  %17 = load i8*, i8** @main_input_filename, align 8, !dbg !4523
  tail call void %16(i8* %17) #6, !dbg !4524
  %18 = load i8, i8* @timevar_enable, align 1, !dbg !4525
  %tobool32 = icmp eq i8 %18, 0, !dbg !4525
  br i1 %tobool32, label %do.end35, label %if.then33, !dbg !4528

if.then33:                                        ; preds = %if.end30
  tail call void @timevar_pop_1(i32 166) #6, !dbg !4525
  br label %do.end35, !dbg !4525

do.end35:                                         ; preds = %if.end30, %if.then33
  tail call void @dw2_output_indirect_constants() #6, !dbg !4529
  tail call void @process_pending_assemble_externals() #6, !dbg !4530
  %19 = load i32, i32* @flag_generate_lto, align 4, !dbg !4531
  %tobool36 = icmp eq i32 %19, 0, !dbg !4531
  br i1 %tobool36, label %if.end42, label %do.body38, !dbg !4533

do.body38:                                        ; preds = %do.end35
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4534
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.317, i64 0, i64 0)) #6, !dbg !4534
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4534
  tail call void @assemble_name(%struct._IO_FILE* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.318, i64 0, i64 0)) #6, !dbg !4534
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4534
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.319, i64 0, i64 0), i64 1, i32 1) #6, !dbg !4534
  br label %if.end42, !dbg !4537

if.end42:                                         ; preds = %do.end35, %do.body38
  %23 = load i32, i32* @flag_no_ident, align 4, !dbg !4538
  %tobool43 = icmp eq i32 %23, 0, !dbg !4538
  br i1 %tobool43, label %if.then44, label %if.end50, !dbg !4539

if.then44:                                        ; preds = %if.end42
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.320, i64 0, i64 0), metadata !4464, metadata !DIExpression()), !dbg !4540
  %call45 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.321, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @pkgversion_string, i64 0, i64 0)) #6, !dbg !4541
  %tobool46 = icmp eq i32 %call45, 0, !dbg !4541
  %spec.select = select i1 %tobool46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.320, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @pkgversion_string, i64 0, i64 0), !dbg !4543
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !4464, metadata !DIExpression()), !dbg !4540
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4544
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.322, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.323, i64 0, i64 0), i8* %spec.select, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @version_string, i64 0, i64 0)) #6, !dbg !4545
  br label %if.end50, !dbg !4546

if.end50:                                         ; preds = %if.end42, %if.then44
  %call51 = tail call i32 @invoke_plugin_callbacks(i32 2, i8* null) #6, !dbg !4547
  %25 = load void ()*, void ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 0, i32 30), align 8, !dbg !4548
  tail call void %25() #6, !dbg !4549
  br label %return, !dbg !4550

return:                                           ; preds = %lor.lhs.false, %if.end8, %do.end5, %if.end50
  ret void, !dbg !4550
}

; Function Attrs: nounwind uwtable
define internal fastcc void @finalize() unnamed_addr #4 !dbg !4551 {
entry:
  %0 = load i32, i32* @flag_gen_aux_info, align 4, !dbg !4552
  %tobool = icmp eq i32 %0, 0, !dbg !4552
  br i1 %tobool, label %if.end4, label %if.then, !dbg !4554

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8, !dbg !4555
  %call = tail call i32 @fclose(%struct._IO_FILE* %1) #6, !dbg !4557
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !4558
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %2, i64 0, i32 1, i64 4, !dbg !4558
  %3 = load i32, i32* %arrayidx, align 8, !dbg !4558
  %tobool1 = icmp eq i32 %3, 0, !dbg !4558
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !4560

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** @aux_info_file_name, align 8, !dbg !4561
  %call3 = tail call i32 @unlink(i8* %4) #6, !dbg !4562
  br label %if.end4, !dbg !4562

if.end4:                                          ; preds = %if.then, %entry, %if.then2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4563
  %tobool5 = icmp eq %struct._IO_FILE* %5, null, !dbg !4563
  br i1 %tobool5, label %if.end18, label %if.then6, !dbg !4565

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @ferror(%struct._IO_FILE* nonnull %5) #6, !dbg !4566
  %cmp = icmp eq i32 %call7, 0, !dbg !4569
  br i1 %cmp, label %if.end9, label %if.then8, !dbg !4570

if.then8:                                         ; preds = %if.then6
  %6 = load i8*, i8** @asm_file_name, align 8, !dbg !4571
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.324, i64 0, i64 0), i8* %6) #6, !dbg !4572
  br label %if.end9, !dbg !4572

if.end9:                                          ; preds = %if.then6, %if.then8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4573
  %call10 = tail call i32 @fclose(%struct._IO_FILE* %7) #6, !dbg !4575
  %cmp11 = icmp eq i32 %call10, 0, !dbg !4576
  br i1 %cmp11, label %if.end13, label %if.then12, !dbg !4577

if.then12:                                        ; preds = %if.end9
  %8 = load i8*, i8** @asm_file_name, align 8, !dbg !4578
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.325, i64 0, i64 0), i8* %8) #6, !dbg !4579
  br label %if.end13, !dbg !4579

if.end13:                                         ; preds = %if.end9, %if.then12
  %9 = load i32, i32* @flag_wpa, align 4, !dbg !4580
  %tobool14 = icmp eq i32 %9, 0, !dbg !4580
  br i1 %tobool14, label %if.end18, label %if.then15, !dbg !4582

if.then15:                                        ; preds = %if.end13
  %10 = load i8*, i8** @asm_file_name, align 8, !dbg !4583
  %call16 = tail call i32 @unlink_if_ordinary(i8* %10) #6, !dbg !4584
  br label %if.end18, !dbg !4584

if.end18:                                         ; preds = %if.end13, %if.end4, %if.then15
  tail call void @statistics_fini() #6, !dbg !4585
  tail call void @finish_optimization_passes() #6, !dbg !4586
  tail call void @ira_finish_once() #6, !dbg !4587
  %11 = load i32, i32* @mem_report, align 4, !dbg !4588
  %tobool19 = icmp eq i32 %11, 0, !dbg !4588
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !4590

if.then20:                                        ; preds = %if.end18
  tail call void @dump_memory_report(i8 zeroext 1) #7, !dbg !4591
  br label %if.end21, !dbg !4591

if.end21:                                         ; preds = %if.end18, %if.then20
  %12 = load void ()*, void ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 10), align 8, !dbg !4592
  tail call void %12() #6, !dbg !4593
  ret void, !dbg !4594
}

declare dso_local void @timevar_stop(i32) local_unnamed_addr #1

declare dso_local void @timevar_print(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @override_options(i8 zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @diagnostic_inhibit_notes(%struct.diagnostic_context* %context) unnamed_addr #0 !dbg !4595 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !4644, metadata !DIExpression()), !dbg !4645
  %inhibit_notes_p = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 13, !dbg !4646
  store i8 1, i8* %inhibit_notes_p, align 4, !dbg !4647
  ret void, !dbg !4648
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @target_supports_section_anchors_p() unnamed_addr #4 !dbg !4649 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 43), align 8, !dbg !4652
  %1 = load i64, i64* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 44), align 8, !dbg !4654
  %2 = or i64 %0, %1, !dbg !4655
  %3 = icmp eq i64 %2, 0, !dbg !4655
  br i1 %3, label %return, label %if.end, !dbg !4655

if.end:                                           ; preds = %entry
  %4 = load void (%struct.rtx_def*)*, void (%struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 0, i32 36), align 8, !dbg !4656
  %cmp2 = icmp ne void (%struct.rtx_def*)* %4, null, !dbg !4658
  %. = zext i1 %cmp2 to i8, !dbg !4659
  br label %return, !dbg !4659

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %., %if.end ], !dbg !4659
  ret i8 %retval.0, !dbg !4660
}

declare dso_local i8* @lbasename(i8*) local_unnamed_addr #1

declare dso_local void @sorry(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @print_switch_values(i32 (i32, i8*)* %print_fn) unnamed_addr #4 !dbg !4661 {
entry:
  call void @llvm.dbg.value(metadata i32 (i32, i8*)* %print_fn, metadata !4670, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 0, metadata !4671, metadata !DIExpression()), !dbg !4674
  %0 = load i8*, i8** @flag_random_seed, align 8, !dbg !4675
  %tobool = icmp eq i8* %0, null, !dbg !4675
  br i1 %tobool, label %if.then, label %if.end, !dbg !4677

if.then:                                          ; preds = %entry
  tail call fastcc void @init_random_seed() #7, !dbg !4678
  br label %if.end, !dbg !4678

if.end:                                           ; preds = %entry, %if.then
  %call = tail call fastcc i32 @print_single_switch(i32 (i32, i8*)* %print_fn, i32 0, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.302, i64 0, i64 0)) #7, !dbg !4679
  call void @llvm.dbg.value(metadata i32 %call, metadata !4671, metadata !DIExpression()), !dbg !4674
  %1 = load i8**, i8*** @save_argv, align 8, !dbg !4680
  call void @llvm.dbg.value(metadata i8** %1, metadata !4673, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !4674
  br label %for.cond, !dbg !4682

for.cond:                                         ; preds = %for.inc, %if.end
  %pos.0 = phi i32 [ %call, %if.end ], [ %pos.1, %for.inc ], !dbg !4683
  %.pn = phi i8** [ %1, %if.end ], [ %p.2, %for.inc ]
  %p.0 = getelementptr inbounds i8*, i8** %.pn, i64 1, !dbg !4684
  call void @llvm.dbg.value(metadata i8** %p.0, metadata !4673, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !4671, metadata !DIExpression()), !dbg !4674
  %2 = load i8*, i8** %p.0, align 8, !dbg !4685
  %cmp = icmp eq i8* %2, null, !dbg !4687
  br i1 %cmp, label %for.end, label %for.body, !dbg !4688

for.body:                                         ; preds = %for.cond
  %3 = load i8, i8* %2, align 1, !dbg !4689
  %cmp1 = icmp eq i8 %3, 45, !dbg !4692
  br i1 %cmp1, label %if.then3, label %if.end40, !dbg !4693

if.then3:                                         ; preds = %for.body
  %call4 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.303, i64 0, i64 0)) #6, !dbg !4694
  %cmp5 = icmp eq i32 %call4, 0, !dbg !4697
  br i1 %cmp5, label %if.then18, label %lor.lhs.false, !dbg !4698

lor.lhs.false:                                    ; preds = %if.then3
  %4 = load i8*, i8** %p.0, align 8, !dbg !4699
  %call7 = tail call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.304, i64 0, i64 0)) #6, !dbg !4700
  %cmp8 = icmp eq i32 %call7, 0, !dbg !4701
  br i1 %cmp8, label %if.then18, label %lor.lhs.false10, !dbg !4702

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %5 = load i8*, i8** %p.0, align 8, !dbg !4703
  %call11 = tail call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.305, i64 0, i64 0)) #6, !dbg !4704
  %cmp12 = icmp eq i32 %call11, 0, !dbg !4705
  br i1 %cmp12, label %if.then18, label %lor.lhs.false14, !dbg !4706

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %6 = load i8*, i8** %p.0, align 8, !dbg !4707
  %call15 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.306, i64 0, i64 0)) #6, !dbg !4708
  %cmp16 = icmp eq i32 %call15, 0, !dbg !4709
  br i1 %cmp16, label %if.then18, label %if.end24, !dbg !4710

if.then18:                                        ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %if.then3
  %arrayidx19 = getelementptr inbounds i8*, i8** %.pn, i64 2, !dbg !4711
  %7 = load i8*, i8** %arrayidx19, align 8, !dbg !4711
  %cmp20 = icmp eq i8* %7, null, !dbg !4714
  %spec.select = select i1 %cmp20, i8** %p.0, i8** %arrayidx19, !dbg !4715
  call void @llvm.dbg.value(metadata i8** %spec.select, metadata !4673, metadata !DIExpression()), !dbg !4674
  br label %for.inc, !dbg !4716

if.end24:                                         ; preds = %lor.lhs.false14
  %8 = load i8*, i8** %p.0, align 8, !dbg !4717
  %call25 = tail call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.307, i64 0, i64 0)) #6, !dbg !4719
  %cmp26 = icmp eq i32 %call25, 0, !dbg !4720
  br i1 %cmp26, label %for.inc, label %lor.lhs.false28, !dbg !4721

lor.lhs.false28:                                  ; preds = %if.end24
  %9 = load i8*, i8** %p.0, align 8, !dbg !4722
  %call29 = tail call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.308, i64 0, i64 0)) #6, !dbg !4723
  %cmp30 = icmp eq i32 %call29, 0, !dbg !4724
  br i1 %cmp30, label %for.inc, label %if.end33, !dbg !4725

if.end33:                                         ; preds = %lor.lhs.false28
  %10 = load i8*, i8** %p.0, align 8, !dbg !4726
  %arrayidx34 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !4728
  %11 = load i8, i8* %arrayidx34, align 1, !dbg !4728
  %cmp36 = icmp eq i8 %11, 100, !dbg !4729
  br i1 %cmp36, label %for.inc, label %if.end40, !dbg !4730

if.end40:                                         ; preds = %if.end33, %for.body
  %12 = phi i8* [ %10, %if.end33 ], [ %2, %for.body ], !dbg !4731
  %call41 = tail call fastcc i32 @print_single_switch(i32 (i32, i8*)* %print_fn, i32 %pos.0, i32 0, i8* %12) #7, !dbg !4732
  call void @llvm.dbg.value(metadata i32 %call41, metadata !4671, metadata !DIExpression()), !dbg !4674
  br label %for.inc, !dbg !4733

for.inc:                                          ; preds = %if.end33, %if.end24, %lor.lhs.false28, %if.end40, %if.then18
  %pos.1 = phi i32 [ %pos.0, %if.then18 ], [ %call41, %if.end40 ], [ %pos.0, %lor.lhs.false28 ], [ %pos.0, %if.end24 ], [ %pos.0, %if.end33 ], !dbg !4674
  %p.2 = phi i8** [ %spec.select, %if.then18 ], [ %p.0, %if.end40 ], [ %p.0, %lor.lhs.false28 ], [ %p.0, %if.end24 ], [ %p.0, %if.end33 ], !dbg !4684
  call void @llvm.dbg.value(metadata i8** %p.2, metadata !4673, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 %pos.1, metadata !4671, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i8** %p.2, metadata !4673, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !4674
  br label %for.cond, !dbg !4734, !llvm.loop !4735

for.end:                                          ; preds = %for.cond
  %pos.0.lcssa = phi i32 [ %pos.0, %for.cond ], !dbg !4683
  call void @llvm.dbg.value(metadata i32 %pos.0.lcssa, metadata !4671, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 %pos.0.lcssa, metadata !4671, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i32 %pos.0.lcssa, metadata !4671, metadata !DIExpression()), !dbg !4674
  %cmp43 = icmp sgt i32 %pos.0.lcssa, 0, !dbg !4737
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !4739

if.then45:                                        ; preds = %for.end
  %call46 = tail call i32 %print_fn(i32 4, i8* null) #6, !dbg !4740
  br label %if.end47, !dbg !4740

if.end47:                                         ; preds = %if.then45, %for.end
  %call48 = tail call fastcc i32 @print_single_switch(i32 (i32, i8*)* %print_fn, i32 0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.309, i64 0, i64 0)) #7, !dbg !4741
  call void @llvm.dbg.value(metadata i32 %call48, metadata !4671, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 0, metadata !4672, metadata !DIExpression()), !dbg !4674
  %13 = load i32, i32* @cl_options_count, align 4, !dbg !4742
  %conv50 = zext i32 %13 to i64, !dbg !4742
  br label %for.cond49, !dbg !4745

for.cond49:                                       ; preds = %for.inc64, %if.end47
  %j.0 = phi i64 [ 0, %if.end47 ], [ %inc, %for.inc64 ], !dbg !4746
  %pos.2 = phi i32 [ %call48, %if.end47 ], [ %pos.3, %for.inc64 ], !dbg !4674
  call void @llvm.dbg.value(metadata i32 %pos.2, metadata !4671, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %j.0, metadata !4672, metadata !DIExpression()), !dbg !4674
  %exitcond = icmp eq i64 %j.0, %conv50, !dbg !4747
  br i1 %exitcond, label %for.end65, label %for.body53, !dbg !4748

for.body53:                                       ; preds = %for.cond49
  %flags = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %j.0, i32 5, !dbg !4749
  %14 = load i32, i32* %flags, align 8, !dbg !4749
  %and = and i32 %14, 16777216, !dbg !4751
  %tobool55 = icmp eq i32 %and, 0, !dbg !4751
  br i1 %tobool55, label %for.inc64, label %land.lhs.true, !dbg !4752

land.lhs.true:                                    ; preds = %for.body53
  %conv56 = trunc i64 %j.0 to i32, !dbg !4753
  %call57 = tail call i32 @option_enabled(i32 %conv56) #6, !dbg !4754
  %cmp58 = icmp sgt i32 %call57, 0, !dbg !4755
  br i1 %cmp58, label %if.then60, label %for.inc64, !dbg !4756

if.then60:                                        ; preds = %land.lhs.true
  %opt_text = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %j.0, i32 0, !dbg !4757
  %15 = load i8*, i8** %opt_text, align 8, !dbg !4757
  %call62 = tail call fastcc i32 @print_single_switch(i32 (i32, i8*)* %print_fn, i32 %pos.2, i32 1, i8* %15) #7, !dbg !4758
  call void @llvm.dbg.value(metadata i32 %call62, metadata !4671, metadata !DIExpression()), !dbg !4674
  br label %for.inc64, !dbg !4759

for.inc64:                                        ; preds = %for.body53, %land.lhs.true, %if.then60
  %pos.3 = phi i32 [ %call62, %if.then60 ], [ %pos.2, %land.lhs.true ], [ %pos.2, %for.body53 ], !dbg !4674
  call void @llvm.dbg.value(metadata i32 %pos.3, metadata !4671, metadata !DIExpression()), !dbg !4674
  %inc = add nuw nsw i64 %j.0, 1, !dbg !4760
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4672, metadata !DIExpression()), !dbg !4674
  br label %for.cond49, !dbg !4761, !llvm.loop !4762

for.end65:                                        ; preds = %for.cond49
  %call66 = tail call i32 %print_fn(i32 4, i8* null) #6, !dbg !4764
  ret void, !dbg !4765
}

; Function Attrs: nounwind uwtable
define internal i32 @print_to_stderr(i32 %type, i8* %text) #4 !dbg !4766 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !4768, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.value(metadata i8* %text, metadata !4769, metadata !DIExpression()), !dbg !4770
  switch i32 %type, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %return
    i32 0, label %sw.bb2
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
  ], !dbg !4771

sw.bb:                                            ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4772
  %call = tail call i32 @putc(i32 10, %struct._IO_FILE* %0) #6, !dbg !4774
  br label %return, !dbg !4775

sw.bb2:                                           ; preds = %entry, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4776
  %call3 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %1) #6, !dbg !4777
  br label %sw.bb4, !dbg !4777

sw.bb4:                                           ; preds = %entry, %sw.bb2
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4778
  %call5 = tail call i32 @fputs(i8* %text, %struct._IO_FILE* %2) #6, !dbg !4779
  br label %return, !dbg !4780

sw.default:                                       ; preds = %entry
  br label %return, !dbg !4781

return:                                           ; preds = %entry, %sw.default, %sw.bb4, %sw.bb
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %sw.bb4 ], [ 1, %sw.bb ], [ 0, %entry ], !dbg !4782
  ret i32 %retval.0, !dbg !4783
}

declare dso_local %struct._IO_FILE* @fopen_unlocked(i8*, i8*) local_unnamed_addr #1

declare dso_local i8* @strerror(i32) local_unnamed_addr #1

declare dso_local i32* @__errno_location() local_unnamed_addr #1

declare dso_local i32 @fclose(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i32 @ix86_cfun_abi() local_unnamed_addr #1

declare dso_local %union.tree_node* @build_optimization_node() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @print_single_switch(i32 (i32, i8*)* %print_fn, i32 %pos, i32 %type, i8* %text) unnamed_addr #4 !dbg !4784 {
entry:
  call void @llvm.dbg.value(metadata i32 (i32, i8*)* %print_fn, metadata !4788, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.value(metadata i32 %pos, metadata !4789, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.value(metadata i32 %type, metadata !4790, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.value(metadata i8* %text, metadata !4791, metadata !DIExpression()), !dbg !4793
  %call = tail call i64 @strlen(i8* %text) #6, !dbg !4794
  %0 = trunc i64 %call to i32, !dbg !4794
  %conv = add i32 %0, 1, !dbg !4794
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4792, metadata !DIExpression()), !dbg !4793
  %cmp = icmp ne i32 %pos, 0, !dbg !4795
  %add2 = add nsw i32 %conv, %pos, !dbg !4797
  %cmp3 = icmp sgt i32 %add2, 75, !dbg !4798
  %or.cond = and i1 %cmp, %cmp3, !dbg !4799
  br i1 %or.cond, label %if.then, label %if.end, !dbg !4799

if.then:                                          ; preds = %entry
  %call5 = tail call i32 %print_fn(i32 4, i8* null) #6, !dbg !4800
  call void @llvm.dbg.value(metadata i32 0, metadata !4789, metadata !DIExpression()), !dbg !4793
  br label %if.end, !dbg !4802

if.end:                                           ; preds = %if.then, %entry
  %pos.addr.0 = phi i32 [ 0, %if.then ], [ %pos, %entry ]
  call void @llvm.dbg.value(metadata i32 %pos.addr.0, metadata !4789, metadata !DIExpression()), !dbg !4793
  %cmp6 = icmp eq i32 %pos.addr.0, 0, !dbg !4803
  br i1 %cmp6, label %if.then8, label %if.end11, !dbg !4805

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 %print_fn(i32 3, i8* null) #6, !dbg !4806
  call void @llvm.dbg.value(metadata i32 %call9, metadata !4789, metadata !DIExpression()), !dbg !4793
  br label %if.end11, !dbg !4807

if.end11:                                         ; preds = %if.then8, %if.end
  %pos.addr.1 = phi i32 [ %call9, %if.then8 ], [ %pos.addr.0, %if.end ], !dbg !4793
  call void @llvm.dbg.value(metadata i32 %pos.addr.1, metadata !4789, metadata !DIExpression()), !dbg !4793
  %call12 = tail call i32 %print_fn(i32 %type, i8* %text) #6, !dbg !4808
  %add13 = add nsw i32 %pos.addr.1, %conv, !dbg !4809
  ret i32 %add13, !dbg !4810
}

declare dso_local i32 @option_enabled(i32) local_unnamed_addr #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @init_emit_once() local_unnamed_addr #1

declare dso_local void @init_rtlanal() local_unnamed_addr #1

declare dso_local void @init_inline_once() local_unnamed_addr #1

declare dso_local void @init_varasm_once() local_unnamed_addr #1

declare dso_local void @save_register_info() local_unnamed_addr #1

declare dso_local void @ira_init_once() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @init_asm_output(i8* %name) unnamed_addr #4 !dbg !4811 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !4813, metadata !DIExpression()), !dbg !4820
  %cmp = icmp eq i8* %name, null, !dbg !4821
  %0 = load i8*, i8** @asm_file_name, align 8, !dbg !4822
  %cmp1 = icmp eq i8* %0, null, !dbg !4823
  %or.cond = and i1 %cmp, %cmp1, !dbg !4824
  br i1 %or.cond, label %if.then, label %if.else, !dbg !4824

if.then:                                          ; preds = %entry
  %1 = load i64, i64* bitcast (%struct._IO_FILE** @stdout to i64*), align 8, !dbg !4825
  store i64 %1, i64* bitcast (%struct._IO_FILE** @asm_out_file to i64*), align 8, !dbg !4826
  br label %if.end19, !dbg !4827

if.else:                                          ; preds = %entry
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !4828

if.then3:                                         ; preds = %if.else
  %2 = load i8*, i8** @dump_base_name, align 8, !dbg !4829
  %call = tail call i64 @strlen(i8* %2) #6, !dbg !4830
  %conv = trunc i64 %call to i32, !dbg !4830
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4814, metadata !DIExpression()), !dbg !4831
  %add = shl i64 %call, 32, !dbg !4832
  %sext = add i64 %add, 25769803776, !dbg !4832
  %conv4 = ashr exact i64 %sext, 32, !dbg !4832
  %call5 = tail call i8* @xmalloc(i64 %conv4) #6, !dbg !4832
  call void @llvm.dbg.value(metadata i8* %call5, metadata !4819, metadata !DIExpression()), !dbg !4831
  %3 = load i8*, i8** @dump_base_name, align 8, !dbg !4833
  %sext1 = add i64 %add, 4294967296, !dbg !4834
  %conv7 = ashr exact i64 %sext1, 32, !dbg !4834
  %call8 = tail call i8* @memcpy(i8* %call5, i8* %3, i64 %conv7) #6, !dbg !4835
  tail call void @strip_off_ending(i8* %call5, i32 %conv) #7, !dbg !4836
  %call9 = tail call i8* @strcat(i8* %call5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.311, i64 0, i64 0)) #6, !dbg !4837
  store i8* %call5, i8** @asm_file_name, align 8, !dbg !4838
  br label %if.end, !dbg !4839

if.end:                                           ; preds = %if.then3, %if.else
  %4 = phi i8* [ %call5, %if.then3 ], [ %0, %if.else ], !dbg !4840
  %call10 = tail call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.312, i64 0, i64 0)) #6, !dbg !4842
  %tobool = icmp eq i32 %call10, 0, !dbg !4842
  br i1 %tobool, label %if.then11, label %if.else12, !dbg !4843

if.then11:                                        ; preds = %if.end
  %5 = load i64, i64* bitcast (%struct._IO_FILE** @stdout to i64*), align 8, !dbg !4844
  store i64 %5, i64* bitcast (%struct._IO_FILE** @asm_out_file to i64*), align 8, !dbg !4845
  %6 = inttoptr i64 %5 to %struct._IO_FILE*, !dbg !4846
  br label %if.end14, !dbg !4846

if.else12:                                        ; preds = %if.end
  %7 = load i8*, i8** @asm_file_name, align 8, !dbg !4847
  %call13 = tail call %struct._IO_FILE* @fopen_unlocked(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.313, i64 0, i64 0)) #6, !dbg !4847
  store %struct._IO_FILE* %call13, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4848
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then11
  %8 = phi %struct._IO_FILE* [ %call13, %if.else12 ], [ %6, %if.then11 ], !dbg !4849
  %cmp15 = icmp eq %struct._IO_FILE* %8, null, !dbg !4851
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !4852

if.then17:                                        ; preds = %if.end14
  %9 = load i8*, i8** @asm_file_name, align 8, !dbg !4853
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.314, i64 0, i64 0), i8* %9) #6, !dbg !4854
  br label %if.end19, !dbg !4854

if.end19:                                         ; preds = %if.end14, %if.then17, %if.then
  %10 = load i32, i32* @flag_syntax_only, align 4, !dbg !4855
  %tobool20 = icmp eq i32 %10, 0, !dbg !4855
  br i1 %tobool20, label %if.then21, label %if.end35, !dbg !4857

if.then21:                                        ; preds = %if.end19
  %11 = load void ()*, void ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 0, i32 29), align 8, !dbg !4858
  tail call void %11() #6, !dbg !4860
  %12 = load i32, i32* @flag_record_gcc_switches, align 4, !dbg !4861
  %tobool22 = icmp eq i32 %12, 0, !dbg !4861
  br i1 %tobool22, label %if.end30, label %if.then23, !dbg !4863

if.then23:                                        ; preds = %if.then21
  %13 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 0, i32 34), align 8, !dbg !4864
  %tobool24 = icmp eq i32 (i32, i8*)* %13, null, !dbg !4867
  br i1 %tobool24, label %if.else28, label %if.then25, !dbg !4868

if.then25:                                        ; preds = %if.then23
  %call26 = tail call i32 %13(i32 2, i8* null) #6, !dbg !4869
  %14 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 0, i32 34), align 8, !dbg !4871
  tail call fastcc void @print_switch_values(i32 (i32, i8*)* %14) #7, !dbg !4872
  %15 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 0, i32 34), align 8, !dbg !4873
  %call27 = tail call i32 %15(i32 2, i8* null) #6, !dbg !4874
  br label %if.end30, !dbg !4875

if.else28:                                        ; preds = %if.then23
  %16 = load i32, i32* @input_location, align 4, !dbg !4876
  tail call void (i32, i8*, ...) @inform(i32 %16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.315, i64 0, i64 0)) #6, !dbg !4877
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.then25, %if.else28
  %17 = load i32, i32* @flag_verbose_asm, align 4, !dbg !4878
  %tobool31 = icmp eq i32 %17, 0, !dbg !4878
  br i1 %tobool31, label %if.end35, label %if.then32, !dbg !4880

if.then32:                                        ; preds = %if.end30
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4881
  tail call void @print_version(%struct._IO_FILE* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.316, i64 0, i64 0)) #7, !dbg !4883
  tail call fastcc void @print_switch_values(i32 (i32, i8*)* nonnull @print_to_asm_out_file) #7, !dbg !4884
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4885
  %call33 = tail call i32 @putc(i32 10, %struct._IO_FILE* %19) #6, !dbg !4886
  br label %if.end35, !dbg !4887

if.end35:                                         ; preds = %if.end30, %if.end19, %if.then32
  ret void, !dbg !4888
}

declare dso_local void @init_eh() local_unnamed_addr #1

declare dso_local i32 @dwarf2out_do_frame() local_unnamed_addr #1

declare dso_local void @dwarf2out_frame_init() local_unnamed_addr #1

declare dso_local i8* @strcat(i8*, i8*) local_unnamed_addr #1

declare dso_local void @inform(i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @print_to_asm_out_file(i32 %type, i8* %text) #4 !dbg !4889 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !4891, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i8* %text, metadata !4892, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i8 1, metadata !4893, metadata !DIExpression()), !dbg !4894
  switch i32 %type, label %cleanup [
    i32 4, label %sw.bb
    i32 3, label %sw.bb1
    i32 2, label %sw.bb5
    i32 0, label %sw.bb5
    i32 1, label %sw.bb5
  ], !dbg !4895

sw.bb:                                            ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4896
  %call = tail call i32 @putc(i32 10, %struct._IO_FILE* %0) #6, !dbg !4898
  br label %cleanup, !dbg !4899

sw.bb1:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4900
  %call2 = tail call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.316, i64 0, i64 0), %struct._IO_FILE* %1) #6, !dbg !4901
  %call3 = tail call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.316, i64 0, i64 0)) #6, !dbg !4902
  %conv = trunc i64 %call3 to i32, !dbg !4902
  br label %cleanup, !dbg !4903

sw.bb5:                                           ; preds = %entry, %entry, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4904
  %call6 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %2) #6, !dbg !4906
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !4907
  %call7 = tail call i32 @fputs(i8* %text, %struct._IO_FILE* %3) #6, !dbg !4908
  br label %cleanup, !dbg !4909

cleanup:                                          ; preds = %entry, %sw.bb5, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ %conv, %sw.bb1 ], [ 1, %sw.bb ], [ -1, %entry ], !dbg !4910
  ret i32 %retval.0, !dbg !4911
}

declare dso_local void @init_cgraph() local_unnamed_addr #1

declare dso_local void @init_final(i8*) local_unnamed_addr #1

declare dso_local void @coverage_init(i8*) local_unnamed_addr #1

declare dso_local void @statistics_init() local_unnamed_addr #1

declare dso_local zeroext i8 @varpool_assemble_pending_decls() local_unnamed_addr #1

declare dso_local void @finish_aliases_2() local_unnamed_addr #1

declare dso_local void @mudflap_finish_file() local_unnamed_addr #1

declare dso_local void @emutls_finish() local_unnamed_addr #1

declare dso_local void @output_shared_constant_pool() local_unnamed_addr #1

declare dso_local void @output_object_blocks() local_unnamed_addr #1

declare dso_local void @weak_finish() local_unnamed_addr #1

declare dso_local void @dwarf2out_frame_finish() local_unnamed_addr #1

declare dso_local void @dw2_output_indirect_constants() local_unnamed_addr #1

declare dso_local void @process_pending_assemble_externals() local_unnamed_addr #1

declare dso_local void @assemble_name(%struct._IO_FILE*, i8*) local_unnamed_addr #1

declare dso_local i32 @unlink(i8*) local_unnamed_addr #1

declare dso_local i32 @ferror(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i32 @unlink_if_ordinary(i8*) local_unnamed_addr #1

declare dso_local void @statistics_fini() local_unnamed_addr #1

declare dso_local void @finish_optimization_passes() local_unnamed_addr #1

declare dso_local void @ira_finish_once() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.ctpop.i64(i64) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2248, !2249, !2250}
!llvm.ident = !{!2251}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "optimize", scope: !2, file: !3, line: 197, type: !470, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !467, globals: !1933, nameTableKind: None)
!3 = !DIFile(filename: "toplev.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !16, !21, !26, !31, !37, !165, !360, !369, !373, !380, !386, !391, !396, !414, !421, !428, !434, !439, !443, !459}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tls_model", file: !6, line: 97, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "TLS_MODEL_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "TLS_MODEL_EMULATED", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TLS_MODEL_REAL", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "TLS_MODEL_GLOBAL_DYNAMIC", value: 2, isUnsigned: true)
!13 = !DIEnumerator(name: "TLS_MODEL_LOCAL_DYNAMIC", value: 3, isUnsigned: true)
!14 = !DIEnumerator(name: "TLS_MODEL_INITIAL_EXEC", value: 4, isUnsigned: true)
!15 = !DIEnumerator(name: "TLS_MODEL_LOCAL_EXEC", value: 5, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ira_algorithm", file: !17, line: 219, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./flags.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "IRA_ALGORITHM_CB", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "IRA_ALGORITHM_PRIORITY", value: 1, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ira_region", file: !17, line: 228, baseType: !7, size: 32, elements: !22)
!22 = !{!23, !24, !25}
!23 = !DIEnumerator(name: "IRA_REGION_ONE", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "IRA_REGION_ALL", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "IRA_REGION_MIXED", value: 2, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "excess_precision", file: !17, line: 240, baseType: !7, size: 32, elements: !27)
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "EXCESS_PRECISION_DEFAULT", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "EXCESS_PRECISION_FAST", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "EXCESS_PRECISION_STANDARD", value: 2, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "stack_check_type", file: !17, line: 310, baseType: !7, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "NO_STACK_CHECK", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "GENERIC_STACK_CHECK", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "STATIC_BUILTIN_STACK_CHECK", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "FULL_BUILTIN_STACK_CHECK", value: 3, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !38, line: 7, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!40 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!44 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!45 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!46 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!47 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!48 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!49 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!50 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!51 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!52 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!53 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!54 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!55 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!56 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!57 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!58 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!59 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!60 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!61 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!62 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!63 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!64 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!65 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!66 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!67 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!68 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!69 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!70 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!71 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!72 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!73 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!74 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!75 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!76 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!77 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!78 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!79 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!80 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!81 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!82 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!83 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!84 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!85 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!86 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!87 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!88 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!89 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!90 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!91 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!92 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!93 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!94 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!95 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!96 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!97 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!98 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!99 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!100 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!101 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!102 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!103 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!104 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!105 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!106 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!107 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!108 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!109 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!110 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!111 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!112 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!113 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!114 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!115 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!116 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!117 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!118 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!119 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!120 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!121 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!122 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!123 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!124 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!125 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!126 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!127 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!128 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!132 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!133 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!134 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!135 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!137 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!138 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!139 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!140 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!141 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!142 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!143 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!144 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!145 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!146 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!147 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!148 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!149 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!150 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!151 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!152 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!153 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!154 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!157 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!158 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!160 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!163 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!164 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !166, line: 39, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!168 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!169 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!170 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!171 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!172 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!173 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!174 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!175 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!176 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!177 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!178 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!179 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!180 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!181 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!182 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!183 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!184 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!185 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!186 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!187 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!188 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!189 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!190 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!191 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!192 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!193 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!194 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!195 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!196 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!197 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!198 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!199 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!200 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!201 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!202 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!203 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!204 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!205 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!206 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!207 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!208 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!209 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!210 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!211 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!212 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!213 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!214 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!215 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!216 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!217 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!218 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!219 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!220 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!221 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!222 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!223 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!224 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!225 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!226 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!227 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!228 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!229 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!230 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!231 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!232 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!233 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!234 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!235 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!236 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!237 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!238 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!239 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!240 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!241 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!242 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!243 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!244 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!245 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!246 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!247 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!248 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!249 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!250 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!251 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!252 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!253 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!254 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!255 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!256 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!257 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!258 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!259 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!260 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!261 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!262 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!263 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!264 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!265 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!266 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!267 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!268 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!269 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!270 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!271 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!272 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!273 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!274 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!275 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!276 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!277 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!278 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!279 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!280 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!281 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!282 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!283 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!284 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!285 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!286 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!287 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!288 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!289 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!290 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!291 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!292 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!293 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!294 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!295 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!296 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!297 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!298 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!299 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!300 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!301 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!302 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!303 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!304 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!305 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!306 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!307 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!308 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!309 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!310 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!311 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!312 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!313 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!314 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!315 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!316 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!317 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!318 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!319 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!320 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!321 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!322 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!323 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!324 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!325 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!326 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!327 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!328 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!329 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!330 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!331 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!332 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!333 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!334 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!335 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!336 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!337 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!338 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!339 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!340 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!341 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!342 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!343 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!344 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!345 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!346 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!347 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!348 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!349 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!350 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!351 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!352 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!353 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!354 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!355 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!356 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!357 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!358 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!359 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!360 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !361, line: 31, baseType: !7, size: 32, elements: !362)
!361 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!362 = !{!363, !364, !365, !366, !367, !368}
!363 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!364 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!365 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!366 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!367 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!368 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!369 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !361, line: 91, baseType: !7, size: 32, elements: !370)
!370 = !{!371, !372}
!371 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!372 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!373 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !374, line: 30, baseType: !7, size: 32, elements: !375)
!374 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!375 = !{!376, !377, !378, !379}
!376 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!377 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!378 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!379 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!380 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !381, line: 363, baseType: !7, size: 32, elements: !382)
!381 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!382 = !{!383, !384, !385}
!383 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!384 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!385 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!386 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !381, line: 355, baseType: !7, size: 32, elements: !387)
!387 = !{!388, !389, !390}
!388 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!389 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!390 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!391 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !392, line: 474, baseType: !7, size: 32, elements: !393)
!392 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!393 = !{!394, !395}
!394 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!395 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!396 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !166, line: 280, baseType: !7, size: 32, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!398 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!399 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!400 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!401 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!402 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!403 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!404 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!405 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!406 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!407 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!408 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!409 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!410 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!411 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!412 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!413 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !166, line: 1817, baseType: !7, size: 32, elements: !415)
!415 = !{!416, !417, !418, !419, !420}
!416 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!417 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!418 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!419 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!420 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!421 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !166, line: 1805, baseType: !7, size: 32, elements: !422)
!422 = !{!423, !424, !425, !426, !427}
!423 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!424 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!425 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!426 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!427 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !429, line: 104, baseType: !7, size: 32, elements: !430)
!429 = !DIFile(filename: "./pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!430 = !{!431, !432, !433}
!431 = !DIEnumerator(name: "pp_none", value: 0, isUnsigned: true)
!432 = !DIEnumerator(name: "pp_before", value: 1, isUnsigned: true)
!433 = !DIEnumerator(name: "pp_after", value: 2, isUnsigned: true)
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !429, line: 46, baseType: !7, size: 32, elements: !435)
!435 = !{!436, !437, !438}
!436 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_ONCE", value: 0, isUnsigned: true)
!437 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_NEVER", value: 1, isUnsigned: true)
!438 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE", value: 2, isUnsigned: true)
!439 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "graph_dump_types", file: !17, line: 287, baseType: !7, size: 32, elements: !440)
!440 = !{!441, !442}
!441 = !DIEnumerator(name: "no_graph", value: 0, isUnsigned: true)
!442 = !DIEnumerator(name: "vcg", value: 1, isUnsigned: true)
!443 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !444, line: 29, baseType: !7, size: 32, elements: !445)
!444 = !DIFile(filename: "./diagnostic.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!446 = !DIEnumerator(name: "DK_UNSPECIFIED", value: 0, isUnsigned: true)
!447 = !DIEnumerator(name: "DK_IGNORED", value: 1, isUnsigned: true)
!448 = !DIEnumerator(name: "DK_FATAL", value: 2, isUnsigned: true)
!449 = !DIEnumerator(name: "DK_ICE", value: 3, isUnsigned: true)
!450 = !DIEnumerator(name: "DK_ERROR", value: 4, isUnsigned: true)
!451 = !DIEnumerator(name: "DK_SORRY", value: 5, isUnsigned: true)
!452 = !DIEnumerator(name: "DK_WARNING", value: 6, isUnsigned: true)
!453 = !DIEnumerator(name: "DK_ANACHRONISM", value: 7, isUnsigned: true)
!454 = !DIEnumerator(name: "DK_NOTE", value: 8, isUnsigned: true)
!455 = !DIEnumerator(name: "DK_DEBUG", value: 9, isUnsigned: true)
!456 = !DIEnumerator(name: "DK_PEDWARN", value: 10, isUnsigned: true)
!457 = !DIEnumerator(name: "DK_PERMERROR", value: 11, isUnsigned: true)
!458 = !DIEnumerator(name: "DK_LAST_DIAGNOSTIC_KIND", value: 12, isUnsigned: true)
!459 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !460, line: 56, baseType: !7, size: 32, elements: !461)
!460 = !DIFile(filename: "./target.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!461 = !{!462, !463, !464, !465, !466}
!462 = !DIEnumerator(name: "SWITCH_TYPE_PASSED", value: 0, isUnsigned: true)
!463 = !DIEnumerator(name: "SWITCH_TYPE_ENABLED", value: 1, isUnsigned: true)
!464 = !DIEnumerator(name: "SWITCH_TYPE_DESCRIPTIVE", value: 2, isUnsigned: true)
!465 = !DIEnumerator(name: "SWITCH_TYPE_LINE_START", value: 3, isUnsigned: true)
!466 = !DIEnumerator(name: "SWITCH_TYPE_LINE_END", value: 4, isUnsigned: true)
!467 = !{!468, !469, !470, !471, !474, !475, !477, !478, !165, !479, !472, !1898, !1899, !1904, !604}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!470 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!477 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!478 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !6, line: 56, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !166, line: 3371, size: 1792, elements: !482)
!482 = !{!483, !516, !522, !534, !553, !564, !569, !578, !584, !597, !609, !647, !1193, !1221, !1229, !1230, !1235, !1244, !1250, !1255, !1259, !1263, !1551, !1598, !1604, !1610, !1617, !1628, !1642, !1659, !1671, !1693, !1708, !1880}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !481, file: !166, line: 3372, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !166, line: 360, size: 64, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !484, file: !166, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !484, file: !166, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !484, file: !166, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !484, file: !166, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !484, file: !166, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !484, file: !166, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !484, file: !166, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !484, file: !166, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !484, file: !166, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !484, file: !166, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !484, file: !166, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !484, file: !166, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !484, file: !166, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !484, file: !166, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !484, file: !166, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !484, file: !166, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !484, file: !166, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !484, file: !166, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !484, file: !166, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !484, file: !166, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !484, file: !166, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !484, file: !166, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !484, file: !166, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !484, file: !166, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !484, file: !166, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !484, file: !166, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !484, file: !166, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !484, file: !166, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !484, file: !166, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !484, file: !166, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !481, file: !166, line: 3373, baseType: !517, size: 192)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !166, line: 402, size: 192, elements: !518)
!518 = !{!519, !520, !521}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !517, file: !166, line: 403, baseType: !484, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !517, file: !166, line: 404, baseType: !479, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !517, file: !166, line: 405, baseType: !479, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !481, file: !166, line: 3374, baseType: !523, size: 320)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !166, line: 1384, size: 320, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !523, file: !166, line: 1385, baseType: !517, size: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !523, file: !166, line: 1386, baseType: !527, size: 128, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !528, line: 58, baseType: !529)
!528 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !528, line: 54, size: 128, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !529, file: !528, line: 56, baseType: !478, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !529, file: !528, line: 57, baseType: !533, size: 64, offset: 64)
!533 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !481, file: !166, line: 3375, baseType: !535, size: 256)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !166, line: 1397, size: 256, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !535, file: !166, line: 1398, baseType: !517, size: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !535, file: !166, line: 1399, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !541, line: 52, size: 256, elements: !542)
!541 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!542 = !{!543, !544, !545, !546, !547, !548, !549}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !540, file: !541, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !540, file: !541, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !540, file: !541, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !540, file: !541, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !540, file: !541, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !540, file: !541, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !540, file: !541, line: 62, baseType: !550, size: 192, offset: 64)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 192, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 3)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !481, file: !166, line: 3376, baseType: !554, size: 256)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !166, line: 1408, size: 256, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !554, file: !166, line: 1409, baseType: !517, size: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !554, file: !166, line: 1410, baseType: !558, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !560, line: 27, size: 192, elements: !561)
!560 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !559, file: !560, line: 29, baseType: !527, size: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !559, file: !560, line: 30, baseType: !37, size: 32, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !481, file: !166, line: 3377, baseType: !565, size: 256)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !166, line: 1437, size: 256, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !565, file: !166, line: 1438, baseType: !517, size: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !565, file: !166, line: 1439, baseType: !479, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !481, file: !166, line: 3378, baseType: !570, size: 256)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !166, line: 1418, size: 256, elements: !571)
!571 = !{!572, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !570, file: !166, line: 1419, baseType: !517, size: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !570, file: !166, line: 1420, baseType: !470, size: 32, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !570, file: !166, line: 1421, baseType: !575, size: 8, offset: 224)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 8, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 1)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !481, file: !166, line: 3379, baseType: !579, size: 320)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !166, line: 1428, size: 320, elements: !580)
!580 = !{!581, !582, !583}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !579, file: !166, line: 1429, baseType: !517, size: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !579, file: !166, line: 1430, baseType: !479, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !579, file: !166, line: 1431, baseType: !479, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !481, file: !166, line: 3380, baseType: !585, size: 320)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !166, line: 1460, size: 320, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !585, file: !166, line: 1461, baseType: !517, size: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !585, file: !166, line: 1462, baseType: !589, size: 128, offset: 192)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !590, line: 31, size: 128, elements: !591)
!590 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!591 = !{!592, !595, !596}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !589, file: !590, line: 32, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !589, file: !590, line: 33, baseType: !7, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !589, file: !590, line: 34, baseType: !7, size: 32, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !481, file: !166, line: 3381, baseType: !598, size: 384)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !166, line: 2507, size: 384, elements: !599)
!599 = !{!600, !601, !606, !607, !608}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !598, file: !166, line: 2508, baseType: !517, size: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !598, file: !166, line: 2509, baseType: !602, size: 32, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !603, line: 58, baseType: !604)
!603 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !605, line: 44, baseType: !7)
!605 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!606 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !598, file: !166, line: 2510, baseType: !7, size: 32, offset: 224)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !166, line: 2511, baseType: !479, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !598, file: !166, line: 2512, baseType: !479, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !481, file: !166, line: 3382, baseType: !610, size: 896)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !166, line: 2652, size: 896, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !610, file: !166, line: 2653, baseType: !598, size: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !610, file: !166, line: 2654, baseType: !479, size: 64, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !610, file: !166, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !610, file: !166, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !610, file: !166, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !610, file: !166, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !610, file: !166, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !610, file: !166, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !610, file: !166, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !610, file: !166, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !610, file: !166, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !610, file: !166, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !610, file: !166, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !610, file: !166, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !610, file: !166, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !610, file: !166, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !610, file: !166, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !610, file: !166, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !610, file: !166, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !610, file: !166, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !610, file: !166, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !610, file: !166, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !610, file: !166, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !610, file: !166, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !610, file: !166, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !610, file: !166, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !610, file: !166, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !610, file: !166, line: 2703, baseType: !7, size: 32, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !610, file: !166, line: 2705, baseType: !479, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !610, file: !166, line: 2706, baseType: !479, size: 64, offset: 640)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !610, file: !166, line: 2707, baseType: !479, size: 64, offset: 704)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !610, file: !166, line: 2708, baseType: !479, size: 64, offset: 768)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !610, file: !166, line: 2711, baseType: !645, size: 64, offset: 832)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !166, line: 2711, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !481, file: !166, line: 3383, baseType: !648, size: 960)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !166, line: 2756, size: 960, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !648, file: !166, line: 2757, baseType: !610, size: 896)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !648, file: !166, line: 2758, baseType: !652, size: 64, offset: 896)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !6, line: 50, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !655, line: 240, size: 384, elements: !656)
!655 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !654, file: !655, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !654, file: !655, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !654, file: !655, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !654, file: !655, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !654, file: !655, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !654, file: !655, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !654, file: !655, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !654, file: !655, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !654, file: !655, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !654, file: !655, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !654, file: !655, line: 321, baseType: !668, size: 320, offset: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !655, line: 315, size: 320, elements: !669)
!669 = !{!670, !1126, !1128, !1191, !1192}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !668, file: !655, line: 316, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 64, elements: !576)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !655, line: 183, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !655, line: 166, size: 64, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !687, !688, !700, !703, !763, !764, !1103, !1116, !1123}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !673, file: !655, line: 168, baseType: !470, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !673, file: !655, line: 169, baseType: !7, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !673, file: !655, line: 170, baseType: !475, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !673, file: !655, line: 171, baseType: !652, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !673, file: !655, line: 172, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !6, line: 53, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !655, line: 359, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !682, file: !655, line: 360, baseType: !470, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !682, file: !655, line: 361, baseType: !686, size: 64, offset: 64)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 64, elements: !576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !673, file: !655, line: 173, baseType: !37, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !673, file: !655, line: 174, baseType: !689, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !655, line: 133, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !655, line: 115, size: 32, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !690, file: !655, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !690, file: !655, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !690, file: !655, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !690, file: !655, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !690, file: !655, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !690, file: !655, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !690, file: !655, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !690, file: !655, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !673, file: !655, line: 175, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !655, line: 175, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !673, file: !655, line: 176, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !706, line: 75, size: 256, elements: !707)
!706 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!707 = !{!708, !722, !723, !724}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !705, file: !706, line: 76, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !706, line: 68, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !706, line: 63, size: 320, elements: !712)
!712 = !{!713, !715, !716, !717}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !706, line: 64, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !711, file: !706, line: 65, baseType: !714, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !711, file: !706, line: 66, baseType: !7, size: 32, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !711, file: !706, line: 67, baseType: !718, size: 128, offset: 192)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 128, elements: !720)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !706, line: 29, baseType: !478)
!720 = !{!721}
!721 = !DISubrange(count: 2)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !705, file: !706, line: 77, baseType: !709, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !705, file: !706, line: 78, baseType: !7, size: 32, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !705, file: !706, line: 79, baseType: !725, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !706, line: 49, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !706, line: 45, size: 832, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !727, file: !706, line: 46, baseType: !714, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !727, file: !706, line: 47, baseType: !704, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !727, file: !706, line: 48, baseType: !732, size: 704, offset: 128)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !733, line: 164, size: 704, elements: !734)
!733 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!734 = !{!735, !736, !746, !747, !748, !749, !750, !751, !755, !759, !760, !761, !762}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !732, file: !733, line: 166, baseType: !533, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !732, file: !733, line: 167, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !733, line: 157, size: 192, elements: !739)
!739 = !{!740, !741, !742}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !738, file: !733, line: 159, baseType: !472, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !738, file: !733, line: 160, baseType: !737, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !738, file: !733, line: 161, baseType: !743, size: 32, offset: 128)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 32, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 4)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !732, file: !733, line: 168, baseType: !472, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !732, file: !733, line: 169, baseType: !472, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !732, file: !733, line: 170, baseType: !472, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !732, file: !733, line: 171, baseType: !533, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !732, file: !733, line: 172, baseType: !470, size: 32, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !732, file: !733, line: 176, baseType: !752, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!737, !474, !533}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !732, file: !733, line: 177, baseType: !756, size: 64, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !474, !737}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !732, file: !733, line: 178, baseType: !474, size: 64, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !732, file: !733, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !732, file: !733, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !732, file: !733, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !673, file: !655, line: 177, baseType: !479, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !673, file: !655, line: 178, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !381, line: 217, size: 832, elements: !767)
!767 = !{!768, !1015, !1016, !1017, !1073, !1077, !1078, !1079, !1097, !1098, !1099, !1100, !1101, !1102}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !766, file: !381, line: 219, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !381, line: 151, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !381, line: 151, size: 128, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !771, file: !381, line: 151, baseType: !774, size: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !381, line: 150, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !381, line: 150, size: 128, elements: !776)
!776 = !{!777, !778, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !775, file: !381, line: 150, baseType: !7, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !775, file: !381, line: 150, baseType: !7, size: 32, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !775, file: !381, line: 150, baseType: !780, size: 64, offset: 64)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 64, elements: !576)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !6, line: 108, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !381, line: 122, size: 512, elements: !784)
!784 = !{!785, !786, !787, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !783, file: !381, line: 124, baseType: !765, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !783, file: !381, line: 125, baseType: !765, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !783, file: !381, line: 131, baseType: !788, size: 64, offset: 128)
!788 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !381, line: 128, size: 64, elements: !789)
!789 = !{!790, !1006}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !788, file: !381, line: 129, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !6, line: 66, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !794, line: 143, size: 192, elements: !795)
!794 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!795 = !{!796, !1004, !1005}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !793, file: !794, line: 145, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !6, line: 69, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !794, line: 136, size: 192, elements: !800)
!800 = !{!801, !1002, !1003}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !799, file: !794, line: 137, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !6, line: 58, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !794, line: 737, size: 768, elements: !805)
!805 = !{!806, !823, !857, !863, !868, !873, !880, !886, !892, !897, !911, !916, !922, !927, !937, !942, !960, !967, !974, !980, !985, !991, !997}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !804, file: !794, line: 738, baseType: !807, size: 256)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !794, line: 271, size: 256, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !807, file: !794, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !807, file: !794, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !807, file: !794, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !807, file: !794, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !807, file: !794, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !807, file: !794, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !807, file: !794, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !807, file: !794, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !807, file: !794, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !807, file: !794, line: 312, baseType: !7, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !807, file: !794, line: 316, baseType: !602, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !807, file: !794, line: 319, baseType: !7, size: 32, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !807, file: !794, line: 323, baseType: !765, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !807, file: !794, line: 327, baseType: !479, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !804, file: !794, line: 739, baseType: !824, size: 448)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !794, line: 350, size: 448, elements: !825)
!825 = !{!826, !855}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !824, file: !794, line: 353, baseType: !827, size: 384)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !794, line: 333, size: 384, elements: !828)
!828 = !{!829, !830, !838}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !827, file: !794, line: 336, baseType: !807, size: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !827, file: !794, line: 343, baseType: !831, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !833, line: 37, size: 128, elements: !834)
!833 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !832, file: !833, line: 39, baseType: !831, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !832, file: !833, line: 40, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !827, file: !794, line: 344, baseType: !839, size: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !833, line: 45, size: 320, elements: !841)
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !840, file: !833, line: 47, baseType: !839, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !840, file: !833, line: 48, baseType: !844, size: 256, offset: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !166, line: 1883, size: 256, elements: !845)
!845 = !{!846, !848, !849, !854}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !844, file: !166, line: 1884, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !844, file: !166, line: 1885, baseType: !847, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !844, file: !166, line: 1891, baseType: !850, size: 64, offset: 128)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !166, line: 1891, size: 64, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !850, file: !166, line: 1891, baseType: !802, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !850, file: !166, line: 1891, baseType: !479, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !844, file: !166, line: 1892, baseType: !837, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !824, file: !794, line: 359, baseType: !856, size: 64, offset: 384)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 64, elements: !576)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !804, file: !794, line: 740, baseType: !858, size: 512)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !794, line: 365, size: 512, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !858, file: !794, line: 368, baseType: !827, size: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !858, file: !794, line: 373, baseType: !479, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !858, file: !794, line: 374, baseType: !479, size: 64, offset: 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !804, file: !794, line: 741, baseType: !864, size: 576)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !794, line: 380, size: 576, elements: !865)
!865 = !{!866, !867}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !864, file: !794, line: 383, baseType: !858, size: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !864, file: !794, line: 389, baseType: !856, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !804, file: !794, line: 742, baseType: !869, size: 320)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !794, line: 395, size: 320, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !869, file: !794, line: 397, baseType: !807, size: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !869, file: !794, line: 400, baseType: !791, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !804, file: !794, line: 743, baseType: !874, size: 448)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !794, line: 406, size: 448, elements: !875)
!875 = !{!876, !877, !878, !879}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !874, file: !794, line: 408, baseType: !807, size: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !874, file: !794, line: 412, baseType: !479, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !874, file: !794, line: 420, baseType: !479, size: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !874, file: !794, line: 423, baseType: !791, size: 64, offset: 384)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !804, file: !794, line: 744, baseType: !881, size: 384)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !794, line: 429, size: 384, elements: !882)
!882 = !{!883, !884, !885}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !881, file: !794, line: 431, baseType: !807, size: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !881, file: !794, line: 434, baseType: !479, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !881, file: !794, line: 437, baseType: !791, size: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !804, file: !794, line: 745, baseType: !887, size: 384)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !794, line: 443, size: 384, elements: !888)
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !887, file: !794, line: 445, baseType: !807, size: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !887, file: !794, line: 449, baseType: !479, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !887, file: !794, line: 453, baseType: !791, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !804, file: !794, line: 746, baseType: !893, size: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !794, line: 459, size: 320, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !893, file: !794, line: 461, baseType: !807, size: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !893, file: !794, line: 464, baseType: !479, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !804, file: !794, line: 747, baseType: !898, size: 768)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !794, line: 469, size: 768, elements: !899)
!899 = !{!900, !901, !902, !903, !904}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !898, file: !794, line: 471, baseType: !807, size: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !898, file: !794, line: 474, baseType: !7, size: 32, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !898, file: !794, line: 475, baseType: !7, size: 32, offset: 288)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !898, file: !794, line: 478, baseType: !479, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !898, file: !794, line: 481, baseType: !905, size: 384, offset: 384)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 384, elements: !576)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !166, line: 1917, size: 384, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !906, file: !166, line: 1920, baseType: !844, size: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !906, file: !166, line: 1921, baseType: !479, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !906, file: !166, line: 1922, baseType: !602, size: 32, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !804, file: !794, line: 748, baseType: !912, size: 320)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !794, line: 487, size: 320, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !912, file: !794, line: 490, baseType: !807, size: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !912, file: !794, line: 494, baseType: !470, size: 32, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !804, file: !794, line: 749, baseType: !917, size: 384)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !794, line: 500, size: 384, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !917, file: !794, line: 502, baseType: !807, size: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !917, file: !794, line: 506, baseType: !791, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !917, file: !794, line: 510, baseType: !791, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !804, file: !794, line: 750, baseType: !923, size: 320)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !794, line: 529, size: 320, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !923, file: !794, line: 531, baseType: !807, size: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !923, file: !794, line: 540, baseType: !791, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !804, file: !794, line: 751, baseType: !928, size: 704)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !794, line: 546, size: 704, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !936}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !928, file: !794, line: 549, baseType: !858, size: 512)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !928, file: !794, line: 553, baseType: !475, size: 64, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !928, file: !794, line: 557, baseType: !469, size: 8, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !928, file: !794, line: 558, baseType: !469, size: 8, offset: 584)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !928, file: !794, line: 559, baseType: !469, size: 8, offset: 592)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !928, file: !794, line: 560, baseType: !469, size: 8, offset: 600)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !928, file: !794, line: 566, baseType: !856, size: 64, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !804, file: !794, line: 752, baseType: !938, size: 384)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !794, line: 571, size: 384, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !938, file: !794, line: 573, baseType: !869, size: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !938, file: !794, line: 577, baseType: !479, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !804, file: !794, line: 753, baseType: !943, size: 576)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !794, line: 600, size: 576, elements: !944)
!944 = !{!945, !946, !947, !950, !959}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !943, file: !794, line: 602, baseType: !869, size: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !943, file: !794, line: 605, baseType: !479, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !943, file: !794, line: 609, baseType: !948, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !949, line: 46, baseType: !478)
!949 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!950 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !943, file: !794, line: 612, baseType: !951, size: 64, offset: 448)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !794, line: 581, size: 320, elements: !953)
!953 = !{!954, !955, !956, !957, !958}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !952, file: !794, line: 583, baseType: !165, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !952, file: !794, line: 586, baseType: !479, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !952, file: !794, line: 589, baseType: !479, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !952, file: !794, line: 592, baseType: !479, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !952, file: !794, line: 595, baseType: !479, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !943, file: !794, line: 616, baseType: !791, size: 64, offset: 512)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !804, file: !794, line: 754, baseType: !961, size: 512)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !794, line: 622, size: 512, elements: !962)
!962 = !{!963, !964, !965, !966}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !961, file: !794, line: 624, baseType: !869, size: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !961, file: !794, line: 628, baseType: !479, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !961, file: !794, line: 632, baseType: !479, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !961, file: !794, line: 636, baseType: !479, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !804, file: !794, line: 755, baseType: !968, size: 704)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !794, line: 642, size: 704, elements: !969)
!969 = !{!970, !971, !972, !973}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !968, file: !794, line: 644, baseType: !961, size: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !968, file: !794, line: 648, baseType: !479, size: 64, offset: 512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !968, file: !794, line: 652, baseType: !479, size: 64, offset: 576)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !968, file: !794, line: 653, baseType: !479, size: 64, offset: 640)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !804, file: !794, line: 756, baseType: !975, size: 448)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !794, line: 663, size: 448, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !975, file: !794, line: 665, baseType: !869, size: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !975, file: !794, line: 668, baseType: !479, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !975, file: !794, line: 673, baseType: !479, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !804, file: !794, line: 757, baseType: !981, size: 384)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !794, line: 694, size: 384, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !981, file: !794, line: 696, baseType: !869, size: 320)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !981, file: !794, line: 699, baseType: !479, size: 64, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !804, file: !794, line: 758, baseType: !986, size: 384)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !794, line: 681, size: 384, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !986, file: !794, line: 683, baseType: !807, size: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !986, file: !794, line: 686, baseType: !479, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !986, file: !794, line: 689, baseType: !479, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !804, file: !794, line: 759, baseType: !992, size: 384)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !794, line: 707, size: 384, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !992, file: !794, line: 709, baseType: !807, size: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !992, file: !794, line: 712, baseType: !479, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !992, file: !794, line: 712, baseType: !479, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !804, file: !794, line: 760, baseType: !998, size: 320)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !794, line: 718, size: 320, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !998, file: !794, line: 720, baseType: !807, size: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !998, file: !794, line: 723, baseType: !479, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !799, file: !794, line: 138, baseType: !798, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !799, file: !794, line: 139, baseType: !798, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !793, file: !794, line: 146, baseType: !797, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !793, file: !794, line: 152, baseType: !791, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !788, file: !381, line: 130, baseType: !652, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !783, file: !381, line: 134, baseType: !474, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !783, file: !381, line: 137, baseType: !479, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !783, file: !381, line: 138, baseType: !602, size: 32, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !783, file: !381, line: 142, baseType: !7, size: 32, offset: 352)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !381, line: 144, baseType: !470, size: 32, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !783, file: !381, line: 145, baseType: !470, size: 32, offset: 416)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !783, file: !381, line: 146, baseType: !1014, size: 64, offset: 448)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !381, line: 119, baseType: !533)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !766, file: !381, line: 220, baseType: !769, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !766, file: !381, line: 223, baseType: !474, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !766, file: !381, line: 226, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !361, line: 100, size: 1216, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1030, !1031, !1032, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1063, !1071, !1072}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1019, file: !361, line: 102, baseType: !470, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1019, file: !361, line: 105, baseType: !7, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1019, file: !361, line: 108, baseType: !765, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1019, file: !361, line: 111, baseType: !765, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1019, file: !361, line: 114, baseType: !1026, size: 64, offset: 192)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !361, line: 41, size: 64, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1026, file: !361, line: 42, baseType: !360, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1026, file: !361, line: 43, baseType: !7, size: 32, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1019, file: !361, line: 117, baseType: !7, size: 32, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1019, file: !361, line: 120, baseType: !7, size: 32, offset: 288)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1019, file: !361, line: 123, baseType: !1033, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !361, line: 87, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !361, line: 87, size: 128, elements: !1036)
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1035, file: !361, line: 87, baseType: !1038, size: 128)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !361, line: 85, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !361, line: 85, size: 128, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1039, file: !361, line: 85, baseType: !7, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1039, file: !361, line: 85, baseType: !7, size: 32, offset: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1039, file: !361, line: 85, baseType: !1044, size: 64, offset: 64)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1045, size: 64, elements: !576)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !361, line: 84, baseType: !1018)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1019, file: !361, line: 126, baseType: !1018, size: 64, offset: 384)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1019, file: !361, line: 129, baseType: !1018, size: 64, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1019, file: !361, line: 132, baseType: !474, size: 64, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1019, file: !361, line: 139, baseType: !479, size: 64, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1019, file: !361, line: 143, baseType: !527, size: 128, offset: 640)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1019, file: !361, line: 146, baseType: !527, size: 128, offset: 768)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1019, file: !361, line: 148, baseType: !469, size: 8, offset: 896)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1019, file: !361, line: 149, baseType: !469, size: 8, offset: 904)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1019, file: !361, line: 153, baseType: !369, size: 32, offset: 928)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1019, file: !361, line: 156, baseType: !1056, size: 64, offset: 960)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !361, line: 48, size: 320, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1057, file: !361, line: 50, baseType: !802, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1057, file: !361, line: 59, baseType: !527, size: 128, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1057, file: !361, line: 64, baseType: !469, size: 8, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1057, file: !361, line: 67, baseType: !1056, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1019, file: !361, line: 159, baseType: !1064, size: 64, offset: 1024)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !361, line: 72, size: 256, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1065, file: !361, line: 74, baseType: !782, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1065, file: !361, line: 77, baseType: !1064, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1065, file: !361, line: 78, baseType: !1064, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1065, file: !361, line: 81, baseType: !1064, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1019, file: !361, line: 162, baseType: !469, size: 8, offset: 1088)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1019, file: !361, line: 166, baseType: !479, size: 64, offset: 1152)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !766, file: !381, line: 229, baseType: !1074, size: 128, offset: 256)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, size: 128, elements: !720)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !381, line: 229, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !766, file: !381, line: 232, baseType: !765, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !766, file: !381, line: 233, baseType: !765, size: 64, offset: 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !766, file: !381, line: 238, baseType: !1080, size: 64, offset: 512)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !381, line: 235, size: 64, elements: !1081)
!1081 = !{!1082, !1088}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1080, file: !381, line: 236, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !381, line: 273, size: 128, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1084, file: !381, line: 275, baseType: !791, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1084, file: !381, line: 278, baseType: !791, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1080, file: !381, line: 237, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !381, line: 259, size: 320, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1090, file: !381, line: 261, baseType: !652, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1090, file: !381, line: 262, baseType: !652, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1090, file: !381, line: 266, baseType: !652, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1090, file: !381, line: 267, baseType: !652, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1090, file: !381, line: 270, baseType: !470, size: 32, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !766, file: !381, line: 241, baseType: !1014, size: 64, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !766, file: !381, line: 244, baseType: !470, size: 32, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !766, file: !381, line: 247, baseType: !470, size: 32, offset: 672)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !766, file: !381, line: 250, baseType: !470, size: 32, offset: 704)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !766, file: !381, line: 253, baseType: !470, size: 32, offset: 736)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !381, line: 256, baseType: !470, size: 32, offset: 768)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !673, file: !655, line: 179, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !655, line: 150, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !655, line: 142, size: 320, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1114, !1115}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1106, file: !655, line: 144, baseType: !479, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1106, file: !655, line: 145, baseType: !652, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1106, file: !655, line: 146, baseType: !652, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1106, file: !655, line: 147, baseType: !1112, size: 32, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1113, line: 31, baseType: !470)
!1113 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1106, file: !655, line: 148, baseType: !7, size: 32, offset: 224)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1106, file: !655, line: 149, baseType: !469, size: 8, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !673, file: !655, line: 180, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !655, line: 162, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !655, line: 159, size: 128, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1119, file: !655, line: 160, baseType: !479, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1119, file: !655, line: 161, baseType: !533, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !673, file: !655, line: 181, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !655, line: 181, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !668, file: !655, line: 317, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 64, elements: !576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !668, file: !655, line: 318, baseType: !1129, size: 320)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !655, line: 188, size: 320, elements: !1130)
!1130 = !{!1131, !1133, !1190}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1129, file: !655, line: 190, baseType: !1132, size: 192)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 192, elements: !551)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1129, file: !655, line: 193, baseType: !1134, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !655, line: 206, size: 320, elements: !1136)
!1136 = !{!1137, !1175, !1176, !1177, !1189}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1135, file: !655, line: 208, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !6, line: 62, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1141, line: 538, size: 256, elements: !1142)
!1141 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1142 = !{!1143, !1147, !1153, !1166}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1140, file: !1141, line: 539, baseType: !1144, size: 32)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1141, line: 482, size: 32, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1144, file: !1141, line: 484, baseType: !7, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1140, file: !1141, line: 540, baseType: !1148, size: 192)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1141, line: 488, size: 192, elements: !1149)
!1149 = !{!1150, !1151, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1148, file: !1141, line: 489, baseType: !1144, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1148, file: !1141, line: 492, baseType: !475, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1148, file: !1141, line: 496, baseType: !479, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1140, file: !1141, line: 541, baseType: !1154, size: 256)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1141, line: 504, size: 256, elements: !1155)
!1155 = !{!1156, !1157, !1164, !1165}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1154, file: !1141, line: 505, baseType: !1144, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1154, file: !1141, line: 509, baseType: !1158, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1141, line: 501, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1154, file: !1141, line: 510, baseType: !1162, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1154, file: !1141, line: 513, baseType: !1138, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1140, file: !1141, line: 542, baseType: !1167, size: 128)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1141, line: 530, size: 128, elements: !1168)
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1167, file: !1141, line: 531, baseType: !1144, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1167, file: !1141, line: 534, baseType: !1171, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1141, line: 525, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!469, !479, !475, !478, !478}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1135, file: !655, line: 211, baseType: !7, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1135, file: !655, line: 214, baseType: !533, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1135, file: !655, line: 224, baseType: !1178, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !655, line: 202, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !655, line: 202, size: 128, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1180, file: !655, line: 202, baseType: !1183, size: 128)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !655, line: 200, baseType: !1184)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !655, line: 200, size: 128, elements: !1185)
!1185 = !{!1186, !1187, !1188}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1184, file: !655, line: 200, baseType: !7, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1184, file: !655, line: 200, baseType: !7, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1184, file: !655, line: 200, baseType: !686, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1135, file: !655, line: 234, baseType: !1178, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1129, file: !655, line: 197, baseType: !533, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !668, file: !655, line: 319, baseType: !540, size: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !668, file: !655, line: 320, baseType: !559, size: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !481, file: !166, line: 3384, baseType: !1194, size: 1472)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !166, line: 3114, size: 1472, elements: !1195)
!1195 = !{!1196, !1217, !1218, !1219, !1220}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1194, file: !166, line: 3115, baseType: !1197, size: 1216)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !166, line: 2984, size: 1216, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1197, file: !166, line: 2985, baseType: !648, size: 960)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1197, file: !166, line: 2986, baseType: !479, size: 64, offset: 960)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1197, file: !166, line: 2987, baseType: !479, size: 64, offset: 1024)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1197, file: !166, line: 2988, baseType: !479, size: 64, offset: 1088)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1197, file: !166, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1197, file: !166, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1197, file: !166, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1197, file: !166, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1197, file: !166, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1197, file: !166, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1197, file: !166, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1197, file: !166, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1197, file: !166, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1197, file: !166, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1197, file: !166, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1197, file: !166, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1197, file: !166, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1197, file: !166, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1194, file: !166, line: 3117, baseType: !479, size: 64, offset: 1216)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1194, file: !166, line: 3119, baseType: !479, size: 64, offset: 1280)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1194, file: !166, line: 3121, baseType: !479, size: 64, offset: 1344)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1194, file: !166, line: 3123, baseType: !479, size: 64, offset: 1408)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !481, file: !166, line: 3385, baseType: !1222, size: 1088)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !166, line: 2874, size: 1088, elements: !1223)
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1222, file: !166, line: 2875, baseType: !648, size: 960)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1222, file: !166, line: 2876, baseType: !652, size: 64, offset: 960)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1222, file: !166, line: 2877, baseType: !1227, size: 64, offset: 1024)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !166, line: 2856, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !481, file: !166, line: 3386, baseType: !1197, size: 1216)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !481, file: !166, line: 3387, baseType: !1231, size: 1280)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !166, line: 3093, size: 1280, elements: !1232)
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1231, file: !166, line: 3094, baseType: !1197, size: 1216)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1231, file: !166, line: 3095, baseType: !1227, size: 64, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !481, file: !166, line: 3388, baseType: !1236, size: 1216)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !166, line: 2824, size: 1216, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1236, file: !166, line: 2825, baseType: !610, size: 896)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1236, file: !166, line: 2827, baseType: !479, size: 64, offset: 896)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1236, file: !166, line: 2828, baseType: !479, size: 64, offset: 960)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1236, file: !166, line: 2829, baseType: !479, size: 64, offset: 1024)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1236, file: !166, line: 2830, baseType: !479, size: 64, offset: 1088)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1236, file: !166, line: 2831, baseType: !479, size: 64, offset: 1152)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !481, file: !166, line: 3389, baseType: !1245, size: 1024)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !166, line: 2850, size: 1024, elements: !1246)
!1246 = !{!1247, !1248, !1249}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1245, file: !166, line: 2851, baseType: !648, size: 960)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1245, file: !166, line: 2852, baseType: !470, size: 32, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1245, file: !166, line: 2853, baseType: !470, size: 32, offset: 992)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !481, file: !166, line: 3390, baseType: !1251, size: 1024)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !166, line: 2857, size: 1024, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1251, file: !166, line: 2858, baseType: !648, size: 960)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1251, file: !166, line: 2859, baseType: !1227, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !481, file: !166, line: 3391, baseType: !1256, size: 960)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !166, line: 2862, size: 960, elements: !1257)
!1257 = !{!1258}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1256, file: !166, line: 2863, baseType: !648, size: 960)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !481, file: !166, line: 3392, baseType: !1260, size: 1472)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !166, line: 3304, size: 1472, elements: !1261)
!1261 = !{!1262}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1260, file: !166, line: 3305, baseType: !1194, size: 1472)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !481, file: !166, line: 3393, baseType: !1264, size: 1792)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !166, line: 3248, size: 1792, elements: !1265)
!1265 = !{!1266, !1267, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1264, file: !166, line: 3249, baseType: !1194, size: 1472)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1264, file: !166, line: 3251, baseType: !1268, size: 64, offset: 1472)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1270, line: 463, size: 1152, elements: !1271)
!1270 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1271 = !{!1272, !1431, !1462, !1463, !1466, !1474, !1475, !1476, !1477, !1478, !1479, !1503, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1269, file: !1270, line: 464, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !374, line: 194, size: 384, elements: !1275)
!1275 = !{!1276, !1325, !1338, !1352, !1400, !1412}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1274, file: !374, line: 197, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !374, line: 182, baseType: !1278)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !374, line: 116, size: 704, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1313, !1322, !1323, !1324}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1279, file: !374, line: 119, baseType: !1278, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1279, file: !374, line: 122, baseType: !1278, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1279, file: !374, line: 123, baseType: !1278, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1279, file: !374, line: 126, baseType: !470, size: 32, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1279, file: !374, line: 129, baseType: !373, size: 32, offset: 224)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1279, file: !374, line: 165, baseType: !1287, size: 192, offset: 256)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !374, line: 132, size: 192, elements: !1288)
!1288 = !{!1289, !1302, !1308}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1287, file: !374, line: 137, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !374, line: 133, size: 128, elements: !1291)
!1291 = !{!1292, !1301}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1290, file: !374, line: 135, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !374, line: 93, size: 320, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1294, file: !374, line: 96, baseType: !1293, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1294, file: !374, line: 97, baseType: !1293, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1294, file: !374, line: 101, baseType: !479, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1294, file: !374, line: 106, baseType: !479, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1294, file: !374, line: 111, baseType: !479, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1290, file: !374, line: 136, baseType: !1293, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1287, file: !374, line: 151, baseType: !1303, size: 192)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !374, line: 139, size: 192, elements: !1304)
!1304 = !{!1305, !1306, !1307}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1303, file: !374, line: 141, baseType: !479, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1303, file: !374, line: 145, baseType: !479, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1303, file: !374, line: 150, baseType: !470, size: 32, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1287, file: !374, line: 164, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !374, line: 153, size: 128, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1309, file: !374, line: 161, baseType: !479, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1309, file: !374, line: 163, baseType: !602, size: 32, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1279, file: !374, line: 168, baseType: !1314, size: 64, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !374, line: 67, size: 320, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1315, file: !374, line: 70, baseType: !1314, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1315, file: !374, line: 73, baseType: !1278, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1315, file: !374, line: 78, baseType: !479, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1315, file: !374, line: 85, baseType: !652, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1315, file: !374, line: 88, baseType: !470, size: 32, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1279, file: !374, line: 173, baseType: !652, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1279, file: !374, line: 173, baseType: !652, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1279, file: !374, line: 177, baseType: !469, size: 8, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1274, file: !374, line: 200, baseType: !1326, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !374, line: 185, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !374, line: 185, size: 128, elements: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1328, file: !374, line: 185, baseType: !1331, size: 128)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !374, line: 184, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !374, line: 184, size: 128, elements: !1333)
!1333 = !{!1334, !1335, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1332, file: !374, line: 184, baseType: !7, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1332, file: !374, line: 184, baseType: !7, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1332, file: !374, line: 184, baseType: !1337, size: 64, offset: 64)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1277, size: 64, elements: !576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1274, file: !374, line: 203, baseType: !1339, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !374, line: 189, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !374, line: 189, size: 128, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1341, file: !374, line: 189, baseType: !1344, size: 128)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !374, line: 188, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !374, line: 188, size: 128, elements: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1345, file: !374, line: 188, baseType: !7, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1345, file: !374, line: 188, baseType: !7, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1345, file: !374, line: 188, baseType: !1350, size: 64, offset: 64)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1351, size: 64, elements: !576)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !374, line: 180, baseType: !1314)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1274, file: !374, line: 207, baseType: !1353, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1354, line: 144, baseType: !1355)
!1354 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1354, line: 100, size: 896, elements: !1357)
!1357 = !{!1358, !1364, !1369, !1374, !1376, !1377, !1378, !1379, !1380, !1381, !1386, !1388, !1389, !1394, !1399}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1356, file: !1354, line: 102, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1354, line: 52, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!1363, !1162}
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1354, line: 47, baseType: !7)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1356, file: !1354, line: 105, baseType: !1365, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1354, line: 59, baseType: !1366)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!470, !1162, !1162}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1356, file: !1354, line: 108, baseType: !1370, size: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1354, line: 63, baseType: !1371)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !474}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1356, file: !1354, line: 111, baseType: !1375, size: 64, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1356, file: !1354, line: 114, baseType: !948, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1356, file: !1354, line: 117, baseType: !948, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1356, file: !1354, line: 120, baseType: !948, size: 64, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1356, file: !1354, line: 124, baseType: !7, size: 32, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1356, file: !1354, line: 128, baseType: !7, size: 32, offset: 480)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1356, file: !1354, line: 131, baseType: !1382, size: 64, offset: 512)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1354, line: 75, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!474, !948, !948}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1356, file: !1354, line: 132, baseType: !1387, size: 64, offset: 576)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1354, line: 78, baseType: !1371)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1356, file: !1354, line: 135, baseType: !474, size: 64, offset: 640)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1356, file: !1354, line: 136, baseType: !1390, size: 64, offset: 704)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1354, line: 82, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!474, !474, !948, !948}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1356, file: !1354, line: 137, baseType: !1395, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1354, line: 83, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !474, !474}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1356, file: !1354, line: 141, baseType: !7, size: 32, offset: 832)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1274, file: !374, line: 211, baseType: !1401, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !166, line: 183, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !166, line: 183, size: 128, elements: !1404)
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1403, file: !166, line: 183, baseType: !1406, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !166, line: 182, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !166, line: 182, size: 128, elements: !1408)
!1408 = !{!1409, !1410, !1411}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1407, file: !166, line: 182, baseType: !7, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1407, file: !166, line: 182, baseType: !7, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1407, file: !166, line: 182, baseType: !856, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1274, file: !374, line: 220, baseType: !1413, size: 64, offset: 320)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !374, line: 217, size: 64, elements: !1414)
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1413, file: !374, line: 218, baseType: !1401, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1413, file: !374, line: 219, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1419, line: 29, baseType: !1420)
!1419 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1419, line: 29, size: 96, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1420, file: !1419, line: 29, baseType: !1423, size: 96)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1419, line: 27, baseType: !1424)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1419, line: 27, size: 96, elements: !1425)
!1425 = !{!1426, !1427, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1424, file: !1419, line: 27, baseType: !7, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1424, file: !1419, line: 27, baseType: !7, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1424, file: !1419, line: 27, baseType: !1429, size: 8, offset: 64)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1430, size: 8, elements: !576)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1419, line: 26, baseType: !469)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1269, file: !1270, line: 467, baseType: !1432, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !381, line: 374, size: 640, elements: !1434)
!1434 = !{!1435, !1437, !1438, !1451, !1452, !1453, !1454, !1455, !1456, !1458, !1460, !1461}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1433, file: !381, line: 377, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !6, line: 111, baseType: !765)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1433, file: !381, line: 378, baseType: !1436, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1433, file: !381, line: 381, baseType: !1439, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !381, line: 282, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !381, line: 282, size: 128, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1441, file: !381, line: 282, baseType: !1444, size: 128)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !381, line: 281, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !381, line: 281, size: 128, elements: !1446)
!1446 = !{!1447, !1448, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1445, file: !381, line: 281, baseType: !7, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1445, file: !381, line: 281, baseType: !7, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1445, file: !381, line: 281, baseType: !1450, size: 64, offset: 64)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1436, size: 64, elements: !576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1433, file: !381, line: 384, baseType: !470, size: 32, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1433, file: !381, line: 387, baseType: !470, size: 32, offset: 224)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1433, file: !381, line: 390, baseType: !470, size: 32, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1433, file: !381, line: 394, baseType: !1439, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1433, file: !381, line: 396, baseType: !380, size: 32, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1433, file: !381, line: 399, baseType: !1457, size: 64, offset: 416)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 64, elements: !720)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1433, file: !381, line: 402, baseType: !1459, size: 64, offset: 480)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !720)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1433, file: !381, line: 406, baseType: !470, size: 32, offset: 544)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1433, file: !381, line: 409, baseType: !470, size: 32, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1269, file: !1270, line: 470, baseType: !792, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1269, file: !1270, line: 473, baseType: !1464, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1270, line: 166, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1269, file: !1270, line: 476, baseType: !1467, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !361, line: 187, size: 256, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1468, file: !361, line: 189, baseType: !470, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1468, file: !361, line: 192, baseType: !1033, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1468, file: !361, line: 197, baseType: !1353, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1468, file: !361, line: 200, baseType: !1018, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1269, file: !1270, line: 479, baseType: !1353, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1269, file: !1270, line: 484, baseType: !479, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1269, file: !1270, line: 488, baseType: !479, size: 64, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1269, file: !1270, line: 493, baseType: !479, size: 64, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1269, file: !1270, line: 496, baseType: !479, size: 64, offset: 576)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1269, file: !1270, line: 501, baseType: !1480, size: 64, offset: 640)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !392, line: 2355, size: 576, elements: !1482)
!1482 = !{!1483, !1486, !1487, !1488, !1489, !1491, !1492, !1497, !1498, !1499, !1500, !1501, !1502}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1481, file: !392, line: 2356, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !392, line: 2356, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1481, file: !392, line: 2357, baseType: !475, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1481, file: !392, line: 2358, baseType: !470, size: 32, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1481, file: !392, line: 2359, baseType: !470, size: 32, offset: 160)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1481, file: !392, line: 2360, baseType: !1490, size: 128, offset: 192)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 128, elements: !744)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1481, file: !392, line: 2364, baseType: !470, size: 32, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1481, file: !392, line: 2367, baseType: !1493, size: 128, offset: 384)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !392, line: 2349, size: 128, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1493, file: !392, line: 2351, baseType: !652, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1493, file: !392, line: 2352, baseType: !533, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1481, file: !392, line: 2371, baseType: !391, size: 32, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1481, file: !392, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1481, file: !392, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1481, file: !392, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1481, file: !392, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1481, file: !392, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1269, file: !1270, line: 504, baseType: !1504, size: 64, offset: 704)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1270, line: 504, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1269, file: !1270, line: 507, baseType: !1353, size: 64, offset: 768)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1269, file: !1270, line: 510, baseType: !470, size: 32, offset: 832)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1269, file: !1270, line: 513, baseType: !470, size: 32, offset: 864)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1269, file: !1270, line: 516, baseType: !602, size: 32, offset: 896)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1269, file: !1270, line: 519, baseType: !602, size: 32, offset: 928)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1269, file: !1270, line: 522, baseType: !7, size: 32, offset: 960)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1269, file: !1270, line: 523, baseType: !7, size: 32, offset: 992)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1269, file: !1270, line: 528, baseType: !475, size: 64, offset: 1024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1269, file: !1270, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1269, file: !1270, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1269, file: !1270, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1269, file: !1270, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1269, file: !1270, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1269, file: !1270, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1269, file: !1270, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1269, file: !1270, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1269, file: !1270, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1269, file: !1270, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1269, file: !1270, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1269, file: !1270, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1269, file: !1270, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1269, file: !1270, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1269, file: !1270, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1269, file: !1270, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1264, file: !166, line: 3254, baseType: !479, size: 64, offset: 1536)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1264, file: !166, line: 3257, baseType: !479, size: 64, offset: 1600)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1264, file: !166, line: 3258, baseType: !479, size: 64, offset: 1664)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1264, file: !166, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1264, file: !166, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1264, file: !166, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1264, file: !166, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1264, file: !166, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1264, file: !166, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1264, file: !166, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1264, file: !166, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1264, file: !166, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1264, file: !166, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1264, file: !166, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1264, file: !166, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1264, file: !166, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1264, file: !166, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1264, file: !166, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1264, file: !166, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1264, file: !166, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1264, file: !166, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !166, line: 3394, baseType: !1552, size: 1344)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !166, line: 2279, size: 1344, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1552, file: !166, line: 2280, baseType: !517, size: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1552, file: !166, line: 2281, baseType: !479, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1552, file: !166, line: 2282, baseType: !479, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1552, file: !166, line: 2283, baseType: !479, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1552, file: !166, line: 2284, baseType: !479, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1552, file: !166, line: 2285, baseType: !7, size: 32, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1552, file: !166, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1552, file: !166, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1552, file: !166, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1552, file: !166, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1552, file: !166, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1552, file: !166, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1552, file: !166, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1552, file: !166, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1552, file: !166, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1552, file: !166, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1552, file: !166, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1552, file: !166, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1552, file: !166, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1552, file: !166, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1552, file: !166, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1552, file: !166, line: 2305, baseType: !7, size: 32, offset: 512)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1552, file: !166, line: 2306, baseType: !1112, size: 32, offset: 544)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1552, file: !166, line: 2307, baseType: !479, size: 64, offset: 576)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1552, file: !166, line: 2308, baseType: !479, size: 64, offset: 640)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1552, file: !166, line: 2314, baseType: !1580, size: 64, offset: 704)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !166, line: 2309, size: 64, elements: !1581)
!1581 = !{!1582, !1583, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1580, file: !166, line: 2310, baseType: !470, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1580, file: !166, line: 2311, baseType: !475, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1580, file: !166, line: 2312, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !166, line: 2277, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1552, file: !166, line: 2315, baseType: !479, size: 64, offset: 768)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1552, file: !166, line: 2316, baseType: !479, size: 64, offset: 832)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1552, file: !166, line: 2317, baseType: !479, size: 64, offset: 896)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1552, file: !166, line: 2318, baseType: !479, size: 64, offset: 960)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1552, file: !166, line: 2319, baseType: !479, size: 64, offset: 1024)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1552, file: !166, line: 2320, baseType: !479, size: 64, offset: 1088)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1552, file: !166, line: 2321, baseType: !479, size: 64, offset: 1152)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1552, file: !166, line: 2322, baseType: !479, size: 64, offset: 1216)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1552, file: !166, line: 2324, baseType: !1596, size: 64, offset: 1280)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !166, line: 2324, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !481, file: !166, line: 3395, baseType: !1599, size: 320)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !166, line: 1469, size: 320, elements: !1600)
!1600 = !{!1601, !1602, !1603}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1599, file: !166, line: 1470, baseType: !517, size: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1599, file: !166, line: 1471, baseType: !479, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1599, file: !166, line: 1472, baseType: !479, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !481, file: !166, line: 3396, baseType: !1605, size: 320)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !166, line: 1482, size: 320, elements: !1606)
!1606 = !{!1607, !1608, !1609}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1605, file: !166, line: 1483, baseType: !517, size: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1605, file: !166, line: 1484, baseType: !470, size: 32, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1605, file: !166, line: 1485, baseType: !856, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !481, file: !166, line: 3397, baseType: !1611, size: 384)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !166, line: 1829, size: 384, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1611, file: !166, line: 1830, baseType: !517, size: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1611, file: !166, line: 1831, baseType: !602, size: 32, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1611, file: !166, line: 1832, baseType: !479, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1611, file: !166, line: 1835, baseType: !856, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !481, file: !166, line: 3398, baseType: !1618, size: 704)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !166, line: 1898, size: 704, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1627}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1618, file: !166, line: 1899, baseType: !517, size: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1618, file: !166, line: 1902, baseType: !479, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1618, file: !166, line: 1905, baseType: !802, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1618, file: !166, line: 1908, baseType: !7, size: 32, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1618, file: !166, line: 1911, baseType: !1625, size: 64, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !166, line: 1876, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1618, file: !166, line: 1914, baseType: !844, size: 256, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !481, file: !166, line: 3399, baseType: !1629, size: 704)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !166, line: 2008, size: 704, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1629, file: !166, line: 2009, baseType: !517, size: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1629, file: !166, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1629, file: !166, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1629, file: !166, line: 2014, baseType: !602, size: 32, offset: 224)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1629, file: !166, line: 2016, baseType: !479, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1629, file: !166, line: 2017, baseType: !1401, size: 64, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1629, file: !166, line: 2019, baseType: !479, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1629, file: !166, line: 2020, baseType: !479, size: 64, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1629, file: !166, line: 2021, baseType: !479, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1629, file: !166, line: 2022, baseType: !479, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1629, file: !166, line: 2023, baseType: !479, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !481, file: !166, line: 3400, baseType: !1643, size: 832)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !166, line: 2430, size: 832, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1643, file: !166, line: 2431, baseType: !517, size: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1643, file: !166, line: 2433, baseType: !479, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1643, file: !166, line: 2434, baseType: !479, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1643, file: !166, line: 2435, baseType: !479, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1643, file: !166, line: 2436, baseType: !479, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1643, file: !166, line: 2437, baseType: !1401, size: 64, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1643, file: !166, line: 2438, baseType: !479, size: 64, offset: 512)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1643, file: !166, line: 2440, baseType: !479, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1643, file: !166, line: 2441, baseType: !479, size: 64, offset: 640)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1643, file: !166, line: 2443, baseType: !1655, size: 128, offset: 704)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !166, line: 182, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !166, line: 182, size: 128, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1656, file: !166, line: 182, baseType: !1406, size: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !481, file: !166, line: 3401, baseType: !1660, size: 320)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !166, line: 3327, size: 320, elements: !1661)
!1661 = !{!1662, !1663, !1670}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1660, file: !166, line: 3329, baseType: !517, size: 192)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1660, file: !166, line: 3330, baseType: !1664, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !166, line: 3320, size: 192, elements: !1666)
!1666 = !{!1667, !1668, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1665, file: !166, line: 3322, baseType: !1664, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1665, file: !166, line: 3323, baseType: !1664, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1665, file: !166, line: 3324, baseType: !479, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1660, file: !166, line: 3331, baseType: !1664, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !481, file: !166, line: 3402, baseType: !1672, size: 256)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !166, line: 1540, size: 256, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1672, file: !166, line: 1541, baseType: !517, size: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1672, file: !166, line: 1542, baseType: !1676, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !166, line: 1538, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !166, line: 1538, size: 192, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1678, file: !166, line: 1538, baseType: !1681, size: 192)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !166, line: 1537, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !166, line: 1537, size: 192, elements: !1683)
!1683 = !{!1684, !1685, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1682, file: !166, line: 1537, baseType: !7, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1682, file: !166, line: 1537, baseType: !7, size: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1682, file: !166, line: 1537, baseType: !1687, size: 128, offset: 64)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1688, size: 128, elements: !576)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !166, line: 1535, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !166, line: 1532, size: 128, elements: !1690)
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1689, file: !166, line: 1533, baseType: !479, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1689, file: !166, line: 1534, baseType: !479, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !481, file: !166, line: 3403, baseType: !1694, size: 512)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !166, line: 1938, size: 512, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1699, !1705, !1706, !1707}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1694, file: !166, line: 1939, baseType: !517, size: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1694, file: !166, line: 1940, baseType: !602, size: 32, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1694, file: !166, line: 1941, baseType: !396, size: 32, offset: 224)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1694, file: !166, line: 1946, baseType: !1700, size: 32, offset: 256)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !166, line: 1942, size: 32, elements: !1701)
!1701 = !{!1702, !1703, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1700, file: !166, line: 1943, baseType: !414, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1700, file: !166, line: 1944, baseType: !421, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1700, file: !166, line: 1945, baseType: !165, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1694, file: !166, line: 1950, baseType: !791, size: 64, offset: 320)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1694, file: !166, line: 1951, baseType: !791, size: 64, offset: 384)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1694, file: !166, line: 1953, baseType: !856, size: 64, offset: 448)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !481, file: !166, line: 3404, baseType: !1709, size: 1664)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !166, line: 3337, size: 1664, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1709, file: !166, line: 3338, baseType: !517, size: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1709, file: !166, line: 3341, baseType: !1713, size: 1472, offset: 192)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1714, line: 410, size: 1472, elements: !1715)
!1714 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1713, file: !1714, line: 412, baseType: !470, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1713, file: !1714, line: 413, baseType: !470, size: 32, offset: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1713, file: !1714, line: 414, baseType: !470, size: 32, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1713, file: !1714, line: 415, baseType: !470, size: 32, offset: 96)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1713, file: !1714, line: 416, baseType: !470, size: 32, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1713, file: !1714, line: 417, baseType: !470, size: 32, offset: 160)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1713, file: !1714, line: 418, baseType: !469, size: 8, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1713, file: !1714, line: 419, baseType: !469, size: 8, offset: 200)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1713, file: !1714, line: 420, baseType: !1725, size: 8, offset: 208)
!1725 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1713, file: !1714, line: 421, baseType: !1725, size: 8, offset: 216)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1713, file: !1714, line: 422, baseType: !1725, size: 8, offset: 224)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1713, file: !1714, line: 423, baseType: !1725, size: 8, offset: 232)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1713, file: !1714, line: 424, baseType: !1725, size: 8, offset: 240)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1713, file: !1714, line: 425, baseType: !1725, size: 8, offset: 248)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1713, file: !1714, line: 426, baseType: !1725, size: 8, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1713, file: !1714, line: 427, baseType: !1725, size: 8, offset: 264)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1713, file: !1714, line: 428, baseType: !1725, size: 8, offset: 272)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1713, file: !1714, line: 429, baseType: !1725, size: 8, offset: 280)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1713, file: !1714, line: 430, baseType: !1725, size: 8, offset: 288)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1713, file: !1714, line: 431, baseType: !1725, size: 8, offset: 296)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1713, file: !1714, line: 432, baseType: !1725, size: 8, offset: 304)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1713, file: !1714, line: 433, baseType: !1725, size: 8, offset: 312)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1713, file: !1714, line: 434, baseType: !1725, size: 8, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1713, file: !1714, line: 435, baseType: !1725, size: 8, offset: 328)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1713, file: !1714, line: 436, baseType: !1725, size: 8, offset: 336)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1713, file: !1714, line: 437, baseType: !1725, size: 8, offset: 344)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1713, file: !1714, line: 438, baseType: !1725, size: 8, offset: 352)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1713, file: !1714, line: 439, baseType: !1725, size: 8, offset: 360)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1713, file: !1714, line: 440, baseType: !1725, size: 8, offset: 368)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1713, file: !1714, line: 441, baseType: !1725, size: 8, offset: 376)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1713, file: !1714, line: 442, baseType: !1725, size: 8, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1713, file: !1714, line: 443, baseType: !1725, size: 8, offset: 392)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1713, file: !1714, line: 444, baseType: !1725, size: 8, offset: 400)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1713, file: !1714, line: 445, baseType: !1725, size: 8, offset: 408)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1713, file: !1714, line: 446, baseType: !1725, size: 8, offset: 416)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1713, file: !1714, line: 447, baseType: !1725, size: 8, offset: 424)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1713, file: !1714, line: 448, baseType: !1725, size: 8, offset: 432)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1713, file: !1714, line: 449, baseType: !1725, size: 8, offset: 440)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1713, file: !1714, line: 450, baseType: !1725, size: 8, offset: 448)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1713, file: !1714, line: 451, baseType: !1725, size: 8, offset: 456)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1713, file: !1714, line: 452, baseType: !1725, size: 8, offset: 464)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1713, file: !1714, line: 453, baseType: !1725, size: 8, offset: 472)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1713, file: !1714, line: 454, baseType: !1725, size: 8, offset: 480)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1713, file: !1714, line: 455, baseType: !1725, size: 8, offset: 488)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1713, file: !1714, line: 456, baseType: !1725, size: 8, offset: 496)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1713, file: !1714, line: 457, baseType: !1725, size: 8, offset: 504)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1713, file: !1714, line: 458, baseType: !1725, size: 8, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1713, file: !1714, line: 459, baseType: !1725, size: 8, offset: 520)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1713, file: !1714, line: 460, baseType: !1725, size: 8, offset: 528)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1713, file: !1714, line: 461, baseType: !1725, size: 8, offset: 536)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1713, file: !1714, line: 462, baseType: !1725, size: 8, offset: 544)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1713, file: !1714, line: 463, baseType: !1725, size: 8, offset: 552)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1713, file: !1714, line: 464, baseType: !1725, size: 8, offset: 560)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1713, file: !1714, line: 465, baseType: !1725, size: 8, offset: 568)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1713, file: !1714, line: 466, baseType: !1725, size: 8, offset: 576)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1713, file: !1714, line: 467, baseType: !1725, size: 8, offset: 584)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1713, file: !1714, line: 468, baseType: !1725, size: 8, offset: 592)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1713, file: !1714, line: 469, baseType: !1725, size: 8, offset: 600)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1713, file: !1714, line: 470, baseType: !1725, size: 8, offset: 608)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1713, file: !1714, line: 471, baseType: !1725, size: 8, offset: 616)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1713, file: !1714, line: 472, baseType: !1725, size: 8, offset: 624)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1713, file: !1714, line: 473, baseType: !1725, size: 8, offset: 632)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1713, file: !1714, line: 474, baseType: !1725, size: 8, offset: 640)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1713, file: !1714, line: 475, baseType: !1725, size: 8, offset: 648)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1713, file: !1714, line: 476, baseType: !1725, size: 8, offset: 656)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1713, file: !1714, line: 477, baseType: !1725, size: 8, offset: 664)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1713, file: !1714, line: 478, baseType: !1725, size: 8, offset: 672)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1713, file: !1714, line: 479, baseType: !1725, size: 8, offset: 680)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1713, file: !1714, line: 480, baseType: !1725, size: 8, offset: 688)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1713, file: !1714, line: 481, baseType: !1725, size: 8, offset: 696)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1713, file: !1714, line: 482, baseType: !1725, size: 8, offset: 704)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1713, file: !1714, line: 483, baseType: !1725, size: 8, offset: 712)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1713, file: !1714, line: 484, baseType: !1725, size: 8, offset: 720)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1713, file: !1714, line: 485, baseType: !1725, size: 8, offset: 728)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1713, file: !1714, line: 486, baseType: !1725, size: 8, offset: 736)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1713, file: !1714, line: 487, baseType: !1725, size: 8, offset: 744)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1713, file: !1714, line: 488, baseType: !1725, size: 8, offset: 752)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1713, file: !1714, line: 489, baseType: !1725, size: 8, offset: 760)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1713, file: !1714, line: 490, baseType: !1725, size: 8, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1713, file: !1714, line: 491, baseType: !1725, size: 8, offset: 776)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1713, file: !1714, line: 492, baseType: !1725, size: 8, offset: 784)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1713, file: !1714, line: 493, baseType: !1725, size: 8, offset: 792)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1713, file: !1714, line: 494, baseType: !1725, size: 8, offset: 800)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1713, file: !1714, line: 495, baseType: !1725, size: 8, offset: 808)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1713, file: !1714, line: 496, baseType: !1725, size: 8, offset: 816)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1713, file: !1714, line: 497, baseType: !1725, size: 8, offset: 824)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1713, file: !1714, line: 498, baseType: !1725, size: 8, offset: 832)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1713, file: !1714, line: 499, baseType: !1725, size: 8, offset: 840)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1713, file: !1714, line: 500, baseType: !1725, size: 8, offset: 848)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1713, file: !1714, line: 501, baseType: !1725, size: 8, offset: 856)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1713, file: !1714, line: 502, baseType: !1725, size: 8, offset: 864)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1713, file: !1714, line: 503, baseType: !1725, size: 8, offset: 872)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1713, file: !1714, line: 504, baseType: !1725, size: 8, offset: 880)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1713, file: !1714, line: 505, baseType: !1725, size: 8, offset: 888)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1713, file: !1714, line: 506, baseType: !1725, size: 8, offset: 896)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1713, file: !1714, line: 507, baseType: !1725, size: 8, offset: 904)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1713, file: !1714, line: 508, baseType: !1725, size: 8, offset: 912)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1713, file: !1714, line: 509, baseType: !1725, size: 8, offset: 920)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1713, file: !1714, line: 510, baseType: !1725, size: 8, offset: 928)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1713, file: !1714, line: 511, baseType: !1725, size: 8, offset: 936)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1713, file: !1714, line: 512, baseType: !1725, size: 8, offset: 944)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1713, file: !1714, line: 513, baseType: !1725, size: 8, offset: 952)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1713, file: !1714, line: 514, baseType: !1725, size: 8, offset: 960)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1713, file: !1714, line: 515, baseType: !1725, size: 8, offset: 968)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1713, file: !1714, line: 516, baseType: !1725, size: 8, offset: 976)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1713, file: !1714, line: 517, baseType: !1725, size: 8, offset: 984)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1713, file: !1714, line: 518, baseType: !1725, size: 8, offset: 992)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1713, file: !1714, line: 519, baseType: !1725, size: 8, offset: 1000)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1713, file: !1714, line: 520, baseType: !1725, size: 8, offset: 1008)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1713, file: !1714, line: 521, baseType: !1725, size: 8, offset: 1016)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1713, file: !1714, line: 522, baseType: !1725, size: 8, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1713, file: !1714, line: 523, baseType: !1725, size: 8, offset: 1032)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1713, file: !1714, line: 524, baseType: !1725, size: 8, offset: 1040)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1713, file: !1714, line: 525, baseType: !1725, size: 8, offset: 1048)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1713, file: !1714, line: 526, baseType: !1725, size: 8, offset: 1056)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1713, file: !1714, line: 527, baseType: !1725, size: 8, offset: 1064)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1713, file: !1714, line: 528, baseType: !1725, size: 8, offset: 1072)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1713, file: !1714, line: 529, baseType: !1725, size: 8, offset: 1080)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1713, file: !1714, line: 530, baseType: !1725, size: 8, offset: 1088)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1713, file: !1714, line: 531, baseType: !1725, size: 8, offset: 1096)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1713, file: !1714, line: 532, baseType: !1725, size: 8, offset: 1104)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1713, file: !1714, line: 533, baseType: !1725, size: 8, offset: 1112)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1713, file: !1714, line: 534, baseType: !1725, size: 8, offset: 1120)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1713, file: !1714, line: 535, baseType: !1725, size: 8, offset: 1128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1713, file: !1714, line: 536, baseType: !1725, size: 8, offset: 1136)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1713, file: !1714, line: 537, baseType: !1725, size: 8, offset: 1144)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1713, file: !1714, line: 538, baseType: !1725, size: 8, offset: 1152)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1713, file: !1714, line: 539, baseType: !1725, size: 8, offset: 1160)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1713, file: !1714, line: 540, baseType: !1725, size: 8, offset: 1168)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1713, file: !1714, line: 541, baseType: !1725, size: 8, offset: 1176)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1713, file: !1714, line: 542, baseType: !1725, size: 8, offset: 1184)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1713, file: !1714, line: 543, baseType: !1725, size: 8, offset: 1192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1713, file: !1714, line: 544, baseType: !1725, size: 8, offset: 1200)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1713, file: !1714, line: 545, baseType: !1725, size: 8, offset: 1208)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1713, file: !1714, line: 546, baseType: !1725, size: 8, offset: 1216)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1713, file: !1714, line: 547, baseType: !1725, size: 8, offset: 1224)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1713, file: !1714, line: 548, baseType: !1725, size: 8, offset: 1232)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1713, file: !1714, line: 549, baseType: !1725, size: 8, offset: 1240)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1713, file: !1714, line: 550, baseType: !1725, size: 8, offset: 1248)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1713, file: !1714, line: 551, baseType: !1725, size: 8, offset: 1256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1713, file: !1714, line: 552, baseType: !1725, size: 8, offset: 1264)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1713, file: !1714, line: 553, baseType: !1725, size: 8, offset: 1272)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1713, file: !1714, line: 554, baseType: !1725, size: 8, offset: 1280)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1713, file: !1714, line: 555, baseType: !1725, size: 8, offset: 1288)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1713, file: !1714, line: 556, baseType: !1725, size: 8, offset: 1296)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1713, file: !1714, line: 557, baseType: !1725, size: 8, offset: 1304)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1713, file: !1714, line: 558, baseType: !1725, size: 8, offset: 1312)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1713, file: !1714, line: 559, baseType: !1725, size: 8, offset: 1320)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1713, file: !1714, line: 560, baseType: !1725, size: 8, offset: 1328)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1713, file: !1714, line: 561, baseType: !1725, size: 8, offset: 1336)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1713, file: !1714, line: 562, baseType: !1725, size: 8, offset: 1344)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1713, file: !1714, line: 563, baseType: !1725, size: 8, offset: 1352)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1713, file: !1714, line: 564, baseType: !1725, size: 8, offset: 1360)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1713, file: !1714, line: 565, baseType: !1725, size: 8, offset: 1368)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1713, file: !1714, line: 566, baseType: !1725, size: 8, offset: 1376)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1713, file: !1714, line: 567, baseType: !1725, size: 8, offset: 1384)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1713, file: !1714, line: 568, baseType: !1725, size: 8, offset: 1392)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1713, file: !1714, line: 569, baseType: !1725, size: 8, offset: 1400)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1713, file: !1714, line: 570, baseType: !1725, size: 8, offset: 1408)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1713, file: !1714, line: 571, baseType: !1725, size: 8, offset: 1416)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1713, file: !1714, line: 572, baseType: !1725, size: 8, offset: 1424)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1713, file: !1714, line: 573, baseType: !1725, size: 8, offset: 1432)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1713, file: !1714, line: 574, baseType: !1725, size: 8, offset: 1440)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !481, file: !166, line: 3405, baseType: !1881, size: 384)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !166, line: 3352, size: 384, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1881, file: !166, line: 3353, baseType: !517, size: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1881, file: !166, line: 3356, baseType: !1885, size: 192, offset: 192)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1714, line: 578, size: 192, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1885, file: !1714, line: 580, baseType: !470, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1885, file: !1714, line: 581, baseType: !470, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1885, file: !1714, line: 582, baseType: !470, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1885, file: !1714, line: 583, baseType: !470, size: 32, offset: 96)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1885, file: !1714, line: 584, baseType: !469, size: 8, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1885, file: !1714, line: 585, baseType: !469, size: 8, offset: 136)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1885, file: !1714, line: 586, baseType: !469, size: 8, offset: 144)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1885, file: !1714, line: 587, baseType: !469, size: 8, offset: 152)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1885, file: !1714, line: 588, baseType: !469, size: 8, offset: 160)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1885, file: !1714, line: 589, baseType: !469, size: 8, offset: 168)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1885, file: !1714, line: 590, baseType: !469, size: 8, offset: 176)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1900, line: 72, baseType: !1901)
!1900 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !470}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !605, line: 74, size: 448, elements: !1906)
!1906 = !{!1907, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !1905, file: !605, line: 75, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !605, line: 61, size: 192, elements: !1910)
!1910 = !{!1911, !1912, !1914, !1915, !1916, !1917, !1918}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !1909, file: !605, line: 62, baseType: !475, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !1909, file: !605, line: 63, baseType: !1913, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !605, line: 39, baseType: !7)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !1909, file: !605, line: 64, baseType: !604, size: 32, offset: 96)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !1909, file: !605, line: 65, baseType: !470, size: 32, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1909, file: !605, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !1909, file: !605, line: 68, baseType: !469, size: 8, offset: 168)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !1909, file: !605, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1905, file: !605, line: 76, baseType: !7, size: 32, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1905, file: !605, line: 77, baseType: !7, size: 32, offset: 96)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1905, file: !605, line: 79, baseType: !7, size: 32, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !1905, file: !605, line: 84, baseType: !470, size: 32, offset: 160)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1905, file: !605, line: 87, baseType: !7, size: 32, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !1905, file: !605, line: 90, baseType: !469, size: 8, offset: 224)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !1905, file: !605, line: 93, baseType: !604, size: 32, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !1905, file: !605, line: 96, baseType: !604, size: 32, offset: 288)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !1905, file: !605, line: 100, baseType: !7, size: 32, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !1905, file: !605, line: 104, baseType: !1929, size: 64, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !605, line: 47, baseType: !1930)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!474, !474, !948}
!1933 = !{!0, !1934, !1936, !1938, !1940, !1942, !1944, !1946, !1948, !1950, !1952, !1954, !1956, !1958, !1960, !1962, !1964, !1966, !1968, !1970, !1972, !1974, !1976, !1978, !1980, !2032, !2038, !2049, !2054, !2059, !2064, !2066, !2068, !2070, !2072, !2074, !2076, !2078, !2080, !2082, !2084, !2086, !2167, !2169, !2171, !2173, !2175, !2177, !2179, !2181, !2183, !2185, !2187, !2189, !2191, !2193, !2195, !2197, !2199, !2201, !2203, !2205, !2207, !2209, !2211, !2213, !2215, !2217, !2219, !2227, !2243, !2245}
!1934 = !DIGlobalVariableExpression(var: !1935, expr: !DIExpression())
!1935 = distinct !DIGlobalVariable(name: "optimize_size", scope: !2, file: !3, line: 204, type: !470, isLocal: false, isDefinition: true)
!1936 = !DIGlobalVariableExpression(var: !1937, expr: !DIExpression())
!1937 = distinct !DIGlobalVariable(name: "in_lto_p", scope: !2, file: !3, line: 211, type: !469, isLocal: false, isDefinition: true)
!1938 = !DIGlobalVariableExpression(var: !1939, expr: !DIExpression())
!1939 = distinct !DIGlobalVariable(name: "flag_detailed_statistics", scope: !2, file: !3, line: 227, type: !470, isLocal: false, isDefinition: true)
!1940 = !DIGlobalVariableExpression(var: !1941, expr: !DIExpression())
!1941 = distinct !DIGlobalVariable(name: "flag_pcc_struct_return", scope: !2, file: !3, line: 259, type: !470, isLocal: false, isDefinition: true)
!1942 = !DIGlobalVariableExpression(var: !1943, expr: !DIExpression())
!1943 = distinct !DIGlobalVariable(name: "flag_complex_method", scope: !2, file: !3, line: 265, type: !470, isLocal: false, isDefinition: true)
!1944 = !DIGlobalVariableExpression(var: !1945, expr: !DIExpression())
!1945 = distinct !DIGlobalVariable(name: "flag_gen_aux_info", scope: !2, file: !3, line: 269, type: !470, isLocal: false, isDefinition: true)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(name: "flag_next_runtime", scope: !2, file: !3, line: 285, type: !470, isLocal: false, isDefinition: true)
!1948 = !DIGlobalVariableExpression(var: !1949, expr: !DIExpression())
!1949 = distinct !DIGlobalVariable(name: "flag_tls_default", scope: !2, file: !3, line: 290, type: !5, isLocal: false, isDefinition: true)
!1950 = !DIGlobalVariableExpression(var: !1951, expr: !DIExpression())
!1951 = distinct !DIGlobalVariable(name: "flag_ira_algorithm", scope: !2, file: !3, line: 295, type: !16, isLocal: false, isDefinition: true)
!1952 = !DIGlobalVariableExpression(var: !1953, expr: !DIExpression())
!1953 = distinct !DIGlobalVariable(name: "flag_ira_region", scope: !2, file: !3, line: 296, type: !21, isLocal: false, isDefinition: true)
!1954 = !DIGlobalVariableExpression(var: !1955, expr: !DIExpression())
!1955 = distinct !DIGlobalVariable(name: "flag_ira_verbose", scope: !2, file: !3, line: 300, type: !7, isLocal: false, isDefinition: true)
!1956 = !DIGlobalVariableExpression(var: !1957, expr: !DIExpression())
!1957 = distinct !DIGlobalVariable(name: "flag_excess_precision_cmdline", scope: !2, file: !3, line: 304, type: !26, isLocal: false, isDefinition: true)
!1958 = !DIGlobalVariableExpression(var: !1959, expr: !DIExpression())
!1959 = distinct !DIGlobalVariable(name: "flag_excess_precision", scope: !2, file: !3, line: 305, type: !26, isLocal: false, isDefinition: true)
!1960 = !DIGlobalVariableExpression(var: !1961, expr: !DIExpression())
!1961 = distinct !DIGlobalVariable(name: "flag_pedantic_errors", scope: !2, file: !3, line: 310, type: !470, isLocal: false, isDefinition: true)
!1962 = !DIGlobalVariableExpression(var: !1963, expr: !DIExpression())
!1963 = distinct !DIGlobalVariable(name: "flag_permissive", scope: !2, file: !3, line: 314, type: !470, isLocal: false, isDefinition: true)
!1964 = !DIGlobalVariableExpression(var: !1965, expr: !DIExpression())
!1965 = distinct !DIGlobalVariable(name: "flag_debug_asm", scope: !2, file: !3, line: 323, type: !470, isLocal: false, isDefinition: true)
!1966 = !DIGlobalVariableExpression(var: !1967, expr: !DIExpression())
!1967 = distinct !DIGlobalVariable(name: "flag_dump_rtl_in_asm", scope: !2, file: !3, line: 327, type: !470, isLocal: false, isDefinition: true)
!1968 = !DIGlobalVariableExpression(var: !1969, expr: !DIExpression())
!1969 = distinct !DIGlobalVariable(name: "flag_var_tracking", scope: !2, file: !3, line: 343, type: !470, isLocal: false, isDefinition: true)
!1970 = !DIGlobalVariableExpression(var: !1971, expr: !DIExpression())
!1971 = distinct !DIGlobalVariable(name: "flag_var_tracking_assignments", scope: !2, file: !3, line: 349, type: !470, isLocal: false, isDefinition: true)
!1972 = !DIGlobalVariableExpression(var: !1973, expr: !DIExpression())
!1973 = distinct !DIGlobalVariable(name: "flag_var_tracking_assignments_toggle", scope: !2, file: !3, line: 353, type: !470, isLocal: false, isDefinition: true)
!1974 = !DIGlobalVariableExpression(var: !1975, expr: !DIExpression())
!1975 = distinct !DIGlobalVariable(name: "flag_stack_check", scope: !2, file: !3, line: 356, type: !31, isLocal: false, isDefinition: true)
!1976 = !DIGlobalVariableExpression(var: !1977, expr: !DIExpression())
!1977 = distinct !DIGlobalVariable(name: "user_defined_section_attribute", scope: !2, file: !3, line: 361, type: !469, isLocal: false, isDefinition: true)
!1978 = !DIGlobalVariableExpression(var: !1979, expr: !DIExpression())
!1979 = distinct !DIGlobalVariable(name: "flag_evaluation_order", scope: !2, file: !3, line: 385, type: !470, isLocal: false, isDefinition: true)
!1980 = !DIGlobalVariableExpression(var: !1981, expr: !DIExpression())
!1981 = distinct !DIGlobalVariable(name: "dump_file", scope: !2, file: !3, line: 403, type: !1982, isLocal: false, isDefinition: true)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1984, line: 7, baseType: !1985)
!1984 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1986, line: 49, size: 1728, elements: !1987)
!1986 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2003, !2005, !2006, !2007, !2010, !2011, !2012, !2013, !2016, !2018, !2021, !2024, !2025, !2026, !2027, !2028}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1985, file: !1986, line: 51, baseType: !470, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1985, file: !1986, line: 54, baseType: !472, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1985, file: !1986, line: 55, baseType: !472, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1985, file: !1986, line: 56, baseType: !472, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1985, file: !1986, line: 57, baseType: !472, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1985, file: !1986, line: 58, baseType: !472, size: 64, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1985, file: !1986, line: 59, baseType: !472, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1985, file: !1986, line: 60, baseType: !472, size: 64, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1985, file: !1986, line: 61, baseType: !472, size: 64, offset: 512)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1985, file: !1986, line: 64, baseType: !472, size: 64, offset: 576)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1985, file: !1986, line: 65, baseType: !472, size: 64, offset: 640)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1985, file: !1986, line: 66, baseType: !472, size: 64, offset: 704)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1985, file: !1986, line: 68, baseType: !2001, size: 64, offset: 768)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1986, line: 36, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1985, file: !1986, line: 70, baseType: !2004, size: 64, offset: 832)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1985, file: !1986, line: 72, baseType: !470, size: 32, offset: 896)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1985, file: !1986, line: 73, baseType: !470, size: 32, offset: 928)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1985, file: !1986, line: 74, baseType: !2008, size: 64, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2009, line: 152, baseType: !533)
!2009 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1985, file: !1986, line: 77, baseType: !477, size: 16, offset: 1024)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1985, file: !1986, line: 78, baseType: !1725, size: 8, offset: 1040)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1985, file: !1986, line: 79, baseType: !575, size: 8, offset: 1048)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1985, file: !1986, line: 81, baseType: !2014, size: 64, offset: 1088)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1986, line: 43, baseType: null)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1985, file: !1986, line: 89, baseType: !2017, size: 64, offset: 1152)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2009, line: 153, baseType: !533)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1985, file: !1986, line: 91, baseType: !2019, size: 64, offset: 1216)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1986, line: 37, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1985, file: !1986, line: 92, baseType: !2022, size: 64, offset: 1280)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1986, line: 38, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1985, file: !1986, line: 93, baseType: !2004, size: 64, offset: 1344)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1985, file: !1986, line: 94, baseType: !474, size: 64, offset: 1408)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1985, file: !1986, line: 95, baseType: !948, size: 64, offset: 1472)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1985, file: !1986, line: 96, baseType: !470, size: 32, offset: 1536)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1985, file: !1986, line: 98, baseType: !2029, size: 160, offset: 1568)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 160, elements: !2030)
!2030 = !{!2031}
!2031 = !DISubrange(count: 20)
!2032 = !DIGlobalVariableExpression(var: !2033, expr: !DIExpression())
!2033 = distinct !DIGlobalVariable(name: "debug_type_names", scope: !2, file: !3, line: 1204, type: !2034, isLocal: false, isDefinition: true)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2035, size: 384, elements: !2036)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!2036 = !{!2037}
!2037 = !DISubrange(count: 6)
!2038 = !DIGlobalVariableExpression(var: !2039, expr: !DIExpression())
!2039 = distinct !DIGlobalVariable(name: "fmt1", scope: !2040, file: !3, line: 1216, type: !2046, isLocal: true, isDefinition: true)
!2040 = distinct !DISubprogram(name: "print_version", scope: !3, file: !3, line: 1214, type: !2041, scopeLine: 1215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !1982, !475}
!2043 = !{!2044, !2045}
!2044 = !DILocalVariable(name: "file", arg: 1, scope: !2040, file: !3, line: 1214, type: !1982)
!2045 = !DILocalVariable(name: "indent", arg: 2, scope: !2040, file: !3, line: 1214, type: !475)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 472, elements: !2047)
!2047 = !{!2048}
!2048 = !DISubrange(count: 59)
!2049 = !DIGlobalVariableExpression(var: !2050, expr: !DIExpression())
!2050 = distinct !DIGlobalVariable(name: "fmt2", scope: !2040, file: !3, line: 1223, type: !2051, isLocal: true, isDefinition: true)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 392, elements: !2052)
!2052 = !{!2053}
!2053 = !DISubrange(count: 49)
!2054 = !DIGlobalVariableExpression(var: !2055, expr: !DIExpression())
!2055 = distinct !DIGlobalVariable(name: "fmt3", scope: !2040, file: !3, line: 1225, type: !2056, isLocal: true, isDefinition: true)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 544, elements: !2057)
!2057 = !{!2058}
!2058 = !DISubrange(count: 68)
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(name: "fmt4", scope: !2040, file: !3, line: 1227, type: !2061, isLocal: true, isDefinition: true)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 600, elements: !2062)
!2062 = !{!2063}
!2063 = !DISubrange(count: 75)
!2064 = !DIGlobalVariableExpression(var: !2065, expr: !DIExpression())
!2065 = distinct !DIGlobalVariable(name: "set_yydebug", scope: !2, file: !3, line: 121, type: !470, isLocal: true, isDefinition: true)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(name: "progname", scope: !2, file: !3, line: 131, type: !475, isLocal: false, isDefinition: true)
!2068 = !DIGlobalVariableExpression(var: !2069, expr: !DIExpression())
!2069 = distinct !DIGlobalVariable(name: "save_argv", scope: !2, file: !3, line: 134, type: !1898, isLocal: true, isDefinition: true)
!2070 = !DIGlobalVariableExpression(var: !2071, expr: !DIExpression())
!2071 = distinct !DIGlobalVariable(name: "main_input_filename", scope: !2, file: !3, line: 140, type: !475, isLocal: false, isDefinition: true)
!2072 = !DIGlobalVariableExpression(var: !2073, expr: !DIExpression())
!2073 = distinct !DIGlobalVariable(name: "input_location", scope: !2, file: !3, line: 148, type: !602, isLocal: false, isDefinition: true)
!2074 = !DIGlobalVariableExpression(var: !2075, expr: !DIExpression())
!2075 = distinct !DIGlobalVariable(name: "line_table", scope: !2, file: !3, line: 150, type: !1904, isLocal: false, isDefinition: true)
!2076 = !DIGlobalVariableExpression(var: !2077, expr: !DIExpression())
!2077 = distinct !DIGlobalVariable(name: "dump_base_name", scope: !2, file: !3, line: 154, type: !475, isLocal: false, isDefinition: true)
!2078 = !DIGlobalVariableExpression(var: !2079, expr: !DIExpression())
!2079 = distinct !DIGlobalVariable(name: "dump_dir_name", scope: !2, file: !3, line: 158, type: !475, isLocal: false, isDefinition: true)
!2080 = !DIGlobalVariableExpression(var: !2081, expr: !DIExpression())
!2081 = distinct !DIGlobalVariable(name: "aux_base_name", scope: !2, file: !3, line: 162, type: !475, isLocal: false, isDefinition: true)
!2082 = !DIGlobalVariableExpression(var: !2083, expr: !DIExpression())
!2083 = distinct !DIGlobalVariable(name: "profile_data_prefix", scope: !2, file: !3, line: 165, type: !475, isLocal: false, isDefinition: true)
!2084 = !DIGlobalVariableExpression(var: !2085, expr: !DIExpression())
!2085 = distinct !DIGlobalVariable(name: "target_flags_explicit", scope: !2, file: !3, line: 170, type: !470, isLocal: false, isDefinition: true)
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(name: "debug_hooks", scope: !2, file: !3, line: 174, type: !2088, isLocal: false, isDefinition: true)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2090)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcc_debug_hooks", file: !2091, line: 25, size: 2048, elements: !2092)
!2091 = !DIFile(filename: "./debug.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2092 = !{!2093, !2097, !2098, !2102, !2106, !2107, !2108, !2112, !2116, !2117, !2124, !2128, !2129, !2130, !2131, !2135, !2136, !2137, !2138, !2142, !2146, !2147, !2148, !2152, !2153, !2154, !2155, !2156, !2157, !2161, !2162, !2166}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2090, file: !2091, line: 29, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !475}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !2090, file: !2091, line: 32, baseType: !2094, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "assembly_start", scope: !2090, file: !2091, line: 36, baseType: !2099, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !2090, file: !2091, line: 39, baseType: !2103, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !7, !475}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !2090, file: !2091, line: 42, baseType: !2103, size: 64, offset: 256)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "start_source_file", scope: !2090, file: !2091, line: 46, baseType: !2103, size: 64, offset: 320)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "end_source_file", scope: !2090, file: !2091, line: 50, baseType: !2109, size: 64, offset: 384)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !7}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "begin_block", scope: !2090, file: !2091, line: 54, baseType: !2113, size: 64, offset: 448)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !7, !7}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "end_block", scope: !2090, file: !2091, line: 57, baseType: !2113, size: 64, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_block", scope: !2090, file: !2091, line: 64, baseType: !2118, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!469, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !6, line: 59, baseType: !2122)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "source_line", scope: !2090, file: !2091, line: 67, baseType: !2125, size: 64, offset: 640)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{null, !7, !475, !470, !469}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "begin_prologue", scope: !2090, file: !2091, line: 72, baseType: !2103, size: 64, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "end_prologue", scope: !2090, file: !2091, line: 76, baseType: !2103, size: 64, offset: 768)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "end_epilogue", scope: !2090, file: !2091, line: 79, baseType: !2103, size: 64, offset: 832)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "begin_function", scope: !2090, file: !2091, line: 82, baseType: !2132, size: 64, offset: 896)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !479}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "end_function", scope: !2090, file: !2091, line: 85, baseType: !2109, size: 64, offset: 960)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !2090, file: !2091, line: 91, baseType: !2132, size: 64, offset: 1024)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl", scope: !2090, file: !2091, line: 95, baseType: !2132, size: 64, offset: 1088)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !2090, file: !2091, line: 103, baseType: !2139, size: 64, offset: 1152)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !479, !470}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "imported_module_or_decl", scope: !2090, file: !2091, line: 106, baseType: !2143, size: 64, offset: 1216)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !479, !479, !479, !469}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_inline_function", scope: !2090, file: !2091, line: 111, baseType: !2132, size: 64, offset: 1280)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "outlining_inline_function", scope: !2090, file: !2091, line: 116, baseType: !2132, size: 64, offset: 1344)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !2090, file: !2091, line: 120, baseType: !2149, size: 64, offset: 1408)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !652}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "handle_pch", scope: !2090, file: !2091, line: 124, baseType: !2109, size: 64, offset: 1472)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "var_location", scope: !2090, file: !2091, line: 127, baseType: !2149, size: 64, offset: 1536)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "switch_text_section", scope: !2090, file: !2091, line: 131, baseType: !2099, size: 64, offset: 1600)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "direct_call", scope: !2090, file: !2091, line: 136, baseType: !2132, size: 64, offset: 1664)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_call_token", scope: !2090, file: !2091, line: 144, baseType: !2139, size: 64, offset: 1728)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "copy_call_info", scope: !2090, file: !2091, line: 150, baseType: !2158, size: 64, offset: 1792)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{null, !652, !652}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_call", scope: !2090, file: !2091, line: 156, baseType: !1901, size: 64, offset: 1856)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "set_name", scope: !2090, file: !2091, line: 160, baseType: !2163, size: 64, offset: 1920)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{null, !479, !479}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "start_end_main_source_file", scope: !2090, file: !2091, line: 164, baseType: !470, size: 32, offset: 1984)
!2167 = !DIGlobalVariableExpression(var: !2168, expr: !DIExpression())
!2168 = distinct !DIGlobalVariable(name: "rtl_dump_and_exit", scope: !2, file: !3, line: 182, type: !470, isLocal: false, isDefinition: true)
!2169 = !DIGlobalVariableExpression(var: !2170, expr: !DIExpression())
!2170 = distinct !DIGlobalVariable(name: "flag_print_asm_name", scope: !2, file: !3, line: 183, type: !470, isLocal: false, isDefinition: true)
!2171 = !DIGlobalVariableExpression(var: !2172, expr: !DIExpression())
!2172 = distinct !DIGlobalVariable(name: "graph_dump_format", scope: !2, file: !3, line: 184, type: !439, isLocal: false, isDefinition: true)
!2173 = !DIGlobalVariableExpression(var: !2174, expr: !DIExpression())
!2174 = distinct !DIGlobalVariable(name: "asm_file_name", scope: !2, file: !3, line: 188, type: !475, isLocal: false, isDefinition: true)
!2175 = !DIGlobalVariableExpression(var: !2176, expr: !DIExpression())
!2176 = distinct !DIGlobalVariable(name: "flag_generate_lto", scope: !2, file: !3, line: 215, type: !470, isLocal: false, isDefinition: true)
!2177 = !DIGlobalVariableExpression(var: !2178, expr: !DIExpression())
!2178 = distinct !DIGlobalVariable(name: "current_function_decl", scope: !2, file: !3, line: 219, type: !479, isLocal: false, isDefinition: true)
!2179 = !DIGlobalVariableExpression(var: !2180, expr: !DIExpression())
!2180 = distinct !DIGlobalVariable(name: "current_function_func_begin_label", scope: !2, file: !3, line: 223, type: !475, isLocal: false, isDefinition: true)
!2181 = !DIGlobalVariableExpression(var: !2182, expr: !DIExpression())
!2182 = distinct !DIGlobalVariable(name: "flag_random_seed", scope: !2, file: !3, line: 230, type: !475, isLocal: true, isDefinition: true)
!2183 = !DIGlobalVariableExpression(var: !2184, expr: !DIExpression())
!2184 = distinct !DIGlobalVariable(name: "local_tick", scope: !2, file: !3, line: 235, type: !7, isLocal: false, isDefinition: true)
!2185 = !DIGlobalVariableExpression(var: !2186, expr: !DIExpression())
!2186 = distinct !DIGlobalVariable(name: "flag_signed_char", scope: !2, file: !3, line: 241, type: !470, isLocal: false, isDefinition: true)
!2187 = !DIGlobalVariableExpression(var: !2188, expr: !DIExpression())
!2188 = distinct !DIGlobalVariable(name: "flag_short_enums", scope: !2, file: !3, line: 246, type: !470, isLocal: false, isDefinition: true)
!2189 = !DIGlobalVariableExpression(var: !2190, expr: !DIExpression())
!2190 = distinct !DIGlobalVariable(name: "aux_info_file_name", scope: !2, file: !3, line: 273, type: !475, isLocal: false, isDefinition: true)
!2191 = !DIGlobalVariableExpression(var: !2192, expr: !DIExpression())
!2192 = distinct !DIGlobalVariable(name: "flag_shlib", scope: !2, file: !3, line: 278, type: !470, isLocal: false, isDefinition: true)
!2193 = !DIGlobalVariableExpression(var: !2194, expr: !DIExpression())
!2194 = distinct !DIGlobalVariable(name: "stack_limit_rtx", scope: !2, file: !3, line: 336, type: !652, isLocal: false, isDefinition: true)
!2195 = !DIGlobalVariableExpression(var: !2196, expr: !DIExpression())
!2196 = distinct !DIGlobalVariable(name: "align_loops_log", scope: !2, file: !3, line: 368, type: !470, isLocal: false, isDefinition: true)
!2197 = !DIGlobalVariableExpression(var: !2198, expr: !DIExpression())
!2198 = distinct !DIGlobalVariable(name: "align_loops_max_skip", scope: !2, file: !3, line: 369, type: !470, isLocal: false, isDefinition: true)
!2199 = !DIGlobalVariableExpression(var: !2200, expr: !DIExpression())
!2200 = distinct !DIGlobalVariable(name: "align_jumps_log", scope: !2, file: !3, line: 370, type: !470, isLocal: false, isDefinition: true)
!2201 = !DIGlobalVariableExpression(var: !2202, expr: !DIExpression())
!2202 = distinct !DIGlobalVariable(name: "align_jumps_max_skip", scope: !2, file: !3, line: 371, type: !470, isLocal: false, isDefinition: true)
!2203 = !DIGlobalVariableExpression(var: !2204, expr: !DIExpression())
!2204 = distinct !DIGlobalVariable(name: "align_labels_log", scope: !2, file: !3, line: 372, type: !470, isLocal: false, isDefinition: true)
!2205 = !DIGlobalVariableExpression(var: !2206, expr: !DIExpression())
!2206 = distinct !DIGlobalVariable(name: "align_labels_max_skip", scope: !2, file: !3, line: 373, type: !470, isLocal: false, isDefinition: true)
!2207 = !DIGlobalVariableExpression(var: !2208, expr: !DIExpression())
!2208 = distinct !DIGlobalVariable(name: "align_functions_log", scope: !2, file: !3, line: 374, type: !470, isLocal: false, isDefinition: true)
!2209 = !DIGlobalVariableExpression(var: !2210, expr: !DIExpression())
!2210 = distinct !DIGlobalVariable(name: "user_label_prefix", scope: !2, file: !3, line: 388, type: !475, isLocal: false, isDefinition: true)
!2211 = !DIGlobalVariableExpression(var: !2212, expr: !DIExpression())
!2212 = distinct !DIGlobalVariable(name: "asm_out_file", scope: !2, file: !3, line: 401, type: !1982, isLocal: false, isDefinition: true)
!2213 = !DIGlobalVariableExpression(var: !2214, expr: !DIExpression())
!2214 = distinct !DIGlobalVariable(name: "aux_info_file", scope: !2, file: !3, line: 402, type: !1982, isLocal: false, isDefinition: true)
!2215 = !DIGlobalVariableExpression(var: !2216, expr: !DIExpression())
!2216 = distinct !DIGlobalVariable(name: "dump_file_name", scope: !2, file: !3, line: 404, type: !475, isLocal: false, isDefinition: true)
!2217 = !DIGlobalVariableExpression(var: !2218, expr: !DIExpression())
!2218 = distinct !DIGlobalVariable(name: "src_pwd", scope: !2, file: !3, line: 411, type: !475, isLocal: true, isDefinition: true)
!2219 = !DIGlobalVariableExpression(var: !2220, expr: !DIExpression())
!2220 = distinct !DIGlobalVariable(name: "random_seed", scope: !2221, file: !3, line: 505, type: !2224, isLocal: true, isDefinition: true)
!2221 = distinct !DISubprogram(name: "init_random_seed", scope: !3, file: !3, line: 502, type: !2100, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2222)
!2222 = !{!2223}
!2223 = !DILocalVariable(name: "value", scope: !2221, file: !3, line: 504, type: !478)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 152, elements: !2225)
!2225 = !{!2226}
!2226 = !DISubrange(count: 19)
!2227 = !DIGlobalVariableExpression(var: !2228, expr: !DIExpression())
!2228 = distinct !DIGlobalVariable(name: "lang_independent_params", scope: !2, file: !3, line: 390, type: !2229, isLocal: true, isDefinition: true)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2230, size: 30720, elements: !2241)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "param_info", file: !2232, line: 61, baseType: !2233)
!2232 = !DIFile(filename: "./params.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "param_info", file: !2232, line: 42, size: 256, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2238, !2239, !2240}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !2233, file: !2232, line: 46, baseType: !2035, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2233, file: !2232, line: 48, baseType: !470, size: 32, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2233, file: !2232, line: 51, baseType: !469, size: 8, offset: 96)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !2233, file: !2232, line: 54, baseType: !470, size: 32, offset: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !2233, file: !2232, line: 57, baseType: !470, size: 32, offset: 160)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "help", scope: !2233, file: !2232, line: 60, baseType: !2035, size: 64, offset: 192)
!2241 = !{!2242}
!2242 = !DISubrange(count: 120)
!2243 = !DIGlobalVariableExpression(var: !2244, expr: !DIExpression())
!2244 = distinct !DIGlobalVariable(name: "default_debug_hooks", scope: !2, file: !3, line: 178, type: !2088, isLocal: true, isDefinition: true)
!2245 = !DIGlobalVariableExpression(var: !2246, expr: !DIExpression())
!2246 = distinct !DIGlobalVariable(name: "no_backend", scope: !2, file: !3, line: 124, type: !469, isLocal: true, isDefinition: true)
!2247 = !DIGlobalVariableExpression(var: !2065, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2248 = !{i32 2, !"Dwarf Version", i32 4}
!2249 = !{i32 2, !"Debug Info Version", i32 3}
!2250 = !{i32 1, !"wchar_size", i32 4}
!2251 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2252 = distinct !DISubprogram(name: "vprintf", scope: !2253, file: !2253, line: 39, type: !2254, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2264)
!2253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!470, !2256, !2257}
!2256 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !475)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2259)
!2259 = !{!2260, !2261, !2262, !2263}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2258, file: !3, baseType: !7, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2258, file: !3, baseType: !7, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2258, file: !3, baseType: !474, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2258, file: !3, baseType: !474, size: 64, offset: 128)
!2264 = !{!2265, !2266}
!2265 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2252, file: !2253, line: 39, type: !2256)
!2266 = !DILocalVariable(name: "__arg", arg: 2, scope: !2252, file: !2253, line: 39, type: !2257)
!2267 = !DILocation(line: 0, scope: !2252)
!2268 = !DILocation(line: 41, column: 20, scope: !2252)
!2269 = !DILocation(line: 41, column: 10, scope: !2252)
!2270 = !DILocation(line: 41, column: 3, scope: !2252)
!2271 = distinct !DISubprogram(name: "getchar", scope: !2253, file: !2253, line: 47, type: !2272, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!470}
!2274 = !{}
!2275 = !DILocation(line: 49, column: 16, scope: !2271)
!2276 = !DILocation(line: 49, column: 10, scope: !2271)
!2277 = !DILocation(line: 49, column: 3, scope: !2271)
!2278 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2253, file: !2253, line: 56, type: !2279, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!470, !1982}
!2281 = !{!2282}
!2282 = !DILocalVariable(name: "__fp", arg: 1, scope: !2278, file: !2253, line: 56, type: !1982)
!2283 = !DILocation(line: 0, scope: !2278)
!2284 = !DILocation(line: 58, column: 10, scope: !2278)
!2285 = !DILocation(line: 58, column: 3, scope: !2278)
!2286 = distinct !DISubprogram(name: "getc_unlocked", scope: !2253, file: !2253, line: 66, type: !2279, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2287 = !{!2288}
!2288 = !DILocalVariable(name: "__fp", arg: 1, scope: !2286, file: !2253, line: 66, type: !1982)
!2289 = !DILocation(line: 0, scope: !2286)
!2290 = !DILocation(line: 68, column: 10, scope: !2286)
!2291 = !DILocation(line: 68, column: 3, scope: !2286)
!2292 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2253, file: !2253, line: 73, type: !2272, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2293 = !DILocation(line: 75, column: 10, scope: !2292)
!2294 = !DILocation(line: 75, column: 3, scope: !2292)
!2295 = distinct !DISubprogram(name: "putchar", scope: !2253, file: !2253, line: 82, type: !2296, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!470, !470}
!2298 = !{!2299}
!2299 = !DILocalVariable(name: "__c", arg: 1, scope: !2295, file: !2253, line: 82, type: !470)
!2300 = !DILocation(line: 0, scope: !2295)
!2301 = !DILocation(line: 84, column: 21, scope: !2295)
!2302 = !DILocation(line: 84, column: 10, scope: !2295)
!2303 = !DILocation(line: 84, column: 3, scope: !2295)
!2304 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2253, file: !2253, line: 91, type: !2305, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!470, !470, !1982}
!2307 = !{!2308, !2309}
!2308 = !DILocalVariable(name: "__c", arg: 1, scope: !2304, file: !2253, line: 91, type: !470)
!2309 = !DILocalVariable(name: "__stream", arg: 2, scope: !2304, file: !2253, line: 91, type: !1982)
!2310 = !DILocation(line: 0, scope: !2304)
!2311 = !DILocation(line: 93, column: 10, scope: !2304)
!2312 = !DILocation(line: 93, column: 3, scope: !2304)
!2313 = distinct !DISubprogram(name: "putc_unlocked", scope: !2253, file: !2253, line: 101, type: !2305, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2314)
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "__c", arg: 1, scope: !2313, file: !2253, line: 101, type: !470)
!2316 = !DILocalVariable(name: "__stream", arg: 2, scope: !2313, file: !2253, line: 101, type: !1982)
!2317 = !DILocation(line: 0, scope: !2313)
!2318 = !DILocation(line: 103, column: 10, scope: !2313)
!2319 = !DILocation(line: 103, column: 3, scope: !2313)
!2320 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2253, file: !2253, line: 108, type: !2296, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2321)
!2321 = !{!2322}
!2322 = !DILocalVariable(name: "__c", arg: 1, scope: !2320, file: !2253, line: 108, type: !470)
!2323 = !DILocation(line: 0, scope: !2320)
!2324 = !DILocation(line: 110, column: 10, scope: !2320)
!2325 = !DILocation(line: 110, column: 3, scope: !2320)
!2326 = distinct !DISubprogram(name: "getline", scope: !2253, file: !2253, line: 118, type: !2327, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!2329, !471, !2330, !1982}
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2009, line: 193, baseType: !533)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!2331 = !{!2332, !2333, !2334}
!2332 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2326, file: !2253, line: 118, type: !471)
!2333 = !DILocalVariable(name: "__n", arg: 2, scope: !2326, file: !2253, line: 118, type: !2330)
!2334 = !DILocalVariable(name: "__stream", arg: 3, scope: !2326, file: !2253, line: 118, type: !1982)
!2335 = !DILocation(line: 0, scope: !2326)
!2336 = !DILocation(line: 120, column: 10, scope: !2326)
!2337 = !DILocation(line: 120, column: 3, scope: !2326)
!2338 = distinct !DISubprogram(name: "feof_unlocked", scope: !2253, file: !2253, line: 128, type: !2279, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2339)
!2339 = !{!2340}
!2340 = !DILocalVariable(name: "__stream", arg: 1, scope: !2338, file: !2253, line: 128, type: !1982)
!2341 = !DILocation(line: 0, scope: !2338)
!2342 = !DILocation(line: 130, column: 10, scope: !2338)
!2343 = !DILocation(line: 130, column: 3, scope: !2338)
!2344 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2253, file: !2253, line: 135, type: !2279, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2345)
!2345 = !{!2346}
!2346 = !DILocalVariable(name: "__stream", arg: 1, scope: !2344, file: !2253, line: 135, type: !1982)
!2347 = !DILocation(line: 0, scope: !2344)
!2348 = !DILocation(line: 137, column: 10, scope: !2344)
!2349 = !DILocation(line: 137, column: 3, scope: !2344)
!2350 = distinct !DISubprogram(name: "tolower", scope: !2351, file: !2351, line: 207, type: !2296, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2352)
!2351 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2352 = !{!2353}
!2353 = !DILocalVariable(name: "__c", arg: 1, scope: !2350, file: !2351, line: 207, type: !470)
!2354 = !DILocation(line: 0, scope: !2350)
!2355 = !DILocation(line: 209, column: 22, scope: !2350)
!2356 = !DILocation(line: 209, column: 39, scope: !2350)
!2357 = !DILocation(line: 209, column: 38, scope: !2350)
!2358 = !DILocation(line: 209, column: 37, scope: !2350)
!2359 = !DILocation(line: 209, column: 10, scope: !2350)
!2360 = !DILocation(line: 209, column: 3, scope: !2350)
!2361 = distinct !DISubprogram(name: "toupper", scope: !2351, file: !2351, line: 213, type: !2296, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2362 = !{!2363}
!2363 = !DILocalVariable(name: "__c", arg: 1, scope: !2361, file: !2351, line: 213, type: !470)
!2364 = !DILocation(line: 0, scope: !2361)
!2365 = !DILocation(line: 215, column: 22, scope: !2361)
!2366 = !DILocation(line: 215, column: 39, scope: !2361)
!2367 = !DILocation(line: 215, column: 38, scope: !2361)
!2368 = !DILocation(line: 215, column: 37, scope: !2361)
!2369 = !DILocation(line: 215, column: 10, scope: !2361)
!2370 = !DILocation(line: 215, column: 3, scope: !2361)
!2371 = distinct !DISubprogram(name: "atoi", scope: !2372, file: !2372, line: 361, type: !2373, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2375)
!2372 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!470, !475}
!2375 = !{!2376}
!2376 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2371, file: !2372, line: 361, type: !475)
!2377 = !DILocation(line: 0, scope: !2371)
!2378 = !DILocation(line: 363, column: 16, scope: !2371)
!2379 = !DILocation(line: 363, column: 10, scope: !2371)
!2380 = !DILocation(line: 363, column: 3, scope: !2371)
!2381 = distinct !DISubprogram(name: "atol", scope: !2372, file: !2372, line: 366, type: !2382, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!533, !475}
!2384 = !{!2385}
!2385 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2381, file: !2372, line: 366, type: !475)
!2386 = !DILocation(line: 0, scope: !2381)
!2387 = !DILocation(line: 368, column: 10, scope: !2381)
!2388 = !DILocation(line: 368, column: 3, scope: !2381)
!2389 = distinct !DISubprogram(name: "atoll", scope: !2372, file: !2372, line: 373, type: !2390, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2393)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!2392, !475}
!2392 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2393 = !{!2394}
!2394 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2389, file: !2372, line: 373, type: !475)
!2395 = !DILocation(line: 0, scope: !2389)
!2396 = !DILocation(line: 375, column: 10, scope: !2389)
!2397 = !DILocation(line: 375, column: 3, scope: !2389)
!2398 = distinct !DISubprogram(name: "bsearch", scope: !2399, file: !2399, line: 20, type: !2400, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!474, !1162, !1162, !948, !948, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2372, line: 808, baseType: !1366)
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413}
!2404 = !DILocalVariable(name: "__key", arg: 1, scope: !2398, file: !2399, line: 20, type: !1162)
!2405 = !DILocalVariable(name: "__base", arg: 2, scope: !2398, file: !2399, line: 20, type: !1162)
!2406 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2398, file: !2399, line: 20, type: !948)
!2407 = !DILocalVariable(name: "__size", arg: 4, scope: !2398, file: !2399, line: 20, type: !948)
!2408 = !DILocalVariable(name: "__compar", arg: 5, scope: !2398, file: !2399, line: 21, type: !2402)
!2409 = !DILocalVariable(name: "__l", scope: !2398, file: !2399, line: 23, type: !948)
!2410 = !DILocalVariable(name: "__u", scope: !2398, file: !2399, line: 23, type: !948)
!2411 = !DILocalVariable(name: "__idx", scope: !2398, file: !2399, line: 23, type: !948)
!2412 = !DILocalVariable(name: "__p", scope: !2398, file: !2399, line: 24, type: !1162)
!2413 = !DILocalVariable(name: "__comparison", scope: !2398, file: !2399, line: 25, type: !470)
!2414 = !DILocation(line: 0, scope: !2398)
!2415 = !DILocation(line: 29, column: 3, scope: !2398)
!2416 = !DILocation(line: 27, column: 7, scope: !2398)
!2417 = !DILocation(line: 29, column: 14, scope: !2398)
!2418 = !DILocation(line: 31, column: 20, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2398, file: !2399, line: 30, column: 5)
!2420 = !DILocation(line: 31, column: 27, scope: !2419)
!2421 = !DILocation(line: 32, column: 56, scope: !2419)
!2422 = !DILocation(line: 32, column: 47, scope: !2419)
!2423 = !DILocation(line: 33, column: 22, scope: !2419)
!2424 = !DILocation(line: 34, column: 24, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2419, file: !2399, line: 34, column: 11)
!2426 = !DILocation(line: 34, column: 11, scope: !2419)
!2427 = !DILocation(line: 36, column: 29, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2425, file: !2399, line: 36, column: 16)
!2429 = !DILocation(line: 36, column: 16, scope: !2425)
!2430 = !DILocation(line: 37, column: 14, scope: !2428)
!2431 = distinct !{!2431, !2415, !2432}
!2432 = !DILocation(line: 40, column: 5, scope: !2398)
!2433 = !DILocation(line: 43, column: 1, scope: !2398)
!2434 = distinct !DISubprogram(name: "atof", scope: !2435, file: !2435, line: 25, type: !2436, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2435 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!2438, !475}
!2438 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2439 = !{!2440}
!2440 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2434, file: !2435, line: 25, type: !475)
!2441 = !DILocation(line: 0, scope: !2434)
!2442 = !DILocation(line: 27, column: 10, scope: !2434)
!2443 = !DILocation(line: 27, column: 3, scope: !2434)
!2444 = distinct !DISubprogram(name: "strtoimax", scope: !2445, file: !2445, line: 324, type: !2446, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2452)
!2445 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!2448, !2256, !2451, !470}
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2449, line: 101, baseType: !2450)
!2449 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2009, line: 72, baseType: !533)
!2451 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !471)
!2452 = !{!2453, !2454, !2455}
!2453 = !DILocalVariable(name: "nptr", arg: 1, scope: !2444, file: !2445, line: 324, type: !2256)
!2454 = !DILocalVariable(name: "endptr", arg: 2, scope: !2444, file: !2445, line: 324, type: !2451)
!2455 = !DILocalVariable(name: "base", arg: 3, scope: !2444, file: !2445, line: 324, type: !470)
!2456 = !DILocation(line: 0, scope: !2444)
!2457 = !DILocation(line: 327, column: 10, scope: !2444)
!2458 = !DILocation(line: 327, column: 3, scope: !2444)
!2459 = distinct !DISubprogram(name: "strtoumax", scope: !2445, file: !2445, line: 336, type: !2460, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2464)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!2462, !2256, !2451, !470}
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2449, line: 102, baseType: !2463)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2009, line: 73, baseType: !478)
!2464 = !{!2465, !2466, !2467}
!2465 = !DILocalVariable(name: "nptr", arg: 1, scope: !2459, file: !2445, line: 336, type: !2256)
!2466 = !DILocalVariable(name: "endptr", arg: 2, scope: !2459, file: !2445, line: 336, type: !2451)
!2467 = !DILocalVariable(name: "base", arg: 3, scope: !2459, file: !2445, line: 336, type: !470)
!2468 = !DILocation(line: 0, scope: !2459)
!2469 = !DILocation(line: 339, column: 10, scope: !2459)
!2470 = !DILocation(line: 339, column: 3, scope: !2459)
!2471 = distinct !DISubprogram(name: "wcstoimax", scope: !2445, file: !2445, line: 348, type: !2472, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2481)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!2448, !2474, !2478, !470}
!2474 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2475)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2477)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2445, line: 34, baseType: !470)
!2478 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2479)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2481 = !{!2482, !2483, !2484}
!2482 = !DILocalVariable(name: "nptr", arg: 1, scope: !2471, file: !2445, line: 348, type: !2474)
!2483 = !DILocalVariable(name: "endptr", arg: 2, scope: !2471, file: !2445, line: 348, type: !2478)
!2484 = !DILocalVariable(name: "base", arg: 3, scope: !2471, file: !2445, line: 348, type: !470)
!2485 = !DILocation(line: 0, scope: !2471)
!2486 = !DILocation(line: 351, column: 10, scope: !2471)
!2487 = !DILocation(line: 351, column: 3, scope: !2471)
!2488 = distinct !DISubprogram(name: "wcstoumax", scope: !2445, file: !2445, line: 362, type: !2489, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!2462, !2474, !2478, !470}
!2491 = !{!2492, !2493, !2494}
!2492 = !DILocalVariable(name: "nptr", arg: 1, scope: !2488, file: !2445, line: 362, type: !2474)
!2493 = !DILocalVariable(name: "endptr", arg: 2, scope: !2488, file: !2445, line: 362, type: !2478)
!2494 = !DILocalVariable(name: "base", arg: 3, scope: !2488, file: !2445, line: 362, type: !470)
!2495 = !DILocation(line: 0, scope: !2488)
!2496 = !DILocation(line: 365, column: 10, scope: !2488)
!2497 = !DILocation(line: 365, column: 3, scope: !2488)
!2498 = distinct !DISubprogram(name: "stat", scope: !2499, file: !2499, line: 453, type: !2500, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2537)
!2499 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!470, !475, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2504, line: 46, size: 1152, elements: !2505)
!2504 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2505 = !{!2506, !2508, !2510, !2512, !2514, !2516, !2518, !2519, !2520, !2521, !2523, !2525, !2533, !2534, !2535}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2503, file: !2504, line: 48, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2009, line: 145, baseType: !478)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2503, file: !2504, line: 53, baseType: !2509, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2009, line: 148, baseType: !478)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2503, file: !2504, line: 61, baseType: !2511, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2009, line: 151, baseType: !478)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2503, file: !2504, line: 62, baseType: !2513, size: 32, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2009, line: 150, baseType: !7)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2503, file: !2504, line: 64, baseType: !2515, size: 32, offset: 224)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2009, line: 146, baseType: !7)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2503, file: !2504, line: 65, baseType: !2517, size: 32, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2009, line: 147, baseType: !7)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2503, file: !2504, line: 67, baseType: !470, size: 32, offset: 288)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2503, file: !2504, line: 69, baseType: !2507, size: 64, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2503, file: !2504, line: 74, baseType: !2008, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2503, file: !2504, line: 78, baseType: !2522, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2009, line: 174, baseType: !533)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2503, file: !2504, line: 80, baseType: !2524, size: 64, offset: 512)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2009, line: 179, baseType: !533)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2503, file: !2504, line: 91, baseType: !2526, size: 128, offset: 576)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2527, line: 10, size: 128, elements: !2528)
!2527 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2528 = !{!2529, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2526, file: !2527, line: 12, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2009, line: 160, baseType: !533)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2526, file: !2527, line: 16, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2009, line: 196, baseType: !533)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2503, file: !2504, line: 92, baseType: !2526, size: 128, offset: 704)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2503, file: !2504, line: 93, baseType: !2526, size: 128, offset: 832)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2503, file: !2504, line: 106, baseType: !2536, size: 192, offset: 960)
!2536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2532, size: 192, elements: !551)
!2537 = !{!2538, !2539}
!2538 = !DILocalVariable(name: "__path", arg: 1, scope: !2498, file: !2499, line: 453, type: !475)
!2539 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2498, file: !2499, line: 453, type: !2502)
!2540 = !DILocation(line: 0, scope: !2498)
!2541 = !DILocation(line: 455, column: 10, scope: !2498)
!2542 = !DILocation(line: 455, column: 3, scope: !2498)
!2543 = distinct !DISubprogram(name: "lstat", scope: !2499, file: !2499, line: 460, type: !2500, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2544)
!2544 = !{!2545, !2546}
!2545 = !DILocalVariable(name: "__path", arg: 1, scope: !2543, file: !2499, line: 460, type: !475)
!2546 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2543, file: !2499, line: 460, type: !2502)
!2547 = !DILocation(line: 0, scope: !2543)
!2548 = !DILocation(line: 462, column: 10, scope: !2543)
!2549 = !DILocation(line: 462, column: 3, scope: !2543)
!2550 = distinct !DISubprogram(name: "fstat", scope: !2499, file: !2499, line: 467, type: !2551, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!470, !470, !2502}
!2553 = !{!2554, !2555}
!2554 = !DILocalVariable(name: "__fd", arg: 1, scope: !2550, file: !2499, line: 467, type: !470)
!2555 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2550, file: !2499, line: 467, type: !2502)
!2556 = !DILocation(line: 0, scope: !2550)
!2557 = !DILocation(line: 469, column: 10, scope: !2550)
!2558 = !DILocation(line: 469, column: 3, scope: !2550)
!2559 = distinct !DISubprogram(name: "fstatat", scope: !2499, file: !2499, line: 474, type: !2560, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!470, !470, !475, !2502, !470}
!2562 = !{!2563, !2564, !2565, !2566}
!2563 = !DILocalVariable(name: "__fd", arg: 1, scope: !2559, file: !2499, line: 474, type: !470)
!2564 = !DILocalVariable(name: "__filename", arg: 2, scope: !2559, file: !2499, line: 474, type: !475)
!2565 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2559, file: !2499, line: 474, type: !2502)
!2566 = !DILocalVariable(name: "__flag", arg: 4, scope: !2559, file: !2499, line: 474, type: !470)
!2567 = !DILocation(line: 0, scope: !2559)
!2568 = !DILocation(line: 477, column: 10, scope: !2559)
!2569 = !DILocation(line: 477, column: 3, scope: !2559)
!2570 = distinct !DISubprogram(name: "mknod", scope: !2499, file: !2499, line: 483, type: !2571, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!470, !475, !2513, !2507}
!2573 = !{!2574, !2575, !2576}
!2574 = !DILocalVariable(name: "__path", arg: 1, scope: !2570, file: !2499, line: 483, type: !475)
!2575 = !DILocalVariable(name: "__mode", arg: 2, scope: !2570, file: !2499, line: 483, type: !2513)
!2576 = !DILocalVariable(name: "__dev", arg: 3, scope: !2570, file: !2499, line: 483, type: !2507)
!2577 = !DILocation(line: 0, scope: !2570)
!2578 = !DILocation(line: 485, column: 10, scope: !2570)
!2579 = !DILocation(line: 485, column: 3, scope: !2570)
!2580 = distinct !DISubprogram(name: "mknodat", scope: !2499, file: !2499, line: 491, type: !2581, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2583)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!470, !470, !475, !2513, !2507}
!2583 = !{!2584, !2585, !2586, !2587}
!2584 = !DILocalVariable(name: "__fd", arg: 1, scope: !2580, file: !2499, line: 491, type: !470)
!2585 = !DILocalVariable(name: "__path", arg: 2, scope: !2580, file: !2499, line: 491, type: !475)
!2586 = !DILocalVariable(name: "__mode", arg: 3, scope: !2580, file: !2499, line: 491, type: !2513)
!2587 = !DILocalVariable(name: "__dev", arg: 4, scope: !2580, file: !2499, line: 491, type: !2507)
!2588 = !DILocation(line: 0, scope: !2580)
!2589 = !DILocation(line: 494, column: 10, scope: !2580)
!2590 = !DILocation(line: 494, column: 3, scope: !2580)
!2591 = distinct !DISubprogram(name: "stat64", scope: !2499, file: !2499, line: 502, type: !2592, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2614)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!470, !475, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2504, line: 119, size: 1152, elements: !2596)
!2596 = !{!2597, !2598, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2610, !2611, !2612, !2613}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2595, file: !2504, line: 121, baseType: !2507, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2595, file: !2504, line: 123, baseType: !2599, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2009, line: 149, baseType: !478)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2595, file: !2504, line: 124, baseType: !2511, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2595, file: !2504, line: 125, baseType: !2513, size: 32, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2595, file: !2504, line: 132, baseType: !2515, size: 32, offset: 224)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2595, file: !2504, line: 133, baseType: !2517, size: 32, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2595, file: !2504, line: 135, baseType: !470, size: 32, offset: 288)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2595, file: !2504, line: 136, baseType: !2507, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2595, file: !2504, line: 137, baseType: !2008, size: 64, offset: 384)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2595, file: !2504, line: 143, baseType: !2522, size: 64, offset: 448)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2595, file: !2504, line: 144, baseType: !2609, size: 64, offset: 512)
!2609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2009, line: 180, baseType: !533)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2595, file: !2504, line: 152, baseType: !2526, size: 128, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2595, file: !2504, line: 153, baseType: !2526, size: 128, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2595, file: !2504, line: 154, baseType: !2526, size: 128, offset: 832)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2595, file: !2504, line: 164, baseType: !2536, size: 192, offset: 960)
!2614 = !{!2615, !2616}
!2615 = !DILocalVariable(name: "__path", arg: 1, scope: !2591, file: !2499, line: 502, type: !475)
!2616 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2591, file: !2499, line: 502, type: !2594)
!2617 = !DILocation(line: 0, scope: !2591)
!2618 = !DILocation(line: 504, column: 10, scope: !2591)
!2619 = !DILocation(line: 504, column: 3, scope: !2591)
!2620 = distinct !DISubprogram(name: "lstat64", scope: !2499, file: !2499, line: 509, type: !2592, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2621)
!2621 = !{!2622, !2623}
!2622 = !DILocalVariable(name: "__path", arg: 1, scope: !2620, file: !2499, line: 509, type: !475)
!2623 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2620, file: !2499, line: 509, type: !2594)
!2624 = !DILocation(line: 0, scope: !2620)
!2625 = !DILocation(line: 511, column: 10, scope: !2620)
!2626 = !DILocation(line: 511, column: 3, scope: !2620)
!2627 = distinct !DISubprogram(name: "fstat64", scope: !2499, file: !2499, line: 516, type: !2628, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!470, !470, !2594}
!2630 = !{!2631, !2632}
!2631 = !DILocalVariable(name: "__fd", arg: 1, scope: !2627, file: !2499, line: 516, type: !470)
!2632 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2627, file: !2499, line: 516, type: !2594)
!2633 = !DILocation(line: 0, scope: !2627)
!2634 = !DILocation(line: 518, column: 10, scope: !2627)
!2635 = !DILocation(line: 518, column: 3, scope: !2627)
!2636 = distinct !DISubprogram(name: "fstatat64", scope: !2499, file: !2499, line: 523, type: !2637, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!470, !470, !475, !2594, !470}
!2639 = !{!2640, !2641, !2642, !2643}
!2640 = !DILocalVariable(name: "__fd", arg: 1, scope: !2636, file: !2499, line: 523, type: !470)
!2641 = !DILocalVariable(name: "__filename", arg: 2, scope: !2636, file: !2499, line: 523, type: !475)
!2642 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2636, file: !2499, line: 523, type: !2594)
!2643 = !DILocalVariable(name: "__flag", arg: 4, scope: !2636, file: !2499, line: 523, type: !470)
!2644 = !DILocation(line: 0, scope: !2636)
!2645 = !DILocation(line: 526, column: 10, scope: !2636)
!2646 = !DILocation(line: 526, column: 3, scope: !2636)
!2647 = distinct !DISubprogram(name: "set_src_pwd", scope: !3, file: !3, line: 419, type: !2648, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!469, !475}
!2650 = !{!2651}
!2651 = !DILocalVariable(name: "pwd", arg: 1, scope: !2647, file: !3, line: 419, type: !475)
!2652 = !DILocation(line: 0, scope: !2647)
!2653 = !DILocation(line: 421, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 421, column: 7)
!2655 = !DILocation(line: 421, column: 7, scope: !2647)
!2656 = !DILocation(line: 423, column: 11, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 423, column: 11)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 422, column: 5)
!2659 = !DILocation(line: 423, column: 33, scope: !2657)
!2660 = !DILocation(line: 0, scope: !2657)
!2661 = !DILocation(line: 429, column: 13, scope: !2647)
!2662 = !DILocation(line: 429, column: 11, scope: !2647)
!2663 = !DILocation(line: 430, column: 3, scope: !2647)
!2664 = !DILocation(line: 431, column: 1, scope: !2647)
!2665 = distinct !DISubprogram(name: "get_src_pwd", scope: !3, file: !3, line: 438, type: !2666, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!475}
!2668 = !DILocation(line: 440, column: 9, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 440, column: 7)
!2670 = !DILocation(line: 440, column: 7, scope: !2665)
!2671 = !DILocation(line: 442, column: 17, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 441, column: 5)
!2673 = !DILocation(line: 443, column: 12, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 443, column: 11)
!2675 = !DILocation(line: 443, column: 11, scope: !2672)
!2676 = !DILocation(line: 0, scope: !2672)
!2677 = !DILocation(line: 445, column: 5, scope: !2672)
!2678 = !DILocation(line: 447, column: 11, scope: !2665)
!2679 = !DILocation(line: 447, column: 4, scope: !2665)
!2680 = distinct !DISubprogram(name: "announce_function", scope: !3, file: !3, line: 453, type: !2133, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2681)
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "decl", arg: 1, scope: !2680, file: !3, line: 453, type: !479)
!2683 = !DILocation(line: 0, scope: !2680)
!2684 = !DILocation(line: 455, column: 8, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 455, column: 7)
!2686 = !DILocation(line: 455, column: 7, scope: !2680)
!2687 = !DILocation(line: 457, column: 11, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 457, column: 11)
!2689 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 456, column: 5)
!2690 = !DILocation(line: 0, scope: !2688)
!2691 = !DILocation(line: 457, column: 11, scope: !2689)
!2692 = !DILocation(line: 459, column: 26, scope: !2688)
!2693 = !DILocation(line: 459, column: 4, scope: !2688)
!2694 = !DILocation(line: 458, column: 2, scope: !2688)
!2695 = !DILocation(line: 462, column: 37, scope: !2688)
!2696 = !DILocation(line: 462, column: 26, scope: !2688)
!2697 = !DILocation(line: 462, column: 4, scope: !2688)
!2698 = !DILocation(line: 461, column: 2, scope: !2688)
!2699 = !DILocation(line: 463, column: 15, scope: !2689)
!2700 = !DILocation(line: 463, column: 7, scope: !2689)
!2701 = !DILocation(line: 464, column: 7, scope: !2689)
!2702 = !DILocation(line: 464, column: 45, scope: !2689)
!2703 = !DILocation(line: 465, column: 7, scope: !2689)
!2704 = !DILocation(line: 466, column: 5, scope: !2689)
!2705 = !DILocation(line: 467, column: 1, scope: !2680)
!2706 = distinct !DISubprogram(name: "get_random_seed", scope: !3, file: !3, line: 517, type: !2707, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2709)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!475, !469}
!2709 = !{!2710}
!2710 = !DILocalVariable(name: "noinit", arg: 1, scope: !2706, file: !3, line: 517, type: !469)
!2711 = !DILocation(line: 0, scope: !2706)
!2712 = !DILocation(line: 519, column: 8, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 519, column: 7)
!2714 = !DILocation(line: 519, column: 29, scope: !2713)
!2715 = !DILocation(line: 519, column: 25, scope: !2713)
!2716 = !DILocation(line: 520, column: 5, scope: !2713)
!2717 = !DILocation(line: 521, column: 10, scope: !2706)
!2718 = !DILocation(line: 521, column: 3, scope: !2706)
!2719 = !DILocation(line: 507, column: 11, scope: !2221)
!2720 = !DILocation(line: 507, column: 24, scope: !2221)
!2721 = !DILocation(line: 507, column: 22, scope: !2221)
!2722 = !DILocation(line: 0, scope: !2221)
!2723 = !DILocation(line: 509, column: 3, scope: !2221)
!2724 = !DILocation(line: 510, column: 20, scope: !2221)
!2725 = !DILocation(line: 511, column: 1, scope: !2221)
!2726 = distinct !DISubprogram(name: "set_random_seed", scope: !3, file: !3, line: 528, type: !2727, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!475, !475}
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "val", arg: 1, scope: !2726, file: !3, line: 528, type: !475)
!2731 = !DILocalVariable(name: "old", scope: !2726, file: !3, line: 530, type: !475)
!2732 = !DILocation(line: 0, scope: !2726)
!2733 = !DILocation(line: 530, column: 21, scope: !2726)
!2734 = !DILocation(line: 531, column: 20, scope: !2726)
!2735 = !DILocation(line: 532, column: 3, scope: !2726)
!2736 = distinct !DISubprogram(name: "read_integral_parameter", scope: !3, file: !3, line: 541, type: !2737, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2740)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!470, !475, !475, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!2740 = !{!2741, !2742, !2743, !2744}
!2741 = !DILocalVariable(name: "p", arg: 1, scope: !2736, file: !3, line: 541, type: !475)
!2742 = !DILocalVariable(name: "pname", arg: 2, scope: !2736, file: !3, line: 541, type: !475)
!2743 = !DILocalVariable(name: "defval", arg: 3, scope: !2736, file: !3, line: 541, type: !2739)
!2744 = !DILocalVariable(name: "endp", scope: !2736, file: !3, line: 543, type: !475)
!2745 = !DILocation(line: 0, scope: !2736)
!2746 = !DILocation(line: 545, column: 3, scope: !2736)
!2747 = !DILocation(line: 545, column: 10, scope: !2736)
!2748 = !DILocation(line: 547, column: 11, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 547, column: 11)
!2750 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 546, column: 5)
!2751 = !DILocation(line: 547, column: 11, scope: !2750)
!2752 = !DILocation(line: 548, column: 6, scope: !2749)
!2753 = distinct !{!2753, !2746, !2754}
!2754 = !DILocation(line: 551, column: 5, scope: !2736)
!2755 = !DILocation(line: 553, column: 7, scope: !2736)
!2756 = !DILocation(line: 555, column: 17, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 555, column: 11)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 554, column: 5)
!2759 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 553, column: 7)
!2760 = !DILocation(line: 555, column: 11, scope: !2758)
!2761 = !DILocation(line: 556, column: 2, scope: !2757)
!2762 = !DILocation(line: 560, column: 10, scope: !2736)
!2763 = !DILocation(line: 560, column: 3, scope: !2736)
!2764 = !DILocation(line: 561, column: 1, scope: !2736)
!2765 = distinct !DISubprogram(name: "floor_log2", scope: !3, file: !3, line: 573, type: !2766, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!470, !478}
!2768 = !{!2769, !2770}
!2769 = !DILocalVariable(name: "x", arg: 1, scope: !2765, file: !3, line: 573, type: !478)
!2770 = !DILocalVariable(name: "t", scope: !2765, file: !3, line: 575, type: !470)
!2771 = !DILocation(line: 0, scope: !2765)
!2772 = !DILocation(line: 577, column: 9, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 577, column: 7)
!2774 = !DILocation(line: 577, column: 7, scope: !2765)
!2775 = !DILocation(line: 584, column: 11, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 584, column: 9)
!2777 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 583, column: 7)
!2778 = !DILocation(line: 584, column: 9, scope: !2777)
!2779 = !DILocation(line: 586, column: 47, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 586, column: 7)
!2781 = !DILocation(line: 586, column: 41, scope: !2780)
!2782 = !DILocation(line: 586, column: 9, scope: !2780)
!2783 = !DILocation(line: 586, column: 7, scope: !2765)
!2784 = !DILocation(line: 588, column: 47, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 588, column: 7)
!2786 = !DILocation(line: 588, column: 41, scope: !2785)
!2787 = !DILocation(line: 588, column: 9, scope: !2785)
!2788 = !DILocation(line: 588, column: 7, scope: !2765)
!2789 = !DILocation(line: 590, column: 47, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 590, column: 7)
!2791 = !DILocation(line: 590, column: 41, scope: !2790)
!2792 = !DILocation(line: 590, column: 9, scope: !2790)
!2793 = !DILocation(line: 590, column: 7, scope: !2765)
!2794 = !DILocation(line: 592, column: 47, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 592, column: 7)
!2796 = !DILocation(line: 592, column: 41, scope: !2795)
!2797 = !DILocation(line: 592, column: 9, scope: !2795)
!2798 = !DILocation(line: 592, column: 7, scope: !2765)
!2799 = !DILocation(line: 594, column: 47, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 594, column: 7)
!2801 = !DILocation(line: 594, column: 41, scope: !2800)
!2802 = !DILocation(line: 594, column: 9, scope: !2800)
!2803 = !DILocation(line: 594, column: 7, scope: !2765)
!2804 = !DILocation(line: 598, column: 1, scope: !2765)
!2805 = distinct !DISubprogram(name: "exact_log2", scope: !3, file: !3, line: 604, type: !2766, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2806)
!2806 = !{!2807}
!2807 = !DILocalVariable(name: "x", arg: 1, scope: !2805, file: !3, line: 604, type: !478)
!2808 = !DILocation(line: 0, scope: !2805)
!2809 = !DILocation(line: 606, column: 9, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 606, column: 7)
!2811 = !{i64 0, i64 65}
!2812 = !DILocation(line: 606, column: 7, scope: !2805)
!2813 = !DILocation(line: 608, column: 10, scope: !2805)
!2814 = !DILocation(line: 608, column: 3, scope: !2805)
!2815 = !DILocation(line: 609, column: 1, scope: !2805)
!2816 = distinct !DISubprogram(name: "strip_off_ending", scope: !3, file: !3, line: 662, type: !2817, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !472, !470}
!2819 = !{!2820, !2821, !2822}
!2820 = !DILocalVariable(name: "name", arg: 1, scope: !2816, file: !3, line: 662, type: !472)
!2821 = !DILocalVariable(name: "len", arg: 2, scope: !2816, file: !3, line: 662, type: !470)
!2822 = !DILocalVariable(name: "i", scope: !2816, file: !3, line: 664, type: !470)
!2823 = !DILocation(line: 0, scope: !2816)
!2824 = !DILocation(line: 665, column: 8, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 665, column: 3)
!2826 = !DILocation(line: 0, scope: !2825)
!2827 = !DILocation(line: 665, column: 17, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 665, column: 3)
!2829 = !DILocation(line: 665, column: 28, scope: !2828)
!2830 = !DILocation(line: 665, column: 21, scope: !2828)
!2831 = !DILocation(line: 665, column: 3, scope: !2825)
!2832 = !DILocation(line: 667, column: 20, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 667, column: 11)
!2834 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 666, column: 5)
!2835 = !DILocation(line: 667, column: 11, scope: !2833)
!2836 = !DILocation(line: 667, column: 25, scope: !2833)
!2837 = !DILocation(line: 667, column: 11, scope: !2834)
!2838 = !DILocation(line: 669, column: 18, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 668, column: 2)
!2840 = !DILocation(line: 670, column: 4, scope: !2839)
!2841 = !DILocation(line: 665, column: 34, scope: !2828)
!2842 = !DILocation(line: 665, column: 3, scope: !2828)
!2843 = distinct !{!2843, !2831, !2844}
!2844 = !DILocation(line: 672, column: 5, scope: !2825)
!2845 = !DILocation(line: 673, column: 1, scope: !2816)
!2846 = distinct !DISubprogram(name: "output_quoted_string", scope: !3, file: !3, line: 678, type: !2041, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2847)
!2847 = !{!2848, !2849, !2850}
!2848 = !DILocalVariable(name: "asm_file", arg: 1, scope: !2846, file: !3, line: 678, type: !1982)
!2849 = !DILocalVariable(name: "string", arg: 2, scope: !2846, file: !3, line: 678, type: !475)
!2850 = !DILocalVariable(name: "c", scope: !2846, file: !3, line: 683, type: !473)
!2851 = !DILocation(line: 0, scope: !2846)
!2852 = !DILocation(line: 685, column: 3, scope: !2846)
!2853 = !DILocation(line: 686, column: 3, scope: !2846)
!2854 = !DILocation(line: 686, column: 22, scope: !2846)
!2855 = !DILocation(line: 686, column: 15, scope: !2846)
!2856 = !DILocation(line: 686, column: 26, scope: !2846)
!2857 = !DILocation(line: 688, column: 11, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 688, column: 11)
!2859 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 687, column: 5)
!2860 = !DILocation(line: 688, column: 11, scope: !2859)
!2861 = !DILocation(line: 690, column: 10, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 690, column: 8)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 689, column: 2)
!2864 = !DILocation(line: 690, column: 23, scope: !2862)
!2865 = !DILocation(line: 690, column: 18, scope: !2862)
!2866 = !DILocation(line: 691, column: 6, scope: !2862)
!2867 = !DILocation(line: 692, column: 10, scope: !2863)
!2868 = !DILocation(line: 692, column: 4, scope: !2863)
!2869 = !DILocation(line: 693, column: 2, scope: !2863)
!2870 = !DILocation(line: 695, column: 31, scope: !2858)
!2871 = !DILocation(line: 695, column: 2, scope: !2858)
!2872 = distinct !{!2872, !2853, !2873}
!2873 = !DILocation(line: 696, column: 5, scope: !2846)
!2874 = !DILocation(line: 697, column: 3, scope: !2846)
!2875 = !DILocation(line: 699, column: 1, scope: !2846)
!2876 = distinct !DISubprogram(name: "output_file_directive", scope: !3, file: !3, line: 704, type: !2041, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2877)
!2877 = !{!2878, !2879, !2880, !2881}
!2878 = !DILocalVariable(name: "asm_file", arg: 1, scope: !2876, file: !3, line: 704, type: !1982)
!2879 = !DILocalVariable(name: "input_name", arg: 2, scope: !2876, file: !3, line: 704, type: !475)
!2880 = !DILocalVariable(name: "len", scope: !2876, file: !3, line: 706, type: !470)
!2881 = !DILocalVariable(name: "na", scope: !2876, file: !3, line: 707, type: !475)
!2882 = !DILocation(line: 0, scope: !2876)
!2883 = !DILocation(line: 709, column: 18, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 709, column: 7)
!2885 = !DILocation(line: 709, column: 7, scope: !2876)
!2886 = !DILocation(line: 712, column: 18, scope: !2884)
!2887 = !DILocation(line: 0, scope: !2884)
!2888 = !DILocation(line: 714, column: 9, scope: !2876)
!2889 = !DILocation(line: 715, column: 19, scope: !2876)
!2890 = !DILocation(line: 718, column: 3, scope: !2876)
!2891 = !DILocation(line: 718, column: 13, scope: !2876)
!2892 = !DILocation(line: 720, column: 11, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 720, column: 11)
!2894 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 719, column: 5)
!2895 = !DILocation(line: 720, column: 11, scope: !2894)
!2896 = distinct !{!2896, !2890, !2897}
!2897 = !DILocation(line: 723, column: 5, scope: !2876)
!2898 = !DILocation(line: 728, column: 3, scope: !2876)
!2899 = !DILocation(line: 729, column: 3, scope: !2876)
!2900 = !DILocation(line: 730, column: 3, scope: !2876)
!2901 = !DILocation(line: 732, column: 1, scope: !2876)
!2902 = distinct !DISubprogram(name: "wrapup_global_declaration_1", scope: !3, file: !3, line: 739, type: !2133, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2903)
!2903 = !{!2904}
!2904 = !DILocalVariable(name: "decl", arg: 1, scope: !2902, file: !3, line: 739, type: !479)
!2905 = !DILocation(line: 0, scope: !2902)
!2906 = !DILocation(line: 743, column: 7, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 743, column: 7)
!2908 = !DILocation(line: 744, column: 7, scope: !2907)
!2909 = !DILocation(line: 744, column: 10, scope: !2907)
!2910 = !DILocation(line: 744, column: 35, scope: !2907)
!2911 = !DILocation(line: 743, column: 7, scope: !2902)
!2912 = !DILocation(line: 745, column: 30, scope: !2907)
!2913 = !DILocation(line: 745, column: 5, scope: !2907)
!2914 = !DILocation(line: 747, column: 24, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 747, column: 7)
!2916 = !DILocation(line: 747, column: 36, scope: !2915)
!2917 = !DILocation(line: 747, column: 39, scope: !2915)
!2918 = !DILocation(line: 747, column: 56, scope: !2915)
!2919 = !DILocation(line: 747, column: 7, scope: !2902)
!2920 = !DILocation(line: 748, column: 16, scope: !2915)
!2921 = !DILocation(line: 748, column: 5, scope: !2915)
!2922 = !DILocation(line: 749, column: 1, scope: !2902)
!2923 = distinct !DISubprogram(name: "wrapup_global_declaration_2", scope: !3, file: !3, line: 755, type: !2924, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!469, !479}
!2926 = !{!2927, !2928, !2947}
!2927 = !DILocalVariable(name: "decl", arg: 1, scope: !2923, file: !3, line: 755, type: !479)
!2928 = !DILocalVariable(name: "node", scope: !2929, file: !3, line: 787, type: !2931)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 786, column: 5)
!2930 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 785, column: 7)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !2933, line: 358, size: 320, elements: !2934)
!2933 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2934 = !{!2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2932, file: !2933, line: 359, baseType: !479, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2932, file: !2933, line: 361, baseType: !2931, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2932, file: !2933, line: 363, baseType: !2931, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2932, file: !2933, line: 366, baseType: !2931, size: 64, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2932, file: !2933, line: 368, baseType: !470, size: 32, offset: 256)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2932, file: !2933, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2932, file: !2933, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2932, file: !2933, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2932, file: !2933, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2932, file: !2933, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2932, file: !2933, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2932, file: !2933, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2947 = !DILocalVariable(name: "needed", scope: !2929, file: !3, line: 788, type: !469)
!2948 = !DILocation(line: 0, scope: !2923)
!2949 = !DILocation(line: 757, column: 7, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 757, column: 7)
!2951 = !DILocation(line: 757, column: 31, scope: !2950)
!2952 = !DILocation(line: 757, column: 34, scope: !2950)
!2953 = !DILocation(line: 757, column: 7, scope: !2923)
!2954 = !DILocation(line: 785, column: 24, scope: !2930)
!2955 = !DILocation(line: 785, column: 36, scope: !2930)
!2956 = !DILocation(line: 785, column: 39, scope: !2930)
!2957 = !DILocation(line: 785, column: 7, scope: !2923)
!2958 = !DILocation(line: 0, scope: !2929)
!2959 = !DILocation(line: 789, column: 14, scope: !2929)
!2960 = !DILocation(line: 791, column: 17, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 791, column: 11)
!2962 = !DILocation(line: 791, column: 11, scope: !2961)
!2963 = !DILocation(line: 791, column: 11, scope: !2929)
!2964 = !DILocation(line: 793, column: 22, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 793, column: 16)
!2966 = !DILocation(line: 793, column: 16, scope: !2965)
!2967 = !DILocation(line: 793, column: 16, scope: !2961)
!2968 = !DILocation(line: 795, column: 17, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 795, column: 16)
!2970 = !DILocation(line: 796, column: 9, scope: !2969)
!2971 = !DILocation(line: 796, column: 13, scope: !2969)
!2972 = !DILocation(line: 797, column: 6, scope: !2969)
!2973 = !DILocation(line: 797, column: 9, scope: !2969)
!2974 = !DILocation(line: 795, column: 16, scope: !2965)
!2975 = !DILocation(line: 799, column: 22, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 799, column: 16)
!2977 = !DILocation(line: 799, column: 16, scope: !2976)
!2978 = !DILocation(line: 799, column: 16, scope: !2969)
!2979 = !DILocation(line: 801, column: 16, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 801, column: 16)
!2981 = !DILocation(line: 801, column: 16, scope: !2976)
!2982 = !DILocation(line: 803, column: 16, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 803, column: 16)
!2984 = !DILocation(line: 803, column: 37, scope: !2983)
!2985 = !DILocation(line: 803, column: 41, scope: !2983)
!2986 = !DILocation(line: 804, column: 9, scope: !2983)
!2987 = !DILocation(line: 804, column: 13, scope: !2983)
!2988 = !DILocation(line: 804, column: 26, scope: !2983)
!2989 = !DILocation(line: 804, column: 22, scope: !2983)
!2990 = !DILocation(line: 805, column: 9, scope: !2983)
!2991 = !DILocation(line: 803, column: 16, scope: !2980)
!2992 = !DILocation(line: 806, column: 2, scope: !2983)
!2993 = !DILocation(line: 808, column: 11, scope: !2929)
!2994 = !DILocation(line: 810, column: 4, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 809, column: 2)
!2996 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 808, column: 11)
!2997 = !DILocation(line: 811, column: 4, scope: !2995)
!2998 = !DILocation(line: 815, column: 3, scope: !2923)
!2999 = !DILocation(line: 816, column: 1, scope: !2923)
!3000 = distinct !DISubprogram(name: "wrapup_global_declarations", scope: !3, file: !3, line: 824, type: !3001, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!469, !837, !470}
!3003 = !{!3004, !3005, !3006, !3007, !3008}
!3004 = !DILocalVariable(name: "vec", arg: 1, scope: !3000, file: !3, line: 824, type: !837)
!3005 = !DILocalVariable(name: "len", arg: 2, scope: !3000, file: !3, line: 824, type: !470)
!3006 = !DILocalVariable(name: "reconsider", scope: !3000, file: !3, line: 826, type: !469)
!3007 = !DILocalVariable(name: "output_something", scope: !3000, file: !3, line: 826, type: !469)
!3008 = !DILocalVariable(name: "i", scope: !3000, file: !3, line: 827, type: !470)
!3009 = !DILocation(line: 0, scope: !3000)
!3010 = !DILocation(line: 829, column: 8, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 829, column: 3)
!3012 = !DILocation(line: 0, scope: !3011)
!3013 = !DILocation(line: 829, column: 17, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 829, column: 3)
!3015 = !DILocation(line: 829, column: 3, scope: !3011)
!3016 = !DILocation(line: 835, column: 3, scope: !3000)
!3017 = !DILocation(line: 830, column: 34, scope: !3014)
!3018 = !DILocation(line: 830, column: 5, scope: !3014)
!3019 = !DILocation(line: 829, column: 25, scope: !3014)
!3020 = !DILocation(line: 829, column: 3, scope: !3014)
!3021 = distinct !{!3021, !3015, !3022}
!3022 = !DILocation(line: 830, column: 40, scope: !3011)
!3023 = !DILocation(line: 838, column: 12, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 838, column: 7)
!3025 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 836, column: 5)
!3026 = !DILocation(line: 0, scope: !3025)
!3027 = !DILocation(line: 838, column: 21, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 838, column: 7)
!3029 = !DILocation(line: 838, column: 7, scope: !3024)
!3030 = !DILocation(line: 839, column: 45, scope: !3028)
!3031 = !DILocation(line: 839, column: 16, scope: !3028)
!3032 = !DILocation(line: 839, column: 13, scope: !3028)
!3033 = !DILocation(line: 838, column: 29, scope: !3028)
!3034 = !DILocation(line: 838, column: 7, scope: !3028)
!3035 = distinct !{!3035, !3029, !3036}
!3036 = !DILocation(line: 839, column: 51, scope: !3024)
!3037 = !DILocation(line: 840, column: 11, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 840, column: 11)
!3039 = !DILocation(line: 840, column: 11, scope: !3025)
!3040 = !DILocation(line: 842, column: 5, scope: !3025)
!3041 = distinct !{!3041, !3016, !3042}
!3042 = !DILocation(line: 843, column: 20, scope: !3000)
!3043 = !DILocation(line: 845, column: 3, scope: !3000)
!3044 = distinct !DISubprogram(name: "check_global_declaration_1", scope: !3, file: !3, line: 852, type: !2133, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3045)
!3045 = !{!3046}
!3046 = !DILocalVariable(name: "decl", arg: 1, scope: !3044, file: !3, line: 852, type: !479)
!3047 = !DILocation(line: 0, scope: !3044)
!3048 = !DILocation(line: 857, column: 7, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 857, column: 7)
!3050 = !DILocation(line: 857, column: 24, scope: !3049)
!3051 = !DILocation(line: 858, column: 7, scope: !3049)
!3052 = !DILocation(line: 858, column: 10, scope: !3049)
!3053 = !DILocation(line: 858, column: 30, scope: !3049)
!3054 = !DILocation(line: 859, column: 7, scope: !3049)
!3055 = !DILocation(line: 859, column: 10, scope: !3049)
!3056 = !DILocation(line: 860, column: 7, scope: !3049)
!3057 = !DILocation(line: 860, column: 12, scope: !3049)
!3058 = !DILocation(line: 861, column: 7, scope: !3049)
!3059 = !DILocation(line: 861, column: 12, scope: !3049)
!3060 = !DILocation(line: 862, column: 7, scope: !3049)
!3061 = !DILocation(line: 862, column: 12, scope: !3049)
!3062 = !DILocation(line: 863, column: 7, scope: !3049)
!3063 = !DILocation(line: 863, column: 11, scope: !3049)
!3064 = !DILocation(line: 864, column: 4, scope: !3049)
!3065 = !DILocation(line: 864, column: 7, scope: !3049)
!3066 = !DILocation(line: 857, column: 7, scope: !3044)
!3067 = !DILocation(line: 866, column: 11, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 866, column: 11)
!3069 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 865, column: 5)
!3070 = !DILocation(line: 866, column: 11, scope: !3069)
!3071 = !DILocation(line: 867, column: 11, scope: !3068)
!3072 = !DILocation(line: 867, column: 2, scope: !3068)
!3073 = !DILocation(line: 869, column: 2, scope: !3068)
!3074 = !DILocation(line: 871, column: 26, scope: !3069)
!3075 = !DILocation(line: 872, column: 7, scope: !3069)
!3076 = !DILocation(line: 873, column: 5, scope: !3069)
!3077 = !DILocation(line: 876, column: 9, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 876, column: 7)
!3079 = !DILocation(line: 876, column: 30, scope: !3078)
!3080 = !DILocation(line: 876, column: 33, scope: !3078)
!3081 = !DILocation(line: 876, column: 50, scope: !3078)
!3082 = !DILocation(line: 879, column: 8, scope: !3078)
!3083 = !DILocation(line: 879, column: 12, scope: !3078)
!3084 = !DILocation(line: 880, column: 5, scope: !3078)
!3085 = !DILocation(line: 880, column: 8, scope: !3078)
!3086 = !DILocation(line: 880, column: 25, scope: !3078)
!3087 = !DILocation(line: 880, column: 37, scope: !3078)
!3088 = !DILocation(line: 880, column: 42, scope: !3078)
!3089 = !DILocation(line: 881, column: 7, scope: !3078)
!3090 = !DILocation(line: 881, column: 12, scope: !3078)
!3091 = !DILocation(line: 882, column: 7, scope: !3078)
!3092 = !DILocation(line: 882, column: 12, scope: !3078)
!3093 = !DILocation(line: 885, column: 7, scope: !3078)
!3094 = !DILocation(line: 885, column: 13, scope: !3078)
!3095 = !DILocation(line: 885, column: 30, scope: !3078)
!3096 = !DILocation(line: 885, column: 33, scope: !3078)
!3097 = !DILocation(line: 886, column: 7, scope: !3078)
!3098 = !DILocation(line: 886, column: 12, scope: !3078)
!3099 = !DILocation(line: 887, column: 7, scope: !3078)
!3100 = !DILocation(line: 887, column: 12, scope: !3078)
!3101 = !DILocation(line: 889, column: 7, scope: !3078)
!3102 = !DILocation(line: 889, column: 12, scope: !3078)
!3103 = !DILocation(line: 891, column: 7, scope: !3078)
!3104 = !DILocation(line: 891, column: 30, scope: !3078)
!3105 = !DILocation(line: 891, column: 42, scope: !3078)
!3106 = !DILocation(line: 891, column: 45, scope: !3078)
!3107 = !DILocation(line: 893, column: 7, scope: !3078)
!3108 = !DILocation(line: 893, column: 27, scope: !3078)
!3109 = !DILocation(line: 893, column: 10, scope: !3078)
!3110 = !DILocation(line: 876, column: 7, scope: !3044)
!3111 = !DILocation(line: 894, column: 15, scope: !3078)
!3112 = !DILocation(line: 894, column: 32, scope: !3078)
!3113 = !DILocation(line: 894, column: 14, scope: !3078)
!3114 = !DILocation(line: 894, column: 5, scope: !3078)
!3115 = !DILocation(line: 898, column: 1, scope: !3044)
!3116 = distinct !DISubprogram(name: "check_global_declarations", scope: !3, file: !3, line: 904, type: !3117, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{null, !837, !470}
!3119 = !{!3120, !3121, !3122}
!3120 = !DILocalVariable(name: "vec", arg: 1, scope: !3116, file: !3, line: 904, type: !837)
!3121 = !DILocalVariable(name: "len", arg: 2, scope: !3116, file: !3, line: 904, type: !470)
!3122 = !DILocalVariable(name: "i", scope: !3116, file: !3, line: 906, type: !470)
!3123 = !DILocation(line: 0, scope: !3116)
!3124 = !DILocation(line: 908, column: 8, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 908, column: 3)
!3126 = !DILocation(line: 0, scope: !3125)
!3127 = !DILocation(line: 908, column: 17, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 908, column: 3)
!3129 = !DILocation(line: 908, column: 3, scope: !3125)
!3130 = !DILocation(line: 909, column: 33, scope: !3128)
!3131 = !DILocation(line: 909, column: 5, scope: !3128)
!3132 = !DILocation(line: 908, column: 25, scope: !3128)
!3133 = !DILocation(line: 908, column: 3, scope: !3128)
!3134 = distinct !{!3134, !3129, !3135}
!3135 = !DILocation(line: 909, column: 39, scope: !3125)
!3136 = !DILocation(line: 910, column: 1, scope: !3116)
!3137 = distinct !DISubprogram(name: "emit_debug_global_declarations", scope: !3, file: !3, line: 915, type: !3117, scopeLine: 916, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DILocalVariable(name: "vec", arg: 1, scope: !3137, file: !3, line: 915, type: !837)
!3140 = !DILocalVariable(name: "len", arg: 2, scope: !3137, file: !3, line: 915, type: !470)
!3141 = !DILocalVariable(name: "i", scope: !3137, file: !3, line: 917, type: !470)
!3142 = !DILocation(line: 0, scope: !3137)
!3143 = !DILocation(line: 920, column: 7, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 920, column: 7)
!3145 = !DILocation(line: 920, column: 18, scope: !3144)
!3146 = !DILocation(line: 920, column: 23, scope: !3144)
!3147 = !DILocation(line: 920, column: 26, scope: !3144)
!3148 = !DILocation(line: 920, column: 37, scope: !3144)
!3149 = !DILocation(line: 920, column: 7, scope: !3137)
!3150 = !DILocation(line: 923, column: 3, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 923, column: 3)
!3152 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 923, column: 3)
!3153 = !DILocation(line: 923, column: 3, scope: !3152)
!3154 = !DILocation(line: 924, column: 8, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 924, column: 3)
!3156 = !DILocation(line: 0, scope: !3155)
!3157 = !DILocation(line: 924, column: 17, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 924, column: 3)
!3159 = !DILocation(line: 924, column: 3, scope: !3155)
!3160 = !DILocation(line: 925, column: 5, scope: !3158)
!3161 = !DILocation(line: 925, column: 18, scope: !3158)
!3162 = !DILocation(line: 925, column: 31, scope: !3158)
!3163 = !DILocation(line: 924, column: 25, scope: !3158)
!3164 = !DILocation(line: 924, column: 3, scope: !3158)
!3165 = distinct !{!3165, !3159, !3166}
!3166 = !DILocation(line: 925, column: 37, scope: !3155)
!3167 = !DILocation(line: 926, column: 3, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 926, column: 3)
!3169 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 926, column: 3)
!3170 = !DILocation(line: 926, column: 3, scope: !3169)
!3171 = !DILocation(line: 927, column: 1, scope: !3137)
!3172 = distinct !DISubprogram(name: "warn_deprecated_use", scope: !3, file: !3, line: 931, type: !2164, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3183, !3193, !3196, !3197}
!3174 = !DILocalVariable(name: "node", arg: 1, scope: !3172, file: !3, line: 931, type: !479)
!3175 = !DILocalVariable(name: "attr", arg: 2, scope: !3172, file: !3, line: 931, type: !479)
!3176 = !DILocalVariable(name: "msg", scope: !3172, file: !3, line: 933, type: !475)
!3177 = !DILocalVariable(name: "decl", scope: !3178, file: !3, line: 944, type: !479)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 943, column: 2)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 942, column: 16)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 940, column: 11)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 939, column: 5)
!3182 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 938, column: 7)
!3183 = !DILocalVariable(name: "xloc", scope: !3184, file: !3, line: 961, type: !3186)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 960, column: 5)
!3185 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 959, column: 7)
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !603, line: 52, baseType: !3187)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 40, size: 192, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3187, file: !603, line: 43, baseType: !475, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3187, file: !603, line: 46, baseType: !470, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !3187, file: !603, line: 48, baseType: !470, size: 32, offset: 96)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !3187, file: !603, line: 51, baseType: !469, size: 8, offset: 128)
!3193 = !DILocalVariable(name: "what", scope: !3194, file: !3, line: 973, type: !479)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 972, column: 5)
!3195 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 971, column: 12)
!3196 = !DILocalVariable(name: "decl", scope: !3194, file: !3, line: 974, type: !479)
!3197 = !DILocalVariable(name: "xloc", scope: !3198, file: !3, line: 987, type: !3186)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 986, column: 2)
!3199 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 985, column: 11)
!3200 = !DILocation(line: 0, scope: !3172)
!3201 = !DILocation(line: 935, column: 12, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 935, column: 7)
!3203 = !DILocation(line: 935, column: 21, scope: !3202)
!3204 = !DILocation(line: 935, column: 17, scope: !3202)
!3205 = !DILocation(line: 938, column: 8, scope: !3182)
!3206 = !DILocation(line: 938, column: 7, scope: !3172)
!3207 = !DILocation(line: 940, column: 11, scope: !3180)
!3208 = !DILocation(line: 940, column: 11, scope: !3181)
!3209 = !DILocation(line: 941, column: 9, scope: !3180)
!3210 = !DILocation(line: 941, column: 2, scope: !3180)
!3211 = !DILocation(line: 942, column: 16, scope: !3179)
!3212 = !DILocation(line: 942, column: 16, scope: !3180)
!3213 = !DILocation(line: 944, column: 16, scope: !3178)
!3214 = !DILocation(line: 0, scope: !3178)
!3215 = !DILocation(line: 945, column: 8, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 945, column: 8)
!3217 = !DILocation(line: 945, column: 8, scope: !3178)
!3218 = !DILocation(line: 947, column: 10, scope: !3216)
!3219 = !DILocation(line: 946, column: 13, scope: !3216)
!3220 = !DILocation(line: 946, column: 6, scope: !3216)
!3221 = !DILocation(line: 951, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 951, column: 7)
!3223 = !DILocation(line: 951, column: 7, scope: !3172)
!3224 = !DILocation(line: 952, column: 12, scope: !3222)
!3225 = !DILocation(line: 952, column: 5, scope: !3222)
!3226 = !DILocation(line: 954, column: 7, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 954, column: 7)
!3228 = !DILocation(line: 954, column: 7, scope: !3172)
!3229 = !DILocation(line: 955, column: 11, scope: !3227)
!3230 = !DILocation(line: 955, column: 5, scope: !3227)
!3231 = !DILocation(line: 0, scope: !3227)
!3232 = !DILocation(line: 959, column: 7, scope: !3185)
!3233 = !DILocation(line: 959, column: 7, scope: !3172)
!3234 = !DILocation(line: 961, column: 7, scope: !3184)
!3235 = !DILocation(line: 961, column: 49, scope: !3184)
!3236 = !DILocation(line: 0, scope: !3184)
!3237 = !DILocation(line: 961, column: 32, scope: !3184)
!3238 = !DILocation(line: 962, column: 11, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 962, column: 11)
!3240 = !DILocation(line: 0, scope: !3239)
!3241 = !DILocation(line: 962, column: 11, scope: !3184)
!3242 = !DILocation(line: 963, column: 2, scope: !3239)
!3243 = !DILocation(line: 967, column: 2, scope: !3239)
!3244 = !DILocation(line: 970, column: 5, scope: !3185)
!3245 = !DILocation(line: 970, column: 5, scope: !3184)
!3246 = !DILocation(line: 971, column: 12, scope: !3195)
!3247 = !DILocation(line: 971, column: 12, scope: !3185)
!3248 = !DILocation(line: 0, scope: !3194)
!3249 = !DILocation(line: 974, column: 19, scope: !3194)
!3250 = !DILocation(line: 976, column: 11, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 976, column: 11)
!3252 = !DILocation(line: 976, column: 11, scope: !3194)
!3253 = !DILocation(line: 978, column: 8, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 978, column: 8)
!3255 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 977, column: 2)
!3256 = !DILocation(line: 978, column: 37, scope: !3254)
!3257 = !DILocation(line: 978, column: 8, scope: !3255)
!3258 = !DILocation(line: 980, column: 42, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 980, column: 13)
!3260 = !DILocation(line: 981, column: 6, scope: !3259)
!3261 = !DILocation(line: 981, column: 9, scope: !3259)
!3262 = !DILocation(line: 980, column: 13, scope: !3254)
!3263 = !DILocation(line: 982, column: 6, scope: !3259)
!3264 = !DILocation(line: 985, column: 11, scope: !3199)
!3265 = !DILocation(line: 985, column: 11, scope: !3194)
!3266 = !DILocation(line: 987, column: 4, scope: !3198)
!3267 = !DILocation(line: 988, column: 25, scope: !3198)
!3268 = !DILocation(line: 0, scope: !3198)
!3269 = !DILocation(line: 988, column: 8, scope: !3198)
!3270 = !DILocation(line: 989, column: 8, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 989, column: 8)
!3272 = !DILocation(line: 0, scope: !3271)
!3273 = !DILocation(line: 989, column: 8, scope: !3198)
!3274 = !DILocation(line: 991, column: 12, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 990, column: 6)
!3276 = !DILocation(line: 992, column: 3, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 991, column: 12)
!3278 = !DILocation(line: 996, column: 3, scope: !3277)
!3279 = !DILocation(line: 1002, column: 12, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 1001, column: 6)
!3281 = !DILocation(line: 1003, column: 3, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 1002, column: 12)
!3283 = !DILocation(line: 1007, column: 3, scope: !3282)
!3284 = !DILocation(line: 1011, column: 2, scope: !3199)
!3285 = !DILocation(line: 1011, column: 2, scope: !3198)
!3286 = !DILocation(line: 1014, column: 8, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 1014, column: 8)
!3288 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 1013, column: 2)
!3289 = !DILocation(line: 0, scope: !3287)
!3290 = !DILocation(line: 1014, column: 8, scope: !3288)
!3291 = !DILocation(line: 1016, column: 12, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 1015, column: 6)
!3293 = !DILocation(line: 1017, column: 3, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 1016, column: 12)
!3295 = !DILocation(line: 1020, column: 3, scope: !3294)
!3296 = !DILocation(line: 1024, column: 12, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 1023, column: 6)
!3298 = !DILocation(line: 1025, column: 3, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 1024, column: 12)
!3300 = !DILocation(line: 1028, column: 3, scope: !3299)
!3301 = !DILocation(line: 1032, column: 1, scope: !3172)
!3302 = distinct !DISubprogram(name: "decode_d_option", scope: !3, file: !3, line: 1158, type: !2095, scopeLine: 1159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3303)
!3303 = !{!3304, !3305}
!3304 = !DILocalVariable(name: "arg", arg: 1, scope: !3302, file: !3, line: 1158, type: !475)
!3305 = !DILocalVariable(name: "c", scope: !3302, file: !3, line: 1160, type: !470)
!3306 = !DILocation(line: 0, scope: !3302)
!3307 = !DILocation(line: 1162, column: 3, scope: !3302)
!3308 = !DILocation(line: 1162, column: 10, scope: !3302)
!3309 = !DILocation(line: 1163, column: 21, scope: !3302)
!3310 = !DILocation(line: 1163, column: 17, scope: !3302)
!3311 = !DILocation(line: 1163, column: 5, scope: !3302)
!3312 = !DILocation(line: 1166, column: 17, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 1164, column: 7)
!3314 = !DILocation(line: 1167, column: 2, scope: !3313)
!3315 = !DILocation(line: 1169, column: 22, scope: !3313)
!3316 = !DILocation(line: 1170, column: 2, scope: !3313)
!3317 = !DILocation(line: 1172, column: 23, scope: !3313)
!3318 = !DILocation(line: 1173, column: 22, scope: !3313)
!3319 = !DILocation(line: 1174, column: 2, scope: !3313)
!3320 = !DILocation(line: 1176, column: 20, scope: !3313)
!3321 = !DILocation(line: 1177, column: 2, scope: !3313)
!3322 = !DILocation(line: 1179, column: 20, scope: !3313)
!3323 = !DILocation(line: 1180, column: 2, scope: !3313)
!3324 = !DILocation(line: 1182, column: 14, scope: !3313)
!3325 = !DILocation(line: 1183, column: 2, scope: !3313)
!3326 = !DILocation(line: 1191, column: 2, scope: !3313)
!3327 = !DILocation(line: 1192, column: 2, scope: !3313)
!3328 = !DILocation(line: 1194, column: 2, scope: !3313)
!3329 = !DILocation(line: 1195, column: 2, scope: !3313)
!3330 = !DILocation(line: 1198, column: 4, scope: !3313)
!3331 = !DILocation(line: 1199, column: 2, scope: !3313)
!3332 = distinct !{!3332, !3307, !3333}
!3333 = !DILocation(line: 1200, column: 7, scope: !3302)
!3334 = !DILocation(line: 1201, column: 1, scope: !3302)
!3335 = distinct !DISubprogram(name: "setup_core_dumping", scope: !3, file: !3, line: 637, type: !2100, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3336)
!3336 = !{!3337}
!3337 = !DILocalVariable(name: "rlim", scope: !3338, file: !3, line: 644, type: !3339)
!3338 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 643, column: 3)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3340, line: 139, size: 128, elements: !3341)
!3340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "")
!3341 = !{!3342, !3345}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3339, file: !3340, line: 142, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !3340, line: 131, baseType: !3344)
!3344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !2009, line: 157, baseType: !478)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3339, file: !3340, line: 144, baseType: !3343, size: 64, offset: 64)
!3346 = !DILocation(line: 640, column: 3, scope: !3335)
!3347 = !DILocation(line: 644, column: 5, scope: !3338)
!3348 = !DILocation(line: 0, scope: !3338)
!3349 = !DILocation(line: 645, column: 9, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 645, column: 9)
!3351 = !DILocation(line: 645, column: 40, scope: !3350)
!3352 = !DILocation(line: 645, column: 9, scope: !3338)
!3353 = !DILocation(line: 646, column: 7, scope: !3350)
!3354 = !DILocation(line: 647, column: 26, scope: !3338)
!3355 = !DILocation(line: 647, column: 10, scope: !3338)
!3356 = !DILocation(line: 647, column: 19, scope: !3338)
!3357 = !DILocation(line: 648, column: 9, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 648, column: 9)
!3359 = !DILocation(line: 648, column: 40, scope: !3358)
!3360 = !DILocation(line: 648, column: 9, scope: !3338)
!3361 = !DILocation(line: 649, column: 7, scope: !3358)
!3362 = !DILocation(line: 650, column: 3, scope: !3335)
!3363 = !DILocation(line: 652, column: 3, scope: !3335)
!3364 = !DILocation(line: 653, column: 1, scope: !3335)
!3365 = !DILocation(line: 0, scope: !2040)
!3366 = !DILocation(line: 1234, column: 13, scope: !2040)
!3367 = !DILocation(line: 1234, column: 21, scope: !2040)
!3368 = !DILocation(line: 1235, column: 16, scope: !2040)
!3369 = !DILocation(line: 1232, column: 3, scope: !2040)
!3370 = !DILocation(line: 1280, column: 1, scope: !2040)
!3371 = distinct !DISubprogram(name: "default_get_pch_validity", scope: !3, file: !3, line: 1522, type: !3372, scopeLine: 1523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!474, !2330}
!3374 = !{!3375, !3376, !3383, !3384, !3385}
!3375 = !DILocalVariable(name: "sz", arg: 1, scope: !3371, file: !3, line: 1522, type: !2330)
!3376 = !DILocalVariable(name: "state", scope: !3371, file: !3, line: 1524, type: !3377)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_option_state", file: !3378, line: 58, size: 192, elements: !3379)
!3378 = !DIFile(filename: "./opts.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3379 = !{!3380, !3381, !3382}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3377, file: !3378, line: 59, baseType: !1162, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3377, file: !3378, line: 60, baseType: !948, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !3377, file: !3378, line: 61, baseType: !473, size: 8, offset: 128)
!3383 = !DILocalVariable(name: "i", scope: !3371, file: !3, line: 1525, type: !948)
!3384 = !DILocalVariable(name: "result", scope: !3371, file: !3, line: 1526, type: !472)
!3385 = !DILocalVariable(name: "r", scope: !3371, file: !3, line: 1526, type: !472)
!3386 = !DILocation(line: 0, scope: !3371)
!3387 = !DILocation(line: 1524, column: 3, scope: !3371)
!3388 = !DILocation(line: 1528, column: 7, scope: !3371)
!3389 = !DILocation(line: 1529, column: 15, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 1529, column: 7)
!3391 = !DILocation(line: 1529, column: 7, scope: !3390)
!3392 = !DILocation(line: 1529, column: 7, scope: !3371)
!3393 = !DILocation(line: 1530, column: 9, scope: !3390)
!3394 = !DILocation(line: 1530, column: 5, scope: !3390)
!3395 = !DILocation(line: 0, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 1531, column: 3)
!3397 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 1531, column: 3)
!3398 = !DILocation(line: 0, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 1532, column: 9)
!3400 = !DILocation(line: 1531, column: 8, scope: !3397)
!3401 = !DILocation(line: 0, scope: !3397)
!3402 = !DILocation(line: 1531, column: 17, scope: !3396)
!3403 = !DILocation(line: 1531, column: 3, scope: !3397)
!3404 = !DILocation(line: 1532, column: 31, scope: !3399)
!3405 = !DILocation(line: 1532, column: 9, scope: !3399)
!3406 = !DILocation(line: 1532, column: 9, scope: !3396)
!3407 = !DILocation(line: 1533, column: 20, scope: !3399)
!3408 = !DILocation(line: 1533, column: 11, scope: !3399)
!3409 = !DILocation(line: 1533, column: 7, scope: !3399)
!3410 = !DILocation(line: 1531, column: 38, scope: !3396)
!3411 = !DILocation(line: 1531, column: 3, scope: !3396)
!3412 = distinct !{!3412, !3403, !3413}
!3413 = !DILocation(line: 1533, column: 20, scope: !3397)
!3414 = !DILocation(line: 1535, column: 16, scope: !3371)
!3415 = !DILocation(line: 1536, column: 10, scope: !3371)
!3416 = !DILocation(line: 1536, column: 8, scope: !3371)
!3417 = !DILocation(line: 1537, column: 10, scope: !3371)
!3418 = !DILocation(line: 1537, column: 3, scope: !3371)
!3419 = !DILocation(line: 1537, column: 8, scope: !3371)
!3420 = !DILocation(line: 1538, column: 5, scope: !3371)
!3421 = !DILocation(line: 1539, column: 15, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 1539, column: 7)
!3423 = !DILocation(line: 1539, column: 7, scope: !3422)
!3424 = !DILocation(line: 1539, column: 7, scope: !3371)
!3425 = !DILocation(line: 1541, column: 7, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1540, column: 5)
!3427 = !DILocation(line: 1542, column: 9, scope: !3426)
!3428 = !DILocation(line: 1543, column: 5, scope: !3426)
!3429 = !DILocation(line: 0, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 1547, column: 7)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 1546, column: 9)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1545, column: 3)
!3433 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 1545, column: 3)
!3434 = !DILocation(line: 1545, column: 8, scope: !3433)
!3435 = !DILocation(line: 0, scope: !3433)
!3436 = !DILocation(line: 1545, column: 17, scope: !3432)
!3437 = !DILocation(line: 1545, column: 3, scope: !3433)
!3438 = !DILocation(line: 1546, column: 31, scope: !3431)
!3439 = !DILocation(line: 1546, column: 9, scope: !3431)
!3440 = !DILocation(line: 1546, column: 9, scope: !3432)
!3441 = !DILocation(line: 1548, column: 19, scope: !3430)
!3442 = !DILocation(line: 1548, column: 31, scope: !3430)
!3443 = !DILocation(line: 1548, column: 2, scope: !3430)
!3444 = !DILocation(line: 1549, column: 13, scope: !3430)
!3445 = !DILocation(line: 1549, column: 4, scope: !3430)
!3446 = !DILocation(line: 1550, column: 7, scope: !3430)
!3447 = !DILocation(line: 1545, column: 38, scope: !3432)
!3448 = !DILocation(line: 1545, column: 3, scope: !3432)
!3449 = distinct !{!3449, !3437, !3450}
!3450 = !DILocation(line: 1550, column: 7, scope: !3433)
!3451 = !DILocation(line: 1553, column: 1, scope: !3371)
!3452 = !DILocation(line: 1552, column: 3, scope: !3371)
!3453 = distinct !DISubprogram(name: "option_affects_pch_p", scope: !3, file: !3, line: 1507, type: !3454, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3457)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!469, !470, !3456}
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3457 = !{!3458, !3459}
!3458 = !DILocalVariable(name: "option", arg: 1, scope: !3453, file: !3, line: 1507, type: !470)
!3459 = !DILocalVariable(name: "state", arg: 2, scope: !3453, file: !3, line: 1507, type: !3456)
!3460 = !DILocation(line: 0, scope: !3453)
!3461 = !DILocation(line: 1509, column: 8, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 1509, column: 7)
!3463 = !DILocation(line: 1509, column: 27, scope: !3462)
!3464 = !DILocation(line: 1509, column: 33, scope: !3462)
!3465 = !DILocation(line: 1509, column: 46, scope: !3462)
!3466 = !DILocation(line: 1509, column: 7, scope: !3453)
!3467 = !DILocation(line: 1511, column: 26, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 1511, column: 7)
!3469 = !DILocation(line: 1511, column: 35, scope: !3468)
!3470 = !DILocation(line: 1512, column: 17, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 1512, column: 9)
!3472 = !DILocation(line: 1512, column: 9, scope: !3471)
!3473 = !DILocation(line: 1511, column: 7, scope: !3453)
!3474 = !DILocation(line: 1514, column: 10, scope: !3453)
!3475 = !DILocation(line: 1514, column: 3, scope: !3453)
!3476 = !DILocation(line: 1515, column: 1, scope: !3453)
!3477 = distinct !DISubprogram(name: "default_pch_valid_p", scope: !3, file: !3, line: 1572, type: !3478, scopeLine: 1573, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3480)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!475, !1162, !948}
!3480 = !{!3481, !3482, !3483, !3484, !3485, !3486, !3489}
!3481 = !DILocalVariable(name: "data_p", arg: 1, scope: !3477, file: !3, line: 1572, type: !1162)
!3482 = !DILocalVariable(name: "len", arg: 2, scope: !3477, file: !3, line: 1572, type: !948)
!3483 = !DILocalVariable(name: "state", scope: !3477, file: !3, line: 1574, type: !3377)
!3484 = !DILocalVariable(name: "data", scope: !3477, file: !3, line: 1575, type: !475)
!3485 = !DILocalVariable(name: "i", scope: !3477, file: !3, line: 1576, type: !948)
!3486 = !DILocalVariable(name: "tf", scope: !3487, file: !3, line: 1588, type: !470)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 1587, column: 5)
!3488 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 1586, column: 7)
!3489 = !DILocalVariable(name: "r", scope: !3487, file: !3, line: 1589, type: !475)
!3490 = !DILocation(line: 0, scope: !3477)
!3491 = !DILocation(line: 1574, column: 3, scope: !3477)
!3492 = !DILocation(line: 1579, column: 7, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 1579, column: 7)
!3494 = !DILocation(line: 1579, column: 18, scope: !3493)
!3495 = !DILocation(line: 1579, column: 15, scope: !3493)
!3496 = !DILocation(line: 1579, column: 7, scope: !3477)
!3497 = !DILocation(line: 1581, column: 7, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 1581, column: 7)
!3499 = !DILocation(line: 1581, column: 18, scope: !3498)
!3500 = !DILocation(line: 1581, column: 15, scope: !3498)
!3501 = !DILocation(line: 1581, column: 7, scope: !3477)
!3502 = !DILocation(line: 1583, column: 8, scope: !3477)
!3503 = !DILocation(line: 1586, column: 15, scope: !3488)
!3504 = !DILocation(line: 1586, column: 7, scope: !3488)
!3505 = !DILocation(line: 1586, column: 7, scope: !3477)
!3506 = !DILocation(line: 1588, column: 7, scope: !3487)
!3507 = !DILocation(line: 1591, column: 7, scope: !3487)
!3508 = !DILocation(line: 1592, column: 12, scope: !3487)
!3509 = !DILocation(line: 1594, column: 19, scope: !3487)
!3510 = !DILocation(line: 1594, column: 43, scope: !3487)
!3511 = !DILocation(line: 0, scope: !3487)
!3512 = !DILocation(line: 1594, column: 11, scope: !3487)
!3513 = !DILocation(line: 1595, column: 13, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 1595, column: 11)
!3515 = !DILocation(line: 1597, column: 5, scope: !3488)
!3516 = !DILocation(line: 0, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 1599, column: 3)
!3518 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 1599, column: 3)
!3519 = !DILocation(line: 0, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !3, line: 1602, column: 6)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 1601, column: 7)
!3522 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1600, column: 9)
!3523 = !DILocation(line: 1599, column: 8, scope: !3518)
!3524 = !DILocation(line: 0, scope: !3518)
!3525 = !DILocation(line: 1599, column: 17, scope: !3517)
!3526 = !DILocation(line: 1599, column: 3, scope: !3518)
!3527 = !DILocation(line: 1600, column: 31, scope: !3522)
!3528 = !DILocation(line: 1600, column: 9, scope: !3522)
!3529 = !DILocation(line: 1600, column: 9, scope: !3517)
!3530 = !DILocation(line: 1602, column: 26, scope: !3520)
!3531 = !DILocation(line: 1602, column: 38, scope: !3520)
!3532 = !DILocation(line: 1602, column: 6, scope: !3520)
!3533 = !DILocation(line: 1602, column: 44, scope: !3520)
!3534 = !DILocation(line: 1602, column: 6, scope: !3521)
!3535 = !DILocation(line: 1603, column: 46, scope: !3520)
!3536 = !DILocation(line: 1603, column: 11, scope: !3520)
!3537 = !DILocation(line: 1603, column: 4, scope: !3520)
!3538 = !DILocation(line: 1604, column: 16, scope: !3521)
!3539 = !DILocation(line: 1604, column: 7, scope: !3521)
!3540 = !DILocation(line: 1606, column: 7, scope: !3521)
!3541 = !DILocation(line: 1599, column: 38, scope: !3517)
!3542 = !DILocation(line: 1599, column: 3, scope: !3517)
!3543 = distinct !{!3543, !3526, !3544}
!3544 = !DILocation(line: 1606, column: 7, scope: !3518)
!3545 = !DILocation(line: 1609, column: 1, scope: !3477)
!3546 = distinct !DISubprogram(name: "pch_option_mismatch", scope: !3, file: !3, line: 1559, type: !2727, scopeLine: 1560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3547)
!3547 = !{!3548, !3549}
!3548 = !DILocalVariable(name: "option", arg: 1, scope: !3546, file: !3, line: 1559, type: !475)
!3549 = !DILocalVariable(name: "r", scope: !3546, file: !3, line: 1561, type: !472)
!3550 = !DILocation(line: 0, scope: !3546)
!3551 = !DILocation(line: 1561, column: 3, scope: !3546)
!3552 = !DILocation(line: 1563, column: 3, scope: !3546)
!3553 = !DILocation(line: 1564, column: 7, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 1564, column: 7)
!3555 = !DILocation(line: 1564, column: 9, scope: !3554)
!3556 = !DILocation(line: 1564, column: 7, scope: !3546)
!3557 = !DILocation(line: 1567, column: 1, scope: !3546)
!3558 = distinct !DISubprogram(name: "default_tree_printer", scope: !3, file: !3, line: 1613, type: !3559, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3624)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!469, !3561, !3607, !475, !470, !469, !469, !469}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pretty_printer", file: !429, line: 134, baseType: !3563)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pretty_print_info", file: !429, line: 158, size: 448, elements: !3564)
!3564 = !{!3565, !3589, !3590, !3592, !3593, !3594, !3601, !3604, !3605, !3606}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3563, file: !429, line: 161, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_buffer", file: !429, line: 99, baseType: !3568)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 74, size: 2688, elements: !3569)
!3569 = !{!3570, !3571, !3572, !3574, !3583, !3584, !3585}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "formatted_obstack", scope: !3568, file: !429, line: 77, baseType: !732, size: 704)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_obstack", scope: !3568, file: !429, line: 81, baseType: !732, size: 704, offset: 704)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !3568, file: !429, line: 85, baseType: !3573, size: 64, offset: 1408)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chunk_array", scope: !3568, file: !429, line: 88, baseType: !3575, size: 64, offset: 1472)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_info", file: !429, line: 58, size: 3904, elements: !3577)
!3577 = !{!3578, !3579}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !3576, file: !429, line: 61, baseType: !3575, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3576, file: !429, line: 69, baseType: !3580, size: 3840, offset: 64)
!3580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 3840, elements: !3581)
!3581 = !{!3582}
!3582 = !DISubrange(count: 60)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !3568, file: !429, line: 91, baseType: !1982, size: 64, offset: 1536)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !3568, file: !429, line: 94, baseType: !470, size: 32, offset: 1600)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "digit_buffer", scope: !3568, file: !429, line: 98, baseType: !3586, size: 1024, offset: 1632)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 1024, elements: !3587)
!3587 = !{!3588}
!3588 = !DISubrange(count: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !3563, file: !429, line: 164, baseType: !475, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3563, file: !429, line: 167, baseType: !3591, size: 32, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_padding", file: !429, line: 107, baseType: !428)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_length", scope: !3563, file: !429, line: 171, baseType: !470, size: 32, offset: 160)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "indent_skip", scope: !3563, file: !429, line: 174, baseType: !470, size: 32, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "wrapping", scope: !3563, file: !429, line: 177, baseType: !3595, size: 64, offset: 224)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_wrapping_mode_t", file: !429, line: 119, baseType: !3596)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 111, size: 64, elements: !3597)
!3597 = !{!3598, !3600}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "rule", scope: !3596, file: !429, line: 114, baseType: !3599, size: 32)
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_prefixing_rule_t", file: !429, line: 51, baseType: !434)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "line_cutoff", scope: !3596, file: !429, line: 118, baseType: !470, size: 32, offset: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "format_decoder", scope: !3563, file: !429, line: 187, baseType: !3602, size: 64, offset: 320)
!3602 = !DIDerivedType(tag: DW_TAG_typedef, name: "printer_fn", file: !429, line: 135, baseType: !3603)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "emitted_prefix", scope: !3563, file: !429, line: 190, baseType: !469, size: 8, offset: 384)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "need_newline", scope: !3563, file: !429, line: 193, baseType: !469, size: 8, offset: 392)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "translate_identifiers", scope: !3563, file: !429, line: 197, baseType: !469, size: 8, offset: 400)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_typedef, name: "text_info", file: !429, line: 39, baseType: !3609)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 32, size: 320, elements: !3610)
!3610 = !{!3611, !3612, !3620, !3621, !3623}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "format_spec", scope: !3609, file: !429, line: 34, baseType: !475, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "args_ptr", scope: !3609, file: !429, line: 35, baseType: !3613, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3615, line: 52, baseType: !3616)
!3615 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!3616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3617, line: 32, baseType: !3618)
!3617 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 1609, baseType: !3619)
!3619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2258, size: 192, elements: !576)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !3609, file: !429, line: 36, baseType: !470, size: 32, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !3609, file: !429, line: 37, baseType: !3622, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !3609, file: !429, line: 38, baseType: !837, size: 64, offset: 256)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633}
!3625 = !DILocalVariable(name: "pp", arg: 1, scope: !3558, file: !3, line: 1613, type: !3561)
!3626 = !DILocalVariable(name: "text", arg: 2, scope: !3558, file: !3, line: 1613, type: !3607)
!3627 = !DILocalVariable(name: "spec", arg: 3, scope: !3558, file: !3, line: 1613, type: !475)
!3628 = !DILocalVariable(name: "precision", arg: 4, scope: !3558, file: !3, line: 1614, type: !470)
!3629 = !DILocalVariable(name: "wide", arg: 5, scope: !3558, file: !3, line: 1614, type: !469)
!3630 = !DILocalVariable(name: "set_locus", arg: 6, scope: !3558, file: !3, line: 1614, type: !469)
!3631 = !DILocalVariable(name: "hash", arg: 7, scope: !3558, file: !3, line: 1614, type: !469)
!3632 = !DILocalVariable(name: "t", scope: !3558, file: !3, line: 1616, type: !479)
!3633 = !DILocalVariable(name: "n", scope: !3634, file: !3, line: 1653, type: !475)
!3634 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1652, column: 5)
!3635 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 1651, column: 7)
!3636 = !DILocation(line: 0, scope: !3558)
!3637 = !DILocation(line: 1619, column: 17, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 1619, column: 7)
!3639 = !DILocation(line: 1619, column: 22, scope: !3638)
!3640 = !DILocation(line: 1622, column: 11, scope: !3558)
!3641 = !DILocation(line: 1622, column: 3, scope: !3558)
!3642 = !DILocation(line: 1625, column: 11, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 1623, column: 5)
!3644 = !DILocation(line: 1626, column: 11, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1626, column: 11)
!3646 = !DILocation(line: 1626, column: 25, scope: !3645)
!3647 = !DILocation(line: 1626, column: 11, scope: !3643)
!3648 = !DILocation(line: 1628, column: 4, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 1627, column: 2)
!3650 = !DILocation(line: 1629, column: 4, scope: !3649)
!3651 = !DILocation(line: 1634, column: 11, scope: !3643)
!3652 = !DILocation(line: 1635, column: 11, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1635, column: 11)
!3654 = !DILocation(line: 1635, column: 39, scope: !3653)
!3655 = !DILocation(line: 1635, column: 42, scope: !3653)
!3656 = !DILocation(line: 1635, column: 11, scope: !3643)
!3657 = !DILocation(line: 1636, column: 6, scope: !3653)
!3658 = !DILocation(line: 1636, column: 2, scope: !3653)
!3659 = !DILocation(line: 1641, column: 11, scope: !3643)
!3660 = !DILocation(line: 1642, column: 7, scope: !3643)
!3661 = !DILocation(line: 0, scope: !3643)
!3662 = !DILocation(line: 1648, column: 7, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 1648, column: 7)
!3664 = !DILocation(line: 1648, column: 17, scope: !3663)
!3665 = !DILocation(line: 1648, column: 26, scope: !3663)
!3666 = !DILocation(line: 1648, column: 20, scope: !3663)
!3667 = !DILocation(line: 1648, column: 7, scope: !3558)
!3668 = !DILocation(line: 1649, column: 20, scope: !3663)
!3669 = !DILocation(line: 1649, column: 18, scope: !3663)
!3670 = !DILocation(line: 1649, column: 5, scope: !3663)
!3671 = !DILocation(line: 1651, column: 7, scope: !3635)
!3672 = !DILocation(line: 1651, column: 7, scope: !3558)
!3673 = !DILocation(line: 1653, column: 23, scope: !3634)
!3674 = !DILocation(line: 1654, column: 44, scope: !3634)
!3675 = !DILocation(line: 1654, column: 33, scope: !3634)
!3676 = !DILocation(line: 1654, column: 11, scope: !3634)
!3677 = !DILocation(line: 0, scope: !3634)
!3678 = !DILocation(line: 1656, column: 7, scope: !3634)
!3679 = !DILocation(line: 1657, column: 5, scope: !3634)
!3680 = !DILocation(line: 1659, column: 5, scope: !3635)
!3681 = !DILocation(line: 1662, column: 1, scope: !3558)
!3682 = distinct !DISubprogram(name: "target_reinit", scope: !3, file: !3, line: 2329, type: !2100, scopeLine: 2330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!3683 = !DILocation(line: 2332, column: 3, scope: !3682)
!3684 = !DILocation(line: 2335, column: 3, scope: !3682)
!3685 = !DILocation(line: 2336, column: 1, scope: !3682)
!3686 = distinct !DISubprogram(name: "backend_init_target", scope: !3, file: !3, line: 2164, type: !2100, scopeLine: 2165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!3687 = !DILocation(line: 2167, column: 3, scope: !3686)
!3688 = !DILocation(line: 2171, column: 3, scope: !3686)
!3689 = !DILocation(line: 2175, column: 3, scope: !3686)
!3690 = !DILocation(line: 2178, column: 3, scope: !3686)
!3691 = !DILocation(line: 2182, column: 3, scope: !3686)
!3692 = !DILocation(line: 2185, column: 3, scope: !3686)
!3693 = !DILocation(line: 2189, column: 3, scope: !3686)
!3694 = !DILocation(line: 2193, column: 3, scope: !3686)
!3695 = !DILocation(line: 2197, column: 29, scope: !3686)
!3696 = !DILocation(line: 2199, column: 3, scope: !3686)
!3697 = !DILocation(line: 2200, column: 1, scope: !3686)
!3698 = distinct !DISubprogram(name: "lang_dependent_init_target", scope: !3, file: !3, line: 2259, type: !2100, scopeLine: 2260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!3699 = !DILocation(line: 2262, column: 3, scope: !3698)
!3700 = !DILocation(line: 2267, column: 3, scope: !3698)
!3701 = !DILocation(line: 2271, column: 3, scope: !3698)
!3702 = !DILocation(line: 2274, column: 3, scope: !3698)
!3703 = !DILocation(line: 2278, column: 3, scope: !3698)
!3704 = !DILocation(line: 2279, column: 3, scope: !3698)
!3705 = !DILocation(line: 2281, column: 3, scope: !3698)
!3706 = !DILocation(line: 2282, column: 1, scope: !3698)
!3707 = distinct !DISubprogram(name: "dump_memory_report", scope: !3, file: !3, line: 2339, type: !3708, scopeLine: 2340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !469}
!3710 = !{!3711}
!3711 = !DILocalVariable(name: "final", arg: 1, scope: !3707, file: !3, line: 2339, type: !469)
!3712 = !DILocation(line: 0, scope: !3707)
!3713 = !DILocation(line: 2341, column: 3, scope: !3707)
!3714 = !DILocation(line: 2342, column: 3, scope: !3707)
!3715 = !DILocation(line: 2343, column: 3, scope: !3707)
!3716 = !DILocation(line: 2344, column: 3, scope: !3707)
!3717 = !DILocation(line: 2345, column: 3, scope: !3707)
!3718 = !DILocation(line: 2346, column: 3, scope: !3707)
!3719 = !DILocation(line: 2347, column: 3, scope: !3707)
!3720 = !DILocation(line: 2348, column: 3, scope: !3707)
!3721 = !DILocation(line: 2349, column: 3, scope: !3707)
!3722 = !DILocation(line: 2350, column: 3, scope: !3707)
!3723 = !DILocation(line: 2351, column: 21, scope: !3707)
!3724 = !DILocation(line: 2351, column: 3, scope: !3707)
!3725 = !DILocation(line: 2352, column: 19, scope: !3707)
!3726 = !DILocation(line: 2352, column: 3, scope: !3707)
!3727 = !DILocation(line: 2353, column: 1, scope: !3707)
!3728 = distinct !DISubprogram(name: "toplev_main", scope: !3, file: !3, line: 2437, type: !3729, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!470, !470, !471}
!3731 = !{!3732, !3733}
!3732 = !DILocalVariable(name: "argc", arg: 1, scope: !3728, file: !3, line: 2437, type: !470)
!3733 = !DILocalVariable(name: "argv", arg: 2, scope: !3728, file: !3, line: 2437, type: !471)
!3734 = !DILocation(line: 0, scope: !3728)
!3735 = !DILocation(line: 2439, column: 3, scope: !3728)
!3736 = !DILocation(line: 2441, column: 15, scope: !3728)
!3737 = !DILocation(line: 2441, column: 13, scope: !3728)
!3738 = !DILocation(line: 2444, column: 17, scope: !3728)
!3739 = !DILocation(line: 2444, column: 3, scope: !3728)
!3740 = !DILocation(line: 2448, column: 19, scope: !3728)
!3741 = !DILocation(line: 2448, column: 25, scope: !3728)
!3742 = !DILocation(line: 2448, column: 3, scope: !3728)
!3743 = !DILocation(line: 2450, column: 3, scope: !3728)
!3744 = !DILocation(line: 2452, column: 3, scope: !3728)
!3745 = !DILocation(line: 2454, column: 7, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 2454, column: 7)
!3747 = !DILocation(line: 2454, column: 7, scope: !3728)
!3748 = !DILocation(line: 2455, column: 20, scope: !3746)
!3749 = !DILocation(line: 2455, column: 5, scope: !3746)
!3750 = !DILocation(line: 2457, column: 7, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 2457, column: 7)
!3752 = !DILocation(line: 2457, column: 7, scope: !3728)
!3753 = !DILocation(line: 2458, column: 25, scope: !3751)
!3754 = !DILocation(line: 2458, column: 5, scope: !3751)
!3755 = !DILocation(line: 2461, column: 8, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 2461, column: 7)
!3757 = !DILocation(line: 2461, column: 7, scope: !3728)
!3758 = !DILocation(line: 2462, column: 5, scope: !3756)
!3759 = !DILocation(line: 2464, column: 7, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 2464, column: 7)
!3761 = !DILocation(line: 2464, column: 20, scope: !3760)
!3762 = !DILocation(line: 2464, column: 23, scope: !3760)
!3763 = !DILocation(line: 2464, column: 7, scope: !3728)
!3764 = !DILocation(line: 2465, column: 5, scope: !3760)
!3765 = !DILocation(line: 2468, column: 3, scope: !3728)
!3766 = !DILocation(line: 2470, column: 3, scope: !3728)
!3767 = !DILocation(line: 2471, column: 7, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 2471, column: 7)
!3769 = !DILocation(line: 2471, column: 18, scope: !3768)
!3770 = !DILocation(line: 2471, column: 21, scope: !3768)
!3771 = !DILocation(line: 2471, column: 7, scope: !3728)
!3772 = !DILocation(line: 2475, column: 1, scope: !3728)
!3773 = distinct !DISubprogram(name: "general_init", scope: !3, file: !3, line: 1676, type: !2095, scopeLine: 1677, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3774)
!3774 = !{!3775, !3776}
!3775 = !DILocalVariable(name: "argv0", arg: 1, scope: !3773, file: !3, line: 1676, type: !475)
!3776 = !DILocalVariable(name: "p", scope: !3773, file: !3, line: 1678, type: !475)
!3777 = !DILocation(line: 0, scope: !3773)
!3778 = !DILocation(line: 1680, column: 15, scope: !3773)
!3779 = !DILocation(line: 1680, column: 13, scope: !3773)
!3780 = !DILocation(line: 1681, column: 3, scope: !3773)
!3781 = !DILocation(line: 1681, column: 12, scope: !3773)
!3782 = !DILocation(line: 1681, column: 21, scope: !3773)
!3783 = !DILocation(line: 1681, column: 25, scope: !3773)
!3784 = distinct !{!3784, !3780, !3785}
!3785 = !DILocation(line: 1682, column: 7, scope: !3773)
!3786 = !DILocation(line: 1683, column: 12, scope: !3773)
!3787 = !DILocation(line: 1685, column: 3, scope: !3773)
!3788 = !DILocation(line: 1687, column: 3, scope: !3773)
!3789 = !DILocation(line: 1690, column: 3, scope: !3773)
!3790 = !DILocation(line: 1696, column: 26, scope: !3773)
!3791 = !DILocation(line: 1696, column: 3, scope: !3773)
!3792 = !DILocation(line: 1699, column: 3, scope: !3773)
!3793 = !DILocation(line: 1699, column: 42, scope: !3773)
!3794 = !DILocation(line: 1703, column: 3, scope: !3773)
!3795 = !DILocation(line: 1706, column: 3, scope: !3773)
!3796 = !DILocation(line: 1709, column: 3, scope: !3773)
!3797 = !DILocation(line: 1712, column: 3, scope: !3773)
!3798 = !DILocation(line: 1718, column: 3, scope: !3773)
!3799 = !DILocation(line: 1722, column: 16, scope: !3773)
!3800 = !DILocation(line: 1722, column: 3, scope: !3773)
!3801 = !DILocation(line: 1726, column: 3, scope: !3773)
!3802 = !DILocation(line: 1727, column: 3, scope: !3773)
!3803 = !DILocation(line: 1728, column: 16, scope: !3773)
!3804 = !DILocation(line: 1728, column: 14, scope: !3773)
!3805 = !DILocation(line: 1729, column: 17, scope: !3773)
!3806 = !DILocation(line: 1729, column: 3, scope: !3773)
!3807 = !DILocation(line: 1730, column: 3, scope: !3773)
!3808 = !DILocation(line: 1730, column: 15, scope: !3773)
!3809 = !DILocation(line: 1730, column: 27, scope: !3773)
!3810 = !DILocation(line: 1731, column: 3, scope: !3773)
!3811 = !DILocation(line: 1734, column: 3, scope: !3773)
!3812 = !DILocation(line: 1737, column: 3, scope: !3773)
!3813 = !DILocation(line: 1740, column: 3, scope: !3773)
!3814 = !DILocation(line: 1741, column: 3, scope: !3773)
!3815 = !DILocation(line: 1742, column: 3, scope: !3773)
!3816 = !DILocation(line: 1743, column: 1, scope: !3773)
!3817 = distinct !DISubprogram(name: "init_local_tick", scope: !3, file: !3, line: 473, type: !2100, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3818)
!3818 = !{!3819}
!3819 = !DILocalVariable(name: "tv", scope: !3820, file: !3, line: 480, type: !3823)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 479, column: 7)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 476, column: 5)
!3822 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 475, column: 7)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !3824, line: 8, size: 128, elements: !3825)
!3824 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!3825 = !{!3826, !3827}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3823, file: !3824, line: 10, baseType: !2530, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !3823, file: !3824, line: 11, baseType: !3828, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !2009, line: 162, baseType: !533)
!3829 = !DILocation(line: 475, column: 8, scope: !3822)
!3830 = !DILocation(line: 475, column: 7, scope: !3817)
!3831 = !DILocation(line: 480, column: 2, scope: !3820)
!3832 = !DILocation(line: 0, scope: !3820)
!3833 = !DILocation(line: 482, column: 2, scope: !3820)
!3834 = !DILocation(line: 483, column: 18, scope: !3820)
!3835 = !DILocation(line: 483, column: 25, scope: !3820)
!3836 = !DILocation(line: 483, column: 37, scope: !3820)
!3837 = !DILocation(line: 483, column: 45, scope: !3820)
!3838 = !DILocation(line: 483, column: 32, scope: !3820)
!3839 = !DILocation(line: 483, column: 15, scope: !3820)
!3840 = !DILocation(line: 483, column: 13, scope: !3820)
!3841 = !DILocation(line: 484, column: 7, scope: !3821)
!3842 = !DILocation(line: 493, column: 5, scope: !3821)
!3843 = !DILocation(line: 495, column: 16, scope: !3822)
!3844 = !DILocation(line: 496, column: 1, scope: !3817)
!3845 = distinct !DISubprogram(name: "do_compile", scope: !3, file: !3, line: 2396, type: !2100, scopeLine: 2397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!3846 = !DILocation(line: 2400, column: 7, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 2400, column: 7)
!3848 = !DILocation(line: 2400, column: 23, scope: !3847)
!3849 = !DILocation(line: 2400, column: 38, scope: !3847)
!3850 = !DILocation(line: 2400, column: 19, scope: !3847)
!3851 = !DILocation(line: 2401, column: 5, scope: !3847)
!3852 = !DILocation(line: 2402, column: 3, scope: !3845)
!3853 = !DILocation(line: 2404, column: 3, scope: !3845)
!3854 = !DILocation(line: 2407, column: 8, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 2407, column: 7)
!3856 = !DILocation(line: 2407, column: 7, scope: !3845)
!3857 = !DILocation(line: 2412, column: 7, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 2408, column: 5)
!3859 = !DILocation(line: 2415, column: 12, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 2415, column: 11)
!3861 = !DILocation(line: 2415, column: 11, scope: !3858)
!3862 = !DILocation(line: 2416, column: 2, scope: !3860)
!3863 = !DILocation(line: 2419, column: 32, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 2419, column: 11)
!3865 = !DILocation(line: 2419, column: 11, scope: !3864)
!3866 = !DILocation(line: 2419, column: 11, scope: !3858)
!3867 = !DILocation(line: 2420, column: 2, scope: !3864)
!3868 = !DILocation(line: 2422, column: 7, scope: !3858)
!3869 = !DILocation(line: 2423, column: 5, scope: !3858)
!3870 = !DILocation(line: 2426, column: 3, scope: !3845)
!3871 = !DILocation(line: 2427, column: 18, scope: !3845)
!3872 = !DILocation(line: 2427, column: 3, scope: !3845)
!3873 = !DILocation(line: 2428, column: 1, scope: !3845)
!3874 = distinct !DISubprogram(name: "init_alignments", scope: !3, file: !3, line: 1762, type: !2100, scopeLine: 1763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!3875 = !DILocation(line: 1764, column: 7, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1764, column: 7)
!3877 = !DILocation(line: 1764, column: 19, scope: !3876)
!3878 = !DILocation(line: 1764, column: 7, scope: !3874)
!3879 = !DILocation(line: 1765, column: 17, scope: !3876)
!3880 = !DILocation(line: 1765, column: 5, scope: !3876)
!3881 = !DILocation(line: 1766, column: 30, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1766, column: 7)
!3883 = !DILocation(line: 1766, column: 7, scope: !3882)
!3884 = !DILocation(line: 1766, column: 28, scope: !3882)
!3885 = !DILocation(line: 1766, column: 7, scope: !3874)
!3886 = !DILocation(line: 1767, column: 40, scope: !3882)
!3887 = !DILocation(line: 1767, column: 26, scope: !3882)
!3888 = !DILocation(line: 1767, column: 5, scope: !3882)
!3889 = !DILocation(line: 1768, column: 45, scope: !3874)
!3890 = !DILocation(line: 1768, column: 49, scope: !3874)
!3891 = !DILocation(line: 1768, column: 33, scope: !3874)
!3892 = !DILocation(line: 1768, column: 21, scope: !3874)
!3893 = !DILocation(line: 1768, column: 19, scope: !3874)
!3894 = !DILocation(line: 1769, column: 7, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1769, column: 7)
!3896 = !DILocation(line: 1769, column: 19, scope: !3895)
!3897 = !DILocation(line: 1769, column: 7, scope: !3874)
!3898 = !DILocation(line: 1770, column: 17, scope: !3895)
!3899 = !DILocation(line: 1770, column: 5, scope: !3895)
!3900 = !DILocation(line: 1771, column: 30, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1771, column: 7)
!3902 = !DILocation(line: 1771, column: 7, scope: !3901)
!3903 = !DILocation(line: 1771, column: 28, scope: !3901)
!3904 = !DILocation(line: 1771, column: 7, scope: !3874)
!3905 = !DILocation(line: 1772, column: 40, scope: !3901)
!3906 = !DILocation(line: 1772, column: 26, scope: !3901)
!3907 = !DILocation(line: 1772, column: 5, scope: !3901)
!3908 = !DILocation(line: 1773, column: 45, scope: !3874)
!3909 = !DILocation(line: 1773, column: 49, scope: !3874)
!3910 = !DILocation(line: 1773, column: 33, scope: !3874)
!3911 = !DILocation(line: 1773, column: 21, scope: !3874)
!3912 = !DILocation(line: 1773, column: 19, scope: !3874)
!3913 = !DILocation(line: 1774, column: 7, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1774, column: 7)
!3915 = !DILocation(line: 1774, column: 20, scope: !3914)
!3916 = !DILocation(line: 1774, column: 7, scope: !3874)
!3917 = !DILocation(line: 1775, column: 18, scope: !3914)
!3918 = !DILocation(line: 1775, column: 5, scope: !3914)
!3919 = !DILocation(line: 1776, column: 34, scope: !3874)
!3920 = !DILocation(line: 1776, column: 47, scope: !3874)
!3921 = !DILocation(line: 1776, column: 51, scope: !3874)
!3922 = !DILocation(line: 1776, column: 22, scope: !3874)
!3923 = !DILocation(line: 1776, column: 20, scope: !3874)
!3924 = !DILocation(line: 1777, column: 7, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1777, column: 7)
!3926 = !DILocation(line: 1777, column: 31, scope: !3925)
!3927 = !DILocation(line: 1777, column: 29, scope: !3925)
!3928 = !DILocation(line: 1777, column: 7, scope: !3874)
!3929 = !DILocation(line: 1778, column: 42, scope: !3925)
!3930 = !DILocation(line: 1778, column: 27, scope: !3925)
!3931 = !DILocation(line: 1778, column: 5, scope: !3925)
!3932 = !DILocation(line: 1779, column: 7, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 1779, column: 7)
!3934 = !DILocation(line: 1779, column: 23, scope: !3933)
!3935 = !DILocation(line: 1779, column: 7, scope: !3874)
!3936 = !DILocation(line: 1780, column: 21, scope: !3933)
!3937 = !DILocation(line: 1780, column: 5, scope: !3933)
!3938 = !DILocation(line: 1781, column: 37, scope: !3874)
!3939 = !DILocation(line: 1781, column: 53, scope: !3874)
!3940 = !DILocation(line: 1781, column: 57, scope: !3874)
!3941 = !DILocation(line: 1781, column: 25, scope: !3874)
!3942 = !DILocation(line: 1781, column: 23, scope: !3874)
!3943 = !DILocation(line: 1782, column: 1, scope: !3874)
!3944 = distinct !DISubprogram(name: "init_excess_precision", scope: !3, file: !3, line: 2221, type: !2100, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3945)
!3945 = !{!3946}
!3946 = !DILocalVariable(name: "flt_eval_method", scope: !3947, file: !3, line: 2233, type: !470)
!3947 = distinct !DILexicalBlock(scope: !3948, file: !3, line: 2232, column: 5)
!3948 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 2231, column: 7)
!3949 = !DILocation(line: 2227, column: 3, scope: !3944)
!3950 = !DILocation(line: 2228, column: 27, scope: !3944)
!3951 = !DILocation(line: 2229, column: 7, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 2229, column: 7)
!3953 = !DILocation(line: 2229, column: 7, scope: !3944)
!3954 = !DILocation(line: 0, scope: !3944)
!3955 = !DILocation(line: 2231, column: 29, scope: !3948)
!3956 = !DILocation(line: 2231, column: 7, scope: !3944)
!3957 = !DILocation(line: 2233, column: 29, scope: !3947)
!3958 = !DILocation(line: 0, scope: !3947)
!3959 = !DILocation(line: 2234, column: 7, scope: !3947)
!3960 = !DILocation(line: 2240, column: 26, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3947, file: !3, line: 2235, column: 2)
!3962 = !DILocation(line: 2241, column: 4, scope: !3961)
!3963 = !DILocation(line: 2251, column: 4, scope: !3961)
!3964 = !DILocation(line: 2252, column: 2, scope: !3961)
!3965 = !DILocation(line: 2254, column: 1, scope: !3944)
!3966 = distinct !DISubprogram(name: "crash_signal", scope: !3, file: !3, line: 618, type: !1902, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3967)
!3967 = !{!3968}
!3968 = !DILocalVariable(name: "signo", arg: 1, scope: !3966, file: !3, line: 618, type: !470)
!3969 = !DILocation(line: 0, scope: !3966)
!3970 = !DILocation(line: 620, column: 3, scope: !3966)
!3971 = !DILocation(line: 624, column: 7, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 624, column: 7)
!3973 = !DILocation(line: 624, column: 7, scope: !3966)
!3974 = !DILocation(line: 626, column: 7, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3972, file: !3, line: 625, column: 5)
!3976 = !DILocation(line: 627, column: 7, scope: !3975)
!3977 = !DILocation(line: 628, column: 5, scope: !3975)
!3978 = !DILocation(line: 630, column: 25, scope: !3966)
!3979 = !DILocation(line: 630, column: 3, scope: !3966)
!3980 = !DILocation(line: 631, column: 1, scope: !3966)
!3981 = distinct !DISubprogram(name: "realloc_for_line_map", scope: !3, file: !3, line: 1667, type: !1931, scopeLine: 1668, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3982)
!3982 = !{!3983, !3984}
!3983 = !DILocalVariable(name: "ptr", arg: 1, scope: !3981, file: !3, line: 1667, type: !474)
!3984 = !DILocalVariable(name: "len", arg: 2, scope: !3981, file: !3, line: 1667, type: !948)
!3985 = !DILocation(line: 0, scope: !3981)
!3986 = !DILocation(line: 1669, column: 10, scope: !3981)
!3987 = !DILocation(line: 1669, column: 3, scope: !3981)
!3988 = distinct !DISubprogram(name: "process_options", scope: !3, file: !3, line: 1786, type: !2100, scopeLine: 1787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3989)
!3989 = !{!3990, !3994}
!3990 = !DILocalVariable(name: "name", scope: !3991, file: !3, line: 1839, type: !472)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 1838, column: 5)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 1837, column: 12)
!3993 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1835, column: 7)
!3994 = !DILocalVariable(name: "final_output", scope: !3995, file: !3, line: 1936, type: !1982)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 1935, column: 5)
!3996 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1934, column: 7)
!3997 = !DILocation(line: 1790, column: 15, scope: !3988)
!3998 = !DILocation(line: 1793, column: 7, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1793, column: 7)
!4000 = !DILocation(line: 1793, column: 28, scope: !3999)
!4001 = !DILocation(line: 1793, column: 7, scope: !3988)
!4002 = !DILocation(line: 1794, column: 28, scope: !3999)
!4003 = !DILocation(line: 1794, column: 26, scope: !3999)
!4004 = !DILocation(line: 1794, column: 5, scope: !3999)
!4005 = !DILocation(line: 1795, column: 7, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1795, column: 7)
!4007 = !DILocation(line: 1795, column: 25, scope: !4006)
!4008 = !DILocation(line: 1795, column: 7, scope: !3988)
!4009 = !DILocation(line: 1796, column: 25, scope: !4006)
!4010 = !DILocation(line: 1796, column: 23, scope: !4006)
!4011 = !DILocation(line: 1796, column: 5, scope: !4006)
!4012 = !DILocation(line: 1798, column: 7, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1798, column: 7)
!4014 = !DILocation(line: 1798, column: 29, scope: !4013)
!4015 = !DILocation(line: 1798, column: 7, scope: !3988)
!4016 = !DILocation(line: 1799, column: 30, scope: !4013)
!4017 = !DILocation(line: 1799, column: 42, scope: !4013)
!4018 = !DILocation(line: 1799, column: 27, scope: !4013)
!4019 = !DILocation(line: 1799, column: 5, scope: !4013)
!4020 = !DILocation(line: 1800, column: 7, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1800, column: 7)
!4022 = !DILocation(line: 1800, column: 28, scope: !4021)
!4023 = !DILocation(line: 1800, column: 7, scope: !3988)
!4024 = !DILocation(line: 1801, column: 28, scope: !4021)
!4025 = !DILocation(line: 1801, column: 26, scope: !4021)
!4026 = !DILocation(line: 1801, column: 5, scope: !4021)
!4027 = !DILocation(line: 1802, column: 7, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1802, column: 7)
!4029 = !DILocation(line: 1802, column: 25, scope: !4028)
!4030 = !DILocation(line: 1802, column: 7, scope: !3988)
!4031 = !DILocation(line: 1803, column: 25, scope: !4028)
!4032 = !DILocation(line: 1803, column: 23, scope: !4028)
!4033 = !DILocation(line: 1803, column: 5, scope: !4028)
!4034 = !DILocation(line: 1806, column: 7, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1806, column: 7)
!4036 = !DILocation(line: 1806, column: 26, scope: !4035)
!4037 = !DILocation(line: 1806, column: 7, scope: !3988)
!4038 = !DILocation(line: 1807, column: 26, scope: !4035)
!4039 = !DILocation(line: 1807, column: 24, scope: !4035)
!4040 = !DILocation(line: 1807, column: 5, scope: !4035)
!4041 = !DILocation(line: 1813, column: 27, scope: !3988)
!4042 = !DILocation(line: 1813, column: 16, scope: !3988)
!4043 = !DILocation(line: 1813, column: 14, scope: !3988)
!4044 = !DILocation(line: 1817, column: 3, scope: !3988)
!4045 = !DILocation(line: 1821, column: 7, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1821, column: 7)
!4047 = !DILocation(line: 1821, column: 7, scope: !3988)
!4048 = !DILocation(line: 1822, column: 31, scope: !4046)
!4049 = !DILocation(line: 1822, column: 5, scope: !4046)
!4050 = !DILocation(line: 1824, column: 7, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1824, column: 7)
!4052 = !DILocation(line: 1824, column: 28, scope: !4051)
!4053 = !DILocation(line: 1824, column: 32, scope: !4051)
!4054 = !DILocation(line: 1824, column: 7, scope: !3988)
!4055 = !DILocation(line: 1826, column: 7, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 1825, column: 5)
!4057 = !DILocation(line: 1828, column: 28, scope: !4056)
!4058 = !DILocation(line: 1829, column: 5, scope: !4056)
!4059 = !DILocation(line: 1831, column: 7, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1831, column: 7)
!4061 = !DILocation(line: 1831, column: 24, scope: !4060)
!4062 = !DILocation(line: 1831, column: 7, scope: !3988)
!4063 = !DILocation(line: 1832, column: 32, scope: !4060)
!4064 = !DILocation(line: 1832, column: 24, scope: !4060)
!4065 = !DILocation(line: 1832, column: 22, scope: !4060)
!4066 = !DILocation(line: 1832, column: 5, scope: !4060)
!4067 = !DILocation(line: 1835, column: 7, scope: !3993)
!4068 = !DILocation(line: 1835, column: 7, scope: !3988)
!4069 = !DILocation(line: 1837, column: 12, scope: !3992)
!4070 = !DILocation(line: 1837, column: 12, scope: !3993)
!4071 = !DILocation(line: 1839, column: 29, scope: !3991)
!4072 = !DILocation(line: 1839, column: 20, scope: !3991)
!4073 = !DILocation(line: 0, scope: !3991)
!4074 = !DILocation(line: 1841, column: 31, scope: !3991)
!4075 = !DILocation(line: 1841, column: 7, scope: !3991)
!4076 = !DILocation(line: 1842, column: 21, scope: !3991)
!4077 = !DILocation(line: 1843, column: 5, scope: !3991)
!4078 = !DILocation(line: 1845, column: 19, scope: !3992)
!4079 = !DILocation(line: 1848, column: 7, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1848, column: 7)
!4081 = !DILocation(line: 1849, column: 10, scope: !4080)
!4082 = !DILocation(line: 1849, column: 7, scope: !4080)
!4083 = !DILocation(line: 1850, column: 10, scope: !4080)
!4084 = !DILocation(line: 1851, column: 10, scope: !4080)
!4085 = !DILocation(line: 1852, column: 10, scope: !4080)
!4086 = !DILocation(line: 1853, column: 10, scope: !4080)
!4087 = !DILocation(line: 1854, column: 5, scope: !4080)
!4088 = !DILocation(line: 1859, column: 7, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1859, column: 7)
!4090 = !DILocation(line: 1859, column: 7, scope: !3988)
!4091 = !DILocation(line: 1860, column: 23, scope: !4089)
!4092 = !DILocation(line: 1860, column: 5, scope: !4089)
!4093 = !DILocation(line: 1864, column: 7, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1864, column: 7)
!4095 = !DILocation(line: 1864, column: 33, scope: !4094)
!4096 = !DILocation(line: 1864, column: 7, scope: !3988)
!4097 = !DILocation(line: 1865, column: 33, scope: !4094)
!4098 = !DILocation(line: 1865, column: 51, scope: !4094)
!4099 = !DILocation(line: 1865, column: 31, scope: !4094)
!4100 = !DILocation(line: 1865, column: 5, scope: !4094)
!4101 = !DILocation(line: 1867, column: 7, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1867, column: 7)
!4103 = !DILocation(line: 1867, column: 16, scope: !4102)
!4104 = !DILocation(line: 1867, column: 7, scope: !3988)
!4105 = !DILocation(line: 1868, column: 16, scope: !4102)
!4106 = !DILocation(line: 1868, column: 34, scope: !4102)
!4107 = !DILocation(line: 1868, column: 14, scope: !4102)
!4108 = !DILocation(line: 1868, column: 5, scope: !4102)
!4109 = !DILocation(line: 1870, column: 7, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1870, column: 7)
!4111 = !DILocation(line: 1870, column: 29, scope: !4110)
!4112 = !DILocation(line: 1870, column: 7, scope: !3988)
!4113 = !DILocation(line: 1871, column: 29, scope: !4110)
!4114 = !DILocation(line: 1871, column: 47, scope: !4110)
!4115 = !DILocation(line: 1871, column: 27, scope: !4110)
!4116 = !DILocation(line: 1871, column: 5, scope: !4110)
!4117 = !DILocation(line: 1873, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1873, column: 7)
!4119 = !DILocation(line: 1873, column: 7, scope: !3988)
!4120 = !DILocation(line: 1875, column: 7, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1875, column: 7)
!4122 = !DILocation(line: 1874, column: 37, scope: !4118)
!4123 = !DILocation(line: 1874, column: 5, scope: !4118)
!4124 = !DILocation(line: 1875, column: 7, scope: !3988)
!4125 = !DILocation(line: 1876, column: 24, scope: !4121)
!4126 = !DILocation(line: 1876, column: 5, scope: !4121)
!4127 = !DILocation(line: 1878, column: 7, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1878, column: 7)
!4129 = !DILocation(line: 1878, column: 7, scope: !3988)
!4130 = !DILocation(line: 1879, column: 25, scope: !4128)
!4131 = !DILocation(line: 1879, column: 5, scope: !4128)
!4132 = !DILocation(line: 1887, column: 7, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1887, column: 7)
!4134 = !DILocation(line: 1887, column: 7, scope: !3988)
!4135 = !DILocation(line: 1888, column: 5, scope: !4133)
!4136 = !DILocation(line: 1891, column: 21, scope: !3988)
!4137 = !DILocation(line: 1892, column: 7, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1892, column: 7)
!4139 = !DILocation(line: 1892, column: 31, scope: !4138)
!4140 = !DILocation(line: 1892, column: 7, scope: !3988)
!4141 = !DILocation(line: 1896, column: 37, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 1896, column: 11)
!4143 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 1893, column: 5)
!4144 = !DILocation(line: 1897, column: 33, scope: !4142)
!4145 = !DILocation(line: 1896, column: 11, scope: !4143)
!4146 = !DILocation(line: 1899, column: 24, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 1898, column: 2)
!4148 = !DILocation(line: 1899, column: 22, scope: !4147)
!4149 = !DILocation(line: 1900, column: 2, scope: !4147)
!4150 = !DILocation(line: 1908, column: 7, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1908, column: 7)
!4152 = !DILocation(line: 1908, column: 7, scope: !3988)
!4153 = !DILocation(line: 1910, column: 22, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 1909, column: 5)
!4155 = !DILocation(line: 1910, column: 7, scope: !4154)
!4156 = !DILocation(line: 1911, column: 13, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 1911, column: 11)
!4158 = !DILocation(line: 1911, column: 11, scope: !4154)
!4159 = !DILocation(line: 1912, column: 2, scope: !4157)
!4160 = !DILocation(line: 1915, column: 7, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1915, column: 7)
!4162 = !DILocation(line: 1915, column: 7, scope: !3988)
!4163 = !DILocation(line: 1917, column: 21, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 1916, column: 5)
!4165 = !DILocation(line: 1918, column: 20, scope: !4164)
!4166 = !DILocation(line: 1919, column: 5, scope: !4164)
!4167 = !DILocation(line: 1921, column: 7, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1921, column: 7)
!4169 = !DILocation(line: 1921, column: 7, scope: !3988)
!4170 = !DILocation(line: 1923, column: 11, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 1923, column: 11)
!4172 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 1922, column: 5)
!4173 = !DILocation(line: 1923, column: 28, scope: !4171)
!4174 = !DILocation(line: 1923, column: 11, scope: !4172)
!4175 = !DILocation(line: 1925, column: 21, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 1924, column: 2)
!4177 = !DILocation(line: 1927, column: 8, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 1927, column: 8)
!4179 = !DILocation(line: 1927, column: 22, scope: !4178)
!4180 = !DILocation(line: 1927, column: 8, scope: !4176)
!4181 = !DILocation(line: 1928, column: 20, scope: !4178)
!4182 = !DILocation(line: 1928, column: 6, scope: !4178)
!4183 = !DILocation(line: 1931, column: 19, scope: !4171)
!4184 = !DILocation(line: 1934, column: 7, scope: !3996)
!4185 = !DILocation(line: 1934, column: 33, scope: !3996)
!4186 = !DILocation(line: 1934, column: 29, scope: !3996)
!4187 = !DILocation(line: 1934, column: 54, scope: !3996)
!4188 = !DILocation(line: 1936, column: 28, scope: !3995)
!4189 = !DILocation(line: 0, scope: !3995)
!4190 = !DILocation(line: 1937, column: 12, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 1937, column: 11)
!4192 = !DILocation(line: 1937, column: 11, scope: !3995)
!4193 = !DILocation(line: 1940, column: 4, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 1938, column: 2)
!4195 = !DILocation(line: 1940, column: 37, scope: !4194)
!4196 = !DILocation(line: 1940, column: 27, scope: !4194)
!4197 = !DILocation(line: 1939, column: 4, scope: !4194)
!4198 = !DILocation(line: 1941, column: 26, scope: !4194)
!4199 = !DILocation(line: 1942, column: 2, scope: !4194)
!4200 = !DILocation(line: 1943, column: 16, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 1943, column: 16)
!4202 = !DILocation(line: 1943, column: 16, scope: !4191)
!4203 = !DILocation(line: 1946, column: 4, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 1944, column: 2)
!4205 = !DILocation(line: 1946, column: 37, scope: !4204)
!4206 = !DILocation(line: 1946, column: 27, scope: !4204)
!4207 = !DILocation(line: 1945, column: 4, scope: !4204)
!4208 = !DILocation(line: 1947, column: 26, scope: !4204)
!4209 = !DILocation(line: 1948, column: 2, scope: !4204)
!4210 = !DILocation(line: 1953, column: 7, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1953, column: 7)
!4212 = !DILocation(line: 1953, column: 20, scope: !4211)
!4213 = !DILocation(line: 1953, column: 7, scope: !3988)
!4214 = !DILocation(line: 1954, column: 18, scope: !4211)
!4215 = !DILocation(line: 1954, column: 5, scope: !4211)
!4216 = !DILocation(line: 1958, column: 7, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1958, column: 7)
!4218 = !DILocation(line: 1958, column: 24, scope: !4217)
!4219 = !DILocation(line: 1958, column: 7, scope: !3988)
!4220 = !DILocation(line: 1987, column: 7, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1987, column: 7)
!4222 = !DILocation(line: 1959, column: 19, scope: !4217)
!4223 = !DILocation(line: 1959, column: 5, scope: !4217)
!4224 = !DILocation(line: 1987, column: 21, scope: !4221)
!4225 = !DILocation(line: 1987, column: 7, scope: !3988)
!4226 = !DILocation(line: 1990, column: 26, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 1990, column: 12)
!4228 = !DILocation(line: 1990, column: 12, scope: !4221)
!4229 = !DILocation(line: 1991, column: 17, scope: !4227)
!4230 = !DILocation(line: 1991, column: 5, scope: !4227)
!4231 = !DILocation(line: 2002, column: 26, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 2002, column: 12)
!4233 = !DILocation(line: 2002, column: 12, scope: !4227)
!4234 = !DILocation(line: 2003, column: 17, scope: !4232)
!4235 = !DILocation(line: 2003, column: 5, scope: !4232)
!4236 = !DILocation(line: 2011, column: 5, scope: !4232)
!4237 = !DILocation(line: 2010, column: 5, scope: !4232)
!4238 = !DILocation(line: 2015, column: 7, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2015, column: 7)
!4240 = !DILocation(line: 2015, column: 24, scope: !4239)
!4241 = !DILocation(line: 2016, column: 7, scope: !4239)
!4242 = !DILocation(line: 2016, column: 10, scope: !4239)
!4243 = !DILocation(line: 2016, column: 23, scope: !4239)
!4244 = !DILocation(line: 2016, column: 62, scope: !4239)
!4245 = !DILocation(line: 2016, column: 36, scope: !4239)
!4246 = !DILocation(line: 2015, column: 7, scope: !3988)
!4247 = !DILocation(line: 2035, column: 7, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2035, column: 7)
!4249 = !DILocation(line: 2018, column: 11, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 2018, column: 11)
!4251 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 2017, column: 5)
!4252 = !DILocation(line: 2018, column: 29, scope: !4250)
!4253 = !DILocation(line: 2019, column: 7, scope: !4250)
!4254 = !DILocation(line: 2019, column: 32, scope: !4250)
!4255 = !DILocation(line: 2019, column: 4, scope: !4250)
!4256 = !DILocation(line: 2021, column: 8, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 2020, column: 9)
!4258 = !DILocation(line: 2022, column: 6, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 2021, column: 8)
!4260 = !DILocation(line: 2025, column: 6, scope: !4259)
!4261 = !DILocation(line: 2028, column: 25, scope: !4251)
!4262 = !DILocation(line: 2029, column: 32, scope: !4251)
!4263 = !DILocation(line: 2030, column: 5, scope: !4251)
!4264 = !DILocation(line: 2035, column: 7, scope: !3988)
!4265 = !DILocation(line: 2038, column: 7, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2038, column: 7)
!4267 = !DILocation(line: 2036, column: 23, scope: !4248)
!4268 = !DILocation(line: 2036, column: 5, scope: !4248)
!4269 = !DILocation(line: 2038, column: 25, scope: !4266)
!4270 = !DILocation(line: 2038, column: 7, scope: !3988)
!4271 = !DILocation(line: 2039, column: 25, scope: !4266)
!4272 = !DILocation(line: 2039, column: 34, scope: !4266)
!4273 = !DILocation(line: 2039, column: 23, scope: !4266)
!4274 = !DILocation(line: 2039, column: 5, scope: !4266)
!4275 = !DILocation(line: 2041, column: 7, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2041, column: 7)
!4277 = !DILocation(line: 2041, column: 37, scope: !4276)
!4278 = !DILocation(line: 2041, column: 7, scope: !3988)
!4279 = !DILocation(line: 2042, column: 37, scope: !4276)
!4280 = !DILocation(line: 2043, column: 7, scope: !4276)
!4281 = !DILocation(line: 2043, column: 12, scope: !4276)
!4282 = !DILocation(line: 2043, column: 38, scope: !4276)
!4283 = !DILocation(line: 0, scope: !4276)
!4284 = !DILocation(line: 2042, column: 35, scope: !4276)
!4285 = !DILocation(line: 2042, column: 5, scope: !4276)
!4286 = !DILocation(line: 2045, column: 7, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2045, column: 7)
!4288 = !DILocation(line: 2045, column: 7, scope: !3988)
!4289 = !DILocation(line: 2046, column: 37, scope: !4287)
!4290 = !DILocation(line: 2046, column: 35, scope: !4287)
!4291 = !DILocation(line: 2046, column: 5, scope: !4287)
!4292 = !DILocation(line: 2048, column: 7, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2048, column: 7)
!4294 = !DILocation(line: 2048, column: 41, scope: !4293)
!4295 = !DILocation(line: 2048, column: 37, scope: !4293)
!4296 = !DILocation(line: 2049, column: 55, scope: !4293)
!4297 = !DILocation(line: 2049, column: 23, scope: !4293)
!4298 = !DILocation(line: 2049, column: 5, scope: !4293)
!4299 = !DILocation(line: 2051, column: 7, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2051, column: 7)
!4301 = !DILocation(line: 2052, column: 7, scope: !4300)
!4302 = !DILocation(line: 2052, column: 11, scope: !4300)
!4303 = !DILocation(line: 2052, column: 40, scope: !4300)
!4304 = !DILocation(line: 2052, column: 37, scope: !4300)
!4305 = !DILocation(line: 2053, column: 5, scope: !4300)
!4306 = !DILocation(line: 2055, column: 7, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2055, column: 7)
!4308 = !DILocation(line: 2055, column: 24, scope: !4307)
!4309 = !DILocation(line: 2055, column: 7, scope: !3988)
!4310 = !DILocation(line: 2057, column: 22, scope: !4307)
!4311 = !DILocation(line: 2057, column: 5, scope: !4307)
!4312 = !DILocation(line: 2065, column: 7, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2065, column: 7)
!4314 = !DILocation(line: 2065, column: 7, scope: !3988)
!4315 = !DILocation(line: 2067, column: 23, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 2066, column: 5)
!4317 = !DILocation(line: 2067, column: 21, scope: !4316)
!4318 = !DILocation(line: 2068, column: 25, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 2068, column: 11)
!4320 = !DILocation(line: 2068, column: 11, scope: !4316)
!4321 = !DILocation(line: 2069, column: 37, scope: !4319)
!4322 = !DILocation(line: 2069, column: 2, scope: !4319)
!4323 = !DILocation(line: 2072, column: 17, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2072, column: 7)
!4325 = !DILocation(line: 2072, column: 9, scope: !4324)
!4326 = !DILocation(line: 2072, column: 7, scope: !3988)
!4327 = !DILocation(line: 2074, column: 11, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 2074, column: 11)
!4329 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 2073, column: 5)
!4330 = !DILocation(line: 2074, column: 11, scope: !4329)
!4331 = !DILocation(line: 2076, column: 4, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 2075, column: 2)
!4333 = !DILocation(line: 2077, column: 27, scope: !4332)
!4334 = !DILocation(line: 2078, column: 2, scope: !4332)
!4335 = !DILocation(line: 2079, column: 11, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 2079, column: 11)
!4337 = !DILocation(line: 2079, column: 11, scope: !4329)
!4338 = !DILocation(line: 2081, column: 4, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 2080, column: 2)
!4340 = !DILocation(line: 2082, column: 23, scope: !4339)
!4341 = !DILocation(line: 2083, column: 2, scope: !4339)
!4342 = !DILocation(line: 2086, column: 7, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2086, column: 7)
!4344 = !DILocation(line: 2086, column: 33, scope: !4343)
!4345 = !DILocation(line: 2086, column: 30, scope: !4343)
!4346 = !DILocation(line: 2088, column: 7, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 2087, column: 5)
!4348 = !DILocation(line: 2089, column: 30, scope: !4347)
!4349 = !DILocation(line: 2090, column: 5, scope: !4347)
!4350 = !DILocation(line: 2099, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2099, column: 7)
!4352 = !DILocation(line: 2099, column: 37, scope: !4351)
!4353 = !DILocation(line: 2099, column: 33, scope: !4351)
!4354 = !DILocation(line: 2099, column: 7, scope: !3988)
!4355 = !DILocation(line: 2101, column: 7, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 2100, column: 5)
!4357 = !DILocation(line: 2102, column: 33, scope: !4356)
!4358 = !DILocation(line: 2103, column: 5, scope: !4356)
!4359 = !DILocation(line: 2108, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2108, column: 7)
!4361 = !DILocation(line: 2108, column: 36, scope: !4360)
!4362 = !DILocation(line: 2108, column: 33, scope: !4360)
!4363 = !DILocation(line: 2110, column: 7, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 2109, column: 5)
!4365 = !DILocation(line: 2111, column: 33, scope: !4364)
!4366 = !DILocation(line: 2112, column: 5, scope: !4364)
!4367 = !DILocation(line: 2115, column: 7, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2115, column: 7)
!4369 = !DILocation(line: 2115, column: 7, scope: !3988)
!4370 = !DILocation(line: 2116, column: 24, scope: !4368)
!4371 = !DILocation(line: 2116, column: 5, scope: !4368)
!4372 = !DILocation(line: 2119, column: 7, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2119, column: 7)
!4374 = !DILocation(line: 2119, column: 29, scope: !4373)
!4375 = !DILocation(line: 2119, column: 33, scope: !4373)
!4376 = !DILocation(line: 2119, column: 55, scope: !4373)
!4377 = !DILocation(line: 2119, column: 52, scope: !4373)
!4378 = !DILocation(line: 2121, column: 7, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 2120, column: 5)
!4380 = !DILocation(line: 2122, column: 29, scope: !4379)
!4381 = !DILocation(line: 2123, column: 5, scope: !4379)
!4382 = !DILocation(line: 2126, column: 7, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2126, column: 7)
!4384 = !DILocation(line: 2126, column: 7, scope: !3988)
!4385 = !DILocation(line: 2127, column: 25, scope: !4383)
!4386 = !DILocation(line: 2127, column: 5, scope: !4383)
!4387 = !DILocation(line: 2130, column: 7, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2130, column: 7)
!4389 = !DILocation(line: 2130, column: 7, scope: !3988)
!4390 = !DILocation(line: 2131, column: 25, scope: !4388)
!4391 = !DILocation(line: 2131, column: 5, scope: !4388)
!4392 = !DILocation(line: 2140, column: 8, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2140, column: 7)
!4394 = !DILocation(line: 2140, column: 7, scope: !3988)
!4395 = !DILocation(line: 2141, column: 24, scope: !4393)
!4396 = !DILocation(line: 2141, column: 5, scope: !4393)
!4397 = !DILocation(line: 2147, column: 7, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 2147, column: 7)
!4399 = !DILocation(line: 2147, column: 26, scope: !4398)
!4400 = !DILocation(line: 2147, column: 30, scope: !4398)
!4401 = !DILocation(line: 2148, column: 10, scope: !4398)
!4402 = !DILocation(line: 2148, column: 7, scope: !4398)
!4403 = !DILocation(line: 2150, column: 7, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 2149, column: 5)
!4405 = !DILocation(line: 2152, column: 31, scope: !4404)
!4406 = !DILocation(line: 2153, column: 5, scope: !4404)
!4407 = !DILocation(line: 2156, column: 31, scope: !3988)
!4408 = !DILocation(line: 2156, column: 29, scope: !3988)
!4409 = !DILocation(line: 2157, column: 31, scope: !3988)
!4410 = !DILocation(line: 2157, column: 29, scope: !3988)
!4411 = !DILocation(line: 2158, column: 1, scope: !3988)
!4412 = distinct !DISubprogram(name: "backend_init", scope: !3, file: !3, line: 2205, type: !2100, scopeLine: 2206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!4413 = !DILocation(line: 2207, column: 3, scope: !4412)
!4414 = !DILocation(line: 2209, column: 3, scope: !4412)
!4415 = !DILocation(line: 2210, column: 3, scope: !4412)
!4416 = !DILocation(line: 2211, column: 3, scope: !4412)
!4417 = !DILocation(line: 2212, column: 3, scope: !4412)
!4418 = !DILocation(line: 2215, column: 3, scope: !4412)
!4419 = !DILocation(line: 2216, column: 3, scope: !4412)
!4420 = !DILocation(line: 2217, column: 1, scope: !4412)
!4421 = distinct !DISubprogram(name: "lang_dependent_init", scope: !3, file: !3, line: 2286, type: !2373, scopeLine: 2287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4422)
!4422 = !{!4423, !4424}
!4423 = !DILocalVariable(name: "name", arg: 1, scope: !4421, file: !3, line: 2286, type: !475)
!4424 = !DILocalVariable(name: "save_loc", scope: !4421, file: !3, line: 2288, type: !602)
!4425 = !DILocation(line: 0, scope: !4421)
!4426 = !DILocation(line: 2288, column: 25, scope: !4421)
!4427 = !DILocation(line: 2289, column: 7, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 2289, column: 7)
!4429 = !DILocation(line: 2289, column: 22, scope: !4428)
!4430 = !DILocation(line: 2289, column: 7, scope: !4421)
!4431 = !DILocation(line: 2290, column: 22, scope: !4428)
!4432 = !DILocation(line: 2290, column: 27, scope: !4428)
!4433 = !DILocation(line: 2290, column: 30, scope: !4428)
!4434 = !DILocation(line: 2290, column: 20, scope: !4428)
!4435 = !DILocation(line: 2290, column: 5, scope: !4428)
!4436 = !DILocation(line: 2293, column: 18, scope: !4421)
!4437 = !DILocation(line: 2294, column: 18, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 2294, column: 7)
!4439 = !DILocation(line: 2294, column: 7, scope: !4438)
!4440 = !DILocation(line: 2294, column: 26, scope: !4438)
!4441 = !DILocation(line: 2294, column: 7, scope: !4421)
!4442 = !DILocation(line: 2296, column: 18, scope: !4421)
!4443 = !DILocation(line: 2298, column: 3, scope: !4421)
!4444 = !DILocation(line: 2302, column: 3, scope: !4421)
!4445 = !DILocation(line: 2305, column: 3, scope: !4421)
!4446 = !DILocation(line: 2309, column: 3, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 2309, column: 3)
!4448 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 2309, column: 3)
!4449 = !DILocation(line: 2309, column: 3, scope: !4448)
!4450 = !DILocation(line: 2312, column: 7, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 2312, column: 7)
!4452 = !DILocation(line: 2312, column: 7, scope: !4421)
!4453 = !DILocation(line: 2313, column: 5, scope: !4451)
!4454 = !DILocation(line: 2318, column: 5, scope: !4421)
!4455 = !DILocation(line: 2318, column: 18, scope: !4421)
!4456 = !DILocation(line: 2318, column: 3, scope: !4421)
!4457 = !DILocation(line: 2320, column: 3, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 2320, column: 3)
!4459 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 2320, column: 3)
!4460 = !DILocation(line: 2320, column: 3, scope: !4459)
!4461 = !DILocation(line: 2323, column: 1, scope: !4421)
!4462 = distinct !DISubprogram(name: "compile_file", scope: !3, file: !3, line: 1038, type: !2100, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4463)
!4463 = !{!4464}
!4464 = !DILocalVariable(name: "pkg_version", scope: !4465, file: !3, line: 1137, type: !475)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 1136, column: 5)
!4466 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1135, column: 7)
!4467 = !DILocation(line: 1042, column: 27, scope: !4462)
!4468 = !DILocation(line: 1044, column: 3, scope: !4462)
!4469 = !DILocation(line: 1045, column: 15, scope: !4462)
!4470 = !DILocation(line: 1045, column: 3, scope: !4462)
!4471 = !DILocation(line: 1046, column: 18, scope: !4462)
!4472 = !DILocation(line: 1046, column: 3, scope: !4462)
!4473 = !DILocation(line: 1047, column: 3, scope: !4462)
!4474 = !DILocation(line: 1048, column: 3, scope: !4462)
!4475 = !DILocation(line: 1050, column: 3, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 1050, column: 3)
!4477 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1050, column: 3)
!4478 = !DILocation(line: 1050, column: 3, scope: !4477)
!4479 = !DILocation(line: 1054, column: 14, scope: !4462)
!4480 = !DILocation(line: 1054, column: 26, scope: !4462)
!4481 = !DILocation(line: 1054, column: 3, scope: !4462)
!4482 = !DILocation(line: 1058, column: 3, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 1058, column: 3)
!4484 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1058, column: 3)
!4485 = !DILocation(line: 1058, column: 3, scope: !4484)
!4486 = !DILocation(line: 1060, column: 7, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1060, column: 7)
!4488 = !DILocation(line: 1060, column: 7, scope: !4462)
!4489 = !DILocation(line: 1063, column: 27, scope: !4462)
!4490 = !DILocation(line: 1066, column: 20, scope: !4462)
!4491 = !DILocation(line: 1066, column: 3, scope: !4462)
!4492 = !DILocation(line: 1068, column: 7, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1068, column: 7)
!4494 = !DILocation(line: 1068, column: 18, scope: !4493)
!4495 = !DILocation(line: 1068, column: 21, scope: !4493)
!4496 = !DILocation(line: 1068, column: 7, scope: !4462)
!4497 = !DILocation(line: 1071, column: 3, scope: !4462)
!4498 = !DILocation(line: 1072, column: 3, scope: !4462)
!4499 = !DILocation(line: 1075, column: 7, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1075, column: 7)
!4501 = !DILocation(line: 1075, column: 7, scope: !4462)
!4502 = !DILocation(line: 1076, column: 5, scope: !4500)
!4503 = !DILocation(line: 1079, column: 16, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1079, column: 7)
!4505 = !DILocation(line: 1079, column: 8, scope: !4504)
!4506 = !DILocation(line: 1079, column: 7, scope: !4462)
!4507 = !DILocation(line: 1080, column: 5, scope: !4504)
!4508 = !DILocation(line: 1082, column: 3, scope: !4462)
!4509 = !DILocation(line: 1083, column: 3, scope: !4462)
!4510 = !DILocation(line: 1086, column: 3, scope: !4462)
!4511 = !DILocation(line: 1090, column: 19, scope: !4462)
!4512 = !DILocation(line: 1090, column: 3, scope: !4462)
!4513 = !DILocation(line: 1093, column: 3, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 1093, column: 3)
!4515 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1093, column: 3)
!4516 = !DILocation(line: 1093, column: 3, scope: !4515)
!4517 = !DILocation(line: 1096, column: 7, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1096, column: 7)
!4519 = !DILocation(line: 1096, column: 7, scope: !4462)
!4520 = !DILocation(line: 1097, column: 5, scope: !4518)
!4521 = !DILocation(line: 1100, column: 5, scope: !4462)
!4522 = !DILocation(line: 1100, column: 18, scope: !4462)
!4523 = !DILocation(line: 1100, column: 27, scope: !4462)
!4524 = !DILocation(line: 1100, column: 3, scope: !4462)
!4525 = !DILocation(line: 1101, column: 3, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 1101, column: 3)
!4527 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1101, column: 3)
!4528 = !DILocation(line: 1101, column: 3, scope: !4527)
!4529 = !DILocation(line: 1105, column: 3, scope: !4462)
!4530 = !DILocation(line: 1108, column: 3, scope: !4462)
!4531 = !DILocation(line: 1115, column: 7, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 1115, column: 7)
!4533 = !DILocation(line: 1115, column: 7, scope: !4462)
!4534 = !DILocation(line: 1122, column: 7, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 1122, column: 7)
!4536 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1116, column: 5)
!4537 = !DILocation(line: 1129, column: 5, scope: !4536)
!4538 = !DILocation(line: 1135, column: 8, scope: !4466)
!4539 = !DILocation(line: 1135, column: 7, scope: !4462)
!4540 = !DILocation(line: 0, scope: !4465)
!4541 = !DILocation(line: 1139, column: 11, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 1139, column: 11)
!4543 = !DILocation(line: 1139, column: 11, scope: !4465)
!4544 = !DILocation(line: 1141, column: 16, scope: !4465)
!4545 = !DILocation(line: 1141, column: 7, scope: !4465)
!4546 = !DILocation(line: 1143, column: 5, scope: !4465)
!4547 = !DILocation(line: 1147, column: 3, scope: !4462)
!4548 = !DILocation(line: 1152, column: 19, scope: !4462)
!4549 = !DILocation(line: 1152, column: 3, scope: !4462)
!4550 = !DILocation(line: 1153, column: 1, scope: !4462)
!4551 = distinct !DISubprogram(name: "finalize", scope: !3, file: !3, line: 2358, type: !2100, scopeLine: 2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!4552 = !DILocation(line: 2361, column: 7, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 2361, column: 7)
!4554 = !DILocation(line: 2361, column: 7, scope: !4551)
!4555 = !DILocation(line: 2363, column: 15, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 2362, column: 5)
!4557 = !DILocation(line: 2363, column: 7, scope: !4556)
!4558 = !DILocation(line: 2364, column: 11, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 2364, column: 11)
!4560 = !DILocation(line: 2364, column: 11, scope: !4556)
!4561 = !DILocation(line: 2365, column: 10, scope: !4559)
!4562 = !DILocation(line: 2365, column: 2, scope: !4559)
!4563 = !DILocation(line: 2372, column: 7, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 2372, column: 7)
!4565 = !DILocation(line: 2372, column: 7, scope: !4551)
!4566 = !DILocation(line: 2374, column: 11, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 2374, column: 11)
!4568 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 2373, column: 5)
!4569 = !DILocation(line: 2374, column: 33, scope: !4567)
!4570 = !DILocation(line: 2374, column: 11, scope: !4568)
!4571 = !DILocation(line: 2375, column: 42, scope: !4567)
!4572 = !DILocation(line: 2375, column: 2, scope: !4567)
!4573 = !DILocation(line: 2376, column: 19, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 2376, column: 11)
!4575 = !DILocation(line: 2376, column: 11, scope: !4574)
!4576 = !DILocation(line: 2376, column: 33, scope: !4574)
!4577 = !DILocation(line: 2376, column: 11, scope: !4568)
!4578 = !DILocation(line: 2377, column: 39, scope: !4574)
!4579 = !DILocation(line: 2377, column: 2, scope: !4574)
!4580 = !DILocation(line: 2378, column: 11, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4568, file: !3, line: 2378, column: 11)
!4582 = !DILocation(line: 2378, column: 11, scope: !4568)
!4583 = !DILocation(line: 2379, column: 22, scope: !4581)
!4584 = !DILocation(line: 2379, column: 2, scope: !4581)
!4585 = !DILocation(line: 2382, column: 3, scope: !4551)
!4586 = !DILocation(line: 2383, column: 3, scope: !4551)
!4587 = !DILocation(line: 2385, column: 3, scope: !4551)
!4588 = !DILocation(line: 2387, column: 7, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 2387, column: 7)
!4590 = !DILocation(line: 2387, column: 7, scope: !4551)
!4591 = !DILocation(line: 2388, column: 5, scope: !4589)
!4592 = !DILocation(line: 2391, column: 14, scope: !4551)
!4593 = !DILocation(line: 2391, column: 3, scope: !4551)
!4594 = !DILocation(line: 2392, column: 1, scope: !4551)
!4595 = distinct !DISubprogram(name: "diagnostic_inhibit_notes", scope: !444, file: !444, line: 121, type: !4596, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4643)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{null, !4598}
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_context", file: !444, line: 55, baseType: !4600)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_context", file: !444, line: 62, size: 28736, elements: !4601)
!4601 = !{!4602, !4603, !4607, !4608, !4609, !4614, !4615, !4616, !4631, !4633, !4637, !4638, !4641, !4642}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "printer", scope: !4600, file: !444, line: 65, baseType: !3561, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "diagnostic_count", scope: !4600, file: !444, line: 68, baseType: !4604, size: 384, offset: 64)
!4604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 384, elements: !4605)
!4605 = !{!4606}
!4606 = !DISubrange(count: 12)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "issue_warnings_are_errors_message", scope: !4600, file: !444, line: 72, baseType: !469, size: 8, offset: 448)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "warning_as_error_requested", scope: !4600, file: !444, line: 75, baseType: !469, size: 8, offset: 456)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "classify_diagnostic", scope: !4600, file: !444, line: 82, baseType: !4610, size: 27840, offset: 480)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4611, size: 27840, elements: !4612)
!4611 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_t", file: !444, line: 35, baseType: !443)
!4612 = !{!4613}
!4613 = !DISubrange(count: 870)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "show_option_requested", scope: !4600, file: !444, line: 86, baseType: !469, size: 8, offset: 28320)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "abort_on_error", scope: !4600, file: !444, line: 89, baseType: !469, size: 8, offset: 28328)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "begin_diagnostic", scope: !4600, file: !444, line: 98, baseType: !4617, size: 64, offset: 28352)
!4617 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_starter_fn", file: !444, line: 56, baseType: !4618)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{null, !4598, !4621}
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_info", file: !444, line: 52, baseType: !4623)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_info", file: !444, line: 40, size: 512, elements: !4624)
!4624 = !{!4625, !4626, !4627, !4628, !4629, !4630}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !4623, file: !444, line: 42, baseType: !3608, size: 320)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !4623, file: !444, line: 43, baseType: !602, size: 32, offset: 320)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "override_column", scope: !4623, file: !444, line: 44, baseType: !7, size: 32, offset: 352)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !4623, file: !444, line: 47, baseType: !479, size: 64, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !4623, file: !444, line: 49, baseType: !4611, size: 32, offset: 448)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "option_index", scope: !4623, file: !444, line: 51, baseType: !470, size: 32, offset: 480)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "end_diagnostic", scope: !4600, file: !444, line: 101, baseType: !4632, size: 64, offset: 28416)
!4632 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_finalizer_fn", file: !444, line: 58, baseType: !4617)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "internal_error", scope: !4600, file: !444, line: 104, baseType: !4634, size: 64, offset: 28480)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{null, !475, !3613}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "last_function", scope: !4600, file: !444, line: 109, baseType: !479, size: 64, offset: 28544)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "last_module", scope: !4600, file: !444, line: 113, baseType: !4639, size: 64, offset: 28608)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1909)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4600, file: !444, line: 115, baseType: !470, size: 32, offset: 28672)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit_notes_p", scope: !4600, file: !444, line: 117, baseType: !469, size: 8, offset: 28704)
!4643 = !{!4644}
!4644 = !DILocalVariable(name: "context", arg: 1, scope: !4595, file: !444, line: 121, type: !4598)
!4645 = !DILocation(line: 0, scope: !4595)
!4646 = !DILocation(line: 123, column: 12, scope: !4595)
!4647 = !DILocation(line: 123, column: 28, scope: !4595)
!4648 = !DILocation(line: 124, column: 1, scope: !4595)
!4649 = distinct !DISubprogram(name: "target_supports_section_anchors_p", scope: !3, file: !3, line: 1748, type: !4650, scopeLine: 1749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!469}
!4652 = !DILocation(line: 1750, column: 15, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 1750, column: 7)
!4654 = !DILocation(line: 1750, column: 49, scope: !4653)
!4655 = !DILocation(line: 1750, column: 38, scope: !4653)
!4656 = !DILocation(line: 1753, column: 23, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 1753, column: 7)
!4658 = !DILocation(line: 1753, column: 37, scope: !4657)
!4659 = !DILocation(line: 0, scope: !4649)
!4660 = !DILocation(line: 1757, column: 1, scope: !4649)
!4661 = distinct !DISubprogram(name: "print_switch_values", scope: !3, file: !3, line: 1380, type: !4662, scopeLine: 1381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4669)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !4664}
!4664 = !DIDerivedType(tag: DW_TAG_typedef, name: "print_switch_fn_type", file: !460, line: 66, baseType: !4665)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!470, !4668, !475}
!4668 = !DIDerivedType(tag: DW_TAG_typedef, name: "print_switch_type", file: !460, line: 64, baseType: !459)
!4669 = !{!4670, !4671, !4672, !4673}
!4670 = !DILocalVariable(name: "print_fn", arg: 1, scope: !4661, file: !3, line: 1380, type: !4664)
!4671 = !DILocalVariable(name: "pos", scope: !4661, file: !3, line: 1382, type: !470)
!4672 = !DILocalVariable(name: "j", scope: !4661, file: !3, line: 1383, type: !948)
!4673 = !DILocalVariable(name: "p", scope: !4661, file: !3, line: 1384, type: !1898)
!4674 = !DILocation(line: 0, scope: !4661)
!4675 = !DILocation(line: 1388, column: 8, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 1388, column: 7)
!4677 = !DILocation(line: 1388, column: 7, scope: !4661)
!4678 = !DILocation(line: 1389, column: 5, scope: !4676)
!4679 = !DILocation(line: 1392, column: 9, scope: !4661)
!4680 = !DILocation(line: 1395, column: 13, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 1395, column: 3)
!4682 = !DILocation(line: 1395, column: 8, scope: !4681)
!4683 = !DILocation(line: 1392, column: 7, scope: !4661)
!4684 = !DILocation(line: 0, scope: !4681)
!4685 = !DILocation(line: 1395, column: 27, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 1395, column: 3)
!4687 = !DILocation(line: 1395, column: 30, scope: !4686)
!4688 = !DILocation(line: 1395, column: 3, scope: !4681)
!4689 = !DILocation(line: 1397, column: 11, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !3, line: 1397, column: 11)
!4691 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 1396, column: 5)
!4692 = !DILocation(line: 1397, column: 15, scope: !4690)
!4693 = !DILocation(line: 1397, column: 11, scope: !4691)
!4694 = !DILocation(line: 1400, column: 8, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 1400, column: 8)
!4696 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 1398, column: 2)
!4697 = !DILocation(line: 1400, column: 26, scope: !4695)
!4698 = !DILocation(line: 1401, column: 8, scope: !4695)
!4699 = !DILocation(line: 1401, column: 19, scope: !4695)
!4700 = !DILocation(line: 1401, column: 11, scope: !4695)
!4701 = !DILocation(line: 1401, column: 36, scope: !4695)
!4702 = !DILocation(line: 1402, column: 8, scope: !4695)
!4703 = !DILocation(line: 1402, column: 19, scope: !4695)
!4704 = !DILocation(line: 1402, column: 11, scope: !4695)
!4705 = !DILocation(line: 1402, column: 35, scope: !4695)
!4706 = !DILocation(line: 1403, column: 8, scope: !4695)
!4707 = !DILocation(line: 1403, column: 19, scope: !4695)
!4708 = !DILocation(line: 1403, column: 11, scope: !4695)
!4709 = !DILocation(line: 1403, column: 35, scope: !4695)
!4710 = !DILocation(line: 1400, column: 8, scope: !4696)
!4711 = !DILocation(line: 1405, column: 12, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 1405, column: 12)
!4713 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 1404, column: 6)
!4714 = !DILocation(line: 1405, column: 17, scope: !4712)
!4715 = !DILocation(line: 1405, column: 12, scope: !4713)
!4716 = !DILocation(line: 1407, column: 8, scope: !4713)
!4717 = !DILocation(line: 1410, column: 16, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 1410, column: 8)
!4719 = !DILocation(line: 1410, column: 8, scope: !4718)
!4720 = !DILocation(line: 1410, column: 30, scope: !4718)
!4721 = !DILocation(line: 1411, column: 8, scope: !4718)
!4722 = !DILocation(line: 1411, column: 19, scope: !4718)
!4723 = !DILocation(line: 1411, column: 11, scope: !4718)
!4724 = !DILocation(line: 1411, column: 35, scope: !4718)
!4725 = !DILocation(line: 1410, column: 8, scope: !4696)
!4726 = !DILocation(line: 1414, column: 9, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 1414, column: 8)
!4728 = !DILocation(line: 1414, column: 8, scope: !4727)
!4729 = !DILocation(line: 1414, column: 16, scope: !4727)
!4730 = !DILocation(line: 1414, column: 8, scope: !4696)
!4731 = !DILocation(line: 1418, column: 69, scope: !4691)
!4732 = !DILocation(line: 1418, column: 13, scope: !4691)
!4733 = !DILocation(line: 1419, column: 5, scope: !4691)
!4734 = !DILocation(line: 1395, column: 3, scope: !4686)
!4735 = distinct !{!4735, !4688, !4736}
!4736 = !DILocation(line: 1419, column: 5, scope: !4681)
!4737 = !DILocation(line: 1421, column: 11, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 1421, column: 7)
!4739 = !DILocation(line: 1421, column: 7, scope: !4661)
!4740 = !DILocation(line: 1422, column: 5, scope: !4738)
!4741 = !DILocation(line: 1427, column: 9, scope: !4661)
!4742 = !DILocation(line: 0, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 1430, column: 3)
!4744 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 1430, column: 3)
!4745 = !DILocation(line: 1430, column: 8, scope: !4744)
!4746 = !DILocation(line: 0, scope: !4744)
!4747 = !DILocation(line: 1430, column: 17, scope: !4743)
!4748 = !DILocation(line: 1430, column: 3, scope: !4744)
!4749 = !DILocation(line: 1431, column: 24, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 1431, column: 9)
!4751 = !DILocation(line: 1431, column: 30, scope: !4750)
!4752 = !DILocation(line: 1432, column: 2, scope: !4750)
!4753 = !DILocation(line: 1432, column: 21, scope: !4750)
!4754 = !DILocation(line: 1432, column: 5, scope: !4750)
!4755 = !DILocation(line: 1432, column: 24, scope: !4750)
!4756 = !DILocation(line: 1431, column: 9, scope: !4743)
!4757 = !DILocation(line: 1434, column: 41, scope: !4750)
!4758 = !DILocation(line: 1433, column: 13, scope: !4750)
!4759 = !DILocation(line: 1433, column: 7, scope: !4750)
!4760 = !DILocation(line: 1430, column: 38, scope: !4743)
!4761 = !DILocation(line: 1430, column: 3, scope: !4743)
!4762 = distinct !{!4762, !4748, !4763}
!4763 = !DILocation(line: 1434, column: 49, scope: !4744)
!4764 = !DILocation(line: 1436, column: 3, scope: !4661)
!4765 = !DILocation(line: 1437, column: 1, scope: !4661)
!4766 = distinct !DISubprogram(name: "print_to_stderr", scope: !3, file: !3, line: 1318, type: !4666, scopeLine: 1319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4767)
!4767 = !{!4768, !4769}
!4768 = !DILocalVariable(name: "type", arg: 1, scope: !4766, file: !3, line: 1318, type: !4668)
!4769 = !DILocalVariable(name: "text", arg: 2, scope: !4766, file: !3, line: 1318, type: !475)
!4770 = !DILocation(line: 0, scope: !4766)
!4771 = !DILocation(line: 1320, column: 3, scope: !4766)
!4772 = !DILocation(line: 1323, column: 19, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 1321, column: 5)
!4774 = !DILocation(line: 1323, column: 7, scope: !4773)
!4775 = !DILocation(line: 1324, column: 7, scope: !4773)
!4776 = !DILocation(line: 1331, column: 19, scope: !4773)
!4777 = !DILocation(line: 1331, column: 7, scope: !4773)
!4778 = !DILocation(line: 1335, column: 20, scope: !4773)
!4779 = !DILocation(line: 1335, column: 7, scope: !4773)
!4780 = !DILocation(line: 1338, column: 7, scope: !4773)
!4781 = !DILocation(line: 1341, column: 7, scope: !4773)
!4782 = !DILocation(line: 0, scope: !4773)
!4783 = !DILocation(line: 1343, column: 1, scope: !4766)
!4784 = distinct !DISubprogram(name: "print_single_switch", scope: !3, file: !3, line: 1350, type: !4785, scopeLine: 1354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4787)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!470, !4664, !470, !4668, !475}
!4787 = !{!4788, !4789, !4790, !4791, !4792}
!4788 = !DILocalVariable(name: "print_fn", arg: 1, scope: !4784, file: !3, line: 1350, type: !4664)
!4789 = !DILocalVariable(name: "pos", arg: 2, scope: !4784, file: !3, line: 1351, type: !470)
!4790 = !DILocalVariable(name: "type", arg: 3, scope: !4784, file: !3, line: 1352, type: !4668)
!4791 = !DILocalVariable(name: "text", arg: 4, scope: !4784, file: !3, line: 1353, type: !475)
!4792 = !DILocalVariable(name: "len", scope: !4784, file: !3, line: 1358, type: !470)
!4793 = !DILocation(line: 0, scope: !4784)
!4794 = !DILocation(line: 1358, column: 13, scope: !4784)
!4795 = !DILocation(line: 1360, column: 11, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 1360, column: 7)
!4797 = !DILocation(line: 1361, column: 14, scope: !4796)
!4798 = !DILocation(line: 1361, column: 20, scope: !4796)
!4799 = !DILocation(line: 1361, column: 7, scope: !4796)
!4800 = !DILocation(line: 1363, column: 7, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 1362, column: 5)
!4802 = !DILocation(line: 1365, column: 5, scope: !4801)
!4803 = !DILocation(line: 1367, column: 11, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 1367, column: 7)
!4805 = !DILocation(line: 1367, column: 7, scope: !4784)
!4806 = !DILocation(line: 1368, column: 12, scope: !4804)
!4807 = !DILocation(line: 1368, column: 5, scope: !4804)
!4808 = !DILocation(line: 1370, column: 3, scope: !4784)
!4809 = !DILocation(line: 1371, column: 14, scope: !4784)
!4810 = !DILocation(line: 1371, column: 3, scope: !4784)
!4811 = distinct !DISubprogram(name: "init_asm_output", scope: !3, file: !3, line: 1444, type: !2095, scopeLine: 1445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4812)
!4812 = !{!4813, !4814, !4819}
!4813 = !DILocalVariable(name: "name", arg: 1, scope: !4811, file: !3, line: 1444, type: !475)
!4814 = !DILocalVariable(name: "len", scope: !4815, file: !3, line: 1452, type: !470)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 1451, column: 2)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 1450, column: 11)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 1449, column: 5)
!4818 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 1446, column: 7)
!4819 = !DILocalVariable(name: "dumpname", scope: !4815, file: !3, line: 1453, type: !472)
!4820 = !DILocation(line: 0, scope: !4811)
!4821 = !DILocation(line: 1446, column: 12, scope: !4818)
!4822 = !DILocation(line: 1446, column: 23, scope: !4818)
!4823 = !DILocation(line: 1446, column: 37, scope: !4818)
!4824 = !DILocation(line: 1446, column: 20, scope: !4818)
!4825 = !DILocation(line: 1447, column: 20, scope: !4818)
!4826 = !DILocation(line: 1447, column: 18, scope: !4818)
!4827 = !DILocation(line: 1447, column: 5, scope: !4818)
!4828 = !DILocation(line: 1450, column: 11, scope: !4817)
!4829 = !DILocation(line: 1452, column: 22, scope: !4815)
!4830 = !DILocation(line: 1452, column: 14, scope: !4815)
!4831 = !DILocation(line: 0, scope: !4815)
!4832 = !DILocation(line: 1453, column: 21, scope: !4815)
!4833 = !DILocation(line: 1455, column: 22, scope: !4815)
!4834 = !DILocation(line: 1455, column: 38, scope: !4815)
!4835 = !DILocation(line: 1455, column: 4, scope: !4815)
!4836 = !DILocation(line: 1456, column: 4, scope: !4815)
!4837 = !DILocation(line: 1457, column: 4, scope: !4815)
!4838 = !DILocation(line: 1458, column: 18, scope: !4815)
!4839 = !DILocation(line: 1459, column: 2, scope: !4815)
!4840 = !DILocation(line: 1460, column: 20, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 1460, column: 11)
!4842 = !DILocation(line: 1460, column: 12, scope: !4841)
!4843 = !DILocation(line: 1460, column: 11, scope: !4817)
!4844 = !DILocation(line: 1461, column: 17, scope: !4841)
!4845 = !DILocation(line: 1461, column: 15, scope: !4841)
!4846 = !DILocation(line: 1461, column: 2, scope: !4841)
!4847 = !DILocation(line: 1463, column: 17, scope: !4841)
!4848 = !DILocation(line: 1463, column: 15, scope: !4841)
!4849 = !DILocation(line: 1464, column: 11, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 1464, column: 11)
!4851 = !DILocation(line: 1464, column: 24, scope: !4850)
!4852 = !DILocation(line: 1464, column: 11, scope: !4817)
!4853 = !DILocation(line: 1465, column: 49, scope: !4850)
!4854 = !DILocation(line: 1465, column: 2, scope: !4850)
!4855 = !DILocation(line: 1468, column: 8, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 1468, column: 7)
!4857 = !DILocation(line: 1468, column: 7, scope: !4811)
!4858 = !DILocation(line: 1470, column: 23, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 1469, column: 5)
!4860 = !DILocation(line: 1470, column: 7, scope: !4859)
!4861 = !DILocation(line: 1472, column: 11, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 1472, column: 11)
!4863 = !DILocation(line: 1472, column: 11, scope: !4859)
!4864 = !DILocation(line: 1474, column: 24, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 1474, column: 8)
!4866 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 1473, column: 2)
!4867 = !DILocation(line: 1474, column: 8, scope: !4865)
!4868 = !DILocation(line: 1474, column: 8, scope: !4866)
!4869 = !DILocation(line: 1477, column: 8, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 1475, column: 6)
!4871 = !DILocation(line: 1480, column: 45, scope: !4870)
!4872 = !DILocation(line: 1480, column: 8, scope: !4870)
!4873 = !DILocation(line: 1482, column: 24, scope: !4870)
!4874 = !DILocation(line: 1482, column: 8, scope: !4870)
!4875 = !DILocation(line: 1484, column: 6, scope: !4870)
!4876 = !DILocation(line: 1486, column: 14, scope: !4865)
!4877 = !DILocation(line: 1486, column: 6, scope: !4865)
!4878 = !DILocation(line: 1490, column: 11, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 1490, column: 11)
!4880 = !DILocation(line: 1490, column: 11, scope: !4859)
!4881 = !DILocation(line: 1494, column: 19, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 1491, column: 2)
!4883 = !DILocation(line: 1494, column: 4, scope: !4882)
!4884 = !DILocation(line: 1495, column: 4, scope: !4882)
!4885 = !DILocation(line: 1496, column: 16, scope: !4882)
!4886 = !DILocation(line: 1496, column: 4, scope: !4882)
!4887 = !DILocation(line: 1497, column: 2, scope: !4882)
!4888 = !DILocation(line: 1500, column: 1, scope: !4811)
!4889 = distinct !DISubprogram(name: "print_to_asm_out_file", scope: !3, file: !3, line: 1284, type: !4666, scopeLine: 1285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4890 = !{!4891, !4892, !4893}
!4891 = !DILocalVariable(name: "type", arg: 1, scope: !4889, file: !3, line: 1284, type: !4668)
!4892 = !DILocalVariable(name: "text", arg: 2, scope: !4889, file: !3, line: 1284, type: !475)
!4893 = !DILocalVariable(name: "prepend_sep", scope: !4889, file: !3, line: 1286, type: !469)
!4894 = !DILocation(line: 0, scope: !4889)
!4895 = !DILocation(line: 1288, column: 3, scope: !4889)
!4896 = !DILocation(line: 1291, column: 19, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 1289, column: 5)
!4898 = !DILocation(line: 1291, column: 7, scope: !4897)
!4899 = !DILocation(line: 1292, column: 7, scope: !4897)
!4900 = !DILocation(line: 1295, column: 33, scope: !4897)
!4901 = !DILocation(line: 1295, column: 7, scope: !4897)
!4902 = !DILocation(line: 1296, column: 14, scope: !4897)
!4903 = !DILocation(line: 1296, column: 7, scope: !4897)
!4904 = !DILocation(line: 1305, column: 14, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 1304, column: 11)
!4906 = !DILocation(line: 1305, column: 2, scope: !4905)
!4907 = !DILocation(line: 1306, column: 20, scope: !4897)
!4908 = !DILocation(line: 1306, column: 7, scope: !4897)
!4909 = !DILocation(line: 1309, column: 7, scope: !4897)
!4910 = !DILocation(line: 0, scope: !4897)
!4911 = !DILocation(line: 1314, column: 1, scope: !4889)
