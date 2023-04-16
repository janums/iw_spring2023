; ModuleID = 'langhooks.bc'
source_filename = "langhooks.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
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
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void ()*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, void ()*, void ()*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32, i32, i32*)*, i8 (%struct._dep*, i32, i32)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32)*, void ()*, i8* ()*, void (i8*, i8)*, void (i8*)*, void (i8*)*, void (i8*)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def**)*, i8 (i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, i8 (%struct.rtx_def*)*, void (%struct.spec_info_def*)*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i32 (%struct.ddg*)* }
%struct._dep = type opaque
%struct.spec_info_def = type opaque
%struct.ddg = type opaque
%struct.vectorize = type { %union.tree_node* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (i32, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (i8)*, i8 (%union.tree_node*, i8)*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (i32, %union.tree_node*, i32, i8)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
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
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
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
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_excess_precision_cmdline = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"langhooks.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"At top level:\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"In member function %qs\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"In function %qs\00", align 1
@flag_show_column = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"    inlined from %qs at %s:%d:%d\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"    inlined from %qs at %s:%d\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"    inlined from %qs\00", align 1
@saved_section = internal unnamed_addr global %union.section* null, align 8, !dbg !0
@in_section = external dso_local local_unnamed_addr global %union.section*, align 8
@text_section = external dso_local local_unnamed_addr global %union.section*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2410 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2423, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2424, metadata !DIExpression()), !dbg !2425
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2426
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2427
  ret i32 %call, !dbg !2428
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2429 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2433
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2434
  ret i32 %call, !dbg !2435
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2436 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2491, metadata !DIExpression()), !dbg !2492
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2493
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2493
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2493
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2493
  %cmp = icmp uge i8* %0, %1, !dbg !2493
  %conv1 = zext i1 %cmp to i64, !dbg !2493
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2493
  %tobool = icmp eq i64 %expval, 0, !dbg !2493
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2493

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2493
  br label %cond.end, !dbg !2493

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2493
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2493
  %2 = load i8, i8* %0, align 1, !dbg !2493
  %conv3 = zext i8 %2 to i32, !dbg !2493
  br label %cond.end, !dbg !2493

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2493
  ret i32 %cond, !dbg !2494
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2495 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2497, metadata !DIExpression()), !dbg !2498
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2499
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2499
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2499
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2499
  %cmp = icmp uge i8* %0, %1, !dbg !2499
  %conv1 = zext i1 %cmp to i64, !dbg !2499
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2499
  %tobool = icmp eq i64 %expval, 0, !dbg !2499
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2499

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2499
  br label %cond.end, !dbg !2499

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2499
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2499
  %2 = load i8, i8* %0, align 1, !dbg !2499
  %conv3 = zext i8 %2 to i32, !dbg !2499
  br label %cond.end, !dbg !2499

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2499
  ret i32 %cond, !dbg !2500
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2501 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2502
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2502
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2502
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2502
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2502
  %cmp = icmp uge i8* %1, %2, !dbg !2502
  %conv1 = zext i1 %cmp to i64, !dbg !2502
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2502
  %tobool = icmp eq i64 %expval, 0, !dbg !2502
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2502

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2502
  br label %cond.end, !dbg !2502

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2502
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2502
  %3 = load i8, i8* %1, align 1, !dbg !2502
  %conv3 = zext i8 %3 to i32, !dbg !2502
  br label %cond.end, !dbg !2502

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2502
  ret i32 %cond, !dbg !2503
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2504 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2508, metadata !DIExpression()), !dbg !2509
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2510
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2511
  ret i32 %call, !dbg !2512
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2513 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2517, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2518, metadata !DIExpression()), !dbg !2519
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2520
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2520
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2520
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2520
  %cmp = icmp uge i8* %0, %1, !dbg !2520
  %conv1 = zext i1 %cmp to i64, !dbg !2520
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2520
  %tobool = icmp eq i64 %expval, 0, !dbg !2520
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2520

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2520
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2520
  br label %cond.end, !dbg !2520

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2520
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2520
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2520
  store i8 %conv2, i8* %0, align 1, !dbg !2520
  %conv6 = and i32 %__c, 255, !dbg !2520
  br label %cond.end, !dbg !2520

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2520
  ret i32 %cond, !dbg !2521
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2522 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2525, metadata !DIExpression()), !dbg !2526
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2527
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2527
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2527
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2527
  %cmp = icmp uge i8* %0, %1, !dbg !2527
  %conv1 = zext i1 %cmp to i64, !dbg !2527
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2527
  %tobool = icmp eq i64 %expval, 0, !dbg !2527
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2527

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2527
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2527
  br label %cond.end, !dbg !2527

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2527
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2527
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2527
  store i8 %conv2, i8* %0, align 1, !dbg !2527
  %conv6 = and i32 %__c, 255, !dbg !2527
  br label %cond.end, !dbg !2527

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2527
  ret i32 %cond, !dbg !2528
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2529 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2531, metadata !DIExpression()), !dbg !2532
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2533
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2533
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2533
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2533
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2533
  %cmp = icmp uge i8* %1, %2, !dbg !2533
  %conv1 = zext i1 %cmp to i64, !dbg !2533
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2533
  %tobool = icmp eq i64 %expval, 0, !dbg !2533
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2533

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2533
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2533
  br label %cond.end, !dbg !2533

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2533
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2533
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2533
  store i8 %conv4, i8* %1, align 1, !dbg !2533
  %conv6 = and i32 %__c, 255, !dbg !2533
  br label %cond.end, !dbg !2533

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2533
  ret i32 %cond, !dbg !2534
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2535 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2541, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2542, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2543, metadata !DIExpression()), !dbg !2544
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2545
  ret i64 %call, !dbg !2546
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2547 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2549, metadata !DIExpression()), !dbg !2550
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2551
  %0 = load i32, i32* %_flags, align 8, !dbg !2551
  %and = lshr i32 %0, 4, !dbg !2551
  %and.lobit = and i32 %and, 1, !dbg !2551
  ret i32 %and.lobit, !dbg !2552
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2553 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2555, metadata !DIExpression()), !dbg !2556
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2557
  %0 = load i32, i32* %_flags, align 8, !dbg !2557
  %and = lshr i32 %0, 5, !dbg !2557
  %and.lobit = and i32 %and, 1, !dbg !2557
  ret i32 %and.lobit, !dbg !2558
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2559 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2562, metadata !DIExpression()), !dbg !2563
  %__c.off = add i32 %__c, 128, !dbg !2564
  %0 = icmp ult i32 %__c.off, 384, !dbg !2564
  br i1 %0, label %cond.true, label %cond.end, !dbg !2564

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2565
  %1 = load i32*, i32** %call, align 8, !dbg !2566
  %idxprom = sext i32 %__c to i64, !dbg !2567
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2567
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2567
  br label %cond.end, !dbg !2568

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2568
  ret i32 %cond, !dbg !2569
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2570 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2572, metadata !DIExpression()), !dbg !2573
  %__c.off = add i32 %__c, 128, !dbg !2574
  %0 = icmp ult i32 %__c.off, 384, !dbg !2574
  br i1 %0, label %cond.true, label %cond.end, !dbg !2574

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2575
  %1 = load i32*, i32** %call, align 8, !dbg !2576
  %idxprom = sext i32 %__c to i64, !dbg !2577
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2577
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2577
  br label %cond.end, !dbg !2578

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2578
  ret i32 %cond, !dbg !2579
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2580 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2585, metadata !DIExpression()), !dbg !2586
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2587
  %conv = trunc i64 %call to i32, !dbg !2588
  ret i32 %conv, !dbg !2589
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2590 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2594, metadata !DIExpression()), !dbg !2595
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2596
  ret i64 %call, !dbg !2597
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2598 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2603, metadata !DIExpression()), !dbg !2604
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2605
  ret i64 %call, !dbg !2606
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2607 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2613, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2614, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2615, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2616, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2617, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 0, metadata !2618, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2619, metadata !DIExpression()), !dbg !2623
  br label %while.cond, !dbg !2624

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2625
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2623
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2619, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2618, metadata !DIExpression()), !dbg !2623
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2626
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2624

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2627
  %div = lshr i64 %add, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %div, metadata !2620, metadata !DIExpression()), !dbg !2623
  %mul = mul i64 %div, %__size, !dbg !2630
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2631
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2621, metadata !DIExpression()), !dbg !2623
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %call, metadata !2622, metadata !DIExpression()), !dbg !2623
  %cmp1 = icmp slt i32 %call, 0, !dbg !2633
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2635

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2636
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2638

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2618, metadata !DIExpression()), !dbg !2623
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2623
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2623
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2619, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2618, metadata !DIExpression()), !dbg !2623
  br label %while.cond, !dbg !2624, !llvm.loop !2640

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2623
  ret i8* %retval.0, !dbg !2642
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2643 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2649, metadata !DIExpression()), !dbg !2650
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2651
  ret double %call, !dbg !2652
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2653 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2662, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i32 %base, metadata !2664, metadata !DIExpression()), !dbg !2665
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2666
  ret i64 %call, !dbg !2667
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2668 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2674, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2675, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i32 %base, metadata !2676, metadata !DIExpression()), !dbg !2677
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2678
  ret i64 %call, !dbg !2679
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2680 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %base, metadata !2693, metadata !DIExpression()), !dbg !2694
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2695
  ret i64 %call, !dbg !2696
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2697 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2701, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2702, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32 %base, metadata !2703, metadata !DIExpression()), !dbg !2704
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2705
  ret i64 %call, !dbg !2706
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2707 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2748, metadata !DIExpression()), !dbg !2749
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2750
  ret i32 %call, !dbg !2751
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2752 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2754, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2755, metadata !DIExpression()), !dbg !2756
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2757
  ret i32 %call, !dbg !2758
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2759 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2763, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2764, metadata !DIExpression()), !dbg !2765
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2766
  ret i32 %call, !dbg !2767
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2768 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2772, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2773, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2775, metadata !DIExpression()), !dbg !2776
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2777
  ret i32 %call, !dbg !2778
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2779 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2785, metadata !DIExpression()), !dbg !2786
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2785, metadata !DIExpression(DW_OP_deref)), !dbg !2786
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2787
  ret i32 %call, !dbg !2788
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2789 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2793, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2794, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2795, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2796, metadata !DIExpression()), !dbg !2797
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2796, metadata !DIExpression(DW_OP_deref)), !dbg !2797
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2798
  ret i32 %call, !dbg !2799
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2800 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2824, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2825, metadata !DIExpression()), !dbg !2826
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2827
  ret i32 %call, !dbg !2828
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2829 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2832, metadata !DIExpression()), !dbg !2833
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2834
  ret i32 %call, !dbg !2835
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2836 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2841, metadata !DIExpression()), !dbg !2842
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2843
  ret i32 %call, !dbg !2844
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2845 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2849, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2850, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2851, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2852, metadata !DIExpression()), !dbg !2853
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2854
  ret i32 %call, !dbg !2855
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lhd_do_nothing() local_unnamed_addr #4 !dbg !2856 {
entry:
  ret void, !dbg !2859
}

; Function Attrs: nounwind uwtable
define dso_local void @lhd_do_nothing_t(%union.tree_node* %t) local_unnamed_addr #4 !dbg !2860 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2864, metadata !DIExpression()), !dbg !2865
  ret void, !dbg !2866
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_pass_through_t(%union.tree_node* %t) local_unnamed_addr #4 !dbg !2867 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2871, metadata !DIExpression()), !dbg !2872
  ret %union.tree_node* %t, !dbg !2873
}

; Function Attrs: nounwind uwtable
define dso_local void @lhd_do_nothing_i(i32 %i) local_unnamed_addr #4 !dbg !2874 {
entry:
  call void @llvm.dbg.value(metadata i32 %i, metadata !2878, metadata !DIExpression()), !dbg !2879
  ret void, !dbg !2880
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_do_nothing_iii_return_null_tree(i32 %i, i32 %j, i32 %k) local_unnamed_addr #4 !dbg !2881 {
entry:
  call void @llvm.dbg.value(metadata i32 %i, metadata !2885, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %j, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 %k, metadata !2887, metadata !DIExpression()), !dbg !2888
  ret %union.tree_node* null, !dbg !2889
}

; Function Attrs: nounwind uwtable
define dso_local void @lhd_do_nothing_f(%struct.function* %f) local_unnamed_addr #4 !dbg !2890 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %f, metadata !2894, metadata !DIExpression()), !dbg !2895
  ret void, !dbg !2896
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_return_null_tree_v() local_unnamed_addr #4 !dbg !2897 {
entry:
  ret %union.tree_node* null, !dbg !2900
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_return_null_tree(%union.tree_node* %t) local_unnamed_addr #4 !dbg !2901 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2903, metadata !DIExpression()), !dbg !2904
  ret %union.tree_node* null, !dbg !2905
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_return_null_const_tree(%union.tree_node* %t) local_unnamed_addr #4 !dbg !2906 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2913, metadata !DIExpression()), !dbg !2914
  ret %union.tree_node* null, !dbg !2915
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lhd_post_options(i8** %pfilename) local_unnamed_addr #4 !dbg !2916 {
entry:
  call void @llvm.dbg.value(metadata i8** %pfilename, metadata !2921, metadata !DIExpression()), !dbg !2922
  store i32 1, i32* @flag_excess_precision_cmdline, align 4, !dbg !2923
  ret i8 0, !dbg !2924
}

; Function Attrs: nounwind uwtable
define dso_local void @lhd_print_tree_nothing(%struct._IO_FILE* %file, %union.tree_node* %node, i32 %indent) local_unnamed_addr #4 !dbg !2925 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2929, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata %union.tree_node* %node, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 %indent, metadata !2931, metadata !DIExpression()), !dbg !2932
  ret void, !dbg !2933
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lhd_warn_unused_global_decl(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !2934 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2938, metadata !DIExpression()), !dbg !2939
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2940
  %bf.load = load i64, i64* %0, align 8, !dbg !2940
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2942
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !2942
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2943

land.lhs.true:                                    ; preds = %entry
  %declared_inline_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 5, !dbg !2944
  %bf.load1 = load i32, i32* %declared_inline_flag, align 8, !dbg !2944
  %bf.clear2 = and i32 %bf.load1, 2097152, !dbg !2944
  %tobool = icmp eq i32 %bf.clear2, 0, !dbg !2944
  br i1 %tobool, label %if.end, label %return, !dbg !2945

if.end:                                           ; preds = %land.lhs.true, %entry
  %cmp7 = icmp eq i64 %bf.cast1, 32, !dbg !2946
  br i1 %cmp7, label %land.lhs.true8, label %if.end16, !dbg !2948

land.lhs.true8:                                   ; preds = %if.end
  %bf.cast133 = and i64 %bf.load, 1048576, !dbg !2949
  %tobool14 = icmp eq i64 %bf.cast133, 0, !dbg !2949
  br i1 %tobool14, label %if.end16, label %return, !dbg !2950

if.end16:                                         ; preds = %land.lhs.true8, %if.end
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2951
  %1 = load i32, i32* %locus, align 8, !dbg !2951
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %1) #6, !dbg !2951
  %sysp = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 3, !dbg !2951
  %2 = load i8, i8* %sysp, align 8, !dbg !2951
  %cmp17 = icmp eq i8 %2, 0, !dbg !2951
  %. = zext i1 %cmp17 to i8, !dbg !2939
  br label %return, !dbg !2939

return:                                           ; preds = %land.lhs.true, %land.lhs.true8, %if.end16
  %retval.0 = phi i8 [ 0, %land.lhs.true ], [ 0, %land.lhs.true8 ], [ %., %if.end16 ], !dbg !2939
  ret i8 %retval.0, !dbg !2953
}

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lhd_set_decl_assembler_name(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !2954 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2956, metadata !DIExpression()), !dbg !2967
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2968
  %bf.load = load i64, i64* %0, align 8, !dbg !2968
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2968
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !2968
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !2968

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 32, !dbg !2968
  br i1 %cmp5, label %land.lhs.true, label %cond.true, !dbg !2968

land.lhs.true:                                    ; preds = %lor.lhs.false
  %bf.cast94 = and i64 %bf.load, 67108864, !dbg !2968
  %tobool = icmp eq i64 %bf.cast94, 0, !dbg !2968
  br i1 %tobool, label %lor.lhs.false10, label %cond.end, !dbg !2968

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2968
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !2968
  %bf.load11 = load i64, i64* %1, align 8, !dbg !2968
  %bf.cast145 = and i64 %bf.load11, 33554432, !dbg !2968
  %tobool15 = icmp eq i64 %bf.cast145, 0, !dbg !2968
  br i1 %tobool15, label %lor.lhs.false16, label %cond.end, !dbg !2968

lor.lhs.false16:                                  ; preds = %lor.lhs.false10
  %bf.cast216 = and i64 %bf.load, 134217728, !dbg !2968
  %tobool22 = icmp eq i64 %bf.cast216, 0, !dbg !2968
  br i1 %tobool22, label %cond.true, label %cond.end, !dbg !2968

cond.true:                                        ; preds = %lor.lhs.false16, %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2968
  %bf.load24.pre = load i64, i64* %0, align 8, !dbg !2969
  br label %cond.end, !dbg !2968

cond.end:                                         ; preds = %lor.lhs.false16, %lor.lhs.false10, %land.lhs.true, %entry, %cond.true
  %bf.load24 = phi i64 [ %bf.load, %lor.lhs.false16 ], [ %bf.load, %lor.lhs.false10 ], [ %bf.load, %land.lhs.true ], [ %bf.load, %entry ], [ %bf.load24.pre, %cond.true ], !dbg !2969
  %bf.cast273 = and i64 %bf.load24, 134217728, !dbg !2969
  %tobool28 = icmp eq i64 %bf.cast273, 0, !dbg !2969
  br i1 %tobool28, label %lor.lhs.false29, label %if.then, !dbg !2970

lor.lhs.false29:                                  ; preds = %cond.end
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2971
  %2 = load %union.tree_node*, %union.tree_node** %context, align 8, !dbg !2971
  %cmp30 = icmp eq %union.tree_node* %2, null, !dbg !2972
  br i1 %cmp30, label %if.then, label %if.else, !dbg !2973

if.then:                                          ; preds = %cond.end, %lor.lhs.false29
  %3 = load %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 50), align 8, !dbg !2974
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2975
  %4 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !2975
  %call = tail call %union.tree_node* %3(%union.tree_node* %decl, %union.tree_node* %4) #6, !dbg !2976
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2957, metadata !DIExpression()), !dbg !2967
  br label %if.end, !dbg !2977

if.else:                                          ; preds = %lor.lhs.false29
  %name34 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2978
  %5 = bitcast %union.tree_node** %name34 to %struct.tree_identifier**, !dbg !2978
  %6 = load %struct.tree_identifier*, %struct.tree_identifier** %5, align 8, !dbg !2978
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %6, i64 0, i32 1, i32 0, !dbg !2978
  %7 = load i8*, i8** %str, align 8, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %7, metadata !2958, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8* %7, metadata !2962, metadata !DIExpression()), !dbg !2980
  %call36 = tail call i64 @strlen(i8* %7) #6, !dbg !2981
  %add = add i64 %call36, 32, !dbg !2981
  %8 = alloca i8, i64 %add, align 16, !dbg !2981
  call void @llvm.dbg.value(metadata i8* %8, metadata !2961, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i8* %8, metadata !2965, metadata !DIExpression()), !dbg !2980
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2981
  %9 = load i32, i32* %uid, align 4, !dbg !2981
  %conv = zext i32 %9 to i64, !dbg !2981
  %call38 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %7, i64 %conv) #6, !dbg !2981
  %call39 = call %union.tree_node* @get_identifier(i8* nonnull %8) #6, !dbg !2982
  call void @llvm.dbg.value(metadata %union.tree_node* %call39, metadata !2957, metadata !DIExpression()), !dbg !2967
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %id.0 = phi %union.tree_node* [ %call, %if.then ], [ %call39, %if.else ], !dbg !2983
  call void @llvm.dbg.value(metadata %union.tree_node* %id.0, metadata !2957, metadata !DIExpression()), !dbg !2967
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2984
  store %union.tree_node* %id.0, %union.tree_node** %assembler_name, align 8, !dbg !2984
  ret void, !dbg !2985
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #1

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_type_promotes_to(%union.tree_node* %type) local_unnamed_addr #4 !dbg !2986 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2988, metadata !DIExpression()), !dbg !2989
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2990
  ret %union.tree_node* %type, !dbg !2991
}

; Function Attrs: nounwind uwtable
define dso_local void @lhd_register_builtin_type(%union.tree_node* %type, i8* %name) local_unnamed_addr #4 !dbg !2992 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2996, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %name, metadata !2997, metadata !DIExpression()), !dbg !2998
  ret void, !dbg !2999
}

; Function Attrs: nounwind uwtable
define dso_local void @lhd_incomplete_type_error(%union.tree_node* %value, %union.tree_node* %type) local_unnamed_addr #4 !dbg !3000 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %value, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3005, metadata !DIExpression()), !dbg !3006
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3007
  %bf.load = load i64, i64* %0, align 8, !dbg !3007
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3007
  %cmp = icmp eq i64 %bf.cast1, 0, !dbg !3007
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3007

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3007
  br label %cond.end, !dbg !3007

cond.end:                                         ; preds = %entry, %cond.true
  ret void, !dbg !3008
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lhd_get_alias_set(%union.tree_node* %t) local_unnamed_addr #4 !dbg !3009 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3013, metadata !DIExpression()), !dbg !3014
  ret i32 -1, !dbg !3015
}

; Function Attrs: nounwind uwtable
define dso_local i8* @lhd_decl_printable_name(%union.tree_node* %decl, i32 %verbosity) local_unnamed_addr #4 !dbg !3016 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %verbosity, metadata !3021, metadata !DIExpression()), !dbg !3022
  %tobool = icmp eq %union.tree_node* %decl, null, !dbg !3023
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3023

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3023
  %0 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !3023
  %tobool1 = icmp eq %union.tree_node* %0, null, !dbg !3023
  br i1 %tobool1, label %cond.true, label %land.lhs.true.cond.end_crit_edge, !dbg !3023

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  %1 = bitcast %union.tree_node* %0 to %struct.tree_identifier*, !dbg !3023
  br label %cond.end, !dbg !3023

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3023
  %name3.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3022
  %.phi.trans.insert = bitcast %union.tree_node** %name3.phi.trans.insert to %struct.tree_identifier**, !dbg !3022
  %.pre = load %struct.tree_identifier*, %struct.tree_identifier** %.phi.trans.insert, align 8, !dbg !3024
  br label %cond.end, !dbg !3023

cond.end:                                         ; preds = %land.lhs.true.cond.end_crit_edge, %cond.true
  %2 = phi %struct.tree_identifier* [ %1, %land.lhs.true.cond.end_crit_edge ], [ %.pre, %cond.true ], !dbg !3024
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %2, i64 0, i32 1, i32 0, !dbg !3024
  %3 = load i8*, i8** %str, align 8, !dbg !3024
  ret i8* %3, !dbg !3025
}

; Function Attrs: nounwind uwtable
define dso_local i8* @lhd_dwarf_name(%union.tree_node* %t, i32 %verbosity) local_unnamed_addr #4 !dbg !3026 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i32 %verbosity, metadata !3029, metadata !DIExpression()), !dbg !3030
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3031
  %bf.load = load i64, i64* %0, align 8, !dbg !3031
  %bf.cast = and i64 %bf.load, 65535, !dbg !3031
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !3031
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3031
  %cmp = icmp eq i32 %1, 3, !dbg !3031
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3031

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3031
  br label %cond.end, !dbg !3031

cond.end:                                         ; preds = %entry, %cond.true
  %2 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3032
  %call = tail call i8* %2(%union.tree_node* %t, i32 %verbosity) #6, !dbg !3033
  ret i8* %call, !dbg !3034
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lhd_types_compatible_p(%union.tree_node* %x, %union.tree_node* %y) local_unnamed_addr #4 !dbg !3035 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %x, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata %union.tree_node* %y, metadata !3040, metadata !DIExpression()), !dbg !3041
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %x, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3042
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3042
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %y, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3043
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !3043
  %cmp = icmp eq %union.tree_node* %1, %3, !dbg !3044
  %conv = zext i1 %cmp to i32, !dbg !3044
  ret i32 %conv, !dbg !3045
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lhd_tree_dump_dump_tree(i8* %di, %union.tree_node* %t) local_unnamed_addr #4 !dbg !3046 {
entry:
  call void @llvm.dbg.value(metadata i8* %di, metadata !3050, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3051, metadata !DIExpression()), !dbg !3052
  ret i8 0, !dbg !3053
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lhd_tree_dump_type_quals(%union.tree_node* %t) local_unnamed_addr #4 !dbg !3054 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3058, metadata !DIExpression()), !dbg !3059
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3060
  %bf.load = load i64, i64* %0, align 8, !dbg !3060
  %bf.lshr = lshr i64 %bf.load, 20, !dbg !3060
  %1 = trunc i64 %bf.lshr to i32, !dbg !3060
  %bf.cast = and i32 %1, 1, !dbg !3060
  %2 = lshr i64 %bf.load, 18, !dbg !3060
  %3 = trunc i64 %2 to i32, !dbg !3060
  %mul6 = and i32 %3, 2, !dbg !3060
  %or = or i32 %bf.cast, %mul6, !dbg !3060
  %type = bitcast %union.tree_node* %t to %struct.tree_type*, !dbg !3060
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i64 0, i32 6, !dbg !3060
  %bf.load7 = load i32, i32* %restrict_flag, align 4, !dbg !3060
  %4 = lshr i32 %bf.load7, 11, !dbg !3060
  %mul10 = and i32 %4, 4, !dbg !3060
  %or11 = or i32 %or, %mul10, !dbg !3060
  %5 = lshr i64 %bf.load, 48, !dbg !3060
  %6 = trunc i64 %5 to i32, !dbg !3060
  %shl = and i32 %6, 65280, !dbg !3060
  %or16 = or i32 %or11, %shl, !dbg !3060
  ret i32 %or16, !dbg !3061
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lhd_gimplify_expr(%union.tree_node** %expr_p, %struct.gimple_seq_d** %pre_p, %struct.gimple_seq_d** %post_p) local_unnamed_addr #4 !dbg !3062 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %expr_p, metadata !3067, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %pre_p, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %post_p, metadata !3069, metadata !DIExpression()), !dbg !3070
  ret i32 -1, !dbg !3071
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lhd_tree_size(i32 %c) local_unnamed_addr #4 !dbg !3072 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !3076, metadata !DIExpression()), !dbg !3077
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3078
  ret i64 0, !dbg !3079
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @lhd_decl_ok_for_sibcall(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !3080 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3082, metadata !DIExpression()), !dbg !3083
  ret i8 1, !dbg !3084
}

; Function Attrs: nounwind uwtable
define dso_local void @write_global_declarations() local_unnamed_addr #4 !dbg !3085 {
entry:
  tail call void @cgraph_finalize_compilation_unit() #6, !dbg !3092
  %0 = load %union.tree_node* ()*, %union.tree_node* ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 33, i32 2), align 8, !dbg !3093
  %call = tail call %union.tree_node* %0() #6, !dbg !3094
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3087, metadata !DIExpression()), !dbg !3095
  %call1 = tail call i32 @list_length(%union.tree_node* %call) #6, !dbg !3096
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3090, metadata !DIExpression()), !dbg !3095
  %conv = sext i32 %call1 to i64, !dbg !3097
  %mul = shl nsw i64 %conv, 3, !dbg !3097
  %call2 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3097
  %1 = bitcast i8* %call2 to %union.tree_node**, !dbg !3097
  call void @llvm.dbg.value(metadata %union.tree_node** %1, metadata !3089, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i32 0, metadata !3091, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3088, metadata !DIExpression()), !dbg !3095
  %2 = sext i32 %call1 to i64, !dbg !3098
  br label %for.cond, !dbg !3098

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3100
  %decl.0 = phi %union.tree_node* [ %5, %for.body ], [ %call, %entry ], !dbg !3100
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3091, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata %union.tree_node* %decl.0, metadata !3088, metadata !DIExpression()), !dbg !3095
  %cmp = icmp slt i64 %indvars.iv, %2, !dbg !3101
  br i1 %cmp, label %for.body, label %for.end, !dbg !3103

for.body:                                         ; preds = %for.cond
  %3 = trunc i64 %indvars.iv to i32, !dbg !3104
  %4 = xor i32 %3, -1, !dbg !3104
  %sub4 = add i32 %call1, %4, !dbg !3104
  %idxprom = sext i32 %sub4 to i64, !dbg !3105
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %1, i64 %idxprom, !dbg !3105
  store %union.tree_node* %decl.0, %union.tree_node** %arrayidx, align 8, !dbg !3106
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3107
  call void @llvm.dbg.value(metadata i32 undef, metadata !3091, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3095
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %decl.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3108
  %5 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3088, metadata !DIExpression()), !dbg !3095
  br label %for.cond, !dbg !3109, !llvm.loop !3110

for.end:                                          ; preds = %for.cond
  %call5 = tail call zeroext i8 @wrapup_global_declarations(%union.tree_node** %1, i32 %call1) #6, !dbg !3112
  tail call void @check_global_declarations(%union.tree_node** %1, i32 %call1) #6, !dbg !3113
  tail call void @emit_debug_global_declarations(%union.tree_node** %1, i32 %call1) #6, !dbg !3114
  tail call void @free(i8* %call2) #6, !dbg !3115
  ret void, !dbg !3116
}

declare dso_local void @cgraph_finalize_compilation_unit() local_unnamed_addr #1

declare dso_local i32 @list_length(%union.tree_node*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local zeroext i8 @wrapup_global_declarations(%union.tree_node**, i32) local_unnamed_addr #1

declare dso_local void @check_global_declarations(%union.tree_node**, i32) local_unnamed_addr #1

declare dso_local void @emit_debug_global_declarations(%union.tree_node**, i32) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lhd_initialize_diagnostics(%struct.diagnostic_context* %ctx) local_unnamed_addr #4 !dbg !3117 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %ctx, metadata !3242, metadata !DIExpression()), !dbg !3243
  ret void, !dbg !3244
}

; Function Attrs: nounwind uwtable
define dso_local void @lhd_print_error_function(%struct.diagnostic_context* %context, i8* %file, %struct.diagnostic_info* %diagnostic) local_unnamed_addr #4 !dbg !3245 {
entry:
  %s = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !3249, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* %file, metadata !3250, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !3251, metadata !DIExpression()), !dbg !3274
  %last_function = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 10, !dbg !3275
  %0 = load %union.tree_node*, %union.tree_node** %last_function, align 8, !dbg !3275
  %abstract_origin = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 3, !dbg !3275
  %1 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8, !dbg !3275
  %tobool = icmp eq %union.tree_node* %1, null, !dbg !3275
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3275

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3275

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3275

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %union.tree_node** [ %abstract_origin, %cond.true ], [ @current_function_decl, %cond.false ]
  %cond = load %union.tree_node*, %union.tree_node** %cond.in, align 8, !dbg !3275
  %cmp = icmp eq %union.tree_node* %0, %cond, !dbg !3275
  br i1 %cmp, label %if.end179, label %if.then, !dbg !3276

if.then:                                          ; preds = %cond.end
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 0, !dbg !3277
  %2 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3277
  %prefix = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %2, i64 0, i32 1, !dbg !3278
  %3 = bitcast i8** %prefix to i64*, !dbg !3278
  %4 = load i64, i64* %3, align 8, !dbg !3278
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3255, metadata !DIExpression()), !dbg !3279
  %tobool4 = icmp ne i8* %file, null, !dbg !3280
  %or.cond = and i1 %tobool4, %tobool, !dbg !3281
  br i1 %or.cond, label %cond.true6, label %cond.end8, !dbg !3281

cond.true6:                                       ; preds = %if.then
  %call = tail call i8* @file_name_as_prefix(i8* nonnull %file) #6, !dbg !3282
  %.pre = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3283
  br label %cond.end8, !dbg !3284

cond.end8:                                        ; preds = %if.then, %cond.true6
  %5 = phi %struct.pretty_print_info* [ %.pre, %cond.true6 ], [ %2, %if.then ], !dbg !3283
  %cond9 = phi i8* [ %call, %cond.true6 ], [ null, %if.then ], !dbg !3284
  call void @llvm.dbg.value(metadata i8* %cond9, metadata !3256, metadata !DIExpression()), !dbg !3279
  tail call void @pp_base_set_prefix(%struct.pretty_print_info* %5, i8* %cond9) #6, !dbg !3283
  %6 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3285
  %cmp11 = icmp eq %union.tree_node* %6, null, !dbg !3286
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !3287

if.then12:                                        ; preds = %cond.end8
  %7 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3288
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_printf(%struct.pretty_print_info* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3289
  br label %if.end165, !dbg !3289

if.else:                                          ; preds = %cond.end8
  br i1 %tobool, label %if.else36, label %if.then15, !dbg !3290

if.then15:                                        ; preds = %if.else
  %ao.0.in.in.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3291
  %ao.0.in.phi.trans.insert = bitcast i32* %ao.0.in.in.phi.trans.insert to %union.tree_node**, !dbg !3291
  %ao.0.pre = load %union.tree_node*, %union.tree_node** %ao.0.in.phi.trans.insert, align 8, !dbg !3291
  br label %while.cond, !dbg !3294

while.cond:                                       ; preds = %while.body, %if.then15
  %ao.0 = phi %union.tree_node* [ %ao.0.pre, %if.then15 ], [ %10, %while.body ], !dbg !3291
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0, metadata !3260, metadata !DIExpression()), !dbg !3295
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %ao.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3296
  %bf.load = load i64, i64* %8, align 8, !dbg !3296
  %bf.cast13 = and i64 %bf.load, 65535, !dbg !3297
  %cmp17 = icmp eq i64 %bf.cast13, 4, !dbg !3297
  br i1 %cmp17, label %land.lhs.true18, label %while.end, !dbg !3298

land.lhs.true18:                                  ; preds = %while.cond
  %abstract_origin20 = getelementptr inbounds %union.tree_node, %union.tree_node* %ao.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3299
  %9 = bitcast i32* %abstract_origin20 to %union.tree_node**, !dbg !3299
  %10 = load %union.tree_node*, %union.tree_node** %9, align 8, !dbg !3299
  %tobool21 = icmp eq %union.tree_node* %10, null, !dbg !3299
  %cmp24 = icmp eq %union.tree_node* %10, %ao.0, !dbg !3300
  %or.cond19 = or i1 %tobool21, %cmp24, !dbg !3301
  br i1 %or.cond19, label %while.end, label %while.body, !dbg !3301

