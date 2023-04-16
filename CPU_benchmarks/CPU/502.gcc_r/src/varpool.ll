; ModuleID = 'varpool.bc'
source_filename = "varpool.c"
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
%struct.varpool_node = type { %union.tree_node*, %struct.varpool_node*, %struct.varpool_node*, %struct.varpool_node*, i32, i8 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%union.section = type { %struct.unnamed_section }
%struct.unnamed_section = type { %struct.section_common, void (i8*)*, i8*, %union.section* }
%struct.section_common = type { i32 }
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
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.var_ann_d = type { i8, i32, %union.tree_node* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [10 x i8] c"varpool.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@varpool_hash = internal global %struct.htab* null, align 8, !dbg !0
@cgraph_order = external dso_local local_unnamed_addr global i32, align 4
@varpool_nodes = common dso_local local_unnamed_addr global %struct.varpool_node* null, align 8, !dbg !1477
@.str.2 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" availability:%s\00", align 1
@cgraph_function_flags_ready = external dso_local local_unnamed_addr global i8, align 1
@cgraph_availability_names = external dso_local local_unnamed_addr constant [0 x i8*], align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"not-ready\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" initialized\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" needed\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" analyzed\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" finalized\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" output\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c" externally_visible\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"variable pool:\0A\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@tree_contains_struct = external dso_local local_unnamed_addr global [191 x [64 x i8]], align 16
@flag_whole_program = external dso_local local_unnamed_addr global i32, align 4
@flag_lto = external dso_local local_unnamed_addr global i32, align 4
@flag_whopr = external dso_local local_unnamed_addr global i32, align 4
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@flag_toplevel_reorder = external dso_local local_unnamed_addr global i32, align 4
@in_lto_p = external dso_local local_unnamed_addr global i8, align 1
@cgraph_global_info_ready = external dso_local local_unnamed_addr global i8, align 1
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@varpool_first_unanalyzed_node = internal global %struct.varpool_node* null, align 8, !dbg !1483
@varpool_assembled_nodes_queue = internal global %struct.varpool_node* null, align 8, !dbg !1485
@varpool_nodes_queue = common dso_local local_unnamed_addr global %struct.varpool_node* null, align 8, !dbg !1479
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@varpool_last_needed_node = internal global %struct.varpool_node* null, align 8, !dbg !1481
@gt_ggc_r_gt_varpool_h = dso_local local_unnamed_addr constant [5 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.varpool_node** @varpool_assembled_nodes_queue to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_varpool_node, void (i8*)* @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { i8* bitcast (%struct.varpool_node** @varpool_first_unanalyzed_node to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_varpool_node, void (i8*)* @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { i8* bitcast (%struct.varpool_node** @varpool_last_needed_node to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_varpool_node, void (i8*)* @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { i8* bitcast (%struct.htab** @varpool_hash to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_m_P12varpool_node4htab, void (i8*)* @gt_pch_n_P12varpool_node4htab }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1461

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1491 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1504, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1505, metadata !DIExpression()), !dbg !1506
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1507
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1508
  ret i32 %call, !dbg !1509
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1510 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1514
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1515
  ret i32 %call, !dbg !1516
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1517 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1572, metadata !DIExpression()), !dbg !1573
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1574
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1574
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1574
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1574
  %cmp = icmp uge i8* %0, %1, !dbg !1574
  %conv1 = zext i1 %cmp to i64, !dbg !1574
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1574
  %tobool = icmp eq i64 %expval, 0, !dbg !1574
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1574

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1574
  br label %cond.end, !dbg !1574

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1574
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1574
  %2 = load i8, i8* %0, align 1, !dbg !1574
  %conv3 = zext i8 %2 to i32, !dbg !1574
  br label %cond.end, !dbg !1574

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1574
  ret i32 %cond, !dbg !1575
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1576 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1578, metadata !DIExpression()), !dbg !1579
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1580
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1580
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1580
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1580
  %cmp = icmp uge i8* %0, %1, !dbg !1580
  %conv1 = zext i1 %cmp to i64, !dbg !1580
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1580
  %tobool = icmp eq i64 %expval, 0, !dbg !1580
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1580

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1580
  br label %cond.end, !dbg !1580

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1580
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1580
  %2 = load i8, i8* %0, align 1, !dbg !1580
  %conv3 = zext i8 %2 to i32, !dbg !1580
  br label %cond.end, !dbg !1580

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1580
  ret i32 %cond, !dbg !1581
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1582 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1583
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1583
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1583
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1583
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1583
  %cmp = icmp uge i8* %1, %2, !dbg !1583
  %conv1 = zext i1 %cmp to i64, !dbg !1583
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1583
  %tobool = icmp eq i64 %expval, 0, !dbg !1583
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1583

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1583
  br label %cond.end, !dbg !1583

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1583
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1583
  %3 = load i8, i8* %1, align 1, !dbg !1583
  %conv3 = zext i8 %3 to i32, !dbg !1583
  br label %cond.end, !dbg !1583

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1583
  ret i32 %cond, !dbg !1584
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1585 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1589, metadata !DIExpression()), !dbg !1590
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1591
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1592
  ret i32 %call, !dbg !1593
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1594 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1598, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1599, metadata !DIExpression()), !dbg !1600
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1601
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1601
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1601
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1601
  %cmp = icmp uge i8* %0, %1, !dbg !1601
  %conv1 = zext i1 %cmp to i64, !dbg !1601
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1601
  %tobool = icmp eq i64 %expval, 0, !dbg !1601
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1601

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1601
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1601
  br label %cond.end, !dbg !1601

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1601
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1601
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1601
  store i8 %conv2, i8* %0, align 1, !dbg !1601
  %conv6 = and i32 %__c, 255, !dbg !1601
  br label %cond.end, !dbg !1601

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1601
  ret i32 %cond, !dbg !1602
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1603 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1605, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1606, metadata !DIExpression()), !dbg !1607
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1608
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1608
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1608
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1608
  %cmp = icmp uge i8* %0, %1, !dbg !1608
  %conv1 = zext i1 %cmp to i64, !dbg !1608
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1608
  %tobool = icmp eq i64 %expval, 0, !dbg !1608
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1608

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1608
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1608
  br label %cond.end, !dbg !1608

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1608
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1608
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1608
  store i8 %conv2, i8* %0, align 1, !dbg !1608
  %conv6 = and i32 %__c, 255, !dbg !1608
  br label %cond.end, !dbg !1608

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1608
  ret i32 %cond, !dbg !1609
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1610 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1612, metadata !DIExpression()), !dbg !1613
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1614
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1614
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1614
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1614
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1614
  %cmp = icmp uge i8* %1, %2, !dbg !1614
  %conv1 = zext i1 %cmp to i64, !dbg !1614
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1614
  %tobool = icmp eq i64 %expval, 0, !dbg !1614
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1614

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1614
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1614
  br label %cond.end, !dbg !1614

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1614
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1614
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1614
  store i8 %conv4, i8* %1, align 1, !dbg !1614
  %conv6 = and i32 %__c, 255, !dbg !1614
  br label %cond.end, !dbg !1614

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1614
  ret i32 %cond, !dbg !1615
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1616 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1622, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1623, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1624, metadata !DIExpression()), !dbg !1625
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1626
  ret i64 %call, !dbg !1627
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1628 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1630, metadata !DIExpression()), !dbg !1631
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1632
  %0 = load i32, i32* %_flags, align 8, !dbg !1632
  %and = lshr i32 %0, 4, !dbg !1632
  %and.lobit = and i32 %and, 1, !dbg !1632
  ret i32 %and.lobit, !dbg !1633
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1634 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1636, metadata !DIExpression()), !dbg !1637
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1638
  %0 = load i32, i32* %_flags, align 8, !dbg !1638
  %and = lshr i32 %0, 5, !dbg !1638
  %and.lobit = and i32 %and, 1, !dbg !1638
  ret i32 %and.lobit, !dbg !1639
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1640 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1643, metadata !DIExpression()), !dbg !1644
  %__c.off = add i32 %__c, 128, !dbg !1645
  %0 = icmp ult i32 %__c.off, 384, !dbg !1645
  br i1 %0, label %cond.true, label %cond.end, !dbg !1645

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1646
  %1 = load i32*, i32** %call, align 8, !dbg !1647
  %idxprom = sext i32 %__c to i64, !dbg !1648
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1648
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1648
  br label %cond.end, !dbg !1649

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1649
  ret i32 %cond, !dbg !1650
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1651 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1653, metadata !DIExpression()), !dbg !1654
  %__c.off = add i32 %__c, 128, !dbg !1655
  %0 = icmp ult i32 %__c.off, 384, !dbg !1655
  br i1 %0, label %cond.true, label %cond.end, !dbg !1655

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1656
  %1 = load i32*, i32** %call, align 8, !dbg !1657
  %idxprom = sext i32 %__c to i64, !dbg !1658
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1658
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1658
  br label %cond.end, !dbg !1659

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1659
  ret i32 %cond, !dbg !1660
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1661 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1666, metadata !DIExpression()), !dbg !1667
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1668
  %conv = trunc i64 %call to i32, !dbg !1669
  ret i32 %conv, !dbg !1670
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1671 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1675, metadata !DIExpression()), !dbg !1676
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1677
  ret i64 %call, !dbg !1678
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1679 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1684, metadata !DIExpression()), !dbg !1685
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1686
  ret i64 %call, !dbg !1687
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1688 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1694, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1695, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1696, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1697, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1698, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 0, metadata !1699, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1700, metadata !DIExpression()), !dbg !1704
  br label %while.cond, !dbg !1705

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1706
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1704
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1700, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1699, metadata !DIExpression()), !dbg !1704
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1707
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1705

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1708
  %div = lshr i64 %add, 1, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %div, metadata !1701, metadata !DIExpression()), !dbg !1704
  %mul = mul i64 %div, %__size, !dbg !1711
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1712
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1702, metadata !DIExpression()), !dbg !1704
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %call, metadata !1703, metadata !DIExpression()), !dbg !1704
  %cmp1 = icmp slt i32 %call, 0, !dbg !1714
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1716

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1717
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1719

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1699, metadata !DIExpression()), !dbg !1704
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1704
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1704
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1700, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1699, metadata !DIExpression()), !dbg !1704
  br label %while.cond, !dbg !1705, !llvm.loop !1721

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1704
  ret i8* %retval.0, !dbg !1723
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1724 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1730, metadata !DIExpression()), !dbg !1731
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1732
  ret double %call, !dbg !1733
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1734 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1743, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1744, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i32 %base, metadata !1745, metadata !DIExpression()), !dbg !1746
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1747
  ret i64 %call, !dbg !1748
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1749 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1755, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1756, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i32 %base, metadata !1757, metadata !DIExpression()), !dbg !1758
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1759
  ret i64 %call, !dbg !1760
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1761 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1772, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1773, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32 %base, metadata !1774, metadata !DIExpression()), !dbg !1775
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1776
  ret i64 %call, !dbg !1777
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1778 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1782, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1783, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i32 %base, metadata !1784, metadata !DIExpression()), !dbg !1785
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1786
  ret i64 %call, !dbg !1787
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1788 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1830, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1831, metadata !DIExpression()), !dbg !1832
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1833
  ret i32 %call, !dbg !1834
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1835 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1837, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1838, metadata !DIExpression()), !dbg !1839
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1840
  ret i32 %call, !dbg !1841
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1842 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1846, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1847, metadata !DIExpression()), !dbg !1848
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1849
  ret i32 %call, !dbg !1850
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1851 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1855, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1856, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1857, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1858, metadata !DIExpression()), !dbg !1859
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1860
  ret i32 %call, !dbg !1861
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1862 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1866, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1867, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1868, metadata !DIExpression()), !dbg !1869
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1868, metadata !DIExpression(DW_OP_deref)), !dbg !1869
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1870
  ret i32 %call, !dbg !1871
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1872 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1876, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1877, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1878, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1879, metadata !DIExpression()), !dbg !1880
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1879, metadata !DIExpression(DW_OP_deref)), !dbg !1880
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1881
  ret i32 %call, !dbg !1882
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1883 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1907, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1908, metadata !DIExpression()), !dbg !1909
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1910
  ret i32 %call, !dbg !1911
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1912 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1914, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1915, metadata !DIExpression()), !dbg !1916
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1917
  ret i32 %call, !dbg !1918
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1919 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1923, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1924, metadata !DIExpression()), !dbg !1925
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1926
  ret i32 %call, !dbg !1927
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1928 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1932, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1933, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1934, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1935, metadata !DIExpression()), !dbg !1936
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1937
  ret i32 %call, !dbg !1938
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @varpool_node_name(%struct.varpool_node* %node) local_unnamed_addr #4 !dbg !1939 {
entry:
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node, metadata !1943, metadata !DIExpression()), !dbg !1944
  %0 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !1945
  %decl = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 0, !dbg !1946
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !1946
  %call = tail call i8* %0(%union.tree_node* %1, i32 2) #6, !dbg !1947
  ret i8* %call, !dbg !1948
}

; Function Attrs: nounwind uwtable
define dso_local %struct.varpool_node* @varpool_node(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !1949 {
entry:
  %key = alloca %struct.varpool_node, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !1953, metadata !DIExpression()), !dbg !1957
  %0 = bitcast %struct.varpool_node* %key to i8*, !dbg !1958
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !1958
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1959
  %bf.load = load i64, i64* %1, align 8, !dbg !1959
  %bf.cast = and i64 %bf.load, 65535, !dbg !1959
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !1959
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1959
  %cmp = icmp eq i32 %2, 3, !dbg !1959
  br i1 %cmp, label %land.lhs.true, label %cond.true, !dbg !1959

land.lhs.true:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast, 29, !dbg !1959
  br i1 %cmp5, label %cond.true, label %cond.end, !dbg !1959

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1959
  br label %cond.end, !dbg !1959

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %3 = load %struct.htab*, %struct.htab** @varpool_hash, align 8, !dbg !1960
  %tobool = icmp eq %struct.htab* %3, null, !dbg !1960
  br i1 %tobool, label %if.then, label %if.end, !dbg !1962

if.then:                                          ; preds = %cond.end
  %call = tail call %struct.htab* @htab_create_alloc(i64 10, i32 (i8*)* nonnull @hash_varpool_node, i32 (i8*, i8*)* nonnull @eq_varpool_node, void (i8*)* null, i8* (i64, i64)* nonnull @ggc_calloc, void (i8*)* nonnull @ggc_free) #6, !dbg !1963
  store %struct.htab* %call, %struct.htab** @varpool_hash, align 8, !dbg !1964
  br label %if.end, !dbg !1965

if.end:                                           ; preds = %cond.end, %if.then
  %4 = phi %struct.htab* [ %3, %cond.end ], [ %call, %if.then ], !dbg !1966
  %decl6 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %key, i64 0, i32 0, !dbg !1967
  store %union.tree_node* %decl, %union.tree_node** %decl6, align 8, !dbg !1968
  %call7 = call i8** @htab_find_slot(%struct.htab* %4, i8* nonnull %0, i32 1) #6, !dbg !1969
  %5 = bitcast i8** %call7 to %struct.varpool_node**, !dbg !1970
  call void @llvm.dbg.value(metadata %struct.varpool_node** %5, metadata !1956, metadata !DIExpression()), !dbg !1957
  %6 = load %struct.varpool_node*, %struct.varpool_node** %5, align 8, !dbg !1971
  %tobool8 = icmp eq %struct.varpool_node* %6, null, !dbg !1971
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1973

if.then9:                                         ; preds = %if.end
  br label %cleanup, !dbg !1974

if.end10:                                         ; preds = %if.end
  %call11 = call i8* @ggc_alloc_cleared_stat(i64 40) #6, !dbg !1975
  %7 = bitcast i8* %call11 to %struct.varpool_node*, !dbg !1975
  call void @llvm.dbg.value(metadata %struct.varpool_node* %7, metadata !1955, metadata !DIExpression()), !dbg !1957
  %decl12 = bitcast i8* %call11 to %union.tree_node**, !dbg !1976
  store %union.tree_node* %decl, %union.tree_node** %decl12, align 8, !dbg !1977
  %8 = load i32, i32* @cgraph_order, align 4, !dbg !1978
  %inc = add nsw i32 %8, 1, !dbg !1978
  store i32 %inc, i32* @cgraph_order, align 4, !dbg !1978
  %order = getelementptr inbounds i8, i8* %call11, i64 32, !dbg !1979
  %9 = bitcast i8* %order to i32*, !dbg !1979
  store i32 %8, i32* %9, align 8, !dbg !1980
  %10 = load i64, i64* bitcast (%struct.varpool_node** @varpool_nodes to i64*), align 8, !dbg !1981
  %next = getelementptr inbounds i8, i8* %call11, i64 8, !dbg !1982
  %11 = bitcast i8* %next to i64*, !dbg !1983
  store i64 %10, i64* %11, align 8, !dbg !1983
  store i8* %call11, i8** bitcast (%struct.varpool_node** @varpool_nodes to i8**), align 8, !dbg !1984
  store i8* %call11, i8** %call7, align 8, !dbg !1985
  br label %cleanup, !dbg !1986

cleanup:                                          ; preds = %if.end10, %if.then9
  %retval.0 = phi %struct.varpool_node* [ %6, %if.then9 ], [ %7, %if.end10 ], !dbg !1957
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !1987
  ret %struct.varpool_node* %retval.0, !dbg !1987
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create_alloc(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8* (i64, i64)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @hash_varpool_node(i8* %p) #4 !dbg !1988 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1990, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8* %p, metadata !1991, metadata !DIExpression()), !dbg !1992
  %0 = bitcast i8* %p to %struct.tree_decl_minimal**, !dbg !1993
  %1 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %0, align 8, !dbg !1993
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %1, i64 0, i32 2, !dbg !1993
  %2 = load i32, i32* %uid, align 4, !dbg !1993
  ret i32 %2, !dbg !1994
}

; Function Attrs: nounwind uwtable
define internal i32 @eq_varpool_node(i8* %p1, i8* %p2) #4 !dbg !1995 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !1997, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8* %p2, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8* %p1, metadata !1999, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8* %p2, metadata !2000, metadata !DIExpression()), !dbg !2001
  %0 = bitcast i8* %p1 to %struct.tree_decl_minimal**, !dbg !2002
  %1 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %0, align 8, !dbg !2002
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %1, i64 0, i32 2, !dbg !2002
  %2 = load i32, i32* %uid, align 4, !dbg !2002
  %3 = bitcast i8* %p2 to %struct.tree_decl_minimal**, !dbg !2003
  %4 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %3, align 8, !dbg !2003
  %uid3 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %4, i64 0, i32 2, !dbg !2003
  %5 = load i32, i32* %uid3, align 4, !dbg !2003
  %cmp = icmp eq i32 %2, %5, !dbg !2004
  %conv = zext i1 %cmp to i32, !dbg !2004
  ret i32 %conv, !dbg !2005
}

declare dso_local i8* @ggc_calloc(i64, i64) #1

declare dso_local void @ggc_free(i8*) #1

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

declare dso_local i8* @ggc_alloc_cleared_stat(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_varpool_node(%struct._IO_FILE* %f, %struct.varpool_node* %node) local_unnamed_addr #4 !dbg !2006 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2010, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node, metadata !2011, metadata !DIExpression()), !dbg !2012
  %call = tail call i8* @varpool_node_name(%struct.varpool_node* %node) #8, !dbg !2013
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %call) #6, !dbg !2014
  %0 = load i8, i8* @cgraph_function_flags_ready, align 1, !dbg !2015
  %tobool = icmp eq i8 %0, 0, !dbg !2015
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2015

cond.true:                                        ; preds = %entry
  %call2 = tail call i32 @cgraph_variable_initializer_availability(%struct.varpool_node* %node) #8, !dbg !2016
  %idxprom = zext i32 %call2 to i64, !dbg !2017
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @cgraph_availability_names, i64 0, i64 %idxprom, !dbg !2017
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !2017
  br label %cond.end, !dbg !2015

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %entry ], !dbg !2015
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %cond) #6, !dbg !2018
  %2 = bitcast %struct.varpool_node* %node to %struct.tree_decl_common**, !dbg !2019
  %3 = load %struct.tree_decl_common*, %struct.tree_decl_common** %2, align 8, !dbg !2019
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %3, i64 0, i32 5, !dbg !2019
  %4 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2019
  %tobool4 = icmp eq %union.tree_node* %4, null, !dbg !2019
  br i1 %tobool4, label %if.end, label %if.then, !dbg !2021

if.then:                                          ; preds = %cond.end
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2022
  br label %if.end, !dbg !2022

if.end:                                           ; preds = %cond.end, %if.then
  %needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 5, !dbg !2023
  %bf.load = load i8, i8* %needed, align 4, !dbg !2023
  %bf.clear = and i8 %bf.load, 1, !dbg !2023
  %tobool6 = icmp eq i8 %bf.clear, 0, !dbg !2025
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !2026

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2027
  %bf.load10.pre = load i8, i8* %needed, align 4, !dbg !2028
  br label %if.end9, !dbg !2027

if.end9:                                          ; preds = %if.end, %if.then7
  %bf.load10 = phi i8 [ %bf.load, %if.end ], [ %bf.load10.pre, %if.then7 ], !dbg !2028
  %bf.clear11 = and i8 %bf.load10, 4, !dbg !2028
  %tobool13 = icmp eq i8 %bf.clear11, 0, !dbg !2030
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !2031

if.then14:                                        ; preds = %if.end9
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2032
  %bf.load17.pre = load i8, i8* %needed, align 4, !dbg !2033
  br label %if.end16, !dbg !2032

if.end16:                                         ; preds = %if.end9, %if.then14
  %bf.load17 = phi i8 [ %bf.load10, %if.end9 ], [ %bf.load17.pre, %if.then14 ], !dbg !2033
  %bf.clear19 = and i8 %bf.load17, 8, !dbg !2033
  %tobool21 = icmp eq i8 %bf.clear19, 0, !dbg !2035
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !2036

if.then22:                                        ; preds = %if.end16
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2037
  %bf.load25.pre = load i8, i8* %needed, align 4, !dbg !2038
  br label %if.end24, !dbg !2037

if.end24:                                         ; preds = %if.end16, %if.then22
  %bf.load25 = phi i8 [ %bf.load17, %if.end16 ], [ %bf.load25.pre, %if.then22 ], !dbg !2038
  %bf.clear27 = and i8 %bf.load25, 16, !dbg !2038
  %tobool29 = icmp eq i8 %bf.clear27, 0, !dbg !2040
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !2041

if.then30:                                        ; preds = %if.end24
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2042
  %bf.load33.pre = load i8, i8* %needed, align 4, !dbg !2043
  br label %if.end32, !dbg !2042

if.end32:                                         ; preds = %if.end24, %if.then30
  %bf.load33 = phi i8 [ %bf.load25, %if.end24 ], [ %bf.load33.pre, %if.then30 ], !dbg !2043
  %bf.clear35 = and i8 %bf.load33, 32, !dbg !2043
  %tobool37 = icmp eq i8 %bf.clear35, 0, !dbg !2045
  br i1 %tobool37, label %if.end40, label %if.then38, !dbg !2046

if.then38:                                        ; preds = %if.end32
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2047
  br label %if.end40, !dbg !2047

if.end40:                                         ; preds = %if.end32, %if.then38
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2048
  ret void, !dbg !2049
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cgraph_variable_initializer_availability(%struct.varpool_node* %node) local_unnamed_addr #4 !dbg !2050 {
entry:
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node, metadata !2054, metadata !DIExpression()), !dbg !2055
  %0 = load i8, i8* @cgraph_function_flags_ready, align 1, !dbg !2056
  %tobool = icmp eq i8 %0, 0, !dbg !2056
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2056

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 326, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2056
  br label %cond.end, !dbg !2056

cond.end:                                         ; preds = %entry, %cond.true
  %finalized = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 5, !dbg !2057
  %bf.load = load i8, i8* %finalized, align 4, !dbg !2057
  %bf.clear = and i8 %bf.load, 8, !dbg !2057
  %tobool1 = icmp eq i8 %bf.clear, 0, !dbg !2059
  br i1 %tobool1, label %return, label %if.end, !dbg !2060

if.end:                                           ; preds = %cond.end
  %1 = bitcast %struct.varpool_node* %node to i64**, !dbg !2061
  %2 = load i64*, i64** %1, align 8, !dbg !2061
  %bf.load2 = load i64, i64* %2, align 8, !dbg !2061
  %bf.cast51 = and i64 %bf.load2, 134217728, !dbg !2061
  %tobool6 = icmp eq i64 %bf.cast51, 0, !dbg !2061
  br i1 %tobool6, label %return, label %if.end8, !dbg !2063

if.end8:                                          ; preds = %if.end
  %3 = bitcast i64* %2 to %union.tree_node*, !dbg !2063
  %4 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 49), align 8, !dbg !2064
  %call = tail call zeroext i8 %4(%union.tree_node* %3) #6, !dbg !2066
  %tobool10 = icmp eq i8 %call, 0, !dbg !2066
  br i1 %tobool10, label %land.lhs.true, label %if.end17, !dbg !2067

