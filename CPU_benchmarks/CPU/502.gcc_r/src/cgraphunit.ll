; ModuleID = 'cgraphunit.bc'
source_filename = "cgraphunit.c"
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
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void ()*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i8 (%union.tree_node*)*, void (i32, i8*, i32, i8)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)*, void (i32)*, void (%struct.rtx_def*)*, void ()*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void (i32)*, void (%union.tree_node*, %union.tree_node*)*, i32 }
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
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
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.cgraph_asm_node = type { %struct.cgraph_asm_node*, %union.tree_node*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.pointer_set_t = type opaque
%struct.cgraph_order_sort = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.cgraph_node* }
%struct.VEC_cgraph_edge_p_heap = type { %struct.VEC_cgraph_edge_p_base }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x %struct.cgraph_edge*] }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.tree_block = type { %struct.tree_common, i32, i32, %union.tree_node*, %struct.VEC_tree_gc*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@tree_contains_struct = external dso_local local_unnamed_addr global [191 x [64 x i8]], align 16
@flag_keep_inline_functions = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_whole_program = external dso_local local_unnamed_addr global i32, align 4
@flag_lto = external dso_local local_unnamed_addr global i32, align 4
@flag_whopr = external dso_local local_unnamed_addr global i32, align 4
@cgraph_new_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@cgraph_state = external dso_local local_unnamed_addr global i32, align 4
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@pass_early_local_passes = external dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"cgraphunit.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cgraph_max_pid = external dso_local local_unnamed_addr global i32, align 4
@debug_hooks = external dso_local local_unnamed_addr global %struct.gcc_debug_hooks*, align 8
@warn_unused_parameter = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"aux field set for edge %s->%s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Execution count is negative\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Externally visible inline clone\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Inline clone with address taken\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Inline clone is needed\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"caller edge count is negative\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"caller edge frequency is negative\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"caller edge frequency is too large\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"caller edge frequency %i does not match BB freqency %i\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"inlined_to pointer is wrong\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"multiple inline callers\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"inlined_to pointer set for noninline callers\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"inlined_to pointer is set but no predecessors found\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"inlined_to pointer refers to itself\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"node not found in cgraph_hash\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"node has wrong clone_of\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"node has wrong clone list\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"node is in clone list but it is not clone\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"node has wrong prev_clone pointer\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"double linked list of clones corrupted\00", align 1
@flag_wpa = external dso_local local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"shared call_stmt:\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"edge points to same body alias:\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"edge points to wrong declaration:\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c" Instead of:\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"missing callgraph edge for call stmt:\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"edge %s->%s has no corresponding call_stmt\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"verify_cgraph_node failed\00", align 1
@cgraph_nodes = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@quiet_flag = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [29 x i8] c"\0AAnalyzing compilation unit\0A\00", align 1
@cgraph_global_info_ready = external dso_local local_unnamed_addr global i8, align 1
@pre_ipa_mem_report = external dso_local local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [31 x i8] c"Memory consumption before IPA\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Performing interprocedural optimizations\0A\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cgraph_dump_file = internal unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !0
@.str.33 = private unnamed_addr constant [11 x i8] c"Optimized \00", align 1
@post_ipa_mem_report = external dso_local local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [30 x i8] c"Memory consumption after IPA\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Assembling functions:\0A\00", align 1
@flag_toplevel_reorder = external dso_local local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"\0AFinal \00", align 1
@cgraph_build_static_cdtor.counter = internal unnamed_addr global i32 0, align 4, !dbg !2248
@.str.37 = private unnamed_addr constant [11 x i8] c"%c_%.5d_%d\00", align 1
@input_location = external dso_local local_unnamed_addr global i32, align 4
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@.str.38 = private unnamed_addr constant [34 x i8] c"updating call of %s/%i -> %s/%i: \00", align 1
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [14 x i8] c"  updated to:\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Materializing clones\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"clonning %s to %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"   replace map: \00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"%s%s;\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"(replace)\00", align 1
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"(ref)\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"   args_to_skip: \00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"   combined_args_to_skip:\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"Updating call sites\0A\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"Materialization Call site updates done.\0A\00", align 1
@vtable_entry_type = internal global %union.tree_node* null, align 8, !dbg !2282
@static_dtors = internal global %struct.VEC_tree_gc* null, align 8, !dbg !2280
@static_ctors = internal global %struct.VEC_tree_gc* null, align 8, !dbg !2278
@gt_ggc_r_gt_cgraphunit_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%union.tree_node** @vtable_entry_type to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%struct.VEC_tree_gc** @static_dtors to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_VEC_tree_gc, void (i8*)* @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab { i8* bitcast (%struct.VEC_tree_gc** @static_ctors to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_VEC_tree_gc, void (i8*)* @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !2264
@cgraph_nodes_queue = external dso_local local_unnamed_addr global %struct.cgraph_node*, align 8
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.53 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@cgraph_analyze_functions.first_analyzed = internal unnamed_addr global %struct.cgraph_node* null, align 8, !dbg !2284
@cgraph_analyze_functions.first_analyzed_var = internal unnamed_addr global %struct.varpool_node* null, align 8, !dbg !2301
@varpool_nodes = external dso_local local_unnamed_addr global %struct.varpool_node*, align 8
@.str.54 = private unnamed_addr constant [22 x i8] c"Initial entry points:\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"Unit entry points:\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"\0A\0AInitial \00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"\0AReclaiming functions:\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"\0A\0AReclaimed \00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"externally_visible\00", align 1
@.str.61 = private unnamed_addr constant [68 x i8] c"%<externally_visible%> attribute have effect only on public objects\00", align 1
@cgraph_function_flags_ready = external dso_local local_unnamed_addr global i8, align 1
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@asm_out_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"vptr\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"vtableaddr\00", align 1
@sizetype_tab = external dso_local local_unnamed_addr global [4 x %union.tree_node*], align 16
@.str.65 = private unnamed_addr constant [12 x i8] c"vcalloffset\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"adjusted_this\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@in_lto_p = external dso_local local_unnamed_addr global i8, align 1
@all_small_ipa_passes = external dso_local local_unnamed_addr global %struct.opt_pass*, align 8
@all_regular_ipa_passes = external dso_local local_unnamed_addr global %struct.opt_pass*, align 8
@all_lto_gen_passes = external dso_local local_unnamed_addr global %struct.opt_pass*, align 8
@flag_ltrans = external dso_local local_unnamed_addr global i32, align 4
@cgraph_order = external dso_local local_unnamed_addr global i32, align 4
@varpool_nodes_queue = external dso_local local_unnamed_addr global %struct.varpool_node*, align 8
@cgraph_asm_nodes = external dso_local local_unnamed_addr global %struct.cgraph_asm_node*, align 8
@cgraph_n_nodes = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2357 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2370, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2371, metadata !DIExpression()), !dbg !2372
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2373
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2374
  ret i32 %call, !dbg !2375
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2376 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2380
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2381
  ret i32 %call, !dbg !2382
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2383 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2387, metadata !DIExpression()), !dbg !2388
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2389
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2389
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2389
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2389
  %cmp = icmp uge i8* %0, %1, !dbg !2389
  %conv1 = zext i1 %cmp to i64, !dbg !2389
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2389
  %tobool = icmp eq i64 %expval, 0, !dbg !2389
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2389

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2389
  br label %cond.end, !dbg !2389

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2389
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2389
  %2 = load i8, i8* %0, align 1, !dbg !2389
  %conv3 = zext i8 %2 to i32, !dbg !2389
  br label %cond.end, !dbg !2389

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2389
  ret i32 %cond, !dbg !2390
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2391 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2393, metadata !DIExpression()), !dbg !2394
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2395
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2395
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2395
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2395
  %cmp = icmp uge i8* %0, %1, !dbg !2395
  %conv1 = zext i1 %cmp to i64, !dbg !2395
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2395
  %tobool = icmp eq i64 %expval, 0, !dbg !2395
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2395

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2395
  br label %cond.end, !dbg !2395

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2395
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2395
  %2 = load i8, i8* %0, align 1, !dbg !2395
  %conv3 = zext i8 %2 to i32, !dbg !2395
  br label %cond.end, !dbg !2395

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2395
  ret i32 %cond, !dbg !2396
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2397 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2398
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2398
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2398
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2398
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2398
  %cmp = icmp uge i8* %1, %2, !dbg !2398
  %conv1 = zext i1 %cmp to i64, !dbg !2398
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2398
  %tobool = icmp eq i64 %expval, 0, !dbg !2398
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2398

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2398
  br label %cond.end, !dbg !2398

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2398
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2398
  %3 = load i8, i8* %1, align 1, !dbg !2398
  %conv3 = zext i8 %3 to i32, !dbg !2398
  br label %cond.end, !dbg !2398

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2398
  ret i32 %cond, !dbg !2399
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2400 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2404, metadata !DIExpression()), !dbg !2405
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2406
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2407
  ret i32 %call, !dbg !2408
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2409 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2413, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2414, metadata !DIExpression()), !dbg !2415
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2416
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2416
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2416
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2416
  %cmp = icmp uge i8* %0, %1, !dbg !2416
  %conv1 = zext i1 %cmp to i64, !dbg !2416
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2416
  %tobool = icmp eq i64 %expval, 0, !dbg !2416
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2416

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2416
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2416
  br label %cond.end, !dbg !2416

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2416
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2416
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2416
  store i8 %conv2, i8* %0, align 1, !dbg !2416
  %conv6 = and i32 %__c, 255, !dbg !2416
  br label %cond.end, !dbg !2416

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2416
  ret i32 %cond, !dbg !2417
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2418 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2421, metadata !DIExpression()), !dbg !2422
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2423
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2423
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2423
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2423
  %cmp = icmp uge i8* %0, %1, !dbg !2423
  %conv1 = zext i1 %cmp to i64, !dbg !2423
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2423
  %tobool = icmp eq i64 %expval, 0, !dbg !2423
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2423

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2423
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2423
  br label %cond.end, !dbg !2423

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2423
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2423
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2423
  store i8 %conv2, i8* %0, align 1, !dbg !2423
  %conv6 = and i32 %__c, 255, !dbg !2423
  br label %cond.end, !dbg !2423

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2423
  ret i32 %cond, !dbg !2424
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2425 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2427, metadata !DIExpression()), !dbg !2428
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2429
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2429
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2429
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2429
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2429
  %cmp = icmp uge i8* %1, %2, !dbg !2429
  %conv1 = zext i1 %cmp to i64, !dbg !2429
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2429
  %tobool = icmp eq i64 %expval, 0, !dbg !2429
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2429

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2429
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2429
  br label %cond.end, !dbg !2429

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2429
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2429
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2429
  store i8 %conv4, i8* %1, align 1, !dbg !2429
  %conv6 = and i32 %__c, 255, !dbg !2429
  br label %cond.end, !dbg !2429

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2429
  ret i32 %cond, !dbg !2430
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2431 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2437, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2439, metadata !DIExpression()), !dbg !2440
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2441
  ret i64 %call, !dbg !2442
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2443 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2445, metadata !DIExpression()), !dbg !2446
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2447
  %0 = load i32, i32* %_flags, align 8, !dbg !2447
  %and = lshr i32 %0, 4, !dbg !2447
  %and.lobit = and i32 %and, 1, !dbg !2447
  ret i32 %and.lobit, !dbg !2448
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2449 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2451, metadata !DIExpression()), !dbg !2452
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2453
  %0 = load i32, i32* %_flags, align 8, !dbg !2453
  %and = lshr i32 %0, 5, !dbg !2453
  %and.lobit = and i32 %and, 1, !dbg !2453
  ret i32 %and.lobit, !dbg !2454
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2455 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2458, metadata !DIExpression()), !dbg !2459
  %__c.off = add i32 %__c, 128, !dbg !2460
  %0 = icmp ult i32 %__c.off, 384, !dbg !2460
  br i1 %0, label %cond.true, label %cond.end, !dbg !2460

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2461
  %1 = load i32*, i32** %call, align 8, !dbg !2462
  %idxprom = sext i32 %__c to i64, !dbg !2463
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2463
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2463
  br label %cond.end, !dbg !2464

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2464
  ret i32 %cond, !dbg !2465
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2466 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2468, metadata !DIExpression()), !dbg !2469
  %__c.off = add i32 %__c, 128, !dbg !2470
  %0 = icmp ult i32 %__c.off, 384, !dbg !2470
  br i1 %0, label %cond.true, label %cond.end, !dbg !2470

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2471
  %1 = load i32*, i32** %call, align 8, !dbg !2472
  %idxprom = sext i32 %__c to i64, !dbg !2473
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2473
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2473
  br label %cond.end, !dbg !2474

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2474
  ret i32 %cond, !dbg !2475
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2476 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2481, metadata !DIExpression()), !dbg !2482
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2483
  %conv = trunc i64 %call to i32, !dbg !2484
  ret i32 %conv, !dbg !2485
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2486 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2490, metadata !DIExpression()), !dbg !2491
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2492
  ret i64 %call, !dbg !2493
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2494 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2499, metadata !DIExpression()), !dbg !2500
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2501
  ret i64 %call, !dbg !2502
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2503 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2509, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2510, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2511, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2512, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2513, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 0, metadata !2514, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2515, metadata !DIExpression()), !dbg !2519
  br label %while.cond, !dbg !2520

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2521
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2519
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2515, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2514, metadata !DIExpression()), !dbg !2519
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2522
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2520

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2523
  %div = lshr i64 %add, 1, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %div, metadata !2516, metadata !DIExpression()), !dbg !2519
  %mul = mul i64 %div, %__size, !dbg !2526
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2527
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2517, metadata !DIExpression()), !dbg !2519
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %call, metadata !2518, metadata !DIExpression()), !dbg !2519
  %cmp1 = icmp slt i32 %call, 0, !dbg !2529
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2531

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2532
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2534

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2535
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2514, metadata !DIExpression()), !dbg !2519
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2519
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2519
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2515, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2514, metadata !DIExpression()), !dbg !2519
  br label %while.cond, !dbg !2520, !llvm.loop !2536

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2519
  ret i8* %retval.0, !dbg !2538
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2539 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2545, metadata !DIExpression()), !dbg !2546
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2547
  ret double %call, !dbg !2548
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2549 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %base, metadata !2560, metadata !DIExpression()), !dbg !2561
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2562
  ret i64 %call, !dbg !2563
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2564 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2571, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 %base, metadata !2572, metadata !DIExpression()), !dbg !2573
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2574
  ret i64 %call, !dbg !2575
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2576 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2587, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2588, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 %base, metadata !2589, metadata !DIExpression()), !dbg !2590
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2591
  ret i64 %call, !dbg !2592
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2593 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2598, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 %base, metadata !2599, metadata !DIExpression()), !dbg !2600
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2601
  ret i64 %call, !dbg !2602
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2603 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2644, metadata !DIExpression()), !dbg !2645
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2646
  ret i32 %call, !dbg !2647
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2648 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2650, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2651, metadata !DIExpression()), !dbg !2652
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2653
  ret i32 %call, !dbg !2654
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2655 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2659, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2660, metadata !DIExpression()), !dbg !2661
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2662
  ret i32 %call, !dbg !2663
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2664 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2668, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2669, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2671, metadata !DIExpression()), !dbg !2672
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2673
  ret i32 %call, !dbg !2674
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2675 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2679, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2680, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2681, metadata !DIExpression()), !dbg !2682
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2682
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2683
  ret i32 %call, !dbg !2684
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2685 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2689, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2690, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2691, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2692, metadata !DIExpression()), !dbg !2693
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2692, metadata !DIExpression(DW_OP_deref)), !dbg !2693
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2694
  ret i32 %call, !dbg !2695
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2696 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2720, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2721, metadata !DIExpression()), !dbg !2722
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2723
  ret i32 %call, !dbg !2724
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2725 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2728, metadata !DIExpression()), !dbg !2729
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2730
  ret i32 %call, !dbg !2731
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2732 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2736, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2737, metadata !DIExpression()), !dbg !2738
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2739
  ret i32 %call, !dbg !2740
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2741 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2745, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2746, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2748, metadata !DIExpression()), !dbg !2749
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2750
  ret i32 %call, !dbg !2751
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_decide_is_function_needed(%struct.cgraph_node* %node, %union.tree_node* %decl) local_unnamed_addr #5 !dbg !2752 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2757, metadata !DIExpression()), !dbg !2758
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !2759
  %bf.load = load i8, i8* %externally_visible, align 8, !dbg !2759
  %bf.clear = and i8 %bf.load, 2, !dbg !2759
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !2761
  br i1 %tobool, label %if.end, label %return, !dbg !2762

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2763
  %bf.load1 = load i64, i64* %0, align 8, !dbg !2763
  %bf.cast3 = and i64 %bf.load1, 65535, !dbg !2763
  %arrayidx4 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast3, i64 13, !dbg !2763
  %1 = load i8, i8* %arrayidx4, align 1, !dbg !2763
  %tobool5 = icmp eq i8 %1, 0, !dbg !2763
  br i1 %tobool5, label %if.end15, label %land.lhs.true, !dbg !2763

land.lhs.true:                                    ; preds = %if.end
  %assembler_name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2763
  %2 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8, !dbg !2763
  %cmp = icmp eq %union.tree_node* %2, null, !dbg !2763
  br i1 %cmp, label %if.end15, label %land.lhs.true7, !dbg !2765

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %decl) #6, !dbg !2766
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2766
  %bf.load9 = load i64, i64* %3, align 8, !dbg !2766
  %bf.cast125 = and i64 %bf.load9, 67108864, !dbg !2766
  %tobool13 = icmp eq i64 %bf.cast125, 0, !dbg !2766
  br i1 %tobool13, label %if.end15, label %return, !dbg !2767

if.end15:                                         ; preds = %land.lhs.true7, %land.lhs.true, %if.end
  %4 = load i32, i32* @flag_keep_inline_functions, align 4, !dbg !2768
  %tobool16 = icmp eq i32 %4, 0, !dbg !2768
  br i1 %tobool16, label %if.end33, label %land.lhs.true17, !dbg !2770

land.lhs.true17:                                  ; preds = %if.end15
  %declared_inline_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 5, !dbg !2771
  %bf.load18 = load i32, i32* %declared_inline_flag, align 8, !dbg !2771
  %bf.clear20 = and i32 %bf.load18, 2097152, !dbg !2771
  %tobool21 = icmp eq i32 %bf.clear20, 0, !dbg !2771
  br i1 %tobool21, label %if.end33, label %land.lhs.true22, !dbg !2772

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2773
  %5 = bitcast i40* %decl_flag_1 to i64*, !dbg !2773
  %bf.load23 = load i64, i64* %5, align 8, !dbg !2773
  %bf.cast264 = and i64 %bf.load23, 33554432, !dbg !2773
  %tobool27 = icmp eq i64 %bf.cast264, 0, !dbg !2773
  br i1 %tobool27, label %land.lhs.true28, label %if.end33, !dbg !2774

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %attributes = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !2775
  %6 = load %union.tree_node*, %union.tree_node** %attributes, align 8, !dbg !2775
  %call30 = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %union.tree_node* %6) #6, !dbg !2776
  %tobool31 = icmp eq %union.tree_node* %call30, null, !dbg !2776
  br i1 %tobool31, label %return, label %if.end33, !dbg !2777

if.end33:                                         ; preds = %land.lhs.true28, %land.lhs.true22, %land.lhs.true17, %if.end15
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !2778
  %bf.load34 = load i16, i16* %needed, align 4, !dbg !2778
  %bf.clear35 = and i16 %bf.load34, 1, !dbg !2778
  %tobool37 = icmp eq i16 %bf.clear35, 0, !dbg !2780
  br i1 %tobool37, label %if.end39, label %return, !dbg !2781

if.end39:                                         ; preds = %if.end33
  %bf.load41 = load i64, i64* %0, align 8, !dbg !2782
  %bf.cast442 = and i64 %bf.load41, 134217728, !dbg !2782
  %tobool45 = icmp eq i64 %bf.cast442, 0, !dbg !2782
  br i1 %tobool45, label %lor.lhs.false, label %land.lhs.true63, !dbg !2784

lor.lhs.false:                                    ; preds = %if.end39
  %7 = load i32, i32* @optimize, align 4, !dbg !2785
  %tobool46 = icmp eq i32 %7, 0, !dbg !2785
  br i1 %tobool46, label %land.lhs.true47, label %if.end84, !dbg !2786

land.lhs.true47:                                  ; preds = %lor.lhs.false
  %bf.load49 = load i8, i8* %externally_visible, align 8, !dbg !2787
  %bf.clear51 = and i8 %bf.load49, 16, !dbg !2787
  %tobool53 = icmp eq i8 %bf.clear51, 0, !dbg !2788
  br i1 %tobool53, label %land.lhs.true54, label %if.end84, !dbg !2789

land.lhs.true54:                                  ; preds = %land.lhs.true47
  %declared_inline_flag56 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 5, !dbg !2790
  %bf.load57 = load i32, i32* %declared_inline_flag56, align 8, !dbg !2790
  %bf.clear59 = and i32 %bf.load57, 2097152, !dbg !2790
  %tobool60 = icmp eq i32 %bf.clear59, 0, !dbg !2790
  br i1 %tobool60, label %land.lhs.true61, label %if.end84, !dbg !2791

land.lhs.true61:                                  ; preds = %land.lhs.true54
  %origin = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 5, !dbg !2792
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %origin, align 8, !dbg !2792
  %tobool62 = icmp eq %struct.cgraph_node* %8, null, !dbg !2793
  br i1 %tobool62, label %land.lhs.true63, label %if.end84, !dbg !2794

land.lhs.true63:                                  ; preds = %land.lhs.true61, %if.end39
  %9 = load i32, i32* @flag_whole_program, align 4, !dbg !2795
  %10 = load i32, i32* @flag_lto, align 4, !dbg !2796
  %11 = or i32 %9, %10, !dbg !2797
  %12 = load i32, i32* @flag_whopr, align 4, !dbg !2798
  %13 = or i32 %11, %12, !dbg !2797
  %14 = icmp eq i32 %13, 0, !dbg !2797
  br i1 %14, label %land.lhs.true69, label %if.end84, !dbg !2797

land.lhs.true69:                                  ; preds = %land.lhs.true63
  %comdat_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2799
  %15 = bitcast i24* %comdat_flag to i32*, !dbg !2799
  %bf.load71 = load i32, i32* %15, align 8, !dbg !2799
  %bf.clear73 = and i32 %bf.load71, 512, !dbg !2799
  %tobool74 = icmp eq i32 %bf.clear73, 0, !dbg !2799
  br i1 %tobool74, label %land.lhs.true75, label %if.end84, !dbg !2800

land.lhs.true75:                                  ; preds = %land.lhs.true69
  %decl_flag_177 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2801
  %16 = bitcast i40* %decl_flag_177 to i64*, !dbg !2801
  %bf.load78 = load i64, i64* %16, align 8, !dbg !2801
  %bf.cast813 = and i64 %bf.load78, 33554432, !dbg !2801
  %tobool82 = icmp eq i64 %bf.cast813, 0, !dbg !2801
  br i1 %tobool82, label %return, label %if.end84, !dbg !2802

if.end84:                                         ; preds = %land.lhs.true75, %land.lhs.true69, %land.lhs.true63, %land.lhs.true61, %land.lhs.true54, %land.lhs.true47, %lor.lhs.false
  %static_ctor_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 5, !dbg !2803
  %bf.load86 = load i32, i32* %static_ctor_flag, align 8, !dbg !2803
  %bf.clear88 = and i32 %bf.load86, 8192, !dbg !2803
  %tobool89 = icmp eq i32 %bf.clear88, 0, !dbg !2803
  br i1 %tobool89, label %lor.lhs.false90, label %return, !dbg !2805

lor.lhs.false90:                                  ; preds = %if.end84
  %bf.clear94 = lshr i32 %bf.load86, 14, !dbg !2806
  %17 = trunc i32 %bf.clear94 to i8, !dbg !2806
  %18 = and i8 %17, 1, !dbg !2806
  ret i8 %18, !dbg !2806

return:                                           ; preds = %land.lhs.true7, %land.lhs.true28, %if.end84, %land.lhs.true75, %if.end33, %entry
  ret i8 1, !dbg !2807
}

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_process_new_functions() local_unnamed_addr #5 !dbg !2808 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !2810, metadata !DIExpression()), !dbg !2813
  br label %while.cond, !dbg !2814

while.cond:                                       ; preds = %sw.epilog, %entry
  %output.0 = phi i8 [ 0, %entry ], [ %output.1, %sw.epilog ], !dbg !2815
  call void @llvm.dbg.value(metadata i8 %output.0, metadata !2810, metadata !DIExpression()), !dbg !2813
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_new_nodes, align 8, !dbg !2816
  %tobool = icmp eq %struct.cgraph_node* %0, null, !dbg !2814
  br i1 %tobool, label %while.end, label %while.body, !dbg !2814

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !2812, metadata !DIExpression()), !dbg !2813
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 0, !dbg !2817
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !2817
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2811, metadata !DIExpression()), !dbg !2813
  %next_needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 8, !dbg !2819
  %2 = bitcast %struct.cgraph_node** %next_needed to i64*, !dbg !2819
  %3 = load i64, i64* %2, align 8, !dbg !2819
  store i64 %3, i64* bitcast (%struct.cgraph_node** @cgraph_new_nodes to i64*), align 8, !dbg !2820
  %4 = load i32, i32* @cgraph_state, align 4, !dbg !2821
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb2
    i32 3, label %sw.bb11
  ], !dbg !2822

sw.bb:                                            ; preds = %while.body
  store %struct.cgraph_node* null, %struct.cgraph_node** %next_needed, align 8, !dbg !2823
  tail call void @cgraph_finalize_function(%union.tree_node* %1, i8 zeroext 0) #7, !dbg !2825
  tail call void @cgraph_mark_reachable_node(%struct.cgraph_node* nonnull %0) #6, !dbg !2826
  call void @llvm.dbg.value(metadata i8 1, metadata !2810, metadata !DIExpression()), !dbg !2813
  br label %sw.epilog, !dbg !2827

sw.bb2:                                           ; preds = %while.body, %while.body
  tail call void @gimple_register_cfg_hooks() #6, !dbg !2828
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 27, !dbg !2829
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !2829
  %bf.clear = and i16 %bf.load, 32, !dbg !2829
  %tobool3 = icmp eq i16 %bf.clear, 0, !dbg !2831
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2832

if.then:                                          ; preds = %sw.bb2
  tail call fastcc void @cgraph_analyze_function(%struct.cgraph_node* nonnull %0) #7, !dbg !2833
  br label %if.end, !dbg !2833

if.end:                                           ; preds = %sw.bb2, %if.then
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 1, !dbg !2834
  %5 = load %struct.function*, %struct.function** %f, align 8, !dbg !2834
  tail call void @push_cfun(%struct.function* %5) #6, !dbg !2835
  store %union.tree_node* %1, %union.tree_node** @current_function_decl, align 8, !dbg !2836
  %call = tail call i32 @compute_inline_parameters(%struct.cgraph_node* nonnull %0) #6, !dbg !2837
  %6 = load i32, i32* @cgraph_state, align 4, !dbg !2838
  %cmp = icmp eq i32 %6, 2, !dbg !2840
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !2841

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.function*, %struct.function** %f, align 8, !dbg !2842
  %call6 = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %7) #7, !dbg !2843
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2843
  br i1 %tobool7, label %if.then9, label %lor.lhs.false, !dbg !2844

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %8 = load i32, i32* @optimize, align 4, !dbg !2845
  %tobool8 = icmp eq i32 %8, 0, !dbg !2845
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2846

if.then9:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %9 = load %struct.opt_pass*, %struct.opt_pass** getelementptr inbounds (%struct.simple_ipa_opt_pass, %struct.simple_ipa_opt_pass* @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !dbg !2847
  tail call void @execute_pass_list(%struct.opt_pass* %9) #6, !dbg !2848
  br label %if.end10, !dbg !2848

if.end10:                                         ; preds = %lor.lhs.false, %if.then9
  tail call void @free_dominance_info(i32 2) #6, !dbg !2849
  tail call void @free_dominance_info(i32 1) #6, !dbg !2850
  tail call void @pop_cfun() #6, !dbg !2851
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !2852
  br label %sw.epilog, !dbg !2853

sw.bb11:                                          ; preds = %while.body
  %process = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 27, !dbg !2854
  %bf.load12 = load i16, i16* %process, align 4, !dbg !2855
  %bf.clear13 = and i16 %bf.load12, -65, !dbg !2855
  store i16 %bf.clear13, i16* %process, align 4, !dbg !2855
  tail call fastcc void @cgraph_expand_function(%struct.cgraph_node* nonnull %0) #7, !dbg !2856
  br label %sw.epilog, !dbg !2857

sw.default:                                       ; preds = %while.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 450, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2858
  br label %sw.epilog, !dbg !2859

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %if.end10, %sw.bb
  %output.1 = phi i8 [ %output.0, %sw.default ], [ %output.0, %sw.bb11 ], [ %output.0, %if.end10 ], [ 1, %sw.bb ], !dbg !2813
  call void @llvm.dbg.value(metadata i8 %output.1, metadata !2810, metadata !DIExpression()), !dbg !2813
  tail call void @cgraph_call_function_insertion_hooks(%struct.cgraph_node* nonnull %0) #6, !dbg !2860
  br label %while.cond, !dbg !2814, !llvm.loop !2861

while.end:                                        ; preds = %while.cond
  %output.0.lcssa = phi i8 [ %output.0, %while.cond ], !dbg !2815
  call void @llvm.dbg.value(metadata i8 %output.0.lcssa, metadata !2810, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 %output.0.lcssa, metadata !2810, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8 %output.0.lcssa, metadata !2810, metadata !DIExpression()), !dbg !2813
  ret i8 %output.0.lcssa, !dbg !2863
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_finalize_function(%union.tree_node* %decl, i8 zeroext %nested) local_unnamed_addr #5 !dbg !2864 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2868, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i8 %nested, metadata !2869, metadata !DIExpression()), !dbg !2871
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %decl) #6, !dbg !2872
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !2870, metadata !DIExpression()), !dbg !2871
  %finalized = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 18, i32 2, !dbg !2873
  %bf.load = load i8, i8* %finalized, align 8, !dbg !2873
  %bf.clear = and i8 %bf.load, 4, !dbg !2873
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !2875
  br i1 %tobool, label %if.end, label %if.then, !dbg !2876

if.then:                                          ; preds = %entry
  tail call fastcc void @cgraph_reset_node(%struct.cgraph_node* %call) #7, !dbg !2877
  br label %if.end, !dbg !2877

if.end:                                           ; preds = %entry, %if.then
  %0 = load i32, i32* @cgraph_max_pid, align 4, !dbg !2878
  %inc = add nsw i32 %0, 1, !dbg !2878
  store i32 %inc, i32* @cgraph_max_pid, align 4, !dbg !2878
  %pid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 26, !dbg !2879
  store i32 %0, i32* %pid, align 8, !dbg !2880
  tail call void @notice_global_symbol(%union.tree_node* %decl) #6, !dbg !2881
  %bf.load3 = load i8, i8* %finalized, align 8, !dbg !2882
  %bf.set = or i8 %bf.load3, 4, !dbg !2882
  store i8 %bf.set, i8* %finalized, align 8, !dbg !2882
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 1, !dbg !2883
  %1 = load %struct.function*, %struct.function** %f, align 8, !dbg !2883
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2884
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2884
  %cmp = icmp ne %struct.control_flow_graph* %2, null, !dbg !2885
  %lowered = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 27, !dbg !2886
  %3 = zext i1 %cmp to i16, !dbg !2887
  %bf.load5 = load i16, i16* %lowered, align 4, !dbg !2887
  %bf.shl = shl nuw nsw i16 %3, 4, !dbg !2887
  %bf.clear6 = and i16 %bf.load5, -273, !dbg !2887
  %bf.set7 = or i16 %bf.clear6, %bf.shl, !dbg !2887
  %bf.set10 = or i16 %bf.set7, 256, !dbg !2888
  store i16 %bf.set10, i16* %lowered, align 4, !dbg !2888
  %decl11 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 0, !dbg !2889
  %4 = load %union.tree_node*, %union.tree_node** %decl11, align 8, !dbg !2889
  tail call fastcc void @record_cdtor_fn(%union.tree_node* %4) #7, !dbg !2890
  %call12 = tail call zeroext i8 @cgraph_decide_is_function_needed(%struct.cgraph_node* %call, %union.tree_node* %decl) #7, !dbg !2891
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2891
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2893

if.then14:                                        ; preds = %if.end
  tail call void @cgraph_mark_needed_node(%struct.cgraph_node* %call) #6, !dbg !2894
  br label %if.end15, !dbg !2894

if.end15:                                         ; preds = %if.end, %if.then14
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2895
  %bf.load16 = load i64, i64* %5, align 8, !dbg !2895
  %bf.cast191 = and i64 %bf.load16, 134217728, !dbg !2895
  %tobool20 = icmp eq i64 %bf.cast191, 0, !dbg !2895
  br i1 %tobool20, label %if.end32, label %land.lhs.true, !dbg !2897

land.lhs.true:                                    ; preds = %if.end15
  %comdat_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2898
  %6 = bitcast i24* %comdat_flag to i32*, !dbg !2898
  %bf.load21 = load i32, i32* %6, align 8, !dbg !2898
  %bf.clear23 = and i32 %bf.load21, 512, !dbg !2898
  %tobool24 = icmp eq i32 %bf.clear23, 0, !dbg !2898
  br i1 %tobool24, label %land.lhs.true25, label %if.end32, !dbg !2899

land.lhs.true25:                                  ; preds = %land.lhs.true
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2900
  %7 = bitcast i40* %decl_flag_1 to i64*, !dbg !2900
  %bf.load26 = load i64, i64* %7, align 8, !dbg !2900
  %bf.cast293 = and i64 %bf.load26, 33554432, !dbg !2900
  %tobool30 = icmp eq i64 %bf.cast293, 0, !dbg !2900
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !2901

if.then31:                                        ; preds = %land.lhs.true25
  tail call void @cgraph_mark_reachable_node(%struct.cgraph_node* %call) #6, !dbg !2902
  %bf.load34.pre = load i64, i64* %5, align 8, !dbg !2903
  br label %if.end32, !dbg !2902

if.end32:                                         ; preds = %land.lhs.true25, %land.lhs.true, %if.end15, %if.then31
  %bf.load34 = phi i64 [ %bf.load16, %land.lhs.true25 ], [ %bf.load16, %land.lhs.true ], [ %bf.load16, %if.end15 ], [ %bf.load34.pre, %if.then31 ], !dbg !2903
  %bf.cast372 = and i64 %bf.load34, 4194304, !dbg !2903
  %tobool38 = icmp eq i64 %bf.cast372, 0, !dbg !2903
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !2905

if.then39:                                        ; preds = %if.end32
  %8 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !2906
  %deferred_inline_function = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %8, i64 0, i32 20, !dbg !2907
  %9 = load void (%union.tree_node*)*, void (%union.tree_node*)** %deferred_inline_function, align 8, !dbg !2907
  tail call void %9(%union.tree_node* %decl) #6, !dbg !2908
  br label %if.end40, !dbg !2908

if.end40:                                         ; preds = %if.end32, %if.then39
  %10 = load i32, i32* @warn_unused_parameter, align 4, !dbg !2909
  %tobool41 = icmp eq i32 %10, 0, !dbg !2909
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !2911

if.then42:                                        ; preds = %if.end40
  tail call void @do_warn_unused_parameter(%union.tree_node* %decl) #6, !dbg !2912
  br label %if.end43, !dbg !2912

if.end43:                                         ; preds = %if.end40, %if.then42
  %tobool44 = icmp eq i8 %nested, 0, !dbg !2913
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !2915

if.then45:                                        ; preds = %if.end43
  tail call void @ggc_collect() #6, !dbg !2916
  br label %if.end46, !dbg !2916

if.end46:                                         ; preds = %if.end43, %if.then45
  ret void, !dbg !2917
}

declare dso_local void @cgraph_mark_reachable_node(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @gimple_register_cfg_hooks() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_analyze_function(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !2918 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2920, metadata !DIExpression()), !dbg !2923
  %0 = load i64, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !2924
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !2925
  %1 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !2925
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2922, metadata !DIExpression()), !dbg !2923
  store %union.tree_node* %1, %union.tree_node** @current_function_decl, align 8, !dbg !2926
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 1, !dbg !2927
  %2 = load %struct.function*, %struct.function** %f, align 8, !dbg !2927
  tail call void @push_cfun(%struct.function* %2) #6, !dbg !2928
  %3 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !2929
  tail call void @assign_assembler_name_if_neeeded(%union.tree_node* %3) #6, !dbg !2930
  %call = tail call %struct.gimple_seq_d* @gimple_body(%union.tree_node* %1) #6, !dbg !2931
  %tobool = icmp eq %struct.gimple_seq_d* %call, null, !dbg !2931
  br i1 %tobool, label %if.then, label %if.end, !dbg !2933

if.then:                                          ; preds = %entry
  tail call void @gimplify_function_tree(%union.tree_node* %1) #6, !dbg !2934
  br label %if.end, !dbg !2934

if.end:                                           ; preds = %entry, %if.then
  tail call void @dump_function(i32 5, %union.tree_node* %1) #6, !dbg !2935
  tail call fastcc void @cgraph_lower_function(%struct.cgraph_node* %node) #7, !dbg !2936
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !2937
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !2938
  %bf.set = or i16 %bf.load, 32, !dbg !2938
  store i16 %bf.set, i16* %analyzed, align 4, !dbg !2938
  tail call void @pop_cfun() #6, !dbg !2939
  store i64 %0, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !2940
  ret void, !dbg !2941
}

declare dso_local void @push_cfun(%struct.function*) local_unnamed_addr #2

declare dso_local i32 @compute_inline_parameters(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %fun) unnamed_addr #0 !dbg !2942 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !2949, metadata !DIExpression()), !dbg !2950
  %tobool = icmp eq %struct.function* %fun, null, !dbg !2951
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !2952

land.lhs.true:                                    ; preds = %entry
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !2953
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2953
  %tobool1 = icmp eq %struct.gimple_df* %0, null, !dbg !2954
  br i1 %tobool1, label %land.end, label %land.rhs, !dbg !2955

land.rhs:                                         ; preds = %land.lhs.true
  %in_ssa_p = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 10, !dbg !2956
  %bf.load = load i8, i8* %in_ssa_p, align 8, !dbg !2956
  %bf.clear = and i8 %bf.load, 1, !dbg !2956
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry, %land.rhs
  %1 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ %bf.clear, %land.rhs ]
  ret i8 %1, !dbg !2957
}

declare dso_local void @execute_pass_list(%struct.opt_pass*) local_unnamed_addr #2

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

declare dso_local void @pop_cfun() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_expand_function(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !2958 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !2960, metadata !DIExpression()), !dbg !2967
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !2968
  %0 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !2968
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2961, metadata !DIExpression()), !dbg !2967
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 2, !dbg !2969
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !2969
  %tobool = icmp eq %struct.cgraph_node* %1, null, !dbg !2969
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2969

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1554, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2969
  br label %cond.end, !dbg !2969

cond.end:                                         ; preds = %entry, %cond.true
  tail call void @announce_function(%union.tree_node* %0) #6, !dbg !2970
  %process = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !2971
  %bf.load = load i16, i16* %process, align 4, !dbg !2972
  %bf.clear = and i16 %bf.load, -65, !dbg !2972
  store i16 %bf.clear, i16* %process, align 4, !dbg !2972
  %bf.clear3 = and i16 %bf.load, 16, !dbg !2973
  %tobool4 = icmp eq i16 %bf.clear3, 0, !dbg !2973
  br i1 %tobool4, label %cond.true5, label %cond.end7, !dbg !2973

cond.true5:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1559, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2973
  br label %cond.end7, !dbg !2973

cond.end7:                                        ; preds = %cond.end, %cond.true5
  tail call void @tree_rest_of_compilation(%union.tree_node* %0) #6, !dbg !2974
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2975
  %bf.load9 = load i64, i64* %2, align 8, !dbg !2975
  %bf.cast121 = and i64 %bf.load9, 4194304, !dbg !2975
  %tobool13 = icmp eq i64 %bf.cast121, 0, !dbg !2975
  br i1 %tobool13, label %cond.true14, label %cond.end16, !dbg !2975

cond.true14:                                      ; preds = %cond.end7
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1565, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2975
  br label %cond.end16, !dbg !2975

cond.end16:                                       ; preds = %cond.end7, %cond.true14
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !2976
  %same_body = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 13, !dbg !2977
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %same_body, align 8, !dbg !2977
  %tobool18 = icmp eq %struct.cgraph_node* %3, null, !dbg !2978
  br i1 %tobool18, label %if.end43, label %if.then, !dbg !2979

if.then:                                          ; preds = %cond.end16
  %bf.load20 = load i16, i16* %process, align 4, !dbg !2980
  %conv = and i16 %bf.load20, 128, !dbg !2981
  br label %for.cond, !dbg !2982

for.cond:                                         ; preds = %for.inc, %if.then
  %alias.0 = phi %struct.cgraph_node* [ %3, %if.then ], [ %4, %for.inc ], !dbg !2984
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0, metadata !2962, metadata !DIExpression()), !dbg !2985
  %tobool25 = icmp eq %struct.cgraph_node* %alias.0, null, !dbg !2986
  br i1 %tobool25, label %for.end, label %land.rhs, !dbg !2988

land.rhs:                                         ; preds = %for.cond
  %next26 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.0, i64 0, i32 3, !dbg !2989
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %next26, align 8, !dbg !2989
  %tobool27 = icmp eq %struct.cgraph_node* %4, null, !dbg !2988
  br i1 %tobool27, label %for.end, label %for.inc, !dbg !2990

for.inc:                                          ; preds = %land.rhs
  br label %for.cond, !dbg !2991, !llvm.loop !2992

for.end:                                          ; preds = %land.rhs, %for.cond
  %alias.0.lcssa = phi %struct.cgraph_node* [ %alias.0, %land.rhs ], [ %alias.0, %for.cond ], !dbg !2984
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0.lcssa, metadata !2962, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0.lcssa, metadata !2962, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0.lcssa, metadata !2962, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.0.lcssa, metadata !2962, metadata !DIExpression()), !dbg !2985
  br label %for.cond29, !dbg !2994

for.cond29:                                       ; preds = %for.inc37, %for.end
  %alias.1 = phi %struct.cgraph_node* [ %alias.0.lcssa, %for.end ], [ %5, %for.inc37 ], !dbg !2985
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %alias.1, metadata !2962, metadata !DIExpression()), !dbg !2985
  %tobool30 = icmp eq %struct.cgraph_node* %alias.1, null, !dbg !2995
  br i1 %tobool30, label %for.end38, label %for.body31, !dbg !2995

for.body31:                                       ; preds = %for.cond29
  %previous = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.1, i64 0, i32 4, !dbg !2997
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %previous, align 8, !dbg !2997
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %5, metadata !2965, metadata !DIExpression()), !dbg !2985
  %thunk_p = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.1, i64 0, i32 22, i32 5, !dbg !3000
  %6 = load i8, i8* %thunk_p, align 2, !dbg !3000
  %tobool32 = icmp eq i8 %6, 0, !dbg !3002
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !3003

if.then33:                                        ; preds = %for.body31
  %decl34 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.1, i64 0, i32 0, !dbg !3004
  %7 = load %union.tree_node*, %union.tree_node** %decl34, align 8, !dbg !3004
  %alias36 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %alias.1, i64 0, i32 22, i32 2, !dbg !3005
  %8 = load %union.tree_node*, %union.tree_node** %alias36, align 8, !dbg !3005
  %call = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %8) #6, !dbg !3005
  tail call void @assemble_alias(%union.tree_node* %7, %union.tree_node* %call) #6, !dbg !3006
  br label %for.inc37, !dbg !3006

if.else:                                          ; preds = %for.body31
  tail call fastcc void @assemble_thunk(%struct.cgraph_node* nonnull %alias.1) #7, !dbg !3007
  br label %for.inc37

for.inc37:                                        ; preds = %if.then33, %if.else
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %5, metadata !2962, metadata !DIExpression()), !dbg !2985
  br label %for.cond29, !dbg !3008, !llvm.loop !3009

for.end38:                                        ; preds = %for.cond29
  %bf.load41 = load i16, i16* %process, align 4, !dbg !3011
  %bf.clear42 = and i16 %bf.load41, -129, !dbg !3011
  %bf.set = or i16 %bf.clear42, %conv, !dbg !3011
  store i16 %bf.set, i16* %process, align 4, !dbg !3011
  br label %if.end43, !dbg !3012

if.end43:                                         ; preds = %cond.end16, %for.end38
  %call44 = tail call zeroext i8 @cgraph_preserve_function_body_p(%union.tree_node* %0) #7, !dbg !3013
  %tobool45 = icmp eq i8 %call44, 0, !dbg !3013
  br i1 %tobool45, label %cond.end48, label %cond.true46, !dbg !3013

cond.true46:                                      ; preds = %if.end43
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1587, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3013
  br label %cond.end48, !dbg !3013

cond.end48:                                       ; preds = %if.end43, %cond.true46
  tail call void @cgraph_release_function_body(%struct.cgraph_node* %node) #6, !dbg !3014
  tail call void @cgraph_node_remove_callees(%struct.cgraph_node* %node) #6, !dbg !3015
  store i8 1, i8* @cgraph_function_flags_ready, align 1, !dbg !3016
  ret void, !dbg !3017
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local void @cgraph_call_function_insertion_hooks(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local %struct.cgraph_node* @cgraph_node(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_reset_node(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !3018 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3020, metadata !DIExpression()), !dbg !3024
  %process = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3025
  %bf.load = load i16, i16* %process, align 4, !dbg !3025
  %bf.clear = and i16 %bf.load, 64, !dbg !3025
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !3025
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3025

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 476, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3025
  br label %cond.end, !dbg !3025

cond.end:                                         ; preds = %entry, %cond.true
  %local = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, !dbg !3026
  %0 = bitcast %struct.cgraph_local_info* %local to i8*, !dbg !3027
  %call = tail call i8* @memset(i8* nonnull %0, i32 0, i64 40) #6, !dbg !3028
  %global = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, !dbg !3029
  %1 = bitcast %struct.cgraph_global_info* %global to i8*, !dbg !3030
  %call1 = tail call i8* @memset(i8* nonnull %1, i32 0, i64 40) #6, !dbg !3031
  %rtl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 20, !dbg !3032
  %2 = bitcast %struct.cgraph_rtl_info* %rtl to i8*, !dbg !3033
  %call2 = tail call i8* @memset(i8* nonnull %2, i32 0, i64 4) #6, !dbg !3034
  %bf.load3 = load i16, i16* %process, align 4, !dbg !3035
  %bf.clear4 = and i16 %bf.load3, -33, !dbg !3035
  store i16 %bf.clear4, i16* %process, align 4, !dbg !3035
  %redefined_extern_inline = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !3036
  %bf.load6 = load i8, i8* %redefined_extern_inline, align 8, !dbg !3037
  %bf.set = and i8 %bf.load6, -37, !dbg !3038
  %bf.clear10 = or i8 %bf.set, 32, !dbg !3038
  store i8 %bf.clear10, i8* %redefined_extern_inline, align 8, !dbg !3038
  tail call void @cgraph_node_remove_callees(%struct.cgraph_node* %node) #6, !dbg !3039
  %bf.load11 = load i16, i16* %process, align 4, !dbg !3040
  %bf.clear13 = and i16 %bf.load11, 8, !dbg !3040
  %tobool15 = icmp eq i16 %bf.clear13, 0, !dbg !3041
  br i1 %tobool15, label %if.end24, label %if.then, !dbg !3042

if.then:                                          ; preds = %cond.end
  br label %for.cond, !dbg !3043

for.cond:                                         ; preds = %for.inc, %if.then
  %n.0.in = phi %struct.cgraph_node** [ @cgraph_nodes_queue, %if.then ], [ %next_needed, %for.inc ]
  %n.0 = load %struct.cgraph_node*, %struct.cgraph_node** %n.0.in, align 8, !dbg !3045
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.0, metadata !3021, metadata !DIExpression()), !dbg !3046
  %cond = icmp eq %struct.cgraph_node* %n.0, null, !dbg !3047
  br i1 %cond, label %if.then19.loopexit, label %for.body, !dbg !3047

for.body:                                         ; preds = %for.cond
  %cmp = icmp eq %struct.cgraph_node* %n.0, %node, !dbg !3048
  br i1 %cmp, label %for.end, label %for.inc, !dbg !3051

for.inc:                                          ; preds = %for.body
  %next_needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 8, !dbg !3052
  br label %for.cond, !dbg !3053, !llvm.loop !3054

for.end:                                          ; preds = %for.body
  br label %if.end24, !dbg !3056

if.then19.loopexit:                               ; preds = %for.cond
  %bf.clear22 = and i16 %bf.load11, -9, !dbg !3057
  store i16 %bf.clear22, i16* %process, align 4, !dbg !3057
  br label %if.end24, !dbg !3059

if.end24:                                         ; preds = %for.end, %cond.end, %if.then19.loopexit
  ret void, !dbg !3060
}

declare dso_local void @notice_global_symbol(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @record_cdtor_fn(%union.tree_node* %fndecl) unnamed_addr #5 !dbg !3061 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl, metadata !3065, metadata !DIExpression()), !dbg !3067
  %0 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 112), align 1, !dbg !3068
  %tobool = icmp eq i8 %0, 0, !dbg !3070
  br i1 %tobool, label %lor.lhs.false, label %cleanup.cont, !dbg !3071

lor.lhs.false:                                    ; preds = %entry
  %static_ctor_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 5, !dbg !3072
  %bf.load = load i32, i32* %static_ctor_flag, align 8, !dbg !3072
  %bf.clear = and i32 %bf.load, 8192, !dbg !3072
  %tobool1 = icmp eq i32 %bf.clear, 0, !dbg !3072
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !3073

land.lhs.true:                                    ; preds = %lor.lhs.false
  %bf.clear5 = and i32 %bf.load, 16384, !dbg !3074
  %tobool6 = icmp eq i32 %bf.clear5, 0, !dbg !3074
  br i1 %tobool6, label %cleanup.cont, label %if.end, !dbg !3075

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br i1 %tobool1, label %if.end18, label %if.then13, !dbg !3076

if.then13:                                        ; preds = %if.end
  %call = tail call fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** nonnull @static_ctors, %union.tree_node* %fndecl) #7, !dbg !3077
  %bf.load16 = load i32, i32* %static_ctor_flag, align 8, !dbg !3080
  %bf.clear17 = and i32 %bf.load16, -8193, !dbg !3080
  store i32 %bf.clear17, i32* %static_ctor_flag, align 8, !dbg !3080
  br label %if.end18, !dbg !3081

if.end18:                                         ; preds = %if.end, %if.then13
  %bf.load21 = phi i32 [ %bf.load, %if.end ], [ %bf.clear17, %if.then13 ], !dbg !3082
  %bf.clear23 = and i32 %bf.load21, 16384, !dbg !3082
  %tobool24 = icmp eq i32 %bf.clear23, 0, !dbg !3082
  br i1 %tobool24, label %if.end31, label %if.then25, !dbg !3084

if.then25:                                        ; preds = %if.end18
  %call26 = tail call fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** nonnull @static_dtors, %union.tree_node* %fndecl) #7, !dbg !3085
  %bf.load29 = load i32, i32* %static_ctor_flag, align 8, !dbg !3087
  %bf.clear30 = and i32 %bf.load29, -16385, !dbg !3087
  store i32 %bf.clear30, i32* %static_ctor_flag, align 8, !dbg !3087
  br label %if.end31, !dbg !3088

if.end31:                                         ; preds = %if.end18, %if.then25
  %call32 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %fndecl) #6, !dbg !3089
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call32, metadata !3066, metadata !DIExpression()), !dbg !3067
  %disregard_inline_limits = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call32, i64 0, i32 18, i32 2, !dbg !3090
  %bf.load33 = load i8, i8* %disregard_inline_limits, align 8, !dbg !3091
  %bf.set = or i8 %bf.load33, 16, !dbg !3091
  store i8 %bf.set, i8* %disregard_inline_limits, align 8, !dbg !3091
  tail call void @cgraph_mark_reachable_node(%struct.cgraph_node* %call32) #6, !dbg !3092
  br label %cleanup.cont, !dbg !3093

cleanup.cont:                                     ; preds = %land.lhs.true, %entry, %if.end31
  ret void, !dbg !3093
}

declare dso_local void @cgraph_mark_needed_node(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @do_warn_unused_parameter(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @ggc_collect() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_mark_if_needed(%union.tree_node* %decl) local_unnamed_addr #5 !dbg !3094 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !3096, metadata !DIExpression()), !dbg !3098
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %decl) #6, !dbg !3099
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !3097, metadata !DIExpression()), !dbg !3098
  %finalized = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 18, i32 2, !dbg !3100
  %bf.load = load i8, i8* %finalized, align 8, !dbg !3100
  %bf.clear = and i8 %bf.load, 4, !dbg !3100
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !3102
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3103

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i8 @cgraph_decide_is_function_needed(%struct.cgraph_node* %call, %union.tree_node* %decl) #7, !dbg !3104
  %tobool2 = icmp eq i8 %call1, 0, !dbg !3104
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3105

if.then:                                          ; preds = %land.lhs.true
  tail call void @cgraph_mark_needed_node(%struct.cgraph_node* %call) #6, !dbg !3106
  br label %if.end, !dbg !3106

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  ret void, !dbg !3107
}

; Function Attrs: nounwind uwtable
define dso_local void @verify_cgraph_node(%struct.cgraph_node* %node) local_unnamed_addr #5 !dbg !3108 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3110, metadata !DIExpression()), !dbg !3146
  %0 = bitcast %struct.cgraph_node* %node to %struct.tree_function_decl**, !dbg !3147
  %1 = load %struct.tree_function_decl*, %struct.tree_function_decl** %0, align 8, !dbg !3147
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %1, i64 0, i32 1, !dbg !3147
  %2 = load %struct.function*, %struct.function** %f, align 8, !dbg !3147
  call void @llvm.dbg.value(metadata %struct.function* %2, metadata !3112, metadata !DIExpression()), !dbg !3146
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3148
  call void @llvm.dbg.value(metadata %struct.function* %3, metadata !3113, metadata !DIExpression()), !dbg !3146
  %4 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3149
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3149
  call void @llvm.dbg.value(metadata i8 0, metadata !3122, metadata !DIExpression()), !dbg !3146
  %5 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3150
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %5, i64 0, i32 1, i64 4, !dbg !3150
  %6 = load i32, i32* %arrayidx, align 8, !dbg !3150
  %tobool = icmp eq i32 %6, 0, !dbg !3150
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !3152

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %5, i64 0, i32 1, i64 5, !dbg !3153
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !3153
  %tobool3 = icmp eq i32 %7, 0, !dbg !3153
  br i1 %tobool3, label %do.body, label %cleanup, !dbg !3154

do.body:                                          ; preds = %lor.lhs.false
  %8 = load i8, i8* @timevar_enable, align 1, !dbg !3155
  %tobool4 = icmp eq i8 %8, 0, !dbg !3155
  br i1 %tobool4, label %do.end, label %if.then5, !dbg !3158

if.then5:                                         ; preds = %do.body
  tail call void @timevar_push_1(i32 110) #6, !dbg !3155
  br label %do.end, !dbg !3155

do.end:                                           ; preds = %do.body, %if.then5
  tail call void @set_cfun(%struct.function* %2) #6, !dbg !3159
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 1, !dbg !3160
  br label %for.cond, !dbg !3162

for.cond:                                         ; preds = %for.inc, %do.end
  %error_found.0 = phi i8 [ 0, %do.end ], [ %error_found.1, %for.inc ], !dbg !3146
  %e.0.in = phi %struct.cgraph_edge** [ %callees, %do.end ], [ %next_callee, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !3111, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.0, metadata !3122, metadata !DIExpression()), !dbg !3146
  %tobool7 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !3164
  br i1 %tobool7, label %for.end, label %for.body, !dbg !3164

for.body:                                         ; preds = %for.cond
  %aux = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 8, !dbg !3165
  %9 = load i8*, i8** %aux, align 8, !dbg !3165
  %tobool8 = icmp eq i8* %9, null, !dbg !3168
  br i1 %tobool8, label %for.inc, label %if.then9, !dbg !3169

if.then9:                                         ; preds = %for.body
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 1, !dbg !3170
  %10 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !3170
  %call = tail call i8* @cgraph_node_name(%struct.cgraph_node* %10) #6, !dbg !3172
  %call10 = tail call i8* @identifier_to_locale(i8* %call) #6, !dbg !3173
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 2, !dbg !3174
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3174
  %call11 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %11) #6, !dbg !3175
  %call12 = tail call i8* @identifier_to_locale(i8* %call11) #6, !dbg !3176
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %call10, i8* %call12) #6, !dbg !3177
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %for.inc, !dbg !3178

for.inc:                                          ; preds = %for.body, %if.then9
  %error_found.1 = phi i8 [ 1, %if.then9 ], [ %error_found.0, %for.body ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.1, metadata !3122, metadata !DIExpression()), !dbg !3146
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !3179
  br label %for.cond, !dbg !3180, !llvm.loop !3181

for.end:                                          ; preds = %for.cond
  %error_found.0.lcssa = phi i8 [ %error_found.0, %for.cond ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.0.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.0.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.0.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  %count = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 23, !dbg !3183
  %12 = load i64, i64* %count, align 8, !dbg !3183
  %cmp = icmp slt i64 %12, 0, !dbg !3185
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !3186

if.then14:                                        ; preds = %for.end
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3187
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end15, !dbg !3189

if.end15:                                         ; preds = %if.then14, %for.end
  %error_found.2 = phi i8 [ 1, %if.then14 ], [ %error_found.0.lcssa, %for.end ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.2, metadata !3122, metadata !DIExpression()), !dbg !3146
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 19, i32 2, !dbg !3190
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3190
  %tobool16 = icmp eq %struct.cgraph_node* %13, null, !dbg !3192
  br i1 %tobool16, label %if.end19, label %land.lhs.true, !dbg !3193

land.lhs.true:                                    ; preds = %if.end15
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 18, i32 2, !dbg !3194
  %bf.load = load i8, i8* %externally_visible, align 8, !dbg !3194
  %bf.clear = and i8 %bf.load, 2, !dbg !3194
  %tobool17 = icmp eq i8 %bf.clear, 0, !dbg !3195
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !3196

if.then18:                                        ; preds = %land.lhs.true
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3197
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  %.pre = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3199
  br label %if.end19, !dbg !3201

if.end19:                                         ; preds = %land.lhs.true, %if.end15, %if.then18
  %14 = phi %struct.cgraph_node* [ %.pre, %if.then18 ], [ %13, %land.lhs.true ], [ null, %if.end15 ], !dbg !3199
  %error_found.3 = phi i8 [ 1, %if.then18 ], [ %error_found.2, %land.lhs.true ], [ %error_found.2, %if.end15 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.3, metadata !3122, metadata !DIExpression()), !dbg !3146
  %tobool22 = icmp eq %struct.cgraph_node* %14, null, !dbg !3202
  br i1 %tobool22, label %if.end30, label %land.lhs.true23, !dbg !3203

land.lhs.true23:                                  ; preds = %if.end19
  %address_taken = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3204
  %bf.load24 = load i16, i16* %address_taken, align 4, !dbg !3204
  %bf.clear26 = and i16 %bf.load24, 2, !dbg !3204
  %tobool28 = icmp eq i16 %bf.clear26, 0, !dbg !3205
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !3206

if.then29:                                        ; preds = %land.lhs.true23
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3207
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  %.pre6 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3209
  br label %if.end30, !dbg !3211

if.end30:                                         ; preds = %land.lhs.true23, %if.end19, %if.then29
  %15 = phi %struct.cgraph_node* [ %.pre6, %if.then29 ], [ %14, %land.lhs.true23 ], [ null, %if.end19 ], !dbg !3209
  %error_found.4 = phi i8 [ 1, %if.then29 ], [ %error_found.3, %land.lhs.true23 ], [ %error_found.3, %if.end19 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.4, metadata !3122, metadata !DIExpression()), !dbg !3146
  %tobool33 = icmp eq %struct.cgraph_node* %15, null, !dbg !3212
  br i1 %tobool33, label %if.end40, label %land.lhs.true34, !dbg !3213

land.lhs.true34:                                  ; preds = %if.end30
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3214
  %bf.load35 = load i16, i16* %needed, align 4, !dbg !3214
  %bf.clear36 = and i16 %bf.load35, 1, !dbg !3214
  %tobool38 = icmp eq i16 %bf.clear36, 0, !dbg !3215
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !3216

if.then39:                                        ; preds = %land.lhs.true34
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3217
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end40, !dbg !3219

if.end40:                                         ; preds = %land.lhs.true34, %if.end30, %if.then39
  %error_found.5 = phi i8 [ 1, %if.then39 ], [ %error_found.4, %land.lhs.true34 ], [ %error_found.4, %if.end30 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.5, metadata !3122, metadata !DIExpression()), !dbg !3146
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 2, !dbg !3220
  br label %for.cond41, !dbg !3222

for.cond41:                                       ; preds = %for.inc106, %if.end40
  %error_found.6 = phi i8 [ %error_found.5, %if.end40 ], [ %error_found.14, %for.inc106 ], !dbg !3146
  %e.1.in = phi %struct.cgraph_edge** [ %callers, %if.end40 ], [ %next_caller107, %for.inc106 ]
  %e.1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.1.in, align 8, !dbg !3223
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.1, metadata !3111, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.6, metadata !3122, metadata !DIExpression()), !dbg !3146
  %tobool42 = icmp eq %struct.cgraph_edge* %e.1, null, !dbg !3224
  br i1 %tobool42, label %for.end108, label %for.body43, !dbg !3224

for.body43:                                       ; preds = %for.cond41
  %count44 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 0, !dbg !3225
  %16 = load i64, i64* %count44, align 8, !dbg !3225
  %cmp45 = icmp slt i64 %16, 0, !dbg !3229
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3230

if.then46:                                        ; preds = %for.body43
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3231
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end47, !dbg !3233

if.end47:                                         ; preds = %if.then46, %for.body43
  %error_found.7 = phi i8 [ 1, %if.then46 ], [ %error_found.6, %for.body43 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.7, metadata !3122, metadata !DIExpression()), !dbg !3146
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 11, !dbg !3234
  %17 = load i32, i32* %frequency, align 8, !dbg !3234
  %cmp48 = icmp slt i32 %17, 0, !dbg !3236
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3237

if.then49:                                        ; preds = %if.end47
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3238
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  %.pre7 = load i32, i32* %frequency, align 8, !dbg !3240
  br label %if.end50, !dbg !3242

if.end50:                                         ; preds = %if.then49, %if.end47
  %18 = phi i32 [ %.pre7, %if.then49 ], [ %17, %if.end47 ], !dbg !3240
  %error_found.8 = phi i8 [ 1, %if.then49 ], [ %error_found.7, %if.end47 ], !dbg !3243
  call void @llvm.dbg.value(metadata i8 %error_found.8, metadata !3122, metadata !DIExpression()), !dbg !3146
  %cmp52 = icmp sgt i32 %18, 100000, !dbg !3244
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !3245

if.then53:                                        ; preds = %if.end50
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3246
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end54, !dbg !3248

if.end54:                                         ; preds = %if.then53, %if.end50
  %error_found.9 = phi i8 [ 1, %if.then53 ], [ %error_found.8, %if.end50 ], !dbg !3243
  call void @llvm.dbg.value(metadata i8 %error_found.9, metadata !3122, metadata !DIExpression()), !dbg !3146
  %caller55 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 1, !dbg !3249
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %caller55, align 8, !dbg !3249
  %decl56 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %19, i64 0, i32 0, !dbg !3251
  %20 = load %union.tree_node*, %union.tree_node** %decl56, align 8, !dbg !3251
  %call57 = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %20) #6, !dbg !3252
  %tobool58 = icmp eq i8 %call57, 0, !dbg !3252
  br i1 %tobool58, label %if.end79, label %land.lhs.true59, !dbg !3253

land.lhs.true59:                                  ; preds = %if.end54
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %caller55, align 8, !dbg !3254
  %inlined_to62 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %21, i64 0, i32 19, i32 2, !dbg !3255
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to62, align 8, !dbg !3255
  %tobool63 = icmp eq %struct.cgraph_node* %22, null, !dbg !3256
  br i1 %tobool63, label %land.lhs.true64, label %if.end79, !dbg !3257

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %23 = load i32, i32* %frequency, align 8, !dbg !3258
  %decl67 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %21, i64 0, i32 0, !dbg !3259
  %24 = load %union.tree_node*, %union.tree_node** %decl67, align 8, !dbg !3259
  %call_stmt = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 7, !dbg !3260
  %25 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !3260
  %call68 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %25) #7, !dbg !3261
  %call69 = tail call i32 @compute_call_stmt_bb_frequency(%union.tree_node* %24, %struct.basic_block_def* %call68) #6, !dbg !3262
  %cmp70 = icmp eq i32 %23, %call69, !dbg !3263
  br i1 %cmp70, label %if.end79, label %if.then72, !dbg !3264

if.then72:                                        ; preds = %land.lhs.true64
  %26 = load i32, i32* %frequency, align 8, !dbg !3265
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %caller55, align 8, !dbg !3267
  %decl75 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %27, i64 0, i32 0, !dbg !3268
  %28 = load %union.tree_node*, %union.tree_node** %decl75, align 8, !dbg !3268
  %29 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !3269
  %call77 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %29) #7, !dbg !3270
  %call78 = tail call i32 @compute_call_stmt_bb_frequency(%union.tree_node* %28, %struct.basic_block_def* %call77) #6, !dbg !3271
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i32 %26, i32 %call78) #6, !dbg !3272
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end79, !dbg !3273

if.end79:                                         ; preds = %land.lhs.true64, %land.lhs.true59, %if.end54, %if.then72
  %error_found.10 = phi i8 [ %error_found.9, %land.lhs.true59 ], [ 1, %if.then72 ], [ %error_found.9, %land.lhs.true64 ], [ %error_found.9, %if.end54 ], !dbg !3243
  call void @llvm.dbg.value(metadata i8 %error_found.10, metadata !3122, metadata !DIExpression()), !dbg !3146
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 9, !dbg !3274
  %30 = load i32, i32* %inline_failed, align 8, !dbg !3274
  %tobool80 = icmp eq i32 %30, 0, !dbg !3276
  %31 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3277
  br i1 %tobool80, label %if.then81, label %if.else, !dbg !3278

if.then81:                                        ; preds = %if.end79
  %32 = load %struct.cgraph_node*, %struct.cgraph_node** %caller55, align 8, !dbg !3279
  %inlined_to86 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %32, i64 0, i32 19, i32 2, !dbg !3282
  %33 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to86, align 8, !dbg !3282
  %tobool87 = icmp eq %struct.cgraph_node* %33, null, !dbg !3283
  br i1 %tobool87, label %cond.end, label %cond.true, !dbg !3283

cond.true:                                        ; preds = %if.then81
  br label %cond.end, !dbg !3283

cond.end:                                         ; preds = %if.then81, %cond.true
  %cond = phi %struct.cgraph_node* [ %33, %cond.true ], [ %32, %if.then81 ], !dbg !3283
  %cmp92 = icmp eq %struct.cgraph_node* %31, %cond, !dbg !3284
  br i1 %cmp92, label %if.end95, label %if.then94, !dbg !3285

if.then94:                                        ; preds = %cond.end
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3286
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end95, !dbg !3288

if.end95:                                         ; preds = %cond.end, %if.then94
  %error_found.11 = phi i8 [ 1, %if.then94 ], [ %error_found.10, %cond.end ], !dbg !3243
  call void @llvm.dbg.value(metadata i8 %error_found.11, metadata !3122, metadata !DIExpression()), !dbg !3146
  %34 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !3289
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %34, i64 0, i32 4, !dbg !3291
  %35 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_caller, align 8, !dbg !3291
  %tobool97 = icmp eq %struct.cgraph_edge* %35, null, !dbg !3292
  br i1 %tobool97, label %for.inc106, label %if.then98, !dbg !3293

if.then98:                                        ; preds = %if.end95
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !3294
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %for.inc106, !dbg !3296

if.else:                                          ; preds = %if.end79
  %tobool102 = icmp eq %struct.cgraph_node* %31, null, !dbg !3297
  br i1 %tobool102, label %for.inc106, label %if.then103, !dbg !3299

if.then103:                                       ; preds = %if.else
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !3300
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %for.inc106, !dbg !3302

for.inc106:                                       ; preds = %if.else, %if.end95, %if.then98, %if.then103
  %error_found.14 = phi i8 [ 1, %if.then98 ], [ %error_found.11, %if.end95 ], [ 1, %if.then103 ], [ %error_found.10, %if.else ], !dbg !3277
  call void @llvm.dbg.value(metadata i8 %error_found.14, metadata !3122, metadata !DIExpression()), !dbg !3146
  %next_caller107 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.1, i64 0, i32 4, !dbg !3303
  br label %for.cond41, !dbg !3304, !llvm.loop !3305

for.end108:                                       ; preds = %for.cond41
  %error_found.6.lcssa = phi i8 [ %error_found.6, %for.cond41 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.6.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.6.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.6.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  %36 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callers, align 8, !dbg !3307
  %tobool110 = icmp eq %struct.cgraph_edge* %36, null, !dbg !3309
  br i1 %tobool110, label %land.lhs.true111, label %if.end116, !dbg !3310

land.lhs.true111:                                 ; preds = %for.end108
  %37 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3311
  %tobool114 = icmp eq %struct.cgraph_node* %37, null, !dbg !3312
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !3313

if.then115:                                       ; preds = %land.lhs.true111
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !3314
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end116, !dbg !3316

if.end116:                                        ; preds = %land.lhs.true111, %for.end108, %if.then115
  %error_found.15 = phi i8 [ %error_found.6.lcssa, %for.end108 ], [ 1, %if.then115 ], [ %error_found.6.lcssa, %land.lhs.true111 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.15, metadata !3122, metadata !DIExpression()), !dbg !3146
  %38 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3317
  %cmp119 = icmp eq %struct.cgraph_node* %38, %node, !dbg !3319
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !3320

if.then121:                                       ; preds = %if.end116
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3321
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end122, !dbg !3323

if.end122:                                        ; preds = %if.then121, %if.end116
  %error_found.16 = phi i8 [ 1, %if.then121 ], [ %error_found.15, %if.end116 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.16, metadata !3122, metadata !DIExpression()), !dbg !3146
  %decl123 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !3324
  %39 = load %union.tree_node*, %union.tree_node** %decl123, align 8, !dbg !3324
  %call124 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %39) #6, !dbg !3326
  %tobool125 = icmp eq %struct.cgraph_node* %call124, null, !dbg !3326
  br i1 %tobool125, label %if.then126, label %if.end127, !dbg !3327

if.then126:                                       ; preds = %if.end122
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3328
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end127, !dbg !3330

if.end127:                                        ; preds = %if.end122, %if.then126
  %error_found.17 = phi i8 [ %error_found.16, %if.end122 ], [ 1, %if.then126 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.17, metadata !3122, metadata !DIExpression()), !dbg !3146
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 12, !dbg !3331
  %40 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !3331
  %tobool128 = icmp eq %struct.cgraph_node* %40, null, !dbg !3332
  br i1 %tobool128, label %if.end143, label %if.then129, !dbg !3333

if.then129:                                       ; preds = %if.end127
  %clones = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %40, i64 0, i32 11, !dbg !3334
  br label %for.cond131, !dbg !3336

for.cond131:                                      ; preds = %for.inc138, %if.then129
  %n.0.in = phi %struct.cgraph_node** [ %clones, %if.then129 ], [ %next_sibling_clone, %for.inc138 ]
  %n.0 = load %struct.cgraph_node*, %struct.cgraph_node** %n.0.in, align 8, !dbg !3337
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.0, metadata !3123, metadata !DIExpression()), !dbg !3338
  %cond2 = icmp eq %struct.cgraph_node* %n.0, null, !dbg !3339
  br i1 %cond2, label %if.then141.loopexit, label %for.body133, !dbg !3339

for.body133:                                      ; preds = %for.cond131
  %cmp134 = icmp eq %struct.cgraph_node* %n.0, %node, !dbg !3340
  br i1 %cmp134, label %for.end139, label %for.inc138, !dbg !3343

for.inc138:                                       ; preds = %for.body133
  %next_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 9, !dbg !3344
  br label %for.cond131, !dbg !3345, !llvm.loop !3346

for.end139:                                       ; preds = %for.body133
  br label %if.end143, !dbg !3348

if.then141.loopexit:                              ; preds = %for.cond131
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3349
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end143, !dbg !3352

if.end143:                                        ; preds = %for.end139, %if.end127, %if.then141.loopexit
  %error_found.19 = phi i8 [ %error_found.17, %if.end127 ], [ %error_found.17, %for.end139 ], [ 1, %if.then141.loopexit ], !dbg !3353
  call void @llvm.dbg.value(metadata i8 %error_found.19, metadata !3122, metadata !DIExpression()), !dbg !3146
  %clones144 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 11, !dbg !3354
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %clones144, align 8, !dbg !3354
  %tobool145 = icmp eq %struct.cgraph_node* %41, null, !dbg !3355
  br i1 %tobool145, label %if.end163, label %if.then146, !dbg !3356

if.then146:                                       ; preds = %if.end143
  br label %for.cond149, !dbg !3357

for.cond149:                                      ; preds = %for.inc157, %if.then146
  %n147.0 = phi %struct.cgraph_node* [ %41, %if.then146 ], [ %n147.0.pre, %for.inc157 ], !dbg !3359
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n147.0, metadata !3126, metadata !DIExpression()), !dbg !3360
  %cond3 = icmp eq %struct.cgraph_node* %n147.0, null, !dbg !3361
  br i1 %cond3, label %if.end163.loopexit, label %for.body151, !dbg !3361

for.body151:                                      ; preds = %for.cond149
  %clone_of152 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n147.0, i64 0, i32 12, !dbg !3362
  %42 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of152, align 8, !dbg !3362
  %cmp153 = icmp eq %struct.cgraph_node* %42, %node, !dbg !3365
  br i1 %cmp153, label %for.inc157, label %for.end159, !dbg !3366

for.inc157:                                       ; preds = %for.body151
  %next_sibling_clone158 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n147.0, i64 0, i32 9, !dbg !3367
  %n147.0.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone158, align 8, !dbg !3359
  br label %for.cond149, !dbg !3368, !llvm.loop !3369

for.end159:                                       ; preds = %for.body151
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !3371
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end163, !dbg !3374

if.end163.loopexit:                               ; preds = %for.cond149
  br label %if.end163, !dbg !3375

if.end163:                                        ; preds = %if.end163.loopexit, %if.end143, %for.end159
  %error_found.21 = phi i8 [ %error_found.19, %if.end143 ], [ 1, %for.end159 ], [ %error_found.19, %if.end163.loopexit ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.21, metadata !3122, metadata !DIExpression()), !dbg !3146
  %prev_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 10, !dbg !3375
  %43 = load %struct.cgraph_node*, %struct.cgraph_node** %prev_sibling_clone, align 8, !dbg !3375
  %tobool164 = icmp eq %struct.cgraph_node* %43, null, !dbg !3377
  br i1 %tobool164, label %lor.lhs.false165, label %land.lhs.true168, !dbg !3378

lor.lhs.false165:                                 ; preds = %if.end163
  %next_sibling_clone166 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 9, !dbg !3379
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone166, align 8, !dbg !3379
  %tobool167 = icmp eq %struct.cgraph_node* %44, null, !dbg !3380
  br i1 %tobool167, label %if.end172, label %land.lhs.true168, !dbg !3381

land.lhs.true168:                                 ; preds = %lor.lhs.false165, %if.end163
  %45 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !3382
  %tobool170 = icmp eq %struct.cgraph_node* %45, null, !dbg !3383
  br i1 %tobool170, label %if.then171, label %if.end172, !dbg !3384

if.then171:                                       ; preds = %land.lhs.true168
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !3385
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  %.pre9 = load %struct.cgraph_node*, %struct.cgraph_node** %prev_sibling_clone, align 8, !dbg !3387
  br label %if.end172, !dbg !3389

if.end172:                                        ; preds = %land.lhs.true168, %lor.lhs.false165, %if.then171
  %46 = phi %struct.cgraph_node* [ %43, %land.lhs.true168 ], [ %.pre9, %if.then171 ], [ null, %lor.lhs.false165 ], !dbg !3387
  %error_found.22 = phi i8 [ %error_found.21, %land.lhs.true168 ], [ 1, %if.then171 ], [ %error_found.21, %lor.lhs.false165 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.22, metadata !3122, metadata !DIExpression()), !dbg !3146
  %tobool174 = icmp eq %struct.cgraph_node* %46, null, !dbg !3390
  br i1 %tobool174, label %land.lhs.true175, label %if.end184, !dbg !3391

land.lhs.true175:                                 ; preds = %if.end172
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !3392
  %tobool177 = icmp eq %struct.cgraph_node* %47, null, !dbg !3393
  br i1 %tobool177, label %if.end184, label %land.lhs.true178, !dbg !3394

land.lhs.true178:                                 ; preds = %land.lhs.true175
  %clones180 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %47, i64 0, i32 11, !dbg !3395
  %48 = load %struct.cgraph_node*, %struct.cgraph_node** %clones180, align 8, !dbg !3395
  %cmp181 = icmp eq %struct.cgraph_node* %48, %node, !dbg !3396
  br i1 %cmp181, label %if.end184, label %if.then183, !dbg !3397

if.then183:                                       ; preds = %land.lhs.true178
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3398
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  %.pre10 = load %struct.cgraph_node*, %struct.cgraph_node** %prev_sibling_clone, align 8, !dbg !3400
  br label %if.end184, !dbg !3402

if.end184:                                        ; preds = %land.lhs.true178, %land.lhs.true175, %if.end172, %if.then183
  %49 = phi %struct.cgraph_node* [ %46, %if.end172 ], [ %.pre10, %if.then183 ], [ null, %land.lhs.true178 ], [ null, %land.lhs.true175 ], !dbg !3400
  %error_found.23 = phi i8 [ %error_found.22, %if.end172 ], [ 1, %if.then183 ], [ %error_found.22, %land.lhs.true178 ], [ %error_found.22, %land.lhs.true175 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.23, metadata !3122, metadata !DIExpression()), !dbg !3146
  %tobool186 = icmp eq %struct.cgraph_node* %49, null, !dbg !3403
  br i1 %tobool186, label %if.end193, label %land.lhs.true187, !dbg !3404

land.lhs.true187:                                 ; preds = %if.end184
  %next_sibling_clone189 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %49, i64 0, i32 9, !dbg !3405
  %50 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone189, align 8, !dbg !3405
  %cmp190 = icmp eq %struct.cgraph_node* %50, %node, !dbg !3406
  br i1 %cmp190, label %if.end193, label %if.then192, !dbg !3407

if.then192:                                       ; preds = %land.lhs.true187
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !3408
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end193, !dbg !3410

if.end193:                                        ; preds = %land.lhs.true187, %if.end184, %if.then192
  %error_found.24 = phi i8 [ 1, %if.then192 ], [ %error_found.23, %land.lhs.true187 ], [ %error_found.23, %if.end184 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.24, metadata !3122, metadata !DIExpression()), !dbg !3146
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !3411
  %bf.load194 = load i16, i16* %analyzed, align 4, !dbg !3411
  %bf.clear196 = and i16 %bf.load194, 32, !dbg !3411
  %tobool198 = icmp eq i16 %bf.clear196, 0, !dbg !3412
  br i1 %tobool198, label %if.end319, label %land.lhs.true199, !dbg !3413

land.lhs.true199:                                 ; preds = %if.end193
  %51 = load %union.tree_node*, %union.tree_node** %decl123, align 8, !dbg !3414
  %call201 = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %51) #6, !dbg !3415
  %tobool203 = icmp eq i8 %call201, 0, !dbg !3415
  br i1 %tobool203, label %if.end319, label %land.lhs.true204, !dbg !3416

land.lhs.true204:                                 ; preds = %land.lhs.true199
  %52 = bitcast %struct.cgraph_node* %node to i64**, !dbg !3417
  %53 = load i64*, i64** %52, align 8, !dbg !3417
  %bf.load206 = load i64, i64* %53, align 8, !dbg !3417
  %bf.cast2094 = and i64 %bf.load206, 4194304, !dbg !3417
  %tobool210 = icmp eq i64 %bf.cast2094, 0, !dbg !3417
  br i1 %tobool210, label %land.lhs.true211, label %if.end319, !dbg !3418

land.lhs.true211:                                 ; preds = %land.lhs.true204
  %decl_flag_1 = getelementptr inbounds i64, i64* %53, i64 7, !dbg !3419
  %bf.load213 = load i64, i64* %decl_flag_1, align 8, !dbg !3419
  %bf.cast2165 = and i64 %bf.load213, 33554432, !dbg !3419
  %tobool217 = icmp eq i64 %bf.cast2165, 0, !dbg !3419
  br i1 %tobool217, label %land.lhs.true222, label %lor.lhs.false218, !dbg !3420

lor.lhs.false218:                                 ; preds = %land.lhs.true211
  %54 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3421
  %tobool221 = icmp eq %struct.cgraph_node* %54, null, !dbg !3422
  br i1 %tobool221, label %if.end319, label %land.lhs.true222, !dbg !3423

land.lhs.true222:                                 ; preds = %lor.lhs.false218, %land.lhs.true211
  %55 = load i32, i32* @flag_wpa, align 4, !dbg !3424
  %tobool223 = icmp eq i32 %55, 0, !dbg !3424
  br i1 %tobool223, label %if.then224, label %if.end319, !dbg !3425

if.then224:                                       ; preds = %land.lhs.true222
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3426
  %56 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3426
  %tobool225 = icmp eq %struct.control_flow_graph* %56, null, !dbg !3427
  br i1 %tobool225, label %if.else293, label %if.then226, !dbg !3428

if.then226:                                       ; preds = %if.then224
  %call227 = tail call %struct.pointer_set_t* @pointer_set_create() #6, !dbg !3429
  call void @llvm.dbg.value(metadata %struct.pointer_set_t* %call227, metadata !3129, metadata !DIExpression()), !dbg !3430
  %57 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3431
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %57, i64 0, i32 0, !dbg !3431
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3431
  %59 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3432
  br label %for.cond229, !dbg !3431

for.cond229:                                      ; preds = %for.inc290, %if.then226
  %60 = phi %struct.control_flow_graph* [ %57, %if.then226 ], [ %.pre11, %for.inc290 ], !dbg !3433
  %error_found.25 = phi i8 [ %error_found.24, %if.then226 ], [ %error_found.26.lcssa, %for.inc290 ], !dbg !3434
  %.pn = phi %struct.basic_block_def* [ %58, %if.then226 ], [ %this_block.0, %for.inc290 ]
  %this_block.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3435
  %this_block.0 = load %struct.basic_block_def*, %struct.basic_block_def** %this_block.0.in, align 8, !dbg !3435
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %this_block.0, metadata !3114, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.25, metadata !3122, metadata !DIExpression()), !dbg !3146
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %60, i64 0, i32 1, !dbg !3433
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3433
  %cmp231 = icmp eq %struct.basic_block_def* %this_block.0, %61, !dbg !3433
  br i1 %cmp231, label %for.end292, label %for.body233, !dbg !3431

for.body233:                                      ; preds = %for.cond229
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %59) #8, !dbg !3436
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %this_block.0) #7, !dbg !3436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %59, i64 24, i1 false), !dbg !3436
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %59) #8, !dbg !3436
  br label %for.cond234, !dbg !3437

for.cond234:                                      ; preds = %for.inc288, %for.body233
  %error_found.26 = phi i8 [ %error_found.25, %for.body233 ], [ %error_found.31, %for.inc288 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.26, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3115, metadata !DIExpression(DW_OP_deref)), !dbg !3146
  %call235 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3438
  %tobool236 = icmp eq i8 %call235, 0, !dbg !3439
  br i1 %tobool236, label %for.body237, label %for.inc290, !dbg !3440

for.body237:                                      ; preds = %for.cond234
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3115, metadata !DIExpression(DW_OP_deref)), !dbg !3146
  %call238 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3441
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call238, metadata !3136, metadata !DIExpression()), !dbg !3442
  %call240 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call238) #7, !dbg !3443
  %tobool242 = icmp eq i8 %call240, 0, !dbg !3443
  br i1 %tobool242, label %for.inc288, label %land.lhs.true243, !dbg !3444

land.lhs.true243:                                 ; preds = %for.body237
  %call244 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call238) #7, !dbg !3445
  call void @llvm.dbg.value(metadata %union.tree_node* %call244, metadata !3142, metadata !DIExpression()), !dbg !3442
  %tobool245 = icmp eq %union.tree_node* %call244, null, !dbg !3446
  br i1 %tobool245, label %for.inc288, label %if.then246, !dbg !3447

if.then246:                                       ; preds = %land.lhs.true243
  %call248 = call %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node* %node, %union.gimple_statement_d* %call238) #6, !dbg !3448
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call248, metadata !3143, metadata !DIExpression()), !dbg !3449
  %tobool249 = icmp eq %struct.cgraph_edge* %call248, null, !dbg !3450
  br i1 %tobool249, label %if.else285, label %if.then250, !dbg !3452

if.then250:                                       ; preds = %if.then246
  %aux251 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call248, i64 0, i32 8, !dbg !3453
  %62 = load i8*, i8** %aux251, align 8, !dbg !3453
  %tobool252 = icmp eq i8* %62, null, !dbg !3456
  br i1 %tobool252, label %if.end254, label %if.then253, !dbg !3457

if.then253:                                       ; preds = %if.then250
  call void (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !3458
  call void @debug_gimple_stmt(%union.gimple_statement_d* %call238) #6, !dbg !3460
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end254, !dbg !3461

if.end254:                                        ; preds = %if.then250, %if.then253
  %error_found.27 = phi i8 [ 1, %if.then253 ], [ %error_found.26, %if.then250 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.27, metadata !3122, metadata !DIExpression()), !dbg !3146
  %callee255 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call248, i64 0, i32 2, !dbg !3462
  %63 = load %struct.cgraph_node*, %struct.cgraph_node** %callee255, align 8, !dbg !3462
  %same_body_alias = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %63, i64 0, i32 27, !dbg !3464
  %bf.load256 = load i16, i16* %same_body_alias, align 4, !dbg !3464
  %bf.clear258 = and i16 %bf.load256, 512, !dbg !3464
  %tobool260 = icmp eq i16 %bf.clear258, 0, !dbg !3465
  br i1 %tobool260, label %if.else264, label %if.then261, !dbg !3466

if.then261:                                       ; preds = %if.end254
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !3467
  %64 = load %struct.cgraph_node*, %struct.cgraph_node** %callee255, align 8, !dbg !3469
  %decl263 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %64, i64 0, i32 0, !dbg !3470
  %65 = load %union.tree_node*, %union.tree_node** %decl263, align 8, !dbg !3470
  call void @debug_tree(%union.tree_node* %65) #6, !dbg !3471
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end283, !dbg !3472

if.else264:                                       ; preds = %if.end254
  %66 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !3473
  %tobool267 = icmp eq %struct.cgraph_node* %66, null, !dbg !3475
  br i1 %tobool267, label %land.lhs.true268, label %if.end283, !dbg !3476

land.lhs.true268:                                 ; preds = %if.else264
  %inlined_to271 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %63, i64 0, i32 19, i32 2, !dbg !3477
  %67 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to271, align 8, !dbg !3477
  %tobool272 = icmp eq %struct.cgraph_node* %67, null, !dbg !3478
  br i1 %tobool272, label %land.lhs.true273, label %if.end283, !dbg !3479

land.lhs.true273:                                 ; preds = %land.lhs.true268
  %call274 = call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %call244) #6, !dbg !3480
  %68 = load %struct.cgraph_node*, %struct.cgraph_node** %callee255, align 8, !dbg !3481
  %call276 = call fastcc zeroext i8 @clone_of_p(%struct.cgraph_node* %call274, %struct.cgraph_node* %68) #7, !dbg !3482
  %tobool277 = icmp eq i8 %call276, 0, !dbg !3482
  br i1 %tobool277, label %if.then278, label %if.end283, !dbg !3483

if.then278:                                       ; preds = %land.lhs.true273
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !3484
  %69 = load %struct.cgraph_node*, %struct.cgraph_node** %callee255, align 8, !dbg !3486
  %decl280 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %69, i64 0, i32 0, !dbg !3487
  %70 = load %union.tree_node*, %union.tree_node** %decl280, align 8, !dbg !3487
  call void @debug_tree(%union.tree_node* %70) #6, !dbg !3488
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3489
  %call281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !3490
  call void @debug_tree(%union.tree_node* nonnull %call244) #6, !dbg !3491
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end283, !dbg !3492

if.end283:                                        ; preds = %land.lhs.true273, %land.lhs.true268, %if.else264, %if.then278, %if.then261
  %error_found.29 = phi i8 [ 1, %if.then261 ], [ %error_found.27, %if.else264 ], [ %error_found.27, %land.lhs.true268 ], [ %error_found.27, %land.lhs.true273 ], [ 1, %if.then278 ], !dbg !3493
  call void @llvm.dbg.value(metadata i8 %error_found.29, metadata !3122, metadata !DIExpression()), !dbg !3146
  store i8* inttoptr (i64 1 to i8*), i8** %aux251, align 8, !dbg !3494
  br label %for.inc288, !dbg !3495

if.else285:                                       ; preds = %if.then246
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !3496
  call void @debug_gimple_stmt(%union.gimple_statement_d* %call238) #6, !dbg !3498
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %for.inc288

for.inc288:                                       ; preds = %land.lhs.true243, %for.body237, %if.else285, %if.end283
  %error_found.31 = phi i8 [ %error_found.26, %land.lhs.true243 ], [ %error_found.26, %for.body237 ], [ %error_found.29, %if.end283 ], [ 1, %if.else285 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.31, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3115, metadata !DIExpression(DW_OP_deref)), !dbg !3146
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3499
  br label %for.cond234, !dbg !3500, !llvm.loop !3501

for.inc290:                                       ; preds = %for.cond234
  %error_found.26.lcssa = phi i8 [ %error_found.26, %for.cond234 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.26.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.26.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.26.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  %.pre11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3433
  br label %for.cond229, !dbg !3433, !llvm.loop !3503

for.end292:                                       ; preds = %for.cond229
  %error_found.25.lcssa = phi i8 [ %error_found.25, %for.cond229 ], !dbg !3434
  call void @llvm.dbg.value(metadata i8 %error_found.25.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.25.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.25.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @pointer_set_destroy(%struct.pointer_set_t* %call227) #6, !dbg !3505
  br label %if.end294, !dbg !3506

if.else293:                                       ; preds = %if.then224
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 792, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3507
  br label %if.end294

if.end294:                                        ; preds = %if.else293, %for.end292
  %error_found.32 = phi i8 [ %error_found.25.lcssa, %for.end292 ], [ %error_found.24, %if.else293 ], !dbg !3434
  call void @llvm.dbg.value(metadata i8 %error_found.32, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %for.cond296, !dbg !3508

for.cond296:                                      ; preds = %if.end314, %if.end294
  %error_found.33 = phi i8 [ %error_found.32, %if.end294 ], [ %error_found.34, %if.end314 ], !dbg !3434
  %e.2.in = phi %struct.cgraph_edge** [ %callees, %if.end294 ], [ %next_callee317, %if.end314 ]
  %e.2 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.2.in, align 8, !dbg !3510
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.2, metadata !3111, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.33, metadata !3122, metadata !DIExpression()), !dbg !3146
  %tobool297 = icmp eq %struct.cgraph_edge* %e.2, null, !dbg !3511
  br i1 %tobool297, label %if.end319.loopexit, label %for.body298, !dbg !3511

for.body298:                                      ; preds = %for.cond296
  %aux299 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.2, i64 0, i32 8, !dbg !3512
  %72 = load i8*, i8** %aux299, align 8, !dbg !3512
  %tobool300 = icmp eq i8* %72, null, !dbg !3516
  br i1 %tobool300, label %land.lhs.true301, label %if.end314, !dbg !3517

land.lhs.true301:                                 ; preds = %for.body298
  %indirect_call = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.2, i64 0, i32 14, !dbg !3518
  %bf.load302 = load i8, i8* %indirect_call, align 2, !dbg !3518
  %bf.clear303 = and i8 %bf.load302, 1, !dbg !3518
  %tobool305 = icmp eq i8 %bf.clear303, 0, !dbg !3519
  br i1 %tobool305, label %if.then306, label %if.end314, !dbg !3520

if.then306:                                       ; preds = %land.lhs.true301
  %caller307 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.2, i64 0, i32 1, !dbg !3521
  %73 = load %struct.cgraph_node*, %struct.cgraph_node** %caller307, align 8, !dbg !3521
  %call308 = call i8* @cgraph_node_name(%struct.cgraph_node* %73) #6, !dbg !3523
  %call309 = call i8* @identifier_to_locale(i8* %call308) #6, !dbg !3524
  %callee310 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.2, i64 0, i32 2, !dbg !3525
  %74 = load %struct.cgraph_node*, %struct.cgraph_node** %callee310, align 8, !dbg !3525
  %call311 = call i8* @cgraph_node_name(%struct.cgraph_node* %74) #6, !dbg !3526
  %call312 = call i8* @identifier_to_locale(i8* %call311) #6, !dbg !3527
  call void (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i8* %call309, i8* %call312) #6, !dbg !3528
  %call_stmt313 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.2, i64 0, i32 7, !dbg !3529
  %75 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt313, align 8, !dbg !3529
  call void @debug_gimple_stmt(%union.gimple_statement_d* %75) #6, !dbg !3530
  call void @llvm.dbg.value(metadata i8 1, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end314, !dbg !3531

if.end314:                                        ; preds = %land.lhs.true301, %for.body298, %if.then306
  %error_found.34 = phi i8 [ %error_found.33, %for.body298 ], [ %error_found.33, %land.lhs.true301 ], [ 1, %if.then306 ], !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.34, metadata !3122, metadata !DIExpression()), !dbg !3146
  store i8* null, i8** %aux299, align 8, !dbg !3532
  %next_callee317 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.2, i64 0, i32 6, !dbg !3533
  br label %for.cond296, !dbg !3534, !llvm.loop !3535

if.end319.loopexit:                               ; preds = %for.cond296
  %error_found.33.lcssa = phi i8 [ %error_found.33, %for.cond296 ], !dbg !3434
  call void @llvm.dbg.value(metadata i8 %error_found.33.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.33.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 %error_found.33.lcssa, metadata !3122, metadata !DIExpression()), !dbg !3146
  br label %if.end319, !dbg !3537

if.end319:                                        ; preds = %if.end319.loopexit, %lor.lhs.false218, %land.lhs.true222, %land.lhs.true204, %land.lhs.true199, %if.end193
  %error_found.35 = phi i8 [ %error_found.24, %land.lhs.true204 ], [ %error_found.24, %land.lhs.true222 ], [ %error_found.24, %lor.lhs.false218 ], [ %error_found.24, %land.lhs.true199 ], [ %error_found.24, %if.end193 ], [ %error_found.33.lcssa, %if.end319.loopexit ], !dbg !3434
  call void @llvm.dbg.value(metadata i8 %error_found.35, metadata !3122, metadata !DIExpression()), !dbg !3146
  %tobool320 = icmp eq i8 %error_found.35, 0, !dbg !3537
  br i1 %tobool320, label %if.end322, label %if.then321, !dbg !3539

if.then321:                                       ; preds = %if.end319
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3540
  call void @dump_cgraph_node(%struct._IO_FILE* %76, %struct.cgraph_node* %node) #6, !dbg !3542
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !3543
  br label %if.end322, !dbg !3544

if.end322:                                        ; preds = %if.end319, %if.then321
  call void @set_cfun(%struct.function* %3) #6, !dbg !3545
  %77 = load i8, i8* @timevar_enable, align 1, !dbg !3546
  %tobool324 = icmp eq i8 %77, 0, !dbg !3546
  br i1 %tobool324, label %cleanup, label %if.then325, !dbg !3549

if.then325:                                       ; preds = %if.end322
  call void @timevar_pop_1(i32 110) #6, !dbg !3546
  br label %cleanup, !dbg !3546

cleanup:                                          ; preds = %if.end322, %lor.lhs.false, %entry, %if.then325
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !3550
  ret void, !dbg !3550
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #2

declare dso_local void @set_cfun(%struct.function*) local_unnamed_addr #2

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

declare dso_local i8* @identifier_to_locale(i8*) local_unnamed_addr #2

declare dso_local i8* @cgraph_node_name(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_has_body_p(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @compute_call_stmt_bb_frequency(%union.tree_node*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3551 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3556, metadata !DIExpression()), !dbg !3557
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3558
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3558
  ret %struct.basic_block_def* %0, !dbg !3559
}

declare dso_local %struct.pointer_set_t* @pointer_set_create() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3560 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3564, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3565, metadata !DIExpression()), !dbg !3568
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3569
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3566, metadata !DIExpression()), !dbg !3567
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3570
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3571
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3572
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3573
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3574
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3575
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3576
  ret void, !dbg !3577
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3578 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3582, metadata !DIExpression()), !dbg !3583
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3584
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3584
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3585
  %conv1 = zext i1 %cmp to i8, !dbg !3586
  ret i8 %conv1, !dbg !3587
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3588 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3592, metadata !DIExpression()), !dbg !3593
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3594
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3594
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3595
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3595
  ret %union.gimple_statement_d* %1, !dbg !3596
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3597 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3601, metadata !DIExpression()), !dbg !3602
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3603
  %cmp = icmp eq i32 %call, 8, !dbg !3604
  %conv1 = zext i1 %cmp to i8, !dbg !3603
  ret i8 %conv1, !dbg !3605
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3606 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3610, metadata !DIExpression()), !dbg !3612
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !3613
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3611, metadata !DIExpression()), !dbg !3612
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3614
  %bf.load = load i64, i64* %0, align 8, !dbg !3614
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3616
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !3616
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3617

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3618
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3618
  br label %cleanup, !dbg !3619

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !3612
  ret %union.tree_node* %retval.0, !dbg !3620
}

declare dso_local %struct.cgraph_edge* @cgraph_edge(%struct.cgraph_node*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @debug_gimple_stmt(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @debug_tree(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @clone_of_p(%struct.cgraph_node* %node, %struct.cgraph_node* %node2) unnamed_addr #5 !dbg !3621 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !3625, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node2, metadata !3626, metadata !DIExpression()), !dbg !3627
  br label %while.cond, !dbg !3628

while.cond:                                       ; preds = %while.body, %entry
  %node2.addr.0 = phi %struct.cgraph_node* [ %node2, %entry ], [ %0, %while.body ]
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node2.addr.0, metadata !3626, metadata !DIExpression()), !dbg !3627
  %cmp = icmp ne %struct.cgraph_node* %node2.addr.0, %node, !dbg !3629
  %tobool = icmp ne %struct.cgraph_node* %node2.addr.0, null, !dbg !3630
  %spec.select = and i1 %tobool, %cmp, !dbg !3630
  br i1 %spec.select, label %while.body, label %while.end, !dbg !3628

while.body:                                       ; preds = %while.cond
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node2.addr.0, i64 0, i32 12, !dbg !3631
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !3631
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !3626, metadata !DIExpression()), !dbg !3627
  br label %while.cond, !dbg !3628, !llvm.loop !3632

while.end:                                        ; preds = %while.cond
  %tobool.lcssa = phi i1 [ %tobool, %while.cond ], !dbg !3630
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node2.addr.0, metadata !3626, metadata !DIExpression()), !dbg !3627
  %conv2 = zext i1 %tobool.lcssa to i8, !dbg !3633
  ret i8 %conv2, !dbg !3634
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3635 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3640, metadata !DIExpression()), !dbg !3641
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3642
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3642
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3643
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3643
  %2 = load i64, i64* %1, align 8, !dbg !3643
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3644
  store i64 %2, i64* %3, align 8, !dbg !3644
  ret void, !dbg !3645
}

declare dso_local void @pointer_set_destroy(%struct.pointer_set_t*) local_unnamed_addr #2

declare dso_local void @dump_cgraph_node(%struct._IO_FILE*, %struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @internal_error(i8*, ...) local_unnamed_addr #2

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @verify_cgraph() local_unnamed_addr #5 !dbg !3646 {
entry:
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3649
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 5, !dbg !3649
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3649
  %tobool = icmp eq i32 %1, 0, !dbg !3649
  br i1 %tobool, label %lor.lhs.false, label %cleanup.cont, !dbg !3651

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 4, !dbg !3652
  %2 = load i32, i32* %arrayidx2, align 8, !dbg !3652
  %tobool3 = icmp eq i32 %2, 0, !dbg !3652
  br i1 %tobool3, label %if.end, label %cleanup.cont, !dbg !3653

if.end:                                           ; preds = %lor.lhs.false
  br label %for.cond, !dbg !3654

for.cond:                                         ; preds = %for.body, %if.end
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end ], [ %next, %for.body ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3656
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !3648, metadata !DIExpression()), !dbg !3657
  %tobool4 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !3658
  br i1 %tobool4, label %cleanup.cont.loopexit, label %for.body, !dbg !3658

for.body:                                         ; preds = %for.cond
  tail call void @verify_cgraph_node(%struct.cgraph_node* nonnull %node.0) #7, !dbg !3659
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3661
  br label %for.cond, !dbg !3662, !llvm.loop !3663

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3665

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %lor.lhs.false, %entry
  ret void, !dbg !3665
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_finalize_compilation_unit() local_unnamed_addr #5 !dbg !3666 {
entry:
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !3667
  %tobool = icmp eq i8 %0, 0, !dbg !3667
  br i1 %tobool, label %do.end, label %if.then, !dbg !3670

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 4) #6, !dbg !3667
  br label %do.end, !dbg !3667

do.end:                                           ; preds = %entry, %if.then
  tail call void @finalize_size_functions() #6, !dbg !3671
  tail call fastcc void @cgraph_build_cdtor_fns() #7, !dbg !3672
  tail call void @finish_aliases_1() #6, !dbg !3673
  %1 = load i32, i32* @quiet_flag, align 4, !dbg !3674
  %tobool1 = icmp eq i32 %1, 0, !dbg !3674
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !3676

if.then2:                                         ; preds = %do.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3677
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !3679
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3680
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %3) #6, !dbg !3681
  br label %if.end4, !dbg !3682

if.end4:                                          ; preds = %do.end, %if.then2
  tail call fastcc void @cgraph_analyze_functions() #7, !dbg !3683
  tail call void @finish_aliases_1() #6, !dbg !3684
  tail call fastcc void @cgraph_analyze_functions() #7, !dbg !3685
  tail call void @cgraph_optimize() #7, !dbg !3686
  %4 = load i8, i8* @timevar_enable, align 1, !dbg !3687
  %tobool6 = icmp eq i8 %4, 0, !dbg !3687
  br i1 %tobool6, label %do.end9, label %if.then7, !dbg !3690

if.then7:                                         ; preds = %if.end4
  tail call void @timevar_pop_1(i32 4) #6, !dbg !3687
  br label %do.end9, !dbg !3687

do.end9:                                          ; preds = %if.end4, %if.then7
  ret void, !dbg !3691
}

declare dso_local void @finalize_size_functions() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_build_cdtor_fns() unnamed_addr #5 !dbg !3692 {
entry:
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_ctors, align 8, !dbg !3693
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !3693
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base) #7, !dbg !3693
  %cmp = icmp eq i32 %call, 0, !dbg !3693
  br i1 %cmp, label %if.end, label %if.then, !dbg !3695

if.then:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 112), align 1, !dbg !3696
  %tobool1 = icmp eq i8 %1, 0, !dbg !3696
  br i1 %tobool1, label %cond.end4, label %cond.true2, !dbg !3696

cond.true2:                                       ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3696
  br label %cond.end4, !dbg !3696

cond.end4:                                        ; preds = %if.then, %cond.true2
  %2 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_ctors, align 8, !dbg !3698
  %base8 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %2, i64 0, i32 0, !dbg !3698
  %call12 = tail call fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %base8) #7, !dbg !3698
  %3 = bitcast %union.tree_node** %call12 to i8*, !dbg !3698
  %4 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_ctors, align 8, !dbg !3699
  %base15 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %4, i64 0, i32 0, !dbg !3699
  %call19 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base15) #7, !dbg !3699
  %conv = zext i32 %call19 to i64, !dbg !3699
  tail call void @spec_qsort(i8* %3, i64 %conv, i64 8, i32 (i8*, i8*)* nonnull @compare_ctor) #6, !dbg !3700
  %5 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_ctors, align 8, !dbg !3701
  %base22 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %5, i64 0, i32 0, !dbg !3701
  %call26 = tail call fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %base22) #7, !dbg !3701
  %6 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_ctors, align 8, !dbg !3702
  %base29 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %6, i64 0, i32 0, !dbg !3702
  %call33 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base29) #7, !dbg !3702
  %conv34 = zext i32 %call33 to i64, !dbg !3702
  tail call fastcc void @build_cdtor(i8 zeroext 1, %union.tree_node** %call26, i64 %conv34) #7, !dbg !3703
  %7 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_ctors, align 8, !dbg !3704
  %base37 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %7, i64 0, i32 0, !dbg !3704
  tail call fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %base37, i32 0) #7, !dbg !3704
  br label %if.end, !dbg !3705

if.end:                                           ; preds = %cond.end4, %entry
  %8 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_dtors, align 8, !dbg !3706
  %base43 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %8, i64 0, i32 0, !dbg !3706
  %call47 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base43) #7, !dbg !3706
  %cmp48 = icmp eq i32 %call47, 0, !dbg !3706
  br i1 %cmp48, label %if.end92, label %if.then50, !dbg !3708

if.then50:                                        ; preds = %if.end
  %9 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 112), align 1, !dbg !3709
  %tobool51 = icmp eq i8 %9, 0, !dbg !3709
  br i1 %tobool51, label %cond.end54, label %cond.true52, !dbg !3709

cond.true52:                                      ; preds = %if.then50
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3709
  br label %cond.end54, !dbg !3709

cond.end54:                                       ; preds = %if.then50, %cond.true52
  %10 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_dtors, align 8, !dbg !3711
  %base58 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %10, i64 0, i32 0, !dbg !3711
  %call62 = tail call fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %base58) #7, !dbg !3711
  %11 = bitcast %union.tree_node** %call62 to i8*, !dbg !3711
  %12 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_dtors, align 8, !dbg !3712
  %base65 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %12, i64 0, i32 0, !dbg !3712
  %call69 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base65) #7, !dbg !3712
  %conv70 = zext i32 %call69 to i64, !dbg !3712
  tail call void @spec_qsort(i8* %11, i64 %conv70, i64 8, i32 (i8*, i8*)* nonnull @compare_dtor) #6, !dbg !3713
  %13 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_dtors, align 8, !dbg !3714
  %base73 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %13, i64 0, i32 0, !dbg !3714
  %call77 = tail call fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %base73) #7, !dbg !3714
  %14 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_dtors, align 8, !dbg !3715
  %base80 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %14, i64 0, i32 0, !dbg !3715
  %call84 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base80) #7, !dbg !3715
  %conv85 = zext i32 %call84 to i64, !dbg !3715
  tail call fastcc void @build_cdtor(i8 zeroext 0, %union.tree_node** %call77, i64 %conv85) #7, !dbg !3716
  %15 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @static_dtors, align 8, !dbg !3717
  %base88 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %15, i64 0, i32 0, !dbg !3717
  tail call fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %base88, i32 0) #7, !dbg !3717
  br label %if.end92, !dbg !3718

if.end92:                                         ; preds = %cond.end54, %if.end
  ret void, !dbg !3719
}

declare dso_local void @finish_aliases_1() local_unnamed_addr #2

declare dso_local i32 @fflush(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_analyze_functions() unnamed_addr #5 !dbg !2286 {
entry:
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_analyze_functions.first_analyzed, align 8, !dbg !3720
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %0, metadata !2288, metadata !DIExpression()), !dbg !3721
  %1 = load %struct.varpool_node*, %struct.varpool_node** @cgraph_analyze_functions.first_analyzed_var, align 8, !dbg !3722
  tail call fastcc void @process_function_and_variable_attributes(%struct.cgraph_node* %0, %struct.varpool_node* %1) #7, !dbg !3723
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8, !dbg !3724
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %2, metadata !2288, metadata !DIExpression()), !dbg !3721
  %3 = load i64, i64* bitcast (%struct.varpool_node** @varpool_nodes to i64*), align 8, !dbg !3725
  store i64 %3, i64* bitcast (%struct.varpool_node** @cgraph_analyze_functions.first_analyzed_var to i64*), align 8, !dbg !3726
  %call = tail call zeroext i8 @varpool_analyze_pending_decls() #6, !dbg !3727
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3728
  %tobool = icmp eq %struct._IO_FILE* %4, null, !dbg !3728
  br i1 %tobool, label %if.end8, label %if.then, !dbg !3730

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0)) #6, !dbg !3731
  br label %for.cond, !dbg !3733

for.cond:                                         ; preds = %for.inc, %if.then
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.then ], [ %next6, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !3735
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !2289, metadata !DIExpression()), !dbg !3721
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_analyze_functions.first_analyzed, align 8, !dbg !3736
  %cmp = icmp eq %struct.cgraph_node* %node.0, %5, !dbg !3738
  br i1 %cmp, label %for.end, label %for.body, !dbg !3739

for.body:                                         ; preds = %for.cond
  %needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !3740
  %bf.load = load i16, i16* %needed, align 4, !dbg !3740
  %bf.clear = and i16 %bf.load, 1, !dbg !3740
  %tobool2 = icmp eq i16 %bf.clear, 0, !dbg !3742
  br i1 %tobool2, label %for.inc, label %if.then3, !dbg !3743

if.then3:                                         ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3744
  %call4 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node.0) #6, !dbg !3745
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* %call4) #6, !dbg !3746
  br label %for.inc, !dbg !3746

for.inc:                                          ; preds = %for.body, %if.then3
  %next6 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !3747
  br label %for.cond, !dbg !3748, !llvm.loop !3749

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3751
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #6, !dbg !3752
  br label %if.end8, !dbg !3753

if.end8:                                          ; preds = %entry, %for.end
  %call9 = tail call zeroext i8 @cgraph_process_new_functions() #7, !dbg !3754
  br label %while.cond, !dbg !3755

while.cond:                                       ; preds = %cleanup, %if.end8
  %first_processed.0 = phi %struct.cgraph_node* [ %2, %if.end8 ], [ %first_processed.1, %cleanup ], !dbg !3721
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first_processed.0, metadata !2288, metadata !DIExpression()), !dbg !3721
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes_queue, align 8, !dbg !3756
  %tobool10 = icmp eq %struct.cgraph_node* %8, null, !dbg !3755
  br i1 %tobool10, label %while.end, label %while.body, !dbg !3755

while.body:                                       ; preds = %while.cond
  %decl11 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 0, !dbg !3757
  %9 = load %union.tree_node*, %union.tree_node** %decl11, align 8, !dbg !3757
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2293, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !2289, metadata !DIExpression()), !dbg !3721
  %next_needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 8, !dbg !3759
  %10 = bitcast %struct.cgraph_node** %next_needed to i64*, !dbg !3759
  %11 = load i64, i64* %10, align 8, !dbg !3759
  store i64 %11, i64* bitcast (%struct.cgraph_node** @cgraph_nodes_queue to i64*), align 8, !dbg !3760
  store %struct.cgraph_node* null, %struct.cgraph_node** %next_needed, align 8, !dbg !3761
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 1, !dbg !3762
  %12 = load %struct.function*, %struct.function** %f, align 8, !dbg !3762
  %tobool13 = icmp eq %struct.function* %12, null, !dbg !3762
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !3764

if.then14:                                        ; preds = %while.body
  tail call fastcc void @cgraph_reset_node(%struct.cgraph_node* nonnull %8) #7, !dbg !3765
  br label %cleanup, !dbg !3767, !llvm.loop !3768

if.end15:                                         ; preds = %while.body
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 27, !dbg !3770
  %bf.load16 = load i16, i16* %analyzed, align 4, !dbg !3770
  %bf.clear17 = and i16 %bf.load16, 32, !dbg !3770
  %tobool19 = icmp eq i16 %bf.clear17, 0, !dbg !3772
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !3773

if.then20:                                        ; preds = %if.end15
  tail call fastcc void @cgraph_analyze_function(%struct.cgraph_node* nonnull %8) #7, !dbg !3774
  br label %if.end21, !dbg !3774

if.end21:                                         ; preds = %if.end15, %if.then20
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 1, !dbg !3775
  br label %for.cond22, !dbg !3777

for.cond22:                                       ; preds = %for.inc33, %if.end21
  %edge.0.in = phi %struct.cgraph_edge** [ %callees, %if.end21 ], [ %next_callee, %for.inc33 ]
  %edge.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %edge.0.in, align 8, !dbg !3778
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %edge.0, metadata !2291, metadata !DIExpression()), !dbg !3758
  %tobool23 = icmp eq %struct.cgraph_edge* %edge.0, null, !dbg !3779
  br i1 %tobool23, label %for.end34, label %for.body24, !dbg !3779

for.body24:                                       ; preds = %for.cond22
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 2, !dbg !3780
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !3780
  %reachable = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i64 0, i32 27, !dbg !3783
  %bf.load25 = load i16, i16* %reachable, align 4, !dbg !3783
  %bf.clear27 = and i16 %bf.load25, 8, !dbg !3783
  %tobool29 = icmp eq i16 %bf.clear27, 0, !dbg !3784
  br i1 %tobool29, label %if.then30, label %for.inc33, !dbg !3785

if.then30:                                        ; preds = %for.body24
  tail call void @cgraph_mark_reachable_node(%struct.cgraph_node* %13) #6, !dbg !3786
  br label %for.inc33, !dbg !3786

for.inc33:                                        ; preds = %for.body24, %if.then30
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %edge.0, i64 0, i32 6, !dbg !3787
  br label %for.cond22, !dbg !3788, !llvm.loop !3789

for.end34:                                        ; preds = %for.cond22
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 14, !dbg !3791
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !3791
  %tobool35 = icmp eq %struct.cgraph_node* %14, null, !dbg !3793
  br i1 %tobool35, label %if.end44, label %if.then36, !dbg !3794

if.then36:                                        ; preds = %for.end34
  br label %for.cond38, !dbg !3795

for.cond38:                                       ; preds = %for.body40, %if.then36
  %next.0 = phi %struct.cgraph_node* [ %14, %if.then36 ], [ %next.0.pre, %for.body40 ], !dbg !3798
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %next.0, metadata !2290, metadata !DIExpression()), !dbg !3721
  %cmp39 = icmp eq %struct.cgraph_node* %next.0, %8, !dbg !3799
  br i1 %cmp39, label %if.end44.loopexit, label %for.body40, !dbg !3801

for.body40:                                       ; preds = %for.cond38
  tail call void @cgraph_mark_reachable_node(%struct.cgraph_node* %next.0) #6, !dbg !3802
  %next.0.in.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next.0, i64 0, i32 14, !dbg !3798
  %next.0.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next.0.in.phi.trans.insert, align 8, !dbg !3798
  br label %for.cond38, !dbg !3803, !llvm.loop !3804

if.end44.loopexit:                                ; preds = %for.cond38
  br label %if.end44, !dbg !3806

if.end44:                                         ; preds = %if.end44.loopexit, %for.end34
  %abstract_origin = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !3806
  %15 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8, !dbg !3806
  %tobool45 = icmp eq %union.tree_node* %15, null, !dbg !3806
  br i1 %tobool45, label %if.end52, label %if.then46, !dbg !3807

if.then46:                                        ; preds = %if.end44
  %call49 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* nonnull %15) #6, !dbg !3808
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call49, metadata !2294, metadata !DIExpression()), !dbg !3809
  %abstract_and_needed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call49, i64 0, i32 27, !dbg !3810
  %bf.load50 = load i16, i16* %abstract_and_needed, align 4, !dbg !3811
  %bf.set = or i16 %bf.load50, 4, !dbg !3811
  store i16 %bf.set, i16* %abstract_and_needed, align 4, !dbg !3811
  br label %if.end52, !dbg !3812

if.end52:                                         ; preds = %if.end44, %if.then46
  %16 = load %struct.varpool_node*, %struct.varpool_node** @cgraph_analyze_functions.first_analyzed_var, align 8, !dbg !3813
  tail call fastcc void @process_function_and_variable_attributes(%struct.cgraph_node* %first_processed.0, %struct.varpool_node* %16) #7, !dbg !3814
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8, !dbg !3815
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %17, metadata !2288, metadata !DIExpression()), !dbg !3721
  %18 = load i64, i64* bitcast (%struct.varpool_node** @varpool_nodes to i64*), align 8, !dbg !3816
  store i64 %18, i64* bitcast (%struct.varpool_node** @cgraph_analyze_functions.first_analyzed_var to i64*), align 8, !dbg !3817
  %call53 = tail call zeroext i8 @varpool_analyze_pending_decls() #6, !dbg !3818
  %call54 = tail call zeroext i8 @cgraph_process_new_functions() #7, !dbg !3819
  br label %cleanup, !dbg !3769

cleanup:                                          ; preds = %if.end52, %if.then14
  %first_processed.1 = phi %struct.cgraph_node* [ %17, %if.end52 ], [ %first_processed.0, %if.then14 ], !dbg !3721
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first_processed.1, metadata !2288, metadata !DIExpression()), !dbg !3721
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3820
  %tobool56 = icmp eq %struct._IO_FILE* %19, null, !dbg !3820
  br i1 %tobool56, label %if.end75, label %if.then57, !dbg !3822

if.then57:                                        ; preds = %while.end
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0)) #6, !dbg !3823
  br label %for.cond59, !dbg !3825

for.cond59:                                       ; preds = %for.inc71, %if.then57
  %node.1.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.then57 ], [ %next72, %for.inc71 ]
  %node.1 = load %struct.cgraph_node*, %struct.cgraph_node** %node.1.in, align 8, !dbg !3827
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !2289, metadata !DIExpression()), !dbg !3721
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_analyze_functions.first_analyzed, align 8, !dbg !3828
  %cmp60 = icmp eq %struct.cgraph_node* %node.1, %20, !dbg !3830
  br i1 %cmp60, label %for.end73, label %for.body61, !dbg !3831

for.body61:                                       ; preds = %for.cond59
  %needed62 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 27, !dbg !3832
  %bf.load63 = load i16, i16* %needed62, align 4, !dbg !3832
  %bf.clear64 = and i16 %bf.load63, 1, !dbg !3832
  %tobool66 = icmp eq i16 %bf.clear64, 0, !dbg !3834
  br i1 %tobool66, label %for.inc71, label %if.then67, !dbg !3835

if.then67:                                        ; preds = %for.body61
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3836
  %call68 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node.1) #6, !dbg !3837
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* %call68) #6, !dbg !3838
  br label %for.inc71, !dbg !3838

for.inc71:                                        ; preds = %for.body61, %if.then67
  %next72 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 3, !dbg !3839
  br label %for.cond59, !dbg !3840, !llvm.loop !3841

for.end73:                                        ; preds = %for.cond59
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3843
  %call74 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0)) #6, !dbg !3844
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3845
  tail call void @dump_cgraph(%struct._IO_FILE* %23) #6, !dbg !3846
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3847
  br label %if.end75, !dbg !3849

if.end75:                                         ; preds = %while.end, %for.end73
  %24 = phi %struct._IO_FILE* [ null, %while.end ], [ %.pre, %for.end73 ], !dbg !3847
  %tobool76 = icmp eq %struct._IO_FILE* %24, null, !dbg !3847
  br i1 %tobool76, label %if.end79, label %if.then77, !dbg !3850

if.then77:                                        ; preds = %if.end75
  %call78 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i64 0, i64 0)) #6, !dbg !3851
  br label %if.end79, !dbg !3851

if.end79:                                         ; preds = %if.end75, %if.then77
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8, !dbg !3852
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %25, metadata !2289, metadata !DIExpression()), !dbg !3721
  br label %for.cond80, !dbg !3853

for.cond80:                                       ; preds = %cleanup139, %if.end79
  %node.2 = phi %struct.cgraph_node* [ %25, %if.end79 ], [ %28, %cleanup139 ], !dbg !3854
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.2, metadata !2289, metadata !DIExpression()), !dbg !3721
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_analyze_functions.first_analyzed, align 8, !dbg !3855
  %cmp81 = icmp eq %struct.cgraph_node* %node.2, %26, !dbg !3856
  br i1 %cmp81, label %for.end143, label %for.body82, !dbg !3857

for.body82:                                       ; preds = %for.cond80
  %decl84 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 0, !dbg !3858
  %27 = load %union.tree_node*, %union.tree_node** %decl84, align 8, !dbg !3858
  call void @llvm.dbg.value(metadata %union.tree_node* %27, metadata !2297, metadata !DIExpression()), !dbg !3859
  %next85 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 3, !dbg !3860
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %next85, align 8, !dbg !3860
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %28, metadata !2290, metadata !DIExpression()), !dbg !3721
  %finalized = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 18, i32 2, !dbg !3861
  %bf.load86 = load i8, i8* %finalized, align 8, !dbg !3861
  %bf.clear88 = and i8 %bf.load86, 4, !dbg !3861
  %tobool90 = icmp eq i8 %bf.clear88, 0, !dbg !3863
  br i1 %tobool90, label %if.end94, label %land.lhs.true, !dbg !3864

land.lhs.true:                                    ; preds = %for.body82
  %call91 = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %27) #6, !dbg !3865
  %tobool92 = icmp eq i8 %call91, 0, !dbg !3865
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !3866

if.then93:                                        ; preds = %land.lhs.true
  tail call fastcc void @cgraph_reset_node(%struct.cgraph_node* %node.2) #7, !dbg !3867
  br label %if.end94, !dbg !3867

if.end94:                                         ; preds = %land.lhs.true, %for.body82, %if.then93
  %reachable95 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 27, !dbg !3868
  %bf.load96 = load i16, i16* %reachable95, align 4, !dbg !3868
  %bf.clear98 = and i16 %bf.load96, 8, !dbg !3868
  %tobool100 = icmp eq i16 %bf.clear98, 0, !dbg !3870
  br i1 %tobool100, label %land.lhs.true101, label %if.else, !dbg !3871

land.lhs.true101:                                 ; preds = %if.end94
  %call102 = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %27) #6, !dbg !3872
  %tobool103 = icmp eq i8 %call102, 0, !dbg !3872
  br i1 %tobool103, label %if.else, label %if.then104, !dbg !3873

if.then104:                                       ; preds = %land.lhs.true101
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3874
  %tobool105 = icmp eq %struct._IO_FILE* %29, null, !dbg !3874
  br i1 %tobool105, label %if.end109, label %if.then106, !dbg !3877

if.then106:                                       ; preds = %if.then104
  %call107 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %node.2) #6, !dbg !3878
  %call108 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8* %call107) #6, !dbg !3879
  br label %if.end109, !dbg !3879

if.end109:                                        ; preds = %if.then104, %if.then106
  tail call void @cgraph_remove_node(%struct.cgraph_node* %node.2) #6, !dbg !3880
  br label %cleanup139, !dbg !3881

if.else:                                          ; preds = %land.lhs.true101, %if.end94
  %next_needed110 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 8, !dbg !3882
  store %struct.cgraph_node* null, %struct.cgraph_node** %next_needed110, align 8, !dbg !3883
  %bf.load114 = load i8, i8* %finalized, align 8, !dbg !3884
  %bf.clear116 = and i8 %bf.load114, 4, !dbg !3884
  %tobool118 = icmp eq i8 %bf.clear116, 0, !dbg !3884
  br i1 %tobool118, label %cond.end, label %lor.lhs.false, !dbg !3884

lor.lhs.false:                                    ; preds = %if.else
  %call119 = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %27) #6, !dbg !3884
  %tobool121 = icmp eq i8 %call119, 0, !dbg !3884
  br i1 %tobool121, label %cond.true, label %cond.end, !dbg !3884

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1060, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3884
  br label %cond.end, !dbg !3884

cond.end:                                         ; preds = %lor.lhs.false, %if.else, %cond.true
  %bf.load123 = load i16, i16* %reachable95, align 4, !dbg !3885
  %bf.lshr124 = lshr i16 %bf.load123, 5, !dbg !3885
  %bf.clear125 = and i16 %bf.lshr124, 1, !dbg !3885
  %bf.cast126 = zext i16 %bf.clear125 to i32, !dbg !3885
  %bf.load129 = load i8, i8* %finalized, align 8, !dbg !3885
  %bf.lshr130 = lshr i8 %bf.load129, 2, !dbg !3885
  %bf.clear131 = and i8 %bf.lshr130, 1, !dbg !3885
  %bf.cast132 = zext i8 %bf.clear131 to i32, !dbg !3885
  %cmp133 = icmp eq i32 %bf.cast126, %bf.cast132, !dbg !3885
  br i1 %cmp133, label %cleanup139, label %cond.true135, !dbg !3885

cond.true135:                                     ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1061, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3885
  br label %cleanup139, !dbg !3885

cleanup139:                                       ; preds = %cond.true135, %cond.end, %if.end109
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %28, metadata !2289, metadata !DIExpression()), !dbg !3721
  br label %for.cond80, !dbg !3886, !llvm.loop !3887

for.end143:                                       ; preds = %for.cond80
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3889
  %tobool144 = icmp eq %struct._IO_FILE* %30, null, !dbg !3889
  br i1 %tobool144, label %if.end147, label %if.then145, !dbg !3891

if.then145:                                       ; preds = %for.end143
  %call146 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i64 0, i64 0)) #6, !dbg !3892
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3894
  tail call void @dump_cgraph(%struct._IO_FILE* %31) #6, !dbg !3895
  br label %if.end147, !dbg !3896

if.end147:                                        ; preds = %for.end143, %if.then145
  %32 = load i64, i64* bitcast (%struct.cgraph_node** @cgraph_nodes to i64*), align 8, !dbg !3897
  store i64 %32, i64* bitcast (%struct.cgraph_node** @cgraph_analyze_functions.first_analyzed to i64*), align 8, !dbg !3898
  tail call void @ggc_collect() #6, !dbg !3899
  ret void, !dbg !3900
}

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_optimize() local_unnamed_addr #5 !dbg !3901 {
entry:
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3902
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 4, !dbg !3902
  %1 = load i32, i32* %arrayidx, align 8, !dbg !3902
  %tobool = icmp eq i32 %1, 0, !dbg !3902
  br i1 %tobool, label %lor.lhs.false, label %if.end62, !dbg !3904

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 5, !dbg !3905
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !3905
  %tobool3 = icmp eq i32 %2, 0, !dbg !3905
  br i1 %tobool3, label %if.end, label %if.end62, !dbg !3906

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call zeroext i8 @varpool_analyze_pending_decls() #6, !dbg !3907
  %3 = load i8, i8* @timevar_enable, align 1, !dbg !3908
  %tobool4 = icmp eq i8 %3, 0, !dbg !3908
  br i1 %tobool4, label %do.end, label %if.then5, !dbg !3911

if.then5:                                         ; preds = %if.end
  tail call void @timevar_push_1(i32 5) #6, !dbg !3908
  br label %do.end, !dbg !3908

do.end:                                           ; preds = %if.end, %if.then5
  %4 = load i32, i32* @pre_ipa_mem_report, align 4, !dbg !3912
  %tobool7 = icmp eq i32 %4, 0, !dbg !3912
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !3914

if.then8:                                         ; preds = %do.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3915
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !3917
  tail call void @dump_memory_report(i8 zeroext 0) #6, !dbg !3918
  br label %if.end10, !dbg !3919

if.end10:                                         ; preds = %do.end, %if.then8
  %6 = load i32, i32* @quiet_flag, align 4, !dbg !3920
  %tobool11 = icmp eq i32 %6, 0, !dbg !3920
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !3922

if.then12:                                        ; preds = %if.end10
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3923
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !3924
  br label %if.end14, !dbg !3924

if.end14:                                         ; preds = %if.end10, %if.then12
  store i32 1, i32* @cgraph_state, align 4, !dbg !3925
  %8 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3926
  %arrayidx16 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %8, i64 0, i32 1, i64 4, !dbg !3926
  %9 = load i32, i32* %arrayidx16, align 8, !dbg !3926
  %cmp = icmp eq i32 %9, 0, !dbg !3928
  br i1 %cmp, label %land.lhs.true, label %if.end21, !dbg !3929

land.lhs.true:                                    ; preds = %if.end14
  %arrayidx18 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %8, i64 0, i32 1, i64 5, !dbg !3930
  %10 = load i32, i32* %arrayidx18, align 4, !dbg !3930
  %cmp19 = icmp eq i32 %10, 0, !dbg !3931
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !3932

if.then20:                                        ; preds = %land.lhs.true
  tail call fastcc void @ipa_passes() #7, !dbg !3933
  %.pre = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3934
  %arrayidx23.phi.trans.insert = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %.pre, i64 0, i32 1, i64 4, !dbg !3936
  %.pre1 = load i32, i32* %arrayidx23.phi.trans.insert, align 8, !dbg !3934
  br label %if.end21, !dbg !3933

if.end21:                                         ; preds = %if.then20, %land.lhs.true, %if.end14
  %11 = phi i32 [ %.pre1, %if.then20 ], [ 0, %land.lhs.true ], [ %9, %if.end14 ], !dbg !3934
  %12 = phi %struct.diagnostic_context* [ %.pre, %if.then20 ], [ %8, %land.lhs.true ], [ %8, %if.end14 ], !dbg !3934
  %tobool24 = icmp eq i32 %11, 0, !dbg !3934
  br i1 %tobool24, label %lor.lhs.false25, label %do.body30, !dbg !3937

lor.lhs.false25:                                  ; preds = %if.end21
  %arrayidx27 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %12, i64 0, i32 1, i64 5, !dbg !3938
  %13 = load i32, i32* %arrayidx27, align 4, !dbg !3938
  %tobool28 = icmp eq i32 %13, 0, !dbg !3938
  br i1 %tobool28, label %if.end35, label %do.body30, !dbg !3939

do.body30:                                        ; preds = %lor.lhs.false25, %if.end21
  %14 = load i8, i8* @timevar_enable, align 1, !dbg !3940
  %tobool31 = icmp eq i8 %14, 0, !dbg !3940
  br i1 %tobool31, label %if.end62, label %if.then32, !dbg !3944

if.then32:                                        ; preds = %do.body30
  tail call void @timevar_pop_1(i32 5) #6, !dbg !3940
  br label %if.end62, !dbg !3940

if.end35:                                         ; preds = %lor.lhs.false25
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3945
  %call36 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 zeroext 0, %struct._IO_FILE* %15) #6, !dbg !3946
  store i8 1, i8* @cgraph_global_info_ready, align 1, !dbg !3947
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3948
  %tobool37 = icmp eq %struct._IO_FILE* %16, null, !dbg !3948
  br i1 %tobool37, label %if.end40, label %if.then38, !dbg !3950

if.then38:                                        ; preds = %if.end35
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !3951
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3953
  tail call void @dump_cgraph(%struct._IO_FILE* %17) #6, !dbg !3954
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3955
  tail call void @dump_varpool(%struct._IO_FILE* %18) #6, !dbg !3956
  br label %if.end40, !dbg !3957

if.end40:                                         ; preds = %if.end35, %if.then38
  %19 = load i32, i32* @post_ipa_mem_report, align 4, !dbg !3958
  %tobool41 = icmp eq i32 %19, 0, !dbg !3958
  br i1 %tobool41, label %do.body45, label %if.then42, !dbg !3960

if.then42:                                        ; preds = %if.end40
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3961
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !3963
  tail call void @dump_memory_report(i8 zeroext 0) #6, !dbg !3964
  br label %do.body45, !dbg !3965

do.body45:                                        ; preds = %if.end40, %if.then42
  %21 = load i8, i8* @timevar_enable, align 1, !dbg !3966
  %tobool46 = icmp eq i8 %21, 0, !dbg !3966
  br i1 %tobool46, label %do.end49, label %if.then47, !dbg !3969

if.then47:                                        ; preds = %do.body45
  tail call void @timevar_pop_1(i32 5) #6, !dbg !3966
  br label %do.end49, !dbg !3966

do.end49:                                         ; preds = %do.body45, %if.then47
  %22 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !3970
  %assembly_start = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %22, i64 0, i32 2, !dbg !3971
  %23 = load void ()*, void ()** %assembly_start, align 8, !dbg !3971
  tail call void %23() #6, !dbg !3972
  %24 = load i32, i32* @quiet_flag, align 4, !dbg !3973
  %tobool50 = icmp eq i32 %24, 0, !dbg !3973
  br i1 %tobool50, label %if.then51, label %if.end53, !dbg !3975

if.then51:                                        ; preds = %do.end49
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3976
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !3977
  br label %if.end53, !dbg !3977

if.end53:                                         ; preds = %do.end49, %if.then51
  tail call void @cgraph_materialize_all_clones() #7, !dbg !3978
  tail call fastcc void @cgraph_mark_functions_to_output() #7, !dbg !3979
  store i32 3, i32* @cgraph_state, align 4, !dbg !3980
  %26 = load i32, i32* @flag_toplevel_reorder, align 4, !dbg !3981
  %tobool54 = icmp eq i32 %26, 0, !dbg !3981
  br i1 %tobool54, label %if.then55, label %if.else, !dbg !3983

if.then55:                                        ; preds = %if.end53
  tail call fastcc void @cgraph_output_in_order() #7, !dbg !3984
  br label %if.end57, !dbg !3984

if.else:                                          ; preds = %if.end53
  tail call fastcc void @cgraph_output_pending_asms() #7, !dbg !3985
  tail call fastcc void @cgraph_expand_all_functions() #7, !dbg !3987
  tail call void @varpool_remove_unreferenced_decls() #6, !dbg !3988
  %call56 = tail call zeroext i8 @varpool_assemble_pending_decls() #6, !dbg !3989
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then55
  %call58 = tail call zeroext i8 @cgraph_process_new_functions() #7, !dbg !3990
  store i32 4, i32* @cgraph_state, align 4, !dbg !3991
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3992
  %tobool59 = icmp eq %struct._IO_FILE* %27, null, !dbg !3992
  br i1 %tobool59, label %if.end62, label %if.then60, !dbg !3994

if.then60:                                        ; preds = %if.end57
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !3995
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !3997
  tail call void @dump_cgraph(%struct._IO_FILE* %28) #6, !dbg !3998
  br label %if.end62, !dbg !3999

if.end62:                                         ; preds = %do.body30, %if.end57, %lor.lhs.false, %entry, %if.then32, %if.then60
  ret void, !dbg !4000
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_inline_p(%struct.cgraph_edge* %e, i32* %reason) local_unnamed_addr #5 !dbg !4001 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4006, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i32* %reason, metadata !4007, metadata !DIExpression()), !dbg !4008
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 9, !dbg !4009
  %0 = load i32, i32* %inline_failed, align 8, !dbg !4009
  store i32 %0, i32* %reason, align 4, !dbg !4010
  %1 = load i32, i32* %inline_failed, align 8, !dbg !4011
  %tobool = icmp eq i32 %1, 0, !dbg !4012
  %conv = zext i1 %tobool to i8, !dbg !4012
  ret i8 %conv, !dbg !4013
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cgraph_preserve_function_body_p(%union.tree_node* %decl) local_unnamed_addr #5 !dbg !4014 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !4018, metadata !DIExpression()), !dbg !4020
  %0 = load i8, i8* @cgraph_global_info_ready, align 1, !dbg !4021
  %tobool = icmp eq i8 %0, 0, !dbg !4021
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4021

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1765, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4021
  br label %cond.end, !dbg !4021

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %decl) #6, !dbg !4022
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !4019, metadata !DIExpression()), !dbg !4020
  %clones = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 11, !dbg !4023
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %clones, align 8, !dbg !4023
  %tobool1 = icmp ne %struct.cgraph_node* %1, null, !dbg !4025
  %. = zext i1 %tobool1 to i8, !dbg !4020
  ret i8 %., !dbg !4026
}

declare dso_local zeroext i8 @varpool_analyze_pending_decls() local_unnamed_addr #2

declare dso_local void @dump_memory_report(i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipa_passes() unnamed_addr #5 !dbg !4027 {
entry:
  tail call void @set_cfun(%struct.function* null) #6, !dbg !4028
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !4029
  tail call void @gimple_register_cfg_hooks() #6, !dbg !4030
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* null) #6, !dbg !4031
  %call = tail call i32 @invoke_plugin_callbacks(i32 16, i8* null) #6, !dbg !4032
  %0 = load i8, i8* @in_lto_p, align 1, !dbg !4033
  %tobool = icmp eq i8 %0, 0, !dbg !4033
  br i1 %tobool, label %if.then, label %if.end, !dbg !4035

if.then:                                          ; preds = %entry
  %1 = load %struct.opt_pass*, %struct.opt_pass** @all_small_ipa_passes, align 8, !dbg !4036
  tail call void @execute_ipa_pass_list(%struct.opt_pass* %1) #6, !dbg !4037
  br label %if.end, !dbg !4037

if.end:                                           ; preds = %entry, %if.then
  %2 = load i32, i32* @cgraph_state, align 4, !dbg !4038
  %cmp = icmp ult i32 %2, 2, !dbg !4040
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4041

if.then1:                                         ; preds = %if.end
  store i32 2, i32* @cgraph_state, align 4, !dbg !4042
  br label %if.end2, !dbg !4043

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = load i8, i8* @in_lto_p, align 1, !dbg !4044
  %tobool3 = icmp eq i8 %3, 0, !dbg !4044
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4046

if.then4:                                         ; preds = %if.end2
  tail call void @coverage_finish() #6, !dbg !4047
  tail call void @set_cfun(%struct.function* null) #6, !dbg !4049
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !4050
  %call5 = tail call zeroext i8 @cgraph_process_new_functions() #7, !dbg !4051
  %4 = load %struct.ipa_opt_pass_d*, %struct.ipa_opt_pass_d** bitcast (%struct.opt_pass** @all_regular_ipa_passes to %struct.ipa_opt_pass_d**), align 8, !dbg !4052
  tail call void @execute_ipa_summary_passes(%struct.ipa_opt_pass_d* %4) #6, !dbg !4053
  br label %if.end6, !dbg !4054

if.end6:                                          ; preds = %if.end2, %if.then4
  %5 = load %struct.ipa_opt_pass_d*, %struct.ipa_opt_pass_d** bitcast (%struct.opt_pass** @all_lto_gen_passes to %struct.ipa_opt_pass_d**), align 8, !dbg !4055
  tail call void @execute_ipa_summary_passes(%struct.ipa_opt_pass_d* %5) #6, !dbg !4056
  %6 = load i8, i8* @in_lto_p, align 1, !dbg !4057
  %tobool7 = icmp eq i8 %6, 0, !dbg !4057
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4059

if.then8:                                         ; preds = %if.end6
  tail call void @ipa_write_summaries() #6, !dbg !4060
  br label %if.end9, !dbg !4060

if.end9:                                          ; preds = %if.end6, %if.then8
  %7 = load i32, i32* @flag_ltrans, align 4, !dbg !4061
  %tobool10 = icmp eq i32 %7, 0, !dbg !4061
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4063

if.then11:                                        ; preds = %if.end9
  %8 = load %struct.opt_pass*, %struct.opt_pass** @all_regular_ipa_passes, align 8, !dbg !4064
  tail call void @execute_ipa_pass_list(%struct.opt_pass* %8) #6, !dbg !4065
  br label %if.end12, !dbg !4065

if.end12:                                         ; preds = %if.end9, %if.then11
  %call13 = tail call i32 @invoke_plugin_callbacks(i32 17, i8* null) #6, !dbg !4066
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* null) #6, !dbg !4067
  ret void, !dbg !4068
}

declare dso_local zeroext i8 @cgraph_remove_unreachable_nodes(i8 zeroext, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @dump_cgraph(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @dump_varpool(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_materialize_all_clones() local_unnamed_addr #5 !dbg !4069 {
entry:
  call void @llvm.dbg.value(metadata i8 0, metadata !4072, metadata !DIExpression()), !dbg !4095
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4096
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !4096
  br i1 %tobool, label %if.end, label %if.then, !dbg !4098

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !4099
  br label %if.end, !dbg !4099

if.end:                                           ; preds = %entry, %if.then
  br label %while.cond, !dbg !4100

while.cond.loopexit:                              ; preds = %for.cond
  %stabilized.1.lcssa = phi i8 [ %stabilized.1, %for.cond ], !dbg !4101
  call void @llvm.dbg.value(metadata i8 %stabilized.1.lcssa, metadata !4072, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i8 %stabilized.1.lcssa, metadata !4072, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i8 %stabilized.1.lcssa, metadata !4072, metadata !DIExpression()), !dbg !4095
  br label %while.cond, !dbg !4100

while.cond:                                       ; preds = %while.cond.loopexit, %if.end
  %stabilized.0 = phi i8 [ 0, %if.end ], [ %stabilized.1.lcssa, %while.cond.loopexit ], !dbg !4095
  call void @llvm.dbg.value(metadata i8 %stabilized.0, metadata !4072, metadata !DIExpression()), !dbg !4095
  %tobool1 = icmp eq i8 %stabilized.0, 0, !dbg !4102
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8, !dbg !4095
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %1, metadata !4071, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %1, metadata !4071, metadata !DIExpression()), !dbg !4095
  br i1 %tobool1, label %for.cond.preheader, label %for.cond73.preheader, !dbg !4100

for.cond.preheader:                               ; preds = %while.cond
  br label %for.cond, !dbg !4103

for.cond73.preheader:                             ; preds = %while.cond
  %.lcssa = phi %struct.cgraph_node* [ %1, %while.cond ], !dbg !4095
  br label %for.cond73, !dbg !4104

for.cond:                                         ; preds = %for.cond.preheader, %for.inc71
  %stabilized.1 = phi i8 [ %stabilized.3, %for.inc71 ], [ 1, %for.cond.preheader ], !dbg !4101
  %node.0 = phi %struct.cgraph_node* [ %30, %for.inc71 ], [ %1, %for.cond.preheader ], !dbg !4106
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4071, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i8 %stabilized.1, metadata !4072, metadata !DIExpression()), !dbg !4095
  %tobool2 = icmp eq %struct.cgraph_node* %node.0, null, !dbg !4103
  br i1 %tobool2, label %while.cond.loopexit, label %for.body, !dbg !4103, !llvm.loop !4107

for.body:                                         ; preds = %for.cond
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 12, !dbg !4109
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !4109
  %tobool3 = icmp eq %struct.cgraph_node* %2, null, !dbg !4110
  br i1 %tobool3, label %for.inc71, label %land.lhs.true, !dbg !4111

land.lhs.true:                                    ; preds = %for.body
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 0, !dbg !4112
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4112
  %decl5 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %2, i64 0, i32 0, !dbg !4113
  %4 = load %union.tree_node*, %union.tree_node** %decl5, align 8, !dbg !4113
  %cmp = icmp eq %union.tree_node* %3, %4, !dbg !4114
  br i1 %cmp, label %for.inc71, label %land.lhs.true6, !dbg !4115

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call8 = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %3) #6, !dbg !4116
  %tobool9 = icmp eq i8 %call8, 0, !dbg !4116
  br i1 %tobool9, label %if.then10, label %for.inc71, !dbg !4117

if.then10:                                        ; preds = %land.lhs.true6
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !4118
  %decl12 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %5, i64 0, i32 0, !dbg !4119
  %6 = load %union.tree_node*, %union.tree_node** %decl12, align 8, !dbg !4119
  %call13 = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %6) #6, !dbg !4120
  %tobool14 = icmp eq i8 %call13, 0, !dbg !4120
  br i1 %tobool14, label %for.inc71, label %if.then15, !dbg !4121

if.then15:                                        ; preds = %if.then10
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4122
  %tobool16 = icmp eq %struct._IO_FILE* %7, null, !dbg !4122
  br i1 %tobool16, label %if.end68, label %if.then17, !dbg !4123

if.then17:                                        ; preds = %if.then15
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !4124
  %call19 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %8) #6, !dbg !4125
  %call20 = tail call i8* @cgraph_node_name(%struct.cgraph_node* nonnull %node.0) #6, !dbg !4126
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i8* %call19, i8* %call20) #6, !dbg !4127
  %tree_map = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 21, i32 0, !dbg !4128
  %9 = load %struct.VEC_ipa_replace_map_p_gc*, %struct.VEC_ipa_replace_map_p_gc** %tree_map, align 8, !dbg !4128
  %tobool22 = icmp eq %struct.VEC_ipa_replace_map_p_gc* %9, null, !dbg !4129
  br i1 %tobool22, label %if.end53, label %if.then23, !dbg !4130

if.then23:                                        ; preds = %if.then17
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4131
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0)) #6, !dbg !4132
  call void @llvm.dbg.value(metadata i32 0, metadata !4073, metadata !DIExpression()), !dbg !4133
  br label %for.cond25, !dbg !4134

for.cond25:                                       ; preds = %cond.end42, %if.then23
  %i.0 = phi i32 [ 0, %if.then23 ], [ %inc, %cond.end42 ], !dbg !4135
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4073, metadata !DIExpression()), !dbg !4133
  %11 = load %struct.VEC_ipa_replace_map_p_gc*, %struct.VEC_ipa_replace_map_p_gc** %tree_map, align 8, !dbg !4136
  %tobool28 = icmp eq %struct.VEC_ipa_replace_map_p_gc* %11, null, !dbg !4136
  br i1 %tobool28, label %cond.end, label %cond.true, !dbg !4136

cond.true:                                        ; preds = %for.cond25
  %base = getelementptr inbounds %struct.VEC_ipa_replace_map_p_gc, %struct.VEC_ipa_replace_map_p_gc* %11, i64 0, i32 0, !dbg !4136
  br label %cond.end, !dbg !4136

cond.end:                                         ; preds = %for.cond25, %cond.true
  %cond = phi %struct.VEC_ipa_replace_map_p_base* [ %base, %cond.true ], [ null, %for.cond25 ], !dbg !4136
  %call31 = tail call fastcc i32 @VEC_ipa_replace_map_p_base_length(%struct.VEC_ipa_replace_map_p_base* %cond) #7, !dbg !4136
  %cmp32 = icmp ult i32 %i.0, %call31, !dbg !4137
  br i1 %cmp32, label %for.body33, label %for.end, !dbg !4138

for.body33:                                       ; preds = %cond.end
  %12 = load %struct.VEC_ipa_replace_map_p_gc*, %struct.VEC_ipa_replace_map_p_gc** %tree_map, align 8, !dbg !4139
  %tobool36 = icmp eq %struct.VEC_ipa_replace_map_p_gc* %12, null, !dbg !4139
  br i1 %tobool36, label %cond.end42, label %cond.true37, !dbg !4139

cond.true37:                                      ; preds = %for.body33
  %base40 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_gc, %struct.VEC_ipa_replace_map_p_gc* %12, i64 0, i32 0, !dbg !4139
  br label %cond.end42, !dbg !4139

cond.end42:                                       ; preds = %for.body33, %cond.true37
  %cond43 = phi %struct.VEC_ipa_replace_map_p_base* [ %base40, %cond.true37 ], [ null, %for.body33 ], !dbg !4139
  %call44 = tail call fastcc %struct.ipa_replace_map* @VEC_ipa_replace_map_p_base_index(%struct.VEC_ipa_replace_map_p_base* %cond43, i32 %i.0) #7, !dbg !4139
  call void @llvm.dbg.value(metadata %struct.ipa_replace_map* %call44, metadata !4086, metadata !DIExpression()), !dbg !4140
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4141
  %old_tree = getelementptr inbounds %struct.ipa_replace_map, %struct.ipa_replace_map* %call44, i64 0, i32 0, !dbg !4142
  %14 = load %union.tree_node*, %union.tree_node** %old_tree, align 8, !dbg !4142
  tail call void @print_generic_expr(%struct._IO_FILE* %13, %union.tree_node* %14, i32 0) #6, !dbg !4143
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4144
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #6, !dbg !4145
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4146
  %new_tree = getelementptr inbounds %struct.ipa_replace_map, %struct.ipa_replace_map* %call44, i64 0, i32 1, !dbg !4147
  %17 = load %union.tree_node*, %union.tree_node** %new_tree, align 8, !dbg !4147
  tail call void @print_generic_expr(%struct._IO_FILE* %16, %union.tree_node* %17, i32 0) #6, !dbg !4148
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4149
  %replace_p = getelementptr inbounds %struct.ipa_replace_map, %struct.ipa_replace_map* %call44, i64 0, i32 2, !dbg !4150
  %19 = load i8, i8* %replace_p, align 8, !dbg !4150
  %tobool46 = icmp eq i8 %19, 0, !dbg !4151
  %cond47 = select i1 %tobool46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), !dbg !4151
  %ref_p = getelementptr inbounds %struct.ipa_replace_map, %struct.ipa_replace_map* %call44, i64 0, i32 3, !dbg !4152
  %20 = load i8, i8* %ref_p, align 1, !dbg !4152
  %tobool49 = icmp eq i8 %20, 0, !dbg !4153
  %cond50 = select i1 %tobool49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), !dbg !4153
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* %cond47, i8* %cond50) #6, !dbg !4154
  %inc = add i32 %i.0, 1, !dbg !4155
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4073, metadata !DIExpression()), !dbg !4133
  br label %for.cond25, !dbg !4156, !llvm.loop !4157

for.end:                                          ; preds = %cond.end
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4159
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #6, !dbg !4160
  br label %if.end53, !dbg !4161

if.end53:                                         ; preds = %if.then17, %for.end
  %args_to_skip = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 21, i32 1, !dbg !4162
  %22 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %args_to_skip, align 8, !dbg !4162
  %tobool55 = icmp eq %struct.bitmap_head_def* %22, null, !dbg !4164
  br i1 %tobool55, label %if.end60, label %if.then56, !dbg !4165

if.then56:                                        ; preds = %if.end53
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4166
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0)) #6, !dbg !4168
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4169
  %25 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %args_to_skip, align 8, !dbg !4169
  tail call void @bitmap_print(%struct._IO_FILE* %24, %struct.bitmap_head_def* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #6, !dbg !4169
  %.pre = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %args_to_skip, align 8, !dbg !4170
  br label %if.end60, !dbg !4172

if.end60:                                         ; preds = %if.end53, %if.then56
  %26 = phi %struct.bitmap_head_def* [ null, %if.end53 ], [ %.pre, %if.then56 ], !dbg !4170
  %tobool63 = icmp eq %struct.bitmap_head_def* %26, null, !dbg !4173
  br i1 %tobool63, label %if.end68, label %if.then64, !dbg !4174

if.then64:                                        ; preds = %if.end60
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4175
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0)) #6, !dbg !4177
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4178
  %combined_args_to_skip = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 21, i32 2, !dbg !4178
  %29 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %combined_args_to_skip, align 8, !dbg !4178
  tail call void @bitmap_print(%struct._IO_FILE* %28, %struct.bitmap_head_def* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #6, !dbg !4178
  br label %if.end68, !dbg !4179

if.end68:                                         ; preds = %if.end60, %if.then15, %if.then64
  tail call fastcc void @cgraph_materialize_clone(%struct.cgraph_node* nonnull %node.0) #7, !dbg !4180
  br label %for.inc71, !dbg !4181

for.inc71:                                        ; preds = %if.then10, %land.lhs.true6, %land.lhs.true, %for.body, %if.end68
  %stabilized.3 = phi i8 [ %stabilized.1, %land.lhs.true6 ], [ %stabilized.1, %land.lhs.true ], [ %stabilized.1, %for.body ], [ %stabilized.1, %if.end68 ], [ 0, %if.then10 ], !dbg !4101
  call void @llvm.dbg.value(metadata i8 %stabilized.3, metadata !4072, metadata !DIExpression()), !dbg !4095
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !4182
  %30 = load %struct.cgraph_node*, %struct.cgraph_node** %next, align 8, !dbg !4182
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %30, metadata !4071, metadata !DIExpression()), !dbg !4095
  br label %for.cond, !dbg !4183, !llvm.loop !4184

for.cond73:                                       ; preds = %for.cond73.preheader, %for.inc81
  %node.1 = phi %struct.cgraph_node* [ %32, %for.inc81 ], [ %.lcssa, %for.cond73.preheader ], !dbg !4186
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.1, metadata !4071, metadata !DIExpression()), !dbg !4095
  %tobool74 = icmp eq %struct.cgraph_node* %node.1, null, !dbg !4104
  br i1 %tobool74, label %for.end83, label %for.body75, !dbg !4104

for.body75:                                       ; preds = %for.cond73
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 27, !dbg !4187
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !4187
  %bf.clear = and i16 %bf.load, 32, !dbg !4187
  %tobool76 = icmp eq i16 %bf.clear, 0, !dbg !4190
  br i1 %tobool76, label %land.lhs.true77, label %for.inc81, !dbg !4191

land.lhs.true77:                                  ; preds = %for.body75
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 1, !dbg !4192
  %31 = load %struct.cgraph_edge*, %struct.cgraph_edge** %callees, align 8, !dbg !4192
  %tobool78 = icmp eq %struct.cgraph_edge* %31, null, !dbg !4193
  br i1 %tobool78, label %for.inc81, label %if.then79, !dbg !4194

if.then79:                                        ; preds = %land.lhs.true77
  tail call void @cgraph_node_remove_callees(%struct.cgraph_node* nonnull %node.1) #6, !dbg !4195
  br label %for.inc81, !dbg !4195

for.inc81:                                        ; preds = %land.lhs.true77, %for.body75, %if.then79
  %next82 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.1, i64 0, i32 3, !dbg !4196
  %32 = load %struct.cgraph_node*, %struct.cgraph_node** %next82, align 8, !dbg !4196
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %32, metadata !4071, metadata !DIExpression()), !dbg !4095
  br label %for.cond73, !dbg !4197, !llvm.loop !4198

for.end83:                                        ; preds = %for.cond73
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4200
  %tobool84 = icmp eq %struct._IO_FILE* %33, null, !dbg !4200
  br i1 %tobool84, label %if.end87, label %if.then85, !dbg !4202

if.then85:                                        ; preds = %for.end83
  %call86 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !4203
  br label %if.end87, !dbg !4203

if.end87:                                         ; preds = %for.end83, %if.then85
  br label %for.cond88, !dbg !4204

for.cond88:                                       ; preds = %for.inc116, %if.end87
  %node.2.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end87 ], [ %next117, %for.inc116 ]
  %node.2 = load %struct.cgraph_node*, %struct.cgraph_node** %node.2.in, align 8, !dbg !4205
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.2, metadata !4071, metadata !DIExpression()), !dbg !4095
  %tobool89 = icmp eq %struct.cgraph_node* %node.2, null, !dbg !4206
  br i1 %tobool89, label %for.end118, label %for.body90, !dbg !4206

for.body90:                                       ; preds = %for.cond88
  %analyzed91 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 27, !dbg !4207
  %bf.load92 = load i16, i16* %analyzed91, align 4, !dbg !4207
  %bf.clear94 = and i16 %bf.load92, 32, !dbg !4207
  %tobool96 = icmp eq i16 %bf.clear94, 0, !dbg !4208
  br i1 %tobool96, label %for.inc116, label %land.lhs.true97, !dbg !4209

land.lhs.true97:                                  ; preds = %for.body90
  %clone_of98 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 12, !dbg !4210
  %34 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of98, align 8, !dbg !4210
  %tobool99 = icmp eq %struct.cgraph_node* %34, null, !dbg !4211
  br i1 %tobool99, label %land.lhs.true100, label %for.inc116, !dbg !4212

land.lhs.true100:                                 ; preds = %land.lhs.true97
  %decl101 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 0, !dbg !4213
  %35 = load %union.tree_node*, %union.tree_node** %decl101, align 8, !dbg !4213
  %call102 = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %35) #6, !dbg !4214
  %tobool104 = icmp eq i8 %call102, 0, !dbg !4214
  br i1 %tobool104, label %for.inc116, label %if.then105, !dbg !4215

if.then105:                                       ; preds = %land.lhs.true100
  %36 = bitcast %struct.cgraph_node* %node.2 to i64*, !dbg !4216
  %37 = load i64, i64* %36, align 8, !dbg !4216
  store i64 %37, i64* bitcast (%union.tree_node** @current_function_decl to i64*), align 8, !dbg !4217
  %38 = bitcast %struct.cgraph_node* %node.2 to %struct.tree_function_decl**, !dbg !4218
  %39 = load %struct.tree_function_decl*, %struct.tree_function_decl** %38, align 8, !dbg !4218
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %39, i64 0, i32 1, !dbg !4218
  %40 = load %struct.function*, %struct.function** %f, align 8, !dbg !4218
  tail call void @push_cfun(%struct.function* %40) #6, !dbg !4219
  %callees108 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 1, !dbg !4220
  br label %for.cond109, !dbg !4222

for.cond109:                                      ; preds = %for.body111, %if.then105
  %e.0.in = phi %struct.cgraph_edge** [ %callees108, %if.then105 ], [ %next_callee, %for.body111 ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !4223
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4090, metadata !DIExpression()), !dbg !4224
  %tobool110 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4225
  br i1 %tobool110, label %for.end114, label %for.body111, !dbg !4225

for.body111:                                      ; preds = %for.cond109
  %call112 = tail call %union.gimple_statement_d* @cgraph_redirect_edge_call_stmt_to_callee(%struct.cgraph_edge* nonnull %e.0) #7, !dbg !4226
  %next_callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 6, !dbg !4228
  br label %for.cond109, !dbg !4229, !llvm.loop !4230

for.end114:                                       ; preds = %for.cond109
  tail call void @pop_cfun() #6, !dbg !4232
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !4233
  br label %for.inc116, !dbg !4234

for.inc116:                                       ; preds = %land.lhs.true100, %land.lhs.true97, %for.body90, %for.end114
  %next117 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.2, i64 0, i32 3, !dbg !4235
  br label %for.cond88, !dbg !4236, !llvm.loop !4237

for.end118:                                       ; preds = %for.cond88
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4239
  %tobool119 = icmp eq %struct._IO_FILE* %41, null, !dbg !4239
  br i1 %tobool119, label %if.end122, label %if.then120, !dbg !4241

if.then120:                                       ; preds = %for.end118
  %call121 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i64 0, i64 0)) #6, !dbg !4242
  br label %if.end122, !dbg !4242

if.end122:                                        ; preds = %for.end118, %if.then120
  br label %for.cond123, !dbg !4243

for.cond123:                                      ; preds = %for.body125, %if.end122
  %node.3.in = phi %struct.cgraph_node** [ @cgraph_nodes, %if.end122 ], [ %next129, %for.body125 ]
  %node.3 = load %struct.cgraph_node*, %struct.cgraph_node** %node.3.in, align 8, !dbg !4245
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.3, metadata !4071, metadata !DIExpression()), !dbg !4095
  %tobool124 = icmp eq %struct.cgraph_node* %node.3, null, !dbg !4246
  br i1 %tobool124, label %for.end130, label %for.body125, !dbg !4246

for.body125:                                      ; preds = %for.cond123
  %combined_args_to_skip127 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.3, i64 0, i32 21, i32 2, !dbg !4247
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %combined_args_to_skip127, align 8, !dbg !4249
  %next129 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.3, i64 0, i32 3, !dbg !4250
  br label %for.cond123, !dbg !4251, !llvm.loop !4252

for.end130:                                       ; preds = %for.cond123
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4254
  %call131 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 zeroext 0, %struct._IO_FILE* %42) #6, !dbg !4255
  ret void, !dbg !4256
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_mark_functions_to_output() unnamed_addr #5 !dbg !4257 {
entry:
  br label %for.cond, !dbg !4270

for.cond:                                         ; preds = %cleanup, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next90, %cleanup ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !4271
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !4259, metadata !DIExpression()), !dbg !4272
  %tobool = icmp eq %struct.cgraph_node* %node.0, null, !dbg !4273
  br i1 %tobool, label %for.end91, label %for.body, !dbg !4273

for.body:                                         ; preds = %for.cond
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 0, !dbg !4274
  %0 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !4274
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4260, metadata !DIExpression()), !dbg !4275
  %process = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 27, !dbg !4276
  %bf.load = load i16, i16* %process, align 4, !dbg !4276
  %bf.clear = and i16 %bf.load, 64, !dbg !4276
  %tobool2 = icmp eq i16 %bf.clear, 0, !dbg !4276
  br i1 %tobool2, label %cond.end, label %lor.lhs.false, !dbg !4276

lor.lhs.false:                                    ; preds = %for.body
  %same_comdat_group = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 14, !dbg !4276
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group, align 8, !dbg !4276
  %tobool3 = icmp eq %struct.cgraph_node* %1, null, !dbg !4276
  br i1 %tobool3, label %cond.true, label %cond.end, !dbg !4276

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4276
  %bf.load5.pre = load i16, i16* %process, align 4, !dbg !4277
  br label %cond.end, !dbg !4276

cond.end:                                         ; preds = %lor.lhs.false, %for.body, %cond.true
  %bf.load49 = phi i16 [ %bf.load, %lor.lhs.false ], [ %bf.load, %for.body ], [ %bf.load5.pre, %cond.true ], !dbg !4277
  %bf.clear7 = and i16 %bf.load49, 64, !dbg !4277
  %tobool9 = icmp eq i16 %bf.clear7, 0, !dbg !4279
  br i1 %tobool9, label %if.end, label %cleanup, !dbg !4280

if.end:                                           ; preds = %cond.end
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 2, !dbg !4281
  br label %for.cond10, !dbg !4283

for.cond10:                                       ; preds = %for.inc, %if.end
  %e.0.in = phi %struct.cgraph_edge** [ %callers, %if.end ], [ %next_caller, %for.inc ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !4284
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4264, metadata !DIExpression()), !dbg !4275
  %tobool11 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4285
  br i1 %tobool11, label %for.end, label %for.body12, !dbg !4285

for.body12:                                       ; preds = %for.cond10
  %inline_failed = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 9, !dbg !4286
  %2 = load i32, i32* %inline_failed, align 8, !dbg !4286
  %tobool13 = icmp eq i32 %2, 0, !dbg !4289
  br i1 %tobool13, label %for.inc, label %for.end, !dbg !4290

for.inc:                                          ; preds = %for.body12
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !4291
  br label %for.cond10, !dbg !4292, !llvm.loop !4293

for.end:                                          ; preds = %for.body12, %for.cond10
  %tobool11.lcssa = phi i1 [ %tobool11, %for.body12 ], [ %tobool11, %for.cond10 ], !dbg !4285
  %bf.clear18 = and i16 %bf.load49, 32, !dbg !4295
  %tobool20 = icmp eq i16 %bf.clear18, 0, !dbg !4296
  br i1 %tobool20, label %if.else, label %land.lhs.true, !dbg !4297

land.lhs.true:                                    ; preds = %for.end
  %inlined_to = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 2, !dbg !4298
  %3 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to, align 8, !dbg !4298
  %tobool21 = icmp eq %struct.cgraph_node* %3, null, !dbg !4299
  br i1 %tobool21, label %land.lhs.true22, label %if.else, !dbg !4300

land.lhs.true22:                                  ; preds = %land.lhs.true
  %bf.clear24 = and i16 %bf.load49, 1, !dbg !4301
  %tobool26 = icmp eq i16 %bf.clear24, 0, !dbg !4302
  br i1 %tobool26, label %lor.lhs.false27, label %land.lhs.true35, !dbg !4303

lor.lhs.false27:                                  ; preds = %land.lhs.true22
  br i1 %tobool11.lcssa, label %if.else, label %land.lhs.true29, !dbg !4304

land.lhs.true29:                                  ; preds = %lor.lhs.false27
  %bf.clear32 = and i16 %bf.load49, 8, !dbg !4305
  %tobool34 = icmp eq i16 %bf.clear32, 0, !dbg !4306
  br i1 %tobool34, label %if.else, label %land.lhs.true35, !dbg !4307

land.lhs.true35:                                  ; preds = %land.lhs.true29, %land.lhs.true22
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4308
  %bf.load36 = load i64, i64* %4, align 8, !dbg !4308
  %bf.cast392 = and i64 %bf.load36, 4194304, !dbg !4308
  %tobool40 = icmp eq i64 %bf.cast392, 0, !dbg !4308
  br i1 %tobool40, label %land.lhs.true41, label %if.else, !dbg !4309

land.lhs.true41:                                  ; preds = %land.lhs.true35
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4310
  %5 = bitcast i40* %decl_flag_1 to i64*, !dbg !4310
  %bf.load42 = load i64, i64* %5, align 8, !dbg !4310
  %bf.cast453 = and i64 %bf.load42, 33554432, !dbg !4310
  %tobool46 = icmp eq i64 %bf.cast453, 0, !dbg !4310
  br i1 %tobool46, label %if.then47, label %if.else, !dbg !4311

if.then47:                                        ; preds = %land.lhs.true41
  %bf.set = or i16 %bf.load49, 64, !dbg !4312
  store i16 %bf.set, i16* %process, align 4, !dbg !4312
  %same_comdat_group51 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 14, !dbg !4313
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group51, align 8, !dbg !4313
  %tobool52 = icmp eq %struct.cgraph_node* %6, null, !dbg !4314
  br i1 %tobool52, label %cleanup, label %if.then53, !dbg !4315

if.then53:                                        ; preds = %if.then47
  br label %for.cond55, !dbg !4316

for.cond55:                                       ; preds = %for.body56, %if.then53
  %next.0 = phi %struct.cgraph_node* [ %6, %if.then53 ], [ %next.0.pre, %for.body56 ], !dbg !4318
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %next.0, metadata !4265, metadata !DIExpression()), !dbg !4319
  %cmp = icmp eq %struct.cgraph_node* %next.0, %node.0, !dbg !4320
  br i1 %cmp, label %cleanup.loopexit, label %for.body56, !dbg !4322

for.body56:                                       ; preds = %for.cond55
  %process57 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next.0, i64 0, i32 27, !dbg !4323
  %bf.load58 = load i16, i16* %process57, align 4, !dbg !4324
  %bf.set60 = or i16 %bf.load58, 64, !dbg !4324
  store i16 %bf.set60, i16* %process57, align 4, !dbg !4324
  %next.0.in.phi.trans.insert = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %next.0, i64 0, i32 14, !dbg !4318
  %next.0.pre = load %struct.cgraph_node*, %struct.cgraph_node** %next.0.in.phi.trans.insert, align 8, !dbg !4318
  br label %for.cond55, !dbg !4325, !llvm.loop !4326

if.else:                                          ; preds = %land.lhs.true41, %land.lhs.true35, %land.lhs.true29, %lor.lhs.false27, %land.lhs.true, %for.end
  %same_comdat_group65 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 14, !dbg !4328
  %7 = load %struct.cgraph_node*, %struct.cgraph_node** %same_comdat_group65, align 8, !dbg !4328
  %tobool66 = icmp eq %struct.cgraph_node* %7, null, !dbg !4330
  br i1 %tobool66, label %if.else68, label %cleanup, !dbg !4331

if.else68:                                        ; preds = %if.else
  %inlined_to70 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 19, i32 2, !dbg !4332
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %inlined_to70, align 8, !dbg !4332
  %tobool71 = icmp eq %struct.cgraph_node* %8, null, !dbg !4332
  br i1 %tobool71, label %lor.lhs.false72, label %cleanup, !dbg !4332

lor.lhs.false72:                                  ; preds = %if.else68
  %call = tail call zeroext i8 @gimple_has_body_p(%union.tree_node* %0) #6, !dbg !4332
  %tobool73 = icmp eq i8 %call, 0, !dbg !4332
  br i1 %tobool73, label %cleanup, label %lor.lhs.false74, !dbg !4332

lor.lhs.false74:                                  ; preds = %lor.lhs.false72
  %decl_flag_176 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4332
  %9 = bitcast i40* %decl_flag_176 to i64*, !dbg !4332
  %bf.load77 = load i64, i64* %9, align 8, !dbg !4332
  %bf.cast801 = and i64 %bf.load77, 33554432, !dbg !4332
  %tobool81 = icmp eq i64 %bf.cast801, 0, !dbg !4332
  br i1 %tobool81, label %cond.true82, label %cleanup, !dbg !4332

cond.true82:                                      ; preds = %lor.lhs.false74
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4332
  br label %cleanup, !dbg !4332

cleanup.loopexit:                                 ; preds = %for.cond55
  br label %cleanup, !dbg !4334

cleanup:                                          ; preds = %cleanup.loopexit, %if.then47, %lor.lhs.false74, %lor.lhs.false72, %if.else68, %if.else, %cond.end, %cond.true82
  %next90 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !4334
  br label %for.cond, !dbg !4335, !llvm.loop !4336

for.end91:                                        ; preds = %for.cond
  ret void, !dbg !4338
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_output_in_order() unnamed_addr #5 !dbg !4339 {
entry:
  %0 = load i32, i32* @cgraph_order, align 4, !dbg !4347
  call void @llvm.dbg.value(metadata i32 %0, metadata !4341, metadata !DIExpression()), !dbg !4348
  %conv = sext i32 %0 to i64, !dbg !4349
  %call = tail call i8* @xcalloc(i64 %conv, i64 16) #6, !dbg !4349
  %1 = bitcast i8* %call to %struct.cgraph_order_sort*, !dbg !4349
  call void @llvm.dbg.value(metadata %struct.cgraph_order_sort* %1, metadata !4342, metadata !DIExpression()), !dbg !4348
  %call1 = tail call zeroext i8 @varpool_analyze_pending_decls() #6, !dbg !4350
  br label %for.cond, !dbg !4351

for.cond:                                         ; preds = %for.inc, %entry
  %pf.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.inc ]
  %pf.0 = load %struct.cgraph_node*, %struct.cgraph_node** %pf.0.in, align 8, !dbg !4353
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %pf.0, metadata !4344, metadata !DIExpression()), !dbg !4348
  %tobool = icmp eq %struct.cgraph_node* %pf.0, null, !dbg !4354
  br i1 %tobool, label %for.end, label %for.body, !dbg !4354

for.body:                                         ; preds = %for.cond
  %process = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %pf.0, i64 0, i32 27, !dbg !4355
  %bf.load = load i16, i16* %process, align 4, !dbg !4355
  %bf.clear = and i16 %bf.load, 64, !dbg !4355
  %tobool2 = icmp eq i16 %bf.clear, 0, !dbg !4359
  br i1 %tobool2, label %for.inc, label %if.then, !dbg !4360

if.then:                                          ; preds = %for.body
  %order = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %pf.0, i64 0, i32 25, !dbg !4361
  %2 = load i32, i32* %order, align 4, !dbg !4361
  call void @llvm.dbg.value(metadata i32 %2, metadata !4343, metadata !DIExpression()), !dbg !4348
  %idxprom = sext i32 %2 to i64, !dbg !4363
  %kind = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %idxprom, i32 0, !dbg !4363
  %3 = load i32, i32* %kind, align 8, !dbg !4363
  %cmp = icmp eq i32 %3, 0, !dbg !4363
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4363

cond.true:                                        ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1697, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4363
  br label %cond.end, !dbg !4363

cond.end:                                         ; preds = %if.then, %cond.true
  store i32 1, i32* %kind, align 8, !dbg !4364
  %f = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %idxprom, i32 1, i32 0, !dbg !4365
  store %struct.cgraph_node* %pf.0, %struct.cgraph_node** %f, align 8, !dbg !4366
  br label %for.inc, !dbg !4367

for.inc:                                          ; preds = %for.body, %cond.end
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %pf.0, i64 0, i32 3, !dbg !4368
  br label %for.cond, !dbg !4369, !llvm.loop !4370

for.end:                                          ; preds = %for.cond
  br label %for.cond9, !dbg !4372

for.cond9:                                        ; preds = %cond.end20, %for.end
  %pv.0.in = phi %struct.varpool_node** [ @varpool_nodes_queue, %for.end ], [ %next_needed, %cond.end20 ]
  %pv.0 = load %struct.varpool_node*, %struct.varpool_node** %pv.0.in, align 8, !dbg !4374
  call void @llvm.dbg.value(metadata %struct.varpool_node* %pv.0, metadata !4345, metadata !DIExpression()), !dbg !4348
  %tobool10 = icmp eq %struct.varpool_node* %pv.0, null, !dbg !4375
  br i1 %tobool10, label %for.end29, label %for.body11, !dbg !4375

for.body11:                                       ; preds = %for.cond9
  %order12 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %pv.0, i64 0, i32 4, !dbg !4376
  %4 = load i32, i32* %order12, align 8, !dbg !4376
  call void @llvm.dbg.value(metadata i32 %4, metadata !4343, metadata !DIExpression()), !dbg !4348
  %idxprom13 = sext i32 %4 to i64, !dbg !4379
  %kind15 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %idxprom13, i32 0, !dbg !4379
  %5 = load i32, i32* %kind15, align 8, !dbg !4379
  %cmp16 = icmp eq i32 %5, 0, !dbg !4379
  br i1 %cmp16, label %cond.end20, label %cond.true18, !dbg !4379

cond.true18:                                      ; preds = %for.body11
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1706, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4379
  br label %cond.end20, !dbg !4379

cond.end20:                                       ; preds = %for.body11, %cond.true18
  store i32 2, i32* %kind15, align 8, !dbg !4380
  %u27 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %idxprom13, i32 1, !dbg !4381
  %v = bitcast %union.anon.0* %u27 to %struct.varpool_node**, !dbg !4382
  store %struct.varpool_node* %pv.0, %struct.varpool_node** %v, align 8, !dbg !4383
  %next_needed = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %pv.0, i64 0, i32 2, !dbg !4384
  br label %for.cond9, !dbg !4385, !llvm.loop !4386

for.end29:                                        ; preds = %for.cond9
  br label %for.cond30, !dbg !4388

for.cond30:                                       ; preds = %cond.end41, %for.end29
  %pa.0.in = phi %struct.cgraph_asm_node** [ @cgraph_asm_nodes, %for.end29 ], [ %next50, %cond.end41 ]
  %pa.0 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %pa.0.in, align 8, !dbg !4390
  call void @llvm.dbg.value(metadata %struct.cgraph_asm_node* %pa.0, metadata !4346, metadata !DIExpression()), !dbg !4348
  %tobool31 = icmp eq %struct.cgraph_asm_node* %pa.0, null, !dbg !4391
  br i1 %tobool31, label %for.cond52.preheader, label %for.body32, !dbg !4391

for.cond52.preheader:                             ; preds = %for.cond30
  %6 = sext i32 %0 to i64, !dbg !4392
  br label %for.cond52, !dbg !4392

for.body32:                                       ; preds = %for.cond30
  %order33 = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %pa.0, i64 0, i32 2, !dbg !4394
  %7 = load i32, i32* %order33, align 8, !dbg !4394
  call void @llvm.dbg.value(metadata i32 %7, metadata !4343, metadata !DIExpression()), !dbg !4348
  %idxprom34 = sext i32 %7 to i64, !dbg !4397
  %kind36 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %idxprom34, i32 0, !dbg !4397
  %8 = load i32, i32* %kind36, align 8, !dbg !4397
  %cmp37 = icmp eq i32 %8, 0, !dbg !4397
  br i1 %cmp37, label %cond.end41, label %cond.true39, !dbg !4397

cond.true39:                                      ; preds = %for.body32
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1714, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4397
  br label %cond.end41, !dbg !4397

cond.end41:                                       ; preds = %for.body32, %cond.true39
  store i32 3, i32* %kind36, align 8, !dbg !4398
  %u48 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %idxprom34, i32 1, !dbg !4399
  %a = bitcast %union.anon.0* %u48 to %struct.cgraph_asm_node**, !dbg !4400
  store %struct.cgraph_asm_node* %pa.0, %struct.cgraph_asm_node** %a, align 8, !dbg !4401
  %next50 = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %pa.0, i64 0, i32 0, !dbg !4402
  br label %for.cond30, !dbg !4403, !llvm.loop !4404

for.cond52:                                       ; preds = %for.cond52.preheader, %for.inc67
  %indvars.iv1 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next2, %for.inc67 ], !dbg !4406
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !4343, metadata !DIExpression()), !dbg !4348
  %cmp53 = icmp slt i64 %indvars.iv1, %6, !dbg !4407
  br i1 %cmp53, label %for.body55, label %for.end68, !dbg !4392

for.body55:                                       ; preds = %for.cond52
  %kind58 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %indvars.iv1, i32 0, !dbg !4409
  %9 = load i32, i32* %kind58, align 8, !dbg !4409
  %cmp59 = icmp eq i32 %9, 2, !dbg !4412
  br i1 %cmp59, label %if.then61, label %for.inc67, !dbg !4413

if.then61:                                        ; preds = %for.body55
  %u64 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %indvars.iv1, i32 1, !dbg !4414
  %v65 = bitcast %union.anon.0* %u64 to %struct.varpool_node**, !dbg !4416
  %10 = load %struct.varpool_node*, %struct.varpool_node** %v65, align 8, !dbg !4416
  tail call void @varpool_mark_needed_node(%struct.varpool_node* %10) #6, !dbg !4417
  br label %for.inc67, !dbg !4418

for.inc67:                                        ; preds = %for.body55, %if.then61
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !4419
  call void @llvm.dbg.value(metadata i32 undef, metadata !4343, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4348
  br label %for.cond52, !dbg !4420, !llvm.loop !4421

for.end68:                                        ; preds = %for.cond52
  tail call void @varpool_empty_needed_queue() #6, !dbg !4423
  call void @llvm.dbg.value(metadata i32 0, metadata !4343, metadata !DIExpression()), !dbg !4348
  %11 = sext i32 %0 to i64, !dbg !4424
  br label %for.cond69, !dbg !4424

for.cond69:                                       ; preds = %for.inc98, %for.end68
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc98 ], [ 0, %for.end68 ], !dbg !4426
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4343, metadata !DIExpression()), !dbg !4348
  %cmp70 = icmp slt i64 %indvars.iv, %11, !dbg !4427
  br i1 %cmp70, label %for.body72, label %for.end100, !dbg !4429

for.body72:                                       ; preds = %for.cond69
  %kind75 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %indvars.iv, i32 0, !dbg !4430
  %12 = load i32, i32* %kind75, align 8, !dbg !4430
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb87
    i32 3, label %sw.bb93
    i32 0, label %for.inc98
  ], !dbg !4432

sw.bb:                                            ; preds = %for.body72
  %f79 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %indvars.iv, i32 1, i32 0, !dbg !4433
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %f79, align 8, !dbg !4433
  %process80 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i64 0, i32 27, !dbg !4435
  %bf.load81 = load i16, i16* %process80, align 4, !dbg !4436
  %bf.clear82 = and i16 %bf.load81, -65, !dbg !4436
  store i16 %bf.clear82, i16* %process80, align 4, !dbg !4436
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %f79, align 8, !dbg !4437
  tail call fastcc void @cgraph_expand_function(%struct.cgraph_node* %14) #7, !dbg !4438
  br label %for.inc98, !dbg !4439

sw.bb87:                                          ; preds = %for.body72
  %u90 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %indvars.iv, i32 1, !dbg !4440
  %v91 = bitcast %union.anon.0* %u90 to %struct.varpool_node**, !dbg !4441
  %15 = load %struct.varpool_node*, %struct.varpool_node** %v91, align 8, !dbg !4441
  %call92 = tail call zeroext i8 @varpool_assemble_decl(%struct.varpool_node* %15) #6, !dbg !4442
  br label %for.inc98, !dbg !4443

sw.bb93:                                          ; preds = %for.body72
  %u96 = getelementptr inbounds %struct.cgraph_order_sort, %struct.cgraph_order_sort* %1, i64 %indvars.iv, i32 1, !dbg !4444
  %a97 = bitcast %union.anon.0* %u96 to %struct.cgraph_asm_node**, !dbg !4445
  %16 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %a97, align 8, !dbg !4445
  %asm_str = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %16, i64 0, i32 1, !dbg !4446
  %17 = load %union.tree_node*, %union.tree_node** %asm_str, align 8, !dbg !4446
  tail call void @assemble_asm(%union.tree_node* %17) #6, !dbg !4447
  br label %for.inc98, !dbg !4448

sw.default:                                       ; preds = %for.body72
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1750, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4449
  br label %for.inc98, !dbg !4450

for.inc98:                                        ; preds = %sw.bb, %sw.bb87, %sw.bb93, %for.body72, %sw.default
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4451
  call void @llvm.dbg.value(metadata i32 undef, metadata !4343, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4348
  br label %for.cond69, !dbg !4452, !llvm.loop !4453

for.end100:                                       ; preds = %for.cond69
  store %struct.cgraph_asm_node* null, %struct.cgraph_asm_node** @cgraph_asm_nodes, align 8, !dbg !4455
  tail call void @free(i8* %call) #6, !dbg !4456
  ret void, !dbg !4457
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_output_pending_asms() unnamed_addr #5 !dbg !4458 {
entry:
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !4461
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 4, !dbg !4461
  %1 = load i32, i32* %arrayidx, align 8, !dbg !4461
  %tobool = icmp eq i32 %1, 0, !dbg !4461
  br i1 %tobool, label %lor.lhs.false, label %cleanup.cont, !dbg !4463

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 5, !dbg !4464
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !4464
  %tobool3 = icmp eq i32 %2, 0, !dbg !4464
  br i1 %tobool3, label %if.end, label %cleanup.cont, !dbg !4465

if.end:                                           ; preds = %lor.lhs.false
  br label %for.cond, !dbg !4466

for.cond:                                         ; preds = %for.body, %if.end
  %can.0.in = phi %struct.cgraph_asm_node** [ @cgraph_asm_nodes, %if.end ], [ %next, %for.body ]
  %can.0 = load %struct.cgraph_asm_node*, %struct.cgraph_asm_node** %can.0.in, align 8, !dbg !4468
  call void @llvm.dbg.value(metadata %struct.cgraph_asm_node* %can.0, metadata !4460, metadata !DIExpression()), !dbg !4469
  %tobool4 = icmp eq %struct.cgraph_asm_node* %can.0, null, !dbg !4470
  br i1 %tobool4, label %for.end, label %for.body, !dbg !4470

for.body:                                         ; preds = %for.cond
  %asm_str = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %can.0, i64 0, i32 1, !dbg !4471
  %3 = load %union.tree_node*, %union.tree_node** %asm_str, align 8, !dbg !4471
  tail call void @assemble_asm(%union.tree_node* %3) #6, !dbg !4473
  %next = getelementptr inbounds %struct.cgraph_asm_node, %struct.cgraph_asm_node* %can.0, i64 0, i32 0, !dbg !4474
  br label %for.cond, !dbg !4475, !llvm.loop !4476

for.end:                                          ; preds = %for.cond
  store %struct.cgraph_asm_node* null, %struct.cgraph_asm_node** @cgraph_asm_nodes, align 8, !dbg !4478
  br label %cleanup.cont, !dbg !4479

cleanup.cont:                                     ; preds = %lor.lhs.false, %entry, %for.end
  ret void, !dbg !4479
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_expand_all_functions() unnamed_addr #5 !dbg !4480 {
entry:
  %0 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !4487
  %conv = sext i32 %0 to i64, !dbg !4487
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !4487
  %1 = bitcast i8* %call to %struct.cgraph_node**, !dbg !4487
  call void @llvm.dbg.value(metadata %struct.cgraph_node** %1, metadata !4483, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 0, metadata !4485, metadata !DIExpression()), !dbg !4488
  %call1 = tail call i32 @cgraph_postorder(%struct.cgraph_node** %1) #6, !dbg !4489
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4484, metadata !DIExpression()), !dbg !4488
  %2 = load i32, i32* @cgraph_n_nodes, align 4, !dbg !4490
  %cmp = icmp eq i32 %call1, %2, !dbg !4490
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4490

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1626, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4490
  br label %cond.end, !dbg !4490

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !4486, metadata !DIExpression()), !dbg !4488
  %3 = sext i32 %call1 to i64, !dbg !4491
  br label %for.cond, !dbg !4491

for.cond:                                         ; preds = %for.inc, %cond.end
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc ], [ 0, %cond.end ], !dbg !4488
  %new_order_pos.0 = phi i32 [ %new_order_pos.1, %for.inc ], [ 0, %cond.end ], !dbg !4488
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !4486, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 %new_order_pos.0, metadata !4485, metadata !DIExpression()), !dbg !4488
  %cmp3 = icmp slt i64 %indvars.iv2, %3, !dbg !4493
  br i1 %cmp3, label %for.body, label %for.end, !dbg !4495

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %indvars.iv2, !dbg !4496
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx, align 8, !dbg !4496
  %process = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %4, i64 0, i32 27, !dbg !4498
  %bf.load = load i16, i16* %process, align 4, !dbg !4498
  %bf.clear = and i16 %bf.load, 64, !dbg !4498
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !4496
  br i1 %tobool, label %for.inc, label %if.then, !dbg !4499

if.then:                                          ; preds = %for.body
  %5 = ptrtoint %struct.cgraph_node* %4 to i64, !dbg !4499
  %inc = add nsw i32 %new_order_pos.0, 1, !dbg !4500
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4485, metadata !DIExpression()), !dbg !4488
  %idxprom7 = sext i32 %new_order_pos.0 to i64, !dbg !4501
  %arrayidx8 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %idxprom7, !dbg !4501
  %6 = bitcast %struct.cgraph_node** %arrayidx8 to i64*, !dbg !4502
  store i64 %5, i64* %6, align 8, !dbg !4502
  br label %for.inc, !dbg !4501

for.inc:                                          ; preds = %for.body, %if.then
  %new_order_pos.1 = phi i32 [ %inc, %if.then ], [ %new_order_pos.0, %for.body ], !dbg !4488
  call void @llvm.dbg.value(metadata i32 %new_order_pos.1, metadata !4485, metadata !DIExpression()), !dbg !4488
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i32 undef, metadata !4486, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4488
  br label %for.cond, !dbg !4504, !llvm.loop !4505

for.end:                                          ; preds = %for.cond
  %new_order_pos.0.lcssa = phi i32 [ %new_order_pos.0, %for.cond ], !dbg !4488
  call void @llvm.dbg.value(metadata i32 %new_order_pos.0.lcssa, metadata !4485, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 %new_order_pos.0.lcssa, metadata !4485, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 %new_order_pos.0.lcssa, metadata !4485, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata i32 %new_order_pos.0.lcssa, metadata !4486, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  %7 = sext i32 %new_order_pos.0.lcssa to i64, !dbg !4507
  br label %for.cond10, !dbg !4507

for.cond10:                                       ; preds = %for.inc36, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc36 ], [ %7, %for.end ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !4509
  call void @llvm.dbg.value(metadata i32 undef, metadata !4486, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  %cmp11 = icmp sgt i64 %indvars.iv, 0, !dbg !4510
  br i1 %cmp11, label %for.body13, label %for.end37, !dbg !4512

for.body13:                                       ; preds = %for.cond10
  %arrayidx15 = getelementptr inbounds %struct.cgraph_node*, %struct.cgraph_node** %1, i64 %indvars.iv.next, !dbg !4513
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %arrayidx15, align 8, !dbg !4513
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %8, metadata !4482, metadata !DIExpression()), !dbg !4488
  %process16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i64 0, i32 27, !dbg !4515
  %bf.load17 = load i16, i16* %process16, align 4, !dbg !4515
  %bf.clear19 = and i16 %bf.load17, 64, !dbg !4515
  %tobool21 = icmp eq i16 %bf.clear19, 0, !dbg !4517
  br i1 %tobool21, label %for.inc36, label %if.then22, !dbg !4518

if.then22:                                        ; preds = %for.body13
  %bf.clear25 = and i16 %bf.load17, 8, !dbg !4519
  %tobool27 = icmp eq i16 %bf.clear25, 0, !dbg !4519
  br i1 %tobool27, label %cond.true28, label %cond.end30, !dbg !4519

cond.true28:                                      ; preds = %if.then22
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1639, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4519
  %bf.load33.pre = load i16, i16* %process16, align 4, !dbg !4521
  br label %cond.end30, !dbg !4519

cond.end30:                                       ; preds = %if.then22, %cond.true28
  %bf.load33 = phi i16 [ %bf.load17, %if.then22 ], [ %bf.load33.pre, %cond.true28 ], !dbg !4521
  %bf.clear34 = and i16 %bf.load33, -65, !dbg !4521
  store i16 %bf.clear34, i16* %process16, align 4, !dbg !4521
  tail call fastcc void @cgraph_expand_function(%struct.cgraph_node* %8) #7, !dbg !4522
  br label %for.inc36, !dbg !4523

for.inc36:                                        ; preds = %for.body13, %cond.end30
  call void @llvm.dbg.value(metadata i32 undef, metadata !4486, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4488
  br label %for.cond10, !dbg !4524, !llvm.loop !4525

for.end37:                                        ; preds = %for.cond10
  %call38 = tail call zeroext i8 @cgraph_process_new_functions() #7, !dbg !4527
  tail call void @free(i8* %call) #6, !dbg !4528
  ret void, !dbg !4529
}

declare dso_local void @varpool_remove_unreferenced_decls() local_unnamed_addr #2

declare dso_local zeroext i8 @varpool_assemble_pending_decls() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cgraph_build_static_cdtor(i8 signext %which, %union.tree_node* %body, i32 %priority) local_unnamed_addr #5 !dbg !2250 {
entry:
  %which_buf = alloca [16 x i8], align 16
  call void @llvm.dbg.value(metadata i8 %which, metadata !2254, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata %union.tree_node* %body, metadata !2255, metadata !DIExpression()), !dbg !4530
  call void @llvm.dbg.value(metadata i32 %priority, metadata !2256, metadata !DIExpression()), !dbg !4530
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %which_buf, i64 0, i64 0, !dbg !4531
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !4531
  call void @llvm.dbg.declare(metadata [16 x i8]* %which_buf, metadata !2257, metadata !DIExpression()), !dbg !4532
  %conv = sext i8 %which to i32, !dbg !4533
  %1 = load i32, i32* @cgraph_build_static_cdtor.counter, align 4, !dbg !4534
  %inc = add nsw i32 %1, 1, !dbg !4534
  store i32 %inc, i32* @cgraph_build_static_cdtor.counter, align 4, !dbg !4534
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i32 %conv, i32 %priority, i32 %1) #6, !dbg !4535
  %call2 = call %union.tree_node* @get_file_function_name(i8* nonnull %0) #6, !dbg !4536
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2262, metadata !DIExpression()), !dbg !4530
  %2 = load i32, i32* @input_location, align 4, !dbg !4537
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !4537
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 55), align 8, !dbg !4537
  %call3 = call %union.tree_node* @build_function_type(%union.tree_node* %3, %union.tree_node* %4) #6, !dbg !4537
  %call4 = call %union.tree_node* @build_decl_stat(i32 %2, i32 29, %union.tree_node* %call2, %union.tree_node* %call3) #6, !dbg !4537
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2261, metadata !DIExpression()), !dbg !4530
  store %union.tree_node* %call4, %union.tree_node** @current_function_decl, align 8, !dbg !4538
  %5 = load i32, i32* @input_location, align 4, !dbg !4539
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !4539
  %call5 = call %union.tree_node* @build_decl_stat(i32 %5, i32 36, %union.tree_node* null, %union.tree_node* %6) #6, !dbg !4539
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2263, metadata !DIExpression()), !dbg !4530
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4540
  %7 = bitcast i40* %artificial_flag to i64*, !dbg !4540
  %bf.load = load i64, i64* %7, align 8, !dbg !4541
  %bf.set = or i64 %bf.load, 4096, !dbg !4541
  store i64 %bf.set, i64* %7, align 8, !dbg !4541
  %result = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 3, !dbg !4542
  store %union.tree_node* %call5, %union.tree_node** %result, align 8, !dbg !4543
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4544
  store %union.tree_node* %call4, %union.tree_node** %context, align 8, !dbg !4545
  call void @allocate_struct_function(%union.tree_node* %call4, i8 zeroext 0) #6, !dbg !4546
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4547
  %bf.load6 = load i64, i64* %8, align 8, !dbg !4548
  %bf.set12 = or i64 %bf.load6, 83886080, !dbg !4549
  store i64 %bf.set12, i64* %8, align 8, !dbg !4549
  %artificial_flag14 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4550
  %9 = bitcast i40* %artificial_flag14 to i64*, !dbg !4550
  %bf.load15 = load i64, i64* %9, align 8, !dbg !4551
  %bf.set17 = or i64 %bf.load15, 4096, !dbg !4551
  store i64 %bf.set17, i64* %9, align 8, !dbg !4551
  %no_instrument_function_entry_exit = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 5, !dbg !4552
  %bf.load18 = load i32, i32* %no_instrument_function_entry_exit, align 8, !dbg !4553
  %bf.set20 = or i32 %bf.load18, 16777216, !dbg !4553
  store i32 %bf.set20, i32* %no_instrument_function_entry_exit, align 8, !dbg !4553
  %saved_tree = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 1, !dbg !4554
  store %union.tree_node* %body, %union.tree_node** %saved_tree, align 8, !dbg !4555
  %10 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 112), align 1, !dbg !4556
  %tobool = icmp eq i8 %10, 0, !dbg !4558
  br i1 %tobool, label %if.then, label %if.end, !dbg !4559

if.then:                                          ; preds = %entry
  %bf.set25 = or i64 %bf.load6, 218103808, !dbg !4560
  store i64 %bf.set25, i64* %8, align 8, !dbg !4560
  %bf.set29 = or i64 %bf.load15, 12288, !dbg !4562
  store i64 %bf.set29, i64* %9, align 8, !dbg !4562
  br label %if.end, !dbg !4563

if.end:                                           ; preds = %entry, %if.then
  %bf.set33 = or i32 %bf.load18, 16809984, !dbg !4564
  store i32 %bf.set33, i32* %no_instrument_function_entry_exit, align 8, !dbg !4564
  %call34 = call %union.tree_node* @make_node_stat(i32 4) #6, !dbg !4565
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !4566
  store %union.tree_node* %call34, %union.tree_node** %initial, align 8, !dbg !4567
  %.cast = getelementptr inbounds %union.tree_node, %union.tree_node* %call34, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4568
  %bf.load39 = load i64, i64* %.cast, align 8, !dbg !4569
  %bf.set41 = or i64 %bf.load39, 16777216, !dbg !4569
  store i64 %bf.set41, i64* %.cast, align 8, !dbg !4569
  %11 = load i32, i32* @input_location, align 4, !dbg !4570
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4571
  store i32 %11, i32* %locus, align 8, !dbg !4572
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4573
  %function_end_locus = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 16, !dbg !4574
  store i32 %11, i32* %function_end_locus, align 4, !dbg !4575
  switch i32 %conv, label %sw.default [
    i32 73, label %sw.bb
    i32 68, label %sw.bb49
  ], !dbg !4576

sw.bb:                                            ; preds = %if.end
  %bf.load45 = load i32, i32* %no_instrument_function_entry_exit, align 8, !dbg !4577
  %bf.set47 = or i32 %bf.load45, 8192, !dbg !4577
  store i32 %bf.set47, i32* %no_instrument_function_entry_exit, align 8, !dbg !4577
  %conv48 = trunc i32 %priority to i16, !dbg !4579
  call void @decl_init_priority_insert(%union.tree_node* %call4, i16 zeroext %conv48) #6, !dbg !4580
  br label %sw.epilog, !dbg !4581

sw.bb49:                                          ; preds = %if.end
  %bf.load51 = load i32, i32* %no_instrument_function_entry_exit, align 8, !dbg !4582
  %bf.set53 = or i32 %bf.load51, 16384, !dbg !4582
  store i32 %bf.set53, i32* %no_instrument_function_entry_exit, align 8, !dbg !4582
  %conv54 = trunc i32 %priority to i16, !dbg !4583
  call void @decl_fini_priority_insert(%union.tree_node* %call4, i16 zeroext %conv54) #6, !dbg !4584
  br label %sw.epilog, !dbg !4585

sw.default:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1985, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4586
  br label %sw.epilog, !dbg !4587

sw.epilog:                                        ; preds = %sw.default, %sw.bb49, %sw.bb
  call void @gimplify_function_tree(%union.tree_node* %call4) #6, !dbg !4588
  call void @cgraph_add_new_function(%union.tree_node* %call4, i8 zeroext 0) #6, !dbg !4589
  %call55 = call %struct.cgraph_node* @cgraph_node(%union.tree_node* %call4) #6, !dbg !4590
  call void @cgraph_mark_needed_node(%struct.cgraph_node* %call55) #6, !dbg !4591
  call void @set_cfun(%struct.function* null) #6, !dbg !4592
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !4593
  ret void, !dbg !4593
}

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_file_function_name(i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_decl_stat(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_function_type(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @allocate_struct_function(%union.tree_node*, i8 zeroext) local_unnamed_addr #2

declare dso_local %union.tree_node* @make_node_stat(i32) local_unnamed_addr #2

declare dso_local void @decl_init_priority_insert(%union.tree_node*, i16 zeroext) local_unnamed_addr #2

declare dso_local void @decl_fini_priority_insert(%union.tree_node*, i16 zeroext) local_unnamed_addr #2

declare dso_local void @gimplify_function_tree(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @cgraph_add_new_function(%union.tree_node*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @init_cgraph() local_unnamed_addr #5 !dbg !4594 {
entry:
  %call = tail call %struct._IO_FILE* @dump_begin(i32 1, i32* null) #6, !dbg !4595
  store %struct._IO_FILE* %call, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4596
  ret void, !dbg !4597
}

declare dso_local %struct._IO_FILE* @dump_begin(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node* @cgraph_function_versioning(%struct.cgraph_node* %old_version_node, %struct.VEC_cgraph_edge_p_heap* %redirect_callers, %struct.VEC_ipa_replace_map_p_gc* %tree_map, %struct.bitmap_head_def* %args_to_skip) local_unnamed_addr #5 !dbg !4598 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %old_version_node, metadata !4614, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %redirect_callers, metadata !4615, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_gc* %tree_map, metadata !4616, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %args_to_skip, metadata !4617, metadata !DIExpression()), !dbg !4621
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %old_version_node, i64 0, i32 0, !dbg !4622
  %0 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4622
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4618, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.value(metadata %struct.cgraph_node* null, metadata !4619, metadata !DIExpression()), !dbg !4621
  %call = tail call zeroext i8 @tree_versionable_function_p(%union.tree_node* %0) #6, !dbg !4623
  %tobool = icmp eq i8 %call, 0, !dbg !4623
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4625

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq %struct.bitmap_head_def* %args_to_skip, null, !dbg !4626
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !4628

if.then2:                                         ; preds = %if.end
  %call3 = tail call %union.tree_node* @copy_node_stat(%union.tree_node* %0) #6, !dbg !4629
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !4620, metadata !DIExpression()), !dbg !4621
  br label %if.end5, !dbg !4630

if.else:                                          ; preds = %if.end
  %call4 = tail call %union.tree_node* @build_function_decl_skip_args(%union.tree_node* %0, %struct.bitmap_head_def* nonnull %args_to_skip) #6, !dbg !4631
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !4620, metadata !DIExpression()), !dbg !4621
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %new_decl.0 = phi %union.tree_node* [ %call4, %if.else ], [ %call3, %if.then2 ], !dbg !4632
  call void @llvm.dbg.value(metadata %union.tree_node* %new_decl.0, metadata !4620, metadata !DIExpression()), !dbg !4621
  %call6 = tail call fastcc %struct.cgraph_node* @cgraph_copy_node_for_versioning(%struct.cgraph_node* %old_version_node, %union.tree_node* %new_decl.0, %struct.VEC_cgraph_edge_p_heap* %redirect_callers) #7, !dbg !4633
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call6, metadata !4619, metadata !DIExpression()), !dbg !4621
  tail call void @tree_function_versioning(%union.tree_node* %0, %union.tree_node* %new_decl.0, %struct.VEC_ipa_replace_map_p_gc* %tree_map, i8 zeroext 0, %struct.bitmap_head_def* %args_to_skip) #6, !dbg !4634
  %decl7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call6, i64 0, i32 0, !dbg !4635
  %1 = load %union.tree_node*, %union.tree_node** %decl7, align 8, !dbg !4635
  tail call void @cgraph_make_decl_local(%union.tree_node* %1) #6, !dbg !4636
  %2 = bitcast %struct.cgraph_node* %call6 to %struct.tree_decl_common**, !dbg !4637
  %3 = load %struct.tree_decl_common*, %struct.tree_decl_common** %2, align 8, !dbg !4637
  %virtual_flag = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %3, i64 0, i32 2, !dbg !4637
  %4 = bitcast i40* %virtual_flag to i64*, !dbg !4637
  %bf.load = load i64, i64* %4, align 8, !dbg !4638
  %bf.clear = and i64 %bf.load, -513, !dbg !4638
  store i64 %bf.clear, i64* %4, align 8, !dbg !4638
  %externally_visible = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call6, i64 0, i32 18, i32 2, !dbg !4639
  %bf.load9 = load i8, i8* %externally_visible, align 8, !dbg !4640
  %bf.clear14 = and i8 %bf.load9, -4, !dbg !4641
  %bf.set = or i8 %bf.clear14, 1, !dbg !4641
  store i8 %bf.set, i8* %externally_visible, align 8, !dbg !4641
  %lowered = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call6, i64 0, i32 27, !dbg !4642
  %bf.load15 = load i16, i16* %lowered, align 4, !dbg !4643
  %bf.set17 = or i16 %bf.load15, 16, !dbg !4643
  store i16 %bf.set17, i16* %lowered, align 4, !dbg !4643
  tail call fastcc void @update_call_expr(%struct.cgraph_node* %call6) #7, !dbg !4644
  tail call void @cgraph_call_function_insertion_hooks(%struct.cgraph_node* %call6) #6, !dbg !4645
  br label %cleanup, !dbg !4646

cleanup:                                          ; preds = %entry, %if.end5
  %retval.0 = phi %struct.cgraph_node* [ %call6, %if.end5 ], [ null, %entry ], !dbg !4621
  ret %struct.cgraph_node* %retval.0, !dbg !4647
}

declare dso_local zeroext i8 @tree_versionable_function_p(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @copy_node_stat(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_function_decl_skip_args(%union.tree_node*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cgraph_node* @cgraph_copy_node_for_versioning(%struct.cgraph_node* %old_version, %union.tree_node* %new_decl, %struct.VEC_cgraph_edge_p_heap* %redirect_callers) unnamed_addr #5 !dbg !4648 {
entry:
  %e = alloca %struct.cgraph_edge*, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %old_version, metadata !4652, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata %union.tree_node* %new_decl, metadata !4653, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_heap* %redirect_callers, metadata !4654, metadata !DIExpression()), !dbg !4660
  %0 = bitcast %struct.cgraph_edge** %e to i8*, !dbg !4661
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4661
  %tobool = icmp eq %struct.cgraph_node* %old_version, null, !dbg !4662
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4662

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 2039, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4662
  br label %cond.end, !dbg !4662

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %new_decl) #6, !dbg !4663
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %call, metadata !4655, metadata !DIExpression()), !dbg !4660
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 27, !dbg !4664
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !4665
  %bf.set = or i16 %bf.load, 32, !dbg !4665
  store i16 %bf.set, i16* %analyzed, align 4, !dbg !4665
  %local = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 18, !dbg !4666
  %local1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %old_version, i64 0, i32 18, !dbg !4667
  %1 = bitcast %struct.cgraph_local_info* %local to i8*, !dbg !4667
  %2 = bitcast %struct.cgraph_local_info* %local1 to i8*, !dbg !4667
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 40, i1 false), !dbg !4667
  %global = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 19, !dbg !4668
  %global2 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %old_version, i64 0, i32 19, !dbg !4669
  %3 = bitcast %struct.cgraph_global_info* %global to i8*, !dbg !4669
  %4 = bitcast %struct.cgraph_global_info* %global2 to i8*, !dbg !4669
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 40, i1 false), !dbg !4669
  %bf.set6 = or i16 %bf.load, 40, !dbg !4670
  store i16 %bf.set6, i16* %analyzed, align 4, !dbg !4670
  %count = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %old_version, i64 0, i32 23, !dbg !4671
  %5 = load i64, i64* %count, align 8, !dbg !4671
  %count7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 23, !dbg !4672
  store i64 %5, i64* %count7, align 8, !dbg !4673
  %callees = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %old_version, i64 0, i32 1, !dbg !4674
  %6 = bitcast %struct.cgraph_edge** %callees to i64*, !dbg !4674
  %7 = load i64, i64* %6, align 8, !dbg !4674
  %8 = bitcast %struct.cgraph_edge** %e to i64*, !dbg !4676
  store i64 %7, i64* %8, align 8, !dbg !4676
  %9 = inttoptr i64 %7 to %struct.cgraph_edge*, !dbg !4677
  br label %for.cond, !dbg !4677

for.cond:                                         ; preds = %for.body, %cond.end
  %10 = phi %struct.cgraph_edge* [ %21, %for.body ], [ %9, %cond.end ]
  %11 = phi %struct.cgraph_edge* [ %21, %for.body ], [ %9, %cond.end ]
  %12 = phi %struct.cgraph_edge* [ %21, %for.body ], [ %9, %cond.end ], !dbg !4678
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %12, metadata !4656, metadata !DIExpression()), !dbg !4660
  %tobool8 = icmp eq %struct.cgraph_edge* %12, null, !dbg !4680
  br i1 %tobool8, label %for.end, label %for.body, !dbg !4680

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %11, metadata !4656, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %11, metadata !4656, metadata !DIExpression()), !dbg !4660
  %call_stmt = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %11, i64 0, i32 7, !dbg !4681
  %13 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4681
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %11, metadata !4656, metadata !DIExpression()), !dbg !4660
  %lto_stmt_uid = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %11, i64 0, i32 10, !dbg !4683
  %14 = load i32, i32* %lto_stmt_uid, align 4, !dbg !4683
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %11, metadata !4656, metadata !DIExpression()), !dbg !4660
  %frequency = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %11, i64 0, i32 11, !dbg !4684
  %15 = load i32, i32* %frequency, align 8, !dbg !4684
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %10, metadata !4656, metadata !DIExpression()), !dbg !4660
  %loop_nest = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %10, i64 0, i32 13, !dbg !4685
  %16 = load i16, i16* %loop_nest, align 8, !dbg !4685
  %conv = zext i16 %16 to i32, !dbg !4686
  %call9 = tail call %struct.cgraph_edge* @cgraph_clone_edge(%struct.cgraph_edge* %11, %struct.cgraph_node* %call, %union.gimple_statement_d* %13, i32 %14, i64 0, i32 %15, i32 %conv, i8 zeroext 1) #6, !dbg !4687
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %call9, metadata !4657, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %10, metadata !4656, metadata !DIExpression()), !dbg !4660
  %count10 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %10, i64 0, i32 0, !dbg !4688
  %17 = load i64, i64* %count10, align 8, !dbg !4688
  %count11 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %call9, i64 0, i32 0, !dbg !4689
  store i64 %17, i64* %count11, align 8, !dbg !4690
  %18 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e, align 8, !dbg !4691
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %18, metadata !4656, metadata !DIExpression()), !dbg !4660
  %next_callee12 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %18, i64 0, i32 6, !dbg !4692
  %19 = bitcast %struct.cgraph_edge** %next_callee12 to i64*, !dbg !4692
  %20 = load i64, i64* %19, align 8, !dbg !4692
  store i64 %20, i64* %8, align 8, !dbg !4693
  %21 = inttoptr i64 %20 to %struct.cgraph_edge*, !dbg !4694
  br label %for.cond, !dbg !4694, !llvm.loop !4695

for.end:                                          ; preds = %for.cond
  %callees13 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %call, i64 0, i32 1, !dbg !4697
  %22 = bitcast %struct.cgraph_edge** %callees13 to i64*, !dbg !4697
  %23 = load i64, i64* %22, align 8, !dbg !4697
  store i64 %23, i64* %8, align 8, !dbg !4699
  %24 = inttoptr i64 %23 to %struct.cgraph_edge*, !dbg !4700
  br label %for.cond14, !dbg !4700

for.cond14:                                       ; preds = %for.inc22, %for.end
  %25 = phi %struct.cgraph_edge* [ %28, %for.inc22 ], [ %24, %for.end ]
  %26 = phi %struct.cgraph_edge* [ %28, %for.inc22 ], [ %24, %for.end ]
  %27 = phi %struct.cgraph_edge* [ %28, %for.inc22 ], [ %24, %for.end ], !dbg !4701
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %27, metadata !4656, metadata !DIExpression()), !dbg !4660
  %tobool15 = icmp eq %struct.cgraph_edge* %27, null, !dbg !4703
  br i1 %tobool15, label %for.end23, label %for.body16, !dbg !4703

for.body16:                                       ; preds = %for.cond14
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %26, metadata !4656, metadata !DIExpression()), !dbg !4660
  %next_callee17 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %26, i64 0, i32 6, !dbg !4704
  %28 = load %struct.cgraph_edge*, %struct.cgraph_edge** %next_callee17, align 8, !dbg !4704
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %28, metadata !4658, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %26, metadata !4656, metadata !DIExpression()), !dbg !4660
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %26, i64 0, i32 2, !dbg !4706
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4706
  %cmp = icmp eq %struct.cgraph_node* %29, %old_version, !dbg !4708
  br i1 %cmp, label %if.then, label %if.end, !dbg !4709

if.then:                                          ; preds = %for.body16
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %25, metadata !4656, metadata !DIExpression()), !dbg !4660
  tail call void @cgraph_redirect_edge_callee(%struct.cgraph_edge* %25, %struct.cgraph_node* %call) #6, !dbg !4710
  br label %if.end, !dbg !4710

if.end:                                           ; preds = %if.then, %for.body16
  %tobool19 = icmp eq %struct.cgraph_edge* %28, null, !dbg !4711
  br i1 %tobool19, label %for.end23, label %for.inc22, !dbg !4713

for.inc22:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %28, metadata !4656, metadata !DIExpression()), !dbg !4660
  store %struct.cgraph_edge* %28, %struct.cgraph_edge** %e, align 8, !dbg !4714
  br label %for.cond14, !dbg !4715, !llvm.loop !4716

for.end23:                                        ; preds = %if.end, %for.cond14
  call void @llvm.dbg.value(metadata i32 0, metadata !4659, metadata !DIExpression()), !dbg !4660
  %base = getelementptr inbounds %struct.VEC_cgraph_edge_p_heap, %struct.VEC_cgraph_edge_p_heap* %redirect_callers, i64 0, i32 0, !dbg !4718
  br label %for.cond24, !dbg !4721

for.cond24:                                       ; preds = %for.body32, %for.end23
  %i.0 = phi i32 [ 0, %for.end23 ], [ %inc, %for.body32 ], !dbg !4722
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4659, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata %struct.cgraph_edge** %e, metadata !4656, metadata !DIExpression(DW_OP_deref)), !dbg !4660
  %call30 = call fastcc i32 @VEC_cgraph_edge_p_base_iterate(%struct.VEC_cgraph_edge_p_base* %base, i32 %i.0, %struct.cgraph_edge** nonnull %e) #7, !dbg !4723
  %tobool31 = icmp eq i32 %call30, 0, !dbg !4724
  br i1 %tobool31, label %for.end34, label %for.body32, !dbg !4724

for.body32:                                       ; preds = %for.cond24
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e, align 8, !dbg !4725
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %30, metadata !4656, metadata !DIExpression()), !dbg !4660
  call void @cgraph_redirect_edge_callee(%struct.cgraph_edge* %30, %struct.cgraph_node* %call) #6, !dbg !4727
  %inc = add i32 %i.0, 1, !dbg !4728
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4659, metadata !DIExpression()), !dbg !4660
  br label %for.cond24, !dbg !4729, !llvm.loop !4730

for.end34:                                        ; preds = %for.cond24
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4732
  ret %struct.cgraph_node* %call, !dbg !4733
}

declare dso_local void @tree_function_versioning(%union.tree_node*, %union.tree_node*, %struct.VEC_ipa_replace_map_p_gc*, i8 zeroext, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local void @cgraph_make_decl_local(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_call_expr(%struct.cgraph_node* %new_version) unnamed_addr #5 !dbg !4734 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %new_version, metadata !4736, metadata !DIExpression()), !dbg !4742
  %tobool = icmp eq %struct.cgraph_node* %new_version, null, !dbg !4743
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4743

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 2010, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4743
  br label %cond.end, !dbg !4743

cond.end:                                         ; preds = %entry, %cond.true
  %callers = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %new_version, i64 0, i32 2, !dbg !4744
  %decl2 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %new_version, i64 0, i32 0, !dbg !4745
  br label %for.cond, !dbg !4746

for.cond:                                         ; preds = %for.body, %cond.end
  %e.0.in = phi %struct.cgraph_edge** [ %callers, %cond.end ], [ %next_caller, %for.body ]
  %e.0 = load %struct.cgraph_edge*, %struct.cgraph_edge** %e.0.in, align 8, !dbg !4747
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e.0, metadata !4737, metadata !DIExpression()), !dbg !4742
  %tobool1 = icmp eq %struct.cgraph_edge* %e.0, null, !dbg !4748
  br i1 %tobool1, label %for.end, label %for.body, !dbg !4748

for.body:                                         ; preds = %for.cond
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 1, !dbg !4749
  %0 = bitcast %struct.cgraph_node** %caller to %struct.tree_function_decl***, !dbg !4749
  %1 = load %struct.tree_function_decl**, %struct.tree_function_decl*** %0, align 8, !dbg !4749
  %2 = load %struct.tree_function_decl*, %struct.tree_function_decl** %1, align 8, !dbg !4749
  %f = getelementptr inbounds %struct.tree_function_decl, %struct.tree_function_decl* %2, i64 0, i32 1, !dbg !4749
  %3 = load %struct.function*, %struct.function** %f, align 8, !dbg !4749
  call void @llvm.dbg.value(metadata %struct.function* %3, metadata !4738, metadata !DIExpression()), !dbg !4745
  %call_stmt = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 7, !dbg !4750
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4750
  %5 = load %union.tree_node*, %union.tree_node** %decl2, align 8, !dbg !4751
  tail call fastcc void @gimple_call_set_fndecl(%union.gimple_statement_d* %4, %union.tree_node* %5) #7, !dbg !4752
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4753
  %call = tail call zeroext i8 @maybe_clean_eh_stmt_fn(%struct.function* %3, %union.gimple_statement_d* %6) #6, !dbg !4754
  %next_caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e.0, i64 0, i32 4, !dbg !4755
  br label %for.cond, !dbg !4756, !llvm.loop !4757

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4759
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cgraph_node* @save_inline_function_body(%struct.cgraph_node* %node) local_unnamed_addr #5 !dbg !4760 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4764, metadata !DIExpression()), !dbg !4767
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !4768
  %0 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4768
  %call = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %0) #6, !dbg !4768
  %cmp = icmp eq %struct.cgraph_node* %call, %node, !dbg !4768
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4768

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 2152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4768
  br label %cond.end, !dbg !4768

cond.end:                                         ; preds = %entry, %cond.true
  tail call fastcc void @cgraph_lower_function(%struct.cgraph_node* %node) #7, !dbg !4769
  %clones = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 11, !dbg !4770
  %1 = load %struct.cgraph_node*, %struct.cgraph_node** %clones, align 8, !dbg !4770
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %1, metadata !4765, metadata !DIExpression()), !dbg !4767
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4771
  %call2 = tail call %union.tree_node* @copy_node_stat(%union.tree_node* %2) #6, !dbg !4771
  %decl3 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 0, !dbg !4772
  store %union.tree_node* %call2, %union.tree_node** %decl3, align 8, !dbg !4773
  tail call void @cgraph_insert_node_to_hashtable(%struct.cgraph_node* %1) #6, !dbg !4774
  %3 = load %union.tree_node*, %union.tree_node** %decl3, align 8, !dbg !4775
  %call5 = tail call %struct.cgraph_node* @cgraph_node(%union.tree_node* %3) #6, !dbg !4775
  %cmp6 = icmp eq %struct.cgraph_node* %1, %call5, !dbg !4775
  br i1 %cmp6, label %cond.end9, label %cond.true7, !dbg !4775

cond.true7:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 2160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4775
  br label %cond.end9, !dbg !4775

cond.end9:                                        ; preds = %cond.end, %cond.true7
  %next_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 9, !dbg !4776
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone, align 8, !dbg !4776
  %tobool = icmp eq %struct.cgraph_node* %4, null, !dbg !4778
  br i1 %tobool, label %if.end33, label %if.then, !dbg !4779

if.then:                                          ; preds = %cond.end9
  br label %for.cond, !dbg !4780

for.cond:                                         ; preds = %for.inc, %if.then
  %n.0 = phi %struct.cgraph_node* [ %4, %if.then ], [ %5, %for.inc ], !dbg !4783
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.0, metadata !4766, metadata !DIExpression()), !dbg !4767
  %next_sibling_clone12 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 9, !dbg !4784
  %5 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone12, align 8, !dbg !4784
  %tobool13 = icmp eq %struct.cgraph_node* %5, null, !dbg !4786
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.0, i64 0, i32 12, !dbg !4787
  store %struct.cgraph_node* %1, %struct.cgraph_node** %clone_of, align 8, !dbg !4787
  br i1 %tobool13, label %for.end, label %for.inc, !dbg !4786

for.inc:                                          ; preds = %for.cond
  br label %for.cond, !dbg !4788, !llvm.loop !4789

for.end:                                          ; preds = %for.cond
  %n.0.lcssa = phi %struct.cgraph_node* [ %n.0, %for.cond ], !dbg !4783
  %next_sibling_clone12.lcssa = phi %struct.cgraph_node** [ %next_sibling_clone12, %for.cond ], !dbg !4784
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.0.lcssa, metadata !4766, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.0.lcssa, metadata !4766, metadata !DIExpression()), !dbg !4767
  %clones16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 11, !dbg !4791
  %6 = bitcast %struct.cgraph_node** %clones16 to i64*, !dbg !4791
  %7 = load i64, i64* %6, align 8, !dbg !4791
  %8 = bitcast %struct.cgraph_node** %next_sibling_clone12.lcssa to i64*, !dbg !4792
  store i64 %7, i64* %8, align 8, !dbg !4792
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %clones16, align 8, !dbg !4793
  %tobool19 = icmp eq %struct.cgraph_node* %9, null, !dbg !4795
  br i1 %tobool19, label %if.end, label %if.then20, !dbg !4796

if.then20:                                        ; preds = %for.end
  %prev_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %9, i64 0, i32 10, !dbg !4797
  store %struct.cgraph_node* %n.0.lcssa, %struct.cgraph_node** %prev_sibling_clone, align 8, !dbg !4798
  br label %if.end, !dbg !4799

if.end:                                           ; preds = %for.end, %if.then20
  %10 = bitcast %struct.cgraph_node** %next_sibling_clone to i64*, !dbg !4800
  %11 = load i64, i64* %10, align 8, !dbg !4800
  store i64 %11, i64* %6, align 8, !dbg !4801
  %.cast = inttoptr i64 %11 to %struct.cgraph_node*, !dbg !4802
  %prev_sibling_clone25 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %.cast, i64 0, i32 10, !dbg !4803
  store %struct.cgraph_node* null, %struct.cgraph_node** %prev_sibling_clone25, align 8, !dbg !4804
  store %struct.cgraph_node* null, %struct.cgraph_node** %next_sibling_clone, align 8, !dbg !4805
  %prev_sibling_clone27 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 10, !dbg !4806
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %prev_sibling_clone27, align 8, !dbg !4806
  %tobool28 = icmp eq %struct.cgraph_node* %12, null, !dbg !4806
  br i1 %tobool28, label %if.end33, label %cond.true29, !dbg !4806

cond.true29:                                      ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 2172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4806
  br label %if.end33, !dbg !4806

if.end33:                                         ; preds = %if.end, %cond.end9, %cond.true29
  %clone_of34 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 12, !dbg !4807
  store %struct.cgraph_node* null, %struct.cgraph_node** %clone_of34, align 8, !dbg !4808
  store %struct.cgraph_node* null, %struct.cgraph_node** %clones, align 8, !dbg !4809
  %clones36 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 11, !dbg !4810
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %clones36, align 8, !dbg !4810
  %tobool37 = icmp eq %struct.cgraph_node* %13, null, !dbg !4812
  br i1 %tobool37, label %if.end72, label %if.then38, !dbg !4813

if.then38:                                        ; preds = %if.end33
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %13, metadata !4766, metadata !DIExpression()), !dbg !4767
  %14 = bitcast %struct.cgraph_node* %1 to i64*, !dbg !4814
  br label %for.cond40, !dbg !4818

for.cond40:                                       ; preds = %if.end70, %if.then38
  %n.1 = phi %struct.cgraph_node* [ %13, %if.then38 ], [ %n.5, %if.end70 ], !dbg !4819
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.1, metadata !4766, metadata !DIExpression()), !dbg !4767
  %cmp41 = icmp eq %struct.cgraph_node* %n.1, %1, !dbg !4820
  br i1 %cmp41, label %if.end72.loopexit, label %for.body42, !dbg !4821

for.body42:                                       ; preds = %for.cond40
  %decl43 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.1, i64 0, i32 0, !dbg !4822
  %15 = load %union.tree_node*, %union.tree_node** %decl43, align 8, !dbg !4822
  %16 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4822
  %cmp45 = icmp eq %union.tree_node* %15, %16, !dbg !4822
  br i1 %cmp45, label %cond.end48, label %cond.true46, !dbg !4822

cond.true46:                                      ; preds = %for.body42
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 2180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4822
  br label %cond.end48, !dbg !4822

cond.end48:                                       ; preds = %for.body42, %cond.true46
  %17 = load i64, i64* %14, align 8, !dbg !4823
  %18 = bitcast %struct.cgraph_node* %n.1 to i64*, !dbg !4824
  store i64 %17, i64* %18, align 8, !dbg !4824
  %clones52 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.1, i64 0, i32 11, !dbg !4825
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %clones52, align 8, !dbg !4825
  %tobool53 = icmp eq %struct.cgraph_node* %19, null, !dbg !4827
  br i1 %tobool53, label %if.else, label %if.then54, !dbg !4828

if.then54:                                        ; preds = %cond.end48
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %19, metadata !4766, metadata !DIExpression()), !dbg !4767
  br label %if.end70, !dbg !4829

if.else:                                          ; preds = %cond.end48
  %next_sibling_clone56 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.1, i64 0, i32 9, !dbg !4830
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone56, align 8, !dbg !4830
  %tobool57 = icmp eq %struct.cgraph_node* %20, null, !dbg !4832
  br i1 %tobool57, label %while.cond.preheader, label %if.then58, !dbg !4833

while.cond.preheader:                             ; preds = %if.else
  br label %while.cond, !dbg !4834

if.then58:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %20, metadata !4766, metadata !DIExpression()), !dbg !4767
  br label %if.end70, !dbg !4836

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %n.2 = phi %struct.cgraph_node* [ %22, %while.body ], [ %n.1, %while.cond.preheader ], !dbg !4819
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.2, metadata !4766, metadata !DIExpression()), !dbg !4767
  %cmp61 = icmp eq %struct.cgraph_node* %n.2, %1, !dbg !4837
  br i1 %cmp61, label %while.end, label %land.rhs, !dbg !4838

land.rhs:                                         ; preds = %while.cond
  %next_sibling_clone62 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.2, i64 0, i32 9, !dbg !4839
  %21 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone62, align 8, !dbg !4839
  %tobool63 = icmp eq %struct.cgraph_node* %21, null, !dbg !4840
  br i1 %tobool63, label %while.body, label %while.end, !dbg !4834

while.body:                                       ; preds = %land.rhs
  %clone_of64 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.2, i64 0, i32 12, !dbg !4841
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of64, align 8, !dbg !4841
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %22, metadata !4766, metadata !DIExpression()), !dbg !4767
  br label %while.cond, !dbg !4834, !llvm.loop !4842

while.end:                                        ; preds = %while.cond, %land.rhs
  %n.2.lcssa = phi %struct.cgraph_node* [ %n.2, %while.cond ], [ %n.2, %land.rhs ], !dbg !4819
  %cmp61.lcssa = phi i1 [ %cmp61, %while.cond ], [ %cmp61, %land.rhs ], !dbg !4837
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.2.lcssa, metadata !4766, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.2.lcssa, metadata !4766, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.2.lcssa, metadata !4766, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.2.lcssa, metadata !4766, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.2.lcssa, metadata !4766, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.2.lcssa, metadata !4766, metadata !DIExpression()), !dbg !4767
  br i1 %cmp61.lcssa, label %if.end70, label %if.then66, !dbg !4843

if.then66:                                        ; preds = %while.end
  %next_sibling_clone67 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %n.2.lcssa, i64 0, i32 9, !dbg !4844
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone67, align 8, !dbg !4844
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %23, metadata !4766, metadata !DIExpression()), !dbg !4767
  br label %if.end70, !dbg !4846

if.end70:                                         ; preds = %while.end, %if.then58, %if.then66, %if.then54
  %n.5 = phi %struct.cgraph_node* [ %19, %if.then54 ], [ %20, %if.then58 ], [ %23, %if.then66 ], [ %1, %while.end ], !dbg !4847
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %n.5, metadata !4766, metadata !DIExpression()), !dbg !4767
  br label %for.cond40, !dbg !4848, !llvm.loop !4849

if.end72.loopexit:                                ; preds = %for.cond40
  br label %if.end72, !dbg !4851

if.end72:                                         ; preds = %if.end72.loopexit, %if.end33
  %24 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4851
  %25 = load %union.tree_node*, %union.tree_node** %decl3, align 8, !dbg !4852
  tail call void @tree_function_versioning(%union.tree_node* %24, %union.tree_node* %25, %struct.VEC_ipa_replace_map_p_gc* null, i8 zeroext 1, %struct.bitmap_head_def* null) #6, !dbg !4853
  %26 = bitcast %struct.cgraph_node* %1 to %struct.tree_decl_common**, !dbg !4854
  %27 = load %struct.tree_decl_common*, %struct.tree_decl_common** %26, align 8, !dbg !4854
  %decl_flag_1 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %27, i64 0, i32 2, !dbg !4854
  %28 = bitcast i40* %decl_flag_1 to i64*, !dbg !4854
  %bf.load = load i64, i64* %28, align 8, !dbg !4855
  %bf.clear = and i64 %bf.load, -33554433, !dbg !4855
  store i64 %bf.clear, i64* %28, align 8, !dbg !4855
  %29 = bitcast %struct.cgraph_node* %1 to %struct.tree_decl_with_vis**, !dbg !4856
  %30 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %29, align 8, !dbg !4856
  %comdat_group = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %30, i64 0, i32 3, !dbg !4856
  store %union.tree_node* null, %union.tree_node** %comdat_group, align 8, !dbg !4857
  %31 = bitcast %struct.cgraph_node* %1 to i64**, !dbg !4858
  %32 = load i64*, i64** %31, align 8, !dbg !4858
  %bf.load78 = load i64, i64* %32, align 8, !dbg !4859
  %bf.clear79 = and i64 %bf.load78, -134217729, !dbg !4859
  store i64 %bf.clear79, i64* %32, align 8, !dbg !4859
  %33 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** %29, align 8, !dbg !4860
  %comdat_flag = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %33, i64 0, i32 4, !dbg !4860
  %34 = bitcast i24* %comdat_flag to i32*, !dbg !4860
  %bf.load82 = load i32, i32* %34, align 8, !dbg !4861
  %bf.clear83 = and i32 %bf.load82, -513, !dbg !4861
  store i32 %bf.clear83, i32* %34, align 8, !dbg !4861
  %ipa_transforms_to_apply = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %1, i64 0, i32 17, !dbg !4862
  tail call fastcc void @VEC_ipa_opt_pass_heap_free(%struct.VEC_ipa_opt_pass_heap** nonnull %ipa_transforms_to_apply) #7, !dbg !4862
  store %struct.VEC_ipa_opt_pass_heap* null, %struct.VEC_ipa_opt_pass_heap** %ipa_transforms_to_apply, align 8, !dbg !4863
  ret %struct.cgraph_node* %1, !dbg !4864
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_lower_function(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !4865 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !4867, metadata !DIExpression()), !dbg !4868
  %lowered = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 27, !dbg !4869
  %bf.load = load i16, i16* %lowered, align 4, !dbg !4869
  %bf.clear = and i16 %bf.load, 16, !dbg !4869
  %tobool = icmp eq i16 %bf.clear, 0, !dbg !4871
  br i1 %tobool, label %if.end, label %return, !dbg !4872

if.end:                                           ; preds = %entry
  %nested = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 6, !dbg !4873
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %nested, align 8, !dbg !4873
  %tobool1 = icmp eq %struct.cgraph_node* %0, null, !dbg !4875
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4876

if.then2:                                         ; preds = %if.end
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !4877
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !4877
  tail call void @lower_nested_functions(%union.tree_node* %1) #6, !dbg !4878
  %.pre = load %struct.cgraph_node*, %struct.cgraph_node** %nested, align 8, !dbg !4879
  %phitmp = icmp eq %struct.cgraph_node* %.pre, null, !dbg !4878
  br label %if.end3, !dbg !4878

if.end3:                                          ; preds = %if.end, %if.then2
  %2 = phi i1 [ true, %if.end ], [ %phitmp, %if.then2 ]
  br i1 %2, label %cond.end, label %cond.true, !dbg !4879

cond.true:                                        ; preds = %if.end3
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 511, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !4879
  br label %cond.end, !dbg !4879

cond.end:                                         ; preds = %if.end3, %cond.true
  %decl6 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !4880
  %3 = load %union.tree_node*, %union.tree_node** %decl6, align 8, !dbg !4880
  tail call void @tree_lowering_passes(%union.tree_node* %3) #6, !dbg !4881
  %bf.load8 = load i16, i16* %lowered, align 4, !dbg !4882
  %bf.set = or i16 %bf.load8, 16, !dbg !4882
  store i16 %bf.set, i16* %lowered, align 4, !dbg !4882
  br label %return, !dbg !4883

return:                                           ; preds = %entry, %cond.end
  ret void, !dbg !4883
}

declare dso_local void @cgraph_insert_node_to_hashtable(%struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_ipa_opt_pass_heap_free(%struct.VEC_ipa_opt_pass_heap** %vec_) unnamed_addr #0 !dbg !4884 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_opt_pass_heap** %vec_, metadata !4889, metadata !DIExpression()), !dbg !4890
  %0 = load %struct.VEC_ipa_opt_pass_heap*, %struct.VEC_ipa_opt_pass_heap** %vec_, align 8, !dbg !4891
  %tobool = icmp eq %struct.VEC_ipa_opt_pass_heap* %0, null, !dbg !4891
  br i1 %tobool, label %if.end, label %if.then, !dbg !4893

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_ipa_opt_pass_heap* %0 to i8*, !dbg !4893
  tail call void @free(i8* nonnull %1) #6, !dbg !4891
  br label %if.end, !dbg !4891

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_ipa_opt_pass_heap* null, %struct.VEC_ipa_opt_pass_heap** %vec_, align 8, !dbg !4893
  ret void, !dbg !4893
}

; Function Attrs: nounwind uwtable
define dso_local %union.gimple_statement_d* @cgraph_redirect_edge_call_stmt_to_callee(%struct.cgraph_edge* %e) local_unnamed_addr #5 !dbg !4894 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_edge* %e, metadata !4898, metadata !DIExpression()), !dbg !4902
  %call_stmt = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 7, !dbg !4903
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4903
  %call = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %0) #7, !dbg !4904
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4899, metadata !DIExpression()), !dbg !4902
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4905
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !4905
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !4906
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4908

lor.lhs.false:                                    ; preds = %entry
  %callee = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 2, !dbg !4909
  %2 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4909
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %2, i64 0, i32 0, !dbg !4910
  %3 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !4910
  %cmp = icmp eq %union.tree_node* %call, %3, !dbg !4911
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !4912

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call3 = tail call %struct.cgraph_node* @cgraph_get_node(%union.tree_node* nonnull %call) #6, !dbg !4913
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4914
  %decl5 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %4, i64 0, i32 0, !dbg !4915
  %5 = load %union.tree_node*, %union.tree_node** %decl5, align 8, !dbg !4915
  %call6 = tail call %struct.cgraph_node* @cgraph_get_node(%union.tree_node* %5) #6, !dbg !4916
  %cmp7 = icmp eq %struct.cgraph_node* %call3, %call6, !dbg !4917
  br i1 %cmp7, label %if.then, label %if.end, !dbg !4918

if.then:                                          ; preds = %entry, %lor.lhs.false2, %lor.lhs.false
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4919
  br label %cleanup, !dbg !4920

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4921
  %tobool9 = icmp eq %struct._IO_FILE* %7, null, !dbg !4921
  br i1 %tobool9, label %if.end19, label %if.then10, !dbg !4923

if.then10:                                        ; preds = %if.end
  %caller = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 1, !dbg !4924
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4924
  %call11 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %8) #6, !dbg !4926
  %9 = load %struct.cgraph_node*, %struct.cgraph_node** %caller, align 8, !dbg !4927
  %uid = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %9, i64 0, i32 24, !dbg !4928
  %10 = load i32, i32* %uid, align 8, !dbg !4928
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4929
  %call14 = tail call i8* @cgraph_node_name(%struct.cgraph_node* %11) #6, !dbg !4930
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4931
  %uid16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %12, i64 0, i32 24, !dbg !4932
  %13 = load i32, i32* %uid16, align 8, !dbg !4932
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0), i8* %call11, i32 %10, i8* %call14, i32 %13) #6, !dbg !4933
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4934
  %15 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4935
  %16 = load i32, i32* @dump_flags, align 4, !dbg !4936
  tail call void @print_gimple_stmt(%struct._IO_FILE* %14, %union.gimple_statement_d* %15, i32 0, i32 %16) #6, !dbg !4937
  br label %if.end19, !dbg !4938

if.end19:                                         ; preds = %if.end, %if.then10
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4939
  %combined_args_to_skip = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %17, i64 0, i32 21, i32 2, !dbg !4941
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %combined_args_to_skip, align 8, !dbg !4941
  %tobool21 = icmp eq %struct.bitmap_head_def* %18, null, !dbg !4942
  %19 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4943
  br i1 %tobool21, label %if.end29, label %if.then22, !dbg !4944

if.then22:                                        ; preds = %if.end19
  %call27 = tail call %union.gimple_statement_d* @gimple_call_copy_skip_args(%union.gimple_statement_d* %19, %struct.bitmap_head_def* nonnull %18) #6, !dbg !4945
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call27, metadata !4900, metadata !DIExpression()), !dbg !4902
  br label %if.end29, !dbg !4946

if.end29:                                         ; preds = %if.end19, %if.then22
  %new_stmt.0 = phi %union.gimple_statement_d* [ %call27, %if.then22 ], [ %19, %if.end19 ], !dbg !4943
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %new_stmt.0, metadata !4900, metadata !DIExpression()), !dbg !4902
  %call30 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %new_stmt.0) #7, !dbg !4947
  %tobool31 = icmp eq %union.tree_node* %call30, null, !dbg !4947
  br i1 %tobool31, label %if.end36, label %land.lhs.true, !dbg !4949

land.lhs.true:                                    ; preds = %if.end29
  %call32 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %new_stmt.0) #7, !dbg !4950
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %call32, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4950
  %bf.load = load i64, i64* %20, align 8, !dbg !4950
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4951
  %cmp33 = icmp eq i64 %bf.cast1, 141, !dbg !4951
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !4952

if.then34:                                        ; preds = %land.lhs.true
  %call35 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %new_stmt.0) #7, !dbg !4953
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call35, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4953
  %21 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4953
  store %union.gimple_statement_d* %new_stmt.0, %union.gimple_statement_d** %21, align 8, !dbg !4954
  br label %if.end36, !dbg !4953

if.end36:                                         ; preds = %if.end29, %if.then34, %land.lhs.true
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %callee, align 8, !dbg !4955
  %decl38 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %22, i64 0, i32 0, !dbg !4956
  %23 = load %union.tree_node*, %union.tree_node** %decl38, align 8, !dbg !4956
  tail call fastcc void @gimple_call_set_fndecl(%union.gimple_statement_d* %new_stmt.0, %union.tree_node* %23) #7, !dbg !4957
  %24 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4958
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %24) #8, !dbg !4958
  %25 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4959
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp, %union.gimple_statement_d* %25) #6, !dbg !4958
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %24, i64 24, i1 false), !dbg !4958
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24) #8, !dbg !4958
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4901, metadata !DIExpression(DW_OP_deref)), !dbg !4902
  call void @gsi_replace(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %new_stmt.0, i8 zeroext 1) #6, !dbg !4960
  %26 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4961
  %call41 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d* %26, %union.gimple_statement_d* %new_stmt.0) #6, !dbg !4962
  %caller42 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %e, i64 0, i32 1, !dbg !4963
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %caller42, align 8, !dbg !4963
  %28 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4964
  call void @cgraph_set_call_stmt_including_clones(%struct.cgraph_node* %27, %union.gimple_statement_d* %28, %union.gimple_statement_d* %new_stmt.0) #6, !dbg !4965
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4966
  %tobool44 = icmp eq %struct._IO_FILE* %29, null, !dbg !4966
  br i1 %tobool44, label %cleanup, label %if.then45, !dbg !4968

if.then45:                                        ; preds = %if.end36
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !4969
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !4971
  %31 = load %union.gimple_statement_d*, %union.gimple_statement_d** %call_stmt, align 8, !dbg !4972
  %32 = load i32, i32* @dump_flags, align 4, !dbg !4973
  call void @print_gimple_stmt(%struct._IO_FILE* %30, %union.gimple_statement_d* %31, i32 0, i32 %32) #6, !dbg !4974
  br label %cleanup, !dbg !4975

cleanup:                                          ; preds = %if.end36, %if.then45, %if.then
  %retval.0 = phi %union.gimple_statement_d* [ %6, %if.then ], [ %new_stmt.0, %if.then45 ], [ %new_stmt.0, %if.end36 ], !dbg !4902
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !4976
  ret %union.gimple_statement_d* %retval.0, !dbg !4976
}

declare dso_local %struct.cgraph_node* @cgraph_get_node(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_call_copy_skip_args(%union.gimple_statement_d*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4977 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4979, metadata !DIExpression()), !dbg !4980
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !4981
  %tobool = icmp eq i8 %call, 0, !dbg !4981
  br i1 %tobool, label %return, label %if.end, !dbg !4983

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !4984
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !4984
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4984
  br label %return, !dbg !4985

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !4980
  ret %union.tree_node* %retval.0, !dbg !4986
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_fndecl(%union.gimple_statement_d* %gs, %union.tree_node* %decl) unnamed_addr #0 !dbg !4987 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4991, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !4992, metadata !DIExpression()), !dbg !4993
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %gs) #7, !dbg !4994
  %call1 = tail call %union.tree_node* @build_fold_addr_expr_loc(i32 %call, %union.tree_node* %decl) #6, !dbg !4995
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 1, %union.tree_node* %call1) #7, !dbg !4996
  ret void, !dbg !4997
}

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_replace(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @cgraph_set_call_stmt_including_clones(%struct.cgraph_node*, %union.gimple_statement_d*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ipa_replace_map_p_base_length(%struct.VEC_ipa_replace_map_p_base* %vec_) unnamed_addr #0 !dbg !4998 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_base* %vec_, metadata !5004, metadata !DIExpression()), !dbg !5005
  %tobool = icmp eq %struct.VEC_ipa_replace_map_p_base* %vec_, null, !dbg !5006
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5006

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, %struct.VEC_ipa_replace_map_p_base* %vec_, i64 0, i32 0, !dbg !5006
  %0 = load i32, i32* %num, align 8, !dbg !5006
  br label %cond.end, !dbg !5006

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !5006
  ret i32 %cond, !dbg !5006
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ipa_replace_map* @VEC_ipa_replace_map_p_base_index(%struct.VEC_ipa_replace_map_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !5007 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ipa_replace_map_p_base* %vec_, metadata !5011, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5012, metadata !DIExpression()), !dbg !5013
  br label %land.end, !dbg !5014

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !5014
  %arrayidx = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, %struct.VEC_ipa_replace_map_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5014
  %0 = load %struct.ipa_replace_map*, %struct.ipa_replace_map** %arrayidx, align 8, !dbg !5014
  ret %struct.ipa_replace_map* %0, !dbg !5014
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local void @bitmap_print(%struct._IO_FILE*, %struct.bitmap_head_def*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cgraph_materialize_clone(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !5015 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5017, metadata !DIExpression()), !dbg !5018
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* null) #6, !dbg !5019
  %clone_of = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 12, !dbg !5020
  %0 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !5020
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %0, i64 0, i32 0, !dbg !5021
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !5021
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !5022
  %2 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !5022
  %tree_map = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 21, i32 0, !dbg !5023
  %3 = load %struct.VEC_ipa_replace_map_p_gc*, %struct.VEC_ipa_replace_map_p_gc** %tree_map, align 8, !dbg !5023
  %args_to_skip = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 21, i32 1, !dbg !5024
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %args_to_skip, align 8, !dbg !5024
  tail call void @tree_function_versioning(%union.tree_node* %1, %union.tree_node* %2, %struct.VEC_ipa_replace_map_p_gc* %3, i8 zeroext 1, %struct.bitmap_head_def* %4) #6, !dbg !5025
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !5026
  %tobool = icmp eq %struct._IO_FILE* %5, null, !dbg !5026
  br i1 %tobool, label %if.end, label %if.then, !dbg !5028

if.then:                                          ; preds = %entry
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !5029
  %decl4 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %6, i64 0, i32 0, !dbg !5031
  %7 = load %union.tree_node*, %union.tree_node** %decl4, align 8, !dbg !5031
  %8 = load i32, i32* @dump_flags, align 4, !dbg !5032
  tail call void @dump_function_to_file(%union.tree_node* %7, %struct._IO_FILE* nonnull %5, i32 %8) #6, !dbg !5033
  %9 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !5034
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @cgraph_dump_file, align 8, !dbg !5035
  %11 = load i32, i32* @dump_flags, align 4, !dbg !5036
  tail call void @dump_function_to_file(%union.tree_node* %9, %struct._IO_FILE* %10, i32 %11) #6, !dbg !5037
  br label %if.end, !dbg !5038

if.end:                                           ; preds = %entry, %if.then
  %next_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 9, !dbg !5039
  %12 = load %struct.cgraph_node*, %struct.cgraph_node** %next_sibling_clone, align 8, !dbg !5039
  %tobool6 = icmp eq %struct.cgraph_node* %12, null, !dbg !5041
  br i1 %tobool6, label %if.end.if.end10_crit_edge, label %if.then7, !dbg !5042

if.end.if.end10_crit_edge:                        ; preds = %if.end
  %13 = ptrtoint %struct.cgraph_node* %12 to i64, !dbg !5042
  br label %if.end10, !dbg !5042

if.then7:                                         ; preds = %if.end
  %prev_sibling_clone = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 10, !dbg !5043
  %14 = bitcast %struct.cgraph_node** %prev_sibling_clone to i64*, !dbg !5043
  %15 = load i64, i64* %14, align 8, !dbg !5043
  %prev_sibling_clone9 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %12, i64 0, i32 10, !dbg !5044
  %16 = bitcast %struct.cgraph_node** %prev_sibling_clone9 to i64*, !dbg !5045
  store i64 %15, i64* %16, align 8, !dbg !5045
  %.phi.trans.insert = bitcast %struct.cgraph_node** %next_sibling_clone to i64*, !dbg !5046
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !5046
  br label %if.end10, !dbg !5048

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.then7
  %17 = phi i64 [ %13, %if.end.if.end10_crit_edge ], [ %.pre, %if.then7 ], !dbg !5046
  %prev_sibling_clone11 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 10, !dbg !5049
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %prev_sibling_clone11, align 8, !dbg !5049
  %tobool12 = icmp eq %struct.cgraph_node* %18, null, !dbg !5050
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !5051

if.then13:                                        ; preds = %if.end10
  %next_sibling_clone16 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %18, i64 0, i32 9, !dbg !5052
  %19 = bitcast %struct.cgraph_node** %next_sibling_clone16 to i64*, !dbg !5053
  store i64 %17, i64* %19, align 8, !dbg !5053
  br label %if.end19, !dbg !5054

if.else:                                          ; preds = %if.end10
  %20 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !5055
  %clones = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %20, i64 0, i32 11, !dbg !5056
  %21 = bitcast %struct.cgraph_node** %clones to i64*, !dbg !5057
  store i64 %17, i64* %21, align 8, !dbg !5057
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  store %struct.cgraph_node* null, %struct.cgraph_node** %next_sibling_clone, align 8, !dbg !5058
  store %struct.cgraph_node* null, %struct.cgraph_node** %prev_sibling_clone11, align 8, !dbg !5059
  %22 = load %struct.cgraph_node*, %struct.cgraph_node** %clone_of, align 8, !dbg !5060
  %analyzed = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %22, i64 0, i32 27, !dbg !5062
  %bf.load = load i16, i16* %analyzed, align 4, !dbg !5062
  %bf.clear = and i16 %bf.load, 32, !dbg !5062
  %tobool23 = icmp eq i16 %bf.clear, 0, !dbg !5063
  br i1 %tobool23, label %land.lhs.true, label %if.end29, !dbg !5064

land.lhs.true:                                    ; preds = %if.end19
  %clones25 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %22, i64 0, i32 11, !dbg !5065
  %23 = load %struct.cgraph_node*, %struct.cgraph_node** %clones25, align 8, !dbg !5065
  %tobool26 = icmp eq %struct.cgraph_node* %23, null, !dbg !5066
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !5067

if.then27:                                        ; preds = %land.lhs.true
  tail call void @cgraph_remove_node(%struct.cgraph_node* %22) #6, !dbg !5068
  br label %if.end29, !dbg !5068

if.end29:                                         ; preds = %land.lhs.true, %if.end19, %if.then27
  store %struct.cgraph_node* null, %struct.cgraph_node** %clone_of, align 8, !dbg !5069
  tail call void @bitmap_obstack_release(%struct.bitmap_obstack* null) #6, !dbg !5070
  ret void, !dbg !5071
}

declare dso_local void @cgraph_node_remove_callees(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @gt_ggc_mx_lang_tree_node(i8*) #2

declare dso_local void @gt_pch_nx_lang_tree_node(i8*) #2

declare dso_local void @gt_ggc_mx_VEC_tree_gc(i8*) #2

declare dso_local void @gt_pch_nx_VEC_tree_gc(i8*) #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !5072 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** %vec_, metadata !5077, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !5078, metadata !DIExpression()), !dbg !5079
  %call = tail call fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** %vec_, i32 1) #7, !dbg !5080
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !5080
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !5080
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5080

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !5080
  br label %cond.end, !dbg !5080

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5080
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !5080
  ret %union.tree_node** %call1, !dbg !5080
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5081 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** %vec_, metadata !5085, metadata !DIExpression()), !dbg !5088
  call void @llvm.dbg.value(metadata i32 1, metadata !5086, metadata !DIExpression()), !dbg !5088
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %vec_, align 8, !dbg !5089
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !5089
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5089

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !5089
  br label %cond.end, !dbg !5089

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5089
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !5089
  %tobool1 = icmp eq i32 %call, 0, !dbg !5089
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !5089
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !5087, metadata !DIExpression()), !dbg !5088
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5089

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_gc** %vec_ to i8**, !dbg !5090
  %2 = load i8*, i8** %1, align 8, !dbg !5090
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %2, i32 1) #6, !dbg !5090
  store i8* %call3, i8** %1, align 8, !dbg !5090
  br label %if.end, !dbg !5090

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !5089
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !5092 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !5097, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !5098, metadata !DIExpression()), !dbg !5100
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !5101
  %0 = load i32, i32* %num1, align 8, !dbg !5101
  %inc = add i32 %0, 1, !dbg !5101
  store i32 %inc, i32* %num1, align 8, !dbg !5101
  %idxprom = zext i32 %0 to i64, !dbg !5101
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5101
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !5099, metadata !DIExpression()), !dbg !5100
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !5101
  ret %union.tree_node** %arrayidx, !dbg !5101
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5102 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !5106, metadata !DIExpression()), !dbg !5108
  call void @llvm.dbg.value(metadata i32 1, metadata !5107, metadata !DIExpression()), !dbg !5108
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !5109
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !5109

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !5109
  %0 = load i32, i32* %alloc, align 4, !dbg !5109
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !5109
  %1 = load i32, i32* %num, align 8, !dbg !5109
  %cmp1 = icmp ne i32 %0, %1, !dbg !5109
  %phitmp = zext i1 %cmp1 to i32, !dbg !5109
  br label %cond.end, !dbg !5109

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5109

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !5109
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5110 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5117, metadata !DIExpression()), !dbg !5118
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !5119
  %0 = load i32, i32* %flags, align 8, !dbg !5119
  %and = and i32 %0, 512, !dbg !5120
  %tobool = icmp eq i32 %and, 0, !dbg !5120
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !5121

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !5122
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !5122
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !5123
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !5124

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !5125
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !5125
  br label %cond.end, !dbg !5124

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !5124
  ret %struct.gimple_seq_d* %cond, !dbg !5126
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !5127 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !5134, metadata !DIExpression()), !dbg !5135
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !5136
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5136

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !5137
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !5137
  br label %cond.end, !dbg !5136

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !5136
  ret %struct.gimple_seq_node_d* %cond, !dbg !5138
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5139 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5143, metadata !DIExpression()), !dbg !5144
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !5145
  %bf.load = load i32, i32* %0, align 8, !dbg !5145
  %bf.clear = and i32 %bf.load, 255, !dbg !5145
  ret i32 %bf.clear, !dbg !5146
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5147 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5149, metadata !DIExpression()), !dbg !5150
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !5151
  ret %union.tree_node* %call, !dbg !5152
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !5153 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5157, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.value(metadata i32 1, metadata !5158, metadata !DIExpression()), !dbg !5159
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !5160
  %tobool = icmp eq i8 %call, 0, !dbg !5160
  br i1 %tobool, label %return, label %if.then, !dbg !5162

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !5163
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 1, !dbg !5163
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !5163
  br label %return, !dbg !5165

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !5166
  ret %union.tree_node* %retval.0, !dbg !5167
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5168 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5170, metadata !DIExpression()), !dbg !5171
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !5172
  %cmp = icmp eq i32 %call, 0, !dbg !5173
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !5174

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !5175
  %cmp2 = icmp ult i32 %call1, 10, !dbg !5176
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !5177
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5178 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5182, metadata !DIExpression()), !dbg !5184
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !5185
  %idxprom = zext i32 %call to i64, !dbg !5186
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !5186
  %0 = load i64, i64* %arrayidx, align 8, !dbg !5186
  call void @llvm.dbg.value(metadata i64 %0, metadata !5183, metadata !DIExpression()), !dbg !5184
  %cmp = icmp eq i64 %0, 0, !dbg !5187
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !5187

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !5187
  br label %cond.end, !dbg !5187

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !5188
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !5189
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !5190
  ret %union.tree_node** %2, !dbg !5191
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5192 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5196, metadata !DIExpression()), !dbg !5197
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !5198
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !5199
  ret i32 %call1, !dbg !5200
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !5201 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !5205, metadata !DIExpression()), !dbg !5206
  %idxprom = zext i32 %code to i64, !dbg !5207
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !5207
  %0 = load i32, i32* %arrayidx, align 4, !dbg !5207
  ret i32 %0, !dbg !5208
}

declare dso_local void @assign_assembler_name_if_neeeded(%union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.gimple_seq_d* @gimple_body(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @dump_function(i32, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !5209 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !5215, metadata !DIExpression()), !dbg !5216
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !5217
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5217

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !5217
  %0 = load i32, i32* %num, align 8, !dbg !5217
  br label %cond.end, !dbg !5217

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !5217
  ret i32 %cond, !dbg !5217
}

declare dso_local void @spec_qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_address(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !5218 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !5222, metadata !DIExpression()), !dbg !5223
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !5224
  %arraydecay = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 0, !dbg !5224
  %cond = select i1 %tobool, %union.tree_node** null, %union.tree_node** %arraydecay, !dbg !5224
  ret %union.tree_node** %cond, !dbg !5224
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_ctor(i8* %p1, i8* %p2) #5 !dbg !5225 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !5227, metadata !DIExpression()), !dbg !5233
  call void @llvm.dbg.value(metadata i8* %p2, metadata !5228, metadata !DIExpression()), !dbg !5233
  %0 = bitcast i8* %p1 to %union.tree_node**, !dbg !5234
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !5235
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !5229, metadata !DIExpression()), !dbg !5233
  %2 = bitcast i8* %p2 to %union.tree_node**, !dbg !5236
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !5237
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !5230, metadata !DIExpression()), !dbg !5233
  %call = tail call zeroext i16 @decl_init_priority_lookup(%union.tree_node* %1) #6, !dbg !5238
  call void @llvm.dbg.value(metadata i16 %call, metadata !5231, metadata !DIExpression()), !dbg !5233
  %call1 = tail call zeroext i16 @decl_init_priority_lookup(%union.tree_node* %3) #6, !dbg !5239
  call void @llvm.dbg.value(metadata i16 %call1, metadata !5232, metadata !DIExpression()), !dbg !5233
  %cmp = icmp ult i16 %call, %call1, !dbg !5240
  br i1 %cmp, label %cleanup, label %if.else, !dbg !5242

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i16 %call, metadata !5231, metadata !DIExpression()), !dbg !5233
  call void @llvm.dbg.value(metadata i16 %call1, metadata !5232, metadata !DIExpression()), !dbg !5233
  %cmp4 = icmp ugt i16 %call, %call1, !dbg !5243
  br i1 %cmp4, label %cleanup, label %if.else7, !dbg !5245

if.else7:                                         ; preds = %if.else
  %sub.ptr.lhs.cast = ptrtoint i8* %p1 to i64, !dbg !5246
  %sub.ptr.rhs.cast = ptrtoint i8* %p2 to i64, !dbg !5246
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5246
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !5246
  %conv8 = trunc i64 %4 to i32, !dbg !5247
  br label %cleanup, !dbg !5248

cleanup:                                          ; preds = %if.else, %entry, %if.else7
  %retval.0 = phi i32 [ %conv8, %if.else7 ], [ -1, %entry ], [ 1, %if.else ], !dbg !5249
  ret i32 %retval.0, !dbg !5250
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_cdtor(i8 zeroext %ctor_p, %union.tree_node** %cdtors, i64 %len) unnamed_addr #5 !dbg !5251 {
entry:
  %body = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata i8 %ctor_p, metadata !5255, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.value(metadata %union.tree_node** %cdtors, metadata !5256, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.value(metadata i64 %len, metadata !5257, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.value(metadata i64 0, metadata !5258, metadata !DIExpression()), !dbg !5266
  %0 = bitcast %union.tree_node** %body to i8*, !dbg !5267
  %tobool = icmp eq i8 %ctor_p, 0, !dbg !5268
  %conv24 = select i1 %tobool, i8 68, i8 73, !dbg !5267
  br i1 %tobool, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !5269

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %while.cond, !dbg !5269

entry.split.us:                                   ; preds = %entry
  br label %while.cond.us, !dbg !5269

while.cond.us:                                    ; preds = %cond.end19.us, %entry.split.us
  %i.0.us = phi i64 [ 0, %entry.split.us ], [ %i.2.us.us.lcssa, %cond.end19.us ], !dbg !5270
  call void @llvm.dbg.value(metadata i64 %i.0.us, metadata !5258, metadata !DIExpression()), !dbg !5266
  %cmp.us = icmp ult i64 %i.0.us, %len, !dbg !5271
  br i1 %cmp.us, label %while.body.us, label %while.end.us-lcssa.us, !dbg !5269

while.body.us:                                    ; preds = %while.cond.us
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5272
  call void @llvm.dbg.value(metadata i16 0, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5259, metadata !DIExpression()), !dbg !5267
  store %union.tree_node* null, %union.tree_node** %body, align 8, !dbg !5273
  br label %do.body.us.us, !dbg !5274

cond.true17.us:                                   ; preds = %do.end.us-lcssa.us.us
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 223, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !5275
  %.pre28 = load %union.tree_node*, %union.tree_node** %body, align 8, !dbg !5276
  br label %cond.end19.us, !dbg !5275

cond.end19.us:                                    ; preds = %cond.true17.us, %do.end.us-lcssa.us.us
  %1 = phi %union.tree_node* [ %.pre28, %cond.true17.us ], [ %4, %do.end.us-lcssa.us.us ], !dbg !5276
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !5259, metadata !DIExpression()), !dbg !5267
  %conv25.us = zext i16 %priority.2.us.us.lcssa to i32, !dbg !5277
  call void @cgraph_build_static_cdtor(i8 signext %conv24, %union.tree_node* %1, i32 %conv25.us) #7, !dbg !5278
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5279
  br label %while.cond.us, !dbg !5269, !llvm.loop !5280

do.body.us.us:                                    ; preds = %while.body.us, %cleanup.us.us
  %i.1.us.us = phi i64 [ %i.0.us, %while.body.us ], [ %i.2.us.us, %cleanup.us.us ], !dbg !5270
  %priority.0.us.us = phi i16 [ 0, %while.body.us ], [ %priority.2.us.us, %cleanup.us.us ], !dbg !5281
  call void @llvm.dbg.value(metadata i16 %priority.0.us.us, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata i64 %i.1.us.us, metadata !5258, metadata !DIExpression()), !dbg !5266
  %arrayidx.us.us = getelementptr inbounds %union.tree_node*, %union.tree_node** %cdtors, i64 %i.1.us.us, !dbg !5282
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx.us.us, align 8, !dbg !5282
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !5261, metadata !DIExpression()), !dbg !5267
  %call2.us.us = call zeroext i16 @decl_fini_priority_lookup(%union.tree_node* %2) #6, !dbg !5283
  call void @llvm.dbg.value(metadata i16 %call2.us.us, metadata !5264, metadata !DIExpression()), !dbg !5268
  %3 = load %union.tree_node*, %union.tree_node** %body, align 8, !dbg !5284
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !5259, metadata !DIExpression()), !dbg !5267
  %tobool5.us.us = icmp eq %union.tree_node* %3, null, !dbg !5284
  br i1 %tobool5.us.us, label %if.end11.us.us, label %if.else.us.us, !dbg !5286

if.else.us.us:                                    ; preds = %do.body.us.us
  %cmp8.us.us = icmp eq i16 %call2.us.us, %priority.0.us.us, !dbg !5287
  br i1 %cmp8.us.us, label %if.end11.us.us, label %cleanup.us.us, !dbg !5289

if.end11.us.us:                                   ; preds = %if.else.us.us, %do.body.us.us
  %priority.1.us.us = phi i16 [ %call2.us.us, %do.body.us.us ], [ %priority.0.us.us, %if.else.us.us ], !dbg !5267
  call void @llvm.dbg.value(metadata i16 %priority.1.us.us, metadata !5262, metadata !DIExpression()), !dbg !5267
  %call12.us.us = call %union.tree_node* @build_function_call_expr(i32 0, %union.tree_node* %2, %union.tree_node* null) #6, !dbg !5290
  call void @llvm.dbg.value(metadata %union.tree_node** %body, metadata !5259, metadata !DIExpression(DW_OP_deref)), !dbg !5267
  call void @append_to_statement_list(%union.tree_node* %call12.us.us, %union.tree_node** nonnull %body) #6, !dbg !5291
  %inc.us.us = add i64 %i.1.us.us, 1, !dbg !5292
  call void @llvm.dbg.value(metadata i64 %inc.us.us, metadata !5258, metadata !DIExpression()), !dbg !5266
  br label %cleanup.us.us, !dbg !5293

cleanup.us.us:                                    ; preds = %if.end11.us.us, %if.else.us.us
  %i.2.us.us = phi i64 [ %inc.us.us, %if.end11.us.us ], [ %i.1.us.us, %if.else.us.us ], !dbg !5266
  %priority.2.us.us = phi i16 [ %priority.1.us.us, %if.end11.us.us ], [ %priority.0.us.us, %if.else.us.us ], !dbg !5281
  %cleanup.dest.slot.0.us.us = phi i1 [ true, %if.end11.us.us ], [ false, %if.else.us.us ]
  call void @llvm.dbg.value(metadata i16 %priority.2.us.us, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata i64 %i.2.us.us, metadata !5258, metadata !DIExpression()), !dbg !5266
  %cmp13.us.us = icmp ult i64 %i.2.us.us, %len, !dbg !5294
  %or.cond.us.us = and i1 %cleanup.dest.slot.0.us.us, %cmp13.us.us
  br i1 %or.cond.us.us, label %do.body.us.us, label %do.end.us-lcssa.us.us, !llvm.loop !5295

do.end.us-lcssa.us.us:                            ; preds = %cleanup.us.us
  %i.2.us.us.lcssa = phi i64 [ %i.2.us.us, %cleanup.us.us ], !dbg !5266
  %priority.2.us.us.lcssa = phi i16 [ %priority.2.us.us, %cleanup.us.us ], !dbg !5281
  call void @llvm.dbg.value(metadata i64 %i.2.us.us.lcssa, metadata !5258, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.value(metadata i16 %priority.2.us.us.lcssa, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata i64 %i.2.us.us.lcssa, metadata !5258, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.value(metadata i16 %priority.2.us.us.lcssa, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata i64 %i.2.us.us.lcssa, metadata !5258, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.value(metadata i16 %priority.2.us.us.lcssa, metadata !5262, metadata !DIExpression()), !dbg !5267
  %4 = load %union.tree_node*, %union.tree_node** %body, align 8, !dbg !5275
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !5259, metadata !DIExpression()), !dbg !5267
  %cmp15.us = icmp eq %union.tree_node* %4, null, !dbg !5275
  br i1 %cmp15.us, label %cond.true17.us, label %cond.end19.us, !dbg !5275

while.end.us-lcssa.us:                            ; preds = %while.cond.us
  br label %while.end, !dbg !5297

while.cond:                                       ; preds = %cond.end19, %entry.entry.split_crit_edge
  %i.0 = phi i64 [ 0, %entry.entry.split_crit_edge ], [ %i.2.lcssa, %cond.end19 ], !dbg !5270
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !5258, metadata !DIExpression()), !dbg !5266
  %cmp = icmp ult i64 %i.0, %len, !dbg !5271
  br i1 %cmp, label %while.body, label %while.end.us-lcssa, !dbg !5269

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5272
  call void @llvm.dbg.value(metadata i16 0, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5259, metadata !DIExpression()), !dbg !5267
  store %union.tree_node* null, %union.tree_node** %body, align 8, !dbg !5273
  br label %do.body, !dbg !5274

do.body:                                          ; preds = %cleanup, %while.body
  %i.1 = phi i64 [ %i.0, %while.body ], [ %i.2, %cleanup ], !dbg !5270
  %priority.0 = phi i16 [ 0, %while.body ], [ %priority.2, %cleanup ], !dbg !5281
  call void @llvm.dbg.value(metadata i16 %priority.0, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !5258, metadata !DIExpression()), !dbg !5266
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %cdtors, i64 %i.1, !dbg !5282
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !5282
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !5261, metadata !DIExpression()), !dbg !5267
  %call = call zeroext i16 @decl_init_priority_lookup(%union.tree_node* %5) #6, !dbg !5298
  call void @llvm.dbg.value(metadata i16 %call, metadata !5264, metadata !DIExpression()), !dbg !5268
  %6 = load %union.tree_node*, %union.tree_node** %body, align 8, !dbg !5284
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !5259, metadata !DIExpression()), !dbg !5267
  %tobool5 = icmp eq %union.tree_node* %6, null, !dbg !5284
  br i1 %tobool5, label %if.end11, label %if.else, !dbg !5286

if.else:                                          ; preds = %do.body
  %cmp8 = icmp eq i16 %call, %priority.0, !dbg !5287
  br i1 %cmp8, label %if.end11, label %cleanup, !dbg !5289

if.end11:                                         ; preds = %if.else, %do.body
  %priority.1 = phi i16 [ %call, %do.body ], [ %priority.0, %if.else ], !dbg !5267
  call void @llvm.dbg.value(metadata i16 %priority.1, metadata !5262, metadata !DIExpression()), !dbg !5267
  %call12 = call %union.tree_node* @build_function_call_expr(i32 0, %union.tree_node* %5, %union.tree_node* null) #6, !dbg !5290
  call void @llvm.dbg.value(metadata %union.tree_node** %body, metadata !5259, metadata !DIExpression(DW_OP_deref)), !dbg !5267
  call void @append_to_statement_list(%union.tree_node* %call12, %union.tree_node** nonnull %body) #6, !dbg !5291
  %inc = add i64 %i.1, 1, !dbg !5292
  call void @llvm.dbg.value(metadata i64 %inc, metadata !5258, metadata !DIExpression()), !dbg !5266
  br label %cleanup, !dbg !5293

cleanup:                                          ; preds = %if.else, %if.end11
  %i.2 = phi i64 [ %inc, %if.end11 ], [ %i.1, %if.else ], !dbg !5266
  %priority.2 = phi i16 [ %priority.1, %if.end11 ], [ %priority.0, %if.else ], !dbg !5281
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end11 ], [ false, %if.else ]
  call void @llvm.dbg.value(metadata i16 %priority.2, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !5258, metadata !DIExpression()), !dbg !5266
  %cmp13 = icmp ult i64 %i.2, %len, !dbg !5294
  %or.cond = and i1 %cleanup.dest.slot.0, %cmp13
  br i1 %or.cond, label %do.body, label %do.end.us-lcssa, !llvm.loop !5295

do.end.us-lcssa:                                  ; preds = %cleanup
  %i.2.lcssa = phi i64 [ %i.2, %cleanup ], !dbg !5266
  %priority.2.lcssa = phi i16 [ %priority.2, %cleanup ], !dbg !5281
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5258, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.value(metadata i16 %priority.2.lcssa, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5258, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.value(metadata i16 %priority.2.lcssa, metadata !5262, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !5258, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.value(metadata i16 %priority.2.lcssa, metadata !5262, metadata !DIExpression()), !dbg !5267
  %7 = load %union.tree_node*, %union.tree_node** %body, align 8, !dbg !5275
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !5259, metadata !DIExpression()), !dbg !5267
  %cmp15 = icmp eq %union.tree_node* %7, null, !dbg !5275
  br i1 %cmp15, label %cond.true17, label %cond.end19, !dbg !5275

cond.true17:                                      ; preds = %do.end.us-lcssa
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 223, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !5275
  %.pre = load %union.tree_node*, %union.tree_node** %body, align 8, !dbg !5276
  br label %cond.end19, !dbg !5275

cond.end19:                                       ; preds = %do.end.us-lcssa, %cond.true17
  %8 = phi %union.tree_node* [ %7, %do.end.us-lcssa ], [ %.pre, %cond.true17 ], !dbg !5276
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !5259, metadata !DIExpression()), !dbg !5267
  %conv25 = zext i16 %priority.2.lcssa to i32, !dbg !5277
  call void @cgraph_build_static_cdtor(i8 signext %conv24, %union.tree_node* %8, i32 %conv25) #7, !dbg !5278
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !5279
  br label %while.cond, !dbg !5269, !llvm.loop !5280

while.end.us-lcssa:                               ; preds = %while.cond
  br label %while.end, !dbg !5297

while.end:                                        ; preds = %while.end.us-lcssa.us, %while.end.us-lcssa
  ret void, !dbg !5297
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !5299 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !5303, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.value(metadata i32 0, metadata !5304, metadata !DIExpression()), !dbg !5305
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !5306
  br label %cond.true, !dbg !5306

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5306

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !5306

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !5306

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !5307
  store i32 0, i32* %num3, align 8, !dbg !5307
  br label %if.end, !dbg !5307

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !5306
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_dtor(i8* %p1, i8* %p2) #5 !dbg !5309 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !5311, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.value(metadata i8* %p2, metadata !5312, metadata !DIExpression()), !dbg !5317
  %0 = bitcast i8* %p1 to %union.tree_node**, !dbg !5318
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !5319
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !5313, metadata !DIExpression()), !dbg !5317
  %2 = bitcast i8* %p2 to %union.tree_node**, !dbg !5320
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !5321
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !5314, metadata !DIExpression()), !dbg !5317
  %call = tail call zeroext i16 @decl_fini_priority_lookup(%union.tree_node* %1) #6, !dbg !5322
  call void @llvm.dbg.value(metadata i16 %call, metadata !5315, metadata !DIExpression()), !dbg !5317
  %call1 = tail call zeroext i16 @decl_fini_priority_lookup(%union.tree_node* %3) #6, !dbg !5323
  call void @llvm.dbg.value(metadata i16 %call1, metadata !5316, metadata !DIExpression()), !dbg !5317
  %cmp = icmp ult i16 %call, %call1, !dbg !5324
  br i1 %cmp, label %cleanup, label %if.else, !dbg !5326

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i16 %call, metadata !5315, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.value(metadata i16 %call1, metadata !5316, metadata !DIExpression()), !dbg !5317
  %cmp4 = icmp ugt i16 %call, %call1, !dbg !5327
  br i1 %cmp4, label %cleanup, label %if.else7, !dbg !5329

if.else7:                                         ; preds = %if.else
  %sub.ptr.lhs.cast = ptrtoint i8* %p1 to i64, !dbg !5330
  %sub.ptr.rhs.cast = ptrtoint i8* %p2 to i64, !dbg !5330
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5330
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !5330
  %conv8 = trunc i64 %4 to i32, !dbg !5331
  br label %cleanup, !dbg !5332

cleanup:                                          ; preds = %if.else, %entry, %if.else7
  %retval.0 = phi i32 [ %conv8, %if.else7 ], [ -1, %entry ], [ 1, %if.else ], !dbg !5333
  ret i32 %retval.0, !dbg !5334
}

declare dso_local zeroext i16 @decl_init_priority_lookup(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i16 @decl_fini_priority_lookup(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @append_to_statement_list(%union.tree_node*, %union.tree_node**) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_function_call_expr(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @process_function_and_variable_attributes(%struct.cgraph_node* %first, %struct.varpool_node* %first_var) unnamed_addr #5 !dbg !5335 {
entry:
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %first, metadata !5339, metadata !DIExpression()), !dbg !5351
  call void @llvm.dbg.value(metadata %struct.varpool_node* %first_var, metadata !5340, metadata !DIExpression()), !dbg !5351
  br label %for.cond, !dbg !5352

for.cond:                                         ; preds = %for.inc, %entry
  %node.0.in = phi %struct.cgraph_node** [ @cgraph_nodes, %entry ], [ %next, %for.inc ]
  %node.0 = load %struct.cgraph_node*, %struct.cgraph_node** %node.0.in, align 8, !dbg !5353
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node.0, metadata !5341, metadata !DIExpression()), !dbg !5351
  %cmp = icmp eq %struct.cgraph_node* %node.0, %first, !dbg !5354
  br i1 %cmp, label %for.end, label %for.body, !dbg !5355

for.body:                                         ; preds = %for.cond
  %decl1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 0, !dbg !5356
  %0 = load %union.tree_node*, %union.tree_node** %decl1, align 8, !dbg !5356
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !5343, metadata !DIExpression()), !dbg !5357
  %preserve_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5358
  %1 = bitcast i40* %preserve_flag to i64*, !dbg !5358
  %bf.load = load i64, i64* %1, align 8, !dbg !5358
  %bf.cast3 = and i64 %bf.load, 8192, !dbg !5358
  %tobool = icmp eq i64 %bf.cast3, 0, !dbg !5358
  br i1 %tobool, label %if.end8, label %if.then, !dbg !5360

if.then:                                          ; preds = %for.body
  tail call void @mark_decl_referenced(%union.tree_node* %0) #6, !dbg !5361
  %finalized = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 18, i32 2, !dbg !5363
  %bf.load2 = load i8, i8* %finalized, align 8, !dbg !5363
  %bf.clear4 = and i8 %bf.load2, 4, !dbg !5363
  %tobool6 = icmp eq i8 %bf.clear4, 0, !dbg !5365
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5366

if.then7:                                         ; preds = %if.then
  tail call void @cgraph_mark_needed_node(%struct.cgraph_node* %node.0) #6, !dbg !5367
  br label %if.end8, !dbg !5367

if.end8:                                          ; preds = %if.then, %for.body, %if.then7
  %attributes = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !5368
  %2 = load %union.tree_node*, %union.tree_node** %attributes, align 8, !dbg !5368
  %call = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i64 0, i64 0), %union.tree_node* %2) #6, !dbg !5370
  %tobool10 = icmp eq %union.tree_node* %call, null, !dbg !5370
  br i1 %tobool10, label %for.inc, label %if.then11, !dbg !5371

if.then11:                                        ; preds = %if.end8
  %3 = bitcast %struct.cgraph_node* %node.0 to i64**, !dbg !5372
  %4 = load i64*, i64** %3, align 8, !dbg !5372
  %bf.load13 = load i64, i64* %4, align 8, !dbg !5372
  %bf.cast164 = and i64 %bf.load13, 134217728, !dbg !5372
  %tobool17 = icmp eq i64 %bf.cast164, 0, !dbg !5372
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !5375

if.then18:                                        ; preds = %if.then11
  %locus = getelementptr inbounds i64, i64* %4, i64 3, !dbg !5376
  %5 = bitcast i64* %locus to i32*, !dbg !5376
  %6 = load i32, i32* %5, align 8, !dbg !5376
  %call20 = tail call zeroext i8 (i32, i32, i8*, ...) @warning_at(i32 %6, i32 45, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.61, i64 0, i64 0)) #6, !dbg !5377
  br label %for.inc, !dbg !5377

if.else:                                          ; preds = %if.then11
  %finalized22 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 18, i32 2, !dbg !5378
  %bf.load23 = load i8, i8* %finalized22, align 8, !dbg !5378
  %bf.clear25 = and i8 %bf.load23, 4, !dbg !5378
  %tobool27 = icmp eq i8 %bf.clear25, 0, !dbg !5380
  br i1 %tobool27, label %for.inc, label %if.then28, !dbg !5381

if.then28:                                        ; preds = %if.else
  tail call void @cgraph_mark_needed_node(%struct.cgraph_node* %node.0) #6, !dbg !5382
  br label %for.inc, !dbg !5382

for.inc:                                          ; preds = %if.else, %if.end8, %if.then28, %if.then18
  %next = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node.0, i64 0, i32 3, !dbg !5383
  br label %for.cond, !dbg !5384, !llvm.loop !5385

for.end:                                          ; preds = %for.cond
  br label %for.cond32, !dbg !5387

for.cond32:                                       ; preds = %for.inc84, %for.end
  %vnode.0.in = phi %struct.varpool_node** [ @varpool_nodes, %for.end ], [ %next85, %for.inc84 ]
  %vnode.0 = load %struct.varpool_node*, %struct.varpool_node** %vnode.0.in, align 8, !dbg !5388
  call void @llvm.dbg.value(metadata %struct.varpool_node* %vnode.0, metadata !5342, metadata !DIExpression()), !dbg !5351
  %cmp33 = icmp eq %struct.varpool_node* %vnode.0, %first_var, !dbg !5389
  br i1 %cmp33, label %for.end86, label %for.body34, !dbg !5390

for.body34:                                       ; preds = %for.cond32
  %decl36 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.0, i64 0, i32 0, !dbg !5391
  %7 = load %union.tree_node*, %union.tree_node** %decl36, align 8, !dbg !5391
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !5347, metadata !DIExpression()), !dbg !5392
  %preserve_flag38 = getelementptr inbounds %union.tree_node, %union.tree_node* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5393
  %8 = bitcast i40* %preserve_flag38 to i64*, !dbg !5393
  %bf.load39 = load i64, i64* %8, align 8, !dbg !5393
  %bf.cast421 = and i64 %bf.load39, 8192, !dbg !5393
  %tobool43 = icmp eq i64 %bf.cast421, 0, !dbg !5393
  br i1 %tobool43, label %if.end55, label %if.then44, !dbg !5395

if.then44:                                        ; preds = %for.body34
  tail call void @mark_decl_referenced(%union.tree_node* %7) #6, !dbg !5396
  %force_output = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.0, i64 0, i32 5, !dbg !5398
  %bf.load45 = load i8, i8* %force_output, align 4, !dbg !5399
  %bf.set = or i8 %bf.load45, 2, !dbg !5399
  store i8 %bf.set, i8* %force_output, align 4, !dbg !5399
  %bf.clear50 = and i8 %bf.load45, 8, !dbg !5400
  %tobool52 = icmp eq i8 %bf.clear50, 0, !dbg !5402
  br i1 %tobool52, label %if.end55, label %if.then53, !dbg !5403

if.then53:                                        ; preds = %if.then44
  tail call void @varpool_mark_needed_node(%struct.varpool_node* %vnode.0) #6, !dbg !5404
  br label %if.end55, !dbg !5404

if.end55:                                         ; preds = %if.then44, %for.body34, %if.then53
  %attributes57 = getelementptr inbounds %union.tree_node, %union.tree_node* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !5405
  %9 = load %union.tree_node*, %union.tree_node** %attributes57, align 8, !dbg !5405
  %call58 = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i64 0, i64 0), %union.tree_node* %9) #6, !dbg !5407
  %tobool59 = icmp eq %union.tree_node* %call58, null, !dbg !5407
  br i1 %tobool59, label %for.inc84, label %if.then60, !dbg !5408

if.then60:                                        ; preds = %if.end55
  %10 = bitcast %struct.varpool_node* %vnode.0 to i64**, !dbg !5409
  %11 = load i64*, i64** %10, align 8, !dbg !5409
  %bf.load63 = load i64, i64* %11, align 8, !dbg !5409
  %bf.cast662 = and i64 %bf.load63, 134217728, !dbg !5409
  %tobool67 = icmp eq i64 %bf.cast662, 0, !dbg !5409
  br i1 %tobool67, label %if.then68, label %if.else73, !dbg !5412

if.then68:                                        ; preds = %if.then60
  %locus71 = getelementptr inbounds i64, i64* %11, i64 3, !dbg !5413
  %12 = bitcast i64* %locus71 to i32*, !dbg !5413
  %13 = load i32, i32* %12, align 8, !dbg !5413
  %call72 = tail call zeroext i8 (i32, i32, i8*, ...) @warning_at(i32 %13, i32 45, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.61, i64 0, i64 0)) #6, !dbg !5414
  br label %for.inc84, !dbg !5414

if.else73:                                        ; preds = %if.then60
  %finalized74 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.0, i64 0, i32 5, !dbg !5415
  %bf.load75 = load i8, i8* %finalized74, align 4, !dbg !5415
  %bf.clear77 = and i8 %bf.load75, 8, !dbg !5415
  %tobool79 = icmp eq i8 %bf.clear77, 0, !dbg !5417
  br i1 %tobool79, label %for.inc84, label %if.then80, !dbg !5418

if.then80:                                        ; preds = %if.else73
  tail call void @varpool_mark_needed_node(%struct.varpool_node* %vnode.0) #6, !dbg !5419
  br label %for.inc84, !dbg !5419

for.inc84:                                        ; preds = %if.else73, %if.end55, %if.then80, %if.then68
  %next85 = getelementptr inbounds %struct.varpool_node, %struct.varpool_node* %vnode.0, i64 0, i32 1, !dbg !5420
  br label %for.cond32, !dbg !5421, !llvm.loop !5422

for.end86:                                        ; preds = %for.cond32
  ret void, !dbg !5424
}

declare dso_local void @cgraph_remove_node(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @mark_decl_referenced(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @warning_at(i32, i32, i8*, ...) local_unnamed_addr #2

declare dso_local void @varpool_mark_needed_node(%struct.varpool_node*) local_unnamed_addr #2

declare dso_local void @announce_function(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @tree_rest_of_compilation(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @assemble_alias(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @assemble_thunk(%struct.cgraph_node* %node) unnamed_addr #5 !dbg !5425 {
entry:
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %vargs = alloca %struct.VEC_tree_heap*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp140 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp146 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp151 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.cgraph_node* %node, metadata !5427, metadata !DIExpression()), !dbg !5463
  %this_adjusting1 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 22, i32 3, !dbg !5464
  %0 = load i8, i8* %this_adjusting1, align 8, !dbg !5464
  call void @llvm.dbg.value(metadata i8 %0, metadata !5428, metadata !DIExpression()), !dbg !5463
  %fixed_offset3 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 22, i32 0, !dbg !5465
  %1 = load i64, i64* %fixed_offset3, align 8, !dbg !5465
  call void @llvm.dbg.value(metadata i64 %1, metadata !5429, metadata !DIExpression()), !dbg !5463
  %virtual_value5 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 22, i32 1, !dbg !5466
  %2 = load i64, i64* %virtual_value5, align 8, !dbg !5466
  call void @llvm.dbg.value(metadata i64 %2, metadata !5430, metadata !DIExpression()), !dbg !5463
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5431, metadata !DIExpression()), !dbg !5463
  %alias7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 22, i32 2, !dbg !5467
  %3 = load %union.tree_node*, %union.tree_node** %alias7, align 8, !dbg !5467
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !5432, metadata !DIExpression()), !dbg !5463
  %decl = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 0, !dbg !5468
  %4 = load %union.tree_node*, %union.tree_node** %decl, align 8, !dbg !5468
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !5433, metadata !DIExpression()), !dbg !5463
  %arguments = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 2, !dbg !5469
  %5 = load %union.tree_node*, %union.tree_node** %arguments, align 8, !dbg !5469
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !5434, metadata !DIExpression()), !dbg !5463
  store %union.tree_node* %4, %union.tree_node** @current_function_decl, align 8, !dbg !5470
  %tobool = icmp eq i8 %0, 0, !dbg !5471
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5472

land.lhs.true:                                    ; preds = %entry
  %6 = load i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 0, i32 28), align 8, !dbg !5473
  %call = tail call zeroext i8 %6(%union.tree_node* %4, i64 %1, i64 %2, %union.tree_node* %3) #6, !dbg !5474
  %tobool9 = icmp eq i8 %call, 0, !dbg !5474
  br i1 %tobool9, label %if.else, label %if.then, !dbg !5475

if.then:                                          ; preds = %land.lhs.true
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5476
  %7 = load i32, i32* %locus, align 8, !dbg !5476
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !5476
  %call10 = tail call %union.tree_node* @build_decl_stat(i32 %7, i32 36, %union.tree_node* null, %union.tree_node* %8) #6, !dbg !5476
  %result = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 3, !dbg !5477
  store %union.tree_node* %call10, %union.tree_node** %result, align 8, !dbg !5478
  %call12 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %4) #6, !dbg !5479
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %call12, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5479
  %str = bitcast i32* %id to i8**, !dbg !5479
  %9 = load i8*, i8** %str, align 8, !dbg !5479
  call void @llvm.dbg.value(metadata i8* %9, metadata !5435, metadata !DIExpression()), !dbg !5480
  %call13 = tail call %union.tree_node* @make_node_stat(i32 4) #6, !dbg !5481
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !5438, metadata !DIExpression()), !dbg !5480
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5482
  store %union.tree_node* %5, %union.tree_node** %10, align 8, !dbg !5483
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !5484
  store %union.tree_node* %call13, %union.tree_node** %initial, align 8, !dbg !5485
  tail call void @init_function_start(%union.tree_node* %4) #6, !dbg !5486
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5487
  %is_thunk = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 20, !dbg !5488
  %bf.load = load i32, i32* %is_thunk, align 8, !dbg !5489
  %bf.set = or i32 %bf.load, 1073741824, !dbg !5489
  store i32 %bf.set, i32* %is_thunk, align 8, !dbg !5489
  tail call void @assemble_start_function(%union.tree_node* %4, i8* %9) #6, !dbg !5490
  %12 = load void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 0, i32 27), align 8, !dbg !5491
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !5492
  tail call void %12(%struct._IO_FILE* %13, %union.tree_node* %4, i64 %1, i64 %2, %union.tree_node* %3) #6, !dbg !5493
  tail call void @assemble_end_function(%union.tree_node* %4, i8* %9) #6, !dbg !5494
  tail call void @init_insn_lengths() #6, !dbg !5495
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5496
  tail call void @free_after_compilation(%struct.function* %14) #6, !dbg !5497
  tail call void @set_cfun(%struct.function* null) #6, !dbg !5498
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5499
  %bf.load15 = load i64, i64* %15, align 8, !dbg !5500
  %bf.set17 = or i64 %bf.load15, 4194304, !dbg !5500
  store i64 %bf.set17, i64* %15, align 8, !dbg !5500
  br label %if.end157, !dbg !5501

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !5502
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #8, !dbg !5502
  call void @llvm.dbg.value(metadata i32 0, metadata !5446, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5450, metadata !DIExpression()), !dbg !5503
  %17 = bitcast %struct.VEC_tree_heap** %vargs to i8*, !dbg !5504
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #8, !dbg !5504
  %ignored_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5505
  %18 = bitcast i40* %ignored_flag to i64*, !dbg !5505
  %bf.load20 = load i64, i64* %18, align 8, !dbg !5506
  %bf.set22 = or i64 %bf.load20, 1024, !dbg !5506
  store i64 %bf.set22, i64* %18, align 8, !dbg !5506
  tail call void @bitmap_obstack_initialize(%struct.bitmap_obstack* null) #6, !dbg !5507
  %virtual_offset_p = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %node, i64 0, i32 22, i32 4, !dbg !5508
  %19 = load i8, i8* %virtual_offset_p, align 1, !dbg !5508
  %tobool24 = icmp eq i8 %19, 0, !dbg !5510
  br i1 %tobool24, label %if.end, label %if.then25, !dbg !5511

if.then25:                                        ; preds = %if.else
  %call26 = tail call %union.tree_node* @size_int_kind(i64 %2, i32 0) #6, !dbg !5512
  call void @llvm.dbg.value(metadata %union.tree_node* %call26, metadata !5431, metadata !DIExpression()), !dbg !5463
  br label %if.end, !dbg !5513

if.end:                                           ; preds = %if.else, %if.then25
  %virtual_offset.0 = phi %union.tree_node* [ %call26, %if.then25 ], [ null, %if.else ], !dbg !5463
  call void @llvm.dbg.value(metadata %union.tree_node* %virtual_offset.0, metadata !5431, metadata !DIExpression()), !dbg !5463
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5514
  %20 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !5514
  %21 = load %struct.tree_common*, %struct.tree_common** %20, align 8, !dbg !5514
  %type28 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %21, i64 0, i32 2, !dbg !5514
  %22 = load %union.tree_node*, %union.tree_node** %type28, align 8, !dbg !5514
  call void @llvm.dbg.value(metadata %union.tree_node* %22, metadata !5439, metadata !DIExpression()), !dbg !5503
  %result30 = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 3, !dbg !5515
  %23 = load %union.tree_node*, %union.tree_node** %result30, align 8, !dbg !5515
  %cmp = icmp eq %union.tree_node* %23, null, !dbg !5517
  br i1 %cmp, label %if.then32, label %if.else45, !dbg !5518

if.then32:                                        ; preds = %if.end
  %24 = load i32, i32* @input_location, align 4, !dbg !5519
  %call33 = tail call %union.tree_node* @build_decl_stat(i32 %24, i32 36, %union.tree_node* null, %union.tree_node* %22) #6, !dbg !5519
  call void @llvm.dbg.value(metadata %union.tree_node* %call33, metadata !5449, metadata !DIExpression()), !dbg !5503
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call33, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5521
  %25 = bitcast i40* %artificial_flag to i64*, !dbg !5521
  %bf.load35 = load i64, i64* %25, align 8, !dbg !5522
  %bf.set42 = or i64 %bf.load35, 5120, !dbg !5523
  store i64 %bf.set42, i64* %25, align 8, !dbg !5523
  store %union.tree_node* %call33, %union.tree_node** %result30, align 8, !dbg !5524
  br label %if.end48, !dbg !5525

if.else45:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %union.tree_node* %23, metadata !5449, metadata !DIExpression()), !dbg !5503
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then32
  %resdecl.0 = phi %union.tree_node* [ %call33, %if.then32 ], [ %23, %if.else45 ], !dbg !5526
  call void @llvm.dbg.value(metadata %union.tree_node* %resdecl.0, metadata !5449, metadata !DIExpression()), !dbg !5503
  %call49 = tail call fastcc %struct.basic_block_def* @init_lowered_empty_function(%union.tree_node* %4) #7, !dbg !5527
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call49, metadata !5444, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call49, metadata !5443, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call49, metadata !5442, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call49, metadata !5441, metadata !DIExpression()), !dbg !5503
  %26 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !5528
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %26) #8, !dbg !5528
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %call49) #7, !dbg !5528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* nonnull align 8 %26, i64 24, i1 false), !dbg !5528
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %26) #8, !dbg !5528
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %22, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5529
  %bf.load51 = load i64, i64* %27, align 8, !dbg !5529
  %bf.cast1 = and i64 %bf.load51, 65535, !dbg !5529
  %cmp53 = icmp eq i64 %bf.cast1, 19, !dbg !5529
  br i1 %cmp53, label %if.end70, label %if.then55, !dbg !5531

if.then55:                                        ; preds = %if.end48
  %call56 = call zeroext i8 @is_gimple_reg_type(%union.tree_node* %22) #6, !dbg !5532
  %tobool57 = icmp eq i8 %call56, 0, !dbg !5532
  br i1 %tobool57, label %if.then58, label %if.else67, !dbg !5535

if.then58:                                        ; preds = %if.then55
  call void @llvm.dbg.value(metadata %union.tree_node* %resdecl.0, metadata !5450, metadata !DIExpression()), !dbg !5503
  %28 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5536
  %local_decls = getelementptr inbounds %struct.function, %struct.function* %28, i64 0, i32 9, !dbg !5536
  %29 = load %union.tree_node*, %union.tree_node** %local_decls, align 8, !dbg !5536
  %call60 = call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %resdecl.0, %union.tree_node* %29) #6, !dbg !5536
  %30 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5538
  %local_decls62 = getelementptr inbounds %struct.function, %struct.function* %30, i64 0, i32 9, !dbg !5539
  store %union.tree_node* %call60, %union.tree_node** %local_decls62, align 8, !dbg !5540
  %31 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_common**), align 8, !dbg !5541
  %initial64 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %31, i64 0, i32 5, !dbg !5541
  %32 = bitcast %union.tree_node** %initial64 to %struct.tree_block**, !dbg !5541
  %33 = load %struct.tree_block*, %struct.tree_block** %32, align 8, !dbg !5541
  %vars66 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %33, i64 0, i32 3, !dbg !5541
  store %union.tree_node* %resdecl.0, %union.tree_node** %vars66, align 8, !dbg !5542
  br label %if.end70, !dbg !5543

if.else67:                                        ; preds = %if.then55
  %call68 = call %union.tree_node* @create_tmp_var_raw(%union.tree_node* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0)) #6, !dbg !5544
  call void @llvm.dbg.value(metadata %union.tree_node* %call68, metadata !5450, metadata !DIExpression()), !dbg !5503
  br label %if.end70

if.end70:                                         ; preds = %if.then58, %if.else67, %if.end48
  %restmp.1 = phi %union.tree_node* [ null, %if.end48 ], [ %call68, %if.else67 ], [ %resdecl.0, %if.then58 ], !dbg !5503
  call void @llvm.dbg.value(metadata %union.tree_node* %restmp.1, metadata !5450, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !5447, metadata !DIExpression()), !dbg !5503
  br label %for.cond, !dbg !5545

for.cond:                                         ; preds = %for.body, %if.end70
  %nargs.0 = phi i32 [ 0, %if.end70 ], [ %inc, %for.body ], !dbg !5503
  %arg.0 = phi %union.tree_node* [ %5, %if.end70 ], [ %34, %for.body ], !dbg !5547
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0, metadata !5447, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata i32 %nargs.0, metadata !5446, metadata !DIExpression()), !dbg !5503
  %tobool71 = icmp eq %union.tree_node* %arg.0, null, !dbg !5548
  br i1 %tobool71, label %for.end, label %for.body, !dbg !5548

for.body:                                         ; preds = %for.cond
  %inc = add nuw nsw i32 %nargs.0, 1, !dbg !5549
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5446, metadata !DIExpression()), !dbg !5503
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %arg.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5551
  %34 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !5551
  call void @llvm.dbg.value(metadata %union.tree_node* %34, metadata !5447, metadata !DIExpression()), !dbg !5503
  br label %for.cond, !dbg !5552, !llvm.loop !5553

for.end:                                          ; preds = %for.cond
  %nargs.0.lcssa = phi i32 [ %nargs.0, %for.cond ], !dbg !5503
  call void @llvm.dbg.value(metadata i32 %nargs.0.lcssa, metadata !5446, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata i32 %nargs.0.lcssa, metadata !5446, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata i32 %nargs.0.lcssa, metadata !5446, metadata !DIExpression()), !dbg !5503
  %call73 = call fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %nargs.0.lcssa) #7, !dbg !5555
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %call73, metadata !5451, metadata !DIExpression()), !dbg !5503
  store %struct.VEC_tree_heap* %call73, %struct.VEC_tree_heap** %vargs, align 8, !dbg !5556
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %call73, metadata !5451, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %call73, metadata !5451, metadata !DIExpression()), !dbg !5503
  %base77 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %call73, i64 0, i32 0, !dbg !5557
  br i1 %tobool, label %cond.end85, label %cond.end, !dbg !5559

cond.end:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !5445, metadata !DIExpression(DW_OP_deref)), !dbg !5503
  %call78 = call fastcc %union.tree_node* @thunk_adjust(%struct.gimple_stmt_iterator* nonnull %bsi, %union.tree_node* %5, i8 zeroext 1, i64 %1, %union.tree_node* %virtual_offset.0) #7, !dbg !5560
  %call79 = call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %base77, %union.tree_node* %call78) #7, !dbg !5560
  br label %if.end88, !dbg !5560

cond.end85:                                       ; preds = %for.end
  %call87 = call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %base77, %union.tree_node* %5) #7, !dbg !5561
  br label %if.end88

if.end88:                                         ; preds = %cond.end85, %cond.end
  call void @llvm.dbg.value(metadata i32 1, metadata !5448, metadata !DIExpression()), !dbg !5503
  br label %for.cond91, !dbg !5562

for.cond91:                                       ; preds = %for.body94, %if.end88
  %.pn = phi %union.tree_node* [ %5, %if.end88 ], [ %arg.1, %for.body94 ]
  %i.0 = phi i32 [ 1, %if.end88 ], [ %inc103, %for.body94 ], !dbg !5564
  %arg.1.in = getelementptr inbounds %union.tree_node, %union.tree_node* %.pn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5564
  %arg.1 = load %union.tree_node*, %union.tree_node** %arg.1.in, align 8, !dbg !5564
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !5448, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.1, metadata !5447, metadata !DIExpression()), !dbg !5503
  %cmp92 = icmp ult i32 %i.0, %nargs.0.lcssa, !dbg !5565
  br i1 %cmp92, label %for.body94, label %for.end106, !dbg !5567

for.body94:                                       ; preds = %for.cond91
  %35 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vargs, align 8, !dbg !5568
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %35, metadata !5451, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %35, metadata !5451, metadata !DIExpression()), !dbg !5503
  %base97 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %35, i64 0, i32 0, !dbg !5568
  %call101 = call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %base97, %union.tree_node* %arg.1) #7, !dbg !5568
  %inc103 = add nuw nsw i32 %i.0, 1, !dbg !5569
  call void @llvm.dbg.value(metadata i32 %inc103, metadata !5448, metadata !DIExpression()), !dbg !5503
  br label %for.cond91, !dbg !5570, !llvm.loop !5571

for.end106:                                       ; preds = %for.cond91
  %call107 = call %union.tree_node* @build_fold_addr_expr_loc(i32 0, %union.tree_node* %3) #6, !dbg !5573
  %36 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vargs, align 8, !dbg !5574
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %36, metadata !5451, metadata !DIExpression()), !dbg !5503
  %call108 = call %union.gimple_statement_d* @gimple_build_call_vec(%union.tree_node* %call107, %struct.VEC_tree_heap* %36) #6, !dbg !5575
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call108, metadata !5452, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vargs, metadata !5451, metadata !DIExpression(DW_OP_deref)), !dbg !5503
  call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %vargs) #7, !dbg !5576
  call fastcc void @gimple_call_set_cannot_inline(%union.gimple_statement_d* %call108, i8 zeroext 1) #7, !dbg !5577
  call fastcc void @gimple_call_set_from_thunk(%union.gimple_statement_d* %call108, i8 zeroext 1) #7, !dbg !5578
  %tobool109 = icmp eq %union.tree_node* %restmp.1, null, !dbg !5579
  br i1 %tobool109, label %if.end111, label %if.then110, !dbg !5581

if.then110:                                       ; preds = %for.end106
  call fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %call108, %union.tree_node* nonnull %restmp.1) #7, !dbg !5582
  br label %if.end111, !dbg !5582

if.end111:                                        ; preds = %for.end106, %if.then110
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !5445, metadata !DIExpression(DW_OP_deref)), !dbg !5503
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %bsi, %union.gimple_statement_d* %call108, i32 0) #6, !dbg !5583
  call void @mark_symbols_for_renaming(%union.gimple_statement_d* %call108) #6, !dbg !5584
  call void @find_referenced_vars_in(%union.gimple_statement_d* %call108) #6, !dbg !5585
  call fastcc void @update_stmt(%union.gimple_statement_d* %call108) #7, !dbg !5586
  %tobool114 = icmp ne i8 %0, 0, !dbg !5587
  %or.cond = or i1 %tobool109, %tobool114, !dbg !5588
  br i1 %or.cond, label %if.else153, label %if.then115, !dbg !5588

if.then115:                                       ; preds = %if.end111
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !5454, metadata !DIExpression()), !dbg !5589
  %type117 = getelementptr inbounds %union.tree_node, %union.tree_node* %restmp.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5590
  %37 = bitcast %union.tree_node** %type117 to i64**, !dbg !5590
  %38 = load i64*, i64** %37, align 8, !dbg !5590
  %bf.load119 = load i64, i64* %38, align 8, !dbg !5590
  %bf.cast1212 = and i64 %bf.load119, 65535, !dbg !5591
  %cmp122 = icmp eq i64 %bf.cast1212, 10, !dbg !5591
  br i1 %cmp122, label %if.then124, label %if.end141, !dbg !5592

if.then124:                                       ; preds = %if.then115
  %call125 = call %struct.basic_block_def* @create_basic_block(i8* null, i8* null, %struct.basic_block_def* %call49) #6, !dbg !5593
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call125, metadata !5442, metadata !DIExpression()), !dbg !5503
  %call126 = call %struct.basic_block_def* @create_basic_block(i8* null, i8* null, %struct.basic_block_def* %call125) #6, !dbg !5594
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call126, metadata !5444, metadata !DIExpression()), !dbg !5503
  %call127 = call %struct.basic_block_def* @create_basic_block(i8* null, i8* null, %struct.basic_block_def* %call49) #6, !dbg !5595
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call127, metadata !5443, metadata !DIExpression()), !dbg !5503
  %call128 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call49) #7, !dbg !5596
  call void @remove_edge(%struct.edge_def* %call128) #6, !dbg !5597
  %call129 = call %union.tree_node* @gimple_block_label(%struct.basic_block_def* %call125) #6, !dbg !5598
  call void @llvm.dbg.value(metadata %union.tree_node* %call129, metadata !5454, metadata !DIExpression()), !dbg !5589
  %39 = load %union.tree_node*, %union.tree_node** %type117, align 8, !dbg !5599
  %40 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !5599
  %call132 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %39, %union.tree_node* %40) #6, !dbg !5599
  %call133 = call %union.gimple_statement_d* @gimple_build_cond(i32 102, %union.tree_node* %restmp.1, %union.tree_node* %call132, %union.tree_node* null, %union.tree_node* null) #6, !dbg !5600
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call133, metadata !5457, metadata !DIExpression()), !dbg !5601
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !5445, metadata !DIExpression(DW_OP_deref)), !dbg !5503
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %bsi, %union.gimple_statement_d* %call133, i32 0) #6, !dbg !5602
  %call134 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call49, %struct.basic_block_def* %call125, i32 1024) #6, !dbg !5603
  %call135 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call49, %struct.basic_block_def* %call127, i32 2048) #6, !dbg !5604
  %41 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5605
  %cfg = getelementptr inbounds %struct.function, %struct.function* %41, i64 0, i32 1, !dbg !5605
  %42 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !5605
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %42, i64 0, i32 1, !dbg !5605
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !5605
  %call137 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call126, %struct.basic_block_def* %43, i32 0) #6, !dbg !5606
  %call138 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call125, %struct.basic_block_def* %call126, i32 1) #6, !dbg !5607
  %call139 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call127, %struct.basic_block_def* %call126, i32 1) #6, !dbg !5608
  %44 = bitcast %struct.gimple_stmt_iterator* %tmp140 to i8*, !dbg !5609
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %44) #8, !dbg !5609
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp140, %struct.basic_block_def* %call125) #7, !dbg !5609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* nonnull align 8 %44, i64 24, i1 false), !dbg !5609
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %44) #8, !dbg !5609
  %phitmp = icmp ne %union.tree_node* %call129, null, !dbg !5610
  br label %if.end141, !dbg !5610

if.end141:                                        ; preds = %if.then124, %if.then115
  %else_bb.0 = phi %struct.basic_block_def* [ %call127, %if.then124 ], [ %call49, %if.then115 ], !dbg !5503
  %return_bb.0 = phi %struct.basic_block_def* [ %call126, %if.then124 ], [ %call49, %if.then115 ], !dbg !5503
  %true_label.0 = phi i1 [ %phitmp, %if.then124 ], [ false, %if.then115 ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %return_bb.0, metadata !5444, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %else_bb.0, metadata !5443, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !5445, metadata !DIExpression(DW_OP_deref)), !dbg !5503
  %call142 = call fastcc %union.tree_node* @thunk_adjust(%struct.gimple_stmt_iterator* nonnull %bsi, %union.tree_node* %restmp.1, i8 zeroext 0, i64 %1, %union.tree_node* %virtual_offset.0) #7, !dbg !5611
  call void @llvm.dbg.value(metadata %union.tree_node* %call142, metadata !5450, metadata !DIExpression()), !dbg !5503
  br i1 %true_label.0, label %if.then144, label %if.end154, !dbg !5612

if.then144:                                       ; preds = %if.end141
  %45 = bitcast %struct.gimple_stmt_iterator* %tmp146 to i8*, !dbg !5613
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %45) #8, !dbg !5613
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp146, %struct.basic_block_def* %else_bb.0) #7, !dbg !5613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* nonnull align 8 %45, i64 24, i1 false), !dbg !5613
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %45) #8, !dbg !5613
  %type148 = getelementptr inbounds %union.tree_node, %union.tree_node* %call142, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5614
  %46 = load %union.tree_node*, %union.tree_node** %type148, align 8, !dbg !5614
  %47 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !5614
  %call149 = call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %46, %union.tree_node* %47) #6, !dbg !5614
  %call150 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call142, %union.tree_node* %call149) #6, !dbg !5614
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call150, metadata !5460, metadata !DIExpression()), !dbg !5615
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !5445, metadata !DIExpression(DW_OP_deref)), !dbg !5503
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %bsi, %union.gimple_statement_d* %call150, i32 0) #6, !dbg !5616
  %48 = bitcast %struct.gimple_stmt_iterator* %tmp151 to i8*, !dbg !5617
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %48) #8, !dbg !5617
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp151, %struct.basic_block_def* %return_bb.0) #7, !dbg !5617
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* nonnull align 8 %48, i64 24, i1 false), !dbg !5617
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %48) #8, !dbg !5617
  br label %if.end154, !dbg !5618

if.else153:                                       ; preds = %if.end111
  call fastcc void @gimple_call_set_tail(%union.gimple_statement_d* %call108, i8 zeroext 1) #7, !dbg !5619
  br label %if.end154

if.end154:                                        ; preds = %if.end141, %if.then144, %if.else153
  %restmp.2 = phi %union.tree_node* [ %restmp.1, %if.else153 ], [ %call142, %if.then144 ], [ %call142, %if.end141 ], !dbg !5503
  call void @llvm.dbg.value(metadata %union.tree_node* %restmp.2, metadata !5450, metadata !DIExpression()), !dbg !5503
  %call155 = call %union.gimple_statement_d* @gimple_build_return(%union.tree_node* %restmp.2) #6, !dbg !5620
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call155, metadata !5453, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !5445, metadata !DIExpression(DW_OP_deref)), !dbg !5503
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %bsi, %union.gimple_statement_d* %call155, i32 0) #6, !dbg !5621
  %call156 = call zeroext i8 @delete_unreachable_blocks() #6, !dbg !5622
  call void @update_ssa(i32 2048) #6, !dbg !5623
  call void @cgraph_remove_same_body_alias(%struct.cgraph_node* %node) #6, !dbg !5624
  call void @mark_decl_referenced(%union.tree_node* %4) #6, !dbg !5625
  call void @cgraph_add_new_function(%union.tree_node* %4, i8 zeroext 1) #6, !dbg !5626
  call void @bitmap_obstack_release(%struct.bitmap_obstack* null) #6, !dbg !5627
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #8, !dbg !5628
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #8, !dbg !5628
  br label %if.end157

if.end157:                                        ; preds = %if.end154, %if.then
  store %union.tree_node* null, %union.tree_node** @current_function_decl, align 8, !dbg !5629
  ret void, !dbg !5630
}

declare dso_local void @cgraph_release_function_body(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @init_function_start(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @assemble_start_function(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local void @assemble_end_function(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local void @init_insn_lengths() local_unnamed_addr #2

declare dso_local void @free_after_compilation(%struct.function*) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local %union.tree_node* @size_int_kind(i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @init_lowered_empty_function(%union.tree_node* %decl) unnamed_addr #5 !dbg !5631 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !5635, metadata !DIExpression()), !dbg !5637
  store %union.tree_node* %decl, %union.tree_node** @current_function_decl, align 8, !dbg !5638
  tail call void @allocate_struct_function(%union.tree_node* %decl, i8 zeroext 0) #6, !dbg !5639
  tail call void @gimple_register_cfg_hooks() #6, !dbg !5640
  tail call void @init_empty_tree_cfg() #6, !dbg !5641
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5642
  tail call void @init_tree_ssa(%struct.function* %0) #6, !dbg !5643
  tail call void @init_ssa_operands() #6, !dbg !5644
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5645
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 3, !dbg !5646
  %2 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !5646
  %in_ssa_p = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %2, i64 0, i32 10, !dbg !5647
  %bf.load = load i8, i8* %in_ssa_p, align 8, !dbg !5648
  %bf.set = or i8 %bf.load, 1, !dbg !5648
  store i8 %bf.set, i8* %in_ssa_p, align 8, !dbg !5648
  %call = tail call %union.tree_node* @make_node_stat(i32 4) #6, !dbg !5649
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !5650
  store %union.tree_node* %call, %union.tree_node** %initial, align 8, !dbg !5651
  %3 = load i64, i64* bitcast ([131 x %union.tree_node*]* @global_trees to i64*), align 16, !dbg !5652
  %saved_tree = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 1, !dbg !5653
  %4 = bitcast %union.tree_node** %saved_tree to i64*, !dbg !5654
  store i64 %3, i64* %4, align 8, !dbg !5654
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5655
  %curr_properties = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 17, !dbg !5656
  %6 = load i32, i32* %curr_properties, align 8, !dbg !5657
  %or = or i32 %6, 62, !dbg !5657
  store i32 %or, i32* %curr_properties, align 8, !dbg !5657
  %cfg = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !5658
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !5658
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 0, !dbg !5658
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !5658
  %call4 = tail call %struct.basic_block_def* @create_basic_block(i8* null, i8* null, %struct.basic_block_def* %8) #6, !dbg !5659
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call4, metadata !5636, metadata !DIExpression()), !dbg !5637
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5660
  %cfg6 = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !5660
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6, align 8, !dbg !5660
  %x_entry_block_ptr7 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 0, !dbg !5660
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr7, align 8, !dbg !5660
  %call8 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %11, %struct.basic_block_def* %call4, i32 0) #6, !dbg !5661
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !5662
  %cfg10 = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 1, !dbg !5662
  %13 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10, align 8, !dbg !5662
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 1, !dbg !5662
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !5662
  %call11 = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %call4, %struct.basic_block_def* %14, i32 0) #6, !dbg !5663
  ret %struct.basic_block_def* %call4, !dbg !5664
}

declare dso_local zeroext i8 @is_gimple_reg_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @tree_cons_stat(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var_raw(%union.tree_node*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !5665 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !5669, metadata !DIExpression()), !dbg !5670
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !5671
  %0 = bitcast i8* %call to %struct.VEC_tree_heap*, !dbg !5671
  ret %struct.VEC_tree_heap* %0, !dbg !5671
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @thunk_adjust(%struct.gimple_stmt_iterator* %bsi, %union.tree_node* %ptr, i8 zeroext %this_adjusting, i64 %fixed_offset, %union.tree_node* %virtual_offset) unnamed_addr #5 !dbg !5672 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !5676, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr, metadata !5677, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.value(metadata i8 %this_adjusting, metadata !5678, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.value(metadata i64 %fixed_offset, metadata !5679, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.value(metadata %union.tree_node* %virtual_offset, metadata !5680, metadata !DIExpression()), !dbg !5695
  %tobool = icmp ne i8 %this_adjusting, 0, !dbg !5696
  %cmp = icmp ne i64 %fixed_offset, 0, !dbg !5698
  %or.cond = and i1 %tobool, %cmp, !dbg !5699
  br i1 %or.cond, label %if.then, label %if.end, !dbg !5699

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @input_location, align 4, !dbg !5700
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5700
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !5700
  %call = tail call %union.tree_node* @size_int_kind(i64 %fixed_offset, i32 0) #6, !dbg !5700
  %call2 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %0, i32 66, %union.tree_node* %1, %union.tree_node* %ptr, %union.tree_node* %call) #6, !dbg !5700
  %call3 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %ptr, %union.tree_node* %call2) #6, !dbg !5700
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call3, metadata !5681, metadata !DIExpression()), !dbg !5695
  tail call void @gsi_insert_after(%struct.gimple_stmt_iterator* %bsi, %union.gimple_statement_d* %call3, i32 0) #6, !dbg !5702
  br label %if.end, !dbg !5703

if.end:                                           ; preds = %if.then, %entry
  %tobool4 = icmp eq %union.tree_node* %virtual_offset, null, !dbg !5704
  br i1 %tobool4, label %if.end50, label %if.then5, !dbg !5705

if.then5:                                         ; preds = %if.end
  %2 = load %union.tree_node*, %union.tree_node** @vtable_entry_type, align 8, !dbg !5706
  %tobool6 = icmp eq %union.tree_node* %2, null, !dbg !5706
  br i1 %tobool6, label %if.then7, label %if.end13, !dbg !5707

if.then7:                                         ; preds = %if.then5
  %call8 = tail call %union.tree_node* @make_node_stat(i32 20) #6, !dbg !5708
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !5689, metadata !DIExpression()), !dbg !5709
  %3 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5) to i64*), align 8, !dbg !5710
  %type10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5711
  %4 = bitcast %union.tree_node** %type10 to i64*, !dbg !5712
  store i64 %3, i64* %4, align 8, !dbg !5712
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !5713
  %5 = bitcast i32* %values to %union.tree_node**, !dbg !5713
  store %union.tree_node* null, %union.tree_node** %5, align 8, !dbg !5714
  tail call void @layout_type(%union.tree_node* %call8) #6, !dbg !5715
  %call12 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call8) #6, !dbg !5716
  store %union.tree_node* %call12, %union.tree_node** @vtable_entry_type, align 8, !dbg !5717
  br label %if.end13, !dbg !5718

if.end13:                                         ; preds = %if.then5, %if.then7
  %6 = phi %union.tree_node* [ %2, %if.then5 ], [ %call12, %if.then7 ], !dbg !5719
  %call14 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %6) #6, !dbg !5720
  %call15 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call14) #6, !dbg !5721
  %call16 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %call15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !5722
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !5683, metadata !DIExpression()), !dbg !5723
  %type18 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5724
  %7 = load %union.tree_node*, %union.tree_node** %type18, align 8, !dbg !5724
  %call19 = tail call %union.tree_node* @build1_stat(i32 116, %union.tree_node* %7, %union.tree_node* %ptr) #6, !dbg !5724
  %call20 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call16, %union.tree_node* %call19) #6, !dbg !5724
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call20, metadata !5681, metadata !DIExpression()), !dbg !5695
  tail call void @gsi_insert_after(%struct.gimple_stmt_iterator* %bsi, %union.gimple_statement_d* %call20, i32 0) #6, !dbg !5725
  tail call void @mark_symbols_for_renaming(%union.gimple_statement_d* %call20) #6, !dbg !5726
  tail call void @find_referenced_vars_in(%union.gimple_statement_d* %call20) #6, !dbg !5727
  %8 = bitcast %union.tree_node** %type18 to %struct.tree_common**, !dbg !5728
  %9 = load %struct.tree_common*, %struct.tree_common** %8, align 8, !dbg !5728
  %type24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %9, i64 0, i32 2, !dbg !5728
  %10 = load %union.tree_node*, %union.tree_node** %type24, align 8, !dbg !5728
  %call25 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0)) #6, !dbg !5729
  call void @llvm.dbg.value(metadata %union.tree_node* %call25, metadata !5686, metadata !DIExpression()), !dbg !5723
  %type27 = getelementptr inbounds %union.tree_node, %union.tree_node* %call25, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5730
  %11 = load %union.tree_node*, %union.tree_node** %type27, align 8, !dbg !5730
  %call28 = tail call %union.tree_node* @build1_stat(i32 47, %union.tree_node* %11, %union.tree_node* %call16) #6, !dbg !5730
  %call29 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call25, %union.tree_node* %call28) #6, !dbg !5730
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call29, metadata !5681, metadata !DIExpression()), !dbg !5695
  tail call void @gsi_insert_after(%struct.gimple_stmt_iterator* %bsi, %union.gimple_statement_d* %call29, i32 0) #6, !dbg !5731
  tail call void @mark_symbols_for_renaming(%union.gimple_statement_d* %call29) #6, !dbg !5732
  tail call void @find_referenced_vars_in(%union.gimple_statement_d* %call29) #6, !dbg !5733
  %12 = load i32, i32* @input_location, align 4, !dbg !5734
  %13 = load %union.tree_node*, %union.tree_node** %type27, align 8, !dbg !5734
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !5734
  %call32 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %14, %union.tree_node* nonnull %virtual_offset) #6, !dbg !5734
  %call33 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %12, i32 66, %union.tree_node* %13, %union.tree_node* %call25, %union.tree_node* %call32) #6, !dbg !5734
  %call34 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call25, %union.tree_node* %call33) #6, !dbg !5734
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call34, metadata !5681, metadata !DIExpression()), !dbg !5695
  tail call void @gsi_insert_after(%struct.gimple_stmt_iterator* %bsi, %union.gimple_statement_d* %call34, i32 0) #6, !dbg !5735
  %15 = bitcast %union.tree_node** %type27 to %struct.tree_common**, !dbg !5736
  %16 = load %struct.tree_common*, %struct.tree_common** %15, align 8, !dbg !5736
  %type38 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %16, i64 0, i32 2, !dbg !5736
  %17 = load %union.tree_node*, %union.tree_node** %type38, align 8, !dbg !5736
  %call39 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0)) #6, !dbg !5737
  call void @llvm.dbg.value(metadata %union.tree_node* %call39, metadata !5687, metadata !DIExpression()), !dbg !5723
  %type41 = getelementptr inbounds %union.tree_node, %union.tree_node* %call39, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5738
  %18 = load %union.tree_node*, %union.tree_node** %type41, align 8, !dbg !5738
  %call42 = tail call %union.tree_node* @build1_stat(i32 47, %union.tree_node* %18, %union.tree_node* %call25) #6, !dbg !5738
  %call43 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call39, %union.tree_node* %call42) #6, !dbg !5738
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call43, metadata !5681, metadata !DIExpression()), !dbg !5695
  tail call void @gsi_insert_after(%struct.gimple_stmt_iterator* %bsi, %union.gimple_statement_d* %call43, i32 0) #6, !dbg !5739
  tail call void @mark_symbols_for_renaming(%union.gimple_statement_d* %call43) #6, !dbg !5740
  tail call void @find_referenced_vars_in(%union.gimple_statement_d* %call43) #6, !dbg !5741
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !5742
  %call44 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0)) #6, !dbg !5743
  call void @llvm.dbg.value(metadata %union.tree_node* %call44, metadata !5688, metadata !DIExpression()), !dbg !5723
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !5744
  %call45 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %20, %union.tree_node* %call39) #6, !dbg !5744
  %call46 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call44, %union.tree_node* %call45) #6, !dbg !5744
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call46, metadata !5681, metadata !DIExpression()), !dbg !5695
  tail call void @gsi_insert_after(%struct.gimple_stmt_iterator* %bsi, %union.gimple_statement_d* %call46, i32 0) #6, !dbg !5745
  tail call void @mark_symbols_for_renaming(%union.gimple_statement_d* %call46) #6, !dbg !5746
  tail call void @find_referenced_vars_in(%union.gimple_statement_d* %call46) #6, !dbg !5747
  %21 = load i32, i32* @input_location, align 4, !dbg !5748
  %type48 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5748
  %22 = load %union.tree_node*, %union.tree_node** %type48, align 8, !dbg !5748
  %call49 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %21, i32 66, %union.tree_node* %22, %union.tree_node* %ptr, %union.tree_node* %call44) #6, !dbg !5748
  call void @llvm.dbg.value(metadata %union.tree_node* %call49, metadata !5677, metadata !DIExpression()), !dbg !5695
  br label %if.end50, !dbg !5749

if.end50:                                         ; preds = %if.end, %if.end13
  %ptr.addr.0 = phi %union.tree_node* [ %call49, %if.end13 ], [ %ptr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.addr.0, metadata !5677, metadata !DIExpression()), !dbg !5695
  %tobool51 = icmp eq i8 %this_adjusting, 0, !dbg !5750
  %or.cond1 = and i1 %tobool51, %cmp, !dbg !5751
  br i1 %or.cond1, label %if.then55, label %if.end68, !dbg !5751

if.then55:                                        ; preds = %if.end50
  %23 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5752
  %bf.load = load i64, i64* %23, align 8, !dbg !5752
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !5754
  %cmp56 = icmp eq i64 %bf.cast2, 32, !dbg !5754
  br i1 %cmp56, label %if.end63, label %if.else, !dbg !5755

if.else:                                          ; preds = %if.then55
  %type60 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5756
  %24 = load %union.tree_node*, %union.tree_node** %type60, align 8, !dbg !5756
  %call61 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0)) #6, !dbg !5758
  call void @llvm.dbg.value(metadata %union.tree_node* %call61, metadata !5692, metadata !DIExpression()), !dbg !5759
  %call62 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call61, %union.tree_node* %ptr.addr.0) #6, !dbg !5760
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call62, metadata !5681, metadata !DIExpression()), !dbg !5695
  tail call void @gsi_insert_after(%struct.gimple_stmt_iterator* %bsi, %union.gimple_statement_d* %call62, i32 0) #6, !dbg !5761
  tail call void @mark_symbols_for_renaming(%union.gimple_statement_d* %call62) #6, !dbg !5762
  tail call void @find_referenced_vars_in(%union.gimple_statement_d* %call62) #6, !dbg !5763
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %if.else
  %ptrtmp.0 = phi %union.tree_node* [ %call61, %if.else ], [ %ptr.addr.0, %if.then55 ], !dbg !5764
  call void @llvm.dbg.value(metadata %union.tree_node* %ptrtmp.0, metadata !5692, metadata !DIExpression()), !dbg !5759
  %25 = load i32, i32* @input_location, align 4, !dbg !5765
  %type65 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptrtmp.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5765
  %26 = load %union.tree_node*, %union.tree_node** %type65, align 8, !dbg !5765
  %call66 = tail call %union.tree_node* @size_int_kind(i64 %fixed_offset, i32 0) #6, !dbg !5765
  %call67 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %25, i32 66, %union.tree_node* %26, %union.tree_node* %ptrtmp.0, %union.tree_node* %call66) #6, !dbg !5765
  call void @llvm.dbg.value(metadata %union.tree_node* %call67, metadata !5677, metadata !DIExpression()), !dbg !5695
  br label %if.end68, !dbg !5766

if.end68:                                         ; preds = %if.end50, %if.end63
  %ptr.addr.1 = phi %union.tree_node* [ %ptr.addr.0, %if.end50 ], [ %call67, %if.end63 ], !dbg !5695
  call void @llvm.dbg.value(metadata %union.tree_node* %ptr.addr.1, metadata !5677, metadata !DIExpression()), !dbg !5695
  %type70 = getelementptr inbounds %union.tree_node, %union.tree_node* %ptr.addr.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !5767
  %27 = load %union.tree_node*, %union.tree_node** %type70, align 8, !dbg !5767
  %call71 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i64 0, i64 0)) #6, !dbg !5768
  call void @llvm.dbg.value(metadata %union.tree_node* %call71, metadata !5682, metadata !DIExpression()), !dbg !5695
  %call72 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call71, %union.tree_node* %ptr.addr.1) #6, !dbg !5769
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call72, metadata !5681, metadata !DIExpression()), !dbg !5695
  tail call void @mark_symbols_for_renaming(%union.gimple_statement_d* %call72) #6, !dbg !5770
  tail call void @find_referenced_vars_in(%union.gimple_statement_d* %call72) #6, !dbg !5771
  tail call void @gsi_insert_after(%struct.gimple_stmt_iterator* %bsi, %union.gimple_statement_d* %call72, i32 0) #6, !dbg !5772
  ret %union.tree_node* %call71, !dbg !5773
}

declare dso_local %union.gimple_statement_d* @gimple_build_call_vec(%union.tree_node*, %struct.VEC_tree_heap*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_fold_addr_expr_loc(i32, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !5774 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !5779, metadata !DIExpression()), !dbg !5780
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !5781
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !5781
  br i1 %tobool, label %if.end, label %if.then, !dbg !5783

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !5783
  tail call void @free(i8* nonnull %1) #6, !dbg !5781
  br label %if.end, !dbg !5781

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !5783
  ret void, !dbg !5783
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_cannot_inline(%union.gimple_statement_d* %s, i8 zeroext %inlinable_p) unnamed_addr #0 !dbg !5784 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !5788, metadata !DIExpression()), !dbg !5790
  call void @llvm.dbg.value(metadata i8 1, metadata !5789, metadata !DIExpression()), !dbg !5790
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !5791
  %bf.load = load i32, i32* %0, align 8, !dbg !5791
  %bf.lshr = and i32 %bf.load, -131072, !dbg !5793
  %or = or i32 %bf.lshr, 65536, !dbg !5793
  %bf.clear = and i32 %bf.load, 65535, !dbg !5793
  %bf.set = or i32 %bf.clear, %or, !dbg !5793
  store i32 %bf.set, i32* %0, align 8, !dbg !5791
  ret void, !dbg !5794
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_from_thunk(%union.gimple_statement_d* %s, i8 zeroext %from_thunk_p) unnamed_addr #0 !dbg !5795 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !5797, metadata !DIExpression()), !dbg !5799
  call void @llvm.dbg.value(metadata i8 1, metadata !5798, metadata !DIExpression()), !dbg !5799
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !5800
  %bf.load = load i32, i32* %0, align 8, !dbg !5800
  %bf.lshr = and i32 %bf.load, -196608, !dbg !5802
  %or = or i32 %bf.lshr, 131072, !dbg !5802
  %bf.clear = and i32 %bf.load, 65535, !dbg !5802
  %bf.set = or i32 %bf.clear, %or, !dbg !5802
  store i32 %bf.set, i32* %0, align 8, !dbg !5800
  ret void, !dbg !5803
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !5804 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5806, metadata !DIExpression()), !dbg !5808
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !5807, metadata !DIExpression()), !dbg !5808
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #7, !dbg !5809
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !5810
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5812

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !5813
  %bf.load = load i64, i64* %0, align 8, !dbg !5813
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !5814
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !5814
  br i1 %cmp, label %if.then, label %if.end, !dbg !5815

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !5816
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !5816
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !5817
  br label %if.end, !dbg !5816

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !5818
}

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local void @mark_symbols_for_renaming(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @find_referenced_vars_in(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !5819 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !5823, metadata !DIExpression()), !dbg !5824
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #7, !dbg !5825
  %tobool = icmp eq i8 %call, 0, !dbg !5825
  br i1 %tobool, label %if.end, label %if.then, !dbg !5827

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !5828
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !5830
  br label %if.end, !dbg !5831

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !5832
}

declare dso_local %struct.basic_block_def* @create_basic_block(i8*, i8*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @remove_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5833 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5837, metadata !DIExpression()), !dbg !5838
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !5839
  %tobool = icmp eq i8 %call, 0, !dbg !5839
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5839

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !5839
  br label %cond.end, !dbg !5839

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !5840
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !5840
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !5840
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !5840

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !5840
  br label %cond.end5, !dbg !5840

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !5840
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !5840
  ret %struct.edge_def* %call7, !dbg !5841
}

declare dso_local %union.tree_node* @gimple_block_label(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_cond(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5842 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5844, metadata !DIExpression()), !dbg !5847
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !5845, metadata !DIExpression()), !dbg !5848
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !5849
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !5846, metadata !DIExpression()), !dbg !5847
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !5850
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !5851
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !5852
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !5853
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !5854
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !5855
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !5856
  ret void, !dbg !5857
}

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_tail(%union.gimple_statement_d* %s, i8 zeroext %tail_p) unnamed_addr #0 !dbg !5858 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !5860, metadata !DIExpression()), !dbg !5862
  call void @llvm.dbg.value(metadata i8 1, metadata !5861, metadata !DIExpression()), !dbg !5862
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !5863
  %bf.load = load i32, i32* %0, align 8, !dbg !5863
  %bf.lshr = and i32 %bf.load, -589824, !dbg !5865
  %or = or i32 %bf.lshr, 524288, !dbg !5865
  %bf.clear = and i32 %bf.load, 65535, !dbg !5865
  %bf.set = or i32 %bf.clear, %or, !dbg !5865
  store i32 %bf.set, i32* %0, align 8, !dbg !5863
  ret void, !dbg !5866
}

declare dso_local %union.gimple_statement_d* @gimple_build_return(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #2

declare dso_local void @update_ssa(i32) local_unnamed_addr #2

declare dso_local void @cgraph_remove_same_body_alias(%struct.cgraph_node*) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_release(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local void @init_empty_tree_cfg() local_unnamed_addr #2

declare dso_local void @init_tree_ssa(%struct.function*) local_unnamed_addr #2

declare dso_local void @init_ssa_operands() local_unnamed_addr #2

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @layout_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_pointer_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build1_stat(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !5867 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5871, metadata !DIExpression()), !dbg !5874
  call void @llvm.dbg.value(metadata i32 %i, metadata !5872, metadata !DIExpression()), !dbg !5874
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !5873, metadata !DIExpression()), !dbg !5874
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !5875
  %tobool = icmp eq i8 %call, 0, !dbg !5875
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !5875

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !5875
  %cmp = icmp ugt i32 %call1, %i, !dbg !5875
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !5875

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !5875
  br label %cond.end, !dbg !5875

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !5876
  %idxprom = zext i32 %i to i64, !dbg !5876
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !5876
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !5877
  ret void, !dbg !5878
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !5879 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !5883, metadata !DIExpression()), !dbg !5884
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !5885
  %0 = load i32, i32* %num_ops, align 4, !dbg !5885
  ret i32 %0, !dbg !5886
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5887 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5891, metadata !DIExpression()), !dbg !5892
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !5893
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !5893
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !5893
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5893

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !5893
  br label %cond.end, !dbg !5893

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5893
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !5893
  %cmp = icmp eq i32 %call, 1, !dbg !5894
  %conv2 = zext i1 %cmp to i8, !dbg !5893
  ret i8 %conv2, !dbg !5895
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !5896 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !5902, metadata !DIExpression()), !dbg !5904
  call void @llvm.dbg.value(metadata i32 0, metadata !5903, metadata !DIExpression()), !dbg !5904
  br label %land.end, !dbg !5905

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 0, !dbg !5905
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !5905
  ret %struct.edge_def* %0, !dbg !5905
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !5906 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !5910, metadata !DIExpression()), !dbg !5911
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !5912
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5912

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !5912
  %0 = load i32, i32* %num, align 8, !dbg !5912
  br label %cond.end, !dbg !5912

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !5912
  ret i32 %cond, !dbg !5912
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !5913 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !5915, metadata !DIExpression()), !dbg !5916
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !5917
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5917

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !5918
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !5918
  br label %cond.end, !dbg !5917

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !5917
  ret %struct.gimple_seq_node_d* %cond, !dbg !5919
}

declare dso_local i32 @invoke_plugin_callbacks(i32, i8*) local_unnamed_addr #2

declare dso_local void @execute_ipa_pass_list(%struct.opt_pass*) local_unnamed_addr #2

declare dso_local void @coverage_finish() local_unnamed_addr #2

declare dso_local void @execute_ipa_summary_passes(%struct.ipa_opt_pass_d*) local_unnamed_addr #2

declare dso_local void @ipa_write_summaries() local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local void @varpool_empty_needed_queue() local_unnamed_addr #2

declare dso_local zeroext i8 @varpool_assemble_decl(%struct.varpool_node*) local_unnamed_addr #2

declare dso_local void @assemble_asm(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @cgraph_postorder(%struct.cgraph_node**) local_unnamed_addr #2

declare dso_local %struct.cgraph_edge* @cgraph_clone_edge(%struct.cgraph_edge*, %struct.cgraph_node*, %union.gimple_statement_d*, i32, i64, i32, i32, i8 zeroext) local_unnamed_addr #2

declare dso_local void @cgraph_redirect_edge_callee(%struct.cgraph_edge*, %struct.cgraph_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_cgraph_edge_p_base_iterate(%struct.VEC_cgraph_edge_p_base* %vec_, i32 %ix_, %struct.cgraph_edge** %ptr) unnamed_addr #0 !dbg !5920 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_cgraph_edge_p_base* %vec_, metadata !5927, metadata !DIExpression()), !dbg !5930
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5928, metadata !DIExpression()), !dbg !5930
  call void @llvm.dbg.value(metadata %struct.cgraph_edge** %ptr, metadata !5929, metadata !DIExpression()), !dbg !5930
  %tobool = icmp eq %struct.VEC_cgraph_edge_p_base* %vec_, null, !dbg !5931
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5931

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, %struct.VEC_cgraph_edge_p_base* %vec_, i64 0, i32 0, !dbg !5931
  %0 = load i32, i32* %num, align 8, !dbg !5931
  %cmp = icmp ugt i32 %0, %ix_, !dbg !5931
  br i1 %cmp, label %if.then, label %if.else, !dbg !5933

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !5934
  %arrayidx = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, %struct.VEC_cgraph_edge_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5934
  %1 = load %struct.cgraph_edge*, %struct.cgraph_edge** %arrayidx, align 8, !dbg !5934
  br label %return, !dbg !5934

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !5936

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.cgraph_edge* [ null, %if.else ], [ %1, %if.then ], !dbg !5938
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !5938
  store %struct.cgraph_edge* %storemerge, %struct.cgraph_edge** %ptr, align 8, !dbg !5938
  ret i32 %retval.0, !dbg !5933
}

declare dso_local zeroext i8 @maybe_clean_eh_stmt_fn(%struct.function*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @lower_nested_functions(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @tree_lowering_passes(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5939 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5941, metadata !DIExpression()), !dbg !5942
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !5943
  %cmp = icmp ugt i32 %call, 5, !dbg !5944
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5945

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !5946
  %cmp2 = icmp ult i32 %call1, 10, !dbg !5947
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !5948
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !5949 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !5953, metadata !DIExpression()), !dbg !5954
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !5955
  %0 = load i32, i32* %location, align 8, !dbg !5955
  ret i32 %0, !dbg !5956
}

declare dso_local void @dump_function_to_file(%union.tree_node*, %struct._IO_FILE*, i32) local_unnamed_addr #2

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
!llvm.module.flags = !{!2353, !2354, !2355}
!llvm.ident = !{!2356}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cgraph_dump_file", scope: !2, file: !3, line: 146, type: !2303, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !654, globals: !2247, nameTableKind: None)
!3 = !DIFile(filename: "cgraphunit.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !335, !340, !345, !363, !370, !377, !400, !407, !583, !622, !648}
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
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !378, line: 309, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./cgraph.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399}
!380 = !DIEnumerator(name: "CIF_OK", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "CIF_UNSPECIFIED", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "CIF_FUNCTION_NOT_CONSIDERED", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "CIF_BODY_NOT_AVAILABLE", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "CIF_REDEFINED_EXTERN_INLINE", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINABLE", value: 5, isUnsigned: true)
!386 = !DIEnumerator(name: "CIF_FUNCTION_NOT_INLINE_CANDIDATE", value: 6, isUnsigned: true)
!387 = !DIEnumerator(name: "CIF_LARGE_FUNCTION_GROWTH_LIMIT", value: 7, isUnsigned: true)
!388 = !DIEnumerator(name: "CIF_LARGE_STACK_FRAME_GROWTH_LIMIT", value: 8, isUnsigned: true)
!389 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_SINGLE_LIMIT", value: 9, isUnsigned: true)
!390 = !DIEnumerator(name: "CIF_MAX_INLINE_INSNS_AUTO_LIMIT", value: 10, isUnsigned: true)
!391 = !DIEnumerator(name: "CIF_INLINE_UNIT_GROWTH_LIMIT", value: 11, isUnsigned: true)
!392 = !DIEnumerator(name: "CIF_RECURSIVE_INLINING", value: 12, isUnsigned: true)
!393 = !DIEnumerator(name: "CIF_UNLIKELY_CALL", value: 13, isUnsigned: true)
!394 = !DIEnumerator(name: "CIF_NOT_DECLARED_INLINED", value: 14, isUnsigned: true)
!395 = !DIEnumerator(name: "CIF_OPTIMIZING_FOR_SIZE", value: 15, isUnsigned: true)
!396 = !DIEnumerator(name: "CIF_TARGET_OPTION_MISMATCH", value: 16, isUnsigned: true)
!397 = !DIEnumerator(name: "CIF_MISMATCHED_ARGUMENTS", value: 17, isUnsigned: true)
!398 = !DIEnumerator(name: "CIF_ORIGINALLY_INDIRECT_CALL", value: 18, isUnsigned: true)
!399 = !DIEnumerator(name: "CIF_N_REASONS", value: 19, isUnsigned: true)
!400 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !401, line: 104, baseType: !7, size: 32, elements: !402)
!401 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!402 = !{!403, !404, !405, !406}
!403 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!404 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!405 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!406 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!407 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !408, line: 74, baseType: !7, size: 32, elements: !409)
!408 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!410 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!559 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!560 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!561 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!562 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!563 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!564 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!565 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!566 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!567 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!568 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!569 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!570 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!571 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!572 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!573 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!574 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!575 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!576 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!577 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!578 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!579 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!580 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!581 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!582 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!583 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !584, line: 51, baseType: !7, size: 32, elements: !585)
!584 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!586 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!612 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!613 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!614 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!618 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!619 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!620 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!621 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!622 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !584, line: 727, baseType: !7, size: 32, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!624 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!625 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!631 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!632 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!633 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!634 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!635 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!636 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!637 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!638 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!639 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!640 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!641 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!642 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!643 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!644 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!645 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!646 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!647 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!648 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cgraph_order_sort_kind", file: !3, line: 1652, baseType: !7, size: 32, elements: !649)
!649 = !{!650, !651, !652, !653}
!650 = !DIEnumerator(name: "ORDER_UNDEFINED", value: 0, isUnsigned: true)
!651 = !DIEnumerator(name: "ORDER_FUNCTION", value: 1, isUnsigned: true)
!652 = !DIEnumerator(name: "ORDER_VAR", value: 2, isUnsigned: true)
!653 = !DIEnumerator(name: "ORDER_ASM", value: 3, isUnsigned: true)
!654 = !{!655, !656, !657, !658, !661, !662, !134, !664, !1515, !7, !989, !1991, !1023, !659, !1993, !791, !1995, !2000, !2229, !2245, !2246}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!657 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !665, line: 56, baseType: !666)
!665 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !668)
!668 = !{!669, !702, !708, !721, !740, !751, !756, !765, !771, !784, !796, !834, !1326, !1354, !1371, !1372, !1377, !1386, !1392, !1397, !1401, !1405, !1642, !1689, !1695, !1701, !1708, !1721, !1735, !1752, !1764, !1786, !1801, !1973}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !667, file: !135, line: 3372, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !670, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !670, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !670, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !670, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !670, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !670, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !670, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !670, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !670, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !670, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !670, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !670, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !670, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !670, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !670, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !670, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !670, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !670, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !670, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !670, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !670, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !670, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !670, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !670, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !670, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !670, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !670, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !670, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !670, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !670, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !667, file: !135, line: 3373, baseType: !703, size: 192)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !704)
!704 = !{!705, !706, !707}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !703, file: !135, line: 403, baseType: !670, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !703, file: !135, line: 404, baseType: !664, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !703, file: !135, line: 405, baseType: !664, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !667, file: !135, line: 3374, baseType: !709, size: 320)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !709, file: !135, line: 1385, baseType: !703, size: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !709, file: !135, line: 1386, baseType: !713, size: 128, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !714, line: 58, baseType: !715)
!714 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !714, line: 54, size: 128, elements: !716)
!716 = !{!717, !719}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !715, file: !714, line: 56, baseType: !718, size: 64)
!718 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !715, file: !714, line: 57, baseType: !720, size: 64, offset: 64)
!720 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !667, file: !135, line: 3375, baseType: !722, size: 256)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !722, file: !135, line: 1398, baseType: !703, size: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !722, file: !135, line: 1399, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !728, line: 52, size: 256, elements: !729)
!728 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!729 = !{!730, !731, !732, !733, !734, !735, !736}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !727, file: !728, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !727, file: !728, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !727, file: !728, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !727, file: !728, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !727, file: !728, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !727, file: !728, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !727, file: !728, line: 62, baseType: !737, size: 192, offset: 64)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 192, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 3)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !667, file: !135, line: 3376, baseType: !741, size: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !741, file: !135, line: 1409, baseType: !703, size: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !741, file: !135, line: 1410, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !747, line: 27, size: 192, elements: !748)
!747 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !746, file: !747, line: 29, baseType: !713, size: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !746, file: !747, line: 30, baseType: !5, size: 32, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !667, file: !135, line: 3377, baseType: !752, size: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !752, file: !135, line: 1438, baseType: !703, size: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !752, file: !135, line: 1439, baseType: !664, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !667, file: !135, line: 3378, baseType: !757, size: 256)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !757, file: !135, line: 1419, baseType: !703, size: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !757, file: !135, line: 1420, baseType: !657, size: 32, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !757, file: !135, line: 1421, baseType: !762, size: 8, offset: 224)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 8, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 1)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !667, file: !135, line: 3379, baseType: !766, size: 320)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !767)
!767 = !{!768, !769, !770}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !766, file: !135, line: 1429, baseType: !703, size: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !766, file: !135, line: 1430, baseType: !664, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !766, file: !135, line: 1431, baseType: !664, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !667, file: !135, line: 3380, baseType: !772, size: 320)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !772, file: !135, line: 1461, baseType: !703, size: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !772, file: !135, line: 1462, baseType: !776, size: 128, offset: 192)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !777, line: 31, size: 128, elements: !778)
!777 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!778 = !{!779, !782, !783}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !776, file: !777, line: 32, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !776, file: !777, line: 33, baseType: !7, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !776, file: !777, line: 34, baseType: !7, size: 32, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !667, file: !135, line: 3381, baseType: !785, size: 384)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !786)
!786 = !{!787, !788, !793, !794, !795}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !785, file: !135, line: 2508, baseType: !703, size: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !785, file: !135, line: 2509, baseType: !789, size: 32, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !790, line: 58, baseType: !791)
!790 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !792, line: 44, baseType: !7)
!792 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!793 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !785, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !785, file: !135, line: 2511, baseType: !664, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !785, file: !135, line: 2512, baseType: !664, size: 64, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !667, file: !135, line: 3382, baseType: !797, size: 896)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !798)
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !797, file: !135, line: 2653, baseType: !785, size: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !797, file: !135, line: 2654, baseType: !664, size: 64, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !797, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !797, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !797, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !797, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !797, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !797, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !797, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !797, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !797, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !797, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !797, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !797, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !797, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !797, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !797, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !797, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !797, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !797, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !797, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !797, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !797, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !797, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !797, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !797, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !797, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !797, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !797, file: !135, line: 2705, baseType: !664, size: 64, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !797, file: !135, line: 2706, baseType: !664, size: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !797, file: !135, line: 2707, baseType: !664, size: 64, offset: 704)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !797, file: !135, line: 2708, baseType: !664, size: 64, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !797, file: !135, line: 2711, baseType: !832, size: 64, offset: 832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !667, file: !135, line: 3383, baseType: !835, size: 960)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !835, file: !135, line: 2757, baseType: !797, size: 896)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !835, file: !135, line: 2758, baseType: !839, size: 64, offset: 896)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !665, line: 50, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !842, line: 240, size: 384, elements: !843)
!842 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!843 = !{!844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !841, file: !842, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !841, file: !842, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !841, file: !842, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !841, file: !842, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !841, file: !842, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !841, file: !842, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !841, file: !842, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !841, file: !842, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !841, file: !842, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !841, file: !842, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !841, file: !842, line: 321, baseType: !855, size: 320, offset: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !842, line: 315, size: 320, elements: !856)
!856 = !{!857, !1259, !1261, !1324, !1325}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !855, file: !842, line: 316, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 64, elements: !763)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !842, line: 183, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !842, line: 166, size: 64, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !874, !875, !887, !890, !950, !951, !1236, !1249, !1256}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !860, file: !842, line: 168, baseType: !657, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !860, file: !842, line: 169, baseType: !7, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !860, file: !842, line: 170, baseType: !662, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !860, file: !842, line: 171, baseType: !839, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !860, file: !842, line: 172, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !665, line: 53, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !842, line: 359, size: 128, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !869, file: !842, line: 360, baseType: !657, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !869, file: !842, line: 361, baseType: !873, size: 64, offset: 64)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 64, elements: !763)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !860, file: !842, line: 173, baseType: !5, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !860, file: !842, line: 174, baseType: !876, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !842, line: 133, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !842, line: 115, size: 32, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !877, file: !842, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !877, file: !842, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !877, file: !842, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !877, file: !842, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !877, file: !842, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !877, file: !842, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !877, file: !842, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !877, file: !842, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !860, file: !842, line: 175, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !842, line: 175, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !860, file: !842, line: 176, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !893, line: 75, size: 256, elements: !894)
!893 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!894 = !{!895, !909, !910, !911}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !892, file: !893, line: 76, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !893, line: 68, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !893, line: 63, size: 320, elements: !899)
!899 = !{!900, !902, !903, !904}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !893, line: 64, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !898, file: !893, line: 65, baseType: !901, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !898, file: !893, line: 66, baseType: !7, size: 32, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !898, file: !893, line: 67, baseType: !905, size: 128, offset: 192)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 128, elements: !907)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !893, line: 29, baseType: !718)
!907 = !{!908}
!908 = !DISubrange(count: 2)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !892, file: !893, line: 77, baseType: !896, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !892, file: !893, line: 78, baseType: !7, size: 32, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !892, file: !893, line: 79, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !893, line: 49, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !893, line: 45, size: 832, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !914, file: !893, line: 46, baseType: !901, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !914, file: !893, line: 47, baseType: !891, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !914, file: !893, line: 48, baseType: !919, size: 704, offset: 128)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !920, line: 164, size: 704, elements: !921)
!920 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!921 = !{!922, !923, !933, !934, !935, !936, !937, !938, !942, !946, !947, !948, !949}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !919, file: !920, line: 166, baseType: !720, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !919, file: !920, line: 167, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !920, line: 157, size: 192, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !925, file: !920, line: 159, baseType: !659, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !925, file: !920, line: 160, baseType: !924, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !925, file: !920, line: 161, baseType: !930, size: 32, offset: 128)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 32, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 4)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !919, file: !920, line: 168, baseType: !659, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !919, file: !920, line: 169, baseType: !659, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !919, file: !920, line: 170, baseType: !659, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !919, file: !920, line: 171, baseType: !720, size: 64, offset: 320)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !919, file: !920, line: 172, baseType: !657, size: 32, offset: 384)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !919, file: !920, line: 176, baseType: !939, size: 64, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!924, !661, !720}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !919, file: !920, line: 177, baseType: !943, size: 64, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !661, !924}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !919, file: !920, line: 178, baseType: !661, size: 64, offset: 576)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !919, file: !920, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !919, file: !920, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !919, file: !920, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !860, file: !842, line: 177, baseType: !664, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !860, file: !842, line: 178, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !330, line: 217, size: 832, elements: !954)
!954 = !{!955, !1201, !1202, !1203, !1206, !1210, !1211, !1212, !1230, !1231, !1232, !1233, !1234, !1235}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !953, file: !330, line: 219, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !330, line: 151, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !330, line: 151, size: 128, elements: !959)
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !958, file: !330, line: 151, baseType: !961, size: 128)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !330, line: 150, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !330, line: 150, size: 128, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !962, file: !330, line: 150, baseType: !7, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !962, file: !330, line: 150, baseType: !7, size: 32, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !962, file: !330, line: 150, baseType: !967, size: 64, offset: 64)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 64, elements: !763)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !665, line: 108, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !330, line: 122, size: 512, elements: !971)
!971 = !{!972, !973, !974, !1193, !1194, !1195, !1196, !1197, !1198, !1199}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !970, file: !330, line: 124, baseType: !952, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !970, file: !330, line: 125, baseType: !952, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !970, file: !330, line: 131, baseType: !975, size: 64, offset: 128)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !330, line: 128, size: 64, elements: !976)
!976 = !{!977, !1192}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !975, file: !330, line: 129, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !665, line: 66, baseType: !979)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !584, line: 143, size: 192, elements: !981)
!981 = !{!982, !1190, !1191}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !980, file: !584, line: 145, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !665, line: 69, baseType: !984)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !584, line: 136, size: 192, elements: !986)
!986 = !{!987, !1188, !1189}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !985, file: !584, line: 137, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !665, line: 58, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !584, line: 737, size: 768, elements: !991)
!991 = !{!992, !1009, !1043, !1049, !1054, !1059, !1066, !1072, !1078, !1083, !1097, !1102, !1108, !1113, !1123, !1128, !1146, !1153, !1160, !1166, !1171, !1177, !1183}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !990, file: !584, line: 738, baseType: !993, size: 256)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !584, line: 271, size: 256, elements: !994)
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !993, file: !584, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !993, file: !584, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !993, file: !584, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !993, file: !584, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !993, file: !584, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !993, file: !584, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !993, file: !584, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !993, file: !584, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !993, file: !584, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !993, file: !584, line: 312, baseType: !7, size: 32, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !993, file: !584, line: 316, baseType: !789, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !993, file: !584, line: 319, baseType: !7, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !993, file: !584, line: 323, baseType: !952, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !993, file: !584, line: 327, baseType: !664, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !990, file: !584, line: 739, baseType: !1010, size: 448)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !584, line: 350, size: 448, elements: !1011)
!1011 = !{!1012, !1041}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1010, file: !584, line: 353, baseType: !1013, size: 384)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !584, line: 333, size: 384, elements: !1014)
!1014 = !{!1015, !1016, !1024}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1013, file: !584, line: 336, baseType: !993, size: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1013, file: !584, line: 343, baseType: !1017, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1019, line: 37, size: 128, elements: !1020)
!1019 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1018, file: !1019, line: 39, baseType: !1017, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1018, file: !1019, line: 40, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1013, file: !584, line: 344, baseType: !1025, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1019, line: 45, size: 320, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1026, file: !1019, line: 47, baseType: !1025, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1026, file: !1019, line: 48, baseType: !1030, size: 256, offset: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !1031)
!1031 = !{!1032, !1034, !1035, !1040}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1030, file: !135, line: 1884, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1030, file: !135, line: 1885, baseType: !1033, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1030, file: !135, line: 1891, baseType: !1036, size: 64, offset: 128)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1030, file: !135, line: 1891, size: 64, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1036, file: !135, line: 1891, baseType: !988, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1036, file: !135, line: 1891, baseType: !664, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1030, file: !135, line: 1892, baseType: !1023, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1010, file: !584, line: 359, baseType: !1042, size: 64, offset: 384)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 64, elements: !763)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !990, file: !584, line: 740, baseType: !1044, size: 512)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !584, line: 365, size: 512, elements: !1045)
!1045 = !{!1046, !1047, !1048}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1044, file: !584, line: 368, baseType: !1013, size: 384)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1044, file: !584, line: 373, baseType: !664, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1044, file: !584, line: 374, baseType: !664, size: 64, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !990, file: !584, line: 741, baseType: !1050, size: 576)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !584, line: 380, size: 576, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1050, file: !584, line: 383, baseType: !1044, size: 512)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1050, file: !584, line: 389, baseType: !1042, size: 64, offset: 512)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !990, file: !584, line: 742, baseType: !1055, size: 320)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !584, line: 395, size: 320, elements: !1056)
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1055, file: !584, line: 397, baseType: !993, size: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1055, file: !584, line: 400, baseType: !978, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !990, file: !584, line: 743, baseType: !1060, size: 448)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !584, line: 406, size: 448, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1060, file: !584, line: 408, baseType: !993, size: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1060, file: !584, line: 412, baseType: !664, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1060, file: !584, line: 420, baseType: !664, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1060, file: !584, line: 423, baseType: !978, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !990, file: !584, line: 744, baseType: !1067, size: 384)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !584, line: 429, size: 384, elements: !1068)
!1068 = !{!1069, !1070, !1071}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1067, file: !584, line: 431, baseType: !993, size: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1067, file: !584, line: 434, baseType: !664, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1067, file: !584, line: 437, baseType: !978, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !990, file: !584, line: 745, baseType: !1073, size: 384)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !584, line: 443, size: 384, elements: !1074)
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1073, file: !584, line: 445, baseType: !993, size: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1073, file: !584, line: 449, baseType: !664, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1073, file: !584, line: 453, baseType: !978, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !990, file: !584, line: 746, baseType: !1079, size: 320)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !584, line: 459, size: 320, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1079, file: !584, line: 461, baseType: !993, size: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1079, file: !584, line: 464, baseType: !664, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !990, file: !584, line: 747, baseType: !1084, size: 768)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !584, line: 469, size: 768, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089, !1090}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1084, file: !584, line: 471, baseType: !993, size: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1084, file: !584, line: 474, baseType: !7, size: 32, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1084, file: !584, line: 475, baseType: !7, size: 32, offset: 288)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1084, file: !584, line: 478, baseType: !664, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1084, file: !584, line: 481, baseType: !1091, size: 384, offset: 384)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1092, size: 384, elements: !763)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !1093)
!1093 = !{!1094, !1095, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1092, file: !135, line: 1920, baseType: !1030, size: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1092, file: !135, line: 1921, baseType: !664, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1092, file: !135, line: 1922, baseType: !789, size: 32, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !990, file: !584, line: 748, baseType: !1098, size: 320)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !584, line: 487, size: 320, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1098, file: !584, line: 490, baseType: !993, size: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1098, file: !584, line: 494, baseType: !657, size: 32, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !990, file: !584, line: 749, baseType: !1103, size: 384)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !584, line: 500, size: 384, elements: !1104)
!1104 = !{!1105, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1103, file: !584, line: 502, baseType: !993, size: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1103, file: !584, line: 506, baseType: !978, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1103, file: !584, line: 510, baseType: !978, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !990, file: !584, line: 750, baseType: !1109, size: 320)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !584, line: 529, size: 320, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1109, file: !584, line: 531, baseType: !993, size: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1109, file: !584, line: 540, baseType: !978, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !990, file: !584, line: 751, baseType: !1114, size: 704)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !584, line: 546, size: 704, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1114, file: !584, line: 549, baseType: !1044, size: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1114, file: !584, line: 553, baseType: !662, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1114, file: !584, line: 557, baseType: !656, size: 8, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1114, file: !584, line: 558, baseType: !656, size: 8, offset: 584)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1114, file: !584, line: 559, baseType: !656, size: 8, offset: 592)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1114, file: !584, line: 560, baseType: !656, size: 8, offset: 600)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1114, file: !584, line: 566, baseType: !1042, size: 64, offset: 640)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !990, file: !584, line: 752, baseType: !1124, size: 384)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !584, line: 571, size: 384, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1124, file: !584, line: 573, baseType: !1055, size: 320)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1124, file: !584, line: 577, baseType: !664, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !990, file: !584, line: 753, baseType: !1129, size: 576)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !584, line: 600, size: 576, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1136, !1145}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1129, file: !584, line: 602, baseType: !1055, size: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1129, file: !584, line: 605, baseType: !664, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1129, file: !584, line: 609, baseType: !1134, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1135, line: 46, baseType: !718)
!1135 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1129, file: !584, line: 612, baseType: !1137, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !584, line: 581, size: 320, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1138, file: !584, line: 583, baseType: !134, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1138, file: !584, line: 586, baseType: !664, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1138, file: !584, line: 589, baseType: !664, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1138, file: !584, line: 592, baseType: !664, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1138, file: !584, line: 595, baseType: !664, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1129, file: !584, line: 616, baseType: !978, size: 64, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !990, file: !584, line: 754, baseType: !1147, size: 512)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !584, line: 622, size: 512, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1147, file: !584, line: 624, baseType: !1055, size: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1147, file: !584, line: 628, baseType: !664, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1147, file: !584, line: 632, baseType: !664, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1147, file: !584, line: 636, baseType: !664, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !990, file: !584, line: 755, baseType: !1154, size: 704)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !584, line: 642, size: 704, elements: !1155)
!1155 = !{!1156, !1157, !1158, !1159}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1154, file: !584, line: 644, baseType: !1147, size: 512)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1154, file: !584, line: 648, baseType: !664, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1154, file: !584, line: 652, baseType: !664, size: 64, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1154, file: !584, line: 653, baseType: !664, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !990, file: !584, line: 756, baseType: !1161, size: 448)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !584, line: 663, size: 448, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1161, file: !584, line: 665, baseType: !1055, size: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1161, file: !584, line: 668, baseType: !664, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1161, file: !584, line: 673, baseType: !664, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !990, file: !584, line: 757, baseType: !1167, size: 384)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !584, line: 694, size: 384, elements: !1168)
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1167, file: !584, line: 696, baseType: !1055, size: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1167, file: !584, line: 699, baseType: !664, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !990, file: !584, line: 758, baseType: !1172, size: 384)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !584, line: 681, size: 384, elements: !1173)
!1173 = !{!1174, !1175, !1176}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1172, file: !584, line: 683, baseType: !993, size: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1172, file: !584, line: 686, baseType: !664, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1172, file: !584, line: 689, baseType: !664, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !990, file: !584, line: 759, baseType: !1178, size: 384)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !584, line: 707, size: 384, elements: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1178, file: !584, line: 709, baseType: !993, size: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1178, file: !584, line: 712, baseType: !664, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1178, file: !584, line: 712, baseType: !664, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !990, file: !584, line: 760, baseType: !1184, size: 320)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !584, line: 718, size: 320, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1184, file: !584, line: 720, baseType: !993, size: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1184, file: !584, line: 723, baseType: !664, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !985, file: !584, line: 138, baseType: !984, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !985, file: !584, line: 139, baseType: !984, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !980, file: !584, line: 146, baseType: !983, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !980, file: !584, line: 152, baseType: !978, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !975, file: !330, line: 130, baseType: !839, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !970, file: !330, line: 134, baseType: !661, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !970, file: !330, line: 137, baseType: !664, size: 64, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !970, file: !330, line: 138, baseType: !789, size: 32, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !970, file: !330, line: 142, baseType: !7, size: 32, offset: 352)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !970, file: !330, line: 144, baseType: !657, size: 32, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !970, file: !330, line: 145, baseType: !657, size: 32, offset: 416)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !970, file: !330, line: 146, baseType: !1200, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !330, line: 119, baseType: !720)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !953, file: !330, line: 220, baseType: !956, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !953, file: !330, line: 223, baseType: !661, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !953, file: !330, line: 226, baseType: !1204, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 185, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !953, file: !330, line: 229, baseType: !1207, size: 128, offset: 256)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1208, size: 128, elements: !907)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !330, line: 229, flags: DIFlagFwdDecl)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !953, file: !330, line: 232, baseType: !952, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !953, file: !330, line: 233, baseType: !952, size: 64, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !953, file: !330, line: 238, baseType: !1213, size: 64, offset: 512)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !330, line: 235, size: 64, elements: !1214)
!1214 = !{!1215, !1221}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1213, file: !330, line: 236, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !330, line: 273, size: 128, elements: !1218)
!1218 = !{!1219, !1220}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1217, file: !330, line: 275, baseType: !978, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1217, file: !330, line: 278, baseType: !978, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1213, file: !330, line: 237, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !330, line: 259, size: 320, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1229}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1223, file: !330, line: 261, baseType: !839, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1223, file: !330, line: 262, baseType: !839, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1223, file: !330, line: 266, baseType: !839, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1223, file: !330, line: 267, baseType: !839, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1223, file: !330, line: 270, baseType: !657, size: 32, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !953, file: !330, line: 241, baseType: !1200, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !953, file: !330, line: 244, baseType: !657, size: 32, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !953, file: !330, line: 247, baseType: !657, size: 32, offset: 672)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !953, file: !330, line: 250, baseType: !657, size: 32, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !953, file: !330, line: 253, baseType: !657, size: 32, offset: 736)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !953, file: !330, line: 256, baseType: !657, size: 32, offset: 768)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !860, file: !842, line: 179, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !842, line: 150, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !842, line: 142, size: 320, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1247, !1248}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1239, file: !842, line: 144, baseType: !664, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1239, file: !842, line: 145, baseType: !839, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1239, file: !842, line: 146, baseType: !839, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1239, file: !842, line: 147, baseType: !1245, size: 32, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1246, line: 31, baseType: !657)
!1246 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1239, file: !842, line: 148, baseType: !7, size: 32, offset: 224)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1239, file: !842, line: 149, baseType: !656, size: 8, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !860, file: !842, line: 180, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !842, line: 162, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !842, line: 159, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1252, file: !842, line: 160, baseType: !664, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1252, file: !842, line: 161, baseType: !720, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !860, file: !842, line: 181, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !842, line: 181, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !855, file: !842, line: 317, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 64, elements: !763)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !855, file: !842, line: 318, baseType: !1262, size: 320)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !842, line: 188, size: 320, elements: !1263)
!1263 = !{!1264, !1266, !1323}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1262, file: !842, line: 190, baseType: !1265, size: 192)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 192, elements: !738)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1262, file: !842, line: 193, baseType: !1267, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !842, line: 206, size: 320, elements: !1269)
!1269 = !{!1270, !1308, !1309, !1310, !1322}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1268, file: !842, line: 208, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !665, line: 62, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1274, line: 538, size: 256, elements: !1275)
!1274 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1275 = !{!1276, !1280, !1286, !1299}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1273, file: !1274, line: 539, baseType: !1277, size: 32)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1274, line: 482, size: 32, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1274, line: 484, baseType: !7, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1273, file: !1274, line: 540, baseType: !1281, size: 192)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1274, line: 488, size: 192, elements: !1282)
!1282 = !{!1283, !1284, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1281, file: !1274, line: 489, baseType: !1277, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1281, file: !1274, line: 492, baseType: !662, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1281, file: !1274, line: 496, baseType: !664, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1273, file: !1274, line: 541, baseType: !1287, size: 256)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1274, line: 504, size: 256, elements: !1288)
!1288 = !{!1289, !1290, !1297, !1298}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1287, file: !1274, line: 505, baseType: !1277, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1287, file: !1274, line: 509, baseType: !1291, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1274, line: 501, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1287, file: !1274, line: 510, baseType: !1295, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1287, file: !1274, line: 513, baseType: !1271, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1273, file: !1274, line: 542, baseType: !1300, size: 128)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1274, line: 530, size: 128, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1300, file: !1274, line: 531, baseType: !1277, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1300, file: !1274, line: 534, baseType: !1304, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1274, line: 525, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!656, !664, !662, !718, !718}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1268, file: !842, line: 211, baseType: !7, size: 32, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1268, file: !842, line: 214, baseType: !720, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1268, file: !842, line: 224, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !842, line: 202, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !842, line: 202, size: 128, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1313, file: !842, line: 202, baseType: !1316, size: 128)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !842, line: 200, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !842, line: 200, size: 128, elements: !1318)
!1318 = !{!1319, !1320, !1321}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1317, file: !842, line: 200, baseType: !7, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1317, file: !842, line: 200, baseType: !7, size: 32, offset: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1317, file: !842, line: 200, baseType: !873, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1268, file: !842, line: 234, baseType: !1311, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1262, file: !842, line: 197, baseType: !720, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !855, file: !842, line: 319, baseType: !727, size: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !855, file: !842, line: 320, baseType: !746, size: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !667, file: !135, line: 3384, baseType: !1327, size: 1472)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1328)
!1328 = !{!1329, !1350, !1351, !1352, !1353}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1327, file: !135, line: 3115, baseType: !1330, size: 1216)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1330, file: !135, line: 2985, baseType: !835, size: 960)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1330, file: !135, line: 2986, baseType: !664, size: 64, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1330, file: !135, line: 2987, baseType: !664, size: 64, offset: 1024)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1330, file: !135, line: 2988, baseType: !664, size: 64, offset: 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1330, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1330, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1330, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1330, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1330, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1330, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1330, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1330, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1330, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1330, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1330, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1330, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1330, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1330, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1327, file: !135, line: 3117, baseType: !664, size: 64, offset: 1216)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1327, file: !135, line: 3119, baseType: !664, size: 64, offset: 1280)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1327, file: !135, line: 3121, baseType: !664, size: 64, offset: 1344)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1327, file: !135, line: 3123, baseType: !664, size: 64, offset: 1408)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !667, file: !135, line: 3385, baseType: !1355, size: 1088)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1356)
!1356 = !{!1357, !1358, !1359}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1355, file: !135, line: 2875, baseType: !835, size: 960)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1355, file: !135, line: 2876, baseType: !839, size: 64, offset: 960)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1355, file: !135, line: 2877, baseType: !1360, size: 64, offset: 1024)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1362, line: 172, size: 128, elements: !1363)
!1362 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1361, file: !1362, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1361, file: !1362, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1361, file: !1362, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1361, file: !1362, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1361, file: !1362, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1361, file: !1362, line: 195, baseType: !7, size: 32, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1361, file: !1362, line: 199, baseType: !664, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !667, file: !135, line: 3386, baseType: !1330, size: 1216)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !667, file: !135, line: 3387, baseType: !1373, size: 1280)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1373, file: !135, line: 3094, baseType: !1330, size: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1373, file: !135, line: 3095, baseType: !1360, size: 64, offset: 1216)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !667, file: !135, line: 3388, baseType: !1378, size: 1216)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1379)
!1379 = !{!1380, !1381, !1382, !1383, !1384, !1385}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1378, file: !135, line: 2825, baseType: !797, size: 896)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1378, file: !135, line: 2827, baseType: !664, size: 64, offset: 896)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1378, file: !135, line: 2828, baseType: !664, size: 64, offset: 960)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1378, file: !135, line: 2829, baseType: !664, size: 64, offset: 1024)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1378, file: !135, line: 2830, baseType: !664, size: 64, offset: 1088)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1378, file: !135, line: 2831, baseType: !664, size: 64, offset: 1152)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !667, file: !135, line: 3389, baseType: !1387, size: 1024)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1388)
!1388 = !{!1389, !1390, !1391}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1387, file: !135, line: 2851, baseType: !835, size: 960)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1387, file: !135, line: 2852, baseType: !657, size: 32, offset: 960)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1387, file: !135, line: 2853, baseType: !657, size: 32, offset: 992)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !667, file: !135, line: 3390, baseType: !1393, size: 1024)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1393, file: !135, line: 2858, baseType: !835, size: 960)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1393, file: !135, line: 2859, baseType: !1360, size: 64, offset: 960)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !667, file: !135, line: 3391, baseType: !1398, size: 960)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1398, file: !135, line: 2863, baseType: !835, size: 960)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !667, file: !135, line: 3392, baseType: !1402, size: 1472)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1403)
!1403 = !{!1404}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1402, file: !135, line: 3305, baseType: !1327, size: 1472)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !667, file: !135, line: 3393, baseType: !1406, size: 1792)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1407)
!1407 = !{!1408, !1409, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1406, file: !135, line: 3249, baseType: !1327, size: 1472)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1406, file: !135, line: 3251, baseType: !1410, size: 64, offset: 1472)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1412, line: 463, size: 1152, elements: !1413)
!1412 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1413 = !{!1414, !1417, !1448, !1449, !1562, !1565, !1566, !1567, !1568, !1569, !1570, !1594, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1411, file: !1412, line: 464, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1412, line: 464, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1411, file: !1412, line: 467, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !330, line: 374, size: 640, elements: !1420)
!1420 = !{!1421, !1423, !1424, !1437, !1438, !1439, !1440, !1441, !1442, !1444, !1446, !1447}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1419, file: !330, line: 377, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !665, line: 111, baseType: !952)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1419, file: !330, line: 378, baseType: !1422, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1419, file: !330, line: 381, baseType: !1425, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !330, line: 282, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !330, line: 282, size: 128, elements: !1428)
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1427, file: !330, line: 282, baseType: !1430, size: 128)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !330, line: 281, baseType: !1431)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !330, line: 281, size: 128, elements: !1432)
!1432 = !{!1433, !1434, !1435}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1431, file: !330, line: 281, baseType: !7, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1431, file: !330, line: 281, baseType: !7, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1431, file: !330, line: 281, baseType: !1436, size: 64, offset: 64)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 64, elements: !763)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1419, file: !330, line: 384, baseType: !657, size: 32, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1419, file: !330, line: 387, baseType: !657, size: 32, offset: 224)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1419, file: !330, line: 390, baseType: !657, size: 32, offset: 256)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1419, file: !330, line: 394, baseType: !1425, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1419, file: !330, line: 396, baseType: !329, size: 32, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1419, file: !330, line: 399, baseType: !1443, size: 64, offset: 416)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !907)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1419, file: !330, line: 402, baseType: !1445, size: 64, offset: 480)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !907)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1419, file: !330, line: 406, baseType: !657, size: 32, offset: 544)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1419, file: !330, line: 409, baseType: !657, size: 32, offset: 576)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1411, file: !1412, line: 470, baseType: !979, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1411, file: !1412, line: 473, baseType: !1450, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1362, line: 39, size: 1152, elements: !1452)
!1452 = !{!1453, !1501, !1514, !1526, !1527, !1539, !1540, !1544, !1545, !1546, !1547, !1548}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1451, file: !1362, line: 41, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1455, line: 144, baseType: !1456)
!1455 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1455, line: 100, size: 896, elements: !1458)
!1458 = !{!1459, !1465, !1470, !1475, !1477, !1478, !1479, !1480, !1481, !1482, !1487, !1489, !1490, !1495, !1500}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1457, file: !1455, line: 102, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1455, line: 52, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1464, !1295}
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1455, line: 47, baseType: !7)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1457, file: !1455, line: 105, baseType: !1466, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1455, line: 59, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!657, !1295, !1295}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1457, file: !1455, line: 108, baseType: !1471, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1455, line: 63, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !661}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1457, file: !1455, line: 111, baseType: !1476, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1457, file: !1455, line: 114, baseType: !1134, size: 64, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1457, file: !1455, line: 117, baseType: !1134, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1457, file: !1455, line: 120, baseType: !1134, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1457, file: !1455, line: 124, baseType: !7, size: 32, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1457, file: !1455, line: 128, baseType: !7, size: 32, offset: 480)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1457, file: !1455, line: 131, baseType: !1483, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1455, line: 75, baseType: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!661, !1134, !1134}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1457, file: !1455, line: 132, baseType: !1488, size: 64, offset: 576)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1455, line: 78, baseType: !1472)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1457, file: !1455, line: 135, baseType: !661, size: 64, offset: 640)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1457, file: !1455, line: 136, baseType: !1491, size: 64, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1455, line: 82, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!661, !661, !1134, !1134}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1457, file: !1455, line: 137, baseType: !1496, size: 64, offset: 768)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1455, line: 83, baseType: !1497)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !661, !661}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1457, file: !1455, line: 141, baseType: !7, size: 32, offset: 832)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1451, file: !1362, line: 48, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !584, line: 35, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !584, line: 35, size: 128, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1504, file: !584, line: 35, baseType: !1507, size: 128)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !584, line: 33, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !584, line: 33, size: 128, elements: !1509)
!1509 = !{!1510, !1511, !1512}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1508, file: !584, line: 33, baseType: !7, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1508, file: !584, line: 33, baseType: !7, size: 32, offset: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1508, file: !584, line: 33, baseType: !1513, size: 64, offset: 64)
!1513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 64, elements: !763)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1451, file: !1362, line: 51, baseType: !1515, size: 64, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1518)
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1517, file: !135, line: 183, baseType: !1520, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !1522)
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1521, file: !135, line: 182, baseType: !7, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1521, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1521, file: !135, line: 182, baseType: !1042, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1451, file: !1362, line: 54, baseType: !664, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1451, file: !1362, line: 57, baseType: !1528, size: 128, offset: 256)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1529, line: 31, size: 128, elements: !1530)
!1529 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1528, file: !1529, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1528, file: !1529, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1528, file: !1529, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1528, file: !1529, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1528, file: !1529, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1528, file: !1529, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1528, file: !1529, line: 56, baseType: !1538, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !665, line: 47, baseType: !891)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1451, file: !1362, line: 60, baseType: !1528, size: 128, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1451, file: !1362, line: 64, baseType: !1541, size: 64, offset: 512)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1543, line: 33, flags: DIFlagFwdDecl)
!1543 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1451, file: !1362, line: 67, baseType: !664, size: 64, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1451, file: !1362, line: 73, baseType: !1454, size: 64, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1451, file: !1362, line: 77, baseType: !1538, size: 64, offset: 704)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1451, file: !1362, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1451, file: !1362, line: 82, baseType: !1549, size: 320, offset: 832)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1019, line: 62, size: 320, elements: !1550)
!1550 = !{!1551, !1557, !1558, !1559, !1560, !1561}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1549, file: !1019, line: 63, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1019, line: 56, size: 128, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1553, file: !1019, line: 57, baseType: !1552, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1553, file: !1019, line: 58, baseType: !762, size: 8, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1549, file: !1019, line: 64, baseType: !7, size: 32, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1549, file: !1019, line: 66, baseType: !7, size: 32, offset: 96)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1549, file: !1019, line: 68, baseType: !656, size: 8, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1549, file: !1019, line: 70, baseType: !1017, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1549, file: !1019, line: 71, baseType: !1025, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1411, file: !1412, line: 476, baseType: !1563, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1412, line: 476, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1411, file: !1412, line: 479, baseType: !1454, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1411, file: !1412, line: 484, baseType: !664, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1411, file: !1412, line: 488, baseType: !664, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1411, file: !1412, line: 493, baseType: !664, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1411, file: !1412, line: 496, baseType: !664, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1411, file: !1412, line: 501, baseType: !1571, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !341, line: 2355, size: 576, elements: !1573)
!1573 = !{!1574, !1577, !1578, !1579, !1580, !1582, !1583, !1588, !1589, !1590, !1591, !1592, !1593}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1572, file: !341, line: 2356, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !341, line: 2356, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1572, file: !341, line: 2357, baseType: !662, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1572, file: !341, line: 2358, baseType: !657, size: 32, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1572, file: !341, line: 2359, baseType: !657, size: 32, offset: 160)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1572, file: !341, line: 2360, baseType: !1581, size: 128, offset: 192)
!1581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 128, elements: !931)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1572, file: !341, line: 2364, baseType: !657, size: 32, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1572, file: !341, line: 2367, baseType: !1584, size: 128, offset: 384)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !341, line: 2349, size: 128, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1584, file: !341, line: 2351, baseType: !839, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1584, file: !341, line: 2352, baseType: !720, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1572, file: !341, line: 2371, baseType: !340, size: 32, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1572, file: !341, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1572, file: !341, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1572, file: !341, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1572, file: !341, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1572, file: !341, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1411, file: !1412, line: 504, baseType: !1595, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1412, line: 504, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1411, file: !1412, line: 507, baseType: !1454, size: 64, offset: 768)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1411, file: !1412, line: 510, baseType: !657, size: 32, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1411, file: !1412, line: 513, baseType: !657, size: 32, offset: 864)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1411, file: !1412, line: 516, baseType: !789, size: 32, offset: 896)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1411, file: !1412, line: 519, baseType: !789, size: 32, offset: 928)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1411, file: !1412, line: 522, baseType: !7, size: 32, offset: 960)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1411, file: !1412, line: 523, baseType: !7, size: 32, offset: 992)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1411, file: !1412, line: 528, baseType: !662, size: 64, offset: 1024)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1411, file: !1412, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1411, file: !1412, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1411, file: !1412, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1411, file: !1412, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1411, file: !1412, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1411, file: !1412, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1411, file: !1412, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1411, file: !1412, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1411, file: !1412, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1411, file: !1412, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1411, file: !1412, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1411, file: !1412, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1411, file: !1412, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1411, file: !1412, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1411, file: !1412, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1411, file: !1412, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1406, file: !135, line: 3254, baseType: !664, size: 64, offset: 1536)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1406, file: !135, line: 3257, baseType: !664, size: 64, offset: 1600)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1406, file: !135, line: 3258, baseType: !664, size: 64, offset: 1664)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1406, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1406, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1406, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1406, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1406, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1406, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1406, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1406, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1406, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1406, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1406, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1406, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1406, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1406, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1406, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1406, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1406, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1406, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !135, line: 3394, baseType: !1643, size: 1344)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1643, file: !135, line: 2280, baseType: !703, size: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1643, file: !135, line: 2281, baseType: !664, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1643, file: !135, line: 2282, baseType: !664, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1643, file: !135, line: 2283, baseType: !664, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1643, file: !135, line: 2284, baseType: !664, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1643, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1643, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1643, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1643, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1643, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1643, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1643, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1643, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1643, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1643, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1643, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1643, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1643, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1643, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1643, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1643, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1643, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1643, file: !135, line: 2306, baseType: !1245, size: 32, offset: 544)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1643, file: !135, line: 2307, baseType: !664, size: 64, offset: 576)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1643, file: !135, line: 2308, baseType: !664, size: 64, offset: 640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1643, file: !135, line: 2314, baseType: !1671, size: 64, offset: 704)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1672)
!1672 = !{!1673, !1674, !1675}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1671, file: !135, line: 2310, baseType: !657, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1671, file: !135, line: 2311, baseType: !662, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1671, file: !135, line: 2312, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1643, file: !135, line: 2315, baseType: !664, size: 64, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1643, file: !135, line: 2316, baseType: !664, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1643, file: !135, line: 2317, baseType: !664, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1643, file: !135, line: 2318, baseType: !664, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1643, file: !135, line: 2319, baseType: !664, size: 64, offset: 1024)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1643, file: !135, line: 2320, baseType: !664, size: 64, offset: 1088)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1643, file: !135, line: 2321, baseType: !664, size: 64, offset: 1152)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1643, file: !135, line: 2322, baseType: !664, size: 64, offset: 1216)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1643, file: !135, line: 2324, baseType: !1687, size: 64, offset: 1280)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !667, file: !135, line: 3395, baseType: !1690, size: 320)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1690, file: !135, line: 1470, baseType: !703, size: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1690, file: !135, line: 1471, baseType: !664, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1690, file: !135, line: 1472, baseType: !664, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !667, file: !135, line: 3396, baseType: !1696, size: 320)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1697)
!1697 = !{!1698, !1699, !1700}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1696, file: !135, line: 1483, baseType: !703, size: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1696, file: !135, line: 1484, baseType: !657, size: 32, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1696, file: !135, line: 1485, baseType: !1042, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !667, file: !135, line: 3397, baseType: !1702, size: 384)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1707}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1702, file: !135, line: 1830, baseType: !703, size: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1702, file: !135, line: 1831, baseType: !789, size: 32, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1702, file: !135, line: 1832, baseType: !664, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1702, file: !135, line: 1835, baseType: !1042, size: 64, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !667, file: !135, line: 3398, baseType: !1709, size: 704)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1720}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1709, file: !135, line: 1899, baseType: !703, size: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1709, file: !135, line: 1902, baseType: !664, size: 64, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1709, file: !135, line: 1905, baseType: !988, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1709, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1709, file: !135, line: 1911, baseType: !1716, size: 64, offset: 384)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1362, line: 117, size: 128, elements: !1718)
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1717, file: !1362, line: 120, baseType: !1528, size: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1709, file: !135, line: 1914, baseType: !1030, size: 256, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !667, file: !135, line: 3399, baseType: !1722, size: 704)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1722, file: !135, line: 2009, baseType: !703, size: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1722, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1722, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1722, file: !135, line: 2014, baseType: !789, size: 32, offset: 224)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1722, file: !135, line: 2016, baseType: !664, size: 64, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1722, file: !135, line: 2017, baseType: !1515, size: 64, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1722, file: !135, line: 2019, baseType: !664, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1722, file: !135, line: 2020, baseType: !664, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1722, file: !135, line: 2021, baseType: !664, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1722, file: !135, line: 2022, baseType: !664, size: 64, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1722, file: !135, line: 2023, baseType: !664, size: 64, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !667, file: !135, line: 3400, baseType: !1736, size: 832)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1737)
!1737 = !{!1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1736, file: !135, line: 2431, baseType: !703, size: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1736, file: !135, line: 2433, baseType: !664, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1736, file: !135, line: 2434, baseType: !664, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1736, file: !135, line: 2435, baseType: !664, size: 64, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1736, file: !135, line: 2436, baseType: !664, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1736, file: !135, line: 2437, baseType: !1515, size: 64, offset: 448)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1736, file: !135, line: 2438, baseType: !664, size: 64, offset: 512)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1736, file: !135, line: 2440, baseType: !664, size: 64, offset: 576)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1736, file: !135, line: 2441, baseType: !664, size: 64, offset: 640)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1736, file: !135, line: 2443, baseType: !1748, size: 128, offset: 704)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1749, file: !135, line: 182, baseType: !1520, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !667, file: !135, line: 3401, baseType: !1753, size: 320)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1754)
!1754 = !{!1755, !1756, !1763}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1753, file: !135, line: 3329, baseType: !703, size: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1753, file: !135, line: 3330, baseType: !1757, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1758, file: !135, line: 3322, baseType: !1757, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1758, file: !135, line: 3323, baseType: !1757, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1758, file: !135, line: 3324, baseType: !664, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1753, file: !135, line: 3331, baseType: !1757, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !667, file: !135, line: 3402, baseType: !1765, size: 256)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1765, file: !135, line: 1541, baseType: !703, size: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1765, file: !135, line: 1542, baseType: !1769, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1772)
!1772 = !{!1773}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1771, file: !135, line: 1538, baseType: !1774, size: 192)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1776)
!1776 = !{!1777, !1778, !1779}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1775, file: !135, line: 1537, baseType: !7, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1775, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1775, file: !135, line: 1537, baseType: !1780, size: 128, offset: 64)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1781, size: 128, elements: !763)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1782, file: !135, line: 1533, baseType: !664, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1782, file: !135, line: 1534, baseType: !664, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !667, file: !135, line: 3403, baseType: !1787, size: 512)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792, !1798, !1799, !1800}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1787, file: !135, line: 1939, baseType: !703, size: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1787, file: !135, line: 1940, baseType: !789, size: 32, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1787, file: !135, line: 1941, baseType: !345, size: 32, offset: 224)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1787, file: !135, line: 1946, baseType: !1793, size: 32, offset: 256)
!1793 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1794)
!1794 = !{!1795, !1796, !1797}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1793, file: !135, line: 1943, baseType: !363, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1793, file: !135, line: 1944, baseType: !370, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1793, file: !135, line: 1945, baseType: !134, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1787, file: !135, line: 1950, baseType: !978, size: 64, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1787, file: !135, line: 1951, baseType: !978, size: 64, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1787, file: !135, line: 1953, baseType: !1042, size: 64, offset: 448)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !667, file: !135, line: 3404, baseType: !1802, size: 1664)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1802, file: !135, line: 3338, baseType: !703, size: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1802, file: !135, line: 3341, baseType: !1806, size: 1472, offset: 192)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1807, line: 410, size: 1472, elements: !1808)
!1807 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1806, file: !1807, line: 412, baseType: !657, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1806, file: !1807, line: 413, baseType: !657, size: 32, offset: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1806, file: !1807, line: 414, baseType: !657, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1806, file: !1807, line: 415, baseType: !657, size: 32, offset: 96)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1806, file: !1807, line: 416, baseType: !657, size: 32, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1806, file: !1807, line: 417, baseType: !657, size: 32, offset: 160)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1806, file: !1807, line: 418, baseType: !656, size: 8, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1806, file: !1807, line: 419, baseType: !656, size: 8, offset: 200)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1806, file: !1807, line: 420, baseType: !1818, size: 8, offset: 208)
!1818 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1806, file: !1807, line: 421, baseType: !1818, size: 8, offset: 216)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1806, file: !1807, line: 422, baseType: !1818, size: 8, offset: 224)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1806, file: !1807, line: 423, baseType: !1818, size: 8, offset: 232)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1806, file: !1807, line: 424, baseType: !1818, size: 8, offset: 240)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1806, file: !1807, line: 425, baseType: !1818, size: 8, offset: 248)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1806, file: !1807, line: 426, baseType: !1818, size: 8, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1806, file: !1807, line: 427, baseType: !1818, size: 8, offset: 264)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1806, file: !1807, line: 428, baseType: !1818, size: 8, offset: 272)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1806, file: !1807, line: 429, baseType: !1818, size: 8, offset: 280)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1806, file: !1807, line: 430, baseType: !1818, size: 8, offset: 288)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1806, file: !1807, line: 431, baseType: !1818, size: 8, offset: 296)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1806, file: !1807, line: 432, baseType: !1818, size: 8, offset: 304)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1806, file: !1807, line: 433, baseType: !1818, size: 8, offset: 312)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1806, file: !1807, line: 434, baseType: !1818, size: 8, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1806, file: !1807, line: 435, baseType: !1818, size: 8, offset: 328)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1806, file: !1807, line: 436, baseType: !1818, size: 8, offset: 336)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1806, file: !1807, line: 437, baseType: !1818, size: 8, offset: 344)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1806, file: !1807, line: 438, baseType: !1818, size: 8, offset: 352)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1806, file: !1807, line: 439, baseType: !1818, size: 8, offset: 360)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1806, file: !1807, line: 440, baseType: !1818, size: 8, offset: 368)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1806, file: !1807, line: 441, baseType: !1818, size: 8, offset: 376)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1806, file: !1807, line: 442, baseType: !1818, size: 8, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1806, file: !1807, line: 443, baseType: !1818, size: 8, offset: 392)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1806, file: !1807, line: 444, baseType: !1818, size: 8, offset: 400)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1806, file: !1807, line: 445, baseType: !1818, size: 8, offset: 408)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1806, file: !1807, line: 446, baseType: !1818, size: 8, offset: 416)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1806, file: !1807, line: 447, baseType: !1818, size: 8, offset: 424)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1806, file: !1807, line: 448, baseType: !1818, size: 8, offset: 432)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1806, file: !1807, line: 449, baseType: !1818, size: 8, offset: 440)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1806, file: !1807, line: 450, baseType: !1818, size: 8, offset: 448)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1806, file: !1807, line: 451, baseType: !1818, size: 8, offset: 456)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1806, file: !1807, line: 452, baseType: !1818, size: 8, offset: 464)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1806, file: !1807, line: 453, baseType: !1818, size: 8, offset: 472)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1806, file: !1807, line: 454, baseType: !1818, size: 8, offset: 480)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1806, file: !1807, line: 455, baseType: !1818, size: 8, offset: 488)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1806, file: !1807, line: 456, baseType: !1818, size: 8, offset: 496)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1806, file: !1807, line: 457, baseType: !1818, size: 8, offset: 504)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1806, file: !1807, line: 458, baseType: !1818, size: 8, offset: 512)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1806, file: !1807, line: 459, baseType: !1818, size: 8, offset: 520)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1806, file: !1807, line: 460, baseType: !1818, size: 8, offset: 528)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1806, file: !1807, line: 461, baseType: !1818, size: 8, offset: 536)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1806, file: !1807, line: 462, baseType: !1818, size: 8, offset: 544)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1806, file: !1807, line: 463, baseType: !1818, size: 8, offset: 552)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1806, file: !1807, line: 464, baseType: !1818, size: 8, offset: 560)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1806, file: !1807, line: 465, baseType: !1818, size: 8, offset: 568)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1806, file: !1807, line: 466, baseType: !1818, size: 8, offset: 576)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1806, file: !1807, line: 467, baseType: !1818, size: 8, offset: 584)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1806, file: !1807, line: 468, baseType: !1818, size: 8, offset: 592)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1806, file: !1807, line: 469, baseType: !1818, size: 8, offset: 600)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1806, file: !1807, line: 470, baseType: !1818, size: 8, offset: 608)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1806, file: !1807, line: 471, baseType: !1818, size: 8, offset: 616)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1806, file: !1807, line: 472, baseType: !1818, size: 8, offset: 624)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1806, file: !1807, line: 473, baseType: !1818, size: 8, offset: 632)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1806, file: !1807, line: 474, baseType: !1818, size: 8, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1806, file: !1807, line: 475, baseType: !1818, size: 8, offset: 648)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1806, file: !1807, line: 476, baseType: !1818, size: 8, offset: 656)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1806, file: !1807, line: 477, baseType: !1818, size: 8, offset: 664)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1806, file: !1807, line: 478, baseType: !1818, size: 8, offset: 672)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1806, file: !1807, line: 479, baseType: !1818, size: 8, offset: 680)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1806, file: !1807, line: 480, baseType: !1818, size: 8, offset: 688)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1806, file: !1807, line: 481, baseType: !1818, size: 8, offset: 696)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1806, file: !1807, line: 482, baseType: !1818, size: 8, offset: 704)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1806, file: !1807, line: 483, baseType: !1818, size: 8, offset: 712)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1806, file: !1807, line: 484, baseType: !1818, size: 8, offset: 720)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1806, file: !1807, line: 485, baseType: !1818, size: 8, offset: 728)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1806, file: !1807, line: 486, baseType: !1818, size: 8, offset: 736)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1806, file: !1807, line: 487, baseType: !1818, size: 8, offset: 744)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1806, file: !1807, line: 488, baseType: !1818, size: 8, offset: 752)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1806, file: !1807, line: 489, baseType: !1818, size: 8, offset: 760)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1806, file: !1807, line: 490, baseType: !1818, size: 8, offset: 768)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1806, file: !1807, line: 491, baseType: !1818, size: 8, offset: 776)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1806, file: !1807, line: 492, baseType: !1818, size: 8, offset: 784)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1806, file: !1807, line: 493, baseType: !1818, size: 8, offset: 792)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1806, file: !1807, line: 494, baseType: !1818, size: 8, offset: 800)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1806, file: !1807, line: 495, baseType: !1818, size: 8, offset: 808)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1806, file: !1807, line: 496, baseType: !1818, size: 8, offset: 816)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1806, file: !1807, line: 497, baseType: !1818, size: 8, offset: 824)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1806, file: !1807, line: 498, baseType: !1818, size: 8, offset: 832)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1806, file: !1807, line: 499, baseType: !1818, size: 8, offset: 840)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1806, file: !1807, line: 500, baseType: !1818, size: 8, offset: 848)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1806, file: !1807, line: 501, baseType: !1818, size: 8, offset: 856)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1806, file: !1807, line: 502, baseType: !1818, size: 8, offset: 864)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1806, file: !1807, line: 503, baseType: !1818, size: 8, offset: 872)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1806, file: !1807, line: 504, baseType: !1818, size: 8, offset: 880)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1806, file: !1807, line: 505, baseType: !1818, size: 8, offset: 888)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1806, file: !1807, line: 506, baseType: !1818, size: 8, offset: 896)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1806, file: !1807, line: 507, baseType: !1818, size: 8, offset: 904)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1806, file: !1807, line: 508, baseType: !1818, size: 8, offset: 912)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1806, file: !1807, line: 509, baseType: !1818, size: 8, offset: 920)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1806, file: !1807, line: 510, baseType: !1818, size: 8, offset: 928)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1806, file: !1807, line: 511, baseType: !1818, size: 8, offset: 936)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1806, file: !1807, line: 512, baseType: !1818, size: 8, offset: 944)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1806, file: !1807, line: 513, baseType: !1818, size: 8, offset: 952)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1806, file: !1807, line: 514, baseType: !1818, size: 8, offset: 960)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1806, file: !1807, line: 515, baseType: !1818, size: 8, offset: 968)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1806, file: !1807, line: 516, baseType: !1818, size: 8, offset: 976)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1806, file: !1807, line: 517, baseType: !1818, size: 8, offset: 984)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1806, file: !1807, line: 518, baseType: !1818, size: 8, offset: 992)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1806, file: !1807, line: 519, baseType: !1818, size: 8, offset: 1000)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1806, file: !1807, line: 520, baseType: !1818, size: 8, offset: 1008)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1806, file: !1807, line: 521, baseType: !1818, size: 8, offset: 1016)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1806, file: !1807, line: 522, baseType: !1818, size: 8, offset: 1024)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1806, file: !1807, line: 523, baseType: !1818, size: 8, offset: 1032)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1806, file: !1807, line: 524, baseType: !1818, size: 8, offset: 1040)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1806, file: !1807, line: 525, baseType: !1818, size: 8, offset: 1048)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1806, file: !1807, line: 526, baseType: !1818, size: 8, offset: 1056)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1806, file: !1807, line: 527, baseType: !1818, size: 8, offset: 1064)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1806, file: !1807, line: 528, baseType: !1818, size: 8, offset: 1072)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1806, file: !1807, line: 529, baseType: !1818, size: 8, offset: 1080)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1806, file: !1807, line: 530, baseType: !1818, size: 8, offset: 1088)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1806, file: !1807, line: 531, baseType: !1818, size: 8, offset: 1096)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1806, file: !1807, line: 532, baseType: !1818, size: 8, offset: 1104)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1806, file: !1807, line: 533, baseType: !1818, size: 8, offset: 1112)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1806, file: !1807, line: 534, baseType: !1818, size: 8, offset: 1120)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1806, file: !1807, line: 535, baseType: !1818, size: 8, offset: 1128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1806, file: !1807, line: 536, baseType: !1818, size: 8, offset: 1136)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1806, file: !1807, line: 537, baseType: !1818, size: 8, offset: 1144)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1806, file: !1807, line: 538, baseType: !1818, size: 8, offset: 1152)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1806, file: !1807, line: 539, baseType: !1818, size: 8, offset: 1160)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1806, file: !1807, line: 540, baseType: !1818, size: 8, offset: 1168)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1806, file: !1807, line: 541, baseType: !1818, size: 8, offset: 1176)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1806, file: !1807, line: 542, baseType: !1818, size: 8, offset: 1184)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1806, file: !1807, line: 543, baseType: !1818, size: 8, offset: 1192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1806, file: !1807, line: 544, baseType: !1818, size: 8, offset: 1200)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1806, file: !1807, line: 545, baseType: !1818, size: 8, offset: 1208)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1806, file: !1807, line: 546, baseType: !1818, size: 8, offset: 1216)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1806, file: !1807, line: 547, baseType: !1818, size: 8, offset: 1224)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1806, file: !1807, line: 548, baseType: !1818, size: 8, offset: 1232)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1806, file: !1807, line: 549, baseType: !1818, size: 8, offset: 1240)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1806, file: !1807, line: 550, baseType: !1818, size: 8, offset: 1248)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1806, file: !1807, line: 551, baseType: !1818, size: 8, offset: 1256)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1806, file: !1807, line: 552, baseType: !1818, size: 8, offset: 1264)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1806, file: !1807, line: 553, baseType: !1818, size: 8, offset: 1272)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1806, file: !1807, line: 554, baseType: !1818, size: 8, offset: 1280)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1806, file: !1807, line: 555, baseType: !1818, size: 8, offset: 1288)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1806, file: !1807, line: 556, baseType: !1818, size: 8, offset: 1296)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1806, file: !1807, line: 557, baseType: !1818, size: 8, offset: 1304)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1806, file: !1807, line: 558, baseType: !1818, size: 8, offset: 1312)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1806, file: !1807, line: 559, baseType: !1818, size: 8, offset: 1320)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1806, file: !1807, line: 560, baseType: !1818, size: 8, offset: 1328)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1806, file: !1807, line: 561, baseType: !1818, size: 8, offset: 1336)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1806, file: !1807, line: 562, baseType: !1818, size: 8, offset: 1344)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1806, file: !1807, line: 563, baseType: !1818, size: 8, offset: 1352)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1806, file: !1807, line: 564, baseType: !1818, size: 8, offset: 1360)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1806, file: !1807, line: 565, baseType: !1818, size: 8, offset: 1368)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1806, file: !1807, line: 566, baseType: !1818, size: 8, offset: 1376)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1806, file: !1807, line: 567, baseType: !1818, size: 8, offset: 1384)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1806, file: !1807, line: 568, baseType: !1818, size: 8, offset: 1392)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1806, file: !1807, line: 569, baseType: !1818, size: 8, offset: 1400)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1806, file: !1807, line: 570, baseType: !1818, size: 8, offset: 1408)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1806, file: !1807, line: 571, baseType: !1818, size: 8, offset: 1416)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1806, file: !1807, line: 572, baseType: !1818, size: 8, offset: 1424)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1806, file: !1807, line: 573, baseType: !1818, size: 8, offset: 1432)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1806, file: !1807, line: 574, baseType: !1818, size: 8, offset: 1440)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !667, file: !135, line: 3405, baseType: !1974, size: 384)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1975)
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1974, file: !135, line: 3353, baseType: !703, size: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1974, file: !135, line: 3356, baseType: !1978, size: 192, offset: 192)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1807, line: 578, size: 192, elements: !1979)
!1979 = !{!1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1978, file: !1807, line: 580, baseType: !657, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1978, file: !1807, line: 581, baseType: !657, size: 32, offset: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1978, file: !1807, line: 582, baseType: !657, size: 32, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1978, file: !1807, line: 583, baseType: !657, size: 32, offset: 96)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1978, file: !1807, line: 584, baseType: !656, size: 8, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1978, file: !1807, line: 585, baseType: !656, size: 8, offset: 136)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1978, file: !1807, line: 586, baseType: !656, size: 8, offset: 144)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1978, file: !1807, line: 587, baseType: !656, size: 8, offset: 152)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1978, file: !1807, line: 588, baseType: !656, size: 8, offset: 160)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1978, file: !1807, line: 589, baseType: !656, size: 8, offset: 168)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1978, file: !1807, line: 590, baseType: !656, size: 8, offset: 176)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !135, line: 184, baseType: !1997)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !135, line: 184, size: 128, elements: !1998)
!1998 = !{!1999}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1997, file: !135, line: 184, baseType: !1520, size: 128)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_opt_pass_d", file: !401, line: 173, size: 1152, elements: !2002)
!2002 = !{!2003, !2027, !2031, !2195, !2196, !2200, !2205, !2206, !2210}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2001, file: !401, line: 175, baseType: !2004, size: 640)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !401, line: 114, size: 640, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2012, !2016, !2018, !2019, !2020, !2022, !2023, !2024, !2025, !2026}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2004, file: !401, line: 117, baseType: !400, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2004, file: !401, line: 121, baseType: !662, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2004, file: !401, line: 125, baseType: !2009, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!656}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2004, file: !401, line: 130, baseType: !2013, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!7}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2004, file: !401, line: 133, baseType: !2017, size: 64, offset: 256)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2004, file: !401, line: 136, baseType: !2017, size: 64, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2004, file: !401, line: 139, baseType: !657, size: 32, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2004, file: !401, line: 143, baseType: !2021, size: 32, offset: 416)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !408, line: 80, baseType: !407)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2004, file: !401, line: 146, baseType: !7, size: 32, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2004, file: !401, line: 147, baseType: !7, size: 32, offset: 480)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2004, file: !401, line: 148, baseType: !7, size: 32, offset: 512)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2004, file: !401, line: 151, baseType: !7, size: 32, offset: 544)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2004, file: !401, line: 152, baseType: !7, size: 32, offset: 576)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "generate_summary", scope: !2001, file: !401, line: 179, baseType: !2028, size: 64, offset: 640)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "write_summary", scope: !2001, file: !401, line: 182, baseType: !2032, size: 64, offset: 704)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node_set_def", file: !378, line: 276, size: 192, elements: !2037)
!2037 = !{!2038, !2039, !2194}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "hashtab", scope: !2036, file: !378, line: 278, baseType: !1454, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2036, file: !378, line: 279, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_gc", file: !378, line: 272, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_gc", file: !378, line: 272, size: 128, elements: !2043)
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2042, file: !378, line: 272, baseType: !2045, size: 128)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_node_ptr_base", file: !378, line: 270, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_node_ptr_base", file: !378, line: 270, size: 128, elements: !2047)
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2046, file: !378, line: 270, baseType: !7, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2046, file: !378, line: 270, baseType: !7, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2046, file: !378, line: 270, baseType: !2051, size: 64, offset: 64)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2052, size: 64, elements: !763)
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_node_ptr", file: !378, line: 268, baseType: !2053)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_node", file: !378, line: 181, size: 2496, elements: !2055)
!2055 = !{!2056, !2057, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2109, !2131, !2141, !2145, !2171, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2054, file: !378, line: 182, baseType: !664, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "callees", scope: !2054, file: !378, line: 183, baseType: !2058, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_edge", file: !378, line: 314, size: 768, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2072, !2073, !2074, !2075, !2077, !2078, !2079}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2059, file: !378, line: 316, baseType: !1200, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2059, file: !378, line: 317, baseType: !2053, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !2059, file: !378, line: 318, baseType: !2053, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "prev_caller", scope: !2059, file: !378, line: 319, baseType: !2058, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "next_caller", scope: !2059, file: !378, line: 320, baseType: !2058, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "prev_callee", scope: !2059, file: !378, line: 321, baseType: !2058, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "next_callee", scope: !2059, file: !378, line: 322, baseType: !2058, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt", scope: !2059, file: !378, line: 323, baseType: !988, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2059, file: !378, line: 324, baseType: !661, size: 64, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "inline_failed", scope: !2059, file: !378, line: 327, baseType: !2071, size: 32, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_inline_failed_t", file: !378, line: 312, baseType: !377)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "lto_stmt_uid", scope: !2059, file: !378, line: 330, baseType: !7, size: 32, offset: 608)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2059, file: !378, line: 334, baseType: !657, size: 32, offset: 640)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2059, file: !378, line: 336, baseType: !657, size: 32, offset: 672)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !2059, file: !378, line: 338, baseType: !2076, size: 16, offset: 704)
!2076 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "indirect_call", scope: !2059, file: !378, line: 340, baseType: !7, size: 1, offset: 720, flags: DIFlagBitField, extraData: i64 720)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "call_stmt_cannot_inline_p", scope: !2059, file: !378, line: 342, baseType: !7, size: 1, offset: 721, flags: DIFlagBitField, extraData: i64 720)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "can_throw_external", scope: !2059, file: !378, line: 344, baseType: !7, size: 1, offset: 722, flags: DIFlagBitField, extraData: i64 720)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "callers", scope: !2054, file: !378, line: 184, baseType: !2058, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2054, file: !378, line: 185, baseType: !2053, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !2054, file: !378, line: 186, baseType: !2053, size: 64, offset: 256)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2054, file: !378, line: 188, baseType: !2053, size: 64, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2054, file: !378, line: 190, baseType: !2053, size: 64, offset: 384)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "next_nested", scope: !2054, file: !378, line: 192, baseType: !2053, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2054, file: !378, line: 194, baseType: !2053, size: 64, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling_clone", scope: !2054, file: !378, line: 196, baseType: !2053, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling_clone", scope: !2054, file: !378, line: 197, baseType: !2053, size: 64, offset: 640)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "clones", scope: !2054, file: !378, line: 198, baseType: !2053, size: 64, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "clone_of", scope: !2054, file: !378, line: 199, baseType: !2053, size: 64, offset: 768)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "same_body", scope: !2054, file: !378, line: 202, baseType: !2053, size: 64, offset: 832)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "same_comdat_group", scope: !2054, file: !378, line: 204, baseType: !2053, size: 64, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "call_site_hash", scope: !2054, file: !378, line: 207, baseType: !1454, size: 64, offset: 960)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2054, file: !378, line: 209, baseType: !661, size: 64, offset: 1024)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ipa_transforms_to_apply", scope: !2054, file: !378, line: 214, baseType: !2096, size: 64, offset: 1088)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_heap", file: !1412, line: 177, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_heap", file: !1412, line: 177, size: 128, elements: !2099)
!2099 = !{!2100}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2098, file: !1412, line: 177, baseType: !2101, size: 128)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_opt_pass_base", file: !1412, line: 176, baseType: !2102)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_opt_pass_base", file: !1412, line: 176, size: 128, elements: !2103)
!2103 = !{!2104, !2105, !2106}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2102, file: !1412, line: 176, baseType: !7, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2102, file: !1412, line: 176, baseType: !7, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2102, file: !1412, line: 176, baseType: !2107, size: 64, offset: 64)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2108, size: 64, elements: !763)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_opt_pass", file: !1412, line: 174, baseType: !2000)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2054, file: !378, line: 216, baseType: !2110, size: 320, offset: 1152)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_local_info", file: !378, line: 88, size: 320, elements: !2111)
!2111 = !{!2112, !2115, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "lto_file_data", scope: !2110, file: !378, line: 90, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "lto_file_decl_data", file: !378, line: 51, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "inline_summary", scope: !2110, file: !378, line: 92, baseType: !2116, size: 192, offset: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inline_summary", file: !378, line: 57, size: 192, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2121, !2122}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_self_stack_size", scope: !2116, file: !378, line: 60, baseType: !720, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "self_size", scope: !2116, file: !378, line: 63, baseType: !657, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "size_inlining_benefit", scope: !2116, file: !378, line: 65, baseType: !657, size: 32, offset: 96)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "self_time", scope: !2116, file: !378, line: 67, baseType: !657, size: 32, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "time_inlining_benefit", scope: !2116, file: !378, line: 69, baseType: !657, size: 32, offset: 160)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !2110, file: !378, line: 96, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2110, file: !378, line: 99, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2110, file: !378, line: 102, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "inlinable", scope: !2110, file: !378, line: 105, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2110, file: !378, line: 108, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "redefined_extern_inline", scope: !2110, file: !378, line: 112, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "for_functions_valid", scope: !2110, file: !378, line: 116, baseType: !7, size: 1, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vtable_method", scope: !2110, file: !378, line: 120, baseType: !7, size: 1, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !2054, file: !378, line: 217, baseType: !2132, size: 320, offset: 1472)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_global_info", file: !378, line: 126, size: 320, elements: !2133)
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2139, !2140}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_stack_size", scope: !2132, file: !378, line: 128, baseType: !720, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "stack_frame_offset", scope: !2132, file: !378, line: 130, baseType: !720, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "inlined_to", scope: !2132, file: !378, line: 134, baseType: !2053, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2132, file: !378, line: 137, baseType: !657, size: 32, offset: 192)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2132, file: !378, line: 138, baseType: !657, size: 32, offset: 224)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_growth", scope: !2132, file: !378, line: 141, baseType: !657, size: 32, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "inlined", scope: !2132, file: !378, line: 144, baseType: !656, size: 8, offset: 288)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2054, file: !378, line: 218, baseType: !2142, size: 32, offset: 1792)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_rtl_info", file: !378, line: 150, size: 32, elements: !2143)
!2143 = !{!2144}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_incoming_stack_boundary", scope: !2142, file: !378, line: 151, baseType: !7, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "clone", scope: !2054, file: !378, line: 219, baseType: !2146, size: 192, offset: 1856)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_clone_info", file: !378, line: 171, size: 192, elements: !2147)
!2147 = !{!2148, !2169, !2170}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "tree_map", scope: !2146, file: !378, line: 173, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_gc", file: !378, line: 169, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_gc", file: !378, line: 169, size: 128, elements: !2152)
!2152 = !{!2153}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2151, file: !378, line: 169, baseType: !2154, size: 128)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ipa_replace_map_p_base", file: !378, line: 168, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ipa_replace_map_p_base", file: !378, line: 168, size: 128, elements: !2156)
!2156 = !{!2157, !2158, !2159}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2155, file: !378, line: 168, baseType: !7, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2155, file: !378, line: 168, baseType: !7, size: 32, offset: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2155, file: !378, line: 168, baseType: !2160, size: 64, offset: 64)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2161, size: 64, elements: !763)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ipa_replace_map_p", file: !378, line: 167, baseType: !2162)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipa_replace_map", file: !378, line: 156, size: 192, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "old_tree", scope: !2163, file: !378, line: 159, baseType: !664, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "new_tree", scope: !2163, file: !378, line: 161, baseType: !664, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "replace_p", scope: !2163, file: !378, line: 163, baseType: !656, size: 8, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !2163, file: !378, line: 165, baseType: !656, size: 8, offset: 136)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "args_to_skip", scope: !2146, file: !378, line: 174, baseType: !1538, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "combined_args_to_skip", scope: !2146, file: !378, line: 175, baseType: !1538, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "thunk", scope: !2054, file: !378, line: 220, baseType: !2172, size: 256, offset: 2048)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_thunk_info", file: !378, line: 74, size: 256, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_offset", scope: !2172, file: !378, line: 76, baseType: !720, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_value", scope: !2172, file: !378, line: 77, baseType: !720, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2172, file: !378, line: 78, baseType: !664, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "this_adjusting", scope: !2172, file: !378, line: 79, baseType: !656, size: 8, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_offset_p", scope: !2172, file: !378, line: 80, baseType: !656, size: 8, offset: 200)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "thunk_p", scope: !2172, file: !378, line: 82, baseType: !656, size: 8, offset: 208)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2054, file: !378, line: 223, baseType: !1200, size: 64, offset: 2304)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2054, file: !378, line: 225, baseType: !657, size: 32, offset: 2368)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2054, file: !378, line: 227, baseType: !657, size: 32, offset: 2400)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2054, file: !378, line: 231, baseType: !657, size: 32, offset: 2432)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2054, file: !378, line: 238, baseType: !7, size: 1, offset: 2464, flags: DIFlagBitField, extraData: i64 2464)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "address_taken", scope: !2054, file: !378, line: 241, baseType: !7, size: 1, offset: 2465, flags: DIFlagBitField, extraData: i64 2464)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_and_needed", scope: !2054, file: !378, line: 244, baseType: !7, size: 1, offset: 2466, flags: DIFlagBitField, extraData: i64 2464)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "reachable", scope: !2054, file: !378, line: 251, baseType: !7, size: 1, offset: 2467, flags: DIFlagBitField, extraData: i64 2464)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "lowered", scope: !2054, file: !378, line: 253, baseType: !7, size: 1, offset: 2468, flags: DIFlagBitField, extraData: i64 2464)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2054, file: !378, line: 256, baseType: !7, size: 1, offset: 2469, flags: DIFlagBitField, extraData: i64 2464)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !2054, file: !378, line: 258, baseType: !7, size: 1, offset: 2470, flags: DIFlagBitField, extraData: i64 2464)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2054, file: !378, line: 260, baseType: !7, size: 1, offset: 2471, flags: DIFlagBitField, extraData: i64 2464)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "finalized_by_frontend", scope: !2054, file: !378, line: 262, baseType: !7, size: 1, offset: 2472, flags: DIFlagBitField, extraData: i64 2464)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "same_body_alias", scope: !2054, file: !378, line: 265, baseType: !7, size: 1, offset: 2473, flags: DIFlagBitField, extraData: i64 2464)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2036, file: !378, line: 280, baseType: !661, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "read_summary", scope: !2001, file: !401, line: 187, baseType: !2028, size: 64, offset: 768)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "function_read_summary", scope: !2001, file: !401, line: 188, baseType: !2197, size: 64, offset: 832)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !2053}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_fixup", scope: !2001, file: !401, line: 191, baseType: !2201, size: 64, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null, !2053, !2204}
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform_todo_flags_start", scope: !2001, file: !401, line: 195, baseType: !7, size: 32, offset: 960)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "function_transform", scope: !2001, file: !401, line: 196, baseType: !2207, size: 64, offset: 1024)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!7, !2053}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "variable_transform", scope: !2001, file: !401, line: 197, baseType: !2211, size: 64, offset: 1088)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varpool_node", file: !378, line: 358, size: 320, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2215, file: !378, line: 359, baseType: !664, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2215, file: !378, line: 361, baseType: !2214, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "next_needed", scope: !2215, file: !378, line: 363, baseType: !2214, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "extra_name", scope: !2215, file: !378, line: 366, baseType: !2214, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2215, file: !378, line: 368, baseType: !657, size: 32, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "needed", scope: !2215, file: !378, line: 372, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "force_output", scope: !2215, file: !378, line: 375, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "analyzed", scope: !2215, file: !378, line: 378, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "finalized", scope: !2215, file: !378, line: 380, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !2215, file: !378, line: 382, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "externally_visible", scope: !2215, file: !378, line: 384, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2215, file: !378, line: 387, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_order_sort", file: !3, line: 1660, size: 128, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !2230, file: !3, line: 1662, baseType: !648, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2230, file: !3, line: 1668, baseType: !2234, size: 64, offset: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2230, file: !3, line: 1663, size: 64, elements: !2235)
!2235 = !{!2236, !2237, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !2234, file: !3, line: 1665, baseType: !2053, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2234, file: !3, line: 1666, baseType: !2214, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2234, file: !3, line: 1667, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgraph_asm_node", file: !378, line: 392, size: 192, elements: !2241)
!2241 = !{!2242, !2243, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2240, file: !378, line: 394, baseType: !2239, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "asm_str", scope: !2240, file: !378, line: 396, baseType: !664, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2240, file: !378, line: 398, baseType: !657, size: 32, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgraph_edge_p", file: !378, line: 350, baseType: !2058)
!2247 = !{!2248, !2264, !0, !2278, !2280, !2282, !2284, !2301}
!2248 = !DIGlobalVariableExpression(var: !2249, expr: !DIExpression())
!2249 = distinct !DIGlobalVariable(name: "counter", scope: !2250, file: !3, line: 1934, type: !657, isLocal: true, isDefinition: true)
!2250 = distinct !DISubprogram(name: "cgraph_build_static_cdtor", scope: !3, file: !3, line: 1932, type: !2251, scopeLine: 1933, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !660, !664, !657}
!2253 = !{!2254, !2255, !2256, !2257, !2261, !2262, !2263}
!2254 = !DILocalVariable(name: "which", arg: 1, scope: !2250, file: !3, line: 1932, type: !660)
!2255 = !DILocalVariable(name: "body", arg: 2, scope: !2250, file: !3, line: 1932, type: !664)
!2256 = !DILocalVariable(name: "priority", arg: 3, scope: !2250, file: !3, line: 1932, type: !657)
!2257 = !DILocalVariable(name: "which_buf", scope: !2250, file: !3, line: 1935, type: !2258)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 128, elements: !2259)
!2259 = !{!2260}
!2260 = !DISubrange(count: 16)
!2261 = !DILocalVariable(name: "decl", scope: !2250, file: !3, line: 1936, type: !664)
!2262 = !DILocalVariable(name: "name", scope: !2250, file: !3, line: 1936, type: !664)
!2263 = !DILocalVariable(name: "resdecl", scope: !2250, file: !3, line: 1936, type: !664)
!2264 = !DIGlobalVariableExpression(var: !2265, expr: !DIExpression())
!2265 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_cgraphunit_h", scope: !2, file: !2266, line: 24, type: !2267, isLocal: false, isDefinition: true)
!2266 = !DIFile(filename: "./gt-cgraphunit.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2268, size: 1280, elements: !931)
!2268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2269)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !2270, line: 69, size: 320, elements: !2271)
!2270 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2271 = !{!2272, !2273, !2274, !2275, !2277}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2269, file: !2270, line: 70, baseType: !661, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !2269, file: !2270, line: 71, baseType: !1134, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !2269, file: !2270, line: 72, baseType: !1134, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2269, file: !2270, line: 73, baseType: !2276, size: 64, offset: 192)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !2270, line: 65, baseType: !1472)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !2269, file: !2270, line: 74, baseType: !2276, size: 64, offset: 256)
!2278 = !DIGlobalVariableExpression(var: !2279, expr: !DIExpression())
!2279 = distinct !DIGlobalVariable(name: "static_ctors", scope: !2, file: !3, line: 149, type: !1515, isLocal: true, isDefinition: true)
!2280 = !DIGlobalVariableExpression(var: !2281, expr: !DIExpression())
!2281 = distinct !DIGlobalVariable(name: "static_dtors", scope: !2, file: !3, line: 151, type: !1515, isLocal: true, isDefinition: true)
!2282 = !DIGlobalVariableExpression(var: !2283, expr: !DIExpression())
!2283 = distinct !DIGlobalVariable(name: "vtable_entry_type", scope: !2, file: !3, line: 154, type: !664, isLocal: true, isDefinition: true)
!2284 = !DIGlobalVariableExpression(var: !2285, expr: !DIExpression())
!2285 = distinct !DIGlobalVariable(name: "first_analyzed", scope: !2286, file: !3, line: 953, type: !2053, isLocal: true, isDefinition: true)
!2286 = distinct !DISubprogram(name: "cgraph_analyze_functions", scope: !3, file: !3, line: 949, type: !2029, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2293, !2294, !2297}
!2288 = !DILocalVariable(name: "first_processed", scope: !2286, file: !3, line: 954, type: !2053)
!2289 = !DILocalVariable(name: "node", scope: !2286, file: !3, line: 956, type: !2053)
!2290 = !DILocalVariable(name: "next", scope: !2286, file: !3, line: 956, type: !2053)
!2291 = !DILocalVariable(name: "edge", scope: !2292, file: !3, line: 979, type: !2058)
!2292 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 978, column: 5)
!2293 = !DILocalVariable(name: "decl", scope: !2292, file: !3, line: 980, type: !664)
!2294 = !DILocalVariable(name: "origin_node", scope: !2295, file: !3, line: 1015, type: !2053)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 1014, column: 2)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1013, column: 11)
!2297 = !DILocalVariable(name: "decl", scope: !2298, file: !3, line: 1045, type: !664)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 1044, column: 5)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 1043, column: 3)
!2300 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 1043, column: 3)
!2301 = !DIGlobalVariableExpression(var: !2302, expr: !DIExpression())
!2302 = distinct !DIGlobalVariable(name: "first_analyzed_var", scope: !2286, file: !3, line: 955, type: !2214, isLocal: true, isDefinition: true)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2305, line: 7, baseType: !2306)
!2305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2307, line: 49, size: 1728, elements: !2308)
!2307 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2324, !2326, !2327, !2328, !2331, !2332, !2333, !2334, !2337, !2339, !2342, !2345, !2346, !2347, !2348, !2349}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2306, file: !2307, line: 51, baseType: !657, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2306, file: !2307, line: 54, baseType: !659, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2306, file: !2307, line: 55, baseType: !659, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2306, file: !2307, line: 56, baseType: !659, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2306, file: !2307, line: 57, baseType: !659, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2306, file: !2307, line: 58, baseType: !659, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2306, file: !2307, line: 59, baseType: !659, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2306, file: !2307, line: 60, baseType: !659, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2306, file: !2307, line: 61, baseType: !659, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2306, file: !2307, line: 64, baseType: !659, size: 64, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2306, file: !2307, line: 65, baseType: !659, size: 64, offset: 640)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2306, file: !2307, line: 66, baseType: !659, size: 64, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2306, file: !2307, line: 68, baseType: !2322, size: 64, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2307, line: 36, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2306, file: !2307, line: 70, baseType: !2325, size: 64, offset: 832)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2306, file: !2307, line: 72, baseType: !657, size: 32, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2306, file: !2307, line: 73, baseType: !657, size: 32, offset: 928)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2306, file: !2307, line: 74, baseType: !2329, size: 64, offset: 960)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2330, line: 152, baseType: !720)
!2330 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2306, file: !2307, line: 77, baseType: !2076, size: 16, offset: 1024)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2306, file: !2307, line: 78, baseType: !1818, size: 8, offset: 1040)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2306, file: !2307, line: 79, baseType: !762, size: 8, offset: 1048)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2306, file: !2307, line: 81, baseType: !2335, size: 64, offset: 1088)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2307, line: 43, baseType: null)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2306, file: !2307, line: 89, baseType: !2338, size: 64, offset: 1152)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2330, line: 153, baseType: !720)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2306, file: !2307, line: 91, baseType: !2340, size: 64, offset: 1216)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2307, line: 37, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2306, file: !2307, line: 92, baseType: !2343, size: 64, offset: 1280)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2307, line: 38, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2306, file: !2307, line: 93, baseType: !2325, size: 64, offset: 1344)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2306, file: !2307, line: 94, baseType: !661, size: 64, offset: 1408)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2306, file: !2307, line: 95, baseType: !1134, size: 64, offset: 1472)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2306, file: !2307, line: 96, baseType: !657, size: 32, offset: 1536)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2306, file: !2307, line: 98, baseType: !2350, size: 160, offset: 1568)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 160, elements: !2351)
!2351 = !{!2352}
!2352 = !DISubrange(count: 20)
!2353 = !{i32 2, !"Dwarf Version", i32 4}
!2354 = !{i32 2, !"Debug Info Version", i32 3}
!2355 = !{i32 1, !"wchar_size", i32 4}
!2356 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2357 = distinct !DISubprogram(name: "vprintf", scope: !2358, file: !2358, line: 39, type: !2359, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!657, !2361, !2362}
!2361 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !662)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2364)
!2364 = !{!2365, !2366, !2367, !2368}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2363, file: !3, baseType: !7, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2363, file: !3, baseType: !7, size: 32, offset: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2363, file: !3, baseType: !661, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2363, file: !3, baseType: !661, size: 64, offset: 128)
!2369 = !{!2370, !2371}
!2370 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2357, file: !2358, line: 39, type: !2361)
!2371 = !DILocalVariable(name: "__arg", arg: 2, scope: !2357, file: !2358, line: 39, type: !2362)
!2372 = !DILocation(line: 0, scope: !2357)
!2373 = !DILocation(line: 41, column: 20, scope: !2357)
!2374 = !DILocation(line: 41, column: 10, scope: !2357)
!2375 = !DILocation(line: 41, column: 3, scope: !2357)
!2376 = distinct !DISubprogram(name: "getchar", scope: !2358, file: !2358, line: 47, type: !2377, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!657}
!2379 = !{}
!2380 = !DILocation(line: 49, column: 16, scope: !2376)
!2381 = !DILocation(line: 49, column: 10, scope: !2376)
!2382 = !DILocation(line: 49, column: 3, scope: !2376)
!2383 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2358, file: !2358, line: 56, type: !2384, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2386)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!657, !2303}
!2386 = !{!2387}
!2387 = !DILocalVariable(name: "__fp", arg: 1, scope: !2383, file: !2358, line: 56, type: !2303)
!2388 = !DILocation(line: 0, scope: !2383)
!2389 = !DILocation(line: 58, column: 10, scope: !2383)
!2390 = !DILocation(line: 58, column: 3, scope: !2383)
!2391 = distinct !DISubprogram(name: "getc_unlocked", scope: !2358, file: !2358, line: 66, type: !2384, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2392)
!2392 = !{!2393}
!2393 = !DILocalVariable(name: "__fp", arg: 1, scope: !2391, file: !2358, line: 66, type: !2303)
!2394 = !DILocation(line: 0, scope: !2391)
!2395 = !DILocation(line: 68, column: 10, scope: !2391)
!2396 = !DILocation(line: 68, column: 3, scope: !2391)
!2397 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2358, file: !2358, line: 73, type: !2377, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!2398 = !DILocation(line: 75, column: 10, scope: !2397)
!2399 = !DILocation(line: 75, column: 3, scope: !2397)
!2400 = distinct !DISubprogram(name: "putchar", scope: !2358, file: !2358, line: 82, type: !2401, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!657, !657}
!2403 = !{!2404}
!2404 = !DILocalVariable(name: "__c", arg: 1, scope: !2400, file: !2358, line: 82, type: !657)
!2405 = !DILocation(line: 0, scope: !2400)
!2406 = !DILocation(line: 84, column: 21, scope: !2400)
!2407 = !DILocation(line: 84, column: 10, scope: !2400)
!2408 = !DILocation(line: 84, column: 3, scope: !2400)
!2409 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2358, file: !2358, line: 91, type: !2410, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!657, !657, !2303}
!2412 = !{!2413, !2414}
!2413 = !DILocalVariable(name: "__c", arg: 1, scope: !2409, file: !2358, line: 91, type: !657)
!2414 = !DILocalVariable(name: "__stream", arg: 2, scope: !2409, file: !2358, line: 91, type: !2303)
!2415 = !DILocation(line: 0, scope: !2409)
!2416 = !DILocation(line: 93, column: 10, scope: !2409)
!2417 = !DILocation(line: 93, column: 3, scope: !2409)
!2418 = distinct !DISubprogram(name: "putc_unlocked", scope: !2358, file: !2358, line: 101, type: !2410, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2419 = !{!2420, !2421}
!2420 = !DILocalVariable(name: "__c", arg: 1, scope: !2418, file: !2358, line: 101, type: !657)
!2421 = !DILocalVariable(name: "__stream", arg: 2, scope: !2418, file: !2358, line: 101, type: !2303)
!2422 = !DILocation(line: 0, scope: !2418)
!2423 = !DILocation(line: 103, column: 10, scope: !2418)
!2424 = !DILocation(line: 103, column: 3, scope: !2418)
!2425 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2358, file: !2358, line: 108, type: !2401, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2426)
!2426 = !{!2427}
!2427 = !DILocalVariable(name: "__c", arg: 1, scope: !2425, file: !2358, line: 108, type: !657)
!2428 = !DILocation(line: 0, scope: !2425)
!2429 = !DILocation(line: 110, column: 10, scope: !2425)
!2430 = !DILocation(line: 110, column: 3, scope: !2425)
!2431 = distinct !DISubprogram(name: "getline", scope: !2358, file: !2358, line: 118, type: !2432, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!2434, !658, !2435, !2303}
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2330, line: 193, baseType: !720)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!2436 = !{!2437, !2438, !2439}
!2437 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2431, file: !2358, line: 118, type: !658)
!2438 = !DILocalVariable(name: "__n", arg: 2, scope: !2431, file: !2358, line: 118, type: !2435)
!2439 = !DILocalVariable(name: "__stream", arg: 3, scope: !2431, file: !2358, line: 118, type: !2303)
!2440 = !DILocation(line: 0, scope: !2431)
!2441 = !DILocation(line: 120, column: 10, scope: !2431)
!2442 = !DILocation(line: 120, column: 3, scope: !2431)
!2443 = distinct !DISubprogram(name: "feof_unlocked", scope: !2358, file: !2358, line: 128, type: !2384, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2444 = !{!2445}
!2445 = !DILocalVariable(name: "__stream", arg: 1, scope: !2443, file: !2358, line: 128, type: !2303)
!2446 = !DILocation(line: 0, scope: !2443)
!2447 = !DILocation(line: 130, column: 10, scope: !2443)
!2448 = !DILocation(line: 130, column: 3, scope: !2443)
!2449 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2358, file: !2358, line: 135, type: !2384, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2450)
!2450 = !{!2451}
!2451 = !DILocalVariable(name: "__stream", arg: 1, scope: !2449, file: !2358, line: 135, type: !2303)
!2452 = !DILocation(line: 0, scope: !2449)
!2453 = !DILocation(line: 137, column: 10, scope: !2449)
!2454 = !DILocation(line: 137, column: 3, scope: !2449)
!2455 = distinct !DISubprogram(name: "tolower", scope: !2456, file: !2456, line: 207, type: !2401, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2457)
!2456 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2457 = !{!2458}
!2458 = !DILocalVariable(name: "__c", arg: 1, scope: !2455, file: !2456, line: 207, type: !657)
!2459 = !DILocation(line: 0, scope: !2455)
!2460 = !DILocation(line: 209, column: 22, scope: !2455)
!2461 = !DILocation(line: 209, column: 39, scope: !2455)
!2462 = !DILocation(line: 209, column: 38, scope: !2455)
!2463 = !DILocation(line: 209, column: 37, scope: !2455)
!2464 = !DILocation(line: 209, column: 10, scope: !2455)
!2465 = !DILocation(line: 209, column: 3, scope: !2455)
!2466 = distinct !DISubprogram(name: "toupper", scope: !2456, file: !2456, line: 213, type: !2401, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2467)
!2467 = !{!2468}
!2468 = !DILocalVariable(name: "__c", arg: 1, scope: !2466, file: !2456, line: 213, type: !657)
!2469 = !DILocation(line: 0, scope: !2466)
!2470 = !DILocation(line: 215, column: 22, scope: !2466)
!2471 = !DILocation(line: 215, column: 39, scope: !2466)
!2472 = !DILocation(line: 215, column: 38, scope: !2466)
!2473 = !DILocation(line: 215, column: 37, scope: !2466)
!2474 = !DILocation(line: 215, column: 10, scope: !2466)
!2475 = !DILocation(line: 215, column: 3, scope: !2466)
!2476 = distinct !DISubprogram(name: "atoi", scope: !2477, file: !2477, line: 361, type: !2478, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2480)
!2477 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!657, !662}
!2480 = !{!2481}
!2481 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2476, file: !2477, line: 361, type: !662)
!2482 = !DILocation(line: 0, scope: !2476)
!2483 = !DILocation(line: 363, column: 16, scope: !2476)
!2484 = !DILocation(line: 363, column: 10, scope: !2476)
!2485 = !DILocation(line: 363, column: 3, scope: !2476)
!2486 = distinct !DISubprogram(name: "atol", scope: !2477, file: !2477, line: 366, type: !2487, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!720, !662}
!2489 = !{!2490}
!2490 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2486, file: !2477, line: 366, type: !662)
!2491 = !DILocation(line: 0, scope: !2486)
!2492 = !DILocation(line: 368, column: 10, scope: !2486)
!2493 = !DILocation(line: 368, column: 3, scope: !2486)
!2494 = distinct !DISubprogram(name: "atoll", scope: !2477, file: !2477, line: 373, type: !2495, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2498)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!2497, !662}
!2497 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2498 = !{!2499}
!2499 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2494, file: !2477, line: 373, type: !662)
!2500 = !DILocation(line: 0, scope: !2494)
!2501 = !DILocation(line: 375, column: 10, scope: !2494)
!2502 = !DILocation(line: 375, column: 3, scope: !2494)
!2503 = distinct !DISubprogram(name: "bsearch", scope: !2504, file: !2504, line: 20, type: !2505, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2508)
!2504 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!661, !1295, !1295, !1134, !1134, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2477, line: 808, baseType: !1467)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2509 = !DILocalVariable(name: "__key", arg: 1, scope: !2503, file: !2504, line: 20, type: !1295)
!2510 = !DILocalVariable(name: "__base", arg: 2, scope: !2503, file: !2504, line: 20, type: !1295)
!2511 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2503, file: !2504, line: 20, type: !1134)
!2512 = !DILocalVariable(name: "__size", arg: 4, scope: !2503, file: !2504, line: 20, type: !1134)
!2513 = !DILocalVariable(name: "__compar", arg: 5, scope: !2503, file: !2504, line: 21, type: !2507)
!2514 = !DILocalVariable(name: "__l", scope: !2503, file: !2504, line: 23, type: !1134)
!2515 = !DILocalVariable(name: "__u", scope: !2503, file: !2504, line: 23, type: !1134)
!2516 = !DILocalVariable(name: "__idx", scope: !2503, file: !2504, line: 23, type: !1134)
!2517 = !DILocalVariable(name: "__p", scope: !2503, file: !2504, line: 24, type: !1295)
!2518 = !DILocalVariable(name: "__comparison", scope: !2503, file: !2504, line: 25, type: !657)
!2519 = !DILocation(line: 0, scope: !2503)
!2520 = !DILocation(line: 29, column: 3, scope: !2503)
!2521 = !DILocation(line: 27, column: 7, scope: !2503)
!2522 = !DILocation(line: 29, column: 14, scope: !2503)
!2523 = !DILocation(line: 31, column: 20, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2503, file: !2504, line: 30, column: 5)
!2525 = !DILocation(line: 31, column: 27, scope: !2524)
!2526 = !DILocation(line: 32, column: 56, scope: !2524)
!2527 = !DILocation(line: 32, column: 47, scope: !2524)
!2528 = !DILocation(line: 33, column: 22, scope: !2524)
!2529 = !DILocation(line: 34, column: 24, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2524, file: !2504, line: 34, column: 11)
!2531 = !DILocation(line: 34, column: 11, scope: !2524)
!2532 = !DILocation(line: 36, column: 29, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2530, file: !2504, line: 36, column: 16)
!2534 = !DILocation(line: 36, column: 16, scope: !2530)
!2535 = !DILocation(line: 37, column: 14, scope: !2533)
!2536 = distinct !{!2536, !2520, !2537}
!2537 = !DILocation(line: 40, column: 5, scope: !2503)
!2538 = !DILocation(line: 43, column: 1, scope: !2503)
!2539 = distinct !DISubprogram(name: "atof", scope: !2540, file: !2540, line: 25, type: !2541, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2544)
!2540 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!2543, !662}
!2543 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2544 = !{!2545}
!2545 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2539, file: !2540, line: 25, type: !662)
!2546 = !DILocation(line: 0, scope: !2539)
!2547 = !DILocation(line: 27, column: 10, scope: !2539)
!2548 = !DILocation(line: 27, column: 3, scope: !2539)
!2549 = distinct !DISubprogram(name: "strtoimax", scope: !2550, file: !2550, line: 324, type: !2551, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2557)
!2550 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!2553, !2361, !2556, !657}
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2554, line: 101, baseType: !2555)
!2554 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2330, line: 72, baseType: !720)
!2556 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !658)
!2557 = !{!2558, !2559, !2560}
!2558 = !DILocalVariable(name: "nptr", arg: 1, scope: !2549, file: !2550, line: 324, type: !2361)
!2559 = !DILocalVariable(name: "endptr", arg: 2, scope: !2549, file: !2550, line: 324, type: !2556)
!2560 = !DILocalVariable(name: "base", arg: 3, scope: !2549, file: !2550, line: 324, type: !657)
!2561 = !DILocation(line: 0, scope: !2549)
!2562 = !DILocation(line: 327, column: 10, scope: !2549)
!2563 = !DILocation(line: 327, column: 3, scope: !2549)
!2564 = distinct !DISubprogram(name: "strtoumax", scope: !2550, file: !2550, line: 336, type: !2565, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2569)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!2567, !2361, !2556, !657}
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2554, line: 102, baseType: !2568)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2330, line: 73, baseType: !718)
!2569 = !{!2570, !2571, !2572}
!2570 = !DILocalVariable(name: "nptr", arg: 1, scope: !2564, file: !2550, line: 336, type: !2361)
!2571 = !DILocalVariable(name: "endptr", arg: 2, scope: !2564, file: !2550, line: 336, type: !2556)
!2572 = !DILocalVariable(name: "base", arg: 3, scope: !2564, file: !2550, line: 336, type: !657)
!2573 = !DILocation(line: 0, scope: !2564)
!2574 = !DILocation(line: 339, column: 10, scope: !2564)
!2575 = !DILocation(line: 339, column: 3, scope: !2564)
!2576 = distinct !DISubprogram(name: "wcstoimax", scope: !2550, file: !2550, line: 348, type: !2577, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2586)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!2553, !2579, !2583, !657}
!2579 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2580)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2582)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2550, line: 34, baseType: !657)
!2583 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2584)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2586 = !{!2587, !2588, !2589}
!2587 = !DILocalVariable(name: "nptr", arg: 1, scope: !2576, file: !2550, line: 348, type: !2579)
!2588 = !DILocalVariable(name: "endptr", arg: 2, scope: !2576, file: !2550, line: 348, type: !2583)
!2589 = !DILocalVariable(name: "base", arg: 3, scope: !2576, file: !2550, line: 348, type: !657)
!2590 = !DILocation(line: 0, scope: !2576)
!2591 = !DILocation(line: 351, column: 10, scope: !2576)
!2592 = !DILocation(line: 351, column: 3, scope: !2576)
!2593 = distinct !DISubprogram(name: "wcstoumax", scope: !2550, file: !2550, line: 362, type: !2594, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!2567, !2579, !2583, !657}
!2596 = !{!2597, !2598, !2599}
!2597 = !DILocalVariable(name: "nptr", arg: 1, scope: !2593, file: !2550, line: 362, type: !2579)
!2598 = !DILocalVariable(name: "endptr", arg: 2, scope: !2593, file: !2550, line: 362, type: !2583)
!2599 = !DILocalVariable(name: "base", arg: 3, scope: !2593, file: !2550, line: 362, type: !657)
!2600 = !DILocation(line: 0, scope: !2593)
!2601 = !DILocation(line: 365, column: 10, scope: !2593)
!2602 = !DILocation(line: 365, column: 3, scope: !2593)
!2603 = distinct !DISubprogram(name: "stat", scope: !2604, file: !2604, line: 453, type: !2605, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2642)
!2604 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!657, !662, !2607}
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2609, line: 46, size: 1152, elements: !2610)
!2609 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2610 = !{!2611, !2613, !2615, !2617, !2619, !2621, !2623, !2624, !2625, !2626, !2628, !2630, !2638, !2639, !2640}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2608, file: !2609, line: 48, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2330, line: 145, baseType: !718)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2608, file: !2609, line: 53, baseType: !2614, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2330, line: 148, baseType: !718)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2608, file: !2609, line: 61, baseType: !2616, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2330, line: 151, baseType: !718)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2608, file: !2609, line: 62, baseType: !2618, size: 32, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2330, line: 150, baseType: !7)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2608, file: !2609, line: 64, baseType: !2620, size: 32, offset: 224)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2330, line: 146, baseType: !7)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2608, file: !2609, line: 65, baseType: !2622, size: 32, offset: 256)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2330, line: 147, baseType: !7)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2608, file: !2609, line: 67, baseType: !657, size: 32, offset: 288)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2608, file: !2609, line: 69, baseType: !2612, size: 64, offset: 320)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2608, file: !2609, line: 74, baseType: !2329, size: 64, offset: 384)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2608, file: !2609, line: 78, baseType: !2627, size: 64, offset: 448)
!2627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2330, line: 174, baseType: !720)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2608, file: !2609, line: 80, baseType: !2629, size: 64, offset: 512)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2330, line: 179, baseType: !720)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2608, file: !2609, line: 91, baseType: !2631, size: 128, offset: 576)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2632, line: 10, size: 128, elements: !2633)
!2632 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2633 = !{!2634, !2636}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2631, file: !2632, line: 12, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2330, line: 160, baseType: !720)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2631, file: !2632, line: 16, baseType: !2637, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2330, line: 196, baseType: !720)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2608, file: !2609, line: 92, baseType: !2631, size: 128, offset: 704)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2608, file: !2609, line: 93, baseType: !2631, size: 128, offset: 832)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2608, file: !2609, line: 106, baseType: !2641, size: 192, offset: 960)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2637, size: 192, elements: !738)
!2642 = !{!2643, !2644}
!2643 = !DILocalVariable(name: "__path", arg: 1, scope: !2603, file: !2604, line: 453, type: !662)
!2644 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2603, file: !2604, line: 453, type: !2607)
!2645 = !DILocation(line: 0, scope: !2603)
!2646 = !DILocation(line: 455, column: 10, scope: !2603)
!2647 = !DILocation(line: 455, column: 3, scope: !2603)
!2648 = distinct !DISubprogram(name: "lstat", scope: !2604, file: !2604, line: 460, type: !2605, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2649)
!2649 = !{!2650, !2651}
!2650 = !DILocalVariable(name: "__path", arg: 1, scope: !2648, file: !2604, line: 460, type: !662)
!2651 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2648, file: !2604, line: 460, type: !2607)
!2652 = !DILocation(line: 0, scope: !2648)
!2653 = !DILocation(line: 462, column: 10, scope: !2648)
!2654 = !DILocation(line: 462, column: 3, scope: !2648)
!2655 = distinct !DISubprogram(name: "fstat", scope: !2604, file: !2604, line: 467, type: !2656, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!657, !657, !2607}
!2658 = !{!2659, !2660}
!2659 = !DILocalVariable(name: "__fd", arg: 1, scope: !2655, file: !2604, line: 467, type: !657)
!2660 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2655, file: !2604, line: 467, type: !2607)
!2661 = !DILocation(line: 0, scope: !2655)
!2662 = !DILocation(line: 469, column: 10, scope: !2655)
!2663 = !DILocation(line: 469, column: 3, scope: !2655)
!2664 = distinct !DISubprogram(name: "fstatat", scope: !2604, file: !2604, line: 474, type: !2665, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!657, !657, !662, !2607, !657}
!2667 = !{!2668, !2669, !2670, !2671}
!2668 = !DILocalVariable(name: "__fd", arg: 1, scope: !2664, file: !2604, line: 474, type: !657)
!2669 = !DILocalVariable(name: "__filename", arg: 2, scope: !2664, file: !2604, line: 474, type: !662)
!2670 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2664, file: !2604, line: 474, type: !2607)
!2671 = !DILocalVariable(name: "__flag", arg: 4, scope: !2664, file: !2604, line: 474, type: !657)
!2672 = !DILocation(line: 0, scope: !2664)
!2673 = !DILocation(line: 477, column: 10, scope: !2664)
!2674 = !DILocation(line: 477, column: 3, scope: !2664)
!2675 = distinct !DISubprogram(name: "mknod", scope: !2604, file: !2604, line: 483, type: !2676, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!657, !662, !2618, !2612}
!2678 = !{!2679, !2680, !2681}
!2679 = !DILocalVariable(name: "__path", arg: 1, scope: !2675, file: !2604, line: 483, type: !662)
!2680 = !DILocalVariable(name: "__mode", arg: 2, scope: !2675, file: !2604, line: 483, type: !2618)
!2681 = !DILocalVariable(name: "__dev", arg: 3, scope: !2675, file: !2604, line: 483, type: !2612)
!2682 = !DILocation(line: 0, scope: !2675)
!2683 = !DILocation(line: 485, column: 10, scope: !2675)
!2684 = !DILocation(line: 485, column: 3, scope: !2675)
!2685 = distinct !DISubprogram(name: "mknodat", scope: !2604, file: !2604, line: 491, type: !2686, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!657, !657, !662, !2618, !2612}
!2688 = !{!2689, !2690, !2691, !2692}
!2689 = !DILocalVariable(name: "__fd", arg: 1, scope: !2685, file: !2604, line: 491, type: !657)
!2690 = !DILocalVariable(name: "__path", arg: 2, scope: !2685, file: !2604, line: 491, type: !662)
!2691 = !DILocalVariable(name: "__mode", arg: 3, scope: !2685, file: !2604, line: 491, type: !2618)
!2692 = !DILocalVariable(name: "__dev", arg: 4, scope: !2685, file: !2604, line: 491, type: !2612)
!2693 = !DILocation(line: 0, scope: !2685)
!2694 = !DILocation(line: 494, column: 10, scope: !2685)
!2695 = !DILocation(line: 494, column: 3, scope: !2685)
!2696 = distinct !DISubprogram(name: "stat64", scope: !2604, file: !2604, line: 502, type: !2697, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2719)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!657, !662, !2699}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2609, line: 119, size: 1152, elements: !2701)
!2701 = !{!2702, !2703, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2715, !2716, !2717, !2718}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2700, file: !2609, line: 121, baseType: !2612, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2700, file: !2609, line: 123, baseType: !2704, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2330, line: 149, baseType: !718)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2700, file: !2609, line: 124, baseType: !2616, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2700, file: !2609, line: 125, baseType: !2618, size: 32, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2700, file: !2609, line: 132, baseType: !2620, size: 32, offset: 224)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2700, file: !2609, line: 133, baseType: !2622, size: 32, offset: 256)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2700, file: !2609, line: 135, baseType: !657, size: 32, offset: 288)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2700, file: !2609, line: 136, baseType: !2612, size: 64, offset: 320)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2700, file: !2609, line: 137, baseType: !2329, size: 64, offset: 384)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2700, file: !2609, line: 143, baseType: !2627, size: 64, offset: 448)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2700, file: !2609, line: 144, baseType: !2714, size: 64, offset: 512)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2330, line: 180, baseType: !720)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2700, file: !2609, line: 152, baseType: !2631, size: 128, offset: 576)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2700, file: !2609, line: 153, baseType: !2631, size: 128, offset: 704)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2700, file: !2609, line: 154, baseType: !2631, size: 128, offset: 832)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2700, file: !2609, line: 164, baseType: !2641, size: 192, offset: 960)
!2719 = !{!2720, !2721}
!2720 = !DILocalVariable(name: "__path", arg: 1, scope: !2696, file: !2604, line: 502, type: !662)
!2721 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2696, file: !2604, line: 502, type: !2699)
!2722 = !DILocation(line: 0, scope: !2696)
!2723 = !DILocation(line: 504, column: 10, scope: !2696)
!2724 = !DILocation(line: 504, column: 3, scope: !2696)
!2725 = distinct !DISubprogram(name: "lstat64", scope: !2604, file: !2604, line: 509, type: !2697, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2726)
!2726 = !{!2727, !2728}
!2727 = !DILocalVariable(name: "__path", arg: 1, scope: !2725, file: !2604, line: 509, type: !662)
!2728 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2725, file: !2604, line: 509, type: !2699)
!2729 = !DILocation(line: 0, scope: !2725)
!2730 = !DILocation(line: 511, column: 10, scope: !2725)
!2731 = !DILocation(line: 511, column: 3, scope: !2725)
!2732 = distinct !DISubprogram(name: "fstat64", scope: !2604, file: !2604, line: 516, type: !2733, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!657, !657, !2699}
!2735 = !{!2736, !2737}
!2736 = !DILocalVariable(name: "__fd", arg: 1, scope: !2732, file: !2604, line: 516, type: !657)
!2737 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2732, file: !2604, line: 516, type: !2699)
!2738 = !DILocation(line: 0, scope: !2732)
!2739 = !DILocation(line: 518, column: 10, scope: !2732)
!2740 = !DILocation(line: 518, column: 3, scope: !2732)
!2741 = distinct !DISubprogram(name: "fstatat64", scope: !2604, file: !2604, line: 523, type: !2742, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!657, !657, !662, !2699, !657}
!2744 = !{!2745, !2746, !2747, !2748}
!2745 = !DILocalVariable(name: "__fd", arg: 1, scope: !2741, file: !2604, line: 523, type: !657)
!2746 = !DILocalVariable(name: "__filename", arg: 2, scope: !2741, file: !2604, line: 523, type: !662)
!2747 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2741, file: !2604, line: 523, type: !2699)
!2748 = !DILocalVariable(name: "__flag", arg: 4, scope: !2741, file: !2604, line: 523, type: !657)
!2749 = !DILocation(line: 0, scope: !2741)
!2750 = !DILocation(line: 526, column: 10, scope: !2741)
!2751 = !DILocation(line: 526, column: 3, scope: !2741)
!2752 = distinct !DISubprogram(name: "cgraph_decide_is_function_needed", scope: !3, file: !3, line: 335, type: !2753, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!656, !2053, !664}
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "node", arg: 1, scope: !2752, file: !3, line: 335, type: !2053)
!2757 = !DILocalVariable(name: "decl", arg: 2, scope: !2752, file: !3, line: 335, type: !664)
!2758 = !DILocation(line: 0, scope: !2752)
!2759 = !DILocation(line: 338, column: 19, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 338, column: 7)
!2761 = !DILocation(line: 338, column: 7, scope: !2760)
!2762 = !DILocation(line: 338, column: 7, scope: !2752)
!2763 = !DILocation(line: 344, column: 7, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 344, column: 7)
!2765 = !DILocation(line: 345, column: 7, scope: !2764)
!2766 = !DILocation(line: 345, column: 10, scope: !2764)
!2767 = !DILocation(line: 344, column: 7, scope: !2752)
!2768 = !DILocation(line: 350, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 350, column: 7)
!2770 = !DILocation(line: 351, column: 7, scope: !2769)
!2771 = !DILocation(line: 351, column: 10, scope: !2769)
!2772 = !DILocation(line: 352, column: 7, scope: !2769)
!2773 = !DILocation(line: 352, column: 11, scope: !2769)
!2774 = !DILocation(line: 353, column: 7, scope: !2769)
!2775 = !DILocation(line: 353, column: 46, scope: !2769)
!2776 = !DILocation(line: 353, column: 11, scope: !2769)
!2777 = !DILocation(line: 350, column: 7, scope: !2752)
!2778 = !DILocation(line: 359, column: 13, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 359, column: 7)
!2780 = !DILocation(line: 359, column: 7, scope: !2779)
!2781 = !DILocation(line: 359, column: 7, scope: !2752)
!2782 = !DILocation(line: 370, column: 9, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 370, column: 7)
!2784 = !DILocation(line: 371, column: 2, scope: !2783)
!2785 = !DILocation(line: 371, column: 7, scope: !2783)
!2786 = !DILocation(line: 371, column: 16, scope: !2783)
!2787 = !DILocation(line: 371, column: 32, scope: !2783)
!2788 = !DILocation(line: 371, column: 20, scope: !2783)
!2789 = !DILocation(line: 372, column: 6, scope: !2783)
!2790 = !DILocation(line: 372, column: 10, scope: !2783)
!2791 = !DILocation(line: 373, column: 6, scope: !2783)
!2792 = !DILocation(line: 373, column: 16, scope: !2783)
!2793 = !DILocation(line: 373, column: 10, scope: !2783)
!2794 = !DILocation(line: 374, column: 8, scope: !2783)
!2795 = !DILocation(line: 374, column: 12, scope: !2783)
!2796 = !DILocation(line: 375, column: 12, scope: !2783)
!2797 = !DILocation(line: 375, column: 8, scope: !2783)
!2798 = !DILocation(line: 376, column: 12, scope: !2783)
!2799 = !DILocation(line: 377, column: 11, scope: !2783)
!2800 = !DILocation(line: 377, column: 30, scope: !2783)
!2801 = !DILocation(line: 377, column: 34, scope: !2783)
!2802 = !DILocation(line: 370, column: 7, scope: !2752)
!2803 = !DILocation(line: 382, column: 7, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 382, column: 7)
!2805 = !DILocation(line: 382, column: 38, scope: !2804)
!2806 = !DILocation(line: 382, column: 7, scope: !2752)
!2807 = !DILocation(line: 386, column: 1, scope: !2752)
!2808 = distinct !DISubprogram(name: "cgraph_process_new_functions", scope: !3, file: !3, line: 393, type: !2010, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2809)
!2809 = !{!2810, !2811, !2812}
!2810 = !DILocalVariable(name: "output", scope: !2808, file: !3, line: 395, type: !656)
!2811 = !DILocalVariable(name: "fndecl", scope: !2808, file: !3, line: 396, type: !664)
!2812 = !DILocalVariable(name: "node", scope: !2808, file: !3, line: 397, type: !2053)
!2813 = !DILocation(line: 0, scope: !2808)
!2814 = !DILocation(line: 401, column: 3, scope: !2808)
!2815 = !DILocation(line: 395, column: 8, scope: !2808)
!2816 = !DILocation(line: 401, column: 10, scope: !2808)
!2817 = !DILocation(line: 404, column: 22, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 402, column: 5)
!2819 = !DILocation(line: 405, column: 44, scope: !2818)
!2820 = !DILocation(line: 405, column: 24, scope: !2818)
!2821 = !DILocation(line: 406, column: 15, scope: !2818)
!2822 = !DILocation(line: 406, column: 7, scope: !2818)
!2823 = !DILocation(line: 412, column: 22, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 407, column: 2)
!2825 = !DILocation(line: 413, column: 4, scope: !2824)
!2826 = !DILocation(line: 414, column: 4, scope: !2824)
!2827 = !DILocation(line: 416, column: 4, scope: !2824)
!2828 = !DILocation(line: 424, column: 4, scope: !2824)
!2829 = !DILocation(line: 425, column: 15, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 425, column: 8)
!2831 = !DILocation(line: 425, column: 9, scope: !2830)
!2832 = !DILocation(line: 425, column: 8, scope: !2824)
!2833 = !DILocation(line: 426, column: 6, scope: !2830)
!2834 = !DILocation(line: 427, column: 15, scope: !2824)
!2835 = !DILocation(line: 427, column: 4, scope: !2824)
!2836 = !DILocation(line: 428, column: 26, scope: !2824)
!2837 = !DILocation(line: 429, column: 4, scope: !2824)
!2838 = !DILocation(line: 430, column: 9, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 430, column: 8)
!2840 = !DILocation(line: 430, column: 22, scope: !2839)
!2841 = !DILocation(line: 431, column: 8, scope: !2839)
!2842 = !DILocation(line: 431, column: 29, scope: !2839)
!2843 = !DILocation(line: 431, column: 12, scope: !2839)
!2844 = !DILocation(line: 434, column: 8, scope: !2839)
!2845 = !DILocation(line: 434, column: 12, scope: !2839)
!2846 = !DILocation(line: 430, column: 8, scope: !2824)
!2847 = !DILocation(line: 435, column: 54, scope: !2839)
!2848 = !DILocation(line: 435, column: 6, scope: !2839)
!2849 = !DILocation(line: 436, column: 4, scope: !2824)
!2850 = !DILocation(line: 437, column: 4, scope: !2824)
!2851 = !DILocation(line: 438, column: 4, scope: !2824)
!2852 = !DILocation(line: 439, column: 26, scope: !2824)
!2853 = !DILocation(line: 440, column: 4, scope: !2824)
!2854 = !DILocation(line: 445, column: 10, scope: !2824)
!2855 = !DILocation(line: 445, column: 18, scope: !2824)
!2856 = !DILocation(line: 446, column: 4, scope: !2824)
!2857 = !DILocation(line: 447, column: 4, scope: !2824)
!2858 = !DILocation(line: 450, column: 4, scope: !2824)
!2859 = !DILocation(line: 451, column: 4, scope: !2824)
!2860 = !DILocation(line: 453, column: 7, scope: !2818)
!2861 = distinct !{!2861, !2814, !2862}
!2862 = !DILocation(line: 454, column: 5, scope: !2808)
!2863 = !DILocation(line: 455, column: 3, scope: !2808)
!2864 = distinct !DISubprogram(name: "cgraph_finalize_function", scope: !3, file: !3, line: 523, type: !2865, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !664, !656}
!2867 = !{!2868, !2869, !2870}
!2868 = !DILocalVariable(name: "decl", arg: 1, scope: !2864, file: !3, line: 523, type: !664)
!2869 = !DILocalVariable(name: "nested", arg: 2, scope: !2864, file: !3, line: 523, type: !656)
!2870 = !DILocalVariable(name: "node", scope: !2864, file: !3, line: 525, type: !2053)
!2871 = !DILocation(line: 0, scope: !2864)
!2872 = !DILocation(line: 525, column: 30, scope: !2864)
!2873 = !DILocation(line: 527, column: 19, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 527, column: 7)
!2875 = !DILocation(line: 527, column: 7, scope: !2874)
!2876 = !DILocation(line: 527, column: 7, scope: !2864)
!2877 = !DILocation(line: 528, column: 5, scope: !2874)
!2878 = !DILocation(line: 530, column: 30, scope: !2864)
!2879 = !DILocation(line: 530, column: 9, scope: !2864)
!2880 = !DILocation(line: 530, column: 13, scope: !2864)
!2881 = !DILocation(line: 531, column: 3, scope: !2864)
!2882 = !DILocation(line: 532, column: 25, scope: !2864)
!2883 = !DILocation(line: 533, column: 19, scope: !2864)
!2884 = !DILocation(line: 533, column: 48, scope: !2864)
!2885 = !DILocation(line: 533, column: 52, scope: !2864)
!2886 = !DILocation(line: 533, column: 9, scope: !2864)
!2887 = !DILocation(line: 533, column: 17, scope: !2864)
!2888 = !DILocation(line: 534, column: 31, scope: !2864)
!2889 = !DILocation(line: 535, column: 26, scope: !2864)
!2890 = !DILocation(line: 535, column: 3, scope: !2864)
!2891 = !DILocation(line: 537, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 537, column: 7)
!2893 = !DILocation(line: 537, column: 7, scope: !2864)
!2894 = !DILocation(line: 538, column: 5, scope: !2892)
!2895 = !DILocation(line: 543, column: 8, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 543, column: 7)
!2897 = !DILocation(line: 543, column: 27, scope: !2896)
!2898 = !DILocation(line: 543, column: 31, scope: !2896)
!2899 = !DILocation(line: 543, column: 50, scope: !2896)
!2900 = !DILocation(line: 543, column: 54, scope: !2896)
!2901 = !DILocation(line: 543, column: 7, scope: !2864)
!2902 = !DILocation(line: 544, column: 5, scope: !2896)
!2903 = !DILocation(line: 547, column: 8, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 547, column: 7)
!2905 = !DILocation(line: 547, column: 7, scope: !2864)
!2906 = !DILocation(line: 548, column: 7, scope: !2904)
!2907 = !DILocation(line: 548, column: 20, scope: !2904)
!2908 = !DILocation(line: 548, column: 5, scope: !2904)
!2909 = !DILocation(line: 551, column: 7, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 551, column: 7)
!2911 = !DILocation(line: 551, column: 7, scope: !2864)
!2912 = !DILocation(line: 552, column: 5, scope: !2910)
!2913 = !DILocation(line: 554, column: 8, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 554, column: 7)
!2915 = !DILocation(line: 554, column: 7, scope: !2864)
!2916 = !DILocation(line: 555, column: 5, scope: !2914)
!2917 = !DILocation(line: 556, column: 1, scope: !2864)
!2918 = distinct !DISubprogram(name: "cgraph_analyze_function", scope: !3, file: !3, line: 846, type: !2198, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DILocalVariable(name: "node", arg: 1, scope: !2918, file: !3, line: 846, type: !2053)
!2921 = !DILocalVariable(name: "save", scope: !2918, file: !3, line: 848, type: !664)
!2922 = !DILocalVariable(name: "decl", scope: !2918, file: !3, line: 849, type: !664)
!2923 = !DILocation(line: 0, scope: !2918)
!2924 = !DILocation(line: 848, column: 15, scope: !2918)
!2925 = !DILocation(line: 849, column: 21, scope: !2918)
!2926 = !DILocation(line: 851, column: 25, scope: !2918)
!2927 = !DILocation(line: 852, column: 14, scope: !2918)
!2928 = !DILocation(line: 852, column: 3, scope: !2918)
!2929 = !DILocation(line: 854, column: 43, scope: !2918)
!2930 = !DILocation(line: 854, column: 3, scope: !2918)
!2931 = !DILocation(line: 860, column: 8, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 860, column: 7)
!2933 = !DILocation(line: 860, column: 7, scope: !2918)
!2934 = !DILocation(line: 861, column: 5, scope: !2932)
!2935 = !DILocation(line: 862, column: 3, scope: !2918)
!2936 = !DILocation(line: 864, column: 3, scope: !2918)
!2937 = !DILocation(line: 865, column: 9, scope: !2918)
!2938 = !DILocation(line: 865, column: 18, scope: !2918)
!2939 = !DILocation(line: 867, column: 3, scope: !2918)
!2940 = !DILocation(line: 868, column: 25, scope: !2918)
!2941 = !DILocation(line: 869, column: 1, scope: !2918)
!2942 = distinct !DISubprogram(name: "gimple_in_ssa_p", scope: !2943, file: !2943, line: 33, type: !2944, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2948)
!2943 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!656, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!2948 = !{!2949}
!2949 = !DILocalVariable(name: "fun", arg: 1, scope: !2942, file: !2943, line: 33, type: !2946)
!2950 = !DILocation(line: 0, scope: !2942)
!2951 = !DILocation(line: 35, column: 10, scope: !2942)
!2952 = !DILocation(line: 35, column: 14, scope: !2942)
!2953 = !DILocation(line: 35, column: 22, scope: !2942)
!2954 = !DILocation(line: 35, column: 17, scope: !2942)
!2955 = !DILocation(line: 35, column: 32, scope: !2942)
!2956 = !DILocation(line: 35, column: 51, scope: !2942)
!2957 = !DILocation(line: 35, column: 3, scope: !2942)
!2958 = distinct !DISubprogram(name: "cgraph_expand_function", scope: !3, file: !3, line: 1549, type: !2198, scopeLine: 1550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2959)
!2959 = !{!2960, !2961, !2962, !2965, !2966}
!2960 = !DILocalVariable(name: "node", arg: 1, scope: !2958, file: !3, line: 1549, type: !2053)
!2961 = !DILocalVariable(name: "decl", scope: !2958, file: !3, line: 1551, type: !664)
!2962 = !DILocalVariable(name: "alias", scope: !2963, file: !3, line: 1569, type: !2053)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 1568, column: 5)
!2964 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 1567, column: 7)
!2965 = !DILocalVariable(name: "next", scope: !2963, file: !3, line: 1569, type: !2053)
!2966 = !DILocalVariable(name: "saved_alias", scope: !2963, file: !3, line: 1570, type: !656)
!2967 = !DILocation(line: 0, scope: !2958)
!2968 = !DILocation(line: 1551, column: 21, scope: !2958)
!2969 = !DILocation(line: 1554, column: 3, scope: !2958)
!2970 = !DILocation(line: 1556, column: 3, scope: !2958)
!2971 = !DILocation(line: 1557, column: 9, scope: !2958)
!2972 = !DILocation(line: 1557, column: 17, scope: !2958)
!2973 = !DILocation(line: 1559, column: 3, scope: !2958)
!2974 = !DILocation(line: 1562, column: 3, scope: !2958)
!2975 = !DILocation(line: 1565, column: 3, scope: !2958)
!2976 = !DILocation(line: 1566, column: 25, scope: !2958)
!2977 = !DILocation(line: 1567, column: 13, scope: !2964)
!2978 = !DILocation(line: 1567, column: 7, scope: !2964)
!2979 = !DILocation(line: 1567, column: 7, scope: !2958)
!2980 = !DILocation(line: 1570, column: 32, scope: !2963)
!2981 = !DILocation(line: 1570, column: 26, scope: !2963)
!2982 = !DILocation(line: 1571, column: 12, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 1571, column: 7)
!2984 = !DILocation(line: 0, scope: !2983)
!2985 = !DILocation(line: 0, scope: !2963)
!2986 = !DILocation(line: 1572, column: 11, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1571, column: 7)
!2988 = !DILocation(line: 1572, column: 17, scope: !2987)
!2989 = !DILocation(line: 1572, column: 27, scope: !2987)
!2990 = !DILocation(line: 1571, column: 7, scope: !2983)
!2991 = !DILocation(line: 1571, column: 7, scope: !2987)
!2992 = distinct !{!2992, !2990, !2993}
!2993 = !DILocation(line: 1573, column: 9, scope: !2983)
!2994 = !DILocation(line: 1576, column: 7, scope: !2963)
!2995 = !DILocation(line: 1576, column: 7, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 1576, column: 7)
!2997 = !DILocation(line: 1578, column: 18, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 1577, column: 9)
!2999 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 1576, column: 7)
!3000 = !DILocation(line: 1579, column: 22, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 1579, column: 8)
!3002 = !DILocation(line: 1579, column: 9, scope: !3001)
!3003 = !DILocation(line: 1579, column: 8, scope: !2998)
!3004 = !DILocation(line: 1580, column: 29, scope: !3001)
!3005 = !DILocation(line: 1581, column: 8, scope: !3001)
!3006 = !DILocation(line: 1580, column: 6, scope: !3001)
!3007 = !DILocation(line: 1583, column: 6, scope: !3001)
!3008 = !DILocation(line: 1576, column: 7, scope: !2999)
!3009 = distinct !{!3009, !2995, !3010}
!3010 = !DILocation(line: 1584, column: 2, scope: !2996)
!3011 = !DILocation(line: 1585, column: 19, scope: !2963)
!3012 = !DILocation(line: 1586, column: 5, scope: !2963)
!3013 = !DILocation(line: 1587, column: 3, scope: !2958)
!3014 = !DILocation(line: 1588, column: 3, scope: !2958)
!3015 = !DILocation(line: 1591, column: 3, scope: !2958)
!3016 = !DILocation(line: 1593, column: 31, scope: !2958)
!3017 = !DILocation(line: 1594, column: 1, scope: !2958)
!3018 = distinct !DISubprogram(name: "cgraph_reset_node", scope: !3, file: !3, line: 469, type: !2198, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3019)
!3019 = !{!3020, !3021}
!3020 = !DILocalVariable(name: "node", arg: 1, scope: !3018, file: !3, line: 469, type: !2053)
!3021 = !DILocalVariable(name: "n", scope: !3022, file: !3, line: 493, type: !2053)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 492, column: 5)
!3023 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 491, column: 7)
!3024 = !DILocation(line: 0, scope: !3018)
!3025 = !DILocation(line: 476, column: 3, scope: !3018)
!3026 = !DILocation(line: 479, column: 18, scope: !3018)
!3027 = !DILocation(line: 479, column: 11, scope: !3018)
!3028 = !DILocation(line: 479, column: 3, scope: !3018)
!3029 = !DILocation(line: 480, column: 18, scope: !3018)
!3030 = !DILocation(line: 480, column: 11, scope: !3018)
!3031 = !DILocation(line: 480, column: 3, scope: !3018)
!3032 = !DILocation(line: 481, column: 18, scope: !3018)
!3033 = !DILocation(line: 481, column: 11, scope: !3018)
!3034 = !DILocation(line: 481, column: 3, scope: !3018)
!3035 = !DILocation(line: 482, column: 18, scope: !3018)
!3036 = !DILocation(line: 483, column: 15, scope: !3018)
!3037 = !DILocation(line: 483, column: 39, scope: !3018)
!3038 = !DILocation(line: 484, column: 25, scope: !3018)
!3039 = !DILocation(line: 486, column: 3, scope: !3018)
!3040 = !DILocation(line: 491, column: 13, scope: !3023)
!3041 = !DILocation(line: 491, column: 7, scope: !3023)
!3042 = !DILocation(line: 491, column: 7, scope: !3018)
!3043 = !DILocation(line: 495, column: 12, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 495, column: 7)
!3045 = !DILocation(line: 0, scope: !3044)
!3046 = !DILocation(line: 0, scope: !3022)
!3047 = !DILocation(line: 495, column: 7, scope: !3044)
!3048 = !DILocation(line: 496, column: 8, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 496, column: 6)
!3050 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 495, column: 7)
!3051 = !DILocation(line: 496, column: 6, scope: !3050)
!3052 = !DILocation(line: 495, column: 46, scope: !3050)
!3053 = !DILocation(line: 495, column: 7, scope: !3050)
!3054 = distinct !{!3054, !3047, !3055}
!3055 = !DILocation(line: 497, column: 4, scope: !3044)
!3056 = !DILocation(line: 498, column: 11, scope: !3022)
!3057 = !DILocation(line: 499, column: 18, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 498, column: 11)
!3059 = !DILocation(line: 499, column: 2, scope: !3058)
!3060 = !DILocation(line: 501, column: 1, scope: !3018)
!3061 = distinct !DISubprogram(name: "record_cdtor_fn", scope: !3, file: !3, line: 164, type: !3062, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !664}
!3064 = !{!3065, !3066}
!3065 = !DILocalVariable(name: "fndecl", arg: 1, scope: !3061, file: !3, line: 164, type: !664)
!3066 = !DILocalVariable(name: "node", scope: !3061, file: !3, line: 166, type: !2053)
!3067 = !DILocation(line: 0, scope: !3061)
!3068 = !DILocation(line: 167, column: 15, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 167, column: 7)
!3070 = !DILocation(line: 167, column: 7, scope: !3069)
!3071 = !DILocation(line: 168, column: 7, scope: !3069)
!3072 = !DILocation(line: 168, column: 12, scope: !3069)
!3073 = !DILocation(line: 169, column: 4, scope: !3069)
!3074 = !DILocation(line: 169, column: 8, scope: !3069)
!3075 = !DILocation(line: 167, column: 7, scope: !3061)
!3076 = !DILocation(line: 172, column: 7, scope: !3061)
!3077 = !DILocation(line: 174, column: 7, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 173, column: 5)
!3079 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 172, column: 7)
!3080 = !DILocation(line: 175, column: 40, scope: !3078)
!3081 = !DILocation(line: 176, column: 5, scope: !3078)
!3082 = !DILocation(line: 177, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 177, column: 7)
!3084 = !DILocation(line: 177, column: 7, scope: !3061)
!3085 = !DILocation(line: 179, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 178, column: 5)
!3087 = !DILocation(line: 180, column: 39, scope: !3086)
!3088 = !DILocation(line: 181, column: 5, scope: !3086)
!3089 = !DILocation(line: 182, column: 10, scope: !3061)
!3090 = !DILocation(line: 183, column: 15, scope: !3061)
!3091 = !DILocation(line: 183, column: 39, scope: !3061)
!3092 = !DILocation(line: 184, column: 3, scope: !3061)
!3093 = !DILocation(line: 185, column: 1, scope: !3061)
!3094 = distinct !DISubprogram(name: "cgraph_mark_if_needed", scope: !3, file: !3, line: 563, type: !3062, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3095)
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "decl", arg: 1, scope: !3094, file: !3, line: 563, type: !664)
!3097 = !DILocalVariable(name: "node", scope: !3094, file: !3, line: 565, type: !2053)
!3098 = !DILocation(line: 0, scope: !3094)
!3099 = !DILocation(line: 565, column: 30, scope: !3094)
!3100 = !DILocation(line: 566, column: 19, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 566, column: 7)
!3102 = !DILocation(line: 566, column: 7, scope: !3101)
!3103 = !DILocation(line: 566, column: 29, scope: !3101)
!3104 = !DILocation(line: 566, column: 32, scope: !3101)
!3105 = !DILocation(line: 566, column: 7, scope: !3094)
!3106 = !DILocation(line: 567, column: 5, scope: !3101)
!3107 = !DILocation(line: 568, column: 1, scope: !3094)
!3108 = distinct !DISubprogram(name: "verify_cgraph_node", scope: !3, file: !3, line: 581, type: !2198, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3114, !3115, !3122, !3123, !3126, !3129, !3136, !3142, !3143}
!3110 = !DILocalVariable(name: "node", arg: 1, scope: !3108, file: !3, line: 581, type: !2053)
!3111 = !DILocalVariable(name: "e", scope: !3108, file: !3, line: 583, type: !2058)
!3112 = !DILocalVariable(name: "this_cfun", scope: !3108, file: !3, line: 584, type: !1410)
!3113 = !DILocalVariable(name: "saved_cfun", scope: !3108, file: !3, line: 585, type: !1410)
!3114 = !DILocalVariable(name: "this_block", scope: !3108, file: !3, line: 586, type: !1422)
!3115 = !DILocalVariable(name: "gsi", scope: !3108, file: !3, line: 587, type: !3116)
!3116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !584, line: 265, baseType: !3117)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !584, line: 254, size: 192, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3117, file: !584, line: 257, baseType: !983, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3117, file: !584, line: 263, baseType: !978, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !3117, file: !584, line: 264, baseType: !1422, size: 64, offset: 128)
!3122 = !DILocalVariable(name: "error_found", scope: !3108, file: !3, line: 588, type: !656)
!3123 = !DILocalVariable(name: "n", scope: !3124, file: !3, line: 694, type: !2053)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 693, column: 5)
!3125 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 692, column: 7)
!3126 = !DILocalVariable(name: "n", scope: !3127, file: !3, line: 706, type: !2053)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 705, column: 5)
!3128 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 704, column: 7)
!3129 = !DILocalVariable(name: "visited_nodes", scope: !3130, file: !3, line: 741, type: !3134)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 738, column: 2)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 737, column: 11)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 736, column: 5)
!3133 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 732, column: 7)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_set_t", file: !135, line: 5199, flags: DIFlagFwdDecl)
!3136 = !DILocalVariable(name: "stmt", scope: !3137, file: !3, line: 749, type: !988)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 748, column: 8)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 745, column: 6)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 745, column: 6)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 744, column: 4)
!3141 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 744, column: 4)
!3142 = !DILocalVariable(name: "decl", scope: !3137, file: !3, line: 750, type: !664)
!3143 = !DILocalVariable(name: "e", scope: !3144, file: !3, line: 753, type: !2058)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 752, column: 5)
!3145 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 751, column: 7)
!3146 = !DILocation(line: 0, scope: !3108)
!3147 = !DILocation(line: 584, column: 32, scope: !3108)
!3148 = !DILocation(line: 585, column: 33, scope: !3108)
!3149 = !DILocation(line: 587, column: 3, scope: !3108)
!3150 = !DILocation(line: 590, column: 7, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 590, column: 7)
!3152 = !DILocation(line: 590, column: 18, scope: !3151)
!3153 = !DILocation(line: 590, column: 21, scope: !3151)
!3154 = !DILocation(line: 590, column: 7, scope: !3108)
!3155 = !DILocation(line: 593, column: 3, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 593, column: 3)
!3157 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 593, column: 3)
!3158 = !DILocation(line: 593, column: 3, scope: !3157)
!3159 = !DILocation(line: 595, column: 3, scope: !3108)
!3160 = !DILocation(line: 596, column: 18, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 596, column: 3)
!3162 = !DILocation(line: 596, column: 8, scope: !3161)
!3163 = !DILocation(line: 0, scope: !3161)
!3164 = !DILocation(line: 596, column: 3, scope: !3161)
!3165 = !DILocation(line: 597, column: 12, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 597, column: 9)
!3167 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 596, column: 3)
!3168 = !DILocation(line: 597, column: 9, scope: !3166)
!3169 = !DILocation(line: 597, column: 9, scope: !3167)
!3170 = !DILocation(line: 600, column: 52, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 598, column: 7)
!3172 = !DILocation(line: 600, column: 31, scope: !3171)
!3173 = !DILocation(line: 600, column: 9, scope: !3171)
!3174 = !DILocation(line: 601, column: 52, scope: !3171)
!3175 = !DILocation(line: 601, column: 31, scope: !3171)
!3176 = !DILocation(line: 601, column: 9, scope: !3171)
!3177 = !DILocation(line: 599, column: 2, scope: !3171)
!3178 = !DILocation(line: 603, column: 7, scope: !3171)
!3179 = !DILocation(line: 596, column: 37, scope: !3167)
!3180 = !DILocation(line: 596, column: 3, scope: !3167)
!3181 = distinct !{!3181, !3164, !3182}
!3182 = !DILocation(line: 603, column: 7, scope: !3161)
!3183 = !DILocation(line: 604, column: 13, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 604, column: 7)
!3185 = !DILocation(line: 604, column: 19, scope: !3184)
!3186 = !DILocation(line: 604, column: 7, scope: !3108)
!3187 = !DILocation(line: 606, column: 7, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 605, column: 5)
!3189 = !DILocation(line: 608, column: 5, scope: !3188)
!3190 = !DILocation(line: 609, column: 20, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 609, column: 7)
!3192 = !DILocation(line: 609, column: 7, scope: !3191)
!3193 = !DILocation(line: 609, column: 31, scope: !3191)
!3194 = !DILocation(line: 609, column: 46, scope: !3191)
!3195 = !DILocation(line: 609, column: 34, scope: !3191)
!3196 = !DILocation(line: 609, column: 7, scope: !3108)
!3197 = !DILocation(line: 611, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 610, column: 5)
!3199 = !DILocation(line: 614, column: 20, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 614, column: 7)
!3201 = !DILocation(line: 613, column: 5, scope: !3198)
!3202 = !DILocation(line: 614, column: 7, scope: !3200)
!3203 = !DILocation(line: 614, column: 31, scope: !3200)
!3204 = !DILocation(line: 614, column: 40, scope: !3200)
!3205 = !DILocation(line: 614, column: 34, scope: !3200)
!3206 = !DILocation(line: 614, column: 7, scope: !3108)
!3207 = !DILocation(line: 616, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 615, column: 5)
!3209 = !DILocation(line: 619, column: 20, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 619, column: 7)
!3211 = !DILocation(line: 618, column: 5, scope: !3208)
!3212 = !DILocation(line: 619, column: 7, scope: !3210)
!3213 = !DILocation(line: 619, column: 31, scope: !3210)
!3214 = !DILocation(line: 619, column: 40, scope: !3210)
!3215 = !DILocation(line: 619, column: 34, scope: !3210)
!3216 = !DILocation(line: 619, column: 7, scope: !3108)
!3217 = !DILocation(line: 621, column: 7, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 620, column: 5)
!3219 = !DILocation(line: 623, column: 5, scope: !3218)
!3220 = !DILocation(line: 624, column: 18, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 624, column: 3)
!3222 = !DILocation(line: 624, column: 8, scope: !3221)
!3223 = !DILocation(line: 0, scope: !3221)
!3224 = !DILocation(line: 624, column: 3, scope: !3221)
!3225 = !DILocation(line: 626, column: 14, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 626, column: 11)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 625, column: 5)
!3228 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 624, column: 3)
!3229 = !DILocation(line: 626, column: 20, scope: !3226)
!3230 = !DILocation(line: 626, column: 11, scope: !3227)
!3231 = !DILocation(line: 628, column: 4, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 627, column: 2)
!3233 = !DILocation(line: 630, column: 2, scope: !3232)
!3234 = !DILocation(line: 631, column: 14, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 631, column: 11)
!3236 = !DILocation(line: 631, column: 24, scope: !3235)
!3237 = !DILocation(line: 631, column: 11, scope: !3227)
!3238 = !DILocation(line: 633, column: 4, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 632, column: 2)
!3240 = !DILocation(line: 636, column: 14, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 636, column: 11)
!3242 = !DILocation(line: 635, column: 2, scope: !3239)
!3243 = !DILocation(line: 0, scope: !3227)
!3244 = !DILocation(line: 636, column: 24, scope: !3241)
!3245 = !DILocation(line: 636, column: 11, scope: !3227)
!3246 = !DILocation(line: 638, column: 4, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 637, column: 2)
!3248 = !DILocation(line: 640, column: 2, scope: !3247)
!3249 = !DILocation(line: 641, column: 33, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 641, column: 11)
!3251 = !DILocation(line: 641, column: 41, scope: !3250)
!3252 = !DILocation(line: 641, column: 11, scope: !3250)
!3253 = !DILocation(line: 642, column: 11, scope: !3250)
!3254 = !DILocation(line: 642, column: 18, scope: !3250)
!3255 = !DILocation(line: 642, column: 33, scope: !3250)
!3256 = !DILocation(line: 642, column: 15, scope: !3250)
!3257 = !DILocation(line: 643, column: 11, scope: !3250)
!3258 = !DILocation(line: 643, column: 18, scope: !3250)
!3259 = !DILocation(line: 644, column: 54, scope: !3250)
!3260 = !DILocation(line: 645, column: 22, scope: !3250)
!3261 = !DILocation(line: 645, column: 8, scope: !3250)
!3262 = !DILocation(line: 644, column: 11, scope: !3250)
!3263 = !DILocation(line: 644, column: 8, scope: !3250)
!3264 = !DILocation(line: 641, column: 11, scope: !3227)
!3265 = !DILocation(line: 648, column: 9, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 646, column: 2)
!3267 = !DILocation(line: 649, column: 39, scope: !3266)
!3268 = !DILocation(line: 649, column: 47, scope: !3266)
!3269 = !DILocation(line: 650, column: 22, scope: !3266)
!3270 = !DILocation(line: 650, column: 8, scope: !3266)
!3271 = !DILocation(line: 649, column: 4, scope: !3266)
!3272 = !DILocation(line: 647, column: 4, scope: !3266)
!3273 = !DILocation(line: 652, column: 2, scope: !3266)
!3274 = !DILocation(line: 653, column: 15, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 653, column: 11)
!3276 = !DILocation(line: 653, column: 12, scope: !3275)
!3277 = !DILocation(line: 0, scope: !3275)
!3278 = !DILocation(line: 653, column: 11, scope: !3227)
!3279 = !DILocation(line: 656, column: 15, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 655, column: 8)
!3281 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 654, column: 2)
!3282 = !DILocation(line: 656, column: 30, scope: !3280)
!3283 = !DILocation(line: 656, column: 12, scope: !3280)
!3284 = !DILocation(line: 656, column: 8, scope: !3280)
!3285 = !DILocation(line: 655, column: 8, scope: !3281)
!3286 = !DILocation(line: 659, column: 8, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 658, column: 6)
!3288 = !DILocation(line: 661, column: 6, scope: !3287)
!3289 = !DILocation(line: 662, column: 14, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 662, column: 8)
!3291 = !DILocation(line: 662, column: 23, scope: !3290)
!3292 = !DILocation(line: 662, column: 8, scope: !3290)
!3293 = !DILocation(line: 662, column: 8, scope: !3281)
!3294 = !DILocation(line: 664, column: 8, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 663, column: 6)
!3296 = !DILocation(line: 666, column: 6, scope: !3295)
!3297 = !DILocation(line: 669, column: 6, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 669, column: 6)
!3299 = !DILocation(line: 669, column: 6, scope: !3275)
!3300 = !DILocation(line: 671, column: 6, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 670, column: 4)
!3302 = !DILocation(line: 673, column: 4, scope: !3301)
!3303 = !DILocation(line: 624, column: 37, scope: !3228)
!3304 = !DILocation(line: 624, column: 3, scope: !3228)
!3305 = distinct !{!3305, !3224, !3306}
!3306 = !DILocation(line: 674, column: 5, scope: !3221)
!3307 = !DILocation(line: 675, column: 14, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 675, column: 7)
!3309 = !DILocation(line: 675, column: 8, scope: !3308)
!3310 = !DILocation(line: 675, column: 22, scope: !3308)
!3311 = !DILocation(line: 675, column: 38, scope: !3308)
!3312 = !DILocation(line: 675, column: 25, scope: !3308)
!3313 = !DILocation(line: 675, column: 7, scope: !3108)
!3314 = !DILocation(line: 677, column: 7, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 676, column: 5)
!3316 = !DILocation(line: 679, column: 5, scope: !3315)
!3317 = !DILocation(line: 680, column: 20, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 680, column: 7)
!3319 = !DILocation(line: 680, column: 31, scope: !3318)
!3320 = !DILocation(line: 680, column: 7, scope: !3108)
!3321 = !DILocation(line: 682, column: 7, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 681, column: 5)
!3323 = !DILocation(line: 684, column: 5, scope: !3322)
!3324 = !DILocation(line: 686, column: 27, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 686, column: 7)
!3326 = !DILocation(line: 686, column: 8, scope: !3325)
!3327 = !DILocation(line: 686, column: 7, scope: !3108)
!3328 = !DILocation(line: 688, column: 7, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 687, column: 5)
!3330 = !DILocation(line: 690, column: 5, scope: !3329)
!3331 = !DILocation(line: 692, column: 13, scope: !3125)
!3332 = !DILocation(line: 692, column: 7, scope: !3125)
!3333 = !DILocation(line: 692, column: 7, scope: !3108)
!3334 = !DILocation(line: 695, column: 32, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 695, column: 7)
!3336 = !DILocation(line: 695, column: 12, scope: !3335)
!3337 = !DILocation(line: 0, scope: !3335)
!3338 = !DILocation(line: 0, scope: !3124)
!3339 = !DILocation(line: 695, column: 7, scope: !3335)
!3340 = !DILocation(line: 696, column: 15, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 696, column: 13)
!3342 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 695, column: 7)
!3343 = !DILocation(line: 696, column: 13, scope: !3342)
!3344 = !DILocation(line: 695, column: 50, scope: !3342)
!3345 = !DILocation(line: 695, column: 7, scope: !3342)
!3346 = distinct !{!3346, !3339, !3347}
!3347 = !DILocation(line: 697, column: 4, scope: !3335)
!3348 = !DILocation(line: 698, column: 11, scope: !3124)
!3349 = !DILocation(line: 700, column: 4, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 699, column: 2)
!3351 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 698, column: 11)
!3352 = !DILocation(line: 702, column: 2, scope: !3350)
!3353 = !DILocation(line: 683, column: 19, scope: !3322)
!3354 = !DILocation(line: 704, column: 13, scope: !3128)
!3355 = !DILocation(line: 704, column: 7, scope: !3128)
!3356 = !DILocation(line: 704, column: 7, scope: !3108)
!3357 = !DILocation(line: 707, column: 12, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 707, column: 7)
!3359 = !DILocation(line: 0, scope: !3358)
!3360 = !DILocation(line: 0, scope: !3127)
!3361 = !DILocation(line: 707, column: 7, scope: !3358)
!3362 = !DILocation(line: 708, column: 16, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 708, column: 13)
!3364 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 707, column: 7)
!3365 = !DILocation(line: 708, column: 25, scope: !3363)
!3366 = !DILocation(line: 708, column: 13, scope: !3364)
!3367 = !DILocation(line: 707, column: 40, scope: !3364)
!3368 = !DILocation(line: 707, column: 7, scope: !3364)
!3369 = distinct !{!3369, !3361, !3370}
!3370 = !DILocation(line: 709, column: 4, scope: !3358)
!3371 = !DILocation(line: 712, column: 4, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 711, column: 2)
!3373 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 710, column: 11)
!3374 = !DILocation(line: 714, column: 2, scope: !3372)
!3375 = !DILocation(line: 716, column: 14, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 716, column: 7)
!3377 = !DILocation(line: 716, column: 8, scope: !3376)
!3378 = !DILocation(line: 716, column: 33, scope: !3376)
!3379 = !DILocation(line: 716, column: 42, scope: !3376)
!3380 = !DILocation(line: 716, column: 36, scope: !3376)
!3381 = !DILocation(line: 716, column: 62, scope: !3376)
!3382 = !DILocation(line: 716, column: 72, scope: !3376)
!3383 = !DILocation(line: 716, column: 66, scope: !3376)
!3384 = !DILocation(line: 716, column: 7, scope: !3108)
!3385 = !DILocation(line: 718, column: 8, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 717, column: 5)
!3387 = !DILocation(line: 721, column: 14, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 721, column: 7)
!3389 = !DILocation(line: 720, column: 5, scope: !3386)
!3390 = !DILocation(line: 721, column: 8, scope: !3388)
!3391 = !DILocation(line: 721, column: 33, scope: !3388)
!3392 = !DILocation(line: 721, column: 42, scope: !3388)
!3393 = !DILocation(line: 721, column: 36, scope: !3388)
!3394 = !DILocation(line: 721, column: 51, scope: !3388)
!3395 = !DILocation(line: 721, column: 70, scope: !3388)
!3396 = !DILocation(line: 721, column: 77, scope: !3388)
!3397 = !DILocation(line: 721, column: 7, scope: !3108)
!3398 = !DILocation(line: 723, column: 7, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 722, column: 5)
!3400 = !DILocation(line: 726, column: 13, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 726, column: 7)
!3402 = !DILocation(line: 725, column: 5, scope: !3399)
!3403 = !DILocation(line: 726, column: 7, scope: !3401)
!3404 = !DILocation(line: 726, column: 32, scope: !3401)
!3405 = !DILocation(line: 726, column: 61, scope: !3401)
!3406 = !DILocation(line: 726, column: 80, scope: !3401)
!3407 = !DILocation(line: 726, column: 7, scope: !3108)
!3408 = !DILocation(line: 728, column: 7, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 727, column: 5)
!3410 = !DILocation(line: 730, column: 5, scope: !3409)
!3411 = !DILocation(line: 732, column: 13, scope: !3133)
!3412 = !DILocation(line: 732, column: 7, scope: !3133)
!3413 = !DILocation(line: 732, column: 22, scope: !3133)
!3414 = !DILocation(line: 732, column: 50, scope: !3133)
!3415 = !DILocation(line: 732, column: 25, scope: !3133)
!3416 = !DILocation(line: 733, column: 7, scope: !3133)
!3417 = !DILocation(line: 733, column: 11, scope: !3133)
!3418 = !DILocation(line: 734, column: 7, scope: !3133)
!3419 = !DILocation(line: 734, column: 12, scope: !3133)
!3420 = !DILocation(line: 734, column: 39, scope: !3133)
!3421 = !DILocation(line: 734, column: 55, scope: !3133)
!3422 = !DILocation(line: 734, column: 42, scope: !3133)
!3423 = !DILocation(line: 735, column: 7, scope: !3133)
!3424 = !DILocation(line: 735, column: 11, scope: !3133)
!3425 = !DILocation(line: 732, column: 7, scope: !3108)
!3426 = !DILocation(line: 737, column: 22, scope: !3131)
!3427 = !DILocation(line: 737, column: 11, scope: !3131)
!3428 = !DILocation(line: 737, column: 11, scope: !3132)
!3429 = !DILocation(line: 741, column: 42, scope: !3130)
!3430 = !DILocation(line: 0, scope: !3130)
!3431 = !DILocation(line: 744, column: 4, scope: !3141)
!3432 = !DILocation(line: 0, scope: !3139)
!3433 = !DILocation(line: 744, column: 4, scope: !3140)
!3434 = !DILocation(line: 729, column: 19, scope: !3409)
!3435 = !DILocation(line: 0, scope: !3141)
!3436 = !DILocation(line: 745, column: 17, scope: !3139)
!3437 = !DILocation(line: 745, column: 11, scope: !3139)
!3438 = !DILocation(line: 746, column: 19, scope: !3138)
!3439 = !DILocation(line: 746, column: 18, scope: !3138)
!3440 = !DILocation(line: 745, column: 6, scope: !3139)
!3441 = !DILocation(line: 749, column: 17, scope: !3137)
!3442 = !DILocation(line: 0, scope: !3137)
!3443 = !DILocation(line: 751, column: 7, scope: !3145)
!3444 = !DILocation(line: 751, column: 29, scope: !3145)
!3445 = !DILocation(line: 751, column: 40, scope: !3145)
!3446 = !DILocation(line: 751, column: 38, scope: !3145)
!3447 = !DILocation(line: 751, column: 7, scope: !3137)
!3448 = !DILocation(line: 753, column: 31, scope: !3144)
!3449 = !DILocation(line: 0, scope: !3144)
!3450 = !DILocation(line: 754, column: 11, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 754, column: 11)
!3452 = !DILocation(line: 754, column: 11, scope: !3144)
!3453 = !DILocation(line: 756, column: 11, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 756, column: 8)
!3455 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 755, column: 9)
!3456 = !DILocation(line: 756, column: 8, scope: !3454)
!3457 = !DILocation(line: 756, column: 8, scope: !3455)
!3458 = !DILocation(line: 758, column: 8, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 757, column: 6)
!3460 = !DILocation(line: 759, column: 8, scope: !3459)
!3461 = !DILocation(line: 761, column: 6, scope: !3459)
!3462 = !DILocation(line: 762, column: 11, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 762, column: 8)
!3464 = !DILocation(line: 762, column: 19, scope: !3463)
!3465 = !DILocation(line: 762, column: 8, scope: !3463)
!3466 = !DILocation(line: 762, column: 8, scope: !3455)
!3467 = !DILocation(line: 764, column: 8, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 763, column: 6)
!3469 = !DILocation(line: 765, column: 23, scope: !3468)
!3470 = !DILocation(line: 765, column: 31, scope: !3468)
!3471 = !DILocation(line: 765, column: 8, scope: !3468)
!3472 = !DILocation(line: 767, column: 6, scope: !3468)
!3473 = !DILocation(line: 768, column: 27, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 768, column: 13)
!3475 = !DILocation(line: 768, column: 14, scope: !3474)
!3476 = !DILocation(line: 769, column: 6, scope: !3474)
!3477 = !DILocation(line: 769, column: 28, scope: !3474)
!3478 = !DILocation(line: 769, column: 10, scope: !3474)
!3479 = !DILocation(line: 770, column: 6, scope: !3474)
!3480 = !DILocation(line: 770, column: 22, scope: !3474)
!3481 = !DILocation(line: 770, column: 45, scope: !3474)
!3482 = !DILocation(line: 770, column: 10, scope: !3474)
!3483 = !DILocation(line: 768, column: 13, scope: !3463)
!3484 = !DILocation(line: 772, column: 8, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 771, column: 6)
!3486 = !DILocation(line: 773, column: 23, scope: !3485)
!3487 = !DILocation(line: 773, column: 31, scope: !3485)
!3488 = !DILocation(line: 773, column: 8, scope: !3485)
!3489 = !DILocation(line: 774, column: 17, scope: !3485)
!3490 = !DILocation(line: 774, column: 8, scope: !3485)
!3491 = !DILocation(line: 775, column: 8, scope: !3485)
!3492 = !DILocation(line: 777, column: 6, scope: !3485)
!3493 = !DILocation(line: 0, scope: !3455)
!3494 = !DILocation(line: 778, column: 11, scope: !3455)
!3495 = !DILocation(line: 779, column: 9, scope: !3455)
!3496 = !DILocation(line: 782, column: 4, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 781, column: 9)
!3498 = !DILocation(line: 783, column: 4, scope: !3497)
!3499 = !DILocation(line: 747, column: 18, scope: !3138)
!3500 = !DILocation(line: 745, column: 6, scope: !3138)
!3501 = distinct !{!3501, !3440, !3502}
!3502 = !DILocation(line: 787, column: 8, scope: !3139)
!3503 = distinct !{!3503, !3431, !3504}
!3504 = !DILocation(line: 787, column: 8, scope: !3141)
!3505 = !DILocation(line: 788, column: 4, scope: !3130)
!3506 = !DILocation(line: 789, column: 2, scope: !3130)
!3507 = !DILocation(line: 792, column: 2, scope: !3131)
!3508 = !DILocation(line: 794, column: 12, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 794, column: 7)
!3510 = !DILocation(line: 0, scope: !3509)
!3511 = !DILocation(line: 794, column: 7, scope: !3509)
!3512 = !DILocation(line: 796, column: 12, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 796, column: 8)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 795, column: 2)
!3515 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 794, column: 7)
!3516 = !DILocation(line: 796, column: 9, scope: !3513)
!3517 = !DILocation(line: 796, column: 16, scope: !3513)
!3518 = !DILocation(line: 796, column: 23, scope: !3513)
!3519 = !DILocation(line: 796, column: 20, scope: !3513)
!3520 = !DILocation(line: 796, column: 8, scope: !3514)
!3521 = !DILocation(line: 799, column: 51, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 797, column: 6)
!3523 = !DILocation(line: 799, column: 30, scope: !3522)
!3524 = !DILocation(line: 799, column: 8, scope: !3522)
!3525 = !DILocation(line: 800, column: 51, scope: !3522)
!3526 = !DILocation(line: 800, column: 30, scope: !3522)
!3527 = !DILocation(line: 800, column: 8, scope: !3522)
!3528 = !DILocation(line: 798, column: 8, scope: !3522)
!3529 = !DILocation(line: 801, column: 30, scope: !3522)
!3530 = !DILocation(line: 801, column: 8, scope: !3522)
!3531 = !DILocation(line: 803, column: 6, scope: !3522)
!3532 = !DILocation(line: 804, column: 11, scope: !3514)
!3533 = !DILocation(line: 794, column: 41, scope: !3515)
!3534 = !DILocation(line: 794, column: 7, scope: !3515)
!3535 = distinct !{!3535, !3511, !3536}
!3536 = !DILocation(line: 805, column: 2, scope: !3509)
!3537 = !DILocation(line: 807, column: 7, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 807, column: 7)
!3539 = !DILocation(line: 807, column: 7, scope: !3108)
!3540 = !DILocation(line: 809, column: 25, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 808, column: 5)
!3542 = !DILocation(line: 809, column: 7, scope: !3541)
!3543 = !DILocation(line: 810, column: 7, scope: !3541)
!3544 = !DILocation(line: 811, column: 5, scope: !3541)
!3545 = !DILocation(line: 812, column: 3, scope: !3108)
!3546 = !DILocation(line: 813, column: 3, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 813, column: 3)
!3548 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 813, column: 3)
!3549 = !DILocation(line: 813, column: 3, scope: !3548)
!3550 = !DILocation(line: 814, column: 1, scope: !3108)
!3551 = distinct !DISubprogram(name: "gimple_bb", scope: !584, file: !584, line: 1112, type: !3552, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3555)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!952, !3554}
!3554 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !665, line: 60, baseType: !1991)
!3555 = !{!3556}
!3556 = !DILocalVariable(name: "g", arg: 1, scope: !3551, file: !584, line: 1112, type: !3554)
!3557 = !DILocation(line: 0, scope: !3551)
!3558 = !DILocation(line: 1114, column: 20, scope: !3551)
!3559 = !DILocation(line: 1114, column: 3, scope: !3551)
!3560 = distinct !DISubprogram(name: "gsi_start_bb", scope: !584, file: !584, line: 4418, type: !3561, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!3116, !1422}
!3563 = !{!3564, !3565, !3566}
!3564 = !DILocalVariable(name: "bb", arg: 1, scope: !3560, file: !584, line: 4418, type: !1422)
!3565 = !DILocalVariable(name: "i", scope: !3560, file: !584, line: 4420, type: !3116)
!3566 = !DILocalVariable(name: "seq", scope: !3560, file: !584, line: 4421, type: !978)
!3567 = !DILocation(line: 0, scope: !3560)
!3568 = !DILocation(line: 4420, column: 24, scope: !3560)
!3569 = !DILocation(line: 4423, column: 9, scope: !3560)
!3570 = !DILocation(line: 4424, column: 11, scope: !3560)
!3571 = !DILocation(line: 4424, column: 5, scope: !3560)
!3572 = !DILocation(line: 4424, column: 9, scope: !3560)
!3573 = !DILocation(line: 4425, column: 5, scope: !3560)
!3574 = !DILocation(line: 4425, column: 9, scope: !3560)
!3575 = !DILocation(line: 4426, column: 5, scope: !3560)
!3576 = !DILocation(line: 4426, column: 8, scope: !3560)
!3577 = !DILocation(line: 4429, column: 1, scope: !3560)
!3578 = distinct !DISubprogram(name: "gsi_end_p", scope: !584, file: !584, line: 4467, type: !3579, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!656, !3116}
!3581 = !{!3582}
!3582 = !DILocalVariable(name: "i", arg: 1, scope: !3578, file: !584, line: 4467, type: !3116)
!3583 = !DILocation(line: 4467, column: 33, scope: !3578)
!3584 = !DILocation(line: 4469, column: 12, scope: !3578)
!3585 = !DILocation(line: 4469, column: 16, scope: !3578)
!3586 = !DILocation(line: 4469, column: 10, scope: !3578)
!3587 = !DILocation(line: 4469, column: 3, scope: !3578)
!3588 = distinct !DISubprogram(name: "gsi_stmt", scope: !584, file: !584, line: 4501, type: !3589, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!988, !3116}
!3591 = !{!3592}
!3592 = !DILocalVariable(name: "i", arg: 1, scope: !3588, file: !584, line: 4501, type: !3116)
!3593 = !DILocation(line: 4501, column: 32, scope: !3588)
!3594 = !DILocation(line: 4503, column: 12, scope: !3588)
!3595 = !DILocation(line: 4503, column: 17, scope: !3588)
!3596 = !DILocation(line: 4503, column: 3, scope: !3588)
!3597 = distinct !DISubprogram(name: "is_gimple_call", scope: !584, file: !584, line: 1870, type: !3598, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3600)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!656, !3554}
!3600 = !{!3601}
!3601 = !DILocalVariable(name: "gs", arg: 1, scope: !3597, file: !584, line: 1870, type: !3554)
!3602 = !DILocation(line: 0, scope: !3597)
!3603 = !DILocation(line: 1872, column: 10, scope: !3597)
!3604 = !DILocation(line: 1872, column: 27, scope: !3597)
!3605 = !DILocation(line: 1872, column: 3, scope: !3597)
!3606 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !584, file: !584, line: 1954, type: !3607, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!664, !3554}
!3609 = !{!3610, !3611}
!3610 = !DILocalVariable(name: "gs", arg: 1, scope: !3606, file: !584, line: 1954, type: !3554)
!3611 = !DILocalVariable(name: "addr", scope: !3606, file: !584, line: 1956, type: !664)
!3612 = !DILocation(line: 0, scope: !3606)
!3613 = !DILocation(line: 1956, column: 15, scope: !3606)
!3614 = !DILocation(line: 1957, column: 7, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3606, file: !584, line: 1957, column: 7)
!3616 = !DILocation(line: 1957, column: 24, scope: !3615)
!3617 = !DILocation(line: 1957, column: 7, scope: !3606)
!3618 = !DILocation(line: 1958, column: 12, scope: !3615)
!3619 = !DILocation(line: 1958, column: 5, scope: !3615)
!3620 = !DILocation(line: 1960, column: 1, scope: !3606)
!3621 = distinct !DISubprogram(name: "clone_of_p", scope: !3, file: !3, line: 572, type: !3622, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!656, !2053, !2053}
!3624 = !{!3625, !3626}
!3625 = !DILocalVariable(name: "node", arg: 1, scope: !3621, file: !3, line: 572, type: !2053)
!3626 = !DILocalVariable(name: "node2", arg: 2, scope: !3621, file: !3, line: 572, type: !2053)
!3627 = !DILocation(line: 0, scope: !3621)
!3628 = !DILocation(line: 574, column: 3, scope: !3621)
!3629 = !DILocation(line: 574, column: 15, scope: !3621)
!3630 = !DILocation(line: 574, column: 24, scope: !3621)
!3631 = !DILocation(line: 575, column: 20, scope: !3621)
!3632 = distinct !{!3632, !3628, !3631}
!3633 = !DILocation(line: 576, column: 10, scope: !3621)
!3634 = !DILocation(line: 576, column: 3, scope: !3621)
!3635 = distinct !DISubprogram(name: "gsi_next", scope: !584, file: !584, line: 4485, type: !3636, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3639)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{null, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3639 = !{!3640}
!3640 = !DILocalVariable(name: "i", arg: 1, scope: !3635, file: !584, line: 4485, type: !3638)
!3641 = !DILocation(line: 0, scope: !3635)
!3642 = !DILocation(line: 4487, column: 15, scope: !3635)
!3643 = !DILocation(line: 4487, column: 20, scope: !3635)
!3644 = !DILocation(line: 4487, column: 10, scope: !3635)
!3645 = !DILocation(line: 4488, column: 1, scope: !3635)
!3646 = distinct !DISubprogram(name: "verify_cgraph", scope: !3, file: !3, line: 818, type: !2029, scopeLine: 819, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3647)
!3647 = !{!3648}
!3648 = !DILocalVariable(name: "node", scope: !3646, file: !3, line: 820, type: !2053)
!3649 = !DILocation(line: 822, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 822, column: 7)
!3651 = !DILocation(line: 822, column: 18, scope: !3650)
!3652 = !DILocation(line: 822, column: 21, scope: !3650)
!3653 = !DILocation(line: 822, column: 7, scope: !3646)
!3654 = !DILocation(line: 825, column: 8, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 825, column: 3)
!3656 = !DILocation(line: 0, scope: !3655)
!3657 = !DILocation(line: 0, scope: !3646)
!3658 = !DILocation(line: 825, column: 3, scope: !3655)
!3659 = !DILocation(line: 826, column: 5, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 825, column: 3)
!3661 = !DILocation(line: 825, column: 48, scope: !3660)
!3662 = !DILocation(line: 825, column: 3, scope: !3660)
!3663 = distinct !{!3663, !3658, !3664}
!3664 = !DILocation(line: 826, column: 29, scope: !3655)
!3665 = !DILocation(line: 827, column: 1, scope: !3646)
!3666 = distinct !DISubprogram(name: "cgraph_finalize_compilation_unit", scope: !3, file: !3, line: 1076, type: !2029, scopeLine: 1077, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!3667 = !DILocation(line: 1078, column: 3, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 1078, column: 3)
!3669 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 1078, column: 3)
!3670 = !DILocation(line: 1078, column: 3, scope: !3669)
!3671 = !DILocation(line: 1084, column: 3, scope: !3666)
!3672 = !DILocation(line: 1088, column: 3, scope: !3666)
!3673 = !DILocation(line: 1091, column: 3, scope: !3666)
!3674 = !DILocation(line: 1093, column: 8, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 1093, column: 7)
!3676 = !DILocation(line: 1093, column: 7, scope: !3666)
!3677 = !DILocation(line: 1095, column: 16, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 1094, column: 5)
!3679 = !DILocation(line: 1095, column: 7, scope: !3678)
!3680 = !DILocation(line: 1096, column: 15, scope: !3678)
!3681 = !DILocation(line: 1096, column: 7, scope: !3678)
!3682 = !DILocation(line: 1097, column: 5, scope: !3678)
!3683 = !DILocation(line: 1101, column: 3, scope: !3666)
!3684 = !DILocation(line: 1104, column: 3, scope: !3666)
!3685 = !DILocation(line: 1107, column: 3, scope: !3666)
!3686 = !DILocation(line: 1110, column: 3, scope: !3666)
!3687 = !DILocation(line: 1112, column: 3, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 1112, column: 3)
!3689 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 1112, column: 3)
!3690 = !DILocation(line: 1112, column: 3, scope: !3689)
!3691 = !DILocation(line: 1113, column: 1, scope: !3666)
!3692 = distinct !DISubprogram(name: "cgraph_build_cdtor_fns", scope: !3, file: !3, line: 287, type: !2029, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!3693 = !DILocation(line: 289, column: 8, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 289, column: 7)
!3695 = !DILocation(line: 289, column: 7, scope: !3692)
!3696 = !DILocation(line: 291, column: 7, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 290, column: 5)
!3698 = !DILocation(line: 293, column: 19, scope: !3697)
!3699 = !DILocation(line: 294, column: 19, scope: !3697)
!3700 = !DILocation(line: 293, column: 7, scope: !3697)
!3701 = !DILocation(line: 304, column: 6, scope: !3697)
!3702 = !DILocation(line: 305, column: 6, scope: !3697)
!3703 = !DILocation(line: 303, column: 7, scope: !3697)
!3704 = !DILocation(line: 306, column: 7, scope: !3697)
!3705 = !DILocation(line: 307, column: 5, scope: !3697)
!3706 = !DILocation(line: 309, column: 8, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 309, column: 7)
!3708 = !DILocation(line: 309, column: 7, scope: !3692)
!3709 = !DILocation(line: 311, column: 7, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 310, column: 5)
!3711 = !DILocation(line: 313, column: 19, scope: !3710)
!3712 = !DILocation(line: 314, column: 19, scope: !3710)
!3713 = !DILocation(line: 313, column: 7, scope: !3710)
!3714 = !DILocation(line: 324, column: 6, scope: !3710)
!3715 = !DILocation(line: 325, column: 6, scope: !3710)
!3716 = !DILocation(line: 323, column: 7, scope: !3710)
!3717 = !DILocation(line: 326, column: 7, scope: !3710)
!3718 = !DILocation(line: 327, column: 5, scope: !3710)
!3719 = !DILocation(line: 328, column: 1, scope: !3692)
!3720 = !DILocation(line: 954, column: 41, scope: !2286)
!3721 = !DILocation(line: 0, scope: !2286)
!3722 = !DILocation(line: 959, column: 10, scope: !2286)
!3723 = !DILocation(line: 958, column: 3, scope: !2286)
!3724 = !DILocation(line: 960, column: 21, scope: !2286)
!3725 = !DILocation(line: 961, column: 24, scope: !2286)
!3726 = !DILocation(line: 961, column: 22, scope: !2286)
!3727 = !DILocation(line: 962, column: 3, scope: !2286)
!3728 = !DILocation(line: 963, column: 7, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 963, column: 7)
!3730 = !DILocation(line: 963, column: 7, scope: !2286)
!3731 = !DILocation(line: 965, column: 7, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 964, column: 5)
!3733 = !DILocation(line: 966, column: 12, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 966, column: 7)
!3735 = !DILocation(line: 0, scope: !3734)
!3736 = !DILocation(line: 966, column: 41, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 966, column: 7)
!3738 = !DILocation(line: 966, column: 38, scope: !3737)
!3739 = !DILocation(line: 966, column: 7, scope: !3734)
!3740 = !DILocation(line: 967, column: 12, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 967, column: 6)
!3742 = !DILocation(line: 967, column: 6, scope: !3741)
!3743 = !DILocation(line: 967, column: 6, scope: !3737)
!3744 = !DILocation(line: 968, column: 13, scope: !3741)
!3745 = !DILocation(line: 968, column: 38, scope: !3741)
!3746 = !DILocation(line: 968, column: 4, scope: !3741)
!3747 = !DILocation(line: 966, column: 70, scope: !3737)
!3748 = !DILocation(line: 966, column: 7, scope: !3737)
!3749 = distinct !{!3749, !3739, !3750}
!3750 = !DILocation(line: 968, column: 61, scope: !3734)
!3751 = !DILocation(line: 969, column: 16, scope: !3732)
!3752 = !DILocation(line: 969, column: 7, scope: !3732)
!3753 = !DILocation(line: 970, column: 5, scope: !3732)
!3754 = !DILocation(line: 971, column: 3, scope: !2286)
!3755 = !DILocation(line: 977, column: 3, scope: !2286)
!3756 = !DILocation(line: 977, column: 10, scope: !2286)
!3757 = !DILocation(line: 980, column: 39, scope: !2292)
!3758 = !DILocation(line: 0, scope: !2292)
!3759 = !DILocation(line: 983, column: 48, scope: !2292)
!3760 = !DILocation(line: 983, column: 26, scope: !2292)
!3761 = !DILocation(line: 984, column: 25, scope: !2292)
!3762 = !DILocation(line: 989, column: 12, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 989, column: 11)
!3764 = !DILocation(line: 989, column: 11, scope: !2292)
!3765 = !DILocation(line: 991, column: 4, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 990, column: 2)
!3767 = !DILocation(line: 992, column: 4, scope: !3766)
!3768 = distinct !{!3768, !3755, !3769}
!3769 = !DILocation(line: 1027, column: 5, scope: !2286)
!3770 = !DILocation(line: 995, column: 18, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 995, column: 11)
!3772 = !DILocation(line: 995, column: 12, scope: !3771)
!3773 = !DILocation(line: 995, column: 11, scope: !2292)
!3774 = !DILocation(line: 996, column: 2, scope: !3771)
!3775 = !DILocation(line: 998, column: 25, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 998, column: 7)
!3777 = !DILocation(line: 998, column: 12, scope: !3776)
!3778 = !DILocation(line: 0, scope: !3776)
!3779 = !DILocation(line: 998, column: 7, scope: !3776)
!3780 = !DILocation(line: 999, column: 13, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 999, column: 6)
!3782 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 998, column: 7)
!3783 = !DILocation(line: 999, column: 21, scope: !3781)
!3784 = !DILocation(line: 999, column: 7, scope: !3781)
!3785 = !DILocation(line: 999, column: 6, scope: !3782)
!3786 = !DILocation(line: 1000, column: 4, scope: !3781)
!3787 = !DILocation(line: 998, column: 53, scope: !3782)
!3788 = !DILocation(line: 998, column: 7, scope: !3782)
!3789 = distinct !{!3789, !3779, !3790}
!3790 = !DILocation(line: 1000, column: 44, scope: !3776)
!3791 = !DILocation(line: 1002, column: 17, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1002, column: 11)
!3793 = !DILocation(line: 1002, column: 11, scope: !3792)
!3794 = !DILocation(line: 1002, column: 11, scope: !2292)
!3795 = !DILocation(line: 1004, column: 9, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 1004, column: 4)
!3797 = distinct !DILexicalBlock(scope: !3792, file: !3, line: 1003, column: 2)
!3798 = !DILocation(line: 0, scope: !3796)
!3799 = !DILocation(line: 1005, column: 14, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 1004, column: 4)
!3801 = !DILocation(line: 1004, column: 4, scope: !3796)
!3802 = !DILocation(line: 1007, column: 6, scope: !3800)
!3803 = !DILocation(line: 1004, column: 4, scope: !3800)
!3804 = distinct !{!3804, !3801, !3805}
!3805 = !DILocation(line: 1007, column: 38, scope: !3796)
!3806 = !DILocation(line: 1013, column: 11, scope: !2296)
!3807 = !DILocation(line: 1013, column: 11, scope: !2292)
!3808 = !DILocation(line: 1015, column: 38, scope: !2295)
!3809 = !DILocation(line: 0, scope: !2295)
!3810 = !DILocation(line: 1016, column: 17, scope: !2295)
!3811 = !DILocation(line: 1016, column: 37, scope: !2295)
!3812 = !DILocation(line: 1017, column: 2, scope: !2295)
!3813 = !DILocation(line: 1022, column: 7, scope: !2292)
!3814 = !DILocation(line: 1021, column: 7, scope: !2292)
!3815 = !DILocation(line: 1023, column: 25, scope: !2292)
!3816 = !DILocation(line: 1024, column: 28, scope: !2292)
!3817 = !DILocation(line: 1024, column: 26, scope: !2292)
!3818 = !DILocation(line: 1025, column: 7, scope: !2292)
!3819 = !DILocation(line: 1026, column: 7, scope: !2292)
!3820 = !DILocation(line: 1030, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 1030, column: 7)
!3822 = !DILocation(line: 1030, column: 7, scope: !2286)
!3823 = !DILocation(line: 1032, column: 7, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 1031, column: 5)
!3825 = !DILocation(line: 1033, column: 12, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 1033, column: 7)
!3827 = !DILocation(line: 0, scope: !3826)
!3828 = !DILocation(line: 1033, column: 41, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 1033, column: 7)
!3830 = !DILocation(line: 1033, column: 38, scope: !3829)
!3831 = !DILocation(line: 1033, column: 7, scope: !3826)
!3832 = !DILocation(line: 1034, column: 12, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 1034, column: 6)
!3834 = !DILocation(line: 1034, column: 6, scope: !3833)
!3835 = !DILocation(line: 1034, column: 6, scope: !3829)
!3836 = !DILocation(line: 1035, column: 13, scope: !3833)
!3837 = !DILocation(line: 1035, column: 38, scope: !3833)
!3838 = !DILocation(line: 1035, column: 4, scope: !3833)
!3839 = !DILocation(line: 1033, column: 70, scope: !3829)
!3840 = !DILocation(line: 1033, column: 7, scope: !3829)
!3841 = distinct !{!3841, !3831, !3842}
!3842 = !DILocation(line: 1035, column: 61, scope: !3826)
!3843 = !DILocation(line: 1036, column: 16, scope: !3824)
!3844 = !DILocation(line: 1036, column: 7, scope: !3824)
!3845 = !DILocation(line: 1037, column: 20, scope: !3824)
!3846 = !DILocation(line: 1037, column: 7, scope: !3824)
!3847 = !DILocation(line: 1040, column: 7, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 1040, column: 7)
!3849 = !DILocation(line: 1038, column: 5, scope: !3824)
!3850 = !DILocation(line: 1040, column: 7, scope: !2286)
!3851 = !DILocation(line: 1041, column: 5, scope: !3848)
!3852 = !DILocation(line: 1043, column: 15, scope: !2300)
!3853 = !DILocation(line: 1043, column: 8, scope: !2300)
!3854 = !DILocation(line: 0, scope: !2300)
!3855 = !DILocation(line: 1043, column: 37, scope: !2299)
!3856 = !DILocation(line: 1043, column: 34, scope: !2299)
!3857 = !DILocation(line: 1043, column: 3, scope: !2300)
!3858 = !DILocation(line: 1045, column: 25, scope: !2298)
!3859 = !DILocation(line: 0, scope: !2298)
!3860 = !DILocation(line: 1046, column: 20, scope: !2298)
!3861 = !DILocation(line: 1048, column: 23, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 1048, column: 11)
!3863 = !DILocation(line: 1048, column: 11, scope: !3862)
!3864 = !DILocation(line: 1048, column: 33, scope: !3862)
!3865 = !DILocation(line: 1048, column: 37, scope: !3862)
!3866 = !DILocation(line: 1048, column: 11, scope: !2298)
!3867 = !DILocation(line: 1049, column: 2, scope: !3862)
!3868 = !DILocation(line: 1051, column: 18, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 1051, column: 11)
!3870 = !DILocation(line: 1051, column: 12, scope: !3869)
!3871 = !DILocation(line: 1051, column: 28, scope: !3869)
!3872 = !DILocation(line: 1051, column: 31, scope: !3869)
!3873 = !DILocation(line: 1051, column: 11, scope: !2298)
!3874 = !DILocation(line: 1053, column: 8, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 1053, column: 8)
!3876 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 1052, column: 2)
!3877 = !DILocation(line: 1053, column: 8, scope: !3876)
!3878 = !DILocation(line: 1054, column: 40, scope: !3875)
!3879 = !DILocation(line: 1054, column: 6, scope: !3875)
!3880 = !DILocation(line: 1055, column: 4, scope: !3876)
!3881 = !DILocation(line: 1056, column: 4, scope: !3876)
!3882 = !DILocation(line: 1059, column: 8, scope: !3869)
!3883 = !DILocation(line: 1059, column: 20, scope: !3869)
!3884 = !DILocation(line: 1060, column: 7, scope: !2298)
!3885 = !DILocation(line: 1061, column: 7, scope: !2298)
!3886 = !DILocation(line: 1043, column: 3, scope: !2299)
!3887 = distinct !{!3887, !3857, !3888}
!3888 = !DILocation(line: 1062, column: 5, scope: !2300)
!3889 = !DILocation(line: 1063, column: 7, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 1063, column: 7)
!3891 = !DILocation(line: 1063, column: 7, scope: !2286)
!3892 = !DILocation(line: 1065, column: 7, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 1064, column: 5)
!3894 = !DILocation(line: 1066, column: 20, scope: !3893)
!3895 = !DILocation(line: 1066, column: 7, scope: !3893)
!3896 = !DILocation(line: 1067, column: 5, scope: !3893)
!3897 = !DILocation(line: 1068, column: 20, scope: !2286)
!3898 = !DILocation(line: 1068, column: 18, scope: !2286)
!3899 = !DILocation(line: 1069, column: 3, scope: !2286)
!3900 = !DILocation(line: 1070, column: 1, scope: !2286)
!3901 = distinct !DISubprogram(name: "cgraph_optimize", scope: !3, file: !3, line: 1820, type: !2029, scopeLine: 1821, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!3902 = !DILocation(line: 1822, column: 7, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1822, column: 7)
!3904 = !DILocation(line: 1822, column: 18, scope: !3903)
!3905 = !DILocation(line: 1822, column: 21, scope: !3903)
!3906 = !DILocation(line: 1822, column: 7, scope: !3901)
!3907 = !DILocation(line: 1831, column: 3, scope: !3901)
!3908 = !DILocation(line: 1833, column: 3, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !3, line: 1833, column: 3)
!3910 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1833, column: 3)
!3911 = !DILocation(line: 1833, column: 3, scope: !3910)
!3912 = !DILocation(line: 1834, column: 7, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1834, column: 7)
!3914 = !DILocation(line: 1834, column: 7, scope: !3901)
!3915 = !DILocation(line: 1836, column: 16, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 1835, column: 5)
!3917 = !DILocation(line: 1836, column: 7, scope: !3916)
!3918 = !DILocation(line: 1837, column: 7, scope: !3916)
!3919 = !DILocation(line: 1838, column: 5, scope: !3916)
!3920 = !DILocation(line: 1839, column: 8, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1839, column: 7)
!3922 = !DILocation(line: 1839, column: 7, scope: !3901)
!3923 = !DILocation(line: 1840, column: 14, scope: !3921)
!3924 = !DILocation(line: 1840, column: 5, scope: !3921)
!3925 = !DILocation(line: 1841, column: 16, scope: !3901)
!3926 = !DILocation(line: 1844, column: 7, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1844, column: 7)
!3928 = !DILocation(line: 1844, column: 18, scope: !3927)
!3929 = !DILocation(line: 1844, column: 23, scope: !3927)
!3930 = !DILocation(line: 1844, column: 26, scope: !3927)
!3931 = !DILocation(line: 1844, column: 37, scope: !3927)
!3932 = !DILocation(line: 1844, column: 7, scope: !3901)
!3933 = !DILocation(line: 1845, column: 5, scope: !3927)
!3934 = !DILocation(line: 1848, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1848, column: 7)
!3936 = !DILocation(line: 0, scope: !3935)
!3937 = !DILocation(line: 1848, column: 18, scope: !3935)
!3938 = !DILocation(line: 1848, column: 21, scope: !3935)
!3939 = !DILocation(line: 1848, column: 7, scope: !3901)
!3940 = !DILocation(line: 1850, column: 7, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 1850, column: 7)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 1850, column: 7)
!3943 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 1849, column: 5)
!3944 = !DILocation(line: 1850, column: 7, scope: !3942)
!3945 = !DILocation(line: 1856, column: 43, scope: !3901)
!3946 = !DILocation(line: 1856, column: 3, scope: !3901)
!3947 = !DILocation(line: 1857, column: 28, scope: !3901)
!3948 = !DILocation(line: 1858, column: 7, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1858, column: 7)
!3950 = !DILocation(line: 1858, column: 7, scope: !3901)
!3951 = !DILocation(line: 1860, column: 7, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 1859, column: 5)
!3953 = !DILocation(line: 1861, column: 20, scope: !3952)
!3954 = !DILocation(line: 1861, column: 7, scope: !3952)
!3955 = !DILocation(line: 1862, column: 21, scope: !3952)
!3956 = !DILocation(line: 1862, column: 7, scope: !3952)
!3957 = !DILocation(line: 1863, column: 5, scope: !3952)
!3958 = !DILocation(line: 1864, column: 7, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1864, column: 7)
!3960 = !DILocation(line: 1864, column: 7, scope: !3901)
!3961 = !DILocation(line: 1866, column: 16, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1865, column: 5)
!3963 = !DILocation(line: 1866, column: 7, scope: !3962)
!3964 = !DILocation(line: 1867, column: 7, scope: !3962)
!3965 = !DILocation(line: 1868, column: 5, scope: !3962)
!3966 = !DILocation(line: 1869, column: 3, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 1869, column: 3)
!3968 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1869, column: 3)
!3969 = !DILocation(line: 1869, column: 3, scope: !3968)
!3970 = !DILocation(line: 1872, column: 5, scope: !3901)
!3971 = !DILocation(line: 1872, column: 18, scope: !3901)
!3972 = !DILocation(line: 1872, column: 3, scope: !3901)
!3973 = !DILocation(line: 1873, column: 8, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1873, column: 7)
!3975 = !DILocation(line: 1873, column: 7, scope: !3901)
!3976 = !DILocation(line: 1874, column: 14, scope: !3974)
!3977 = !DILocation(line: 1874, column: 5, scope: !3974)
!3978 = !DILocation(line: 1879, column: 3, scope: !3901)
!3979 = !DILocation(line: 1880, column: 3, scope: !3901)
!3980 = !DILocation(line: 1882, column: 16, scope: !3901)
!3981 = !DILocation(line: 1883, column: 8, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1883, column: 7)
!3983 = !DILocation(line: 1883, column: 7, scope: !3901)
!3984 = !DILocation(line: 1884, column: 5, scope: !3982)
!3985 = !DILocation(line: 1887, column: 7, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 1886, column: 5)
!3987 = !DILocation(line: 1889, column: 7, scope: !3986)
!3988 = !DILocation(line: 1890, column: 7, scope: !3986)
!3989 = !DILocation(line: 1892, column: 7, scope: !3986)
!3990 = !DILocation(line: 1894, column: 3, scope: !3901)
!3991 = !DILocation(line: 1895, column: 16, scope: !3901)
!3992 = !DILocation(line: 1897, column: 7, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 1897, column: 7)
!3994 = !DILocation(line: 1897, column: 7, scope: !3901)
!3995 = !DILocation(line: 1899, column: 7, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 1898, column: 5)
!3997 = !DILocation(line: 1900, column: 20, scope: !3996)
!3998 = !DILocation(line: 1900, column: 7, scope: !3996)
!3999 = !DILocation(line: 1901, column: 5, scope: !3996)
!4000 = !DILocation(line: 1923, column: 1, scope: !3901)
!4001 = distinct !DISubprogram(name: "cgraph_inline_p", scope: !3, file: !3, line: 1599, type: !4002, scopeLine: 1600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4005)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!656, !2058, !4004}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!4005 = !{!4006, !4007}
!4006 = !DILocalVariable(name: "e", arg: 1, scope: !4001, file: !3, line: 1599, type: !2058)
!4007 = !DILocalVariable(name: "reason", arg: 2, scope: !4001, file: !3, line: 1599, type: !4004)
!4008 = !DILocation(line: 0, scope: !4001)
!4009 = !DILocation(line: 1601, column: 16, scope: !4001)
!4010 = !DILocation(line: 1601, column: 11, scope: !4001)
!4011 = !DILocation(line: 1602, column: 14, scope: !4001)
!4012 = !DILocation(line: 1602, column: 10, scope: !4001)
!4013 = !DILocation(line: 1602, column: 3, scope: !4001)
!4014 = distinct !DISubprogram(name: "cgraph_preserve_function_body_p", scope: !3, file: !3, line: 1761, type: !4015, scopeLine: 1762, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4017)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!656, !664}
!4017 = !{!4018, !4019}
!4018 = !DILocalVariable(name: "decl", arg: 1, scope: !4014, file: !3, line: 1761, type: !664)
!4019 = !DILocalVariable(name: "node", scope: !4014, file: !3, line: 1763, type: !2053)
!4020 = !DILocation(line: 0, scope: !4014)
!4021 = !DILocation(line: 1765, column: 3, scope: !4014)
!4022 = !DILocation(line: 1767, column: 10, scope: !4014)
!4023 = !DILocation(line: 1768, column: 13, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 1768, column: 7)
!4025 = !DILocation(line: 1768, column: 7, scope: !4024)
!4026 = !DILocation(line: 1771, column: 1, scope: !4014)
!4027 = distinct !DISubprogram(name: "ipa_passes", scope: !3, file: !3, line: 1774, type: !2029, scopeLine: 1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!4028 = !DILocation(line: 1776, column: 3, scope: !4027)
!4029 = !DILocation(line: 1777, column: 25, scope: !4027)
!4030 = !DILocation(line: 1778, column: 3, scope: !4027)
!4031 = !DILocation(line: 1779, column: 3, scope: !4027)
!4032 = !DILocation(line: 1781, column: 3, scope: !4027)
!4033 = !DILocation(line: 1783, column: 8, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 1783, column: 7)
!4035 = !DILocation(line: 1783, column: 7, scope: !4027)
!4036 = !DILocation(line: 1784, column: 28, scope: !4034)
!4037 = !DILocation(line: 1784, column: 5, scope: !4034)
!4038 = !DILocation(line: 1788, column: 7, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 1788, column: 7)
!4040 = !DILocation(line: 1788, column: 20, scope: !4039)
!4041 = !DILocation(line: 1788, column: 7, scope: !4027)
!4042 = !DILocation(line: 1789, column: 18, scope: !4039)
!4043 = !DILocation(line: 1789, column: 5, scope: !4039)
!4044 = !DILocation(line: 1791, column: 8, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 1791, column: 7)
!4046 = !DILocation(line: 1791, column: 7, scope: !4027)
!4047 = !DILocation(line: 1794, column: 7, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 1792, column: 5)
!4049 = !DILocation(line: 1797, column: 7, scope: !4048)
!4050 = !DILocation(line: 1798, column: 29, scope: !4048)
!4051 = !DILocation(line: 1799, column: 7, scope: !4048)
!4052 = !DILocation(line: 1802, column: 29, scope: !4048)
!4053 = !DILocation(line: 1801, column: 7, scope: !4048)
!4054 = !DILocation(line: 1803, column: 5, scope: !4048)
!4055 = !DILocation(line: 1804, column: 57, scope: !4027)
!4056 = !DILocation(line: 1804, column: 3, scope: !4027)
!4057 = !DILocation(line: 1806, column: 8, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 1806, column: 7)
!4059 = !DILocation(line: 1806, column: 7, scope: !4027)
!4060 = !DILocation(line: 1807, column: 5, scope: !4058)
!4061 = !DILocation(line: 1809, column: 8, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 1809, column: 7)
!4063 = !DILocation(line: 1809, column: 7, scope: !4027)
!4064 = !DILocation(line: 1810, column: 28, scope: !4062)
!4065 = !DILocation(line: 1810, column: 5, scope: !4062)
!4066 = !DILocation(line: 1811, column: 3, scope: !4027)
!4067 = !DILocation(line: 1813, column: 3, scope: !4027)
!4068 = !DILocation(line: 1814, column: 1, scope: !4027)
!4069 = distinct !DISubprogram(name: "cgraph_materialize_all_clones", scope: !3, file: !3, line: 2297, type: !2029, scopeLine: 2298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4070)
!4070 = !{!4071, !4072, !4073, !4086, !4090}
!4071 = !DILocalVariable(name: "node", scope: !4069, file: !3, line: 2299, type: !2053)
!4072 = !DILocalVariable(name: "stabilized", scope: !4069, file: !3, line: 2300, type: !656)
!4073 = !DILocalVariable(name: "i", scope: !4074, file: !3, line: 2328, type: !7)
!4074 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 2327, column: 11)
!4075 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 2326, column: 13)
!4076 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 2322, column: 7)
!4077 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 2321, column: 9)
!4078 = distinct !DILexicalBlock(scope: !4079, file: !3, line: 2320, column: 10)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 2319, column: 12)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 2318, column: 6)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 2316, column: 8)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 2315, column: 9)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 2314, column: 7)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 2314, column: 7)
!4085 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 2312, column: 5)
!4086 = !DILocalVariable(name: "replace_info", scope: !4087, file: !3, line: 2334, type: !2162)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 2333, column: 8)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 2330, column: 6)
!4089 = distinct !DILexicalBlock(scope: !4074, file: !3, line: 2330, column: 6)
!4090 = !DILocalVariable(name: "e", scope: !4091, file: !3, line: 2374, type: !2058)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 2373, column: 7)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 2371, column: 9)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 2370, column: 3)
!4094 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 2370, column: 3)
!4095 = !DILocation(line: 0, scope: !4069)
!4096 = !DILocation(line: 2302, column: 7, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 2302, column: 7)
!4098 = !DILocation(line: 2302, column: 7, scope: !4069)
!4099 = !DILocation(line: 2303, column: 5, scope: !4097)
!4100 = !DILocation(line: 2311, column: 3, scope: !4069)
!4101 = !DILocation(line: 2313, column: 18, scope: !4085)
!4102 = !DILocation(line: 2311, column: 10, scope: !4069)
!4103 = !DILocation(line: 2314, column: 7, scope: !4084)
!4104 = !DILocation(line: 2365, column: 3, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 2365, column: 3)
!4106 = !DILocation(line: 0, scope: !4084)
!4107 = distinct !{!4107, !4100, !4108}
!4108 = !DILocation(line: 2364, column: 5, scope: !4069)
!4109 = !DILocation(line: 2316, column: 14, scope: !4081)
!4110 = !DILocation(line: 2316, column: 8, scope: !4081)
!4111 = !DILocation(line: 2316, column: 23, scope: !4081)
!4112 = !DILocation(line: 2316, column: 32, scope: !4081)
!4113 = !DILocation(line: 2316, column: 56, scope: !4081)
!4114 = !DILocation(line: 2316, column: 37, scope: !4081)
!4115 = !DILocation(line: 2317, column: 8, scope: !4081)
!4116 = !DILocation(line: 2317, column: 12, scope: !4081)
!4117 = !DILocation(line: 2316, column: 8, scope: !4082)
!4118 = !DILocation(line: 2319, column: 37, scope: !4079)
!4119 = !DILocation(line: 2319, column: 47, scope: !4079)
!4120 = !DILocation(line: 2319, column: 12, scope: !4079)
!4121 = !DILocation(line: 2319, column: 12, scope: !4080)
!4122 = !DILocation(line: 2321, column: 9, scope: !4077)
!4123 = !DILocation(line: 2321, column: 9, scope: !4078)
!4124 = !DILocation(line: 2324, column: 35, scope: !4076)
!4125 = !DILocation(line: 2324, column: 11, scope: !4076)
!4126 = !DILocation(line: 2325, column: 11, scope: !4076)
!4127 = !DILocation(line: 2323, column: 9, scope: !4076)
!4128 = !DILocation(line: 2326, column: 25, scope: !4075)
!4129 = !DILocation(line: 2326, column: 13, scope: !4075)
!4130 = !DILocation(line: 2326, column: 13, scope: !4076)
!4131 = !DILocation(line: 2329, column: 22, scope: !4074)
!4132 = !DILocation(line: 2329, column: 13, scope: !4074)
!4133 = !DILocation(line: 0, scope: !4074)
!4134 = !DILocation(line: 2330, column: 11, scope: !4089)
!4135 = !DILocation(line: 0, scope: !4089)
!4136 = !DILocation(line: 2330, column: 22, scope: !4088)
!4137 = !DILocation(line: 2330, column: 20, scope: !4088)
!4138 = !DILocation(line: 2330, column: 6, scope: !4089)
!4139 = !DILocation(line: 2335, column: 25, scope: !4087)
!4140 = !DILocation(line: 0, scope: !4087)
!4141 = !DILocation(line: 2338, column: 30, scope: !4087)
!4142 = !DILocation(line: 2338, column: 62, scope: !4087)
!4143 = !DILocation(line: 2338, column: 10, scope: !4087)
!4144 = !DILocation(line: 2339, column: 19, scope: !4087)
!4145 = !DILocation(line: 2339, column: 10, scope: !4087)
!4146 = !DILocation(line: 2340, column: 30, scope: !4087)
!4147 = !DILocation(line: 2340, column: 62, scope: !4087)
!4148 = !DILocation(line: 2340, column: 10, scope: !4087)
!4149 = !DILocation(line: 2341, column: 19, scope: !4087)
!4150 = !DILocation(line: 2342, column: 32, scope: !4087)
!4151 = !DILocation(line: 2342, column: 18, scope: !4087)
!4152 = !DILocation(line: 2343, column: 26, scope: !4087)
!4153 = !DILocation(line: 2343, column: 12, scope: !4087)
!4154 = !DILocation(line: 2341, column: 10, scope: !4087)
!4155 = !DILocation(line: 2332, column: 14, scope: !4088)
!4156 = !DILocation(line: 2330, column: 6, scope: !4088)
!4157 = distinct !{!4157, !4138, !4158}
!4158 = !DILocation(line: 2344, column: 8, scope: !4089)
!4159 = !DILocation(line: 2345, column: 15, scope: !4074)
!4160 = !DILocation(line: 2345, column: 6, scope: !4074)
!4161 = !DILocation(line: 2346, column: 4, scope: !4074)
!4162 = !DILocation(line: 2347, column: 25, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 2347, column: 13)
!4164 = !DILocation(line: 2347, column: 13, scope: !4163)
!4165 = !DILocation(line: 2347, column: 13, scope: !4076)
!4166 = !DILocation(line: 2349, column: 22, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 2348, column: 4)
!4168 = !DILocation(line: 2349, column: 13, scope: !4167)
!4169 = !DILocation(line: 2350, column: 13, scope: !4167)
!4170 = !DILocation(line: 2352, column: 25, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4076, file: !3, line: 2352, column: 13)
!4172 = !DILocation(line: 2351, column: 4, scope: !4167)
!4173 = !DILocation(line: 2352, column: 13, scope: !4171)
!4174 = !DILocation(line: 2352, column: 13, scope: !4076)
!4175 = !DILocation(line: 2354, column: 22, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 2353, column: 4)
!4177 = !DILocation(line: 2354, column: 13, scope: !4176)
!4178 = !DILocation(line: 2355, column: 13, scope: !4176)
!4179 = !DILocation(line: 2356, column: 4, scope: !4176)
!4180 = !DILocation(line: 2358, column: 5, scope: !4078)
!4181 = !DILocation(line: 2359, column: 10, scope: !4078)
!4182 = !DILocation(line: 2314, column: 52, scope: !4083)
!4183 = !DILocation(line: 2314, column: 7, scope: !4083)
!4184 = distinct !{!4184, !4103, !4185}
!4185 = !DILocation(line: 2363, column: 2, scope: !4084)
!4186 = !DILocation(line: 0, scope: !4105)
!4187 = !DILocation(line: 2366, column: 16, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 2366, column: 9)
!4189 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 2365, column: 3)
!4190 = !DILocation(line: 2366, column: 10, scope: !4188)
!4191 = !DILocation(line: 2366, column: 25, scope: !4188)
!4192 = !DILocation(line: 2366, column: 34, scope: !4188)
!4193 = !DILocation(line: 2366, column: 28, scope: !4188)
!4194 = !DILocation(line: 2366, column: 9, scope: !4189)
!4195 = !DILocation(line: 2367, column: 7, scope: !4188)
!4196 = !DILocation(line: 2365, column: 48, scope: !4189)
!4197 = !DILocation(line: 2365, column: 3, scope: !4189)
!4198 = distinct !{!4198, !4104, !4199}
!4199 = !DILocation(line: 2367, column: 39, scope: !4105)
!4200 = !DILocation(line: 2368, column: 7, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 2368, column: 7)
!4202 = !DILocation(line: 2368, column: 7, scope: !4069)
!4203 = !DILocation(line: 2369, column: 5, scope: !4201)
!4204 = !DILocation(line: 2370, column: 8, scope: !4094)
!4205 = !DILocation(line: 0, scope: !4094)
!4206 = !DILocation(line: 2370, column: 3, scope: !4094)
!4207 = !DILocation(line: 2371, column: 15, scope: !4092)
!4208 = !DILocation(line: 2371, column: 9, scope: !4092)
!4209 = !DILocation(line: 2371, column: 24, scope: !4092)
!4210 = !DILocation(line: 2371, column: 34, scope: !4092)
!4211 = !DILocation(line: 2371, column: 28, scope: !4092)
!4212 = !DILocation(line: 2372, column: 2, scope: !4092)
!4213 = !DILocation(line: 2372, column: 30, scope: !4092)
!4214 = !DILocation(line: 2372, column: 5, scope: !4092)
!4215 = !DILocation(line: 2371, column: 9, scope: !4093)
!4216 = !DILocation(line: 2376, column: 32, scope: !4091)
!4217 = !DILocation(line: 2376, column: 24, scope: !4091)
!4218 = !DILocation(line: 2377, column: 20, scope: !4091)
!4219 = !DILocation(line: 2377, column: 9, scope: !4091)
!4220 = !DILocation(line: 2378, column: 17, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 2378, column: 2)
!4222 = !DILocation(line: 2378, column: 7, scope: !4221)
!4223 = !DILocation(line: 0, scope: !4221)
!4224 = !DILocation(line: 0, scope: !4091)
!4225 = !DILocation(line: 2378, column: 2, scope: !4221)
!4226 = !DILocation(line: 2379, column: 4, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 2378, column: 2)
!4228 = !DILocation(line: 2378, column: 36, scope: !4227)
!4229 = !DILocation(line: 2378, column: 2, scope: !4227)
!4230 = distinct !{!4230, !4225, !4231}
!4231 = !DILocation(line: 2379, column: 47, scope: !4221)
!4232 = !DILocation(line: 2380, column: 2, scope: !4091)
!4233 = !DILocation(line: 2381, column: 24, scope: !4091)
!4234 = !DILocation(line: 2385, column: 7, scope: !4091)
!4235 = !DILocation(line: 2370, column: 48, scope: !4093)
!4236 = !DILocation(line: 2370, column: 3, scope: !4093)
!4237 = distinct !{!4237, !4206, !4238}
!4238 = !DILocation(line: 2385, column: 7, scope: !4094)
!4239 = !DILocation(line: 2386, column: 7, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 2386, column: 7)
!4241 = !DILocation(line: 2386, column: 7, scope: !4069)
!4242 = !DILocation(line: 2387, column: 5, scope: !4240)
!4243 = !DILocation(line: 2391, column: 8, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 2391, column: 3)
!4245 = !DILocation(line: 0, scope: !4244)
!4246 = !DILocation(line: 2391, column: 3, scope: !4244)
!4247 = !DILocation(line: 2392, column: 17, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 2391, column: 3)
!4249 = !DILocation(line: 2392, column: 39, scope: !4248)
!4250 = !DILocation(line: 2391, column: 48, scope: !4248)
!4251 = !DILocation(line: 2391, column: 3, scope: !4248)
!4252 = distinct !{!4252, !4246, !4253}
!4253 = !DILocation(line: 2392, column: 41, scope: !4244)
!4254 = !DILocation(line: 2396, column: 43, scope: !4069)
!4255 = !DILocation(line: 2396, column: 3, scope: !4069)
!4256 = !DILocation(line: 2397, column: 1, scope: !4069)
!4257 = distinct !DISubprogram(name: "cgraph_mark_functions_to_output", scope: !3, file: !3, line: 1119, type: !2029, scopeLine: 1120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4258)
!4258 = !{!4259, !4260, !4264, !4265}
!4259 = !DILocalVariable(name: "node", scope: !4257, file: !3, line: 1121, type: !2053)
!4260 = !DILocalVariable(name: "decl", scope: !4261, file: !3, line: 1131, type: !664)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 1130, column: 5)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 1129, column: 3)
!4263 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 1129, column: 3)
!4264 = !DILocalVariable(name: "e", scope: !4261, file: !3, line: 1132, type: !2058)
!4265 = !DILocalVariable(name: "next", scope: !4266, file: !3, line: 1155, type: !2053)
!4266 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 1154, column: 6)
!4267 = distinct !DILexicalBlock(scope: !4268, file: !3, line: 1153, column: 8)
!4268 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 1151, column: 2)
!4269 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 1145, column: 11)
!4270 = !DILocation(line: 1129, column: 8, scope: !4263)
!4271 = !DILocation(line: 0, scope: !4263)
!4272 = !DILocation(line: 0, scope: !4257)
!4273 = !DILocation(line: 1129, column: 3, scope: !4263)
!4274 = !DILocation(line: 1131, column: 25, scope: !4261)
!4275 = !DILocation(line: 0, scope: !4261)
!4276 = !DILocation(line: 1134, column: 7, scope: !4261)
!4277 = !DILocation(line: 1135, column: 17, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 1135, column: 11)
!4279 = !DILocation(line: 1135, column: 11, scope: !4278)
!4280 = !DILocation(line: 1135, column: 11, scope: !4261)
!4281 = !DILocation(line: 1138, column: 22, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 1138, column: 7)
!4283 = !DILocation(line: 1138, column: 12, scope: !4282)
!4284 = !DILocation(line: 0, scope: !4282)
!4285 = !DILocation(line: 1138, column: 7, scope: !4282)
!4286 = !DILocation(line: 1139, column: 9, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 1139, column: 6)
!4288 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 1138, column: 7)
!4289 = !DILocation(line: 1139, column: 6, scope: !4287)
!4290 = !DILocation(line: 1139, column: 6, scope: !4288)
!4291 = !DILocation(line: 1138, column: 41, scope: !4288)
!4292 = !DILocation(line: 1138, column: 7, scope: !4288)
!4293 = distinct !{!4293, !4285, !4294}
!4294 = !DILocation(line: 1140, column: 4, scope: !4282)
!4295 = !DILocation(line: 1145, column: 17, scope: !4269)
!4296 = !DILocation(line: 1145, column: 11, scope: !4269)
!4297 = !DILocation(line: 1146, column: 4, scope: !4269)
!4298 = !DILocation(line: 1146, column: 21, scope: !4269)
!4299 = !DILocation(line: 1146, column: 8, scope: !4269)
!4300 = !DILocation(line: 1147, column: 4, scope: !4269)
!4301 = !DILocation(line: 1147, column: 14, scope: !4269)
!4302 = !DILocation(line: 1147, column: 8, scope: !4269)
!4303 = !DILocation(line: 1148, column: 8, scope: !4269)
!4304 = !DILocation(line: 1148, column: 14, scope: !4269)
!4305 = !DILocation(line: 1148, column: 23, scope: !4269)
!4306 = !DILocation(line: 1148, column: 17, scope: !4269)
!4307 = !DILocation(line: 1149, column: 4, scope: !4269)
!4308 = !DILocation(line: 1149, column: 8, scope: !4269)
!4309 = !DILocation(line: 1150, column: 4, scope: !4269)
!4310 = !DILocation(line: 1150, column: 8, scope: !4269)
!4311 = !DILocation(line: 1145, column: 11, scope: !4261)
!4312 = !DILocation(line: 1152, column: 18, scope: !4268)
!4313 = !DILocation(line: 1153, column: 14, scope: !4267)
!4314 = !DILocation(line: 1153, column: 8, scope: !4267)
!4315 = !DILocation(line: 1153, column: 8, scope: !4268)
!4316 = !DILocation(line: 1156, column: 13, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 1156, column: 8)
!4318 = !DILocation(line: 0, scope: !4317)
!4319 = !DILocation(line: 0, scope: !4266)
!4320 = !DILocation(line: 1157, column: 11, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 1156, column: 8)
!4322 = !DILocation(line: 1156, column: 8, scope: !4317)
!4323 = !DILocation(line: 1159, column: 9, scope: !4321)
!4324 = !DILocation(line: 1159, column: 17, scope: !4321)
!4325 = !DILocation(line: 1156, column: 8, scope: !4321)
!4326 = distinct !{!4326, !4322, !4327}
!4327 = !DILocation(line: 1159, column: 19, scope: !4317)
!4328 = !DILocation(line: 1162, column: 22, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 1162, column: 16)
!4330 = !DILocation(line: 1162, column: 16, scope: !4329)
!4331 = !DILocation(line: 1162, column: 16, scope: !4269)
!4332 = !DILocation(line: 1180, column: 4, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 1169, column: 2)
!4334 = !DILocation(line: 1129, column: 48, scope: !4262)
!4335 = !DILocation(line: 1129, column: 3, scope: !4262)
!4336 = distinct !{!4336, !4273, !4337}
!4337 = !DILocation(line: 1186, column: 5, scope: !4263)
!4338 = !DILocation(line: 1202, column: 1, scope: !4257)
!4339 = distinct !DISubprogram(name: "cgraph_output_in_order", scope: !3, file: !3, line: 1678, type: !2029, scopeLine: 1679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4340)
!4340 = !{!4341, !4342, !4343, !4344, !4345, !4346}
!4341 = !DILocalVariable(name: "max", scope: !4339, file: !3, line: 1680, type: !657)
!4342 = !DILocalVariable(name: "nodes", scope: !4339, file: !3, line: 1681, type: !2229)
!4343 = !DILocalVariable(name: "i", scope: !4339, file: !3, line: 1682, type: !657)
!4344 = !DILocalVariable(name: "pf", scope: !4339, file: !3, line: 1683, type: !2053)
!4345 = !DILocalVariable(name: "pv", scope: !4339, file: !3, line: 1684, type: !2214)
!4346 = !DILocalVariable(name: "pa", scope: !4339, file: !3, line: 1685, type: !2239)
!4347 = !DILocation(line: 1687, column: 9, scope: !4339)
!4348 = !DILocation(line: 0, scope: !4339)
!4349 = !DILocation(line: 1688, column: 11, scope: !4339)
!4350 = !DILocation(line: 1690, column: 3, scope: !4339)
!4351 = !DILocation(line: 1692, column: 8, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 1692, column: 3)
!4353 = !DILocation(line: 0, scope: !4352)
!4354 = !DILocation(line: 1692, column: 3, scope: !4352)
!4355 = !DILocation(line: 1694, column: 15, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 1694, column: 11)
!4357 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 1693, column: 5)
!4358 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 1692, column: 3)
!4359 = !DILocation(line: 1694, column: 11, scope: !4356)
!4360 = !DILocation(line: 1694, column: 11, scope: !4357)
!4361 = !DILocation(line: 1696, column: 12, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 1695, column: 2)
!4363 = !DILocation(line: 1697, column: 4, scope: !4362)
!4364 = !DILocation(line: 1698, column: 18, scope: !4362)
!4365 = !DILocation(line: 1699, column: 15, scope: !4362)
!4366 = !DILocation(line: 1699, column: 17, scope: !4362)
!4367 = !DILocation(line: 1700, column: 2, scope: !4362)
!4368 = !DILocation(line: 1692, column: 40, scope: !4358)
!4369 = !DILocation(line: 1692, column: 3, scope: !4358)
!4370 = distinct !{!4370, !4354, !4371}
!4371 = !DILocation(line: 1701, column: 5, scope: !4352)
!4372 = !DILocation(line: 1703, column: 8, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 1703, column: 3)
!4374 = !DILocation(line: 0, scope: !4373)
!4375 = !DILocation(line: 1703, column: 3, scope: !4373)
!4376 = !DILocation(line: 1705, column: 15, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 1704, column: 5)
!4378 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 1703, column: 3)
!4379 = !DILocation(line: 1706, column: 7, scope: !4377)
!4380 = !DILocation(line: 1707, column: 21, scope: !4377)
!4381 = !DILocation(line: 1708, column: 16, scope: !4377)
!4382 = !DILocation(line: 1708, column: 18, scope: !4377)
!4383 = !DILocation(line: 1708, column: 20, scope: !4377)
!4384 = !DILocation(line: 1703, column: 47, scope: !4378)
!4385 = !DILocation(line: 1703, column: 3, scope: !4378)
!4386 = distinct !{!4386, !4375, !4387}
!4387 = !DILocation(line: 1709, column: 5, scope: !4373)
!4388 = !DILocation(line: 1711, column: 8, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 1711, column: 3)
!4390 = !DILocation(line: 0, scope: !4389)
!4391 = !DILocation(line: 1711, column: 3, scope: !4389)
!4392 = !DILocation(line: 1720, column: 3, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 1720, column: 3)
!4394 = !DILocation(line: 1713, column: 15, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 1712, column: 5)
!4396 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 1711, column: 3)
!4397 = !DILocation(line: 1714, column: 7, scope: !4395)
!4398 = !DILocation(line: 1715, column: 21, scope: !4395)
!4399 = !DILocation(line: 1716, column: 16, scope: !4395)
!4400 = !DILocation(line: 1716, column: 18, scope: !4395)
!4401 = !DILocation(line: 1716, column: 20, scope: !4395)
!4402 = !DILocation(line: 1711, column: 44, scope: !4396)
!4403 = !DILocation(line: 1711, column: 3, scope: !4396)
!4404 = distinct !{!4404, !4391, !4405}
!4405 = !DILocation(line: 1717, column: 5, scope: !4389)
!4406 = !DILocation(line: 0, scope: !4393)
!4407 = !DILocation(line: 1720, column: 17, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 1720, column: 3)
!4409 = !DILocation(line: 1722, column: 20, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 1722, column: 11)
!4411 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 1721, column: 5)
!4412 = !DILocation(line: 1722, column: 25, scope: !4410)
!4413 = !DILocation(line: 1722, column: 11, scope: !4411)
!4414 = !DILocation(line: 1724, column: 39, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 1723, column: 9)
!4416 = !DILocation(line: 1724, column: 41, scope: !4415)
!4417 = !DILocation(line: 1724, column: 4, scope: !4415)
!4418 = !DILocation(line: 1725, column: 2, scope: !4415)
!4419 = !DILocation(line: 1720, column: 24, scope: !4408)
!4420 = !DILocation(line: 1720, column: 3, scope: !4408)
!4421 = distinct !{!4421, !4392, !4422}
!4422 = !DILocation(line: 1726, column: 5, scope: !4393)
!4423 = !DILocation(line: 1727, column: 3, scope: !4339)
!4424 = !DILocation(line: 1729, column: 8, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 1729, column: 3)
!4426 = !DILocation(line: 0, scope: !4425)
!4427 = !DILocation(line: 1729, column: 17, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 1729, column: 3)
!4429 = !DILocation(line: 1729, column: 3, scope: !4425)
!4430 = !DILocation(line: 1731, column: 24, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 1730, column: 5)
!4432 = !DILocation(line: 1731, column: 7, scope: !4431)
!4433 = !DILocation(line: 1734, column: 15, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 1732, column: 2)
!4435 = !DILocation(line: 1734, column: 18, scope: !4434)
!4436 = !DILocation(line: 1734, column: 26, scope: !4434)
!4437 = !DILocation(line: 1735, column: 39, scope: !4434)
!4438 = !DILocation(line: 1735, column: 4, scope: !4434)
!4439 = !DILocation(line: 1736, column: 4, scope: !4434)
!4440 = !DILocation(line: 1739, column: 36, scope: !4434)
!4441 = !DILocation(line: 1739, column: 38, scope: !4434)
!4442 = !DILocation(line: 1739, column: 4, scope: !4434)
!4443 = !DILocation(line: 1740, column: 4, scope: !4434)
!4444 = !DILocation(line: 1743, column: 27, scope: !4434)
!4445 = !DILocation(line: 1743, column: 29, scope: !4434)
!4446 = !DILocation(line: 1743, column: 32, scope: !4434)
!4447 = !DILocation(line: 1743, column: 4, scope: !4434)
!4448 = !DILocation(line: 1744, column: 4, scope: !4434)
!4449 = !DILocation(line: 1750, column: 4, scope: !4434)
!4450 = !DILocation(line: 1751, column: 2, scope: !4434)
!4451 = !DILocation(line: 1729, column: 24, scope: !4428)
!4452 = !DILocation(line: 1729, column: 3, scope: !4428)
!4453 = distinct !{!4453, !4429, !4454}
!4454 = !DILocation(line: 1752, column: 5, scope: !4425)
!4455 = !DILocation(line: 1754, column: 20, scope: !4339)
!4456 = !DILocation(line: 1755, column: 3, scope: !4339)
!4457 = !DILocation(line: 1756, column: 1, scope: !4339)
!4458 = distinct !DISubprogram(name: "cgraph_output_pending_asms", scope: !3, file: !3, line: 832, type: !2029, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4459)
!4459 = !{!4460}
!4460 = !DILocalVariable(name: "can", scope: !4458, file: !3, line: 834, type: !2239)
!4461 = !DILocation(line: 836, column: 7, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 836, column: 7)
!4463 = !DILocation(line: 836, column: 18, scope: !4462)
!4464 = !DILocation(line: 836, column: 21, scope: !4462)
!4465 = !DILocation(line: 836, column: 7, scope: !4458)
!4466 = !DILocation(line: 839, column: 8, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 839, column: 3)
!4468 = !DILocation(line: 0, scope: !4467)
!4469 = !DILocation(line: 0, scope: !4458)
!4470 = !DILocation(line: 839, column: 3, scope: !4467)
!4471 = !DILocation(line: 840, column: 24, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 839, column: 3)
!4473 = !DILocation(line: 840, column: 5, scope: !4472)
!4474 = !DILocation(line: 839, column: 48, scope: !4472)
!4475 = !DILocation(line: 839, column: 3, scope: !4472)
!4476 = distinct !{!4476, !4470, !4477}
!4477 = !DILocation(line: 840, column: 31, scope: !4467)
!4478 = !DILocation(line: 841, column: 20, scope: !4458)
!4479 = !DILocation(line: 842, column: 1, scope: !4458)
!4480 = distinct !DISubprogram(name: "cgraph_expand_all_functions", scope: !3, file: !3, line: 1618, type: !2029, scopeLine: 1619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4481)
!4481 = !{!4482, !4483, !4484, !4485, !4486}
!4482 = !DILocalVariable(name: "node", scope: !4480, file: !3, line: 1620, type: !2053)
!4483 = !DILocalVariable(name: "order", scope: !4480, file: !3, line: 1621, type: !2245)
!4484 = !DILocalVariable(name: "order_pos", scope: !4480, file: !3, line: 1622, type: !657)
!4485 = !DILocalVariable(name: "new_order_pos", scope: !4480, file: !3, line: 1622, type: !657)
!4486 = !DILocalVariable(name: "i", scope: !4480, file: !3, line: 1623, type: !657)
!4487 = !DILocation(line: 1621, column: 32, scope: !4480)
!4488 = !DILocation(line: 0, scope: !4480)
!4489 = !DILocation(line: 1625, column: 15, scope: !4480)
!4490 = !DILocation(line: 1626, column: 3, scope: !4480)
!4491 = !DILocation(line: 1630, column: 8, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 1630, column: 3)
!4493 = !DILocation(line: 1630, column: 17, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 1630, column: 3)
!4495 = !DILocation(line: 1630, column: 3, scope: !4492)
!4496 = !DILocation(line: 1631, column: 9, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 1631, column: 9)
!4498 = !DILocation(line: 1631, column: 19, scope: !4497)
!4499 = !DILocation(line: 1631, column: 9, scope: !4494)
!4500 = !DILocation(line: 1632, column: 26, scope: !4497)
!4501 = !DILocation(line: 1632, column: 7, scope: !4497)
!4502 = !DILocation(line: 1632, column: 30, scope: !4497)
!4503 = !DILocation(line: 1630, column: 31, scope: !4494)
!4504 = !DILocation(line: 1630, column: 3, scope: !4494)
!4505 = distinct !{!4505, !4495, !4506}
!4506 = !DILocation(line: 1632, column: 39, scope: !4492)
!4507 = !DILocation(line: 1634, column: 8, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 1634, column: 3)
!4509 = !DILocation(line: 0, scope: !4508)
!4510 = !DILocation(line: 1634, column: 33, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 1634, column: 3)
!4512 = !DILocation(line: 1634, column: 3, scope: !4508)
!4513 = !DILocation(line: 1636, column: 14, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 1635, column: 5)
!4515 = !DILocation(line: 1637, column: 17, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 1637, column: 11)
!4517 = !DILocation(line: 1637, column: 11, scope: !4516)
!4518 = !DILocation(line: 1637, column: 11, scope: !4514)
!4519 = !DILocation(line: 1639, column: 4, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 1638, column: 2)
!4521 = !DILocation(line: 1640, column: 18, scope: !4520)
!4522 = !DILocation(line: 1641, column: 4, scope: !4520)
!4523 = !DILocation(line: 1642, column: 2, scope: !4520)
!4524 = !DILocation(line: 1634, column: 3, scope: !4511)
!4525 = distinct !{!4525, !4512, !4526}
!4526 = !DILocation(line: 1643, column: 5, scope: !4508)
!4527 = !DILocation(line: 1644, column: 3, scope: !4480)
!4528 = !DILocation(line: 1646, column: 3, scope: !4480)
!4529 = !DILocation(line: 1648, column: 1, scope: !4480)
!4530 = !DILocation(line: 0, scope: !2250)
!4531 = !DILocation(line: 1935, column: 3, scope: !2250)
!4532 = !DILocation(line: 1935, column: 8, scope: !2250)
!4533 = !DILocation(line: 1941, column: 37, scope: !2250)
!4534 = !DILocation(line: 1941, column: 61, scope: !2250)
!4535 = !DILocation(line: 1941, column: 3, scope: !2250)
!4536 = !DILocation(line: 1942, column: 10, scope: !2250)
!4537 = !DILocation(line: 1944, column: 10, scope: !2250)
!4538 = !DILocation(line: 1946, column: 25, scope: !2250)
!4539 = !DILocation(line: 1948, column: 13, scope: !2250)
!4540 = !DILocation(line: 1950, column: 3, scope: !2250)
!4541 = !DILocation(line: 1950, column: 29, scope: !2250)
!4542 = !DILocation(line: 1951, column: 3, scope: !2250)
!4543 = !DILocation(line: 1951, column: 22, scope: !2250)
!4544 = !DILocation(line: 1952, column: 3, scope: !2250)
!4545 = !DILocation(line: 1952, column: 26, scope: !2250)
!4546 = !DILocation(line: 1954, column: 3, scope: !2250)
!4547 = !DILocation(line: 1956, column: 3, scope: !2250)
!4548 = !DILocation(line: 1956, column: 22, scope: !2250)
!4549 = !DILocation(line: 1957, column: 20, scope: !2250)
!4550 = !DILocation(line: 1958, column: 3, scope: !2250)
!4551 = !DILocation(line: 1958, column: 26, scope: !2250)
!4552 = !DILocation(line: 1959, column: 3, scope: !2250)
!4553 = !DILocation(line: 1959, column: 49, scope: !2250)
!4554 = !DILocation(line: 1960, column: 3, scope: !2250)
!4555 = !DILocation(line: 1960, column: 26, scope: !2250)
!4556 = !DILocation(line: 1961, column: 16, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 1961, column: 7)
!4558 = !DILocation(line: 1961, column: 8, scope: !4557)
!4559 = !DILocation(line: 1961, column: 7, scope: !2250)
!4560 = !DILocation(line: 1963, column: 26, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 1962, column: 5)
!4562 = !DILocation(line: 1964, column: 30, scope: !4561)
!4563 = !DILocation(line: 1965, column: 5, scope: !4561)
!4564 = !DILocation(line: 1966, column: 27, scope: !2250)
!4565 = !DILocation(line: 1968, column: 25, scope: !2250)
!4566 = !DILocation(line: 1968, column: 3, scope: !2250)
!4567 = !DILocation(line: 1968, column: 23, scope: !2250)
!4568 = !DILocation(line: 1969, column: 3, scope: !2250)
!4569 = !DILocation(line: 1969, column: 35, scope: !2250)
!4570 = !DILocation(line: 1971, column: 33, scope: !2250)
!4571 = !DILocation(line: 1971, column: 3, scope: !2250)
!4572 = !DILocation(line: 1971, column: 31, scope: !2250)
!4573 = !DILocation(line: 1972, column: 3, scope: !2250)
!4574 = !DILocation(line: 1972, column: 9, scope: !2250)
!4575 = !DILocation(line: 1972, column: 28, scope: !2250)
!4576 = !DILocation(line: 1974, column: 3, scope: !2250)
!4577 = !DILocation(line: 1977, column: 38, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 1975, column: 5)
!4579 = !DILocation(line: 1978, column: 40, scope: !4578)
!4580 = !DILocation(line: 1978, column: 7, scope: !4578)
!4581 = !DILocation(line: 1979, column: 7, scope: !4578)
!4582 = !DILocation(line: 1981, column: 37, scope: !4578)
!4583 = !DILocation(line: 1982, column: 40, scope: !4578)
!4584 = !DILocation(line: 1982, column: 7, scope: !4578)
!4585 = !DILocation(line: 1983, column: 7, scope: !4578)
!4586 = !DILocation(line: 1985, column: 7, scope: !4578)
!4587 = !DILocation(line: 1986, column: 5, scope: !4578)
!4588 = !DILocation(line: 1988, column: 3, scope: !2250)
!4589 = !DILocation(line: 1990, column: 3, scope: !2250)
!4590 = !DILocation(line: 1991, column: 28, scope: !2250)
!4591 = !DILocation(line: 1991, column: 3, scope: !2250)
!4592 = !DILocation(line: 1992, column: 3, scope: !2250)
!4593 = !DILocation(line: 1993, column: 1, scope: !2250)
!4594 = distinct !DISubprogram(name: "init_cgraph", scope: !3, file: !3, line: 1996, type: !2029, scopeLine: 1997, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!4595 = !DILocation(line: 1998, column: 22, scope: !4594)
!4596 = !DILocation(line: 1998, column: 20, scope: !4594)
!4597 = !DILocation(line: 1999, column: 1, scope: !4594)
!4598 = distinct !DISubprogram(name: "cgraph_function_versioning", scope: !3, file: !3, line: 2099, type: !4599, scopeLine: 2103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4613)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!2053, !2053, !4601, !2149, !1538}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_edge_p_heap", file: !378, line: 353, baseType: !4603)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_edge_p_heap", file: !378, line: 353, size: 128, elements: !4604)
!4604 = !{!4605}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4603, file: !378, line: 353, baseType: !4606, size: 128)
!4606 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_cgraph_edge_p_base", file: !378, line: 352, baseType: !4607)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_cgraph_edge_p_base", file: !378, line: 352, size: 128, elements: !4608)
!4608 = !{!4609, !4610, !4611}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4607, file: !378, line: 352, baseType: !7, size: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4607, file: !378, line: 352, baseType: !7, size: 32, offset: 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !4607, file: !378, line: 352, baseType: !4612, size: 64, offset: 64)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2246, size: 64, elements: !763)
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4619, !4620}
!4614 = !DILocalVariable(name: "old_version_node", arg: 1, scope: !4598, file: !3, line: 2099, type: !2053)
!4615 = !DILocalVariable(name: "redirect_callers", arg: 2, scope: !4598, file: !3, line: 2100, type: !4601)
!4616 = !DILocalVariable(name: "tree_map", arg: 3, scope: !4598, file: !3, line: 2101, type: !2149)
!4617 = !DILocalVariable(name: "args_to_skip", arg: 4, scope: !4598, file: !3, line: 2102, type: !1538)
!4618 = !DILocalVariable(name: "old_decl", scope: !4598, file: !3, line: 2104, type: !664)
!4619 = !DILocalVariable(name: "new_version_node", scope: !4598, file: !3, line: 2105, type: !2053)
!4620 = !DILocalVariable(name: "new_decl", scope: !4598, file: !3, line: 2106, type: !664)
!4621 = !DILocation(line: 0, scope: !4598)
!4622 = !DILocation(line: 2104, column: 37, scope: !4598)
!4623 = !DILocation(line: 2108, column: 8, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 2108, column: 7)
!4625 = !DILocation(line: 2108, column: 7, scope: !4598)
!4626 = !DILocation(line: 2113, column: 8, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 2113, column: 7)
!4628 = !DILocation(line: 2113, column: 7, scope: !4598)
!4629 = !DILocation(line: 2114, column: 16, scope: !4627)
!4630 = !DILocation(line: 2114, column: 5, scope: !4627)
!4631 = !DILocation(line: 2116, column: 16, scope: !4627)
!4632 = !DILocation(line: 0, scope: !4627)
!4633 = !DILocation(line: 2121, column: 5, scope: !4598)
!4634 = !DILocation(line: 2125, column: 3, scope: !4598)
!4635 = !DILocation(line: 2132, column: 45, scope: !4598)
!4636 = !DILocation(line: 2132, column: 3, scope: !4598)
!4637 = !DILocation(line: 2133, column: 3, scope: !4598)
!4638 = !DILocation(line: 2133, column: 43, scope: !4598)
!4639 = !DILocation(line: 2134, column: 27, scope: !4598)
!4640 = !DILocation(line: 2134, column: 46, scope: !4598)
!4641 = !DILocation(line: 2135, column: 33, scope: !4598)
!4642 = !DILocation(line: 2136, column: 21, scope: !4598)
!4643 = !DILocation(line: 2136, column: 29, scope: !4598)
!4644 = !DILocation(line: 2139, column: 3, scope: !4598)
!4645 = !DILocation(line: 2141, column: 3, scope: !4598)
!4646 = !DILocation(line: 2142, column: 3, scope: !4598)
!4647 = !DILocation(line: 2143, column: 1, scope: !4598)
!4648 = distinct !DISubprogram(name: "cgraph_copy_node_for_versioning", scope: !3, file: !3, line: 2030, type: !4649, scopeLine: 2033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4651)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!2053, !2053, !664, !4601}
!4651 = !{!4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659}
!4652 = !DILocalVariable(name: "old_version", arg: 1, scope: !4648, file: !3, line: 2030, type: !2053)
!4653 = !DILocalVariable(name: "new_decl", arg: 2, scope: !4648, file: !3, line: 2031, type: !664)
!4654 = !DILocalVariable(name: "redirect_callers", arg: 3, scope: !4648, file: !3, line: 2032, type: !4601)
!4655 = !DILocalVariable(name: "new_version", scope: !4648, file: !3, line: 2034, type: !2053)
!4656 = !DILocalVariable(name: "e", scope: !4648, file: !3, line: 2035, type: !2058)
!4657 = !DILocalVariable(name: "new_e", scope: !4648, file: !3, line: 2035, type: !2058)
!4658 = !DILocalVariable(name: "next_callee", scope: !4648, file: !3, line: 2036, type: !2058)
!4659 = !DILocalVariable(name: "i", scope: !4648, file: !3, line: 2037, type: !7)
!4660 = !DILocation(line: 0, scope: !4648)
!4661 = !DILocation(line: 2035, column: 4, scope: !4648)
!4662 = !DILocation(line: 2039, column: 4, scope: !4648)
!4663 = !DILocation(line: 2041, column: 18, scope: !4648)
!4664 = !DILocation(line: 2043, column: 17, scope: !4648)
!4665 = !DILocation(line: 2043, column: 26, scope: !4648)
!4666 = !DILocation(line: 2044, column: 17, scope: !4648)
!4667 = !DILocation(line: 2044, column: 38, scope: !4648)
!4668 = !DILocation(line: 2045, column: 17, scope: !4648)
!4669 = !DILocation(line: 2045, column: 39, scope: !4648)
!4670 = !DILocation(line: 2047, column: 27, scope: !4648)
!4671 = !DILocation(line: 2048, column: 38, scope: !4648)
!4672 = !DILocation(line: 2048, column: 17, scope: !4648)
!4673 = !DILocation(line: 2048, column: 23, scope: !4648)
!4674 = !DILocation(line: 2052, column: 26, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 2052, column: 4)
!4676 = !DILocation(line: 2052, column: 11, scope: !4675)
!4677 = !DILocation(line: 2052, column: 9, scope: !4675)
!4678 = !DILocation(line: 2052, column: 34, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 2052, column: 4)
!4680 = !DILocation(line: 2052, column: 4, scope: !4675)
!4681 = !DILocation(line: 2054, column: 54, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 2053, column: 6)
!4683 = !DILocation(line: 2055, column: 10, scope: !4682)
!4684 = !DILocation(line: 2055, column: 30, scope: !4682)
!4685 = !DILocation(line: 2056, column: 10, scope: !4682)
!4686 = !DILocation(line: 2056, column: 7, scope: !4682)
!4687 = !DILocation(line: 2054, column: 16, scope: !4682)
!4688 = !DILocation(line: 2057, column: 26, scope: !4682)
!4689 = !DILocation(line: 2057, column: 15, scope: !4682)
!4690 = !DILocation(line: 2057, column: 21, scope: !4682)
!4691 = !DILocation(line: 2052, column: 39, scope: !4679)
!4692 = !DILocation(line: 2052, column: 42, scope: !4679)
!4693 = !DILocation(line: 2052, column: 38, scope: !4679)
!4694 = !DILocation(line: 2052, column: 4, scope: !4679)
!4695 = distinct !{!4695, !4680, !4696}
!4696 = !DILocation(line: 2058, column: 6, scope: !4675)
!4697 = !DILocation(line: 2064, column: 26, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 2064, column: 4)
!4699 = !DILocation(line: 2064, column: 11, scope: !4698)
!4700 = !DILocation(line: 2064, column: 9, scope: !4698)
!4701 = !DILocation(line: 2064, column: 36, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 2064, column: 4)
!4703 = !DILocation(line: 2064, column: 4, scope: !4698)
!4704 = !DILocation(line: 2066, column: 25, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 2065, column: 6)
!4706 = !DILocation(line: 2067, column: 15, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 2067, column: 12)
!4708 = !DILocation(line: 2067, column: 22, scope: !4707)
!4709 = !DILocation(line: 2067, column: 12, scope: !4705)
!4710 = !DILocation(line: 2068, column: 3, scope: !4707)
!4711 = !DILocation(line: 2070, column: 13, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 2070, column: 12)
!4713 = !DILocation(line: 2070, column: 12, scope: !4705)
!4714 = !DILocation(line: 2064, column: 41, scope: !4702)
!4715 = !DILocation(line: 2064, column: 4, scope: !4702)
!4716 = distinct !{!4716, !4703, !4717}
!4717 = !DILocation(line: 2072, column: 6, scope: !4698)
!4718 = !DILocation(line: 0, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 2073, column: 4)
!4720 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 2073, column: 4)
!4721 = !DILocation(line: 2073, column: 9, scope: !4720)
!4722 = !DILocation(line: 0, scope: !4720)
!4723 = !DILocation(line: 2073, column: 16, scope: !4719)
!4724 = !DILocation(line: 2073, column: 4, scope: !4720)
!4725 = !DILocation(line: 2077, column: 37, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 2074, column: 6)
!4727 = !DILocation(line: 2077, column: 8, scope: !4726)
!4728 = !DILocation(line: 2073, column: 70, scope: !4719)
!4729 = !DILocation(line: 2073, column: 4, scope: !4719)
!4730 = distinct !{!4730, !4724, !4731}
!4731 = !DILocation(line: 2078, column: 6, scope: !4720)
!4732 = !DILocation(line: 2081, column: 2, scope: !4648)
!4733 = !DILocation(line: 2080, column: 4, scope: !4648)
!4734 = distinct !DISubprogram(name: "update_call_expr", scope: !3, file: !3, line: 2006, type: !2198, scopeLine: 2007, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4735)
!4735 = !{!4736, !4737, !4738}
!4736 = !DILocalVariable(name: "new_version", arg: 1, scope: !4734, file: !3, line: 2006, type: !2053)
!4737 = !DILocalVariable(name: "e", scope: !4734, file: !3, line: 2008, type: !2058)
!4738 = !DILocalVariable(name: "inner_function", scope: !4739, file: !3, line: 2015, type: !1410)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 2014, column: 5)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 2013, column: 3)
!4741 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 2013, column: 3)
!4742 = !DILocation(line: 0, scope: !4734)
!4743 = !DILocation(line: 2010, column: 3, scope: !4734)
!4744 = !DILocation(line: 2013, column: 25, scope: !4741)
!4745 = !DILocation(line: 0, scope: !4739)
!4746 = !DILocation(line: 2013, column: 8, scope: !4741)
!4747 = !DILocation(line: 0, scope: !4741)
!4748 = !DILocation(line: 2013, column: 3, scope: !4741)
!4749 = !DILocation(line: 2015, column: 41, scope: !4739)
!4750 = !DILocation(line: 2016, column: 34, scope: !4739)
!4751 = !DILocation(line: 2016, column: 58, scope: !4739)
!4752 = !DILocation(line: 2016, column: 7, scope: !4739)
!4753 = !DILocation(line: 2017, column: 50, scope: !4739)
!4754 = !DILocation(line: 2017, column: 7, scope: !4739)
!4755 = !DILocation(line: 2013, column: 44, scope: !4740)
!4756 = !DILocation(line: 2013, column: 3, scope: !4740)
!4757 = distinct !{!4757, !4748, !4758}
!4758 = !DILocation(line: 2018, column: 5, scope: !4741)
!4759 = !DILocation(line: 2019, column: 1, scope: !4734)
!4760 = distinct !DISubprogram(name: "save_inline_function_body", scope: !3, file: !3, line: 2148, type: !4761, scopeLine: 2149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4763)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!2053, !2053}
!4763 = !{!4764, !4765, !4766}
!4764 = !DILocalVariable(name: "node", arg: 1, scope: !4760, file: !3, line: 2148, type: !2053)
!4765 = !DILocalVariable(name: "first_clone", scope: !4760, file: !3, line: 2150, type: !2053)
!4766 = !DILocalVariable(name: "n", scope: !4760, file: !3, line: 2150, type: !2053)
!4767 = !DILocation(line: 0, scope: !4760)
!4768 = !DILocation(line: 2152, column: 3, scope: !4760)
!4769 = !DILocation(line: 2154, column: 3, scope: !4760)
!4770 = !DILocation(line: 2156, column: 23, scope: !4760)
!4771 = !DILocation(line: 2158, column: 23, scope: !4760)
!4772 = !DILocation(line: 2158, column: 16, scope: !4760)
!4773 = !DILocation(line: 2158, column: 21, scope: !4760)
!4774 = !DILocation(line: 2159, column: 3, scope: !4760)
!4775 = !DILocation(line: 2160, column: 3, scope: !4760)
!4776 = !DILocation(line: 2161, column: 20, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 2161, column: 7)
!4778 = !DILocation(line: 2161, column: 7, scope: !4777)
!4779 = !DILocation(line: 2161, column: 7, scope: !4760)
!4780 = !DILocation(line: 2163, column: 12, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 2163, column: 7)
!4782 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 2162, column: 5)
!4783 = !DILocation(line: 0, scope: !4781)
!4784 = !DILocation(line: 2163, column: 52, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 2163, column: 7)
!4786 = !DILocation(line: 2163, column: 7, scope: !4781)
!4787 = !DILocation(line: 0, scope: !4782)
!4788 = !DILocation(line: 2163, column: 7, scope: !4785)
!4789 = distinct !{!4789, !4786, !4790}
!4790 = !DILocation(line: 2164, column: 23, scope: !4781)
!4791 = !DILocation(line: 2166, column: 44, scope: !4782)
!4792 = !DILocation(line: 2166, column: 29, scope: !4782)
!4793 = !DILocation(line: 2167, column: 24, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 2167, column: 11)
!4795 = !DILocation(line: 2167, column: 11, scope: !4794)
!4796 = !DILocation(line: 2167, column: 11, scope: !4782)
!4797 = !DILocation(line: 2168, column: 30, scope: !4794)
!4798 = !DILocation(line: 2168, column: 49, scope: !4794)
!4799 = !DILocation(line: 2168, column: 9, scope: !4794)
!4800 = !DILocation(line: 2169, column: 42, scope: !4782)
!4801 = !DILocation(line: 2169, column: 27, scope: !4782)
!4802 = !DILocation(line: 2170, column: 20, scope: !4782)
!4803 = !DILocation(line: 2170, column: 40, scope: !4782)
!4804 = !DILocation(line: 2170, column: 59, scope: !4782)
!4805 = !DILocation(line: 2171, column: 39, scope: !4782)
!4806 = !DILocation(line: 2172, column: 7, scope: !4782)
!4807 = !DILocation(line: 2174, column: 16, scope: !4760)
!4808 = !DILocation(line: 2174, column: 25, scope: !4760)
!4809 = !DILocation(line: 2175, column: 16, scope: !4760)
!4810 = !DILocation(line: 2177, column: 20, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 2177, column: 7)
!4812 = !DILocation(line: 2177, column: 7, scope: !4811)
!4813 = !DILocation(line: 2177, column: 7, scope: !4760)
!4814 = !DILocation(line: 0, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 2179, column: 7)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 2178, column: 5)
!4817 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 2178, column: 5)
!4818 = !DILocation(line: 2178, column: 10, scope: !4817)
!4819 = !DILocation(line: 0, scope: !4817)
!4820 = !DILocation(line: 2178, column: 37, scope: !4816)
!4821 = !DILocation(line: 2178, column: 5, scope: !4817)
!4822 = !DILocation(line: 2180, column: 9, scope: !4815)
!4823 = !DILocation(line: 2181, column: 25, scope: !4815)
!4824 = !DILocation(line: 2181, column: 10, scope: !4815)
!4825 = !DILocation(line: 2182, column: 9, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 2182, column: 6)
!4827 = !DILocation(line: 2182, column: 6, scope: !4826)
!4828 = !DILocation(line: 2182, column: 6, scope: !4815)
!4829 = !DILocation(line: 2183, column: 4, scope: !4826)
!4830 = !DILocation(line: 2184, column: 14, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 2184, column: 11)
!4832 = !DILocation(line: 2184, column: 11, scope: !4831)
!4833 = !DILocation(line: 2184, column: 11, scope: !4826)
!4834 = !DILocation(line: 2188, column: 6, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 2187, column: 4)
!4836 = !DILocation(line: 2185, column: 4, scope: !4831)
!4837 = !DILocation(line: 2188, column: 15, scope: !4835)
!4838 = !DILocation(line: 2188, column: 30, scope: !4835)
!4839 = !DILocation(line: 2188, column: 37, scope: !4835)
!4840 = !DILocation(line: 2188, column: 33, scope: !4835)
!4841 = !DILocation(line: 2189, column: 15, scope: !4835)
!4842 = distinct !{!4842, !4834, !4841}
!4843 = !DILocation(line: 2190, column: 10, scope: !4835)
!4844 = !DILocation(line: 2191, column: 15, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 2190, column: 10)
!4846 = !DILocation(line: 2191, column: 8, scope: !4845)
!4847 = !DILocation(line: 0, scope: !4826)
!4848 = !DILocation(line: 2178, column: 5, scope: !4816)
!4849 = distinct !{!4849, !4821, !4850}
!4850 = !DILocation(line: 2193, column: 7, scope: !4817)
!4851 = !DILocation(line: 2196, column: 35, scope: !4760)
!4852 = !DILocation(line: 2196, column: 54, scope: !4760)
!4853 = !DILocation(line: 2196, column: 3, scope: !4760)
!4854 = !DILocation(line: 2198, column: 3, scope: !4760)
!4855 = !DILocation(line: 2198, column: 37, scope: !4760)
!4856 = !DILocation(line: 2199, column: 3, scope: !4760)
!4857 = !DILocation(line: 2199, column: 41, scope: !4760)
!4858 = !DILocation(line: 2200, column: 3, scope: !4760)
!4859 = !DILocation(line: 2200, column: 35, scope: !4760)
!4860 = !DILocation(line: 2201, column: 3, scope: !4760)
!4861 = !DILocation(line: 2201, column: 35, scope: !4760)
!4862 = !DILocation(line: 2202, column: 3, scope: !4760)
!4863 = !DILocation(line: 2204, column: 40, scope: !4760)
!4864 = !DILocation(line: 2209, column: 3, scope: !4760)
!4865 = distinct !DISubprogram(name: "cgraph_lower_function", scope: !3, file: !3, line: 504, type: !2198, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4866)
!4866 = !{!4867}
!4867 = !DILocalVariable(name: "node", arg: 1, scope: !4865, file: !3, line: 504, type: !2053)
!4868 = !DILocation(line: 0, scope: !4865)
!4869 = !DILocation(line: 506, column: 13, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 506, column: 7)
!4871 = !DILocation(line: 506, column: 7, scope: !4870)
!4872 = !DILocation(line: 506, column: 7, scope: !4865)
!4873 = !DILocation(line: 509, column: 13, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 509, column: 7)
!4875 = !DILocation(line: 509, column: 7, scope: !4874)
!4876 = !DILocation(line: 509, column: 7, scope: !4865)
!4877 = !DILocation(line: 510, column: 35, scope: !4874)
!4878 = !DILocation(line: 510, column: 5, scope: !4874)
!4879 = !DILocation(line: 511, column: 3, scope: !4865)
!4880 = !DILocation(line: 513, column: 31, scope: !4865)
!4881 = !DILocation(line: 513, column: 3, scope: !4865)
!4882 = !DILocation(line: 514, column: 17, scope: !4865)
!4883 = !DILocation(line: 515, column: 1, scope: !4865)
!4884 = distinct !DISubprogram(name: "VEC_ipa_opt_pass_heap_free", scope: !1412, file: !1412, line: 177, type: !4885, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4888)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{null, !4887}
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!4888 = !{!4889}
!4889 = !DILocalVariable(name: "vec_", arg: 1, scope: !4884, file: !1412, line: 177, type: !4887)
!4890 = !DILocation(line: 0, scope: !4884)
!4891 = !DILocation(line: 177, column: 1, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4884, file: !1412, line: 177, column: 1)
!4893 = !DILocation(line: 177, column: 1, scope: !4884)
!4894 = distinct !DISubprogram(name: "cgraph_redirect_edge_call_stmt_to_callee", scope: !3, file: !3, line: 2246, type: !4895, scopeLine: 2247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4897)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!988, !2058}
!4897 = !{!4898, !4899, !4900, !4901}
!4898 = !DILocalVariable(name: "e", arg: 1, scope: !4894, file: !3, line: 2246, type: !2058)
!4899 = !DILocalVariable(name: "decl", scope: !4894, file: !3, line: 2248, type: !664)
!4900 = !DILocalVariable(name: "new_stmt", scope: !4894, file: !3, line: 2249, type: !988)
!4901 = !DILocalVariable(name: "gsi", scope: !4894, file: !3, line: 2250, type: !3116)
!4902 = !DILocation(line: 0, scope: !4894)
!4903 = !DILocation(line: 2248, column: 38, scope: !4894)
!4904 = !DILocation(line: 2248, column: 15, scope: !4894)
!4905 = !DILocation(line: 2250, column: 3, scope: !4894)
!4906 = !DILocation(line: 2252, column: 8, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 2252, column: 7)
!4908 = !DILocation(line: 2252, column: 13, scope: !4907)
!4909 = !DILocation(line: 2252, column: 27, scope: !4907)
!4910 = !DILocation(line: 2252, column: 35, scope: !4907)
!4911 = !DILocation(line: 2252, column: 21, scope: !4907)
!4912 = !DILocation(line: 2254, column: 7, scope: !4907)
!4913 = !DILocation(line: 2254, column: 10, scope: !4907)
!4914 = !DILocation(line: 2254, column: 56, scope: !4907)
!4915 = !DILocation(line: 2254, column: 64, scope: !4907)
!4916 = !DILocation(line: 2254, column: 36, scope: !4907)
!4917 = !DILocation(line: 2254, column: 33, scope: !4907)
!4918 = !DILocation(line: 2252, column: 7, scope: !4894)
!4919 = !DILocation(line: 2255, column: 15, scope: !4907)
!4920 = !DILocation(line: 2255, column: 5, scope: !4907)
!4921 = !DILocation(line: 2257, column: 7, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 2257, column: 7)
!4923 = !DILocation(line: 2257, column: 7, scope: !4894)
!4924 = !DILocation(line: 2260, column: 30, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 2258, column: 5)
!4926 = !DILocation(line: 2260, column: 9, scope: !4925)
!4927 = !DILocation(line: 2260, column: 42, scope: !4925)
!4928 = !DILocation(line: 2260, column: 50, scope: !4925)
!4929 = !DILocation(line: 2261, column: 30, scope: !4925)
!4930 = !DILocation(line: 2261, column: 9, scope: !4925)
!4931 = !DILocation(line: 2261, column: 42, scope: !4925)
!4932 = !DILocation(line: 2261, column: 50, scope: !4925)
!4933 = !DILocation(line: 2259, column: 7, scope: !4925)
!4934 = !DILocation(line: 2262, column: 26, scope: !4925)
!4935 = !DILocation(line: 2262, column: 47, scope: !4925)
!4936 = !DILocation(line: 2262, column: 61, scope: !4925)
!4937 = !DILocation(line: 2262, column: 7, scope: !4925)
!4938 = !DILocation(line: 2263, column: 5, scope: !4925)
!4939 = !DILocation(line: 2265, column: 10, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 2265, column: 7)
!4941 = !DILocation(line: 2265, column: 24, scope: !4940)
!4942 = !DILocation(line: 2265, column: 7, scope: !4940)
!4943 = !DILocation(line: 0, scope: !4940)
!4944 = !DILocation(line: 2265, column: 7, scope: !4894)
!4945 = !DILocation(line: 2266, column: 16, scope: !4940)
!4946 = !DILocation(line: 2266, column: 5, scope: !4940)
!4947 = !DILocation(line: 2270, column: 7, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 2270, column: 7)
!4949 = !DILocation(line: 2271, column: 7, scope: !4948)
!4950 = !DILocation(line: 2271, column: 10, scope: !4948)
!4951 = !DILocation(line: 2271, column: 45, scope: !4948)
!4952 = !DILocation(line: 2270, column: 7, scope: !4894)
!4953 = !DILocation(line: 2272, column: 5, scope: !4948)
!4954 = !DILocation(line: 2272, column: 48, scope: !4948)
!4955 = !DILocation(line: 2273, column: 40, scope: !4894)
!4956 = !DILocation(line: 2273, column: 48, scope: !4894)
!4957 = !DILocation(line: 2273, column: 3, scope: !4894)
!4958 = !DILocation(line: 2275, column: 9, scope: !4894)
!4959 = !DILocation(line: 2275, column: 26, scope: !4894)
!4960 = !DILocation(line: 2276, column: 3, scope: !4894)
!4961 = !DILocation(line: 2279, column: 38, scope: !4894)
!4962 = !DILocation(line: 2279, column: 3, scope: !4894)
!4963 = !DILocation(line: 2281, column: 45, scope: !4894)
!4964 = !DILocation(line: 2281, column: 56, scope: !4894)
!4965 = !DILocation(line: 2281, column: 3, scope: !4894)
!4966 = !DILocation(line: 2283, column: 7, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 2283, column: 7)
!4968 = !DILocation(line: 2283, column: 7, scope: !4894)
!4969 = !DILocation(line: 2285, column: 7, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 2284, column: 5)
!4971 = !DILocation(line: 2286, column: 26, scope: !4970)
!4972 = !DILocation(line: 2286, column: 47, scope: !4970)
!4973 = !DILocation(line: 2286, column: 61, scope: !4970)
!4974 = !DILocation(line: 2286, column: 7, scope: !4970)
!4975 = !DILocation(line: 2287, column: 5, scope: !4970)
!4976 = !DILocation(line: 2289, column: 1, scope: !4894)
!4977 = distinct !DISubprogram(name: "gimple_vdef", scope: !584, file: !584, line: 1375, type: !3607, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4978)
!4978 = !{!4979}
!4979 = !DILocalVariable(name: "g", arg: 1, scope: !4977, file: !584, line: 1375, type: !3554)
!4980 = !DILocation(line: 0, scope: !4977)
!4981 = !DILocation(line: 1377, column: 8, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4977, file: !584, line: 1377, column: 7)
!4983 = !DILocation(line: 1377, column: 7, scope: !4977)
!4984 = !DILocation(line: 1379, column: 23, scope: !4977)
!4985 = !DILocation(line: 1379, column: 3, scope: !4977)
!4986 = !DILocation(line: 1380, column: 1, scope: !4977)
!4987 = distinct !DISubprogram(name: "gimple_call_set_fndecl", scope: !584, file: !584, line: 1942, type: !4988, scopeLine: 1943, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4990)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{null, !988, !664}
!4990 = !{!4991, !4992}
!4991 = !DILocalVariable(name: "gs", arg: 1, scope: !4987, file: !584, line: 1942, type: !988)
!4992 = !DILocalVariable(name: "decl", arg: 2, scope: !4987, file: !584, line: 1942, type: !664)
!4993 = !DILocation(line: 0, scope: !4987)
!4994 = !DILocation(line: 1945, column: 51, scope: !4987)
!4995 = !DILocation(line: 1945, column: 25, scope: !4987)
!4996 = !DILocation(line: 1945, column: 3, scope: !4987)
!4997 = !DILocation(line: 1946, column: 1, scope: !4987)
!4998 = distinct !DISubprogram(name: "VEC_ipa_replace_map_p_base_length", scope: !378, file: !378, line: 168, type: !4999, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5003)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!7, !5001}
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2154)
!5003 = !{!5004}
!5004 = !DILocalVariable(name: "vec_", arg: 1, scope: !4998, file: !378, line: 168, type: !5001)
!5005 = !DILocation(line: 0, scope: !4998)
!5006 = !DILocation(line: 168, column: 1, scope: !4998)
!5007 = distinct !DISubprogram(name: "VEC_ipa_replace_map_p_base_index", scope: !378, file: !378, line: 168, type: !5008, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5010)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!2161, !5001, !7}
!5010 = !{!5011, !5012}
!5011 = !DILocalVariable(name: "vec_", arg: 1, scope: !5007, file: !378, line: 168, type: !5001)
!5012 = !DILocalVariable(name: "ix_", arg: 2, scope: !5007, file: !378, line: 168, type: !7)
!5013 = !DILocation(line: 0, scope: !5007)
!5014 = !DILocation(line: 168, column: 1, scope: !5007)
!5015 = distinct !DISubprogram(name: "cgraph_materialize_clone", scope: !3, file: !3, line: 2214, type: !2198, scopeLine: 2215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5016)
!5016 = !{!5017}
!5017 = !DILocalVariable(name: "node", arg: 1, scope: !5015, file: !3, line: 2214, type: !2053)
!5018 = !DILocation(line: 0, scope: !5015)
!5019 = !DILocation(line: 2216, column: 3, scope: !5015)
!5020 = !DILocation(line: 2218, column: 35, scope: !5015)
!5021 = !DILocation(line: 2218, column: 45, scope: !5015)
!5022 = !DILocation(line: 2218, column: 57, scope: !5015)
!5023 = !DILocation(line: 2219, column: 22, scope: !5015)
!5024 = !DILocation(line: 2220, column: 20, scope: !5015)
!5025 = !DILocation(line: 2218, column: 3, scope: !5015)
!5026 = !DILocation(line: 2221, column: 7, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 2221, column: 7)
!5028 = !DILocation(line: 2221, column: 7, scope: !5015)
!5029 = !DILocation(line: 2223, column: 36, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 2222, column: 5)
!5031 = !DILocation(line: 2223, column: 46, scope: !5030)
!5032 = !DILocation(line: 2223, column: 70, scope: !5030)
!5033 = !DILocation(line: 2223, column: 7, scope: !5030)
!5034 = !DILocation(line: 2224, column: 36, scope: !5030)
!5035 = !DILocation(line: 2224, column: 42, scope: !5030)
!5036 = !DILocation(line: 2224, column: 60, scope: !5030)
!5037 = !DILocation(line: 2224, column: 7, scope: !5030)
!5038 = !DILocation(line: 2225, column: 5, scope: !5030)
!5039 = !DILocation(line: 2228, column: 13, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 2228, column: 7)
!5041 = !DILocation(line: 2228, column: 7, scope: !5040)
!5042 = !DILocation(line: 2228, column: 7, scope: !5015)
!5043 = !DILocation(line: 2229, column: 58, scope: !5040)
!5044 = !DILocation(line: 2229, column: 31, scope: !5040)
!5045 = !DILocation(line: 2229, column: 50, scope: !5040)
!5046 = !DILocation(line: 0, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 2230, column: 7)
!5048 = !DILocation(line: 2229, column: 5, scope: !5040)
!5049 = !DILocation(line: 2230, column: 13, scope: !5047)
!5050 = !DILocation(line: 2230, column: 7, scope: !5047)
!5051 = !DILocation(line: 2230, column: 7, scope: !5015)
!5052 = !DILocation(line: 2231, column: 31, scope: !5047)
!5053 = !DILocation(line: 2231, column: 50, scope: !5047)
!5054 = !DILocation(line: 2231, column: 5, scope: !5047)
!5055 = !DILocation(line: 2233, column: 11, scope: !5047)
!5056 = !DILocation(line: 2233, column: 21, scope: !5047)
!5057 = !DILocation(line: 2233, column: 28, scope: !5047)
!5058 = !DILocation(line: 2234, column: 28, scope: !5015)
!5059 = !DILocation(line: 2235, column: 28, scope: !5015)
!5060 = !DILocation(line: 2236, column: 14, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 2236, column: 7)
!5062 = !DILocation(line: 2236, column: 24, scope: !5061)
!5063 = !DILocation(line: 2236, column: 8, scope: !5061)
!5064 = !DILocation(line: 2236, column: 33, scope: !5061)
!5065 = !DILocation(line: 2236, column: 53, scope: !5061)
!5066 = !DILocation(line: 2236, column: 37, scope: !5061)
!5067 = !DILocation(line: 2236, column: 7, scope: !5015)
!5068 = !DILocation(line: 2237, column: 5, scope: !5061)
!5069 = !DILocation(line: 2238, column: 18, scope: !5015)
!5070 = !DILocation(line: 2239, column: 3, scope: !5015)
!5071 = !DILocation(line: 2240, column: 1, scope: !5015)
!5072 = distinct !DISubprogram(name: "VEC_tree_gc_safe_push", scope: !135, file: !135, line: 183, type: !5073, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5076)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!1023, !5075, !664}
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!5076 = !{!5077, !5078}
!5077 = !DILocalVariable(name: "vec_", arg: 1, scope: !5072, file: !135, line: 183, type: !5075)
!5078 = !DILocalVariable(name: "obj_", arg: 2, scope: !5072, file: !135, line: 183, type: !664)
!5079 = !DILocation(line: 0, scope: !5072)
!5080 = !DILocation(line: 183, column: 1, scope: !5072)
!5081 = distinct !DISubprogram(name: "VEC_tree_gc_reserve", scope: !135, file: !135, line: 183, type: !5082, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5084)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!657, !5075, !657}
!5084 = !{!5085, !5086, !5087}
!5085 = !DILocalVariable(name: "vec_", arg: 1, scope: !5081, file: !135, line: 183, type: !5075)
!5086 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5081, file: !135, line: 183, type: !657)
!5087 = !DILocalVariable(name: "extend", scope: !5081, file: !135, line: 183, type: !657)
!5088 = !DILocation(line: 0, scope: !5081)
!5089 = !DILocation(line: 183, column: 1, scope: !5081)
!5090 = !DILocation(line: 183, column: 1, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5081, file: !135, line: 183, column: 1)
!5092 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !135, file: !135, line: 182, type: !5093, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5096)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!1023, !5095, !664}
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!5096 = !{!5097, !5098, !5099}
!5097 = !DILocalVariable(name: "vec_", arg: 1, scope: !5092, file: !135, line: 182, type: !5095)
!5098 = !DILocalVariable(name: "obj_", arg: 2, scope: !5092, file: !135, line: 182, type: !664)
!5099 = !DILocalVariable(name: "slot_", scope: !5092, file: !135, line: 182, type: !1023)
!5100 = !DILocation(line: 0, scope: !5092)
!5101 = !DILocation(line: 182, column: 1, scope: !5092)
!5102 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !135, file: !135, line: 182, type: !5103, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5105)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!657, !5095, !657}
!5105 = !{!5106, !5107}
!5106 = !DILocalVariable(name: "vec_", arg: 1, scope: !5102, file: !135, line: 182, type: !5095)
!5107 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5102, file: !135, line: 182, type: !657)
!5108 = !DILocation(line: 0, scope: !5102)
!5109 = !DILocation(line: 182, column: 1, scope: !5102)
!5110 = distinct !DISubprogram(name: "bb_seq", scope: !584, file: !584, line: 237, type: !5111, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5116)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!978, !5113}
!5113 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !665, line: 112, baseType: !5114)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!5116 = !{!5117}
!5117 = !DILocalVariable(name: "bb", arg: 1, scope: !5110, file: !584, line: 237, type: !5113)
!5118 = !DILocation(line: 0, scope: !5110)
!5119 = !DILocation(line: 239, column: 17, scope: !5110)
!5120 = !DILocation(line: 239, column: 23, scope: !5110)
!5121 = !DILocation(line: 239, column: 33, scope: !5110)
!5122 = !DILocation(line: 239, column: 43, scope: !5110)
!5123 = !DILocation(line: 239, column: 36, scope: !5110)
!5124 = !DILocation(line: 239, column: 10, scope: !5110)
!5125 = !DILocation(line: 239, column: 68, scope: !5110)
!5126 = !DILocation(line: 239, column: 3, scope: !5110)
!5127 = distinct !DISubprogram(name: "gimple_seq_first", scope: !584, file: !584, line: 159, type: !5128, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5133)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!983, !5130}
!5130 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !665, line: 67, baseType: !5131)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!5133 = !{!5134}
!5134 = !DILocalVariable(name: "s", arg: 1, scope: !5127, file: !584, line: 159, type: !5130)
!5135 = !DILocation(line: 0, scope: !5127)
!5136 = !DILocation(line: 161, column: 10, scope: !5127)
!5137 = !DILocation(line: 161, column: 17, scope: !5127)
!5138 = !DILocation(line: 161, column: 3, scope: !5127)
!5139 = distinct !DISubprogram(name: "gimple_code", scope: !584, file: !584, line: 1052, type: !5140, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5142)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{!583, !3554}
!5142 = !{!5143}
!5143 = !DILocalVariable(name: "g", arg: 1, scope: !5139, file: !584, line: 1052, type: !3554)
!5144 = !DILocation(line: 0, scope: !5139)
!5145 = !DILocation(line: 1054, column: 20, scope: !5139)
!5146 = !DILocation(line: 1054, column: 3, scope: !5139)
!5147 = distinct !DISubprogram(name: "gimple_call_fn", scope: !584, file: !584, line: 1911, type: !3607, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5148)
!5148 = !{!5149}
!5149 = !DILocalVariable(name: "gs", arg: 1, scope: !5147, file: !584, line: 1911, type: !3554)
!5150 = !DILocation(line: 0, scope: !5147)
!5151 = !DILocation(line: 1914, column: 10, scope: !5147)
!5152 = !DILocation(line: 1914, column: 3, scope: !5147)
!5153 = distinct !DISubprogram(name: "gimple_op", scope: !584, file: !584, line: 1631, type: !5154, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5156)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!664, !3554, !7}
!5156 = !{!5157, !5158}
!5157 = !DILocalVariable(name: "gs", arg: 1, scope: !5153, file: !584, line: 1631, type: !3554)
!5158 = !DILocalVariable(name: "i", arg: 2, scope: !5153, file: !584, line: 1631, type: !7)
!5159 = !DILocation(line: 0, scope: !5153)
!5160 = !DILocation(line: 1633, column: 7, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5153, file: !584, line: 1633, column: 7)
!5162 = !DILocation(line: 1633, column: 7, scope: !5153)
!5163 = !DILocation(line: 1638, column: 14, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5161, file: !584, line: 1634, column: 5)
!5165 = !DILocation(line: 1638, column: 7, scope: !5164)
!5166 = !DILocation(line: 0, scope: !5161)
!5167 = !DILocation(line: 1642, column: 1, scope: !5153)
!5168 = distinct !DISubprogram(name: "gimple_has_ops", scope: !584, file: !584, line: 1274, type: !3598, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5169)
!5169 = !{!5170}
!5170 = !DILocalVariable(name: "g", arg: 1, scope: !5168, file: !584, line: 1274, type: !3554)
!5171 = !DILocation(line: 0, scope: !5168)
!5172 = !DILocation(line: 1276, column: 10, scope: !5168)
!5173 = !DILocation(line: 1276, column: 26, scope: !5168)
!5174 = !DILocation(line: 1276, column: 41, scope: !5168)
!5175 = !DILocation(line: 1276, column: 44, scope: !5168)
!5176 = !DILocation(line: 1276, column: 60, scope: !5168)
!5177 = !DILocation(line: 1276, column: 3, scope: !5168)
!5178 = distinct !DISubprogram(name: "gimple_ops", scope: !584, file: !584, line: 1614, type: !5179, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5181)
!5179 = !DISubroutineType(types: !5180)
!5180 = !{!1023, !988}
!5181 = !{!5182, !5183}
!5182 = !DILocalVariable(name: "gs", arg: 1, scope: !5178, file: !584, line: 1614, type: !988)
!5183 = !DILocalVariable(name: "off", scope: !5178, file: !584, line: 1616, type: !1134)
!5184 = !DILocation(line: 0, scope: !5178)
!5185 = !DILocation(line: 1621, column: 28, scope: !5178)
!5186 = !DILocation(line: 1621, column: 9, scope: !5178)
!5187 = !DILocation(line: 1622, column: 3, scope: !5178)
!5188 = !DILocation(line: 1624, column: 20, scope: !5178)
!5189 = !DILocation(line: 1624, column: 32, scope: !5178)
!5190 = !DILocation(line: 1624, column: 10, scope: !5178)
!5191 = !DILocation(line: 1624, column: 3, scope: !5178)
!5192 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !584, file: !584, line: 1073, type: !5193, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5195)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!622, !988}
!5195 = !{!5196}
!5196 = !DILocalVariable(name: "gs", arg: 1, scope: !5192, file: !584, line: 1073, type: !988)
!5197 = !DILocation(line: 0, scope: !5192)
!5198 = !DILocation(line: 1075, column: 24, scope: !5192)
!5199 = !DILocation(line: 1075, column: 10, scope: !5192)
!5200 = !DILocation(line: 1075, column: 3, scope: !5192)
!5201 = distinct !DISubprogram(name: "gss_for_code", scope: !584, file: !584, line: 1061, type: !5202, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5204)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!622, !583}
!5204 = !{!5205}
!5205 = !DILocalVariable(name: "code", arg: 1, scope: !5201, file: !584, line: 1061, type: !583)
!5206 = !DILocation(line: 0, scope: !5201)
!5207 = !DILocation(line: 1066, column: 10, scope: !5201)
!5208 = !DILocation(line: 1066, column: 3, scope: !5201)
!5209 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !135, file: !135, line: 182, type: !5210, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5214)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!7, !5212}
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!5214 = !{!5215}
!5215 = !DILocalVariable(name: "vec_", arg: 1, scope: !5209, file: !135, line: 182, type: !5212)
!5216 = !DILocation(line: 0, scope: !5209)
!5217 = !DILocation(line: 182, column: 1, scope: !5209)
!5218 = distinct !DISubprogram(name: "VEC_tree_base_address", scope: !135, file: !135, line: 182, type: !5219, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5221)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!1023, !5095}
!5221 = !{!5222}
!5222 = !DILocalVariable(name: "vec_", arg: 1, scope: !5218, file: !135, line: 182, type: !5095)
!5223 = !DILocation(line: 0, scope: !5218)
!5224 = !DILocation(line: 182, column: 1, scope: !5218)
!5225 = distinct !DISubprogram(name: "compare_ctor", scope: !3, file: !3, line: 235, type: !1468, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5226)
!5226 = !{!5227, !5228, !5229, !5230, !5231, !5232}
!5227 = !DILocalVariable(name: "p1", arg: 1, scope: !5225, file: !3, line: 235, type: !1295)
!5228 = !DILocalVariable(name: "p2", arg: 2, scope: !5225, file: !3, line: 235, type: !1295)
!5229 = !DILocalVariable(name: "f1", scope: !5225, file: !3, line: 237, type: !664)
!5230 = !DILocalVariable(name: "f2", scope: !5225, file: !3, line: 238, type: !664)
!5231 = !DILocalVariable(name: "priority1", scope: !5225, file: !3, line: 239, type: !657)
!5232 = !DILocalVariable(name: "priority2", scope: !5225, file: !3, line: 240, type: !657)
!5233 = !DILocation(line: 0, scope: !5225)
!5234 = !DILocation(line: 242, column: 9, scope: !5225)
!5235 = !DILocation(line: 242, column: 8, scope: !5225)
!5236 = !DILocation(line: 243, column: 9, scope: !5225)
!5237 = !DILocation(line: 243, column: 8, scope: !5225)
!5238 = !DILocation(line: 244, column: 15, scope: !5225)
!5239 = !DILocation(line: 245, column: 15, scope: !5225)
!5240 = !DILocation(line: 247, column: 17, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 247, column: 7)
!5242 = !DILocation(line: 247, column: 7, scope: !5225)
!5243 = !DILocation(line: 249, column: 22, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 249, column: 12)
!5245 = !DILocation(line: 249, column: 12, scope: !5241)
!5246 = !DILocation(line: 253, column: 29, scope: !5244)
!5247 = !DILocation(line: 253, column: 12, scope: !5244)
!5248 = !DILocation(line: 253, column: 5, scope: !5244)
!5249 = !DILocation(line: 0, scope: !5241)
!5250 = !DILocation(line: 254, column: 1, scope: !5225)
!5251 = distinct !DISubprogram(name: "build_cdtor", scope: !3, file: !3, line: 193, type: !5252, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5254)
!5252 = !DISubroutineType(types: !5253)
!5253 = !{null, !656, !1023, !1134}
!5254 = !{!5255, !5256, !5257, !5258, !5259, !5261, !5262, !5264}
!5255 = !DILocalVariable(name: "ctor_p", arg: 1, scope: !5251, file: !3, line: 193, type: !656)
!5256 = !DILocalVariable(name: "cdtors", arg: 2, scope: !5251, file: !3, line: 193, type: !1023)
!5257 = !DILocalVariable(name: "len", arg: 3, scope: !5251, file: !3, line: 193, type: !1134)
!5258 = !DILocalVariable(name: "i", scope: !5251, file: !3, line: 195, type: !1134)
!5259 = !DILocalVariable(name: "body", scope: !5260, file: !3, line: 200, type: !664)
!5260 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 199, column: 5)
!5261 = !DILocalVariable(name: "fn", scope: !5260, file: !3, line: 201, type: !664)
!5262 = !DILocalVariable(name: "priority", scope: !5260, file: !3, line: 202, type: !5263)
!5263 = !DIDerivedType(tag: DW_TAG_typedef, name: "priority_type", file: !135, line: 3039, baseType: !2076)
!5264 = !DILocalVariable(name: "p", scope: !5265, file: !3, line: 210, type: !5263)
!5265 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 209, column: 2)
!5266 = !DILocation(line: 0, scope: !5251)
!5267 = !DILocation(line: 0, scope: !5260)
!5268 = !DILocation(line: 0, scope: !5265)
!5269 = !DILocation(line: 198, column: 3, scope: !5251)
!5270 = !DILocation(line: 197, column: 5, scope: !5251)
!5271 = !DILocation(line: 198, column: 12, scope: !5251)
!5272 = !DILocation(line: 200, column: 7, scope: !5260)
!5273 = !DILocation(line: 205, column: 12, scope: !5260)
!5274 = !DILocation(line: 208, column: 7, scope: !5260)
!5275 = !DILocation(line: 223, column: 7, scope: !5260)
!5276 = !DILocation(line: 226, column: 54, scope: !5260)
!5277 = !DILocation(line: 226, column: 60, scope: !5260)
!5278 = !DILocation(line: 226, column: 7, scope: !5260)
!5279 = !DILocation(line: 227, column: 5, scope: !5251)
!5280 = distinct !{!5280, !5269, !5279}
!5281 = !DILocation(line: 204, column: 16, scope: !5260)
!5282 = !DILocation(line: 211, column: 9, scope: !5265)
!5283 = !DILocation(line: 212, column: 43, scope: !5265)
!5284 = !DILocation(line: 213, column: 9, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 213, column: 8)
!5286 = !DILocation(line: 213, column: 8, scope: !5265)
!5287 = !DILocation(line: 215, column: 15, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 215, column: 13)
!5289 = !DILocation(line: 215, column: 13, scope: !5285)
!5290 = !DILocation(line: 217, column: 30, scope: !5265)
!5291 = !DILocation(line: 217, column: 4, scope: !5265)
!5292 = !DILocation(line: 220, column: 4, scope: !5265)
!5293 = !DILocation(line: 221, column: 2, scope: !5260)
!5294 = !DILocation(line: 222, column: 16, scope: !5260)
!5295 = distinct !{!5295, !5274, !5296}
!5296 = !DILocation(line: 222, column: 21, scope: !5260)
!5297 = !DILocation(line: 228, column: 1, scope: !5251)
!5298 = !DILocation(line: 212, column: 17, scope: !5265)
!5299 = distinct !DISubprogram(name: "VEC_tree_base_truncate", scope: !135, file: !135, line: 182, type: !5300, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5302)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{null, !5095, !7}
!5302 = !{!5303, !5304}
!5303 = !DILocalVariable(name: "vec_", arg: 1, scope: !5299, file: !135, line: 182, type: !5095)
!5304 = !DILocalVariable(name: "size_", arg: 2, scope: !5299, file: !135, line: 182, type: !7)
!5305 = !DILocation(line: 0, scope: !5299)
!5306 = !DILocation(line: 182, column: 1, scope: !5299)
!5307 = !DILocation(line: 182, column: 1, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5299, file: !135, line: 182, column: 1)
!5309 = distinct !DISubprogram(name: "compare_dtor", scope: !3, file: !3, line: 261, type: !1468, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5310)
!5310 = !{!5311, !5312, !5313, !5314, !5315, !5316}
!5311 = !DILocalVariable(name: "p1", arg: 1, scope: !5309, file: !3, line: 261, type: !1295)
!5312 = !DILocalVariable(name: "p2", arg: 2, scope: !5309, file: !3, line: 261, type: !1295)
!5313 = !DILocalVariable(name: "f1", scope: !5309, file: !3, line: 263, type: !664)
!5314 = !DILocalVariable(name: "f2", scope: !5309, file: !3, line: 264, type: !664)
!5315 = !DILocalVariable(name: "priority1", scope: !5309, file: !3, line: 265, type: !657)
!5316 = !DILocalVariable(name: "priority2", scope: !5309, file: !3, line: 266, type: !657)
!5317 = !DILocation(line: 0, scope: !5309)
!5318 = !DILocation(line: 268, column: 9, scope: !5309)
!5319 = !DILocation(line: 268, column: 8, scope: !5309)
!5320 = !DILocation(line: 269, column: 9, scope: !5309)
!5321 = !DILocation(line: 269, column: 8, scope: !5309)
!5322 = !DILocation(line: 270, column: 15, scope: !5309)
!5323 = !DILocation(line: 271, column: 15, scope: !5309)
!5324 = !DILocation(line: 273, column: 17, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 273, column: 7)
!5326 = !DILocation(line: 273, column: 7, scope: !5309)
!5327 = !DILocation(line: 275, column: 22, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 275, column: 12)
!5329 = !DILocation(line: 275, column: 12, scope: !5325)
!5330 = !DILocation(line: 279, column: 29, scope: !5328)
!5331 = !DILocation(line: 279, column: 12, scope: !5328)
!5332 = !DILocation(line: 279, column: 5, scope: !5328)
!5333 = !DILocation(line: 0, scope: !5325)
!5334 = !DILocation(line: 280, column: 1, scope: !5309)
!5335 = distinct !DISubprogram(name: "process_function_and_variable_attributes", scope: !3, file: !3, line: 896, type: !5336, scopeLine: 898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5338)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{null, !2053, !2214}
!5338 = !{!5339, !5340, !5341, !5342, !5343, !5347}
!5339 = !DILocalVariable(name: "first", arg: 1, scope: !5335, file: !3, line: 896, type: !2053)
!5340 = !DILocalVariable(name: "first_var", arg: 2, scope: !5335, file: !3, line: 897, type: !2214)
!5341 = !DILocalVariable(name: "node", scope: !5335, file: !3, line: 899, type: !2053)
!5342 = !DILocalVariable(name: "vnode", scope: !5335, file: !3, line: 900, type: !2214)
!5343 = !DILocalVariable(name: "decl", scope: !5344, file: !3, line: 904, type: !664)
!5344 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 903, column: 5)
!5345 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 902, column: 3)
!5346 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 902, column: 3)
!5347 = !DILocalVariable(name: "decl", scope: !5348, file: !3, line: 923, type: !664)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 922, column: 5)
!5349 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 921, column: 3)
!5350 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 921, column: 3)
!5351 = !DILocation(line: 0, scope: !5335)
!5352 = !DILocation(line: 902, column: 8, scope: !5346)
!5353 = !DILocation(line: 0, scope: !5346)
!5354 = !DILocation(line: 902, column: 34, scope: !5345)
!5355 = !DILocation(line: 902, column: 3, scope: !5346)
!5356 = !DILocation(line: 904, column: 25, scope: !5344)
!5357 = !DILocation(line: 0, scope: !5344)
!5358 = !DILocation(line: 905, column: 11, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 905, column: 11)
!5360 = !DILocation(line: 905, column: 11, scope: !5344)
!5361 = !DILocation(line: 907, column: 4, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 906, column: 2)
!5363 = !DILocation(line: 908, column: 20, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 908, column: 8)
!5365 = !DILocation(line: 908, column: 8, scope: !5364)
!5366 = !DILocation(line: 908, column: 8, scope: !5362)
!5367 = !DILocation(line: 909, column: 7, scope: !5364)
!5368 = !DILocation(line: 911, column: 51, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 911, column: 11)
!5370 = !DILocation(line: 911, column: 11, scope: !5369)
!5371 = !DILocation(line: 911, column: 11, scope: !5344)
!5372 = !DILocation(line: 913, column: 10, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 913, column: 8)
!5374 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 912, column: 2)
!5375 = !DILocation(line: 913, column: 8, scope: !5374)
!5376 = !DILocation(line: 914, column: 18, scope: !5373)
!5377 = !DILocation(line: 914, column: 6, scope: !5373)
!5378 = !DILocation(line: 917, column: 25, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 917, column: 13)
!5380 = !DILocation(line: 917, column: 13, scope: !5379)
!5381 = !DILocation(line: 917, column: 13, scope: !5373)
!5382 = !DILocation(line: 918, column: 7, scope: !5379)
!5383 = !DILocation(line: 902, column: 57, scope: !5345)
!5384 = !DILocation(line: 902, column: 3, scope: !5345)
!5385 = distinct !{!5385, !5355, !5386}
!5386 = !DILocation(line: 920, column: 5, scope: !5346)
!5387 = !DILocation(line: 921, column: 8, scope: !5350)
!5388 = !DILocation(line: 0, scope: !5350)
!5389 = !DILocation(line: 921, column: 37, scope: !5349)
!5390 = !DILocation(line: 921, column: 3, scope: !5350)
!5391 = !DILocation(line: 923, column: 26, scope: !5348)
!5392 = !DILocation(line: 0, scope: !5348)
!5393 = !DILocation(line: 924, column: 11, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 924, column: 11)
!5395 = !DILocation(line: 924, column: 11, scope: !5348)
!5396 = !DILocation(line: 926, column: 4, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 925, column: 2)
!5398 = !DILocation(line: 927, column: 11, scope: !5397)
!5399 = !DILocation(line: 927, column: 24, scope: !5397)
!5400 = !DILocation(line: 928, column: 15, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 928, column: 8)
!5402 = !DILocation(line: 928, column: 8, scope: !5401)
!5403 = !DILocation(line: 928, column: 8, scope: !5397)
!5404 = !DILocation(line: 929, column: 6, scope: !5401)
!5405 = !DILocation(line: 931, column: 51, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 931, column: 11)
!5407 = !DILocation(line: 931, column: 11, scope: !5406)
!5408 = !DILocation(line: 931, column: 11, scope: !5348)
!5409 = !DILocation(line: 933, column: 10, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 933, column: 8)
!5411 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 932, column: 2)
!5412 = !DILocation(line: 933, column: 8, scope: !5411)
!5413 = !DILocation(line: 934, column: 18, scope: !5410)
!5414 = !DILocation(line: 934, column: 6, scope: !5410)
!5415 = !DILocation(line: 937, column: 20, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 937, column: 13)
!5417 = !DILocation(line: 937, column: 13, scope: !5416)
!5418 = !DILocation(line: 937, column: 13, scope: !5410)
!5419 = !DILocation(line: 938, column: 6, scope: !5416)
!5420 = !DILocation(line: 921, column: 66, scope: !5349)
!5421 = !DILocation(line: 921, column: 3, scope: !5349)
!5422 = distinct !{!5422, !5390, !5423}
!5423 = !DILocation(line: 940, column: 5, scope: !5350)
!5424 = !DILocation(line: 941, column: 1, scope: !5335)
!5425 = distinct !DISubprogram(name: "assemble_thunk", scope: !3, file: !3, line: 1370, type: !2198, scopeLine: 1371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5426)
!5426 = !{!5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5438, !5439, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5457, !5460}
!5427 = !DILocalVariable(name: "node", arg: 1, scope: !5425, file: !3, line: 1370, type: !2053)
!5428 = !DILocalVariable(name: "this_adjusting", scope: !5425, file: !3, line: 1372, type: !656)
!5429 = !DILocalVariable(name: "fixed_offset", scope: !5425, file: !3, line: 1373, type: !720)
!5430 = !DILocalVariable(name: "virtual_value", scope: !5425, file: !3, line: 1374, type: !720)
!5431 = !DILocalVariable(name: "virtual_offset", scope: !5425, file: !3, line: 1375, type: !664)
!5432 = !DILocalVariable(name: "alias", scope: !5425, file: !3, line: 1376, type: !664)
!5433 = !DILocalVariable(name: "thunk_fndecl", scope: !5425, file: !3, line: 1377, type: !664)
!5434 = !DILocalVariable(name: "a", scope: !5425, file: !3, line: 1378, type: !664)
!5435 = !DILocalVariable(name: "fnname", scope: !5436, file: !3, line: 1386, type: !662)
!5436 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 1385, column: 5)
!5437 = distinct !DILexicalBlock(scope: !5425, file: !3, line: 1382, column: 7)
!5438 = !DILocalVariable(name: "fn_block", scope: !5436, file: !3, line: 1387, type: !664)
!5439 = !DILocalVariable(name: "restype", scope: !5440, file: !3, line: 1414, type: !664)
!5440 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 1413, column: 5)
!5441 = !DILocalVariable(name: "bb", scope: !5440, file: !3, line: 1415, type: !1422)
!5442 = !DILocalVariable(name: "then_bb", scope: !5440, file: !3, line: 1415, type: !1422)
!5443 = !DILocalVariable(name: "else_bb", scope: !5440, file: !3, line: 1415, type: !1422)
!5444 = !DILocalVariable(name: "return_bb", scope: !5440, file: !3, line: 1415, type: !1422)
!5445 = !DILocalVariable(name: "bsi", scope: !5440, file: !3, line: 1416, type: !3116)
!5446 = !DILocalVariable(name: "nargs", scope: !5440, file: !3, line: 1417, type: !657)
!5447 = !DILocalVariable(name: "arg", scope: !5440, file: !3, line: 1418, type: !664)
!5448 = !DILocalVariable(name: "i", scope: !5440, file: !3, line: 1419, type: !657)
!5449 = !DILocalVariable(name: "resdecl", scope: !5440, file: !3, line: 1420, type: !664)
!5450 = !DILocalVariable(name: "restmp", scope: !5440, file: !3, line: 1421, type: !664)
!5451 = !DILocalVariable(name: "vargs", scope: !5440, file: !3, line: 1422, type: !1995)
!5452 = !DILocalVariable(name: "call", scope: !5440, file: !3, line: 1424, type: !988)
!5453 = !DILocalVariable(name: "ret", scope: !5440, file: !3, line: 1425, type: !988)
!5454 = !DILocalVariable(name: "true_label", scope: !5455, file: !3, line: 1487, type: !664)
!5455 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 1486, column: 9)
!5456 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 1485, column: 11)
!5457 = !DILocalVariable(name: "stmt", scope: !5458, file: !3, line: 1491, type: !988)
!5458 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 1490, column: 6)
!5459 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 1489, column: 8)
!5460 = !DILocalVariable(name: "stmt", scope: !5461, file: !3, line: 1518, type: !988)
!5461 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 1517, column: 6)
!5462 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 1516, column: 8)
!5463 = !DILocation(line: 0, scope: !5425)
!5464 = !DILocation(line: 1372, column: 37, scope: !5425)
!5465 = !DILocation(line: 1373, column: 44, scope: !5425)
!5466 = !DILocation(line: 1374, column: 45, scope: !5425)
!5467 = !DILocation(line: 1376, column: 28, scope: !5425)
!5468 = !DILocation(line: 1377, column: 29, scope: !5425)
!5469 = !DILocation(line: 1378, column: 12, scope: !5425)
!5470 = !DILocation(line: 1380, column: 25, scope: !5425)
!5471 = !DILocation(line: 1382, column: 7, scope: !5437)
!5472 = !DILocation(line: 1383, column: 7, scope: !5437)
!5473 = !DILocation(line: 1383, column: 26, scope: !5437)
!5474 = !DILocation(line: 1383, column: 10, scope: !5437)
!5475 = !DILocation(line: 1382, column: 7, scope: !5425)
!5476 = !DILocation(line: 1390, column: 4, scope: !5436)
!5477 = !DILocation(line: 1389, column: 7, scope: !5436)
!5478 = !DILocation(line: 1390, column: 2, scope: !5436)
!5479 = !DILocation(line: 1392, column: 16, scope: !5436)
!5480 = !DILocation(line: 0, scope: !5436)
!5481 = !DILocation(line: 1396, column: 18, scope: !5436)
!5482 = !DILocation(line: 1397, column: 7, scope: !5436)
!5483 = !DILocation(line: 1397, column: 29, scope: !5436)
!5484 = !DILocation(line: 1398, column: 7, scope: !5436)
!5485 = !DILocation(line: 1398, column: 35, scope: !5436)
!5486 = !DILocation(line: 1399, column: 7, scope: !5436)
!5487 = !DILocation(line: 1400, column: 7, scope: !5436)
!5488 = !DILocation(line: 1400, column: 13, scope: !5436)
!5489 = !DILocation(line: 1400, column: 22, scope: !5436)
!5490 = !DILocation(line: 1401, column: 7, scope: !5436)
!5491 = !DILocation(line: 1403, column: 23, scope: !5436)
!5492 = !DILocation(line: 1403, column: 40, scope: !5436)
!5493 = !DILocation(line: 1403, column: 7, scope: !5436)
!5494 = !DILocation(line: 1406, column: 7, scope: !5436)
!5495 = !DILocation(line: 1407, column: 7, scope: !5436)
!5496 = !DILocation(line: 1408, column: 31, scope: !5436)
!5497 = !DILocation(line: 1408, column: 7, scope: !5436)
!5498 = !DILocation(line: 1409, column: 7, scope: !5436)
!5499 = !DILocation(line: 1410, column: 7, scope: !5436)
!5500 = !DILocation(line: 1410, column: 39, scope: !5436)
!5501 = !DILocation(line: 1411, column: 5, scope: !5436)
!5502 = !DILocation(line: 1416, column: 7, scope: !5440)
!5503 = !DILocation(line: 0, scope: !5440)
!5504 = !DILocation(line: 1422, column: 7, scope: !5440)
!5505 = !DILocation(line: 1427, column: 7, scope: !5440)
!5506 = !DILocation(line: 1427, column: 37, scope: !5440)
!5507 = !DILocation(line: 1428, column: 7, scope: !5440)
!5508 = !DILocation(line: 1430, column: 23, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 1430, column: 11)
!5510 = !DILocation(line: 1430, column: 11, scope: !5509)
!5511 = !DILocation(line: 1430, column: 11, scope: !5440)
!5512 = !DILocation(line: 1431, column: 26, scope: !5509)
!5513 = !DILocation(line: 1431, column: 9, scope: !5509)
!5514 = !DILocation(line: 1434, column: 17, scope: !5440)
!5515 = !DILocation(line: 1435, column: 11, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 1435, column: 11)
!5517 = !DILocation(line: 1435, column: 38, scope: !5516)
!5518 = !DILocation(line: 1435, column: 11, scope: !5440)
!5519 = !DILocation(line: 1437, column: 14, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 1436, column: 2)
!5521 = !DILocation(line: 1438, column: 4, scope: !5520)
!5522 = !DILocation(line: 1438, column: 30, scope: !5520)
!5523 = !DILocation(line: 1439, column: 29, scope: !5520)
!5524 = !DILocation(line: 1440, column: 31, scope: !5520)
!5525 = !DILocation(line: 1441, column: 2, scope: !5520)
!5526 = !DILocation(line: 0, scope: !5516)
!5527 = !DILocation(line: 1445, column: 44, scope: !5440)
!5528 = !DILocation(line: 1447, column: 13, scope: !5440)
!5529 = !DILocation(line: 1450, column: 12, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 1450, column: 11)
!5531 = !DILocation(line: 1450, column: 11, scope: !5440)
!5532 = !DILocation(line: 1452, column: 9, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 1452, column: 8)
!5534 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 1451, column: 2)
!5535 = !DILocation(line: 1452, column: 8, scope: !5534)
!5536 = !DILocation(line: 1455, column: 28, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 1453, column: 6)
!5538 = !DILocation(line: 1455, column: 8, scope: !5537)
!5539 = !DILocation(line: 1455, column: 14, scope: !5537)
!5540 = !DILocation(line: 1455, column: 26, scope: !5537)
!5541 = !DILocation(line: 1456, column: 8, scope: !5537)
!5542 = !DILocation(line: 1456, column: 58, scope: !5537)
!5543 = !DILocation(line: 1457, column: 6, scope: !5537)
!5544 = !DILocation(line: 1459, column: 22, scope: !5533)
!5545 = !DILocation(line: 1462, column: 12, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 1462, column: 7)
!5547 = !DILocation(line: 0, scope: !5546)
!5548 = !DILocation(line: 1462, column: 7, scope: !5546)
!5549 = !DILocation(line: 1463, column: 14, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 1462, column: 7)
!5551 = !DILocation(line: 1462, column: 32, scope: !5550)
!5552 = !DILocation(line: 1462, column: 7, scope: !5550)
!5553 = distinct !{!5553, !5548, !5554}
!5554 = !DILocation(line: 1463, column: 14, scope: !5546)
!5555 = !DILocation(line: 1464, column: 15, scope: !5440)
!5556 = !DILocation(line: 1464, column: 13, scope: !5440)
!5557 = !DILocation(line: 0, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 1465, column: 11)
!5559 = !DILocation(line: 1465, column: 11, scope: !5440)
!5560 = !DILocation(line: 1466, column: 9, scope: !5558)
!5561 = !DILocation(line: 1471, column: 9, scope: !5558)
!5562 = !DILocation(line: 1472, column: 12, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 1472, column: 7)
!5564 = !DILocation(line: 0, scope: !5563)
!5565 = !DILocation(line: 1472, column: 43, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5563, file: !3, line: 1472, column: 7)
!5567 = !DILocation(line: 1472, column: 7, scope: !5563)
!5568 = !DILocation(line: 1473, column: 9, scope: !5566)
!5569 = !DILocation(line: 1472, column: 53, scope: !5566)
!5570 = !DILocation(line: 1472, column: 7, scope: !5566)
!5571 = distinct !{!5571, !5567, !5572}
!5572 = !DILocation(line: 1473, column: 9, scope: !5563)
!5573 = !DILocation(line: 1474, column: 37, scope: !5440)
!5574 = !DILocation(line: 1474, column: 74, scope: !5440)
!5575 = !DILocation(line: 1474, column: 14, scope: !5440)
!5576 = !DILocation(line: 1475, column: 7, scope: !5440)
!5577 = !DILocation(line: 1476, column: 7, scope: !5440)
!5578 = !DILocation(line: 1477, column: 7, scope: !5440)
!5579 = !DILocation(line: 1478, column: 11, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 1478, column: 11)
!5581 = !DILocation(line: 1478, column: 11, scope: !5440)
!5582 = !DILocation(line: 1479, column: 9, scope: !5580)
!5583 = !DILocation(line: 1480, column: 7, scope: !5440)
!5584 = !DILocation(line: 1481, column: 7, scope: !5440)
!5585 = !DILocation(line: 1482, column: 7, scope: !5440)
!5586 = !DILocation(line: 1483, column: 7, scope: !5440)
!5587 = !DILocation(line: 1485, column: 22, scope: !5456)
!5588 = !DILocation(line: 1485, column: 18, scope: !5456)
!5589 = !DILocation(line: 0, scope: !5455)
!5590 = !DILocation(line: 1489, column: 8, scope: !5459)
!5591 = !DILocation(line: 1489, column: 39, scope: !5459)
!5592 = !DILocation(line: 1489, column: 8, scope: !5455)
!5593 = !DILocation(line: 1496, column: 18, scope: !5458)
!5594 = !DILocation(line: 1497, column: 20, scope: !5458)
!5595 = !DILocation(line: 1498, column: 18, scope: !5458)
!5596 = !DILocation(line: 1499, column: 21, scope: !5458)
!5597 = !DILocation(line: 1499, column: 8, scope: !5458)
!5598 = !DILocation(line: 1500, column: 21, scope: !5458)
!5599 = !DILocation(line: 1502, column: 12, scope: !5458)
!5600 = !DILocation(line: 1501, column: 15, scope: !5458)
!5601 = !DILocation(line: 0, scope: !5458)
!5602 = !DILocation(line: 1505, column: 8, scope: !5458)
!5603 = !DILocation(line: 1506, column: 8, scope: !5458)
!5604 = !DILocation(line: 1507, column: 8, scope: !5458)
!5605 = !DILocation(line: 1508, column: 30, scope: !5458)
!5606 = !DILocation(line: 1508, column: 8, scope: !5458)
!5607 = !DILocation(line: 1509, column: 8, scope: !5458)
!5608 = !DILocation(line: 1510, column: 8, scope: !5458)
!5609 = !DILocation(line: 1511, column: 14, scope: !5458)
!5610 = !DILocation(line: 1512, column: 6, scope: !5458)
!5611 = !DILocation(line: 1514, column: 13, scope: !5455)
!5612 = !DILocation(line: 1516, column: 8, scope: !5455)
!5613 = !DILocation(line: 1519, column: 14, scope: !5461)
!5614 = !DILocation(line: 1520, column: 15, scope: !5461)
!5615 = !DILocation(line: 0, scope: !5461)
!5616 = !DILocation(line: 1522, column: 8, scope: !5461)
!5617 = !DILocation(line: 1523, column: 14, scope: !5461)
!5618 = !DILocation(line: 1524, column: 6, scope: !5461)
!5619 = !DILocation(line: 1527, column: 9, scope: !5456)
!5620 = !DILocation(line: 1530, column: 13, scope: !5440)
!5621 = !DILocation(line: 1531, column: 7, scope: !5440)
!5622 = !DILocation(line: 1533, column: 7, scope: !5440)
!5623 = !DILocation(line: 1534, column: 7, scope: !5440)
!5624 = !DILocation(line: 1536, column: 7, scope: !5440)
!5625 = !DILocation(line: 1539, column: 7, scope: !5440)
!5626 = !DILocation(line: 1540, column: 7, scope: !5440)
!5627 = !DILocation(line: 1541, column: 7, scope: !5440)
!5628 = !DILocation(line: 1542, column: 5, scope: !5437)
!5629 = !DILocation(line: 1543, column: 25, scope: !5425)
!5630 = !DILocation(line: 1544, column: 1, scope: !5425)
!5631 = distinct !DISubprogram(name: "init_lowered_empty_function", scope: !3, file: !3, line: 1211, type: !5632, scopeLine: 1212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5634)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!1422, !664}
!5634 = !{!5635, !5636}
!5635 = !DILocalVariable(name: "decl", arg: 1, scope: !5631, file: !3, line: 1211, type: !664)
!5636 = !DILocalVariable(name: "bb", scope: !5631, file: !3, line: 1213, type: !1422)
!5637 = !DILocation(line: 0, scope: !5631)
!5638 = !DILocation(line: 1215, column: 25, scope: !5631)
!5639 = !DILocation(line: 1216, column: 3, scope: !5631)
!5640 = !DILocation(line: 1217, column: 3, scope: !5631)
!5641 = !DILocation(line: 1218, column: 3, scope: !5631)
!5642 = !DILocation(line: 1219, column: 18, scope: !5631)
!5643 = !DILocation(line: 1219, column: 3, scope: !5631)
!5644 = !DILocation(line: 1220, column: 3, scope: !5631)
!5645 = !DILocation(line: 1221, column: 3, scope: !5631)
!5646 = !DILocation(line: 1221, column: 9, scope: !5631)
!5647 = !DILocation(line: 1221, column: 20, scope: !5631)
!5648 = !DILocation(line: 1221, column: 29, scope: !5631)
!5649 = !DILocation(line: 1222, column: 25, scope: !5631)
!5650 = !DILocation(line: 1222, column: 3, scope: !5631)
!5651 = !DILocation(line: 1222, column: 23, scope: !5631)
!5652 = !DILocation(line: 1224, column: 28, scope: !5631)
!5653 = !DILocation(line: 1224, column: 3, scope: !5631)
!5654 = !DILocation(line: 1224, column: 26, scope: !5631)
!5655 = !DILocation(line: 1225, column: 3, scope: !5631)
!5656 = !DILocation(line: 1225, column: 9, scope: !5631)
!5657 = !DILocation(line: 1225, column: 25, scope: !5631)
!5658 = !DILocation(line: 1230, column: 46, scope: !5631)
!5659 = !DILocation(line: 1230, column: 8, scope: !5631)
!5660 = !DILocation(line: 1231, column: 14, scope: !5631)
!5661 = !DILocation(line: 1231, column: 3, scope: !5631)
!5662 = !DILocation(line: 1232, column: 18, scope: !5631)
!5663 = !DILocation(line: 1232, column: 3, scope: !5631)
!5664 = !DILocation(line: 1234, column: 3, scope: !5631)
!5665 = distinct !DISubprogram(name: "VEC_tree_heap_alloc", scope: !135, file: !135, line: 184, type: !5666, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5668)
!5666 = !DISubroutineType(types: !5667)
!5667 = !{!1995, !657}
!5668 = !{!5669}
!5669 = !DILocalVariable(name: "alloc_", arg: 1, scope: !5665, file: !135, line: 184, type: !657)
!5670 = !DILocation(line: 0, scope: !5665)
!5671 = !DILocation(line: 184, column: 1, scope: !5665)
!5672 = distinct !DISubprogram(name: "thunk_adjust", scope: !3, file: !3, line: 1243, type: !5673, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5675)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!664, !3638, !664, !656, !720, !664}
!5675 = !{!5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5686, !5687, !5688, !5689, !5692}
!5676 = !DILocalVariable(name: "bsi", arg: 1, scope: !5672, file: !3, line: 1243, type: !3638)
!5677 = !DILocalVariable(name: "ptr", arg: 2, scope: !5672, file: !3, line: 1244, type: !664)
!5678 = !DILocalVariable(name: "this_adjusting", arg: 3, scope: !5672, file: !3, line: 1244, type: !656)
!5679 = !DILocalVariable(name: "fixed_offset", arg: 4, scope: !5672, file: !3, line: 1245, type: !720)
!5680 = !DILocalVariable(name: "virtual_offset", arg: 5, scope: !5672, file: !3, line: 1245, type: !664)
!5681 = !DILocalVariable(name: "stmt", scope: !5672, file: !3, line: 1247, type: !988)
!5682 = !DILocalVariable(name: "ret", scope: !5672, file: !3, line: 1248, type: !664)
!5683 = !DILocalVariable(name: "vtabletmp", scope: !5684, file: !3, line: 1265, type: !664)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !3, line: 1264, column: 5)
!5685 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 1263, column: 7)
!5686 = !DILocalVariable(name: "vtabletmp2", scope: !5684, file: !3, line: 1266, type: !664)
!5687 = !DILocalVariable(name: "vtabletmp3", scope: !5684, file: !3, line: 1267, type: !664)
!5688 = !DILocalVariable(name: "offsettmp", scope: !5684, file: !3, line: 1268, type: !664)
!5689 = !DILocalVariable(name: "vfunc_type", scope: !5690, file: !3, line: 1272, type: !664)
!5690 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 1271, column: 2)
!5691 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 1270, column: 11)
!5692 = !DILocalVariable(name: "ptrtmp", scope: !5693, file: !3, line: 1340, type: !664)
!5693 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 1339, column: 5)
!5694 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 1336, column: 7)
!5695 = !DILocation(line: 0, scope: !5672)
!5696 = !DILocation(line: 1250, column: 7, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 1250, column: 7)
!5698 = !DILocation(line: 1251, column: 23, scope: !5697)
!5699 = !DILocation(line: 1251, column: 7, scope: !5697)
!5700 = !DILocation(line: 1253, column: 14, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 1252, column: 5)
!5702 = !DILocation(line: 1258, column: 7, scope: !5701)
!5703 = !DILocation(line: 1259, column: 5, scope: !5701)
!5704 = !DILocation(line: 1263, column: 7, scope: !5685)
!5705 = !DILocation(line: 1263, column: 7, scope: !5672)
!5706 = !DILocation(line: 1270, column: 12, scope: !5691)
!5707 = !DILocation(line: 1270, column: 11, scope: !5684)
!5708 = !DILocation(line: 1272, column: 22, scope: !5690)
!5709 = !DILocation(line: 0, scope: !5690)
!5710 = !DILocation(line: 1273, column: 29, scope: !5690)
!5711 = !DILocation(line: 1273, column: 4, scope: !5690)
!5712 = !DILocation(line: 1273, column: 27, scope: !5690)
!5713 = !DILocation(line: 1274, column: 4, scope: !5690)
!5714 = !DILocation(line: 1274, column: 32, scope: !5690)
!5715 = !DILocation(line: 1275, column: 4, scope: !5690)
!5716 = !DILocation(line: 1277, column: 24, scope: !5690)
!5717 = !DILocation(line: 1277, column: 22, scope: !5690)
!5718 = !DILocation(line: 1278, column: 2, scope: !5690)
!5719 = !DILocation(line: 1282, column: 25, scope: !5684)
!5720 = !DILocation(line: 1282, column: 5, scope: !5684)
!5721 = !DILocation(line: 1281, column: 18, scope: !5684)
!5722 = !DILocation(line: 1281, column: 2, scope: !5684)
!5723 = !DILocation(line: 0, scope: !5684)
!5724 = !DILocation(line: 1285, column: 14, scope: !5684)
!5725 = !DILocation(line: 1288, column: 7, scope: !5684)
!5726 = !DILocation(line: 1289, column: 7, scope: !5684)
!5727 = !DILocation(line: 1290, column: 7, scope: !5684)
!5728 = !DILocation(line: 1293, column: 36, scope: !5684)
!5729 = !DILocation(line: 1293, column: 20, scope: !5684)
!5730 = !DILocation(line: 1295, column: 14, scope: !5684)
!5731 = !DILocation(line: 1298, column: 7, scope: !5684)
!5732 = !DILocation(line: 1299, column: 7, scope: !5684)
!5733 = !DILocation(line: 1300, column: 7, scope: !5684)
!5734 = !DILocation(line: 1303, column: 14, scope: !5684)
!5735 = !DILocation(line: 1310, column: 7, scope: !5684)
!5736 = !DILocation(line: 1313, column: 36, scope: !5684)
!5737 = !DILocation(line: 1313, column: 20, scope: !5684)
!5738 = !DILocation(line: 1315, column: 14, scope: !5684)
!5739 = !DILocation(line: 1319, column: 7, scope: !5684)
!5740 = !DILocation(line: 1320, column: 7, scope: !5684)
!5741 = !DILocation(line: 1321, column: 7, scope: !5684)
!5742 = !DILocation(line: 1324, column: 35, scope: !5684)
!5743 = !DILocation(line: 1324, column: 19, scope: !5684)
!5744 = !DILocation(line: 1325, column: 14, scope: !5684)
!5745 = !DILocation(line: 1326, column: 7, scope: !5684)
!5746 = !DILocation(line: 1327, column: 7, scope: !5684)
!5747 = !DILocation(line: 1328, column: 7, scope: !5684)
!5748 = !DILocation(line: 1331, column: 13, scope: !5684)
!5749 = !DILocation(line: 1334, column: 5, scope: !5684)
!5750 = !DILocation(line: 1336, column: 8, scope: !5694)
!5751 = !DILocation(line: 1337, column: 7, scope: !5694)
!5752 = !DILocation(line: 1342, column: 11, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 1342, column: 11)
!5754 = !DILocation(line: 1342, column: 27, scope: !5753)
!5755 = !DILocation(line: 1342, column: 11, scope: !5693)
!5756 = !DILocation(line: 1346, column: 36, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5753, file: !3, line: 1345, column: 9)
!5758 = !DILocation(line: 1346, column: 20, scope: !5757)
!5759 = !DILocation(line: 0, scope: !5693)
!5760 = !DILocation(line: 1347, column: 18, scope: !5757)
!5761 = !DILocation(line: 1348, column: 4, scope: !5757)
!5762 = !DILocation(line: 1349, column: 4, scope: !5757)
!5763 = !DILocation(line: 1350, column: 4, scope: !5757)
!5764 = !DILocation(line: 0, scope: !5753)
!5765 = !DILocation(line: 1352, column: 13, scope: !5693)
!5766 = !DILocation(line: 1355, column: 5, scope: !5693)
!5767 = !DILocation(line: 1358, column: 25, scope: !5672)
!5768 = !DILocation(line: 1358, column: 9, scope: !5672)
!5769 = !DILocation(line: 1359, column: 10, scope: !5672)
!5770 = !DILocation(line: 1360, column: 3, scope: !5672)
!5771 = !DILocation(line: 1361, column: 3, scope: !5672)
!5772 = !DILocation(line: 1362, column: 3, scope: !5672)
!5773 = !DILocation(line: 1364, column: 3, scope: !5672)
!5774 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !135, file: !135, line: 184, type: !5775, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5778)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{null, !5777}
!5777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!5778 = !{!5779}
!5779 = !DILocalVariable(name: "vec_", arg: 1, scope: !5774, file: !135, line: 184, type: !5777)
!5780 = !DILocation(line: 0, scope: !5774)
!5781 = !DILocation(line: 184, column: 1, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5774, file: !135, line: 184, column: 1)
!5783 = !DILocation(line: 184, column: 1, scope: !5774)
!5784 = distinct !DISubprogram(name: "gimple_call_set_cannot_inline", scope: !584, file: !584, line: 2081, type: !5785, scopeLine: 2082, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5787)
!5785 = !DISubroutineType(types: !5786)
!5786 = !{null, !988, !656}
!5787 = !{!5788, !5789}
!5788 = !DILocalVariable(name: "s", arg: 1, scope: !5784, file: !584, line: 2081, type: !988)
!5789 = !DILocalVariable(name: "inlinable_p", arg: 2, scope: !5784, file: !584, line: 2081, type: !656)
!5790 = !DILocation(line: 0, scope: !5784)
!5791 = !DILocation(line: 0, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5784, file: !584, line: 2084, column: 7)
!5793 = !DILocation(line: 2085, column: 23, scope: !5792)
!5794 = !DILocation(line: 2088, column: 1, scope: !5784)
!5795 = distinct !DISubprogram(name: "gimple_call_set_from_thunk", scope: !584, file: !584, line: 2130, type: !5785, scopeLine: 2131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5796)
!5796 = !{!5797, !5798}
!5797 = !DILocalVariable(name: "s", arg: 1, scope: !5795, file: !584, line: 2130, type: !988)
!5798 = !DILocalVariable(name: "from_thunk_p", arg: 2, scope: !5795, file: !584, line: 2130, type: !656)
!5799 = !DILocation(line: 0, scope: !5795)
!5800 = !DILocation(line: 0, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5795, file: !584, line: 2133, column: 7)
!5802 = !DILocation(line: 2134, column: 23, scope: !5801)
!5803 = !DILocation(line: 2137, column: 1, scope: !5795)
!5804 = distinct !DISubprogram(name: "gimple_call_set_lhs", scope: !584, file: !584, line: 1898, type: !4988, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5805)
!5805 = !{!5806, !5807}
!5806 = !DILocalVariable(name: "gs", arg: 1, scope: !5804, file: !584, line: 1898, type: !988)
!5807 = !DILocalVariable(name: "lhs", arg: 2, scope: !5804, file: !584, line: 1898, type: !664)
!5808 = !DILocation(line: 0, scope: !5804)
!5809 = !DILocation(line: 1901, column: 3, scope: !5804)
!5810 = !DILocation(line: 1902, column: 7, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5804, file: !584, line: 1902, column: 7)
!5812 = !DILocation(line: 1902, column: 11, scope: !5811)
!5813 = !DILocation(line: 1902, column: 14, scope: !5811)
!5814 = !DILocation(line: 1902, column: 30, scope: !5811)
!5815 = !DILocation(line: 1902, column: 7, scope: !5804)
!5816 = !DILocation(line: 1903, column: 5, scope: !5811)
!5817 = !DILocation(line: 1903, column: 29, scope: !5811)
!5818 = !DILocation(line: 1904, column: 1, scope: !5804)
!5819 = distinct !DISubprogram(name: "update_stmt", scope: !584, file: !584, line: 1456, type: !5820, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5822)
!5820 = !DISubroutineType(types: !5821)
!5821 = !{null, !988}
!5822 = !{!5823}
!5823 = !DILocalVariable(name: "s", arg: 1, scope: !5819, file: !584, line: 1456, type: !988)
!5824 = !DILocation(line: 0, scope: !5819)
!5825 = !DILocation(line: 1458, column: 7, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5819, file: !584, line: 1458, column: 7)
!5827 = !DILocation(line: 1458, column: 7, scope: !5819)
!5828 = !DILocation(line: 1460, column: 7, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5826, file: !584, line: 1459, column: 5)
!5830 = !DILocation(line: 1461, column: 7, scope: !5829)
!5831 = !DILocation(line: 1462, column: 5, scope: !5829)
!5832 = !DILocation(line: 1463, column: 1, scope: !5819)
!5833 = distinct !DISubprogram(name: "single_succ_edge", scope: !330, file: !330, line: 643, type: !5834, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5836)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{!968, !5113}
!5836 = !{!5837}
!5837 = !DILocalVariable(name: "bb", arg: 1, scope: !5833, file: !330, line: 643, type: !5113)
!5838 = !DILocation(line: 0, scope: !5833)
!5839 = !DILocation(line: 645, column: 3, scope: !5833)
!5840 = !DILocation(line: 646, column: 10, scope: !5833)
!5841 = !DILocation(line: 646, column: 3, scope: !5833)
!5842 = distinct !DISubprogram(name: "gsi_last_bb", scope: !584, file: !584, line: 4450, type: !3561, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5843)
!5843 = !{!5844, !5845, !5846}
!5844 = !DILocalVariable(name: "bb", arg: 1, scope: !5842, file: !584, line: 4450, type: !1422)
!5845 = !DILocalVariable(name: "i", scope: !5842, file: !584, line: 4452, type: !3116)
!5846 = !DILocalVariable(name: "seq", scope: !5842, file: !584, line: 4453, type: !978)
!5847 = !DILocation(line: 0, scope: !5842)
!5848 = !DILocation(line: 4452, column: 24, scope: !5842)
!5849 = !DILocation(line: 4455, column: 9, scope: !5842)
!5850 = !DILocation(line: 4456, column: 11, scope: !5842)
!5851 = !DILocation(line: 4456, column: 5, scope: !5842)
!5852 = !DILocation(line: 4456, column: 9, scope: !5842)
!5853 = !DILocation(line: 4457, column: 5, scope: !5842)
!5854 = !DILocation(line: 4457, column: 9, scope: !5842)
!5855 = !DILocation(line: 4458, column: 5, scope: !5842)
!5856 = !DILocation(line: 4458, column: 8, scope: !5842)
!5857 = !DILocation(line: 4461, column: 1, scope: !5842)
!5858 = distinct !DISubprogram(name: "gimple_call_set_tail", scope: !584, file: !584, line: 2058, type: !5785, scopeLine: 2059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5859)
!5859 = !{!5860, !5861}
!5860 = !DILocalVariable(name: "s", arg: 1, scope: !5858, file: !584, line: 2058, type: !988)
!5861 = !DILocalVariable(name: "tail_p", arg: 2, scope: !5858, file: !584, line: 2058, type: !656)
!5862 = !DILocation(line: 0, scope: !5858)
!5863 = !DILocation(line: 0, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5858, file: !584, line: 2061, column: 7)
!5865 = !DILocation(line: 2062, column: 23, scope: !5864)
!5866 = !DILocation(line: 2065, column: 1, scope: !5858)
!5867 = distinct !DISubprogram(name: "gimple_set_op", scope: !584, file: !584, line: 1663, type: !5868, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5870)
!5868 = !DISubroutineType(types: !5869)
!5869 = !{null, !988, !7, !664}
!5870 = !{!5871, !5872, !5873}
!5871 = !DILocalVariable(name: "gs", arg: 1, scope: !5867, file: !584, line: 1663, type: !988)
!5872 = !DILocalVariable(name: "i", arg: 2, scope: !5867, file: !584, line: 1663, type: !7)
!5873 = !DILocalVariable(name: "op", arg: 3, scope: !5867, file: !584, line: 1663, type: !664)
!5874 = !DILocation(line: 0, scope: !5867)
!5875 = !DILocation(line: 1665, column: 3, scope: !5867)
!5876 = !DILocation(line: 1671, column: 3, scope: !5867)
!5877 = !DILocation(line: 1671, column: 22, scope: !5867)
!5878 = !DILocation(line: 1672, column: 1, scope: !5867)
!5879 = distinct !DISubprogram(name: "gimple_num_ops", scope: !584, file: !584, line: 1596, type: !5880, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5882)
!5880 = !DISubroutineType(types: !5881)
!5881 = !{!7, !3554}
!5882 = !{!5883}
!5883 = !DILocalVariable(name: "gs", arg: 1, scope: !5879, file: !584, line: 1596, type: !3554)
!5884 = !DILocation(line: 0, scope: !5879)
!5885 = !DILocation(line: 1598, column: 21, scope: !5879)
!5886 = !DILocation(line: 1598, column: 3, scope: !5879)
!5887 = distinct !DISubprogram(name: "single_succ_p", scope: !330, file: !330, line: 626, type: !5888, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5890)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{!656, !5113}
!5890 = !{!5891}
!5891 = !DILocalVariable(name: "bb", arg: 1, scope: !5887, file: !330, line: 626, type: !5113)
!5892 = !DILocation(line: 0, scope: !5887)
!5893 = !DILocation(line: 628, column: 10, scope: !5887)
!5894 = !DILocation(line: 628, column: 33, scope: !5887)
!5895 = !DILocation(line: 628, column: 3, scope: !5887)
!5896 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !330, file: !330, line: 150, type: !5897, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5901)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{!968, !5899, !7}
!5899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5900, size: 64)
!5900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!5901 = !{!5902, !5903}
!5902 = !DILocalVariable(name: "vec_", arg: 1, scope: !5896, file: !330, line: 150, type: !5899)
!5903 = !DILocalVariable(name: "ix_", arg: 2, scope: !5896, file: !330, line: 150, type: !7)
!5904 = !DILocation(line: 0, scope: !5896)
!5905 = !DILocation(line: 150, column: 1, scope: !5896)
!5906 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !330, file: !330, line: 150, type: !5907, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5909)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{!7, !5899}
!5909 = !{!5910}
!5910 = !DILocalVariable(name: "vec_", arg: 1, scope: !5906, file: !330, line: 150, type: !5899)
!5911 = !DILocation(line: 0, scope: !5906)
!5912 = !DILocation(line: 150, column: 1, scope: !5906)
!5913 = distinct !DISubprogram(name: "gimple_seq_last", scope: !584, file: !584, line: 178, type: !5128, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5914)
!5914 = !{!5915}
!5915 = !DILocalVariable(name: "s", arg: 1, scope: !5913, file: !584, line: 178, type: !5130)
!5916 = !DILocation(line: 0, scope: !5913)
!5917 = !DILocation(line: 180, column: 10, scope: !5913)
!5918 = !DILocation(line: 180, column: 17, scope: !5913)
!5919 = !DILocation(line: 180, column: 3, scope: !5913)
!5920 = distinct !DISubprogram(name: "VEC_cgraph_edge_p_base_iterate", scope: !378, file: !378, line: 352, type: !5921, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5926)
!5921 = !DISubroutineType(types: !5922)
!5922 = !{!657, !5923, !7, !5925}
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4606)
!5925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!5926 = !{!5927, !5928, !5929}
!5927 = !DILocalVariable(name: "vec_", arg: 1, scope: !5920, file: !378, line: 352, type: !5923)
!5928 = !DILocalVariable(name: "ix_", arg: 2, scope: !5920, file: !378, line: 352, type: !7)
!5929 = !DILocalVariable(name: "ptr", arg: 3, scope: !5920, file: !378, line: 352, type: !5925)
!5930 = !DILocation(line: 0, scope: !5920)
!5931 = !DILocation(line: 352, column: 1, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5920, file: !378, line: 352, column: 1)
!5933 = !DILocation(line: 352, column: 1, scope: !5920)
!5934 = !DILocation(line: 352, column: 1, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5932, file: !378, line: 352, column: 1)
!5936 = !DILocation(line: 352, column: 1, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5932, file: !378, line: 352, column: 1)
!5938 = !DILocation(line: 0, scope: !5932)
!5939 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !584, file: !584, line: 1283, type: !3598, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5940)
!5940 = !{!5941}
!5941 = !DILocalVariable(name: "g", arg: 1, scope: !5939, file: !584, line: 1283, type: !3554)
!5942 = !DILocation(line: 0, scope: !5939)
!5943 = !DILocation(line: 1285, column: 10, scope: !5939)
!5944 = !DILocation(line: 1285, column: 26, scope: !5939)
!5945 = !DILocation(line: 1285, column: 43, scope: !5939)
!5946 = !DILocation(line: 1285, column: 46, scope: !5939)
!5947 = !DILocation(line: 1285, column: 62, scope: !5939)
!5948 = !DILocation(line: 1285, column: 3, scope: !5939)
!5949 = distinct !DISubprogram(name: "gimple_location", scope: !584, file: !584, line: 1139, type: !5950, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5952)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!789, !3554}
!5952 = !{!5953}
!5953 = !DILocalVariable(name: "g", arg: 1, scope: !5949, file: !584, line: 1139, type: !3554)
!5954 = !DILocation(line: 0, scope: !5949)
!5955 = !DILocation(line: 1141, column: 20, scope: !5949)
!5956 = !DILocation(line: 1141, column: 3, scope: !5949)