while.body:                                       ; preds = %land.lhs.true18
  br label %while.cond, !dbg !3294, !llvm.loop !3302

while.end:                                        ; preds = %land.lhs.true18, %while.cond
  %ao.0.lcssa = phi %union.tree_node* [ %ao.0, %land.lhs.true18 ], [ %ao.0, %while.cond ], !dbg !3291
  %bf.cast13.lcssa = phi i64 [ %bf.cast13, %land.lhs.true18 ], [ %bf.cast13, %while.cond ], !dbg !3297
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0.lcssa, metadata !3260, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0.lcssa, metadata !3260, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0.lcssa, metadata !3260, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0.lcssa, metadata !3260, metadata !DIExpression()), !dbg !3295
  %cmp31 = icmp eq i64 %bf.cast13.lcssa, 29, !dbg !3304
  br i1 %cmp31, label %if.end, label %cond.true32, !dbg !3304

cond.true32:                                      ; preds = %while.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 373, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3304
  br label %if.end, !dbg !3304

if.else36:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !3257, metadata !DIExpression()), !dbg !3295
  br label %if.end

if.end:                                           ; preds = %cond.true32, %while.end, %if.else36
  %fndecl.0 = phi %union.tree_node* [ %6, %if.else36 ], [ %ao.0.lcssa, %while.end ], [ %ao.0.lcssa, %cond.true32 ], !dbg !3305
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl.0, metadata !3257, metadata !DIExpression()), !dbg !3295
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3306
  %11 = bitcast %union.tree_node** %type to i64**, !dbg !3306
  %12 = load i64*, i64** %11, align 8, !dbg !3306
  %bf.load38 = load i64, i64* %12, align 8, !dbg !3306
  %bf.cast405 = and i64 %bf.load38, 65535, !dbg !3308
  %cmp41 = icmp eq i64 %bf.cast405, 21, !dbg !3308
  %13 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3309
  %14 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3309
  %call44 = tail call i8* %14(%union.tree_node* %fndecl.0, i32 2) #6, !dbg !3309
  %call45 = tail call i8* @identifier_to_locale(i8* %call44) #6, !dbg !3309
  br i1 %cmp41, label %if.then42, label %if.else46, !dbg !3310

if.then42:                                        ; preds = %if.end
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_printf(%struct.pretty_print_info* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %call45) #6, !dbg !3311
  br label %if.end50, !dbg !3311

if.else46:                                        ; preds = %if.end
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_printf(%struct.pretty_print_info* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %call45) #6, !dbg !3312
  br label %if.end50

if.end50:                                         ; preds = %if.else46, %if.then42
  %15 = bitcast %struct.expanded_location* %s to i8*, !dbg !3313
  %file141 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 0, !dbg !3314
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 1, !dbg !3316
  %column = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 2, !dbg !3316
  br label %while.cond51, !dbg !3319

while.cond51:                                     ; preds = %if.end162, %if.end50
  %abstract_origin2.0 = phi %union.tree_node* [ %1, %if.end50 ], [ %abstract_origin2.1, %if.end162 ], !dbg !3279
  call void @llvm.dbg.value(metadata %union.tree_node* %abstract_origin2.0, metadata !3255, metadata !DIExpression()), !dbg !3279
  %tobool52 = icmp eq %union.tree_node* %abstract_origin2.0, null, !dbg !3319
  br i1 %tobool52, label %while.end163, label %while.body53, !dbg !3319

while.body53:                                     ; preds = %while.cond51
  call void @llvm.dbg.value(metadata %union.tree_node* %abstract_origin2.0, metadata !3263, metadata !DIExpression()), !dbg !3320
  %16 = getelementptr inbounds %union.tree_node, %union.tree_node* %abstract_origin2.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3321
  call void @llvm.dbg.value(metadata i32* %16, metadata !3261, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3257, metadata !DIExpression()), !dbg !3295
  br label %while.cond58, !dbg !3322

while.cond58:                                     ; preds = %if.end107, %while.body53
  %abstract_origin2.0.pn = phi %union.tree_node* [ %abstract_origin2.0, %while.body53 ], [ %block54.0, %if.end107 ]
  %block54.0.in.in = getelementptr inbounds %union.tree_node, %union.tree_node* %abstract_origin2.0.pn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3320
  %block54.0.in = bitcast i40* %block54.0.in.in to %union.tree_node**, !dbg !3320
  %block54.0 = load %union.tree_node*, %union.tree_node** %block54.0.in, align 8, !dbg !3320
  call void @llvm.dbg.value(metadata %union.tree_node* %block54.0, metadata !3263, metadata !DIExpression()), !dbg !3320
  %tobool59 = icmp eq %union.tree_node* %block54.0, null, !dbg !3323
  br i1 %tobool59, label %while.end110, label %land.lhs.true60, !dbg !3324

land.lhs.true60:                                  ; preds = %while.cond58
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %block54.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3325
  %bf.load62 = load i64, i64* %17, align 8, !dbg !3325
  %bf.cast649 = and i64 %bf.load62, 65535, !dbg !3326
  %cmp65 = icmp eq i64 %bf.cast649, 4, !dbg !3326
  br i1 %cmp65, label %land.rhs66, label %while.end110, !dbg !3327

land.rhs66:                                       ; preds = %land.lhs.true60
  %abstract_origin68 = getelementptr inbounds %union.tree_node, %union.tree_node* %block54.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3328
  %18 = bitcast i32* %abstract_origin68 to %union.tree_node**, !dbg !3328
  %19 = load %union.tree_node*, %union.tree_node** %18, align 8, !dbg !3328
  %tobool69 = icmp eq %union.tree_node* %19, null, !dbg !3327
  br i1 %tobool69, label %while.end110, label %while.body71, !dbg !3322

while.body71:                                     ; preds = %land.rhs66
  br label %while.cond74, !dbg !3329

while.cond74:                                     ; preds = %while.body89, %while.body71
  %ao.1 = phi %union.tree_node* [ %19, %while.body71 ], [ %22, %while.body89 ], !dbg !3331
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.1, metadata !3260, metadata !DIExpression()), !dbg !3295
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %ao.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3332
  %bf.load76 = load i64, i64* %20, align 8, !dbg !3332
  %bf.cast7810 = and i64 %bf.load76, 65535, !dbg !3333
  %cmp79 = icmp eq i64 %bf.cast7810, 4, !dbg !3333
  br i1 %cmp79, label %land.lhs.true80, label %while.end92, !dbg !3334

land.lhs.true80:                                  ; preds = %while.cond74
  %abstract_origin82 = getelementptr inbounds %union.tree_node, %union.tree_node* %ao.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3335
  %21 = bitcast i32* %abstract_origin82 to %union.tree_node**, !dbg !3335
  %22 = load %union.tree_node*, %union.tree_node** %21, align 8, !dbg !3335
  %tobool83 = icmp eq %union.tree_node* %22, null, !dbg !3335
  %cmp87 = icmp eq %union.tree_node* %22, %ao.1, !dbg !3336
  %or.cond18 = or i1 %tobool83, %cmp87, !dbg !3337
  br i1 %or.cond18, label %while.end92, label %while.body89, !dbg !3337

while.body89:                                     ; preds = %land.lhs.true80
  br label %while.cond74, !dbg !3329, !llvm.loop !3338

while.end92:                                      ; preds = %land.lhs.true80, %while.cond74
  %ao.1.lcssa = phi %union.tree_node* [ %ao.1, %land.lhs.true80 ], [ %ao.1, %while.cond74 ], !dbg !3331
  %bf.cast7810.lcssa = phi i64 [ %bf.cast7810, %land.lhs.true80 ], [ %bf.cast7810, %while.cond74 ], !dbg !3333
  %cmp79.lcssa = phi i1 [ %cmp79, %land.lhs.true80 ], [ %cmp79, %while.cond74 ], !dbg !3333
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.1.lcssa, metadata !3260, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.1.lcssa, metadata !3260, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.1.lcssa, metadata !3260, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.1.lcssa, metadata !3260, metadata !DIExpression()), !dbg !3295
  %cmp97 = icmp eq i64 %bf.cast7810.lcssa, 29, !dbg !3340
  br i1 %cmp97, label %while.end110, label %if.else99, !dbg !3342

if.else99:                                        ; preds = %while.end92
  br i1 %cmp79.lcssa, label %if.end107, label %while.end110, !dbg !3343

if.end107:                                        ; preds = %if.else99
  br label %while.cond58, !dbg !3322, !llvm.loop !3344

while.end110:                                     ; preds = %if.else99, %land.rhs66, %while.cond58, %land.lhs.true60, %while.end92
  %block54.0.lcssa = phi %union.tree_node* [ %block54.0, %if.else99 ], [ %block54.0, %land.rhs66 ], [ %block54.0, %while.cond58 ], [ %block54.0, %land.lhs.true60 ], [ %block54.0, %while.end92 ], !dbg !3320
  %fndecl.1 = phi %union.tree_node* [ null, %land.rhs66 ], [ %ao.1.lcssa, %while.end92 ], [ null, %if.else99 ], [ null, %land.lhs.true60 ], [ null, %while.cond58 ], !dbg !3320
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl.1, metadata !3257, metadata !DIExpression()), !dbg !3295
  %tobool111 = icmp eq %union.tree_node* %fndecl.1, null, !dbg !3346
  br i1 %tobool111, label %while.cond114.preheader, label %if.end136, !dbg !3348

while.cond114.preheader:                          ; preds = %while.end110
  br label %while.cond114, !dbg !3349

while.cond114:                                    ; preds = %while.cond114.preheader, %while.body123
  %block54.1 = phi %union.tree_node* [ %25, %while.body123 ], [ %block54.0.lcssa, %while.cond114.preheader ], !dbg !3320
  call void @llvm.dbg.value(metadata %union.tree_node* %block54.1, metadata !3263, metadata !DIExpression()), !dbg !3320
  %cond4 = icmp eq %union.tree_node* %block54.1, null, !dbg !3351
  br i1 %cond4, label %if.end136.loopexit, label %land.rhs116, !dbg !3351

land.rhs116:                                      ; preds = %while.cond114
  %23 = getelementptr inbounds %union.tree_node, %union.tree_node* %block54.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3352
  %bf.load118 = load i64, i64* %23, align 8, !dbg !3352
  %bf.cast1207 = and i64 %bf.load118, 65535, !dbg !3353
  %cmp121 = icmp eq i64 %bf.cast1207, 4, !dbg !3353
  br i1 %cmp121, label %while.body123, label %while.end126, !dbg !3349

while.body123:                                    ; preds = %land.rhs116
  %supercontext125 = getelementptr inbounds %union.tree_node, %union.tree_node* %block54.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3354
  %24 = bitcast i40* %supercontext125 to %union.tree_node**, !dbg !3354
  %25 = load %union.tree_node*, %union.tree_node** %24, align 8, !dbg !3354
  call void @llvm.dbg.value(metadata %union.tree_node* %25, metadata !3263, metadata !DIExpression()), !dbg !3320
  br label %while.cond114, !dbg !3349, !llvm.loop !3355

while.end126:                                     ; preds = %land.rhs116
  %bf.cast1207.lcssa = phi i64 [ %bf.cast1207, %land.rhs116 ], !dbg !3353
  %block54.1.lcssa21 = phi %union.tree_node* [ %block54.1, %land.rhs116 ], !dbg !3320
  call void @llvm.dbg.value(metadata %union.tree_node* %block54.1.lcssa21, metadata !3263, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata %union.tree_node* %block54.1.lcssa21, metadata !3263, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata %union.tree_node* %block54.1.lcssa21, metadata !3263, metadata !DIExpression()), !dbg !3320
  %cmp133 = icmp eq i64 %bf.cast1207.lcssa, 29, !dbg !3356
  %spec.select = select i1 %cmp133, %union.tree_node* %block54.1.lcssa21, %union.tree_node* null, !dbg !3358
  br label %if.end136, !dbg !3358

if.end136.loopexit:                               ; preds = %while.cond114
  br label %if.end136, !dbg !3359

if.end136:                                        ; preds = %if.end136.loopexit, %while.end110, %while.end126
  %abstract_origin2.1 = phi %union.tree_node* [ %block54.0.lcssa, %while.end110 ], [ null, %while.end126 ], [ null, %if.end136.loopexit ], !dbg !3360
  %fndecl.3 = phi %union.tree_node* [ %fndecl.1, %while.end110 ], [ %spec.select, %while.end126 ], [ null, %if.end136.loopexit ], !dbg !3320
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl.3, metadata !3257, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node* %abstract_origin2.1, metadata !3255, metadata !DIExpression()), !dbg !3279
  %tobool137 = icmp eq %union.tree_node* %fndecl.3, null, !dbg !3359
  br i1 %tobool137, label %if.end162, label %if.then138, !dbg !3361

if.then138:                                       ; preds = %if.end136
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15) #7, !dbg !3362
  %26 = load i32, i32* %16, align 4, !dbg !3363
  call void @llvm.dbg.value(metadata %struct.expanded_location* %s, metadata !3264, metadata !DIExpression(DW_OP_deref)), !dbg !3313
  call void @expand_location(%struct.expanded_location* nonnull sret %s, i32 %26) #6, !dbg !3364
  %27 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3365
  call void @pp_base_character(%struct.pretty_print_info* %27, i32 44) #6, !dbg !3365
  %28 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3366
  call void @pp_base_newline(%struct.pretty_print_info* %28) #6, !dbg !3366
  %29 = load i8*, i8** %file141, align 8, !dbg !3367
  %cmp142 = icmp eq i8* %29, null, !dbg !3368
  br i1 %cmp142, label %if.else157, label %if.then143, !dbg !3369

if.then143:                                       ; preds = %if.then138
  %30 = load i32, i32* @flag_show_column, align 4, !dbg !3370
  %tobool144 = icmp eq i32 %30, 0, !dbg !3370
  %31 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3316
  %32 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3316
  %call147 = call i8* %32(%union.tree_node* nonnull %fndecl.3, i32 2) #6, !dbg !3316
  %call148 = call i8* @identifier_to_locale(i8* %call147) #6, !dbg !3316
  %33 = load i8*, i8** %file141, align 8, !dbg !3316
  %34 = load i32, i32* %line, align 8, !dbg !3316
  br i1 %tobool144, label %if.else150, label %if.then145, !dbg !3371

if.then145:                                       ; preds = %if.then143
  %35 = load i32, i32* %column, align 4, !dbg !3372
  call void (%struct.pretty_print_info*, i8*, ...) @pp_printf(%struct.pretty_print_info* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %call148, i8* %33, i32 %34, i32 %35) #6, !dbg !3373
  br label %if.end161, !dbg !3373

if.else150:                                       ; preds = %if.then143
  call void (%struct.pretty_print_info*, i8*, ...) @pp_printf(%struct.pretty_print_info* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %call148, i8* %33, i32 %34) #6, !dbg !3374
  br label %if.end161

if.else157:                                       ; preds = %if.then138
  %36 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3375
  %37 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !3376
  %call159 = call i8* %37(%union.tree_node* nonnull %fndecl.3, i32 2) #6, !dbg !3377
  %call160 = call i8* @identifier_to_locale(i8* %call159) #6, !dbg !3378
  call void (%struct.pretty_print_info*, i8*, ...) @pp_printf(%struct.pretty_print_info* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %call160) #6, !dbg !3379
  br label %if.end161

if.end161:                                        ; preds = %if.then145, %if.else150, %if.else157
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #7, !dbg !3380
  br label %if.end162, !dbg !3381

if.end162:                                        ; preds = %if.end136, %if.end161
  br label %while.cond51, !dbg !3319, !llvm.loop !3382

while.end163:                                     ; preds = %while.cond51
  %38 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3384
  call void @pp_base_character(%struct.pretty_print_info* %38, i32 58) #6, !dbg !3384
  br label %if.end165

if.end165:                                        ; preds = %while.end163, %if.then12
  %tobool166 = icmp eq %struct.diagnostic_info* %diagnostic, null, !dbg !3385
  br i1 %tobool166, label %cond.false172, label %land.lhs.true167, !dbg !3385

land.lhs.true167:                                 ; preds = %if.end165
  %39 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8, !dbg !3385
  %tobool169 = icmp eq %union.tree_node* %39, null, !dbg !3385
  br i1 %tobool169, label %cond.false172, label %cond.true170, !dbg !3385

cond.true170:                                     ; preds = %land.lhs.true167
  %phitmp = bitcast %union.tree_node** %abstract_origin to i64*, !dbg !3385
  br label %cond.end173, !dbg !3385

cond.false172:                                    ; preds = %land.lhs.true167, %if.end165
  br label %cond.end173, !dbg !3385

cond.end173:                                      ; preds = %cond.false172, %cond.true170
  %cond174.in = phi i64* [ %phitmp, %cond.true170 ], [ bitcast (%union.tree_node** @current_function_decl to i64*), %cond.false172 ]
  %cond1746 = load i64, i64* %cond174.in, align 8, !dbg !3385
  %40 = bitcast %union.tree_node** %last_function to i64*, !dbg !3385
  store i64 %cond1746, i64* %40, align 8, !dbg !3385
  %41 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3386
  call void @pp_base_flush(%struct.pretty_print_info* %41) #6, !dbg !3386
  %42 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !3387
  %prefix178 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %42, i64 0, i32 1, !dbg !3388
  %43 = bitcast i8** %prefix178 to i64*, !dbg !3389
  store i64 %4, i64* %43, align 8, !dbg !3389
  call void @free(i8* %cond9) #6, !dbg !3390
  br label %if.end179, !dbg !3391

if.end179:                                        ; preds = %cond.end, %cond.end173
  ret void, !dbg !3392
}

declare dso_local i8* @file_name_as_prefix(i8*) local_unnamed_addr #1

declare dso_local void @pp_base_set_prefix(%struct.pretty_print_info*, i8*) local_unnamed_addr #1

declare dso_local void @pp_printf(%struct.pretty_print_info*, i8*, ...) local_unnamed_addr #1

declare dso_local i8* @identifier_to_locale(i8*) local_unnamed_addr #1

declare dso_local void @pp_base_character(%struct.pretty_print_info*, i32) local_unnamed_addr #1

declare dso_local void @pp_base_newline(%struct.pretty_print_info*) local_unnamed_addr #1

declare dso_local void @pp_base_flush(%struct.pretty_print_info*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_callgraph_analyze_expr(%union.tree_node** %tp, i32* %walk_subtrees) local_unnamed_addr #4 !dbg !3393 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %tp, metadata !3398, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i32* %walk_subtrees, metadata !3399, metadata !DIExpression()), !dbg !3400
  ret %union.tree_node* null, !dbg !3401
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_make_node(i32 %code) local_unnamed_addr #4 !dbg !3402 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3406, metadata !DIExpression()), !dbg !3407
  %call = tail call %union.tree_node* @make_node_stat(i32 %code) #6, !dbg !3408
  ret %union.tree_node* %call, !dbg !3409
}

declare dso_local %union.tree_node* @make_node_stat(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @lhd_to_target_charset(i64 %c) local_unnamed_addr #4 !dbg !3410 {
entry:
  call void @llvm.dbg.value(metadata i64 %c, metadata !3414, metadata !DIExpression()), !dbg !3415
  ret i64 %c, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_expr_to_decl(%union.tree_node* %expr, i8* %tc, i8* %se) local_unnamed_addr #4 !dbg !3417 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !3421, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8* %tc, metadata !3422, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i8* %se, metadata !3423, metadata !DIExpression()), !dbg !3424
  ret %union.tree_node* %expr, !dbg !3425
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lhd_omp_predetermined_sharing(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !3426 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3430, metadata !DIExpression()), !dbg !3431
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3432
  %0 = bitcast i40* %artificial_flag to i64*, !dbg !3432
  %bf.load = load i64, i64* %0, align 8, !dbg !3432
  %bf.cast1 = lshr i64 %bf.load, 12, !dbg !3431
  %1 = trunc i64 %bf.cast1 to i32, !dbg !3431
  %2 = and i32 %1, 1, !dbg !3431
  ret i32 %2, !dbg !3434
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_omp_assignment(%union.tree_node* %clause, %union.tree_node* %dst, %union.tree_node* %src) local_unnamed_addr #4 !dbg !3435 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %clause, metadata !3439, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata %union.tree_node* %dst, metadata !3440, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata %union.tree_node* %src, metadata !3441, metadata !DIExpression()), !dbg !3442
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %dst, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3443
  %0 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3443
  %call = tail call %union.tree_node* @build2_stat(i32 53, %union.tree_node* %0, %union.tree_node* %dst, %union.tree_node* %src) #6, !dbg !3443
  ret %union.tree_node* %call, !dbg !3444
}

declare dso_local %union.tree_node* @build2_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lhd_omp_firstprivatize_type_sizes(%struct.gimplify_omp_ctx* %c, %union.tree_node* %t) local_unnamed_addr #4 !dbg !3445 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimplify_omp_ctx* %c, metadata !3451, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3452, metadata !DIExpression()), !dbg !3453
  ret void, !dbg !3454
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @add_builtin_function(i8* %name, %union.tree_node* %type, i32 %function_code, i32 %cl, i8* %library_name, %union.tree_node* %attrs) local_unnamed_addr #4 !dbg !3455 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !3459, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3460, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %function_code, metadata !3461, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %cl, metadata !3462, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i8* %library_name, metadata !3463, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata %union.tree_node* %attrs, metadata !3464, metadata !DIExpression()), !dbg !3465
  %0 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 41), align 8, !dbg !3466
  %call = tail call fastcc %union.tree_node* @add_builtin_function_common(i8* %name, %union.tree_node* %type, i32 %function_code, i32 %cl, i8* %library_name, %union.tree_node* %attrs, %union.tree_node* (%union.tree_node*)* %0) #8, !dbg !3467
  ret %union.tree_node* %call, !dbg !3468
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @add_builtin_function_common(i8* %name, %union.tree_node* %type, i32 %function_code, i32 %cl, i8* %library_name, %union.tree_node* %attrs, %union.tree_node* (%union.tree_node*)* %hook) unnamed_addr #4 !dbg !3469 {
entry:
  %decl = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata i8* %name, metadata !3474, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3475, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i32 %function_code, metadata !3476, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i32 %cl, metadata !3477, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8* %library_name, metadata !3478, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata %union.tree_node* %attrs, metadata !3479, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata %union.tree_node* (%union.tree_node*)* %hook, metadata !3480, metadata !DIExpression()), !dbg !3486
  %call = tail call %union.tree_node* @get_identifier(i8* %name) #6, !dbg !3487
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3481, metadata !DIExpression()), !dbg !3486
  %0 = bitcast %union.tree_node** %decl to i8*, !dbg !3488
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3488
  %call1 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 29, %union.tree_node* %call, %union.tree_node* %type) #6, !dbg !3489
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3482, metadata !DIExpression()), !dbg !3486
  store %union.tree_node* %call1, %union.tree_node** %decl, align 8, !dbg !3490
  %.cast = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3491
  %bf.load = load i64, i64* %.cast, align 8, !dbg !3492
  %bf.set = or i64 %bf.load, 134217728, !dbg !3492
  store i64 %bf.set, i64* %.cast, align 8, !dbg !3492
  %1 = bitcast %union.tree_node** %decl to %struct.tree_decl_common**, !dbg !3493
  %2 = load %struct.tree_decl_common*, %struct.tree_decl_common** %1, align 8, !dbg !3493
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %2, i64 0, i32 2, !dbg !3493
  %3 = bitcast i40* %decl_flag_1 to i64*, !dbg !3493
  %bf.load2 = load i64, i64* %3, align 8, !dbg !3494
  %bf.set4 = or i64 %bf.load2, 33554432, !dbg !3494
  store i64 %bf.set4, i64* %3, align 8, !dbg !3494
  %built_in_class = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %2, i64 1, i32 8, !dbg !3495
  %4 = bitcast %struct.lang_decl** %built_in_class to i32*, !dbg !3495
  %bf.load5 = load i32, i32* %4, align 8, !dbg !3496
  %bf.value = shl i32 %cl, 11, !dbg !3496
  %bf.shl = and i32 %bf.value, 6144, !dbg !3496
  %bf.clear6 = and i32 %bf.load5, -8192, !dbg !3496
  %bf.set7 = or i32 %bf.clear6, %bf.shl, !dbg !3496
  %bf.value11 = and i32 %function_code, 2047, !dbg !3497
  %bf.set13 = or i32 %bf.set7, %bf.value11, !dbg !3497
  store i32 %bf.set13, i32* %4, align 8, !dbg !3497
  %5 = icmp ult i32 %function_code, 2048, !dbg !3498
  br i1 %5, label %cond.end, label %cond.true, !dbg !3498

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 535, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3498
  br label %cond.end, !dbg !3498

cond.end:                                         ; preds = %entry, %cond.true
  %tobool = icmp eq i8* %library_name, null, !dbg !3499
  br i1 %tobool, label %if.end, label %if.then, !dbg !3500

if.then:                                          ; preds = %cond.end
  %call18 = tail call %union.tree_node* @get_identifier(i8* nonnull %library_name) #6, !dbg !3501
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !3483, metadata !DIExpression()), !dbg !3502
  %6 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %2, i64 1, i32 0, i32 0, i32 1, !dbg !3503
  store %union.tree_node* %call18, %union.tree_node** %6, align 8, !dbg !3503
  br label %if.end, !dbg !3504

if.end:                                           ; preds = %cond.end, %if.then
  %tobool19 = icmp eq %union.tree_node* %attrs, null, !dbg !3505
  br i1 %tobool19, label %if.else, label %if.then20, !dbg !3507

if.then20:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %union.tree_node** %decl, metadata !3482, metadata !DIExpression(DW_OP_deref)), !dbg !3486
  %call21 = call %union.tree_node* @decl_attributes(%union.tree_node** nonnull %decl, %union.tree_node* nonnull %attrs, i32 16) #6, !dbg !3508
  br label %if.end23, !dbg !3508

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %union.tree_node** %decl, metadata !3482, metadata !DIExpression(DW_OP_deref)), !dbg !3486
  %call22 = call %union.tree_node* @decl_attributes(%union.tree_node** nonnull %decl, %union.tree_node* null, i32 0) #6, !dbg !3509
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !3510
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !3482, metadata !DIExpression()), !dbg !3486
  %call24 = call %union.tree_node* %hook(%union.tree_node* %7) #6, !dbg !3511
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3512
  ret %union.tree_node* %call24, !dbg !3513
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @add_builtin_function_ext_scope(i8* %name, %union.tree_node* %type, i32 %function_code, i32 %cl, i8* %library_name, %union.tree_node* %attrs) local_unnamed_addr #4 !dbg !3514 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !3516, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3517, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 %function_code, metadata !3518, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 %cl, metadata !3519, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i8* %library_name, metadata !3520, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata %union.tree_node* %attrs, metadata !3521, metadata !DIExpression()), !dbg !3522
  %0 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 42), align 8, !dbg !3523
  %call = tail call fastcc %union.tree_node* @add_builtin_function_common(i8* %name, %union.tree_node* %type, i32 %function_code, i32 %cl, i8* %library_name, %union.tree_node* %attrs, %union.tree_node* (%union.tree_node*)* %0) #8, !dbg !3524
  ret %union.tree_node* %call, !dbg !3525
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @lhd_builtin_function(%union.tree_node* %decl) local_unnamed_addr #4 !dbg !3526 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3528, metadata !DIExpression()), !dbg !3529
  %0 = load %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 33, i32 1), align 8, !dbg !3530
  %call = tail call %union.tree_node* %0(%union.tree_node* %decl) #6, !dbg !3531
  ret %union.tree_node* %decl, !dbg !3532
}

; Function Attrs: nounwind uwtable
define dso_local void @lhd_begin_section(i8* %name) local_unnamed_addr #4 !dbg !3533 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !3537, metadata !DIExpression()), !dbg !3539
  %0 = load %union.section*, %union.section** @saved_section, align 8, !dbg !3540
  %tobool = icmp eq %union.section* %0, null, !dbg !3540
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3540

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 611, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3540
  br label %cond.end, !dbg !3540

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load i64, i64* bitcast (%union.section** @in_section to i64*), align 8, !dbg !3541
  store i64 %1, i64* bitcast (%union.section** @saved_section to i64*), align 8, !dbg !3542
  %tobool1 = icmp eq i64 %1, 0, !dbg !3543
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3545

if.then:                                          ; preds = %cond.end
  %2 = load i64, i64* bitcast (%union.section** @text_section to i64*), align 8, !dbg !3546
  store i64 %2, i64* bitcast (%union.section** @saved_section to i64*), align 8, !dbg !3547
  br label %if.end, !dbg !3548

if.end:                                           ; preds = %cond.end, %if.then
  %call = tail call %union.section* @get_section(i8* %name, i32 1024, %union.tree_node* null) #6, !dbg !3549
  call void @llvm.dbg.value(metadata %union.section* %call, metadata !3538, metadata !DIExpression()), !dbg !3539
  tail call void @switch_to_section(%union.section* %call) #6, !dbg !3550
  ret void, !dbg !3551
}

declare dso_local %union.section* @get_section(i8*, i32, %union.tree_node*) local_unnamed_addr #1

declare dso_local void @switch_to_section(%union.section*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lhd_append_data(i8* %data, i64 %len, i8* %block) local_unnamed_addr #4 !dbg !3552 {
entry:
  call void @llvm.dbg.value(metadata i8* %data, metadata !3556, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i64 %len, metadata !3557, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8* %block, metadata !3558, metadata !DIExpression()), !dbg !3559
  %tobool = icmp eq i8* %data, null, !dbg !3560
  br i1 %tobool, label %if.end, label %if.then, !dbg !3562

if.then:                                          ; preds = %entry
  %conv = trunc i64 %len to i32, !dbg !3563
  tail call void @assemble_string(i8* nonnull %data, i32 %conv) #6, !dbg !3564
  br label %if.end, !dbg !3564

if.end:                                           ; preds = %entry, %if.then
  tail call void @free(i8* %block) #6, !dbg !3565
  ret void, !dbg !3566
}

declare dso_local void @assemble_string(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lhd_end_section() local_unnamed_addr #4 !dbg !3567 {
entry:
  %0 = load %union.section*, %union.section** @saved_section, align 8, !dbg !3568
  %tobool = icmp eq %union.section* %0, null, !dbg !3568
  br i1 %tobool, label %if.end, label %if.then, !dbg !3570

if.then:                                          ; preds = %entry
  tail call void @switch_to_section(%union.section* nonnull %0) #6, !dbg !3571
  store %union.section* null, %union.section** @saved_section, align 8, !dbg !3573
  br label %if.end, !dbg !3574

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3575
}