land.lhs.true:                                    ; preds = %if.end8
  %5 = bitcast %struct.varpool_node* %node to %struct.tree_decl_with_vis**, !dbg !2068
  %6 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %5, align 8, !dbg !2068
  %comdat_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %6, i64 0, i32 4, !dbg !2068
  %7 = bitcast i24* %comdat_flag to i32*, !dbg !2068
  %bf.load12 = load i32, i32* %7, align 8, !dbg !2068
  %bf.clear14 = and i32 %bf.load12, 512, !dbg !2068
  %tobool15 = icmp eq i32 %bf.clear14, 0, !dbg !2068
  br i1 %tobool15, label %return, label %if.end17, !dbg !2069

if.end17:                                         ; preds = %land.lhs.true, %if.end8
  br label %return, !dbg !2070

return:                                           ; preds = %land.lhs.true, %if.end, %cond.end, %if.end17
  %retval.0 = phi i32 [ 3, %if.end17 ], [ 1, %cond.end ], [ 3, %if.end ], [ 2, %land.lhs.true ], !dbg !2055
  ret i32 %retval.0, !dbg !2071
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_varpool(%struct._IO_FILE* %f) local_unnamed_addr #4 !dbg !2072 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2076, metadata !DIExpression()), !dbg !2078
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2079
  br label %for.cond, !dbg !2080

for.cond:                                         ; preds = %for.body, %entry
  %node.0.in = phi %struct.varpool_node** [ @varpool_nodes, %entry ], [ %next, %for.body ]
  %node.0 = load %struct.varpool_node*, %struct.varpool_node** %node.0.in, align 8, !dbg !2082
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node.0, metadata !2077, metadata !DIExpression()), !dbg !2078
  %tobool = icmp eq %struct.varpool_node* %node.0, null, !dbg !2083
  br i1 %tobool, label %for.end, label %for.body, !dbg !2083

for.body:                                         ; preds = %for.cond
  tail call void @dump_varpool_node(%struct._IO_FILE* %f, %struct.varpool_node* nonnull %node.0) #8, !dbg !2084
  %next = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node.0, i64 0, i32 1, !dbg !2086
  br label %for.cond, !dbg !2087, !llvm.loop !2088

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2090
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_varpool() local_unnamed_addr #4 !dbg !2091 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2094
  tail call void @dump_varpool(%struct._IO_FILE* %0) #8, !dbg !2095
  ret void, !dbg !2096
}

; Function Attrs: nounwind uwtable
define dso_local %struct.varpool_node* @varpool_node_for_asm(%union.tree_node* %asmname) local_unnamed_addr #4 !dbg !2097 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %asmname, metadata !2099, metadata !DIExpression()), !dbg !2101
  br label %for.cond, !dbg !2102

for.cond:                                         ; preds = %for.inc, %entry
  %node.0.in = phi %struct.varpool_node** [ @varpool_nodes, %entry ], [ %next, %for.inc ]
  %node.0 = load %struct.varpool_node*, %struct.varpool_node** %node.0.in, align 8, !dbg !2104
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node.0, metadata !2100, metadata !DIExpression()), !dbg !2101
  %tobool = icmp eq %struct.varpool_node* %node.0, null, !dbg !2105
  br i1 %tobool, label %cleanup, label %for.body, !dbg !2105

for.body:                                         ; preds = %for.cond
  %decl = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node.0, i64 0, i32 0, !dbg !2106
  %0 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !2106
  %call = tail call zeroext i8 @decl_assembler_name_equal(%union.tree_node* %0, %union.tree_node* %asmname) #6, !dbg !2109
  %tobool1 = icmp eq i8 %call, 0, !dbg !2109
  br i1 %tobool1, label %for.inc, label %cleanup, !dbg !2110

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node.0, i64 0, i32 1, !dbg !2111
  br label %for.cond, !dbg !2112, !llvm.loop !2113

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi %struct.varpool_node* [ %node.0, %for.body ], [ null, %for.cond ], !dbg !2101
  ret %struct.varpool_node* %retval.0, !dbg !2115
}

declare dso_local zeroext i8 @decl_assembler_name_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @varpool_mark_needed_node(%struct.varpool_node* %node) local_unnamed_addr #4 !dbg !2116 {
entry:
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node, metadata !2120, metadata !DIExpression()), !dbg !2121
  %alias = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 5, !dbg !2122
  %bf.load = load i8, i8* %alias, align 4, !dbg !2122
  %bf.clear = and i8 %bf.load, 64, !dbg !2122
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !2124
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2125

land.lhs.true:                                    ; preds = %entry
  %extra_name = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 3, !dbg !2126
  %0 = load %struct.varpool_node*, %struct.varpool_node** %extra_name, align 8, !dbg !2126
  %tobool1 = icmp eq %struct.varpool_node* %0, null, !dbg !2127
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2128

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.varpool_node* %0, metadata !2120, metadata !DIExpression()), !dbg !2121
  %needed.phi.trans.insert = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %0, i64 0, i32 5, !dbg !2129
  %bf.load3.pre = load i8, i8* %needed.phi.trans.insert, align 4, !dbg !2131
  br label %if.end, !dbg !2132

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %bf.load8 = phi i8 [ %bf.load3.pre, %if.then ], [ %bf.load, %land.lhs.true ], [ %bf.load, %entry ], !dbg !2131
  %node.addr.0 = phi %struct.varpool_node* [ %0, %if.then ], [ %node, %land.lhs.true ], [ %node, %entry ]
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node.addr.0, metadata !2120, metadata !DIExpression()), !dbg !2121
  %needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node.addr.0, i64 0, i32 5, !dbg !2131
  %bf.clear4 = and i8 %bf.load8, 1, !dbg !2131
  %tobool6 = icmp eq i8 %bf.clear4, 0, !dbg !2133
  br i1 %tobool6, label %land.lhs.true7, label %if.end20, !dbg !2134

land.lhs.true7:                                   ; preds = %if.end
  %bf.clear10 = and i8 %bf.load8, 8, !dbg !2135
  %tobool12 = icmp eq i8 %bf.clear10, 0, !dbg !2136
  br i1 %tobool12, label %if.end20, label %land.lhs.true13, !dbg !2137

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %1 = bitcast %struct.varpool_node* %node.addr.0 to i64**, !dbg !2138
  %2 = load i64*, i64** %1, align 8, !dbg !2138
  %bf.load14 = load i64, i64* %2, align 8, !dbg !2138
  %bf.cast171 = and i64 %bf.load14, 4194304, !dbg !2138
  %tobool18 = icmp eq i64 %bf.cast171, 0, !dbg !2138
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2139

if.then19:                                        ; preds = %land.lhs.true13
  tail call fastcc void @varpool_enqueue_needed_node(%struct.varpool_node* %node.addr.0) #8, !dbg !2140
  %bf.load22.pre = load i8, i8* %needed, align 4, !dbg !2141
  br label %if.end20, !dbg !2140

if.end20:                                         ; preds = %land.lhs.true13, %land.lhs.true7, %if.end, %if.then19
  %bf.load22 = phi i8 [ %bf.load8, %land.lhs.true13 ], [ %bf.load8, %land.lhs.true7 ], [ %bf.load8, %if.end ], [ %bf.load22.pre, %if.then19 ], !dbg !2141
  %bf.set = or i8 %bf.load22, 1, !dbg !2141
  store i8 %bf.set, i8* %needed, align 4, !dbg !2141
  ret void, !dbg !2142
}

; Function Attrs: nounwind uwtable
define internal fastcc void @varpool_enqueue_needed_node(%struct.varpool_node* %node) unnamed_addr #4 !dbg !2143 {
entry:
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node, metadata !2145, metadata !DIExpression()), !dbg !2146
  %0 = load %struct.varpool_node*, %struct.varpool_node** @varpool_last_needed_node, align 8, !dbg !2147
  %tobool = icmp eq %struct.varpool_node* %0, null, !dbg !2147
  br i1 %tobool, label %if.end, label %if.then, !dbg !2149

if.then:                                          ; preds = %entry
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %0, i64 0, i32 2, !dbg !2150
  store %struct.varpool_node* %node, %struct.varpool_node** %next_needed, align 8, !dbg !2151
  br label %if.end, !dbg !2152

if.end:                                           ; preds = %entry, %if.then
  store %struct.varpool_node* %node, %struct.varpool_node** @varpool_last_needed_node, align 8, !dbg !2153
  %next_needed1 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 2, !dbg !2154
  store %struct.varpool_node* null, %struct.varpool_node** %next_needed1, align 8, !dbg !2155
  %1 = load %struct.varpool_node*, %struct.varpool_node** @varpool_nodes_queue, align 8, !dbg !2156
  %tobool2 = icmp eq %struct.varpool_node* %1, null, !dbg !2156
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2158

if.then3:                                         ; preds = %if.end
  store %struct.varpool_node* %node, %struct.varpool_node** @varpool_nodes_queue, align 8, !dbg !2159
  br label %if.end4, !dbg !2160

if.end4:                                          ; preds = %if.end, %if.then3
  %2 = load %struct.varpool_node*, %struct.varpool_node** @varpool_first_unanalyzed_node, align 8, !dbg !2161
  %tobool5 = icmp eq %struct.varpool_node* %2, null, !dbg !2161
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2163

if.then6:                                         ; preds = %if.end4
  store %struct.varpool_node* %node, %struct.varpool_node** @varpool_first_unanalyzed_node, align 8, !dbg !2164
  br label %if.end7, !dbg !2165

if.end7:                                          ; preds = %if.end4, %if.then6
  %decl = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 0, !dbg !2166
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !2166
  tail call void @notice_global_symbol(%union.tree_node* %3) #6, !dbg !2167
  ret void, !dbg !2168
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @decide_is_variable_needed(%struct.varpool_node* %node, %union.tree_node* %decl) local_unnamed_addr #4 !dbg !2169 {
entry:
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node, metadata !2173, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2174, metadata !DIExpression()), !dbg !2178
  %externally_visible = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 5, !dbg !2179
  %bf.load = load i8, i8* %externally_visible, align 4, !dbg !2179
  %bf.clear = and i8 %bf.load, 32, !dbg !2179
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !2181
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !2182

land.lhs.true:                                    ; preds = %entry
  %comdat_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2183
  %0 = bitcast i24* %comdat_flag to i32*, !dbg !2183
  %bf.load1 = load i32, i32* %0, align 8, !dbg !2183
  %bf.clear3 = and i32 %bf.load1, 512, !dbg !2183
  %tobool4 = icmp eq i32 %bf.clear3, 0, !dbg !2183
  br i1 %tobool4, label %return, label %lor.lhs.false, !dbg !2184

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %bf.clear7 = and i8 %bf.load, 2, !dbg !2185
  %tobool9 = icmp eq i8 %bf.clear7, 0, !dbg !2186
  br i1 %tobool9, label %if.end, label %return, !dbg !2187

if.end:                                           ; preds = %lor.lhs.false
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2188
  %bf.load10 = load i64, i64* %1, align 8, !dbg !2188
  %bf.cast12 = and i64 %bf.load10, 65535, !dbg !2188
  %arrayidx13 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast12, i64 13, !dbg !2188
  %2 = load i8, i8* %arrayidx13, align 1, !dbg !2188
  %tobool14 = icmp eq i8 %2, 0, !dbg !2188
  br i1 %tobool14, label %if.end26, label %land.lhs.true15, !dbg !2188

land.lhs.true15:                                  ; preds = %if.end
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2188
  %3 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8, !dbg !2188
  %cmp = icmp eq %union.tree_node* %3, null, !dbg !2188
  br i1 %cmp, label %if.end26, label %land.lhs.true18, !dbg !2190

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !2191
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2191
  %bf.load20 = load i64, i64* %4, align 8, !dbg !2191
  %bf.cast237 = and i64 %bf.load20, 67108864, !dbg !2191
  %tobool24 = icmp eq i64 %bf.cast237, 0, !dbg !2191
  br i1 %tobool24, label %land.lhs.true18.if.end26_crit_edge, label %return, !dbg !2192

land.lhs.true18.if.end26_crit_edge:               ; preds = %land.lhs.true18
  %bf.load28.pre = load i64, i64* %1, align 8, !dbg !2193
  br label %if.end26, !dbg !2192

if.end26:                                         ; preds = %land.lhs.true18.if.end26_crit_edge, %land.lhs.true15, %if.end
  %bf.load57 = phi i64 [ %bf.load28.pre, %land.lhs.true18.if.end26_crit_edge ], [ %bf.load10, %land.lhs.true15 ], [ %bf.load10, %if.end ], !dbg !2193
  %bf.cast314 = and i64 %bf.load57, 134217728, !dbg !2193
  %tobool32 = icmp eq i64 %bf.cast314, 0, !dbg !2193
  %5 = load i32, i32* @flag_whole_program, align 4, !dbg !2195
  %6 = load i32, i32* @flag_lto, align 4, !dbg !2196
  %7 = or i32 %5, %6, !dbg !2197
  %8 = load i32, i32* @flag_whopr, align 4, !dbg !2198
  %9 = or i32 %7, %8, !dbg !2197
  %10 = icmp ne i32 %9, 0, !dbg !2197
  %11 = or i1 %10, %tobool32, !dbg !2197
  br i1 %11, label %if.end53, label %land.lhs.true39, !dbg !2197

land.lhs.true39:                                  ; preds = %if.end26
  %comdat_flag41 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2199
  %12 = bitcast i24* %comdat_flag41 to i32*, !dbg !2199
  %bf.load42 = load i32, i32* %12, align 8, !dbg !2199
  %bf.clear44 = and i32 %bf.load42, 512, !dbg !2199
  %tobool45 = icmp eq i32 %bf.clear44, 0, !dbg !2199
  br i1 %tobool45, label %land.lhs.true46, label %if.end53, !dbg !2200

land.lhs.true46:                                  ; preds = %land.lhs.true39
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2201
  %13 = bitcast i40* %decl_flag_1 to i64*, !dbg !2201
  %bf.load47 = load i64, i64* %13, align 8, !dbg !2201
  %bf.cast505 = and i64 %bf.load47, 33554432, !dbg !2201
  %tobool51 = icmp eq i64 %bf.cast505, 0, !dbg !2201
  br i1 %tobool51, label %return, label %if.end53, !dbg !2202

if.end53:                                         ; preds = %land.lhs.true46, %land.lhs.true39, %if.end26
  %14 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 113), align 4, !dbg !2203
  %tobool54 = icmp eq i8 %14, 0, !dbg !2204
  br i1 %tobool54, label %land.lhs.true55, label %if.end76, !dbg !2205

land.lhs.true55:                                  ; preds = %if.end53
  %bf.cast596 = and i64 %bf.load57, 65535, !dbg !2206
  %cmp60 = icmp eq i64 %bf.cast596, 32, !dbg !2206
  br i1 %cmp60, label %land.lhs.true62, label %if.end76, !dbg !2207

land.lhs.true62:                                  ; preds = %land.lhs.true55
  %tls_model = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2208
  %15 = bitcast i24* %tls_model to i32*, !dbg !2208
  %bf.load64 = load i32, i32* %15, align 8, !dbg !2208
  %bf.clear66 = and i32 %bf.load64, 49152, !dbg !2208
  %cmp67 = icmp eq i32 %bf.clear66, 0, !dbg !2208
  br i1 %cmp67, label %if.end76, label %if.then69, !dbg !2209

if.then69:                                        ; preds = %land.lhs.true62
  %call70 = tail call %union.tree_node* @emutls_decl(%union.tree_node* %decl) #6, !dbg !2210
  call void @llvm.dbg.value(metadata %union.tree_node* %call70, metadata !2175, metadata !DIExpression()), !dbg !2211
  %call71 = tail call %struct.varpool_node* @varpool_node(%union.tree_node* %call70) #8, !dbg !2212
  %call72 = tail call zeroext i8 @decide_is_variable_needed(%struct.varpool_node* %call71, %union.tree_node* %call70) #8, !dbg !2214
  %tobool73 = icmp eq i8 %call72, 0, !dbg !2214
  br i1 %tobool73, label %if.end76, label %return

if.end76:                                         ; preds = %if.then69, %land.lhs.true62, %if.end53, %land.lhs.true55
  %16 = load i32, i32* @flag_toplevel_reorder, align 4, !dbg !2215
  %tobool77 = icmp eq i32 %16, 0, !dbg !2215
  br i1 %tobool77, label %if.end79, label %return, !dbg !2217

if.end79:                                         ; preds = %if.end76
  %comdat_flag81 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2218
  %17 = bitcast i24* %comdat_flag81 to i32*, !dbg !2218
  %bf.load82 = load i32, i32* %17, align 8, !dbg !2218
  %bf.clear84 = lshr i32 %bf.load82, 9, !dbg !2178
  %18 = trunc i32 %bf.clear84 to i8, !dbg !2178
  %19 = and i8 %18, 1, !dbg !2178
  %20 = xor i8 %19, 1, !dbg !2178
  br label %return, !dbg !2178

return:                                           ; preds = %land.lhs.true, %land.lhs.true18, %if.then69, %if.end76, %land.lhs.true46, %lor.lhs.false, %if.end79
  %retval.1 = phi i8 [ 1, %if.then69 ], [ 1, %lor.lhs.false ], [ 1, %land.lhs.true ], [ 1, %land.lhs.true18 ], [ 1, %land.lhs.true46 ], [ 0, %if.end76 ], [ %20, %if.end79 ], !dbg !2178
  ret i8 %retval.1, !dbg !2220
}

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @emutls_decl(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @varpool_finalize_decl(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !2221 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2225, metadata !DIExpression()), !dbg !2227
  %call = tail call %struct.varpool_node* @varpool_node(%union.tree_node* %decl) #8, !dbg !2228
  call void @llvm.dbg.value(metadata %struct.varpool_node* %call, metadata !2226, metadata !DIExpression()), !dbg !2227
  %0 = load i8, i8* @in_lto_p, align 1, !dbg !2229
  %tobool = icmp eq i8 %0, 0, !dbg !2229
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then, !dbg !2231

entry.if.end_crit_edge:                           ; preds = %entry
  %finalized.phi.trans.insert = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %call, i64 0, i32 5, !dbg !2232
  %bf.load1.pre = load i8, i8* %finalized.phi.trans.insert, align 4, !dbg !2234
  br label %if.end, !dbg !2231

if.then:                                          ; preds = %entry
  %analyzed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %call, i64 0, i32 5, !dbg !2235
  %bf.load = load i8, i8* %analyzed, align 4, !dbg !2236
  %bf.set = or i8 %bf.load, 4, !dbg !2236
  store i8 %bf.set, i8* %analyzed, align 4, !dbg !2236
  br label %if.end, !dbg !2237

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %bf.load10 = phi i8 [ %bf.load1.pre, %entry.if.end_crit_edge ], [ %bf.set, %if.then ], !dbg !2234
  %finalized = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %call, i64 0, i32 5, !dbg !2234
  %bf.clear2 = and i8 %bf.load10, 8, !dbg !2234
  %tobool3 = icmp eq i8 %bf.clear2, 0, !dbg !2238
  br i1 %tobool3, label %if.end9, label %if.then4, !dbg !2239

if.then4:                                         ; preds = %if.end
  %1 = load i8, i8* @cgraph_global_info_ready, align 1, !dbg !2240
  %tobool5 = icmp eq i8 %1, 0, !dbg !2240
  br i1 %tobool5, label %cleanup.cont, label %if.then6, !dbg !2243

if.then6:                                         ; preds = %if.then4
  %call7 = tail call zeroext i8 @varpool_assemble_pending_decls() #8, !dbg !2244
  br label %cleanup.cont, !dbg !2244

if.end9:                                          ; preds = %if.end
  %bf.clear11 = and i8 %bf.load10, 1, !dbg !2245
  %tobool13 = icmp eq i8 %bf.clear11, 0, !dbg !2247
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2248

if.then14:                                        ; preds = %if.end9
  tail call fastcc void @varpool_enqueue_needed_node(%struct.varpool_node* %call) #8, !dbg !2249
  %bf.load17.pre = load i8, i8* %finalized, align 4, !dbg !2250
  br label %if.end15, !dbg !2249

if.end15:                                         ; preds = %if.end9, %if.then14
  %bf.load17 = phi i8 [ %bf.load10, %if.end9 ], [ %bf.load17.pre, %if.then14 ], !dbg !2250
  %bf.set19 = or i8 %bf.load17, 8, !dbg !2250
  store i8 %bf.set19, i8* %finalized, align 4, !dbg !2250
  %call20 = tail call zeroext i8 @decide_is_variable_needed(%struct.varpool_node* %call, %union.tree_node* %decl) #8, !dbg !2251
  %tobool21 = icmp eq i8 %call20, 0, !dbg !2251
  br i1 %tobool21, label %if.else, label %if.then22, !dbg !2253

if.then22:                                        ; preds = %if.end15
  tail call void @varpool_mark_needed_node(%struct.varpool_node* %call) #8, !dbg !2254
  br label %if.end40, !dbg !2254

if.else:                                          ; preds = %if.end15
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2255
  %bf.load23 = load i64, i64* %2, align 8, !dbg !2255
  %bf.cast261 = and i64 %bf.load23, 134217728, !dbg !2255
  %tobool27 = icmp eq i64 %bf.cast261, 0, !dbg !2255
  br i1 %tobool27, label %if.end40, label %land.lhs.true, !dbg !2257

land.lhs.true:                                    ; preds = %if.else
  %comdat_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2258
  %3 = bitcast i24* %comdat_flag to i32*, !dbg !2258
  %bf.load28 = load i32, i32* %3, align 8, !dbg !2258
  %bf.clear30 = and i32 %bf.load28, 512, !dbg !2258
  %tobool31 = icmp eq i32 %bf.clear30, 0, !dbg !2258
  br i1 %tobool31, label %land.lhs.true32, label %if.end40, !dbg !2259

land.lhs.true32:                                  ; preds = %land.lhs.true
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2260
  %4 = bitcast i40* %decl_flag_1 to i64*, !dbg !2260
  %bf.load33 = load i64, i64* %4, align 8, !dbg !2260
  %bf.cast362 = and i64 %bf.load33, 33554432, !dbg !2260
  %tobool37 = icmp eq i64 %bf.cast362, 0, !dbg !2260
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !2261

if.then38:                                        ; preds = %land.lhs.true32
  tail call void @varpool_mark_needed_node(%struct.varpool_node* %call) #8, !dbg !2262
  br label %if.end40, !dbg !2262

if.end40:                                         ; preds = %land.lhs.true32, %land.lhs.true, %if.else, %if.then38, %if.then22
  %5 = load i8, i8* @cgraph_global_info_ready, align 1, !dbg !2263
  %tobool41 = icmp eq i8 %5, 0, !dbg !2263
  br i1 %tobool41, label %cleanup.cont, label %if.then42, !dbg !2265

if.then42:                                        ; preds = %if.end40
  %call43 = tail call zeroext i8 @varpool_assemble_pending_decls() #8, !dbg !2266
  br label %cleanup.cont, !dbg !2266

cleanup.cont:                                     ; preds = %if.then4, %if.end40, %if.then6, %if.then42
  ret void, !dbg !2267
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @varpool_assemble_pending_decls() local_unnamed_addr #4 !dbg !2268 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !2272, metadata !DIExpression()), !dbg !2275
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2276
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 4, !dbg !2276
  %1 = load i32, i32* %arrayidx, align 8, !dbg !2276
  %tobool = icmp eq i32 %1, 0, !dbg !2276
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !2278

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 5, !dbg !2279
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !2279
  %tobool3 = icmp eq i32 %2, 0, !dbg !2279
  br i1 %tobool3, label %if.end, label %cleanup, !dbg !2280

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call zeroext i8 @varpool_analyze_pending_decls() #8, !dbg !2281
  br label %while.cond, !dbg !2282

while.cond:                                       ; preds = %if.end9, %if.end
  %changed.0 = phi i8 [ 0, %if.end ], [ %changed.1, %if.end9 ], !dbg !2275
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2272, metadata !DIExpression()), !dbg !2275
  %3 = load %struct.varpool_node*, %struct.varpool_node** @varpool_nodes_queue, align 8, !dbg !2283
  %tobool4 = icmp eq %struct.varpool_node* %3, null, !dbg !2282
  br i1 %tobool4, label %while.end, label %while.body, !dbg !2282

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.varpool_node* %3, metadata !2273, metadata !DIExpression()), !dbg !2284
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %3, i64 0, i32 2, !dbg !2285
  %4 = bitcast %struct.varpool_node** %next_needed to i64*, !dbg !2285
  %5 = load i64, i64* %4, align 8, !dbg !2285
  store i64 %5, i64* bitcast (%struct.varpool_node** @varpool_nodes_queue to i64*), align 8, !dbg !2286
  %call5 = tail call zeroext i8 @varpool_assemble_decl(%struct.varpool_node* nonnull %3) #8, !dbg !2287
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2287
  br i1 %tobool6, label %if.else, label %if.end9, !dbg !2289

