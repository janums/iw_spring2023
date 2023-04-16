; ModuleID = 'tree-stdarg.bc'
source_filename = "tree-stdarg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ssa_operands = type { %struct.ssa_operand_memory_d*, i32, i32, i8, %struct.def_optype_d*, %struct.use_optype_d* }
%struct.ssa_operand_memory_d = type { %struct.ssa_operand_memory_d*, [1 x i8] }
%struct.def_optype_d = type { %struct.def_optype_d*, %union.tree_node** }
%struct.use_optype_d = type { %struct.use_optype_d*, %struct.ssa_use_operand_d }
%struct.loops = type opaque
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
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
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%union.section = type opaque
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void ()*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, void ()*, void ()*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32, i32, i32*)*, i8 (%struct._dep*, i32, i32)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32)*, void ()*, i8* ()*, void (i8*, i8)*, void (i8*)*, void (i8*)*, void (i8*)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def**)*, i8 (i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, i8 (%struct.rtx_def*)*, void (%struct.spec_info_def*)*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i32 (%struct.ddg*)* }
%struct._dep = type opaque
%struct.spec_info_def = type opaque
%struct.ddg = type opaque
%struct.vectorize = type { %union.tree_node* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (i32, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (i8)*, i8 (%union.tree_node*, i8)*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (i32, %union.tree_node*, i32, i8)* }
%struct.addr_space = type { i32 (i8)*, i32 (i8)*, i8 (i32, i8)*, i8 (i32, %struct.rtx_def*, i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i8)*, i8 (i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %union.tree_node*, %union.tree_node*)* }
%struct.stdarg_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.basic_block_def*, i32, i32, i8, i32*, %struct.basic_block_def*, %union.tree_node* }
%struct.calls = type { i32 (%union.tree_node*, i32, i32*, %union.tree_node*, i32)*, i8 (%union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, i32)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, %struct.rtx_def* ()*, void (%struct.ix86_args*, i32, %union.tree_node*, i32*, i32)*, i8 (%struct.ix86_args*)*, i8 (%struct.ix86_args*)*, i8 (%union.tree_node*)*, i8 (i32, %union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i32 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i8* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, %union.tree_node*, i8)*, %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, i8 ()*, %struct.rtx_def* (%union.tree_node*, i8)*, void (%struct.rtx_def*, %union.tree_node*, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)* }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.secondary_reload_info = type { i32, i32, %struct.secondary_reload_info*, i32 }
%struct.c = type { i32 (i8)* }
%struct.cxx = type { %union.tree_node* ()*, i8 ()*, %union.tree_node* (%union.tree_node*)*, i8 ()*, i32 (%union.tree_node*, i32)*, i8 ()*, i8 ()*, void (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void (%union.tree_node*)* }
%struct.emutls = type { i8*, i8*, i8*, i8*, i8*, i8*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i8, i8 }
%struct.target_option_hooks = type { i8 (%union.tree_node*, %union.tree_node*, %union.tree_node*, i32)*, void (%struct.cl_target_option*)*, void (%struct.cl_target_option*)*, void (%struct._IO_FILE*, i32, %struct.cl_target_option*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)* }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, i8*, %struct.pointer_set_t*, i8, i8, i8, i8, %union.tree_node* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.pointer_set_t = type opaque
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.VEC_edge_heap = type { %struct.VEC_edge_base }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"stdarg\00", align 1
@pass_stdarg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_optimize_stdarg, i32 ()* @execute_optimize_stdarg, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 1 } }, align 8, !dbg !0
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"tree-stdarg.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"va_list escapes in \00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: va_list escapes %d, needs to save \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c" GPR units and \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c" FPR units.\0A\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"bb%d will %sbe executed at most once for each va_start in bb%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1754 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1768, metadata !DIExpression()), !dbg !1769
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1770
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1771
  ret i32 %call, !dbg !1772
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1773 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1777
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1778
  ret i32 %call, !dbg !1779
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1780 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1835, metadata !DIExpression()), !dbg !1836
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1837
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1837
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1837
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1837
  %cmp = icmp uge i8* %0, %1, !dbg !1837
  %conv1 = zext i1 %cmp to i64, !dbg !1837
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1837
  %tobool = icmp eq i64 %expval, 0, !dbg !1837
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1837

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1837
  br label %cond.end, !dbg !1837

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1837
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1837
  %2 = load i8, i8* %0, align 1, !dbg !1837
  %conv3 = zext i8 %2 to i32, !dbg !1837
  br label %cond.end, !dbg !1837

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1837
  ret i32 %cond, !dbg !1838
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1839 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1841, metadata !DIExpression()), !dbg !1842
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1843
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1843
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1843
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1843
  %cmp = icmp uge i8* %0, %1, !dbg !1843
  %conv1 = zext i1 %cmp to i64, !dbg !1843
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1843
  %tobool = icmp eq i64 %expval, 0, !dbg !1843
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1843

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1843
  br label %cond.end, !dbg !1843

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1843
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1843
  %2 = load i8, i8* %0, align 1, !dbg !1843
  %conv3 = zext i8 %2 to i32, !dbg !1843
  br label %cond.end, !dbg !1843

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1843
  ret i32 %cond, !dbg !1844
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1845 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1846
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1846
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1846
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1846
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1846
  %cmp = icmp uge i8* %1, %2, !dbg !1846
  %conv1 = zext i1 %cmp to i64, !dbg !1846
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1846
  %tobool = icmp eq i64 %expval, 0, !dbg !1846
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1846

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1846
  br label %cond.end, !dbg !1846

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1846
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1846
  %3 = load i8, i8* %1, align 1, !dbg !1846
  %conv3 = zext i8 %3 to i32, !dbg !1846
  br label %cond.end, !dbg !1846

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1846
  ret i32 %cond, !dbg !1847
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1848 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1852, metadata !DIExpression()), !dbg !1853
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1854
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1855
  ret i32 %call, !dbg !1856
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1857 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1861, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1862, metadata !DIExpression()), !dbg !1863
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1864
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1864
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1864
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1864
  %cmp = icmp uge i8* %0, %1, !dbg !1864
  %conv1 = zext i1 %cmp to i64, !dbg !1864
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1864
  %tobool = icmp eq i64 %expval, 0, !dbg !1864
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1864

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1864
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1864
  br label %cond.end, !dbg !1864

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1864
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1864
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1864
  store i8 %conv2, i8* %0, align 1, !dbg !1864
  %conv6 = and i32 %__c, 255, !dbg !1864
  br label %cond.end, !dbg !1864

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1864
  ret i32 %cond, !dbg !1865
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1866 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1868, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1869, metadata !DIExpression()), !dbg !1870
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1871
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1871
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1871
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1871
  %cmp = icmp uge i8* %0, %1, !dbg !1871
  %conv1 = zext i1 %cmp to i64, !dbg !1871
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1871
  %tobool = icmp eq i64 %expval, 0, !dbg !1871
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1871

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1871
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1871
  br label %cond.end, !dbg !1871

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1871
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1871
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1871
  store i8 %conv2, i8* %0, align 1, !dbg !1871
  %conv6 = and i32 %__c, 255, !dbg !1871
  br label %cond.end, !dbg !1871

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1871
  ret i32 %cond, !dbg !1872
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1873 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1875, metadata !DIExpression()), !dbg !1876
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1877
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1877
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1877
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1877
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1877
  %cmp = icmp uge i8* %1, %2, !dbg !1877
  %conv1 = zext i1 %cmp to i64, !dbg !1877
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1877
  %tobool = icmp eq i64 %expval, 0, !dbg !1877
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1877

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1877
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1877
  br label %cond.end, !dbg !1877

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1877
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1877
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1877
  store i8 %conv4, i8* %1, align 1, !dbg !1877
  %conv6 = and i32 %__c, 255, !dbg !1877
  br label %cond.end, !dbg !1877

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1877
  ret i32 %cond, !dbg !1878
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1879 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1885, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1886, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1887, metadata !DIExpression()), !dbg !1888
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1889
  ret i64 %call, !dbg !1890
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1891 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1893, metadata !DIExpression()), !dbg !1894
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1895
  %0 = load i32, i32* %_flags, align 8, !dbg !1895
  %and = lshr i32 %0, 4, !dbg !1895
  %and.lobit = and i32 %and, 1, !dbg !1895
  ret i32 %and.lobit, !dbg !1896
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1897 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1899, metadata !DIExpression()), !dbg !1900
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1901
  %0 = load i32, i32* %_flags, align 8, !dbg !1901
  %and = lshr i32 %0, 5, !dbg !1901
  %and.lobit = and i32 %and, 1, !dbg !1901
  ret i32 %and.lobit, !dbg !1902
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1903 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1906, metadata !DIExpression()), !dbg !1907
  %__c.off = add i32 %__c, 128, !dbg !1908
  %0 = icmp ult i32 %__c.off, 384, !dbg !1908
  br i1 %0, label %cond.true, label %cond.end, !dbg !1908

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1909
  %1 = load i32*, i32** %call, align 8, !dbg !1910
  %idxprom = sext i32 %__c to i64, !dbg !1911
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1911
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1911
  br label %cond.end, !dbg !1912

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1912
  ret i32 %cond, !dbg !1913
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1914 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1916, metadata !DIExpression()), !dbg !1917
  %__c.off = add i32 %__c, 128, !dbg !1918
  %0 = icmp ult i32 %__c.off, 384, !dbg !1918
  br i1 %0, label %cond.true, label %cond.end, !dbg !1918

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1919
  %1 = load i32*, i32** %call, align 8, !dbg !1920
  %idxprom = sext i32 %__c to i64, !dbg !1921
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1921
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1921
  br label %cond.end, !dbg !1922

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1922
  ret i32 %cond, !dbg !1923
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1924 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1929, metadata !DIExpression()), !dbg !1930
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1931
  %conv = trunc i64 %call to i32, !dbg !1932
  ret i32 %conv, !dbg !1933
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1934 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1938, metadata !DIExpression()), !dbg !1939
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1940
  ret i64 %call, !dbg !1941
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1942 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1947, metadata !DIExpression()), !dbg !1948
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1949
  ret i64 %call, !dbg !1950
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1951 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1957, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1958, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1959, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1960, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1961, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 0, metadata !1962, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1963, metadata !DIExpression()), !dbg !1967
  br label %while.cond, !dbg !1968

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1969
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1967
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1963, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1962, metadata !DIExpression()), !dbg !1967
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1970
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1968

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1971
  %div = lshr i64 %add, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %div, metadata !1964, metadata !DIExpression()), !dbg !1967
  %mul = mul i64 %div, %__size, !dbg !1974
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1975
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1965, metadata !DIExpression()), !dbg !1967
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1976
  call void @llvm.dbg.value(metadata i32 %call, metadata !1966, metadata !DIExpression()), !dbg !1967
  %cmp1 = icmp slt i32 %call, 0, !dbg !1977
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1979

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1980
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1982

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1962, metadata !DIExpression()), !dbg !1967
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1967
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1967
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1963, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1962, metadata !DIExpression()), !dbg !1967
  br label %while.cond, !dbg !1968, !llvm.loop !1984

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1967
  ret i8* %retval.0, !dbg !1986
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1987 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1993, metadata !DIExpression()), !dbg !1994
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1995
  ret double %call, !dbg !1996
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1997 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2006, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 %base, metadata !2008, metadata !DIExpression()), !dbg !2009
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2010
  ret i64 %call, !dbg !2011
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2012 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2018, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2019, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i32 %base, metadata !2020, metadata !DIExpression()), !dbg !2021
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2022
  ret i64 %call, !dbg !2023
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2024 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2035, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2036, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i32 %base, metadata !2037, metadata !DIExpression()), !dbg !2038
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2039
  ret i64 %call, !dbg !2040
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2041 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2045, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2046, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i32 %base, metadata !2047, metadata !DIExpression()), !dbg !2048
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2049
  ret i64 %call, !dbg !2050
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2051 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2094, metadata !DIExpression()), !dbg !2095
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2096
  ret i32 %call, !dbg !2097
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2098 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2100, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2101, metadata !DIExpression()), !dbg !2102
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2103
  ret i32 %call, !dbg !2104
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2105 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2110, metadata !DIExpression()), !dbg !2111
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2112
  ret i32 %call, !dbg !2113
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2114 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2118, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2119, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2120, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2121, metadata !DIExpression()), !dbg !2122
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2123
  ret i32 %call, !dbg !2124
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2125 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2129, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2130, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2131, metadata !DIExpression()), !dbg !2132
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2131, metadata !DIExpression(DW_OP_deref)), !dbg !2132
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2133
  ret i32 %call, !dbg !2134
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2135 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2139, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2140, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2141, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2142, metadata !DIExpression()), !dbg !2143
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2142, metadata !DIExpression(DW_OP_deref)), !dbg !2143
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2144
  ret i32 %call, !dbg !2145
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2146 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2171, metadata !DIExpression()), !dbg !2172
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2173
  ret i32 %call, !dbg !2174
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2178, metadata !DIExpression()), !dbg !2179
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2180
  ret i32 %call, !dbg !2181
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2182 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2186, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2187, metadata !DIExpression()), !dbg !2188
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2189
  ret i32 %call, !dbg !2190
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2191 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2195, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2198, metadata !DIExpression()), !dbg !2199
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2200
  ret i32 %call, !dbg !2201
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_optimize_stdarg() #5 !dbg !2202 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2203
  %stdarg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 20, !dbg !2204
  %bf.load = load i32, i32* %stdarg, align 8, !dbg !2204
  %bf.clear = lshr i32 %bf.load, 22, !dbg !2203
  %1 = trunc i32 %bf.clear to i8, !dbg !2203
  %2 = and i8 %1, 1, !dbg !2203
  ret i8 %2, !dbg !2205
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_optimize_stdarg() #5 !dbg !2206 {
entry:
  %si = alloca %struct.stdarg_info, align 8
  %wi = alloca %struct.walk_stmt_info, align 8
  %i = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %i158 = alloca %struct.gimple_stmt_iterator, align 8
  %soi = alloca %struct.ssa_operand_iterator_d, align 8
  %tmp162 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp211 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata i8 0, metadata !2209, metadata !DIExpression()), !dbg !2275
  %0 = bitcast %struct.stdarg_info* %si to i8*, !dbg !2276
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7, !dbg !2276
  %1 = bitcast %struct.walk_stmt_info* %wi to i8*, !dbg !2277
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #7, !dbg !2277
  call void @llvm.dbg.value(metadata i8* null, metadata !2225, metadata !DIExpression()), !dbg !2275
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2278
  %va_list_gpr_size = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 20, !dbg !2279
  %bf.load = load i32, i32* %va_list_gpr_size, align 8, !dbg !2280
  %bf.clear3 = and i32 %bf.load, -65536, !dbg !2281
  store i32 %bf.clear3, i32* %va_list_gpr_size, align 8, !dbg !2281
  %call = call i8* @memset(i8* nonnull %0, i32 0, i64 64) #6, !dbg !2282
  %call4 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2283
  %va_list_vars = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 0, !dbg !2284
  store %struct.bitmap_head_def* %call4, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !2285
  %call5 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2286
  %va_list_escape_vars = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 1, !dbg !2287
  store %struct.bitmap_head_def* %call5, %struct.bitmap_head_def** %va_list_escape_vars, align 8, !dbg !2288
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2289
  %tobool = icmp eq %struct._IO_FILE* %3, null, !dbg !2289
  br i1 %tobool, label %if.end, label %if.then, !dbg !2291

if.then:                                          ; preds = %entry
  %4 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !2292
  %5 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2293
  %call6 = call i8* %4(%union.tree_node* %5, i32 2) #6, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %call6, metadata !2225, metadata !DIExpression()), !dbg !2275
  br label %if.end, !dbg !2295

if.end:                                           ; preds = %entry, %if.then
  %funcname.0 = phi i8* [ %call6, %if.then ], [ null, %entry ], !dbg !2275
  call void @llvm.dbg.value(metadata i8* %funcname.0, metadata !2225, metadata !DIExpression()), !dbg !2275
  %6 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 70), align 8, !dbg !2296
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2297
  %decl = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 6, !dbg !2298
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !2298
  %call8 = call %union.tree_node* %6(%union.tree_node* %8) #6, !dbg !2299
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !2226, metadata !DIExpression()), !dbg !2275
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2300
  %bf.load9 = load i64, i64* %9, align 8, !dbg !2300
  %bf.cast10 = and i64 %bf.load9, 65535, !dbg !2300
  %cmp = icmp eq i64 %bf.cast10, 10, !dbg !2300
  br i1 %cmp, label %land.rhs, label %lor.lhs.false, !dbg !2300

lor.lhs.false:                                    ; preds = %if.end
  %cmp15 = icmp eq i64 %bf.cast10, 12, !dbg !2300
  br i1 %cmp15, label %land.rhs, label %land.end, !dbg !2301

land.rhs:                                         ; preds = %lor.lhs.false, %if.end
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2302
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2302
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2303
  %cmp16 = icmp eq %union.tree_node* %10, %11, !dbg !2304
  br i1 %cmp16, label %land.end, label %lor.rhs, !dbg !2305

lor.rhs:                                          ; preds = %land.rhs
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !2306
  %cmp19 = icmp eq %union.tree_node* %10, %12, !dbg !2307
  %phitmp = zext i1 %cmp19 to i8, !dbg !2305
  br label %land.end, !dbg !2305

land.end:                                         ; preds = %land.rhs, %lor.rhs, %lor.lhs.false
  %13 = phi i8 [ 0, %lor.lhs.false ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  call void @llvm.dbg.value(metadata i8 %13, metadata !2210, metadata !DIExpression()), !dbg !2275
  %call20 = call zeroext i8 @is_gimple_reg_type(%union.tree_node* %call8) #6, !dbg !2308
  %cmp23 = icmp eq i8 %call20, %13, !dbg !2308
  br i1 %cmp23, label %cond.end, label %cond.true, !dbg !2308

cond.true:                                        ; preds = %land.end
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 612, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2308
  br label %cond.end, !dbg !2308

cond.end:                                         ; preds = %land.end, %cond.true
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2309
  %cfg = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !2309
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2309
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !2309
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2309
  %17 = bitcast %struct.gimple_stmt_iterator* %i to i8*, !dbg !2310
  %18 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2311
  %va_start_count = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 4, !dbg !2312
  %va_start_bb = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 7, !dbg !2312
  %va_start_ap = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 8, !dbg !2312
  br label %for.cond, !dbg !2309

for.cond:                                         ; preds = %for.inc111, %cond.end
  %19 = phi %struct.control_flow_graph* [ %15, %cond.end ], [ %.pre17, %for.inc111 ], !dbg !2313
  %.pn = phi %struct.basic_block_def* [ %16, %cond.end ], [ %bb.0, %for.inc111 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2314
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2314
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2208, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2209, metadata !DIExpression()), !dbg !2275
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 1, !dbg !2313
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2313
  %cmp28 = icmp eq %struct.basic_block_def* %bb.0, %20, !dbg !2313
  br i1 %cmp28, label %for.end113, label %for.body, !dbg !2309

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #7, !dbg !2315
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18) #7, !dbg !2316
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #8, !dbg !2316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %17, i8* nonnull align 8 %18, i64 24, i1 false), !dbg !2316
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18) #7, !dbg !2316
  br label %for.cond30, !dbg !2317

for.cond30:                                       ; preds = %for.inc, %for.body
  %va_list_escapes.1 = phi i8 [ 0, %for.body ], [ %va_list_escapes.2, %for.inc ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.1, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2227, metadata !DIExpression(DW_OP_deref)), !dbg !2310
  %call31 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !2319
  %tobool32 = icmp eq i8 %call31, 0, !dbg !2320
  br i1 %tobool32, label %for.body33, label %for.end, !dbg !2321

for.body33:                                       ; preds = %for.cond30
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2227, metadata !DIExpression(DW_OP_deref)), !dbg !2310
  %call34 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !2322
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call34, metadata !2231, metadata !DIExpression()), !dbg !2312
  %call35 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call34) #8, !dbg !2323
  %tobool36 = icmp eq i8 %call35, 0, !dbg !2323
  br i1 %tobool36, label %cleanup, label %if.end38, !dbg !2325

if.end38:                                         ; preds = %for.body33
  %call39 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call34) #8, !dbg !2326
  call void @llvm.dbg.value(metadata %union.tree_node* %call39, metadata !2235, metadata !DIExpression()), !dbg !2312
  %tobool40 = icmp eq %union.tree_node* %call39, null, !dbg !2327
  br i1 %tobool40, label %cleanup, label %lor.lhs.false41, !dbg !2329

lor.lhs.false41:                                  ; preds = %if.end38
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call39, i64 0, i32 0, i32 5, !dbg !2330
  %bf.load42 = load i32, i32* %built_in_class, align 8, !dbg !2330
  %bf.clear43 = and i32 %bf.load42, 6144, !dbg !2330
  %cmp44 = icmp eq i32 %bf.clear43, 6144, !dbg !2331
  br i1 %cmp44, label %if.end47, label %cleanup, !dbg !2332

if.end47:                                         ; preds = %lor.lhs.false41
  %bf.clear50 = and i32 %bf.load42, 2047, !dbg !2333
  switch i32 %bf.clear50, label %sw.default [
    i32 515, label %sw.epilog
    i32 505, label %cleanup
    i32 418, label %cleanup
    i32 492, label %cleanup
  ], !dbg !2334

sw.default:                                       ; preds = %if.end47
  br label %cleanup, !dbg !2335

sw.epilog:                                        ; preds = %if.end47
  %21 = load i32, i32* %va_start_count, align 4, !dbg !2337
  %inc = add nsw i32 %21, 1, !dbg !2337
  store i32 %inc, i32* %va_start_count, align 4, !dbg !2337
  %call51 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call34, i32 0) #8, !dbg !2338
  call void @llvm.dbg.value(metadata %union.tree_node* %call51, metadata !2236, metadata !DIExpression()), !dbg !2312
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %call51, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2339
  %bf.load53 = load i64, i64* %22, align 8, !dbg !2339
  %bf.cast5513 = and i64 %bf.load53, 65535, !dbg !2341
  %cmp56 = icmp eq i64 %bf.cast5513, 121, !dbg !2341
  br i1 %cmp56, label %if.end59, label %cleanup, !dbg !2342

if.end59:                                         ; preds = %sw.epilog
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call51, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2343
  %23 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2343
  call void @llvm.dbg.value(metadata %union.tree_node* %23, metadata !2236, metadata !DIExpression()), !dbg !2312
  %24 = getelementptr inbounds %union.tree_node, %union.tree_node* %23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2344
  %bf.load61 = load i64, i64* %24, align 8, !dbg !2344
  %bf.cast6314 = and i64 %bf.load61, 65535, !dbg !2346
  %cmp64 = icmp eq i64 %bf.cast6314, 45, !dbg !2346
  br i1 %cmp64, label %if.then66, label %if.end77, !dbg !2347

if.then66:                                        ; preds = %if.end59
  %operands68 = getelementptr inbounds %union.tree_node, %union.tree_node* %23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2348
  %arrayidx69 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands68, i64 1, !dbg !2348
  %25 = load %union.tree_node*, %union.tree_node** %arrayidx69, align 8, !dbg !2348
  %call70 = call i32 @integer_zerop(%union.tree_node* %25) #6, !dbg !2351
  %tobool71 = icmp eq i32 %call70, 0, !dbg !2351
  br i1 %tobool71, label %cleanup, label %if.end73, !dbg !2352

if.end73:                                         ; preds = %if.then66
  %26 = load %union.tree_node*, %union.tree_node** %operands68, align 8, !dbg !2353
  call void @llvm.dbg.value(metadata %union.tree_node* %26, metadata !2236, metadata !DIExpression()), !dbg !2312
  br label %if.end77, !dbg !2354

if.end77:                                         ; preds = %if.end73, %if.end59
  %ap.0 = phi %union.tree_node* [ %26, %if.end73 ], [ %23, %if.end59 ], !dbg !2312
  call void @llvm.dbg.value(metadata %union.tree_node* %ap.0, metadata !2236, metadata !DIExpression()), !dbg !2312
  %type79 = getelementptr inbounds %union.tree_node, %union.tree_node* %ap.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2355
  %27 = bitcast %union.tree_node** %type79 to %struct.tree_type**, !dbg !2355
  %28 = load %struct.tree_type*, %struct.tree_type** %27, align 8, !dbg !2355
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %28, i64 0, i32 16, !dbg !2355
  %29 = load %union.tree_node*, %union.tree_node** %main_variant, align 8, !dbg !2355
  %30 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 70), align 8, !dbg !2357
  %31 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2357
  %decl82 = getelementptr inbounds %struct.function, %struct.function* %31, i64 0, i32 6, !dbg !2357
  %32 = load %union.tree_node*, %union.tree_node** %decl82, align 8, !dbg !2357
  %call83 = call %union.tree_node* %30(%union.tree_node* %32) #6, !dbg !2357
  %33 = getelementptr inbounds %union.tree_node, %union.tree_node* %call83, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2357
  %34 = load %union.tree_node*, %union.tree_node** %33, align 8, !dbg !2357
  %cmp86 = icmp eq %union.tree_node* %29, %34, !dbg !2358
  br i1 %cmp86, label %lor.lhs.false88, label %cleanup, !dbg !2359

lor.lhs.false88:                                  ; preds = %if.end77
  %35 = getelementptr inbounds %union.tree_node, %union.tree_node* %ap.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2360
  %bf.load90 = load i64, i64* %35, align 8, !dbg !2360
  %bf.cast9215 = and i64 %bf.load90, 65535, !dbg !2361
  %cmp93 = icmp eq i64 %bf.cast9215, 32, !dbg !2361
  br i1 %cmp93, label %if.end96, label %cleanup, !dbg !2362

if.end96:                                         ; preds = %lor.lhs.false88
  %call97 = call fastcc zeroext i8 @is_global_var(%union.tree_node* %ap.0) #8, !dbg !2363
  %tobool98 = icmp eq i8 %call97, 0, !dbg !2363
  br i1 %tobool98, label %if.end100, label %cleanup, !dbg !2365

if.end100:                                        ; preds = %if.end96
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !2366
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %ap.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2367
  %37 = load i32, i32* %uid, align 4, !dbg !2367
  %call102 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %36, i32 %37) #6, !dbg !2368
  store %struct.basic_block_def* %bb.0, %struct.basic_block_def** %va_start_bb, align 8, !dbg !2369
  store %union.tree_node* %ap.0, %union.tree_node** %va_start_ap, align 8, !dbg !2370
  br label %cleanup, !dbg !2371

cleanup:                                          ; preds = %if.then66, %if.end96, %lor.lhs.false88, %if.end77, %sw.epilog, %lor.lhs.false41, %if.end38, %for.body33, %if.end47, %if.end47, %if.end47, %if.end100, %sw.default
  %cleanup.dest.slot.0 = phi i1 [ false, %sw.default ], [ false, %if.end100 ], [ false, %for.body33 ], [ false, %lor.lhs.false41 ], [ false, %if.end38 ], [ false, %if.end47 ], [ false, %if.end47 ], [ false, %if.end47 ], [ true, %sw.epilog ], [ true, %if.then66 ], [ true, %lor.lhs.false88 ], [ true, %if.end77 ], [ true, %if.end96 ]
  %va_list_escapes.2 = phi i8 [ %va_list_escapes.1, %sw.default ], [ %va_list_escapes.1, %if.end100 ], [ %va_list_escapes.1, %for.body33 ], [ %va_list_escapes.1, %lor.lhs.false41 ], [ %va_list_escapes.1, %if.end38 ], [ 1, %if.end47 ], [ 1, %if.end47 ], [ 1, %if.end47 ], [ 1, %sw.epilog ], [ 1, %if.then66 ], [ 1, %lor.lhs.false88 ], [ 1, %if.end77 ], [ 1, %if.end96 ], !dbg !2275
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.2, metadata !2209, metadata !DIExpression()), !dbg !2275
  br i1 %cleanup.dest.slot.0, label %for.end, label %for.inc

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2227, metadata !DIExpression(DW_OP_deref)), !dbg !2310
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i) #8, !dbg !2372
  br label %for.cond30, !dbg !2373, !llvm.loop !2374

for.end:                                          ; preds = %cleanup, %for.cond30
  %va_list_escapes.3 = phi i8 [ %va_list_escapes.2, %cleanup ], [ %va_list_escapes.1, %for.cond30 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.3, metadata !2209, metadata !DIExpression()), !dbg !2275
  %tobool105 = icmp eq i8 %va_list_escapes.3, 0, !dbg !2376
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #7, !dbg !2378
  br i1 %tobool105, label %for.inc111, label %for.end113

for.inc111:                                       ; preds = %for.end
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2313
  %cfg27.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2379
  %.pre17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg27.phi.trans.insert, align 8, !dbg !2313
  br label %for.cond, !dbg !2313, !llvm.loop !2380

for.end113:                                       ; preds = %for.end, %for.cond
  %va_list_escapes.4 = phi i8 [ %va_list_escapes.3, %for.end ], [ 0, %for.cond ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.4, metadata !2209, metadata !DIExpression()), !dbg !2275
  %38 = load i32, i32* %va_start_count, align 4, !dbg !2382
  %cmp115 = icmp eq i32 %38, 0, !dbg !2384
  %tobool119 = icmp ne i8 %va_list_escapes.4, 0, !dbg !2385
  %or.cond8 = or i1 %cmp115, %tobool119, !dbg !2387
  br i1 %or.cond8, label %finish, label %if.end121, !dbg !2387

if.end121:                                        ; preds = %for.end113
  %tobool123 = icmp eq i8 %13, 0, !dbg !2388
  br i1 %tobool123, label %if.end128, label %land.lhs.true, !dbg !2390

land.lhs.true:                                    ; preds = %if.end121
  %cmp125 = icmp sgt i32 %38, 1, !dbg !2391
  br i1 %cmp125, label %finish, label %if.end128, !dbg !2392

if.end128:                                        ; preds = %if.end121, %land.lhs.true
  %39 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 45), align 8, !dbg !2393
  %cmp131 = icmp eq %union.tree_node* %39, null, !dbg !2395
  %or.cond = and i1 %tobool123, %cmp131, !dbg !2396
  %40 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 46), align 16, !dbg !2397
  %cmp134 = icmp eq %union.tree_node* %40, null, !dbg !2398
  %or.cond3 = and i1 %or.cond, %cmp134, !dbg !2396
  br i1 %or.cond3, label %finish, label %if.end137, !dbg !2396

if.end137:                                        ; preds = %if.end128
  br i1 %tobool123, label %if.end144, label %if.then139, !dbg !2399

if.then139:                                       ; preds = %if.end137
  %41 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2400
  %va_list_fpr_size141 = getelementptr inbounds %struct.function, %struct.function* %41, i64 0, i32 20, !dbg !2402
  %bf.load142 = load i32, i32* %va_list_fpr_size141, align 8, !dbg !2403
  %bf.set = or i32 %bf.load142, 65280, !dbg !2403
  store i32 %bf.set, i32* %va_list_fpr_size141, align 8, !dbg !2403
  br label %if.end144, !dbg !2400

if.end144:                                        ; preds = %if.end137, %if.then139
  call void @calculate_dominance_info(i32 1) #6, !dbg !2404
  %call145 = call i8* @memset(i8* nonnull %1, i32 0, i64 56) #6, !dbg !2405
  %42 = bitcast %struct.stdarg_info* %si to i64*, !dbg !2406
  %43 = load i64, i64* %42, align 8, !dbg !2406
  %info = getelementptr inbounds %struct.walk_stmt_info, %struct.walk_stmt_info* %wi, i64 0, i32 1, !dbg !2407
  %44 = bitcast i8** %info to i64*, !dbg !2408
  store i64 %43, i64* %44, align 8, !dbg !2408
  %45 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2409
  %cfg148 = getelementptr inbounds %struct.function, %struct.function* %45, i64 0, i32 1, !dbg !2409
  %46 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg148, align 8, !dbg !2409
  %x_entry_block_ptr149 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %46, i64 0, i32 0, !dbg !2409
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr149, align 8, !dbg !2409
  %48 = bitcast %struct.gimple_stmt_iterator* %i158 to i8*, !dbg !2410
  %compute_sizes = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 3, !dbg !2411
  %bb159 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 2, !dbg !2411
  %49 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %soi, i64 0, i32 0, !dbg !2412
  %50 = bitcast %struct.gimple_stmt_iterator* %tmp162 to i8*, !dbg !2413
  %va_list_escapes191 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 5, !dbg !2414
  %51 = bitcast %struct.gimple_stmt_iterator* %tmp211 to i8*, !dbg !2419
  br label %for.cond151, !dbg !2409

for.cond151:                                      ; preds = %for.inc368, %if.end144
  %52 = phi %struct.control_flow_graph* [ %46, %if.end144 ], [ %.pre19, %for.inc368 ], !dbg !2420
  %.pn16 = phi %struct.basic_block_def* [ %47, %if.end144 ], [ %bb.1, %for.inc368 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn16, i64 0, i32 6, !dbg !2421
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2421
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2208, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2209, metadata !DIExpression()), !dbg !2275
  %x_exit_block_ptr154 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %52, i64 0, i32 1, !dbg !2420
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr154, align 8, !dbg !2420
  %cmp155 = icmp eq %struct.basic_block_def* %bb.1, %53, !dbg !2420
  br i1 %cmp155, label %for.end370, label %for.body157, !dbg !2409

for.body157:                                      ; preds = %for.cond151
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %48) #7, !dbg !2422
  store i32 -1, i32* %compute_sizes, align 8, !dbg !2423
  store %struct.basic_block_def* %bb.1, %struct.basic_block_def** %bb159, align 8, !dbg !2424
  br i1 %tobool123, label %if.end210, label %if.then161, !dbg !2425

if.then161:                                       ; preds = %for.body157
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %49) #7, !dbg !2426
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %50) #7, !dbg !2427
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp162, %struct.basic_block_def* %bb.1) #6, !dbg !2427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %48, i8* nonnull align 8 %50, i64 24, i1 false), !dbg !2427
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %50) #7, !dbg !2427
  br label %for.cond163, !dbg !2428

for.cond163:                                      ; preds = %cleanup205, %if.then161
  %va_list_escapes.6 = phi i8 [ 0, %if.then161 ], [ %va_list_escapes.10, %cleanup205 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.6, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i158, metadata !2237, metadata !DIExpression(DW_OP_deref)), !dbg !2411
  %call164 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i158) #8, !dbg !2429
  %tobool165 = icmp eq i8 %call164, 0, !dbg !2430
  br i1 %tobool165, label %for.body167, label %for.end209, !dbg !2431

for.body167:                                      ; preds = %for.cond163
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i158, metadata !2237, metadata !DIExpression(DW_OP_deref)), !dbg !2411
  %call168 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i158) #8, !dbg !2432
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call168, metadata !2259, metadata !DIExpression()), !dbg !2433
  %call169 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call168) #8, !dbg !2434
  %call170 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call169) #8, !dbg !2434
  call void @llvm.dbg.value(metadata %union.tree_node* %call170, metadata !2241, metadata !DIExpression()), !dbg !2412
  %call171 = call zeroext i8 @is_gimple_reg(%union.tree_node* %call170) #6, !dbg !2435
  %tobool172 = icmp eq i8 %call171, 0, !dbg !2435
  br i1 %tobool172, label %cleanup205, label %if.end174, !dbg !2437

if.end174:                                        ; preds = %for.body167
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %soi, metadata !2246, metadata !DIExpression(DW_OP_deref)), !dbg !2412
  %call175 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %soi, %union.gimple_statement_d* %call168, i32 1) #8, !dbg !2438
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call175, metadata !2245, metadata !DIExpression()), !dbg !2412
  br label %for.cond176, !dbg !2438

for.cond176:                                      ; preds = %for.inc202, %if.end174
  %uop.0 = phi %struct.ssa_use_operand_d* [ %call175, %if.end174 ], [ %call203, %for.inc202 ], !dbg !2439
  %va_list_escapes.7 = phi i8 [ %va_list_escapes.6, %if.end174 ], [ %va_list_escapes.9, %for.inc202 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.7, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %uop.0, metadata !2245, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %soi, metadata !2246, metadata !DIExpression(DW_OP_deref)), !dbg !2412
  %call177 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %soi) #8, !dbg !2440
  %tobool178 = icmp eq i8 %call177, 0, !dbg !2440
  br i1 %tobool178, label %for.body180, label %cleanup205.loopexit, !dbg !2438

for.body180:                                      ; preds = %for.cond176
  %call181 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %uop.0) #8, !dbg !2441
  call void @llvm.dbg.value(metadata %union.tree_node* %call181, metadata !2244, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call182 = call fastcc zeroext i8 @va_list_ptr_read(%struct.stdarg_info* nonnull %si, %union.tree_node* %call181, %union.tree_node* %call170) #8, !dbg !2442
  %tobool183 = icmp eq i8 %call182, 0, !dbg !2442
  br i1 %tobool183, label %if.else, label %for.inc202, !dbg !2444

if.else:                                          ; preds = %for.body180
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call185 = call fastcc zeroext i8 @va_list_ptr_write(%struct.stdarg_info* nonnull %si, %union.tree_node* %call170, %union.tree_node* %call181) #8, !dbg !2445
  %tobool186 = icmp eq i8 %call185, 0, !dbg !2445
  br i1 %tobool186, label %if.else188, label %for.inc202, !dbg !2447

if.else188:                                       ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  call fastcc void @check_va_list_escapes(%struct.stdarg_info* nonnull %si, %union.tree_node* %call170, %union.tree_node* %call181) #8, !dbg !2448
  %54 = load i8, i8* %va_list_escapes191, align 8, !dbg !2449
  %tobool192 = icmp eq i8 %54, 0, !dbg !2450
  br i1 %tobool192, label %for.inc202, label %if.then193, !dbg !2451

if.then193:                                       ; preds = %if.else188
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2452
  %tobool194 = icmp eq %struct._IO_FILE* %55, null, !dbg !2452
  br i1 %tobool194, label %for.inc202, label %land.lhs.true195, !dbg !2455

land.lhs.true195:                                 ; preds = %if.then193
  %56 = load i32, i32* @dump_flags, align 4, !dbg !2456
  %and = and i32 %56, 8, !dbg !2457
  %tobool196 = icmp eq i32 %and, 0, !dbg !2457
  br i1 %tobool196, label %for.inc202, label %if.then197, !dbg !2458

if.then197:                                       ; preds = %land.lhs.true195
  %call198 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* nonnull %55) #6, !dbg !2459
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2461
  %58 = load i32, i32* @dump_flags, align 4, !dbg !2462
  call void @print_gimple_stmt(%struct._IO_FILE* %57, %union.gimple_statement_d* %call168, i32 0, i32 %58) #6, !dbg !2463
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2464
  %call199 = call i32 @fputc(i32 10, %struct._IO_FILE* %59) #6, !dbg !2465
  br label %for.inc202, !dbg !2466

for.inc202:                                       ; preds = %land.lhs.true195, %if.then193, %if.else188, %if.else, %for.body180, %if.then197
  %va_list_escapes.9 = phi i8 [ %va_list_escapes.7, %for.body180 ], [ %va_list_escapes.7, %if.else ], [ %va_list_escapes.7, %if.else188 ], [ 1, %if.then197 ], [ 1, %land.lhs.true195 ], [ 1, %if.then193 ], !dbg !2275
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.9, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %soi, metadata !2246, metadata !DIExpression(DW_OP_deref)), !dbg !2412
  %call203 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %soi) #8, !dbg !2440
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call203, metadata !2245, metadata !DIExpression()), !dbg !2412
  br label %for.cond176, !dbg !2440, !llvm.loop !2467

cleanup205.loopexit:                              ; preds = %for.cond176
  %va_list_escapes.7.lcssa = phi i8 [ %va_list_escapes.7, %for.cond176 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.7.lcssa, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.7.lcssa, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.7.lcssa, metadata !2209, metadata !DIExpression()), !dbg !2275
  br label %cleanup205, !dbg !2469

cleanup205:                                       ; preds = %cleanup205.loopexit, %for.body167
  %va_list_escapes.10 = phi i8 [ %va_list_escapes.6, %for.body167 ], [ %va_list_escapes.7.lcssa, %cleanup205.loopexit ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.10, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i158, metadata !2237, metadata !DIExpression(DW_OP_deref)), !dbg !2411
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i158) #8, !dbg !2469
  br label %for.cond163, !dbg !2470, !llvm.loop !2471

for.end209:                                       ; preds = %for.cond163
  %va_list_escapes.6.lcssa = phi i8 [ %va_list_escapes.6, %for.cond163 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.6.lcssa, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.6.lcssa, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.6.lcssa, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %49) #7, !dbg !2473
  br label %if.end210, !dbg !2474

if.end210:                                        ; preds = %for.body157, %for.end209
  %va_list_escapes.11 = phi i8 [ %va_list_escapes.6.lcssa, %for.end209 ], [ 0, %for.body157 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.11, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %51) #7, !dbg !2475
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp211, %struct.basic_block_def* %bb.1) #8, !dbg !2475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %48, i8* nonnull align 8 %51, i64 24, i1 false), !dbg !2475
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %51) #7, !dbg !2475
  br label %for.cond212, !dbg !2476

for.cond212:                                      ; preds = %cleanup357, %if.end210
  %va_list_escapes.12 = phi i8 [ %va_list_escapes.11, %if.end210 ], [ %va_list_escapes.14, %cleanup357 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.12, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i158, metadata !2237, metadata !DIExpression(DW_OP_deref)), !dbg !2411
  %call213 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i158) #8, !dbg !2477
  %60 = or i8 %call213, %va_list_escapes.12, !dbg !2478
  %61 = icmp eq i8 %60, 0, !dbg !2478
  br i1 %61, label %for.body220, label %for.end361, !dbg !2478

for.body220:                                      ; preds = %for.cond212
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i158, metadata !2237, metadata !DIExpression(DW_OP_deref)), !dbg !2411
  %call222 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i158) #8, !dbg !2479
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call222, metadata !2263, metadata !DIExpression()), !dbg !2480
  %call223 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call222) #8, !dbg !2481
  %tobool224 = icmp eq i8 %call223, 0, !dbg !2481
  br i1 %tobool224, label %if.end256, label %if.then225, !dbg !2482

if.then225:                                       ; preds = %for.body220
  %call227 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call222) #8, !dbg !2483
  call void @llvm.dbg.value(metadata %union.tree_node* %call227, metadata !2267, metadata !DIExpression()), !dbg !2484
  %tobool228 = icmp eq %union.tree_node* %call227, null, !dbg !2485
  br i1 %tobool228, label %if.end252, label %land.lhs.true229, !dbg !2487

land.lhs.true229:                                 ; preds = %if.then225
  %built_in_class231 = getelementptr inbounds %union.tree_node, %union.tree_node* %call227, i64 0, i32 0, i32 5, !dbg !2488
  %bf.load232 = load i32, i32* %built_in_class231, align 8, !dbg !2488
  %bf.clear234 = and i32 %bf.load232, 6144, !dbg !2488
  %cmp235 = icmp eq i32 %bf.clear234, 6144, !dbg !2489
  br i1 %cmp235, label %land.lhs.true237, label %if.end252, !dbg !2490

land.lhs.true237:                                 ; preds = %land.lhs.true229
  %bf.clear241 = and i32 %bf.load232, 2047, !dbg !2491
  %cmp242 = icmp eq i32 %bf.clear241, 515, !dbg !2492
  br i1 %cmp242, label %cleanup253, label %lor.lhs.false244, !dbg !2493

lor.lhs.false244:                                 ; preds = %land.lhs.true237
  %cmp249 = icmp eq i32 %bf.clear241, 514, !dbg !2494
  br i1 %cmp249, label %cleanup253, label %if.end252, !dbg !2495

if.end252:                                        ; preds = %if.then225, %lor.lhs.false244, %land.lhs.true229
  br label %cleanup253, !dbg !2496

cleanup253:                                       ; preds = %land.lhs.true237, %lor.lhs.false244, %if.end252
  %cleanup.dest.slot.3 = phi i1 [ true, %if.end252 ], [ false, %lor.lhs.false244 ], [ false, %land.lhs.true237 ]
  br i1 %cleanup.dest.slot.3, label %if.end256, label %cleanup357

if.end256:                                        ; preds = %for.body220, %cleanup253
  %call257 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call222) #8, !dbg !2497
  %tobool258 = icmp eq i8 %call257, 0, !dbg !2497
  br i1 %tobool258, label %if.else335, label %if.then259, !dbg !2498

if.then259:                                       ; preds = %if.end256
  %call261 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call222) #8, !dbg !2499
  call void @llvm.dbg.value(metadata %union.tree_node* %call261, metadata !2270, metadata !DIExpression()), !dbg !2500
  %call263 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call222) #8, !dbg !2501
  call void @llvm.dbg.value(metadata %union.tree_node* %call263, metadata !2273, metadata !DIExpression()), !dbg !2500
  %call266 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call222) #8, !dbg !2502
  %call267 = call fastcc i32 @get_gimple_rhs_class(i32 %call266) #8, !dbg !2502
  %cmp268 = icmp eq i32 %call267, 3, !dbg !2502
  br i1 %tobool123, label %if.else307, label %if.then265, !dbg !2504

if.then265:                                       ; preds = %if.then259
  br i1 %cmp268, label %if.then270, label %if.end280, !dbg !2505

if.then270:                                       ; preds = %if.then265
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call271 = call fastcc zeroext i8 @va_list_ptr_read(%struct.stdarg_info* nonnull %si, %union.tree_node* %call263, %union.tree_node* %call261) #8, !dbg !2507
  %tobool272 = icmp eq i8 %call271, 0, !dbg !2507
  br i1 %tobool272, label %if.else274, label %cleanup331, !dbg !2511

if.else274:                                       ; preds = %if.then270
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call275 = call fastcc zeroext i8 @va_list_ptr_write(%struct.stdarg_info* nonnull %si, %union.tree_node* %call261, %union.tree_node* %call263) #8, !dbg !2512
  %tobool276 = icmp eq i8 %call275, 0, !dbg !2512
  br i1 %tobool276, label %if.end280, label %cleanup331, !dbg !2514

if.end280:                                        ; preds = %if.else274, %if.then265
  %call281 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call222) #8, !dbg !2515
  %cmp282 = icmp eq i32 %call281, 66, !dbg !2517
  br i1 %cmp282, label %land.lhs.true284, label %lor.lhs.false292, !dbg !2518

land.lhs.true284:                                 ; preds = %if.end280
  %call285 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call222) #8, !dbg !2519
  %62 = getelementptr inbounds %union.tree_node, %union.tree_node* %call285, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2519
  %bf.load287 = load i64, i64* %62, align 8, !dbg !2519
  %bf.cast28912 = and i64 %bf.load287, 65535, !dbg !2520
  %cmp290 = icmp eq i64 %bf.cast28912, 23, !dbg !2520
  br i1 %cmp290, label %if.then305, label %lor.lhs.false292, !dbg !2521

lor.lhs.false292:                                 ; preds = %land.lhs.true284, %if.end280
  %call293 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call222) #8, !dbg !2522
  %cmp294 = icmp eq i32 %call293, 116, !dbg !2522
  br i1 %cmp294, label %if.then305, label %lor.lhs.false296, !dbg !2522

lor.lhs.false296:                                 ; preds = %lor.lhs.false292
  %call297 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call222) #8, !dbg !2522
  %cmp298 = icmp eq i32 %call297, 113, !dbg !2522
  br i1 %cmp298, label %if.then305, label %lor.lhs.false300, !dbg !2523

lor.lhs.false300:                                 ; preds = %lor.lhs.false296
  %call301 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call222) #8, !dbg !2524
  %call302 = call fastcc i32 @get_gimple_rhs_class(i32 %call301) #8, !dbg !2525
  %cmp303 = icmp eq i32 %call302, 3, !dbg !2526
  br i1 %cmp303, label %if.then305, label %if.end330, !dbg !2527

if.then305:                                       ; preds = %lor.lhs.false300, %lor.lhs.false296, %lor.lhs.false292, %land.lhs.true284
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  call fastcc void @check_va_list_escapes(%struct.stdarg_info* nonnull %si, %union.tree_node* %call261, %union.tree_node* %call263) #8, !dbg !2528
  br label %if.end330, !dbg !2528

if.else307:                                       ; preds = %if.then259
  br i1 %cmp268, label %if.then312, label %if.end322, !dbg !2529

if.then312:                                       ; preds = %if.else307
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call313 = call fastcc zeroext i8 @va_list_counter_struct_op(%struct.stdarg_info* nonnull %si, %union.tree_node* %call261, %union.tree_node* %call263, i8 zeroext 1) #8, !dbg !2531
  %tobool314 = icmp eq i8 %call313, 0, !dbg !2531
  br i1 %tobool314, label %if.else316, label %cleanup331, !dbg !2535

if.else316:                                       ; preds = %if.then312
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call317 = call fastcc zeroext i8 @va_list_counter_struct_op(%struct.stdarg_info* nonnull %si, %union.tree_node* %call263, %union.tree_node* %call261, i8 zeroext 0) #8, !dbg !2536
  %tobool318 = icmp eq i8 %call317, 0, !dbg !2536
  br i1 %tobool318, label %if.end322, label %cleanup331, !dbg !2538

if.end322:                                        ; preds = %if.else316, %if.else307
  %63 = load i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 82), align 8, !dbg !2539
  %tobool323 = icmp eq i8 (%struct.stdarg_info*, %union.gimple_statement_d*)* %63, null, !dbg !2541
  br i1 %tobool323, label %if.end330, label %land.lhs.true324, !dbg !2542

land.lhs.true324:                                 ; preds = %if.end322
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call325 = call zeroext i8 %63(%struct.stdarg_info* nonnull %si, %union.gimple_statement_d* %call222) #6, !dbg !2543
  %tobool327 = icmp eq i8 %call325, 0, !dbg !2543
  br i1 %tobool327, label %if.end330, label %cleanup331, !dbg !2544

if.end330:                                        ; preds = %land.lhs.true324, %if.end322, %lor.lhs.false300, %if.then305
  br label %cleanup331, !dbg !2545

cleanup331:                                       ; preds = %if.else274, %if.then270, %if.else316, %if.then312, %land.lhs.true324, %if.end330
  %cleanup.dest.slot.4 = phi i1 [ true, %if.end330 ], [ false, %if.then270 ], [ false, %if.else274 ], [ false, %if.then312 ], [ false, %if.else316 ], [ false, %land.lhs.true324 ]
  br i1 %cleanup.dest.slot.4, label %if.end340, label %cleanup357

if.else335:                                       ; preds = %if.end256
  %call336 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call222) #8, !dbg !2546
  %tobool337 = icmp eq i8 %call336, 0, !dbg !2546
  br i1 %tobool337, label %if.end340, label %cleanup357, !dbg !2548

if.end340:                                        ; preds = %if.else335, %cleanup331
  %64 = load i8, i8* %va_list_escapes191, align 8, !dbg !2549
  %tobool343 = icmp eq i8 %64, 0, !dbg !2551
  br i1 %tobool343, label %lor.lhs.false344, label %if.then347, !dbg !2552

lor.lhs.false344:                                 ; preds = %if.end340
  call void @llvm.dbg.value(metadata %struct.walk_stmt_info* %wi, metadata !2224, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call345 = call %union.tree_node* @walk_gimple_op(%union.gimple_statement_d* %call222, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @find_va_list_reference, %struct.walk_stmt_info* nonnull %wi) #6, !dbg !2553
  %tobool346 = icmp eq %union.tree_node* %call345, null, !dbg !2553
  br i1 %tobool346, label %cleanup357, label %if.then347, !dbg !2554

if.then347:                                       ; preds = %lor.lhs.false344, %if.end340
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2555
  %tobool348 = icmp eq %struct._IO_FILE* %65, null, !dbg !2555
  br i1 %tobool348, label %cleanup357, label %land.lhs.true349, !dbg !2558

land.lhs.true349:                                 ; preds = %if.then347
  %66 = load i32, i32* @dump_flags, align 4, !dbg !2559
  %and350 = and i32 %66, 8, !dbg !2560
  %tobool351 = icmp eq i32 %and350, 0, !dbg !2560
  br i1 %tobool351, label %cleanup357, label %if.then352, !dbg !2561

if.then352:                                       ; preds = %land.lhs.true349
  %call353 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* nonnull %65) #6, !dbg !2562
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2564
  %68 = load i32, i32* @dump_flags, align 4, !dbg !2565
  call void @print_gimple_stmt(%struct._IO_FILE* %67, %union.gimple_statement_d* %call222, i32 0, i32 %68) #6, !dbg !2566
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2567
  %call354 = call i32 @fputc(i32 10, %struct._IO_FILE* %69) #6, !dbg !2568
  br label %cleanup357, !dbg !2569

cleanup357:                                       ; preds = %land.lhs.true349, %if.then347, %lor.lhs.false344, %if.else335, %if.then352, %cleanup253, %cleanup331
  %va_list_escapes.14 = phi i8 [ %va_list_escapes.12, %cleanup253 ], [ %va_list_escapes.12, %cleanup331 ], [ %va_list_escapes.12, %if.else335 ], [ %va_list_escapes.12, %lor.lhs.false344 ], [ 1, %if.then352 ], [ 1, %land.lhs.true349 ], [ 1, %if.then347 ], !dbg !2275
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.14, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i158, metadata !2237, metadata !DIExpression(DW_OP_deref)), !dbg !2411
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i158) #8, !dbg !2570
  br label %for.cond212, !dbg !2571, !llvm.loop !2572

for.end361:                                       ; preds = %for.cond212
  %va_list_escapes.12.lcssa = phi i8 [ %va_list_escapes.12, %for.cond212 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.12.lcssa, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.12.lcssa, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.12.lcssa, metadata !2209, metadata !DIExpression()), !dbg !2275
  %tobool362 = icmp eq i8 %va_list_escapes.12.lcssa, 0, !dbg !2575
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %48) #7, !dbg !2410
  br i1 %tobool362, label %for.inc368, label %for.end370

for.inc368:                                       ; preds = %for.end361
  %.pre18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2420
  %cfg153.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre18, i64 0, i32 1, !dbg !2577
  %.pre19 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg153.phi.trans.insert, align 8, !dbg !2420
  br label %for.cond151, !dbg !2420, !llvm.loop !2578

for.end370:                                       ; preds = %for.end361, %for.cond151
  %va_list_escapes.15 = phi i8 [ %va_list_escapes.12.lcssa, %for.end361 ], [ 0, %for.cond151 ], !dbg !2318
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.15, metadata !2209, metadata !DIExpression()), !dbg !2275
  %tobool371 = icmp eq i8 %va_list_escapes.15, 0, !dbg !2580
  %tobool374 = icmp ne i8 %13, 0, !dbg !2582
  %or.cond6 = and i1 %tobool371, %tobool374, !dbg !2583
  br i1 %or.cond6, label %land.lhs.true375, label %finish, !dbg !2583

land.lhs.true375:                                 ; preds = %for.end370
  %70 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_escape_vars, align 8, !dbg !2584
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %70, i64 0, i32 0, !dbg !2584
  %71 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2584
  %tobool377 = icmp eq %struct.bitmap_element_def* %71, null, !dbg !2584
  br i1 %tobool377, label %finish, label %land.lhs.true378, !dbg !2585

land.lhs.true378:                                 ; preds = %land.lhs.true375
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2211, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call379 = call fastcc zeroext i8 @check_all_va_list_escapes(%struct.stdarg_info* nonnull %si) #8, !dbg !2586
  %tobool381 = icmp ne i8 %call379, 0, !dbg !2586
  %spec.select = zext i1 %tobool381 to i8, !dbg !2587
  br label %finish, !dbg !2587

finish:                                           ; preds = %land.lhs.true375, %land.lhs.true378, %for.end370, %if.end128, %land.lhs.true, %for.end113
  %va_list_escapes.17 = phi i8 [ %va_list_escapes.4, %for.end113 ], [ 1, %land.lhs.true ], [ 1, %if.end128 ], [ %va_list_escapes.15, %for.end370 ], [ 0, %land.lhs.true375 ], [ %spec.select, %land.lhs.true378 ], !dbg !2275
  call void @llvm.dbg.value(metadata i8 %va_list_escapes.17, metadata !2209, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.label(metadata !2274), !dbg !2588
  %tobool384 = icmp eq i8 %va_list_escapes.17, 0, !dbg !2589
  br i1 %tobool384, label %if.end396, label %if.then385, !dbg !2591

if.then385:                                       ; preds = %finish
  %72 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2592
  %va_list_gpr_size387 = getelementptr inbounds %struct.function, %struct.function* %72, i64 0, i32 20, !dbg !2594
  %bf.load388 = load i32, i32* %va_list_gpr_size387, align 8, !dbg !2595
  %bf.set395 = or i32 %bf.load388, 65535, !dbg !2596
  store i32 %bf.set395, i32* %va_list_gpr_size387, align 8, !dbg !2596
  br label %if.end396, !dbg !2597

if.end396:                                        ; preds = %finish, %if.then385
  %73 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !2598
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %73) #6, !dbg !2598
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !2598
  %74 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_escape_vars, align 8, !dbg !2599
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %74) #6, !dbg !2599
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %va_list_escape_vars, align 8, !dbg !2599
  %offsets = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 6, !dbg !2600
  %75 = bitcast i32** %offsets to i8**, !dbg !2600
  %76 = load i8*, i8** %75, align 8, !dbg !2600
  call void @free(i8* %76) #6, !dbg !2601
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2602
  %tobool401 = icmp eq %struct._IO_FILE* %77, null, !dbg !2602
  br i1 %tobool401, label %if.end439, label %if.then402, !dbg !2604

if.then402:                                       ; preds = %if.end396
  %conv403 = zext i8 %va_list_escapes.17 to i32, !dbg !2605
  %call404 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %funcname.0, i32 %conv403) #6, !dbg !2607
  %78 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2608
  %va_list_gpr_size406 = getelementptr inbounds %struct.function, %struct.function* %78, i64 0, i32 20, !dbg !2610
  %bf.load407 = load i32, i32* %va_list_gpr_size406, align 8, !dbg !2610
  %bf.clear408 = and i32 %bf.load407, 255, !dbg !2610
  %cmp409 = icmp eq i32 %bf.clear408, 255, !dbg !2611
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2612
  br i1 %cmp409, label %if.then411, label %if.else413, !dbg !2613

if.then411:                                       ; preds = %if.then402
  %call412 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %79) #6, !dbg !2614
  br label %if.end419, !dbg !2614

if.else413:                                       ; preds = %if.then402
  %call418 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %bf.clear408) #6, !dbg !2615
  br label %if.end419

if.end419:                                        ; preds = %if.else413, %if.then411
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2616
  %call420 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* %80) #6, !dbg !2617
  %81 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2618
  %va_list_fpr_size422 = getelementptr inbounds %struct.function, %struct.function* %81, i64 0, i32 20, !dbg !2620
  %bf.load423 = load i32, i32* %va_list_fpr_size422, align 8, !dbg !2620
  %bf.clear425 = and i32 %bf.load423, 65280, !dbg !2620
  %cmp426 = icmp eq i32 %bf.clear425, 65280, !dbg !2621
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2622
  br i1 %cmp426, label %if.then428, label %if.else430, !dbg !2623

if.then428:                                       ; preds = %if.end419
  %call429 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %82) #6, !dbg !2624
  br label %if.end437, !dbg !2624

if.else430:                                       ; preds = %if.end419
  %bf.lshr434 = lshr i32 %bf.load423, 8, !dbg !2625
  %bf.clear435 = and i32 %bf.lshr434, 255, !dbg !2625
  %call436 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %bf.clear435) #6, !dbg !2626
  br label %if.end437

if.end437:                                        ; preds = %if.else430, %if.then428
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2627
  %call438 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %83) #6, !dbg !2628
  br label %if.end439, !dbg !2629

if.end439:                                        ; preds = %if.end396, %if.end437
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #7, !dbg !2630
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7, !dbg !2630
  ret i32 0, !dbg !2631
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_reg_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2632 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2636, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2637, metadata !DIExpression()), !dbg !2640
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2641
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2638, metadata !DIExpression()), !dbg !2639
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !2642
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2643
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2644
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2645
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2646
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2647
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2648
  ret void, !dbg !2649
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2650 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2654, metadata !DIExpression()), !dbg !2655
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2656
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2656
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2657
  %conv1 = zext i1 %cmp to i8, !dbg !2658
  ret i8 %conv1, !dbg !2659
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2660 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2664, metadata !DIExpression()), !dbg !2665
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2666
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2666
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2667
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2667
  ret %union.gimple_statement_d* %1, !dbg !2668
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2669 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2674, metadata !DIExpression()), !dbg !2675
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2676
  %cmp = icmp eq i32 %call, 8, !dbg !2677
  %conv1 = zext i1 %cmp to i8, !dbg !2676
  ret i8 %conv1, !dbg !2678
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2679 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2683, metadata !DIExpression()), !dbg !2685
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #8, !dbg !2686
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2684, metadata !DIExpression()), !dbg !2685
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2687
  %bf.load = load i64, i64* %0, align 8, !dbg !2687
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2689
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !2689
  br i1 %cmp, label %if.then, label %cleanup, !dbg !2690

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2691
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2691
  br label %cleanup, !dbg !2692

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !2685
  ret %union.tree_node* %retval.0, !dbg !2693
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !2694 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2698, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 0, metadata !2699, metadata !DIExpression()), !dbg !2700
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 3) #8, !dbg !2701
  ret %union.tree_node* %call, !dbg !2702
}

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_global_var(%union.tree_node* %t) unnamed_addr #0 !dbg !2703 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2711, metadata !DIExpression()), !dbg !2712
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2713
  %bf.load = load i64, i64* %0, align 8, !dbg !2713
  %bf.cast1 = and i64 %bf.load, 67108864, !dbg !2713
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2713
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2714

lor.rhs:                                          ; preds = %entry
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2715
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !2715
  %bf.load1 = load i64, i64* %1, align 8, !dbg !2715
  %bf.cast42 = lshr i64 %bf.load1, 25, !dbg !2714
  %2 = trunc i64 %bf.cast42 to i8, !dbg !2714
  %3 = and i8 %2, 1, !dbg !2714
  br label %lor.end, !dbg !2714

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i8 [ 1, %entry ], [ %3, %lor.rhs ]
  ret i8 %4, !dbg !2716
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2717 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2722, metadata !DIExpression()), !dbg !2723
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2724
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2724
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2725
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2725
  %2 = load i64, i64* %1, align 8, !dbg !2725
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2726
  store i64 %2, i64* %3, align 8, !dbg !2726
  ret void, !dbg !2727
}

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !2728 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !2733, metadata !DIExpression()), !dbg !2734
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !2735
  ret %union.tree_node* %0, !dbg !2736
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2737 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2741, metadata !DIExpression()), !dbg !2742
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !2743
  ret %union.tree_node** %result, !dbg !2744
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !2745 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2750, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !2751, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 1, metadata !2752, metadata !DIExpression()), !dbg !2755
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !2756
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2753, metadata !DIExpression()), !dbg !2755
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !2757
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2758
  store i8 0, i8* %done, align 8, !dbg !2759
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !2760
  %tobool = icmp eq i8 %call1, 0, !dbg !2760
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !2754, metadata !DIExpression()), !dbg !2755
  br i1 %tobool, label %if.then, label %if.end, !dbg !2761

if.then:                                          ; preds = %entry
  store i8 1, i8* %done, align 8, !dbg !2762
  br label %cleanup, !dbg !2765

if.end:                                           ; preds = %entry
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !2766
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !2767
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #8, !dbg !2768
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !2769
  store i32 %call7, i32* %num_phi, align 4, !dbg !2770
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !2771
  store i32 2, i32* %iter_type, align 4, !dbg !2772
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !2773
  br label %cleanup, !dbg !2774

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ null, %if.then ], [ %call8, %if.end ], !dbg !2755
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !2775
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2776 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2782, metadata !DIExpression()), !dbg !2783
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2784
  %0 = load i8, i8* %done, align 8, !dbg !2784
  ret i8 %0, !dbg !2785
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !2786 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !2790, metadata !DIExpression()), !dbg !2791
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !2792
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !2792
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2793
  ret %union.tree_node* %1, !dbg !2794
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @va_list_ptr_read(%struct.stdarg_info* %si, %union.tree_node* %ap, %union.tree_node* %tem) unnamed_addr #5 !dbg !2795 {
entry:
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2800, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata %union.tree_node* %ap, metadata !2801, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata %union.tree_node* %tem, metadata !2802, metadata !DIExpression()), !dbg !2803
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %ap, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2804
  %bf.load = load i64, i64* %0, align 8, !dbg !2804
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2806
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !2806
  br i1 %cmp, label %lor.lhs.false, label %return, !dbg !2807

lor.lhs.false:                                    ; preds = %entry
  %va_list_vars = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 0, !dbg !2808
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !2808
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %ap, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2809
  %2 = load i32, i32* %uid, align 4, !dbg !2809
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %1, i32 %2) #6, !dbg !2810
  %tobool = icmp eq i32 %call, 0, !dbg !2810
  br i1 %tobool, label %return, label %if.end, !dbg !2811

if.end:                                           ; preds = %lor.lhs.false
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %tem, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2812
  %bf.load2 = load i64, i64* %3, align 8, !dbg !2812
  %bf.cast42 = and i64 %bf.load2, 65535, !dbg !2814
  %cmp5 = icmp eq i64 %bf.cast42, 141, !dbg !2814
  br i1 %cmp5, label %lor.lhs.false6, label %return, !dbg !2815

lor.lhs.false6:                                   ; preds = %if.end
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !2816
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %tem, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2817
  %5 = bitcast i32* %var to %struct.tree_decl_minimal**, !dbg !2817
  %6 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %5, align 8, !dbg !2817
  %uid9 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %6, i64 0, i32 2, !dbg !2817
  %7 = load i32, i32* %uid9, align 4, !dbg !2817
  %call10 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %4, i32 %7) #6, !dbg !2818
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2818
  br i1 %tobool11, label %lor.lhs.false12, label %return, !dbg !2819

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %8 = bitcast i32* %var to %union.tree_node**, !dbg !2820
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !2820
  %call15 = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* %9) #8, !dbg !2821
  %tobool16 = icmp eq i8 %call15, 0, !dbg !2821
  br i1 %tobool16, label %if.end18, label %return, !dbg !2822

if.end18:                                         ; preds = %lor.lhs.false12
  %compute_sizes = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 3, !dbg !2823
  %10 = load i32, i32* %compute_sizes, align 8, !dbg !2823
  %cmp19 = icmp slt i32 %10, 0, !dbg !2825
  br i1 %cmp19, label %if.then21, label %if.end42, !dbg !2826

if.then21:                                        ; preds = %if.end18
  store i32 0, i32* %compute_sizes, align 8, !dbg !2827
  %va_start_count = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 4, !dbg !2829
  %11 = load i32, i32* %va_start_count, align 4, !dbg !2829
  %cmp23 = icmp eq i32 %11, 1, !dbg !2831
  br i1 %cmp23, label %land.lhs.true, label %if.end30, !dbg !2832

land.lhs.true:                                    ; preds = %if.then21
  %bb = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 2, !dbg !2833
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2833
  %va_start_bb = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 7, !dbg !2834
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %va_start_bb, align 8, !dbg !2834
  %call25 = tail call fastcc zeroext i8 @reachable_at_most_once(%struct.basic_block_def* %12, %struct.basic_block_def* %13) #8, !dbg !2835
  %tobool27 = icmp eq i8 %call25, 0, !dbg !2835
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !2836

if.then28:                                        ; preds = %land.lhs.true
  store i32 1, i32* %compute_sizes, align 8, !dbg !2837
  br label %if.end30, !dbg !2838

if.end30:                                         ; preds = %land.lhs.true, %if.then28, %if.then21
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2839
  %tobool31 = icmp eq %struct._IO_FILE* %14, null, !dbg !2839
  br i1 %tobool31, label %if.end42, label %land.lhs.true32, !dbg !2841

land.lhs.true32:                                  ; preds = %if.end30
  %15 = load i32, i32* @dump_flags, align 4, !dbg !2842
  %and = and i32 %15, 8, !dbg !2843
  %tobool33 = icmp eq i32 %and, 0, !dbg !2843
  br i1 %tobool33, label %if.end42, label %if.then34, !dbg !2844

if.then34:                                        ; preds = %land.lhs.true32
  %bb35 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 2, !dbg !2845
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %bb35, align 8, !dbg !2845
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 9, !dbg !2846
  %17 = load i32, i32* %index, align 8, !dbg !2846
  %18 = load i32, i32* %compute_sizes, align 8, !dbg !2847
  %tobool37 = icmp eq i32 %18, 0, !dbg !2848
  %cond = select i1 %tobool37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), !dbg !2848
  %va_start_bb38 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 7, !dbg !2849
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %va_start_bb38, align 8, !dbg !2849
  %index39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i64 0, i32 9, !dbg !2850
  %20 = load i32, i32* %index39, align 8, !dbg !2850
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i32 %17, i8* %cond, i32 %20) #6, !dbg !2851
  br label %if.end42, !dbg !2851

if.end42:                                         ; preds = %land.lhs.true32, %if.end30, %if.then34, %if.end18
  %21 = load i32, i32* %compute_sizes, align 8, !dbg !2852
  %tobool44 = icmp eq i32 %21, 0, !dbg !2854
  br i1 %tobool44, label %return, label %if.end46, !dbg !2855

if.end46:                                         ; preds = %if.end42
  %call47 = tail call fastcc i64 @va_list_counter_bump(%struct.stdarg_info* %si, %union.tree_node* %ap, %union.tree_node* %tem, i8 zeroext 1) #8, !dbg !2856
  %cmp48 = icmp eq i64 %call47, -1, !dbg !2858
  br i1 %cmp48, label %return, label %if.end51, !dbg !2859

if.end51:                                         ; preds = %if.end46
  %va_list_escape_vars = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 1, !dbg !2860
  %22 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_escape_vars, align 8, !dbg !2860
  %23 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %5, align 8, !dbg !2861
  %uid55 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %23, i64 0, i32 2, !dbg !2861
  %24 = load i32, i32* %uid55, align 4, !dbg !2861
  %call56 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %22, i32 %24) #6, !dbg !2862
  br label %return, !dbg !2863

return:                                           ; preds = %if.end42, %lor.lhs.false12, %lor.lhs.false6, %if.end, %lor.lhs.false, %entry, %if.end46, %if.end51
  %retval.0 = phi i8 [ 1, %if.end51 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false6 ], [ 0, %if.end ], [ 0, %if.end42 ], [ 0, %if.end46 ], !dbg !2803
  ret i8 %retval.0, !dbg !2864
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @va_list_ptr_write(%struct.stdarg_info* %si, %union.tree_node* %ap, %union.tree_node* %tem2) unnamed_addr #5 !dbg !2865 {
entry:
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2867, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata %union.tree_node* %ap, metadata !2868, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata %union.tree_node* %tem2, metadata !2869, metadata !DIExpression()), !dbg !2871
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %ap, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2872
  %bf.load = load i64, i64* %0, align 8, !dbg !2872
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2874
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !2874
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !2875

lor.lhs.false:                                    ; preds = %entry
  %va_list_vars = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 0, !dbg !2876
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !2876
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %ap, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2877
  %2 = load i32, i32* %uid, align 4, !dbg !2877
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %1, i32 %2) #6, !dbg !2878
  %tobool = icmp eq i32 %call, 0, !dbg !2878
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2879

if.end:                                           ; preds = %lor.lhs.false
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %tem2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2880
  %bf.load2 = load i64, i64* %3, align 8, !dbg !2880
  %bf.cast42 = and i64 %bf.load2, 65535, !dbg !2882
  %cmp5 = icmp eq i64 %bf.cast42, 141, !dbg !2882
  br i1 %cmp5, label %lor.lhs.false6, label %cleanup, !dbg !2883

lor.lhs.false6:                                   ; preds = %if.end
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !2884
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %tem2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2885
  %5 = bitcast i32* %var to %struct.tree_decl_minimal**, !dbg !2885
  %6 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %5, align 8, !dbg !2885
  %uid9 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %6, i64 0, i32 2, !dbg !2885
  %7 = load i32, i32* %uid9, align 4, !dbg !2885
  %call10 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %4, i32 %7) #6, !dbg !2886
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2886
  br i1 %tobool11, label %if.end13, label %cleanup, !dbg !2887

if.end13:                                         ; preds = %lor.lhs.false6
  %compute_sizes = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 3, !dbg !2888
  %8 = load i32, i32* %compute_sizes, align 8, !dbg !2888
  %cmp14 = icmp slt i32 %8, 1, !dbg !2890
  br i1 %cmp14, label %cleanup, label %if.end16, !dbg !2891

if.end16:                                         ; preds = %if.end13
  %call17 = tail call fastcc i64 @va_list_counter_bump(%struct.stdarg_info* %si, %union.tree_node* %ap, %union.tree_node* %tem2, i8 zeroext 1) #8, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %call17, metadata !2870, metadata !DIExpression()), !dbg !2871
  %add = add i64 %call17, 1, !dbg !2893
  %cmp18 = icmp ult i64 %add, 2, !dbg !2895
  br i1 %cmp18, label %cleanup, label %if.end20, !dbg !2896

if.end20:                                         ; preds = %if.end16
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2897
  %va_list_gpr_size = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 20, !dbg !2899
  %bf.load21 = load i32, i32* %va_list_gpr_size, align 8, !dbg !2899
  %bf.clear22 = and i32 %bf.load21, 255, !dbg !2899
  %conv = zext i32 %bf.clear22 to i64, !dbg !2897
  %add23 = add i64 %call17, %conv, !dbg !2900
  %cmp24 = icmp ult i64 %add23, 255, !dbg !2901
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !2902

if.then26:                                        ; preds = %if.end20
  %10 = trunc i64 %call17 to i32, !dbg !2903
  %conv33 = add i32 %bf.load21, %10, !dbg !2903
  %bf.value = and i32 %conv33, 255, !dbg !2903
  %bf.clear35 = and i32 %bf.load21, -256, !dbg !2903
  %bf.set = or i32 %bf.clear35, %bf.value, !dbg !2903
  store i32 %bf.set, i32* %va_list_gpr_size, align 8, !dbg !2903
  br label %cleanup, !dbg !2904

if.else:                                          ; preds = %if.end20
  %bf.set40 = or i32 %bf.load21, 255, !dbg !2905
  store i32 %bf.set40, i32* %va_list_gpr_size, align 8, !dbg !2905
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false6, %if.end, %lor.lhs.false, %entry, %if.then26, %if.else, %if.end16, %if.end13
  %retval.0 = phi i8 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false6 ], [ 0, %if.end ], [ 0, %if.end13 ], [ 0, %if.end16 ], [ 1, %if.else ], [ 1, %if.then26 ], !dbg !2871
  ret i8 %retval.0, !dbg !2906
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_va_list_escapes(%struct.stdarg_info* %si, %union.tree_node* %lhs, %union.tree_node* %rhs) unnamed_addr #5 !dbg !2907 {
entry:
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !2911, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !2912, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !2913, metadata !DIExpression()), !dbg !2914
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2915
  %0 = bitcast %union.tree_node** %type to i64**, !dbg !2915
  %1 = load i64*, i64** %0, align 8, !dbg !2915
  %bf.load = load i64, i64* %1, align 8, !dbg !2915
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2915
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !2915
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !2915

lor.lhs.false:                                    ; preds = %entry
  %cmp7 = icmp eq i64 %bf.cast1, 12, !dbg !2915
  br i1 %cmp7, label %if.end, label %return, !dbg !2917

if.end:                                           ; preds = %lor.lhs.false, %entry
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2918
  %bf.load9 = load i64, i64* %2, align 8, !dbg !2918
  %bf.cast113 = and i64 %bf.load9, 65535, !dbg !2920
  %cmp12 = icmp eq i64 %bf.cast113, 141, !dbg !2920
  br i1 %cmp12, label %lor.lhs.false13, label %return, !dbg !2921

lor.lhs.false13:                                  ; preds = %if.end
  %va_list_escape_vars = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 1, !dbg !2922
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_escape_vars, align 8, !dbg !2922
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %rhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2923
  %4 = bitcast i32* %var to %struct.tree_decl_minimal**, !dbg !2923
  %5 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %4, align 8, !dbg !2923
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %5, i64 0, i32 2, !dbg !2923
  %6 = load i32, i32* %uid, align 4, !dbg !2923
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %3, i32 %6) #6, !dbg !2924
  %tobool = icmp eq i32 %call, 0, !dbg !2924
  br i1 %tobool, label %return, label %if.end15, !dbg !2925

if.end15:                                         ; preds = %lor.lhs.false13
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2926
  %bf.load17 = load i64, i64* %7, align 8, !dbg !2926
  %bf.cast194 = and i64 %bf.load17, 65535, !dbg !2928
  %cmp20 = icmp eq i64 %bf.cast194, 141, !dbg !2928
  br i1 %cmp20, label %lor.lhs.false21, label %if.then26, !dbg !2929

lor.lhs.false21:                                  ; preds = %if.end15
  %var23 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2930
  %8 = bitcast i32* %var23 to %union.tree_node**, !dbg !2930
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !2930
  %call24 = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* %9) #8, !dbg !2931
  %tobool25 = icmp eq i8 %call24, 0, !dbg !2931
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !2932

if.then26:                                        ; preds = %lor.lhs.false21, %if.end15
  %va_list_escapes = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 5, !dbg !2933
  store i8 1, i8* %va_list_escapes, align 8, !dbg !2935
  br label %return, !dbg !2936

if.end27:                                         ; preds = %lor.lhs.false21
  %compute_sizes = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 3, !dbg !2937
  %10 = load i32, i32* %compute_sizes, align 8, !dbg !2937
  %cmp28 = icmp slt i32 %10, 0, !dbg !2939
  br i1 %cmp28, label %if.then30, label %if.end51, !dbg !2940

if.then30:                                        ; preds = %if.end27
  store i32 0, i32* %compute_sizes, align 8, !dbg !2941
  %va_start_count = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 4, !dbg !2943
  %11 = load i32, i32* %va_start_count, align 4, !dbg !2943
  %cmp32 = icmp eq i32 %11, 1, !dbg !2945
  br i1 %cmp32, label %land.lhs.true, label %if.end39, !dbg !2946

land.lhs.true:                                    ; preds = %if.then30
  %bb = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 2, !dbg !2947
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2947
  %va_start_bb = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 7, !dbg !2948
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %va_start_bb, align 8, !dbg !2948
  %call34 = tail call fastcc zeroext i8 @reachable_at_most_once(%struct.basic_block_def* %12, %struct.basic_block_def* %13) #8, !dbg !2949
  %tobool36 = icmp eq i8 %call34, 0, !dbg !2949
  br i1 %tobool36, label %if.end39, label %if.then37, !dbg !2950

if.then37:                                        ; preds = %land.lhs.true
  store i32 1, i32* %compute_sizes, align 8, !dbg !2951
  br label %if.end39, !dbg !2952

if.end39:                                         ; preds = %land.lhs.true, %if.then37, %if.then30
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2953
  %tobool40 = icmp eq %struct._IO_FILE* %14, null, !dbg !2953
  br i1 %tobool40, label %if.end51, label %land.lhs.true41, !dbg !2955

land.lhs.true41:                                  ; preds = %if.end39
  %15 = load i32, i32* @dump_flags, align 4, !dbg !2956
  %and = and i32 %15, 8, !dbg !2957
  %tobool42 = icmp eq i32 %and, 0, !dbg !2957
  br i1 %tobool42, label %if.end51, label %if.then43, !dbg !2958

if.then43:                                        ; preds = %land.lhs.true41
  %bb44 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 2, !dbg !2959
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %bb44, align 8, !dbg !2959
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 9, !dbg !2960
  %17 = load i32, i32* %index, align 8, !dbg !2960
  %18 = load i32, i32* %compute_sizes, align 8, !dbg !2961
  %tobool46 = icmp eq i32 %18, 0, !dbg !2962
  %cond = select i1 %tobool46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), !dbg !2962
  %va_start_bb47 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 7, !dbg !2963
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %va_start_bb47, align 8, !dbg !2963
  %index48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i64 0, i32 9, !dbg !2964
  %20 = load i32, i32* %index48, align 8, !dbg !2964
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i32 %17, i8* %cond, i32 %20) #6, !dbg !2965
  br label %if.end51, !dbg !2965

if.end51:                                         ; preds = %land.lhs.true41, %if.end39, %if.then43, %if.end27
  %21 = load i32, i32* %compute_sizes, align 8, !dbg !2966
  %tobool53 = icmp eq i32 %21, 0, !dbg !2968
  br i1 %tobool53, label %if.then54, label %if.end56, !dbg !2969

if.then54:                                        ; preds = %if.end51
  %va_list_escapes55 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 5, !dbg !2970
  store i8 1, i8* %va_list_escapes55, align 8, !dbg !2972
  br label %return, !dbg !2973

if.end56:                                         ; preds = %if.end51
  %va_start_ap = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 8, !dbg !2974
  %22 = load %union.tree_node*, %union.tree_node** %va_start_ap, align 8, !dbg !2974
  %call57 = tail call fastcc i64 @va_list_counter_bump(%struct.stdarg_info* %si, %union.tree_node* %22, %union.tree_node* %lhs, i8 zeroext 1) #8, !dbg !2976
  %cmp58 = icmp eq i64 %call57, -1, !dbg !2977
  br i1 %cmp58, label %if.then60, label %if.end62, !dbg !2978

if.then60:                                        ; preds = %if.end56
  %va_list_escapes61 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 5, !dbg !2979
  store i8 1, i8* %va_list_escapes61, align 8, !dbg !2981
  br label %return, !dbg !2982

if.end62:                                         ; preds = %if.end56
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_escape_vars, align 8, !dbg !2983
  %24 = bitcast i32* %var23 to %struct.tree_decl_minimal**, !dbg !2984
  %25 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %24, align 8, !dbg !2984
  %uid67 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %25, i64 0, i32 2, !dbg !2984
  %26 = load i32, i32* %uid67, align 4, !dbg !2984
  %call68 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %23, i32 %26) #6, !dbg !2985
  br label %return, !dbg !2986

return:                                           ; preds = %lor.lhs.false13, %if.end, %lor.lhs.false, %if.end62, %if.then60, %if.then54, %if.then26
  ret void, !dbg !2986
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2987 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2991, metadata !DIExpression()), !dbg !2993
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !2994
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !2994
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !2996
  br i1 %tobool, label %if.end, label %if.then, !dbg !2997

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !2998
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !2992, metadata !DIExpression()), !dbg !2993
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !3000
  %2 = load i64, i64* %1, align 8, !dbg !3000
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3001
  store i64 %2, i64* %3, align 8, !dbg !3001
  br label %cleanup, !dbg !3002

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3003
  %4 = load i32, i32* %phi_i, align 8, !dbg !3003
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3005
  %5 = load i32, i32* %num_phi, align 4, !dbg !3005
  %cmp = icmp slt i32 %4, %5, !dbg !3006
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !3007

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3008
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3008
  %inc = add nsw i32 %4, 1, !dbg !3008
  store i32 %inc, i32* %phi_i, align 8, !dbg !3008
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #8, !dbg !3008
  br label %cleanup, !dbg !3010

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3011
  store i8 1, i8* %done, align 8, !dbg !3012
  br label %cleanup, !dbg !3013

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !2993
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3014
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3015 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3017, metadata !DIExpression()), !dbg !3018
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3019
  %cmp = icmp eq i32 %call, 6, !dbg !3020
  %conv1 = zext i1 %cmp to i8, !dbg !3019
  ret i8 %conv1, !dbg !3021
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3022 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3024, metadata !DIExpression()), !dbg !3025
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3026
  ret %union.tree_node* %call, !dbg !3027
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3028 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3030, metadata !DIExpression()), !dbg !3031
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3032
  ret %union.tree_node* %call, !dbg !3033
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3034 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3038, metadata !DIExpression()), !dbg !3039
  %idxprom = sext i32 %code to i64, !dbg !3040
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3040
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3040
  %conv = zext i8 %0 to i32, !dbg !3041
  ret i32 %conv, !dbg !3042
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3043 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3047, metadata !DIExpression()), !dbg !3049
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #8, !dbg !3050
  call void @llvm.dbg.value(metadata i32 %call, metadata !3048, metadata !DIExpression()), !dbg !3049
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #8, !dbg !3051
  %cmp = icmp eq i32 %call1, 3, !dbg !3053
  br i1 %cmp, label %if.then, label %if.end, !dbg !3054

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #8, !dbg !3055
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3055
  %bf.load = load i64, i64* %0, align 8, !dbg !3055
  %1 = trunc i64 %bf.load to i32, !dbg !3055
  %bf.cast = and i32 %1, 65535, !dbg !3055
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3048, metadata !DIExpression()), !dbg !3049
  br label %if.end, !dbg !3056

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3049
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3048, metadata !DIExpression()), !dbg !3049
  ret i32 %code.0, !dbg !3057
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3058 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3060, metadata !DIExpression()), !dbg !3061
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !3062
  %cmp = icmp ugt i32 %call, 2, !dbg !3064
  br i1 %cmp, label %if.then, label %return, !dbg !3065

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #8, !dbg !3066
  br label %return, !dbg !3067

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !3068
  ret %union.tree_node* %retval.0, !dbg !3069
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @va_list_counter_struct_op(%struct.stdarg_info* %si, %union.tree_node* %ap, %union.tree_node* %var, i8 zeroext %write_p) unnamed_addr #5 !dbg !3070 {
entry:
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !3074, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata %union.tree_node* %ap, metadata !3075, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3076, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8 %write_p, metadata !3077, metadata !DIExpression()), !dbg !3079
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %ap, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3080
  %bf.load = load i64, i64* %0, align 8, !dbg !3080
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3082
  %cmp = icmp eq i64 %bf.cast1, 41, !dbg !3082
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !3083

lor.lhs.false:                                    ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %ap, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3084
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3084
  %1 = bitcast %union.tree_node** %arrayidx to i64**, !dbg !3084
  %2 = load i64*, i64** %1, align 8, !dbg !3084
  %bf.load3 = load i64, i64* %2, align 8, !dbg !3084
  %bf.cast52 = and i64 %bf.load3, 65535, !dbg !3085
  %cmp6 = icmp eq i64 %bf.cast52, 31, !dbg !3085
  br i1 %cmp6, label %if.end, label %cleanup, !dbg !3086

if.end:                                           ; preds = %lor.lhs.false
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3087
  %bf.load8 = load i64, i64* %3, align 8, !dbg !3087
  %bf.cast103 = and i64 %bf.load8, 65535, !dbg !3089
  %cmp11 = icmp eq i64 %bf.cast103, 141, !dbg !3089
  br i1 %cmp11, label %lor.lhs.false12, label %cleanup, !dbg !3090

lor.lhs.false12:                                  ; preds = %if.end
  %va_list_vars = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 0, !dbg !3091
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !3091
  %var13 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3092
  %5 = bitcast i32* %var13 to %struct.tree_decl_minimal**, !dbg !3092
  %6 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %5, align 8, !dbg !3092
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %6, i64 0, i32 2, !dbg !3092
  %7 = load i32, i32* %uid, align 4, !dbg !3092
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %4, i32 %7) #6, !dbg !3093
  %tobool = icmp eq i32 %call, 0, !dbg !3093
  br i1 %tobool, label %if.end15, label %cleanup, !dbg !3094

if.end15:                                         ; preds = %lor.lhs.false12
  %call16 = tail call %union.tree_node* @get_base_address(%union.tree_node* %ap) #6, !dbg !3095
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !3078, metadata !DIExpression()), !dbg !3079
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3096
  %bf.load18 = load i64, i64* %8, align 8, !dbg !3096
  %bf.cast204 = and i64 %bf.load18, 65535, !dbg !3098
  %cmp21 = icmp eq i64 %bf.cast204, 32, !dbg !3098
  br i1 %cmp21, label %lor.lhs.false22, label %cleanup, !dbg !3099

lor.lhs.false22:                                  ; preds = %if.end15
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !3100
  %uid25 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3101
  %10 = load i32, i32* %uid25, align 4, !dbg !3101
  %call26 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %9, i32 %10) #6, !dbg !3102
  %tobool27 = icmp eq i32 %call26, 0, !dbg !3102
  br i1 %tobool27, label %cleanup, label %if.end29, !dbg !3103

if.end29:                                         ; preds = %lor.lhs.false22
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3104
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 45), align 8, !dbg !3106
  %cmp33 = icmp eq %union.tree_node* %11, %12, !dbg !3107
  br i1 %cmp33, label %if.then34, label %if.else, !dbg !3108

if.then34:                                        ; preds = %if.end29
  tail call fastcc void @va_list_counter_op(%struct.stdarg_info* %si, %union.tree_node* %ap, %union.tree_node* %var, i8 zeroext 1, i8 zeroext %write_p) #8, !dbg !3109
  br label %cleanup, !dbg !3109

if.else:                                          ; preds = %if.end29
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 46), align 16, !dbg !3110
  %cmp38 = icmp eq %union.tree_node* %11, %13, !dbg !3112
  br i1 %cmp38, label %if.then39, label %cleanup, !dbg !3113

if.then39:                                        ; preds = %if.else
  tail call fastcc void @va_list_counter_op(%struct.stdarg_info* %si, %union.tree_node* %ap, %union.tree_node* %var, i8 zeroext 0, i8 zeroext %write_p) #8, !dbg !3114
  br label %cleanup, !dbg !3114

cleanup:                                          ; preds = %lor.lhs.false22, %if.end15, %lor.lhs.false12, %if.end, %lor.lhs.false, %entry, %if.then34, %if.then39, %if.else
  %retval.0 = phi i8 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false12 ], [ 0, %if.end ], [ 0, %lor.lhs.false22 ], [ 0, %if.end15 ], [ 1, %if.else ], [ 1, %if.then39 ], [ 1, %if.then34 ], !dbg !3079
  ret i8 %retval.0, !dbg !3115
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3116 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3118, metadata !DIExpression()), !dbg !3119
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3120
  %cmp = icmp eq i32 %call, 2, !dbg !3121
  %conv1 = zext i1 %cmp to i8, !dbg !3120
  ret i8 %conv1, !dbg !3122
}

declare dso_local %union.tree_node* @walk_gimple_op(%union.gimple_statement_d*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, %struct.walk_stmt_info*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @find_va_list_reference(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #5 !dbg !3123 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %tp, metadata !3127, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i32* %walk_subtrees, metadata !3128, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* %data, metadata !3129, metadata !DIExpression()), !dbg !3132
  %info = getelementptr inbounds i8, i8* %data, i64 24, !dbg !3133
  %0 = bitcast i8* %info to %struct.bitmap_head_def**, !dbg !3133
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %0, align 8, !dbg !3133
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %1, metadata !3130, metadata !DIExpression()), !dbg !3132
  %2 = load %union.tree_node*, %union.tree_node** %tp, align 8, !dbg !3134
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3131, metadata !DIExpression()), !dbg !3132
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3135
  %bf.load = load i64, i64* %3, align 8, !dbg !3135
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3137
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3137
  br i1 %cmp, label %if.then, label %if.end, !dbg !3138

if.then:                                          ; preds = %entry
  %var1 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3139
  %4 = bitcast i32* %var1 to %union.tree_node**, !dbg !3139
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !3139
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3131, metadata !DIExpression()), !dbg !3132
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3140
  %bf.load3.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !3142
  br label %if.end, !dbg !3143

if.end:                                           ; preds = %if.then, %entry
  %bf.load3 = phi i64 [ %bf.load3.pre, %if.then ], [ %bf.load, %entry ], !dbg !3142
  %var.0 = phi %union.tree_node* [ %5, %if.then ], [ %2, %entry ], !dbg !3132
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !3131, metadata !DIExpression()), !dbg !3132
  %bf.cast52 = and i64 %bf.load3, 65535, !dbg !3144
  %cmp6 = icmp eq i64 %bf.cast52, 32, !dbg !3144
  br i1 %cmp6, label %land.lhs.true, label %if.end8, !dbg !3145

land.lhs.true:                                    ; preds = %if.end
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3146
  %6 = load i32, i32* %uid, align 4, !dbg !3146
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %1, i32 %6) #6, !dbg !3147
  %tobool = icmp eq i32 %call, 0, !dbg !3147
  br i1 %tobool, label %if.end8, label %cleanup, !dbg !3148

if.end8:                                          ; preds = %land.lhs.true, %if.end
  br label %cleanup, !dbg !3149

cleanup:                                          ; preds = %land.lhs.true, %if.end8
  %retval.0 = phi %union.tree_node* [ null, %if.end8 ], [ %var.0, %land.lhs.true ], !dbg !3132
  ret %union.tree_node* %retval.0, !dbg !3150
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_all_va_list_escapes(%struct.stdarg_info* %si) unnamed_addr #5 !dbg !3151 {
entry:
  %i = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !3155, metadata !DIExpression()), !dbg !3181
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3182
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3182
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3182
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3182
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3182
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i8*, !dbg !3183
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3184
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !3185
  %va_list_escape_vars = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 1, !dbg !3186
  %offsets = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 6, !dbg !3188
  %va_list_vars = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 0, !dbg !3189
  br label %for.cond, !dbg !3182

for.cond:                                         ; preds = %for.inc145, %entry
  %6 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre5, %for.inc145 ], !dbg !3191
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.inc145 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3192
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3192
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3156, metadata !DIExpression()), !dbg !3181
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 1, !dbg !3191
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3191
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !3191
  br i1 %cmp, label %cleanup148, label %for.body, !dbg !3182

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !3193
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !3194
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #8, !dbg !3194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !3194
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !3194
  br label %for.cond3, !dbg !3195

for.cond3:                                        ; preds = %for.inc140, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3157, metadata !DIExpression(DW_OP_deref)), !dbg !3183
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !3196
  %tobool = icmp eq i8 %call, 0, !dbg !3197
  br i1 %tobool, label %for.body4, label %cleanup142, !dbg !3198

for.body4:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3157, metadata !DIExpression(DW_OP_deref)), !dbg !3183
  %call5 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !3199
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call5, metadata !3161, metadata !DIExpression()), !dbg !3185
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7, !dbg !3200
  %call6 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call5) #8, !dbg !3201
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3201
  br i1 %tobool7, label %if.end, label %cleanup135, !dbg !3203

if.end:                                           ; preds = %for.body4
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3166, metadata !DIExpression(DW_OP_deref)), !dbg !3185
  %call8 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call5, i32 5) #8, !dbg !3204
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !3165, metadata !DIExpression()), !dbg !3185
  br label %for.cond9, !dbg !3204

for.cond9:                                        ; preds = %for.inc, %if.end
  %use.0 = phi %union.tree_node* [ %call8, %if.end ], [ %call134, %for.inc ], !dbg !3205
  call void @llvm.dbg.value(metadata %union.tree_node* %use.0, metadata !3165, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3166, metadata !DIExpression(DW_OP_deref)), !dbg !3185
  %call10 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !3206
  %tobool11 = icmp eq i8 %call10, 0, !dbg !3206
  br i1 %tobool11, label %for.body13, label %cleanup135.loopexit, !dbg !3204

for.body13:                                       ; preds = %for.cond9
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_escape_vars, align 8, !dbg !3207
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %use.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3208
  %9 = bitcast i32* %var to %struct.tree_decl_minimal**, !dbg !3208
  %10 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %9, align 8, !dbg !3208
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %10, i64 0, i32 2, !dbg !3208
  %11 = load i32, i32* %uid, align 4, !dbg !3208
  %call14 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %8, i32 %11) #6, !dbg !3209
  %tobool15 = icmp eq i32 %call14, 0, !dbg !3209
  br i1 %tobool15, label %for.inc, label %if.end17, !dbg !3210

if.end17:                                         ; preds = %for.body13
  %call18 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call5) #8, !dbg !3211
  %tobool19 = icmp eq i8 %call18, 0, !dbg !3211
  br i1 %tobool19, label %if.end126, label %if.then20, !dbg !3212

if.then20:                                        ; preds = %if.end17
  %call21 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call5) #8, !dbg !3213
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !3167, metadata !DIExpression()), !dbg !3214
  %call22 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !3215
  call void @llvm.dbg.value(metadata i32 %call22, metadata !3173, metadata !DIExpression()), !dbg !3214
  %call23 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call5) #8, !dbg !3216
  %cmp24 = icmp eq i32 %call23, 47, !dbg !3217
  br i1 %cmp24, label %land.lhs.true, label %if.end71, !dbg !3218

land.lhs.true:                                    ; preds = %if.then20
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3219
  %12 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3219
  %cmp25 = icmp eq %union.tree_node* %12, %use.0, !dbg !3220
  br i1 %cmp25, label %land.lhs.true26, label %if.end71, !dbg !3221

land.lhs.true26:                                  ; preds = %land.lhs.true
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3222
  %13 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3222
  %14 = load %struct.tree_type*, %struct.tree_type** %13, align 8, !dbg !3222
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %14, i64 0, i32 3, !dbg !3222
  %15 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !3222
  %tobool28 = icmp eq %union.tree_node* %15, null, !dbg !3222
  br i1 %tobool28, label %if.end71, label %land.lhs.true29, !dbg !3223

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %call34 = call i32 @host_integerp(%union.tree_node* nonnull %15, i32 1) #6, !dbg !3224
  %tobool35 = icmp eq i32 %call34, 0, !dbg !3224
  br i1 %tobool35, label %if.end71, label %land.lhs.true36, !dbg !3225

land.lhs.true36:                                  ; preds = %land.lhs.true29
  %16 = load i32*, i32** %offsets, align 8, !dbg !3226
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %use.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3227
  %17 = bitcast %union.tree_node** %version to i32*, !dbg !3227
  %18 = load i32, i32* %17, align 8, !dbg !3227
  %idxprom = zext i32 %18 to i64, !dbg !3228
  %arrayidx38 = getelementptr inbounds i32, i32* %16, i64 %idxprom, !dbg !3228
  %19 = load i32, i32* %arrayidx38, align 4, !dbg !3228
  %cmp39 = icmp eq i32 %19, -1, !dbg !3229
  br i1 %cmp39, label %if.end71, label %if.then40, !dbg !3230

if.then40:                                        ; preds = %land.lhs.true36
  %20 = load %struct.tree_type*, %struct.tree_type** %13, align 8, !dbg !3231
  %size_unit44 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %20, i64 0, i32 3, !dbg !3231
  %21 = load %union.tree_node*, %union.tree_node** %size_unit44, align 8, !dbg !3231
  call void @llvm.dbg.value(metadata %union.tree_node* %21, metadata !3177, metadata !DIExpression()), !dbg !3232
  %conv = sext i32 %19 to i64, !dbg !3233
  %call50 = call i64 @tree_low_cst(%union.tree_node* %21, i32 1) #6, !dbg !3234
  %add = add nsw i64 %call50, %conv, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %add, metadata !3174, metadata !DIExpression()), !dbg !3232
  %cmp51 = icmp ugt i64 %add, 254, !dbg !3236
  %22 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3238
  %va_list_gpr_size = getelementptr inbounds %struct.function, %struct.function* %22, i64 0, i32 20, !dbg !3238
  %bf.load = load i32, i32* %va_list_gpr_size, align 8, !dbg !3238
  br i1 %cmp51, label %if.then53, label %if.else, !dbg !3239

if.then53:                                        ; preds = %if.then40
  %bf.set = or i32 %bf.load, 255, !dbg !3240
  store i32 %bf.set, i32* %va_list_gpr_size, align 8, !dbg !3240
  br label %cleanup122, !dbg !3241

if.else:                                          ; preds = %if.then40
  %bf.clear58 = and i32 %bf.load, 255, !dbg !3242
  %conv59 = zext i32 %bf.clear58 to i64, !dbg !3244
  %cmp60 = icmp ugt i64 %add, %conv59, !dbg !3245
  br i1 %cmp60, label %if.then62, label %cleanup122, !dbg !3246

if.then62:                                        ; preds = %if.else
  %conv63 = trunc i64 %add to i32, !dbg !3247
  %bf.value = and i32 %conv63, 255, !dbg !3248
  %bf.clear67 = and i32 %bf.load, -256, !dbg !3248
  %bf.set68 = or i32 %bf.clear67, %bf.value, !dbg !3248
  store i32 %bf.set68, i32* %va_list_gpr_size, align 8, !dbg !3248
  br label %cleanup122, !dbg !3249

if.end71:                                         ; preds = %land.lhs.true36, %land.lhs.true29, %land.lhs.true26, %land.lhs.true, %if.then20
  %cmp72 = icmp eq %union.tree_node* %call21, %use.0, !dbg !3250
  br i1 %cmp72, label %land.lhs.true74, label %if.end121, !dbg !3251

land.lhs.true74:                                  ; preds = %if.end71
  %cmp75 = icmp eq i32 %call22, 66, !dbg !3252
  br i1 %cmp75, label %land.lhs.true77, label %lor.lhs.false, !dbg !3253

land.lhs.true77:                                  ; preds = %land.lhs.true74
  %call78 = call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %call5) #8, !dbg !3254
  %23 = getelementptr inbounds %union.tree_node, %union.tree_node* %call78, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3254
  %bf.load79 = load i64, i64* %23, align 8, !dbg !3254
  %bf.cast4 = and i64 %bf.load79, 65535, !dbg !3255
  %cmp81 = icmp eq i64 %bf.cast4, 23, !dbg !3255
  br i1 %cmp81, label %if.then90, label %lor.lhs.false, !dbg !3256

lor.lhs.false:                                    ; preds = %land.lhs.true77, %land.lhs.true74
  %call83 = call fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %call5) #8, !dbg !3257
  %tobool85 = icmp eq i8 %call83, 0, !dbg !3257
  br i1 %tobool85, label %lor.lhs.false86, label %if.then90, !dbg !3258

lor.lhs.false86:                                  ; preds = %lor.lhs.false
  %call87 = call fastcc i32 @get_gimple_rhs_class(i32 %call22) #8, !dbg !3259
  %cmp88 = icmp eq i32 %call87, 3, !dbg !3260
  br i1 %cmp88, label %if.then90, label %if.end121, !dbg !3261

if.then90:                                        ; preds = %lor.lhs.false, %lor.lhs.false86, %land.lhs.true77
  %call91 = call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call5) #8, !dbg !3262
  call void @llvm.dbg.value(metadata %union.tree_node* %call91, metadata !3178, metadata !DIExpression()), !dbg !3263
  %24 = getelementptr inbounds %union.tree_node, %union.tree_node* %call91, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3264
  %bf.load93 = load i64, i64* %24, align 8, !dbg !3264
  %bf.cast952 = and i64 %bf.load93, 65535, !dbg !3266
  %cmp96 = icmp eq i64 %bf.cast952, 141, !dbg !3266
  br i1 %cmp96, label %land.lhs.true98, label %if.end107, !dbg !3267

land.lhs.true98:                                  ; preds = %if.then90
  %25 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_escape_vars, align 8, !dbg !3268
  %var101 = getelementptr inbounds %union.tree_node, %union.tree_node* %call91, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3269
  %26 = bitcast i32* %var101 to %struct.tree_decl_minimal**, !dbg !3269
  %27 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %26, align 8, !dbg !3269
  %uid103 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %27, i64 0, i32 2, !dbg !3269
  %28 = load i32, i32* %uid103, align 4, !dbg !3269
  %call104 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %25, i32 %28) #6, !dbg !3270
  %tobool105 = icmp eq i32 %call104, 0, !dbg !3270
  br i1 %tobool105, label %land.lhs.true98.if.end107_crit_edge, label %cleanup, !dbg !3271

land.lhs.true98.if.end107_crit_edge:              ; preds = %land.lhs.true98
  %bf.load109.pre = load i64, i64* %24, align 8, !dbg !3272
  br label %if.end107, !dbg !3271

if.end107:                                        ; preds = %land.lhs.true98.if.end107_crit_edge, %if.then90
  %bf.load109 = phi i64 [ %bf.load109.pre, %land.lhs.true98.if.end107_crit_edge ], [ %bf.load93, %if.then90 ], !dbg !3272
  %bf.cast1113 = and i64 %bf.load109, 65535, !dbg !3273
  %cmp112 = icmp eq i64 %bf.cast1113, 32, !dbg !3273
  br i1 %cmp112, label %land.lhs.true114, label %if.end120, !dbg !3274

land.lhs.true114:                                 ; preds = %if.end107
  %29 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %va_list_vars, align 8, !dbg !3275
  %uid116 = getelementptr inbounds %union.tree_node, %union.tree_node* %call91, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3276
  %30 = load i32, i32* %uid116, align 4, !dbg !3276
  %call117 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %29, i32 %30) #6, !dbg !3277
  %tobool118 = icmp eq i32 %call117, 0, !dbg !3277
  br i1 %tobool118, label %if.end120, label %cleanup, !dbg !3278

if.end120:                                        ; preds = %land.lhs.true114, %if.end107
  br label %cleanup, !dbg !3279

cleanup:                                          ; preds = %land.lhs.true98, %land.lhs.true114, %if.end120
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end120 ], [ 10, %land.lhs.true98 ], [ 10, %land.lhs.true114 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %if.end121, label %cleanup122

if.end121:                                        ; preds = %cleanup, %lor.lhs.false86, %if.end71
  br label %cleanup122, !dbg !3280

cleanup122:                                       ; preds = %if.then53, %if.then62, %if.else, %cleanup, %if.end121
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 0, %if.end121 ], [ 10, %if.else ], [ 10, %if.then62 ], [ 10, %if.then53 ]
  %switch = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %switch, label %if.end126, label %for.inc

if.end126:                                        ; preds = %if.end17, %cleanup122
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3281
  %tobool127 = icmp eq %struct._IO_FILE* %31, null, !dbg !3281
  br i1 %tobool127, label %cleanup135, label %land.lhs.true128, !dbg !3283

land.lhs.true128:                                 ; preds = %if.end126
  %32 = load i32, i32* @dump_flags, align 4, !dbg !3284
  %and = and i32 %32, 8, !dbg !3285
  %tobool129 = icmp eq i32 %and, 0, !dbg !3285
  br i1 %tobool129, label %cleanup135, label %if.then130, !dbg !3286

if.then130:                                       ; preds = %land.lhs.true128
  %call131 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* nonnull %31) #6, !dbg !3287
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3289
  %34 = load i32, i32* @dump_flags, align 4, !dbg !3290
  call void @print_gimple_stmt(%struct._IO_FILE* %33, %union.gimple_statement_d* %call5, i32 0, i32 %34) #6, !dbg !3291
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3292
  %call132 = call i32 @fputc(i32 10, %struct._IO_FILE* %35) #6, !dbg !3293
  br label %cleanup135, !dbg !3294

for.inc:                                          ; preds = %for.body13, %cleanup122
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3166, metadata !DIExpression(DW_OP_deref)), !dbg !3185
  %call134 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #8, !dbg !3206
  call void @llvm.dbg.value(metadata %union.tree_node* %call134, metadata !3165, metadata !DIExpression()), !dbg !3185
  br label %for.cond9, !dbg !3206, !llvm.loop !3295

cleanup135.loopexit:                              ; preds = %for.cond9
  br label %cleanup135, !dbg !3297

cleanup135:                                       ; preds = %cleanup135.loopexit, %land.lhs.true128, %if.end126, %for.body4, %if.then130
  %cleanup.dest.slot.2 = phi i32 [ 7, %for.body4 ], [ 1, %if.then130 ], [ 1, %land.lhs.true128 ], [ 1, %if.end126 ], [ 0, %cleanup135.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7, !dbg !3297
  switch i32 %cleanup.dest.slot.2, label %cleanup142 [
    i32 0, label %for.inc140
    i32 7, label %for.inc140
  ]

for.inc140:                                       ; preds = %cleanup135, %cleanup135
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3157, metadata !DIExpression(DW_OP_deref)), !dbg !3183
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i) #8, !dbg !3298
  br label %for.cond3, !dbg !3299, !llvm.loop !3300

cleanup142:                                       ; preds = %for.cond3, %cleanup135
  %cleanup.dest.slot.3 = phi i32 [ %cleanup.dest.slot.2, %cleanup135 ], [ 0, %for.cond3 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !3302
  %cond = icmp eq i32 %cleanup.dest.slot.3, 0
  br i1 %cond, label %for.inc145, label %cleanup148

for.inc145:                                       ; preds = %cleanup142
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3191
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3303
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3191
  br label %for.cond, !dbg !3191, !llvm.loop !3304

cleanup148:                                       ; preds = %for.cond, %cleanup142
  %retval.4 = phi i8 [ 1, %cleanup142 ], [ 0, %for.cond ]
  ret i8 %retval.4, !dbg !3306
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3307 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3314, metadata !DIExpression()), !dbg !3315
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3316
  %0 = load i32, i32* %flags, align 8, !dbg !3316
  %and = and i32 %0, 512, !dbg !3317
  %tobool = icmp eq i32 %and, 0, !dbg !3317
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3318

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3319
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3319
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3320
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3321

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3322
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3322
  br label %cond.end, !dbg !3321

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3321
  ret %struct.gimple_seq_d* %cond, !dbg !3323
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3324 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3331, metadata !DIExpression()), !dbg !3332
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3333
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3333

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3334
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3334
  br label %cond.end, !dbg !3333

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3333
  ret %struct.gimple_seq_node_d* %cond, !dbg !3335
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3336 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3340, metadata !DIExpression()), !dbg !3341
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3342
  %bf.load = load i32, i32* %0, align 8, !dbg !3342
  %bf.clear = and i32 %bf.load, 255, !dbg !3342
  ret i32 %bf.clear, !dbg !3343
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3344 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3346, metadata !DIExpression()), !dbg !3347
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3348
  ret %union.tree_node* %call, !dbg !3349
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3350 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %i, metadata !3353, metadata !DIExpression()), !dbg !3354
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3355
  %tobool = icmp eq i8 %call, 0, !dbg !3355
  br i1 %tobool, label %return, label %if.then, !dbg !3357

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3358
  %idxprom = zext i32 %i to i64, !dbg !3358
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3358
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3358
  br label %return, !dbg !3360

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3361
  ret %union.tree_node* %retval.0, !dbg !3362
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3363 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3365, metadata !DIExpression()), !dbg !3366
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3367
  %cmp = icmp eq i32 %call, 0, !dbg !3368
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3369

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3370
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3371
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3372
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3373 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3375, metadata !DIExpression()), !dbg !3377
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3378
  %idxprom = zext i32 %call to i64, !dbg !3379
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3379
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3377
  %cmp = icmp eq i64 %0, 0, !dbg !3380
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3380

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3380
  br label %cond.end, !dbg !3380

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3381
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3382
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3383
  ret %union.tree_node** %2, !dbg !3384
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3385 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3389, metadata !DIExpression()), !dbg !3390
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3391
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3392
  ret i32 %call1, !dbg !3393
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3394 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3398, metadata !DIExpression()), !dbg !3399
  %idxprom = zext i32 %code to i64, !dbg !3400
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3400
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3400
  ret i32 %0, !dbg !3401
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3402 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3404, metadata !DIExpression()), !dbg !3405
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3406
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !3406
  ret %union.tree_node* %0, !dbg !3407
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3408 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3412, metadata !DIExpression()), !dbg !3413
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3414
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !3415
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3416
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !3417
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3418
  store i32 0, i32* %iter_type, align 4, !dbg !3419
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3420
  store i32 0, i32* %phi_i, align 8, !dbg !3421
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3422
  store i32 0, i32* %num_phi, align 4, !dbg !3423
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3424
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3425
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3426
  store i8 1, i8* %done, align 8, !dbg !3427
  ret void, !dbg !3428
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3429 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3433, metadata !DIExpression()), !dbg !3434
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3435
  %0 = load i32, i32* %nargs, align 4, !dbg !3435
  ret i32 %0, !dbg !3436
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @reachable_at_most_once(%struct.basic_block_def* %va_arg_bb, %struct.basic_block_def* %va_start_bb) unnamed_addr #5 !dbg !3437 {
entry:
  %stack = alloca %struct.VEC_edge_heap*, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp40 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %va_arg_bb, metadata !3441, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %va_start_bb, metadata !3442, metadata !DIExpression()), !dbg !3466
  %0 = bitcast %struct.VEC_edge_heap** %stack to i8*, !dbg !3467
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3467
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* null, metadata !3443, metadata !DIExpression()), !dbg !3466
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %stack, align 8, !dbg !3468
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3469
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3469
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3470
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3470
  %cmp = icmp eq %struct.basic_block_def* %va_arg_bb, %va_start_bb, !dbg !3471
  br i1 %cmp, label %cleanup51, label %if.end, !dbg !3473

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %va_arg_bb, %struct.basic_block_def* %va_start_bb) #6, !dbg !3474
  %tobool = icmp eq i8 %call, 0, !dbg !3474
  br i1 %tobool, label %cleanup51, label %if.end2, !dbg !3476

if.end2:                                          ; preds = %if.end
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3477
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3477
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3477
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 5, !dbg !3477
  %5 = load i32, i32* %x_last_basic_block, align 8, !dbg !3477
  %call3 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %5) #6, !dbg !3478
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call3, metadata !3452, metadata !DIExpression()), !dbg !3466
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call3) #6, !dbg !3479
  call void @llvm.dbg.value(metadata i8 1, metadata !3463, metadata !DIExpression()), !dbg !3466
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3480
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3480
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %va_arg_bb, i64 0, i32 0, !dbg !3480
  %call4 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3480
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3480
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call4, 0, !dbg !3480
  store i32 %8, i32* %7, align 8, !dbg !3480
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3480
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call4, 1, !dbg !3480
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !3480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !3480
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3480
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3482
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3482
  br label %for.cond, !dbg !3480

for.cond:                                         ; preds = %for.body, %if.end2
  %13 = load i32, i32* %11, align 8, !dbg !3484
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !3484
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3444, metadata !DIExpression(DW_OP_deref)), !dbg !3466
  %call5 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %e) #8, !dbg !3484
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3480
  br i1 %tobool6, label %while.cond.preheader, label %for.body, !dbg !3480

while.cond.preheader:                             ; preds = %for.cond
  %15 = bitcast %struct.edge_iterator* %tmp40 to i8*, !dbg !3485
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp40, i64 0, i32 0, !dbg !3485
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp40, i64 0, i32 1, !dbg !3485
  br label %while.cond, !dbg !3489

for.body:                                         ; preds = %for.cond
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3490
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !3444, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %stack, metadata !3443, metadata !DIExpression(DW_OP_deref)), !dbg !3466
  %call7 = call fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** nonnull %stack, %struct.edge_def* %18) #8, !dbg !3490
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3445, metadata !DIExpression(DW_OP_deref)), !dbg !3466
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3484
  br label %for.cond, !dbg !3484, !llvm.loop !3491

while.cond:                                       ; preds = %while.cond.preheader, %cleanup
  %ret.0 = phi i8 [ %ret.1, %cleanup ], [ 1, %while.cond.preheader ], !dbg !3466
  call void @llvm.dbg.value(metadata i8 %ret.0, metadata !3463, metadata !DIExpression()), !dbg !3466
  %19 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %stack, align 8, !dbg !3493
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %19, metadata !3443, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %19, metadata !3443, metadata !DIExpression()), !dbg !3466
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %19, i64 0, i32 0, !dbg !3493
  %call9 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %base) #8, !dbg !3493
  %cmp10 = icmp eq i32 %call9, 0, !dbg !3493
  br i1 %cmp10, label %while.end, label %while.body, !dbg !3489

while.body:                                       ; preds = %while.cond
  %20 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %stack, align 8, !dbg !3494
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %20, metadata !3443, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %20, metadata !3443, metadata !DIExpression()), !dbg !3466
  %base13 = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %20, i64 0, i32 0, !dbg !3494
  %call17 = call fastcc %struct.edge_def* @VEC_edge_base_pop(%struct.VEC_edge_base* %base13) #8, !dbg !3494
  call void @llvm.dbg.value(metadata %struct.edge_def* %call17, metadata !3444, metadata !DIExpression()), !dbg !3466
  store %struct.edge_def* %call17, %struct.edge_def** %e, align 8, !dbg !3495
  call void @llvm.dbg.value(metadata %struct.edge_def* %call17, metadata !3444, metadata !DIExpression()), !dbg !3466
  %src18 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 0, !dbg !3496
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src18, align 8, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %21, metadata !3464, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata %struct.edge_def* %call17, metadata !3444, metadata !DIExpression()), !dbg !3466
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 7, !dbg !3498
  %22 = load i32, i32* %flags, align 8, !dbg !3498
  %and = and i32 %22, 14, !dbg !3500
  %tobool19 = icmp eq i32 %and, 0, !dbg !3500
  br i1 %tobool19, label %if.end21, label %cleanup, !dbg !3501

if.end21:                                         ; preds = %while.body
  %cmp22 = icmp eq %struct.basic_block_def* %21, %va_start_bb, !dbg !3502
  br i1 %cmp22, label %cleanup, label %if.end24, !dbg !3504, !llvm.loop !3505

if.end24:                                         ; preds = %if.end21
  %cmp25 = icmp eq %struct.basic_block_def* %21, %va_arg_bb, !dbg !3507
  br i1 %cmp25, label %cleanup, label %if.end27, !dbg !3509

if.end27:                                         ; preds = %if.end24
  %23 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3510
  %cfg29 = getelementptr inbounds %struct.function, %struct.function* %23, i64 0, i32 1, !dbg !3510
  %24 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg29, align 8, !dbg !3510
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %24, i64 0, i32 0, !dbg !3510
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3510
  %cmp30 = icmp eq %struct.basic_block_def* %21, %25, !dbg !3510
  br i1 %cmp30, label %cond.true31, label %cond.end33, !dbg !3510

cond.true31:                                      ; preds = %if.end27
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3510
  br label %cond.end33, !dbg !3510

cond.end33:                                       ; preds = %if.end27, %cond.true31
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 9, !dbg !3511
  %26 = load i32, i32* %index, align 8, !dbg !3511
  %div = lshr i32 %26, 6, !dbg !3511
  %idxprom = zext i32 %div to i64, !dbg !3511
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 3, i64 %idxprom, !dbg !3511
  %27 = load i64, i64* %arrayidx, align 8, !dbg !3511
  %rem = and i32 %26, 63, !dbg !3511
  %sh_prom = zext i32 %rem to i64, !dbg !3511
  %28 = shl i64 1, %sh_prom, !dbg !3511
  %29 = and i64 %27, %28, !dbg !3511
  %tobool37 = icmp eq i64 %29, 0, !dbg !3511
  br i1 %tobool37, label %if.then38, label %cleanup, !dbg !3512

if.then38:                                        ; preds = %cond.end33
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call3, i32 %26) #8, !dbg !3513
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !3514
  %preds41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 0, !dbg !3514
  %call42 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds41) #8, !dbg !3514
  %30 = extractvalue { i32, %struct.VEC_edge_gc** } %call42, 0, !dbg !3514
  store i32 %30, i32* %16, align 8, !dbg !3514
  %31 = extractvalue { i32, %struct.VEC_edge_gc** } %call42, 1, !dbg !3514
  store %struct.VEC_edge_gc** %31, %struct.VEC_edge_gc*** %17, align 8, !dbg !3514
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !3514
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !3514
  br label %for.cond43, !dbg !3514

for.cond43:                                       ; preds = %for.body46, %if.then38
  %32 = load i32, i32* %11, align 8, !dbg !3515
  %33 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !3515
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3444, metadata !DIExpression(DW_OP_deref)), !dbg !3466
  %call44 = call fastcc zeroext i8 @ei_cond(i32 %32, %struct.VEC_edge_gc** %33, %struct.edge_def** nonnull %e) #8, !dbg !3515
  %tobool45 = icmp eq i8 %call44, 0, !dbg !3514
  br i1 %tobool45, label %cleanup.loopexit, label %for.body46, !dbg !3514

for.body46:                                       ; preds = %for.cond43
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3517
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !3444, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %stack, metadata !3443, metadata !DIExpression(DW_OP_deref)), !dbg !3466
  %call47 = call fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** nonnull %stack, %struct.edge_def* %34) #8, !dbg !3517
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3445, metadata !DIExpression(DW_OP_deref)), !dbg !3466
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3515
  br label %for.cond43, !dbg !3515, !llvm.loop !3518

cleanup.loopexit:                                 ; preds = %for.cond43
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end33, %while.body, %if.end24, %if.end21
  %ret.1 = phi i8 [ 0, %while.body ], [ %ret.0, %if.end21 ], [ 0, %if.end24 ], [ %ret.0, %cond.end33 ], [ %ret.0, %cleanup.loopexit ], !dbg !3466
  %cleanup.dest.slot.0 = phi i1 [ true, %while.body ], [ false, %if.end21 ], [ true, %if.end24 ], [ false, %cond.end33 ], [ false, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata i8 %ret.1, metadata !3463, metadata !DIExpression()), !dbg !3466
  br i1 %cleanup.dest.slot.0, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %cleanup
  %ret.2 = phi i8 [ %ret.1, %cleanup ], [ %ret.0, %while.cond ], !dbg !3466
  call void @llvm.dbg.value(metadata i8 %ret.2, metadata !3463, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %stack, metadata !3443, metadata !DIExpression(DW_OP_deref)), !dbg !3466
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %stack) #8, !dbg !3520
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 0, !dbg !3521
  %35 = load i8*, i8** %popcount, align 8, !dbg !3521
  call void @free(i8* %35) #6, !dbg !3521
  %36 = bitcast %struct.simple_bitmap_def* %call3 to i8*, !dbg !3521
  call void @free(i8* %36) #6, !dbg !3521
  br label %cleanup51, !dbg !3522

cleanup51:                                        ; preds = %if.end, %entry, %while.end
  %retval.0 = phi i8 [ %ret.2, %while.end ], [ 1, %entry ], [ 0, %if.end ], !dbg !3466
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3523
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3523
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3523
  ret i8 %retval.0, !dbg !3523
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @va_list_counter_bump(%struct.stdarg_info* %si, %union.tree_node* %counter, %union.tree_node* %rhs, i8 zeroext %gpr_p) unnamed_addr #5 !dbg !3524 {
entry:
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !3528, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata %union.tree_node* %counter, metadata !3529, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !3530, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8 %gpr_p, metadata !3531, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 0, metadata !3535, metadata !DIExpression()), !dbg !3546
  %offsets = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 6, !dbg !3547
  %0 = load i32*, i32** %offsets, align 8, !dbg !3547
  %cmp = icmp eq i32* %0, null, !dbg !3548
  br i1 %cmp, label %if.then, label %if.end, !dbg !3549

if.then:                                          ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3550
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 3, !dbg !3550
  %2 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3550
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %2, i64 0, i32 2, !dbg !3550
  %3 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !3550
  %tobool = icmp eq %struct.VEC_tree_gc* %3, null, !dbg !3550
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3550

cond.true:                                        ; preds = %if.then
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %3, i64 0, i32 0, !dbg !3550
  br label %cond.end, !dbg !3550

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.then ], !dbg !3550
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #8, !dbg !3550
  %conv = zext i32 %call to i64, !dbg !3550
  %mul = shl nuw nsw i64 %conv, 2, !dbg !3550
  %call4 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3550
  %4 = bitcast i32** %offsets to i8**, !dbg !3551
  store i8* %call4, i8** %4, align 8, !dbg !3551
  call void @llvm.dbg.value(metadata i32 0, metadata !3539, metadata !DIExpression()), !dbg !3552
  br label %for.cond, !dbg !3553

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %cond.end ], !dbg !3555
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3539, metadata !DIExpression()), !dbg !3552
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3556
  %gimple_df7 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 3, !dbg !3556
  %6 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df7, align 8, !dbg !3556
  %ssa_names8 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %6, i64 0, i32 2, !dbg !3556
  %7 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names8, align 8, !dbg !3556
  %tobool9 = icmp eq %struct.VEC_tree_gc* %7, null, !dbg !3556
  br i1 %tobool9, label %cond.end16, label %cond.true10, !dbg !3556

cond.true10:                                      ; preds = %for.cond
  %base14 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %7, i64 0, i32 0, !dbg !3556
  br label %cond.end16, !dbg !3556

cond.end16:                                       ; preds = %for.cond, %cond.true10
  %cond17 = phi %struct.VEC_tree_base* [ %base14, %cond.true10 ], [ null, %for.cond ], !dbg !3556
  %call18 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond17) #8, !dbg !3556
  %8 = zext i32 %call18 to i64, !dbg !3558
  %cmp19 = icmp ult i64 %indvars.iv, %8, !dbg !3558
  br i1 %cmp19, label %for.body, label %if.end.loopexit, !dbg !3559

for.body:                                         ; preds = %cond.end16
  %9 = load i32*, i32** %offsets, align 8, !dbg !3560
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %indvars.iv, !dbg !3561
  store i32 -1, i32* %arrayidx, align 4, !dbg !3562
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3563
  br label %for.cond, !dbg !3564, !llvm.loop !3565

if.end.loopexit:                                  ; preds = %cond.end16
  br label %if.end, !dbg !3567

if.end:                                           ; preds = %if.end.loopexit, %entry
  %tobool23 = icmp eq i8 %gpr_p, 0, !dbg !3567
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3546
  %va_list_gpr_size = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 20, !dbg !3546
  %bf.load = load i32, i32* %va_list_gpr_size, align 8, !dbg !3546
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !3567
  %cond31.v = select i1 %tobool23, i32 %bf.lshr, i32 %bf.load, !dbg !3567
  %cond31 = and i32 %cond31.v, 255, !dbg !3567
  %conv32 = zext i32 %cond31 to i64, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %conv32, metadata !3537, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i32 255, metadata !3538, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !3532, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !3533, metadata !DIExpression()), !dbg !3546
  %cmp44 = icmp eq i32 %cond31, 255, !dbg !3568
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %counter, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3572
  %operands143 = getelementptr inbounds %union.tree_node, %union.tree_node* %counter, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3574
  %arrayidx144 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands143, i64 1, !dbg !3574
  br label %while.cond, !dbg !3578

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %ret.0 = phi i64 [ 0, %if.end ], [ %ret.1, %while.cond.backedge ], !dbg !3546
  %lhs.0 = phi %union.tree_node* [ %rhs, %if.end ], [ %lhs.1, %while.cond.backedge ], !dbg !3579
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs.0, metadata !3532, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %ret.0, metadata !3535, metadata !DIExpression()), !dbg !3546
  %tobool36 = icmp eq %union.tree_node* %lhs.0, null, !dbg !3578
  br i1 %tobool36, label %while.end, label %while.body, !dbg !3578

while.body:                                       ; preds = %while.cond
  %12 = load i32*, i32** %offsets, align 8, !dbg !3580
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3581
  %13 = bitcast %union.tree_node** %version to i32*, !dbg !3581
  %14 = load i32, i32* %13, align 8, !dbg !3581
  %idxprom38 = zext i32 %14 to i64, !dbg !3582
  %arrayidx39 = getelementptr inbounds i32, i32* %12, i64 %idxprom38, !dbg !3582
  %15 = load i32, i32* %arrayidx39, align 4, !dbg !3582
  %cmp40 = icmp eq i32 %15, -1, !dbg !3583
  br i1 %cmp40, label %if.end56, label %if.then42, !dbg !3584

if.then42:                                        ; preds = %while.body
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !3585

if.then46:                                        ; preds = %if.then42
  call void @llvm.dbg.value(metadata i64 255, metadata !3535, metadata !DIExpression()), !dbg !3546
  br label %cleanup, !dbg !3586

if.end48:                                         ; preds = %if.then42
  %conv54 = sext i32 %15 to i64, !dbg !3588
  %sub7 = sub nsw i64 %conv54, %conv32, !dbg !3589
  %sub55 = add i64 %ret.0, %sub7, !dbg !3589
  call void @llvm.dbg.value(metadata i64 %sub55, metadata !3535, metadata !DIExpression()), !dbg !3546
  br label %cleanup, !dbg !3590

if.end56:                                         ; preds = %while.body
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3591
  %16 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3591
  %17 = load %union.gimple_statement_d*, %union.gimple_statement_d** %16, align 8, !dbg !3591
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %17, metadata !3534, metadata !DIExpression()), !dbg !3546
  %call58 = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %17) #8, !dbg !3592
  %tobool59 = icmp eq i8 %call58, 0, !dbg !3592
  br i1 %tobool59, label %cleanup, label %lor.lhs.false, !dbg !3594

lor.lhs.false:                                    ; preds = %if.end56
  %call60 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %17) #8, !dbg !3595
  %cmp61 = icmp eq %union.tree_node* %call60, %lhs.0, !dbg !3596
  br i1 %cmp61, label %if.end64, label %cleanup, !dbg !3597

if.end64:                                         ; preds = %lor.lhs.false
  %call65 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %17) #8, !dbg !3598
  call void @llvm.dbg.value(metadata i32 %call65, metadata !3542, metadata !DIExpression()), !dbg !3599
  %call66 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call65) #8, !dbg !3600
  %cmp67 = icmp eq i32 %call66, 3, !dbg !3602
  br i1 %cmp67, label %land.lhs.true, label %lor.lhs.false69, !dbg !3603

lor.lhs.false69:                                  ; preds = %if.end64
  %call70 = tail call fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %17) #8, !dbg !3604
  %tobool72 = icmp eq i8 %call70, 0, !dbg !3604
  br i1 %tobool72, label %if.end81, label %land.lhs.true, !dbg !3605

land.lhs.true:                                    ; preds = %lor.lhs.false69, %if.end64
  %call73 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %17) #8, !dbg !3606
  %18 = getelementptr inbounds %union.tree_node, %union.tree_node* %call73, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3606
  %bf.load75 = load i64, i64* %18, align 8, !dbg !3606
  %bf.cast6 = and i64 %bf.load75, 65535, !dbg !3607
  %cmp77 = icmp eq i64 %bf.cast6, 141, !dbg !3607
  br i1 %cmp77, label %if.then79, label %if.end81, !dbg !3608

if.then79:                                        ; preds = %land.lhs.true
  %call80 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %17) #8, !dbg !3609
  call void @llvm.dbg.value(metadata %union.tree_node* %call80, metadata !3532, metadata !DIExpression()), !dbg !3546
  br label %cleanup, !dbg !3611, !llvm.loop !3612

if.end81:                                         ; preds = %lor.lhs.false69, %land.lhs.true
  switch i32 %call65, label %if.end103 [
    i32 66, label %land.lhs.true87
    i32 63, label %land.lhs.true87
  ], !dbg !3614

land.lhs.true87:                                  ; preds = %if.end81, %if.end81
  %call88 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %17) #8, !dbg !3616
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %call88, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3616
  %bf.load90 = load i64, i64* %19, align 8, !dbg !3616
  %bf.cast923 = and i64 %bf.load90, 65535, !dbg !3617
  %cmp93 = icmp eq i64 %bf.cast923, 141, !dbg !3617
  br i1 %cmp93, label %land.lhs.true95, label %if.end103, !dbg !3618

land.lhs.true95:                                  ; preds = %land.lhs.true87
  %call96 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %17) #8, !dbg !3619
  %call97 = tail call i32 @host_integerp(%union.tree_node* %call96, i32 1) #6, !dbg !3620
  %tobool98 = icmp eq i32 %call97, 0, !dbg !3620
  br i1 %tobool98, label %if.end103, label %if.then99, !dbg !3621

if.then99:                                        ; preds = %land.lhs.true95
  %call100 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %17) #8, !dbg !3622
  %call101 = tail call i64 @tree_low_cst(%union.tree_node* %call100, i32 1) #6, !dbg !3624
  %add = add i64 %ret.0, %call101, !dbg !3625
  call void @llvm.dbg.value(metadata i64 %add, metadata !3535, metadata !DIExpression()), !dbg !3546
  %call102 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %17) #8, !dbg !3626
  call void @llvm.dbg.value(metadata %union.tree_node* %call102, metadata !3532, metadata !DIExpression()), !dbg !3546
  br label %cleanup, !dbg !3627, !llvm.loop !3612

if.end103:                                        ; preds = %land.lhs.true95, %if.end81, %land.lhs.true87
  %call104 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call65) #8, !dbg !3628
  %cmp105 = icmp eq i32 %call104, 3, !dbg !3630
  br i1 %cmp105, label %if.end108, label %cleanup, !dbg !3631

if.end108:                                        ; preds = %if.end103
  %call109 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %17) #8, !dbg !3632
  call void @llvm.dbg.value(metadata %union.tree_node* %call109, metadata !3530, metadata !DIExpression()), !dbg !3546
  %bf.load111 = load i64, i64* %11, align 8, !dbg !3633
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %call109, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3634
  %bf.load115 = load i64, i64* %20, align 8, !dbg !3634
  %21 = xor i64 %bf.load111, %bf.load115, !dbg !3635
  %22 = and i64 %21, 65535, !dbg !3635
  %cmp118 = icmp eq i64 %22, 0, !dbg !3635
  br i1 %cmp118, label %if.end121, label %cleanup, !dbg !3636

if.end121:                                        ; preds = %if.end108
  %bf.cast1254 = and i64 %bf.load111, 65535, !dbg !3637
  %cmp126 = icmp eq i64 %bf.cast1254, 41, !dbg !3637
  br i1 %cmp126, label %if.then128, label %if.else, !dbg !3638

if.then128:                                       ; preds = %if.end121
  %call129 = tail call %union.tree_node* @get_base_address(%union.tree_node* %counter) #6, !dbg !3639
  %call130 = tail call %union.tree_node* @get_base_address(%union.tree_node* %call109) #6, !dbg !3640
  %cmp131 = icmp eq %union.tree_node* %call129, %call130, !dbg !3641
  br i1 %cmp131, label %lor.lhs.false133, label %cleanup, !dbg !3642

lor.lhs.false133:                                 ; preds = %if.then128
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call109, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3643
  %arrayidx134 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3643
  %23 = bitcast %union.tree_node** %arrayidx134 to i64**, !dbg !3643
  %24 = load i64*, i64** %23, align 8, !dbg !3643
  %bf.load136 = load i64, i64* %24, align 8, !dbg !3643
  %bf.cast1385 = and i64 %bf.load136, 65535, !dbg !3644
  %cmp139 = icmp eq i64 %bf.cast1385, 31, !dbg !3644
  br i1 %cmp139, label %lor.lhs.false141, label %cleanup, !dbg !3645

lor.lhs.false141:                                 ; preds = %lor.lhs.false133
  %25 = bitcast i64* %24 to %union.tree_node*, !dbg !3645
  %26 = load %union.tree_node*, %union.tree_node** %arrayidx144, align 8, !dbg !3646
  %cmp148 = icmp eq %union.tree_node* %26, %25, !dbg !3647
  br i1 %cmp148, label %if.end156, label %cleanup, !dbg !3648

if.else:                                          ; preds = %if.end121
  %cmp152 = icmp eq %union.tree_node* %call109, %counter, !dbg !3649
  br i1 %cmp152, label %if.end156, label %cleanup, !dbg !3651

if.end156:                                        ; preds = %lor.lhs.false141, %if.else
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3532, metadata !DIExpression()), !dbg !3546
  br label %cleanup, !dbg !3613

cleanup:                                          ; preds = %lor.lhs.false141, %lor.lhs.false133, %if.then128, %if.else, %if.end108, %if.end103, %lor.lhs.false, %if.end56, %if.end156, %if.then99, %if.then79, %if.end48, %if.then46
  %ret.1 = phi i64 [ 255, %if.then46 ], [ %sub55, %if.end48 ], [ %ret.0, %if.then79 ], [ %add, %if.then99 ], [ %ret.0, %if.end156 ], [ %ret.0, %lor.lhs.false ], [ %ret.0, %if.end56 ], [ %ret.0, %if.end103 ], [ %ret.0, %if.end108 ], [ %ret.0, %lor.lhs.false141 ], [ %ret.0, %lor.lhs.false133 ], [ %ret.0, %if.then128 ], [ %ret.0, %if.else ], !dbg !3546
  %lhs.1 = phi %union.tree_node* [ %lhs.0, %if.then46 ], [ %lhs.0, %if.end48 ], [ %call80, %if.then79 ], [ %call102, %if.then99 ], [ null, %if.end156 ], [ %lhs.0, %lor.lhs.false ], [ %lhs.0, %if.end56 ], [ %lhs.0, %if.end103 ], [ %lhs.0, %if.end108 ], [ %lhs.0, %lor.lhs.false141 ], [ %lhs.0, %lor.lhs.false133 ], [ %lhs.0, %if.then128 ], [ %lhs.0, %if.else ], !dbg !3546
  %cleanup.dest.slot.0 = phi i32 [ 6, %if.then46 ], [ 6, %if.end48 ], [ 5, %if.then79 ], [ 5, %if.then99 ], [ 0, %if.end156 ], [ 1, %lor.lhs.false ], [ 1, %if.end56 ], [ 1, %if.end103 ], [ 1, %if.end108 ], [ 1, %lor.lhs.false141 ], [ 1, %lor.lhs.false133 ], [ 1, %if.then128 ], [ 1, %if.else ]
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs.1, metadata !3532, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i64 %ret.1, metadata !3535, metadata !DIExpression()), !dbg !3546
  switch i32 %cleanup.dest.slot.0, label %cleanup236.loopexit8 [
    i32 0, label %while.cond.backedge
    i32 6, label %while.end
    i32 5, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %cleanup, %cleanup
  br label %while.cond, !dbg !3546, !llvm.loop !3612

while.end:                                        ; preds = %while.cond, %cleanup
  %ret.2 = phi i64 [ %ret.1, %cleanup ], [ %ret.0, %while.cond ], !dbg !3546
  call void @llvm.dbg.value(metadata i64 %ret.2, metadata !3535, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !3532, metadata !DIExpression()), !dbg !3546
  %add157 = add i64 %ret.2, %conv32, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %add157, metadata !3536, metadata !DIExpression()), !dbg !3546
  br label %while.cond158, !dbg !3653

while.cond158:                                    ; preds = %cleanup232, %while.end
  %lhs.2 = phi %union.tree_node* [ %rhs, %while.end ], [ %lhs.3, %cleanup232 ], !dbg !3654
  %val.0 = phi i64 [ %add157, %while.end ], [ %val.1, %cleanup232 ], !dbg !3655
  call void @llvm.dbg.value(metadata i64 %val.0, metadata !3536, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs.2, metadata !3532, metadata !DIExpression()), !dbg !3546
  %tobool159 = icmp eq %union.tree_node* %lhs.2, null, !dbg !3653
  br i1 %tobool159, label %cleanup236.loopexit, label %while.body160, !dbg !3653

while.body160:                                    ; preds = %while.cond158
  %27 = load i32*, i32** %offsets, align 8, !dbg !3656
  %version164 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3658
  %28 = bitcast %union.tree_node** %version164 to i32*, !dbg !3658
  %29 = load i32, i32* %28, align 8, !dbg !3658
  %idxprom165 = zext i32 %29 to i64, !dbg !3659
  %arrayidx166 = getelementptr inbounds i32, i32* %27, i64 %idxprom165, !dbg !3659
  %30 = load i32, i32* %arrayidx166, align 4, !dbg !3659
  %cmp167 = icmp eq i32 %30, -1, !dbg !3660
  br i1 %cmp167, label %if.end170, label %cleanup232, !dbg !3661

if.end170:                                        ; preds = %while.body160
  %cmp172 = icmp ugt i64 %val.0, 254, !dbg !3662
  br i1 %cmp172, label %if.then174, label %if.else180, !dbg !3664

if.then174:                                       ; preds = %if.end170
  br label %if.end187, !dbg !3665

if.else180:                                       ; preds = %if.end170
  %conv181 = trunc i64 %val.0 to i32, !dbg !3666
  br label %if.end187

if.end187:                                        ; preds = %if.else180, %if.then174
  %storemerge = phi i32 [ %conv181, %if.else180 ], [ 255, %if.then174 ], !dbg !3667
  store i32 %storemerge, i32* %arrayidx166, align 4, !dbg !3667
  %def_stmt189 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3668
  %31 = bitcast %union.tree_node** %def_stmt189 to %union.gimple_statement_d**, !dbg !3668
  %32 = load %union.gimple_statement_d*, %union.gimple_statement_d** %31, align 8, !dbg !3668
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %32, metadata !3534, metadata !DIExpression()), !dbg !3546
  %call190 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %32) #8, !dbg !3669
  call void @llvm.dbg.value(metadata i32 %call190, metadata !3544, metadata !DIExpression()), !dbg !3670
  %call191 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call190) #8, !dbg !3671
  %cmp192 = icmp eq i32 %call191, 3, !dbg !3673
  br i1 %cmp192, label %land.lhs.true198, label %lor.lhs.false194, !dbg !3674

lor.lhs.false194:                                 ; preds = %if.end187
  %call195 = tail call fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %32) #8, !dbg !3675
  %tobool197 = icmp eq i8 %call195, 0, !dbg !3675
  br i1 %tobool197, label %if.end208, label %land.lhs.true198, !dbg !3676

land.lhs.true198:                                 ; preds = %lor.lhs.false194, %if.end187
  %call199 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %32) #8, !dbg !3677
  %33 = getelementptr inbounds %union.tree_node, %union.tree_node* %call199, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3677
  %bf.load201 = load i64, i64* %33, align 8, !dbg !3677
  %bf.cast2032 = and i64 %bf.load201, 65535, !dbg !3678
  %cmp204 = icmp eq i64 %bf.cast2032, 141, !dbg !3678
  br i1 %cmp204, label %if.then206, label %if.end208, !dbg !3679

if.then206:                                       ; preds = %land.lhs.true198
  %call207 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %32) #8, !dbg !3680
  call void @llvm.dbg.value(metadata %union.tree_node* %call207, metadata !3532, metadata !DIExpression()), !dbg !3546
  br label %cleanup232, !dbg !3682, !llvm.loop !3683

if.end208:                                        ; preds = %lor.lhs.false194, %land.lhs.true198
  switch i32 %call190, label %cleanup232 [
    i32 66, label %land.lhs.true214
    i32 63, label %land.lhs.true214
  ], !dbg !3685

land.lhs.true214:                                 ; preds = %if.end208, %if.end208
  %call215 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %32) #8, !dbg !3687
  %34 = getelementptr inbounds %union.tree_node, %union.tree_node* %call215, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3687
  %bf.load217 = load i64, i64* %34, align 8, !dbg !3687
  %bf.cast2191 = and i64 %bf.load217, 65535, !dbg !3688
  %cmp220 = icmp eq i64 %bf.cast2191, 141, !dbg !3688
  br i1 %cmp220, label %land.lhs.true222, label %cleanup232, !dbg !3689

land.lhs.true222:                                 ; preds = %land.lhs.true214
  %call223 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %32) #8, !dbg !3690
  %call224 = tail call i32 @host_integerp(%union.tree_node* %call223, i32 1) #6, !dbg !3691
  %tobool225 = icmp eq i32 %call224, 0, !dbg !3691
  br i1 %tobool225, label %cleanup232, label %if.then226, !dbg !3692

if.then226:                                       ; preds = %land.lhs.true222
  %call227 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %32) #8, !dbg !3693
  %call228 = tail call i64 @tree_low_cst(%union.tree_node* %call227, i32 1) #6, !dbg !3695
  %sub229 = sub i64 %val.0, %call228, !dbg !3696
  call void @llvm.dbg.value(metadata i64 %sub229, metadata !3536, metadata !DIExpression()), !dbg !3546
  %call230 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %32) #8, !dbg !3697
  call void @llvm.dbg.value(metadata %union.tree_node* %call230, metadata !3532, metadata !DIExpression()), !dbg !3546
  br label %cleanup232, !dbg !3698, !llvm.loop !3683

cleanup232:                                       ; preds = %land.lhs.true222, %while.body160, %land.lhs.true214, %if.end208, %if.then226, %if.then206
  %lhs.3 = phi %union.tree_node* [ %call207, %if.then206 ], [ %call230, %if.then226 ], [ %lhs.2, %while.body160 ], [ null, %if.end208 ], [ null, %land.lhs.true222 ], [ null, %land.lhs.true214 ], !dbg !3546
  %val.1 = phi i64 [ %val.0, %if.then206 ], [ %sub229, %if.then226 ], [ %val.0, %while.body160 ], [ %val.0, %if.end208 ], [ %val.0, %land.lhs.true222 ], [ %val.0, %land.lhs.true214 ], !dbg !3546
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then206 ], [ false, %if.then226 ], [ true, %while.body160 ], [ false, %if.end208 ], [ false, %land.lhs.true222 ], [ false, %land.lhs.true214 ]
  call void @llvm.dbg.value(metadata i64 %val.1, metadata !3536, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs.3, metadata !3532, metadata !DIExpression()), !dbg !3546
  br i1 %cleanup.dest.slot.1, label %cleanup236.loopexit, label %while.cond158

cleanup236.loopexit:                              ; preds = %cleanup232, %while.cond158
  br label %cleanup236, !dbg !3699

cleanup236.loopexit8:                             ; preds = %cleanup
  br label %cleanup236, !dbg !3699

cleanup236:                                       ; preds = %cleanup236.loopexit8, %cleanup236.loopexit
  %retval.2 = phi i64 [ %ret.2, %cleanup236.loopexit ], [ -1, %cleanup236.loopexit8 ]
  ret i64 %retval.2, !dbg !3699
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3700 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3704, metadata !DIExpression()), !dbg !3706
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3707
  store i32 0, i32* %index, align 8, !dbg !3708
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3709
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3710
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3711
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3711
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3711
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3712 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3718, metadata !DIExpression()), !dbg !3719
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3720
  %tobool = icmp eq i8 %call, 0, !dbg !3720
  br i1 %tobool, label %if.then, label %if.else, !dbg !3722

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3723
  br label %return, !dbg !3725

if.else:                                          ; preds = %entry
  br label %return, !dbg !3726

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3728
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3728
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3728
  ret i8 %retval.0, !dbg !3729
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def** @VEC_edge_heap_safe_push(%struct.VEC_edge_heap** %vec_, %struct.edge_def* %obj_) unnamed_addr #0 !dbg !3730 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !3735, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata %struct.edge_def* %obj_, metadata !3736, metadata !DIExpression()), !dbg !3737
  %call = tail call fastcc i32 @VEC_edge_heap_reserve(%struct.VEC_edge_heap** %vec_, i32 1) #8, !dbg !3738
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !3738
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !3738
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3738

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %0, i64 0, i32 0, !dbg !3738
  br label %cond.end, !dbg !3738

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3738
  %call1 = tail call fastcc %struct.edge_def** @VEC_edge_base_quick_push(%struct.VEC_edge_base* %cond, %struct.edge_def* %obj_) #8, !dbg !3738
  ret %struct.edge_def** %call1, !dbg !3738
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3739 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3744, metadata !DIExpression()), !dbg !3745
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3746
  %0 = load i32, i32* %index, align 8, !dbg !3746
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3746
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3746
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !3746
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3746
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3746

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3746
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3746
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !3746
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3746
  br label %cond.end, !dbg !3746

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3746
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3746
  %cmp = icmp ult i32 %0, %call2, !dbg !3746
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3746

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3746
  br label %cond.end5, !dbg !3746

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3747
  %inc = add i32 %5, 1, !dbg !3747
  store i32 %inc, i32* %index, align 8, !dbg !3747
  ret void, !dbg !3748
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3749 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3755, metadata !DIExpression()), !dbg !3756
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3757
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3757

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3757
  %0 = load i32, i32* %num, align 8, !dbg !3757
  br label %cond.end, !dbg !3757

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3757
  ret i32 %cond, !dbg !3757
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_pop(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3758 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3763, metadata !DIExpression()), !dbg !3765
  %num1 = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3766
  %0 = load i32, i32* %num1, align 8, !dbg !3766
  %dec = add i32 %0, -1, !dbg !3766
  store i32 %dec, i32* %num1, align 8, !dbg !3766
  %idxprom = zext i32 %dec to i64, !dbg !3766
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3766
  %1 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3766
  call void @llvm.dbg.value(metadata %struct.edge_def* %1, metadata !3764, metadata !DIExpression()), !dbg !3765
  ret %struct.edge_def* %1, !dbg !3766
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3767 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3771, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3772, metadata !DIExpression()), !dbg !3776
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3777
  %0 = load i8*, i8** %popcount, align 8, !dbg !3777
  %tobool = icmp eq i8* %0, null, !dbg !3778
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3779

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3780
  %.pre2 = zext i32 %.pre to i64, !dbg !3781
  %.pre3 = shl i64 1, %.pre2, !dbg !3781
  %.pre4 = lshr i32 %bitno, 6, !dbg !3782
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3783
  br label %if.end7, !dbg !3779

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3784
  %idxprom = zext i32 %div to i64, !dbg !3784
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3784
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3784
  %rem = and i32 %bitno, 63, !dbg !3784
  %sh_prom = zext i32 %rem to i64, !dbg !3784
  %2 = shl i64 1, %sh_prom, !dbg !3785
  %3 = and i64 %1, %2, !dbg !3785
  %tobool1 = icmp eq i64 %3, 0, !dbg !3785
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3787

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3788
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3789
  %inc = add i8 %4, 1, !dbg !3789
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3789
  br label %if.end7, !dbg !3788

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3783
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3781
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3783
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3790
  %or = or i64 %5, %shl.pre-phi, !dbg !3790
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3790
  ret void, !dbg !3791
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** %vec_) unnamed_addr #0 !dbg !3792 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !3796, metadata !DIExpression()), !dbg !3797
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !3798
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !3798
  br i1 %tobool, label %if.end, label %if.then, !dbg !3800

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_edge_heap* %0 to i8*, !dbg !3800
  tail call void @free(i8* nonnull %1) #6, !dbg !3798
  br label %if.end, !dbg !3798

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %vec_, align 8, !dbg !3800
  ret void, !dbg !3800
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3801 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3806
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3806
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3806

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3806
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3806
  br label %cond.end, !dbg !3806

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3806
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3806
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3807
  %conv3 = zext i1 %cmp to i8, !dbg !3808
  ret i8 %conv3, !dbg !3809
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3810 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3815
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3815
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3815

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3815
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3815
  br label %cond.end, !dbg !3815

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3815
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !3815
  ret %struct.edge_def* %call2, !dbg !3816
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3817 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3822
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3822

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3822
  br label %cond.end, !dbg !3822

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3823
  ret %struct.VEC_edge_gc* %0, !dbg !3824
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3825 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3829, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3830, metadata !DIExpression()), !dbg !3831
  br label %land.end, !dbg !3832

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3832
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3832
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3832
  ret %struct.edge_def* %0, !dbg !3832
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_heap_reserve(%struct.VEC_edge_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3833 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !3837, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i32 1, metadata !3838, metadata !DIExpression()), !dbg !3840
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !3841
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !3841
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3841

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %0, i64 0, i32 0, !dbg !3841
  br label %cond.end, !dbg !3841

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3841
  %call = tail call fastcc i32 @VEC_edge_base_space(%struct.VEC_edge_base* %cond, i32 1) #8, !dbg !3841
  %tobool1 = icmp eq i32 %call, 0, !dbg !3841
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3841
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3839, metadata !DIExpression()), !dbg !3840
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3841

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_edge_heap** %vec_ to i8**, !dbg !3842
  %2 = load i8*, i8** %1, align 8, !dbg !3842
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !3842
  store i8* %call3, i8** %1, align 8, !dbg !3842
  br label %if.end, !dbg !3842

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3841
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def** @VEC_edge_base_quick_push(%struct.VEC_edge_base* %vec_, %struct.edge_def* %obj_) unnamed_addr #0 !dbg !3844 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3848, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata %struct.edge_def* %obj_, metadata !3849, metadata !DIExpression()), !dbg !3851
  %num1 = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3852
  %0 = load i32, i32* %num1, align 8, !dbg !3852
  %inc = add i32 %0, 1, !dbg !3852
  store i32 %inc, i32* %num1, align 8, !dbg !3852
  %idxprom = zext i32 %0 to i64, !dbg !3852
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3852
  call void @llvm.dbg.value(metadata %struct.edge_def** %arrayidx, metadata !3850, metadata !DIExpression()), !dbg !3851
  store %struct.edge_def* %obj_, %struct.edge_def** %arrayidx, align 8, !dbg !3852
  ret %struct.edge_def** %arrayidx, !dbg !3852
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_space(%struct.VEC_edge_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3853 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3857, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 1, metadata !3858, metadata !DIExpression()), !dbg !3859
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3860
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3860

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 1, !dbg !3860
  %0 = load i32, i32* %alloc, align 4, !dbg !3860
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3860
  %1 = load i32, i32* %num, align 8, !dbg !3860
  %cmp1 = icmp ne i32 %0, %1, !dbg !3860
  %phitmp = zext i1 %cmp1 to i32, !dbg !3860
  br label %cond.end, !dbg !3860

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3860

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3860
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3861 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3867, metadata !DIExpression()), !dbg !3868
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3869
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3869

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3869
  %0 = load i32, i32* %num, align 8, !dbg !3869
  br label %cond.end, !dbg !3869

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3869
  ret i32 %cond, !dbg !3869
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3870 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3874, metadata !DIExpression()), !dbg !3878
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %s) #8, !dbg !3879
  %tobool = icmp eq i8 %call, 0, !dbg !3879
  br i1 %tobool, label %return, label %if.then, !dbg !3880

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %s) #8, !dbg !3881
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3875, metadata !DIExpression()), !dbg !3882
  switch i32 %call1, label %lor.rhs [
    i32 116, label %lor.end
    i32 113, label %lor.end
    i32 118, label %lor.end
    i32 77, label %lor.end
  ], !dbg !3883

lor.rhs:                                          ; preds = %if.then
  br label %lor.end, !dbg !3884

lor.end:                                          ; preds = %if.then, %if.then, %if.then, %if.then, %lor.rhs
  %0 = phi i8 [ 1, %if.then ], [ 0, %lor.rhs ], [ 1, %if.then ], [ 1, %if.then ], [ 1, %if.then ]
  br label %return

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i8 [ %0, %lor.end ], [ 0, %entry ], !dbg !3878
  ret i8 %retval.0, !dbg !3885
}

declare dso_local i32 @host_integerp(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i64 @tree_low_cst(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_base_address(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3886 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3890, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i32 %i, metadata !3891, metadata !DIExpression()), !dbg !3892
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #8, !dbg !3893
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3894
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3895
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3896 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3901, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i32 %index, metadata !3902, metadata !DIExpression()), !dbg !3903
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3904
  %0 = load i32, i32* %capacity, align 8, !dbg !3904
  %cmp = icmp ult i32 %0, %index, !dbg !3904
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3904

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3904
  br label %cond.end, !dbg !3904

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3905
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3905
  ret %struct.phi_arg_d* %arrayidx, !dbg !3906
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3907 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3909, metadata !DIExpression()), !dbg !3911
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3912
  call void @llvm.dbg.value(metadata i32 %call, metadata !3910, metadata !DIExpression()), !dbg !3911
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3913

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3915
  %bf.load = load i32, i32* %0, align 8, !dbg !3915
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3915
  br label %cleanup, !dbg !3916

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3917
  br label %cleanup, !dbg !3919

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3911
  ret i32 %retval.0, !dbg !3920
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3921 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3923, metadata !DIExpression()), !dbg !3924
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3925
  %0 = load i32, i32* %num_ops, align 4, !dbg !3925
  ret i32 %0, !dbg !3926
}

; Function Attrs: nounwind uwtable
define internal fastcc void @va_list_counter_op(%struct.stdarg_info* %si, %union.tree_node* %ap, %union.tree_node* %var, i8 zeroext %gpr_p, i8 zeroext %write_p) unnamed_addr #5 !dbg !3927 {
entry:
  call void @llvm.dbg.value(metadata %struct.stdarg_info* %si, metadata !3931, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata %union.tree_node* %ap, metadata !3932, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3933, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8 %gpr_p, metadata !3934, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8 %write_p, metadata !3935, metadata !DIExpression()), !dbg !3937
  %compute_sizes = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 3, !dbg !3938
  %0 = load i32, i32* %compute_sizes, align 8, !dbg !3938
  %cmp = icmp slt i32 %0, 0, !dbg !3940
  br i1 %cmp, label %if.then, label %if.end16, !dbg !3941

if.then:                                          ; preds = %entry
  store i32 0, i32* %compute_sizes, align 8, !dbg !3942
  %va_start_count = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 4, !dbg !3944
  %1 = load i32, i32* %va_start_count, align 4, !dbg !3944
  %cmp2 = icmp eq i32 %1, 1, !dbg !3946
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !3947

land.lhs.true:                                    ; preds = %if.then
  %bb = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 2, !dbg !3948
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3948
  %va_start_bb = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 7, !dbg !3949
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %va_start_bb, align 8, !dbg !3949
  %call = tail call fastcc zeroext i8 @reachable_at_most_once(%struct.basic_block_def* %2, %struct.basic_block_def* %3) #8, !dbg !3950
  %tobool = icmp eq i8 %call, 0, !dbg !3950
  br i1 %tobool, label %if.end, label %if.then3, !dbg !3951

if.then3:                                         ; preds = %land.lhs.true
  store i32 1, i32* %compute_sizes, align 8, !dbg !3952
  br label %if.end, !dbg !3953

if.end:                                           ; preds = %land.lhs.true, %if.then3, %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3954
  %tobool5 = icmp eq %struct._IO_FILE* %4, null, !dbg !3954
  br i1 %tobool5, label %if.end16, label %land.lhs.true6, !dbg !3956

land.lhs.true6:                                   ; preds = %if.end
  %5 = load i32, i32* @dump_flags, align 4, !dbg !3957
  %and = and i32 %5, 8, !dbg !3958
  %tobool7 = icmp eq i32 %and, 0, !dbg !3958
  br i1 %tobool7, label %if.end16, label %if.then8, !dbg !3959

if.then8:                                         ; preds = %land.lhs.true6
  %bb9 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 2, !dbg !3960
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb9, align 8, !dbg !3960
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 9, !dbg !3961
  %7 = load i32, i32* %index, align 8, !dbg !3961
  %8 = load i32, i32* %compute_sizes, align 8, !dbg !3962
  %tobool11 = icmp eq i32 %8, 0, !dbg !3963
  %cond = select i1 %tobool11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), !dbg !3963
  %va_start_bb12 = getelementptr inbounds %struct.stdarg_info, %struct.stdarg_info* %si, i64 0, i32 7, !dbg !3964
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %va_start_bb12, align 8, !dbg !3964
  %index13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 9, !dbg !3965
  %10 = load i32, i32* %index13, align 8, !dbg !3965
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i32 %7, i8* %cond, i32 %10) #6, !dbg !3966
  br label %if.end16, !dbg !3966

if.end16:                                         ; preds = %land.lhs.true6, %if.end, %if.then8, %entry
  %tobool18 = icmp eq i8 %write_p, 0, !dbg !3967
  br i1 %tobool18, label %if.end68, label %land.lhs.true19, !dbg !3969

land.lhs.true19:                                  ; preds = %if.end16
  %11 = load i32, i32* %compute_sizes, align 8, !dbg !3970
  %tobool21 = icmp eq i32 %11, 0, !dbg !3971
  br i1 %tobool21, label %if.end68, label %land.lhs.true22, !dbg !3972

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %call23 = tail call fastcc i64 @va_list_counter_bump(%struct.stdarg_info* %si, %union.tree_node* %ap, %union.tree_node* %var, i8 zeroext %gpr_p) #8, !dbg !3973
  call void @llvm.dbg.value(metadata i64 %call23, metadata !3936, metadata !DIExpression()), !dbg !3937
  %add = add i64 %call23, 1, !dbg !3974
  %cmp24 = icmp ugt i64 %add, 1, !dbg !3975
  br i1 %cmp24, label %if.then26, label %if.end68, !dbg !3976

if.then26:                                        ; preds = %land.lhs.true22
  %tobool28 = icmp eq i8 %gpr_p, 0, !dbg !3977
  br i1 %tobool28, label %if.end44, label %land.lhs.true29, !dbg !3980

land.lhs.true29:                                  ; preds = %if.then26
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3981
  %va_list_gpr_size = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 20, !dbg !3982
  %bf.load = load i32, i32* %va_list_gpr_size, align 8, !dbg !3982
  %bf.clear = and i32 %bf.load, 255, !dbg !3982
  %conv30 = zext i32 %bf.clear to i64, !dbg !3981
  %add31 = add i64 %call23, %conv30, !dbg !3983
  %cmp32 = icmp ult i64 %add31, 255, !dbg !3984
  br i1 %cmp32, label %if.then34, label %if.end44, !dbg !3985

if.then34:                                        ; preds = %land.lhs.true29
  %13 = trunc i64 %call23 to i32, !dbg !3986
  %conv41 = add i32 %bf.load, %13, !dbg !3986
  %bf.value = and i32 %conv41, 255, !dbg !3986
  %bf.clear43 = and i32 %bf.load, -256, !dbg !3986
  %bf.set = or i32 %bf.clear43, %bf.value, !dbg !3986
  store i32 %bf.set, i32* %va_list_gpr_size, align 8, !dbg !3986
  br label %cleanup.cont, !dbg !3988

if.end44:                                         ; preds = %if.then26, %land.lhs.true29
  br i1 %tobool28, label %land.lhs.true46, label %if.end68, !dbg !3989

land.lhs.true46:                                  ; preds = %if.end44
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3991
  %va_list_fpr_size = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 20, !dbg !3992
  %bf.load48 = load i32, i32* %va_list_fpr_size, align 8, !dbg !3992
  %bf.lshr = lshr i32 %bf.load48, 8, !dbg !3992
  %bf.clear49 = and i32 %bf.lshr, 255, !dbg !3992
  %conv50 = zext i32 %bf.clear49 to i64, !dbg !3991
  %add51 = add i64 %call23, %conv50, !dbg !3993
  %cmp52 = icmp ult i64 %add51, 255, !dbg !3994
  br i1 %cmp52, label %if.then54, label %if.end68, !dbg !3995

if.then54:                                        ; preds = %land.lhs.true46
  %15 = trunc i64 %call23 to i32, !dbg !3996
  %conv621 = shl i32 %15, 8, !dbg !3996
  %bf.lshr582 = add i32 %bf.load48, %conv621, !dbg !3996
  %bf.shl = and i32 %bf.lshr582, 65280, !dbg !3996
  %bf.clear65 = and i32 %bf.load48, -65281, !dbg !3996
  %bf.set66 = or i32 %bf.clear65, %bf.shl, !dbg !3996
  store i32 %bf.set66, i32* %va_list_fpr_size, align 8, !dbg !3996
  br label %cleanup.cont, !dbg !3998

if.end68:                                         ; preds = %if.end44, %land.lhs.true19, %if.end16, %land.lhs.true46, %land.lhs.true22
  br i1 %tobool18, label %lor.lhs.false, label %if.then73, !dbg !3999

lor.lhs.false:                                    ; preds = %if.end68
  %16 = load i32, i32* %compute_sizes, align 8, !dbg !4001
  %tobool72 = icmp eq i32 %16, 0, !dbg !4002
  br i1 %tobool72, label %if.then73, label %cleanup.cont, !dbg !4003

if.then73:                                        ; preds = %lor.lhs.false, %if.end68
  %tobool74 = icmp eq i8 %gpr_p, 0, !dbg !4004
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4007
  %va_list_gpr_size77 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 20, !dbg !4007
  %bf.load78 = load i32, i32* %va_list_gpr_size77, align 8, !dbg !4007
  br i1 %tobool74, label %if.else, label %if.then75, !dbg !4008

if.then75:                                        ; preds = %if.then73
  %bf.set80 = or i32 %bf.load78, 255, !dbg !4009
  store i32 %bf.set80, i32* %va_list_gpr_size77, align 8, !dbg !4009
  br label %cleanup.cont, !dbg !4010

if.else:                                          ; preds = %if.then73
  %bf.set85 = or i32 %bf.load78, 65280, !dbg !4011
  store i32 %bf.set85, i32* %va_list_gpr_size77, align 8, !dbg !4011
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %lor.lhs.false, %if.then34, %if.then54, %if.then75, %if.else
  ret void, !dbg !4012
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4013 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4017, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4018, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.value(metadata i32 5, metadata !4019, metadata !DIExpression()), !dbg !4020
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 5) #8, !dbg !4021
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4022
  store i32 1, i32* %iter_type, align 4, !dbg !4023
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #8, !dbg !4024
  ret %union.tree_node* %call, !dbg !4025
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4026 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4030, metadata !DIExpression()), !dbg !4032
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4033
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !4033
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !4035
  br i1 %tobool, label %if.end, label %if.then, !dbg !4036

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !4037
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #8, !dbg !4037
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4031, metadata !DIExpression()), !dbg !4032
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !4039
  %2 = load i64*, i64** %1, align 8, !dbg !4039
  %3 = load i64, i64* %2, align 8, !dbg !4040
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4041
  store i64 %3, i64* %4, align 8, !dbg !4041
  br label %cleanup, !dbg !4042

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4043
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !4043
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !4045
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !4046

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !4047
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !4047
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #8, !dbg !4047
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !4031, metadata !DIExpression()), !dbg !4032
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !4049
  %8 = load i64*, i64** %7, align 8, !dbg !4049
  %9 = load i64, i64* %8, align 8, !dbg !4050
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !4051
  store i64 %9, i64* %10, align 8, !dbg !4051
  br label %cleanup, !dbg !4052

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4053
  store i8 1, i8* %done, align 8, !dbg !4054
  br label %cleanup, !dbg !4055

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !4032
  ret %union.tree_node* %retval.0, !dbg !4056
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4057 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4061, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4062, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata i32 5, metadata !4063, metadata !DIExpression()), !dbg !4064
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4065
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !4066
  br i1 true, label %land.lhs.true16, label %entry.if.end_crit_edge, !dbg !4067

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end, !dbg !4067

land.lhs.true16:                                  ; preds = %entry
  br i1 true, label %if.end, label %land.lhs.true19, !dbg !4069

land.lhs.true19:                                  ; preds = %land.lhs.true16
  br i1 undef, label %land.lhs.true19.if.end_crit_edge, label %if.then, !dbg !4070

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  br label %if.end, !dbg !4070

if.then:                                          ; preds = %land.lhs.true19
  br label %if.end, !dbg !4071

if.end:                                           ; preds = %land.lhs.true19.if.end_crit_edge, %entry.if.end_crit_edge, %land.lhs.true16, %if.then
  br i1 false, label %if.end.cond.end28_crit_edge, label %cond.true25, !dbg !4072

if.end.cond.end28_crit_edge:                      ; preds = %if.end
  br label %cond.end28, !dbg !4072

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #8, !dbg !4073
  br label %cond.end28, !dbg !4072

cond.end28:                                       ; preds = %if.end.cond.end28_crit_edge, %cond.true25
  %cond29 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ undef, %if.end.cond.end28_crit_edge ], !dbg !4072
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4074
  store %struct.use_optype_d* %cond29, %struct.use_optype_d** %uses, align 8, !dbg !4075
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4076
  store i8 0, i8* %done, align 8, !dbg !4077
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4078
  store i32 0, i32* %phi_i, align 8, !dbg !4079
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4080
  store i32 0, i32* %num_phi, align 4, !dbg !4081
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4082
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4083
  ret void, !dbg !4084
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4085 {
entry:
  unreachable, !dbg !4090
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4091 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4093, metadata !DIExpression()), !dbg !4094
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #8, !dbg !4095
  %tobool = icmp eq i8 %call, 0, !dbg !4095
  br i1 %tobool, label %return, label %if.end, !dbg !4097

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !4098
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !4098
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4098
  br label %return, !dbg !4099

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !4094
  ret %union.tree_node* %retval.0, !dbg !4100
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4101 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4105, metadata !DIExpression()), !dbg !4106
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #8, !dbg !4107
  %tobool = icmp eq i8 %call, 0, !dbg !4107
  br i1 %tobool, label %return, label %if.end, !dbg !4109

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !4110
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !4110
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !4110
  br label %return, !dbg !4111

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !4106
  ret %struct.use_optype_d* %retval.0, !dbg !4112
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4113 {
entry:
  unreachable, !dbg !4116
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4117 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4119, metadata !DIExpression()), !dbg !4120
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4121
  %cmp = icmp ugt i32 %call, 5, !dbg !4122
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4123

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !4124
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4125
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4126
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
!llvm.module.flags = !{!1750, !1751, !1752}
!llvm.ident = !{!1753}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_stdarg", scope: !2, file: !3, line: 903, type: !1724, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !510, globals: !1723, nameTableKind: None)
!3 = !DIFile(filename: "tree-stdarg.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !195, !200, !205, !224, !231, !238, !432, !439, !478, !504}
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
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !190, line: 363, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!191 = !{!192, !193, !194}
!192 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !190, line: 355, baseType: !7, size: 32, elements: !196)
!196 = !{!197, !198, !199}
!197 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!198 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!199 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !201, line: 474, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!202 = !{!203, !204}
!203 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!204 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !206, line: 280, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!208 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!212 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!213 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!214 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!215 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!216 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!217 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!219 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!221 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !206, line: 1817, baseType: !7, size: 32, elements: !225)
!225 = !{!226, !227, !228, !229, !230}
!226 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !206, line: 1805, baseType: !7, size: 32, elements: !232)
!232 = !{!233, !234, !235, !236, !237}
!233 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!235 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!236 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!237 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !206, line: 39, baseType: !7, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431}
!240 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!241 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!242 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!243 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!244 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!245 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!246 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!247 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!248 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!249 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!250 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!251 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!252 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!253 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!254 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!255 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!256 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!257 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!258 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!259 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!260 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!261 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!262 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!263 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!264 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!265 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!266 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!267 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!268 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!269 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!270 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!271 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!272 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!273 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!274 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!275 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!276 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!277 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!278 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!279 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!280 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!281 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!282 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!283 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!284 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!285 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!286 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!287 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!288 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!289 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!290 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!291 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!292 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!293 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!294 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!295 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!296 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!297 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!298 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!299 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!300 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!301 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!302 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!303 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!304 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!305 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!306 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!307 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!308 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!309 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!310 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!311 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!312 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!313 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!314 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!315 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!316 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!317 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!318 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!319 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!320 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!321 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!322 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!323 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!324 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!325 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!326 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!327 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!328 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!329 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!330 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!331 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!332 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!333 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!334 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!335 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!336 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!337 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!338 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!339 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!340 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!341 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!342 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!343 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!344 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!345 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!346 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!347 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!348 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!349 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!350 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!351 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!352 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!353 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!354 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!355 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!356 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!357 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!358 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!359 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!360 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!361 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!362 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!363 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!364 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!365 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!366 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!367 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!368 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!369 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!370 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!371 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!372 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!373 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!374 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!375 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!376 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!377 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!378 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!379 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!380 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!381 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!382 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!383 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!384 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!385 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!386 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!387 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!388 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!389 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!390 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!391 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!392 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!393 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!394 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!395 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!396 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!397 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!398 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!399 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!400 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!401 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!402 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!403 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!404 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!405 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!406 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!407 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!408 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!409 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!410 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!411 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!412 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!413 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!414 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!415 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!416 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!417 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!418 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!419 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!420 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!421 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!422 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!423 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!424 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!425 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!426 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!427 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!428 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!429 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!430 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!431 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !433, line: 119, baseType: !7, size: 32, elements: !434)
!433 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!434 = !{!435, !436, !437, !438}
!435 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!436 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!437 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!438 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!439 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !440, line: 51, baseType: !7, size: 32, elements: !441)
!440 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!442 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!443 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!444 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!445 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!446 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!447 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!448 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!449 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!450 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!451 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!452 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!453 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!454 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!455 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!456 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!457 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!458 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!459 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!460 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!461 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!462 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!463 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!464 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!465 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!466 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!467 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!468 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!469 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!470 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!471 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!472 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!473 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!474 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!475 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!476 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!477 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!478 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !440, line: 727, baseType: !7, size: 32, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!480 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!481 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!482 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!483 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!484 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!485 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!486 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!487 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!488 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!489 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!490 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!491 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!492 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!493 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!494 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!495 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!496 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!497 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!498 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!499 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!500 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!501 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!502 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!503 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!504 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !440, line: 80, baseType: !7, size: 32, elements: !505)
!505 = !{!506, !507, !508, !509}
!506 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!507 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!508 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!509 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!510 = !{!511, !512, !513, !514, !517, !518, !238, !520, !1181, !816, !1693, !849, !515, !1695, !574, !7, !1698, !1703, !504, !1704}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!513 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !521, line: 56, baseType: !522)
!521 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !206, line: 3371, size: 1792, elements: !524)
!524 = !{!525, !558, !564, !577, !584, !591, !596, !605, !611, !624, !636, !674, !682, !710, !727, !728, !733, !742, !748, !753, !757, !761, !1342, !1391, !1397, !1403, !1410, !1423, !1437, !1454, !1466, !1488, !1503, !1675}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !523, file: !206, line: 3372, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !206, line: 360, size: 64, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !526, file: !206, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !526, file: !206, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !526, file: !206, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !526, file: !206, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !526, file: !206, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !526, file: !206, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !526, file: !206, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !526, file: !206, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !526, file: !206, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !526, file: !206, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !526, file: !206, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !526, file: !206, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !526, file: !206, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !526, file: !206, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !526, file: !206, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !526, file: !206, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !526, file: !206, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !526, file: !206, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !526, file: !206, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !526, file: !206, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !526, file: !206, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !526, file: !206, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !526, file: !206, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !526, file: !206, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !526, file: !206, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !526, file: !206, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !526, file: !206, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !526, file: !206, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !526, file: !206, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !526, file: !206, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !523, file: !206, line: 3373, baseType: !559, size: 192)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !206, line: 402, size: 192, elements: !560)
!560 = !{!561, !562, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !559, file: !206, line: 403, baseType: !526, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !559, file: !206, line: 404, baseType: !520, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !559, file: !206, line: 405, baseType: !520, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !523, file: !206, line: 3374, baseType: !565, size: 320)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !206, line: 1384, size: 320, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !565, file: !206, line: 1385, baseType: !559, size: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !565, file: !206, line: 1386, baseType: !569, size: 128, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !570, line: 58, baseType: !571)
!570 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !570, line: 54, size: 128, elements: !572)
!572 = !{!573, !575}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !571, file: !570, line: 56, baseType: !574, size: 64)
!574 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !571, file: !570, line: 57, baseType: !576, size: 64, offset: 64)
!576 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !523, file: !206, line: 3375, baseType: !578, size: 256)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !206, line: 1397, size: 256, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !578, file: !206, line: 1398, baseType: !559, size: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !578, file: !206, line: 1399, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !206, line: 1392, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !523, file: !206, line: 3376, baseType: !585, size: 256)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !206, line: 1408, size: 256, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !585, file: !206, line: 1409, baseType: !559, size: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !585, file: !206, line: 1410, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !206, line: 1403, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !523, file: !206, line: 3377, baseType: !592, size: 256)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !206, line: 1437, size: 256, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !592, file: !206, line: 1438, baseType: !559, size: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !592, file: !206, line: 1439, baseType: !520, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !523, file: !206, line: 3378, baseType: !597, size: 256)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !206, line: 1418, size: 256, elements: !598)
!598 = !{!599, !600, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !597, file: !206, line: 1419, baseType: !559, size: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !597, file: !206, line: 1420, baseType: !513, size: 32, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !597, file: !206, line: 1421, baseType: !602, size: 8, offset: 224)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 8, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 1)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !523, file: !206, line: 3379, baseType: !606, size: 320)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !206, line: 1428, size: 320, elements: !607)
!607 = !{!608, !609, !610}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !606, file: !206, line: 1429, baseType: !559, size: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !606, file: !206, line: 1430, baseType: !520, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !606, file: !206, line: 1431, baseType: !520, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !523, file: !206, line: 3380, baseType: !612, size: 320)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !206, line: 1460, size: 320, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !612, file: !206, line: 1461, baseType: !559, size: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !612, file: !206, line: 1462, baseType: !616, size: 128, offset: 192)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !617, line: 31, size: 128, elements: !618)
!617 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!618 = !{!619, !622, !623}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !616, file: !617, line: 32, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !616, file: !617, line: 33, baseType: !7, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !616, file: !617, line: 34, baseType: !7, size: 32, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !523, file: !206, line: 3381, baseType: !625, size: 384)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !206, line: 2507, size: 384, elements: !626)
!626 = !{!627, !628, !633, !634, !635}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !625, file: !206, line: 2508, baseType: !559, size: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !625, file: !206, line: 2509, baseType: !629, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !630, line: 58, baseType: !631)
!630 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !632, line: 44, baseType: !7)
!632 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !625, file: !206, line: 2510, baseType: !7, size: 32, offset: 224)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !625, file: !206, line: 2511, baseType: !520, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !625, file: !206, line: 2512, baseType: !520, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !523, file: !206, line: 3382, baseType: !637, size: 896)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !206, line: 2652, size: 896, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !637, file: !206, line: 2653, baseType: !625, size: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !637, file: !206, line: 2654, baseType: !520, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !637, file: !206, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !637, file: !206, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !637, file: !206, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !637, file: !206, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !637, file: !206, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !637, file: !206, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !637, file: !206, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !637, file: !206, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !637, file: !206, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !637, file: !206, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !637, file: !206, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !637, file: !206, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !637, file: !206, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !637, file: !206, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !637, file: !206, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !637, file: !206, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !637, file: !206, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !637, file: !206, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !637, file: !206, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !637, file: !206, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !637, file: !206, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !637, file: !206, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !637, file: !206, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !637, file: !206, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !637, file: !206, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !637, file: !206, line: 2703, baseType: !7, size: 32, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !637, file: !206, line: 2705, baseType: !520, size: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !637, file: !206, line: 2706, baseType: !520, size: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !637, file: !206, line: 2707, baseType: !520, size: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !637, file: !206, line: 2708, baseType: !520, size: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !637, file: !206, line: 2711, baseType: !672, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !206, line: 2711, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !523, file: !206, line: 3383, baseType: !675, size: 960)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !206, line: 2756, size: 960, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !675, file: !206, line: 2757, baseType: !637, size: 896)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !675, file: !206, line: 2758, baseType: !679, size: 64, offset: 896)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !521, line: 50, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !521, line: 49, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !523, file: !206, line: 3384, baseType: !683, size: 1472)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !206, line: 3114, size: 1472, elements: !684)
!684 = !{!685, !706, !707, !708, !709}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !683, file: !206, line: 3115, baseType: !686, size: 1216)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !206, line: 2984, size: 1216, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !686, file: !206, line: 2985, baseType: !675, size: 960)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !686, file: !206, line: 2986, baseType: !520, size: 64, offset: 960)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !686, file: !206, line: 2987, baseType: !520, size: 64, offset: 1024)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !686, file: !206, line: 2988, baseType: !520, size: 64, offset: 1088)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !686, file: !206, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !686, file: !206, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !686, file: !206, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !686, file: !206, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !686, file: !206, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !686, file: !206, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !686, file: !206, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !686, file: !206, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !686, file: !206, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !686, file: !206, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !686, file: !206, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !686, file: !206, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !686, file: !206, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !686, file: !206, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !683, file: !206, line: 3117, baseType: !520, size: 64, offset: 1216)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !683, file: !206, line: 3119, baseType: !520, size: 64, offset: 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !683, file: !206, line: 3121, baseType: !520, size: 64, offset: 1344)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !683, file: !206, line: 3123, baseType: !520, size: 64, offset: 1408)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !523, file: !206, line: 3385, baseType: !711, size: 1088)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !206, line: 2874, size: 1088, elements: !712)
!712 = !{!713, !714, !715}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !711, file: !206, line: 2875, baseType: !675, size: 960)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !711, file: !206, line: 2876, baseType: !679, size: 64, offset: 960)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !711, file: !206, line: 2877, baseType: !716, size: 64, offset: 1024)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !718, line: 172, size: 128, elements: !719)
!718 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!719 = !{!720, !721, !722, !723, !724, !725, !726}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !717, file: !718, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !717, file: !718, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !717, file: !718, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !717, file: !718, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !717, file: !718, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !717, file: !718, line: 195, baseType: !7, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !717, file: !718, line: 199, baseType: !520, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !523, file: !206, line: 3386, baseType: !686, size: 1216)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !523, file: !206, line: 3387, baseType: !729, size: 1280)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !206, line: 3093, size: 1280, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !729, file: !206, line: 3094, baseType: !686, size: 1216)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !729, file: !206, line: 3095, baseType: !716, size: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !523, file: !206, line: 3388, baseType: !734, size: 1216)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !206, line: 2824, size: 1216, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !734, file: !206, line: 2825, baseType: !637, size: 896)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !734, file: !206, line: 2827, baseType: !520, size: 64, offset: 896)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !734, file: !206, line: 2828, baseType: !520, size: 64, offset: 960)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !734, file: !206, line: 2829, baseType: !520, size: 64, offset: 1024)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !734, file: !206, line: 2830, baseType: !520, size: 64, offset: 1088)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !734, file: !206, line: 2831, baseType: !520, size: 64, offset: 1152)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !523, file: !206, line: 3389, baseType: !743, size: 1024)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !206, line: 2850, size: 1024, elements: !744)
!744 = !{!745, !746, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !743, file: !206, line: 2851, baseType: !675, size: 960)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !743, file: !206, line: 2852, baseType: !513, size: 32, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !743, file: !206, line: 2853, baseType: !513, size: 32, offset: 992)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !523, file: !206, line: 3390, baseType: !749, size: 1024)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !206, line: 2857, size: 1024, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !749, file: !206, line: 2858, baseType: !675, size: 960)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !749, file: !206, line: 2859, baseType: !716, size: 64, offset: 960)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !523, file: !206, line: 3391, baseType: !754, size: 960)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !206, line: 2862, size: 960, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !754, file: !206, line: 2863, baseType: !675, size: 960)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !523, file: !206, line: 3392, baseType: !758, size: 1472)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !206, line: 3304, size: 1472, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !758, file: !206, line: 3305, baseType: !683, size: 1472)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !523, file: !206, line: 3393, baseType: !762, size: 1792)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !206, line: 3248, size: 1792, elements: !763)
!763 = !{!764, !765, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !762, file: !206, line: 3249, baseType: !683, size: 1472)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !762, file: !206, line: 3251, baseType: !766, size: 64, offset: 1472)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !768, line: 463, size: 1152, elements: !769)
!768 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!769 = !{!770, !773, !1089, !1090, !1262, !1265, !1266, !1267, !1268, !1269, !1270, !1294, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !767, file: !768, line: 464, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !768, line: 464, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !767, file: !768, line: 467, baseType: !774, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !190, line: 374, size: 640, elements: !776)
!776 = !{!777, !1064, !1065, !1078, !1079, !1080, !1081, !1082, !1083, !1085, !1087, !1088}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !775, file: !190, line: 377, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !521, line: 111, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !190, line: 217, size: 832, elements: !781)
!781 = !{!782, !1027, !1028, !1029, !1032, !1038, !1039, !1040, !1058, !1059, !1060, !1061, !1062, !1063}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !780, file: !190, line: 219, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !190, line: 151, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !190, line: 151, size: 128, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !785, file: !190, line: 151, baseType: !788, size: 128)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !190, line: 150, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !190, line: 150, size: 128, elements: !790)
!790 = !{!791, !792, !793}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !789, file: !190, line: 150, baseType: !7, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !789, file: !190, line: 150, baseType: !7, size: 32, offset: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !789, file: !190, line: 150, baseType: !794, size: 64, offset: 64)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 64, elements: !603)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !521, line: 108, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !190, line: 122, size: 512, elements: !798)
!798 = !{!799, !800, !801, !1019, !1020, !1021, !1022, !1023, !1024, !1025}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !797, file: !190, line: 124, baseType: !779, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !797, file: !190, line: 125, baseType: !779, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !797, file: !190, line: 131, baseType: !802, size: 64, offset: 128)
!802 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !190, line: 128, size: 64, elements: !803)
!803 = !{!804, !1018}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !802, file: !190, line: 129, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !521, line: 66, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !440, line: 143, size: 192, elements: !808)
!808 = !{!809, !1016, !1017}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !807, file: !440, line: 145, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !521, line: 69, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !440, line: 136, size: 192, elements: !813)
!813 = !{!814, !1014, !1015}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !812, file: !440, line: 137, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !521, line: 58, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !440, line: 737, size: 768, elements: !818)
!818 = !{!819, !836, !869, !875, !880, !885, !892, !898, !904, !909, !923, !928, !934, !939, !949, !954, !972, !979, !986, !992, !997, !1003, !1009}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !817, file: !440, line: 738, baseType: !820, size: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !440, line: 271, size: 256, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !820, file: !440, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !820, file: !440, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !820, file: !440, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !820, file: !440, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !820, file: !440, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !820, file: !440, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !820, file: !440, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !820, file: !440, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !820, file: !440, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !820, file: !440, line: 312, baseType: !7, size: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !820, file: !440, line: 316, baseType: !629, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !820, file: !440, line: 319, baseType: !7, size: 32, offset: 96)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !820, file: !440, line: 323, baseType: !779, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !820, file: !440, line: 327, baseType: !520, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !817, file: !440, line: 739, baseType: !837, size: 448)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !440, line: 350, size: 448, elements: !838)
!838 = !{!839, !867}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !837, file: !440, line: 353, baseType: !840, size: 384)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !440, line: 333, size: 384, elements: !841)
!841 = !{!842, !843, !850}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !840, file: !440, line: 336, baseType: !820, size: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !840, file: !440, line: 343, baseType: !844, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !433, line: 37, size: 128, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !845, file: !433, line: 39, baseType: !844, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !845, file: !433, line: 40, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !840, file: !440, line: 344, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !433, line: 45, size: 320, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !433, line: 47, baseType: !851, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !852, file: !433, line: 48, baseType: !856, size: 256, offset: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !206, line: 1883, size: 256, elements: !857)
!857 = !{!858, !860, !861, !866}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !856, file: !206, line: 1884, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !856, file: !206, line: 1885, baseType: !859, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !856, file: !206, line: 1891, baseType: !862, size: 64, offset: 128)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !206, line: 1891, size: 64, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !862, file: !206, line: 1891, baseType: !815, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !862, file: !206, line: 1891, baseType: !520, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !856, file: !206, line: 1892, baseType: !849, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !837, file: !440, line: 359, baseType: !868, size: 64, offset: 384)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 64, elements: !603)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !817, file: !440, line: 740, baseType: !870, size: 512)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !440, line: 365, size: 512, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !870, file: !440, line: 368, baseType: !840, size: 384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !870, file: !440, line: 373, baseType: !520, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !870, file: !440, line: 374, baseType: !520, size: 64, offset: 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !817, file: !440, line: 741, baseType: !876, size: 576)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !440, line: 380, size: 576, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !876, file: !440, line: 383, baseType: !870, size: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !876, file: !440, line: 389, baseType: !868, size: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !817, file: !440, line: 742, baseType: !881, size: 320)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !440, line: 395, size: 320, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !881, file: !440, line: 397, baseType: !820, size: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !881, file: !440, line: 400, baseType: !805, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !817, file: !440, line: 743, baseType: !886, size: 448)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !440, line: 406, size: 448, elements: !887)
!887 = !{!888, !889, !890, !891}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !886, file: !440, line: 408, baseType: !820, size: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !886, file: !440, line: 412, baseType: !520, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !886, file: !440, line: 420, baseType: !520, size: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !886, file: !440, line: 423, baseType: !805, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !817, file: !440, line: 744, baseType: !893, size: 384)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !440, line: 429, size: 384, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !893, file: !440, line: 431, baseType: !820, size: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !893, file: !440, line: 434, baseType: !520, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !893, file: !440, line: 437, baseType: !805, size: 64, offset: 320)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !817, file: !440, line: 745, baseType: !899, size: 384)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !440, line: 443, size: 384, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !899, file: !440, line: 445, baseType: !820, size: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !899, file: !440, line: 449, baseType: !520, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !899, file: !440, line: 453, baseType: !805, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !817, file: !440, line: 746, baseType: !905, size: 320)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !440, line: 459, size: 320, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !905, file: !440, line: 461, baseType: !820, size: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !905, file: !440, line: 464, baseType: !520, size: 64, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !817, file: !440, line: 747, baseType: !910, size: 768)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !440, line: 469, size: 768, elements: !911)
!911 = !{!912, !913, !914, !915, !916}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !910, file: !440, line: 471, baseType: !820, size: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !910, file: !440, line: 474, baseType: !7, size: 32, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !910, file: !440, line: 475, baseType: !7, size: 32, offset: 288)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !910, file: !440, line: 478, baseType: !520, size: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !910, file: !440, line: 481, baseType: !917, size: 384, offset: 384)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 384, elements: !603)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !206, line: 1917, size: 384, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !918, file: !206, line: 1920, baseType: !856, size: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !918, file: !206, line: 1921, baseType: !520, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !918, file: !206, line: 1922, baseType: !629, size: 32, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !817, file: !440, line: 748, baseType: !924, size: 320)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !440, line: 487, size: 320, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !924, file: !440, line: 490, baseType: !820, size: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !924, file: !440, line: 494, baseType: !513, size: 32, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !817, file: !440, line: 749, baseType: !929, size: 384)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !440, line: 500, size: 384, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !929, file: !440, line: 502, baseType: !820, size: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !929, file: !440, line: 506, baseType: !805, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !929, file: !440, line: 510, baseType: !805, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !817, file: !440, line: 750, baseType: !935, size: 320)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !440, line: 529, size: 320, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !935, file: !440, line: 531, baseType: !820, size: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !935, file: !440, line: 540, baseType: !805, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !817, file: !440, line: 751, baseType: !940, size: 704)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !440, line: 546, size: 704, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !940, file: !440, line: 549, baseType: !870, size: 512)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !940, file: !440, line: 553, baseType: !518, size: 64, offset: 512)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !940, file: !440, line: 557, baseType: !512, size: 8, offset: 576)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !940, file: !440, line: 558, baseType: !512, size: 8, offset: 584)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !940, file: !440, line: 559, baseType: !512, size: 8, offset: 592)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !940, file: !440, line: 560, baseType: !512, size: 8, offset: 600)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !940, file: !440, line: 566, baseType: !868, size: 64, offset: 640)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !817, file: !440, line: 752, baseType: !950, size: 384)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !440, line: 571, size: 384, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !950, file: !440, line: 573, baseType: !881, size: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !950, file: !440, line: 577, baseType: !520, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !817, file: !440, line: 753, baseType: !955, size: 576)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !440, line: 600, size: 576, elements: !956)
!956 = !{!957, !958, !959, !962, !971}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !955, file: !440, line: 602, baseType: !881, size: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !955, file: !440, line: 605, baseType: !520, size: 64, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !955, file: !440, line: 609, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !961, line: 46, baseType: !574)
!961 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!962 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !955, file: !440, line: 612, baseType: !963, size: 64, offset: 448)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !440, line: 581, size: 320, elements: !965)
!965 = !{!966, !967, !968, !969, !970}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !964, file: !440, line: 583, baseType: !238, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !964, file: !440, line: 586, baseType: !520, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !964, file: !440, line: 589, baseType: !520, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !964, file: !440, line: 592, baseType: !520, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !964, file: !440, line: 595, baseType: !520, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !955, file: !440, line: 616, baseType: !805, size: 64, offset: 512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !817, file: !440, line: 754, baseType: !973, size: 512)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !440, line: 622, size: 512, elements: !974)
!974 = !{!975, !976, !977, !978}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !973, file: !440, line: 624, baseType: !881, size: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !973, file: !440, line: 628, baseType: !520, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !973, file: !440, line: 632, baseType: !520, size: 64, offset: 384)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !973, file: !440, line: 636, baseType: !520, size: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !817, file: !440, line: 755, baseType: !980, size: 704)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !440, line: 642, size: 704, elements: !981)
!981 = !{!982, !983, !984, !985}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !980, file: !440, line: 644, baseType: !973, size: 512)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !980, file: !440, line: 648, baseType: !520, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !980, file: !440, line: 652, baseType: !520, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !980, file: !440, line: 653, baseType: !520, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !817, file: !440, line: 756, baseType: !987, size: 448)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !440, line: 663, size: 448, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !987, file: !440, line: 665, baseType: !881, size: 320)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !987, file: !440, line: 668, baseType: !520, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !987, file: !440, line: 673, baseType: !520, size: 64, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !817, file: !440, line: 757, baseType: !993, size: 384)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !440, line: 694, size: 384, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !993, file: !440, line: 696, baseType: !881, size: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !993, file: !440, line: 699, baseType: !520, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !817, file: !440, line: 758, baseType: !998, size: 384)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !440, line: 681, size: 384, elements: !999)
!999 = !{!1000, !1001, !1002}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !998, file: !440, line: 683, baseType: !820, size: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !998, file: !440, line: 686, baseType: !520, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !998, file: !440, line: 689, baseType: !520, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !817, file: !440, line: 759, baseType: !1004, size: 384)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !440, line: 707, size: 384, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1004, file: !440, line: 709, baseType: !820, size: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1004, file: !440, line: 712, baseType: !520, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1004, file: !440, line: 712, baseType: !520, size: 64, offset: 320)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !817, file: !440, line: 760, baseType: !1010, size: 320)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !440, line: 718, size: 320, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1010, file: !440, line: 720, baseType: !820, size: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1010, file: !440, line: 723, baseType: !520, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !812, file: !440, line: 138, baseType: !811, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !812, file: !440, line: 139, baseType: !811, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !807, file: !440, line: 146, baseType: !810, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !807, file: !440, line: 152, baseType: !805, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !802, file: !190, line: 130, baseType: !679, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !797, file: !190, line: 134, baseType: !517, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !797, file: !190, line: 137, baseType: !520, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !797, file: !190, line: 138, baseType: !629, size: 32, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !797, file: !190, line: 142, baseType: !7, size: 32, offset: 352)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !190, line: 144, baseType: !513, size: 32, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !797, file: !190, line: 145, baseType: !513, size: 32, offset: 416)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !797, file: !190, line: 146, baseType: !1026, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !190, line: 119, baseType: !576)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !780, file: !190, line: 220, baseType: !783, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !780, file: !190, line: 223, baseType: !517, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !780, file: !190, line: 226, baseType: !1030, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !190, line: 185, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !780, file: !190, line: 229, baseType: !1033, size: 128, offset: 256)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 128, elements: !1036)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !190, line: 229, flags: DIFlagFwdDecl)
!1036 = !{!1037}
!1037 = !DISubrange(count: 2)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !780, file: !190, line: 232, baseType: !779, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !780, file: !190, line: 233, baseType: !779, size: 64, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !780, file: !190, line: 238, baseType: !1041, size: 64, offset: 512)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !190, line: 235, size: 64, elements: !1042)
!1042 = !{!1043, !1049}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1041, file: !190, line: 236, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !190, line: 273, size: 128, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1045, file: !190, line: 275, baseType: !805, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1045, file: !190, line: 278, baseType: !805, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1041, file: !190, line: 237, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !190, line: 259, size: 320, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1051, file: !190, line: 261, baseType: !679, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1051, file: !190, line: 262, baseType: !679, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1051, file: !190, line: 266, baseType: !679, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1051, file: !190, line: 267, baseType: !679, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1051, file: !190, line: 270, baseType: !513, size: 32, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !780, file: !190, line: 241, baseType: !1026, size: 64, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !780, file: !190, line: 244, baseType: !513, size: 32, offset: 640)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !780, file: !190, line: 247, baseType: !513, size: 32, offset: 672)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !780, file: !190, line: 250, baseType: !513, size: 32, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !780, file: !190, line: 253, baseType: !513, size: 32, offset: 736)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !190, line: 256, baseType: !513, size: 32, offset: 768)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !775, file: !190, line: 378, baseType: !778, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !775, file: !190, line: 381, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !190, line: 282, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !190, line: 282, size: 128, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1068, file: !190, line: 282, baseType: !1071, size: 128)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !190, line: 281, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !190, line: 281, size: 128, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1072, file: !190, line: 281, baseType: !7, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1072, file: !190, line: 281, baseType: !7, size: 32, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1072, file: !190, line: 281, baseType: !1077, size: 64, offset: 64)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 64, elements: !603)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !775, file: !190, line: 384, baseType: !513, size: 32, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !775, file: !190, line: 387, baseType: !513, size: 32, offset: 224)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !775, file: !190, line: 390, baseType: !513, size: 32, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !775, file: !190, line: 394, baseType: !1066, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !775, file: !190, line: 396, baseType: !189, size: 32, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !775, file: !190, line: 399, baseType: !1084, size: 64, offset: 416)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !1036)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !775, file: !190, line: 402, baseType: !1086, size: 64, offset: 480)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1036)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !775, file: !190, line: 406, baseType: !513, size: 32, offset: 544)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !775, file: !190, line: 409, baseType: !513, size: 32, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !767, file: !768, line: 470, baseType: !806, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !767, file: !768, line: 473, baseType: !1091, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !718, line: 39, size: 1152, elements: !1093)
!1093 = !{!1094, !1144, !1157, !1169, !1170, !1239, !1240, !1244, !1245, !1246, !1247, !1248}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1092, file: !718, line: 41, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1096, line: 144, baseType: !1097)
!1096 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1096, line: 100, size: 896, elements: !1099)
!1099 = !{!1100, !1108, !1113, !1118, !1120, !1121, !1122, !1123, !1124, !1125, !1130, !1132, !1133, !1138, !1143}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1098, file: !1096, line: 102, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1096, line: 52, baseType: !1102)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1096, line: 47, baseType: !7)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1098, file: !1096, line: 105, baseType: !1109, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1096, line: 59, baseType: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!513, !1106, !1106}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1098, file: !1096, line: 108, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1096, line: 63, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !517}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1098, file: !1096, line: 111, baseType: !1119, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1098, file: !1096, line: 114, baseType: !960, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1098, file: !1096, line: 117, baseType: !960, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1098, file: !1096, line: 120, baseType: !960, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1098, file: !1096, line: 124, baseType: !7, size: 32, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1098, file: !1096, line: 128, baseType: !7, size: 32, offset: 480)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1098, file: !1096, line: 131, baseType: !1126, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1096, line: 75, baseType: !1127)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!517, !960, !960}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1098, file: !1096, line: 132, baseType: !1131, size: 64, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1096, line: 78, baseType: !1115)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1098, file: !1096, line: 135, baseType: !517, size: 64, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1098, file: !1096, line: 136, baseType: !1134, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1096, line: 82, baseType: !1135)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!517, !517, !960, !960}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1098, file: !1096, line: 137, baseType: !1139, size: 64, offset: 768)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1096, line: 83, baseType: !1140)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !517, !517}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1098, file: !1096, line: 141, baseType: !7, size: 32, offset: 832)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1092, file: !718, line: 48, baseType: !1145, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !440, line: 35, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !440, line: 35, size: 128, elements: !1148)
!1148 = !{!1149}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1147, file: !440, line: 35, baseType: !1150, size: 128)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !440, line: 33, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !440, line: 33, size: 128, elements: !1152)
!1152 = !{!1153, !1154, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1151, file: !440, line: 33, baseType: !7, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1151, file: !440, line: 33, baseType: !7, size: 32, offset: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1151, file: !440, line: 33, baseType: !1156, size: 64, offset: 64)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 64, elements: !603)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1092, file: !718, line: 51, baseType: !1158, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !206, line: 183, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !206, line: 183, size: 128, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1160, file: !206, line: 183, baseType: !1163, size: 128)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !206, line: 182, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !206, line: 182, size: 128, elements: !1165)
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1164, file: !206, line: 182, baseType: !7, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1164, file: !206, line: 182, baseType: !7, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1164, file: !206, line: 182, baseType: !868, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1092, file: !718, line: 54, baseType: !520, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1092, file: !718, line: 57, baseType: !1171, size: 128, offset: 256)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1172, line: 31, size: 128, elements: !1173)
!1172 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1180}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1171, file: !1172, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1171, file: !1172, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1171, file: !1172, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1171, file: !1172, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1171, file: !1172, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1171, file: !1172, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1171, file: !1172, line: 56, baseType: !1181, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !521, line: 47, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1184, line: 75, size: 256, elements: !1185)
!1184 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1185 = !{!1186, !1198, !1199, !1200}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1183, file: !1184, line: 76, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1184, line: 68, baseType: !1189)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1184, line: 63, size: 320, elements: !1190)
!1190 = !{!1191, !1193, !1194, !1195}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1189, file: !1184, line: 64, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1189, file: !1184, line: 65, baseType: !1192, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1189, file: !1184, line: 66, baseType: !7, size: 32, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1189, file: !1184, line: 67, baseType: !1196, size: 128, offset: 192)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1197, size: 128, elements: !1036)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1184, line: 29, baseType: !574)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1183, file: !1184, line: 77, baseType: !1187, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1183, file: !1184, line: 78, baseType: !7, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1183, file: !1184, line: 79, baseType: !1201, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1184, line: 49, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1184, line: 45, size: 832, elements: !1204)
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1203, file: !1184, line: 46, baseType: !1192, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1203, file: !1184, line: 47, baseType: !1182, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1203, file: !1184, line: 48, baseType: !1208, size: 704, offset: 128)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1209, line: 164, size: 704, elements: !1210)
!1209 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1210 = !{!1211, !1212, !1222, !1223, !1224, !1225, !1226, !1227, !1231, !1235, !1236, !1237, !1238}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1208, file: !1209, line: 166, baseType: !576, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1208, file: !1209, line: 167, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1209, line: 157, size: 192, elements: !1215)
!1215 = !{!1216, !1217, !1218}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1214, file: !1209, line: 159, baseType: !515, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1214, file: !1209, line: 160, baseType: !1213, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1214, file: !1209, line: 161, baseType: !1219, size: 32, offset: 128)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 32, elements: !1220)
!1220 = !{!1221}
!1221 = !DISubrange(count: 4)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1208, file: !1209, line: 168, baseType: !515, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1208, file: !1209, line: 169, baseType: !515, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1208, file: !1209, line: 170, baseType: !515, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1208, file: !1209, line: 171, baseType: !576, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1208, file: !1209, line: 172, baseType: !513, size: 32, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1208, file: !1209, line: 176, baseType: !1228, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1213, !517, !576}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1208, file: !1209, line: 177, baseType: !1232, size: 64, offset: 512)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !517, !1213}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1208, file: !1209, line: 178, baseType: !517, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1208, file: !1209, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1208, file: !1209, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1208, file: !1209, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1092, file: !718, line: 60, baseType: !1171, size: 128, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1092, file: !718, line: 64, baseType: !1241, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1243, line: 33, flags: DIFlagFwdDecl)
!1243 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1092, file: !718, line: 67, baseType: !520, size: 64, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1092, file: !718, line: 73, baseType: !1095, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1092, file: !718, line: 77, baseType: !1181, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1092, file: !718, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1092, file: !718, line: 82, baseType: !1249, size: 320, offset: 832)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !433, line: 62, size: 320, elements: !1250)
!1250 = !{!1251, !1257, !1258, !1259, !1260, !1261}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1249, file: !433, line: 63, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !433, line: 56, size: 128, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1253, file: !433, line: 57, baseType: !1252, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1253, file: !433, line: 58, baseType: !602, size: 8, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1249, file: !433, line: 64, baseType: !7, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1249, file: !433, line: 66, baseType: !7, size: 32, offset: 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1249, file: !433, line: 68, baseType: !512, size: 8, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1249, file: !433, line: 70, baseType: !844, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1249, file: !433, line: 71, baseType: !851, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !767, file: !768, line: 476, baseType: !1263, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !768, line: 476, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !767, file: !768, line: 479, baseType: !1095, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !767, file: !768, line: 484, baseType: !520, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !767, file: !768, line: 488, baseType: !520, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !767, file: !768, line: 493, baseType: !520, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !767, file: !768, line: 496, baseType: !520, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !767, file: !768, line: 501, baseType: !1271, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !201, line: 2355, size: 576, elements: !1273)
!1273 = !{!1274, !1277, !1278, !1279, !1280, !1282, !1283, !1288, !1289, !1290, !1291, !1292, !1293}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1272, file: !201, line: 2356, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !201, line: 2356, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1272, file: !201, line: 2357, baseType: !518, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1272, file: !201, line: 2358, baseType: !513, size: 32, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1272, file: !201, line: 2359, baseType: !513, size: 32, offset: 160)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1272, file: !201, line: 2360, baseType: !1281, size: 128, offset: 192)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 128, elements: !1220)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1272, file: !201, line: 2364, baseType: !513, size: 32, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1272, file: !201, line: 2367, baseType: !1284, size: 128, offset: 384)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !201, line: 2349, size: 128, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1284, file: !201, line: 2351, baseType: !679, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1284, file: !201, line: 2352, baseType: !576, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1272, file: !201, line: 2371, baseType: !200, size: 32, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1272, file: !201, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1272, file: !201, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1272, file: !201, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1272, file: !201, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1272, file: !201, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !767, file: !768, line: 504, baseType: !1295, size: 64, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !768, line: 504, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !767, file: !768, line: 507, baseType: !1095, size: 64, offset: 768)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !767, file: !768, line: 510, baseType: !513, size: 32, offset: 832)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !767, file: !768, line: 513, baseType: !513, size: 32, offset: 864)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !767, file: !768, line: 516, baseType: !629, size: 32, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !767, file: !768, line: 519, baseType: !629, size: 32, offset: 928)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !767, file: !768, line: 522, baseType: !7, size: 32, offset: 960)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !767, file: !768, line: 523, baseType: !7, size: 32, offset: 992)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !767, file: !768, line: 528, baseType: !518, size: 64, offset: 1024)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !767, file: !768, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !767, file: !768, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !767, file: !768, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !767, file: !768, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !767, file: !768, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !767, file: !768, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !767, file: !768, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !767, file: !768, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !767, file: !768, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !767, file: !768, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !767, file: !768, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !767, file: !768, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !767, file: !768, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !767, file: !768, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !767, file: !768, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !767, file: !768, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !762, file: !206, line: 3254, baseType: !520, size: 64, offset: 1536)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !762, file: !206, line: 3257, baseType: !520, size: 64, offset: 1600)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !762, file: !206, line: 3258, baseType: !520, size: 64, offset: 1664)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !762, file: !206, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !762, file: !206, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !762, file: !206, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !762, file: !206, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !762, file: !206, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !762, file: !206, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !762, file: !206, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !762, file: !206, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !762, file: !206, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !762, file: !206, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !762, file: !206, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !762, file: !206, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !762, file: !206, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !762, file: !206, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !762, file: !206, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !762, file: !206, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !762, file: !206, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !762, file: !206, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !523, file: !206, line: 3394, baseType: !1343, size: 1344)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !206, line: 2279, size: 1344, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1370, !1371, !1372, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1343, file: !206, line: 2280, baseType: !559, size: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1343, file: !206, line: 2281, baseType: !520, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1343, file: !206, line: 2282, baseType: !520, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1343, file: !206, line: 2283, baseType: !520, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1343, file: !206, line: 2284, baseType: !520, size: 64, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1343, file: !206, line: 2285, baseType: !7, size: 32, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1343, file: !206, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1343, file: !206, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1343, file: !206, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1343, file: !206, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1343, file: !206, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1343, file: !206, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1343, file: !206, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1343, file: !206, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1343, file: !206, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1343, file: !206, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1343, file: !206, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1343, file: !206, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1343, file: !206, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1343, file: !206, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1343, file: !206, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1343, file: !206, line: 2305, baseType: !7, size: 32, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1343, file: !206, line: 2306, baseType: !1368, size: 32, offset: 544)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1369, line: 31, baseType: !513)
!1369 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1343, file: !206, line: 2307, baseType: !520, size: 64, offset: 576)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1343, file: !206, line: 2308, baseType: !520, size: 64, offset: 640)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1343, file: !206, line: 2314, baseType: !1373, size: 64, offset: 704)
!1373 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !206, line: 2309, size: 64, elements: !1374)
!1374 = !{!1375, !1376, !1377}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1373, file: !206, line: 2310, baseType: !513, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1373, file: !206, line: 2311, baseType: !518, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1373, file: !206, line: 2312, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !206, line: 2277, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1343, file: !206, line: 2315, baseType: !520, size: 64, offset: 768)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1343, file: !206, line: 2316, baseType: !520, size: 64, offset: 832)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1343, file: !206, line: 2317, baseType: !520, size: 64, offset: 896)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1343, file: !206, line: 2318, baseType: !520, size: 64, offset: 960)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1343, file: !206, line: 2319, baseType: !520, size: 64, offset: 1024)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1343, file: !206, line: 2320, baseType: !520, size: 64, offset: 1088)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1343, file: !206, line: 2321, baseType: !520, size: 64, offset: 1152)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1343, file: !206, line: 2322, baseType: !520, size: 64, offset: 1216)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1343, file: !206, line: 2324, baseType: !1389, size: 64, offset: 1280)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !206, line: 2324, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !523, file: !206, line: 3395, baseType: !1392, size: 320)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !206, line: 1469, size: 320, elements: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1392, file: !206, line: 1470, baseType: !559, size: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1392, file: !206, line: 1471, baseType: !520, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1392, file: !206, line: 1472, baseType: !520, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !523, file: !206, line: 3396, baseType: !1398, size: 320)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !206, line: 1482, size: 320, elements: !1399)
!1399 = !{!1400, !1401, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1398, file: !206, line: 1483, baseType: !559, size: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1398, file: !206, line: 1484, baseType: !513, size: 32, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1398, file: !206, line: 1485, baseType: !868, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !523, file: !206, line: 3397, baseType: !1404, size: 384)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !206, line: 1829, size: 384, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1409}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1404, file: !206, line: 1830, baseType: !559, size: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1404, file: !206, line: 1831, baseType: !629, size: 32, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1404, file: !206, line: 1832, baseType: !520, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1404, file: !206, line: 1835, baseType: !868, size: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !523, file: !206, line: 3398, baseType: !1411, size: 704)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !206, line: 1898, size: 704, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1422}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1411, file: !206, line: 1899, baseType: !559, size: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1411, file: !206, line: 1902, baseType: !520, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1411, file: !206, line: 1905, baseType: !815, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1411, file: !206, line: 1908, baseType: !7, size: 32, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1411, file: !206, line: 1911, baseType: !1418, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !718, line: 117, size: 128, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1419, file: !718, line: 120, baseType: !1171, size: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1411, file: !206, line: 1914, baseType: !856, size: 256, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !523, file: !206, line: 3399, baseType: !1424, size: 704)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !206, line: 2008, size: 704, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1424, file: !206, line: 2009, baseType: !559, size: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1424, file: !206, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1424, file: !206, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1424, file: !206, line: 2014, baseType: !629, size: 32, offset: 224)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1424, file: !206, line: 2016, baseType: !520, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1424, file: !206, line: 2017, baseType: !1158, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1424, file: !206, line: 2019, baseType: !520, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1424, file: !206, line: 2020, baseType: !520, size: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1424, file: !206, line: 2021, baseType: !520, size: 64, offset: 512)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1424, file: !206, line: 2022, baseType: !520, size: 64, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1424, file: !206, line: 2023, baseType: !520, size: 64, offset: 640)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !523, file: !206, line: 3400, baseType: !1438, size: 832)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !206, line: 2430, size: 832, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1438, file: !206, line: 2431, baseType: !559, size: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1438, file: !206, line: 2433, baseType: !520, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1438, file: !206, line: 2434, baseType: !520, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1438, file: !206, line: 2435, baseType: !520, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1438, file: !206, line: 2436, baseType: !520, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1438, file: !206, line: 2437, baseType: !1158, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1438, file: !206, line: 2438, baseType: !520, size: 64, offset: 512)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1438, file: !206, line: 2440, baseType: !520, size: 64, offset: 576)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1438, file: !206, line: 2441, baseType: !520, size: 64, offset: 640)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1438, file: !206, line: 2443, baseType: !1450, size: 128, offset: 704)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !206, line: 182, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !206, line: 182, size: 128, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1451, file: !206, line: 182, baseType: !1163, size: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !523, file: !206, line: 3401, baseType: !1455, size: 320)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !206, line: 3327, size: 320, elements: !1456)
!1456 = !{!1457, !1458, !1465}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1455, file: !206, line: 3329, baseType: !559, size: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1455, file: !206, line: 3330, baseType: !1459, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !206, line: 3320, size: 192, elements: !1461)
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1460, file: !206, line: 3322, baseType: !1459, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1460, file: !206, line: 3323, baseType: !1459, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1460, file: !206, line: 3324, baseType: !520, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1455, file: !206, line: 3331, baseType: !1459, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !523, file: !206, line: 3402, baseType: !1467, size: 256)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !206, line: 1540, size: 256, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1467, file: !206, line: 1541, baseType: !559, size: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1467, file: !206, line: 1542, baseType: !1471, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !206, line: 1538, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !206, line: 1538, size: 192, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1473, file: !206, line: 1538, baseType: !1476, size: 192)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !206, line: 1537, baseType: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !206, line: 1537, size: 192, elements: !1478)
!1478 = !{!1479, !1480, !1481}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1477, file: !206, line: 1537, baseType: !7, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1477, file: !206, line: 1537, baseType: !7, size: 32, offset: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1477, file: !206, line: 1537, baseType: !1482, size: 128, offset: 64)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1483, size: 128, elements: !603)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !206, line: 1535, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !206, line: 1532, size: 128, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1484, file: !206, line: 1533, baseType: !520, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1484, file: !206, line: 1534, baseType: !520, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !523, file: !206, line: 3403, baseType: !1489, size: 512)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !206, line: 1938, size: 512, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !1500, !1501, !1502}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1489, file: !206, line: 1939, baseType: !559, size: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1489, file: !206, line: 1940, baseType: !629, size: 32, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1489, file: !206, line: 1941, baseType: !205, size: 32, offset: 224)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1489, file: !206, line: 1946, baseType: !1495, size: 32, offset: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !206, line: 1942, size: 32, elements: !1496)
!1496 = !{!1497, !1498, !1499}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1495, file: !206, line: 1943, baseType: !224, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1495, file: !206, line: 1944, baseType: !231, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1495, file: !206, line: 1945, baseType: !238, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1489, file: !206, line: 1950, baseType: !805, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1489, file: !206, line: 1951, baseType: !805, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1489, file: !206, line: 1953, baseType: !868, size: 64, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !523, file: !206, line: 3404, baseType: !1504, size: 1664)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !206, line: 3337, size: 1664, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1504, file: !206, line: 3338, baseType: !559, size: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1504, file: !206, line: 3341, baseType: !1508, size: 1472, offset: 192)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1509, line: 410, size: 1472, elements: !1510)
!1509 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1508, file: !1509, line: 412, baseType: !513, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1508, file: !1509, line: 413, baseType: !513, size: 32, offset: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1508, file: !1509, line: 414, baseType: !513, size: 32, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1508, file: !1509, line: 415, baseType: !513, size: 32, offset: 96)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1508, file: !1509, line: 416, baseType: !513, size: 32, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1508, file: !1509, line: 417, baseType: !513, size: 32, offset: 160)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1508, file: !1509, line: 418, baseType: !512, size: 8, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1508, file: !1509, line: 419, baseType: !512, size: 8, offset: 200)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1508, file: !1509, line: 420, baseType: !1520, size: 8, offset: 208)
!1520 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1508, file: !1509, line: 421, baseType: !1520, size: 8, offset: 216)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1508, file: !1509, line: 422, baseType: !1520, size: 8, offset: 224)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1508, file: !1509, line: 423, baseType: !1520, size: 8, offset: 232)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1508, file: !1509, line: 424, baseType: !1520, size: 8, offset: 240)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1508, file: !1509, line: 425, baseType: !1520, size: 8, offset: 248)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1508, file: !1509, line: 426, baseType: !1520, size: 8, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1508, file: !1509, line: 427, baseType: !1520, size: 8, offset: 264)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1508, file: !1509, line: 428, baseType: !1520, size: 8, offset: 272)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1508, file: !1509, line: 429, baseType: !1520, size: 8, offset: 280)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1508, file: !1509, line: 430, baseType: !1520, size: 8, offset: 288)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1508, file: !1509, line: 431, baseType: !1520, size: 8, offset: 296)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1508, file: !1509, line: 432, baseType: !1520, size: 8, offset: 304)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1508, file: !1509, line: 433, baseType: !1520, size: 8, offset: 312)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1508, file: !1509, line: 434, baseType: !1520, size: 8, offset: 320)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1508, file: !1509, line: 435, baseType: !1520, size: 8, offset: 328)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1508, file: !1509, line: 436, baseType: !1520, size: 8, offset: 336)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1508, file: !1509, line: 437, baseType: !1520, size: 8, offset: 344)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1508, file: !1509, line: 438, baseType: !1520, size: 8, offset: 352)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1508, file: !1509, line: 439, baseType: !1520, size: 8, offset: 360)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1508, file: !1509, line: 440, baseType: !1520, size: 8, offset: 368)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1508, file: !1509, line: 441, baseType: !1520, size: 8, offset: 376)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1508, file: !1509, line: 442, baseType: !1520, size: 8, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1508, file: !1509, line: 443, baseType: !1520, size: 8, offset: 392)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1508, file: !1509, line: 444, baseType: !1520, size: 8, offset: 400)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1508, file: !1509, line: 445, baseType: !1520, size: 8, offset: 408)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1508, file: !1509, line: 446, baseType: !1520, size: 8, offset: 416)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1508, file: !1509, line: 447, baseType: !1520, size: 8, offset: 424)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1508, file: !1509, line: 448, baseType: !1520, size: 8, offset: 432)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1508, file: !1509, line: 449, baseType: !1520, size: 8, offset: 440)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1508, file: !1509, line: 450, baseType: !1520, size: 8, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1508, file: !1509, line: 451, baseType: !1520, size: 8, offset: 456)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1508, file: !1509, line: 452, baseType: !1520, size: 8, offset: 464)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1508, file: !1509, line: 453, baseType: !1520, size: 8, offset: 472)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1508, file: !1509, line: 454, baseType: !1520, size: 8, offset: 480)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1508, file: !1509, line: 455, baseType: !1520, size: 8, offset: 488)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1508, file: !1509, line: 456, baseType: !1520, size: 8, offset: 496)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1508, file: !1509, line: 457, baseType: !1520, size: 8, offset: 504)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1508, file: !1509, line: 458, baseType: !1520, size: 8, offset: 512)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1508, file: !1509, line: 459, baseType: !1520, size: 8, offset: 520)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1508, file: !1509, line: 460, baseType: !1520, size: 8, offset: 528)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1508, file: !1509, line: 461, baseType: !1520, size: 8, offset: 536)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1508, file: !1509, line: 462, baseType: !1520, size: 8, offset: 544)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1508, file: !1509, line: 463, baseType: !1520, size: 8, offset: 552)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1508, file: !1509, line: 464, baseType: !1520, size: 8, offset: 560)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1508, file: !1509, line: 465, baseType: !1520, size: 8, offset: 568)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1508, file: !1509, line: 466, baseType: !1520, size: 8, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1508, file: !1509, line: 467, baseType: !1520, size: 8, offset: 584)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1508, file: !1509, line: 468, baseType: !1520, size: 8, offset: 592)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1508, file: !1509, line: 469, baseType: !1520, size: 8, offset: 600)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1508, file: !1509, line: 470, baseType: !1520, size: 8, offset: 608)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1508, file: !1509, line: 471, baseType: !1520, size: 8, offset: 616)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1508, file: !1509, line: 472, baseType: !1520, size: 8, offset: 624)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1508, file: !1509, line: 473, baseType: !1520, size: 8, offset: 632)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1508, file: !1509, line: 474, baseType: !1520, size: 8, offset: 640)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1508, file: !1509, line: 475, baseType: !1520, size: 8, offset: 648)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1508, file: !1509, line: 476, baseType: !1520, size: 8, offset: 656)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1508, file: !1509, line: 477, baseType: !1520, size: 8, offset: 664)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1508, file: !1509, line: 478, baseType: !1520, size: 8, offset: 672)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1508, file: !1509, line: 479, baseType: !1520, size: 8, offset: 680)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1508, file: !1509, line: 480, baseType: !1520, size: 8, offset: 688)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1508, file: !1509, line: 481, baseType: !1520, size: 8, offset: 696)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1508, file: !1509, line: 482, baseType: !1520, size: 8, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1508, file: !1509, line: 483, baseType: !1520, size: 8, offset: 712)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1508, file: !1509, line: 484, baseType: !1520, size: 8, offset: 720)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1508, file: !1509, line: 485, baseType: !1520, size: 8, offset: 728)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1508, file: !1509, line: 486, baseType: !1520, size: 8, offset: 736)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1508, file: !1509, line: 487, baseType: !1520, size: 8, offset: 744)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1508, file: !1509, line: 488, baseType: !1520, size: 8, offset: 752)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1508, file: !1509, line: 489, baseType: !1520, size: 8, offset: 760)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1508, file: !1509, line: 490, baseType: !1520, size: 8, offset: 768)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1508, file: !1509, line: 491, baseType: !1520, size: 8, offset: 776)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1508, file: !1509, line: 492, baseType: !1520, size: 8, offset: 784)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1508, file: !1509, line: 493, baseType: !1520, size: 8, offset: 792)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1508, file: !1509, line: 494, baseType: !1520, size: 8, offset: 800)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1508, file: !1509, line: 495, baseType: !1520, size: 8, offset: 808)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1508, file: !1509, line: 496, baseType: !1520, size: 8, offset: 816)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1508, file: !1509, line: 497, baseType: !1520, size: 8, offset: 824)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1508, file: !1509, line: 498, baseType: !1520, size: 8, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1508, file: !1509, line: 499, baseType: !1520, size: 8, offset: 840)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1508, file: !1509, line: 500, baseType: !1520, size: 8, offset: 848)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1508, file: !1509, line: 501, baseType: !1520, size: 8, offset: 856)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1508, file: !1509, line: 502, baseType: !1520, size: 8, offset: 864)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1508, file: !1509, line: 503, baseType: !1520, size: 8, offset: 872)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1508, file: !1509, line: 504, baseType: !1520, size: 8, offset: 880)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1508, file: !1509, line: 505, baseType: !1520, size: 8, offset: 888)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1508, file: !1509, line: 506, baseType: !1520, size: 8, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1508, file: !1509, line: 507, baseType: !1520, size: 8, offset: 904)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1508, file: !1509, line: 508, baseType: !1520, size: 8, offset: 912)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1508, file: !1509, line: 509, baseType: !1520, size: 8, offset: 920)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1508, file: !1509, line: 510, baseType: !1520, size: 8, offset: 928)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1508, file: !1509, line: 511, baseType: !1520, size: 8, offset: 936)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1508, file: !1509, line: 512, baseType: !1520, size: 8, offset: 944)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1508, file: !1509, line: 513, baseType: !1520, size: 8, offset: 952)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1508, file: !1509, line: 514, baseType: !1520, size: 8, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1508, file: !1509, line: 515, baseType: !1520, size: 8, offset: 968)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1508, file: !1509, line: 516, baseType: !1520, size: 8, offset: 976)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1508, file: !1509, line: 517, baseType: !1520, size: 8, offset: 984)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1508, file: !1509, line: 518, baseType: !1520, size: 8, offset: 992)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1508, file: !1509, line: 519, baseType: !1520, size: 8, offset: 1000)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1508, file: !1509, line: 520, baseType: !1520, size: 8, offset: 1008)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1508, file: !1509, line: 521, baseType: !1520, size: 8, offset: 1016)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1508, file: !1509, line: 522, baseType: !1520, size: 8, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1508, file: !1509, line: 523, baseType: !1520, size: 8, offset: 1032)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1508, file: !1509, line: 524, baseType: !1520, size: 8, offset: 1040)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1508, file: !1509, line: 525, baseType: !1520, size: 8, offset: 1048)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1508, file: !1509, line: 526, baseType: !1520, size: 8, offset: 1056)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1508, file: !1509, line: 527, baseType: !1520, size: 8, offset: 1064)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1508, file: !1509, line: 528, baseType: !1520, size: 8, offset: 1072)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1508, file: !1509, line: 529, baseType: !1520, size: 8, offset: 1080)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1508, file: !1509, line: 530, baseType: !1520, size: 8, offset: 1088)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1508, file: !1509, line: 531, baseType: !1520, size: 8, offset: 1096)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1508, file: !1509, line: 532, baseType: !1520, size: 8, offset: 1104)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1508, file: !1509, line: 533, baseType: !1520, size: 8, offset: 1112)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1508, file: !1509, line: 534, baseType: !1520, size: 8, offset: 1120)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1508, file: !1509, line: 535, baseType: !1520, size: 8, offset: 1128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1508, file: !1509, line: 536, baseType: !1520, size: 8, offset: 1136)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1508, file: !1509, line: 537, baseType: !1520, size: 8, offset: 1144)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1508, file: !1509, line: 538, baseType: !1520, size: 8, offset: 1152)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1508, file: !1509, line: 539, baseType: !1520, size: 8, offset: 1160)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1508, file: !1509, line: 540, baseType: !1520, size: 8, offset: 1168)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1508, file: !1509, line: 541, baseType: !1520, size: 8, offset: 1176)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1508, file: !1509, line: 542, baseType: !1520, size: 8, offset: 1184)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1508, file: !1509, line: 543, baseType: !1520, size: 8, offset: 1192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1508, file: !1509, line: 544, baseType: !1520, size: 8, offset: 1200)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1508, file: !1509, line: 545, baseType: !1520, size: 8, offset: 1208)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1508, file: !1509, line: 546, baseType: !1520, size: 8, offset: 1216)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1508, file: !1509, line: 547, baseType: !1520, size: 8, offset: 1224)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1508, file: !1509, line: 548, baseType: !1520, size: 8, offset: 1232)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1508, file: !1509, line: 549, baseType: !1520, size: 8, offset: 1240)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1508, file: !1509, line: 550, baseType: !1520, size: 8, offset: 1248)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1508, file: !1509, line: 551, baseType: !1520, size: 8, offset: 1256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1508, file: !1509, line: 552, baseType: !1520, size: 8, offset: 1264)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1508, file: !1509, line: 553, baseType: !1520, size: 8, offset: 1272)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1508, file: !1509, line: 554, baseType: !1520, size: 8, offset: 1280)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1508, file: !1509, line: 555, baseType: !1520, size: 8, offset: 1288)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1508, file: !1509, line: 556, baseType: !1520, size: 8, offset: 1296)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1508, file: !1509, line: 557, baseType: !1520, size: 8, offset: 1304)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1508, file: !1509, line: 558, baseType: !1520, size: 8, offset: 1312)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1508, file: !1509, line: 559, baseType: !1520, size: 8, offset: 1320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1508, file: !1509, line: 560, baseType: !1520, size: 8, offset: 1328)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1508, file: !1509, line: 561, baseType: !1520, size: 8, offset: 1336)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1508, file: !1509, line: 562, baseType: !1520, size: 8, offset: 1344)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1508, file: !1509, line: 563, baseType: !1520, size: 8, offset: 1352)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1508, file: !1509, line: 564, baseType: !1520, size: 8, offset: 1360)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1508, file: !1509, line: 565, baseType: !1520, size: 8, offset: 1368)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1508, file: !1509, line: 566, baseType: !1520, size: 8, offset: 1376)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1508, file: !1509, line: 567, baseType: !1520, size: 8, offset: 1384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1508, file: !1509, line: 568, baseType: !1520, size: 8, offset: 1392)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1508, file: !1509, line: 569, baseType: !1520, size: 8, offset: 1400)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1508, file: !1509, line: 570, baseType: !1520, size: 8, offset: 1408)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1508, file: !1509, line: 571, baseType: !1520, size: 8, offset: 1416)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1508, file: !1509, line: 572, baseType: !1520, size: 8, offset: 1424)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1508, file: !1509, line: 573, baseType: !1520, size: 8, offset: 1432)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1508, file: !1509, line: 574, baseType: !1520, size: 8, offset: 1440)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !523, file: !206, line: 3405, baseType: !1676, size: 384)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !206, line: 3352, size: 384, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1676, file: !206, line: 3353, baseType: !559, size: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1676, file: !206, line: 3356, baseType: !1680, size: 192, offset: 192)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1509, line: 578, size: 192, elements: !1681)
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1680, file: !1509, line: 580, baseType: !513, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1680, file: !1509, line: 581, baseType: !513, size: 32, offset: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1680, file: !1509, line: 582, baseType: !513, size: 32, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1680, file: !1509, line: 583, baseType: !513, size: 32, offset: 96)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1680, file: !1509, line: 584, baseType: !512, size: 8, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1680, file: !1509, line: 585, baseType: !512, size: 8, offset: 136)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1680, file: !1509, line: 586, baseType: !512, size: 8, offset: 144)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1680, file: !1509, line: 587, baseType: !512, size: 8, offset: 152)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1680, file: !1509, line: 588, baseType: !512, size: 8, offset: 160)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1680, file: !1509, line: 589, baseType: !512, size: 8, offset: 168)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1680, file: !1509, line: 590, baseType: !512, size: 8, offset: 176)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !433, line: 30, baseType: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !206, line: 1893, baseType: !856)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_heap", file: !190, line: 152, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_heap", file: !190, line: 152, size: 128, elements: !1701)
!1701 = !{!1702}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1700, file: !190, line: 152, baseType: !788, size: 128)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "walk_stmt_info", file: !440, line: 4652, size: 448, elements: !1706)
!1706 = !{!1707, !1714, !1715, !1718, !1719, !1720, !1721, !1722}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "gsi", scope: !1705, file: !440, line: 4655, baseType: !1708, size: 192)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !440, line: 265, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 254, size: 192, elements: !1710)
!1710 = !{!1711, !1712, !1713}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1709, file: !440, line: 257, baseType: !810, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1709, file: !440, line: 263, baseType: !805, size: 64, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1709, file: !440, line: 264, baseType: !778, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1705, file: !440, line: 4659, baseType: !517, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pset", scope: !1705, file: !440, line: 4664, baseType: !1716, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !206, line: 5199, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "val_only", scope: !1705, file: !440, line: 4678, baseType: !512, size: 8, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "is_lhs", scope: !1705, file: !440, line: 4681, baseType: !512, size: 8, offset: 328)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1705, file: !440, line: 4685, baseType: !512, size: 8, offset: 336)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "want_locations", scope: !1705, file: !440, line: 4688, baseType: !512, size: 8, offset: 344)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "callback_result", scope: !1705, file: !440, line: 4694, baseType: !520, size: 64, offset: 384)
!1723 = !{!0}
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !1725)
!1725 = !{!1726}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1724, file: !6, line: 158, baseType: !1727, size: 640)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1735, !1739, !1741, !1742, !1743, !1745, !1746, !1747, !1748, !1749}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1727, file: !6, line: 117, baseType: !5, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1727, file: !6, line: 121, baseType: !518, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1727, file: !6, line: 125, baseType: !1732, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!512}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1727, file: !6, line: 130, baseType: !1736, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!7}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1727, file: !6, line: 133, baseType: !1740, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1727, file: !6, line: 136, baseType: !1740, size: 64, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1727, file: !6, line: 139, baseType: !513, size: 32, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1727, file: !6, line: 143, baseType: !1744, size: 32, offset: 416)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1727, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1727, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1727, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1727, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1727, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1750 = !{i32 2, !"Dwarf Version", i32 4}
!1751 = !{i32 2, !"Debug Info Version", i32 3}
!1752 = !{i32 1, !"wchar_size", i32 4}
!1753 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1754 = distinct !DISubprogram(name: "vprintf", scope: !1755, file: !1755, line: 39, type: !1756, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1766)
!1755 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!513, !1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !518)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1760, file: !3, baseType: !7, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1760, file: !3, baseType: !7, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1760, file: !3, baseType: !517, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1760, file: !3, baseType: !517, size: 64, offset: 128)
!1766 = !{!1767, !1768}
!1767 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1754, file: !1755, line: 39, type: !1758)
!1768 = !DILocalVariable(name: "__arg", arg: 2, scope: !1754, file: !1755, line: 39, type: !1759)
!1769 = !DILocation(line: 0, scope: !1754)
!1770 = !DILocation(line: 41, column: 20, scope: !1754)
!1771 = !DILocation(line: 41, column: 10, scope: !1754)
!1772 = !DILocation(line: 41, column: 3, scope: !1754)
!1773 = distinct !DISubprogram(name: "getchar", scope: !1755, file: !1755, line: 47, type: !1774, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!513}
!1776 = !{}
!1777 = !DILocation(line: 49, column: 16, scope: !1773)
!1778 = !DILocation(line: 49, column: 10, scope: !1773)
!1779 = !DILocation(line: 49, column: 3, scope: !1773)
!1780 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1755, file: !1755, line: 56, type: !1781, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1834)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!513, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1785, line: 7, baseType: !1786)
!1785 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1787, line: 49, size: 1728, elements: !1788)
!1787 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1804, !1806, !1807, !1808, !1811, !1813, !1814, !1815, !1818, !1820, !1823, !1826, !1827, !1828, !1829, !1830}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1786, file: !1787, line: 51, baseType: !513, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1786, file: !1787, line: 54, baseType: !515, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1786, file: !1787, line: 55, baseType: !515, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1786, file: !1787, line: 56, baseType: !515, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1786, file: !1787, line: 57, baseType: !515, size: 64, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1786, file: !1787, line: 58, baseType: !515, size: 64, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1786, file: !1787, line: 59, baseType: !515, size: 64, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1786, file: !1787, line: 60, baseType: !515, size: 64, offset: 448)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1786, file: !1787, line: 61, baseType: !515, size: 64, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1786, file: !1787, line: 64, baseType: !515, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1786, file: !1787, line: 65, baseType: !515, size: 64, offset: 640)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1786, file: !1787, line: 66, baseType: !515, size: 64, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1786, file: !1787, line: 68, baseType: !1802, size: 64, offset: 768)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1787, line: 36, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1786, file: !1787, line: 70, baseType: !1805, size: 64, offset: 832)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1786, file: !1787, line: 72, baseType: !513, size: 32, offset: 896)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1786, file: !1787, line: 73, baseType: !513, size: 32, offset: 928)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1786, file: !1787, line: 74, baseType: !1809, size: 64, offset: 960)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1810, line: 152, baseType: !576)
!1810 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1786, file: !1787, line: 77, baseType: !1812, size: 16, offset: 1024)
!1812 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1786, file: !1787, line: 78, baseType: !1520, size: 8, offset: 1040)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1786, file: !1787, line: 79, baseType: !602, size: 8, offset: 1048)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1786, file: !1787, line: 81, baseType: !1816, size: 64, offset: 1088)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1787, line: 43, baseType: null)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1786, file: !1787, line: 89, baseType: !1819, size: 64, offset: 1152)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1810, line: 153, baseType: !576)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1786, file: !1787, line: 91, baseType: !1821, size: 64, offset: 1216)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1787, line: 37, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1786, file: !1787, line: 92, baseType: !1824, size: 64, offset: 1280)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1787, line: 38, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1786, file: !1787, line: 93, baseType: !1805, size: 64, offset: 1344)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1786, file: !1787, line: 94, baseType: !517, size: 64, offset: 1408)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1786, file: !1787, line: 95, baseType: !960, size: 64, offset: 1472)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1786, file: !1787, line: 96, baseType: !513, size: 32, offset: 1536)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1786, file: !1787, line: 98, baseType: !1831, size: 160, offset: 1568)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 160, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 20)
!1834 = !{!1835}
!1835 = !DILocalVariable(name: "__fp", arg: 1, scope: !1780, file: !1755, line: 56, type: !1783)
!1836 = !DILocation(line: 0, scope: !1780)
!1837 = !DILocation(line: 58, column: 10, scope: !1780)
!1838 = !DILocation(line: 58, column: 3, scope: !1780)
!1839 = distinct !DISubprogram(name: "getc_unlocked", scope: !1755, file: !1755, line: 66, type: !1781, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1840)
!1840 = !{!1841}
!1841 = !DILocalVariable(name: "__fp", arg: 1, scope: !1839, file: !1755, line: 66, type: !1783)
!1842 = !DILocation(line: 0, scope: !1839)
!1843 = !DILocation(line: 68, column: 10, scope: !1839)
!1844 = !DILocation(line: 68, column: 3, scope: !1839)
!1845 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1755, file: !1755, line: 73, type: !1774, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1776)
!1846 = !DILocation(line: 75, column: 10, scope: !1845)
!1847 = !DILocation(line: 75, column: 3, scope: !1845)
!1848 = distinct !DISubprogram(name: "putchar", scope: !1755, file: !1755, line: 82, type: !1849, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!513, !513}
!1851 = !{!1852}
!1852 = !DILocalVariable(name: "__c", arg: 1, scope: !1848, file: !1755, line: 82, type: !513)
!1853 = !DILocation(line: 0, scope: !1848)
!1854 = !DILocation(line: 84, column: 21, scope: !1848)
!1855 = !DILocation(line: 84, column: 10, scope: !1848)
!1856 = !DILocation(line: 84, column: 3, scope: !1848)
!1857 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1755, file: !1755, line: 91, type: !1858, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!513, !513, !1783}
!1860 = !{!1861, !1862}
!1861 = !DILocalVariable(name: "__c", arg: 1, scope: !1857, file: !1755, line: 91, type: !513)
!1862 = !DILocalVariable(name: "__stream", arg: 2, scope: !1857, file: !1755, line: 91, type: !1783)
!1863 = !DILocation(line: 0, scope: !1857)
!1864 = !DILocation(line: 93, column: 10, scope: !1857)
!1865 = !DILocation(line: 93, column: 3, scope: !1857)
!1866 = distinct !DISubprogram(name: "putc_unlocked", scope: !1755, file: !1755, line: 101, type: !1858, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1867)
!1867 = !{!1868, !1869}
!1868 = !DILocalVariable(name: "__c", arg: 1, scope: !1866, file: !1755, line: 101, type: !513)
!1869 = !DILocalVariable(name: "__stream", arg: 2, scope: !1866, file: !1755, line: 101, type: !1783)
!1870 = !DILocation(line: 0, scope: !1866)
!1871 = !DILocation(line: 103, column: 10, scope: !1866)
!1872 = !DILocation(line: 103, column: 3, scope: !1866)
!1873 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1755, file: !1755, line: 108, type: !1849, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1874)
!1874 = !{!1875}
!1875 = !DILocalVariable(name: "__c", arg: 1, scope: !1873, file: !1755, line: 108, type: !513)
!1876 = !DILocation(line: 0, scope: !1873)
!1877 = !DILocation(line: 110, column: 10, scope: !1873)
!1878 = !DILocation(line: 110, column: 3, scope: !1873)
!1879 = distinct !DISubprogram(name: "getline", scope: !1755, file: !1755, line: 118, type: !1880, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1884)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1882, !514, !1883, !1783}
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1810, line: 193, baseType: !576)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!1884 = !{!1885, !1886, !1887}
!1885 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1879, file: !1755, line: 118, type: !514)
!1886 = !DILocalVariable(name: "__n", arg: 2, scope: !1879, file: !1755, line: 118, type: !1883)
!1887 = !DILocalVariable(name: "__stream", arg: 3, scope: !1879, file: !1755, line: 118, type: !1783)
!1888 = !DILocation(line: 0, scope: !1879)
!1889 = !DILocation(line: 120, column: 10, scope: !1879)
!1890 = !DILocation(line: 120, column: 3, scope: !1879)
!1891 = distinct !DISubprogram(name: "feof_unlocked", scope: !1755, file: !1755, line: 128, type: !1781, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1892)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "__stream", arg: 1, scope: !1891, file: !1755, line: 128, type: !1783)
!1894 = !DILocation(line: 0, scope: !1891)
!1895 = !DILocation(line: 130, column: 10, scope: !1891)
!1896 = !DILocation(line: 130, column: 3, scope: !1891)
!1897 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1755, file: !1755, line: 135, type: !1781, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1898)
!1898 = !{!1899}
!1899 = !DILocalVariable(name: "__stream", arg: 1, scope: !1897, file: !1755, line: 135, type: !1783)
!1900 = !DILocation(line: 0, scope: !1897)
!1901 = !DILocation(line: 137, column: 10, scope: !1897)
!1902 = !DILocation(line: 137, column: 3, scope: !1897)
!1903 = distinct !DISubprogram(name: "tolower", scope: !1904, file: !1904, line: 207, type: !1849, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1905)
!1904 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1905 = !{!1906}
!1906 = !DILocalVariable(name: "__c", arg: 1, scope: !1903, file: !1904, line: 207, type: !513)
!1907 = !DILocation(line: 0, scope: !1903)
!1908 = !DILocation(line: 209, column: 22, scope: !1903)
!1909 = !DILocation(line: 209, column: 39, scope: !1903)
!1910 = !DILocation(line: 209, column: 38, scope: !1903)
!1911 = !DILocation(line: 209, column: 37, scope: !1903)
!1912 = !DILocation(line: 209, column: 10, scope: !1903)
!1913 = !DILocation(line: 209, column: 3, scope: !1903)
!1914 = distinct !DISubprogram(name: "toupper", scope: !1904, file: !1904, line: 213, type: !1849, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1915)
!1915 = !{!1916}
!1916 = !DILocalVariable(name: "__c", arg: 1, scope: !1914, file: !1904, line: 213, type: !513)
!1917 = !DILocation(line: 0, scope: !1914)
!1918 = !DILocation(line: 215, column: 22, scope: !1914)
!1919 = !DILocation(line: 215, column: 39, scope: !1914)
!1920 = !DILocation(line: 215, column: 38, scope: !1914)
!1921 = !DILocation(line: 215, column: 37, scope: !1914)
!1922 = !DILocation(line: 215, column: 10, scope: !1914)
!1923 = !DILocation(line: 215, column: 3, scope: !1914)
!1924 = distinct !DISubprogram(name: "atoi", scope: !1925, file: !1925, line: 361, type: !1926, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1928)
!1925 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!513, !518}
!1928 = !{!1929}
!1929 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1924, file: !1925, line: 361, type: !518)
!1930 = !DILocation(line: 0, scope: !1924)
!1931 = !DILocation(line: 363, column: 16, scope: !1924)
!1932 = !DILocation(line: 363, column: 10, scope: !1924)
!1933 = !DILocation(line: 363, column: 3, scope: !1924)
!1934 = distinct !DISubprogram(name: "atol", scope: !1925, file: !1925, line: 366, type: !1935, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!576, !518}
!1937 = !{!1938}
!1938 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1934, file: !1925, line: 366, type: !518)
!1939 = !DILocation(line: 0, scope: !1934)
!1940 = !DILocation(line: 368, column: 10, scope: !1934)
!1941 = !DILocation(line: 368, column: 3, scope: !1934)
!1942 = distinct !DISubprogram(name: "atoll", scope: !1925, file: !1925, line: 373, type: !1943, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1946)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1945, !518}
!1945 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1946 = !{!1947}
!1947 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1942, file: !1925, line: 373, type: !518)
!1948 = !DILocation(line: 0, scope: !1942)
!1949 = !DILocation(line: 375, column: 10, scope: !1942)
!1950 = !DILocation(line: 375, column: 3, scope: !1942)
!1951 = distinct !DISubprogram(name: "bsearch", scope: !1952, file: !1952, line: 20, type: !1953, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1956)
!1952 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!517, !1106, !1106, !960, !960, !1955}
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1925, line: 808, baseType: !1110)
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966}
!1957 = !DILocalVariable(name: "__key", arg: 1, scope: !1951, file: !1952, line: 20, type: !1106)
!1958 = !DILocalVariable(name: "__base", arg: 2, scope: !1951, file: !1952, line: 20, type: !1106)
!1959 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1951, file: !1952, line: 20, type: !960)
!1960 = !DILocalVariable(name: "__size", arg: 4, scope: !1951, file: !1952, line: 20, type: !960)
!1961 = !DILocalVariable(name: "__compar", arg: 5, scope: !1951, file: !1952, line: 21, type: !1955)
!1962 = !DILocalVariable(name: "__l", scope: !1951, file: !1952, line: 23, type: !960)
!1963 = !DILocalVariable(name: "__u", scope: !1951, file: !1952, line: 23, type: !960)
!1964 = !DILocalVariable(name: "__idx", scope: !1951, file: !1952, line: 23, type: !960)
!1965 = !DILocalVariable(name: "__p", scope: !1951, file: !1952, line: 24, type: !1106)
!1966 = !DILocalVariable(name: "__comparison", scope: !1951, file: !1952, line: 25, type: !513)
!1967 = !DILocation(line: 0, scope: !1951)
!1968 = !DILocation(line: 29, column: 3, scope: !1951)
!1969 = !DILocation(line: 27, column: 7, scope: !1951)
!1970 = !DILocation(line: 29, column: 14, scope: !1951)
!1971 = !DILocation(line: 31, column: 20, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1951, file: !1952, line: 30, column: 5)
!1973 = !DILocation(line: 31, column: 27, scope: !1972)
!1974 = !DILocation(line: 32, column: 56, scope: !1972)
!1975 = !DILocation(line: 32, column: 47, scope: !1972)
!1976 = !DILocation(line: 33, column: 22, scope: !1972)
!1977 = !DILocation(line: 34, column: 24, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1972, file: !1952, line: 34, column: 11)
!1979 = !DILocation(line: 34, column: 11, scope: !1972)
!1980 = !DILocation(line: 36, column: 29, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1978, file: !1952, line: 36, column: 16)
!1982 = !DILocation(line: 36, column: 16, scope: !1978)
!1983 = !DILocation(line: 37, column: 14, scope: !1981)
!1984 = distinct !{!1984, !1968, !1985}
!1985 = !DILocation(line: 40, column: 5, scope: !1951)
!1986 = !DILocation(line: 43, column: 1, scope: !1951)
!1987 = distinct !DISubprogram(name: "atof", scope: !1988, file: !1988, line: 25, type: !1989, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1992)
!1988 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!1991, !518}
!1991 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1992 = !{!1993}
!1993 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1987, file: !1988, line: 25, type: !518)
!1994 = !DILocation(line: 0, scope: !1987)
!1995 = !DILocation(line: 27, column: 10, scope: !1987)
!1996 = !DILocation(line: 27, column: 3, scope: !1987)
!1997 = distinct !DISubprogram(name: "strtoimax", scope: !1998, file: !1998, line: 324, type: !1999, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!1998 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!2001, !1758, !2004, !513}
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2002, line: 101, baseType: !2003)
!2002 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1810, line: 72, baseType: !576)
!2004 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !514)
!2005 = !{!2006, !2007, !2008}
!2006 = !DILocalVariable(name: "nptr", arg: 1, scope: !1997, file: !1998, line: 324, type: !1758)
!2007 = !DILocalVariable(name: "endptr", arg: 2, scope: !1997, file: !1998, line: 324, type: !2004)
!2008 = !DILocalVariable(name: "base", arg: 3, scope: !1997, file: !1998, line: 324, type: !513)
!2009 = !DILocation(line: 0, scope: !1997)
!2010 = !DILocation(line: 327, column: 10, scope: !1997)
!2011 = !DILocation(line: 327, column: 3, scope: !1997)
!2012 = distinct !DISubprogram(name: "strtoumax", scope: !1998, file: !1998, line: 336, type: !2013, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!2015, !1758, !2004, !513}
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2002, line: 102, baseType: !2016)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1810, line: 73, baseType: !574)
!2017 = !{!2018, !2019, !2020}
!2018 = !DILocalVariable(name: "nptr", arg: 1, scope: !2012, file: !1998, line: 336, type: !1758)
!2019 = !DILocalVariable(name: "endptr", arg: 2, scope: !2012, file: !1998, line: 336, type: !2004)
!2020 = !DILocalVariable(name: "base", arg: 3, scope: !2012, file: !1998, line: 336, type: !513)
!2021 = !DILocation(line: 0, scope: !2012)
!2022 = !DILocation(line: 339, column: 10, scope: !2012)
!2023 = !DILocation(line: 339, column: 3, scope: !2012)
!2024 = distinct !DISubprogram(name: "wcstoimax", scope: !1998, file: !1998, line: 348, type: !2025, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2034)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!2001, !2027, !2031, !513}
!2027 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2028)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1998, line: 34, baseType: !513)
!2031 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2032)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2034 = !{!2035, !2036, !2037}
!2035 = !DILocalVariable(name: "nptr", arg: 1, scope: !2024, file: !1998, line: 348, type: !2027)
!2036 = !DILocalVariable(name: "endptr", arg: 2, scope: !2024, file: !1998, line: 348, type: !2031)
!2037 = !DILocalVariable(name: "base", arg: 3, scope: !2024, file: !1998, line: 348, type: !513)
!2038 = !DILocation(line: 0, scope: !2024)
!2039 = !DILocation(line: 351, column: 10, scope: !2024)
!2040 = !DILocation(line: 351, column: 3, scope: !2024)
!2041 = distinct !DISubprogram(name: "wcstoumax", scope: !1998, file: !1998, line: 362, type: !2042, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!2015, !2027, !2031, !513}
!2044 = !{!2045, !2046, !2047}
!2045 = !DILocalVariable(name: "nptr", arg: 1, scope: !2041, file: !1998, line: 362, type: !2027)
!2046 = !DILocalVariable(name: "endptr", arg: 2, scope: !2041, file: !1998, line: 362, type: !2031)
!2047 = !DILocalVariable(name: "base", arg: 3, scope: !2041, file: !1998, line: 362, type: !513)
!2048 = !DILocation(line: 0, scope: !2041)
!2049 = !DILocation(line: 365, column: 10, scope: !2041)
!2050 = !DILocation(line: 365, column: 3, scope: !2041)
!2051 = distinct !DISubprogram(name: "stat", scope: !2052, file: !2052, line: 453, type: !2053, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2052 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!513, !518, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2057, line: 46, size: 1152, elements: !2058)
!2057 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2058 = !{!2059, !2061, !2063, !2065, !2067, !2069, !2071, !2072, !2073, !2074, !2076, !2078, !2086, !2087, !2088}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2056, file: !2057, line: 48, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1810, line: 145, baseType: !574)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2056, file: !2057, line: 53, baseType: !2062, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1810, line: 148, baseType: !574)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2056, file: !2057, line: 61, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1810, line: 151, baseType: !574)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2056, file: !2057, line: 62, baseType: !2066, size: 32, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1810, line: 150, baseType: !7)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2056, file: !2057, line: 64, baseType: !2068, size: 32, offset: 224)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1810, line: 146, baseType: !7)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2056, file: !2057, line: 65, baseType: !2070, size: 32, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1810, line: 147, baseType: !7)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2056, file: !2057, line: 67, baseType: !513, size: 32, offset: 288)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2056, file: !2057, line: 69, baseType: !2060, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2056, file: !2057, line: 74, baseType: !1809, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2056, file: !2057, line: 78, baseType: !2075, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1810, line: 174, baseType: !576)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2056, file: !2057, line: 80, baseType: !2077, size: 64, offset: 512)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1810, line: 179, baseType: !576)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2056, file: !2057, line: 91, baseType: !2079, size: 128, offset: 576)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2080, line: 10, size: 128, elements: !2081)
!2080 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2081 = !{!2082, !2084}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2079, file: !2080, line: 12, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1810, line: 160, baseType: !576)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2079, file: !2080, line: 16, baseType: !2085, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1810, line: 196, baseType: !576)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2056, file: !2057, line: 92, baseType: !2079, size: 128, offset: 704)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2056, file: !2057, line: 93, baseType: !2079, size: 128, offset: 832)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2056, file: !2057, line: 106, baseType: !2089, size: 192, offset: 960)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2085, size: 192, elements: !2090)
!2090 = !{!2091}
!2091 = !DISubrange(count: 3)
!2092 = !{!2093, !2094}
!2093 = !DILocalVariable(name: "__path", arg: 1, scope: !2051, file: !2052, line: 453, type: !518)
!2094 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2051, file: !2052, line: 453, type: !2055)
!2095 = !DILocation(line: 0, scope: !2051)
!2096 = !DILocation(line: 455, column: 10, scope: !2051)
!2097 = !DILocation(line: 455, column: 3, scope: !2051)
!2098 = distinct !DISubprogram(name: "lstat", scope: !2052, file: !2052, line: 460, type: !2053, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2099 = !{!2100, !2101}
!2100 = !DILocalVariable(name: "__path", arg: 1, scope: !2098, file: !2052, line: 460, type: !518)
!2101 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2098, file: !2052, line: 460, type: !2055)
!2102 = !DILocation(line: 0, scope: !2098)
!2103 = !DILocation(line: 462, column: 10, scope: !2098)
!2104 = !DILocation(line: 462, column: 3, scope: !2098)
!2105 = distinct !DISubprogram(name: "fstat", scope: !2052, file: !2052, line: 467, type: !2106, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!513, !513, !2055}
!2108 = !{!2109, !2110}
!2109 = !DILocalVariable(name: "__fd", arg: 1, scope: !2105, file: !2052, line: 467, type: !513)
!2110 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2105, file: !2052, line: 467, type: !2055)
!2111 = !DILocation(line: 0, scope: !2105)
!2112 = !DILocation(line: 469, column: 10, scope: !2105)
!2113 = !DILocation(line: 469, column: 3, scope: !2105)
!2114 = distinct !DISubprogram(name: "fstatat", scope: !2052, file: !2052, line: 474, type: !2115, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!513, !513, !518, !2055, !513}
!2117 = !{!2118, !2119, !2120, !2121}
!2118 = !DILocalVariable(name: "__fd", arg: 1, scope: !2114, file: !2052, line: 474, type: !513)
!2119 = !DILocalVariable(name: "__filename", arg: 2, scope: !2114, file: !2052, line: 474, type: !518)
!2120 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2114, file: !2052, line: 474, type: !2055)
!2121 = !DILocalVariable(name: "__flag", arg: 4, scope: !2114, file: !2052, line: 474, type: !513)
!2122 = !DILocation(line: 0, scope: !2114)
!2123 = !DILocation(line: 477, column: 10, scope: !2114)
!2124 = !DILocation(line: 477, column: 3, scope: !2114)
!2125 = distinct !DISubprogram(name: "mknod", scope: !2052, file: !2052, line: 483, type: !2126, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!513, !518, !2066, !2060}
!2128 = !{!2129, !2130, !2131}
!2129 = !DILocalVariable(name: "__path", arg: 1, scope: !2125, file: !2052, line: 483, type: !518)
!2130 = !DILocalVariable(name: "__mode", arg: 2, scope: !2125, file: !2052, line: 483, type: !2066)
!2131 = !DILocalVariable(name: "__dev", arg: 3, scope: !2125, file: !2052, line: 483, type: !2060)
!2132 = !DILocation(line: 0, scope: !2125)
!2133 = !DILocation(line: 485, column: 10, scope: !2125)
!2134 = !DILocation(line: 485, column: 3, scope: !2125)
!2135 = distinct !DISubprogram(name: "mknodat", scope: !2052, file: !2052, line: 491, type: !2136, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!513, !513, !518, !2066, !2060}
!2138 = !{!2139, !2140, !2141, !2142}
!2139 = !DILocalVariable(name: "__fd", arg: 1, scope: !2135, file: !2052, line: 491, type: !513)
!2140 = !DILocalVariable(name: "__path", arg: 2, scope: !2135, file: !2052, line: 491, type: !518)
!2141 = !DILocalVariable(name: "__mode", arg: 3, scope: !2135, file: !2052, line: 491, type: !2066)
!2142 = !DILocalVariable(name: "__dev", arg: 4, scope: !2135, file: !2052, line: 491, type: !2060)
!2143 = !DILocation(line: 0, scope: !2135)
!2144 = !DILocation(line: 494, column: 10, scope: !2135)
!2145 = !DILocation(line: 494, column: 3, scope: !2135)
!2146 = distinct !DISubprogram(name: "stat64", scope: !2052, file: !2052, line: 502, type: !2147, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!513, !518, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2057, line: 119, size: 1152, elements: !2151)
!2151 = !{!2152, !2153, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2165, !2166, !2167, !2168}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2150, file: !2057, line: 121, baseType: !2060, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2150, file: !2057, line: 123, baseType: !2154, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1810, line: 149, baseType: !574)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2150, file: !2057, line: 124, baseType: !2064, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2150, file: !2057, line: 125, baseType: !2066, size: 32, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2150, file: !2057, line: 132, baseType: !2068, size: 32, offset: 224)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2150, file: !2057, line: 133, baseType: !2070, size: 32, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2150, file: !2057, line: 135, baseType: !513, size: 32, offset: 288)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2150, file: !2057, line: 136, baseType: !2060, size: 64, offset: 320)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2150, file: !2057, line: 137, baseType: !1809, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2150, file: !2057, line: 143, baseType: !2075, size: 64, offset: 448)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2150, file: !2057, line: 144, baseType: !2164, size: 64, offset: 512)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1810, line: 180, baseType: !576)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2150, file: !2057, line: 152, baseType: !2079, size: 128, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2150, file: !2057, line: 153, baseType: !2079, size: 128, offset: 704)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2150, file: !2057, line: 154, baseType: !2079, size: 128, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2150, file: !2057, line: 164, baseType: !2089, size: 192, offset: 960)
!2169 = !{!2170, !2171}
!2170 = !DILocalVariable(name: "__path", arg: 1, scope: !2146, file: !2052, line: 502, type: !518)
!2171 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2146, file: !2052, line: 502, type: !2149)
!2172 = !DILocation(line: 0, scope: !2146)
!2173 = !DILocation(line: 504, column: 10, scope: !2146)
!2174 = !DILocation(line: 504, column: 3, scope: !2146)
!2175 = distinct !DISubprogram(name: "lstat64", scope: !2052, file: !2052, line: 509, type: !2147, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2176)
!2176 = !{!2177, !2178}
!2177 = !DILocalVariable(name: "__path", arg: 1, scope: !2175, file: !2052, line: 509, type: !518)
!2178 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2175, file: !2052, line: 509, type: !2149)
!2179 = !DILocation(line: 0, scope: !2175)
!2180 = !DILocation(line: 511, column: 10, scope: !2175)
!2181 = !DILocation(line: 511, column: 3, scope: !2175)
!2182 = distinct !DISubprogram(name: "fstat64", scope: !2052, file: !2052, line: 516, type: !2183, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!513, !513, !2149}
!2185 = !{!2186, !2187}
!2186 = !DILocalVariable(name: "__fd", arg: 1, scope: !2182, file: !2052, line: 516, type: !513)
!2187 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2182, file: !2052, line: 516, type: !2149)
!2188 = !DILocation(line: 0, scope: !2182)
!2189 = !DILocation(line: 518, column: 10, scope: !2182)
!2190 = !DILocation(line: 518, column: 3, scope: !2182)
!2191 = distinct !DISubprogram(name: "fstatat64", scope: !2052, file: !2052, line: 523, type: !2192, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!513, !513, !518, !2149, !513}
!2194 = !{!2195, !2196, !2197, !2198}
!2195 = !DILocalVariable(name: "__fd", arg: 1, scope: !2191, file: !2052, line: 523, type: !513)
!2196 = !DILocalVariable(name: "__filename", arg: 2, scope: !2191, file: !2052, line: 523, type: !518)
!2197 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2191, file: !2052, line: 523, type: !2149)
!2198 = !DILocalVariable(name: "__flag", arg: 4, scope: !2191, file: !2052, line: 523, type: !513)
!2199 = !DILocation(line: 0, scope: !2191)
!2200 = !DILocation(line: 526, column: 10, scope: !2191)
!2201 = !DILocation(line: 526, column: 3, scope: !2191)
!2202 = distinct !DISubprogram(name: "gate_optimize_stdarg", scope: !3, file: !3, line: 579, type: !1733, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1776)
!2203 = !DILocation(line: 582, column: 10, scope: !2202)
!2204 = !DILocation(line: 582, column: 16, scope: !2202)
!2205 = !DILocation(line: 582, column: 3, scope: !2202)
!2206 = distinct !DISubprogram(name: "execute_optimize_stdarg", scope: !3, file: !3, line: 589, type: !1737, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2224, !2225, !2226, !2227, !2231, !2235, !2236, !2237, !2241, !2244, !2245, !2246, !2259, !2263, !2267, !2270, !2273, !2274}
!2208 = !DILocalVariable(name: "bb", scope: !2206, file: !3, line: 591, type: !778)
!2209 = !DILocalVariable(name: "va_list_escapes", scope: !2206, file: !3, line: 592, type: !512)
!2210 = !DILocalVariable(name: "va_list_simple_ptr", scope: !2206, file: !3, line: 593, type: !512)
!2211 = !DILocalVariable(name: "si", scope: !2206, file: !3, line: 594, type: !2212)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stdarg_info", file: !2213, line: 24, size: 512, elements: !2214)
!2213 = !DIFile(filename: "./tree-stdarg.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2214 = !{!2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_vars", scope: !2212, file: !2213, line: 26, baseType: !1181, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_escape_vars", scope: !2212, file: !2213, line: 26, baseType: !1181, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2212, file: !2213, line: 27, baseType: !778, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "compute_sizes", scope: !2212, file: !2213, line: 28, baseType: !513, size: 32, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "va_start_count", scope: !2212, file: !2213, line: 28, baseType: !513, size: 32, offset: 224)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_escapes", scope: !2212, file: !2213, line: 29, baseType: !512, size: 8, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !2212, file: !2213, line: 30, baseType: !1703, size: 64, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "va_start_bb", scope: !2212, file: !2213, line: 32, baseType: !778, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "va_start_ap", scope: !2212, file: !2213, line: 33, baseType: !520, size: 64, offset: 448)
!2224 = !DILocalVariable(name: "wi", scope: !2206, file: !3, line: 595, type: !1705)
!2225 = !DILocalVariable(name: "funcname", scope: !2206, file: !3, line: 596, type: !518)
!2226 = !DILocalVariable(name: "cfun_va_list", scope: !2206, file: !3, line: 597, type: !520)
!2227 = !DILocalVariable(name: "i", scope: !2228, file: !3, line: 616, type: !1708)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 615, column: 5)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 614, column: 3)
!2230 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 614, column: 3)
!2231 = !DILocalVariable(name: "stmt", scope: !2232, file: !3, line: 620, type: !815)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 619, column: 2)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 618, column: 7)
!2234 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 618, column: 7)
!2235 = !DILocalVariable(name: "callee", scope: !2232, file: !3, line: 621, type: !520)
!2236 = !DILocalVariable(name: "ap", scope: !2232, file: !3, line: 621, type: !520)
!2237 = !DILocalVariable(name: "i", scope: !2238, file: !3, line: 727, type: !1708)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 726, column: 5)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 725, column: 3)
!2240 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 725, column: 3)
!2241 = !DILocalVariable(name: "lhs", scope: !2242, file: !3, line: 738, type: !520)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 737, column: 2)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 736, column: 11)
!2244 = !DILocalVariable(name: "rhs", scope: !2242, file: !3, line: 738, type: !520)
!2245 = !DILocalVariable(name: "uop", scope: !2242, file: !3, line: 739, type: !1695)
!2246 = !DILocalVariable(name: "soi", scope: !2242, file: !3, line: 740, type: !2247)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !433, line: 140, baseType: !2248)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !433, line: 131, size: 320, elements: !2249)
!2249 = !{!2250, !2251, !2252, !2254, !2256, !2257, !2258}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2248, file: !433, line: 133, baseType: !512, size: 8)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2248, file: !433, line: 134, baseType: !432, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2248, file: !433, line: 135, baseType: !2253, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !433, line: 42, baseType: !844)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2248, file: !433, line: 136, baseType: !2255, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !433, line: 50, baseType: !851)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2248, file: !433, line: 137, baseType: !513, size: 32, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2248, file: !433, line: 138, baseType: !513, size: 32, offset: 224)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2248, file: !433, line: 139, baseType: !815, size: 64, offset: 256)
!2259 = !DILocalVariable(name: "phi", scope: !2260, file: !3, line: 744, type: !815)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 743, column: 6)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 742, column: 4)
!2262 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 742, column: 4)
!2263 = !DILocalVariable(name: "stmt", scope: !2264, file: !3, line: 778, type: !815)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 777, column: 2)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 774, column: 7)
!2266 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 774, column: 7)
!2267 = !DILocalVariable(name: "callee", scope: !2268, file: !3, line: 783, type: !520)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 782, column: 6)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 781, column: 8)
!2270 = !DILocalVariable(name: "lhs", scope: !2271, file: !3, line: 794, type: !520)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 793, column: 6)
!2272 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 792, column: 8)
!2273 = !DILocalVariable(name: "rhs", scope: !2271, file: !3, line: 795, type: !520)
!2274 = !DILabel(scope: !2206, name: "finish", file: !3, line: 875)
!2275 = !DILocation(line: 0, scope: !2206)
!2276 = !DILocation(line: 594, column: 3, scope: !2206)
!2277 = !DILocation(line: 595, column: 3, scope: !2206)
!2278 = !DILocation(line: 599, column: 3, scope: !2206)
!2279 = !DILocation(line: 599, column: 9, scope: !2206)
!2280 = !DILocation(line: 599, column: 26, scope: !2206)
!2281 = !DILocation(line: 600, column: 26, scope: !2206)
!2282 = !DILocation(line: 601, column: 3, scope: !2206)
!2283 = !DILocation(line: 602, column: 21, scope: !2206)
!2284 = !DILocation(line: 602, column: 6, scope: !2206)
!2285 = !DILocation(line: 602, column: 19, scope: !2206)
!2286 = !DILocation(line: 603, column: 28, scope: !2206)
!2287 = !DILocation(line: 603, column: 6, scope: !2206)
!2288 = !DILocation(line: 603, column: 26, scope: !2206)
!2289 = !DILocation(line: 605, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 605, column: 7)
!2291 = !DILocation(line: 605, column: 7, scope: !2206)
!2292 = !DILocation(line: 606, column: 27, scope: !2290)
!2293 = !DILocation(line: 606, column: 48, scope: !2290)
!2294 = !DILocation(line: 606, column: 16, scope: !2290)
!2295 = !DILocation(line: 606, column: 5, scope: !2290)
!2296 = !DILocation(line: 608, column: 26, scope: !2206)
!2297 = !DILocation(line: 608, column: 42, scope: !2206)
!2298 = !DILocation(line: 608, column: 48, scope: !2206)
!2299 = !DILocation(line: 608, column: 18, scope: !2206)
!2300 = !DILocation(line: 609, column: 24, scope: !2206)
!2301 = !DILocation(line: 610, column: 10, scope: !2206)
!2302 = !DILocation(line: 610, column: 14, scope: !2206)
!2303 = !DILocation(line: 610, column: 42, scope: !2206)
!2304 = !DILocation(line: 610, column: 39, scope: !2206)
!2305 = !DILocation(line: 611, column: 7, scope: !2206)
!2306 = !DILocation(line: 611, column: 38, scope: !2206)
!2307 = !DILocation(line: 611, column: 35, scope: !2206)
!2308 = !DILocation(line: 612, column: 3, scope: !2206)
!2309 = !DILocation(line: 614, column: 3, scope: !2230)
!2310 = !DILocation(line: 0, scope: !2228)
!2311 = !DILocation(line: 0, scope: !2234)
!2312 = !DILocation(line: 0, scope: !2232)
!2313 = !DILocation(line: 614, column: 3, scope: !2229)
!2314 = !DILocation(line: 0, scope: !2230)
!2315 = !DILocation(line: 616, column: 7, scope: !2228)
!2316 = !DILocation(line: 618, column: 16, scope: !2234)
!2317 = !DILocation(line: 618, column: 12, scope: !2234)
!2318 = !DILocation(line: 592, column: 8, scope: !2206)
!2319 = !DILocation(line: 618, column: 36, scope: !2233)
!2320 = !DILocation(line: 618, column: 35, scope: !2233)
!2321 = !DILocation(line: 618, column: 7, scope: !2234)
!2322 = !DILocation(line: 620, column: 18, scope: !2232)
!2323 = !DILocation(line: 623, column: 9, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 623, column: 8)
!2325 = !DILocation(line: 623, column: 8, scope: !2232)
!2326 = !DILocation(line: 626, column: 13, scope: !2232)
!2327 = !DILocation(line: 627, column: 9, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 627, column: 8)
!2329 = !DILocation(line: 628, column: 8, scope: !2328)
!2330 = !DILocation(line: 628, column: 11, scope: !2328)
!2331 = !DILocation(line: 628, column: 40, scope: !2328)
!2332 = !DILocation(line: 627, column: 8, scope: !2232)
!2333 = !DILocation(line: 631, column: 12, scope: !2232)
!2334 = !DILocation(line: 631, column: 4, scope: !2232)
!2335 = !DILocation(line: 642, column: 8, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 632, column: 6)
!2337 = !DILocation(line: 645, column: 21, scope: !2232)
!2338 = !DILocation(line: 646, column: 9, scope: !2232)
!2339 = !DILocation(line: 648, column: 8, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 648, column: 8)
!2341 = !DILocation(line: 648, column: 23, scope: !2340)
!2342 = !DILocation(line: 648, column: 8, scope: !2232)
!2343 = !DILocation(line: 653, column: 9, scope: !2232)
!2344 = !DILocation(line: 654, column: 8, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 654, column: 8)
!2346 = !DILocation(line: 654, column: 23, scope: !2345)
!2347 = !DILocation(line: 654, column: 8, scope: !2232)
!2348 = !DILocation(line: 656, column: 29, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 656, column: 12)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 655, column: 6)
!2351 = !DILocation(line: 656, column: 14, scope: !2349)
!2352 = !DILocation(line: 656, column: 12, scope: !2350)
!2353 = !DILocation(line: 661, column: 13, scope: !2350)
!2354 = !DILocation(line: 662, column: 6, scope: !2350)
!2355 = !DILocation(line: 663, column: 8, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 663, column: 8)
!2357 = !DILocation(line: 664, column: 11, scope: !2356)
!2358 = !DILocation(line: 664, column: 8, scope: !2356)
!2359 = !DILocation(line: 665, column: 8, scope: !2356)
!2360 = !DILocation(line: 665, column: 11, scope: !2356)
!2361 = !DILocation(line: 665, column: 26, scope: !2356)
!2362 = !DILocation(line: 663, column: 8, scope: !2232)
!2363 = !DILocation(line: 671, column: 8, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 671, column: 8)
!2365 = !DILocation(line: 671, column: 8, scope: !2232)
!2366 = !DILocation(line: 677, column: 23, scope: !2232)
!2367 = !DILocation(line: 677, column: 37, scope: !2232)
!2368 = !DILocation(line: 677, column: 4, scope: !2232)
!2369 = !DILocation(line: 681, column: 19, scope: !2232)
!2370 = !DILocation(line: 682, column: 19, scope: !2232)
!2371 = !DILocation(line: 683, column: 2, scope: !2233)
!2372 = !DILocation(line: 618, column: 51, scope: !2233)
!2373 = !DILocation(line: 618, column: 7, scope: !2233)
!2374 = distinct !{!2374, !2321, !2375}
!2375 = !DILocation(line: 683, column: 2, scope: !2234)
!2376 = !DILocation(line: 685, column: 11, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 685, column: 11)
!2378 = !DILocation(line: 687, column: 5, scope: !2229)
!2379 = !DILocation(line: 0, scope: !2229)
!2380 = distinct !{!2380, !2309, !2381}
!2381 = !DILocation(line: 687, column: 5, scope: !2230)
!2382 = !DILocation(line: 691, column: 10, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 691, column: 7)
!2384 = !DILocation(line: 691, column: 25, scope: !2383)
!2385 = !DILocation(line: 695, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 695, column: 7)
!2387 = !DILocation(line: 691, column: 7, scope: !2206)
!2388 = !DILocation(line: 700, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 700, column: 7)
!2390 = !DILocation(line: 700, column: 26, scope: !2389)
!2391 = !DILocation(line: 700, column: 47, scope: !2389)
!2392 = !DILocation(line: 700, column: 7, scope: !2206)
!2393 = !DILocation(line: 709, column: 10, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 708, column: 7)
!2395 = !DILocation(line: 709, column: 36, scope: !2394)
!2396 = !DILocation(line: 709, column: 7, scope: !2394)
!2397 = !DILocation(line: 710, column: 10, scope: !2394)
!2398 = !DILocation(line: 710, column: 36, scope: !2394)
!2399 = !DILocation(line: 718, column: 7, scope: !2206)
!2400 = !DILocation(line: 719, column: 5, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 718, column: 7)
!2402 = !DILocation(line: 719, column: 11, scope: !2401)
!2403 = !DILocation(line: 719, column: 28, scope: !2401)
!2404 = !DILocation(line: 721, column: 3, scope: !2206)
!2405 = !DILocation(line: 722, column: 3, scope: !2206)
!2406 = !DILocation(line: 723, column: 16, scope: !2206)
!2407 = !DILocation(line: 723, column: 6, scope: !2206)
!2408 = !DILocation(line: 723, column: 11, scope: !2206)
!2409 = !DILocation(line: 725, column: 3, scope: !2240)
!2410 = !DILocation(line: 867, column: 5, scope: !2239)
!2411 = !DILocation(line: 0, scope: !2238)
!2412 = !DILocation(line: 0, scope: !2242)
!2413 = !DILocation(line: 0, scope: !2262)
!2414 = !DILocation(line: 0, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 760, column: 9)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 751, column: 3)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 750, column: 8)
!2418 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 750, column: 8)
!2419 = !DILocation(line: 0, scope: !2266)
!2420 = !DILocation(line: 725, column: 3, scope: !2239)
!2421 = !DILocation(line: 0, scope: !2240)
!2422 = !DILocation(line: 727, column: 7, scope: !2238)
!2423 = !DILocation(line: 729, column: 24, scope: !2238)
!2424 = !DILocation(line: 730, column: 13, scope: !2238)
!2425 = !DILocation(line: 736, column: 11, scope: !2238)
!2426 = !DILocation(line: 740, column: 4, scope: !2242)
!2427 = !DILocation(line: 742, column: 13, scope: !2262)
!2428 = !DILocation(line: 742, column: 9, scope: !2262)
!2429 = !DILocation(line: 742, column: 35, scope: !2261)
!2430 = !DILocation(line: 742, column: 34, scope: !2261)
!2431 = !DILocation(line: 742, column: 4, scope: !2262)
!2432 = !DILocation(line: 744, column: 21, scope: !2260)
!2433 = !DILocation(line: 0, scope: !2260)
!2434 = !DILocation(line: 745, column: 14, scope: !2260)
!2435 = !DILocation(line: 747, column: 13, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 747, column: 12)
!2437 = !DILocation(line: 747, column: 12, scope: !2260)
!2438 = !DILocation(line: 750, column: 8, scope: !2418)
!2439 = !DILocation(line: 0, scope: !2418)
!2440 = !DILocation(line: 750, column: 8, scope: !2417)
!2441 = !DILocation(line: 752, column: 11, scope: !2416)
!2442 = !DILocation(line: 753, column: 9, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 753, column: 9)
!2444 = !DILocation(line: 753, column: 9, scope: !2416)
!2445 = !DILocation(line: 755, column: 14, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 755, column: 14)
!2447 = !DILocation(line: 755, column: 14, scope: !2443)
!2448 = !DILocation(line: 758, column: 7, scope: !2446)
!2449 = !DILocation(line: 760, column: 12, scope: !2415)
!2450 = !DILocation(line: 760, column: 9, scope: !2415)
!2451 = !DILocation(line: 760, column: 9, scope: !2416)
!2452 = !DILocation(line: 762, column: 13, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 762, column: 13)
!2454 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 761, column: 7)
!2455 = !DILocation(line: 762, column: 23, scope: !2453)
!2456 = !DILocation(line: 762, column: 27, scope: !2453)
!2457 = !DILocation(line: 762, column: 38, scope: !2453)
!2458 = !DILocation(line: 762, column: 13, scope: !2454)
!2459 = !DILocation(line: 764, column: 6, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 763, column: 4)
!2461 = !DILocation(line: 765, column: 25, scope: !2460)
!2462 = !DILocation(line: 765, column: 44, scope: !2460)
!2463 = !DILocation(line: 765, column: 6, scope: !2460)
!2464 = !DILocation(line: 766, column: 19, scope: !2460)
!2465 = !DILocation(line: 766, column: 6, scope: !2460)
!2466 = !DILocation(line: 767, column: 4, scope: !2460)
!2467 = distinct !{!2467, !2438, !2468}
!2468 = !DILocation(line: 770, column: 3, scope: !2418)
!2469 = !DILocation(line: 742, column: 50, scope: !2261)
!2470 = !DILocation(line: 742, column: 4, scope: !2261)
!2471 = distinct !{!2471, !2431, !2472}
!2472 = !DILocation(line: 771, column: 6, scope: !2262)
!2473 = !DILocation(line: 772, column: 2, scope: !2243)
!2474 = !DILocation(line: 772, column: 2, scope: !2242)
!2475 = !DILocation(line: 774, column: 16, scope: !2266)
!2476 = !DILocation(line: 774, column: 12, scope: !2266)
!2477 = !DILocation(line: 775, column: 6, scope: !2265)
!2478 = !DILocation(line: 775, column: 20, scope: !2265)
!2479 = !DILocation(line: 778, column: 18, scope: !2264)
!2480 = !DILocation(line: 0, scope: !2264)
!2481 = !DILocation(line: 781, column: 8, scope: !2269)
!2482 = !DILocation(line: 781, column: 8, scope: !2264)
!2483 = !DILocation(line: 783, column: 22, scope: !2268)
!2484 = !DILocation(line: 0, scope: !2268)
!2485 = !DILocation(line: 785, column: 12, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 785, column: 12)
!2487 = !DILocation(line: 786, column: 5, scope: !2486)
!2488 = !DILocation(line: 786, column: 8, scope: !2486)
!2489 = !DILocation(line: 786, column: 37, scope: !2486)
!2490 = !DILocation(line: 787, column: 5, scope: !2486)
!2491 = !DILocation(line: 787, column: 9, scope: !2486)
!2492 = !DILocation(line: 787, column: 37, scope: !2486)
!2493 = !DILocation(line: 788, column: 9, scope: !2486)
!2494 = !DILocation(line: 788, column: 40, scope: !2486)
!2495 = !DILocation(line: 785, column: 12, scope: !2268)
!2496 = !DILocation(line: 790, column: 6, scope: !2269)
!2497 = !DILocation(line: 792, column: 8, scope: !2272)
!2498 = !DILocation(line: 792, column: 8, scope: !2264)
!2499 = !DILocation(line: 794, column: 19, scope: !2271)
!2500 = !DILocation(line: 0, scope: !2271)
!2501 = !DILocation(line: 795, column: 19, scope: !2271)
!2502 = !DILocation(line: 0, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 797, column: 12)
!2504 = !DILocation(line: 797, column: 12, scope: !2271)
!2505 = !DILocation(line: 799, column: 9, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 798, column: 3)
!2507 = !DILocation(line: 803, column: 13, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 803, column: 13)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 801, column: 7)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 799, column: 9)
!2511 = !DILocation(line: 803, column: 13, scope: !2509)
!2512 = !DILocation(line: 811, column: 18, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 811, column: 18)
!2514 = !DILocation(line: 811, column: 18, scope: !2508)
!2515 = !DILocation(line: 815, column: 10, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 815, column: 9)
!2517 = !DILocation(line: 815, column: 40, scope: !2516)
!2518 = !DILocation(line: 816, column: 10, scope: !2516)
!2519 = !DILocation(line: 816, column: 13, scope: !2516)
!2520 = !DILocation(line: 816, column: 51, scope: !2516)
!2521 = !DILocation(line: 817, column: 9, scope: !2516)
!2522 = !DILocation(line: 817, column: 12, scope: !2516)
!2523 = !DILocation(line: 818, column: 9, scope: !2516)
!2524 = !DILocation(line: 818, column: 35, scope: !2516)
!2525 = !DILocation(line: 818, column: 13, scope: !2516)
!2526 = !DILocation(line: 819, column: 6, scope: !2516)
!2527 = !DILocation(line: 815, column: 9, scope: !2506)
!2528 = !DILocation(line: 820, column: 7, scope: !2516)
!2529 = !DILocation(line: 824, column: 9, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 823, column: 3)
!2531 = !DILocation(line: 828, column: 13, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 828, column: 13)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 826, column: 7)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 824, column: 9)
!2535 = !DILocation(line: 828, column: 13, scope: !2533)
!2536 = !DILocation(line: 832, column: 18, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 832, column: 18)
!2538 = !DILocation(line: 832, column: 18, scope: !2532)
!2539 = !DILocation(line: 838, column: 17, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 838, column: 9)
!2541 = !DILocation(line: 838, column: 9, scope: !2540)
!2542 = !DILocation(line: 839, column: 9, scope: !2540)
!2543 = !DILocation(line: 839, column: 12, scope: !2540)
!2544 = !DILocation(line: 838, column: 9, scope: !2530)
!2545 = !DILocation(line: 842, column: 6, scope: !2272)
!2546 = !DILocation(line: 843, column: 13, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 843, column: 13)
!2548 = !DILocation(line: 843, column: 13, scope: !2272)
!2549 = !DILocation(line: 852, column: 11, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 852, column: 8)
!2551 = !DILocation(line: 852, column: 8, scope: !2550)
!2552 = !DILocation(line: 853, column: 8, scope: !2550)
!2553 = !DILocation(line: 853, column: 11, scope: !2550)
!2554 = !DILocation(line: 852, column: 8, scope: !2264)
!2555 = !DILocation(line: 855, column: 12, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 855, column: 12)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 854, column: 6)
!2558 = !DILocation(line: 855, column: 22, scope: !2556)
!2559 = !DILocation(line: 855, column: 26, scope: !2556)
!2560 = !DILocation(line: 855, column: 37, scope: !2556)
!2561 = !DILocation(line: 855, column: 12, scope: !2557)
!2562 = !DILocation(line: 857, column: 5, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 856, column: 3)
!2564 = !DILocation(line: 858, column: 24, scope: !2563)
!2565 = !DILocation(line: 858, column: 44, scope: !2563)
!2566 = !DILocation(line: 858, column: 5, scope: !2563)
!2567 = !DILocation(line: 859, column: 18, scope: !2563)
!2568 = !DILocation(line: 859, column: 5, scope: !2563)
!2569 = !DILocation(line: 860, column: 3, scope: !2563)
!2570 = !DILocation(line: 776, column: 5, scope: !2265)
!2571 = !DILocation(line: 774, column: 7, scope: !2265)
!2572 = distinct !{!2572, !2573, !2574}
!2573 = !DILocation(line: 774, column: 7, scope: !2266)
!2574 = !DILocation(line: 863, column: 2, scope: !2266)
!2575 = !DILocation(line: 865, column: 11, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 865, column: 11)
!2577 = !DILocation(line: 0, scope: !2239)
!2578 = distinct !{!2578, !2409, !2579}
!2579 = !DILocation(line: 867, column: 5, scope: !2240)
!2580 = !DILocation(line: 869, column: 9, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 869, column: 7)
!2582 = !DILocation(line: 870, column: 10, scope: !2581)
!2583 = !DILocation(line: 870, column: 7, scope: !2581)
!2584 = !DILocation(line: 871, column: 12, scope: !2581)
!2585 = !DILocation(line: 872, column: 7, scope: !2581)
!2586 = !DILocation(line: 872, column: 10, scope: !2581)
!2587 = !DILocation(line: 869, column: 7, scope: !2206)
!2588 = !DILocation(line: 875, column: 1, scope: !2206)
!2589 = !DILocation(line: 876, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 876, column: 7)
!2591 = !DILocation(line: 876, column: 7, scope: !2206)
!2592 = !DILocation(line: 878, column: 7, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 877, column: 5)
!2594 = !DILocation(line: 878, column: 13, scope: !2593)
!2595 = !DILocation(line: 878, column: 30, scope: !2593)
!2596 = !DILocation(line: 879, column: 30, scope: !2593)
!2597 = !DILocation(line: 880, column: 5, scope: !2593)
!2598 = !DILocation(line: 881, column: 3, scope: !2206)
!2599 = !DILocation(line: 882, column: 3, scope: !2206)
!2600 = !DILocation(line: 883, column: 12, scope: !2206)
!2601 = !DILocation(line: 883, column: 3, scope: !2206)
!2602 = !DILocation(line: 884, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 884, column: 7)
!2604 = !DILocation(line: 884, column: 7, scope: !2206)
!2605 = !DILocation(line: 887, column: 19, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 885, column: 5)
!2607 = !DILocation(line: 886, column: 7, scope: !2606)
!2608 = !DILocation(line: 888, column: 11, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 888, column: 11)
!2610 = !DILocation(line: 888, column: 17, scope: !2609)
!2611 = !DILocation(line: 888, column: 34, scope: !2609)
!2612 = !DILocation(line: 0, scope: !2609)
!2613 = !DILocation(line: 888, column: 11, scope: !2606)
!2614 = !DILocation(line: 889, column: 2, scope: !2609)
!2615 = !DILocation(line: 891, column: 2, scope: !2609)
!2616 = !DILocation(line: 892, column: 33, scope: !2606)
!2617 = !DILocation(line: 892, column: 7, scope: !2606)
!2618 = !DILocation(line: 893, column: 11, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 893, column: 11)
!2620 = !DILocation(line: 893, column: 17, scope: !2619)
!2621 = !DILocation(line: 893, column: 34, scope: !2619)
!2622 = !DILocation(line: 0, scope: !2619)
!2623 = !DILocation(line: 893, column: 11, scope: !2606)
!2624 = !DILocation(line: 894, column: 2, scope: !2619)
!2625 = !DILocation(line: 896, column: 34, scope: !2619)
!2626 = !DILocation(line: 896, column: 2, scope: !2619)
!2627 = !DILocation(line: 897, column: 31, scope: !2606)
!2628 = !DILocation(line: 897, column: 7, scope: !2606)
!2629 = !DILocation(line: 898, column: 5, scope: !2606)
!2630 = !DILocation(line: 900, column: 1, scope: !2206)
!2631 = !DILocation(line: 899, column: 3, scope: !2206)
!2632 = distinct !DISubprogram(name: "gsi_start_bb", scope: !440, file: !440, line: 4418, type: !2633, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!1708, !778}
!2635 = !{!2636, !2637, !2638}
!2636 = !DILocalVariable(name: "bb", arg: 1, scope: !2632, file: !440, line: 4418, type: !778)
!2637 = !DILocalVariable(name: "i", scope: !2632, file: !440, line: 4420, type: !1708)
!2638 = !DILocalVariable(name: "seq", scope: !2632, file: !440, line: 4421, type: !805)
!2639 = !DILocation(line: 0, scope: !2632)
!2640 = !DILocation(line: 4420, column: 24, scope: !2632)
!2641 = !DILocation(line: 4423, column: 9, scope: !2632)
!2642 = !DILocation(line: 4424, column: 11, scope: !2632)
!2643 = !DILocation(line: 4424, column: 5, scope: !2632)
!2644 = !DILocation(line: 4424, column: 9, scope: !2632)
!2645 = !DILocation(line: 4425, column: 5, scope: !2632)
!2646 = !DILocation(line: 4425, column: 9, scope: !2632)
!2647 = !DILocation(line: 4426, column: 5, scope: !2632)
!2648 = !DILocation(line: 4426, column: 8, scope: !2632)
!2649 = !DILocation(line: 4429, column: 1, scope: !2632)
!2650 = distinct !DISubprogram(name: "gsi_end_p", scope: !440, file: !440, line: 4467, type: !2651, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!512, !1708}
!2653 = !{!2654}
!2654 = !DILocalVariable(name: "i", arg: 1, scope: !2650, file: !440, line: 4467, type: !1708)
!2655 = !DILocation(line: 4467, column: 33, scope: !2650)
!2656 = !DILocation(line: 4469, column: 12, scope: !2650)
!2657 = !DILocation(line: 4469, column: 16, scope: !2650)
!2658 = !DILocation(line: 4469, column: 10, scope: !2650)
!2659 = !DILocation(line: 4469, column: 3, scope: !2650)
!2660 = distinct !DISubprogram(name: "gsi_stmt", scope: !440, file: !440, line: 4501, type: !2661, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!815, !1708}
!2663 = !{!2664}
!2664 = !DILocalVariable(name: "i", arg: 1, scope: !2660, file: !440, line: 4501, type: !1708)
!2665 = !DILocation(line: 4501, column: 32, scope: !2660)
!2666 = !DILocation(line: 4503, column: 12, scope: !2660)
!2667 = !DILocation(line: 4503, column: 17, scope: !2660)
!2668 = !DILocation(line: 4503, column: 3, scope: !2660)
!2669 = distinct !DISubprogram(name: "is_gimple_call", scope: !440, file: !440, line: 1870, type: !2670, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2673)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!512, !2672}
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !521, line: 60, baseType: !1693)
!2673 = !{!2674}
!2674 = !DILocalVariable(name: "gs", arg: 1, scope: !2669, file: !440, line: 1870, type: !2672)
!2675 = !DILocation(line: 0, scope: !2669)
!2676 = !DILocation(line: 1872, column: 10, scope: !2669)
!2677 = !DILocation(line: 1872, column: 27, scope: !2669)
!2678 = !DILocation(line: 1872, column: 3, scope: !2669)
!2679 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !440, file: !440, line: 1954, type: !2680, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!520, !2672}
!2682 = !{!2683, !2684}
!2683 = !DILocalVariable(name: "gs", arg: 1, scope: !2679, file: !440, line: 1954, type: !2672)
!2684 = !DILocalVariable(name: "addr", scope: !2679, file: !440, line: 1956, type: !520)
!2685 = !DILocation(line: 0, scope: !2679)
!2686 = !DILocation(line: 1956, column: 15, scope: !2679)
!2687 = !DILocation(line: 1957, column: 7, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2679, file: !440, line: 1957, column: 7)
!2689 = !DILocation(line: 1957, column: 24, scope: !2688)
!2690 = !DILocation(line: 1957, column: 7, scope: !2679)
!2691 = !DILocation(line: 1958, column: 12, scope: !2688)
!2692 = !DILocation(line: 1958, column: 5, scope: !2688)
!2693 = !DILocation(line: 1960, column: 1, scope: !2679)
!2694 = distinct !DISubprogram(name: "gimple_call_arg", scope: !440, file: !440, line: 2025, type: !2695, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!520, !2672, !7}
!2697 = !{!2698, !2699}
!2698 = !DILocalVariable(name: "gs", arg: 1, scope: !2694, file: !440, line: 2025, type: !2672)
!2699 = !DILocalVariable(name: "index", arg: 2, scope: !2694, file: !440, line: 2025, type: !7)
!2700 = !DILocation(line: 0, scope: !2694)
!2701 = !DILocation(line: 2028, column: 10, scope: !2694)
!2702 = !DILocation(line: 2028, column: 3, scope: !2694)
!2703 = distinct !DISubprogram(name: "is_global_var", scope: !2704, file: !2704, line: 575, type: !2705, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2710)
!2704 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!512, !2707}
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !521, line: 59, baseType: !2708)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!2710 = !{!2711}
!2711 = !DILocalVariable(name: "t", arg: 1, scope: !2703, file: !2704, line: 575, type: !2707)
!2712 = !DILocation(line: 0, scope: !2703)
!2713 = !DILocation(line: 577, column: 11, scope: !2703)
!2714 = !DILocation(line: 577, column: 27, scope: !2703)
!2715 = !DILocation(line: 577, column: 30, scope: !2703)
!2716 = !DILocation(line: 577, column: 3, scope: !2703)
!2717 = distinct !DISubprogram(name: "gsi_next", scope: !440, file: !440, line: 4485, type: !2718, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!2721 = !{!2722}
!2722 = !DILocalVariable(name: "i", arg: 1, scope: !2717, file: !440, line: 4485, type: !2720)
!2723 = !DILocation(line: 0, scope: !2717)
!2724 = !DILocation(line: 4487, column: 15, scope: !2717)
!2725 = !DILocation(line: 4487, column: 20, scope: !2717)
!2726 = !DILocation(line: 4487, column: 10, scope: !2717)
!2727 = !DILocation(line: 4488, column: 1, scope: !2717)
!2728 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2704, file: !2704, line: 434, type: !2729, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2732)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!520, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !433, line: 27, baseType: !849)
!2732 = !{!2733}
!2733 = !DILocalVariable(name: "def", arg: 1, scope: !2728, file: !2704, line: 434, type: !2731)
!2734 = !DILocation(line: 0, scope: !2728)
!2735 = !DILocation(line: 436, column: 10, scope: !2728)
!2736 = !DILocation(line: 436, column: 3, scope: !2728)
!2737 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !440, file: !440, line: 3080, type: !2738, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!849, !815}
!2740 = !{!2741}
!2741 = !DILocalVariable(name: "gs", arg: 1, scope: !2737, file: !440, line: 3080, type: !815)
!2742 = !DILocation(line: 0, scope: !2737)
!2743 = !DILocation(line: 3083, column: 26, scope: !2737)
!2744 = !DILocation(line: 3083, column: 3, scope: !2737)
!2745 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !2704, file: !2704, line: 910, type: !2746, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2749)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!1695, !2748, !815, !513}
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2749 = !{!2750, !2751, !2752, !2753, !2754}
!2750 = !DILocalVariable(name: "ptr", arg: 1, scope: !2745, file: !2704, line: 910, type: !2748)
!2751 = !DILocalVariable(name: "phi", arg: 2, scope: !2745, file: !2704, line: 910, type: !815)
!2752 = !DILocalVariable(name: "flags", arg: 3, scope: !2745, file: !2704, line: 910, type: !513)
!2753 = !DILocalVariable(name: "phi_def", scope: !2745, file: !2704, line: 912, type: !520)
!2754 = !DILocalVariable(name: "comp", scope: !2745, file: !2704, line: 913, type: !513)
!2755 = !DILocation(line: 0, scope: !2745)
!2756 = !DILocation(line: 912, column: 18, scope: !2745)
!2757 = !DILocation(line: 915, column: 3, scope: !2745)
!2758 = !DILocation(line: 916, column: 8, scope: !2745)
!2759 = !DILocation(line: 916, column: 13, scope: !2745)
!2760 = !DILocation(line: 920, column: 11, scope: !2745)
!2761 = !DILocation(line: 923, column: 7, scope: !2745)
!2762 = !DILocation(line: 925, column: 17, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !2704, line: 924, column: 5)
!2764 = distinct !DILexicalBlock(scope: !2745, file: !2704, line: 923, column: 7)
!2765 = !DILocation(line: 926, column: 7, scope: !2763)
!2766 = !DILocation(line: 929, column: 8, scope: !2745)
!2767 = !DILocation(line: 929, column: 17, scope: !2745)
!2768 = !DILocation(line: 930, column: 18, scope: !2745)
!2769 = !DILocation(line: 930, column: 8, scope: !2745)
!2770 = !DILocation(line: 930, column: 16, scope: !2745)
!2771 = !DILocation(line: 931, column: 8, scope: !2745)
!2772 = !DILocation(line: 931, column: 18, scope: !2745)
!2773 = !DILocation(line: 932, column: 10, scope: !2745)
!2774 = !DILocation(line: 932, column: 3, scope: !2745)
!2775 = !DILocation(line: 933, column: 1, scope: !2745)
!2776 = distinct !DISubprogram(name: "op_iter_done", scope: !2704, file: !2704, line: 652, type: !2777, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2781)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!512, !2779}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2247)
!2781 = !{!2782}
!2782 = !DILocalVariable(name: "ptr", arg: 1, scope: !2776, file: !2704, line: 652, type: !2779)
!2783 = !DILocation(line: 0, scope: !2776)
!2784 = !DILocation(line: 654, column: 15, scope: !2776)
!2785 = !DILocation(line: 654, column: 3, scope: !2776)
!2786 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2704, file: !2704, line: 427, type: !2787, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!520, !1695}
!2789 = !{!2790}
!2790 = !DILocalVariable(name: "use", arg: 1, scope: !2786, file: !2704, line: 427, type: !1695)
!2791 = !DILocation(line: 0, scope: !2786)
!2792 = !DILocation(line: 429, column: 17, scope: !2786)
!2793 = !DILocation(line: 429, column: 10, scope: !2786)
!2794 = !DILocation(line: 429, column: 3, scope: !2786)
!2795 = distinct !DISubprogram(name: "va_list_ptr_read", scope: !3, file: !3, line: 346, type: !2796, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2799)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!512, !2798, !520, !520}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2799 = !{!2800, !2801, !2802}
!2800 = !DILocalVariable(name: "si", arg: 1, scope: !2795, file: !3, line: 346, type: !2798)
!2801 = !DILocalVariable(name: "ap", arg: 2, scope: !2795, file: !3, line: 346, type: !520)
!2802 = !DILocalVariable(name: "tem", arg: 3, scope: !2795, file: !3, line: 346, type: !520)
!2803 = !DILocation(line: 0, scope: !2795)
!2804 = !DILocation(line: 348, column: 7, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 348, column: 7)
!2806 = !DILocation(line: 348, column: 22, scope: !2805)
!2807 = !DILocation(line: 349, column: 7, scope: !2805)
!2808 = !DILocation(line: 349, column: 29, scope: !2805)
!2809 = !DILocation(line: 349, column: 43, scope: !2805)
!2810 = !DILocation(line: 349, column: 11, scope: !2805)
!2811 = !DILocation(line: 348, column: 7, scope: !2795)
!2812 = !DILocation(line: 352, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 352, column: 7)
!2814 = !DILocation(line: 352, column: 23, scope: !2813)
!2815 = !DILocation(line: 353, column: 7, scope: !2813)
!2816 = !DILocation(line: 353, column: 28, scope: !2813)
!2817 = !DILocation(line: 354, column: 10, scope: !2813)
!2818 = !DILocation(line: 353, column: 10, scope: !2813)
!2819 = !DILocation(line: 355, column: 7, scope: !2813)
!2820 = !DILocation(line: 355, column: 25, scope: !2813)
!2821 = !DILocation(line: 355, column: 10, scope: !2813)
!2822 = !DILocation(line: 352, column: 7, scope: !2795)
!2823 = !DILocation(line: 358, column: 11, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 358, column: 7)
!2825 = !DILocation(line: 358, column: 25, scope: !2824)
!2826 = !DILocation(line: 358, column: 7, scope: !2795)
!2827 = !DILocation(line: 360, column: 25, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 359, column: 5)
!2829 = !DILocation(line: 361, column: 15, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 361, column: 11)
!2831 = !DILocation(line: 361, column: 30, scope: !2830)
!2832 = !DILocation(line: 362, column: 4, scope: !2830)
!2833 = !DILocation(line: 362, column: 35, scope: !2830)
!2834 = !DILocation(line: 362, column: 43, scope: !2830)
!2835 = !DILocation(line: 362, column: 7, scope: !2830)
!2836 = !DILocation(line: 361, column: 11, scope: !2828)
!2837 = !DILocation(line: 363, column: 20, scope: !2830)
!2838 = !DILocation(line: 363, column: 2, scope: !2830)
!2839 = !DILocation(line: 365, column: 11, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 365, column: 11)
!2841 = !DILocation(line: 365, column: 21, scope: !2840)
!2842 = !DILocation(line: 365, column: 25, scope: !2840)
!2843 = !DILocation(line: 365, column: 36, scope: !2840)
!2844 = !DILocation(line: 365, column: 11, scope: !2828)
!2845 = !DILocation(line: 368, column: 21, scope: !2840)
!2846 = !DILocation(line: 368, column: 25, scope: !2840)
!2847 = !DILocation(line: 368, column: 36, scope: !2840)
!2848 = !DILocation(line: 368, column: 32, scope: !2840)
!2849 = !DILocation(line: 369, column: 8, scope: !2840)
!2850 = !DILocation(line: 369, column: 21, scope: !2840)
!2851 = !DILocation(line: 366, column: 2, scope: !2840)
!2852 = !DILocation(line: 375, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 375, column: 7)
!2854 = !DILocation(line: 375, column: 9, scope: !2853)
!2855 = !DILocation(line: 375, column: 7, scope: !2795)
!2856 = !DILocation(line: 378, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 378, column: 7)
!2858 = !DILocation(line: 378, column: 48, scope: !2857)
!2859 = !DILocation(line: 378, column: 7, scope: !2795)
!2860 = !DILocation(line: 383, column: 23, scope: !2795)
!2861 = !DILocation(line: 384, column: 5, scope: !2795)
!2862 = !DILocation(line: 383, column: 3, scope: !2795)
!2863 = !DILocation(line: 385, column: 3, scope: !2795)
!2864 = !DILocation(line: 386, column: 1, scope: !2795)
!2865 = distinct !DISubprogram(name: "va_list_ptr_write", scope: !3, file: !3, line: 396, type: !2796, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2866 = !{!2867, !2868, !2869, !2870}
!2867 = !DILocalVariable(name: "si", arg: 1, scope: !2865, file: !3, line: 396, type: !2798)
!2868 = !DILocalVariable(name: "ap", arg: 2, scope: !2865, file: !3, line: 396, type: !520)
!2869 = !DILocalVariable(name: "tem2", arg: 3, scope: !2865, file: !3, line: 396, type: !520)
!2870 = !DILocalVariable(name: "increment", scope: !2865, file: !3, line: 398, type: !574)
!2871 = !DILocation(line: 0, scope: !2865)
!2872 = !DILocation(line: 400, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 400, column: 7)
!2874 = !DILocation(line: 400, column: 22, scope: !2873)
!2875 = !DILocation(line: 401, column: 7, scope: !2873)
!2876 = !DILocation(line: 401, column: 29, scope: !2873)
!2877 = !DILocation(line: 401, column: 43, scope: !2873)
!2878 = !DILocation(line: 401, column: 11, scope: !2873)
!2879 = !DILocation(line: 400, column: 7, scope: !2865)
!2880 = !DILocation(line: 404, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 404, column: 7)
!2882 = !DILocation(line: 404, column: 24, scope: !2881)
!2883 = !DILocation(line: 405, column: 7, scope: !2881)
!2884 = !DILocation(line: 405, column: 28, scope: !2881)
!2885 = !DILocation(line: 405, column: 42, scope: !2881)
!2886 = !DILocation(line: 405, column: 10, scope: !2881)
!2887 = !DILocation(line: 404, column: 7, scope: !2865)
!2888 = !DILocation(line: 408, column: 11, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 408, column: 7)
!2890 = !DILocation(line: 408, column: 25, scope: !2889)
!2891 = !DILocation(line: 408, column: 7, scope: !2865)
!2892 = !DILocation(line: 411, column: 15, scope: !2865)
!2893 = !DILocation(line: 412, column: 17, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 412, column: 7)
!2895 = !DILocation(line: 412, column: 21, scope: !2894)
!2896 = !DILocation(line: 412, column: 7, scope: !2865)
!2897 = !DILocation(line: 415, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 415, column: 7)
!2899 = !DILocation(line: 415, column: 13, scope: !2898)
!2900 = !DILocation(line: 415, column: 30, scope: !2898)
!2901 = !DILocation(line: 415, column: 42, scope: !2898)
!2902 = !DILocation(line: 415, column: 7, scope: !2865)
!2903 = !DILocation(line: 416, column: 28, scope: !2898)
!2904 = !DILocation(line: 416, column: 5, scope: !2898)
!2905 = !DILocation(line: 418, column: 28, scope: !2898)
!2906 = !DILocation(line: 421, column: 1, scope: !2865)
!2907 = distinct !DISubprogram(name: "check_va_list_escapes", scope: !3, file: !3, line: 430, type: !2908, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2798, !520, !520}
!2910 = !{!2911, !2912, !2913}
!2911 = !DILocalVariable(name: "si", arg: 1, scope: !2907, file: !3, line: 430, type: !2798)
!2912 = !DILocalVariable(name: "lhs", arg: 2, scope: !2907, file: !3, line: 430, type: !520)
!2913 = !DILocalVariable(name: "rhs", arg: 3, scope: !2907, file: !3, line: 430, type: !520)
!2914 = !DILocation(line: 0, scope: !2907)
!2915 = !DILocation(line: 432, column: 9, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 432, column: 7)
!2917 = !DILocation(line: 432, column: 7, scope: !2907)
!2918 = !DILocation(line: 435, column: 7, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 435, column: 7)
!2920 = !DILocation(line: 435, column: 23, scope: !2919)
!2921 = !DILocation(line: 436, column: 7, scope: !2919)
!2922 = !DILocation(line: 436, column: 30, scope: !2919)
!2923 = !DILocation(line: 437, column: 5, scope: !2919)
!2924 = !DILocation(line: 436, column: 12, scope: !2919)
!2925 = !DILocation(line: 435, column: 7, scope: !2907)
!2926 = !DILocation(line: 440, column: 7, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 440, column: 7)
!2928 = !DILocation(line: 440, column: 23, scope: !2927)
!2929 = !DILocation(line: 440, column: 35, scope: !2927)
!2930 = !DILocation(line: 440, column: 53, scope: !2927)
!2931 = !DILocation(line: 440, column: 38, scope: !2927)
!2932 = !DILocation(line: 440, column: 7, scope: !2907)
!2933 = !DILocation(line: 442, column: 11, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 441, column: 5)
!2935 = !DILocation(line: 442, column: 27, scope: !2934)
!2936 = !DILocation(line: 443, column: 7, scope: !2934)
!2937 = !DILocation(line: 446, column: 11, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 446, column: 7)
!2939 = !DILocation(line: 446, column: 25, scope: !2938)
!2940 = !DILocation(line: 446, column: 7, scope: !2907)
!2941 = !DILocation(line: 448, column: 25, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 447, column: 5)
!2943 = !DILocation(line: 449, column: 15, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 449, column: 11)
!2945 = !DILocation(line: 449, column: 30, scope: !2944)
!2946 = !DILocation(line: 450, column: 4, scope: !2944)
!2947 = !DILocation(line: 450, column: 35, scope: !2944)
!2948 = !DILocation(line: 450, column: 43, scope: !2944)
!2949 = !DILocation(line: 450, column: 7, scope: !2944)
!2950 = !DILocation(line: 449, column: 11, scope: !2942)
!2951 = !DILocation(line: 451, column: 20, scope: !2944)
!2952 = !DILocation(line: 451, column: 2, scope: !2944)
!2953 = !DILocation(line: 453, column: 11, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 453, column: 11)
!2955 = !DILocation(line: 453, column: 21, scope: !2954)
!2956 = !DILocation(line: 453, column: 25, scope: !2954)
!2957 = !DILocation(line: 453, column: 36, scope: !2954)
!2958 = !DILocation(line: 453, column: 11, scope: !2942)
!2959 = !DILocation(line: 456, column: 21, scope: !2954)
!2960 = !DILocation(line: 456, column: 25, scope: !2954)
!2961 = !DILocation(line: 456, column: 36, scope: !2954)
!2962 = !DILocation(line: 456, column: 32, scope: !2954)
!2963 = !DILocation(line: 457, column: 8, scope: !2954)
!2964 = !DILocation(line: 457, column: 21, scope: !2954)
!2965 = !DILocation(line: 454, column: 2, scope: !2954)
!2966 = !DILocation(line: 463, column: 13, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 463, column: 7)
!2968 = !DILocation(line: 463, column: 9, scope: !2967)
!2969 = !DILocation(line: 463, column: 7, scope: !2907)
!2970 = !DILocation(line: 465, column: 11, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 464, column: 5)
!2972 = !DILocation(line: 465, column: 27, scope: !2971)
!2973 = !DILocation(line: 466, column: 7, scope: !2971)
!2974 = !DILocation(line: 469, column: 37, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 469, column: 7)
!2976 = !DILocation(line: 469, column: 7, scope: !2975)
!2977 = !DILocation(line: 470, column: 7, scope: !2975)
!2978 = !DILocation(line: 469, column: 7, scope: !2907)
!2979 = !DILocation(line: 472, column: 11, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 471, column: 5)
!2981 = !DILocation(line: 472, column: 27, scope: !2980)
!2982 = !DILocation(line: 473, column: 7, scope: !2980)
!2983 = !DILocation(line: 476, column: 23, scope: !2907)
!2984 = !DILocation(line: 477, column: 5, scope: !2907)
!2985 = !DILocation(line: 476, column: 3, scope: !2907)
!2986 = !DILocation(line: 478, column: 1, scope: !2907)
!2987 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2704, file: !2704, line: 659, type: !2988, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!1695, !2748}
!2990 = !{!2991, !2992}
!2991 = !DILocalVariable(name: "ptr", arg: 1, scope: !2987, file: !2704, line: 659, type: !2748)
!2992 = !DILocalVariable(name: "use_p", scope: !2987, file: !2704, line: 661, type: !1695)
!2993 = !DILocation(line: 0, scope: !2987)
!2994 = !DILocation(line: 665, column: 12, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2987, file: !2704, line: 665, column: 7)
!2996 = !DILocation(line: 665, column: 7, scope: !2995)
!2997 = !DILocation(line: 665, column: 7, scope: !2987)
!2998 = !DILocation(line: 667, column: 15, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !2704, line: 666, column: 5)
!3000 = !DILocation(line: 668, column: 30, scope: !2999)
!3001 = !DILocation(line: 668, column: 17, scope: !2999)
!3002 = !DILocation(line: 669, column: 7, scope: !2999)
!3003 = !DILocation(line: 671, column: 12, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2987, file: !2704, line: 671, column: 7)
!3005 = !DILocation(line: 671, column: 25, scope: !3004)
!3006 = !DILocation(line: 671, column: 18, scope: !3004)
!3007 = !DILocation(line: 671, column: 7, scope: !2987)
!3008 = !DILocation(line: 673, column: 14, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3004, file: !2704, line: 672, column: 5)
!3010 = !DILocation(line: 673, column: 7, scope: !3009)
!3011 = !DILocation(line: 675, column: 8, scope: !2987)
!3012 = !DILocation(line: 675, column: 13, scope: !2987)
!3013 = !DILocation(line: 676, column: 3, scope: !2987)
!3014 = !DILocation(line: 677, column: 1, scope: !2987)
!3015 = distinct !DISubprogram(name: "is_gimple_assign", scope: !440, file: !440, line: 1677, type: !2670, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3016)
!3016 = !{!3017}
!3017 = !DILocalVariable(name: "gs", arg: 1, scope: !3015, file: !440, line: 1677, type: !2672)
!3018 = !DILocation(line: 0, scope: !3015)
!3019 = !DILocation(line: 1679, column: 10, scope: !3015)
!3020 = !DILocation(line: 1679, column: 27, scope: !3015)
!3021 = !DILocation(line: 1679, column: 3, scope: !3015)
!3022 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !440, file: !440, line: 1694, type: !2680, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3023)
!3023 = !{!3024}
!3024 = !DILocalVariable(name: "gs", arg: 1, scope: !3022, file: !440, line: 1694, type: !2672)
!3025 = !DILocation(line: 0, scope: !3022)
!3026 = !DILocation(line: 1697, column: 10, scope: !3022)
!3027 = !DILocation(line: 1697, column: 3, scope: !3022)
!3028 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !440, file: !440, line: 1727, type: !2680, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3029)
!3029 = !{!3030}
!3030 = !DILocalVariable(name: "gs", arg: 1, scope: !3028, file: !440, line: 1727, type: !2672)
!3031 = !DILocation(line: 0, scope: !3028)
!3032 = !DILocation(line: 1730, column: 10, scope: !3028)
!3033 = !DILocation(line: 1730, column: 3, scope: !3028)
!3034 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !440, file: !440, line: 1686, type: !3035, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!504, !238}
!3037 = !{!3038}
!3038 = !DILocalVariable(name: "code", arg: 1, scope: !3034, file: !440, line: 1686, type: !238)
!3039 = !DILocation(line: 0, scope: !3034)
!3040 = !DILocation(line: 1688, column: 34, scope: !3034)
!3041 = !DILocation(line: 1688, column: 10, scope: !3034)
!3042 = !DILocation(line: 1688, column: 3, scope: !3034)
!3043 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !440, file: !440, line: 1815, type: !3044, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!238, !2672}
!3046 = !{!3047, !3048}
!3047 = !DILocalVariable(name: "gs", arg: 1, scope: !3043, file: !440, line: 1815, type: !2672)
!3048 = !DILocalVariable(name: "code", scope: !3043, file: !440, line: 1817, type: !238)
!3049 = !DILocation(line: 0, scope: !3043)
!3050 = !DILocation(line: 1820, column: 10, scope: !3043)
!3051 = !DILocation(line: 1821, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3043, file: !440, line: 1821, column: 7)
!3053 = !DILocation(line: 1821, column: 35, scope: !3052)
!3054 = !DILocation(line: 1821, column: 7, scope: !3043)
!3055 = !DILocation(line: 1822, column: 12, scope: !3052)
!3056 = !DILocation(line: 1822, column: 5, scope: !3052)
!3057 = !DILocation(line: 1824, column: 3, scope: !3043)
!3058 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !440, file: !440, line: 1759, type: !2680, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3059)
!3059 = !{!3060}
!3060 = !DILocalVariable(name: "gs", arg: 1, scope: !3058, file: !440, line: 1759, type: !2672)
!3061 = !DILocation(line: 0, scope: !3058)
!3062 = !DILocation(line: 1763, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3058, file: !440, line: 1763, column: 7)
!3064 = !DILocation(line: 1763, column: 27, scope: !3063)
!3065 = !DILocation(line: 1763, column: 7, scope: !3058)
!3066 = !DILocation(line: 1764, column: 12, scope: !3063)
!3067 = !DILocation(line: 1764, column: 5, scope: !3063)
!3068 = !DILocation(line: 0, scope: !3063)
!3069 = !DILocation(line: 1767, column: 1, scope: !3058)
!3070 = distinct !DISubprogram(name: "va_list_counter_struct_op", scope: !3, file: !3, line: 315, type: !3071, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!512, !2798, !520, !520, !512}
!3073 = !{!3074, !3075, !3076, !3077, !3078}
!3074 = !DILocalVariable(name: "si", arg: 1, scope: !3070, file: !3, line: 315, type: !2798)
!3075 = !DILocalVariable(name: "ap", arg: 2, scope: !3070, file: !3, line: 315, type: !520)
!3076 = !DILocalVariable(name: "var", arg: 3, scope: !3070, file: !3, line: 315, type: !520)
!3077 = !DILocalVariable(name: "write_p", arg: 4, scope: !3070, file: !3, line: 316, type: !512)
!3078 = !DILocalVariable(name: "base", scope: !3070, file: !3, line: 318, type: !520)
!3079 = !DILocation(line: 0, scope: !3070)
!3080 = !DILocation(line: 320, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 320, column: 7)
!3082 = !DILocation(line: 320, column: 22, scope: !3081)
!3083 = !DILocation(line: 321, column: 7, scope: !3081)
!3084 = !DILocation(line: 321, column: 10, scope: !3081)
!3085 = !DILocation(line: 321, column: 43, scope: !3081)
!3086 = !DILocation(line: 320, column: 7, scope: !3070)
!3087 = !DILocation(line: 324, column: 7, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 324, column: 7)
!3089 = !DILocation(line: 324, column: 23, scope: !3088)
!3090 = !DILocation(line: 325, column: 7, scope: !3088)
!3091 = !DILocation(line: 325, column: 28, scope: !3088)
!3092 = !DILocation(line: 325, column: 42, scope: !3088)
!3093 = !DILocation(line: 325, column: 10, scope: !3088)
!3094 = !DILocation(line: 324, column: 7, scope: !3070)
!3095 = !DILocation(line: 328, column: 10, scope: !3070)
!3096 = !DILocation(line: 329, column: 7, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 329, column: 7)
!3098 = !DILocation(line: 329, column: 24, scope: !3097)
!3099 = !DILocation(line: 330, column: 7, scope: !3097)
!3100 = !DILocation(line: 330, column: 29, scope: !3097)
!3101 = !DILocation(line: 330, column: 43, scope: !3097)
!3102 = !DILocation(line: 330, column: 11, scope: !3097)
!3103 = !DILocation(line: 329, column: 7, scope: !3070)
!3104 = !DILocation(line: 333, column: 7, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 333, column: 7)
!3106 = !DILocation(line: 333, column: 31, scope: !3105)
!3107 = !DILocation(line: 333, column: 28, scope: !3105)
!3108 = !DILocation(line: 333, column: 7, scope: !3070)
!3109 = !DILocation(line: 334, column: 5, scope: !3105)
!3110 = !DILocation(line: 335, column: 36, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 335, column: 12)
!3112 = !DILocation(line: 335, column: 33, scope: !3111)
!3113 = !DILocation(line: 335, column: 12, scope: !3105)
!3114 = !DILocation(line: 336, column: 5, scope: !3111)
!3115 = !DILocation(line: 339, column: 1, scope: !3070)
!3116 = distinct !DISubprogram(name: "is_gimple_debug", scope: !440, file: !440, line: 3249, type: !2670, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3117)
!3117 = !{!3118}
!3118 = !DILocalVariable(name: "gs", arg: 1, scope: !3116, file: !440, line: 3249, type: !2672)
!3119 = !DILocation(line: 0, scope: !3116)
!3120 = !DILocation(line: 3251, column: 10, scope: !3116)
!3121 = !DILocation(line: 3251, column: 27, scope: !3116)
!3122 = !DILocation(line: 3251, column: 3, scope: !3116)
!3123 = distinct !DISubprogram(name: "find_va_list_reference", scope: !3, file: !3, line: 237, type: !3124, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!520, !849, !1703, !517}
!3126 = !{!3127, !3128, !3129, !3130, !3131}
!3127 = !DILocalVariable(name: "tp", arg: 1, scope: !3123, file: !3, line: 237, type: !849)
!3128 = !DILocalVariable(name: "walk_subtrees", arg: 2, scope: !3123, file: !3, line: 237, type: !1703)
!3129 = !DILocalVariable(name: "data", arg: 3, scope: !3123, file: !3, line: 238, type: !517)
!3130 = !DILocalVariable(name: "va_list_vars", scope: !3123, file: !3, line: 240, type: !1181)
!3131 = !DILocalVariable(name: "var", scope: !3123, file: !3, line: 241, type: !520)
!3132 = !DILocation(line: 0, scope: !3123)
!3133 = !DILocation(line: 240, column: 68, scope: !3123)
!3134 = !DILocation(line: 241, column: 14, scope: !3123)
!3135 = !DILocation(line: 243, column: 7, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 243, column: 7)
!3137 = !DILocation(line: 243, column: 23, scope: !3136)
!3138 = !DILocation(line: 243, column: 7, scope: !3123)
!3139 = !DILocation(line: 244, column: 11, scope: !3136)
!3140 = !DILocation(line: 0, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 246, column: 7)
!3142 = !DILocation(line: 246, column: 7, scope: !3141)
!3143 = !DILocation(line: 244, column: 5, scope: !3136)
!3144 = !DILocation(line: 246, column: 23, scope: !3141)
!3145 = !DILocation(line: 247, column: 7, scope: !3141)
!3146 = !DILocation(line: 247, column: 38, scope: !3141)
!3147 = !DILocation(line: 247, column: 10, scope: !3141)
!3148 = !DILocation(line: 246, column: 7, scope: !3123)
!3149 = !DILocation(line: 250, column: 3, scope: !3123)
!3150 = !DILocation(line: 251, column: 1, scope: !3123)
!3151 = distinct !DISubprogram(name: "check_all_va_list_escapes", scope: !3, file: !3, line: 485, type: !3152, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!512, !2798}
!3154 = !{!3155, !3156, !3157, !3161, !3165, !3166, !3167, !3173, !3174, !3177, !3178}
!3155 = !DILocalVariable(name: "si", arg: 1, scope: !3151, file: !3, line: 485, type: !2798)
!3156 = !DILocalVariable(name: "bb", scope: !3151, file: !3, line: 487, type: !778)
!3157 = !DILocalVariable(name: "i", scope: !3158, file: !3, line: 491, type: !1708)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 490, column: 5)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 489, column: 3)
!3160 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 489, column: 3)
!3161 = !DILocalVariable(name: "stmt", scope: !3162, file: !3, line: 495, type: !815)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 494, column: 2)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 493, column: 7)
!3164 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 493, column: 7)
!3165 = !DILocalVariable(name: "use", scope: !3162, file: !3, line: 496, type: !520)
!3166 = !DILocalVariable(name: "iter", scope: !3162, file: !3, line: 497, type: !2247)
!3167 = !DILocalVariable(name: "rhs", scope: !3168, file: !3, line: 510, type: !520)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 509, column: 3)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 508, column: 12)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 503, column: 6)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 502, column: 4)
!3172 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 502, column: 4)
!3173 = !DILocalVariable(name: "rhs_code", scope: !3168, file: !3, line: 511, type: !238)
!3174 = !DILocalVariable(name: "gpr_size", scope: !3175, file: !3, line: 520, type: !574)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 519, column: 7)
!3176 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 514, column: 9)
!3177 = !DILocalVariable(name: "access_size", scope: !3175, file: !3, line: 521, type: !520)
!3178 = !DILocalVariable(name: "lhs", scope: !3179, file: !3, line: 546, type: !520)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 545, column: 7)
!3180 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 538, column: 9)
!3181 = !DILocation(line: 0, scope: !3151)
!3182 = !DILocation(line: 489, column: 3, scope: !3160)
!3183 = !DILocation(line: 0, scope: !3158)
!3184 = !DILocation(line: 0, scope: !3164)
!3185 = !DILocation(line: 0, scope: !3162)
!3186 = !DILocation(line: 0, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 504, column: 12)
!3188 = !DILocation(line: 0, scope: !3176)
!3189 = !DILocation(line: 0, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 553, column: 13)
!3191 = !DILocation(line: 489, column: 3, scope: !3159)
!3192 = !DILocation(line: 0, scope: !3160)
!3193 = !DILocation(line: 491, column: 7, scope: !3158)
!3194 = !DILocation(line: 493, column: 16, scope: !3164)
!3195 = !DILocation(line: 493, column: 12, scope: !3164)
!3196 = !DILocation(line: 493, column: 36, scope: !3163)
!3197 = !DILocation(line: 493, column: 35, scope: !3163)
!3198 = !DILocation(line: 493, column: 7, scope: !3164)
!3199 = !DILocation(line: 495, column: 18, scope: !3162)
!3200 = !DILocation(line: 497, column: 4, scope: !3162)
!3201 = !DILocation(line: 499, column: 8, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 499, column: 8)
!3203 = !DILocation(line: 499, column: 8, scope: !3162)
!3204 = !DILocation(line: 502, column: 4, scope: !3172)
!3205 = !DILocation(line: 0, scope: !3172)
!3206 = !DILocation(line: 502, column: 4, scope: !3171)
!3207 = !DILocation(line: 504, column: 32, scope: !3187)
!3208 = !DILocation(line: 505, column: 7, scope: !3187)
!3209 = !DILocation(line: 504, column: 14, scope: !3187)
!3210 = !DILocation(line: 504, column: 12, scope: !3170)
!3211 = !DILocation(line: 508, column: 12, scope: !3169)
!3212 = !DILocation(line: 508, column: 12, scope: !3170)
!3213 = !DILocation(line: 510, column: 16, scope: !3168)
!3214 = !DILocation(line: 0, scope: !3168)
!3215 = !DILocation(line: 511, column: 31, scope: !3168)
!3216 = !DILocation(line: 514, column: 9, scope: !3176)
!3217 = !DILocation(line: 514, column: 39, scope: !3176)
!3218 = !DILocation(line: 515, column: 9, scope: !3176)
!3219 = !DILocation(line: 515, column: 12, scope: !3176)
!3220 = !DILocation(line: 515, column: 34, scope: !3176)
!3221 = !DILocation(line: 516, column: 9, scope: !3176)
!3222 = !DILocation(line: 516, column: 12, scope: !3176)
!3223 = !DILocation(line: 517, column: 9, scope: !3176)
!3224 = !DILocation(line: 517, column: 12, scope: !3176)
!3225 = !DILocation(line: 518, column: 9, scope: !3176)
!3226 = !DILocation(line: 518, column: 16, scope: !3176)
!3227 = !DILocation(line: 518, column: 24, scope: !3176)
!3228 = !DILocation(line: 518, column: 12, scope: !3176)
!3229 = !DILocation(line: 518, column: 48, scope: !3176)
!3230 = !DILocation(line: 514, column: 9, scope: !3168)
!3231 = !DILocation(line: 521, column: 28, scope: !3175)
!3232 = !DILocation(line: 0, scope: !3175)
!3233 = !DILocation(line: 523, column: 20, scope: !3175)
!3234 = !DILocation(line: 524, column: 8, scope: !3175)
!3235 = !DILocation(line: 524, column: 6, scope: !3175)
!3236 = !DILocation(line: 525, column: 22, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 525, column: 13)
!3238 = !DILocation(line: 0, scope: !3237)
!3239 = !DILocation(line: 525, column: 13, scope: !3175)
!3240 = !DILocation(line: 526, column: 27, scope: !3237)
!3241 = !DILocation(line: 526, column: 4, scope: !3237)
!3242 = !DILocation(line: 527, column: 35, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 527, column: 18)
!3244 = !DILocation(line: 527, column: 29, scope: !3243)
!3245 = !DILocation(line: 527, column: 27, scope: !3243)
!3246 = !DILocation(line: 527, column: 18, scope: !3237)
!3247 = !DILocation(line: 528, column: 29, scope: !3243)
!3248 = !DILocation(line: 528, column: 27, scope: !3243)
!3249 = !DILocation(line: 528, column: 4, scope: !3243)
!3250 = !DILocation(line: 538, column: 13, scope: !3180)
!3251 = !DILocation(line: 539, column: 9, scope: !3180)
!3252 = !DILocation(line: 539, column: 23, scope: !3180)
!3253 = !DILocation(line: 540, column: 7, scope: !3180)
!3254 = !DILocation(line: 540, column: 11, scope: !3180)
!3255 = !DILocation(line: 541, column: 11, scope: !3180)
!3256 = !DILocation(line: 542, column: 6, scope: !3180)
!3257 = !DILocation(line: 542, column: 9, scope: !3180)
!3258 = !DILocation(line: 543, column: 6, scope: !3180)
!3259 = !DILocation(line: 543, column: 10, scope: !3180)
!3260 = !DILocation(line: 544, column: 10, scope: !3180)
!3261 = !DILocation(line: 538, column: 9, scope: !3168)
!3262 = !DILocation(line: 546, column: 20, scope: !3179)
!3263 = !DILocation(line: 0, scope: !3179)
!3264 = !DILocation(line: 548, column: 13, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 548, column: 13)
!3266 = !DILocation(line: 548, column: 29, scope: !3265)
!3267 = !DILocation(line: 549, column: 6, scope: !3265)
!3268 = !DILocation(line: 549, column: 27, scope: !3265)
!3269 = !DILocation(line: 550, column: 9, scope: !3265)
!3270 = !DILocation(line: 549, column: 9, scope: !3265)
!3271 = !DILocation(line: 548, column: 13, scope: !3179)
!3272 = !DILocation(line: 553, column: 13, scope: !3190)
!3273 = !DILocation(line: 553, column: 29, scope: !3190)
!3274 = !DILocation(line: 554, column: 6, scope: !3190)
!3275 = !DILocation(line: 554, column: 27, scope: !3190)
!3276 = !DILocation(line: 555, column: 9, scope: !3190)
!3277 = !DILocation(line: 554, column: 9, scope: !3190)
!3278 = !DILocation(line: 553, column: 13, scope: !3179)
!3279 = !DILocation(line: 557, column: 7, scope: !3180)
!3280 = !DILocation(line: 558, column: 3, scope: !3169)
!3281 = !DILocation(line: 560, column: 12, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 560, column: 12)
!3283 = !DILocation(line: 560, column: 22, scope: !3282)
!3284 = !DILocation(line: 560, column: 26, scope: !3282)
!3285 = !DILocation(line: 560, column: 37, scope: !3282)
!3286 = !DILocation(line: 560, column: 12, scope: !3170)
!3287 = !DILocation(line: 562, column: 5, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 561, column: 3)
!3289 = !DILocation(line: 563, column: 24, scope: !3288)
!3290 = !DILocation(line: 563, column: 44, scope: !3288)
!3291 = !DILocation(line: 563, column: 5, scope: !3288)
!3292 = !DILocation(line: 564, column: 18, scope: !3288)
!3293 = !DILocation(line: 564, column: 5, scope: !3288)
!3294 = !DILocation(line: 565, column: 3, scope: !3288)
!3295 = distinct !{!3295, !3204, !3296}
!3296 = !DILocation(line: 567, column: 6, scope: !3172)
!3297 = !DILocation(line: 568, column: 2, scope: !3163)
!3298 = !DILocation(line: 493, column: 51, scope: !3163)
!3299 = !DILocation(line: 493, column: 7, scope: !3163)
!3300 = distinct !{!3300, !3198, !3301}
!3301 = !DILocation(line: 568, column: 2, scope: !3164)
!3302 = !DILocation(line: 569, column: 5, scope: !3159)
!3303 = !DILocation(line: 0, scope: !3159)
!3304 = distinct !{!3304, !3182, !3305}
!3305 = !DILocation(line: 569, column: 5, scope: !3160)
!3306 = !DILocation(line: 572, column: 1, scope: !3151)
!3307 = distinct !DISubprogram(name: "bb_seq", scope: !440, file: !440, line: 237, type: !3308, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3313)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!805, !3310}
!3310 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !521, line: 112, baseType: !3311)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!3313 = !{!3314}
!3314 = !DILocalVariable(name: "bb", arg: 1, scope: !3307, file: !440, line: 237, type: !3310)
!3315 = !DILocation(line: 0, scope: !3307)
!3316 = !DILocation(line: 239, column: 17, scope: !3307)
!3317 = !DILocation(line: 239, column: 23, scope: !3307)
!3318 = !DILocation(line: 239, column: 33, scope: !3307)
!3319 = !DILocation(line: 239, column: 43, scope: !3307)
!3320 = !DILocation(line: 239, column: 36, scope: !3307)
!3321 = !DILocation(line: 239, column: 10, scope: !3307)
!3322 = !DILocation(line: 239, column: 68, scope: !3307)
!3323 = !DILocation(line: 239, column: 3, scope: !3307)
!3324 = distinct !DISubprogram(name: "gimple_seq_first", scope: !440, file: !440, line: 159, type: !3325, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3330)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!810, !3327}
!3327 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !521, line: 67, baseType: !3328)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!3330 = !{!3331}
!3331 = !DILocalVariable(name: "s", arg: 1, scope: !3324, file: !440, line: 159, type: !3327)
!3332 = !DILocation(line: 0, scope: !3324)
!3333 = !DILocation(line: 161, column: 10, scope: !3324)
!3334 = !DILocation(line: 161, column: 17, scope: !3324)
!3335 = !DILocation(line: 161, column: 3, scope: !3324)
!3336 = distinct !DISubprogram(name: "gimple_code", scope: !440, file: !440, line: 1052, type: !3337, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!439, !2672}
!3339 = !{!3340}
!3340 = !DILocalVariable(name: "g", arg: 1, scope: !3336, file: !440, line: 1052, type: !2672)
!3341 = !DILocation(line: 0, scope: !3336)
!3342 = !DILocation(line: 1054, column: 20, scope: !3336)
!3343 = !DILocation(line: 1054, column: 3, scope: !3336)
!3344 = distinct !DISubprogram(name: "gimple_call_fn", scope: !440, file: !440, line: 1911, type: !2680, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3345)
!3345 = !{!3346}
!3346 = !DILocalVariable(name: "gs", arg: 1, scope: !3344, file: !440, line: 1911, type: !2672)
!3347 = !DILocation(line: 0, scope: !3344)
!3348 = !DILocation(line: 1914, column: 10, scope: !3344)
!3349 = !DILocation(line: 1914, column: 3, scope: !3344)
!3350 = distinct !DISubprogram(name: "gimple_op", scope: !440, file: !440, line: 1631, type: !2695, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3351)
!3351 = !{!3352, !3353}
!3352 = !DILocalVariable(name: "gs", arg: 1, scope: !3350, file: !440, line: 1631, type: !2672)
!3353 = !DILocalVariable(name: "i", arg: 2, scope: !3350, file: !440, line: 1631, type: !7)
!3354 = !DILocation(line: 0, scope: !3350)
!3355 = !DILocation(line: 1633, column: 7, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3350, file: !440, line: 1633, column: 7)
!3357 = !DILocation(line: 1633, column: 7, scope: !3350)
!3358 = !DILocation(line: 1638, column: 14, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3356, file: !440, line: 1634, column: 5)
!3360 = !DILocation(line: 1638, column: 7, scope: !3359)
!3361 = !DILocation(line: 0, scope: !3356)
!3362 = !DILocation(line: 1642, column: 1, scope: !3350)
!3363 = distinct !DISubprogram(name: "gimple_has_ops", scope: !440, file: !440, line: 1274, type: !2670, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3364)
!3364 = !{!3365}
!3365 = !DILocalVariable(name: "g", arg: 1, scope: !3363, file: !440, line: 1274, type: !2672)
!3366 = !DILocation(line: 0, scope: !3363)
!3367 = !DILocation(line: 1276, column: 10, scope: !3363)
!3368 = !DILocation(line: 1276, column: 26, scope: !3363)
!3369 = !DILocation(line: 1276, column: 41, scope: !3363)
!3370 = !DILocation(line: 1276, column: 44, scope: !3363)
!3371 = !DILocation(line: 1276, column: 60, scope: !3363)
!3372 = !DILocation(line: 1276, column: 3, scope: !3363)
!3373 = distinct !DISubprogram(name: "gimple_ops", scope: !440, file: !440, line: 1614, type: !2738, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3374)
!3374 = !{!3375, !3376}
!3375 = !DILocalVariable(name: "gs", arg: 1, scope: !3373, file: !440, line: 1614, type: !815)
!3376 = !DILocalVariable(name: "off", scope: !3373, file: !440, line: 1616, type: !960)
!3377 = !DILocation(line: 0, scope: !3373)
!3378 = !DILocation(line: 1621, column: 28, scope: !3373)
!3379 = !DILocation(line: 1621, column: 9, scope: !3373)
!3380 = !DILocation(line: 1622, column: 3, scope: !3373)
!3381 = !DILocation(line: 1624, column: 20, scope: !3373)
!3382 = !DILocation(line: 1624, column: 32, scope: !3373)
!3383 = !DILocation(line: 1624, column: 10, scope: !3373)
!3384 = !DILocation(line: 1624, column: 3, scope: !3373)
!3385 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !440, file: !440, line: 1073, type: !3386, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!478, !815}
!3388 = !{!3389}
!3389 = !DILocalVariable(name: "gs", arg: 1, scope: !3385, file: !440, line: 1073, type: !815)
!3390 = !DILocation(line: 0, scope: !3385)
!3391 = !DILocation(line: 1075, column: 24, scope: !3385)
!3392 = !DILocation(line: 1075, column: 10, scope: !3385)
!3393 = !DILocation(line: 1075, column: 3, scope: !3385)
!3394 = distinct !DISubprogram(name: "gss_for_code", scope: !440, file: !440, line: 1061, type: !3395, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3397)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!478, !439}
!3397 = !{!3398}
!3398 = !DILocalVariable(name: "code", arg: 1, scope: !3394, file: !440, line: 1061, type: !439)
!3399 = !DILocation(line: 0, scope: !3394)
!3400 = !DILocation(line: 1066, column: 10, scope: !3394)
!3401 = !DILocation(line: 1066, column: 3, scope: !3394)
!3402 = distinct !DISubprogram(name: "gimple_phi_result", scope: !440, file: !440, line: 3071, type: !2680, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3403)
!3403 = !{!3404}
!3404 = !DILocalVariable(name: "gs", arg: 1, scope: !3402, file: !440, line: 3071, type: !2672)
!3405 = !DILocation(line: 0, scope: !3402)
!3406 = !DILocation(line: 3074, column: 25, scope: !3402)
!3407 = !DILocation(line: 3074, column: 3, scope: !3402)
!3408 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !2704, file: !2704, line: 729, type: !3409, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !2748}
!3411 = !{!3412}
!3412 = !DILocalVariable(name: "ptr", arg: 1, scope: !3408, file: !2704, line: 729, type: !2748)
!3413 = !DILocation(line: 0, scope: !3408)
!3414 = !DILocation(line: 731, column: 8, scope: !3408)
!3415 = !DILocation(line: 731, column: 13, scope: !3408)
!3416 = !DILocation(line: 732, column: 8, scope: !3408)
!3417 = !DILocation(line: 732, column: 13, scope: !3408)
!3418 = !DILocation(line: 733, column: 8, scope: !3408)
!3419 = !DILocation(line: 733, column: 18, scope: !3408)
!3420 = !DILocation(line: 734, column: 8, scope: !3408)
!3421 = !DILocation(line: 734, column: 14, scope: !3408)
!3422 = !DILocation(line: 735, column: 8, scope: !3408)
!3423 = !DILocation(line: 735, column: 16, scope: !3408)
!3424 = !DILocation(line: 736, column: 8, scope: !3408)
!3425 = !DILocation(line: 736, column: 17, scope: !3408)
!3426 = !DILocation(line: 737, column: 8, scope: !3408)
!3427 = !DILocation(line: 737, column: 13, scope: !3408)
!3428 = !DILocation(line: 738, column: 1, scope: !3408)
!3429 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !440, file: !440, line: 3061, type: !3430, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!7, !2672}
!3432 = !{!3433}
!3433 = !DILocalVariable(name: "gs", arg: 1, scope: !3429, file: !440, line: 3061, type: !2672)
!3434 = !DILocation(line: 0, scope: !3429)
!3435 = !DILocation(line: 3064, column: 25, scope: !3429)
!3436 = !DILocation(line: 3064, column: 3, scope: !3429)
!3437 = distinct !DISubprogram(name: "reachable_at_most_once", scope: !3, file: !3, line: 47, type: !3438, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!512, !778, !778}
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3452, !3463, !3464}
!3441 = !DILocalVariable(name: "va_arg_bb", arg: 1, scope: !3437, file: !3, line: 47, type: !778)
!3442 = !DILocalVariable(name: "va_start_bb", arg: 2, scope: !3437, file: !3, line: 47, type: !778)
!3443 = !DILocalVariable(name: "stack", scope: !3437, file: !3, line: 49, type: !1698)
!3444 = !DILocalVariable(name: "e", scope: !3437, file: !3, line: 50, type: !795)
!3445 = !DILocalVariable(name: "ei", scope: !3437, file: !3, line: 51, type: !3446)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !190, line: 682, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 679, size: 128, elements: !3448)
!3448 = !{!3449, !3450}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3447, file: !190, line: 680, baseType: !7, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3447, file: !190, line: 681, baseType: !3451, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!3452 = !DILocalVariable(name: "visited", scope: !3437, file: !3, line: 52, type: !3453)
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !3454, line: 45, baseType: !3455)
!3454 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !3454, line: 39, size: 192, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3461}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !3456, file: !3454, line: 41, baseType: !511, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !3456, file: !3454, line: 42, baseType: !7, size: 32, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3456, file: !3454, line: 43, baseType: !7, size: 32, offset: 96)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !3456, file: !3454, line: 44, baseType: !3462, size: 64, offset: 128)
!3462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 64, elements: !603)
!3463 = !DILocalVariable(name: "ret", scope: !3437, file: !3, line: 53, type: !512)
!3464 = !DILocalVariable(name: "src", scope: !3465, file: !3, line: 70, type: !778)
!3465 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 69, column: 5)
!3466 = !DILocation(line: 0, scope: !3437)
!3467 = !DILocation(line: 49, column: 3, scope: !3437)
!3468 = !DILocation(line: 49, column: 21, scope: !3437)
!3469 = !DILocation(line: 50, column: 3, scope: !3437)
!3470 = !DILocation(line: 51, column: 3, scope: !3437)
!3471 = !DILocation(line: 55, column: 17, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 55, column: 7)
!3473 = !DILocation(line: 55, column: 7, scope: !3437)
!3474 = !DILocation(line: 58, column: 9, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 58, column: 7)
!3476 = !DILocation(line: 58, column: 7, scope: !3437)
!3477 = !DILocation(line: 61, column: 28, scope: !3437)
!3478 = !DILocation(line: 61, column: 13, scope: !3437)
!3479 = !DILocation(line: 62, column: 3, scope: !3437)
!3480 = !DILocation(line: 65, column: 3, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 65, column: 3)
!3482 = !DILocation(line: 0, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 65, column: 3)
!3484 = !DILocation(line: 65, column: 3, scope: !3483)
!3485 = !DILocation(line: 0, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 96, column: 4)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 94, column: 2)
!3488 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 93, column: 11)
!3489 = !DILocation(line: 68, column: 3, scope: !3437)
!3490 = !DILocation(line: 66, column: 5, scope: !3483)
!3491 = distinct !{!3491, !3480, !3492}
!3492 = !DILocation(line: 66, column: 5, scope: !3481)
!3493 = !DILocation(line: 68, column: 12, scope: !3437)
!3494 = !DILocation(line: 72, column: 11, scope: !3465)
!3495 = !DILocation(line: 72, column: 9, scope: !3465)
!3496 = !DILocation(line: 73, column: 16, scope: !3465)
!3497 = !DILocation(line: 0, scope: !3465)
!3498 = !DILocation(line: 75, column: 14, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 75, column: 11)
!3500 = !DILocation(line: 75, column: 20, scope: !3499)
!3501 = !DILocation(line: 75, column: 11, scope: !3465)
!3502 = !DILocation(line: 81, column: 15, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 81, column: 11)
!3504 = !DILocation(line: 81, column: 11, scope: !3465)
!3505 = distinct !{!3505, !3489, !3506}
!3506 = !DILocation(line: 99, column: 5, scope: !3437)
!3507 = !DILocation(line: 85, column: 15, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 85, column: 11)
!3509 = !DILocation(line: 85, column: 11, scope: !3465)
!3510 = !DILocation(line: 91, column: 7, scope: !3465)
!3511 = !DILocation(line: 93, column: 13, scope: !3488)
!3512 = !DILocation(line: 93, column: 11, scope: !3465)
!3513 = !DILocation(line: 95, column: 4, scope: !3487)
!3514 = !DILocation(line: 96, column: 4, scope: !3486)
!3515 = !DILocation(line: 96, column: 4, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 96, column: 4)
!3517 = !DILocation(line: 97, column: 6, scope: !3516)
!3518 = distinct !{!3518, !3514, !3519}
!3519 = !DILocation(line: 97, column: 6, scope: !3486)
!3520 = !DILocation(line: 101, column: 3, scope: !3437)
!3521 = !DILocation(line: 102, column: 3, scope: !3437)
!3522 = !DILocation(line: 103, column: 3, scope: !3437)
!3523 = !DILocation(line: 104, column: 1, scope: !3437)
!3524 = distinct !DISubprogram(name: "va_list_counter_bump", scope: !3, file: !3, line: 112, type: !3525, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!574, !2798, !520, !520, !512}
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3542, !3544}
!3528 = !DILocalVariable(name: "si", arg: 1, scope: !3524, file: !3, line: 112, type: !2798)
!3529 = !DILocalVariable(name: "counter", arg: 2, scope: !3524, file: !3, line: 112, type: !520)
!3530 = !DILocalVariable(name: "rhs", arg: 3, scope: !3524, file: !3, line: 112, type: !520)
!3531 = !DILocalVariable(name: "gpr_p", arg: 4, scope: !3524, file: !3, line: 113, type: !512)
!3532 = !DILocalVariable(name: "lhs", scope: !3524, file: !3, line: 115, type: !520)
!3533 = !DILocalVariable(name: "orig_lhs", scope: !3524, file: !3, line: 115, type: !520)
!3534 = !DILocalVariable(name: "stmt", scope: !3524, file: !3, line: 116, type: !815)
!3535 = !DILocalVariable(name: "ret", scope: !3524, file: !3, line: 117, type: !574)
!3536 = !DILocalVariable(name: "val", scope: !3524, file: !3, line: 117, type: !574)
!3537 = !DILocalVariable(name: "counter_val", scope: !3524, file: !3, line: 117, type: !574)
!3538 = !DILocalVariable(name: "max_size", scope: !3524, file: !3, line: 118, type: !7)
!3539 = !DILocalVariable(name: "i", scope: !3540, file: !3, line: 122, type: !7)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 121, column: 5)
!3541 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 120, column: 7)
!3542 = !DILocalVariable(name: "rhs_code", scope: !3543, file: !3, line: 134, type: !238)
!3543 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 133, column: 5)
!3544 = !DILocalVariable(name: "rhs_code", scope: !3545, file: !3, line: 196, type: !238)
!3545 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 195, column: 5)
!3546 = !DILocation(line: 0, scope: !3524)
!3547 = !DILocation(line: 120, column: 11, scope: !3541)
!3548 = !DILocation(line: 120, column: 19, scope: !3541)
!3549 = !DILocation(line: 120, column: 7, scope: !3524)
!3550 = !DILocation(line: 124, column: 21, scope: !3540)
!3551 = !DILocation(line: 124, column: 19, scope: !3540)
!3552 = !DILocation(line: 0, scope: !3540)
!3553 = !DILocation(line: 125, column: 12, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 125, column: 7)
!3555 = !DILocation(line: 0, scope: !3554)
!3556 = !DILocation(line: 125, column: 23, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 125, column: 7)
!3558 = !DILocation(line: 125, column: 21, scope: !3557)
!3559 = !DILocation(line: 125, column: 7, scope: !3554)
!3560 = !DILocation(line: 126, column: 6, scope: !3557)
!3561 = !DILocation(line: 126, column: 2, scope: !3557)
!3562 = !DILocation(line: 126, column: 17, scope: !3557)
!3563 = !DILocation(line: 125, column: 38, scope: !3557)
!3564 = !DILocation(line: 125, column: 7, scope: !3557)
!3565 = distinct !{!3565, !3559, !3566}
!3566 = !DILocation(line: 126, column: 20, scope: !3554)
!3567 = !DILocation(line: 129, column: 17, scope: !3524)
!3568 = !DILocation(line: 0, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 138, column: 8)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 137, column: 2)
!3571 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 136, column: 11)
!3572 = !DILocation(line: 0, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 176, column: 11)
!3574 = !DILocation(line: 0, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 181, column: 8)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 180, column: 2)
!3577 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 179, column: 11)
!3578 = !DILocation(line: 132, column: 3, scope: !3524)
!3579 = !DILocation(line: 131, column: 18, scope: !3524)
!3580 = !DILocation(line: 136, column: 15, scope: !3571)
!3581 = !DILocation(line: 136, column: 23, scope: !3571)
!3582 = !DILocation(line: 136, column: 11, scope: !3571)
!3583 = !DILocation(line: 136, column: 47, scope: !3571)
!3584 = !DILocation(line: 136, column: 11, scope: !3543)
!3585 = !DILocation(line: 138, column: 8, scope: !3570)
!3586 = !DILocation(line: 141, column: 8, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 139, column: 6)
!3588 = !DILocation(line: 144, column: 25, scope: !3570)
!3589 = !DILocation(line: 144, column: 8, scope: !3570)
!3590 = !DILocation(line: 145, column: 4, scope: !3570)
!3591 = !DILocation(line: 148, column: 14, scope: !3543)
!3592 = !DILocation(line: 150, column: 12, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 150, column: 11)
!3594 = !DILocation(line: 150, column: 36, scope: !3593)
!3595 = !DILocation(line: 150, column: 39, scope: !3593)
!3596 = !DILocation(line: 150, column: 64, scope: !3593)
!3597 = !DILocation(line: 150, column: 11, scope: !3543)
!3598 = !DILocation(line: 153, column: 18, scope: !3543)
!3599 = !DILocation(line: 0, scope: !3543)
!3600 = !DILocation(line: 154, column: 12, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 154, column: 11)
!3602 = !DILocation(line: 154, column: 44, scope: !3601)
!3603 = !DILocation(line: 155, column: 5, scope: !3601)
!3604 = !DILocation(line: 155, column: 8, scope: !3601)
!3605 = !DILocation(line: 156, column: 4, scope: !3601)
!3606 = !DILocation(line: 156, column: 7, scope: !3601)
!3607 = !DILocation(line: 156, column: 45, scope: !3601)
!3608 = !DILocation(line: 154, column: 11, scope: !3543)
!3609 = !DILocation(line: 158, column: 10, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 157, column: 2)
!3611 = !DILocation(line: 159, column: 4, scope: !3610)
!3612 = distinct !{!3612, !3578, !3613}
!3613 = !DILocation(line: 190, column: 5, scope: !3524)
!3614 = !DILocation(line: 163, column: 5, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 162, column: 11)
!3616 = !DILocation(line: 164, column: 7, scope: !3615)
!3617 = !DILocation(line: 164, column: 45, scope: !3615)
!3618 = !DILocation(line: 165, column: 4, scope: !3615)
!3619 = !DILocation(line: 165, column: 22, scope: !3615)
!3620 = !DILocation(line: 165, column: 7, scope: !3615)
!3621 = !DILocation(line: 162, column: 11, scope: !3543)
!3622 = !DILocation(line: 167, column: 25, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 166, column: 2)
!3624 = !DILocation(line: 167, column: 11, scope: !3623)
!3625 = !DILocation(line: 167, column: 8, scope: !3623)
!3626 = !DILocation(line: 168, column: 10, scope: !3623)
!3627 = !DILocation(line: 169, column: 4, scope: !3623)
!3628 = !DILocation(line: 172, column: 11, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 172, column: 11)
!3630 = !DILocation(line: 172, column: 43, scope: !3629)
!3631 = !DILocation(line: 172, column: 11, scope: !3543)
!3632 = !DILocation(line: 175, column: 13, scope: !3543)
!3633 = !DILocation(line: 176, column: 11, scope: !3573)
!3634 = !DILocation(line: 176, column: 34, scope: !3573)
!3635 = !DILocation(line: 176, column: 31, scope: !3573)
!3636 = !DILocation(line: 176, column: 11, scope: !3543)
!3637 = !DILocation(line: 179, column: 31, scope: !3577)
!3638 = !DILocation(line: 179, column: 11, scope: !3543)
!3639 = !DILocation(line: 181, column: 8, scope: !3575)
!3640 = !DILocation(line: 181, column: 38, scope: !3575)
!3641 = !DILocation(line: 181, column: 35, scope: !3575)
!3642 = !DILocation(line: 182, column: 8, scope: !3575)
!3643 = !DILocation(line: 182, column: 11, scope: !3575)
!3644 = !DILocation(line: 182, column: 45, scope: !3575)
!3645 = !DILocation(line: 183, column: 8, scope: !3575)
!3646 = !DILocation(line: 183, column: 11, scope: !3575)
!3647 = !DILocation(line: 183, column: 37, scope: !3575)
!3648 = !DILocation(line: 181, column: 8, scope: !3576)
!3649 = !DILocation(line: 186, column: 24, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 186, column: 16)
!3651 = !DILocation(line: 186, column: 16, scope: !3577)
!3652 = !DILocation(line: 193, column: 13, scope: !3524)
!3653 = !DILocation(line: 194, column: 3, scope: !3524)
!3654 = !DILocation(line: 192, column: 7, scope: !3524)
!3655 = !DILocation(line: 193, column: 7, scope: !3524)
!3656 = !DILocation(line: 198, column: 15, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 198, column: 11)
!3658 = !DILocation(line: 198, column: 23, scope: !3657)
!3659 = !DILocation(line: 198, column: 11, scope: !3657)
!3660 = !DILocation(line: 198, column: 47, scope: !3657)
!3661 = !DILocation(line: 198, column: 11, scope: !3545)
!3662 = !DILocation(line: 201, column: 15, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 201, column: 11)
!3664 = !DILocation(line: 201, column: 11, scope: !3545)
!3665 = !DILocation(line: 202, column: 2, scope: !3663)
!3666 = !DILocation(line: 204, column: 40, scope: !3663)
!3667 = !DILocation(line: 0, scope: !3663)
!3668 = !DILocation(line: 206, column: 14, scope: !3545)
!3669 = !DILocation(line: 208, column: 18, scope: !3545)
!3670 = !DILocation(line: 0, scope: !3545)
!3671 = !DILocation(line: 209, column: 12, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 209, column: 11)
!3673 = !DILocation(line: 209, column: 44, scope: !3672)
!3674 = !DILocation(line: 210, column: 5, scope: !3672)
!3675 = !DILocation(line: 210, column: 8, scope: !3672)
!3676 = !DILocation(line: 211, column: 4, scope: !3672)
!3677 = !DILocation(line: 211, column: 7, scope: !3672)
!3678 = !DILocation(line: 211, column: 45, scope: !3672)
!3679 = !DILocation(line: 209, column: 11, scope: !3545)
!3680 = !DILocation(line: 213, column: 10, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 212, column: 2)
!3682 = !DILocation(line: 214, column: 4, scope: !3681)
!3683 = distinct !{!3683, !3653, !3684}
!3684 = !DILocation(line: 228, column: 5, scope: !3524)
!3685 = !DILocation(line: 218, column: 5, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 217, column: 11)
!3687 = !DILocation(line: 219, column: 7, scope: !3686)
!3688 = !DILocation(line: 219, column: 45, scope: !3686)
!3689 = !DILocation(line: 220, column: 4, scope: !3686)
!3690 = !DILocation(line: 220, column: 22, scope: !3686)
!3691 = !DILocation(line: 220, column: 7, scope: !3686)
!3692 = !DILocation(line: 217, column: 11, scope: !3545)
!3693 = !DILocation(line: 222, column: 25, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 221, column: 2)
!3695 = !DILocation(line: 222, column: 11, scope: !3694)
!3696 = !DILocation(line: 222, column: 8, scope: !3694)
!3697 = !DILocation(line: 223, column: 10, scope: !3694)
!3698 = !DILocation(line: 224, column: 4, scope: !3694)
!3699 = !DILocation(line: 231, column: 1, scope: !3524)
!3700 = distinct !DISubprogram(name: "ei_start_1", scope: !190, file: !190, line: 696, type: !3701, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!3446, !3451}
!3703 = !{!3704, !3705}
!3704 = !DILocalVariable(name: "ev", arg: 1, scope: !3700, file: !190, line: 696, type: !3451)
!3705 = !DILocalVariable(name: "i", scope: !3700, file: !190, line: 698, type: !3446)
!3706 = !DILocation(line: 0, scope: !3700)
!3707 = !DILocation(line: 700, column: 5, scope: !3700)
!3708 = !DILocation(line: 700, column: 11, scope: !3700)
!3709 = !DILocation(line: 701, column: 5, scope: !3700)
!3710 = !DILocation(line: 701, column: 15, scope: !3700)
!3711 = !DILocation(line: 703, column: 3, scope: !3700)
!3712 = distinct !DISubprogram(name: "ei_cond", scope: !190, file: !190, line: 771, type: !3713, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3716)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!512, !3446, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!3716 = !{!3717, !3718}
!3717 = !DILocalVariable(name: "ei", arg: 1, scope: !3712, file: !190, line: 771, type: !3446)
!3718 = !DILocalVariable(name: "p", arg: 2, scope: !3712, file: !190, line: 771, type: !3715)
!3719 = !DILocation(line: 0, scope: !3712)
!3720 = !DILocation(line: 773, column: 8, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3712, file: !190, line: 773, column: 7)
!3722 = !DILocation(line: 773, column: 7, scope: !3712)
!3723 = !DILocation(line: 775, column: 12, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3721, file: !190, line: 774, column: 5)
!3725 = !DILocation(line: 776, column: 7, scope: !3724)
!3726 = !DILocation(line: 781, column: 7, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3721, file: !190, line: 779, column: 5)
!3728 = !DILocation(line: 0, scope: !3721)
!3729 = !DILocation(line: 783, column: 1, scope: !3712)
!3730 = distinct !DISubprogram(name: "VEC_edge_heap_safe_push", scope: !190, file: !190, line: 152, type: !3731, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3734)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3715, !3733, !795}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!3734 = !{!3735, !3736}
!3735 = !DILocalVariable(name: "vec_", arg: 1, scope: !3730, file: !190, line: 152, type: !3733)
!3736 = !DILocalVariable(name: "obj_", arg: 2, scope: !3730, file: !190, line: 152, type: !795)
!3737 = !DILocation(line: 0, scope: !3730)
!3738 = !DILocation(line: 152, column: 1, scope: !3730)
!3739 = distinct !DISubprogram(name: "ei_next", scope: !190, file: !190, line: 736, type: !3740, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3743)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3743 = !{!3744}
!3744 = !DILocalVariable(name: "i", arg: 1, scope: !3739, file: !190, line: 736, type: !3742)
!3745 = !DILocation(line: 0, scope: !3739)
!3746 = !DILocation(line: 738, column: 3, scope: !3739)
!3747 = !DILocation(line: 739, column: 11, scope: !3739)
!3748 = !DILocation(line: 740, column: 1, scope: !3739)
!3749 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !190, file: !190, line: 150, type: !3750, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3754)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!7, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!3754 = !{!3755}
!3755 = !DILocalVariable(name: "vec_", arg: 1, scope: !3749, file: !190, line: 150, type: !3752)
!3756 = !DILocation(line: 0, scope: !3749)
!3757 = !DILocation(line: 150, column: 1, scope: !3749)
!3758 = distinct !DISubprogram(name: "VEC_edge_base_pop", scope: !190, file: !190, line: 150, type: !3759, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3762)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!795, !3761}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!3762 = !{!3763, !3764}
!3763 = !DILocalVariable(name: "vec_", arg: 1, scope: !3758, file: !190, line: 150, type: !3761)
!3764 = !DILocalVariable(name: "obj_", scope: !3758, file: !190, line: 150, type: !795)
!3765 = !DILocation(line: 0, scope: !3758)
!3766 = !DILocation(line: 150, column: 1, scope: !3758)
!3767 = distinct !DISubprogram(name: "SET_BIT", scope: !3454, file: !3454, line: 63, type: !3768, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{null, !3453, !7}
!3770 = !{!3771, !3772, !3773}
!3771 = !DILocalVariable(name: "map", arg: 1, scope: !3767, file: !3454, line: 63, type: !3453)
!3772 = !DILocalVariable(name: "bitno", arg: 2, scope: !3767, file: !3454, line: 63, type: !7)
!3773 = !DILocalVariable(name: "oldbit", scope: !3774, file: !3454, line: 67, type: !512)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !3454, line: 66, column: 5)
!3775 = distinct !DILexicalBlock(scope: !3767, file: !3454, line: 65, column: 7)
!3776 = !DILocation(line: 0, scope: !3767)
!3777 = !DILocation(line: 65, column: 12, scope: !3775)
!3778 = !DILocation(line: 65, column: 7, scope: !3775)
!3779 = !DILocation(line: 65, column: 7, scope: !3767)
!3780 = !DILocation(line: 73, column: 40, scope: !3767)
!3781 = !DILocation(line: 73, column: 29, scope: !3767)
!3782 = !DILocation(line: 72, column: 19, scope: !3767)
!3783 = !DILocation(line: 72, column: 3, scope: !3767)
!3784 = !DILocation(line: 68, column: 16, scope: !3774)
!3785 = !DILocation(line: 69, column: 12, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3774, file: !3454, line: 69, column: 11)
!3787 = !DILocation(line: 69, column: 11, scope: !3774)
!3788 = !DILocation(line: 70, column: 2, scope: !3786)
!3789 = !DILocation(line: 70, column: 41, scope: !3786)
!3790 = !DILocation(line: 73, column: 5, scope: !3767)
!3791 = !DILocation(line: 74, column: 1, scope: !3767)
!3792 = distinct !DISubprogram(name: "VEC_edge_heap_free", scope: !190, file: !190, line: 152, type: !3793, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3795)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{null, !3733}
!3795 = !{!3796}
!3796 = !DILocalVariable(name: "vec_", arg: 1, scope: !3792, file: !190, line: 152, type: !3733)
!3797 = !DILocation(line: 0, scope: !3792)
!3798 = !DILocation(line: 152, column: 1, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3792, file: !190, line: 152, column: 1)
!3800 = !DILocation(line: 152, column: 1, scope: !3792)
!3801 = distinct !DISubprogram(name: "ei_end_p", scope: !190, file: !190, line: 721, type: !3802, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!512, !3446}
!3804 = !{!3805}
!3805 = !DILocalVariable(name: "i", arg: 1, scope: !3801, file: !190, line: 721, type: !3446)
!3806 = !DILocation(line: 723, column: 22, scope: !3801)
!3807 = !DILocation(line: 723, column: 19, scope: !3801)
!3808 = !DILocation(line: 723, column: 10, scope: !3801)
!3809 = !DILocation(line: 723, column: 3, scope: !3801)
!3810 = distinct !DISubprogram(name: "ei_edge", scope: !190, file: !190, line: 752, type: !3811, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!795, !3446}
!3813 = !{!3814}
!3814 = !DILocalVariable(name: "i", arg: 1, scope: !3810, file: !190, line: 752, type: !3446)
!3815 = !DILocation(line: 754, column: 10, scope: !3810)
!3816 = !DILocation(line: 754, column: 3, scope: !3810)
!3817 = distinct !DISubprogram(name: "ei_container", scope: !190, file: !190, line: 685, type: !3818, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!783, !3446}
!3820 = !{!3821}
!3821 = !DILocalVariable(name: "i", arg: 1, scope: !3817, file: !190, line: 685, type: !3446)
!3822 = !DILocation(line: 687, column: 3, scope: !3817)
!3823 = !DILocation(line: 688, column: 10, scope: !3817)
!3824 = !DILocation(line: 688, column: 3, scope: !3817)
!3825 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !190, file: !190, line: 150, type: !3826, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3828)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!795, !3752, !7}
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "vec_", arg: 1, scope: !3825, file: !190, line: 150, type: !3752)
!3830 = !DILocalVariable(name: "ix_", arg: 2, scope: !3825, file: !190, line: 150, type: !7)
!3831 = !DILocation(line: 0, scope: !3825)
!3832 = !DILocation(line: 150, column: 1, scope: !3825)
!3833 = distinct !DISubprogram(name: "VEC_edge_heap_reserve", scope: !190, file: !190, line: 152, type: !3834, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!513, !3733, !513}
!3836 = !{!3837, !3838, !3839}
!3837 = !DILocalVariable(name: "vec_", arg: 1, scope: !3833, file: !190, line: 152, type: !3733)
!3838 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3833, file: !190, line: 152, type: !513)
!3839 = !DILocalVariable(name: "extend", scope: !3833, file: !190, line: 152, type: !513)
!3840 = !DILocation(line: 0, scope: !3833)
!3841 = !DILocation(line: 152, column: 1, scope: !3833)
!3842 = !DILocation(line: 152, column: 1, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3833, file: !190, line: 152, column: 1)
!3844 = distinct !DISubprogram(name: "VEC_edge_base_quick_push", scope: !190, file: !190, line: 150, type: !3845, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3847)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!3715, !3761, !795}
!3847 = !{!3848, !3849, !3850}
!3848 = !DILocalVariable(name: "vec_", arg: 1, scope: !3844, file: !190, line: 150, type: !3761)
!3849 = !DILocalVariable(name: "obj_", arg: 2, scope: !3844, file: !190, line: 150, type: !795)
!3850 = !DILocalVariable(name: "slot_", scope: !3844, file: !190, line: 150, type: !3715)
!3851 = !DILocation(line: 0, scope: !3844)
!3852 = !DILocation(line: 150, column: 1, scope: !3844)
!3853 = distinct !DISubprogram(name: "VEC_edge_base_space", scope: !190, file: !190, line: 150, type: !3854, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!513, !3761, !513}
!3856 = !{!3857, !3858}
!3857 = !DILocalVariable(name: "vec_", arg: 1, scope: !3853, file: !190, line: 150, type: !3761)
!3858 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3853, file: !190, line: 150, type: !513)
!3859 = !DILocation(line: 0, scope: !3853)
!3860 = !DILocation(line: 150, column: 1, scope: !3853)
!3861 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !206, file: !206, line: 182, type: !3862, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3866)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!7, !3864}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!3866 = !{!3867}
!3867 = !DILocalVariable(name: "vec_", arg: 1, scope: !3861, file: !206, line: 182, type: !3864)
!3868 = !DILocation(line: 0, scope: !3861)
!3869 = !DILocation(line: 182, column: 1, scope: !3861)
!3870 = distinct !DISubprogram(name: "gimple_assign_cast_p", scope: !440, file: !440, line: 1853, type: !3871, scopeLine: 1854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!512, !815}
!3873 = !{!3874, !3875}
!3874 = !DILocalVariable(name: "s", arg: 1, scope: !3870, file: !440, line: 1853, type: !815)
!3875 = !DILocalVariable(name: "sc", scope: !3876, file: !440, line: 1857, type: !238)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !440, line: 1856, column: 5)
!3877 = distinct !DILexicalBlock(scope: !3870, file: !440, line: 1855, column: 7)
!3878 = !DILocation(line: 0, scope: !3870)
!3879 = !DILocation(line: 1855, column: 7, scope: !3877)
!3880 = !DILocation(line: 1855, column: 7, scope: !3870)
!3881 = !DILocation(line: 1857, column: 27, scope: !3876)
!3882 = !DILocation(line: 0, scope: !3876)
!3883 = !DILocation(line: 1858, column: 14, scope: !3876)
!3884 = !DILocation(line: 1860, column: 7, scope: !3876)
!3885 = !DILocation(line: 1864, column: 1, scope: !3870)
!3886 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2704, file: !2704, line: 442, type: !3887, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!1695, !815, !513}
!3889 = !{!3890, !3891}
!3890 = !DILocalVariable(name: "gs", arg: 1, scope: !3886, file: !2704, line: 442, type: !815)
!3891 = !DILocalVariable(name: "i", arg: 2, scope: !3886, file: !2704, line: 442, type: !513)
!3892 = !DILocation(line: 0, scope: !3886)
!3893 = !DILocation(line: 444, column: 11, scope: !3886)
!3894 = !DILocation(line: 444, column: 35, scope: !3886)
!3895 = !DILocation(line: 444, column: 3, scope: !3886)
!3896 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !440, file: !440, line: 3100, type: !3897, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3900)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!3899, !815, !7}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!3900 = !{!3901, !3902}
!3901 = !DILocalVariable(name: "gs", arg: 1, scope: !3896, file: !440, line: 3100, type: !815)
!3902 = !DILocalVariable(name: "index", arg: 2, scope: !3896, file: !440, line: 3100, type: !7)
!3903 = !DILocation(line: 0, scope: !3896)
!3904 = !DILocation(line: 3103, column: 3, scope: !3896)
!3905 = !DILocation(line: 3104, column: 12, scope: !3896)
!3906 = !DILocation(line: 3104, column: 3, scope: !3896)
!3907 = distinct !DISubprogram(name: "gimple_expr_code", scope: !440, file: !440, line: 1438, type: !3044, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3908)
!3908 = !{!3909, !3910}
!3909 = !DILocalVariable(name: "stmt", arg: 1, scope: !3907, file: !440, line: 1438, type: !2672)
!3910 = !DILocalVariable(name: "code", scope: !3907, file: !440, line: 1440, type: !439)
!3911 = !DILocation(line: 0, scope: !3907)
!3912 = !DILocation(line: 1440, column: 27, scope: !3907)
!3913 = !DILocation(line: 1441, column: 29, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3907, file: !440, line: 1441, column: 7)
!3915 = !DILocation(line: 1442, column: 42, scope: !3914)
!3916 = !DILocation(line: 1442, column: 5, scope: !3914)
!3917 = !DILocation(line: 1446, column: 5, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3914, file: !440, line: 1443, column: 12)
!3919 = !DILocation(line: 1448, column: 5, scope: !3907)
!3920 = !DILocation(line: 1450, column: 1, scope: !3907)
!3921 = distinct !DISubprogram(name: "gimple_num_ops", scope: !440, file: !440, line: 1596, type: !3430, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3922)
!3922 = !{!3923}
!3923 = !DILocalVariable(name: "gs", arg: 1, scope: !3921, file: !440, line: 1596, type: !2672)
!3924 = !DILocation(line: 0, scope: !3921)
!3925 = !DILocation(line: 1598, column: 21, scope: !3921)
!3926 = !DILocation(line: 1598, column: 3, scope: !3921)
!3927 = distinct !DISubprogram(name: "va_list_counter_op", scope: !3, file: !3, line: 261, type: !3928, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3930)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{null, !2798, !520, !520, !512, !512}
!3930 = !{!3931, !3932, !3933, !3934, !3935, !3936}
!3931 = !DILocalVariable(name: "si", arg: 1, scope: !3927, file: !3, line: 261, type: !2798)
!3932 = !DILocalVariable(name: "ap", arg: 2, scope: !3927, file: !3, line: 261, type: !520)
!3933 = !DILocalVariable(name: "var", arg: 3, scope: !3927, file: !3, line: 261, type: !520)
!3934 = !DILocalVariable(name: "gpr_p", arg: 4, scope: !3927, file: !3, line: 261, type: !512)
!3935 = !DILocalVariable(name: "write_p", arg: 5, scope: !3927, file: !3, line: 262, type: !512)
!3936 = !DILocalVariable(name: "increment", scope: !3927, file: !3, line: 264, type: !574)
!3937 = !DILocation(line: 0, scope: !3927)
!3938 = !DILocation(line: 266, column: 11, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 266, column: 7)
!3940 = !DILocation(line: 266, column: 25, scope: !3939)
!3941 = !DILocation(line: 266, column: 7, scope: !3927)
!3942 = !DILocation(line: 268, column: 25, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 267, column: 5)
!3944 = !DILocation(line: 269, column: 15, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 269, column: 11)
!3946 = !DILocation(line: 269, column: 30, scope: !3945)
!3947 = !DILocation(line: 270, column: 4, scope: !3945)
!3948 = !DILocation(line: 270, column: 35, scope: !3945)
!3949 = !DILocation(line: 270, column: 43, scope: !3945)
!3950 = !DILocation(line: 270, column: 7, scope: !3945)
!3951 = !DILocation(line: 269, column: 11, scope: !3943)
!3952 = !DILocation(line: 271, column: 20, scope: !3945)
!3953 = !DILocation(line: 271, column: 2, scope: !3945)
!3954 = !DILocation(line: 273, column: 11, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 273, column: 11)
!3956 = !DILocation(line: 273, column: 21, scope: !3955)
!3957 = !DILocation(line: 273, column: 25, scope: !3955)
!3958 = !DILocation(line: 273, column: 36, scope: !3955)
!3959 = !DILocation(line: 273, column: 11, scope: !3943)
!3960 = !DILocation(line: 276, column: 21, scope: !3955)
!3961 = !DILocation(line: 276, column: 25, scope: !3955)
!3962 = !DILocation(line: 276, column: 36, scope: !3955)
!3963 = !DILocation(line: 276, column: 32, scope: !3955)
!3964 = !DILocation(line: 277, column: 8, scope: !3955)
!3965 = !DILocation(line: 277, column: 21, scope: !3955)
!3966 = !DILocation(line: 274, column: 2, scope: !3955)
!3967 = !DILocation(line: 280, column: 7, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 280, column: 7)
!3969 = !DILocation(line: 281, column: 7, scope: !3968)
!3970 = !DILocation(line: 281, column: 14, scope: !3968)
!3971 = !DILocation(line: 281, column: 10, scope: !3968)
!3972 = !DILocation(line: 282, column: 7, scope: !3968)
!3973 = !DILocation(line: 282, column: 23, scope: !3968)
!3974 = !DILocation(line: 282, column: 66, scope: !3968)
!3975 = !DILocation(line: 282, column: 70, scope: !3968)
!3976 = !DILocation(line: 280, column: 7, scope: !3927)
!3977 = !DILocation(line: 284, column: 11, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 284, column: 11)
!3979 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 283, column: 5)
!3980 = !DILocation(line: 284, column: 17, scope: !3978)
!3981 = !DILocation(line: 284, column: 20, scope: !3978)
!3982 = !DILocation(line: 284, column: 26, scope: !3978)
!3983 = !DILocation(line: 284, column: 43, scope: !3978)
!3984 = !DILocation(line: 284, column: 55, scope: !3978)
!3985 = !DILocation(line: 284, column: 11, scope: !3979)
!3986 = !DILocation(line: 286, column: 27, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 285, column: 2)
!3988 = !DILocation(line: 287, column: 4, scope: !3987)
!3989 = !DILocation(line: 290, column: 18, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 290, column: 11)
!3991 = !DILocation(line: 290, column: 21, scope: !3990)
!3992 = !DILocation(line: 290, column: 27, scope: !3990)
!3993 = !DILocation(line: 290, column: 44, scope: !3990)
!3994 = !DILocation(line: 290, column: 56, scope: !3990)
!3995 = !DILocation(line: 290, column: 11, scope: !3979)
!3996 = !DILocation(line: 292, column: 27, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 291, column: 2)
!3998 = !DILocation(line: 293, column: 4, scope: !3997)
!3999 = !DILocation(line: 297, column: 15, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 297, column: 7)
!4001 = !DILocation(line: 297, column: 23, scope: !4000)
!4002 = !DILocation(line: 297, column: 19, scope: !4000)
!4003 = !DILocation(line: 297, column: 7, scope: !3927)
!4004 = !DILocation(line: 299, column: 11, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 299, column: 11)
!4006 = distinct !DILexicalBlock(scope: !4000, file: !3, line: 298, column: 5)
!4007 = !DILocation(line: 0, scope: !4005)
!4008 = !DILocation(line: 299, column: 11, scope: !4006)
!4009 = !DILocation(line: 300, column: 25, scope: !4005)
!4010 = !DILocation(line: 300, column: 2, scope: !4005)
!4011 = !DILocation(line: 302, column: 25, scope: !4005)
!4012 = !DILocation(line: 304, column: 1, scope: !3927)
!4013 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2704, file: !2704, line: 792, type: !4014, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!520, !2748, !815, !513}
!4016 = !{!4017, !4018, !4019}
!4017 = !DILocalVariable(name: "ptr", arg: 1, scope: !4013, file: !2704, line: 792, type: !2748)
!4018 = !DILocalVariable(name: "stmt", arg: 2, scope: !4013, file: !2704, line: 792, type: !815)
!4019 = !DILocalVariable(name: "flags", arg: 3, scope: !4013, file: !2704, line: 792, type: !513)
!4020 = !DILocation(line: 0, scope: !4013)
!4021 = !DILocation(line: 794, column: 3, scope: !4013)
!4022 = !DILocation(line: 795, column: 8, scope: !4013)
!4023 = !DILocation(line: 795, column: 18, scope: !4013)
!4024 = !DILocation(line: 796, column: 10, scope: !4013)
!4025 = !DILocation(line: 796, column: 3, scope: !4013)
!4026 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2704, file: !2704, line: 699, type: !4027, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4029)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!520, !2748}
!4029 = !{!4030, !4031}
!4030 = !DILocalVariable(name: "ptr", arg: 1, scope: !4026, file: !2704, line: 699, type: !2748)
!4031 = !DILocalVariable(name: "val", scope: !4026, file: !2704, line: 701, type: !520)
!4032 = !DILocation(line: 0, scope: !4026)
!4033 = !DILocation(line: 705, column: 12, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4026, file: !2704, line: 705, column: 7)
!4035 = !DILocation(line: 705, column: 7, scope: !4034)
!4036 = !DILocation(line: 705, column: 7, scope: !4026)
!4037 = !DILocation(line: 707, column: 13, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4034, file: !2704, line: 706, column: 5)
!4039 = !DILocation(line: 708, column: 24, scope: !4038)
!4040 = !DILocation(line: 708, column: 30, scope: !4038)
!4041 = !DILocation(line: 708, column: 17, scope: !4038)
!4042 = !DILocation(line: 709, column: 7, scope: !4038)
!4043 = !DILocation(line: 711, column: 12, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4026, file: !2704, line: 711, column: 7)
!4045 = !DILocation(line: 711, column: 7, scope: !4044)
!4046 = !DILocation(line: 711, column: 7, scope: !4026)
!4047 = !DILocation(line: 713, column: 13, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4044, file: !2704, line: 712, column: 5)
!4049 = !DILocation(line: 714, column: 24, scope: !4048)
!4050 = !DILocation(line: 714, column: 30, scope: !4048)
!4051 = !DILocation(line: 714, column: 17, scope: !4048)
!4052 = !DILocation(line: 715, column: 7, scope: !4048)
!4053 = !DILocation(line: 718, column: 8, scope: !4026)
!4054 = !DILocation(line: 718, column: 13, scope: !4026)
!4055 = !DILocation(line: 719, column: 3, scope: !4026)
!4056 = !DILocation(line: 721, column: 1, scope: !4026)
!4057 = distinct !DISubprogram(name: "op_iter_init", scope: !2704, file: !2704, line: 742, type: !4058, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !2748, !815, !513}
!4060 = !{!4061, !4062, !4063}
!4061 = !DILocalVariable(name: "ptr", arg: 1, scope: !4057, file: !2704, line: 742, type: !2748)
!4062 = !DILocalVariable(name: "stmt", arg: 2, scope: !4057, file: !2704, line: 742, type: !815)
!4063 = !DILocalVariable(name: "flags", arg: 3, scope: !4057, file: !2704, line: 742, type: !513)
!4064 = !DILocation(line: 0, scope: !4057)
!4065 = !DILocation(line: 748, column: 8, scope: !4057)
!4066 = !DILocation(line: 748, column: 13, scope: !4057)
!4067 = !DILocation(line: 750, column: 7, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4057, file: !2704, line: 749, column: 7)
!4069 = !DILocation(line: 751, column: 7, scope: !4068)
!4070 = !DILocation(line: 749, column: 7, scope: !4057)
!4071 = !DILocation(line: 752, column: 5, scope: !4068)
!4072 = !DILocation(line: 753, column: 15, scope: !4057)
!4073 = !DILocation(line: 753, column: 52, scope: !4057)
!4074 = !DILocation(line: 753, column: 8, scope: !4057)
!4075 = !DILocation(line: 753, column: 13, scope: !4057)
!4076 = !DILocation(line: 758, column: 8, scope: !4057)
!4077 = !DILocation(line: 758, column: 13, scope: !4057)
!4078 = !DILocation(line: 760, column: 8, scope: !4057)
!4079 = !DILocation(line: 760, column: 14, scope: !4057)
!4080 = !DILocation(line: 761, column: 8, scope: !4057)
!4081 = !DILocation(line: 761, column: 16, scope: !4057)
!4082 = !DILocation(line: 762, column: 8, scope: !4057)
!4083 = !DILocation(line: 762, column: 17, scope: !4057)
!4084 = !DILocation(line: 763, column: 1, scope: !4057)
!4085 = distinct !DISubprogram(name: "gimple_def_ops", scope: !440, file: !440, line: 1292, type: !4086, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4088)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!844, !2672}
!4088 = !{!4089}
!4089 = !DILocalVariable(name: "g", arg: 1, scope: !4085, file: !440, line: 1292, type: !2672)
!4090 = !DILocation(line: 0, scope: !4085)
!4091 = distinct !DISubprogram(name: "gimple_vdef", scope: !440, file: !440, line: 1375, type: !2680, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4092)
!4092 = !{!4093}
!4093 = !DILocalVariable(name: "g", arg: 1, scope: !4091, file: !440, line: 1375, type: !2672)
!4094 = !DILocation(line: 0, scope: !4091)
!4095 = !DILocation(line: 1377, column: 8, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4091, file: !440, line: 1377, column: 7)
!4097 = !DILocation(line: 1377, column: 7, scope: !4091)
!4098 = !DILocation(line: 1379, column: 23, scope: !4091)
!4099 = !DILocation(line: 1379, column: 3, scope: !4091)
!4100 = !DILocation(line: 1380, column: 1, scope: !4091)
!4101 = distinct !DISubprogram(name: "gimple_use_ops", scope: !440, file: !440, line: 1313, type: !4102, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4104)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!851, !2672}
!4104 = !{!4105}
!4105 = !DILocalVariable(name: "g", arg: 1, scope: !4101, file: !440, line: 1313, type: !2672)
!4106 = !DILocation(line: 0, scope: !4101)
!4107 = !DILocation(line: 1315, column: 8, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4101, file: !440, line: 1315, column: 7)
!4109 = !DILocation(line: 1315, column: 7, scope: !4101)
!4110 = !DILocation(line: 1317, column: 26, scope: !4101)
!4111 = !DILocation(line: 1317, column: 3, scope: !4101)
!4112 = !DILocation(line: 1318, column: 1, scope: !4101)
!4113 = distinct !DISubprogram(name: "gimple_vuse", scope: !440, file: !440, line: 1365, type: !2680, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4114)
!4114 = !{!4115}
!4115 = !DILocalVariable(name: "g", arg: 1, scope: !4113, file: !440, line: 1365, type: !2672)
!4116 = !DILocation(line: 0, scope: !4113)
!4117 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !440, file: !440, line: 1283, type: !2670, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4118)
!4118 = !{!4119}
!4119 = !DILocalVariable(name: "g", arg: 1, scope: !4117, file: !440, line: 1283, type: !2672)
!4120 = !DILocation(line: 0, scope: !4117)
!4121 = !DILocation(line: 1285, column: 10, scope: !4117)
!4122 = !DILocation(line: 1285, column: 26, scope: !4117)
!4123 = !DILocation(line: 1285, column: 43, scope: !4117)
!4124 = !DILocation(line: 1285, column: 46, scope: !4117)
!4125 = !DILocation(line: 1285, column: 62, scope: !4117)
!4126 = !DILocation(line: 1285, column: 3, scope: !4117)