declare dso_local %union.tree_node* @build_decl_stat(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @decl_attributes(%union.tree_node**, %union.tree_node*, i32) local_unnamed_addr #1

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
!llvm.module.flags = !{!2406, !2407, !2408}
!llvm.ident = !{!2409}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "saved_section", scope: !2, file: !3, line: 598, type: !1748, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1130, globals: !2405, nameTableKind: None)
!3 = !DIFile(filename: "langhooks.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !335, !340, !345, !363, !370, !377, !383, !388, !404, !410}
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
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !330, line: 363, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!331 = !{!332, !333, !334}
!332 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !330, line: 355, baseType: !7, size: 32, elements: !336)
!336 = !{!337, !338, !339}
!337 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!338 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!339 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !341, line: 474, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344}
!343 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!345 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362}
!347 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !364)
!364 = !{!365, !366, !367, !368, !369}
!365 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !371)
!371 = !{!372, !373, !374, !375, !376}
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !378, line: 104, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382}
!380 = !DIEnumerator(name: "pp_none", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "pp_before", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "pp_after", value: 2, isUnsigned: true)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !378, line: 46, baseType: !7, size: 32, elements: !384)
!384 = !{!385, !386, !387}
!385 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_ONCE", value: 0, isUnsigned: true)
!386 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_NEVER", value: 1, isUnsigned: true)
!387 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE", value: 2, isUnsigned: true)
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !389, line: 29, baseType: !7, size: 32, elements: !390)
!389 = !DIFile(filename: "./diagnostic.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403}
!391 = !DIEnumerator(name: "DK_UNSPECIFIED", value: 0, isUnsigned: true)
!392 = !DIEnumerator(name: "DK_IGNORED", value: 1, isUnsigned: true)
!393 = !DIEnumerator(name: "DK_FATAL", value: 2, isUnsigned: true)
!394 = !DIEnumerator(name: "DK_ICE", value: 3, isUnsigned: true)
!395 = !DIEnumerator(name: "DK_ERROR", value: 4, isUnsigned: true)
!396 = !DIEnumerator(name: "DK_SORRY", value: 5, isUnsigned: true)
!397 = !DIEnumerator(name: "DK_WARNING", value: 6, isUnsigned: true)
!398 = !DIEnumerator(name: "DK_ANACHRONISM", value: 7, isUnsigned: true)
!399 = !DIEnumerator(name: "DK_NOTE", value: 8, isUnsigned: true)
!400 = !DIEnumerator(name: "DK_DEBUG", value: 9, isUnsigned: true)
!401 = !DIEnumerator(name: "DK_PEDWARN", value: 10, isUnsigned: true)
!402 = !DIEnumerator(name: "DK_PERMERROR", value: 11, isUnsigned: true)
!403 = !DIEnumerator(name: "DK_LAST_DIAGNOSTIC_KIND", value: 12, isUnsigned: true)
!404 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "built_in_class", file: !135, line: 205, baseType: !7, size: 32, elements: !405)
!405 = !{!406, !407, !408, !409}
!406 = !DIEnumerator(name: "NOT_BUILT_IN", value: 0, isUnsigned: true)
!407 = !DIEnumerator(name: "BUILT_IN_FRONTEND", value: 1, isUnsigned: true)
!408 = !DIEnumerator(name: "BUILT_IN_MD", value: 2, isUnsigned: true)
!409 = !DIEnumerator(name: "BUILT_IN_NORMAL", value: 3, isUnsigned: true)
!410 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "built_in_function", file: !135, line: 220, baseType: !7, size: 32, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129}
!412 = !DIEnumerator(name: "BUILT_IN_ACOS", value: 0, isUnsigned: true)
!413 = !DIEnumerator(name: "BUILT_IN_ACOSF", value: 1, isUnsigned: true)
!414 = !DIEnumerator(name: "BUILT_IN_ACOSH", value: 2, isUnsigned: true)
!415 = !DIEnumerator(name: "BUILT_IN_ACOSHF", value: 3, isUnsigned: true)
!416 = !DIEnumerator(name: "BUILT_IN_ACOSHL", value: 4, isUnsigned: true)
!417 = !DIEnumerator(name: "BUILT_IN_ACOSL", value: 5, isUnsigned: true)
!418 = !DIEnumerator(name: "BUILT_IN_ASIN", value: 6, isUnsigned: true)
!419 = !DIEnumerator(name: "BUILT_IN_ASINF", value: 7, isUnsigned: true)
!420 = !DIEnumerator(name: "BUILT_IN_ASINH", value: 8, isUnsigned: true)
!421 = !DIEnumerator(name: "BUILT_IN_ASINHF", value: 9, isUnsigned: true)
!422 = !DIEnumerator(name: "BUILT_IN_ASINHL", value: 10, isUnsigned: true)
!423 = !DIEnumerator(name: "BUILT_IN_ASINL", value: 11, isUnsigned: true)
!424 = !DIEnumerator(name: "BUILT_IN_ATAN", value: 12, isUnsigned: true)
!425 = !DIEnumerator(name: "BUILT_IN_ATAN2", value: 13, isUnsigned: true)
!426 = !DIEnumerator(name: "BUILT_IN_ATAN2F", value: 14, isUnsigned: true)
!427 = !DIEnumerator(name: "BUILT_IN_ATAN2L", value: 15, isUnsigned: true)
!428 = !DIEnumerator(name: "BUILT_IN_ATANF", value: 16, isUnsigned: true)
!429 = !DIEnumerator(name: "BUILT_IN_ATANH", value: 17, isUnsigned: true)
!430 = !DIEnumerator(name: "BUILT_IN_ATANHF", value: 18, isUnsigned: true)
!431 = !DIEnumerator(name: "BUILT_IN_ATANHL", value: 19, isUnsigned: true)
!432 = !DIEnumerator(name: "BUILT_IN_ATANL", value: 20, isUnsigned: true)
!433 = !DIEnumerator(name: "BUILT_IN_CBRT", value: 21, isUnsigned: true)
!434 = !DIEnumerator(name: "BUILT_IN_CBRTF", value: 22, isUnsigned: true)
!435 = !DIEnumerator(name: "BUILT_IN_CBRTL", value: 23, isUnsigned: true)
!436 = !DIEnumerator(name: "BUILT_IN_CEIL", value: 24, isUnsigned: true)
!437 = !DIEnumerator(name: "BUILT_IN_CEILF", value: 25, isUnsigned: true)
!438 = !DIEnumerator(name: "BUILT_IN_CEILL", value: 26, isUnsigned: true)
!439 = !DIEnumerator(name: "BUILT_IN_COPYSIGN", value: 27, isUnsigned: true)
!440 = !DIEnumerator(name: "BUILT_IN_COPYSIGNF", value: 28, isUnsigned: true)
!441 = !DIEnumerator(name: "BUILT_IN_COPYSIGNL", value: 29, isUnsigned: true)
!442 = !DIEnumerator(name: "BUILT_IN_COS", value: 30, isUnsigned: true)
!443 = !DIEnumerator(name: "BUILT_IN_COSF", value: 31, isUnsigned: true)
!444 = !DIEnumerator(name: "BUILT_IN_COSH", value: 32, isUnsigned: true)
!445 = !DIEnumerator(name: "BUILT_IN_COSHF", value: 33, isUnsigned: true)
!446 = !DIEnumerator(name: "BUILT_IN_COSHL", value: 34, isUnsigned: true)
!447 = !DIEnumerator(name: "BUILT_IN_COSL", value: 35, isUnsigned: true)
!448 = !DIEnumerator(name: "BUILT_IN_DREM", value: 36, isUnsigned: true)
!449 = !DIEnumerator(name: "BUILT_IN_DREMF", value: 37, isUnsigned: true)
!450 = !DIEnumerator(name: "BUILT_IN_DREML", value: 38, isUnsigned: true)
!451 = !DIEnumerator(name: "BUILT_IN_ERF", value: 39, isUnsigned: true)
!452 = !DIEnumerator(name: "BUILT_IN_ERFC", value: 40, isUnsigned: true)
!453 = !DIEnumerator(name: "BUILT_IN_ERFCF", value: 41, isUnsigned: true)
!454 = !DIEnumerator(name: "BUILT_IN_ERFCL", value: 42, isUnsigned: true)
!455 = !DIEnumerator(name: "BUILT_IN_ERFF", value: 43, isUnsigned: true)
!456 = !DIEnumerator(name: "BUILT_IN_ERFL", value: 44, isUnsigned: true)
!457 = !DIEnumerator(name: "BUILT_IN_EXP", value: 45, isUnsigned: true)
!458 = !DIEnumerator(name: "BUILT_IN_EXP10", value: 46, isUnsigned: true)
!459 = !DIEnumerator(name: "BUILT_IN_EXP10F", value: 47, isUnsigned: true)
!460 = !DIEnumerator(name: "BUILT_IN_EXP10L", value: 48, isUnsigned: true)
!461 = !DIEnumerator(name: "BUILT_IN_EXP2", value: 49, isUnsigned: true)
!462 = !DIEnumerator(name: "BUILT_IN_EXP2F", value: 50, isUnsigned: true)
!463 = !DIEnumerator(name: "BUILT_IN_EXP2L", value: 51, isUnsigned: true)
!464 = !DIEnumerator(name: "BUILT_IN_EXPF", value: 52, isUnsigned: true)
!465 = !DIEnumerator(name: "BUILT_IN_EXPL", value: 53, isUnsigned: true)
!466 = !DIEnumerator(name: "BUILT_IN_EXPM1", value: 54, isUnsigned: true)
!467 = !DIEnumerator(name: "BUILT_IN_EXPM1F", value: 55, isUnsigned: true)
!468 = !DIEnumerator(name: "BUILT_IN_EXPM1L", value: 56, isUnsigned: true)
!469 = !DIEnumerator(name: "BUILT_IN_FABS", value: 57, isUnsigned: true)
!470 = !DIEnumerator(name: "BUILT_IN_FABSF", value: 58, isUnsigned: true)
!471 = !DIEnumerator(name: "BUILT_IN_FABSL", value: 59, isUnsigned: true)
!472 = !DIEnumerator(name: "BUILT_IN_FDIM", value: 60, isUnsigned: true)
!473 = !DIEnumerator(name: "BUILT_IN_FDIMF", value: 61, isUnsigned: true)
!474 = !DIEnumerator(name: "BUILT_IN_FDIML", value: 62, isUnsigned: true)
!475 = !DIEnumerator(name: "BUILT_IN_FLOOR", value: 63, isUnsigned: true)
!476 = !DIEnumerator(name: "BUILT_IN_FLOORF", value: 64, isUnsigned: true)
!477 = !DIEnumerator(name: "BUILT_IN_FLOORL", value: 65, isUnsigned: true)
!478 = !DIEnumerator(name: "BUILT_IN_FMA", value: 66, isUnsigned: true)
!479 = !DIEnumerator(name: "BUILT_IN_FMAF", value: 67, isUnsigned: true)
!480 = !DIEnumerator(name: "BUILT_IN_FMAL", value: 68, isUnsigned: true)
!481 = !DIEnumerator(name: "BUILT_IN_FMAX", value: 69, isUnsigned: true)
!482 = !DIEnumerator(name: "BUILT_IN_FMAXF", value: 70, isUnsigned: true)
!483 = !DIEnumerator(name: "BUILT_IN_FMAXL", value: 71, isUnsigned: true)
!484 = !DIEnumerator(name: "BUILT_IN_FMIN", value: 72, isUnsigned: true)
!485 = !DIEnumerator(name: "BUILT_IN_FMINF", value: 73, isUnsigned: true)
!486 = !DIEnumerator(name: "BUILT_IN_FMINL", value: 74, isUnsigned: true)
!487 = !DIEnumerator(name: "BUILT_IN_FMOD", value: 75, isUnsigned: true)
!488 = !DIEnumerator(name: "BUILT_IN_FMODF", value: 76, isUnsigned: true)
!489 = !DIEnumerator(name: "BUILT_IN_FMODL", value: 77, isUnsigned: true)
!490 = !DIEnumerator(name: "BUILT_IN_FREXP", value: 78, isUnsigned: true)
!491 = !DIEnumerator(name: "BUILT_IN_FREXPF", value: 79, isUnsigned: true)
!492 = !DIEnumerator(name: "BUILT_IN_FREXPL", value: 80, isUnsigned: true)
!493 = !DIEnumerator(name: "BUILT_IN_GAMMA", value: 81, isUnsigned: true)
!494 = !DIEnumerator(name: "BUILT_IN_GAMMAF", value: 82, isUnsigned: true)
!495 = !DIEnumerator(name: "BUILT_IN_GAMMAL", value: 83, isUnsigned: true)
!496 = !DIEnumerator(name: "BUILT_IN_GAMMA_R", value: 84, isUnsigned: true)
!497 = !DIEnumerator(name: "BUILT_IN_GAMMAF_R", value: 85, isUnsigned: true)
!498 = !DIEnumerator(name: "BUILT_IN_GAMMAL_R", value: 86, isUnsigned: true)
!499 = !DIEnumerator(name: "BUILT_IN_HUGE_VAL", value: 87, isUnsigned: true)
!500 = !DIEnumerator(name: "BUILT_IN_HUGE_VALF", value: 88, isUnsigned: true)
!501 = !DIEnumerator(name: "BUILT_IN_HUGE_VALL", value: 89, isUnsigned: true)
!502 = !DIEnumerator(name: "BUILT_IN_HYPOT", value: 90, isUnsigned: true)
!503 = !DIEnumerator(name: "BUILT_IN_HYPOTF", value: 91, isUnsigned: true)
!504 = !DIEnumerator(name: "BUILT_IN_HYPOTL", value: 92, isUnsigned: true)
!505 = !DIEnumerator(name: "BUILT_IN_ILOGB", value: 93, isUnsigned: true)
!506 = !DIEnumerator(name: "BUILT_IN_ILOGBF", value: 94, isUnsigned: true)
!507 = !DIEnumerator(name: "BUILT_IN_ILOGBL", value: 95, isUnsigned: true)
!508 = !DIEnumerator(name: "BUILT_IN_INF", value: 96, isUnsigned: true)
!509 = !DIEnumerator(name: "BUILT_IN_INFF", value: 97, isUnsigned: true)
!510 = !DIEnumerator(name: "BUILT_IN_INFL", value: 98, isUnsigned: true)
!511 = !DIEnumerator(name: "BUILT_IN_INFD32", value: 99, isUnsigned: true)
!512 = !DIEnumerator(name: "BUILT_IN_INFD64", value: 100, isUnsigned: true)
!513 = !DIEnumerator(name: "BUILT_IN_INFD128", value: 101, isUnsigned: true)
!514 = !DIEnumerator(name: "BUILT_IN_J0", value: 102, isUnsigned: true)
!515 = !DIEnumerator(name: "BUILT_IN_J0F", value: 103, isUnsigned: true)
!516 = !DIEnumerator(name: "BUILT_IN_J0L", value: 104, isUnsigned: true)
!517 = !DIEnumerator(name: "BUILT_IN_J1", value: 105, isUnsigned: true)
!518 = !DIEnumerator(name: "BUILT_IN_J1F", value: 106, isUnsigned: true)
!519 = !DIEnumerator(name: "BUILT_IN_J1L", value: 107, isUnsigned: true)
!520 = !DIEnumerator(name: "BUILT_IN_JN", value: 108, isUnsigned: true)
!521 = !DIEnumerator(name: "BUILT_IN_JNF", value: 109, isUnsigned: true)
!522 = !DIEnumerator(name: "BUILT_IN_JNL", value: 110, isUnsigned: true)
!523 = !DIEnumerator(name: "BUILT_IN_LCEIL", value: 111, isUnsigned: true)
!524 = !DIEnumerator(name: "BUILT_IN_LCEILF", value: 112, isUnsigned: true)
!525 = !DIEnumerator(name: "BUILT_IN_LCEILL", value: 113, isUnsigned: true)
!526 = !DIEnumerator(name: "BUILT_IN_LDEXP", value: 114, isUnsigned: true)
!527 = !DIEnumerator(name: "BUILT_IN_LDEXPF", value: 115, isUnsigned: true)
!528 = !DIEnumerator(name: "BUILT_IN_LDEXPL", value: 116, isUnsigned: true)
!529 = !DIEnumerator(name: "BUILT_IN_LFLOOR", value: 117, isUnsigned: true)
!530 = !DIEnumerator(name: "BUILT_IN_LFLOORF", value: 118, isUnsigned: true)
!531 = !DIEnumerator(name: "BUILT_IN_LFLOORL", value: 119, isUnsigned: true)
!532 = !DIEnumerator(name: "BUILT_IN_LGAMMA", value: 120, isUnsigned: true)
!533 = !DIEnumerator(name: "BUILT_IN_LGAMMAF", value: 121, isUnsigned: true)
!534 = !DIEnumerator(name: "BUILT_IN_LGAMMAL", value: 122, isUnsigned: true)
!535 = !DIEnumerator(name: "BUILT_IN_LGAMMA_R", value: 123, isUnsigned: true)
!536 = !DIEnumerator(name: "BUILT_IN_LGAMMAF_R", value: 124, isUnsigned: true)
!537 = !DIEnumerator(name: "BUILT_IN_LGAMMAL_R", value: 125, isUnsigned: true)
!538 = !DIEnumerator(name: "BUILT_IN_LLCEIL", value: 126, isUnsigned: true)
!539 = !DIEnumerator(name: "BUILT_IN_LLCEILF", value: 127, isUnsigned: true)
!540 = !DIEnumerator(name: "BUILT_IN_LLCEILL", value: 128, isUnsigned: true)
!541 = !DIEnumerator(name: "BUILT_IN_LLFLOOR", value: 129, isUnsigned: true)
!542 = !DIEnumerator(name: "BUILT_IN_LLFLOORF", value: 130, isUnsigned: true)
!543 = !DIEnumerator(name: "BUILT_IN_LLFLOORL", value: 131, isUnsigned: true)
!544 = !DIEnumerator(name: "BUILT_IN_LLRINT", value: 132, isUnsigned: true)
!545 = !DIEnumerator(name: "BUILT_IN_LLRINTF", value: 133, isUnsigned: true)
!546 = !DIEnumerator(name: "BUILT_IN_LLRINTL", value: 134, isUnsigned: true)
!547 = !DIEnumerator(name: "BUILT_IN_LLROUND", value: 135, isUnsigned: true)
!548 = !DIEnumerator(name: "BUILT_IN_LLROUNDF", value: 136, isUnsigned: true)
!549 = !DIEnumerator(name: "BUILT_IN_LLROUNDL", value: 137, isUnsigned: true)
!550 = !DIEnumerator(name: "BUILT_IN_LOG", value: 138, isUnsigned: true)
!551 = !DIEnumerator(name: "BUILT_IN_LOG10", value: 139, isUnsigned: true)
!552 = !DIEnumerator(name: "BUILT_IN_LOG10F", value: 140, isUnsigned: true)
!553 = !DIEnumerator(name: "BUILT_IN_LOG10L", value: 141, isUnsigned: true)
!554 = !DIEnumerator(name: "BUILT_IN_LOG1P", value: 142, isUnsigned: true)
!555 = !DIEnumerator(name: "BUILT_IN_LOG1PF", value: 143, isUnsigned: true)
!556 = !DIEnumerator(name: "BUILT_IN_LOG1PL", value: 144, isUnsigned: true)
!557 = !DIEnumerator(name: "BUILT_IN_LOG2", value: 145, isUnsigned: true)
!558 = !DIEnumerator(name: "BUILT_IN_LOG2F", value: 146, isUnsigned: true)
!559 = !DIEnumerator(name: "BUILT_IN_LOG2L", value: 147, isUnsigned: true)
!560 = !DIEnumerator(name: "BUILT_IN_LOGB", value: 148, isUnsigned: true)
!561 = !DIEnumerator(name: "BUILT_IN_LOGBF", value: 149, isUnsigned: true)
!562 = !DIEnumerator(name: "BUILT_IN_LOGBL", value: 150, isUnsigned: true)
!563 = !DIEnumerator(name: "BUILT_IN_LOGF", value: 151, isUnsigned: true)
!564 = !DIEnumerator(name: "BUILT_IN_LOGL", value: 152, isUnsigned: true)
!565 = !DIEnumerator(name: "BUILT_IN_LRINT", value: 153, isUnsigned: true)
!566 = !DIEnumerator(name: "BUILT_IN_LRINTF", value: 154, isUnsigned: true)
!567 = !DIEnumerator(name: "BUILT_IN_LRINTL", value: 155, isUnsigned: true)
!568 = !DIEnumerator(name: "BUILT_IN_LROUND", value: 156, isUnsigned: true)
!569 = !DIEnumerator(name: "BUILT_IN_LROUNDF", value: 157, isUnsigned: true)
!570 = !DIEnumerator(name: "BUILT_IN_LROUNDL", value: 158, isUnsigned: true)
!571 = !DIEnumerator(name: "BUILT_IN_MODF", value: 159, isUnsigned: true)
!572 = !DIEnumerator(name: "BUILT_IN_MODFF", value: 160, isUnsigned: true)
!573 = !DIEnumerator(name: "BUILT_IN_MODFL", value: 161, isUnsigned: true)
!574 = !DIEnumerator(name: "BUILT_IN_NAN", value: 162, isUnsigned: true)
!575 = !DIEnumerator(name: "BUILT_IN_NANF", value: 163, isUnsigned: true)
!576 = !DIEnumerator(name: "BUILT_IN_NANL", value: 164, isUnsigned: true)
!577 = !DIEnumerator(name: "BUILT_IN_NAND32", value: 165, isUnsigned: true)
!578 = !DIEnumerator(name: "BUILT_IN_NAND64", value: 166, isUnsigned: true)
!579 = !DIEnumerator(name: "BUILT_IN_NAND128", value: 167, isUnsigned: true)
!580 = !DIEnumerator(name: "BUILT_IN_NANS", value: 168, isUnsigned: true)
!581 = !DIEnumerator(name: "BUILT_IN_NANSF", value: 169, isUnsigned: true)
!582 = !DIEnumerator(name: "BUILT_IN_NANSL", value: 170, isUnsigned: true)
!583 = !DIEnumerator(name: "BUILT_IN_NEARBYINT", value: 171, isUnsigned: true)
!584 = !DIEnumerator(name: "BUILT_IN_NEARBYINTF", value: 172, isUnsigned: true)
!585 = !DIEnumerator(name: "BUILT_IN_NEARBYINTL", value: 173, isUnsigned: true)
!586 = !DIEnumerator(name: "BUILT_IN_NEXTAFTER", value: 174, isUnsigned: true)
!587 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERF", value: 175, isUnsigned: true)
!588 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERL", value: 176, isUnsigned: true)
!589 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARD", value: 177, isUnsigned: true)
!590 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDF", value: 178, isUnsigned: true)
!591 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDL", value: 179, isUnsigned: true)
!592 = !DIEnumerator(name: "BUILT_IN_POW", value: 180, isUnsigned: true)
!593 = !DIEnumerator(name: "BUILT_IN_POW10", value: 181, isUnsigned: true)
!594 = !DIEnumerator(name: "BUILT_IN_POW10F", value: 182, isUnsigned: true)
!595 = !DIEnumerator(name: "BUILT_IN_POW10L", value: 183, isUnsigned: true)
!596 = !DIEnumerator(name: "BUILT_IN_POWF", value: 184, isUnsigned: true)
!597 = !DIEnumerator(name: "BUILT_IN_POWI", value: 185, isUnsigned: true)
!598 = !DIEnumerator(name: "BUILT_IN_POWIF", value: 186, isUnsigned: true)
!599 = !DIEnumerator(name: "BUILT_IN_POWIL", value: 187, isUnsigned: true)
!600 = !DIEnumerator(name: "BUILT_IN_POWL", value: 188, isUnsigned: true)
!601 = !DIEnumerator(name: "BUILT_IN_REMAINDER", value: 189, isUnsigned: true)
!602 = !DIEnumerator(name: "BUILT_IN_REMAINDERF", value: 190, isUnsigned: true)
!603 = !DIEnumerator(name: "BUILT_IN_REMAINDERL", value: 191, isUnsigned: true)
!604 = !DIEnumerator(name: "BUILT_IN_REMQUO", value: 192, isUnsigned: true)
!605 = !DIEnumerator(name: "BUILT_IN_REMQUOF", value: 193, isUnsigned: true)
!606 = !DIEnumerator(name: "BUILT_IN_REMQUOL", value: 194, isUnsigned: true)
!607 = !DIEnumerator(name: "BUILT_IN_RINT", value: 195, isUnsigned: true)
!608 = !DIEnumerator(name: "BUILT_IN_RINTF", value: 196, isUnsigned: true)
!609 = !DIEnumerator(name: "BUILT_IN_RINTL", value: 197, isUnsigned: true)
!610 = !DIEnumerator(name: "BUILT_IN_ROUND", value: 198, isUnsigned: true)
!611 = !DIEnumerator(name: "BUILT_IN_ROUNDF", value: 199, isUnsigned: true)
!612 = !DIEnumerator(name: "BUILT_IN_ROUNDL", value: 200, isUnsigned: true)
!613 = !DIEnumerator(name: "BUILT_IN_SCALB", value: 201, isUnsigned: true)
!614 = !DIEnumerator(name: "BUILT_IN_SCALBF", value: 202, isUnsigned: true)
!615 = !DIEnumerator(name: "BUILT_IN_SCALBL", value: 203, isUnsigned: true)
!616 = !DIEnumerator(name: "BUILT_IN_SCALBLN", value: 204, isUnsigned: true)
!617 = !DIEnumerator(name: "BUILT_IN_SCALBLNF", value: 205, isUnsigned: true)
!618 = !DIEnumerator(name: "BUILT_IN_SCALBLNL", value: 206, isUnsigned: true)
!619 = !DIEnumerator(name: "BUILT_IN_SCALBN", value: 207, isUnsigned: true)
!620 = !DIEnumerator(name: "BUILT_IN_SCALBNF", value: 208, isUnsigned: true)
!621 = !DIEnumerator(name: "BUILT_IN_SCALBNL", value: 209, isUnsigned: true)
!622 = !DIEnumerator(name: "BUILT_IN_SIGNBIT", value: 210, isUnsigned: true)
!623 = !DIEnumerator(name: "BUILT_IN_SIGNBITF", value: 211, isUnsigned: true)
!624 = !DIEnumerator(name: "BUILT_IN_SIGNBITL", value: 212, isUnsigned: true)
!625 = !DIEnumerator(name: "BUILT_IN_SIGNBITD32", value: 213, isUnsigned: true)
!626 = !DIEnumerator(name: "BUILT_IN_SIGNBITD64", value: 214, isUnsigned: true)
!627 = !DIEnumerator(name: "BUILT_IN_SIGNBITD128", value: 215, isUnsigned: true)
!628 = !DIEnumerator(name: "BUILT_IN_SIGNIFICAND", value: 216, isUnsigned: true)
!629 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDF", value: 217, isUnsigned: true)
!630 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDL", value: 218, isUnsigned: true)
!631 = !DIEnumerator(name: "BUILT_IN_SIN", value: 219, isUnsigned: true)
!632 = !DIEnumerator(name: "BUILT_IN_SINCOS", value: 220, isUnsigned: true)
!633 = !DIEnumerator(name: "BUILT_IN_SINCOSF", value: 221, isUnsigned: true)
!634 = !DIEnumerator(name: "BUILT_IN_SINCOSL", value: 222, isUnsigned: true)
!635 = !DIEnumerator(name: "BUILT_IN_SINF", value: 223, isUnsigned: true)
!636 = !DIEnumerator(name: "BUILT_IN_SINH", value: 224, isUnsigned: true)
!637 = !DIEnumerator(name: "BUILT_IN_SINHF", value: 225, isUnsigned: true)
!638 = !DIEnumerator(name: "BUILT_IN_SINHL", value: 226, isUnsigned: true)
!639 = !DIEnumerator(name: "BUILT_IN_SINL", value: 227, isUnsigned: true)
!640 = !DIEnumerator(name: "BUILT_IN_SQRT", value: 228, isUnsigned: true)
!641 = !DIEnumerator(name: "BUILT_IN_SQRTF", value: 229, isUnsigned: true)
!642 = !DIEnumerator(name: "BUILT_IN_SQRTL", value: 230, isUnsigned: true)
!643 = !DIEnumerator(name: "BUILT_IN_TAN", value: 231, isUnsigned: true)
!644 = !DIEnumerator(name: "BUILT_IN_TANF", value: 232, isUnsigned: true)
!645 = !DIEnumerator(name: "BUILT_IN_TANH", value: 233, isUnsigned: true)
!646 = !DIEnumerator(name: "BUILT_IN_TANHF", value: 234, isUnsigned: true)
!647 = !DIEnumerator(name: "BUILT_IN_TANHL", value: 235, isUnsigned: true)
!648 = !DIEnumerator(name: "BUILT_IN_TANL", value: 236, isUnsigned: true)
!649 = !DIEnumerator(name: "BUILT_IN_TGAMMA", value: 237, isUnsigned: true)
!650 = !DIEnumerator(name: "BUILT_IN_TGAMMAF", value: 238, isUnsigned: true)
!651 = !DIEnumerator(name: "BUILT_IN_TGAMMAL", value: 239, isUnsigned: true)
!652 = !DIEnumerator(name: "BUILT_IN_TRUNC", value: 240, isUnsigned: true)
!653 = !DIEnumerator(name: "BUILT_IN_TRUNCF", value: 241, isUnsigned: true)
!654 = !DIEnumerator(name: "BUILT_IN_TRUNCL", value: 242, isUnsigned: true)
!655 = !DIEnumerator(name: "BUILT_IN_Y0", value: 243, isUnsigned: true)
!656 = !DIEnumerator(name: "BUILT_IN_Y0F", value: 244, isUnsigned: true)
!657 = !DIEnumerator(name: "BUILT_IN_Y0L", value: 245, isUnsigned: true)
!658 = !DIEnumerator(name: "BUILT_IN_Y1", value: 246, isUnsigned: true)
!659 = !DIEnumerator(name: "BUILT_IN_Y1F", value: 247, isUnsigned: true)
!660 = !DIEnumerator(name: "BUILT_IN_Y1L", value: 248, isUnsigned: true)
!661 = !DIEnumerator(name: "BUILT_IN_YN", value: 249, isUnsigned: true)
!662 = !DIEnumerator(name: "BUILT_IN_YNF", value: 250, isUnsigned: true)
!663 = !DIEnumerator(name: "BUILT_IN_YNL", value: 251, isUnsigned: true)
!664 = !DIEnumerator(name: "BUILT_IN_CABS", value: 252, isUnsigned: true)
!665 = !DIEnumerator(name: "BUILT_IN_CABSF", value: 253, isUnsigned: true)
!666 = !DIEnumerator(name: "BUILT_IN_CABSL", value: 254, isUnsigned: true)
!667 = !DIEnumerator(name: "BUILT_IN_CACOS", value: 255, isUnsigned: true)
!668 = !DIEnumerator(name: "BUILT_IN_CACOSF", value: 256, isUnsigned: true)
!669 = !DIEnumerator(name: "BUILT_IN_CACOSH", value: 257, isUnsigned: true)
!670 = !DIEnumerator(name: "BUILT_IN_CACOSHF", value: 258, isUnsigned: true)
!671 = !DIEnumerator(name: "BUILT_IN_CACOSHL", value: 259, isUnsigned: true)
!672 = !DIEnumerator(name: "BUILT_IN_CACOSL", value: 260, isUnsigned: true)
!673 = !DIEnumerator(name: "BUILT_IN_CARG", value: 261, isUnsigned: true)
!674 = !DIEnumerator(name: "BUILT_IN_CARGF", value: 262, isUnsigned: true)
!675 = !DIEnumerator(name: "BUILT_IN_CARGL", value: 263, isUnsigned: true)
!676 = !DIEnumerator(name: "BUILT_IN_CASIN", value: 264, isUnsigned: true)
!677 = !DIEnumerator(name: "BUILT_IN_CASINF", value: 265, isUnsigned: true)
!678 = !DIEnumerator(name: "BUILT_IN_CASINH", value: 266, isUnsigned: true)
!679 = !DIEnumerator(name: "BUILT_IN_CASINHF", value: 267, isUnsigned: true)
!680 = !DIEnumerator(name: "BUILT_IN_CASINHL", value: 268, isUnsigned: true)
!681 = !DIEnumerator(name: "BUILT_IN_CASINL", value: 269, isUnsigned: true)
!682 = !DIEnumerator(name: "BUILT_IN_CATAN", value: 270, isUnsigned: true)
!683 = !DIEnumerator(name: "BUILT_IN_CATANF", value: 271, isUnsigned: true)
!684 = !DIEnumerator(name: "BUILT_IN_CATANH", value: 272, isUnsigned: true)
!685 = !DIEnumerator(name: "BUILT_IN_CATANHF", value: 273, isUnsigned: true)
!686 = !DIEnumerator(name: "BUILT_IN_CATANHL", value: 274, isUnsigned: true)
!687 = !DIEnumerator(name: "BUILT_IN_CATANL", value: 275, isUnsigned: true)
!688 = !DIEnumerator(name: "BUILT_IN_CCOS", value: 276, isUnsigned: true)
!689 = !DIEnumerator(name: "BUILT_IN_CCOSF", value: 277, isUnsigned: true)
!690 = !DIEnumerator(name: "BUILT_IN_CCOSH", value: 278, isUnsigned: true)
!691 = !DIEnumerator(name: "BUILT_IN_CCOSHF", value: 279, isUnsigned: true)
!692 = !DIEnumerator(name: "BUILT_IN_CCOSHL", value: 280, isUnsigned: true)
!693 = !DIEnumerator(name: "BUILT_IN_CCOSL", value: 281, isUnsigned: true)
!694 = !DIEnumerator(name: "BUILT_IN_CEXP", value: 282, isUnsigned: true)
!695 = !DIEnumerator(name: "BUILT_IN_CEXPF", value: 283, isUnsigned: true)
!696 = !DIEnumerator(name: "BUILT_IN_CEXPL", value: 284, isUnsigned: true)
!697 = !DIEnumerator(name: "BUILT_IN_CEXPI", value: 285, isUnsigned: true)
!698 = !DIEnumerator(name: "BUILT_IN_CEXPIF", value: 286, isUnsigned: true)
!699 = !DIEnumerator(name: "BUILT_IN_CEXPIL", value: 287, isUnsigned: true)
!700 = !DIEnumerator(name: "BUILT_IN_CIMAG", value: 288, isUnsigned: true)
!701 = !DIEnumerator(name: "BUILT_IN_CIMAGF", value: 289, isUnsigned: true)
!702 = !DIEnumerator(name: "BUILT_IN_CIMAGL", value: 290, isUnsigned: true)
!703 = !DIEnumerator(name: "BUILT_IN_CLOG", value: 291, isUnsigned: true)
!704 = !DIEnumerator(name: "BUILT_IN_CLOGF", value: 292, isUnsigned: true)
!705 = !DIEnumerator(name: "BUILT_IN_CLOGL", value: 293, isUnsigned: true)
!706 = !DIEnumerator(name: "BUILT_IN_CLOG10", value: 294, isUnsigned: true)
!707 = !DIEnumerator(name: "BUILT_IN_CLOG10F", value: 295, isUnsigned: true)
!708 = !DIEnumerator(name: "BUILT_IN_CLOG10L", value: 296, isUnsigned: true)
!709 = !DIEnumerator(name: "BUILT_IN_CONJ", value: 297, isUnsigned: true)
!710 = !DIEnumerator(name: "BUILT_IN_CONJF", value: 298, isUnsigned: true)
!711 = !DIEnumerator(name: "BUILT_IN_CONJL", value: 299, isUnsigned: true)
!712 = !DIEnumerator(name: "BUILT_IN_CPOW", value: 300, isUnsigned: true)
!713 = !DIEnumerator(name: "BUILT_IN_CPOWF", value: 301, isUnsigned: true)
!714 = !DIEnumerator(name: "BUILT_IN_CPOWL", value: 302, isUnsigned: true)
!715 = !DIEnumerator(name: "BUILT_IN_CPROJ", value: 303, isUnsigned: true)
!716 = !DIEnumerator(name: "BUILT_IN_CPROJF", value: 304, isUnsigned: true)
!717 = !DIEnumerator(name: "BUILT_IN_CPROJL", value: 305, isUnsigned: true)
!718 = !DIEnumerator(name: "BUILT_IN_CREAL", value: 306, isUnsigned: true)
!719 = !DIEnumerator(name: "BUILT_IN_CREALF", value: 307, isUnsigned: true)
!720 = !DIEnumerator(name: "BUILT_IN_CREALL", value: 308, isUnsigned: true)
!721 = !DIEnumerator(name: "BUILT_IN_CSIN", value: 309, isUnsigned: true)
!722 = !DIEnumerator(name: "BUILT_IN_CSINF", value: 310, isUnsigned: true)
!723 = !DIEnumerator(name: "BUILT_IN_CSINH", value: 311, isUnsigned: true)
!724 = !DIEnumerator(name: "BUILT_IN_CSINHF", value: 312, isUnsigned: true)
!725 = !DIEnumerator(name: "BUILT_IN_CSINHL", value: 313, isUnsigned: true)
!726 = !DIEnumerator(name: "BUILT_IN_CSINL", value: 314, isUnsigned: true)
!727 = !DIEnumerator(name: "BUILT_IN_CSQRT", value: 315, isUnsigned: true)
!728 = !DIEnumerator(name: "BUILT_IN_CSQRTF", value: 316, isUnsigned: true)
!729 = !DIEnumerator(name: "BUILT_IN_CSQRTL", value: 317, isUnsigned: true)
!730 = !DIEnumerator(name: "BUILT_IN_CTAN", value: 318, isUnsigned: true)
!731 = !DIEnumerator(name: "BUILT_IN_CTANF", value: 319, isUnsigned: true)
!732 = !DIEnumerator(name: "BUILT_IN_CTANH", value: 320, isUnsigned: true)
!733 = !DIEnumerator(name: "BUILT_IN_CTANHF", value: 321, isUnsigned: true)
!734 = !DIEnumerator(name: "BUILT_IN_CTANHL", value: 322, isUnsigned: true)
!735 = !DIEnumerator(name: "BUILT_IN_CTANL", value: 323, isUnsigned: true)
!736 = !DIEnumerator(name: "BUILT_IN_BCMP", value: 324, isUnsigned: true)
!737 = !DIEnumerator(name: "BUILT_IN_BCOPY", value: 325, isUnsigned: true)
!738 = !DIEnumerator(name: "BUILT_IN_BZERO", value: 326, isUnsigned: true)
!739 = !DIEnumerator(name: "BUILT_IN_INDEX", value: 327, isUnsigned: true)
!740 = !DIEnumerator(name: "BUILT_IN_MEMCHR", value: 328, isUnsigned: true)
!741 = !DIEnumerator(name: "BUILT_IN_MEMCMP", value: 329, isUnsigned: true)
!742 = !DIEnumerator(name: "BUILT_IN_MEMCPY", value: 330, isUnsigned: true)
!743 = !DIEnumerator(name: "BUILT_IN_MEMMOVE", value: 331, isUnsigned: true)
!744 = !DIEnumerator(name: "BUILT_IN_MEMPCPY", value: 332, isUnsigned: true)
!745 = !DIEnumerator(name: "BUILT_IN_MEMSET", value: 333, isUnsigned: true)
!746 = !DIEnumerator(name: "BUILT_IN_RINDEX", value: 334, isUnsigned: true)
!747 = !DIEnumerator(name: "BUILT_IN_STPCPY", value: 335, isUnsigned: true)
!748 = !DIEnumerator(name: "BUILT_IN_STPNCPY", value: 336, isUnsigned: true)
!749 = !DIEnumerator(name: "BUILT_IN_STRCASECMP", value: 337, isUnsigned: true)
!750 = !DIEnumerator(name: "BUILT_IN_STRCAT", value: 338, isUnsigned: true)
!751 = !DIEnumerator(name: "BUILT_IN_STRCHR", value: 339, isUnsigned: true)
!752 = !DIEnumerator(name: "BUILT_IN_STRCMP", value: 340, isUnsigned: true)
!753 = !DIEnumerator(name: "BUILT_IN_STRCPY", value: 341, isUnsigned: true)
!754 = !DIEnumerator(name: "BUILT_IN_STRCSPN", value: 342, isUnsigned: true)
!755 = !DIEnumerator(name: "BUILT_IN_STRDUP", value: 343, isUnsigned: true)
!756 = !DIEnumerator(name: "BUILT_IN_STRNDUP", value: 344, isUnsigned: true)
!757 = !DIEnumerator(name: "BUILT_IN_STRLEN", value: 345, isUnsigned: true)
!758 = !DIEnumerator(name: "BUILT_IN_STRNCASECMP", value: 346, isUnsigned: true)
!759 = !DIEnumerator(name: "BUILT_IN_STRNCAT", value: 347, isUnsigned: true)
!760 = !DIEnumerator(name: "BUILT_IN_STRNCMP", value: 348, isUnsigned: true)
!761 = !DIEnumerator(name: "BUILT_IN_STRNCPY", value: 349, isUnsigned: true)
!762 = !DIEnumerator(name: "BUILT_IN_STRPBRK", value: 350, isUnsigned: true)
!763 = !DIEnumerator(name: "BUILT_IN_STRRCHR", value: 351, isUnsigned: true)
!764 = !DIEnumerator(name: "BUILT_IN_STRSPN", value: 352, isUnsigned: true)
!765 = !DIEnumerator(name: "BUILT_IN_STRSTR", value: 353, isUnsigned: true)
!766 = !DIEnumerator(name: "BUILT_IN_FPRINTF", value: 354, isUnsigned: true)
!767 = !DIEnumerator(name: "BUILT_IN_FPRINTF_UNLOCKED", value: 355, isUnsigned: true)
!768 = !DIEnumerator(name: "BUILT_IN_PUTC", value: 356, isUnsigned: true)
!769 = !DIEnumerator(name: "BUILT_IN_PUTC_UNLOCKED", value: 357, isUnsigned: true)
!770 = !DIEnumerator(name: "BUILT_IN_FPUTC", value: 358, isUnsigned: true)
!771 = !DIEnumerator(name: "BUILT_IN_FPUTC_UNLOCKED", value: 359, isUnsigned: true)
!772 = !DIEnumerator(name: "BUILT_IN_FPUTS", value: 360, isUnsigned: true)
!773 = !DIEnumerator(name: "BUILT_IN_FPUTS_UNLOCKED", value: 361, isUnsigned: true)
!774 = !DIEnumerator(name: "BUILT_IN_FSCANF", value: 362, isUnsigned: true)
!775 = !DIEnumerator(name: "BUILT_IN_FWRITE", value: 363, isUnsigned: true)
!776 = !DIEnumerator(name: "BUILT_IN_FWRITE_UNLOCKED", value: 364, isUnsigned: true)
!777 = !DIEnumerator(name: "BUILT_IN_PRINTF", value: 365, isUnsigned: true)
!778 = !DIEnumerator(name: "BUILT_IN_PRINTF_UNLOCKED", value: 366, isUnsigned: true)
!779 = !DIEnumerator(name: "BUILT_IN_PUTCHAR", value: 367, isUnsigned: true)
!780 = !DIEnumerator(name: "BUILT_IN_PUTCHAR_UNLOCKED", value: 368, isUnsigned: true)
!781 = !DIEnumerator(name: "BUILT_IN_PUTS", value: 369, isUnsigned: true)
!782 = !DIEnumerator(name: "BUILT_IN_PUTS_UNLOCKED", value: 370, isUnsigned: true)
!783 = !DIEnumerator(name: "BUILT_IN_SCANF", value: 371, isUnsigned: true)
!784 = !DIEnumerator(name: "BUILT_IN_SNPRINTF", value: 372, isUnsigned: true)
!785 = !DIEnumerator(name: "BUILT_IN_SPRINTF", value: 373, isUnsigned: true)
!786 = !DIEnumerator(name: "BUILT_IN_SSCANF", value: 374, isUnsigned: true)
!787 = !DIEnumerator(name: "BUILT_IN_VFPRINTF", value: 375, isUnsigned: true)
!788 = !DIEnumerator(name: "BUILT_IN_VFSCANF", value: 376, isUnsigned: true)
!789 = !DIEnumerator(name: "BUILT_IN_VPRINTF", value: 377, isUnsigned: true)
!790 = !DIEnumerator(name: "BUILT_IN_VSCANF", value: 378, isUnsigned: true)
!791 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF", value: 379, isUnsigned: true)
!792 = !DIEnumerator(name: "BUILT_IN_VSPRINTF", value: 380, isUnsigned: true)
!793 = !DIEnumerator(name: "BUILT_IN_VSSCANF", value: 381, isUnsigned: true)
!794 = !DIEnumerator(name: "BUILT_IN_ISALNUM", value: 382, isUnsigned: true)
!795 = !DIEnumerator(name: "BUILT_IN_ISALPHA", value: 383, isUnsigned: true)
!796 = !DIEnumerator(name: "BUILT_IN_ISASCII", value: 384, isUnsigned: true)
!797 = !DIEnumerator(name: "BUILT_IN_ISBLANK", value: 385, isUnsigned: true)
!798 = !DIEnumerator(name: "BUILT_IN_ISCNTRL", value: 386, isUnsigned: true)
!799 = !DIEnumerator(name: "BUILT_IN_ISDIGIT", value: 387, isUnsigned: true)
!800 = !DIEnumerator(name: "BUILT_IN_ISGRAPH", value: 388, isUnsigned: true)
!801 = !DIEnumerator(name: "BUILT_IN_ISLOWER", value: 389, isUnsigned: true)
!802 = !DIEnumerator(name: "BUILT_IN_ISPRINT", value: 390, isUnsigned: true)
!803 = !DIEnumerator(name: "BUILT_IN_ISPUNCT", value: 391, isUnsigned: true)
!804 = !DIEnumerator(name: "BUILT_IN_ISSPACE", value: 392, isUnsigned: true)
!805 = !DIEnumerator(name: "BUILT_IN_ISUPPER", value: 393, isUnsigned: true)
!806 = !DIEnumerator(name: "BUILT_IN_ISXDIGIT", value: 394, isUnsigned: true)
!807 = !DIEnumerator(name: "BUILT_IN_TOASCII", value: 395, isUnsigned: true)
!808 = !DIEnumerator(name: "BUILT_IN_TOLOWER", value: 396, isUnsigned: true)
!809 = !DIEnumerator(name: "BUILT_IN_TOUPPER", value: 397, isUnsigned: true)
!810 = !DIEnumerator(name: "BUILT_IN_ISWALNUM", value: 398, isUnsigned: true)
!811 = !DIEnumerator(name: "BUILT_IN_ISWALPHA", value: 399, isUnsigned: true)
!812 = !DIEnumerator(name: "BUILT_IN_ISWBLANK", value: 400, isUnsigned: true)
!813 = !DIEnumerator(name: "BUILT_IN_ISWCNTRL", value: 401, isUnsigned: true)
!814 = !DIEnumerator(name: "BUILT_IN_ISWDIGIT", value: 402, isUnsigned: true)
!815 = !DIEnumerator(name: "BUILT_IN_ISWGRAPH", value: 403, isUnsigned: true)
!816 = !DIEnumerator(name: "BUILT_IN_ISWLOWER", value: 404, isUnsigned: true)
!817 = !DIEnumerator(name: "BUILT_IN_ISWPRINT", value: 405, isUnsigned: true)
!818 = !DIEnumerator(name: "BUILT_IN_ISWPUNCT", value: 406, isUnsigned: true)
!819 = !DIEnumerator(name: "BUILT_IN_ISWSPACE", value: 407, isUnsigned: true)
!820 = !DIEnumerator(name: "BUILT_IN_ISWUPPER", value: 408, isUnsigned: true)
!821 = !DIEnumerator(name: "BUILT_IN_ISWXDIGIT", value: 409, isUnsigned: true)
!822 = !DIEnumerator(name: "BUILT_IN_TOWLOWER", value: 410, isUnsigned: true)
!823 = !DIEnumerator(name: "BUILT_IN_TOWUPPER", value: 411, isUnsigned: true)
!824 = !DIEnumerator(name: "BUILT_IN_ABORT", value: 412, isUnsigned: true)
!825 = !DIEnumerator(name: "BUILT_IN_ABS", value: 413, isUnsigned: true)
!826 = !DIEnumerator(name: "BUILT_IN_AGGREGATE_INCOMING_ADDRESS", value: 414, isUnsigned: true)
!827 = !DIEnumerator(name: "BUILT_IN_ALLOCA", value: 415, isUnsigned: true)
!828 = !DIEnumerator(name: "BUILT_IN_APPLY", value: 416, isUnsigned: true)
!829 = !DIEnumerator(name: "BUILT_IN_APPLY_ARGS", value: 417, isUnsigned: true)
!830 = !DIEnumerator(name: "BUILT_IN_ARGS_INFO", value: 418, isUnsigned: true)
!831 = !DIEnumerator(name: "BUILT_IN_BSWAP32", value: 419, isUnsigned: true)
!832 = !DIEnumerator(name: "BUILT_IN_BSWAP64", value: 420, isUnsigned: true)
!833 = !DIEnumerator(name: "BUILT_IN_CLEAR_CACHE", value: 421, isUnsigned: true)
!834 = !DIEnumerator(name: "BUILT_IN_CALLOC", value: 422, isUnsigned: true)
!835 = !DIEnumerator(name: "BUILT_IN_CLASSIFY_TYPE", value: 423, isUnsigned: true)
!836 = !DIEnumerator(name: "BUILT_IN_CLZ", value: 424, isUnsigned: true)
!837 = !DIEnumerator(name: "BUILT_IN_CLZIMAX", value: 425, isUnsigned: true)
!838 = !DIEnumerator(name: "BUILT_IN_CLZL", value: 426, isUnsigned: true)
!839 = !DIEnumerator(name: "BUILT_IN_CLZLL", value: 427, isUnsigned: true)
!840 = !DIEnumerator(name: "BUILT_IN_CONSTANT_P", value: 428, isUnsigned: true)
!841 = !DIEnumerator(name: "BUILT_IN_CTZ", value: 429, isUnsigned: true)
!842 = !DIEnumerator(name: "BUILT_IN_CTZIMAX", value: 430, isUnsigned: true)
!843 = !DIEnumerator(name: "BUILT_IN_CTZL", value: 431, isUnsigned: true)
!844 = !DIEnumerator(name: "BUILT_IN_CTZLL", value: 432, isUnsigned: true)
!845 = !DIEnumerator(name: "BUILT_IN_DCGETTEXT", value: 433, isUnsigned: true)
!846 = !DIEnumerator(name: "BUILT_IN_DGETTEXT", value: 434, isUnsigned: true)
!847 = !DIEnumerator(name: "BUILT_IN_DWARF_CFA", value: 435, isUnsigned: true)
!848 = !DIEnumerator(name: "BUILT_IN_DWARF_SP_COLUMN", value: 436, isUnsigned: true)
!849 = !DIEnumerator(name: "BUILT_IN_EH_RETURN", value: 437, isUnsigned: true)
!850 = !DIEnumerator(name: "BUILT_IN_EH_RETURN_DATA_REGNO", value: 438, isUnsigned: true)
!851 = !DIEnumerator(name: "BUILT_IN_EXECL", value: 439, isUnsigned: true)
!852 = !DIEnumerator(name: "BUILT_IN_EXECLP", value: 440, isUnsigned: true)
!853 = !DIEnumerator(name: "BUILT_IN_EXECLE", value: 441, isUnsigned: true)
!854 = !DIEnumerator(name: "BUILT_IN_EXECV", value: 442, isUnsigned: true)
!855 = !DIEnumerator(name: "BUILT_IN_EXECVP", value: 443, isUnsigned: true)
!856 = !DIEnumerator(name: "BUILT_IN_EXECVE", value: 444, isUnsigned: true)
!857 = !DIEnumerator(name: "BUILT_IN_EXIT", value: 445, isUnsigned: true)
!858 = !DIEnumerator(name: "BUILT_IN_EXPECT", value: 446, isUnsigned: true)
!859 = !DIEnumerator(name: "BUILT_IN_EXTEND_POINTER", value: 447, isUnsigned: true)
!860 = !DIEnumerator(name: "BUILT_IN_EXTRACT_RETURN_ADDR", value: 448, isUnsigned: true)
!861 = !DIEnumerator(name: "BUILT_IN_FFS", value: 449, isUnsigned: true)
!862 = !DIEnumerator(name: "BUILT_IN_FFSIMAX", value: 450, isUnsigned: true)
!863 = !DIEnumerator(name: "BUILT_IN_FFSL", value: 451, isUnsigned: true)
!864 = !DIEnumerator(name: "BUILT_IN_FFSLL", value: 452, isUnsigned: true)
!865 = !DIEnumerator(name: "BUILT_IN_FORK", value: 453, isUnsigned: true)
!866 = !DIEnumerator(name: "BUILT_IN_FRAME_ADDRESS", value: 454, isUnsigned: true)
!867 = !DIEnumerator(name: "BUILT_IN_FREE", value: 455, isUnsigned: true)
!868 = !DIEnumerator(name: "BUILT_IN_FROB_RETURN_ADDR", value: 456, isUnsigned: true)
!869 = !DIEnumerator(name: "BUILT_IN_GETTEXT", value: 457, isUnsigned: true)
!870 = !DIEnumerator(name: "BUILT_IN_IMAXABS", value: 458, isUnsigned: true)
!871 = !DIEnumerator(name: "BUILT_IN_INIT_DWARF_REG_SIZES", value: 459, isUnsigned: true)
!872 = !DIEnumerator(name: "BUILT_IN_FINITE", value: 460, isUnsigned: true)
!873 = !DIEnumerator(name: "BUILT_IN_FINITEF", value: 461, isUnsigned: true)
!874 = !DIEnumerator(name: "BUILT_IN_FINITEL", value: 462, isUnsigned: true)
!875 = !DIEnumerator(name: "BUILT_IN_FINITED32", value: 463, isUnsigned: true)
!876 = !DIEnumerator(name: "BUILT_IN_FINITED64", value: 464, isUnsigned: true)
!877 = !DIEnumerator(name: "BUILT_IN_FINITED128", value: 465, isUnsigned: true)
!878 = !DIEnumerator(name: "BUILT_IN_FPCLASSIFY", value: 466, isUnsigned: true)
!879 = !DIEnumerator(name: "BUILT_IN_ISFINITE", value: 467, isUnsigned: true)
!880 = !DIEnumerator(name: "BUILT_IN_ISINF_SIGN", value: 468, isUnsigned: true)
!881 = !DIEnumerator(name: "BUILT_IN_ISINF", value: 469, isUnsigned: true)
!882 = !DIEnumerator(name: "BUILT_IN_ISINFF", value: 470, isUnsigned: true)
!883 = !DIEnumerator(name: "BUILT_IN_ISINFL", value: 471, isUnsigned: true)
!884 = !DIEnumerator(name: "BUILT_IN_ISINFD32", value: 472, isUnsigned: true)
!885 = !DIEnumerator(name: "BUILT_IN_ISINFD64", value: 473, isUnsigned: true)
!886 = !DIEnumerator(name: "BUILT_IN_ISINFD128", value: 474, isUnsigned: true)
!887 = !DIEnumerator(name: "BUILT_IN_ISNAN", value: 475, isUnsigned: true)
!888 = !DIEnumerator(name: "BUILT_IN_ISNANF", value: 476, isUnsigned: true)
!889 = !DIEnumerator(name: "BUILT_IN_ISNANL", value: 477, isUnsigned: true)
!890 = !DIEnumerator(name: "BUILT_IN_ISNAND32", value: 478, isUnsigned: true)
!891 = !DIEnumerator(name: "BUILT_IN_ISNAND64", value: 479, isUnsigned: true)
!892 = !DIEnumerator(name: "BUILT_IN_ISNAND128", value: 480, isUnsigned: true)
!893 = !DIEnumerator(name: "BUILT_IN_ISNORMAL", value: 481, isUnsigned: true)
!894 = !DIEnumerator(name: "BUILT_IN_ISGREATER", value: 482, isUnsigned: true)
!895 = !DIEnumerator(name: "BUILT_IN_ISGREATEREQUAL", value: 483, isUnsigned: true)
!896 = !DIEnumerator(name: "BUILT_IN_ISLESS", value: 484, isUnsigned: true)
!897 = !DIEnumerator(name: "BUILT_IN_ISLESSEQUAL", value: 485, isUnsigned: true)
!898 = !DIEnumerator(name: "BUILT_IN_ISLESSGREATER", value: 486, isUnsigned: true)
!899 = !DIEnumerator(name: "BUILT_IN_ISUNORDERED", value: 487, isUnsigned: true)
!900 = !DIEnumerator(name: "BUILT_IN_LABS", value: 488, isUnsigned: true)
!901 = !DIEnumerator(name: "BUILT_IN_LLABS", value: 489, isUnsigned: true)
!902 = !DIEnumerator(name: "BUILT_IN_LONGJMP", value: 490, isUnsigned: true)
!903 = !DIEnumerator(name: "BUILT_IN_MALLOC", value: 491, isUnsigned: true)
!904 = !DIEnumerator(name: "BUILT_IN_NEXT_ARG", value: 492, isUnsigned: true)
!905 = !DIEnumerator(name: "BUILT_IN_PARITY", value: 493, isUnsigned: true)
!906 = !DIEnumerator(name: "BUILT_IN_PARITYIMAX", value: 494, isUnsigned: true)
!907 = !DIEnumerator(name: "BUILT_IN_PARITYL", value: 495, isUnsigned: true)
!908 = !DIEnumerator(name: "BUILT_IN_PARITYLL", value: 496, isUnsigned: true)
!909 = !DIEnumerator(name: "BUILT_IN_POPCOUNT", value: 497, isUnsigned: true)
!910 = !DIEnumerator(name: "BUILT_IN_POPCOUNTIMAX", value: 498, isUnsigned: true)
!911 = !DIEnumerator(name: "BUILT_IN_POPCOUNTL", value: 499, isUnsigned: true)
!912 = !DIEnumerator(name: "BUILT_IN_POPCOUNTLL", value: 500, isUnsigned: true)
!913 = !DIEnumerator(name: "BUILT_IN_PREFETCH", value: 501, isUnsigned: true)
!914 = !DIEnumerator(name: "BUILT_IN_REALLOC", value: 502, isUnsigned: true)
!915 = !DIEnumerator(name: "BUILT_IN_RETURN", value: 503, isUnsigned: true)
!916 = !DIEnumerator(name: "BUILT_IN_RETURN_ADDRESS", value: 504, isUnsigned: true)
!917 = !DIEnumerator(name: "BUILT_IN_SAVEREGS", value: 505, isUnsigned: true)
!918 = !DIEnumerator(name: "BUILT_IN_SETJMP", value: 506, isUnsigned: true)
!919 = !DIEnumerator(name: "BUILT_IN_STRFMON", value: 507, isUnsigned: true)
!920 = !DIEnumerator(name: "BUILT_IN_STRFTIME", value: 508, isUnsigned: true)
!921 = !DIEnumerator(name: "BUILT_IN_TRAP", value: 509, isUnsigned: true)
!922 = !DIEnumerator(name: "BUILT_IN_UNREACHABLE", value: 510, isUnsigned: true)
!923 = !DIEnumerator(name: "BUILT_IN_UNWIND_INIT", value: 511, isUnsigned: true)
!924 = !DIEnumerator(name: "BUILT_IN_UPDATE_SETJMP_BUF", value: 512, isUnsigned: true)
!925 = !DIEnumerator(name: "BUILT_IN_VA_COPY", value: 513, isUnsigned: true)
!926 = !DIEnumerator(name: "BUILT_IN_VA_END", value: 514, isUnsigned: true)
!927 = !DIEnumerator(name: "BUILT_IN_VA_START", value: 515, isUnsigned: true)
!928 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK", value: 516, isUnsigned: true)
!929 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK_LEN", value: 517, isUnsigned: true)
!930 = !DIEnumerator(name: "BUILT_IN__EXIT", value: 518, isUnsigned: true)
!931 = !DIEnumerator(name: "BUILT_IN__EXIT2", value: 519, isUnsigned: true)
!932 = !DIEnumerator(name: "BUILT_IN_INIT_TRAMPOLINE", value: 520, isUnsigned: true)
!933 = !DIEnumerator(name: "BUILT_IN_ADJUST_TRAMPOLINE", value: 521, isUnsigned: true)
!934 = !DIEnumerator(name: "BUILT_IN_NONLOCAL_GOTO", value: 522, isUnsigned: true)
!935 = !DIEnumerator(name: "BUILT_IN_SETJMP_SETUP", value: 523, isUnsigned: true)
!936 = !DIEnumerator(name: "BUILT_IN_SETJMP_DISPATCHER", value: 524, isUnsigned: true)
!937 = !DIEnumerator(name: "BUILT_IN_SETJMP_RECEIVER", value: 525, isUnsigned: true)
!938 = !DIEnumerator(name: "BUILT_IN_STACK_SAVE", value: 526, isUnsigned: true)
!939 = !DIEnumerator(name: "BUILT_IN_STACK_RESTORE", value: 527, isUnsigned: true)
!940 = !DIEnumerator(name: "BUILT_IN_OBJECT_SIZE", value: 528, isUnsigned: true)
!941 = !DIEnumerator(name: "BUILT_IN_MEMCPY_CHK", value: 529, isUnsigned: true)
!942 = !DIEnumerator(name: "BUILT_IN_MEMMOVE_CHK", value: 530, isUnsigned: true)
!943 = !DIEnumerator(name: "BUILT_IN_MEMPCPY_CHK", value: 531, isUnsigned: true)
!944 = !DIEnumerator(name: "BUILT_IN_MEMSET_CHK", value: 532, isUnsigned: true)
!945 = !DIEnumerator(name: "BUILT_IN_STPCPY_CHK", value: 533, isUnsigned: true)
!946 = !DIEnumerator(name: "BUILT_IN_STRCAT_CHK", value: 534, isUnsigned: true)
!947 = !DIEnumerator(name: "BUILT_IN_STRCPY_CHK", value: 535, isUnsigned: true)
!948 = !DIEnumerator(name: "BUILT_IN_STRNCAT_CHK", value: 536, isUnsigned: true)
!949 = !DIEnumerator(name: "BUILT_IN_STRNCPY_CHK", value: 537, isUnsigned: true)
!950 = !DIEnumerator(name: "BUILT_IN_SNPRINTF_CHK", value: 538, isUnsigned: true)
!951 = !DIEnumerator(name: "BUILT_IN_SPRINTF_CHK", value: 539, isUnsigned: true)
!952 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF_CHK", value: 540, isUnsigned: true)
!953 = !DIEnumerator(name: "BUILT_IN_VSPRINTF_CHK", value: 541, isUnsigned: true)
!954 = !DIEnumerator(name: "BUILT_IN_FPRINTF_CHK", value: 542, isUnsigned: true)
!955 = !DIEnumerator(name: "BUILT_IN_PRINTF_CHK", value: 543, isUnsigned: true)
!956 = !DIEnumerator(name: "BUILT_IN_VFPRINTF_CHK", value: 544, isUnsigned: true)
!957 = !DIEnumerator(name: "BUILT_IN_VPRINTF_CHK", value: 545, isUnsigned: true)
!958 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_ENTER", value: 546, isUnsigned: true)
!959 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_EXIT", value: 547, isUnsigned: true)
!960 = !DIEnumerator(name: "BUILT_IN_EMUTLS_GET_ADDRESS", value: 548, isUnsigned: true)
!961 = !DIEnumerator(name: "BUILT_IN_EMUTLS_REGISTER_COMMON", value: 549, isUnsigned: true)
!962 = !DIEnumerator(name: "BUILT_IN_UNWIND_RESUME", value: 550, isUnsigned: true)
!963 = !DIEnumerator(name: "BUILT_IN_CXA_END_CLEANUP", value: 551, isUnsigned: true)
!964 = !DIEnumerator(name: "BUILT_IN_EH_POINTER", value: 552, isUnsigned: true)
!965 = !DIEnumerator(name: "BUILT_IN_EH_FILTER", value: 553, isUnsigned: true)
!966 = !DIEnumerator(name: "BUILT_IN_EH_COPY_VALUES", value: 554, isUnsigned: true)
!967 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_N", value: 555, isUnsigned: true)
!968 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_1", value: 556, isUnsigned: true)
!969 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_2", value: 557, isUnsigned: true)
!970 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_4", value: 558, isUnsigned: true)
!971 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_8", value: 559, isUnsigned: true)
!972 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_16", value: 560, isUnsigned: true)
!973 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_N", value: 561, isUnsigned: true)
!974 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_1", value: 562, isUnsigned: true)
!975 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_2", value: 563, isUnsigned: true)
!976 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_4", value: 564, isUnsigned: true)
!977 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_8", value: 565, isUnsigned: true)
!978 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_16", value: 566, isUnsigned: true)
!979 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_N", value: 567, isUnsigned: true)
!980 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_1", value: 568, isUnsigned: true)
!981 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_2", value: 569, isUnsigned: true)
!982 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_4", value: 570, isUnsigned: true)
!983 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_8", value: 571, isUnsigned: true)
!984 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_16", value: 572, isUnsigned: true)
!985 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_N", value: 573, isUnsigned: true)
!986 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_1", value: 574, isUnsigned: true)
!987 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_2", value: 575, isUnsigned: true)
!988 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_4", value: 576, isUnsigned: true)
!989 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_8", value: 577, isUnsigned: true)
!990 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_16", value: 578, isUnsigned: true)
!991 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_N", value: 579, isUnsigned: true)
!992 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_1", value: 580, isUnsigned: true)
!993 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_2", value: 581, isUnsigned: true)
!994 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_4", value: 582, isUnsigned: true)
!995 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_8", value: 583, isUnsigned: true)
!996 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_16", value: 584, isUnsigned: true)
!997 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_N", value: 585, isUnsigned: true)
!998 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_1", value: 586, isUnsigned: true)
!999 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_2", value: 587, isUnsigned: true)
!1000 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_4", value: 588, isUnsigned: true)
!1001 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_8", value: 589, isUnsigned: true)
!1002 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_16", value: 590, isUnsigned: true)
!1003 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_N", value: 591, isUnsigned: true)
!1004 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_1", value: 592, isUnsigned: true)
!1005 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_2", value: 593, isUnsigned: true)
!1006 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_4", value: 594, isUnsigned: true)
!1007 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_8", value: 595, isUnsigned: true)
!1008 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_16", value: 596, isUnsigned: true)
!1009 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_N", value: 597, isUnsigned: true)
!1010 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_1", value: 598, isUnsigned: true)
!1011 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_2", value: 599, isUnsigned: true)
!1012 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_4", value: 600, isUnsigned: true)
!1013 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_8", value: 601, isUnsigned: true)
!1014 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_16", value: 602, isUnsigned: true)
!1015 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_N", value: 603, isUnsigned: true)
!1016 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_1", value: 604, isUnsigned: true)
!1017 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_2", value: 605, isUnsigned: true)
!1018 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_4", value: 606, isUnsigned: true)
!1019 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_8", value: 607, isUnsigned: true)
!1020 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_16", value: 608, isUnsigned: true)
!1021 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_N", value: 609, isUnsigned: true)
!1022 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_1", value: 610, isUnsigned: true)
!1023 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_2", value: 611, isUnsigned: true)
!1024 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_4", value: 612, isUnsigned: true)
!1025 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_8", value: 613, isUnsigned: true)
!1026 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_16", value: 614, isUnsigned: true)
!1027 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_N", value: 615, isUnsigned: true)
!1028 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_1", value: 616, isUnsigned: true)
!1029 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_2", value: 617, isUnsigned: true)
!1030 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_4", value: 618, isUnsigned: true)
!1031 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_8", value: 619, isUnsigned: true)
!1032 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_16", value: 620, isUnsigned: true)
!1033 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_N", value: 621, isUnsigned: true)
!1034 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_1", value: 622, isUnsigned: true)
!1035 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_2", value: 623, isUnsigned: true)
!1036 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_4", value: 624, isUnsigned: true)
!1037 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_8", value: 625, isUnsigned: true)
!1038 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_16", value: 626, isUnsigned: true)
!1039 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_N", value: 627, isUnsigned: true)
!1040 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_1", value: 628, isUnsigned: true)
!1041 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_2", value: 629, isUnsigned: true)
!1042 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_4", value: 630, isUnsigned: true)
!1043 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_8", value: 631, isUnsigned: true)
!1044 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_16", value: 632, isUnsigned: true)
!1045 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_N", value: 633, isUnsigned: true)
!1046 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_1", value: 634, isUnsigned: true)
!1047 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_2", value: 635, isUnsigned: true)
!1048 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_4", value: 636, isUnsigned: true)
!1049 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_8", value: 637, isUnsigned: true)
!1050 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_16", value: 638, isUnsigned: true)
!1051 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_N", value: 639, isUnsigned: true)
!1052 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_1", value: 640, isUnsigned: true)
!1053 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_2", value: 641, isUnsigned: true)
!1054 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_4", value: 642, isUnsigned: true)
!1055 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_8", value: 643, isUnsigned: true)
!1056 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_16", value: 644, isUnsigned: true)
!1057 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_N", value: 645, isUnsigned: true)
!1058 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_1", value: 646, isUnsigned: true)
!1059 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_2", value: 647, isUnsigned: true)
!1060 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_4", value: 648, isUnsigned: true)
!1061 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_8", value: 649, isUnsigned: true)
!1062 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_16", value: 650, isUnsigned: true)
!1063 = !DIEnumerator(name: "BUILT_IN_SYNCHRONIZE", value: 651, isUnsigned: true)
!1064 = !DIEnumerator(name: "BUILT_IN_OMP_GET_THREAD_NUM", value: 652, isUnsigned: true)
!1065 = !DIEnumerator(name: "BUILT_IN_OMP_GET_NUM_THREADS", value: 653, isUnsigned: true)
!1066 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_START", value: 654, isUnsigned: true)
!1067 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_END", value: 655, isUnsigned: true)
!1068 = !DIEnumerator(name: "BUILT_IN_GOMP_BARRIER", value: 656, isUnsigned: true)
!1069 = !DIEnumerator(name: "BUILT_IN_GOMP_TASKWAIT", value: 657, isUnsigned: true)
!1070 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_START", value: 658, isUnsigned: true)
!1071 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_END", value: 659, isUnsigned: true)
!1072 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_START", value: 660, isUnsigned: true)
!1073 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_END", value: 661, isUnsigned: true)
!1074 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_START", value: 662, isUnsigned: true)
!1075 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_START", value: 663, isUnsigned: true)
!1076 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_START", value: 664, isUnsigned: true)
!1077 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_START", value: 665, isUnsigned: true)
!1078 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_START", value: 666, isUnsigned: true)
!1079 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_START", value: 667, isUnsigned: true)
!1080 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_START", value: 668, isUnsigned: true)
!1081 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_START", value: 669, isUnsigned: true)
!1082 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_NEXT", value: 670, isUnsigned: true)
!1083 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_NEXT", value: 671, isUnsigned: true)
!1084 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_NEXT", value: 672, isUnsigned: true)
!1085 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_NEXT", value: 673, isUnsigned: true)
!1086 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_NEXT", value: 674, isUnsigned: true)
!1087 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_NEXT", value: 675, isUnsigned: true)
!1088 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_NEXT", value: 676, isUnsigned: true)
!1089 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_NEXT", value: 677, isUnsigned: true)
!1090 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_START", value: 678, isUnsigned: true)
!1091 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_START", value: 679, isUnsigned: true)
!1092 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_START", value: 680, isUnsigned: true)
!1093 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_START", value: 681, isUnsigned: true)
!1094 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_START", value: 682, isUnsigned: true)
!1095 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_START", value: 683, isUnsigned: true)
!1096 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_START", value: 684, isUnsigned: true)
!1097 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_START", value: 685, isUnsigned: true)
!1098 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_NEXT", value: 686, isUnsigned: true)
!1099 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_NEXT", value: 687, isUnsigned: true)
!1100 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_NEXT", value: 688, isUnsigned: true)
!1101 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_NEXT", value: 689, isUnsigned: true)
!1102 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_NEXT", value: 690, isUnsigned: true)
!1103 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_NEXT", value: 691, isUnsigned: true)
!1104 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_NEXT", value: 692, isUnsigned: true)
!1105 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_NEXT", value: 693, isUnsigned: true)
!1106 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START", value: 694, isUnsigned: true)
!1107 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_DYNAMIC_START", value: 695, isUnsigned: true)
!1108 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_GUIDED_START", value: 696, isUnsigned: true)
!1109 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_RUNTIME_START", value: 697, isUnsigned: true)
!1110 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END", value: 698, isUnsigned: true)
!1111 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END_NOWAIT", value: 699, isUnsigned: true)
!1112 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_START", value: 700, isUnsigned: true)
!1113 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_END", value: 701, isUnsigned: true)
!1114 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_START", value: 702, isUnsigned: true)
!1115 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_END", value: 703, isUnsigned: true)
!1116 = !DIEnumerator(name: "BUILT_IN_GOMP_TASK", value: 704, isUnsigned: true)
!1117 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_START", value: 705, isUnsigned: true)
!1118 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_NEXT", value: 706, isUnsigned: true)
!1119 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_SECTIONS_START", value: 707, isUnsigned: true)
!1120 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END", value: 708, isUnsigned: true)
!1121 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END_NOWAIT", value: 709, isUnsigned: true)
!1122 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_START", value: 710, isUnsigned: true)
!1123 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_START", value: 711, isUnsigned: true)
!1124 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_END", value: 712, isUnsigned: true)
!1125 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MIN", value: 713, isUnsigned: true)
!1126 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MAX", value: 716, isUnsigned: true)
!1127 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MIN", value: 717, isUnsigned: true)
!1128 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MAX", value: 720, isUnsigned: true)
!1129 = !DIEnumerator(name: "END_BUILTINS", value: 721, isUnsigned: true)
!1130 = !{!1131, !1132, !1133, !1134, !1137, !1138, !1140, !134, !1135, !1194, !1500, !1267, !410}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !1141, line: 56, baseType: !1142)
!1141 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !1144)
!1144 = !{!1145, !1178, !1184, !1197, !1216, !1227, !1232, !1241, !1247, !1260, !1272, !1310, !1803, !1831, !1839, !1840, !1845, !1854, !1860, !1865, !1869, !1873, !2047, !2094, !2100, !2106, !2113, !2124, !2149, !2166, !2178, !2200, !2215, !2387}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1143, file: !135, line: 3372, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1146, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1146, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1146, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1146, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1146, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1146, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1146, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1146, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1146, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1146, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1146, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1146, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1146, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1146, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1146, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1146, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1146, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1146, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1146, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1146, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1146, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1146, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1146, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1146, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1146, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1146, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1146, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1146, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1146, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1146, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1143, file: !135, line: 3373, baseType: !1179, size: 192)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !1180)
!1180 = !{!1181, !1182, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1179, file: !135, line: 403, baseType: !1146, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1179, file: !135, line: 404, baseType: !1140, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1179, file: !135, line: 405, baseType: !1140, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1143, file: !135, line: 3374, baseType: !1185, size: 320)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1185, file: !135, line: 1385, baseType: !1179, size: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1185, file: !135, line: 1386, baseType: !1189, size: 128, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1190, line: 58, baseType: !1191)
!1190 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1190, line: 54, size: 128, elements: !1192)
!1192 = !{!1193, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1191, file: !1190, line: 56, baseType: !1194, size: 64)
!1194 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1191, file: !1190, line: 57, baseType: !1196, size: 64, offset: 64)
!1196 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1143, file: !135, line: 3375, baseType: !1198, size: 256)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !1199)
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1198, file: !135, line: 1398, baseType: !1179, size: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1198, file: !135, line: 1399, baseType: !1202, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1204, line: 52, size: 256, elements: !1205)
!1204 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1203, file: !1204, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1203, file: !1204, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1203, file: !1204, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1203, file: !1204, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1203, file: !1204, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1203, file: !1204, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1203, file: !1204, line: 62, baseType: !1213, size: 192, offset: 64)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 192, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 3)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1143, file: !135, line: 3376, baseType: !1217, size: 256)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1217, file: !135, line: 1409, baseType: !1179, size: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1217, file: !135, line: 1410, baseType: !1221, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1223, line: 27, size: 192, elements: !1224)
!1223 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1222, file: !1223, line: 29, baseType: !1189, size: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1222, file: !1223, line: 30, baseType: !5, size: 32, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1143, file: !135, line: 3377, baseType: !1228, size: 256)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !1229)
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1228, file: !135, line: 1438, baseType: !1179, size: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1228, file: !135, line: 1439, baseType: !1140, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1143, file: !135, line: 3378, baseType: !1233, size: 256)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !1234)
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1233, file: !135, line: 1419, baseType: !1179, size: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1233, file: !135, line: 1420, baseType: !1133, size: 32, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1233, file: !135, line: 1421, baseType: !1238, size: 8, offset: 224)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 8, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 1)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1143, file: !135, line: 3379, baseType: !1242, size: 320)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !1243)
!1243 = !{!1244, !1245, !1246}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1242, file: !135, line: 1429, baseType: !1179, size: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1242, file: !135, line: 1430, baseType: !1140, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1242, file: !135, line: 1431, baseType: !1140, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1143, file: !135, line: 3380, baseType: !1248, size: 320)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1248, file: !135, line: 1461, baseType: !1179, size: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1248, file: !135, line: 1462, baseType: !1252, size: 128, offset: 192)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1253, line: 31, size: 128, elements: !1254)
!1253 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1254 = !{!1255, !1258, !1259}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1252, file: !1253, line: 32, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1252, file: !1253, line: 33, baseType: !7, size: 32, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1252, file: !1253, line: 34, baseType: !7, size: 32, offset: 96)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1143, file: !135, line: 3381, baseType: !1261, size: 384)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !1262)
!1262 = !{!1263, !1264, !1269, !1270, !1271}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1261, file: !135, line: 2508, baseType: !1179, size: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1261, file: !135, line: 2509, baseType: !1265, size: 32, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1266, line: 58, baseType: !1267)
!1266 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1268, line: 44, baseType: !7)
!1268 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1261, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1261, file: !135, line: 2511, baseType: !1140, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1261, file: !135, line: 2512, baseType: !1140, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1143, file: !135, line: 3382, baseType: !1273, size: 896)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1273, file: !135, line: 2653, baseType: !1261, size: 384)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1273, file: !135, line: 2654, baseType: !1140, size: 64, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1273, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1273, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1273, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1273, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1273, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1273, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1273, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1273, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1273, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1273, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1273, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1273, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1273, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1273, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1273, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1273, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1273, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1273, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1273, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1273, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1273, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1273, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1273, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1273, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1273, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1273, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1273, file: !135, line: 2705, baseType: !1140, size: 64, offset: 576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1273, file: !135, line: 2706, baseType: !1140, size: 64, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1273, file: !135, line: 2707, baseType: !1140, size: 64, offset: 704)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1273, file: !135, line: 2708, baseType: !1140, size: 64, offset: 768)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1273, file: !135, line: 2711, baseType: !1308, size: 64, offset: 832)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1143, file: !135, line: 3383, baseType: !1311, size: 960)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1311, file: !135, line: 2757, baseType: !1273, size: 896)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1311, file: !135, line: 2758, baseType: !1315, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !1141, line: 50, baseType: !1316)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !1318, line: 240, size: 384, elements: !1319)
!1318 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1317, file: !1318, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1317, file: !1318, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1317, file: !1318, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1317, file: !1318, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1317, file: !1318, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1317, file: !1318, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1317, file: !1318, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1317, file: !1318, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1317, file: !1318, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1317, file: !1318, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1317, file: !1318, line: 321, baseType: !1331, size: 320, offset: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !1318, line: 315, size: 320, elements: !1332)
!1332 = !{!1333, !1736, !1738, !1801, !1802}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1331, file: !1318, line: 316, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 64, elements: !1239)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !1318, line: 183, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !1318, line: 166, size: 64, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1350, !1351, !1363, !1366, !1426, !1427, !1713, !1726, !1733}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1336, file: !1318, line: 168, baseType: !1133, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1336, file: !1318, line: 169, baseType: !7, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1336, file: !1318, line: 170, baseType: !1138, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1336, file: !1318, line: 171, baseType: !1315, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1336, file: !1318, line: 172, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !1141, line: 53, baseType: !1344)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !1318, line: 359, size: 128, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1345, file: !1318, line: 360, baseType: !1133, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1345, file: !1318, line: 361, baseType: !1349, size: 64, offset: 64)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 64, elements: !1239)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1336, file: !1318, line: 173, baseType: !5, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1336, file: !1318, line: 174, baseType: !1352, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !1318, line: 133, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1318, line: 115, size: 32, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1353, file: !1318, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1353, file: !1318, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1353, file: !1318, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1353, file: !1318, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1353, file: !1318, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1353, file: !1318, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1353, file: !1318, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1353, file: !1318, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1336, file: !1318, line: 175, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !1318, line: 175, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1336, file: !1318, line: 176, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1369, line: 75, size: 256, elements: !1370)
!1369 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1370 = !{!1371, !1385, !1386, !1387}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1368, file: !1369, line: 76, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1369, line: 68, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1369, line: 63, size: 320, elements: !1375)
!1375 = !{!1376, !1378, !1379, !1380}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1374, file: !1369, line: 64, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1374, file: !1369, line: 65, baseType: !1377, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1374, file: !1369, line: 66, baseType: !7, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1374, file: !1369, line: 67, baseType: !1381, size: 128, offset: 192)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1382, size: 128, elements: !1383)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1369, line: 29, baseType: !1194)
!1383 = !{!1384}
!1384 = !DISubrange(count: 2)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1368, file: !1369, line: 77, baseType: !1372, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1368, file: !1369, line: 78, baseType: !7, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1368, file: !1369, line: 79, baseType: !1388, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1369, line: 49, baseType: !1390)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1369, line: 45, size: 832, elements: !1391)
!1391 = !{!1392, !1393, !1394}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1390, file: !1369, line: 46, baseType: !1377, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1390, file: !1369, line: 47, baseType: !1367, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1390, file: !1369, line: 48, baseType: !1395, size: 704, offset: 128)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1396, line: 164, size: 704, elements: !1397)
!1396 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1397 = !{!1398, !1399, !1409, !1410, !1411, !1412, !1413, !1414, !1418, !1422, !1423, !1424, !1425}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1395, file: !1396, line: 166, baseType: !1196, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1395, file: !1396, line: 167, baseType: !1400, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1396, line: 157, size: 192, elements: !1402)
!1402 = !{!1403, !1404, !1405}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1401, file: !1396, line: 159, baseType: !1135, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1401, file: !1396, line: 160, baseType: !1400, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1401, file: !1396, line: 161, baseType: !1406, size: 32, offset: 128)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 32, elements: !1407)
!1407 = !{!1408}
!1408 = !DISubrange(count: 4)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1395, file: !1396, line: 168, baseType: !1135, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1395, file: !1396, line: 169, baseType: !1135, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1395, file: !1396, line: 170, baseType: !1135, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1395, file: !1396, line: 171, baseType: !1196, size: 64, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1395, file: !1396, line: 172, baseType: !1133, size: 32, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1395, file: !1396, line: 176, baseType: !1415, size: 64, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1400, !1137, !1196}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1395, file: !1396, line: 177, baseType: !1419, size: 64, offset: 512)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !1137, !1400}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1395, file: !1396, line: 178, baseType: !1137, size: 64, offset: 576)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1395, file: !1396, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1395, file: !1396, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1395, file: !1396, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1336, file: !1318, line: 177, baseType: !1140, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1336, file: !1318, line: 178, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !330, line: 217, size: 832, elements: !1430)
!1430 = !{!1431, !1678, !1679, !1680, !1683, !1687, !1688, !1689, !1707, !1708, !1709, !1710, !1711, !1712}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1429, file: !330, line: 219, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !330, line: 151, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !330, line: 151, size: 128, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1434, file: !330, line: 151, baseType: !1437, size: 128)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !330, line: 150, baseType: !1438)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !330, line: 150, size: 128, elements: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1438, file: !330, line: 150, baseType: !7, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1438, file: !330, line: 150, baseType: !7, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1438, file: !330, line: 150, baseType: !1443, size: 64, offset: 64)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1444, size: 64, elements: !1239)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !1141, line: 108, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !330, line: 122, size: 512, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1446, file: !330, line: 124, baseType: !1428, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1446, file: !330, line: 125, baseType: !1428, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1446, file: !330, line: 131, baseType: !1451, size: 64, offset: 128)
!1451 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !330, line: 128, size: 64, elements: !1452)
!1452 = !{!1453, !1669}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1451, file: !330, line: 129, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !1141, line: 66, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !1457, line: 143, size: 192, elements: !1458)
!1457 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1458 = !{!1459, !1667, !1668}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1456, file: !1457, line: 145, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !1141, line: 69, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !1457, line: 136, size: 192, elements: !1463)
!1463 = !{!1464, !1665, !1666}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1462, file: !1457, line: 137, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !1141, line: 58, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !1457, line: 737, size: 768, elements: !1468)
!1468 = !{!1469, !1486, !1520, !1526, !1531, !1536, !1543, !1549, !1555, !1560, !1574, !1579, !1585, !1590, !1600, !1605, !1623, !1630, !1637, !1643, !1648, !1654, !1660}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1467, file: !1457, line: 738, baseType: !1470, size: 256)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !1457, line: 271, size: 256, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1470, file: !1457, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !1470, file: !1457, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1470, file: !1457, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !1470, file: !1457, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !1470, file: !1457, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !1470, file: !1457, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !1470, file: !1457, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !1470, file: !1457, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1470, file: !1457, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1470, file: !1457, line: 312, baseType: !7, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1470, file: !1457, line: 316, baseType: !1265, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !1470, file: !1457, line: 319, baseType: !7, size: 32, offset: 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1470, file: !1457, line: 323, baseType: !1428, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1470, file: !1457, line: 327, baseType: !1140, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !1467, file: !1457, line: 739, baseType: !1487, size: 448)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !1457, line: 350, size: 448, elements: !1488)
!1488 = !{!1489, !1518}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1487, file: !1457, line: 353, baseType: !1490, size: 384)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !1457, line: 333, size: 384, elements: !1491)
!1491 = !{!1492, !1493, !1501}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1490, file: !1457, line: 336, baseType: !1470, size: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1490, file: !1457, line: 343, baseType: !1494, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1496, line: 37, size: 128, elements: !1497)
!1496 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1495, file: !1496, line: 39, baseType: !1494, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1495, file: !1496, line: 40, baseType: !1500, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1490, file: !1457, line: 344, baseType: !1502, size: 64, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1496, line: 45, size: 320, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1503, file: !1496, line: 47, baseType: !1502, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1503, file: !1496, line: 48, baseType: !1507, size: 256, offset: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !1508)
!1508 = !{!1509, !1511, !1512, !1517}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1507, file: !135, line: 1884, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1507, file: !135, line: 1885, baseType: !1510, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1507, file: !135, line: 1891, baseType: !1513, size: 64, offset: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !135, line: 1891, size: 64, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1513, file: !135, line: 1891, baseType: !1465, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1513, file: !135, line: 1891, baseType: !1140, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1507, file: !135, line: 1892, baseType: !1500, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1487, file: !1457, line: 359, baseType: !1519, size: 64, offset: 384)
!1519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1140, size: 64, elements: !1239)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !1467, file: !1457, line: 740, baseType: !1521, size: 512)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !1457, line: 365, size: 512, elements: !1522)
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1521, file: !1457, line: 368, baseType: !1490, size: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1521, file: !1457, line: 373, baseType: !1140, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1521, file: !1457, line: 374, baseType: !1140, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !1467, file: !1457, line: 741, baseType: !1527, size: 576)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !1457, line: 380, size: 576, elements: !1528)
!1528 = !{!1529, !1530}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1527, file: !1457, line: 383, baseType: !1521, size: 512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1527, file: !1457, line: 389, baseType: !1519, size: 64, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1467, file: !1457, line: 742, baseType: !1532, size: 320)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !1457, line: 395, size: 320, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1532, file: !1457, line: 397, baseType: !1470, size: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1532, file: !1457, line: 400, baseType: !1454, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !1467, file: !1457, line: 743, baseType: !1537, size: 448)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !1457, line: 406, size: 448, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1537, file: !1457, line: 408, baseType: !1470, size: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1537, file: !1457, line: 412, baseType: !1140, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1537, file: !1457, line: 420, baseType: !1140, size: 64, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1537, file: !1457, line: 423, baseType: !1454, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !1467, file: !1457, line: 744, baseType: !1544, size: 384)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !1457, line: 429, size: 384, elements: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1544, file: !1457, line: 431, baseType: !1470, size: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1544, file: !1457, line: 434, baseType: !1140, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1544, file: !1457, line: 437, baseType: !1454, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !1467, file: !1457, line: 745, baseType: !1550, size: 384)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !1457, line: 443, size: 384, elements: !1551)
!1551 = !{!1552, !1553, !1554}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1550, file: !1457, line: 445, baseType: !1470, size: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1550, file: !1457, line: 449, baseType: !1140, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1550, file: !1457, line: 453, baseType: !1454, size: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !1467, file: !1457, line: 746, baseType: !1556, size: 320)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !1457, line: 459, size: 320, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1556, file: !1457, line: 461, baseType: !1470, size: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1556, file: !1457, line: 464, baseType: !1140, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !1467, file: !1457, line: 747, baseType: !1561, size: 768)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !1457, line: 469, size: 768, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1561, file: !1457, line: 471, baseType: !1470, size: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1561, file: !1457, line: 474, baseType: !7, size: 32, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1561, file: !1457, line: 475, baseType: !7, size: 32, offset: 288)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1561, file: !1457, line: 478, baseType: !1140, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1561, file: !1457, line: 481, baseType: !1568, size: 384, offset: 384)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1569, size: 384, elements: !1239)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !1570)
!1570 = !{!1571, !1572, !1573}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1569, file: !135, line: 1920, baseType: !1507, size: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1569, file: !135, line: 1921, baseType: !1140, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1569, file: !135, line: 1922, baseType: !1265, size: 32, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !1467, file: !1457, line: 748, baseType: !1575, size: 320)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !1457, line: 487, size: 320, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1575, file: !1457, line: 490, baseType: !1470, size: 256)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1575, file: !1457, line: 494, baseType: !1133, size: 32, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !1467, file: !1457, line: 749, baseType: !1580, size: 384)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !1457, line: 500, size: 384, elements: !1581)
!1581 = !{!1582, !1583, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1580, file: !1457, line: 502, baseType: !1470, size: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1580, file: !1457, line: 506, baseType: !1454, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1580, file: !1457, line: 510, baseType: !1454, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !1467, file: !1457, line: 750, baseType: !1586, size: 320)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !1457, line: 529, size: 320, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1586, file: !1457, line: 531, baseType: !1470, size: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1586, file: !1457, line: 540, baseType: !1454, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !1467, file: !1457, line: 751, baseType: !1591, size: 704)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !1457, line: 546, size: 704, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1591, file: !1457, line: 549, baseType: !1521, size: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1591, file: !1457, line: 553, baseType: !1138, size: 64, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1591, file: !1457, line: 557, baseType: !1132, size: 8, offset: 576)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1591, file: !1457, line: 558, baseType: !1132, size: 8, offset: 584)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1591, file: !1457, line: 559, baseType: !1132, size: 8, offset: 592)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1591, file: !1457, line: 560, baseType: !1132, size: 8, offset: 600)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1591, file: !1457, line: 566, baseType: !1519, size: 64, offset: 640)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !1467, file: !1457, line: 752, baseType: !1601, size: 384)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !1457, line: 571, size: 384, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1601, file: !1457, line: 573, baseType: !1532, size: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1601, file: !1457, line: 577, baseType: !1140, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !1467, file: !1457, line: 753, baseType: !1606, size: 576)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !1457, line: 600, size: 576, elements: !1607)
!1607 = !{!1608, !1609, !1610, !1613, !1622}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1606, file: !1457, line: 602, baseType: !1532, size: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1606, file: !1457, line: 605, baseType: !1140, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1606, file: !1457, line: 609, baseType: !1611, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1612, line: 46, baseType: !1194)
!1612 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1606, file: !1457, line: 612, baseType: !1614, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !1457, line: 581, size: 320, elements: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1621}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1615, file: !1457, line: 583, baseType: !134, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1615, file: !1457, line: 586, baseType: !1140, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1615, file: !1457, line: 589, baseType: !1140, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1615, file: !1457, line: 592, baseType: !1140, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1615, file: !1457, line: 595, baseType: !1140, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1606, file: !1457, line: 616, baseType: !1454, size: 64, offset: 512)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !1467, file: !1457, line: 754, baseType: !1624, size: 512)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !1457, line: 622, size: 512, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1624, file: !1457, line: 624, baseType: !1532, size: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1624, file: !1457, line: 628, baseType: !1140, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1624, file: !1457, line: 632, baseType: !1140, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1624, file: !1457, line: 636, baseType: !1140, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !1467, file: !1457, line: 755, baseType: !1631, size: 704)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !1457, line: 642, size: 704, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1636}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1631, file: !1457, line: 644, baseType: !1624, size: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1631, file: !1457, line: 648, baseType: !1140, size: 64, offset: 512)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1631, file: !1457, line: 652, baseType: !1140, size: 64, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1631, file: !1457, line: 653, baseType: !1140, size: 64, offset: 640)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !1467, file: !1457, line: 756, baseType: !1638, size: 448)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !1457, line: 663, size: 448, elements: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1638, file: !1457, line: 665, baseType: !1532, size: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1638, file: !1457, line: 668, baseType: !1140, size: 64, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1638, file: !1457, line: 673, baseType: !1140, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !1467, file: !1457, line: 757, baseType: !1644, size: 384)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !1457, line: 694, size: 384, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1644, file: !1457, line: 696, baseType: !1532, size: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1644, file: !1457, line: 699, baseType: !1140, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !1467, file: !1457, line: 758, baseType: !1649, size: 384)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !1457, line: 681, size: 384, elements: !1650)
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1649, file: !1457, line: 683, baseType: !1470, size: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1649, file: !1457, line: 686, baseType: !1140, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1649, file: !1457, line: 689, baseType: !1140, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !1467, file: !1457, line: 759, baseType: !1655, size: 384)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !1457, line: 707, size: 384, elements: !1656)
!1656 = !{!1657, !1658, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1655, file: !1457, line: 709, baseType: !1470, size: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1655, file: !1457, line: 712, baseType: !1140, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1655, file: !1457, line: 712, baseType: !1140, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !1467, file: !1457, line: 760, baseType: !1661, size: 320)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !1457, line: 718, size: 320, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1661, file: !1457, line: 720, baseType: !1470, size: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1661, file: !1457, line: 723, baseType: !1140, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1462, file: !1457, line: 138, baseType: !1461, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1462, file: !1457, line: 139, baseType: !1461, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1456, file: !1457, line: 146, baseType: !1460, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1456, file: !1457, line: 152, baseType: !1454, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1451, file: !330, line: 130, baseType: !1315, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1446, file: !330, line: 134, baseType: !1137, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1446, file: !330, line: 137, baseType: !1140, size: 64, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1446, file: !330, line: 138, baseType: !1265, size: 32, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1446, file: !330, line: 142, baseType: !7, size: 32, offset: 352)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !330, line: 144, baseType: !1133, size: 32, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1446, file: !330, line: 145, baseType: !1133, size: 32, offset: 416)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1446, file: !330, line: 146, baseType: !1677, size: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !330, line: 119, baseType: !1196)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1429, file: !330, line: 220, baseType: !1432, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1429, file: !330, line: 223, baseType: !1137, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1429, file: !330, line: 226, baseType: !1681, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 185, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1429, file: !330, line: 229, baseType: !1684, size: 128, offset: 256)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1685, size: 128, elements: !1383)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !330, line: 229, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1429, file: !330, line: 232, baseType: !1428, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1429, file: !330, line: 233, baseType: !1428, size: 64, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1429, file: !330, line: 238, baseType: !1690, size: 64, offset: 512)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !330, line: 235, size: 64, elements: !1691)
!1691 = !{!1692, !1698}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1690, file: !330, line: 236, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !330, line: 273, size: 128, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1694, file: !330, line: 275, baseType: !1454, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1694, file: !330, line: 278, baseType: !1454, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1690, file: !330, line: 237, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !330, line: 259, size: 320, elements: !1701)
!1701 = !{!1702, !1703, !1704, !1705, !1706}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1700, file: !330, line: 261, baseType: !1315, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1700, file: !330, line: 262, baseType: !1315, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1700, file: !330, line: 266, baseType: !1315, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1700, file: !330, line: 267, baseType: !1315, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1700, file: !330, line: 270, baseType: !1133, size: 32, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1429, file: !330, line: 241, baseType: !1677, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1429, file: !330, line: 244, baseType: !1133, size: 32, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1429, file: !330, line: 247, baseType: !1133, size: 32, offset: 672)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1429, file: !330, line: 250, baseType: !1133, size: 32, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1429, file: !330, line: 253, baseType: !1133, size: 32, offset: 736)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1429, file: !330, line: 256, baseType: !1133, size: 32, offset: 768)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1336, file: !1318, line: 179, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !1318, line: 150, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !1318, line: 142, size: 320, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1724, !1725}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1716, file: !1318, line: 144, baseType: !1140, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1716, file: !1318, line: 145, baseType: !1315, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1716, file: !1318, line: 146, baseType: !1315, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1716, file: !1318, line: 147, baseType: !1722, size: 32, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1723, line: 31, baseType: !1133)
!1723 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1716, file: !1318, line: 148, baseType: !7, size: 32, offset: 224)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1716, file: !1318, line: 149, baseType: !1132, size: 8, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1336, file: !1318, line: 180, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !1318, line: 162, baseType: !1729)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !1318, line: 159, size: 128, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1729, file: !1318, line: 160, baseType: !1140, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1729, file: !1318, line: 161, baseType: !1196, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1336, file: !1318, line: 181, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !1318, line: 181, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1331, file: !1318, line: 317, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1196, size: 64, elements: !1239)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1331, file: !1318, line: 318, baseType: !1739, size: 320)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !1318, line: 188, size: 320, elements: !1740)
!1740 = !{!1741, !1743, !1800}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1739, file: !1318, line: 190, baseType: !1742, size: 192)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 192, elements: !1214)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1739, file: !1318, line: 193, baseType: !1744, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !1318, line: 206, size: 320, elements: !1746)
!1746 = !{!1747, !1785, !1786, !1787, !1799}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1745, file: !1318, line: 208, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !1141, line: 62, baseType: !1750)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1751, line: 538, size: 256, elements: !1752)
!1751 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1752 = !{!1753, !1757, !1763, !1776}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1750, file: !1751, line: 539, baseType: !1754, size: 32)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1751, line: 482, size: 32, elements: !1755)
!1755 = !{!1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1754, file: !1751, line: 484, baseType: !7, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1750, file: !1751, line: 540, baseType: !1758, size: 192)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1751, line: 488, size: 192, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1758, file: !1751, line: 489, baseType: !1754, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1758, file: !1751, line: 492, baseType: !1138, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1758, file: !1751, line: 496, baseType: !1140, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1750, file: !1751, line: 541, baseType: !1764, size: 256)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1751, line: 504, size: 256, elements: !1765)
!1765 = !{!1766, !1767, !1774, !1775}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1764, file: !1751, line: 505, baseType: !1754, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1764, file: !1751, line: 509, baseType: !1768, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1751, line: 501, baseType: !1769)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1764, file: !1751, line: 510, baseType: !1772, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1764, file: !1751, line: 513, baseType: !1748, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1750, file: !1751, line: 542, baseType: !1777, size: 128)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1751, line: 530, size: 128, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1777, file: !1751, line: 531, baseType: !1754, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1777, file: !1751, line: 534, baseType: !1781, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1751, line: 525, baseType: !1782)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1132, !1140, !1138, !1194, !1194}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1745, file: !1318, line: 211, baseType: !7, size: 32, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1745, file: !1318, line: 214, baseType: !1196, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1745, file: !1318, line: 224, baseType: !1788, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !1318, line: 202, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !1318, line: 202, size: 128, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1790, file: !1318, line: 202, baseType: !1793, size: 128)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !1318, line: 200, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !1318, line: 200, size: 128, elements: !1795)
!1795 = !{!1796, !1797, !1798}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1794, file: !1318, line: 200, baseType: !7, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1794, file: !1318, line: 200, baseType: !7, size: 32, offset: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1794, file: !1318, line: 200, baseType: !1349, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1745, file: !1318, line: 234, baseType: !1788, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1739, file: !1318, line: 197, baseType: !1196, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1331, file: !1318, line: 319, baseType: !1203, size: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1331, file: !1318, line: 320, baseType: !1222, size: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1143, file: !135, line: 3384, baseType: !1804, size: 1472)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1805)
!1805 = !{!1806, !1827, !1828, !1829, !1830}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1804, file: !135, line: 3115, baseType: !1807, size: 1216)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1807, file: !135, line: 2985, baseType: !1311, size: 960)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1807, file: !135, line: 2986, baseType: !1140, size: 64, offset: 960)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1807, file: !135, line: 2987, baseType: !1140, size: 64, offset: 1024)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1807, file: !135, line: 2988, baseType: !1140, size: 64, offset: 1088)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1807, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1807, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1807, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1807, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1807, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1807, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1807, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1807, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1807, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1807, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1807, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1807, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1807, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1807, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1804, file: !135, line: 3117, baseType: !1140, size: 64, offset: 1216)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1804, file: !135, line: 3119, baseType: !1140, size: 64, offset: 1280)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1804, file: !135, line: 3121, baseType: !1140, size: 64, offset: 1344)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1804, file: !135, line: 3123, baseType: !1140, size: 64, offset: 1408)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1143, file: !135, line: 3385, baseType: !1832, size: 1088)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1833)
!1833 = !{!1834, !1835, !1836}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1832, file: !135, line: 2875, baseType: !1311, size: 960)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1832, file: !135, line: 2876, baseType: !1315, size: 64, offset: 960)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1832, file: !135, line: 2877, baseType: !1837, size: 64, offset: 1024)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !135, line: 2856, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1143, file: !135, line: 3386, baseType: !1807, size: 1216)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1143, file: !135, line: 3387, baseType: !1841, size: 1280)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1841, file: !135, line: 3094, baseType: !1807, size: 1216)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1841, file: !135, line: 3095, baseType: !1837, size: 64, offset: 1216)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1143, file: !135, line: 3388, baseType: !1846, size: 1216)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1846, file: !135, line: 2825, baseType: !1273, size: 896)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1846, file: !135, line: 2827, baseType: !1140, size: 64, offset: 896)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1846, file: !135, line: 2828, baseType: !1140, size: 64, offset: 960)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1846, file: !135, line: 2829, baseType: !1140, size: 64, offset: 1024)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1846, file: !135, line: 2830, baseType: !1140, size: 64, offset: 1088)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1846, file: !135, line: 2831, baseType: !1140, size: 64, offset: 1152)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1143, file: !135, line: 3389, baseType: !1855, size: 1024)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1856)
!1856 = !{!1857, !1858, !1859}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1855, file: !135, line: 2851, baseType: !1311, size: 960)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1855, file: !135, line: 2852, baseType: !1133, size: 32, offset: 960)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1855, file: !135, line: 2853, baseType: !1133, size: 32, offset: 992)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1143, file: !135, line: 3390, baseType: !1861, size: 1024)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1861, file: !135, line: 2858, baseType: !1311, size: 960)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1861, file: !135, line: 2859, baseType: !1837, size: 64, offset: 960)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1143, file: !135, line: 3391, baseType: !1866, size: 960)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1867)
!1867 = !{!1868}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1866, file: !135, line: 2863, baseType: !1311, size: 960)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1143, file: !135, line: 3392, baseType: !1870, size: 1472)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1871)
!1871 = !{!1872}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1870, file: !135, line: 3305, baseType: !1804, size: 1472)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1143, file: !135, line: 3393, baseType: !1874, size: 1792)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1875)
!1875 = !{!1876, !1877, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1874, file: !135, line: 3249, baseType: !1804, size: 1472)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1874, file: !135, line: 3251, baseType: !1878, size: 64, offset: 1472)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1880, line: 463, size: 1152, elements: !1881)
!1880 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1881 = !{!1882, !1885, !1916, !1917, !1920, !1923, !1971, !1972, !1973, !1974, !1975, !1999, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1879, file: !1880, line: 464, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1880, line: 464, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1879, file: !1880, line: 467, baseType: !1886, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !330, line: 374, size: 640, elements: !1888)
!1888 = !{!1889, !1891, !1892, !1905, !1906, !1907, !1908, !1909, !1910, !1912, !1914, !1915}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1887, file: !330, line: 377, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !1141, line: 111, baseType: !1428)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1887, file: !330, line: 378, baseType: !1890, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1887, file: !330, line: 381, baseType: !1893, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !330, line: 282, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !330, line: 282, size: 128, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1895, file: !330, line: 282, baseType: !1898, size: 128)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !330, line: 281, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !330, line: 281, size: 128, elements: !1900)
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1899, file: !330, line: 281, baseType: !7, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1899, file: !330, line: 281, baseType: !7, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1899, file: !330, line: 281, baseType: !1904, size: 64, offset: 64)
!1904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1890, size: 64, elements: !1239)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1887, file: !330, line: 384, baseType: !1133, size: 32, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1887, file: !330, line: 387, baseType: !1133, size: 32, offset: 224)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1887, file: !330, line: 390, baseType: !1133, size: 32, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1887, file: !330, line: 394, baseType: !1893, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1887, file: !330, line: 396, baseType: !329, size: 32, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1887, file: !330, line: 399, baseType: !1911, size: 64, offset: 416)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !1383)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1887, file: !330, line: 402, baseType: !1913, size: 64, offset: 480)
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1383)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1887, file: !330, line: 406, baseType: !1133, size: 32, offset: 544)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1887, file: !330, line: 409, baseType: !1133, size: 32, offset: 576)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1879, file: !1880, line: 470, baseType: !1455, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1879, file: !1880, line: 473, baseType: !1918, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1880, line: 166, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1879, file: !1880, line: 476, baseType: !1921, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1880, line: 476, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1879, file: !1880, line: 479, baseType: !1924, size: 64, offset: 320)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1925, line: 144, baseType: !1926)
!1925 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1925, line: 100, size: 896, elements: !1928)
!1928 = !{!1929, !1935, !1940, !1945, !1947, !1948, !1949, !1950, !1951, !1952, !1957, !1959, !1960, !1965, !1970}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1927, file: !1925, line: 102, baseType: !1930, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1925, line: 52, baseType: !1931)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1934, !1772}
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1925, line: 47, baseType: !7)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1927, file: !1925, line: 105, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1925, line: 59, baseType: !1937)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1133, !1772, !1772}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1927, file: !1925, line: 108, baseType: !1941, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1925, line: 63, baseType: !1942)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1137}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1927, file: !1925, line: 111, baseType: !1946, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1927, file: !1925, line: 114, baseType: !1611, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1927, file: !1925, line: 117, baseType: !1611, size: 64, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1927, file: !1925, line: 120, baseType: !1611, size: 64, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1927, file: !1925, line: 124, baseType: !7, size: 32, offset: 448)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1927, file: !1925, line: 128, baseType: !7, size: 32, offset: 480)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1927, file: !1925, line: 131, baseType: !1953, size: 64, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1925, line: 75, baseType: !1954)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1137, !1611, !1611}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1927, file: !1925, line: 132, baseType: !1958, size: 64, offset: 576)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1925, line: 78, baseType: !1942)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1927, file: !1925, line: 135, baseType: !1137, size: 64, offset: 640)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1927, file: !1925, line: 136, baseType: !1961, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1925, line: 82, baseType: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!1137, !1137, !1611, !1611}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1927, file: !1925, line: 137, baseType: !1966, size: 64, offset: 768)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1925, line: 83, baseType: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1137, !1137}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1927, file: !1925, line: 141, baseType: !7, size: 32, offset: 832)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1879, file: !1880, line: 484, baseType: !1140, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1879, file: !1880, line: 488, baseType: !1140, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1879, file: !1880, line: 493, baseType: !1140, size: 64, offset: 512)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1879, file: !1880, line: 496, baseType: !1140, size: 64, offset: 576)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1879, file: !1880, line: 501, baseType: !1976, size: 64, offset: 640)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !341, line: 2355, size: 576, elements: !1978)
!1978 = !{!1979, !1982, !1983, !1984, !1985, !1987, !1988, !1993, !1994, !1995, !1996, !1997, !1998}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1977, file: !341, line: 2356, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !341, line: 2356, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1977, file: !341, line: 2357, baseType: !1138, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1977, file: !341, line: 2358, baseType: !1133, size: 32, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1977, file: !341, line: 2359, baseType: !1133, size: 32, offset: 160)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1977, file: !341, line: 2360, baseType: !1986, size: 128, offset: 192)
!1986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 128, elements: !1407)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1977, file: !341, line: 2364, baseType: !1133, size: 32, offset: 320)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1977, file: !341, line: 2367, baseType: !1989, size: 128, offset: 384)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !341, line: 2349, size: 128, elements: !1990)
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1989, file: !341, line: 2351, baseType: !1315, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1989, file: !341, line: 2352, baseType: !1196, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1977, file: !341, line: 2371, baseType: !340, size: 32, offset: 512)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1977, file: !341, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1977, file: !341, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1977, file: !341, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1977, file: !341, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1977, file: !341, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1879, file: !1880, line: 504, baseType: !2000, size: 64, offset: 704)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1880, line: 504, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1879, file: !1880, line: 507, baseType: !1924, size: 64, offset: 768)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1879, file: !1880, line: 510, baseType: !1133, size: 32, offset: 832)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1879, file: !1880, line: 513, baseType: !1133, size: 32, offset: 864)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1879, file: !1880, line: 516, baseType: !1265, size: 32, offset: 896)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1879, file: !1880, line: 519, baseType: !1265, size: 32, offset: 928)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1879, file: !1880, line: 522, baseType: !7, size: 32, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1879, file: !1880, line: 523, baseType: !7, size: 32, offset: 992)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1879, file: !1880, line: 528, baseType: !1138, size: 64, offset: 1024)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1879, file: !1880, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1879, file: !1880, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1879, file: !1880, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1879, file: !1880, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1879, file: !1880, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1879, file: !1880, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1879, file: !1880, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1879, file: !1880, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1879, file: !1880, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1879, file: !1880, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1879, file: !1880, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1879, file: !1880, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1879, file: !1880, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1879, file: !1880, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1879, file: !1880, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1879, file: !1880, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1874, file: !135, line: 3254, baseType: !1140, size: 64, offset: 1536)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1874, file: !135, line: 3257, baseType: !1140, size: 64, offset: 1600)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1874, file: !135, line: 3258, baseType: !1140, size: 64, offset: 1664)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1874, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1874, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1874, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1874, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1874, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1874, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1874, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1874, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1874, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1874, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1874, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1874, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1874, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1874, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1874, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1874, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1874, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1874, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1143, file: !135, line: 3394, baseType: !2048, size: 1344)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2048, file: !135, line: 2280, baseType: !1179, size: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2048, file: !135, line: 2281, baseType: !1140, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2048, file: !135, line: 2282, baseType: !1140, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !2048, file: !135, line: 2283, baseType: !1140, size: 64, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2048, file: !135, line: 2284, baseType: !1140, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2048, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !2048, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !2048, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !2048, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !2048, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !2048, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !2048, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2048, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !2048, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !2048, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !2048, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !2048, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !2048, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !2048, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !2048, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !2048, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2048, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !2048, file: !135, line: 2306, baseType: !1722, size: 32, offset: 544)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !2048, file: !135, line: 2307, baseType: !1140, size: 64, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !2048, file: !135, line: 2308, baseType: !1140, size: 64, offset: 640)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2048, file: !135, line: 2314, baseType: !2076, size: 64, offset: 704)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !2077)
!2077 = !{!2078, !2079, !2080}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2076, file: !135, line: 2310, baseType: !1133, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2076, file: !135, line: 2311, baseType: !1138, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !2076, file: !135, line: 2312, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2048, file: !135, line: 2315, baseType: !1140, size: 64, offset: 768)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !2048, file: !135, line: 2316, baseType: !1140, size: 64, offset: 832)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !2048, file: !135, line: 2317, baseType: !1140, size: 64, offset: 896)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !2048, file: !135, line: 2318, baseType: !1140, size: 64, offset: 960)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !2048, file: !135, line: 2319, baseType: !1140, size: 64, offset: 1024)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !2048, file: !135, line: 2320, baseType: !1140, size: 64, offset: 1088)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2048, file: !135, line: 2321, baseType: !1140, size: 64, offset: 1152)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !2048, file: !135, line: 2322, baseType: !1140, size: 64, offset: 1216)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !2048, file: !135, line: 2324, baseType: !2092, size: 64, offset: 1280)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1143, file: !135, line: 3395, baseType: !2095, size: 320)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !2096)
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2095, file: !135, line: 1470, baseType: !1179, size: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !2095, file: !135, line: 1471, baseType: !1140, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2095, file: !135, line: 1472, baseType: !1140, size: 64, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1143, file: !135, line: 3396, baseType: !2101, size: 320)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !2102)
!2102 = !{!2103, !2104, !2105}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2101, file: !135, line: 1483, baseType: !1179, size: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2101, file: !135, line: 1484, baseType: !1133, size: 32, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2101, file: !135, line: 1485, baseType: !1519, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1143, file: !135, line: 3397, baseType: !2107, size: 384)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2112}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2107, file: !135, line: 1830, baseType: !1179, size: 192)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2107, file: !135, line: 1831, baseType: !1265, size: 32, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2107, file: !135, line: 1832, baseType: !1140, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !2107, file: !135, line: 1835, baseType: !1519, size: 64, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1143, file: !135, line: 3398, baseType: !2114, size: 704)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !2115)
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2123}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2114, file: !135, line: 1899, baseType: !1179, size: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2114, file: !135, line: 1902, baseType: !1140, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !2114, file: !135, line: 1905, baseType: !1465, size: 64, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2114, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !2114, file: !135, line: 1911, baseType: !2121, size: 64, offset: 384)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !135, line: 1876, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !2114, file: !135, line: 1914, baseType: !1507, size: 256, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1143, file: !135, line: 3399, baseType: !2125, size: 704)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2144, !2145, !2146, !2147, !2148}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2125, file: !135, line: 2009, baseType: !1179, size: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !2125, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !2125, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2125, file: !135, line: 2014, baseType: !1265, size: 32, offset: 224)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2125, file: !135, line: 2016, baseType: !1140, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !2125, file: !135, line: 2017, baseType: !2133, size: 64, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !2135)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !2136)
!2136 = !{!2137}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2135, file: !135, line: 183, baseType: !2138, size: 128)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !2139)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !2140)
!2140 = !{!2141, !2142, !2143}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2139, file: !135, line: 182, baseType: !7, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2139, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2139, file: !135, line: 182, baseType: !1519, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !2125, file: !135, line: 2019, baseType: !1140, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !2125, file: !135, line: 2020, baseType: !1140, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !2125, file: !135, line: 2021, baseType: !1140, size: 64, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !2125, file: !135, line: 2022, baseType: !1140, size: 64, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !2125, file: !135, line: 2023, baseType: !1140, size: 64, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1143, file: !135, line: 3400, baseType: !2150, size: 832)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !2151)
!2151 = !{!2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2150, file: !135, line: 2431, baseType: !1179, size: 192)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2150, file: !135, line: 2433, baseType: !1140, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !2150, file: !135, line: 2434, baseType: !1140, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !2150, file: !135, line: 2435, baseType: !1140, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !2150, file: !135, line: 2436, baseType: !1140, size: 64, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !2150, file: !135, line: 2437, baseType: !2133, size: 64, offset: 448)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !2150, file: !135, line: 2438, baseType: !1140, size: 64, offset: 512)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !2150, file: !135, line: 2440, baseType: !1140, size: 64, offset: 576)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !2150, file: !135, line: 2441, baseType: !1140, size: 64, offset: 640)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !2150, file: !135, line: 2443, baseType: !2162, size: 128, offset: 704)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !2163)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !2164)
!2164 = !{!2165}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2163, file: !135, line: 182, baseType: !2138, size: 128)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1143, file: !135, line: 3401, baseType: !2167, size: 320)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !2168)
!2168 = !{!2169, !2170, !2177}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2167, file: !135, line: 3329, baseType: !1179, size: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2167, file: !135, line: 3330, baseType: !2171, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !2173)
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2172, file: !135, line: 3322, baseType: !2171, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2172, file: !135, line: 3323, baseType: !2171, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2172, file: !135, line: 3324, baseType: !1140, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2167, file: !135, line: 3331, baseType: !2171, size: 64, offset: 256)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1143, file: !135, line: 3402, baseType: !2179, size: 256)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !2180)
!2180 = !{!2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2179, file: !135, line: 1541, baseType: !1179, size: 192)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !2179, file: !135, line: 1542, baseType: !2183, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !2186)
!2186 = !{!2187}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2185, file: !135, line: 1538, baseType: !2188, size: 192)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !2190)
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2189, file: !135, line: 1537, baseType: !7, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2189, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2189, file: !135, line: 1537, baseType: !2194, size: 128, offset: 64)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2195, size: 128, elements: !1239)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !2196)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !2197)
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2196, file: !135, line: 1533, baseType: !1140, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2196, file: !135, line: 1534, baseType: !1140, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1143, file: !135, line: 3403, baseType: !2201, size: 512)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2212, !2213, !2214}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2201, file: !135, line: 1939, baseType: !1179, size: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2201, file: !135, line: 1940, baseType: !1265, size: 32, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2201, file: !135, line: 1941, baseType: !345, size: 32, offset: 224)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !2201, file: !135, line: 1946, baseType: !2207, size: 32, offset: 256)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !2208)
!2208 = !{!2209, !2210, !2211}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !2207, file: !135, line: 1943, baseType: !363, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !2207, file: !135, line: 1944, baseType: !370, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !2207, file: !135, line: 1945, baseType: !134, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !2201, file: !135, line: 1950, baseType: !1454, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !2201, file: !135, line: 1951, baseType: !1454, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2201, file: !135, line: 1953, baseType: !1519, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1143, file: !135, line: 3404, baseType: !2216, size: 1664)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !2217)
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2216, file: !135, line: 3338, baseType: !1179, size: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2216, file: !135, line: 3341, baseType: !2220, size: 1472, offset: 192)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !2221, line: 410, size: 1472, elements: !2222)
!2221 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !2220, file: !2221, line: 412, baseType: !1133, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !2220, file: !2221, line: 413, baseType: !1133, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !2220, file: !2221, line: 414, baseType: !1133, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !2220, file: !2221, line: 415, baseType: !1133, size: 32, offset: 96)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !2220, file: !2221, line: 416, baseType: !1133, size: 32, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !2220, file: !2221, line: 417, baseType: !1133, size: 32, offset: 160)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !2220, file: !2221, line: 418, baseType: !1132, size: 8, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !2220, file: !2221, line: 419, baseType: !1132, size: 8, offset: 200)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !2220, file: !2221, line: 420, baseType: !2232, size: 8, offset: 208)
!2232 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !2220, file: !2221, line: 421, baseType: !2232, size: 8, offset: 216)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !2220, file: !2221, line: 422, baseType: !2232, size: 8, offset: 224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !2220, file: !2221, line: 423, baseType: !2232, size: 8, offset: 232)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !2220, file: !2221, line: 424, baseType: !2232, size: 8, offset: 240)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !2220, file: !2221, line: 425, baseType: !2232, size: 8, offset: 248)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !2220, file: !2221, line: 426, baseType: !2232, size: 8, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !2220, file: !2221, line: 427, baseType: !2232, size: 8, offset: 264)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !2220, file: !2221, line: 428, baseType: !2232, size: 8, offset: 272)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !2220, file: !2221, line: 429, baseType: !2232, size: 8, offset: 280)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !2220, file: !2221, line: 430, baseType: !2232, size: 8, offset: 288)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !2220, file: !2221, line: 431, baseType: !2232, size: 8, offset: 296)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !2220, file: !2221, line: 432, baseType: !2232, size: 8, offset: 304)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !2220, file: !2221, line: 433, baseType: !2232, size: 8, offset: 312)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !2220, file: !2221, line: 434, baseType: !2232, size: 8, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !2220, file: !2221, line: 435, baseType: !2232, size: 8, offset: 328)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !2220, file: !2221, line: 436, baseType: !2232, size: 8, offset: 336)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !2220, file: !2221, line: 437, baseType: !2232, size: 8, offset: 344)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !2220, file: !2221, line: 438, baseType: !2232, size: 8, offset: 352)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !2220, file: !2221, line: 439, baseType: !2232, size: 8, offset: 360)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !2220, file: !2221, line: 440, baseType: !2232, size: 8, offset: 368)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !2220, file: !2221, line: 441, baseType: !2232, size: 8, offset: 376)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !2220, file: !2221, line: 442, baseType: !2232, size: 8, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !2220, file: !2221, line: 443, baseType: !2232, size: 8, offset: 392)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !2220, file: !2221, line: 444, baseType: !2232, size: 8, offset: 400)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !2220, file: !2221, line: 445, baseType: !2232, size: 8, offset: 408)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !2220, file: !2221, line: 446, baseType: !2232, size: 8, offset: 416)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !2220, file: !2221, line: 447, baseType: !2232, size: 8, offset: 424)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !2220, file: !2221, line: 448, baseType: !2232, size: 8, offset: 432)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !2220, file: !2221, line: 449, baseType: !2232, size: 8, offset: 440)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !2220, file: !2221, line: 450, baseType: !2232, size: 8, offset: 448)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !2220, file: !2221, line: 451, baseType: !2232, size: 8, offset: 456)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !2220, file: !2221, line: 452, baseType: !2232, size: 8, offset: 464)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !2220, file: !2221, line: 453, baseType: !2232, size: 8, offset: 472)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !2220, file: !2221, line: 454, baseType: !2232, size: 8, offset: 480)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !2220, file: !2221, line: 455, baseType: !2232, size: 8, offset: 488)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !2220, file: !2221, line: 456, baseType: !2232, size: 8, offset: 496)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !2220, file: !2221, line: 457, baseType: !2232, size: 8, offset: 504)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !2220, file: !2221, line: 458, baseType: !2232, size: 8, offset: 512)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !2220, file: !2221, line: 459, baseType: !2232, size: 8, offset: 520)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !2220, file: !2221, line: 460, baseType: !2232, size: 8, offset: 528)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !2220, file: !2221, line: 461, baseType: !2232, size: 8, offset: 536)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !2220, file: !2221, line: 462, baseType: !2232, size: 8, offset: 544)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !2220, file: !2221, line: 463, baseType: !2232, size: 8, offset: 552)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !2220, file: !2221, line: 464, baseType: !2232, size: 8, offset: 560)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !2220, file: !2221, line: 465, baseType: !2232, size: 8, offset: 568)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !2220, file: !2221, line: 466, baseType: !2232, size: 8, offset: 576)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !2220, file: !2221, line: 467, baseType: !2232, size: 8, offset: 584)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !2220, file: !2221, line: 468, baseType: !2232, size: 8, offset: 592)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !2220, file: !2221, line: 469, baseType: !2232, size: 8, offset: 600)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !2220, file: !2221, line: 470, baseType: !2232, size: 8, offset: 608)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !2220, file: !2221, line: 471, baseType: !2232, size: 8, offset: 616)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !2220, file: !2221, line: 472, baseType: !2232, size: 8, offset: 624)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !2220, file: !2221, line: 473, baseType: !2232, size: 8, offset: 632)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !2220, file: !2221, line: 474, baseType: !2232, size: 8, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !2220, file: !2221, line: 475, baseType: !2232, size: 8, offset: 648)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !2220, file: !2221, line: 476, baseType: !2232, size: 8, offset: 656)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !2220, file: !2221, line: 477, baseType: !2232, size: 8, offset: 664)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !2220, file: !2221, line: 478, baseType: !2232, size: 8, offset: 672)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !2220, file: !2221, line: 479, baseType: !2232, size: 8, offset: 680)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !2220, file: !2221, line: 480, baseType: !2232, size: 8, offset: 688)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !2220, file: !2221, line: 481, baseType: !2232, size: 8, offset: 696)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !2220, file: !2221, line: 482, baseType: !2232, size: 8, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !2220, file: !2221, line: 483, baseType: !2232, size: 8, offset: 712)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !2220, file: !2221, line: 484, baseType: !2232, size: 8, offset: 720)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !2220, file: !2221, line: 485, baseType: !2232, size: 8, offset: 728)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !2220, file: !2221, line: 486, baseType: !2232, size: 8, offset: 736)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !2220, file: !2221, line: 487, baseType: !2232, size: 8, offset: 744)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !2220, file: !2221, line: 488, baseType: !2232, size: 8, offset: 752)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !2220, file: !2221, line: 489, baseType: !2232, size: 8, offset: 760)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !2220, file: !2221, line: 490, baseType: !2232, size: 8, offset: 768)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !2220, file: !2221, line: 491, baseType: !2232, size: 8, offset: 776)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !2220, file: !2221, line: 492, baseType: !2232, size: 8, offset: 784)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !2220, file: !2221, line: 493, baseType: !2232, size: 8, offset: 792)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !2220, file: !2221, line: 494, baseType: !2232, size: 8, offset: 800)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !2220, file: !2221, line: 495, baseType: !2232, size: 8, offset: 808)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !2220, file: !2221, line: 496, baseType: !2232, size: 8, offset: 816)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !2220, file: !2221, line: 497, baseType: !2232, size: 8, offset: 824)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !2220, file: !2221, line: 498, baseType: !2232, size: 8, offset: 832)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !2220, file: !2221, line: 499, baseType: !2232, size: 8, offset: 840)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !2220, file: !2221, line: 500, baseType: !2232, size: 8, offset: 848)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !2220, file: !2221, line: 501, baseType: !2232, size: 8, offset: 856)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !2220, file: !2221, line: 502, baseType: !2232, size: 8, offset: 864)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !2220, file: !2221, line: 503, baseType: !2232, size: 8, offset: 872)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !2220, file: !2221, line: 504, baseType: !2232, size: 8, offset: 880)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !2220, file: !2221, line: 505, baseType: !2232, size: 8, offset: 888)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !2220, file: !2221, line: 506, baseType: !2232, size: 8, offset: 896)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !2220, file: !2221, line: 507, baseType: !2232, size: 8, offset: 904)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !2220, file: !2221, line: 508, baseType: !2232, size: 8, offset: 912)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !2220, file: !2221, line: 509, baseType: !2232, size: 8, offset: 920)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !2220, file: !2221, line: 510, baseType: !2232, size: 8, offset: 928)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !2220, file: !2221, line: 511, baseType: !2232, size: 8, offset: 936)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !2220, file: !2221, line: 512, baseType: !2232, size: 8, offset: 944)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !2220, file: !2221, line: 513, baseType: !2232, size: 8, offset: 952)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !2220, file: !2221, line: 514, baseType: !2232, size: 8, offset: 960)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !2220, file: !2221, line: 515, baseType: !2232, size: 8, offset: 968)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !2220, file: !2221, line: 516, baseType: !2232, size: 8, offset: 976)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !2220, file: !2221, line: 517, baseType: !2232, size: 8, offset: 984)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !2220, file: !2221, line: 518, baseType: !2232, size: 8, offset: 992)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !2220, file: !2221, line: 519, baseType: !2232, size: 8, offset: 1000)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !2220, file: !2221, line: 520, baseType: !2232, size: 8, offset: 1008)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !2220, file: !2221, line: 521, baseType: !2232, size: 8, offset: 1016)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !2220, file: !2221, line: 522, baseType: !2232, size: 8, offset: 1024)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !2220, file: !2221, line: 523, baseType: !2232, size: 8, offset: 1032)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !2220, file: !2221, line: 524, baseType: !2232, size: 8, offset: 1040)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !2220, file: !2221, line: 525, baseType: !2232, size: 8, offset: 1048)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !2220, file: !2221, line: 526, baseType: !2232, size: 8, offset: 1056)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !2220, file: !2221, line: 527, baseType: !2232, size: 8, offset: 1064)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !2220, file: !2221, line: 528, baseType: !2232, size: 8, offset: 1072)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !2220, file: !2221, line: 529, baseType: !2232, size: 8, offset: 1080)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !2220, file: !2221, line: 530, baseType: !2232, size: 8, offset: 1088)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !2220, file: !2221, line: 531, baseType: !2232, size: 8, offset: 1096)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !2220, file: !2221, line: 532, baseType: !2232, size: 8, offset: 1104)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !2220, file: !2221, line: 533, baseType: !2232, size: 8, offset: 1112)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !2220, file: !2221, line: 534, baseType: !2232, size: 8, offset: 1120)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !2220, file: !2221, line: 535, baseType: !2232, size: 8, offset: 1128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !2220, file: !2221, line: 536, baseType: !2232, size: 8, offset: 1136)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !2220, file: !2221, line: 537, baseType: !2232, size: 8, offset: 1144)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !2220, file: !2221, line: 538, baseType: !2232, size: 8, offset: 1152)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !2220, file: !2221, line: 539, baseType: !2232, size: 8, offset: 1160)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !2220, file: !2221, line: 540, baseType: !2232, size: 8, offset: 1168)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !2220, file: !2221, line: 541, baseType: !2232, size: 8, offset: 1176)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !2220, file: !2221, line: 542, baseType: !2232, size: 8, offset: 1184)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !2220, file: !2221, line: 543, baseType: !2232, size: 8, offset: 1192)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !2220, file: !2221, line: 544, baseType: !2232, size: 8, offset: 1200)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !2220, file: !2221, line: 545, baseType: !2232, size: 8, offset: 1208)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !2220, file: !2221, line: 546, baseType: !2232, size: 8, offset: 1216)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !2220, file: !2221, line: 547, baseType: !2232, size: 8, offset: 1224)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !2220, file: !2221, line: 548, baseType: !2232, size: 8, offset: 1232)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !2220, file: !2221, line: 549, baseType: !2232, size: 8, offset: 1240)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !2220, file: !2221, line: 550, baseType: !2232, size: 8, offset: 1248)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !2220, file: !2221, line: 551, baseType: !2232, size: 8, offset: 1256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !2220, file: !2221, line: 552, baseType: !2232, size: 8, offset: 1264)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !2220, file: !2221, line: 553, baseType: !2232, size: 8, offset: 1272)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !2220, file: !2221, line: 554, baseType: !2232, size: 8, offset: 1280)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !2220, file: !2221, line: 555, baseType: !2232, size: 8, offset: 1288)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !2220, file: !2221, line: 556, baseType: !2232, size: 8, offset: 1296)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !2220, file: !2221, line: 557, baseType: !2232, size: 8, offset: 1304)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !2220, file: !2221, line: 558, baseType: !2232, size: 8, offset: 1312)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !2220, file: !2221, line: 559, baseType: !2232, size: 8, offset: 1320)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !2220, file: !2221, line: 560, baseType: !2232, size: 8, offset: 1328)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !2220, file: !2221, line: 561, baseType: !2232, size: 8, offset: 1336)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !2220, file: !2221, line: 562, baseType: !2232, size: 8, offset: 1344)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !2220, file: !2221, line: 563, baseType: !2232, size: 8, offset: 1352)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !2220, file: !2221, line: 564, baseType: !2232, size: 8, offset: 1360)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !2220, file: !2221, line: 565, baseType: !2232, size: 8, offset: 1368)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !2220, file: !2221, line: 566, baseType: !2232, size: 8, offset: 1376)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !2220, file: !2221, line: 567, baseType: !2232, size: 8, offset: 1384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !2220, file: !2221, line: 568, baseType: !2232, size: 8, offset: 1392)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !2220, file: !2221, line: 569, baseType: !2232, size: 8, offset: 1400)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !2220, file: !2221, line: 570, baseType: !2232, size: 8, offset: 1408)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !2220, file: !2221, line: 571, baseType: !2232, size: 8, offset: 1416)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !2220, file: !2221, line: 572, baseType: !2232, size: 8, offset: 1424)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !2220, file: !2221, line: 573, baseType: !2232, size: 8, offset: 1432)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !2220, file: !2221, line: 574, baseType: !2232, size: 8, offset: 1440)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1143, file: !135, line: 3405, baseType: !2388, size: 384)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !2389)
!2389 = !{!2390, !2391}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2388, file: !135, line: 3353, baseType: !1179, size: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2388, file: !135, line: 3356, baseType: !2392, size: 192, offset: 192)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !2221, line: 578, size: 192, elements: !2393)
!2393 = !{!2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2392, file: !2221, line: 580, baseType: !1133, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2392, file: !2221, line: 581, baseType: !1133, size: 32, offset: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2392, file: !2221, line: 582, baseType: !1133, size: 32, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2392, file: !2221, line: 583, baseType: !1133, size: 32, offset: 96)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2392, file: !2221, line: 584, baseType: !1132, size: 8, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2392, file: !2221, line: 585, baseType: !1132, size: 8, offset: 136)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2392, file: !2221, line: 586, baseType: !1132, size: 8, offset: 144)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2392, file: !2221, line: 587, baseType: !1132, size: 8, offset: 152)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2392, file: !2221, line: 588, baseType: !1132, size: 8, offset: 160)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2392, file: !2221, line: 589, baseType: !1132, size: 8, offset: 168)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2392, file: !2221, line: 590, baseType: !1132, size: 8, offset: 176)
!2405 = !{!0}
!2406 = !{i32 2, !"Dwarf Version", i32 4}
!2407 = !{i32 2, !"Debug Info Version", i32 3}
!2408 = !{i32 1, !"wchar_size", i32 4}
!2409 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2410 = distinct !DISubprogram(name: "vprintf", scope: !2411, file: !2411, line: 39, type: !2412, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2422)
!2411 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!1133, !2414, !2415}
!2414 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1138)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2416, file: !3, baseType: !7, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2416, file: !3, baseType: !7, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2416, file: !3, baseType: !1137, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2416, file: !3, baseType: !1137, size: 64, offset: 128)
!2422 = !{!2423, !2424}
!2423 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2410, file: !2411, line: 39, type: !2414)
!2424 = !DILocalVariable(name: "__arg", arg: 2, scope: !2410, file: !2411, line: 39, type: !2415)
!2425 = !DILocation(line: 0, scope: !2410)
!2426 = !DILocation(line: 41, column: 20, scope: !2410)
!2427 = !DILocation(line: 41, column: 10, scope: !2410)
!2428 = !DILocation(line: 41, column: 3, scope: !2410)
!2429 = distinct !DISubprogram(name: "getchar", scope: !2411, file: !2411, line: 47, type: !2430, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!1133}
!2432 = !{}
!2433 = !DILocation(line: 49, column: 16, scope: !2429)
!2434 = !DILocation(line: 49, column: 10, scope: !2429)
!2435 = !DILocation(line: 49, column: 3, scope: !2429)
!2436 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2411, file: !2411, line: 56, type: !2437, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!1133, !2439}
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2441, line: 7, baseType: !2442)
!2441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2443, line: 49, size: 1728, elements: !2444)
!2443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2460, !2462, !2463, !2464, !2467, !2469, !2470, !2471, !2474, !2476, !2479, !2482, !2483, !2484, !2485, !2486}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2442, file: !2443, line: 51, baseType: !1133, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2442, file: !2443, line: 54, baseType: !1135, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2442, file: !2443, line: 55, baseType: !1135, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2442, file: !2443, line: 56, baseType: !1135, size: 64, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2442, file: !2443, line: 57, baseType: !1135, size: 64, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2442, file: !2443, line: 58, baseType: !1135, size: 64, offset: 320)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2442, file: !2443, line: 59, baseType: !1135, size: 64, offset: 384)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2442, file: !2443, line: 60, baseType: !1135, size: 64, offset: 448)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2442, file: !2443, line: 61, baseType: !1135, size: 64, offset: 512)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2442, file: !2443, line: 64, baseType: !1135, size: 64, offset: 576)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2442, file: !2443, line: 65, baseType: !1135, size: 64, offset: 640)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2442, file: !2443, line: 66, baseType: !1135, size: 64, offset: 704)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2442, file: !2443, line: 68, baseType: !2458, size: 64, offset: 768)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2443, line: 36, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2442, file: !2443, line: 70, baseType: !2461, size: 64, offset: 832)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2442, file: !2443, line: 72, baseType: !1133, size: 32, offset: 896)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2442, file: !2443, line: 73, baseType: !1133, size: 32, offset: 928)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2442, file: !2443, line: 74, baseType: !2465, size: 64, offset: 960)
!2465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2466, line: 152, baseType: !1196)
!2466 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2442, file: !2443, line: 77, baseType: !2468, size: 16, offset: 1024)
!2468 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2442, file: !2443, line: 78, baseType: !2232, size: 8, offset: 1040)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2442, file: !2443, line: 79, baseType: !1238, size: 8, offset: 1048)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2442, file: !2443, line: 81, baseType: !2472, size: 64, offset: 1088)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2443, line: 43, baseType: null)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2442, file: !2443, line: 89, baseType: !2475, size: 64, offset: 1152)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2466, line: 153, baseType: !1196)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2442, file: !2443, line: 91, baseType: !2477, size: 64, offset: 1216)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2443, line: 37, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2442, file: !2443, line: 92, baseType: !2480, size: 64, offset: 1280)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2443, line: 38, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2442, file: !2443, line: 93, baseType: !2461, size: 64, offset: 1344)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2442, file: !2443, line: 94, baseType: !1137, size: 64, offset: 1408)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2442, file: !2443, line: 95, baseType: !1611, size: 64, offset: 1472)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2442, file: !2443, line: 96, baseType: !1133, size: 32, offset: 1536)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2442, file: !2443, line: 98, baseType: !2487, size: 160, offset: 1568)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 160, elements: !2488)
!2488 = !{!2489}
!2489 = !DISubrange(count: 20)
!2490 = !{!2491}
!2491 = !DILocalVariable(name: "__fp", arg: 1, scope: !2436, file: !2411, line: 56, type: !2439)
!2492 = !DILocation(line: 0, scope: !2436)
!2493 = !DILocation(line: 58, column: 10, scope: !2436)
!2494 = !DILocation(line: 58, column: 3, scope: !2436)
!2495 = distinct !DISubprogram(name: "getc_unlocked", scope: !2411, file: !2411, line: 66, type: !2437, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2496)
!2496 = !{!2497}
!2497 = !DILocalVariable(name: "__fp", arg: 1, scope: !2495, file: !2411, line: 66, type: !2439)
!2498 = !DILocation(line: 0, scope: !2495)
!2499 = !DILocation(line: 68, column: 10, scope: !2495)
!2500 = !DILocation(line: 68, column: 3, scope: !2495)
!2501 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2411, file: !2411, line: 73, type: !2430, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2432)
!2502 = !DILocation(line: 75, column: 10, scope: !2501)
!2503 = !DILocation(line: 75, column: 3, scope: !2501)
!2504 = distinct !DISubprogram(name: "putchar", scope: !2411, file: !2411, line: 82, type: !2505, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!1133, !1133}
!2507 = !{!2508}
!2508 = !DILocalVariable(name: "__c", arg: 1, scope: !2504, file: !2411, line: 82, type: !1133)
!2509 = !DILocation(line: 0, scope: !2504)
!2510 = !DILocation(line: 84, column: 21, scope: !2504)
!2511 = !DILocation(line: 84, column: 10, scope: !2504)
!2512 = !DILocation(line: 84, column: 3, scope: !2504)
!2513 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2411, file: !2411, line: 91, type: !2514, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!1133, !1133, !2439}
!2516 = !{!2517, !2518}
!2517 = !DILocalVariable(name: "__c", arg: 1, scope: !2513, file: !2411, line: 91, type: !1133)
!2518 = !DILocalVariable(name: "__stream", arg: 2, scope: !2513, file: !2411, line: 91, type: !2439)
!2519 = !DILocation(line: 0, scope: !2513)
!2520 = !DILocation(line: 93, column: 10, scope: !2513)
!2521 = !DILocation(line: 93, column: 3, scope: !2513)
!2522 = distinct !DISubprogram(name: "putc_unlocked", scope: !2411, file: !2411, line: 101, type: !2514, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2523)
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "__c", arg: 1, scope: !2522, file: !2411, line: 101, type: !1133)
!2525 = !DILocalVariable(name: "__stream", arg: 2, scope: !2522, file: !2411, line: 101, type: !2439)
!2526 = !DILocation(line: 0, scope: !2522)
!2527 = !DILocation(line: 103, column: 10, scope: !2522)
!2528 = !DILocation(line: 103, column: 3, scope: !2522)
!2529 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2411, file: !2411, line: 108, type: !2505, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2530)
!2530 = !{!2531}
!2531 = !DILocalVariable(name: "__c", arg: 1, scope: !2529, file: !2411, line: 108, type: !1133)
!2532 = !DILocation(line: 0, scope: !2529)
!2533 = !DILocation(line: 110, column: 10, scope: !2529)
!2534 = !DILocation(line: 110, column: 3, scope: !2529)
!2535 = distinct !DISubprogram(name: "getline", scope: !2411, file: !2411, line: 118, type: !2536, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2540)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!2538, !1134, !2539, !2439}
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2466, line: 193, baseType: !1196)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!2540 = !{!2541, !2542, !2543}
!2541 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2535, file: !2411, line: 118, type: !1134)
!2542 = !DILocalVariable(name: "__n", arg: 2, scope: !2535, file: !2411, line: 118, type: !2539)
!2543 = !DILocalVariable(name: "__stream", arg: 3, scope: !2535, file: !2411, line: 118, type: !2439)
!2544 = !DILocation(line: 0, scope: !2535)
!2545 = !DILocation(line: 120, column: 10, scope: !2535)
!2546 = !DILocation(line: 120, column: 3, scope: !2535)
!2547 = distinct !DISubprogram(name: "feof_unlocked", scope: !2411, file: !2411, line: 128, type: !2437, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2548)
!2548 = !{!2549}
!2549 = !DILocalVariable(name: "__stream", arg: 1, scope: !2547, file: !2411, line: 128, type: !2439)
!2550 = !DILocation(line: 0, scope: !2547)
!2551 = !DILocation(line: 130, column: 10, scope: !2547)
!2552 = !DILocation(line: 130, column: 3, scope: !2547)
!2553 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2411, file: !2411, line: 135, type: !2437, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2554)
!2554 = !{!2555}
!2555 = !DILocalVariable(name: "__stream", arg: 1, scope: !2553, file: !2411, line: 135, type: !2439)
!2556 = !DILocation(line: 0, scope: !2553)
!2557 = !DILocation(line: 137, column: 10, scope: !2553)
!2558 = !DILocation(line: 137, column: 3, scope: !2553)
!2559 = distinct !DISubprogram(name: "tolower", scope: !2560, file: !2560, line: 207, type: !2505, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2561)
!2560 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2561 = !{!2562}
!2562 = !DILocalVariable(name: "__c", arg: 1, scope: !2559, file: !2560, line: 207, type: !1133)
!2563 = !DILocation(line: 0, scope: !2559)
!2564 = !DILocation(line: 209, column: 22, scope: !2559)
!2565 = !DILocation(line: 209, column: 39, scope: !2559)
!2566 = !DILocation(line: 209, column: 38, scope: !2559)
!2567 = !DILocation(line: 209, column: 37, scope: !2559)
!2568 = !DILocation(line: 209, column: 10, scope: !2559)
!2569 = !DILocation(line: 209, column: 3, scope: !2559)
!2570 = distinct !DISubprogram(name: "toupper", scope: !2560, file: !2560, line: 213, type: !2505, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2571)
!2571 = !{!2572}
!2572 = !DILocalVariable(name: "__c", arg: 1, scope: !2570, file: !2560, line: 213, type: !1133)
!2573 = !DILocation(line: 0, scope: !2570)
!2574 = !DILocation(line: 215, column: 22, scope: !2570)
!2575 = !DILocation(line: 215, column: 39, scope: !2570)
!2576 = !DILocation(line: 215, column: 38, scope: !2570)
!2577 = !DILocation(line: 215, column: 37, scope: !2570)
!2578 = !DILocation(line: 215, column: 10, scope: !2570)
!2579 = !DILocation(line: 215, column: 3, scope: !2570)
!2580 = distinct !DISubprogram(name: "atoi", scope: !2581, file: !2581, line: 361, type: !2582, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2584)
!2581 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!1133, !1138}
!2584 = !{!2585}
!2585 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2580, file: !2581, line: 361, type: !1138)
!2586 = !DILocation(line: 0, scope: !2580)
!2587 = !DILocation(line: 363, column: 16, scope: !2580)
!2588 = !DILocation(line: 363, column: 10, scope: !2580)
!2589 = !DILocation(line: 363, column: 3, scope: !2580)
!2590 = distinct !DISubprogram(name: "atol", scope: !2581, file: !2581, line: 366, type: !2591, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!1196, !1138}
!2593 = !{!2594}
!2594 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2590, file: !2581, line: 366, type: !1138)
!2595 = !DILocation(line: 0, scope: !2590)
!2596 = !DILocation(line: 368, column: 10, scope: !2590)
!2597 = !DILocation(line: 368, column: 3, scope: !2590)
!2598 = distinct !DISubprogram(name: "atoll", scope: !2581, file: !2581, line: 373, type: !2599, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2602)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!2601, !1138}
!2601 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2602 = !{!2603}
!2603 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2598, file: !2581, line: 373, type: !1138)
!2604 = !DILocation(line: 0, scope: !2598)
!2605 = !DILocation(line: 375, column: 10, scope: !2598)
!2606 = !DILocation(line: 375, column: 3, scope: !2598)
!2607 = distinct !DISubprogram(name: "bsearch", scope: !2608, file: !2608, line: 20, type: !2609, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2612)
!2608 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!1137, !1772, !1772, !1611, !1611, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2581, line: 808, baseType: !1937)
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622}
!2613 = !DILocalVariable(name: "__key", arg: 1, scope: !2607, file: !2608, line: 20, type: !1772)
!2614 = !DILocalVariable(name: "__base", arg: 2, scope: !2607, file: !2608, line: 20, type: !1772)
!2615 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2607, file: !2608, line: 20, type: !1611)
!2616 = !DILocalVariable(name: "__size", arg: 4, scope: !2607, file: !2608, line: 20, type: !1611)
!2617 = !DILocalVariable(name: "__compar", arg: 5, scope: !2607, file: !2608, line: 21, type: !2611)
!2618 = !DILocalVariable(name: "__l", scope: !2607, file: !2608, line: 23, type: !1611)
!2619 = !DILocalVariable(name: "__u", scope: !2607, file: !2608, line: 23, type: !1611)
!2620 = !DILocalVariable(name: "__idx", scope: !2607, file: !2608, line: 23, type: !1611)
!2621 = !DILocalVariable(name: "__p", scope: !2607, file: !2608, line: 24, type: !1772)
!2622 = !DILocalVariable(name: "__comparison", scope: !2607, file: !2608, line: 25, type: !1133)
!2623 = !DILocation(line: 0, scope: !2607)
!2624 = !DILocation(line: 29, column: 3, scope: !2607)
!2625 = !DILocation(line: 27, column: 7, scope: !2607)
!2626 = !DILocation(line: 29, column: 14, scope: !2607)
!2627 = !DILocation(line: 31, column: 20, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2607, file: !2608, line: 30, column: 5)
!2629 = !DILocation(line: 31, column: 27, scope: !2628)
!2630 = !DILocation(line: 32, column: 56, scope: !2628)
!2631 = !DILocation(line: 32, column: 47, scope: !2628)
!2632 = !DILocation(line: 33, column: 22, scope: !2628)
!2633 = !DILocation(line: 34, column: 24, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2628, file: !2608, line: 34, column: 11)
!2635 = !DILocation(line: 34, column: 11, scope: !2628)
!2636 = !DILocation(line: 36, column: 29, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2634, file: !2608, line: 36, column: 16)
!2638 = !DILocation(line: 36, column: 16, scope: !2634)
!2639 = !DILocation(line: 37, column: 14, scope: !2637)
!2640 = distinct !{!2640, !2624, !2641}
!2641 = !DILocation(line: 40, column: 5, scope: !2607)
!2642 = !DILocation(line: 43, column: 1, scope: !2607)
!2643 = distinct !DISubprogram(name: "atof", scope: !2644, file: !2644, line: 25, type: !2645, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2648)
!2644 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!2647, !1138}
!2647 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2648 = !{!2649}
!2649 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2643, file: !2644, line: 25, type: !1138)
!2650 = !DILocation(line: 0, scope: !2643)
!2651 = !DILocation(line: 27, column: 10, scope: !2643)
!2652 = !DILocation(line: 27, column: 3, scope: !2643)
!2653 = distinct !DISubprogram(name: "strtoimax", scope: !2654, file: !2654, line: 324, type: !2655, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2661)
!2654 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!2657, !2414, !2660, !1133}
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2658, line: 101, baseType: !2659)
!2658 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2466, line: 72, baseType: !1196)
!2660 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1134)
!2661 = !{!2662, !2663, !2664}
!2662 = !DILocalVariable(name: "nptr", arg: 1, scope: !2653, file: !2654, line: 324, type: !2414)
!2663 = !DILocalVariable(name: "endptr", arg: 2, scope: !2653, file: !2654, line: 324, type: !2660)
!2664 = !DILocalVariable(name: "base", arg: 3, scope: !2653, file: !2654, line: 324, type: !1133)
!2665 = !DILocation(line: 0, scope: !2653)
!2666 = !DILocation(line: 327, column: 10, scope: !2653)
!2667 = !DILocation(line: 327, column: 3, scope: !2653)
!2668 = distinct !DISubprogram(name: "strtoumax", scope: !2654, file: !2654, line: 336, type: !2669, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2673)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!2671, !2414, !2660, !1133}
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2658, line: 102, baseType: !2672)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2466, line: 73, baseType: !1194)
!2673 = !{!2674, !2675, !2676}
!2674 = !DILocalVariable(name: "nptr", arg: 1, scope: !2668, file: !2654, line: 336, type: !2414)
!2675 = !DILocalVariable(name: "endptr", arg: 2, scope: !2668, file: !2654, line: 336, type: !2660)
!2676 = !DILocalVariable(name: "base", arg: 3, scope: !2668, file: !2654, line: 336, type: !1133)
!2677 = !DILocation(line: 0, scope: !2668)
!2678 = !DILocation(line: 339, column: 10, scope: !2668)
!2679 = !DILocation(line: 339, column: 3, scope: !2668)
!2680 = distinct !DISubprogram(name: "wcstoimax", scope: !2654, file: !2654, line: 348, type: !2681, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2690)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!2657, !2683, !2687, !1133}
!2683 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2684)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2654, line: 34, baseType: !1133)
!2687 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2688)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2690 = !{!2691, !2692, !2693}
!2691 = !DILocalVariable(name: "nptr", arg: 1, scope: !2680, file: !2654, line: 348, type: !2683)
!2692 = !DILocalVariable(name: "endptr", arg: 2, scope: !2680, file: !2654, line: 348, type: !2687)
!2693 = !DILocalVariable(name: "base", arg: 3, scope: !2680, file: !2654, line: 348, type: !1133)
!2694 = !DILocation(line: 0, scope: !2680)
!2695 = !DILocation(line: 351, column: 10, scope: !2680)
!2696 = !DILocation(line: 351, column: 3, scope: !2680)
!2697 = distinct !DISubprogram(name: "wcstoumax", scope: !2654, file: !2654, line: 362, type: !2698, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!2671, !2683, !2687, !1133}
!2700 = !{!2701, !2702, !2703}
!2701 = !DILocalVariable(name: "nptr", arg: 1, scope: !2697, file: !2654, line: 362, type: !2683)
!2702 = !DILocalVariable(name: "endptr", arg: 2, scope: !2697, file: !2654, line: 362, type: !2687)
!2703 = !DILocalVariable(name: "base", arg: 3, scope: !2697, file: !2654, line: 362, type: !1133)
!2704 = !DILocation(line: 0, scope: !2697)
!2705 = !DILocation(line: 365, column: 10, scope: !2697)
!2706 = !DILocation(line: 365, column: 3, scope: !2697)
!2707 = distinct !DISubprogram(name: "stat", scope: !2708, file: !2708, line: 453, type: !2709, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2746)
!2708 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!1133, !1138, !2711}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2713, line: 46, size: 1152, elements: !2714)
!2713 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2714 = !{!2715, !2717, !2719, !2721, !2723, !2725, !2727, !2728, !2729, !2730, !2732, !2734, !2742, !2743, !2744}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2712, file: !2713, line: 48, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2466, line: 145, baseType: !1194)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2712, file: !2713, line: 53, baseType: !2718, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2466, line: 148, baseType: !1194)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2712, file: !2713, line: 61, baseType: !2720, size: 64, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2466, line: 151, baseType: !1194)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2712, file: !2713, line: 62, baseType: !2722, size: 32, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2466, line: 150, baseType: !7)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2712, file: !2713, line: 64, baseType: !2724, size: 32, offset: 224)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2466, line: 146, baseType: !7)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2712, file: !2713, line: 65, baseType: !2726, size: 32, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2466, line: 147, baseType: !7)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2712, file: !2713, line: 67, baseType: !1133, size: 32, offset: 288)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2712, file: !2713, line: 69, baseType: !2716, size: 64, offset: 320)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2712, file: !2713, line: 74, baseType: !2465, size: 64, offset: 384)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2712, file: !2713, line: 78, baseType: !2731, size: 64, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2466, line: 174, baseType: !1196)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2712, file: !2713, line: 80, baseType: !2733, size: 64, offset: 512)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2466, line: 179, baseType: !1196)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2712, file: !2713, line: 91, baseType: !2735, size: 128, offset: 576)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2736, line: 10, size: 128, elements: !2737)
!2736 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2737 = !{!2738, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2735, file: !2736, line: 12, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2466, line: 160, baseType: !1196)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2735, file: !2736, line: 16, baseType: !2741, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2466, line: 196, baseType: !1196)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2712, file: !2713, line: 92, baseType: !2735, size: 128, offset: 704)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2712, file: !2713, line: 93, baseType: !2735, size: 128, offset: 832)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2712, file: !2713, line: 106, baseType: !2745, size: 192, offset: 960)
!2745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2741, size: 192, elements: !1214)
!2746 = !{!2747, !2748}
!2747 = !DILocalVariable(name: "__path", arg: 1, scope: !2707, file: !2708, line: 453, type: !1138)
!2748 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2707, file: !2708, line: 453, type: !2711)
!2749 = !DILocation(line: 0, scope: !2707)
!2750 = !DILocation(line: 455, column: 10, scope: !2707)
!2751 = !DILocation(line: 455, column: 3, scope: !2707)
!2752 = distinct !DISubprogram(name: "lstat", scope: !2708, file: !2708, line: 460, type: !2709, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2753)
!2753 = !{!2754, !2755}
!2754 = !DILocalVariable(name: "__path", arg: 1, scope: !2752, file: !2708, line: 460, type: !1138)
!2755 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2752, file: !2708, line: 460, type: !2711)
!2756 = !DILocation(line: 0, scope: !2752)
!2757 = !DILocation(line: 462, column: 10, scope: !2752)
!2758 = !DILocation(line: 462, column: 3, scope: !2752)
!2759 = distinct !DISubprogram(name: "fstat", scope: !2708, file: !2708, line: 467, type: !2760, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!1133, !1133, !2711}
!2762 = !{!2763, !2764}
!2763 = !DILocalVariable(name: "__fd", arg: 1, scope: !2759, file: !2708, line: 467, type: !1133)
!2764 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2759, file: !2708, line: 467, type: !2711)
!2765 = !DILocation(line: 0, scope: !2759)
!2766 = !DILocation(line: 469, column: 10, scope: !2759)
!2767 = !DILocation(line: 469, column: 3, scope: !2759)
!2768 = distinct !DISubprogram(name: "fstatat", scope: !2708, file: !2708, line: 474, type: !2769, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!1133, !1133, !1138, !2711, !1133}
!2771 = !{!2772, !2773, !2774, !2775}
!2772 = !DILocalVariable(name: "__fd", arg: 1, scope: !2768, file: !2708, line: 474, type: !1133)
!2773 = !DILocalVariable(name: "__filename", arg: 2, scope: !2768, file: !2708, line: 474, type: !1138)
!2774 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2768, file: !2708, line: 474, type: !2711)
!2775 = !DILocalVariable(name: "__flag", arg: 4, scope: !2768, file: !2708, line: 474, type: !1133)
!2776 = !DILocation(line: 0, scope: !2768)
!2777 = !DILocation(line: 477, column: 10, scope: !2768)
!2778 = !DILocation(line: 477, column: 3, scope: !2768)
!2779 = distinct !DISubprogram(name: "mknod", scope: !2708, file: !2708, line: 483, type: !2780, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!1133, !1138, !2722, !2716}
!2782 = !{!2783, !2784, !2785}
!2783 = !DILocalVariable(name: "__path", arg: 1, scope: !2779, file: !2708, line: 483, type: !1138)
!2784 = !DILocalVariable(name: "__mode", arg: 2, scope: !2779, file: !2708, line: 483, type: !2722)
!2785 = !DILocalVariable(name: "__dev", arg: 3, scope: !2779, file: !2708, line: 483, type: !2716)
!2786 = !DILocation(line: 0, scope: !2779)
!2787 = !DILocation(line: 485, column: 10, scope: !2779)
!2788 = !DILocation(line: 485, column: 3, scope: !2779)
!2789 = distinct !DISubprogram(name: "mknodat", scope: !2708, file: !2708, line: 491, type: !2790, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!1133, !1133, !1138, !2722, !2716}
!2792 = !{!2793, !2794, !2795, !2796}
!2793 = !DILocalVariable(name: "__fd", arg: 1, scope: !2789, file: !2708, line: 491, type: !1133)
!2794 = !DILocalVariable(name: "__path", arg: 2, scope: !2789, file: !2708, line: 491, type: !1138)
!2795 = !DILocalVariable(name: "__mode", arg: 3, scope: !2789, file: !2708, line: 491, type: !2722)
!2796 = !DILocalVariable(name: "__dev", arg: 4, scope: !2789, file: !2708, line: 491, type: !2716)
!2797 = !DILocation(line: 0, scope: !2789)
!2798 = !DILocation(line: 494, column: 10, scope: !2789)
!2799 = !DILocation(line: 494, column: 3, scope: !2789)
!2800 = distinct !DISubprogram(name: "stat64", scope: !2708, file: !2708, line: 502, type: !2801, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2823)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!1133, !1138, !2803}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2713, line: 119, size: 1152, elements: !2805)
!2805 = !{!2806, !2807, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2819, !2820, !2821, !2822}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2804, file: !2713, line: 121, baseType: !2716, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2804, file: !2713, line: 123, baseType: !2808, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2466, line: 149, baseType: !1194)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2804, file: !2713, line: 124, baseType: !2720, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2804, file: !2713, line: 125, baseType: !2722, size: 32, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2804, file: !2713, line: 132, baseType: !2724, size: 32, offset: 224)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2804, file: !2713, line: 133, baseType: !2726, size: 32, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2804, file: !2713, line: 135, baseType: !1133, size: 32, offset: 288)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2804, file: !2713, line: 136, baseType: !2716, size: 64, offset: 320)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2804, file: !2713, line: 137, baseType: !2465, size: 64, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2804, file: !2713, line: 143, baseType: !2731, size: 64, offset: 448)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2804, file: !2713, line: 144, baseType: !2818, size: 64, offset: 512)
!2818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2466, line: 180, baseType: !1196)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2804, file: !2713, line: 152, baseType: !2735, size: 128, offset: 576)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2804, file: !2713, line: 153, baseType: !2735, size: 128, offset: 704)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2804, file: !2713, line: 154, baseType: !2735, size: 128, offset: 832)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2804, file: !2713, line: 164, baseType: !2745, size: 192, offset: 960)
!2823 = !{!2824, !2825}
!2824 = !DILocalVariable(name: "__path", arg: 1, scope: !2800, file: !2708, line: 502, type: !1138)
!2825 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2800, file: !2708, line: 502, type: !2803)
!2826 = !DILocation(line: 0, scope: !2800)
!2827 = !DILocation(line: 504, column: 10, scope: !2800)
!2828 = !DILocation(line: 504, column: 3, scope: !2800)
!2829 = distinct !DISubprogram(name: "lstat64", scope: !2708, file: !2708, line: 509, type: !2801, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2830)
!2830 = !{!2831, !2832}
!2831 = !DILocalVariable(name: "__path", arg: 1, scope: !2829, file: !2708, line: 509, type: !1138)
!2832 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2829, file: !2708, line: 509, type: !2803)
!2833 = !DILocation(line: 0, scope: !2829)
!2834 = !DILocation(line: 511, column: 10, scope: !2829)
!2835 = !DILocation(line: 511, column: 3, scope: !2829)
!2836 = distinct !DISubprogram(name: "fstat64", scope: !2708, file: !2708, line: 516, type: !2837, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!1133, !1133, !2803}
!2839 = !{!2840, !2841}
!2840 = !DILocalVariable(name: "__fd", arg: 1, scope: !2836, file: !2708, line: 516, type: !1133)
!2841 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2836, file: !2708, line: 516, type: !2803)
!2842 = !DILocation(line: 0, scope: !2836)
!2843 = !DILocation(line: 518, column: 10, scope: !2836)
!2844 = !DILocation(line: 518, column: 3, scope: !2836)
!2845 = distinct !DISubprogram(name: "fstatat64", scope: !2708, file: !2708, line: 523, type: !2846, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!1133, !1133, !1138, !2803, !1133}
!2848 = !{!2849, !2850, !2851, !2852}
!2849 = !DILocalVariable(name: "__fd", arg: 1, scope: !2845, file: !2708, line: 523, type: !1133)
!2850 = !DILocalVariable(name: "__filename", arg: 2, scope: !2845, file: !2708, line: 523, type: !1138)
!2851 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2845, file: !2708, line: 523, type: !2803)
!2852 = !DILocalVariable(name: "__flag", arg: 4, scope: !2845, file: !2708, line: 523, type: !1133)
!2853 = !DILocation(line: 0, scope: !2845)
!2854 = !DILocation(line: 526, column: 10, scope: !2845)
!2855 = !DILocation(line: 526, column: 3, scope: !2845)
!2856 = distinct !DISubprogram(name: "lhd_do_nothing", scope: !3, file: !3, line: 46, type: !2857, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2432)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{null}
!2859 = !DILocation(line: 48, column: 1, scope: !2856)
!2860 = distinct !DISubprogram(name: "lhd_do_nothing_t", scope: !3, file: !3, line: 53, type: !2861, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2863)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{null, !1140}
!2863 = !{!2864}
!2864 = !DILocalVariable(name: "t", arg: 1, scope: !2860, file: !3, line: 53, type: !1140)
!2865 = !DILocation(line: 0, scope: !2860)
!2866 = !DILocation(line: 55, column: 1, scope: !2860)
!2867 = distinct !DISubprogram(name: "lhd_pass_through_t", scope: !3, file: !3, line: 59, type: !2868, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!1140, !1140}
!2870 = !{!2871}
!2871 = !DILocalVariable(name: "t", arg: 1, scope: !2867, file: !3, line: 59, type: !1140)
!2872 = !DILocation(line: 0, scope: !2867)
!2873 = !DILocation(line: 61, column: 3, scope: !2867)
!2874 = distinct !DISubprogram(name: "lhd_do_nothing_i", scope: !3, file: !3, line: 67, type: !2875, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !1133}
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "i", arg: 1, scope: !2874, file: !3, line: 67, type: !1133)
!2879 = !DILocation(line: 0, scope: !2874)
!2880 = !DILocation(line: 69, column: 1, scope: !2874)
!2881 = distinct !DISubprogram(name: "lhd_do_nothing_iii_return_null_tree", scope: !3, file: !3, line: 74, type: !2882, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!1140, !1133, !1133, !1133}
!2884 = !{!2885, !2886, !2887}
!2885 = !DILocalVariable(name: "i", arg: 1, scope: !2881, file: !3, line: 74, type: !1133)
!2886 = !DILocalVariable(name: "j", arg: 2, scope: !2881, file: !3, line: 75, type: !1133)
!2887 = !DILocalVariable(name: "k", arg: 3, scope: !2881, file: !3, line: 76, type: !1133)
!2888 = !DILocation(line: 0, scope: !2881)
!2889 = !DILocation(line: 78, column: 3, scope: !2881)
!2890 = distinct !DISubprogram(name: "lhd_do_nothing_f", scope: !3, file: !3, line: 84, type: !2891, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2893)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{null, !1878}
!2893 = !{!2894}
!2894 = !DILocalVariable(name: "f", arg: 1, scope: !2890, file: !3, line: 84, type: !1878)
!2895 = !DILocation(line: 0, scope: !2890)
!2896 = !DILocation(line: 86, column: 1, scope: !2890)
!2897 = distinct !DISubprogram(name: "lhd_return_null_tree_v", scope: !3, file: !3, line: 91, type: !2898, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2432)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!1140}
!2900 = !DILocation(line: 93, column: 3, scope: !2897)
!2901 = distinct !DISubprogram(name: "lhd_return_null_tree", scope: !3, file: !3, line: 99, type: !2868, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2902)
!2902 = !{!2903}
!2903 = !DILocalVariable(name: "t", arg: 1, scope: !2901, file: !3, line: 99, type: !1140)
!2904 = !DILocation(line: 0, scope: !2901)
!2905 = !DILocation(line: 101, column: 3, scope: !2901)
!2906 = distinct !DISubprogram(name: "lhd_return_null_const_tree", scope: !3, file: !3, line: 107, type: !2907, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!1140, !2909}
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !1141, line: 59, baseType: !2910)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1143)
!2912 = !{!2913}
!2913 = !DILocalVariable(name: "t", arg: 1, scope: !2906, file: !3, line: 107, type: !2909)
!2914 = !DILocation(line: 0, scope: !2906)
!2915 = !DILocation(line: 109, column: 3, scope: !2906)
!2916 = distinct !DISubprogram(name: "lhd_post_options", scope: !3, file: !3, line: 115, type: !2917, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2920)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!1132, !2919}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!2920 = !{!2921}
!2921 = !DILocalVariable(name: "pfilename", arg: 1, scope: !2916, file: !3, line: 115, type: !2919)
!2922 = !DILocation(line: 0, scope: !2916)
!2923 = !DILocation(line: 119, column: 33, scope: !2916)
!2924 = !DILocation(line: 120, column: 3, scope: !2916)
!2925 = distinct !DISubprogram(name: "lhd_print_tree_nothing", scope: !3, file: !3, line: 126, type: !2926, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !2439, !1140, !1133}
!2928 = !{!2929, !2930, !2931}
!2929 = !DILocalVariable(name: "file", arg: 1, scope: !2925, file: !3, line: 126, type: !2439)
!2930 = !DILocalVariable(name: "node", arg: 2, scope: !2925, file: !3, line: 127, type: !1140)
!2931 = !DILocalVariable(name: "indent", arg: 3, scope: !2925, file: !3, line: 128, type: !1133)
!2932 = !DILocation(line: 0, scope: !2925)
!2933 = !DILocation(line: 130, column: 1, scope: !2925)
!2934 = distinct !DISubprogram(name: "lhd_warn_unused_global_decl", scope: !3, file: !3, line: 135, type: !2935, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2937)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!1132, !2909}
!2937 = !{!2938}
!2938 = !DILocalVariable(name: "decl", arg: 1, scope: !2934, file: !3, line: 135, type: !2909)
!2939 = !DILocation(line: 0, scope: !2934)
!2940 = !DILocation(line: 140, column: 7, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 140, column: 7)
!2942 = !DILocation(line: 140, column: 24, scope: !2941)
!2943 = !DILocation(line: 140, column: 41, scope: !2941)
!2944 = !DILocation(line: 140, column: 44, scope: !2941)
!2945 = !DILocation(line: 140, column: 7, scope: !2934)
!2946 = !DILocation(line: 142, column: 24, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 142, column: 7)
!2948 = !DILocation(line: 142, column: 36, scope: !2947)
!2949 = !DILocation(line: 142, column: 39, scope: !2947)
!2950 = !DILocation(line: 142, column: 7, scope: !2934)
!2951 = !DILocation(line: 144, column: 7, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 144, column: 7)
!2953 = !DILocation(line: 148, column: 1, scope: !2934)
!2954 = distinct !DISubprogram(name: "lhd_set_decl_assembler_name", scope: !3, file: !3, line: 152, type: !2861, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2955)
!2955 = !{!2956, !2957, !2958, !2961, !2962, !2965}
!2956 = !DILocalVariable(name: "decl", arg: 1, scope: !2954, file: !3, line: 152, type: !1140)
!2957 = !DILocalVariable(name: "id", scope: !2954, file: !3, line: 154, type: !1140)
!2958 = !DILocalVariable(name: "name", scope: !2959, file: !3, line: 182, type: !1138)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 181, column: 5)
!2960 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 178, column: 7)
!2961 = !DILocalVariable(name: "label", scope: !2959, file: !3, line: 183, type: !1135)
!2962 = !DILocalVariable(name: "name_", scope: !2963, file: !3, line: 185, type: !2964)
!2963 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 185, column: 7)
!2964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!2965 = !DILocalVariable(name: "output_", scope: !2963, file: !3, line: 185, type: !2966)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1135)
!2967 = !DILocation(line: 0, scope: !2954)
!2968 = !DILocation(line: 160, column: 3, scope: !2954)
!2969 = !DILocation(line: 178, column: 7, scope: !2960)
!2970 = !DILocation(line: 178, column: 26, scope: !2960)
!2971 = !DILocation(line: 178, column: 29, scope: !2960)
!2972 = !DILocation(line: 178, column: 49, scope: !2960)
!2973 = !DILocation(line: 178, column: 7, scope: !2954)
!2974 = !DILocation(line: 179, column: 18, scope: !2960)
!2975 = !DILocation(line: 179, column: 52, scope: !2960)
!2976 = !DILocation(line: 179, column: 10, scope: !2960)
!2977 = !DILocation(line: 179, column: 5, scope: !2960)
!2978 = !DILocation(line: 182, column: 26, scope: !2959)
!2979 = !DILocation(line: 0, scope: !2959)
!2980 = !DILocation(line: 0, scope: !2963)
!2981 = !DILocation(line: 185, column: 7, scope: !2963)
!2982 = !DILocation(line: 186, column: 12, scope: !2959)
!2983 = !DILocation(line: 0, scope: !2960)
!2984 = !DILocation(line: 188, column: 3, scope: !2954)
!2985 = !DILocation(line: 190, column: 1, scope: !2954)
!2986 = distinct !DISubprogram(name: "lhd_type_promotes_to", scope: !3, file: !3, line: 194, type: !2868, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2987)
!2987 = !{!2988}
!2988 = !DILocalVariable(name: "type", arg: 1, scope: !2986, file: !3, line: 194, type: !1140)
!2989 = !DILocation(line: 0, scope: !2986)
!2990 = !DILocation(line: 196, column: 3, scope: !2986)
!2991 = !DILocation(line: 198, column: 5, scope: !2986)
!2992 = distinct !DISubprogram(name: "lhd_register_builtin_type", scope: !3, file: !3, line: 204, type: !2993, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{null, !1140, !1138}
!2995 = !{!2996, !2997}
!2996 = !DILocalVariable(name: "type", arg: 1, scope: !2992, file: !3, line: 204, type: !1140)
!2997 = !DILocalVariable(name: "name", arg: 2, scope: !2992, file: !3, line: 205, type: !1138)
!2998 = !DILocation(line: 0, scope: !2992)
!2999 = !DILocation(line: 207, column: 1, scope: !2992)
!3000 = distinct !DISubprogram(name: "lhd_incomplete_type_error", scope: !3, file: !3, line: 211, type: !3001, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !2909, !2909}
!3003 = !{!3004, !3005}
!3004 = !DILocalVariable(name: "value", arg: 1, scope: !3000, file: !3, line: 211, type: !2909)
!3005 = !DILocalVariable(name: "type", arg: 2, scope: !3000, file: !3, line: 211, type: !2909)
!3006 = !DILocation(line: 0, scope: !3000)
!3007 = !DILocation(line: 213, column: 3, scope: !3000)
!3008 = !DILocation(line: 214, column: 3, scope: !3000)
!3009 = distinct !DISubprogram(name: "lhd_get_alias_set", scope: !3, file: !3, line: 221, type: !3010, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!1722, !1140}
!3012 = !{!3013}
!3013 = !DILocalVariable(name: "t", arg: 1, scope: !3009, file: !3, line: 221, type: !1140)
!3014 = !DILocation(line: 0, scope: !3009)
!3015 = !DILocation(line: 223, column: 3, scope: !3009)
!3016 = distinct !DISubprogram(name: "lhd_decl_printable_name", scope: !3, file: !3, line: 229, type: !3017, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!1138, !1140, !1133}
!3019 = !{!3020, !3021}
!3020 = !DILocalVariable(name: "decl", arg: 1, scope: !3016, file: !3, line: 229, type: !1140)
!3021 = !DILocalVariable(name: "verbosity", arg: 2, scope: !3016, file: !3, line: 229, type: !1133)
!3022 = !DILocation(line: 0, scope: !3016)
!3023 = !DILocation(line: 231, column: 3, scope: !3016)
!3024 = !DILocation(line: 232, column: 10, scope: !3016)
!3025 = !DILocation(line: 232, column: 3, scope: !3016)
!3026 = distinct !DISubprogram(name: "lhd_dwarf_name", scope: !3, file: !3, line: 238, type: !3017, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3027)
!3027 = !{!3028, !3029}
!3028 = !DILocalVariable(name: "t", arg: 1, scope: !3026, file: !3, line: 238, type: !1140)
!3029 = !DILocalVariable(name: "verbosity", arg: 2, scope: !3026, file: !3, line: 238, type: !1133)
!3030 = !DILocation(line: 0, scope: !3026)
!3031 = !DILocation(line: 240, column: 3, scope: !3026)
!3032 = !DILocation(line: 242, column: 21, scope: !3026)
!3033 = !DILocation(line: 242, column: 10, scope: !3026)
!3034 = !DILocation(line: 242, column: 3, scope: !3026)
!3035 = distinct !DISubprogram(name: "lhd_types_compatible_p", scope: !3, file: !3, line: 250, type: !3036, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!1133, !1140, !1140}
!3038 = !{!3039, !3040}
!3039 = !DILocalVariable(name: "x", arg: 1, scope: !3035, file: !3, line: 250, type: !1140)
!3040 = !DILocalVariable(name: "y", arg: 2, scope: !3035, file: !3, line: 250, type: !1140)
!3041 = !DILocation(line: 0, scope: !3035)
!3042 = !DILocation(line: 252, column: 10, scope: !3035)
!3043 = !DILocation(line: 252, column: 35, scope: !3035)
!3044 = !DILocation(line: 252, column: 32, scope: !3035)
!3045 = !DILocation(line: 252, column: 3, scope: !3035)
!3046 = distinct !DISubprogram(name: "lhd_tree_dump_dump_tree", scope: !3, file: !3, line: 260, type: !3047, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!1132, !1137, !1140}
!3049 = !{!3050, !3051}
!3050 = !DILocalVariable(name: "di", arg: 1, scope: !3046, file: !3, line: 260, type: !1137)
!3051 = !DILocalVariable(name: "t", arg: 2, scope: !3046, file: !3, line: 260, type: !1140)
!3052 = !DILocation(line: 0, scope: !3046)
!3053 = !DILocation(line: 262, column: 3, scope: !3046)
!3054 = distinct !DISubprogram(name: "lhd_tree_dump_type_quals", scope: !3, file: !3, line: 269, type: !3055, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!1133, !2909}
!3057 = !{!3058}
!3058 = !DILocalVariable(name: "t", arg: 1, scope: !3054, file: !3, line: 269, type: !2909)
!3059 = !DILocation(line: 0, scope: !3054)
!3060 = !DILocation(line: 271, column: 10, scope: !3054)
!3061 = !DILocation(line: 271, column: 3, scope: !3054)
!3062 = distinct !DISubprogram(name: "lhd_gimplify_expr", scope: !3, file: !3, line: 277, type: !3063, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3066)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!1133, !1500, !3065, !3065}
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!3066 = !{!3067, !3068, !3069}
!3067 = !DILocalVariable(name: "expr_p", arg: 1, scope: !3062, file: !3, line: 277, type: !1500)
!3068 = !DILocalVariable(name: "pre_p", arg: 2, scope: !3062, file: !3, line: 278, type: !3065)
!3069 = !DILocalVariable(name: "post_p", arg: 3, scope: !3062, file: !3, line: 279, type: !3065)
!3070 = !DILocation(line: 0, scope: !3062)
!3071 = !DILocation(line: 281, column: 3, scope: !3062)
!3072 = distinct !DISubprogram(name: "lhd_tree_size", scope: !3, file: !3, line: 288, type: !3073, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!1611, !134}
!3075 = !{!3076}
!3076 = !DILocalVariable(name: "c", arg: 1, scope: !3072, file: !3, line: 288, type: !134)
!3077 = !DILocation(line: 0, scope: !3072)
!3078 = !DILocation(line: 290, column: 3, scope: !3072)
!3079 = !DILocation(line: 292, column: 5, scope: !3072)
!3080 = distinct !DISubprogram(name: "lhd_decl_ok_for_sibcall", scope: !3, file: !3, line: 300, type: !2935, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3081)
!3081 = !{!3082}
!3082 = !DILocalVariable(name: "decl", arg: 1, scope: !3080, file: !3, line: 300, type: !2909)
!3083 = !DILocation(line: 0, scope: !3080)
!3084 = !DILocation(line: 302, column: 3, scope: !3080)
!3085 = distinct !DISubprogram(name: "write_global_declarations", scope: !3, file: !3, line: 308, type: !2857, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3086)
!3086 = !{!3087, !3088, !3089, !3090, !3091}
!3087 = !DILocalVariable(name: "globals", scope: !3085, file: !3, line: 310, type: !1140)
!3088 = !DILocalVariable(name: "decl", scope: !3085, file: !3, line: 310, type: !1140)
!3089 = !DILocalVariable(name: "vec", scope: !3085, file: !3, line: 310, type: !1500)
!3090 = !DILocalVariable(name: "len", scope: !3085, file: !3, line: 311, type: !1133)
!3091 = !DILocalVariable(name: "i", scope: !3085, file: !3, line: 311, type: !1133)
!3092 = !DILocation(line: 315, column: 3, scope: !3085)
!3093 = !DILocation(line: 321, column: 30, scope: !3085)
!3094 = !DILocation(line: 321, column: 13, scope: !3085)
!3095 = !DILocation(line: 0, scope: !3085)
!3096 = !DILocation(line: 322, column: 9, scope: !3085)
!3097 = !DILocation(line: 323, column: 9, scope: !3085)
!3098 = !DILocation(line: 328, column: 8, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 328, column: 3)
!3100 = !DILocation(line: 0, scope: !3099)
!3101 = !DILocation(line: 328, column: 33, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 328, column: 3)
!3103 = !DILocation(line: 328, column: 3, scope: !3099)
!3104 = !DILocation(line: 329, column: 17, scope: !3102)
!3105 = !DILocation(line: 329, column: 5, scope: !3102)
!3106 = !DILocation(line: 329, column: 22, scope: !3102)
!3107 = !DILocation(line: 328, column: 41, scope: !3102)
!3108 = !DILocation(line: 328, column: 52, scope: !3102)
!3109 = !DILocation(line: 328, column: 3, scope: !3102)
!3110 = distinct !{!3110, !3103, !3111}
!3111 = !DILocation(line: 329, column: 24, scope: !3099)
!3112 = !DILocation(line: 331, column: 3, scope: !3085)
!3113 = !DILocation(line: 332, column: 3, scope: !3085)
!3114 = !DILocation(line: 333, column: 3, scope: !3085)
!3115 = !DILocation(line: 336, column: 3, scope: !3085)
!3116 = !DILocation(line: 337, column: 1, scope: !3085)
!3117 = distinct !DISubprogram(name: "lhd_initialize_diagnostics", scope: !3, file: !3, line: 341, type: !3118, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3241)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !3120}
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_context", file: !389, line: 62, size: 28736, elements: !3122)
!3122 = !{!3123, !3189, !3193, !3194, !3195, !3200, !3201, !3202, !3219, !3221, !3225, !3226, !3239, !3240}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "printer", scope: !3121, file: !389, line: 65, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "pretty_printer", file: !378, line: 134, baseType: !3126)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pretty_print_info", file: !378, line: 158, size: 448, elements: !3127)
!3127 = !{!3128, !3152, !3153, !3155, !3156, !3157, !3164, !3186, !3187, !3188}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3126, file: !378, line: 161, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_buffer", file: !378, line: 99, baseType: !3131)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 74, size: 2688, elements: !3132)
!3132 = !{!3133, !3134, !3135, !3137, !3146, !3147, !3148}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "formatted_obstack", scope: !3131, file: !378, line: 77, baseType: !1395, size: 704)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_obstack", scope: !3131, file: !378, line: 81, baseType: !1395, size: 704, offset: 704)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !3131, file: !378, line: 85, baseType: !3136, size: 64, offset: 1408)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chunk_array", scope: !3131, file: !378, line: 88, baseType: !3138, size: 64, offset: 1472)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_info", file: !378, line: 58, size: 3904, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !3139, file: !378, line: 61, baseType: !3138, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3139, file: !378, line: 69, baseType: !3143, size: 3840, offset: 64)
!3143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, size: 3840, elements: !3144)
!3144 = !{!3145}
!3145 = !DISubrange(count: 60)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !3131, file: !378, line: 91, baseType: !2439, size: 64, offset: 1536)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !3131, file: !378, line: 94, baseType: !1133, size: 32, offset: 1600)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "digit_buffer", scope: !3131, file: !378, line: 98, baseType: !3149, size: 1024, offset: 1632)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 1024, elements: !3150)
!3150 = !{!3151}
!3151 = !DISubrange(count: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !3126, file: !378, line: 164, baseType: !1138, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3126, file: !378, line: 167, baseType: !3154, size: 32, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_padding", file: !378, line: 107, baseType: !377)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_length", scope: !3126, file: !378, line: 171, baseType: !1133, size: 32, offset: 160)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "indent_skip", scope: !3126, file: !378, line: 174, baseType: !1133, size: 32, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "wrapping", scope: !3126, file: !378, line: 177, baseType: !3158, size: 64, offset: 224)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_wrapping_mode_t", file: !378, line: 119, baseType: !3159)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 111, size: 64, elements: !3160)
!3160 = !{!3161, !3163}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "rule", scope: !3159, file: !378, line: 114, baseType: !3162, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_prefixing_rule_t", file: !378, line: 51, baseType: !383)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "line_cutoff", scope: !3159, file: !378, line: 118, baseType: !1133, size: 32, offset: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "format_decoder", scope: !3126, file: !378, line: 187, baseType: !3165, size: 64, offset: 320)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "printer_fn", file: !378, line: 135, baseType: !3166)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!1132, !3124, !3169, !1138, !1133, !1132, !1132, !1132}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "text_info", file: !378, line: 39, baseType: !3171)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 32, size: 320, elements: !3172)
!3172 = !{!3173, !3174, !3182, !3183, !3185}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "format_spec", scope: !3171, file: !378, line: 34, baseType: !1138, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "args_ptr", scope: !3171, file: !378, line: 35, baseType: !3175, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3177, line: 52, baseType: !3178)
!3177 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3179, line: 32, baseType: !3180)
!3179 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!3180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 337, baseType: !3181)
!3181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2416, size: 192, elements: !1239)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !3171, file: !378, line: 36, baseType: !1133, size: 32, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !3171, file: !378, line: 37, baseType: !3184, size: 64, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !3171, file: !378, line: 38, baseType: !1500, size: 64, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "emitted_prefix", scope: !3126, file: !378, line: 190, baseType: !1132, size: 8, offset: 384)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "need_newline", scope: !3126, file: !378, line: 193, baseType: !1132, size: 8, offset: 392)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "translate_identifiers", scope: !3126, file: !378, line: 197, baseType: !1132, size: 8, offset: 400)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "diagnostic_count", scope: !3121, file: !389, line: 68, baseType: !3190, size: 384, offset: 64)
!3190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 384, elements: !3191)
!3191 = !{!3192}
!3192 = !DISubrange(count: 12)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "issue_warnings_are_errors_message", scope: !3121, file: !389, line: 72, baseType: !1132, size: 8, offset: 448)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "warning_as_error_requested", scope: !3121, file: !389, line: 75, baseType: !1132, size: 8, offset: 456)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "classify_diagnostic", scope: !3121, file: !389, line: 82, baseType: !3196, size: 27840, offset: 480)
!3196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3197, size: 27840, elements: !3198)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_t", file: !389, line: 35, baseType: !388)
!3198 = !{!3199}
!3199 = !DISubrange(count: 870)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "show_option_requested", scope: !3121, file: !389, line: 86, baseType: !1132, size: 8, offset: 28320)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "abort_on_error", scope: !3121, file: !389, line: 89, baseType: !1132, size: 8, offset: 28328)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "begin_diagnostic", scope: !3121, file: !389, line: 98, baseType: !3203, size: 64, offset: 28352)
!3203 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_starter_fn", file: !389, line: 56, baseType: !3204)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{null, !3207, !3209}
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_context", file: !389, line: 55, baseType: !3121)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_info", file: !389, line: 52, baseType: !3211)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_info", file: !389, line: 40, size: 512, elements: !3212)
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !3211, file: !389, line: 42, baseType: !3170, size: 320)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !3211, file: !389, line: 43, baseType: !1265, size: 32, offset: 320)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "override_column", scope: !3211, file: !389, line: 44, baseType: !7, size: 32, offset: 352)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !3211, file: !389, line: 47, baseType: !1140, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !3211, file: !389, line: 49, baseType: !3197, size: 32, offset: 448)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "option_index", scope: !3211, file: !389, line: 51, baseType: !1133, size: 32, offset: 480)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "end_diagnostic", scope: !3121, file: !389, line: 101, baseType: !3220, size: 64, offset: 28416)
!3220 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_finalizer_fn", file: !389, line: 58, baseType: !3203)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "internal_error", scope: !3121, file: !389, line: 104, baseType: !3222, size: 64, offset: 28480)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !1138, !3175}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "last_function", scope: !3121, file: !389, line: 109, baseType: !1140, size: 64, offset: 28544)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "last_module", scope: !3121, file: !389, line: 113, baseType: !3227, size: 64, offset: 28608)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3229)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !1268, line: 61, size: 192, elements: !3230)
!3230 = !{!3231, !3232, !3234, !3235, !3236, !3237, !3238}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !3229, file: !1268, line: 62, baseType: !1138, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !3229, file: !1268, line: 63, baseType: !3233, size: 32, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !1268, line: 39, baseType: !7)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !3229, file: !1268, line: 64, baseType: !1267, size: 32, offset: 96)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !3229, file: !1268, line: 65, baseType: !1133, size: 32, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !3229, file: !1268, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !3229, file: !1268, line: 68, baseType: !1132, size: 8, offset: 168)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !3229, file: !1268, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3121, file: !389, line: 115, baseType: !1133, size: 32, offset: 28672)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit_notes_p", scope: !3121, file: !389, line: 117, baseType: !1132, size: 8, offset: 28704)
!3241 = !{!3242}
!3242 = !DILocalVariable(name: "ctx", arg: 1, scope: !3117, file: !3, line: 341, type: !3120)
!3243 = !DILocation(line: 0, scope: !3117)
!3244 = !DILocation(line: 343, column: 1, scope: !3117)
!3245 = distinct !DISubprogram(name: "lhd_print_error_function", scope: !3, file: !3, line: 348, type: !3246, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{null, !3207, !1138, !3209}
!3248 = !{!3249, !3250, !3251, !3252, !3255, !3256, !3257, !3260, !3261, !3263, !3264}
!3249 = !DILocalVariable(name: "context", arg: 1, scope: !3245, file: !3, line: 348, type: !3207)
!3250 = !DILocalVariable(name: "file", arg: 2, scope: !3245, file: !3, line: 348, type: !1138)
!3251 = !DILocalVariable(name: "diagnostic", arg: 3, scope: !3245, file: !3, line: 349, type: !3209)
!3252 = !DILocalVariable(name: "old_prefix", scope: !3253, file: !3, line: 353, type: !1138)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 352, column: 5)
!3254 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 351, column: 7)
!3255 = !DILocalVariable(name: "abstract_origin", scope: !3253, file: !3, line: 354, type: !1140)
!3256 = !DILocalVariable(name: "new_prefix", scope: !3253, file: !3, line: 355, type: !1135)
!3257 = !DILocalVariable(name: "fndecl", scope: !3258, file: !3, line: 364, type: !1140)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 363, column: 2)
!3259 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 360, column: 11)
!3260 = !DILocalVariable(name: "ao", scope: !3258, file: !3, line: 364, type: !1140)
!3261 = !DILocalVariable(name: "locus", scope: !3262, file: !3, line: 390, type: !3184)
!3262 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 389, column: 6)
!3263 = !DILocalVariable(name: "block", scope: !3262, file: !3, line: 391, type: !1140)
!3264 = !DILocalVariable(name: "s", scope: !3265, file: !3, line: 429, type: !3267)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 428, column: 3)
!3266 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 427, column: 12)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !1266, line: 52, baseType: !3268)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1266, line: 40, size: 192, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3268, file: !1266, line: 43, baseType: !1138, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3268, file: !1266, line: 46, baseType: !1133, size: 32, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !3268, file: !1266, line: 48, baseType: !1133, size: 32, offset: 96)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !3268, file: !1266, line: 51, baseType: !1132, size: 8, offset: 128)
!3274 = !DILocation(line: 0, scope: !3245)
!3275 = !DILocation(line: 351, column: 7, scope: !3254)
!3276 = !DILocation(line: 351, column: 7, scope: !3245)
!3277 = !DILocation(line: 353, column: 41, scope: !3253)
!3278 = !DILocation(line: 353, column: 50, scope: !3253)
!3279 = !DILocation(line: 0, scope: !3253)
!3280 = !DILocation(line: 355, column: 27, scope: !3253)
!3281 = !DILocation(line: 355, column: 32, scope: !3253)
!3282 = !DILocation(line: 356, column: 7, scope: !3253)
!3283 = !DILocation(line: 358, column: 7, scope: !3253)
!3284 = !DILocation(line: 355, column: 26, scope: !3253)
!3285 = !DILocation(line: 360, column: 11, scope: !3259)
!3286 = !DILocation(line: 360, column: 33, scope: !3259)
!3287 = !DILocation(line: 360, column: 11, scope: !3253)
!3288 = !DILocation(line: 361, column: 22, scope: !3259)
!3289 = !DILocation(line: 361, column: 2, scope: !3259)
!3290 = !DILocation(line: 366, column: 8, scope: !3258)
!3291 = !DILocation(line: 0, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 367, column: 6)
!3293 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 366, column: 8)
!3294 = !DILocation(line: 369, column: 8, scope: !3292)
!3295 = !DILocation(line: 0, scope: !3258)
!3296 = !DILocation(line: 369, column: 15, scope: !3292)
!3297 = !DILocation(line: 369, column: 30, scope: !3292)
!3298 = !DILocation(line: 370, column: 8, scope: !3292)
!3299 = !DILocation(line: 370, column: 11, scope: !3292)
!3300 = !DILocation(line: 371, column: 38, scope: !3292)
!3301 = !DILocation(line: 371, column: 8, scope: !3292)
!3302 = distinct !{!3302, !3294, !3303}
!3303 = !DILocation(line: 372, column: 8, scope: !3292)
!3304 = !DILocation(line: 373, column: 8, scope: !3292)
!3305 = !DILocation(line: 0, scope: !3293)
!3306 = !DILocation(line: 379, column: 8, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 379, column: 8)
!3308 = !DILocation(line: 379, column: 39, scope: !3307)
!3309 = !DILocation(line: 0, scope: !3307)
!3310 = !DILocation(line: 379, column: 8, scope: !3258)
!3311 = !DILocation(line: 380, column: 6, scope: !3307)
!3312 = !DILocation(line: 384, column: 6, scope: !3307)
!3313 = !DILocation(line: 0, scope: !3265)
!3314 = !DILocation(line: 0, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 432, column: 9)
!3316 = !DILocation(line: 0, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 434, column: 13)
!3318 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 433, column: 7)
!3319 = !DILocation(line: 388, column: 4, scope: !3258)
!3320 = !DILocation(line: 0, scope: !3262)
!3321 = !DILocation(line: 393, column: 17, scope: !3262)
!3322 = !DILocation(line: 396, column: 8, scope: !3262)
!3323 = !DILocation(line: 396, column: 15, scope: !3262)
!3324 = !DILocation(line: 396, column: 21, scope: !3262)
!3325 = !DILocation(line: 396, column: 24, scope: !3262)
!3326 = !DILocation(line: 396, column: 42, scope: !3262)
!3327 = !DILocation(line: 397, column: 8, scope: !3262)
!3328 = !DILocation(line: 397, column: 11, scope: !3262)
!3329 = !DILocation(line: 401, column: 5, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 398, column: 3)
!3331 = !DILocation(line: 0, scope: !3330)
!3332 = !DILocation(line: 401, column: 12, scope: !3330)
!3333 = !DILocation(line: 401, column: 27, scope: !3330)
!3334 = !DILocation(line: 402, column: 5, scope: !3330)
!3335 = !DILocation(line: 402, column: 8, scope: !3330)
!3336 = !DILocation(line: 403, column: 35, scope: !3330)
!3337 = !DILocation(line: 403, column: 5, scope: !3330)
!3338 = distinct !{!3338, !3329, !3339}
!3339 = !DILocation(line: 404, column: 12, scope: !3330)
!3340 = !DILocation(line: 406, column: 24, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 406, column: 9)
!3342 = !DILocation(line: 406, column: 9, scope: !3330)
!3343 = !DILocation(line: 411, column: 14, scope: !3341)
!3344 = distinct !{!3344, !3322, !3345}
!3345 = !DILocation(line: 415, column: 3, scope: !3262)
!3346 = !DILocation(line: 416, column: 12, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 416, column: 12)
!3348 = !DILocation(line: 416, column: 12, scope: !3262)
!3349 = !DILocation(line: 420, column: 5, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 419, column: 3)
!3351 = !DILocation(line: 420, column: 18, scope: !3350)
!3352 = !DILocation(line: 420, column: 21, scope: !3350)
!3353 = !DILocation(line: 420, column: 39, scope: !3350)
!3354 = !DILocation(line: 421, column: 15, scope: !3350)
!3355 = distinct !{!3355, !3349, !3354}
!3356 = !DILocation(line: 423, column: 36, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 423, column: 9)
!3358 = !DILocation(line: 423, column: 9, scope: !3350)
!3359 = !DILocation(line: 427, column: 12, scope: !3266)
!3360 = !DILocation(line: 0, scope: !3347)
!3361 = !DILocation(line: 427, column: 12, scope: !3262)
!3362 = !DILocation(line: 429, column: 5, scope: !3265)
!3363 = !DILocation(line: 429, column: 44, scope: !3265)
!3364 = !DILocation(line: 429, column: 27, scope: !3265)
!3365 = !DILocation(line: 430, column: 5, scope: !3265)
!3366 = !DILocation(line: 431, column: 5, scope: !3265)
!3367 = !DILocation(line: 432, column: 11, scope: !3315)
!3368 = !DILocation(line: 432, column: 16, scope: !3315)
!3369 = !DILocation(line: 432, column: 9, scope: !3265)
!3370 = !DILocation(line: 434, column: 13, scope: !3317)
!3371 = !DILocation(line: 434, column: 13, scope: !3318)
!3372 = !DILocation(line: 438, column: 26, scope: !3317)
!3373 = !DILocation(line: 435, column: 4, scope: !3317)
!3374 = !DILocation(line: 440, column: 4, scope: !3317)
!3375 = !DILocation(line: 447, column: 27, scope: !3315)
!3376 = !DILocation(line: 448, column: 44, scope: !3315)
!3377 = !DILocation(line: 448, column: 33, scope: !3315)
!3378 = !DILocation(line: 448, column: 11, scope: !3315)
!3379 = !DILocation(line: 447, column: 7, scope: !3315)
!3380 = !DILocation(line: 449, column: 3, scope: !3266)
!3381 = !DILocation(line: 449, column: 3, scope: !3265)
!3382 = distinct !{!3382, !3319, !3383}
!3383 = !DILocation(line: 450, column: 6, scope: !3258)
!3384 = !DILocation(line: 451, column: 4, scope: !3258)
!3385 = !DILocation(line: 454, column: 7, scope: !3253)
!3386 = !DILocation(line: 455, column: 7, scope: !3253)
!3387 = !DILocation(line: 456, column: 16, scope: !3253)
!3388 = !DILocation(line: 456, column: 25, scope: !3253)
!3389 = !DILocation(line: 456, column: 32, scope: !3253)
!3390 = !DILocation(line: 457, column: 7, scope: !3253)
!3391 = !DILocation(line: 458, column: 5, scope: !3253)
!3392 = !DILocation(line: 459, column: 1, scope: !3245)
!3393 = distinct !DISubprogram(name: "lhd_callgraph_analyze_expr", scope: !3, file: !3, line: 462, type: !3394, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3397)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!1140, !1500, !3396}
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!3397 = !{!3398, !3399}
!3398 = !DILocalVariable(name: "tp", arg: 1, scope: !3393, file: !3, line: 462, type: !1500)
!3399 = !DILocalVariable(name: "walk_subtrees", arg: 2, scope: !3393, file: !3, line: 463, type: !3396)
!3400 = !DILocation(line: 0, scope: !3393)
!3401 = !DILocation(line: 465, column: 3, scope: !3393)
!3402 = distinct !DISubprogram(name: "lhd_make_node", scope: !3, file: !3, line: 469, type: !3403, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3405)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!1140, !134}
!3405 = !{!3406}
!3406 = !DILocalVariable(name: "code", arg: 1, scope: !3402, file: !3, line: 469, type: !134)
!3407 = !DILocation(line: 0, scope: !3402)
!3408 = !DILocation(line: 471, column: 10, scope: !3402)
!3409 = !DILocation(line: 471, column: 3, scope: !3402)
!3410 = distinct !DISubprogram(name: "lhd_to_target_charset", scope: !3, file: !3, line: 475, type: !3411, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!1196, !1196}
!3413 = !{!3414}
!3414 = !DILocalVariable(name: "c", arg: 1, scope: !3410, file: !3, line: 475, type: !1196)
!3415 = !DILocation(line: 0, scope: !3410)
!3416 = !DILocation(line: 477, column: 3, scope: !3410)
!3417 = distinct !DISubprogram(name: "lhd_expr_to_decl", scope: !3, file: !3, line: 481, type: !3418, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!1140, !1140, !1131, !1131}
!3420 = !{!3421, !3422, !3423}
!3421 = !DILocalVariable(name: "expr", arg: 1, scope: !3417, file: !3, line: 481, type: !1140)
!3422 = !DILocalVariable(name: "tc", arg: 2, scope: !3417, file: !3, line: 481, type: !1131)
!3423 = !DILocalVariable(name: "se", arg: 3, scope: !3417, file: !3, line: 481, type: !1131)
!3424 = !DILocation(line: 0, scope: !3417)
!3425 = !DILocation(line: 483, column: 3, scope: !3417)
!3426 = distinct !DISubprogram(name: "lhd_omp_predetermined_sharing", scope: !3, file: !3, line: 490, type: !3427, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!363, !1140}
!3429 = !{!3430}
!3430 = !DILocalVariable(name: "decl", arg: 1, scope: !3426, file: !3, line: 490, type: !1140)
!3431 = !DILocation(line: 0, scope: !3426)
!3432 = !DILocation(line: 492, column: 7, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 492, column: 7)
!3434 = !DILocation(line: 495, column: 1, scope: !3426)
!3435 = distinct !DISubprogram(name: "lhd_omp_assignment", scope: !3, file: !3, line: 500, type: !3436, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!1140, !1140, !1140, !1140}
!3438 = !{!3439, !3440, !3441}
!3439 = !DILocalVariable(name: "clause", arg: 1, scope: !3435, file: !3, line: 500, type: !1140)
!3440 = !DILocalVariable(name: "dst", arg: 2, scope: !3435, file: !3, line: 500, type: !1140)
!3441 = !DILocalVariable(name: "src", arg: 3, scope: !3435, file: !3, line: 500, type: !1140)
!3442 = !DILocation(line: 0, scope: !3435)
!3443 = !DILocation(line: 502, column: 10, scope: !3435)
!3444 = !DILocation(line: 502, column: 3, scope: !3435)
!3445 = distinct !DISubprogram(name: "lhd_omp_firstprivatize_type_sizes", scope: !3, file: !3, line: 509, type: !3446, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3450)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !3448, !1140}
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimplify_omp_ctx", file: !1457, line: 1021, flags: DIFlagFwdDecl)
!3450 = !{!3451, !3452}
!3451 = !DILocalVariable(name: "c", arg: 1, scope: !3445, file: !3, line: 509, type: !3448)
!3452 = !DILocalVariable(name: "t", arg: 2, scope: !3445, file: !3, line: 510, type: !1140)
!3453 = !DILocation(line: 0, scope: !3445)
!3454 = !DILocation(line: 512, column: 1, scope: !3445)
!3455 = distinct !DISubprogram(name: "add_builtin_function", scope: !3, file: !3, line: 556, type: !3456, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!1140, !1138, !1140, !1133, !404, !1138, !1140}
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464}
!3459 = !DILocalVariable(name: "name", arg: 1, scope: !3455, file: !3, line: 556, type: !1138)
!3460 = !DILocalVariable(name: "type", arg: 2, scope: !3455, file: !3, line: 557, type: !1140)
!3461 = !DILocalVariable(name: "function_code", arg: 3, scope: !3455, file: !3, line: 558, type: !1133)
!3462 = !DILocalVariable(name: "cl", arg: 4, scope: !3455, file: !3, line: 559, type: !404)
!3463 = !DILocalVariable(name: "library_name", arg: 5, scope: !3455, file: !3, line: 560, type: !1138)
!3464 = !DILocalVariable(name: "attrs", arg: 6, scope: !3455, file: !3, line: 561, type: !1140)
!3465 = !DILocation(line: 0, scope: !3455)
!3466 = !DILocation(line: 565, column: 22, scope: !3455)
!3467 = !DILocation(line: 563, column: 10, scope: !3455)
!3468 = !DILocation(line: 563, column: 3, scope: !3455)
!3469 = distinct !DISubprogram(name: "add_builtin_function_common", scope: !3, file: !3, line: 517, type: !3470, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3473)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!1140, !1138, !1140, !1133, !404, !1138, !1140, !3472}
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3474 = !DILocalVariable(name: "name", arg: 1, scope: !3469, file: !3, line: 517, type: !1138)
!3475 = !DILocalVariable(name: "type", arg: 2, scope: !3469, file: !3, line: 518, type: !1140)
!3476 = !DILocalVariable(name: "function_code", arg: 3, scope: !3469, file: !3, line: 519, type: !1133)
!3477 = !DILocalVariable(name: "cl", arg: 4, scope: !3469, file: !3, line: 520, type: !404)
!3478 = !DILocalVariable(name: "library_name", arg: 5, scope: !3469, file: !3, line: 521, type: !1138)
!3479 = !DILocalVariable(name: "attrs", arg: 6, scope: !3469, file: !3, line: 522, type: !1140)
!3480 = !DILocalVariable(name: "hook", arg: 7, scope: !3469, file: !3, line: 523, type: !3472)
!3481 = !DILocalVariable(name: "id", scope: !3469, file: !3, line: 525, type: !1140)
!3482 = !DILocalVariable(name: "decl", scope: !3469, file: !3, line: 526, type: !1140)
!3483 = !DILocalVariable(name: "libname", scope: !3484, file: !3, line: 539, type: !1140)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 538, column: 5)
!3485 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 537, column: 7)
!3486 = !DILocation(line: 0, scope: !3469)
!3487 = !DILocation(line: 525, column: 15, scope: !3469)
!3488 = !DILocation(line: 526, column: 3, scope: !3469)
!3489 = !DILocation(line: 526, column: 15, scope: !3469)
!3490 = !DILocation(line: 526, column: 8, scope: !3469)
!3491 = !DILocation(line: 528, column: 3, scope: !3469)
!3492 = !DILocation(line: 528, column: 30, scope: !3469)
!3493 = !DILocation(line: 529, column: 3, scope: !3469)
!3494 = !DILocation(line: 529, column: 30, scope: !3469)
!3495 = !DILocation(line: 530, column: 3, scope: !3469)
!3496 = !DILocation(line: 530, column: 30, scope: !3469)
!3497 = !DILocation(line: 532, column: 30, scope: !3469)
!3498 = !DILocation(line: 535, column: 3, scope: !3469)
!3499 = !DILocation(line: 537, column: 7, scope: !3485)
!3500 = !DILocation(line: 537, column: 7, scope: !3469)
!3501 = !DILocation(line: 539, column: 22, scope: !3484)
!3502 = !DILocation(line: 0, scope: !3484)
!3503 = !DILocation(line: 540, column: 7, scope: !3484)
!3504 = !DILocation(line: 541, column: 5, scope: !3484)
!3505 = !DILocation(line: 544, column: 7, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 544, column: 7)
!3507 = !DILocation(line: 544, column: 7, scope: !3469)
!3508 = !DILocation(line: 545, column: 5, scope: !3506)
!3509 = !DILocation(line: 547, column: 5, scope: !3506)
!3510 = !DILocation(line: 549, column: 16, scope: !3469)
!3511 = !DILocation(line: 549, column: 10, scope: !3469)
!3512 = !DILocation(line: 551, column: 1, scope: !3469)
!3513 = !DILocation(line: 549, column: 3, scope: !3469)
!3514 = distinct !DISubprogram(name: "add_builtin_function_ext_scope", scope: !3, file: !3, line: 576, type: !3456, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3515)
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3521}
!3516 = !DILocalVariable(name: "name", arg: 1, scope: !3514, file: !3, line: 576, type: !1138)
!3517 = !DILocalVariable(name: "type", arg: 2, scope: !3514, file: !3, line: 577, type: !1140)
!3518 = !DILocalVariable(name: "function_code", arg: 3, scope: !3514, file: !3, line: 578, type: !1133)
!3519 = !DILocalVariable(name: "cl", arg: 4, scope: !3514, file: !3, line: 579, type: !404)
!3520 = !DILocalVariable(name: "library_name", arg: 5, scope: !3514, file: !3, line: 580, type: !1138)
!3521 = !DILocalVariable(name: "attrs", arg: 6, scope: !3514, file: !3, line: 581, type: !1140)
!3522 = !DILocation(line: 0, scope: !3514)
!3523 = !DILocation(line: 585, column: 22, scope: !3514)
!3524 = !DILocation(line: 583, column: 10, scope: !3514)
!3525 = !DILocation(line: 583, column: 3, scope: !3514)
!3526 = distinct !DISubprogram(name: "lhd_builtin_function", scope: !3, file: !3, line: 589, type: !2868, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3527)
!3527 = !{!3528}
!3528 = !DILocalVariable(name: "decl", arg: 1, scope: !3526, file: !3, line: 589, type: !1140)
!3529 = !DILocation(line: 0, scope: !3526)
!3530 = !DILocation(line: 591, column: 20, scope: !3526)
!3531 = !DILocation(line: 591, column: 3, scope: !3526)
!3532 = !DILocation(line: 592, column: 3, scope: !3526)
!3533 = distinct !DISubprogram(name: "lhd_begin_section", scope: !3, file: !3, line: 606, type: !3534, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !1138}
!3536 = !{!3537, !3538}
!3537 = !DILocalVariable(name: "name", arg: 1, scope: !3533, file: !3, line: 606, type: !1138)
!3538 = !DILocalVariable(name: "section", scope: !3533, file: !3, line: 608, type: !1748)
!3539 = !DILocation(line: 0, scope: !3533)
!3540 = !DILocation(line: 611, column: 3, scope: !3533)
!3541 = !DILocation(line: 612, column: 19, scope: !3533)
!3542 = !DILocation(line: 612, column: 17, scope: !3533)
!3543 = !DILocation(line: 613, column: 8, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 613, column: 7)
!3545 = !DILocation(line: 613, column: 7, scope: !3533)
!3546 = !DILocation(line: 614, column: 21, scope: !3544)
!3547 = !DILocation(line: 614, column: 19, scope: !3544)
!3548 = !DILocation(line: 614, column: 5, scope: !3544)
!3549 = !DILocation(line: 617, column: 13, scope: !3533)
!3550 = !DILocation(line: 618, column: 3, scope: !3533)
!3551 = !DILocation(line: 619, column: 1, scope: !3533)
!3552 = distinct !DISubprogram(name: "lhd_append_data", scope: !3, file: !3, line: 626, type: !3553, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !1772, !1611, !1137}
!3555 = !{!3556, !3557, !3558}
!3556 = !DILocalVariable(name: "data", arg: 1, scope: !3552, file: !3, line: 626, type: !1772)
!3557 = !DILocalVariable(name: "len", arg: 2, scope: !3552, file: !3, line: 626, type: !1611)
!3558 = !DILocalVariable(name: "block", arg: 3, scope: !3552, file: !3, line: 626, type: !1137)
!3559 = !DILocation(line: 0, scope: !3552)
!3560 = !DILocation(line: 628, column: 7, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 628, column: 7)
!3562 = !DILocation(line: 628, column: 7, scope: !3552)
!3563 = !DILocation(line: 629, column: 42, scope: !3561)
!3564 = !DILocation(line: 629, column: 5, scope: !3561)
!3565 = !DILocation(line: 630, column: 3, scope: !3552)
!3566 = !DILocation(line: 631, column: 1, scope: !3552)
!3567 = distinct !DISubprogram(name: "lhd_end_section", scope: !3, file: !3, line: 639, type: !2857, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2432)
!3568 = !DILocation(line: 641, column: 7, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 641, column: 7)
!3570 = !DILocation(line: 641, column: 7, scope: !3567)
!3571 = !DILocation(line: 643, column: 7, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 642, column: 5)
!3573 = !DILocation(line: 644, column: 21, scope: !3572)
!3574 = !DILocation(line: 645, column: 5, scope: !3572)
!3575 = !DILocation(line: 646, column: 1, scope: !3567)