if.else:                                          ; preds = %while.body
  store %struct.varpool_node* null, %struct.varpool_node** %next_needed, align 8, !dbg !2290
  br label %if.end9

if.end9:                                          ; preds = %while.body, %if.else
  %changed.1 = phi i8 [ %changed.0, %if.else ], [ 1, %while.body ], !dbg !2275
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !2272, metadata !DIExpression()), !dbg !2275
  br label %while.cond, !dbg !2282, !llvm.loop !2291

while.end:                                        ; preds = %while.cond
  %changed.0.lcssa = phi i8 [ %changed.0, %while.cond ], !dbg !2275
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2272, metadata !DIExpression()), !dbg !2275
  store %struct.varpool_node* null, %struct.varpool_node** @varpool_last_needed_node, align 8, !dbg !2293
  br label %cleanup, !dbg !2294

cleanup:                                          ; preds = %lor.lhs.false, %entry, %while.end
  %retval.0 = phi i8 [ %changed.0.lcssa, %while.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], !dbg !2275
  ret i8 %retval.0, !dbg !2295
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @varpool_analyze_pending_decls() local_unnamed_addr #4 !dbg !2296 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !2298, metadata !DIExpression()), !dbg !2302
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !2303
  %tobool = icmp eq i8 %0, 0, !dbg !2303
  br i1 %tobool, label %do.end, label %if.then, !dbg !2306

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 4) #6, !dbg !2303
  br label %do.end, !dbg !2303

do.end:                                           ; preds = %entry, %if.then
  br label %while.cond, !dbg !2307

while.cond:                                       ; preds = %if.end13, %do.end
  %changed.0 = phi i8 [ 0, %do.end ], [ 1, %if.end13 ], !dbg !2302
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2298, metadata !DIExpression()), !dbg !2302
  %1 = load %struct.varpool_node*, %struct.varpool_node** @varpool_first_unanalyzed_node, align 8, !dbg !2308
  %tobool1 = icmp eq %struct.varpool_node* %1, null, !dbg !2307
  br i1 %tobool1, label %do.body14, label %while.body, !dbg !2307

while.body:                                       ; preds = %while.cond
  %decl2 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %1, i64 0, i32 0, !dbg !2309
  %2 = load %union.tree_node*, %union.tree_node** %decl2, align 8, !dbg !2309
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2299, metadata !DIExpression()), !dbg !2310
  %analyzed3 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %1, i64 0, i32 5, !dbg !2311
  %bf.load = load i8, i8* %analyzed3, align 4, !dbg !2311
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !2311
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i8 %bf.clear, metadata !2301, metadata !DIExpression()), !dbg !2310
  %bf.set = or i8 %bf.load, 4, !dbg !2312
  store i8 %bf.set, i8* %analyzed3, align 4, !dbg !2312
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %1, i64 0, i32 2, !dbg !2313
  %3 = bitcast %struct.varpool_node** %next_needed to i64*, !dbg !2313
  %4 = load i64, i64* %3, align 8, !dbg !2313
  store i64 %4, i64* bitcast (%struct.varpool_node** @varpool_first_unanalyzed_node to i64*), align 8, !dbg !2314
  %tobool7 = icmp eq i8 %bf.clear, 0, !dbg !2315
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !2317

if.then8:                                         ; preds = %while.body
  %5 = load i8, i8* @in_lto_p, align 1, !dbg !2318
  %tobool9 = icmp eq i8 %5, 0, !dbg !2318
  br i1 %tobool9, label %cond.end, label %cond.true, !dbg !2318

cond.true:                                        ; preds = %if.then8
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 361, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2318
  br label %cond.end, !dbg !2318

cond.end:                                         ; preds = %if.then8, %cond.true
  tail call void @align_variable(%union.tree_node* %2, i8 zeroext 0) #6, !dbg !2320
  br label %if.end10, !dbg !2321

if.end10:                                         ; preds = %while.body, %cond.end
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2322
  %6 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2322
  %tobool11 = icmp eq %union.tree_node* %6, null, !dbg !2322
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2324

if.then12:                                        ; preds = %if.end10
  tail call void @record_references_in_initializer(%union.tree_node* %2, i8 zeroext %bf.clear) #6, !dbg !2325
  br label %if.end13, !dbg !2325

if.end13:                                         ; preds = %if.end10, %if.then12
  call void @llvm.dbg.value(metadata i8 1, metadata !2298, metadata !DIExpression()), !dbg !2302
  br label %while.cond, !dbg !2307, !llvm.loop !2326

do.body14:                                        ; preds = %while.cond
  %changed.0.lcssa = phi i8 [ %changed.0, %while.cond ], !dbg !2302
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2298, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2298, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2298, metadata !DIExpression()), !dbg !2302
  %7 = load i8, i8* @timevar_enable, align 1, !dbg !2328
  %tobool15 = icmp eq i8 %7, 0, !dbg !2328
  br i1 %tobool15, label %do.end19, label %if.then16, !dbg !2331

if.then16:                                        ; preds = %do.body14
  tail call void @timevar_pop_1(i32 4) #6, !dbg !2328
  br label %do.end19, !dbg !2328

do.end19:                                         ; preds = %do.body14, %if.then16
  ret i8 %changed.0.lcssa, !dbg !2332
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #1

declare dso_local void @align_variable(%union.tree_node*, i8 zeroext) local_unnamed_addr #1

declare dso_local void @record_references_in_initializer(%union.tree_node*, i8 zeroext) local_unnamed_addr #1

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @varpool_assemble_decl(%struct.varpool_node* %node) local_unnamed_addr #4 !dbg !2333 {
entry:
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node, metadata !2337, metadata !DIExpression()), !dbg !2344
  %decl1 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 0, !dbg !2345
  %0 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !2345
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2338, metadata !DIExpression()), !dbg !2344
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2346
  %bf.load = load i64, i64* %1, align 8, !dbg !2346
  %bf.cast1 = and i64 %bf.load, 4194304, !dbg !2346
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2346
  br i1 %tobool, label %land.lhs.true, label %cleanup, !dbg !2347

land.lhs.true:                                    ; preds = %entry
  %alias = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 5, !dbg !2348
  %bf.load2 = load i8, i8* %alias, align 4, !dbg !2348
  %bf.clear4 = and i8 %bf.load2, 64, !dbg !2348
  %tobool6 = icmp eq i8 %bf.clear4, 0, !dbg !2349
  br i1 %tobool6, label %land.lhs.true7, label %cleanup, !dbg !2350

land.lhs.true7:                                   ; preds = %land.lhs.true
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2351
  %2 = bitcast i40* %decl_flag_1 to i64*, !dbg !2351
  %bf.load8 = load i64, i64* %2, align 8, !dbg !2351
  %bf.cast112 = and i64 %bf.load8, 33554432, !dbg !2351
  %tobool12 = icmp eq i64 %bf.cast112, 0, !dbg !2351
  br i1 %tobool12, label %land.lhs.true13, label %cleanup, !dbg !2352

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %bf.cast173 = and i64 %bf.load, 65535, !dbg !2353
  %cmp = icmp eq i64 %bf.cast173, 32, !dbg !2353
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !2354

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %bf.cast224 = and i64 %bf.load8, 67108864, !dbg !2355
  %tobool23 = icmp eq i64 %bf.cast224, 0, !dbg !2355
  br i1 %tobool23, label %if.then, label %cleanup, !dbg !2356

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true13
  tail call void @assemble_variable(%union.tree_node* %0, i32 0, i32 1, i32 0) #6, !dbg !2357
  %bf.load25 = load i64, i64* %1, align 8, !dbg !2358
  %bf.cast285 = and i64 %bf.load25, 4194304, !dbg !2358
  %tobool29 = icmp eq i64 %bf.cast285, 0, !dbg !2358
  br i1 %tobool29, label %cleanup, label %if.then30, !dbg !2359

if.then30:                                        ; preds = %if.then
  %3 = load i64, i64* bitcast (%struct.varpool_node** @varpool_assembled_nodes_queue to i64*), align 8, !dbg !2360
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 2, !dbg !2361
  %4 = bitcast %struct.varpool_node** %next_needed to i64*, !dbg !2362
  store i64 %3, i64* %4, align 8, !dbg !2362
  store %struct.varpool_node* %node, %struct.varpool_node** @varpool_assembled_nodes_queue, align 8, !dbg !2363
  %bf.load32 = load i8, i8* %alias, align 4, !dbg !2364
  %bf.set = or i8 %bf.load32, 8, !dbg !2364
  store i8 %bf.set, i8* %alias, align 4, !dbg !2364
  %extra_name = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node, i64 0, i32 3, !dbg !2365
  %weak_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2367
  %5 = bitcast i24* %weak_flag to i32*, !dbg !2367
  br label %for.cond, !dbg !2370

for.cond:                                         ; preds = %for.body, %if.then30
  %alias31.0.in = phi %struct.varpool_node** [ %extra_name, %if.then30 ], [ %next, %for.body ]
  %alias31.0 = load %struct.varpool_node*, %struct.varpool_node** %alias31.0.in, align 8, !dbg !2371
  call void @llvm.dbg.value(metadata %struct.varpool_node* %alias31.0, metadata !2339, metadata !DIExpression()), !dbg !2372
  %tobool34 = icmp eq %struct.varpool_node* %alias31.0, null, !dbg !2373
  br i1 %tobool34, label %cleanup.loopexit, label %for.body, !dbg !2373

for.body:                                         ; preds = %for.cond
  %bf.load35 = load i32, i32* %5, align 8, !dbg !2374
  %bf.clear37 = and i32 %bf.load35, 128, !dbg !2374
  %6 = bitcast %struct.varpool_node* %alias31.0 to %struct.tree_decl_with_vis**, !dbg !2375
  %7 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %6, align 8, !dbg !2375
  %weak_flag40 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %7, i64 0, i32 4, !dbg !2375
  %8 = bitcast i24* %weak_flag40 to i32*, !dbg !2375
  %bf.load41 = load i32, i32* %8, align 8, !dbg !2376
  %bf.clear42 = and i32 %bf.load41, -129, !dbg !2376
  %bf.set43 = or i32 %bf.clear42, %bf.clear37, !dbg !2376
  store i32 %bf.set43, i32* %8, align 8, !dbg !2376
  %bf.load45 = load i64, i64* %1, align 8, !dbg !2377
  %bf.cast48 = and i64 %bf.load45, 134217728, !dbg !2377
  %9 = bitcast %struct.varpool_node* %alias31.0 to i64**, !dbg !2378
  %10 = load i64*, i64** %9, align 8, !dbg !2378
  %bf.load51 = load i64, i64* %10, align 8, !dbg !2379
  %bf.clear54 = and i64 %bf.load51, -134217729, !dbg !2379
  %bf.set55 = or i64 %bf.clear54, %bf.cast48, !dbg !2379
  store i64 %bf.set55, i64* %10, align 8, !dbg !2379
  %bf.load57 = load i32, i32* %5, align 8, !dbg !2380
  %bf.clear59 = and i32 %bf.load57, 3072, !dbg !2380
  %11 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %6, align 8, !dbg !2381
  %visibility62 = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %11, i64 0, i32 4, !dbg !2381
  %12 = bitcast i24* %visibility62 to i32*, !dbg !2381
  %bf.load63 = load i32, i32* %12, align 8, !dbg !2382
  %bf.clear66 = and i32 %bf.load63, -3073, !dbg !2382
  %bf.set67 = or i32 %bf.clear66, %bf.clear59, !dbg !2382
  store i32 %bf.set67, i32* %12, align 8, !dbg !2382
  %decl68 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %alias31.0, i64 0, i32 0, !dbg !2383
  %13 = load %union.tree_node*, %union.tree_node** %decl68, align 8, !dbg !2383
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %0) #6, !dbg !2384
  tail call void @assemble_alias(%union.tree_node* %13, %union.tree_node* %call) #6, !dbg !2385
  %next = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %alias31.0, i64 0, i32 1, !dbg !2386
  br label %for.cond, !dbg !2387, !llvm.loop !2388

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2390

cleanup:                                          ; preds = %cleanup.loopexit, %if.then, %lor.lhs.false, %land.lhs.true7, %land.lhs.true, %entry
  %retval.0 = phi i8 [ 0, %if.then ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true7 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ 1, %cleanup.loopexit ], !dbg !2344
  ret i8 %retval.0, !dbg !2390
}

declare dso_local void @assemble_variable(%union.tree_node*, i32, i32, i32) local_unnamed_addr #1

declare dso_local void @assemble_alias(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @varpool_remove_unreferenced_decls() local_unnamed_addr #4 !dbg !2391 {
entry:
  %0 = load %struct.varpool_node*, %struct.varpool_node** @varpool_nodes_queue, align 8, !dbg !2397
  call void @llvm.dbg.value(metadata %struct.varpool_node* %0, metadata !2394, metadata !DIExpression()), !dbg !2398
  tail call fastcc void @varpool_reset_queue() #8, !dbg !2399
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2400
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 4, !dbg !2400
  %2 = load i32, i32* %arrayidx, align 8, !dbg !2400
  %tobool = icmp eq i32 %2, 0, !dbg !2400
  br i1 %tobool, label %lor.lhs.false, label %cleanup.cont, !dbg !2402

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 1, i64 5, !dbg !2403
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !2403
  %tobool3 = icmp eq i32 %3, 0, !dbg !2403
  br i1 %tobool3, label %while.cond.preheader, label %cleanup.cont, !dbg !2404

while.cond.preheader:                             ; preds = %lor.lhs.false
  br label %while.cond, !dbg !2405

while.cond:                                       ; preds = %while.cond.preheader, %if.end21
  %node.0 = phi %struct.varpool_node* [ %5, %if.end21 ], [ %0, %while.cond.preheader ], !dbg !2398
  call void @llvm.dbg.value(metadata %struct.varpool_node* %node.0, metadata !2394, metadata !DIExpression()), !dbg !2398
  %tobool4 = icmp eq %struct.varpool_node* %node.0, null, !dbg !2405
  br i1 %tobool4, label %while.end, label %while.body, !dbg !2405

while.body:                                       ; preds = %while.cond
  %decl5 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node.0, i64 0, i32 0, !dbg !2406
  %4 = load %union.tree_node*, %union.tree_node** %decl5, align 8, !dbg !2406
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2395, metadata !DIExpression()), !dbg !2407
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node.0, i64 0, i32 2, !dbg !2408
  %5 = load %struct.varpool_node*, %struct.varpool_node** %next_needed, align 8, !dbg !2408
  call void @llvm.dbg.value(metadata %struct.varpool_node* %5, metadata !2393, metadata !DIExpression()), !dbg !2398
  %needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %node.0, i64 0, i32 5, !dbg !2409
  %bf.load = load i8, i8* %needed, align 4, !dbg !2410
  %bf.clear = and i8 %bf.load, -2, !dbg !2410
  store i8 %bf.clear, i8* %needed, align 4, !dbg !2410
  %bf.clear7 = and i8 %bf.load, 8, !dbg !2411
  %tobool8 = icmp eq i8 %bf.clear7, 0, !dbg !2413
  br i1 %tobool8, label %if.end21, label %land.lhs.true, !dbg !2414

land.lhs.true:                                    ; preds = %while.body
  %call = tail call zeroext i8 @decide_is_variable_needed(%struct.varpool_node* nonnull %node.0, %union.tree_node* %4) #8, !dbg !2415
  %tobool9 = icmp eq i8 %call, 0, !dbg !2415
  br i1 %tobool9, label %lor.lhs.false10, label %if.then20, !dbg !2416

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2417
  %bf.load11 = load i64, i64* %6, align 8, !dbg !2417
  %bf.cast13 = and i64 %bf.load11, 65535, !dbg !2417
  %arrayidx15 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast13, i64 11, !dbg !2417
  %7 = load i8, i8* %arrayidx15, align 1, !dbg !2417
  %tobool17 = icmp eq i8 %7, 0, !dbg !2417
  br i1 %tobool17, label %if.end21, label %land.lhs.true18, !dbg !2417

land.lhs.true18:                                  ; preds = %lor.lhs.false10
  %rtl = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2417
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8, !dbg !2417
  %cmp = icmp eq %struct.rtx_def* %8, null, !dbg !2417
  br i1 %cmp, label %if.end21, label %if.then20, !dbg !2418

if.then20:                                        ; preds = %land.lhs.true18, %land.lhs.true
  tail call void @varpool_mark_needed_node(%struct.varpool_node* nonnull %node.0) #8, !dbg !2419
  br label %if.end21, !dbg !2419

if.end21:                                         ; preds = %land.lhs.true18, %lor.lhs.false10, %while.body, %if.then20
  call void @llvm.dbg.value(metadata %struct.varpool_node* %5, metadata !2394, metadata !DIExpression()), !dbg !2398
  br label %while.cond, !dbg !2405, !llvm.loop !2420

while.end:                                        ; preds = %while.cond
  tail call void @finish_aliases_1() #6, !dbg !2422
  %call22 = tail call zeroext i8 @varpool_analyze_pending_decls() #8, !dbg !2423
  br label %cleanup.cont, !dbg !2424

cleanup.cont:                                     ; preds = %lor.lhs.false, %entry, %while.end
  ret void, !dbg !2424
}

; Function Attrs: nounwind uwtable
define internal fastcc void @varpool_reset_queue() unnamed_addr #4 !dbg !2425 {
entry:
  store %struct.varpool_node* null, %struct.varpool_node** @varpool_last_needed_node, align 8, !dbg !2426
  store %struct.varpool_node* null, %struct.varpool_node** @varpool_nodes_queue, align 8, !dbg !2427
  store %struct.varpool_node* null, %struct.varpool_node** @varpool_first_unanalyzed_node, align 8, !dbg !2428
  ret void, !dbg !2429
}

declare dso_local void @finish_aliases_1() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @varpool_empty_needed_queue() local_unnamed_addr #4 !dbg !2430 {
entry:
  %call = tail call zeroext i8 @varpool_analyze_pending_decls() #8, !dbg !2434
  %.pre = load %struct.varpool_node*, %struct.varpool_node** @varpool_nodes_queue, align 8, !dbg !2435
  br label %while.cond, !dbg !2436

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi %struct.varpool_node* [ %4, %while.body ], [ %.pre, %entry ]
  %1 = phi %struct.varpool_node* [ %4, %while.body ], [ %.pre, %entry ], !dbg !2435
  %tobool = icmp eq %struct.varpool_node* %1, null, !dbg !2436
  br i1 %tobool, label %while.end, label %while.body, !dbg !2436

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.varpool_node* %0, metadata !2432, metadata !DIExpression()), !dbg !2437
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %0, i64 0, i32 2, !dbg !2438
  %2 = bitcast %struct.varpool_node** %next_needed to i64*, !dbg !2438
  %3 = load i64, i64* %2, align 8, !dbg !2438
  store i64 %3, i64* bitcast (%struct.varpool_node** @varpool_nodes_queue to i64*), align 8, !dbg !2439
  store %struct.varpool_node* null, %struct.varpool_node** %next_needed, align 8, !dbg !2440
  %4 = inttoptr i64 %3 to %struct.varpool_node*, !dbg !2436
  br label %while.cond, !dbg !2436, !llvm.loop !2441

while.end:                                        ; preds = %while.cond
  store %struct.varpool_node* null, %struct.varpool_node** @varpool_last_needed_node, align 8, !dbg !2443
  ret void, !dbg !2444
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @add_new_static_var(%union.tree_node* %type) local_unnamed_addr #4 !dbg !2445 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2449, metadata !DIExpression()), !dbg !2452
  %call = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %type, i8* null) #6, !dbg !2453
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2450, metadata !DIExpression()), !dbg !2452
  %call1 = tail call %union.tree_node* @create_tmp_var_name(i8* null) #6, !dbg !2454
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2455
  store %union.tree_node* %call1, %union.tree_node** %name, align 8, !dbg !2456
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2457
  %bf.load = load i64, i64* %0, align 8, !dbg !2458
  %bf.clear4 = and i64 %bf.load, -84934657, !dbg !2459
  %bf.set8 = or i64 %bf.clear4, 83886080, !dbg !2460
  store i64 %bf.set8, i64* %0, align 8, !dbg !2460
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2461
  store %union.tree_node* null, %union.tree_node** %context, align 8, !dbg !2462
  %abstract_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2463
  %1 = bitcast i40* %abstract_flag to i64*, !dbg !2463
  %bf.load10 = load i64, i64* %1, align 8, !dbg !2464
  %bf.clear11 = and i64 %bf.load10, -2049, !dbg !2464
  store i64 %bf.clear11, i64* %1, align 8, !dbg !2464
  %2 = load void (%union.tree_node*)*, void (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 15), align 8, !dbg !2465
  tail call void %2(%union.tree_node* %call) #6, !dbg !2466
  %call12 = tail call %struct.var_ann_d* @create_var_ann(%union.tree_node* %call) #6, !dbg !2467
  %call13 = tail call %struct.varpool_node* @varpool_node(%union.tree_node* %call) #8, !dbg !2468
  call void @llvm.dbg.value(metadata %struct.varpool_node* %call13, metadata !2451, metadata !DIExpression()), !dbg !2452
  tail call void @varpool_mark_needed_node(%struct.varpool_node* %call13) #8, !dbg !2469
  %call14 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %call) #6, !dbg !2470
  tail call void @varpool_finalize_decl(%union.tree_node* %call) #8, !dbg !2471
  %decl = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %call13, i64 0, i32 0, !dbg !2472
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !2472
  ret %union.tree_node* %3, !dbg !2473
}

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #1

declare dso_local %union.tree_node* @create_tmp_var_name(i8*) local_unnamed_addr #1

declare dso_local %struct.var_ann_d* @create_var_ann(%union.tree_node*) local_unnamed_addr #1

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @varpool_extra_name_alias(%union.tree_node* %alias, %union.tree_node* %decl) local_unnamed_addr #4 !dbg !2474 {
entry:
  %key = alloca %struct.varpool_node, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %alias, metadata !2478, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2479, metadata !DIExpression()), !dbg !2484
  %0 = bitcast %struct.varpool_node* %key to i8*, !dbg !2485
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !2485
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2486
  %bf.load = load i64, i64* %1, align 8, !dbg !2486
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2486
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !2486
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2486

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 538, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2486
  br label %cond.end, !dbg !2486

cond.end:                                         ; preds = %entry, %cond.true
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %alias, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2487
  %bf.load2 = load i64, i64* %2, align 8, !dbg !2487
  %bf.cast42 = and i64 %bf.load2, 65535, !dbg !2487
  %cmp5 = icmp eq i64 %bf.cast42, 32, !dbg !2487
  br i1 %cmp5, label %cond.end8, label %cond.true6, !dbg !2487

cond.true6:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 539, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2487
  br label %cond.end8, !dbg !2487

cond.end8:                                        ; preds = %cond.end, %cond.true6
  %call = tail call %struct.varpool_node* @varpool_node(%union.tree_node* %decl) #8, !dbg !2488
  call void @llvm.dbg.value(metadata %struct.varpool_node* %call, metadata !2482, metadata !DIExpression()), !dbg !2484
  %decl10 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %key, i64 0, i32 0, !dbg !2489
  store %union.tree_node* %alias, %union.tree_node** %decl10, align 8, !dbg !2490
  %3 = load %struct.htab*, %struct.htab** @varpool_hash, align 8, !dbg !2491
  %call11 = call i8** @htab_find_slot(%struct.htab* %3, i8* nonnull %0, i32 1) #6, !dbg !2492
  %4 = bitcast i8** %call11 to %struct.varpool_node**, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.varpool_node** %4, metadata !2483, metadata !DIExpression()), !dbg !2484
  %5 = load %struct.varpool_node*, %struct.varpool_node** %4, align 8, !dbg !2494
  %tobool = icmp eq %struct.varpool_node* %5, null, !dbg !2494
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2496

if.end:                                           ; preds = %cond.end8
  %call12 = call i8* @ggc_alloc_cleared_stat(i64 40) #6, !dbg !2497
  call void @llvm.dbg.value(metadata i8* %call12, metadata !2481, metadata !DIExpression()), !dbg !2484
  %decl13 = bitcast i8* %call12 to %union.tree_node**, !dbg !2498
  store %union.tree_node* %alias, %union.tree_node** %decl13, align 8, !dbg !2499
  %6 = getelementptr inbounds i8, i8* %call12, i64 36, !dbg !2500
  %bf.load15 = load i8, i8* %6, align 4, !dbg !2501
  %bf.set = or i8 %bf.load15, 64, !dbg !2501
  store i8 %bf.set, i8* %6, align 4, !dbg !2501
  %extra_name = getelementptr inbounds i8, i8* %call12, i64 24, !dbg !2502
  %7 = bitcast i8* %extra_name to %struct.varpool_node**, !dbg !2502
  store %struct.varpool_node* %call, %struct.varpool_node** %7, align 8, !dbg !2503
  %extra_name17 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %call, i64 0, i32 3, !dbg !2504
  %8 = bitcast %struct.varpool_node** %extra_name17 to i64*, !dbg !2504
  %9 = load i64, i64* %8, align 8, !dbg !2504
  %next = getelementptr inbounds i8, i8* %call12, i64 8, !dbg !2505
  %10 = bitcast i8* %next to i64*, !dbg !2506
  store i64 %9, i64* %10, align 8, !dbg !2506
  %11 = bitcast %struct.varpool_node** %extra_name17 to i8**, !dbg !2507
  store i8* %call12, i8** %11, align 8, !dbg !2507
  store i8* %call12, i8** %call11, align 8, !dbg !2508
  br label %cleanup, !dbg !2509

cleanup:                                          ; preds = %cond.end8, %if.end
  %retval.0 = phi i8 [ 1, %if.end ], [ 0, %cond.end8 ], !dbg !2484
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !2510
  ret i8 %retval.0, !dbg !2510
}

declare dso_local void @gt_ggc_mx_varpool_node(i8*) #1

declare dso_local void @gt_pch_nx_varpool_node(i8*) #1

declare dso_local void @gt_ggc_m_P12varpool_node4htab(i8*) #1

declare dso_local void @gt_pch_n_P12varpool_node4htab(i8*) #1

declare dso_local void @notice_global_symbol(%union.tree_node*) local_unnamed_addr #1

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
!llvm.module.flags = !{!1487, !1488, !1489}
!llvm.ident = !{!1490}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "varpool_hash", scope: !2, file: !3, line: 52, type: !849, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !257, globals: !1460, nameTableKind: None)
!3 = !DIFile(filename: "varpool.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !201, !207, !212, !217, !235, !242, !249}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !6, line: 39, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!9 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!98 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!99 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!100 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!101 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!102 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!103 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!104 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!105 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!106 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!107 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!108 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!109 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!110 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!111 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!112 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!113 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!114 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!115 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!116 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!117 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!118 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!119 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!120 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!121 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!122 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!123 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!124 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!125 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!126 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!127 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!128 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!129 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!130 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!131 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!132 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!133 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!134 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!135 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!136 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!137 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!138 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!139 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!140 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!141 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!142 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!143 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!144 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!145 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!146 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!147 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!148 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!149 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!150 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!151 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!152 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!153 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!154 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!155 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!156 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!157 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!158 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!159 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!160 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!161 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!173 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!174 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!175 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!176 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!177 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!178 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!179 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!180 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!181 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!182 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!183 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!184 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!185 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!186 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!187 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!188 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!189 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!190 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!191 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!192 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!193 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!194 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!195 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!196 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!197 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!198 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!199 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!200 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !202, line: 363, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !202, line: 355, baseType: !7, size: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!210 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !213, line: 474, baseType: !7, size: 32, elements: !214)
!213 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!214 = !{!215, !216}
!215 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!216 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !6, line: 280, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!219 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!224 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!225 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!226 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!233 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !6, line: 1817, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240, !241}
!237 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!238 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!239 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!240 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!241 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !6, line: 1805, baseType: !7, size: 32, elements: !243)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!245 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!246 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!247 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!248 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "availability", file: !250, line: 27, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!251 = !{!252, !253, !254, !255, !256}
!252 = !DIEnumerator(name: "AVAIL_UNSET", value: 0, isUnsigned: true)
!253 = !DIEnumerator(name: "AVAIL_NOT_AVAILABLE", value: 1, isUnsigned: true)
!254 = !DIEnumerator(name: "AVAIL_OVERWRITABLE", value: 2, isUnsigned: true)
!255 = !DIEnumerator(name: "AVAIL_AVAILABLE", value: 3, isUnsigned: true)
!256 = !DIEnumerator(name: "AVAIL_LOCAL", value: 4, isUnsigned: true)
!257 = !{!258, !259, !260, !261, !264, !265, !5, !267, !268, !272, !1458, !859}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!260 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !250, line: 358, size: 320, elements: !270)
!270 = !{!271, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !269, file: !250, line: 359, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !273, line: 56, baseType: !274)
!273 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !276)
!276 = !{!277, !310, !316, !329, !336, !343, !348, !357, !363, !376, !388, !426, !434, !462, !479, !480, !485, !494, !500, !505, !509, !513, !1096, !1145, !1151, !1157, !1164, !1177, !1191, !1208, !1220, !1242, !1257, !1429}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !275, file: !6, line: 3372, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !278, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !278, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !278, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !278, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !278, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !278, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !278, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !278, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !278, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !278, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !278, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !278, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !278, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !278, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !278, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !278, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !278, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !278, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !278, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !278, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !278, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !278, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !278, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !278, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !278, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !278, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !278, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !278, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !278, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !278, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !275, file: !6, line: 3373, baseType: !311, size: 192)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !312)
!312 = !{!313, !314, !315}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !311, file: !6, line: 403, baseType: !278, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !311, file: !6, line: 404, baseType: !272, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !311, file: !6, line: 405, baseType: !272, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !275, file: !6, line: 3374, baseType: !317, size: 320)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !317, file: !6, line: 1385, baseType: !311, size: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !317, file: !6, line: 1386, baseType: !321, size: 128, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !322, line: 58, baseType: !323)
!322 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !322, line: 54, size: 128, elements: !324)
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !323, file: !322, line: 56, baseType: !326, size: 64)
!326 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !323, file: !322, line: 57, baseType: !328, size: 64, offset: 64)
!328 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !275, file: !6, line: 3375, baseType: !330, size: 256)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !330, file: !6, line: 1398, baseType: !311, size: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !330, file: !6, line: 1399, baseType: !334, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !275, file: !6, line: 3376, baseType: !337, size: 256)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !338)
!338 = !{!339, !340}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !337, file: !6, line: 1409, baseType: !311, size: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !337, file: !6, line: 1410, baseType: !341, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !275, file: !6, line: 3377, baseType: !344, size: 256)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !344, file: !6, line: 1438, baseType: !311, size: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !344, file: !6, line: 1439, baseType: !272, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !275, file: !6, line: 3378, baseType: !349, size: 256)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !350)
!350 = !{!351, !352, !353}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !349, file: !6, line: 1419, baseType: !311, size: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !349, file: !6, line: 1420, baseType: !260, size: 32, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !349, file: !6, line: 1421, baseType: !354, size: 8, offset: 224)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 8, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 1)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !275, file: !6, line: 3379, baseType: !358, size: 320)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !359)
!359 = !{!360, !361, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !358, file: !6, line: 1429, baseType: !311, size: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !358, file: !6, line: 1430, baseType: !272, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !358, file: !6, line: 1431, baseType: !272, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !275, file: !6, line: 3380, baseType: !364, size: 320)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !364, file: !6, line: 1461, baseType: !311, size: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !364, file: !6, line: 1462, baseType: !368, size: 128, offset: 192)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !369, line: 31, size: 128, elements: !370)
!369 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!370 = !{!371, !374, !375}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !368, file: !369, line: 32, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !368, file: !369, line: 33, baseType: !7, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !368, file: !369, line: 34, baseType: !7, size: 32, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !275, file: !6, line: 3381, baseType: !377, size: 384)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !378)
!378 = !{!379, !380, !385, !386, !387}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !377, file: !6, line: 2508, baseType: !311, size: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !377, file: !6, line: 2509, baseType: !381, size: 32, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !382, line: 58, baseType: !383)
!382 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !384, line: 44, baseType: !7)
!384 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!385 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !377, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !6, line: 2511, baseType: !272, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !377, file: !6, line: 2512, baseType: !272, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !275, file: !6, line: 3382, baseType: !389, size: 896)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !389, file: !6, line: 2653, baseType: !377, size: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !389, file: !6, line: 2654, baseType: !272, size: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !389, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !389, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !389, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !389, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !389, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !389, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !389, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !389, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !389, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !389, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !389, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !389, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !389, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !389, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !389, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !389, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !389, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !389, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !389, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !389, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !389, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !389, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !389, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !389, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !389, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !389, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !389, file: !6, line: 2705, baseType: !272, size: 64, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !389, file: !6, line: 2706, baseType: !272, size: 64, offset: 640)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !389, file: !6, line: 2707, baseType: !272, size: 64, offset: 704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !389, file: !6, line: 2708, baseType: !272, size: 64, offset: 768)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !389, file: !6, line: 2711, baseType: !424, size: 64, offset: 832)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !275, file: !6, line: 3383, baseType: !427, size: 960)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !427, file: !6, line: 2757, baseType: !389, size: 896)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !427, file: !6, line: 2758, baseType: !431, size: 64, offset: 896)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !273, line: 50, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !273, line: 49, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !275, file: !6, line: 3384, baseType: !435, size: 1472)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !436)
!436 = !{!437, !458, !459, !460, !461}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !435, file: !6, line: 3115, baseType: !438, size: 1216)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !438, file: !6, line: 2985, baseType: !427, size: 960)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !438, file: !6, line: 2986, baseType: !272, size: 64, offset: 960)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !438, file: !6, line: 2987, baseType: !272, size: 64, offset: 1024)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !438, file: !6, line: 2988, baseType: !272, size: 64, offset: 1088)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !438, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !438, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !438, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !438, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !438, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !438, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !438, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !438, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !438, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !438, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !438, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !438, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !438, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !438, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !435, file: !6, line: 3117, baseType: !272, size: 64, offset: 1216)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !435, file: !6, line: 3119, baseType: !272, size: 64, offset: 1280)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !435, file: !6, line: 3121, baseType: !272, size: 64, offset: 1344)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !435, file: !6, line: 3123, baseType: !272, size: 64, offset: 1408)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !275, file: !6, line: 3385, baseType: !463, size: 1088)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !464)
!464 = !{!465, !466, !467}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !463, file: !6, line: 2875, baseType: !427, size: 960)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !463, file: !6, line: 2876, baseType: !431, size: 64, offset: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !463, file: !6, line: 2877, baseType: !468, size: 64, offset: 1024)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !470, line: 172, size: 128, elements: !471)
!470 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!471 = !{!472, !473, !474, !475, !476, !477, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !469, file: !470, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !469, file: !470, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !469, file: !470, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !469, file: !470, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !469, file: !470, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !469, file: !470, line: 195, baseType: !7, size: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !469, file: !470, line: 199, baseType: !272, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !275, file: !6, line: 3386, baseType: !438, size: 1216)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !275, file: !6, line: 3387, baseType: !481, size: 1280)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !482)
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !481, file: !6, line: 3094, baseType: !438, size: 1216)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !481, file: !6, line: 3095, baseType: !468, size: 64, offset: 1216)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !275, file: !6, line: 3388, baseType: !486, size: 1216)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !486, file: !6, line: 2825, baseType: !389, size: 896)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !486, file: !6, line: 2827, baseType: !272, size: 64, offset: 896)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !486, file: !6, line: 2828, baseType: !272, size: 64, offset: 960)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !486, file: !6, line: 2829, baseType: !272, size: 64, offset: 1024)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !486, file: !6, line: 2830, baseType: !272, size: 64, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !486, file: !6, line: 2831, baseType: !272, size: 64, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !275, file: !6, line: 3389, baseType: !495, size: 1024)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !496)
!496 = !{!497, !498, !499}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !495, file: !6, line: 2851, baseType: !427, size: 960)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !495, file: !6, line: 2852, baseType: !260, size: 32, offset: 960)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !495, file: !6, line: 2853, baseType: !260, size: 32, offset: 992)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !275, file: !6, line: 3390, baseType: !501, size: 1024)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !501, file: !6, line: 2858, baseType: !427, size: 960)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !501, file: !6, line: 2859, baseType: !468, size: 64, offset: 960)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !275, file: !6, line: 3391, baseType: !506, size: 960)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !506, file: !6, line: 2863, baseType: !427, size: 960)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !275, file: !6, line: 3392, baseType: !510, size: 1472)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !510, file: !6, line: 3305, baseType: !435, size: 1472)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !275, file: !6, line: 3393, baseType: !514, size: 1792)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !515)
!515 = !{!516, !517, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !514, file: !6, line: 3249, baseType: !435, size: 1472)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !514, file: !6, line: 3251, baseType: !518, size: 64, offset: 1472)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !520, line: 463, size: 1152, elements: !521)
!520 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!521 = !{!522, !525, !843, !844, !1016, !1019, !1020, !1021, !1022, !1023, !1024, !1048, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !519, file: !520, line: 464, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !520, line: 464, flags: DIFlagFwdDecl)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !519, file: !520, line: 467, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !202, line: 374, size: 640, elements: !528)
!528 = !{!529, !818, !819, !832, !833, !834, !835, !836, !837, !839, !841, !842}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !527, file: !202, line: 377, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !273, line: 111, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !202, line: 217, size: 832, elements: !533)
!533 = !{!534, !781, !782, !783, !786, !792, !793, !794, !812, !813, !814, !815, !816, !817}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !532, file: !202, line: 219, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !202, line: 151, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !202, line: 151, size: 128, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !537, file: !202, line: 151, baseType: !540, size: 128)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !202, line: 150, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !202, line: 150, size: 128, elements: !542)
!542 = !{!543, !544, !545}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !541, file: !202, line: 150, baseType: !7, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !541, file: !202, line: 150, baseType: !7, size: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !541, file: !202, line: 150, baseType: !546, size: 64, offset: 64)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 64, elements: !355)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !273, line: 108, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !202, line: 122, size: 512, elements: !550)
!550 = !{!551, !552, !553, !773, !774, !775, !776, !777, !778, !779}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !549, file: !202, line: 124, baseType: !531, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !549, file: !202, line: 125, baseType: !531, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !549, file: !202, line: 131, baseType: !554, size: 64, offset: 128)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !202, line: 128, size: 64, elements: !555)
!555 = !{!556, !772}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !554, file: !202, line: 129, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !273, line: 66, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !560, line: 143, size: 192, elements: !561)
!560 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!561 = !{!562, !770, !771}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !559, file: !560, line: 145, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !273, line: 69, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !560, line: 136, size: 192, elements: !566)
!566 = !{!567, !768, !769}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !565, file: !560, line: 137, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !273, line: 58, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !560, line: 737, size: 768, elements: !571)
!571 = !{!572, !589, !623, !629, !634, !639, !646, !652, !658, !663, !677, !682, !688, !693, !703, !708, !726, !733, !740, !746, !751, !757, !763}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !570, file: !560, line: 738, baseType: !573, size: 256)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !560, line: 271, size: 256, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !573, file: !560, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !573, file: !560, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !573, file: !560, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !573, file: !560, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !573, file: !560, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !573, file: !560, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !573, file: !560, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !573, file: !560, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !573, file: !560, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !573, file: !560, line: 312, baseType: !7, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !573, file: !560, line: 316, baseType: !381, size: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !573, file: !560, line: 319, baseType: !7, size: 32, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !573, file: !560, line: 323, baseType: !531, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !573, file: !560, line: 327, baseType: !272, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !570, file: !560, line: 739, baseType: !590, size: 448)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !560, line: 350, size: 448, elements: !591)
!591 = !{!592, !621}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !590, file: !560, line: 353, baseType: !593, size: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !560, line: 333, size: 384, elements: !594)
!594 = !{!595, !596, !604}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !593, file: !560, line: 336, baseType: !573, size: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !593, file: !560, line: 343, baseType: !597, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !599, line: 37, size: 128, elements: !600)
!599 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !599, line: 39, baseType: !597, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !598, file: !599, line: 40, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !593, file: !560, line: 344, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !599, line: 45, size: 320, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !606, file: !599, line: 47, baseType: !605, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !606, file: !599, line: 48, baseType: !610, size: 256, offset: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !611)
!611 = !{!612, !614, !615, !620}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !610, file: !6, line: 1884, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !6, line: 1885, baseType: !613, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !610, file: !6, line: 1891, baseType: !616, size: 64, offset: 128)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !6, line: 1891, size: 64, elements: !617)
!617 = !{!618, !619}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !616, file: !6, line: 1891, baseType: !568, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !616, file: !6, line: 1891, baseType: !272, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !610, file: !6, line: 1892, baseType: !603, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !590, file: !560, line: 359, baseType: !622, size: 64, offset: 384)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 64, elements: !355)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !570, file: !560, line: 740, baseType: !624, size: 512)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !560, line: 365, size: 512, elements: !625)
!625 = !{!626, !627, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !624, file: !560, line: 368, baseType: !593, size: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !624, file: !560, line: 373, baseType: !272, size: 64, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !624, file: !560, line: 374, baseType: !272, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !570, file: !560, line: 741, baseType: !630, size: 576)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !560, line: 380, size: 576, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !630, file: !560, line: 383, baseType: !624, size: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !630, file: !560, line: 389, baseType: !622, size: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !570, file: !560, line: 742, baseType: !635, size: 320)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !560, line: 395, size: 320, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !635, file: !560, line: 397, baseType: !573, size: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !635, file: !560, line: 400, baseType: !557, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !570, file: !560, line: 743, baseType: !640, size: 448)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !560, line: 406, size: 448, elements: !641)
!641 = !{!642, !643, !644, !645}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !640, file: !560, line: 408, baseType: !573, size: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !640, file: !560, line: 412, baseType: !272, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !640, file: !560, line: 420, baseType: !272, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !640, file: !560, line: 423, baseType: !557, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !570, file: !560, line: 744, baseType: !647, size: 384)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !560, line: 429, size: 384, elements: !648)
!648 = !{!649, !650, !651}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !647, file: !560, line: 431, baseType: !573, size: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !647, file: !560, line: 434, baseType: !272, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !647, file: !560, line: 437, baseType: !557, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !570, file: !560, line: 745, baseType: !653, size: 384)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !560, line: 443, size: 384, elements: !654)
!654 = !{!655, !656, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !653, file: !560, line: 445, baseType: !573, size: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !653, file: !560, line: 449, baseType: !272, size: 64, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !653, file: !560, line: 453, baseType: !557, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !570, file: !560, line: 746, baseType: !659, size: 320)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !560, line: 459, size: 320, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !659, file: !560, line: 461, baseType: !573, size: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !659, file: !560, line: 464, baseType: !272, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !570, file: !560, line: 747, baseType: !664, size: 768)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !560, line: 469, size: 768, elements: !665)
!665 = !{!666, !667, !668, !669, !670}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !664, file: !560, line: 471, baseType: !573, size: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !664, file: !560, line: 474, baseType: !7, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !664, file: !560, line: 475, baseType: !7, size: 32, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !664, file: !560, line: 478, baseType: !272, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !664, file: !560, line: 481, baseType: !671, size: 384, offset: 384)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 384, elements: !355)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !6, line: 1917, size: 384, elements: !673)
!673 = !{!674, !675, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !672, file: !6, line: 1920, baseType: !610, size: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !672, file: !6, line: 1921, baseType: !272, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !672, file: !6, line: 1922, baseType: !381, size: 32, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !570, file: !560, line: 748, baseType: !678, size: 320)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !560, line: 487, size: 320, elements: !679)
!679 = !{!680, !681}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !678, file: !560, line: 490, baseType: !573, size: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !678, file: !560, line: 494, baseType: !260, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !570, file: !560, line: 749, baseType: !683, size: 384)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !560, line: 500, size: 384, elements: !684)
!684 = !{!685, !686, !687}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !683, file: !560, line: 502, baseType: !573, size: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !683, file: !560, line: 506, baseType: !557, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !683, file: !560, line: 510, baseType: !557, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !570, file: !560, line: 750, baseType: !689, size: 320)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !560, line: 529, size: 320, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !689, file: !560, line: 531, baseType: !573, size: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !689, file: !560, line: 540, baseType: !557, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !570, file: !560, line: 751, baseType: !694, size: 704)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !560, line: 546, size: 704, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !694, file: !560, line: 549, baseType: !624, size: 512)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !694, file: !560, line: 553, baseType: !265, size: 64, offset: 512)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !694, file: !560, line: 557, baseType: !259, size: 8, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !694, file: !560, line: 558, baseType: !259, size: 8, offset: 584)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !694, file: !560, line: 559, baseType: !259, size: 8, offset: 592)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !694, file: !560, line: 560, baseType: !259, size: 8, offset: 600)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !694, file: !560, line: 566, baseType: !622, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !570, file: !560, line: 752, baseType: !704, size: 384)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !560, line: 571, size: 384, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !704, file: !560, line: 573, baseType: !635, size: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !704, file: !560, line: 577, baseType: !272, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !570, file: !560, line: 753, baseType: !709, size: 576)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !560, line: 600, size: 576, elements: !710)
!710 = !{!711, !712, !713, !716, !725}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !709, file: !560, line: 602, baseType: !635, size: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !709, file: !560, line: 605, baseType: !272, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !709, file: !560, line: 609, baseType: !714, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !715, line: 46, baseType: !326)
!715 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !709, file: !560, line: 612, baseType: !717, size: 64, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !560, line: 581, size: 320, elements: !719)
!719 = !{!720, !721, !722, !723, !724}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !718, file: !560, line: 583, baseType: !5, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !718, file: !560, line: 586, baseType: !272, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !718, file: !560, line: 589, baseType: !272, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !718, file: !560, line: 592, baseType: !272, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !718, file: !560, line: 595, baseType: !272, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !709, file: !560, line: 616, baseType: !557, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !570, file: !560, line: 754, baseType: !727, size: 512)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !560, line: 622, size: 512, elements: !728)
!728 = !{!729, !730, !731, !732}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !727, file: !560, line: 624, baseType: !635, size: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !727, file: !560, line: 628, baseType: !272, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !727, file: !560, line: 632, baseType: !272, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !727, file: !560, line: 636, baseType: !272, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !570, file: !560, line: 755, baseType: !734, size: 704)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !560, line: 642, size: 704, elements: !735)
!735 = !{!736, !737, !738, !739}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !734, file: !560, line: 644, baseType: !727, size: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !734, file: !560, line: 648, baseType: !272, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !734, file: !560, line: 652, baseType: !272, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !734, file: !560, line: 653, baseType: !272, size: 64, offset: 640)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !570, file: !560, line: 756, baseType: !741, size: 448)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !560, line: 663, size: 448, elements: !742)
!742 = !{!743, !744, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !741, file: !560, line: 665, baseType: !635, size: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !741, file: !560, line: 668, baseType: !272, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !741, file: !560, line: 673, baseType: !272, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !570, file: !560, line: 757, baseType: !747, size: 384)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !560, line: 694, size: 384, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !747, file: !560, line: 696, baseType: !635, size: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !747, file: !560, line: 699, baseType: !272, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !570, file: !560, line: 758, baseType: !752, size: 384)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !560, line: 681, size: 384, elements: !753)
!753 = !{!754, !755, !756}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !752, file: !560, line: 683, baseType: !573, size: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !752, file: !560, line: 686, baseType: !272, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !752, file: !560, line: 689, baseType: !272, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !570, file: !560, line: 759, baseType: !758, size: 384)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !560, line: 707, size: 384, elements: !759)
!759 = !{!760, !761, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !758, file: !560, line: 709, baseType: !573, size: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !758, file: !560, line: 712, baseType: !272, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !758, file: !560, line: 712, baseType: !272, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !570, file: !560, line: 760, baseType: !764, size: 320)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !560, line: 718, size: 320, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !764, file: !560, line: 720, baseType: !573, size: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !764, file: !560, line: 723, baseType: !272, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !565, file: !560, line: 138, baseType: !564, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !565, file: !560, line: 139, baseType: !564, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !559, file: !560, line: 146, baseType: !563, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !559, file: !560, line: 152, baseType: !557, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !554, file: !202, line: 130, baseType: !431, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !549, file: !202, line: 134, baseType: !264, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !549, file: !202, line: 137, baseType: !272, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !549, file: !202, line: 138, baseType: !381, size: 32, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !549, file: !202, line: 142, baseType: !7, size: 32, offset: 352)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !202, line: 144, baseType: !260, size: 32, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !549, file: !202, line: 145, baseType: !260, size: 32, offset: 416)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !549, file: !202, line: 146, baseType: !780, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !202, line: 119, baseType: !328)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !532, file: !202, line: 220, baseType: !535, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !532, file: !202, line: 223, baseType: !264, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !532, file: !202, line: 226, baseType: !784, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !202, line: 185, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !532, file: !202, line: 229, baseType: !787, size: 128, offset: 256)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 128, elements: !790)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !202, line: 229, flags: DIFlagFwdDecl)
!790 = !{!791}
!791 = !DISubrange(count: 2)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !532, file: !202, line: 232, baseType: !531, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !532, file: !202, line: 233, baseType: !531, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !532, file: !202, line: 238, baseType: !795, size: 64, offset: 512)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !202, line: 235, size: 64, elements: !796)
!796 = !{!797, !803}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !795, file: !202, line: 236, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !202, line: 273, size: 128, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !799, file: !202, line: 275, baseType: !557, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !799, file: !202, line: 278, baseType: !557, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !795, file: !202, line: 237, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !202, line: 259, size: 320, elements: !806)
!806 = !{!807, !808, !809, !810, !811}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !805, file: !202, line: 261, baseType: !431, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !805, file: !202, line: 262, baseType: !431, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !805, file: !202, line: 266, baseType: !431, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !805, file: !202, line: 267, baseType: !431, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !805, file: !202, line: 270, baseType: !260, size: 32, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !532, file: !202, line: 241, baseType: !780, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !532, file: !202, line: 244, baseType: !260, size: 32, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !532, file: !202, line: 247, baseType: !260, size: 32, offset: 672)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !532, file: !202, line: 250, baseType: !260, size: 32, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !532, file: !202, line: 253, baseType: !260, size: 32, offset: 736)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !202, line: 256, baseType: !260, size: 32, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !527, file: !202, line: 378, baseType: !530, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !527, file: !202, line: 381, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !202, line: 282, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !202, line: 282, size: 128, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !822, file: !202, line: 282, baseType: !825, size: 128)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !202, line: 281, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !202, line: 281, size: 128, elements: !827)
!827 = !{!828, !829, !830}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !826, file: !202, line: 281, baseType: !7, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !826, file: !202, line: 281, baseType: !7, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !826, file: !202, line: 281, baseType: !831, size: 64, offset: 64)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 64, elements: !355)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !527, file: !202, line: 384, baseType: !260, size: 32, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !527, file: !202, line: 387, baseType: !260, size: 32, offset: 224)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !527, file: !202, line: 390, baseType: !260, size: 32, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !527, file: !202, line: 394, baseType: !820, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !527, file: !202, line: 396, baseType: !201, size: 32, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !527, file: !202, line: 399, baseType: !838, size: 64, offset: 416)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !790)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !527, file: !202, line: 402, baseType: !840, size: 64, offset: 480)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !790)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !527, file: !202, line: 406, baseType: !260, size: 32, offset: 544)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !527, file: !202, line: 409, baseType: !260, size: 32, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !519, file: !520, line: 470, baseType: !558, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !519, file: !520, line: 473, baseType: !845, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !470, line: 39, size: 1152, elements: !847)
!847 = !{!848, !898, !911, !923, !924, !993, !994, !998, !999, !1000, !1001, !1002}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !846, file: !470, line: 41, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !850, line: 144, baseType: !851)
!850 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !850, line: 100, size: 896, elements: !853)
!853 = !{!854, !862, !867, !872, !874, !875, !876, !877, !878, !879, !884, !886, !887, !892, !897}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !852, file: !850, line: 102, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !850, line: 52, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !850, line: 47, baseType: !7)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !852, file: !850, line: 105, baseType: !863, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !850, line: 59, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!260, !860, !860}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !852, file: !850, line: 108, baseType: !868, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !850, line: 63, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !264}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !852, file: !850, line: 111, baseType: !873, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !852, file: !850, line: 114, baseType: !714, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !852, file: !850, line: 117, baseType: !714, size: 64, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !852, file: !850, line: 120, baseType: !714, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !852, file: !850, line: 124, baseType: !7, size: 32, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !852, file: !850, line: 128, baseType: !7, size: 32, offset: 480)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !852, file: !850, line: 131, baseType: !880, size: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !850, line: 75, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!264, !714, !714}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !852, file: !850, line: 132, baseType: !885, size: 64, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !850, line: 78, baseType: !869)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !852, file: !850, line: 135, baseType: !264, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !852, file: !850, line: 136, baseType: !888, size: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !850, line: 82, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!264, !264, !714, !714}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !852, file: !850, line: 137, baseType: !893, size: 64, offset: 768)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !850, line: 83, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !264, !264}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !852, file: !850, line: 141, baseType: !7, size: 32, offset: 832)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !846, file: !470, line: 48, baseType: !899, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !560, line: 35, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !560, line: 35, size: 128, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !901, file: !560, line: 35, baseType: !904, size: 128)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !560, line: 33, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !560, line: 33, size: 128, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !905, file: !560, line: 33, baseType: !7, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !905, file: !560, line: 33, baseType: !7, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !905, file: !560, line: 33, baseType: !910, size: 64, offset: 64)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 64, elements: !355)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !846, file: !470, line: 51, baseType: !912, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !914, file: !6, line: 183, baseType: !917, size: 128)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !918, file: !6, line: 182, baseType: !7, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !918, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !918, file: !6, line: 182, baseType: !622, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !846, file: !470, line: 54, baseType: !272, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !846, file: !470, line: 57, baseType: !925, size: 128, offset: 256)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !926, line: 31, size: 128, elements: !927)
!926 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!927 = !{!928, !929, !930, !931, !932, !933, !934}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !925, file: !926, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !925, file: !926, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !925, file: !926, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !925, file: !926, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !925, file: !926, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !925, file: !926, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !925, file: !926, line: 56, baseType: !935, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !273, line: 47, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !938, line: 75, size: 256, elements: !939)
!938 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!939 = !{!940, !952, !953, !954}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !937, file: !938, line: 76, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !938, line: 68, baseType: !943)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !938, line: 63, size: 320, elements: !944)
!944 = !{!945, !947, !948, !949}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !943, file: !938, line: 64, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !943, file: !938, line: 65, baseType: !946, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !943, file: !938, line: 66, baseType: !7, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !943, file: !938, line: 67, baseType: !950, size: 128, offset: 192)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 128, elements: !790)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !938, line: 29, baseType: !326)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !937, file: !938, line: 77, baseType: !941, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !937, file: !938, line: 78, baseType: !7, size: 32, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !937, file: !938, line: 79, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !938, line: 49, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !938, line: 45, size: 832, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !957, file: !938, line: 46, baseType: !946, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !957, file: !938, line: 47, baseType: !936, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !957, file: !938, line: 48, baseType: !962, size: 704, offset: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !963, line: 164, size: 704, elements: !964)
!963 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!964 = !{!965, !966, !976, !977, !978, !979, !980, !981, !985, !989, !990, !991, !992}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !962, file: !963, line: 166, baseType: !328, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !962, file: !963, line: 167, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !963, line: 157, size: 192, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !968, file: !963, line: 159, baseType: !262, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !968, file: !963, line: 160, baseType: !967, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !968, file: !963, line: 161, baseType: !973, size: 32, offset: 128)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 32, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 4)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !962, file: !963, line: 168, baseType: !262, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !962, file: !963, line: 169, baseType: !262, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !962, file: !963, line: 170, baseType: !262, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !962, file: !963, line: 171, baseType: !328, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !962, file: !963, line: 172, baseType: !260, size: 32, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !962, file: !963, line: 176, baseType: !982, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!967, !264, !328}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !962, file: !963, line: 177, baseType: !986, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !264, !967}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !962, file: !963, line: 178, baseType: !264, size: 64, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !962, file: !963, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !962, file: !963, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !962, file: !963, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !846, file: !470, line: 60, baseType: !925, size: 128, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !846, file: !470, line: 64, baseType: !995, size: 64, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !997, line: 33, flags: DIFlagFwdDecl)
!997 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!998 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !846, file: !470, line: 67, baseType: !272, size: 64, offset: 576)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !846, file: !470, line: 73, baseType: !849, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !846, file: !470, line: 77, baseType: !935, size: 64, offset: 704)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !846, file: !470, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !846, file: !470, line: 82, baseType: !1003, size: 320, offset: 832)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !599, line: 62, size: 320, elements: !1004)
!1004 = !{!1005, !1011, !1012, !1013, !1014, !1015}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1003, file: !599, line: 63, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !599, line: 56, size: 128, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1007, file: !599, line: 57, baseType: !1006, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1007, file: !599, line: 58, baseType: !354, size: 8, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1003, file: !599, line: 64, baseType: !7, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1003, file: !599, line: 66, baseType: !7, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1003, file: !599, line: 68, baseType: !259, size: 8, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1003, file: !599, line: 70, baseType: !597, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1003, file: !599, line: 71, baseType: !605, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !519, file: !520, line: 476, baseType: !1017, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !520, line: 476, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !519, file: !520, line: 479, baseType: !849, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !519, file: !520, line: 484, baseType: !272, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !519, file: !520, line: 488, baseType: !272, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !519, file: !520, line: 493, baseType: !272, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !519, file: !520, line: 496, baseType: !272, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !519, file: !520, line: 501, baseType: !1025, size: 64, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !213, line: 2355, size: 576, elements: !1027)
!1027 = !{!1028, !1031, !1032, !1033, !1034, !1036, !1037, !1042, !1043, !1044, !1045, !1046, !1047}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1026, file: !213, line: 2356, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !213, line: 2356, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1026, file: !213, line: 2357, baseType: !265, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1026, file: !213, line: 2358, baseType: !260, size: 32, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1026, file: !213, line: 2359, baseType: !260, size: 32, offset: 160)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1026, file: !213, line: 2360, baseType: !1035, size: 128, offset: 192)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 128, elements: !974)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1026, file: !213, line: 2364, baseType: !260, size: 32, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1026, file: !213, line: 2367, baseType: !1038, size: 128, offset: 384)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !213, line: 2349, size: 128, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1038, file: !213, line: 2351, baseType: !431, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1038, file: !213, line: 2352, baseType: !328, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1026, file: !213, line: 2371, baseType: !212, size: 32, offset: 512)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1026, file: !213, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1026, file: !213, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1026, file: !213, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1026, file: !213, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1026, file: !213, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !519, file: !520, line: 504, baseType: !1049, size: 64, offset: 704)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !520, line: 504, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !519, file: !520, line: 507, baseType: !849, size: 64, offset: 768)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !519, file: !520, line: 510, baseType: !260, size: 32, offset: 832)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !519, file: !520, line: 513, baseType: !260, size: 32, offset: 864)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !519, file: !520, line: 516, baseType: !381, size: 32, offset: 896)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !519, file: !520, line: 519, baseType: !381, size: 32, offset: 928)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !519, file: !520, line: 522, baseType: !7, size: 32, offset: 960)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !519, file: !520, line: 523, baseType: !7, size: 32, offset: 992)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !519, file: !520, line: 528, baseType: !265, size: 64, offset: 1024)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !519, file: !520, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !519, file: !520, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !519, file: !520, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !519, file: !520, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !519, file: !520, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !519, file: !520, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !519, file: !520, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !519, file: !520, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !519, file: !520, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !519, file: !520, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !519, file: !520, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !519, file: !520, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !519, file: !520, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !519, file: !520, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !519, file: !520, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !519, file: !520, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !514, file: !6, line: 3254, baseType: !272, size: 64, offset: 1536)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !514, file: !6, line: 3257, baseType: !272, size: 64, offset: 1600)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !514, file: !6, line: 3258, baseType: !272, size: 64, offset: 1664)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !514, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !514, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !514, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !514, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !514, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !514, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !514, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !514, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !514, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !514, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !514, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !514, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !514, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !514, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !514, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !514, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !514, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !514, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !275, file: !6, line: 3394, baseType: !1097, size: 1344)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1124, !1125, !1126, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1097, file: !6, line: 2280, baseType: !311, size: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1097, file: !6, line: 2281, baseType: !272, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1097, file: !6, line: 2282, baseType: !272, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1097, file: !6, line: 2283, baseType: !272, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1097, file: !6, line: 2284, baseType: !272, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1097, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1097, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1097, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1097, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1097, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1097, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1097, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1097, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1097, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1097, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1097, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1097, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1097, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1097, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1097, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1097, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1097, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1097, file: !6, line: 2306, baseType: !1122, size: 32, offset: 544)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1123, line: 31, baseType: !260)
!1123 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1097, file: !6, line: 2307, baseType: !272, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1097, file: !6, line: 2308, baseType: !272, size: 64, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1097, file: !6, line: 2314, baseType: !1127, size: 64, offset: 704)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1127, file: !6, line: 2310, baseType: !260, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1127, file: !6, line: 2311, baseType: !265, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1127, file: !6, line: 2312, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1097, file: !6, line: 2315, baseType: !272, size: 64, offset: 768)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1097, file: !6, line: 2316, baseType: !272, size: 64, offset: 832)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1097, file: !6, line: 2317, baseType: !272, size: 64, offset: 896)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1097, file: !6, line: 2318, baseType: !272, size: 64, offset: 960)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1097, file: !6, line: 2319, baseType: !272, size: 64, offset: 1024)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1097, file: !6, line: 2320, baseType: !272, size: 64, offset: 1088)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1097, file: !6, line: 2321, baseType: !272, size: 64, offset: 1152)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1097, file: !6, line: 2322, baseType: !272, size: 64, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1097, file: !6, line: 2324, baseType: !1143, size: 64, offset: 1280)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !275, file: !6, line: 3395, baseType: !1146, size: 320)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1146, file: !6, line: 1470, baseType: !311, size: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1146, file: !6, line: 1471, baseType: !272, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1146, file: !6, line: 1472, baseType: !272, size: 64, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !275, file: !6, line: 3396, baseType: !1152, size: 320)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !1153)
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1152, file: !6, line: 1483, baseType: !311, size: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1152, file: !6, line: 1484, baseType: !260, size: 32, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1152, file: !6, line: 1485, baseType: !622, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !275, file: !6, line: 3397, baseType: !1158, size: 384)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1158, file: !6, line: 1830, baseType: !311, size: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1158, file: !6, line: 1831, baseType: !381, size: 32, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1158, file: !6, line: 1832, baseType: !272, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1158, file: !6, line: 1835, baseType: !622, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !275, file: !6, line: 3398, baseType: !1165, size: 704)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1176}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1165, file: !6, line: 1899, baseType: !311, size: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1165, file: !6, line: 1902, baseType: !272, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1165, file: !6, line: 1905, baseType: !568, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1165, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1165, file: !6, line: 1911, baseType: !1172, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !470, line: 117, size: 128, elements: !1174)
!1174 = !{!1175}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1173, file: !470, line: 120, baseType: !925, size: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1165, file: !6, line: 1914, baseType: !610, size: 256, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !275, file: !6, line: 3399, baseType: !1178, size: 704)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1178, file: !6, line: 2009, baseType: !311, size: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1178, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1178, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1178, file: !6, line: 2014, baseType: !381, size: 32, offset: 224)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1178, file: !6, line: 2016, baseType: !272, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1178, file: !6, line: 2017, baseType: !912, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1178, file: !6, line: 2019, baseType: !272, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1178, file: !6, line: 2020, baseType: !272, size: 64, offset: 448)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1178, file: !6, line: 2021, baseType: !272, size: 64, offset: 512)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1178, file: !6, line: 2022, baseType: !272, size: 64, offset: 576)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1178, file: !6, line: 2023, baseType: !272, size: 64, offset: 640)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !275, file: !6, line: 3400, baseType: !1192, size: 832)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1192, file: !6, line: 2431, baseType: !311, size: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1192, file: !6, line: 2433, baseType: !272, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1192, file: !6, line: 2434, baseType: !272, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1192, file: !6, line: 2435, baseType: !272, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1192, file: !6, line: 2436, baseType: !272, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1192, file: !6, line: 2437, baseType: !912, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1192, file: !6, line: 2438, baseType: !272, size: 64, offset: 512)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1192, file: !6, line: 2440, baseType: !272, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1192, file: !6, line: 2441, baseType: !272, size: 64, offset: 640)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1192, file: !6, line: 2443, baseType: !1204, size: 128, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1205, file: !6, line: 182, baseType: !917, size: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !275, file: !6, line: 3401, baseType: !1209, size: 320)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !1210)
!1210 = !{!1211, !1212, !1219}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1209, file: !6, line: 3329, baseType: !311, size: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1209, file: !6, line: 3330, baseType: !1213, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !1215)
!1215 = !{!1216, !1217, !1218}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1214, file: !6, line: 3322, baseType: !1213, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1214, file: !6, line: 3323, baseType: !1213, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1214, file: !6, line: 3324, baseType: !272, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1209, file: !6, line: 3331, baseType: !1213, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !275, file: !6, line: 3402, baseType: !1221, size: 256)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1221, file: !6, line: 1541, baseType: !311, size: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1221, file: !6, line: 1542, baseType: !1225, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1227, file: !6, line: 1538, baseType: !1230, size: 192)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !1232)
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1231, file: !6, line: 1537, baseType: !7, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1231, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1231, file: !6, line: 1537, baseType: !1236, size: 128, offset: 64)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 128, elements: !355)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !1239)
!1239 = !{!1240, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1238, file: !6, line: 1533, baseType: !272, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1238, file: !6, line: 1534, baseType: !272, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !275, file: !6, line: 3403, baseType: !1243, size: 512)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1254, !1255, !1256}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1243, file: !6, line: 1939, baseType: !311, size: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1243, file: !6, line: 1940, baseType: !381, size: 32, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1243, file: !6, line: 1941, baseType: !217, size: 32, offset: 224)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1243, file: !6, line: 1946, baseType: !1249, size: 32, offset: 256)
!1249 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !1250)
!1250 = !{!1251, !1252, !1253}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1249, file: !6, line: 1943, baseType: !235, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1249, file: !6, line: 1944, baseType: !242, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1249, file: !6, line: 1945, baseType: !5, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1243, file: !6, line: 1950, baseType: !557, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1243, file: !6, line: 1951, baseType: !557, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1243, file: !6, line: 1953, baseType: !622, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !275, file: !6, line: 3404, baseType: !1258, size: 1664)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1258, file: !6, line: 3338, baseType: !311, size: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1258, file: !6, line: 3341, baseType: !1262, size: 1472, offset: 192)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1263, line: 410, size: 1472, elements: !1264)
!1263 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1262, file: !1263, line: 412, baseType: !260, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1262, file: !1263, line: 413, baseType: !260, size: 32, offset: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1262, file: !1263, line: 414, baseType: !260, size: 32, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1262, file: !1263, line: 415, baseType: !260, size: 32, offset: 96)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1262, file: !1263, line: 416, baseType: !260, size: 32, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1262, file: !1263, line: 417, baseType: !260, size: 32, offset: 160)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1262, file: !1263, line: 418, baseType: !259, size: 8, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1262, file: !1263, line: 419, baseType: !259, size: 8, offset: 200)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1262, file: !1263, line: 420, baseType: !1274, size: 8, offset: 208)
!1274 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1262, file: !1263, line: 421, baseType: !1274, size: 8, offset: 216)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1262, file: !1263, line: 422, baseType: !1274, size: 8, offset: 224)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1262, file: !1263, line: 423, baseType: !1274, size: 8, offset: 232)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1262, file: !1263, line: 424, baseType: !1274, size: 8, offset: 240)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1262, file: !1263, line: 425, baseType: !1274, size: 8, offset: 248)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1262, file: !1263, line: 426, baseType: !1274, size: 8, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1262, file: !1263, line: 427, baseType: !1274, size: 8, offset: 264)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1262, file: !1263, line: 428, baseType: !1274, size: 8, offset: 272)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1262, file: !1263, line: 429, baseType: !1274, size: 8, offset: 280)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1262, file: !1263, line: 430, baseType: !1274, size: 8, offset: 288)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1262, file: !1263, line: 431, baseType: !1274, size: 8, offset: 296)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1262, file: !1263, line: 432, baseType: !1274, size: 8, offset: 304)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1262, file: !1263, line: 433, baseType: !1274, size: 8, offset: 312)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1262, file: !1263, line: 434, baseType: !1274, size: 8, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1262, file: !1263, line: 435, baseType: !1274, size: 8, offset: 328)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1262, file: !1263, line: 436, baseType: !1274, size: 8, offset: 336)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1262, file: !1263, line: 437, baseType: !1274, size: 8, offset: 344)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1262, file: !1263, line: 438, baseType: !1274, size: 8, offset: 352)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1262, file: !1263, line: 439, baseType: !1274, size: 8, offset: 360)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1262, file: !1263, line: 440, baseType: !1274, size: 8, offset: 368)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1262, file: !1263, line: 441, baseType: !1274, size: 8, offset: 376)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1262, file: !1263, line: 442, baseType: !1274, size: 8, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1262, file: !1263, line: 443, baseType: !1274, size: 8, offset: 392)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1262, file: !1263, line: 444, baseType: !1274, size: 8, offset: 400)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1262, file: !1263, line: 445, baseType: !1274, size: 8, offset: 408)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1262, file: !1263, line: 446, baseType: !1274, size: 8, offset: 416)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1262, file: !1263, line: 447, baseType: !1274, size: 8, offset: 424)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1262, file: !1263, line: 448, baseType: !1274, size: 8, offset: 432)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1262, file: !1263, line: 449, baseType: !1274, size: 8, offset: 440)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1262, file: !1263, line: 450, baseType: !1274, size: 8, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1262, file: !1263, line: 451, baseType: !1274, size: 8, offset: 456)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1262, file: !1263, line: 452, baseType: !1274, size: 8, offset: 464)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1262, file: !1263, line: 453, baseType: !1274, size: 8, offset: 472)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1262, file: !1263, line: 454, baseType: !1274, size: 8, offset: 480)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1262, file: !1263, line: 455, baseType: !1274, size: 8, offset: 488)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1262, file: !1263, line: 456, baseType: !1274, size: 8, offset: 496)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1262, file: !1263, line: 457, baseType: !1274, size: 8, offset: 504)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1262, file: !1263, line: 458, baseType: !1274, size: 8, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1262, file: !1263, line: 459, baseType: !1274, size: 8, offset: 520)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1262, file: !1263, line: 460, baseType: !1274, size: 8, offset: 528)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1262, file: !1263, line: 461, baseType: !1274, size: 8, offset: 536)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1262, file: !1263, line: 462, baseType: !1274, size: 8, offset: 544)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1262, file: !1263, line: 463, baseType: !1274, size: 8, offset: 552)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1262, file: !1263, line: 464, baseType: !1274, size: 8, offset: 560)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1262, file: !1263, line: 465, baseType: !1274, size: 8, offset: 568)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1262, file: !1263, line: 466, baseType: !1274, size: 8, offset: 576)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1262, file: !1263, line: 467, baseType: !1274, size: 8, offset: 584)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1262, file: !1263, line: 468, baseType: !1274, size: 8, offset: 592)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1262, file: !1263, line: 469, baseType: !1274, size: 8, offset: 600)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1262, file: !1263, line: 470, baseType: !1274, size: 8, offset: 608)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1262, file: !1263, line: 471, baseType: !1274, size: 8, offset: 616)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1262, file: !1263, line: 472, baseType: !1274, size: 8, offset: 624)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1262, file: !1263, line: 473, baseType: !1274, size: 8, offset: 632)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1262, file: !1263, line: 474, baseType: !1274, size: 8, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1262, file: !1263, line: 475, baseType: !1274, size: 8, offset: 648)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1262, file: !1263, line: 476, baseType: !1274, size: 8, offset: 656)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1262, file: !1263, line: 477, baseType: !1274, size: 8, offset: 664)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1262, file: !1263, line: 478, baseType: !1274, size: 8, offset: 672)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1262, file: !1263, line: 479, baseType: !1274, size: 8, offset: 680)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1262, file: !1263, line: 480, baseType: !1274, size: 8, offset: 688)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1262, file: !1263, line: 481, baseType: !1274, size: 8, offset: 696)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1262, file: !1263, line: 482, baseType: !1274, size: 8, offset: 704)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1262, file: !1263, line: 483, baseType: !1274, size: 8, offset: 712)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1262, file: !1263, line: 484, baseType: !1274, size: 8, offset: 720)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1262, file: !1263, line: 485, baseType: !1274, size: 8, offset: 728)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1262, file: !1263, line: 486, baseType: !1274, size: 8, offset: 736)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1262, file: !1263, line: 487, baseType: !1274, size: 8, offset: 744)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1262, file: !1263, line: 488, baseType: !1274, size: 8, offset: 752)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1262, file: !1263, line: 489, baseType: !1274, size: 8, offset: 760)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1262, file: !1263, line: 490, baseType: !1274, size: 8, offset: 768)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1262, file: !1263, line: 491, baseType: !1274, size: 8, offset: 776)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1262, file: !1263, line: 492, baseType: !1274, size: 8, offset: 784)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1262, file: !1263, line: 493, baseType: !1274, size: 8, offset: 792)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1262, file: !1263, line: 494, baseType: !1274, size: 8, offset: 800)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1262, file: !1263, line: 495, baseType: !1274, size: 8, offset: 808)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1262, file: !1263, line: 496, baseType: !1274, size: 8, offset: 816)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1262, file: !1263, line: 497, baseType: !1274, size: 8, offset: 824)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1262, file: !1263, line: 498, baseType: !1274, size: 8, offset: 832)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1262, file: !1263, line: 499, baseType: !1274, size: 8, offset: 840)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1262, file: !1263, line: 500, baseType: !1274, size: 8, offset: 848)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1262, file: !1263, line: 501, baseType: !1274, size: 8, offset: 856)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1262, file: !1263, line: 502, baseType: !1274, size: 8, offset: 864)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1262, file: !1263, line: 503, baseType: !1274, size: 8, offset: 872)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1262, file: !1263, line: 504, baseType: !1274, size: 8, offset: 880)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1262, file: !1263, line: 505, baseType: !1274, size: 8, offset: 888)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1262, file: !1263, line: 506, baseType: !1274, size: 8, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1262, file: !1263, line: 507, baseType: !1274, size: 8, offset: 904)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1262, file: !1263, line: 508, baseType: !1274, size: 8, offset: 912)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1262, file: !1263, line: 509, baseType: !1274, size: 8, offset: 920)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1262, file: !1263, line: 510, baseType: !1274, size: 8, offset: 928)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1262, file: !1263, line: 511, baseType: !1274, size: 8, offset: 936)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1262, file: !1263, line: 512, baseType: !1274, size: 8, offset: 944)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1262, file: !1263, line: 513, baseType: !1274, size: 8, offset: 952)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1262, file: !1263, line: 514, baseType: !1274, size: 8, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1262, file: !1263, line: 515, baseType: !1274, size: 8, offset: 968)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1262, file: !1263, line: 516, baseType: !1274, size: 8, offset: 976)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1262, file: !1263, line: 517, baseType: !1274, size: 8, offset: 984)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1262, file: !1263, line: 518, baseType: !1274, size: 8, offset: 992)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1262, file: !1263, line: 519, baseType: !1274, size: 8, offset: 1000)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1262, file: !1263, line: 520, baseType: !1274, size: 8, offset: 1008)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1262, file: !1263, line: 521, baseType: !1274, size: 8, offset: 1016)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1262, file: !1263, line: 522, baseType: !1274, size: 8, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1262, file: !1263, line: 523, baseType: !1274, size: 8, offset: 1032)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1262, file: !1263, line: 524, baseType: !1274, size: 8, offset: 1040)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1262, file: !1263, line: 525, baseType: !1274, size: 8, offset: 1048)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1262, file: !1263, line: 526, baseType: !1274, size: 8, offset: 1056)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1262, file: !1263, line: 527, baseType: !1274, size: 8, offset: 1064)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1262, file: !1263, line: 528, baseType: !1274, size: 8, offset: 1072)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1262, file: !1263, line: 529, baseType: !1274, size: 8, offset: 1080)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1262, file: !1263, line: 530, baseType: !1274, size: 8, offset: 1088)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1262, file: !1263, line: 531, baseType: !1274, size: 8, offset: 1096)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1262, file: !1263, line: 532, baseType: !1274, size: 8, offset: 1104)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1262, file: !1263, line: 533, baseType: !1274, size: 8, offset: 1112)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1262, file: !1263, line: 534, baseType: !1274, size: 8, offset: 1120)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1262, file: !1263, line: 535, baseType: !1274, size: 8, offset: 1128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1262, file: !1263, line: 536, baseType: !1274, size: 8, offset: 1136)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1262, file: !1263, line: 537, baseType: !1274, size: 8, offset: 1144)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1262, file: !1263, line: 538, baseType: !1274, size: 8, offset: 1152)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1262, file: !1263, line: 539, baseType: !1274, size: 8, offset: 1160)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1262, file: !1263, line: 540, baseType: !1274, size: 8, offset: 1168)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1262, file: !1263, line: 541, baseType: !1274, size: 8, offset: 1176)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1262, file: !1263, line: 542, baseType: !1274, size: 8, offset: 1184)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1262, file: !1263, line: 543, baseType: !1274, size: 8, offset: 1192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1262, file: !1263, line: 544, baseType: !1274, size: 8, offset: 1200)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1262, file: !1263, line: 545, baseType: !1274, size: 8, offset: 1208)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1262, file: !1263, line: 546, baseType: !1274, size: 8, offset: 1216)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1262, file: !1263, line: 547, baseType: !1274, size: 8, offset: 1224)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1262, file: !1263, line: 548, baseType: !1274, size: 8, offset: 1232)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1262, file: !1263, line: 549, baseType: !1274, size: 8, offset: 1240)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1262, file: !1263, line: 550, baseType: !1274, size: 8, offset: 1248)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1262, file: !1263, line: 551, baseType: !1274, size: 8, offset: 1256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1262, file: !1263, line: 552, baseType: !1274, size: 8, offset: 1264)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1262, file: !1263, line: 553, baseType: !1274, size: 8, offset: 1272)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1262, file: !1263, line: 554, baseType: !1274, size: 8, offset: 1280)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1262, file: !1263, line: 555, baseType: !1274, size: 8, offset: 1288)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1262, file: !1263, line: 556, baseType: !1274, size: 8, offset: 1296)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1262, file: !1263, line: 557, baseType: !1274, size: 8, offset: 1304)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1262, file: !1263, line: 558, baseType: !1274, size: 8, offset: 1312)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1262, file: !1263, line: 559, baseType: !1274, size: 8, offset: 1320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1262, file: !1263, line: 560, baseType: !1274, size: 8, offset: 1328)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1262, file: !1263, line: 561, baseType: !1274, size: 8, offset: 1336)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1262, file: !1263, line: 562, baseType: !1274, size: 8, offset: 1344)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1262, file: !1263, line: 563, baseType: !1274, size: 8, offset: 1352)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1262, file: !1263, line: 564, baseType: !1274, size: 8, offset: 1360)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1262, file: !1263, line: 565, baseType: !1274, size: 8, offset: 1368)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1262, file: !1263, line: 566, baseType: !1274, size: 8, offset: 1376)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1262, file: !1263, line: 567, baseType: !1274, size: 8, offset: 1384)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1262, file: !1263, line: 568, baseType: !1274, size: 8, offset: 1392)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1262, file: !1263, line: 569, baseType: !1274, size: 8, offset: 1400)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1262, file: !1263, line: 570, baseType: !1274, size: 8, offset: 1408)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1262, file: !1263, line: 571, baseType: !1274, size: 8, offset: 1416)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1262, file: !1263, line: 572, baseType: !1274, size: 8, offset: 1424)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1262, file: !1263, line: 573, baseType: !1274, size: 8, offset: 1432)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1262, file: !1263, line: 574, baseType: !1274, size: 8, offset: 1440)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !275, file: !6, line: 3405, baseType: !1430, size: 384)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !1431)
!1431 = !{!1432, !1433}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1430, file: !6, line: 3353, baseType: !311, size: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1430, file: !6, line: 3356, baseType: !1434, size: 192, offset: 192)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1263, line: 578, size: 192, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1434, file: !1263, line: 580, baseType: !260, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1434, file: !1263, line: 581, baseType: !260, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1434, file: !1263, line: 582, baseType: !260, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1434, file: !1263, line: 583, baseType: !260, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1434, file: !1263, line: 584, baseType: !259, size: 8, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1434, file: !1263, line: 585, baseType: !259, size: 8, offset: 136)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1434, file: !1263, line: 586, baseType: !259, size: 8, offset: 144)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1434, file: !1263, line: 587, baseType: !259, size: 8, offset: 152)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1434, file: !1263, line: 588, baseType: !259, size: 8, offset: 160)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1434, file: !1263, line: 589, baseType: !259, size: 8, offset: 168)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1434, file: !1263, line: 590, baseType: !259, size: 8, offset: 176)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !250, line: 361, baseType: !268, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !269, file: !250, line: 363, baseType: !268, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !269, file: !250, line: 366, baseType: !268, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !269, file: !250, line: 368, baseType: !260, size: 32, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !269, file: !250, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !269, file: !250, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !269, file: !250, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !269, file: !250, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !269, file: !250, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !269, file: !250, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !269, file: !250, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!1460 = !{!1461, !0, !1477, !1479, !1481, !1483, !1485}
!1461 = !DIGlobalVariableExpression(var: !1462, expr: !DIExpression())
!1462 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_varpool_h", scope: !2, file: !1463, line: 24, type: !1464, isLocal: false, isDefinition: true)
!1463 = !DIFile(filename: "./gt-varpool.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1465, size: 1600, elements: !1475)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1467, line: 69, size: 320, elements: !1468)
!1467 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1468 = !{!1469, !1470, !1471, !1472, !1474}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1466, file: !1467, line: 70, baseType: !264, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1466, file: !1467, line: 71, baseType: !714, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1466, file: !1467, line: 72, baseType: !714, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1466, file: !1467, line: 73, baseType: !1473, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1467, line: 65, baseType: !869)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1466, file: !1467, line: 74, baseType: !1473, size: 64, offset: 256)
!1475 = !{!1476}
!1476 = !DISubrange(count: 5)
!1477 = !DIGlobalVariableExpression(var: !1478, expr: !DIExpression())
!1478 = distinct !DIGlobalVariable(name: "varpool_nodes", scope: !2, file: !3, line: 56, type: !268, isLocal: false, isDefinition: true)
!1479 = !DIGlobalVariableExpression(var: !1480, expr: !DIExpression())
!1480 = distinct !DIGlobalVariable(name: "varpool_nodes_queue", scope: !2, file: !3, line: 75, type: !268, isLocal: false, isDefinition: true)
!1481 = !DIGlobalVariableExpression(var: !1482, expr: !DIExpression())
!1482 = distinct !DIGlobalVariable(name: "varpool_last_needed_node", scope: !2, file: !3, line: 76, type: !268, isLocal: true, isDefinition: true)
!1483 = !DIGlobalVariableExpression(var: !1484, expr: !DIExpression())
!1484 = distinct !DIGlobalVariable(name: "varpool_first_unanalyzed_node", scope: !2, file: !3, line: 77, type: !268, isLocal: true, isDefinition: true)
!1485 = !DIGlobalVariableExpression(var: !1486, expr: !DIExpression())
!1486 = distinct !DIGlobalVariable(name: "varpool_assembled_nodes_queue", scope: !2, file: !3, line: 80, type: !268, isLocal: true, isDefinition: true)
!1487 = !{i32 2, !"Dwarf Version", i32 4}
!1488 = !{i32 2, !"Debug Info Version", i32 3}
!1489 = !{i32 1, !"wchar_size", i32 4}
!1490 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1491 = distinct !DISubprogram(name: "vprintf", scope: !1492, file: !1492, line: 39, type: !1493, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1503)
!1492 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!260, !1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1497, file: !3, baseType: !7, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1497, file: !3, baseType: !7, size: 32, offset: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1497, file: !3, baseType: !264, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1497, file: !3, baseType: !264, size: 64, offset: 128)
!1503 = !{!1504, !1505}
!1504 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1491, file: !1492, line: 39, type: !1495)
!1505 = !DILocalVariable(name: "__arg", arg: 2, scope: !1491, file: !1492, line: 39, type: !1496)
!1506 = !DILocation(line: 0, scope: !1491)
!1507 = !DILocation(line: 41, column: 20, scope: !1491)
!1508 = !DILocation(line: 41, column: 10, scope: !1491)
!1509 = !DILocation(line: 41, column: 3, scope: !1491)
!1510 = distinct !DISubprogram(name: "getchar", scope: !1492, file: !1492, line: 47, type: !1511, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!260}
!1513 = !{}
!1514 = !DILocation(line: 49, column: 16, scope: !1510)
!1515 = !DILocation(line: 49, column: 10, scope: !1510)
!1516 = !DILocation(line: 49, column: 3, scope: !1510)
!1517 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1492, file: !1492, line: 56, type: !1518, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1571)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!260, !1520}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1522, line: 7, baseType: !1523)
!1522 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1524, line: 49, size: 1728, elements: !1525)
!1524 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1541, !1543, !1544, !1545, !1548, !1550, !1551, !1552, !1555, !1557, !1560, !1563, !1564, !1565, !1566, !1567}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1523, file: !1524, line: 51, baseType: !260, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1523, file: !1524, line: 54, baseType: !262, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1523, file: !1524, line: 55, baseType: !262, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1523, file: !1524, line: 56, baseType: !262, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1523, file: !1524, line: 57, baseType: !262, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1523, file: !1524, line: 58, baseType: !262, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1523, file: !1524, line: 59, baseType: !262, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1523, file: !1524, line: 60, baseType: !262, size: 64, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1523, file: !1524, line: 61, baseType: !262, size: 64, offset: 512)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1523, file: !1524, line: 64, baseType: !262, size: 64, offset: 576)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1523, file: !1524, line: 65, baseType: !262, size: 64, offset: 640)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1523, file: !1524, line: 66, baseType: !262, size: 64, offset: 704)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1523, file: !1524, line: 68, baseType: !1539, size: 64, offset: 768)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1524, line: 36, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1523, file: !1524, line: 70, baseType: !1542, size: 64, offset: 832)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1523, file: !1524, line: 72, baseType: !260, size: 32, offset: 896)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1523, file: !1524, line: 73, baseType: !260, size: 32, offset: 928)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1523, file: !1524, line: 74, baseType: !1546, size: 64, offset: 960)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1547, line: 152, baseType: !328)
!1547 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1523, file: !1524, line: 77, baseType: !1549, size: 16, offset: 1024)
!1549 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1523, file: !1524, line: 78, baseType: !1274, size: 8, offset: 1040)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1523, file: !1524, line: 79, baseType: !354, size: 8, offset: 1048)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1523, file: !1524, line: 81, baseType: !1553, size: 64, offset: 1088)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1524, line: 43, baseType: null)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1523, file: !1524, line: 89, baseType: !1556, size: 64, offset: 1152)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1547, line: 153, baseType: !328)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1523, file: !1524, line: 91, baseType: !1558, size: 64, offset: 1216)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1524, line: 37, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1523, file: !1524, line: 92, baseType: !1561, size: 64, offset: 1280)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1524, line: 38, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1523, file: !1524, line: 93, baseType: !1542, size: 64, offset: 1344)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1523, file: !1524, line: 94, baseType: !264, size: 64, offset: 1408)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1523, file: !1524, line: 95, baseType: !714, size: 64, offset: 1472)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1523, file: !1524, line: 96, baseType: !260, size: 32, offset: 1536)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1523, file: !1524, line: 98, baseType: !1568, size: 160, offset: 1568)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 160, elements: !1569)
!1569 = !{!1570}
!1570 = !DISubrange(count: 20)
!1571 = !{!1572}
!1572 = !DILocalVariable(name: "__fp", arg: 1, scope: !1517, file: !1492, line: 56, type: !1520)
!1573 = !DILocation(line: 0, scope: !1517)
!1574 = !DILocation(line: 58, column: 10, scope: !1517)
!1575 = !DILocation(line: 58, column: 3, scope: !1517)
!1576 = distinct !DISubprogram(name: "getc_unlocked", scope: !1492, file: !1492, line: 66, type: !1518, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1577)
!1577 = !{!1578}
!1578 = !DILocalVariable(name: "__fp", arg: 1, scope: !1576, file: !1492, line: 66, type: !1520)
!1579 = !DILocation(line: 0, scope: !1576)
!1580 = !DILocation(line: 68, column: 10, scope: !1576)
!1581 = !DILocation(line: 68, column: 3, scope: !1576)
!1582 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1492, file: !1492, line: 73, type: !1511, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1513)
!1583 = !DILocation(line: 75, column: 10, scope: !1582)
!1584 = !DILocation(line: 75, column: 3, scope: !1582)
!1585 = distinct !DISubprogram(name: "putchar", scope: !1492, file: !1492, line: 82, type: !1586, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!260, !260}
!1588 = !{!1589}
!1589 = !DILocalVariable(name: "__c", arg: 1, scope: !1585, file: !1492, line: 82, type: !260)
!1590 = !DILocation(line: 0, scope: !1585)
!1591 = !DILocation(line: 84, column: 21, scope: !1585)
!1592 = !DILocation(line: 84, column: 10, scope: !1585)
!1593 = !DILocation(line: 84, column: 3, scope: !1585)
!1594 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1492, file: !1492, line: 91, type: !1595, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!260, !260, !1520}
!1597 = !{!1598, !1599}
!1598 = !DILocalVariable(name: "__c", arg: 1, scope: !1594, file: !1492, line: 91, type: !260)
!1599 = !DILocalVariable(name: "__stream", arg: 2, scope: !1594, file: !1492, line: 91, type: !1520)
!1600 = !DILocation(line: 0, scope: !1594)
!1601 = !DILocation(line: 93, column: 10, scope: !1594)
!1602 = !DILocation(line: 93, column: 3, scope: !1594)
!1603 = distinct !DISubprogram(name: "putc_unlocked", scope: !1492, file: !1492, line: 101, type: !1595, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1604)
!1604 = !{!1605, !1606}
!1605 = !DILocalVariable(name: "__c", arg: 1, scope: !1603, file: !1492, line: 101, type: !260)
!1606 = !DILocalVariable(name: "__stream", arg: 2, scope: !1603, file: !1492, line: 101, type: !1520)
!1607 = !DILocation(line: 0, scope: !1603)
!1608 = !DILocation(line: 103, column: 10, scope: !1603)
!1609 = !DILocation(line: 103, column: 3, scope: !1603)
!1610 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1492, file: !1492, line: 108, type: !1586, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1611)
!1611 = !{!1612}
!1612 = !DILocalVariable(name: "__c", arg: 1, scope: !1610, file: !1492, line: 108, type: !260)
!1613 = !DILocation(line: 0, scope: !1610)
!1614 = !DILocation(line: 110, column: 10, scope: !1610)
!1615 = !DILocation(line: 110, column: 3, scope: !1610)
!1616 = distinct !DISubprogram(name: "getline", scope: !1492, file: !1492, line: 118, type: !1617, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1621)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!1619, !261, !1620, !1520}
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1547, line: 193, baseType: !328)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!1621 = !{!1622, !1623, !1624}
!1622 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1616, file: !1492, line: 118, type: !261)
!1623 = !DILocalVariable(name: "__n", arg: 2, scope: !1616, file: !1492, line: 118, type: !1620)
!1624 = !DILocalVariable(name: "__stream", arg: 3, scope: !1616, file: !1492, line: 118, type: !1520)
!1625 = !DILocation(line: 0, scope: !1616)
!1626 = !DILocation(line: 120, column: 10, scope: !1616)
!1627 = !DILocation(line: 120, column: 3, scope: !1616)
!1628 = distinct !DISubprogram(name: "feof_unlocked", scope: !1492, file: !1492, line: 128, type: !1518, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1629)
!1629 = !{!1630}
!1630 = !DILocalVariable(name: "__stream", arg: 1, scope: !1628, file: !1492, line: 128, type: !1520)
!1631 = !DILocation(line: 0, scope: !1628)
!1632 = !DILocation(line: 130, column: 10, scope: !1628)
!1633 = !DILocation(line: 130, column: 3, scope: !1628)
!1634 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1492, file: !1492, line: 135, type: !1518, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1635)
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "__stream", arg: 1, scope: !1634, file: !1492, line: 135, type: !1520)
!1637 = !DILocation(line: 0, scope: !1634)
!1638 = !DILocation(line: 137, column: 10, scope: !1634)
!1639 = !DILocation(line: 137, column: 3, scope: !1634)
!1640 = distinct !DISubprogram(name: "tolower", scope: !1641, file: !1641, line: 207, type: !1586, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1642)
!1641 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1642 = !{!1643}
!1643 = !DILocalVariable(name: "__c", arg: 1, scope: !1640, file: !1641, line: 207, type: !260)
!1644 = !DILocation(line: 0, scope: !1640)
!1645 = !DILocation(line: 209, column: 22, scope: !1640)
!1646 = !DILocation(line: 209, column: 39, scope: !1640)
!1647 = !DILocation(line: 209, column: 38, scope: !1640)
!1648 = !DILocation(line: 209, column: 37, scope: !1640)
!1649 = !DILocation(line: 209, column: 10, scope: !1640)
!1650 = !DILocation(line: 209, column: 3, scope: !1640)
!1651 = distinct !DISubprogram(name: "toupper", scope: !1641, file: !1641, line: 213, type: !1586, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1652)
!1652 = !{!1653}
!1653 = !DILocalVariable(name: "__c", arg: 1, scope: !1651, file: !1641, line: 213, type: !260)
!1654 = !DILocation(line: 0, scope: !1651)
!1655 = !DILocation(line: 215, column: 22, scope: !1651)
!1656 = !DILocation(line: 215, column: 39, scope: !1651)
!1657 = !DILocation(line: 215, column: 38, scope: !1651)
!1658 = !DILocation(line: 215, column: 37, scope: !1651)
!1659 = !DILocation(line: 215, column: 10, scope: !1651)
!1660 = !DILocation(line: 215, column: 3, scope: !1651)
!1661 = distinct !DISubprogram(name: "atoi", scope: !1662, file: !1662, line: 361, type: !1663, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1665)
!1662 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!260, !265}
!1665 = !{!1666}
!1666 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1661, file: !1662, line: 361, type: !265)
!1667 = !DILocation(line: 0, scope: !1661)
!1668 = !DILocation(line: 363, column: 16, scope: !1661)
!1669 = !DILocation(line: 363, column: 10, scope: !1661)
!1670 = !DILocation(line: 363, column: 3, scope: !1661)
!1671 = distinct !DISubprogram(name: "atol", scope: !1662, file: !1662, line: 366, type: !1672, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1674)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!328, !265}
!1674 = !{!1675}
!1675 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1671, file: !1662, line: 366, type: !265)
!1676 = !DILocation(line: 0, scope: !1671)
!1677 = !DILocation(line: 368, column: 10, scope: !1671)
!1678 = !DILocation(line: 368, column: 3, scope: !1671)
!1679 = distinct !DISubprogram(name: "atoll", scope: !1662, file: !1662, line: 373, type: !1680, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1683)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!1682, !265}
!1682 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1683 = !{!1684}
!1684 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1679, file: !1662, line: 373, type: !265)
!1685 = !DILocation(line: 0, scope: !1679)
!1686 = !DILocation(line: 375, column: 10, scope: !1679)
!1687 = !DILocation(line: 375, column: 3, scope: !1679)
!1688 = distinct !DISubprogram(name: "bsearch", scope: !1689, file: !1689, line: 20, type: !1690, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1693)
!1689 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!264, !860, !860, !714, !714, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1662, line: 808, baseType: !864)
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703}
!1694 = !DILocalVariable(name: "__key", arg: 1, scope: !1688, file: !1689, line: 20, type: !860)
!1695 = !DILocalVariable(name: "__base", arg: 2, scope: !1688, file: !1689, line: 20, type: !860)
!1696 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1688, file: !1689, line: 20, type: !714)
!1697 = !DILocalVariable(name: "__size", arg: 4, scope: !1688, file: !1689, line: 20, type: !714)
!1698 = !DILocalVariable(name: "__compar", arg: 5, scope: !1688, file: !1689, line: 21, type: !1692)
!1699 = !DILocalVariable(name: "__l", scope: !1688, file: !1689, line: 23, type: !714)
!1700 = !DILocalVariable(name: "__u", scope: !1688, file: !1689, line: 23, type: !714)
!1701 = !DILocalVariable(name: "__idx", scope: !1688, file: !1689, line: 23, type: !714)
!1702 = !DILocalVariable(name: "__p", scope: !1688, file: !1689, line: 24, type: !860)
!1703 = !DILocalVariable(name: "__comparison", scope: !1688, file: !1689, line: 25, type: !260)
!1704 = !DILocation(line: 0, scope: !1688)
!1705 = !DILocation(line: 29, column: 3, scope: !1688)
!1706 = !DILocation(line: 27, column: 7, scope: !1688)
!1707 = !DILocation(line: 29, column: 14, scope: !1688)
!1708 = !DILocation(line: 31, column: 20, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1688, file: !1689, line: 30, column: 5)
!1710 = !DILocation(line: 31, column: 27, scope: !1709)
!1711 = !DILocation(line: 32, column: 56, scope: !1709)
!1712 = !DILocation(line: 32, column: 47, scope: !1709)
!1713 = !DILocation(line: 33, column: 22, scope: !1709)
!1714 = !DILocation(line: 34, column: 24, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1709, file: !1689, line: 34, column: 11)
!1716 = !DILocation(line: 34, column: 11, scope: !1709)
!1717 = !DILocation(line: 36, column: 29, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !1689, line: 36, column: 16)
!1719 = !DILocation(line: 36, column: 16, scope: !1715)
!1720 = !DILocation(line: 37, column: 14, scope: !1718)
!1721 = distinct !{!1721, !1705, !1722}
!1722 = !DILocation(line: 40, column: 5, scope: !1688)
!1723 = !DILocation(line: 43, column: 1, scope: !1688)
!1724 = distinct !DISubprogram(name: "atof", scope: !1725, file: !1725, line: 25, type: !1726, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1729)
!1725 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1728, !265}
!1728 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1729 = !{!1730}
!1730 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1724, file: !1725, line: 25, type: !265)
!1731 = !DILocation(line: 0, scope: !1724)
!1732 = !DILocation(line: 27, column: 10, scope: !1724)
!1733 = !DILocation(line: 27, column: 3, scope: !1724)
!1734 = distinct !DISubprogram(name: "strtoimax", scope: !1735, file: !1735, line: 324, type: !1736, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1742)
!1735 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!1738, !1495, !1741, !260}
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1739, line: 101, baseType: !1740)
!1739 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1547, line: 72, baseType: !328)
!1741 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !261)
!1742 = !{!1743, !1744, !1745}
!1743 = !DILocalVariable(name: "nptr", arg: 1, scope: !1734, file: !1735, line: 324, type: !1495)
!1744 = !DILocalVariable(name: "endptr", arg: 2, scope: !1734, file: !1735, line: 324, type: !1741)
!1745 = !DILocalVariable(name: "base", arg: 3, scope: !1734, file: !1735, line: 324, type: !260)
!1746 = !DILocation(line: 0, scope: !1734)
!1747 = !DILocation(line: 327, column: 10, scope: !1734)
!1748 = !DILocation(line: 327, column: 3, scope: !1734)
!1749 = distinct !DISubprogram(name: "strtoumax", scope: !1735, file: !1735, line: 336, type: !1750, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1752, !1495, !1741, !260}
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1739, line: 102, baseType: !1753)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1547, line: 73, baseType: !326)
!1754 = !{!1755, !1756, !1757}
!1755 = !DILocalVariable(name: "nptr", arg: 1, scope: !1749, file: !1735, line: 336, type: !1495)
!1756 = !DILocalVariable(name: "endptr", arg: 2, scope: !1749, file: !1735, line: 336, type: !1741)
!1757 = !DILocalVariable(name: "base", arg: 3, scope: !1749, file: !1735, line: 336, type: !260)
!1758 = !DILocation(line: 0, scope: !1749)
!1759 = !DILocation(line: 339, column: 10, scope: !1749)
!1760 = !DILocation(line: 339, column: 3, scope: !1749)
!1761 = distinct !DISubprogram(name: "wcstoimax", scope: !1735, file: !1735, line: 348, type: !1762, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1771)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1738, !1764, !1768, !260}
!1764 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1765)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1767)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1735, line: 34, baseType: !260)
!1768 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1769)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1771 = !{!1772, !1773, !1774}
!1772 = !DILocalVariable(name: "nptr", arg: 1, scope: !1761, file: !1735, line: 348, type: !1764)
!1773 = !DILocalVariable(name: "endptr", arg: 2, scope: !1761, file: !1735, line: 348, type: !1768)
!1774 = !DILocalVariable(name: "base", arg: 3, scope: !1761, file: !1735, line: 348, type: !260)
!1775 = !DILocation(line: 0, scope: !1761)
!1776 = !DILocation(line: 351, column: 10, scope: !1761)
!1777 = !DILocation(line: 351, column: 3, scope: !1761)
!1778 = distinct !DISubprogram(name: "wcstoumax", scope: !1735, file: !1735, line: 362, type: !1779, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!1752, !1764, !1768, !260}
!1781 = !{!1782, !1783, !1784}
!1782 = !DILocalVariable(name: "nptr", arg: 1, scope: !1778, file: !1735, line: 362, type: !1764)
!1783 = !DILocalVariable(name: "endptr", arg: 2, scope: !1778, file: !1735, line: 362, type: !1768)
!1784 = !DILocalVariable(name: "base", arg: 3, scope: !1778, file: !1735, line: 362, type: !260)
!1785 = !DILocation(line: 0, scope: !1778)
!1786 = !DILocation(line: 365, column: 10, scope: !1778)
!1787 = !DILocation(line: 365, column: 3, scope: !1778)
!1788 = distinct !DISubprogram(name: "stat", scope: !1789, file: !1789, line: 453, type: !1790, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!1789 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!260, !265, !1792}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1794, line: 46, size: 1152, elements: !1795)
!1794 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1795 = !{!1796, !1798, !1800, !1802, !1804, !1806, !1808, !1809, !1810, !1811, !1813, !1815, !1823, !1824, !1825}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1793, file: !1794, line: 48, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1547, line: 145, baseType: !326)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1793, file: !1794, line: 53, baseType: !1799, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1547, line: 148, baseType: !326)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1793, file: !1794, line: 61, baseType: !1801, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1547, line: 151, baseType: !326)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1793, file: !1794, line: 62, baseType: !1803, size: 32, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1547, line: 150, baseType: !7)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1793, file: !1794, line: 64, baseType: !1805, size: 32, offset: 224)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1547, line: 146, baseType: !7)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1793, file: !1794, line: 65, baseType: !1807, size: 32, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1547, line: 147, baseType: !7)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1793, file: !1794, line: 67, baseType: !260, size: 32, offset: 288)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1793, file: !1794, line: 69, baseType: !1797, size: 64, offset: 320)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1793, file: !1794, line: 74, baseType: !1546, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1793, file: !1794, line: 78, baseType: !1812, size: 64, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1547, line: 174, baseType: !328)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1793, file: !1794, line: 80, baseType: !1814, size: 64, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1547, line: 179, baseType: !328)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1793, file: !1794, line: 91, baseType: !1816, size: 128, offset: 576)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1817, line: 10, size: 128, elements: !1818)
!1817 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1818 = !{!1819, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1816, file: !1817, line: 12, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1547, line: 160, baseType: !328)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1816, file: !1817, line: 16, baseType: !1822, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1547, line: 196, baseType: !328)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1793, file: !1794, line: 92, baseType: !1816, size: 128, offset: 704)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1793, file: !1794, line: 93, baseType: !1816, size: 128, offset: 832)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1793, file: !1794, line: 106, baseType: !1826, size: 192, offset: 960)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1822, size: 192, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: 3)
!1829 = !{!1830, !1831}
!1830 = !DILocalVariable(name: "__path", arg: 1, scope: !1788, file: !1789, line: 453, type: !265)
!1831 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1788, file: !1789, line: 453, type: !1792)
!1832 = !DILocation(line: 0, scope: !1788)
!1833 = !DILocation(line: 455, column: 10, scope: !1788)
!1834 = !DILocation(line: 455, column: 3, scope: !1788)
!1835 = distinct !DISubprogram(name: "lstat", scope: !1789, file: !1789, line: 460, type: !1790, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1836 = !{!1837, !1838}
!1837 = !DILocalVariable(name: "__path", arg: 1, scope: !1835, file: !1789, line: 460, type: !265)
!1838 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1835, file: !1789, line: 460, type: !1792)
!1839 = !DILocation(line: 0, scope: !1835)
!1840 = !DILocation(line: 462, column: 10, scope: !1835)
!1841 = !DILocation(line: 462, column: 3, scope: !1835)
!1842 = distinct !DISubprogram(name: "fstat", scope: !1789, file: !1789, line: 467, type: !1843, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!260, !260, !1792}
!1845 = !{!1846, !1847}
!1846 = !DILocalVariable(name: "__fd", arg: 1, scope: !1842, file: !1789, line: 467, type: !260)
!1847 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1842, file: !1789, line: 467, type: !1792)
!1848 = !DILocation(line: 0, scope: !1842)
!1849 = !DILocation(line: 469, column: 10, scope: !1842)
!1850 = !DILocation(line: 469, column: 3, scope: !1842)
!1851 = distinct !DISubprogram(name: "fstatat", scope: !1789, file: !1789, line: 474, type: !1852, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!260, !260, !265, !1792, !260}
!1854 = !{!1855, !1856, !1857, !1858}
!1855 = !DILocalVariable(name: "__fd", arg: 1, scope: !1851, file: !1789, line: 474, type: !260)
!1856 = !DILocalVariable(name: "__filename", arg: 2, scope: !1851, file: !1789, line: 474, type: !265)
!1857 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1851, file: !1789, line: 474, type: !1792)
!1858 = !DILocalVariable(name: "__flag", arg: 4, scope: !1851, file: !1789, line: 474, type: !260)
!1859 = !DILocation(line: 0, scope: !1851)
!1860 = !DILocation(line: 477, column: 10, scope: !1851)
!1861 = !DILocation(line: 477, column: 3, scope: !1851)
!1862 = distinct !DISubprogram(name: "mknod", scope: !1789, file: !1789, line: 483, type: !1863, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1865)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!260, !265, !1803, !1797}
!1865 = !{!1866, !1867, !1868}
!1866 = !DILocalVariable(name: "__path", arg: 1, scope: !1862, file: !1789, line: 483, type: !265)
!1867 = !DILocalVariable(name: "__mode", arg: 2, scope: !1862, file: !1789, line: 483, type: !1803)
!1868 = !DILocalVariable(name: "__dev", arg: 3, scope: !1862, file: !1789, line: 483, type: !1797)
!1869 = !DILocation(line: 0, scope: !1862)
!1870 = !DILocation(line: 485, column: 10, scope: !1862)
!1871 = !DILocation(line: 485, column: 3, scope: !1862)
!1872 = distinct !DISubprogram(name: "mknodat", scope: !1789, file: !1789, line: 491, type: !1873, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!260, !260, !265, !1803, !1797}
!1875 = !{!1876, !1877, !1878, !1879}
!1876 = !DILocalVariable(name: "__fd", arg: 1, scope: !1872, file: !1789, line: 491, type: !260)
!1877 = !DILocalVariable(name: "__path", arg: 2, scope: !1872, file: !1789, line: 491, type: !265)
!1878 = !DILocalVariable(name: "__mode", arg: 3, scope: !1872, file: !1789, line: 491, type: !1803)
!1879 = !DILocalVariable(name: "__dev", arg: 4, scope: !1872, file: !1789, line: 491, type: !1797)
!1880 = !DILocation(line: 0, scope: !1872)
!1881 = !DILocation(line: 494, column: 10, scope: !1872)
!1882 = !DILocation(line: 494, column: 3, scope: !1872)
!1883 = distinct !DISubprogram(name: "stat64", scope: !1789, file: !1789, line: 502, type: !1884, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1906)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!260, !265, !1886}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1794, line: 119, size: 1152, elements: !1888)
!1888 = !{!1889, !1890, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1902, !1903, !1904, !1905}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1887, file: !1794, line: 121, baseType: !1797, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1887, file: !1794, line: 123, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1547, line: 149, baseType: !326)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1887, file: !1794, line: 124, baseType: !1801, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1887, file: !1794, line: 125, baseType: !1803, size: 32, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1887, file: !1794, line: 132, baseType: !1805, size: 32, offset: 224)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1887, file: !1794, line: 133, baseType: !1807, size: 32, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1887, file: !1794, line: 135, baseType: !260, size: 32, offset: 288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1887, file: !1794, line: 136, baseType: !1797, size: 64, offset: 320)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1887, file: !1794, line: 137, baseType: !1546, size: 64, offset: 384)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1887, file: !1794, line: 143, baseType: !1812, size: 64, offset: 448)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1887, file: !1794, line: 144, baseType: !1901, size: 64, offset: 512)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1547, line: 180, baseType: !328)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1887, file: !1794, line: 152, baseType: !1816, size: 128, offset: 576)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1887, file: !1794, line: 153, baseType: !1816, size: 128, offset: 704)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1887, file: !1794, line: 154, baseType: !1816, size: 128, offset: 832)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1887, file: !1794, line: 164, baseType: !1826, size: 192, offset: 960)
!1906 = !{!1907, !1908}
!1907 = !DILocalVariable(name: "__path", arg: 1, scope: !1883, file: !1789, line: 502, type: !265)
!1908 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1883, file: !1789, line: 502, type: !1886)
!1909 = !DILocation(line: 0, scope: !1883)
!1910 = !DILocation(line: 504, column: 10, scope: !1883)
!1911 = !DILocation(line: 504, column: 3, scope: !1883)
!1912 = distinct !DISubprogram(name: "lstat64", scope: !1789, file: !1789, line: 509, type: !1884, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1913)
!1913 = !{!1914, !1915}
!1914 = !DILocalVariable(name: "__path", arg: 1, scope: !1912, file: !1789, line: 509, type: !265)
!1915 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1912, file: !1789, line: 509, type: !1886)
!1916 = !DILocation(line: 0, scope: !1912)
!1917 = !DILocation(line: 511, column: 10, scope: !1912)
!1918 = !DILocation(line: 511, column: 3, scope: !1912)
!1919 = distinct !DISubprogram(name: "fstat64", scope: !1789, file: !1789, line: 516, type: !1920, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1922)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!260, !260, !1886}
!1922 = !{!1923, !1924}
!1923 = !DILocalVariable(name: "__fd", arg: 1, scope: !1919, file: !1789, line: 516, type: !260)
!1924 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1919, file: !1789, line: 516, type: !1886)
!1925 = !DILocation(line: 0, scope: !1919)
!1926 = !DILocation(line: 518, column: 10, scope: !1919)
!1927 = !DILocation(line: 518, column: 3, scope: !1919)
!1928 = distinct !DISubprogram(name: "fstatat64", scope: !1789, file: !1789, line: 523, type: !1929, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!260, !260, !265, !1886, !260}
!1931 = !{!1932, !1933, !1934, !1935}
!1932 = !DILocalVariable(name: "__fd", arg: 1, scope: !1928, file: !1789, line: 523, type: !260)
!1933 = !DILocalVariable(name: "__filename", arg: 2, scope: !1928, file: !1789, line: 523, type: !265)
!1934 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1928, file: !1789, line: 523, type: !1886)
!1935 = !DILocalVariable(name: "__flag", arg: 4, scope: !1928, file: !1789, line: 523, type: !260)
!1936 = !DILocation(line: 0, scope: !1928)
!1937 = !DILocation(line: 526, column: 10, scope: !1928)
!1938 = !DILocation(line: 526, column: 3, scope: !1928)
!1939 = distinct !DISubprogram(name: "varpool_node_name", scope: !3, file: !3, line: 84, type: !1940, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!265, !268}
!1942 = !{!1943}
!1943 = !DILocalVariable(name: "node", arg: 1, scope: !1939, file: !3, line: 84, type: !268)
!1944 = !DILocation(line: 0, scope: !1939)
!1945 = !DILocation(line: 86, column: 21, scope: !1939)
!1946 = !DILocation(line: 86, column: 48, scope: !1939)
!1947 = !DILocation(line: 86, column: 10, scope: !1939)
!1948 = !DILocation(line: 86, column: 3, scope: !1939)
!1949 = distinct !DISubprogram(name: "varpool_node", scope: !3, file: !3, line: 110, type: !1950, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1952)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!268, !272}
!1952 = !{!1953, !1954, !1955, !1956}
!1953 = !DILocalVariable(name: "decl", arg: 1, scope: !1949, file: !3, line: 110, type: !272)
!1954 = !DILocalVariable(name: "key", scope: !1949, file: !3, line: 112, type: !269)
!1955 = !DILocalVariable(name: "node", scope: !1949, file: !3, line: 112, type: !268)
!1956 = !DILocalVariable(name: "slot", scope: !1949, file: !3, line: 112, type: !267)
!1957 = !DILocation(line: 0, scope: !1949)
!1958 = !DILocation(line: 112, column: 3, scope: !1949)
!1959 = !DILocation(line: 114, column: 3, scope: !1949)
!1960 = !DILocation(line: 116, column: 8, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 116, column: 7)
!1962 = !DILocation(line: 116, column: 7, scope: !1949)
!1963 = !DILocation(line: 117, column: 20, scope: !1961)
!1964 = !DILocation(line: 117, column: 18, scope: !1961)
!1965 = !DILocation(line: 117, column: 5, scope: !1961)
!1966 = !DILocation(line: 121, column: 21, scope: !1949)
!1967 = !DILocation(line: 119, column: 7, scope: !1949)
!1968 = !DILocation(line: 119, column: 12, scope: !1949)
!1969 = !DILocation(line: 121, column: 5, scope: !1949)
!1970 = !DILocation(line: 120, column: 10, scope: !1949)
!1971 = !DILocation(line: 122, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 122, column: 7)
!1973 = !DILocation(line: 122, column: 7, scope: !1949)
!1974 = !DILocation(line: 123, column: 5, scope: !1972)
!1975 = !DILocation(line: 124, column: 10, scope: !1949)
!1976 = !DILocation(line: 125, column: 9, scope: !1949)
!1977 = !DILocation(line: 125, column: 14, scope: !1949)
!1978 = !DILocation(line: 126, column: 29, scope: !1949)
!1979 = !DILocation(line: 126, column: 9, scope: !1949)
!1980 = !DILocation(line: 126, column: 15, scope: !1949)
!1981 = !DILocation(line: 127, column: 16, scope: !1949)
!1982 = !DILocation(line: 127, column: 9, scope: !1949)
!1983 = !DILocation(line: 127, column: 14, scope: !1949)
!1984 = !DILocation(line: 128, column: 17, scope: !1949)
!1985 = !DILocation(line: 129, column: 9, scope: !1949)
!1986 = !DILocation(line: 130, column: 3, scope: !1949)
!1987 = !DILocation(line: 131, column: 1, scope: !1949)
!1988 = distinct !DISubprogram(name: "hash_varpool_node", scope: !3, file: !3, line: 91, type: !857, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1989)
!1989 = !{!1990, !1991}
!1990 = !DILocalVariable(name: "p", arg: 1, scope: !1988, file: !3, line: 91, type: !860)
!1991 = !DILocalVariable(name: "n", scope: !1988, file: !3, line: 93, type: !1458)
!1992 = !DILocation(line: 0, scope: !1988)
!1993 = !DILocation(line: 94, column: 22, scope: !1988)
!1994 = !DILocation(line: 94, column: 3, scope: !1988)
!1995 = distinct !DISubprogram(name: "eq_varpool_node", scope: !3, file: !3, line: 99, type: !865, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!1996 = !{!1997, !1998, !1999, !2000}
!1997 = !DILocalVariable(name: "p1", arg: 1, scope: !1995, file: !3, line: 99, type: !860)
!1998 = !DILocalVariable(name: "p2", arg: 2, scope: !1995, file: !3, line: 99, type: !860)
!1999 = !DILocalVariable(name: "n1", scope: !1995, file: !3, line: 101, type: !1458)
!2000 = !DILocalVariable(name: "n2", scope: !1995, file: !3, line: 103, type: !1458)
!2001 = !DILocation(line: 0, scope: !1995)
!2002 = !DILocation(line: 105, column: 10, scope: !1995)
!2003 = !DILocation(line: 105, column: 33, scope: !1995)
!2004 = !DILocation(line: 105, column: 30, scope: !1995)
!2005 = !DILocation(line: 105, column: 3, scope: !1995)
!2006 = distinct !DISubprogram(name: "dump_varpool_node", scope: !3, file: !3, line: 135, type: !2007, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !1520, !268}
!2009 = !{!2010, !2011}
!2010 = !DILocalVariable(name: "f", arg: 1, scope: !2006, file: !3, line: 135, type: !1520)
!2011 = !DILocalVariable(name: "node", arg: 2, scope: !2006, file: !3, line: 135, type: !268)
!2012 = !DILocation(line: 0, scope: !2006)
!2013 = !DILocation(line: 137, column: 22, scope: !2006)
!2014 = !DILocation(line: 137, column: 3, scope: !2006)
!2015 = !DILocation(line: 139, column: 5, scope: !2006)
!2016 = !DILocation(line: 140, column: 33, scope: !2006)
!2017 = !DILocation(line: 140, column: 7, scope: !2006)
!2018 = !DILocation(line: 138, column: 3, scope: !2006)
!2019 = !DILocation(line: 142, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 142, column: 7)
!2021 = !DILocation(line: 142, column: 7, scope: !2006)
!2022 = !DILocation(line: 143, column: 5, scope: !2020)
!2023 = !DILocation(line: 144, column: 13, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 144, column: 7)
!2025 = !DILocation(line: 144, column: 7, scope: !2024)
!2026 = !DILocation(line: 144, column: 7, scope: !2006)
!2027 = !DILocation(line: 145, column: 5, scope: !2024)
!2028 = !DILocation(line: 146, column: 13, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 146, column: 7)
!2030 = !DILocation(line: 146, column: 7, scope: !2029)
!2031 = !DILocation(line: 146, column: 7, scope: !2006)
!2032 = !DILocation(line: 147, column: 5, scope: !2029)
!2033 = !DILocation(line: 148, column: 13, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 148, column: 7)
!2035 = !DILocation(line: 148, column: 7, scope: !2034)
!2036 = !DILocation(line: 148, column: 7, scope: !2006)
!2037 = !DILocation(line: 149, column: 5, scope: !2034)
!2038 = !DILocation(line: 150, column: 13, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 150, column: 7)
!2040 = !DILocation(line: 150, column: 7, scope: !2039)
!2041 = !DILocation(line: 150, column: 7, scope: !2006)
!2042 = !DILocation(line: 151, column: 5, scope: !2039)
!2043 = !DILocation(line: 152, column: 13, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 152, column: 7)
!2045 = !DILocation(line: 152, column: 7, scope: !2044)
!2046 = !DILocation(line: 152, column: 7, scope: !2006)
!2047 = !DILocation(line: 153, column: 5, scope: !2044)
!2048 = !DILocation(line: 154, column: 3, scope: !2006)
!2049 = !DILocation(line: 155, column: 1, scope: !2006)
!2050 = distinct !DISubprogram(name: "cgraph_variable_initializer_availability", scope: !3, file: !3, line: 324, type: !2051, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!249, !268}
!2053 = !{!2054}
!2054 = !DILocalVariable(name: "node", arg: 1, scope: !2050, file: !3, line: 324, type: !268)
!2055 = !DILocation(line: 0, scope: !2050)
!2056 = !DILocation(line: 326, column: 3, scope: !2050)
!2057 = !DILocation(line: 327, column: 14, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 327, column: 7)
!2059 = !DILocation(line: 327, column: 8, scope: !2058)
!2060 = !DILocation(line: 327, column: 7, scope: !2050)
!2061 = !DILocation(line: 329, column: 8, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 329, column: 7)
!2063 = !DILocation(line: 329, column: 7, scope: !2050)
!2064 = !DILocation(line: 334, column: 18, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 334, column: 7)
!2066 = !DILocation(line: 334, column: 8, scope: !2065)
!2067 = !DILocation(line: 334, column: 46, scope: !2065)
!2068 = !DILocation(line: 334, column: 50, scope: !2065)
!2069 = !DILocation(line: 334, column: 7, scope: !2050)
!2070 = !DILocation(line: 336, column: 3, scope: !2050)
!2071 = !DILocation(line: 337, column: 1, scope: !2050)
!2072 = distinct !DISubprogram(name: "dump_varpool", scope: !3, file: !3, line: 159, type: !2073, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null, !1520}
!2075 = !{!2076, !2077}
!2076 = !DILocalVariable(name: "f", arg: 1, scope: !2072, file: !3, line: 159, type: !1520)
!2077 = !DILocalVariable(name: "node", scope: !2072, file: !3, line: 161, type: !268)
!2078 = !DILocation(line: 0, scope: !2072)
!2079 = !DILocation(line: 163, column: 3, scope: !2072)
!2080 = !DILocation(line: 164, column: 8, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 164, column: 3)
!2082 = !DILocation(line: 0, scope: !2081)
!2083 = !DILocation(line: 164, column: 3, scope: !2081)
!2084 = !DILocation(line: 165, column: 5, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 164, column: 3)
!2086 = !DILocation(line: 164, column: 49, scope: !2085)
!2087 = !DILocation(line: 164, column: 3, scope: !2085)
!2088 = distinct !{!2088, !2083, !2089}
!2089 = !DILocation(line: 165, column: 31, scope: !2081)
!2090 = !DILocation(line: 166, column: 1, scope: !2072)
!2091 = distinct !DISubprogram(name: "debug_varpool", scope: !3, file: !3, line: 171, type: !2092, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1513)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{null}
!2094 = !DILocation(line: 173, column: 17, scope: !2091)
!2095 = !DILocation(line: 173, column: 3, scope: !2091)
!2096 = !DILocation(line: 174, column: 1, scope: !2091)
!2097 = distinct !DISubprogram(name: "varpool_node_for_asm", scope: !3, file: !3, line: 178, type: !1950, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2098)
!2098 = !{!2099, !2100}
!2099 = !DILocalVariable(name: "asmname", arg: 1, scope: !2097, file: !3, line: 178, type: !272)
!2100 = !DILocalVariable(name: "node", scope: !2097, file: !3, line: 180, type: !268)
!2101 = !DILocation(line: 0, scope: !2097)
!2102 = !DILocation(line: 182, column: 8, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 182, column: 3)
!2104 = !DILocation(line: 0, scope: !2103)
!2105 = !DILocation(line: 182, column: 3, scope: !2103)
!2106 = !DILocation(line: 183, column: 42, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 183, column: 9)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 182, column: 3)
!2109 = !DILocation(line: 183, column: 9, scope: !2107)
!2110 = !DILocation(line: 183, column: 9, scope: !2108)
!2111 = !DILocation(line: 182, column: 50, scope: !2108)
!2112 = !DILocation(line: 182, column: 3, scope: !2108)
!2113 = distinct !{!2113, !2105, !2114}
!2114 = !DILocation(line: 184, column: 14, scope: !2103)
!2115 = !DILocation(line: 187, column: 1, scope: !2097)
!2116 = distinct !DISubprogram(name: "varpool_mark_needed_node", scope: !3, file: !3, line: 208, type: !2117, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !268}
!2119 = !{!2120}
!2120 = !DILocalVariable(name: "node", arg: 1, scope: !2116, file: !3, line: 208, type: !268)
!2121 = !DILocation(line: 0, scope: !2116)
!2122 = !DILocation(line: 210, column: 13, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 210, column: 7)
!2124 = !DILocation(line: 210, column: 7, scope: !2123)
!2125 = !DILocation(line: 210, column: 19, scope: !2123)
!2126 = !DILocation(line: 210, column: 28, scope: !2123)
!2127 = !DILocation(line: 210, column: 22, scope: !2123)
!2128 = !DILocation(line: 210, column: 7, scope: !2116)
!2129 = !DILocation(line: 0, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 212, column: 7)
!2131 = !DILocation(line: 212, column: 14, scope: !2130)
!2132 = !DILocation(line: 211, column: 5, scope: !2123)
!2133 = !DILocation(line: 212, column: 8, scope: !2130)
!2134 = !DILocation(line: 212, column: 21, scope: !2130)
!2135 = !DILocation(line: 212, column: 30, scope: !2130)
!2136 = !DILocation(line: 212, column: 24, scope: !2130)
!2137 = !DILocation(line: 213, column: 7, scope: !2130)
!2138 = !DILocation(line: 213, column: 11, scope: !2130)
!2139 = !DILocation(line: 212, column: 7, scope: !2116)
!2140 = !DILocation(line: 214, column: 5, scope: !2130)
!2141 = !DILocation(line: 215, column: 16, scope: !2116)
!2142 = !DILocation(line: 216, column: 1, scope: !2116)
!2143 = distinct !DISubprogram(name: "varpool_enqueue_needed_node", scope: !3, file: !3, line: 192, type: !2117, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2144 = !{!2145}
!2145 = !DILocalVariable(name: "node", arg: 1, scope: !2143, file: !3, line: 192, type: !268)
!2146 = !DILocation(line: 0, scope: !2143)
!2147 = !DILocation(line: 194, column: 7, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 194, column: 7)
!2149 = !DILocation(line: 194, column: 7, scope: !2143)
!2150 = !DILocation(line: 195, column: 31, scope: !2148)
!2151 = !DILocation(line: 195, column: 43, scope: !2148)
!2152 = !DILocation(line: 195, column: 5, scope: !2148)
!2153 = !DILocation(line: 196, column: 28, scope: !2143)
!2154 = !DILocation(line: 197, column: 9, scope: !2143)
!2155 = !DILocation(line: 197, column: 21, scope: !2143)
!2156 = !DILocation(line: 198, column: 8, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 198, column: 7)
!2158 = !DILocation(line: 198, column: 7, scope: !2143)
!2159 = !DILocation(line: 199, column: 25, scope: !2157)
!2160 = !DILocation(line: 199, column: 5, scope: !2157)
!2161 = !DILocation(line: 200, column: 8, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 200, column: 7)
!2163 = !DILocation(line: 200, column: 7, scope: !2143)
!2164 = !DILocation(line: 201, column: 35, scope: !2162)
!2165 = !DILocation(line: 201, column: 5, scope: !2162)
!2166 = !DILocation(line: 202, column: 31, scope: !2143)
!2167 = !DILocation(line: 202, column: 3, scope: !2143)
!2168 = !DILocation(line: 203, column: 1, scope: !2143)
!2169 = distinct !DISubprogram(name: "decide_is_variable_needed", scope: !3, file: !3, line: 231, type: !2170, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!259, !268, !272}
!2172 = !{!2173, !2174, !2175}
!2173 = !DILocalVariable(name: "node", arg: 1, scope: !2169, file: !3, line: 231, type: !268)
!2174 = !DILocalVariable(name: "decl", arg: 2, scope: !2169, file: !3, line: 231, type: !272)
!2175 = !DILocalVariable(name: "control", scope: !2176, file: !3, line: 261, type: !272)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 260, column: 5)
!2177 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 257, column: 7)
!2178 = !DILocation(line: 0, scope: !2169)
!2179 = !DILocation(line: 234, column: 14, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 234, column: 7)
!2181 = !DILocation(line: 234, column: 8, scope: !2180)
!2182 = !DILocation(line: 234, column: 33, scope: !2180)
!2183 = !DILocation(line: 234, column: 37, scope: !2180)
!2184 = !DILocation(line: 235, column: 7, scope: !2180)
!2185 = !DILocation(line: 235, column: 16, scope: !2180)
!2186 = !DILocation(line: 235, column: 10, scope: !2180)
!2187 = !DILocation(line: 234, column: 7, scope: !2169)
!2188 = !DILocation(line: 241, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 241, column: 7)
!2190 = !DILocation(line: 242, column: 7, scope: !2189)
!2191 = !DILocation(line: 242, column: 10, scope: !2189)
!2192 = !DILocation(line: 241, column: 7, scope: !2169)
!2193 = !DILocation(line: 247, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 247, column: 7)
!2195 = !DILocation(line: 248, column: 11, scope: !2194)
!2196 = !DILocation(line: 249, column: 11, scope: !2194)
!2197 = !DILocation(line: 248, column: 7, scope: !2194)
!2198 = !DILocation(line: 250, column: 11, scope: !2194)
!2199 = !DILocation(line: 251, column: 11, scope: !2194)
!2200 = !DILocation(line: 252, column: 7, scope: !2194)
!2201 = !DILocation(line: 252, column: 11, scope: !2194)
!2202 = !DILocation(line: 247, column: 7, scope: !2169)
!2203 = !DILocation(line: 257, column: 16, scope: !2177)
!2204 = !DILocation(line: 257, column: 8, scope: !2177)
!2205 = !DILocation(line: 258, column: 7, scope: !2177)
!2206 = !DILocation(line: 258, column: 27, scope: !2177)
!2207 = !DILocation(line: 259, column: 7, scope: !2177)
!2208 = !DILocation(line: 259, column: 10, scope: !2177)
!2209 = !DILocation(line: 257, column: 7, scope: !2169)
!2210 = !DILocation(line: 261, column: 22, scope: !2176)
!2211 = !DILocation(line: 0, scope: !2176)
!2212 = !DILocation(line: 262, column: 38, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 262, column: 11)
!2214 = !DILocation(line: 262, column: 11, scope: !2213)
!2215 = !DILocation(line: 268, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 268, column: 7)
!2217 = !DILocation(line: 268, column: 7, scope: !2169)
!2218 = !DILocation(line: 272, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 272, column: 7)
!2220 = !DILocation(line: 275, column: 1, scope: !2169)
!2221 = distinct !DISubprogram(name: "varpool_finalize_decl", scope: !3, file: !3, line: 281, type: !2222, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2224)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !272}
!2224 = !{!2225, !2226}
!2225 = !DILocalVariable(name: "decl", arg: 1, scope: !2221, file: !3, line: 281, type: !272)
!2226 = !DILocalVariable(name: "node", scope: !2221, file: !3, line: 283, type: !268)
!2227 = !DILocation(line: 0, scope: !2221)
!2228 = !DILocation(line: 283, column: 31, scope: !2221)
!2229 = !DILocation(line: 293, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 293, column: 7)
!2231 = !DILocation(line: 293, column: 7, scope: !2221)
!2232 = !DILocation(line: 0, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 300, column: 7)
!2234 = !DILocation(line: 300, column: 13, scope: !2233)
!2235 = !DILocation(line: 294, column: 11, scope: !2230)
!2236 = !DILocation(line: 294, column: 20, scope: !2230)
!2237 = !DILocation(line: 294, column: 5, scope: !2230)
!2238 = !DILocation(line: 300, column: 7, scope: !2233)
!2239 = !DILocation(line: 300, column: 7, scope: !2221)
!2240 = !DILocation(line: 302, column: 11, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 302, column: 11)
!2242 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 301, column: 5)
!2243 = !DILocation(line: 302, column: 11, scope: !2242)
!2244 = !DILocation(line: 303, column: 2, scope: !2241)
!2245 = !DILocation(line: 306, column: 13, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 306, column: 7)
!2247 = !DILocation(line: 306, column: 7, scope: !2246)
!2248 = !DILocation(line: 306, column: 7, scope: !2221)
!2249 = !DILocation(line: 307, column: 5, scope: !2246)
!2250 = !DILocation(line: 308, column: 19, scope: !2221)
!2251 = !DILocation(line: 310, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 310, column: 7)
!2253 = !DILocation(line: 310, column: 7, scope: !2221)
!2254 = !DILocation(line: 311, column: 5, scope: !2252)
!2255 = !DILocation(line: 315, column: 12, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 315, column: 12)
!2257 = !DILocation(line: 315, column: 31, scope: !2256)
!2258 = !DILocation(line: 315, column: 35, scope: !2256)
!2259 = !DILocation(line: 315, column: 54, scope: !2256)
!2260 = !DILocation(line: 315, column: 58, scope: !2256)
!2261 = !DILocation(line: 315, column: 12, scope: !2252)
!2262 = !DILocation(line: 316, column: 5, scope: !2256)
!2263 = !DILocation(line: 317, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 317, column: 7)
!2265 = !DILocation(line: 317, column: 7, scope: !2221)
!2266 = !DILocation(line: 318, column: 5, scope: !2264)
!2267 = !DILocation(line: 319, column: 1, scope: !2221)
!2268 = distinct !DISubprogram(name: "varpool_assemble_pending_decls", scope: !3, file: !3, line: 453, type: !2269, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!259}
!2271 = !{!2272, !2273}
!2272 = !DILocalVariable(name: "changed", scope: !2268, file: !3, line: 455, type: !259)
!2273 = !DILocalVariable(name: "node", scope: !2274, file: !3, line: 467, type: !268)
!2274 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 466, column: 5)
!2275 = !DILocation(line: 0, scope: !2268)
!2276 = !DILocation(line: 457, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 457, column: 7)
!2278 = !DILocation(line: 457, column: 18, scope: !2277)
!2279 = !DILocation(line: 457, column: 21, scope: !2277)
!2280 = !DILocation(line: 457, column: 7, scope: !2268)
!2281 = !DILocation(line: 463, column: 3, scope: !2268)
!2282 = !DILocation(line: 465, column: 3, scope: !2268)
!2283 = !DILocation(line: 465, column: 10, scope: !2268)
!2284 = !DILocation(line: 0, scope: !2274)
!2285 = !DILocation(line: 469, column: 50, scope: !2274)
!2286 = !DILocation(line: 469, column: 27, scope: !2274)
!2287 = !DILocation(line: 470, column: 11, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 470, column: 11)
!2289 = !DILocation(line: 470, column: 11, scope: !2274)
!2290 = !DILocation(line: 473, column: 27, scope: !2288)
!2291 = distinct !{!2291, !2282, !2292}
!2292 = !DILocation(line: 474, column: 5, scope: !2268)
!2293 = !DILocation(line: 477, column: 28, scope: !2268)
!2294 = !DILocation(line: 478, column: 3, scope: !2268)
!2295 = !DILocation(line: 479, column: 1, scope: !2268)
!2296 = distinct !DISubprogram(name: "varpool_analyze_pending_decls", scope: !3, file: !3, line: 342, type: !2269, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2297)
!2297 = !{!2298, !2299, !2301}
!2298 = !DILocalVariable(name: "changed", scope: !2296, file: !3, line: 344, type: !259)
!2299 = !DILocalVariable(name: "decl", scope: !2300, file: !3, line: 349, type: !272)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 348, column: 5)
!2301 = !DILocalVariable(name: "analyzed", scope: !2300, file: !3, line: 350, type: !259)
!2302 = !DILocation(line: 0, scope: !2296)
!2303 = !DILocation(line: 345, column: 3, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 345, column: 3)
!2305 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 345, column: 3)
!2306 = !DILocation(line: 345, column: 3, scope: !2305)
!2307 = !DILocation(line: 347, column: 3, scope: !2296)
!2308 = !DILocation(line: 347, column: 10, scope: !2296)
!2309 = !DILocation(line: 349, column: 50, scope: !2300)
!2310 = !DILocation(line: 0, scope: !2300)
!2311 = !DILocation(line: 350, column: 54, scope: !2300)
!2312 = !DILocation(line: 352, column: 47, scope: !2300)
!2313 = !DILocation(line: 354, column: 70, scope: !2300)
!2314 = !DILocation(line: 354, column: 37, scope: !2300)
!2315 = !DILocation(line: 359, column: 12, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 359, column: 11)
!2317 = !DILocation(line: 359, column: 11, scope: !2300)
!2318 = !DILocation(line: 361, column: 4, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 360, column: 2)
!2320 = !DILocation(line: 364, column: 11, scope: !2319)
!2321 = !DILocation(line: 365, column: 2, scope: !2319)
!2322 = !DILocation(line: 366, column: 11, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 366, column: 11)
!2324 = !DILocation(line: 366, column: 11, scope: !2300)
!2325 = !DILocation(line: 367, column: 2, scope: !2323)
!2326 = distinct !{!2326, !2307, !2327}
!2327 = !DILocation(line: 369, column: 5, scope: !2296)
!2328 = !DILocation(line: 370, column: 3, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 370, column: 3)
!2330 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 370, column: 3)
!2331 = !DILocation(line: 370, column: 3, scope: !2330)
!2332 = !DILocation(line: 371, column: 3, scope: !2296)
!2333 = distinct !DISubprogram(name: "varpool_assemble_decl", scope: !3, file: !3, line: 376, type: !2334, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!259, !268}
!2336 = !{!2337, !2338, !2339}
!2337 = !DILocalVariable(name: "node", arg: 1, scope: !2333, file: !3, line: 376, type: !268)
!2338 = !DILocalVariable(name: "decl", scope: !2333, file: !3, line: 378, type: !272)
!2339 = !DILocalVariable(name: "alias", scope: !2340, file: !3, line: 388, type: !268)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 387, column: 2)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 386, column: 11)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 384, column: 5)
!2343 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 380, column: 7)
!2344 = !DILocation(line: 0, scope: !2333)
!2345 = !DILocation(line: 378, column: 21, scope: !2333)
!2346 = !DILocation(line: 380, column: 8, scope: !2343)
!2347 = !DILocation(line: 381, column: 7, scope: !2343)
!2348 = !DILocation(line: 381, column: 17, scope: !2343)
!2349 = !DILocation(line: 381, column: 11, scope: !2343)
!2350 = !DILocation(line: 382, column: 7, scope: !2343)
!2351 = !DILocation(line: 382, column: 11, scope: !2343)
!2352 = !DILocation(line: 383, column: 7, scope: !2343)
!2353 = !DILocation(line: 383, column: 28, scope: !2343)
!2354 = !DILocation(line: 383, column: 40, scope: !2343)
!2355 = !DILocation(line: 383, column: 44, scope: !2343)
!2356 = !DILocation(line: 380, column: 7, scope: !2333)
!2357 = !DILocation(line: 385, column: 7, scope: !2342)
!2358 = !DILocation(line: 386, column: 11, scope: !2341)
!2359 = !DILocation(line: 386, column: 11, scope: !2342)
!2360 = !DILocation(line: 390, column: 24, scope: !2340)
!2361 = !DILocation(line: 390, column: 10, scope: !2340)
!2362 = !DILocation(line: 390, column: 22, scope: !2340)
!2363 = !DILocation(line: 391, column: 34, scope: !2340)
!2364 = !DILocation(line: 392, column: 20, scope: !2340)
!2365 = !DILocation(line: 395, column: 23, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 395, column: 4)
!2367 = !DILocation(line: 0, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 396, column: 6)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 395, column: 4)
!2370 = !DILocation(line: 395, column: 9, scope: !2366)
!2371 = !DILocation(line: 0, scope: !2366)
!2372 = !DILocation(line: 0, scope: !2340)
!2373 = !DILocation(line: 395, column: 4, scope: !2366)
!2374 = !DILocation(line: 398, column: 34, scope: !2368)
!2375 = !DILocation(line: 398, column: 8, scope: !2368)
!2376 = !DILocation(line: 398, column: 32, scope: !2368)
!2377 = !DILocation(line: 399, column: 36, scope: !2368)
!2378 = !DILocation(line: 399, column: 8, scope: !2368)
!2379 = !DILocation(line: 399, column: 34, scope: !2368)
!2380 = !DILocation(line: 400, column: 40, scope: !2368)
!2381 = !DILocation(line: 400, column: 8, scope: !2368)
!2382 = !DILocation(line: 400, column: 38, scope: !2368)
!2383 = !DILocation(line: 401, column: 31, scope: !2368)
!2384 = !DILocation(line: 401, column: 37, scope: !2368)
!2385 = !DILocation(line: 401, column: 8, scope: !2368)
!2386 = !DILocation(line: 395, column: 57, scope: !2369)
!2387 = !DILocation(line: 395, column: 4, scope: !2369)
!2388 = distinct !{!2388, !2373, !2389}
!2389 = !DILocation(line: 402, column: 6, scope: !2366)
!2390 = !DILocation(line: 409, column: 1, scope: !2333)
!2391 = distinct !DISubprogram(name: "varpool_remove_unreferenced_decls", scope: !3, file: !3, line: 419, type: !2092, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2392)
!2392 = !{!2393, !2394, !2395}
!2393 = !DILocalVariable(name: "next", scope: !2391, file: !3, line: 421, type: !268)
!2394 = !DILocalVariable(name: "node", scope: !2391, file: !3, line: 421, type: !268)
!2395 = !DILocalVariable(name: "decl", scope: !2396, file: !3, line: 430, type: !272)
!2396 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 429, column: 5)
!2397 = !DILocation(line: 421, column: 38, scope: !2391)
!2398 = !DILocation(line: 0, scope: !2391)
!2399 = !DILocation(line: 423, column: 3, scope: !2391)
!2400 = !DILocation(line: 425, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 425, column: 7)
!2402 = !DILocation(line: 425, column: 18, scope: !2401)
!2403 = !DILocation(line: 425, column: 21, scope: !2401)
!2404 = !DILocation(line: 425, column: 7, scope: !2391)
!2405 = !DILocation(line: 428, column: 3, scope: !2391)
!2406 = !DILocation(line: 430, column: 25, scope: !2396)
!2407 = !DILocation(line: 0, scope: !2396)
!2408 = !DILocation(line: 431, column: 20, scope: !2396)
!2409 = !DILocation(line: 432, column: 13, scope: !2396)
!2410 = !DILocation(line: 432, column: 20, scope: !2396)
!2411 = !DILocation(line: 434, column: 17, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 434, column: 11)
!2413 = !DILocation(line: 434, column: 11, scope: !2412)
!2414 = !DILocation(line: 435, column: 4, scope: !2412)
!2415 = !DILocation(line: 435, column: 8, scope: !2412)
!2416 = !DILocation(line: 441, column: 8, scope: !2412)
!2417 = !DILocation(line: 441, column: 11, scope: !2412)
!2418 = !DILocation(line: 434, column: 11, scope: !2396)
!2419 = !DILocation(line: 442, column: 2, scope: !2412)
!2420 = distinct !{!2420, !2405, !2421}
!2421 = !DILocation(line: 445, column: 5, scope: !2391)
!2422 = !DILocation(line: 447, column: 3, scope: !2391)
!2423 = !DILocation(line: 448, column: 3, scope: !2391)
!2424 = !DILocation(line: 449, column: 1, scope: !2391)
!2425 = distinct !DISubprogram(name: "varpool_reset_queue", scope: !3, file: !3, line: 220, type: !2092, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1513)
!2426 = !DILocation(line: 222, column: 28, scope: !2425)
!2427 = !DILocation(line: 223, column: 23, scope: !2425)
!2428 = !DILocation(line: 224, column: 33, scope: !2425)
!2429 = !DILocation(line: 225, column: 1, scope: !2425)
!2430 = distinct !DISubprogram(name: "varpool_empty_needed_queue", scope: !3, file: !3, line: 483, type: !2092, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2431)
!2431 = !{!2432}
!2432 = !DILocalVariable(name: "node", scope: !2433, file: !3, line: 492, type: !268)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 491, column: 5)
!2434 = !DILocation(line: 488, column: 3, scope: !2430)
!2435 = !DILocation(line: 490, column: 10, scope: !2430)
!2436 = !DILocation(line: 490, column: 3, scope: !2430)
!2437 = !DILocation(line: 0, scope: !2433)
!2438 = !DILocation(line: 493, column: 50, scope: !2433)
!2439 = !DILocation(line: 493, column: 27, scope: !2433)
!2440 = !DILocation(line: 494, column: 25, scope: !2433)
!2441 = distinct !{!2441, !2436, !2442}
!2442 = !DILocation(line: 495, column: 5, scope: !2430)
!2443 = !DILocation(line: 498, column: 28, scope: !2430)
!2444 = !DILocation(line: 499, column: 1, scope: !2430)
!2445 = distinct !DISubprogram(name: "add_new_static_var", scope: !3, file: !3, line: 503, type: !2446, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!272, !272}
!2448 = !{!2449, !2450, !2451}
!2449 = !DILocalVariable(name: "type", arg: 1, scope: !2445, file: !3, line: 503, type: !272)
!2450 = !DILocalVariable(name: "new_decl", scope: !2445, file: !3, line: 505, type: !272)
!2451 = !DILocalVariable(name: "new_node", scope: !2445, file: !3, line: 506, type: !268)
!2452 = !DILocation(line: 0, scope: !2445)
!2453 = !DILocation(line: 508, column: 14, scope: !2445)
!2454 = !DILocation(line: 509, column: 26, scope: !2445)
!2455 = !DILocation(line: 509, column: 3, scope: !2445)
!2456 = !DILocation(line: 509, column: 24, scope: !2445)
!2457 = !DILocation(line: 510, column: 3, scope: !2445)
!2458 = !DILocation(line: 510, column: 28, scope: !2445)
!2459 = !DILocation(line: 511, column: 26, scope: !2445)
!2460 = !DILocation(line: 512, column: 24, scope: !2445)
!2461 = !DILocation(line: 513, column: 3, scope: !2445)
!2462 = !DILocation(line: 513, column: 27, scope: !2445)
!2463 = !DILocation(line: 514, column: 3, scope: !2445)
!2464 = !DILocation(line: 514, column: 28, scope: !2445)
!2465 = !DILocation(line: 515, column: 14, scope: !2445)
!2466 = !DILocation(line: 515, column: 3, scope: !2445)
!2467 = !DILocation(line: 516, column: 3, scope: !2445)
!2468 = !DILocation(line: 517, column: 14, scope: !2445)
!2469 = !DILocation(line: 518, column: 3, scope: !2445)
!2470 = !DILocation(line: 519, column: 3, scope: !2445)
!2471 = !DILocation(line: 520, column: 3, scope: !2445)
!2472 = !DILocation(line: 522, column: 20, scope: !2445)
!2473 = !DILocation(line: 522, column: 3, scope: !2445)
!2474 = distinct !DISubprogram(name: "varpool_extra_name_alias", scope: !3, file: !3, line: 529, type: !2475, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!259, !272, !272}
!2477 = !{!2478, !2479, !2480, !2481, !2482, !2483}
!2478 = !DILocalVariable(name: "alias", arg: 1, scope: !2474, file: !3, line: 529, type: !272)
!2479 = !DILocalVariable(name: "decl", arg: 2, scope: !2474, file: !3, line: 529, type: !272)
!2480 = !DILocalVariable(name: "key", scope: !2474, file: !3, line: 531, type: !269)
!2481 = !DILocalVariable(name: "alias_node", scope: !2474, file: !3, line: 531, type: !268)
!2482 = !DILocalVariable(name: "decl_node", scope: !2474, file: !3, line: 531, type: !268)
!2483 = !DILocalVariable(name: "slot", scope: !2474, file: !3, line: 531, type: !267)
!2484 = !DILocation(line: 0, scope: !2474)
!2485 = !DILocation(line: 531, column: 3, scope: !2474)
!2486 = !DILocation(line: 538, column: 3, scope: !2474)
!2487 = !DILocation(line: 539, column: 3, scope: !2474)
!2488 = !DILocation(line: 541, column: 15, scope: !2474)
!2489 = !DILocation(line: 543, column: 7, scope: !2474)
!2490 = !DILocation(line: 543, column: 12, scope: !2474)
!2491 = !DILocation(line: 545, column: 51, scope: !2474)
!2492 = !DILocation(line: 545, column: 35, scope: !2474)
!2493 = !DILocation(line: 545, column: 10, scope: !2474)
!2494 = !DILocation(line: 548, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 548, column: 7)
!2496 = !DILocation(line: 548, column: 7, scope: !2474)
!2497 = !DILocation(line: 551, column: 16, scope: !2474)
!2498 = !DILocation(line: 552, column: 15, scope: !2474)
!2499 = !DILocation(line: 552, column: 20, scope: !2474)
!2500 = !DILocation(line: 553, column: 15, scope: !2474)
!2501 = !DILocation(line: 553, column: 21, scope: !2474)
!2502 = !DILocation(line: 554, column: 15, scope: !2474)
!2503 = !DILocation(line: 554, column: 26, scope: !2474)
!2504 = !DILocation(line: 555, column: 33, scope: !2474)
!2505 = !DILocation(line: 555, column: 15, scope: !2474)
!2506 = !DILocation(line: 555, column: 20, scope: !2474)
!2507 = !DILocation(line: 556, column: 25, scope: !2474)
!2508 = !DILocation(line: 557, column: 9, scope: !2474)
!2509 = !DILocation(line: 558, column: 3, scope: !2474)
!2510 = !DILocation(line: 559, column: 1, scope: !2474)
