; ModuleID = 'stor-layout.bc'
source_filename = "stor-layout.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type opaque
%struct.diagnostic_info = type opaque
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
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
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.pointer_set_t = type opaque
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.record_layout_info_s = type { %union.tree_node*, %union.tree_node*, i32, %union.tree_node*, i32, i32, %union.tree_node*, %union.tree_node*, i32, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@maximum_field_alignment = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@initial_max_fld_align = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1689
@reference_types_internal = internal unnamed_addr global i1 false, align 4, !dbg !1748
@pending_sizes = internal global %union.tree_node* null, align 8, !dbg !1708
@.str = private unnamed_addr constant [14 x i8] c"stor-layout.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"type size can%'t be explicitly evaluated\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"variable-size type declared outside of any function\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@size_functions = internal global %struct.VEC_tree_gc* null, align 8, !dbg !1710
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@class_narrowest_mode = external dso_local local_unnamed_addr constant [18 x i8], align 16
@mode_precision = external dso_local local_unnamed_addr constant [87 x i16], align 16
@mode_wider = external dso_local local_unnamed_addr constant [87 x i8], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@ix86_isa_flags = external dso_local local_unnamed_addr global i32, align 4
@mode_base_align = external dso_local local_unnamed_addr global [87 x i8], align 16
@tree_contains_struct = external dso_local local_unnamed_addr global [191 x [64 x i8]], align 16
@sizetype_tab = common dso_local local_unnamed_addr global [4 x %union.tree_node*] zeroinitializer, align 16, !dbg !1705
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@warn_larger_than = external dso_local local_unnamed_addr global i8, align 1
@larger_than_size = external dso_local local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"size of %q+D is %d bytes\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"size of %q+D is larger than %wd bytes\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\0Aoffset\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" bitpos\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\0Aaligns: rec = %u, unpack = %u, off = %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"remaining in alignment = %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"packed may be necessary\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"pending statics:\0A\00", align 1
@warn_packed = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"packed attribute is unnecessary for %q+D\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"padding struct to align %q+D\00", align 1
@warn_packed_bitfield_compat = external dso_local local_unnamed_addr global i32, align 4
@input_location = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [54 x i8] c"Offset of packed bit-field %qD has changed in GCC 4.4\00", align 1
@mode_nunits = external dso_local local_unnamed_addr constant [87 x i8], align 16
@mode_inner = external dso_local local_unnamed_addr constant [87 x i8], align 16
@have_regs_of_mode = external dso_local local_unnamed_addr global [87 x i8], align 16
@.str.16 = private unnamed_addr constant [57 x i8] c"alignment of array elements is greater than element size\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"bit_size_type\00", align 1
@gt_ggc_r_gt_stor_layout_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.VEC_tree_gc** @size_functions to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_VEC_tree_gc, void (i8*)* @gt_pch_nx_VEC_tree_gc }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @pending_sizes to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1691
@self_referential_size.fnno = internal unnamed_addr global i64 0, align 8, !dbg !1714
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"p%d\00", align 1
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"SZ%lu\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"padding struct size to alignment boundary\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"packed attribute is unnecessary for %qE\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"packed attribute is unnecessary\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1753 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1766, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1767, metadata !DIExpression()), !dbg !1768
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1769
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1770
  ret i32 %call, !dbg !1771
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1772 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1776
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1777
  ret i32 %call, !dbg !1778
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1779 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1833, metadata !DIExpression()), !dbg !1834
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1835
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1835
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1835
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1835
  %cmp = icmp uge i8* %0, %1, !dbg !1835
  %conv1 = zext i1 %cmp to i64, !dbg !1835
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1835
  %tobool = icmp eq i64 %expval, 0, !dbg !1835
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1835

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1835
  br label %cond.end, !dbg !1835

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1835
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1835
  %2 = load i8, i8* %0, align 1, !dbg !1835
  %conv3 = zext i8 %2 to i32, !dbg !1835
  br label %cond.end, !dbg !1835

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1835
  ret i32 %cond, !dbg !1836
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1837 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1839, metadata !DIExpression()), !dbg !1840
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1841
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1841
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1841
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1841
  %cmp = icmp uge i8* %0, %1, !dbg !1841
  %conv1 = zext i1 %cmp to i64, !dbg !1841
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1841
  %tobool = icmp eq i64 %expval, 0, !dbg !1841
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1841

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1841
  br label %cond.end, !dbg !1841

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1841
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1841
  %2 = load i8, i8* %0, align 1, !dbg !1841
  %conv3 = zext i8 %2 to i32, !dbg !1841
  br label %cond.end, !dbg !1841

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1841
  ret i32 %cond, !dbg !1842
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1843 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1844
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1844
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1844
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1844
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1844
  %cmp = icmp uge i8* %1, %2, !dbg !1844
  %conv1 = zext i1 %cmp to i64, !dbg !1844
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1844
  %tobool = icmp eq i64 %expval, 0, !dbg !1844
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1844

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1844
  br label %cond.end, !dbg !1844

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1844
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1844
  %3 = load i8, i8* %1, align 1, !dbg !1844
  %conv3 = zext i8 %3 to i32, !dbg !1844
  br label %cond.end, !dbg !1844

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1844
  ret i32 %cond, !dbg !1845
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1846 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1850, metadata !DIExpression()), !dbg !1851
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1852
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1853
  ret i32 %call, !dbg !1854
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1855 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1859, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1860, metadata !DIExpression()), !dbg !1861
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1862
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1862
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1862
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1862
  %cmp = icmp uge i8* %0, %1, !dbg !1862
  %conv1 = zext i1 %cmp to i64, !dbg !1862
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1862
  %tobool = icmp eq i64 %expval, 0, !dbg !1862
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1862

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1862
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1862
  br label %cond.end, !dbg !1862

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1862
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1862
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1862
  store i8 %conv2, i8* %0, align 1, !dbg !1862
  %conv6 = and i32 %__c, 255, !dbg !1862
  br label %cond.end, !dbg !1862

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1862
  ret i32 %cond, !dbg !1863
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1864 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1866, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1867, metadata !DIExpression()), !dbg !1868
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1869
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1869
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1869
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1869
  %cmp = icmp uge i8* %0, %1, !dbg !1869
  %conv1 = zext i1 %cmp to i64, !dbg !1869
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1869
  %tobool = icmp eq i64 %expval, 0, !dbg !1869
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1869

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1869
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1869
  br label %cond.end, !dbg !1869

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1869
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1869
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1869
  store i8 %conv2, i8* %0, align 1, !dbg !1869
  %conv6 = and i32 %__c, 255, !dbg !1869
  br label %cond.end, !dbg !1869

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1869
  ret i32 %cond, !dbg !1870
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1871 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1873, metadata !DIExpression()), !dbg !1874
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1875
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1875
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1875
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1875
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1875
  %cmp = icmp uge i8* %1, %2, !dbg !1875
  %conv1 = zext i1 %cmp to i64, !dbg !1875
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1875
  %tobool = icmp eq i64 %expval, 0, !dbg !1875
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1875

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1875
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1875
  br label %cond.end, !dbg !1875

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1875
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1875
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1875
  store i8 %conv4, i8* %1, align 1, !dbg !1875
  %conv6 = and i32 %__c, 255, !dbg !1875
  br label %cond.end, !dbg !1875

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1875
  ret i32 %cond, !dbg !1876
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1877 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1883, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1884, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1885, metadata !DIExpression()), !dbg !1886
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1887
  ret i64 %call, !dbg !1888
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1889 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1891, metadata !DIExpression()), !dbg !1892
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1893
  %0 = load i32, i32* %_flags, align 8, !dbg !1893
  %and = lshr i32 %0, 4, !dbg !1893
  %and.lobit = and i32 %and, 1, !dbg !1893
  ret i32 %and.lobit, !dbg !1894
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1895 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1897, metadata !DIExpression()), !dbg !1898
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1899
  %0 = load i32, i32* %_flags, align 8, !dbg !1899
  %and = lshr i32 %0, 5, !dbg !1899
  %and.lobit = and i32 %and, 1, !dbg !1899
  ret i32 %and.lobit, !dbg !1900
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1901 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1904, metadata !DIExpression()), !dbg !1905
  %__c.off = add i32 %__c, 128, !dbg !1906
  %0 = icmp ult i32 %__c.off, 384, !dbg !1906
  br i1 %0, label %cond.true, label %cond.end, !dbg !1906

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1907
  %1 = load i32*, i32** %call, align 8, !dbg !1908
  %idxprom = sext i32 %__c to i64, !dbg !1909
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1909
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1909
  br label %cond.end, !dbg !1910

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1910
  ret i32 %cond, !dbg !1911
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1912 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1914, metadata !DIExpression()), !dbg !1915
  %__c.off = add i32 %__c, 128, !dbg !1916
  %0 = icmp ult i32 %__c.off, 384, !dbg !1916
  br i1 %0, label %cond.true, label %cond.end, !dbg !1916

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1917
  %1 = load i32*, i32** %call, align 8, !dbg !1918
  %idxprom = sext i32 %__c to i64, !dbg !1919
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1919
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1919
  br label %cond.end, !dbg !1920

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1920
  ret i32 %cond, !dbg !1921
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1922 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1927, metadata !DIExpression()), !dbg !1928
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1929
  %conv = trunc i64 %call to i32, !dbg !1930
  ret i32 %conv, !dbg !1931
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1932 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1936, metadata !DIExpression()), !dbg !1937
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1938
  ret i64 %call, !dbg !1939
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1940 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1945, metadata !DIExpression()), !dbg !1946
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1947
  ret i64 %call, !dbg !1948
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1949 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1955, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1956, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1957, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1958, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1959, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 0, metadata !1960, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1961, metadata !DIExpression()), !dbg !1965
  br label %while.cond, !dbg !1966

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1967
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1961, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1960, metadata !DIExpression()), !dbg !1965
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1968
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1966

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1969
  %div = lshr i64 %add, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %div, metadata !1962, metadata !DIExpression()), !dbg !1965
  %mul = mul i64 %div, %__size, !dbg !1972
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1973
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1963, metadata !DIExpression()), !dbg !1965
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %call, metadata !1964, metadata !DIExpression()), !dbg !1965
  %cmp1 = icmp slt i32 %call, 0, !dbg !1975
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1977

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1978
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1980

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1960, metadata !DIExpression()), !dbg !1965
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1965
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1961, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1960, metadata !DIExpression()), !dbg !1965
  br label %while.cond, !dbg !1966, !llvm.loop !1982

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1965
  ret i8* %retval.0, !dbg !1984
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1985 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1991, metadata !DIExpression()), !dbg !1992
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1993
  ret double %call, !dbg !1994
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1995 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2005, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %base, metadata !2006, metadata !DIExpression()), !dbg !2007
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2008
  ret i64 %call, !dbg !2009
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2010 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2016, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2017, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %base, metadata !2018, metadata !DIExpression()), !dbg !2019
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2020
  ret i64 %call, !dbg !2021
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2022 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2033, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %base, metadata !2035, metadata !DIExpression()), !dbg !2036
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2037
  ret i64 %call, !dbg !2038
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2039 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2043, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2044, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i32 %base, metadata !2045, metadata !DIExpression()), !dbg !2046
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2047
  ret i64 %call, !dbg !2048
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2049 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2089, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2090, metadata !DIExpression()), !dbg !2091
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2092
  ret i32 %call, !dbg !2093
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2094 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2096, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2097, metadata !DIExpression()), !dbg !2098
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2099
  ret i32 %call, !dbg !2100
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2101 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2105, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2106, metadata !DIExpression()), !dbg !2107
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2108
  ret i32 %call, !dbg !2109
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2110 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2114, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2115, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2116, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2117, metadata !DIExpression()), !dbg !2118
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2119
  ret i32 %call, !dbg !2120
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2121 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2125, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2127, metadata !DIExpression()), !dbg !2128
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2127, metadata !DIExpression(DW_OP_deref)), !dbg !2128
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2129
  ret i32 %call, !dbg !2130
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2131 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2135, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2138, metadata !DIExpression()), !dbg !2139
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2138, metadata !DIExpression(DW_OP_deref)), !dbg !2139
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2140
  ret i32 %call, !dbg !2141
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2142 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2167, metadata !DIExpression()), !dbg !2168
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2169
  ret i32 %call, !dbg !2170
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2171 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2173, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2174, metadata !DIExpression()), !dbg !2175
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2176
  ret i32 %call, !dbg !2177
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2183, metadata !DIExpression()), !dbg !2184
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2185
  ret i32 %call, !dbg !2186
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2191, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2192, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2193, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2194, metadata !DIExpression()), !dbg !2195
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2196
  ret i32 %call, !dbg !2197
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @internal_reference_types() local_unnamed_addr #5 !dbg !2198 {
entry:
  store i1 true, i1* @reference_types_internal, align 4, !dbg !2201
  ret void, !dbg !2202
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @get_pending_sizes() local_unnamed_addr #5 !dbg !2203 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8, !dbg !2208
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2207, metadata !DIExpression()), !dbg !2209
  store %union.tree_node* null, %union.tree_node** @pending_sizes, align 8, !dbg !2210
  ret %union.tree_node* %0, !dbg !2211
}

; Function Attrs: nounwind uwtable
define dso_local void @put_pending_size(%union.tree_node* %expr) local_unnamed_addr #5 !dbg !2212 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2216, metadata !DIExpression()), !dbg !2217
  %call = tail call %union.tree_node* @skip_simple_arithmetic(%union.tree_node* %expr) #6, !dbg !2218
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2216, metadata !DIExpression()), !dbg !2217
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2219
  %bf.load = load i64, i64* %0, align 8, !dbg !2219
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2221
  %cmp = icmp eq i64 %bf.cast1, 120, !dbg !2221
  br i1 %cmp, label %if.then, label %if.end, !dbg !2222

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8, !dbg !2223
  %call1 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %call, %union.tree_node* %1) #6, !dbg !2223
  store %union.tree_node* %call1, %union.tree_node** @pending_sizes, align 8, !dbg !2224
  br label %if.end, !dbg !2225

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2226
}

declare dso_local %union.tree_node* @skip_simple_arithmetic(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @tree_cons_stat(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @put_pending_sizes(%union.tree_node* %chain) local_unnamed_addr #5 !dbg !2227 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %chain, metadata !2229, metadata !DIExpression()), !dbg !2230
  %0 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8, !dbg !2231
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !2231
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2231

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2231
  br label %cond.end, !dbg !2231

cond.end:                                         ; preds = %entry, %cond.true
  store %union.tree_node* %chain, %union.tree_node** @pending_sizes, align 8, !dbg !2232
  ret void, !dbg !2233
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @variable_size(%union.tree_node* %size) local_unnamed_addr #5 !dbg !2234 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %size, metadata !2236, metadata !DIExpression()), !dbg !2238
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %size, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2239
  %bf.load = load i64, i64* %0, align 8, !dbg !2239
  %bf.cast1 = and i64 %bf.load, 131072, !dbg !2239
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2239
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2241

if.end:                                           ; preds = %entry
  %cmp = icmp eq %union.tree_node* %size, null, !dbg !2242
  br i1 %cmp, label %if.end11, label %land.lhs.true, !dbg !2242

land.lhs.true:                                    ; preds = %if.end
  br i1 true, label %land.lhs.true7, label %land.lhs.true.if.end11_crit_edge, !dbg !2242

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  br label %if.end11, !dbg !2242

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call = tail call zeroext i8 @contains_placeholder_p(%union.tree_node* nonnull %size) #6, !dbg !2242
  %tobool8 = icmp eq i8 %call, 0, !dbg !2242
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !2244

if.then9:                                         ; preds = %land.lhs.true7
  %call10 = tail call fastcc %union.tree_node* @self_referential_size(%union.tree_node* nonnull %size) #7, !dbg !2245
  br label %cleanup, !dbg !2246

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %land.lhs.true7, %if.end
  %1 = load i32 ()*, i32 ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 33, i32 0), align 8, !dbg !2247
  %call12 = tail call i32 %1() #6, !dbg !2249
  %cmp13 = icmp slt i32 %call12, 0, !dbg !2250
  br i1 %cmp13, label %cleanup, label %if.end16, !dbg !2251

if.end16:                                         ; preds = %if.end11
  %call17 = tail call %union.tree_node* @save_expr(%union.tree_node* %size) #6, !dbg !2252
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !2236, metadata !DIExpression()), !dbg !2238
  %call18 = tail call %union.tree_node* @skip_simple_arithmetic(%union.tree_node* %call17) #6, !dbg !2253
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !2237, metadata !DIExpression()), !dbg !2238
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2254
  %tobool19 = icmp eq %struct.function* %2, null, !dbg !2254
  br i1 %tobool19, label %if.end27, label %land.lhs.true20, !dbg !2256

land.lhs.true20:                                  ; preds = %if.end16
  %dont_save_pending_sizes_p = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 20, !dbg !2257
  %bf.load22 = load i32, i32* %dont_save_pending_sizes_p, align 8, !dbg !2257
  %bf.clear24 = and i32 %bf.load22, 8388608, !dbg !2257
  %tobool25 = icmp eq i32 %bf.clear24, 0, !dbg !2258
  br i1 %tobool25, label %if.end27, label %cleanup, !dbg !2259

if.end27:                                         ; preds = %land.lhs.true20, %if.end16
  %3 = load i32 ()*, i32 ()** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 33, i32 0), align 8, !dbg !2260
  %call28 = tail call i32 %3() #6, !dbg !2262
  %tobool29 = icmp eq i32 %call28, 0, !dbg !2262
  br i1 %tobool29, label %if.end39, label %if.then30, !dbg !2263

if.then30:                                        ; preds = %if.end27
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2264
  %bf.load32 = load i64, i64* %4, align 8, !dbg !2264
  %bf.cast352 = and i64 %bf.load32, 131072, !dbg !2264
  %tobool36 = icmp eq i64 %bf.cast352, 0, !dbg !2264
  br i1 %tobool36, label %if.else, label %if.then37, !dbg !2267

if.then37:                                        ; preds = %if.then30
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2268
  br label %if.end38, !dbg !2268

if.else:                                          ; preds = %if.then30
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2269
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then37
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 18), align 16, !dbg !2270
  br label %cleanup, !dbg !2271

if.end39:                                         ; preds = %if.end27
  tail call void @put_pending_size(%union.tree_node* %call18) #7, !dbg !2272
  br label %cleanup, !dbg !2273

cleanup:                                          ; preds = %land.lhs.true20, %entry, %if.end11, %if.end39, %if.end38, %if.then9
  %retval.0 = phi %union.tree_node* [ %5, %if.end38 ], [ %call17, %if.end39 ], [ %call10, %if.then9 ], [ %size, %entry ], [ %size, %if.end11 ], [ %call17, %land.lhs.true20 ], !dbg !2238
  ret %union.tree_node* %retval.0, !dbg !2274
}

declare dso_local zeroext i8 @contains_placeholder_p(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @self_referential_size(%union.tree_node* %size) unnamed_addr #5 !dbg !1716 {
entry:
  %self_refs = alloca %struct.VEC_tree_heap*, align 8
  %t = alloca %union.tree_node*, align 8
  %ref = alloca %union.tree_node*, align 8
  %buf = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata %union.tree_node* %size, metadata !1720, metadata !DIExpression()), !dbg !2275
  %0 = bitcast %struct.VEC_tree_heap** %self_refs to i8*, !dbg !2276
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2276
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* null, metadata !1721, metadata !DIExpression()), !dbg !2275
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %self_refs, align 8, !dbg !2277
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !1727, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !1728, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !1729, metadata !DIExpression()), !dbg !2275
  %1 = bitcast %union.tree_node** %t to i8*, !dbg !2278
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2278
  %2 = bitcast %union.tree_node** %ref to i8*, !dbg !2278
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2278
  %3 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2279
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #8, !dbg !2279
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !1737, metadata !DIExpression()), !dbg !2280
  %call = tail call %union.tree_node* @skip_simple_arithmetic(%union.tree_node* %size) #6, !dbg !2281
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !1730, metadata !DIExpression()), !dbg !2275
  store %union.tree_node* %call, %union.tree_node** %t, align 8, !dbg !2282
  %.cast = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2283
  %bf.load = load i64, i64* %.cast, align 8, !dbg !2283
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2285
  %cmp = icmp eq i64 %bf.cast1, 59, !dbg !2285
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2286

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %self_refs, metadata !1721, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  call void @find_placeholder_in_expr(%union.tree_node* %size, %struct.VEC_tree_heap** nonnull %self_refs) #6, !dbg !2287
  %4 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %self_refs, align 8, !dbg !2288
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %4, metadata !1721, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %4, metadata !1721, metadata !DIExpression()), !dbg !2275
  %base1 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %4, i64 0, i32 0, !dbg !2288
  %call2 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %base1) #7, !dbg !2288
  %cmp3 = icmp eq i32 %call2, 0, !dbg !2288
  br i1 %cmp3, label %cond.true4, label %cond.end6, !dbg !2288

cond.true4:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 248, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2288
  br label %cond.end6, !dbg !2288

cond.end6:                                        ; preds = %if.end, %cond.true4
  call void @llvm.dbg.value(metadata %union.tree_node* %size, metadata !1730, metadata !DIExpression()), !dbg !2275
  store %union.tree_node* %size, %union.tree_node** %t, align 8, !dbg !2289
  call void @llvm.dbg.value(metadata %union.tree_node** %t, metadata !1730, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call8 = call %union.tree_node* @walk_tree_1(%union.tree_node** nonnull %t, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @copy_self_referential_tree_r, i8* null, %struct.pointer_set_t* null, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !2290
  %cmp9 = icmp eq %union.tree_node* %call8, null, !dbg !2292
  br i1 %cmp9, label %if.end11, label %cleanup, !dbg !2293

if.end11:                                         ; preds = %cond.end6
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8, !dbg !2294
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !1730, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !1720, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i32 0, metadata !1736, metadata !DIExpression()), !dbg !2275
  %6 = bitcast %union.tree_node** %ref to i64**, !dbg !2295
  %7 = bitcast %union.tree_node** %ref to %struct.tree_common**, !dbg !2297
  br label %for.cond, !dbg !2298

for.cond:                                         ; preds = %if.end84, %if.end11
  %i.0 = phi i32 [ 0, %if.end11 ], [ %inc, %if.end84 ], !dbg !2299
  %arg_list.0 = phi %union.tree_node* [ null, %if.end11 ], [ %call95, %if.end84 ], !dbg !2275
  %param_decl_list.0 = phi %union.tree_node* [ null, %if.end11 ], [ %call94, %if.end84 ], !dbg !2275
  %param_type_list.0 = phi %union.tree_node* [ null, %if.end11 ], [ %call93, %if.end84 ], !dbg !2275
  %size.addr.0 = phi %union.tree_node* [ %5, %if.end11 ], [ %call92, %if.end84 ], !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %size.addr.0, metadata !1720, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %param_type_list.0, metadata !1727, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %param_decl_list.0, metadata !1728, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %arg_list.0, metadata !1729, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1736, metadata !DIExpression()), !dbg !2275
  %8 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %self_refs, align 8, !dbg !2300
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %8, metadata !1721, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %8, metadata !1721, metadata !DIExpression()), !dbg !2275
  %base14 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %8, i64 0, i32 0, !dbg !2300
  call void @llvm.dbg.value(metadata %union.tree_node** %ref, metadata !1731, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  %call18 = call fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* %base14, i32 %i.0, %union.tree_node** nonnull %ref) #7, !dbg !2300
  %tobool19 = icmp eq i32 %call18, 0, !dbg !2301
  br i1 %tobool19, label %for.end, label %for.body, !dbg !2301

for.body:                                         ; preds = %for.cond
  %9 = load i64*, i64** %6, align 8, !dbg !2302
  %bf.load21 = load i64, i64* %9, align 8, !dbg !2302
  %bf.cast23 = and i64 %bf.load21, 65535, !dbg !2302
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast23, !dbg !2302
  %10 = load i32, i32* %arrayidx, align 4, !dbg !2302
  %cmp24 = icmp eq i32 %10, 3, !dbg !2302
  %11 = bitcast i64* %9 to %union.tree_node*, !dbg !2303
  br i1 %cmp24, label %if.then25, label %if.else, !dbg !2303

if.then25:                                        ; preds = %for.body
  %bf.cast299 = and i64 %bf.load21, 1048576, !dbg !2304
  %tobool30 = icmp eq i64 %bf.cast299, 0, !dbg !2304
  br i1 %tobool30, label %cond.true31, label %cond.end33, !dbg !2304

cond.true31:                                      ; preds = %if.then25
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2304
  %.pre = load %union.tree_node*, %union.tree_node** %ref, align 8, !dbg !2306
  br label %cond.end33, !dbg !2304

cond.end33:                                       ; preds = %if.then25, %cond.true31
  %12 = phi %union.tree_node* [ %11, %if.then25 ], [ %.pre, %cond.true31 ], !dbg !2306
  call void @llvm.dbg.value(metadata %union.tree_node* %12, metadata !1731, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %12, metadata !1741, metadata !DIExpression()), !dbg !2297
  br label %if.end44, !dbg !2307

if.else:                                          ; preds = %for.body
  %cmp39 = icmp eq i64 %bf.cast23, 121, !dbg !2308
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !1731, metadata !DIExpression()), !dbg !2275
  br i1 %cmp39, label %if.end44, label %if.else41, !dbg !2310

if.else41:                                        ; preds = %if.else
  %arrayidx4210 = getelementptr inbounds i64, i64* %9, i64 6, !dbg !2311
  %arrayidx42 = bitcast i64* %arrayidx4210 to %union.tree_node**, !dbg !2311
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx42, align 8, !dbg !2311
  call void @llvm.dbg.value(metadata %union.tree_node* %13, metadata !1741, metadata !DIExpression()), !dbg !2297
  br label %if.end44

if.end44:                                         ; preds = %if.else41, %if.else, %cond.end33
  %subst.1 = phi %union.tree_node* [ %12, %cond.end33 ], [ %13, %if.else41 ], [ %11, %if.else ], !dbg !2295
  call void @llvm.dbg.value(metadata %union.tree_node* %subst.1, metadata !1741, metadata !DIExpression()), !dbg !2297
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %i.0) #6, !dbg !2312
  %call47 = call %union.tree_node* @get_identifier(i8* nonnull %3) #6, !dbg !2313
  call void @llvm.dbg.value(metadata %union.tree_node* %call47, metadata !1745, metadata !DIExpression()), !dbg !2297
  %14 = load %struct.tree_common*, %struct.tree_common** %7, align 8, !dbg !2314
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %14, i64 0, i32 2, !dbg !2314
  %15 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2314
  call void @llvm.dbg.value(metadata %union.tree_node* %15, metadata !1746, metadata !DIExpression()), !dbg !2297
  %16 = load i32, i32* @input_location, align 4, !dbg !2315
  %call48 = call %union.tree_node* @build_decl_stat(i32 %16, i32 34, %union.tree_node* %call47, %union.tree_node* %15) #6, !dbg !2315
  call void @llvm.dbg.value(metadata %union.tree_node* %call48, metadata !1747, metadata !DIExpression()), !dbg !2297
  %17 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 88, i32 1), align 8, !dbg !2316
  %call49 = call zeroext i8 %17(%union.tree_node* null) #6, !dbg !2318
  %tobool50 = icmp eq i8 %call49, 0, !dbg !2318
  br i1 %tobool50, label %if.else81, label %land.lhs.true, !dbg !2319

land.lhs.true:                                    ; preds = %if.end44
  %18 = getelementptr inbounds %union.tree_node, %union.tree_node* %15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2320
  %bf.load52 = load i64, i64* %18, align 8, !dbg !2320
  %bf.cast546 = and i64 %bf.load52, 65535, !dbg !2320
  %cmp55 = icmp eq i64 %bf.cast546, 6, !dbg !2320
  br i1 %cmp55, label %land.lhs.true70, label %lor.lhs.false, !dbg !2320

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp61 = icmp eq i64 %bf.cast546, 7, !dbg !2320
  br i1 %cmp61, label %land.lhs.true70, label %lor.lhs.false63, !dbg !2320

lor.lhs.false63:                                  ; preds = %lor.lhs.false
  %cmp68 = icmp eq i64 %bf.cast546, 8, !dbg !2320
  br i1 %cmp68, label %land.lhs.true70, label %if.else81, !dbg !2321

land.lhs.true70:                                  ; preds = %lor.lhs.false63, %lor.lhs.false, %land.lhs.true
  %type71 = bitcast %union.tree_node* %15 to %struct.tree_type*, !dbg !2322
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type71, i64 0, i32 6, !dbg !2322
  %bf.load72 = load i32, i32* %precision, align 4, !dbg !2322
  %bf.clear73 = and i32 %bf.load72, 1023, !dbg !2322
  %19 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5) to %struct.tree_type**), align 8, !dbg !2323
  %precision75 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %19, i64 0, i32 6, !dbg !2323
  %bf.load76 = load i32, i32* %precision75, align 4, !dbg !2323
  %bf.clear77 = and i32 %bf.load76, 1023, !dbg !2323
  %cmp78 = icmp ult i32 %bf.clear73, %bf.clear77, !dbg !2324
  br i1 %cmp78, label %if.then80, label %if.else81, !dbg !2325

if.then80:                                        ; preds = %land.lhs.true70
  %20 = ptrtoint %struct.tree_type* %19 to i64, !dbg !2325
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %call48, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2326
  %21 = bitcast %union.tree_node** %initial to i64*, !dbg !2327
  store i64 %20, i64* %21, align 8, !dbg !2327
  br label %if.end84, !dbg !2326

if.else81:                                        ; preds = %if.end44, %land.lhs.true70, %lor.lhs.false63
  %initial83 = getelementptr inbounds %union.tree_node, %union.tree_node* %call48, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2328
  store %union.tree_node* %15, %union.tree_node** %initial83, align 8, !dbg !2329
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.then80
  %artificial_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call48, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2330
  %22 = bitcast i40* %artificial_flag to i64*, !dbg !2330
  %bf.load86 = load i64, i64* %22, align 8, !dbg !2331
  %bf.set = or i64 %bf.load86, 4096, !dbg !2331
  store i64 %bf.set, i64* %22, align 8, !dbg !2331
  %23 = getelementptr inbounds %union.tree_node, %union.tree_node* %call48, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2332
  %bf.load89 = load i64, i64* %23, align 8, !dbg !2333
  %bf.set91 = or i64 %bf.load89, 1048576, !dbg !2333
  store i64 %bf.set91, i64* %23, align 8, !dbg !2333
  %call92 = call %union.tree_node* @substitute_in_expr(%union.tree_node* %size.addr.0, %union.tree_node* %subst.1, %union.tree_node* %call48) #6, !dbg !2334
  call void @llvm.dbg.value(metadata %union.tree_node* %call92, metadata !1720, metadata !DIExpression()), !dbg !2275
  %call93 = call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %15, %union.tree_node* %param_type_list.0) #6, !dbg !2335
  call void @llvm.dbg.value(metadata %union.tree_node* %call93, metadata !1727, metadata !DIExpression()), !dbg !2275
  %call94 = call %union.tree_node* @chainon(%union.tree_node* %call48, %union.tree_node* %param_decl_list.0) #6, !dbg !2336
  call void @llvm.dbg.value(metadata %union.tree_node* %call94, metadata !1728, metadata !DIExpression()), !dbg !2275
  %24 = load %union.tree_node*, %union.tree_node** %ref, align 8, !dbg !2337
  call void @llvm.dbg.value(metadata %union.tree_node* %24, metadata !1731, metadata !DIExpression()), !dbg !2275
  %call95 = call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %24, %union.tree_node* %arg_list.0) #6, !dbg !2337
  call void @llvm.dbg.value(metadata %union.tree_node* %call95, metadata !1729, metadata !DIExpression()), !dbg !2275
  %inc = add i32 %i.0, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1736, metadata !DIExpression()), !dbg !2275
  br label %for.cond, !dbg !2339, !llvm.loop !2340

for.end:                                          ; preds = %for.cond
  %arg_list.0.lcssa = phi %union.tree_node* [ %arg_list.0, %for.cond ], !dbg !2275
  %param_decl_list.0.lcssa = phi %union.tree_node* [ %param_decl_list.0, %for.cond ], !dbg !2275
  %param_type_list.0.lcssa = phi %union.tree_node* [ %param_type_list.0, %for.cond ], !dbg !2275
  %size.addr.0.lcssa = phi %union.tree_node* [ %size.addr.0, %for.cond ], !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %arg_list.0.lcssa, metadata !1729, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %param_decl_list.0.lcssa, metadata !1728, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %param_type_list.0.lcssa, metadata !1727, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %size.addr.0.lcssa, metadata !1720, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %arg_list.0.lcssa, metadata !1729, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %param_decl_list.0.lcssa, metadata !1728, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %param_type_list.0.lcssa, metadata !1727, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %size.addr.0.lcssa, metadata !1720, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %arg_list.0.lcssa, metadata !1729, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %param_decl_list.0.lcssa, metadata !1728, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %param_type_list.0.lcssa, metadata !1727, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %size.addr.0.lcssa, metadata !1720, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %self_refs, metadata !1721, metadata !DIExpression(DW_OP_deref)), !dbg !2275
  call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %self_refs) #7, !dbg !2342
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2343
  %call96 = call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %25, %union.tree_node* %param_type_list.0.lcssa) #6, !dbg !2343
  call void @llvm.dbg.value(metadata %union.tree_node* %call96, metadata !1727, metadata !DIExpression()), !dbg !2275
  %call97 = call %union.tree_node* @nreverse(%union.tree_node* %call96) #6, !dbg !2344
  call void @llvm.dbg.value(metadata %union.tree_node* %call97, metadata !1727, metadata !DIExpression()), !dbg !2275
  %call98 = call %union.tree_node* @nreverse(%union.tree_node* %param_decl_list.0.lcssa) #6, !dbg !2345
  call void @llvm.dbg.value(metadata %union.tree_node* %call98, metadata !1728, metadata !DIExpression()), !dbg !2275
  %call99 = call %union.tree_node* @nreverse(%union.tree_node* %arg_list.0.lcssa) #6, !dbg !2346
  call void @llvm.dbg.value(metadata %union.tree_node* %call99, metadata !1729, metadata !DIExpression()), !dbg !2275
  %type101 = getelementptr inbounds %union.tree_node, %union.tree_node* %size.addr.0.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2347
  %26 = load %union.tree_node*, %union.tree_node** %type101, align 8, !dbg !2347
  call void @llvm.dbg.value(metadata %union.tree_node* %26, metadata !1732, metadata !DIExpression()), !dbg !2275
  %call102 = call %union.tree_node* @build_function_type(%union.tree_node* %26, %union.tree_node* %call97) #6, !dbg !2348
  call void @llvm.dbg.value(metadata %union.tree_node* %call102, metadata !1733, metadata !DIExpression()), !dbg !2275
  %27 = load i64, i64* @self_referential_size.fnno, align 8, !dbg !2349
  %inc104 = add i64 %27, 1, !dbg !2349
  store i64 %inc104, i64* @self_referential_size.fnno, align 8, !dbg !2349
  %call105 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i64 %27) #6, !dbg !2350
  %call107 = call %union.tree_node* @get_file_function_name(i8* nonnull %3) #6, !dbg !2351
  call void @llvm.dbg.value(metadata %union.tree_node* %call107, metadata !1734, metadata !DIExpression()), !dbg !2275
  %28 = load i32, i32* @input_location, align 4, !dbg !2352
  %call108 = call %union.tree_node* @build_decl_stat(i32 %28, i32 29, %union.tree_node* %call107, %union.tree_node* %call102) #6, !dbg !2352
  call void @llvm.dbg.value(metadata %union.tree_node* %call108, metadata !1735, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata %union.tree_node* %call98, metadata !1730, metadata !DIExpression()), !dbg !2275
  br label %for.cond109, !dbg !2353

for.cond109:                                      ; preds = %for.body111, %for.end
  %storemerge = phi %union.tree_node* [ %call98, %for.end ], [ %29, %for.body111 ], !dbg !2355
  store %union.tree_node* %storemerge, %union.tree_node** %t, align 8, !dbg !2355
  call void @llvm.dbg.value(metadata %union.tree_node* %storemerge, metadata !1730, metadata !DIExpression()), !dbg !2275
  %tobool110 = icmp eq %union.tree_node* %storemerge, null, !dbg !2356
  br i1 %tobool110, label %for.end114, label %for.body111, !dbg !2356

for.body111:                                      ; preds = %for.cond109
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %storemerge, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2357
  store %union.tree_node* %call108, %union.tree_node** %context, align 8, !dbg !2359
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %storemerge, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2360
  %29 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !2360
  call void @llvm.dbg.value(metadata %union.tree_node* %29, metadata !1730, metadata !DIExpression()), !dbg !2275
  br label %for.cond109, !dbg !2361, !llvm.loop !2362

for.end114:                                       ; preds = %for.cond109
  %arguments = getelementptr inbounds %union.tree_node, %union.tree_node* %call108, i64 0, i32 0, i32 0, i32 2, !dbg !2364
  store %union.tree_node* %call98, %union.tree_node** %arguments, align 8, !dbg !2365
  %30 = load i32, i32* @input_location, align 4, !dbg !2366
  %call115 = call %union.tree_node* @build_decl_stat(i32 %30, i32 36, %union.tree_node* null, %union.tree_node* %26) #6, !dbg !2366
  %result = getelementptr inbounds %union.tree_node, %union.tree_node* %call108, i64 0, i32 0, i32 0, i32 3, !dbg !2367
  store %union.tree_node* %call115, %union.tree_node** %result, align 8, !dbg !2368
  %context120 = getelementptr inbounds %union.tree_node, %union.tree_node* %call115, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2369
  store %union.tree_node* %call108, %union.tree_node** %context120, align 8, !dbg !2370
  %artificial_flag122 = getelementptr inbounds %union.tree_node, %union.tree_node* %call108, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2371
  %31 = bitcast i40* %artificial_flag122 to i64*, !dbg !2371
  %bf.load123 = load i64, i64* %31, align 8, !dbg !2372
  %bf.set129 = or i64 %bf.load123, 5120, !dbg !2373
  store i64 %bf.set129, i64* %31, align 8, !dbg !2373
  %32 = getelementptr inbounds %union.tree_node, %union.tree_node* %call108, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2374
  %bf.load131 = load i64, i64* %32, align 8, !dbg !2375
  %bf.set137 = or i64 %bf.load131, 34603008, !dbg !2376
  store i64 %bf.set137, i64* %32, align 8, !dbg !2376
  %declared_inline_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call108, i64 0, i32 0, i32 5, !dbg !2377
  %bf.load138 = load i32, i32* %declared_inline_flag, align 8, !dbg !2378
  %bf.set140 = or i32 %bf.load138, 2097152, !dbg !2378
  store i32 %bf.set140, i32* %declared_inline_flag, align 8, !dbg !2378
  %call141 = call %union.tree_node* @make_node_stat(i32 4) #6, !dbg !2379
  %initial143 = getelementptr inbounds %union.tree_node, %union.tree_node* %call108, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2380
  store %union.tree_node* %call141, %union.tree_node** %initial143, align 8, !dbg !2381
  %supercontext = getelementptr inbounds %union.tree_node, %union.tree_node* %call141, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2382
  %33 = bitcast i40* %supercontext to %union.tree_node**, !dbg !2382
  store %union.tree_node* %call108, %union.tree_node** %33, align 8, !dbg !2383
  %34 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !2384
  %call148 = call %union.tree_node* @build2_stat(i32 53, %union.tree_node* %26, %union.tree_node* %34, %union.tree_node* %size.addr.0.lcssa) #6, !dbg !2384
  call void @llvm.dbg.value(metadata %union.tree_node* %call148, metadata !1730, metadata !DIExpression()), !dbg !2275
  store %union.tree_node* %call148, %union.tree_node** %t, align 8, !dbg !2385
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2386
  call void @llvm.dbg.value(metadata %union.tree_node* %call148, metadata !1730, metadata !DIExpression()), !dbg !2275
  %call149 = call %union.tree_node* @build1_stat(i32 135, %union.tree_node* %35, %union.tree_node* %call148) #6, !dbg !2386
  %saved_tree = getelementptr inbounds %union.tree_node, %union.tree_node* %call108, i64 0, i32 0, i32 0, i32 1, !dbg !2387
  store %union.tree_node* %call149, %union.tree_node** %saved_tree, align 8, !dbg !2388
  %bf.load152 = load i64, i64* %32, align 8, !dbg !2389
  %bf.set154 = or i64 %bf.load152, 67108864, !dbg !2389
  store i64 %bf.set154, i64* %32, align 8, !dbg !2389
  %call155 = call fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** nonnull @size_functions, %union.tree_node* %call108) #7, !dbg !2390
  %36 = load i32, i32* @input_location, align 4, !dbg !2391
  %call156 = call %union.tree_node* @build_function_call_expr(i32 %36, %union.tree_node* %call108, %union.tree_node* %call99) #6, !dbg !2392
  br label %cleanup, !dbg !2393

cleanup:                                          ; preds = %cond.end6, %entry, %for.end114
  %retval.0 = phi %union.tree_node* [ %call156, %for.end114 ], [ %size, %entry ], [ %size, %cond.end6 ], !dbg !2275
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #8, !dbg !2394
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2394
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2394
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2394
  ret %union.tree_node* %retval.0, !dbg !2394
}

declare dso_local %union.tree_node* @save_expr(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @finalize_size_functions() local_unnamed_addr #5 !dbg !2395 {
entry:
  %fndecl = alloca %union.tree_node*, align 8
  %0 = bitcast %union.tree_node** %fndecl to i8*, !dbg !2399
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2399
  call void @llvm.dbg.value(metadata i32 0, metadata !2397, metadata !DIExpression()), !dbg !2400
  br label %for.cond, !dbg !2401

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2403
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2397, metadata !DIExpression()), !dbg !2400
  %1 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @size_functions, align 8, !dbg !2404
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %1, i64 0, i32 0, !dbg !2404
  call void @llvm.dbg.value(metadata %union.tree_node** %fndecl, metadata !2398, metadata !DIExpression(DW_OP_deref)), !dbg !2400
  %call = call fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* %base, i32 %i.0, %union.tree_node** nonnull %fndecl) #7, !dbg !2404
  %tobool1 = icmp eq i32 %call, 0, !dbg !2406
  br i1 %tobool1, label %for.end, label %for.body, !dbg !2406

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node*, %union.tree_node** %fndecl, align 8, !dbg !2407
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @dump_function(i32 4, %union.tree_node* %2) #6, !dbg !2409
  %3 = load %union.tree_node*, %union.tree_node** %fndecl, align 8, !dbg !2410
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @gimplify_function_tree(%union.tree_node* %3) #6, !dbg !2411
  %4 = load %union.tree_node*, %union.tree_node** %fndecl, align 8, !dbg !2412
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @dump_function(i32 5, %union.tree_node* %4) #6, !dbg !2413
  %5 = load %union.tree_node*, %union.tree_node** %fndecl, align 8, !dbg !2414
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @cgraph_finalize_function(%union.tree_node* %5, i8 zeroext 0) #6, !dbg !2415
  %inc = add i32 %i.0, 1, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2397, metadata !DIExpression()), !dbg !2400
  br label %for.cond, !dbg !2417, !llvm.loop !2418

for.end:                                          ; preds = %for.cond
  call fastcc void @VEC_tree_gc_free(%struct.VEC_tree_gc** nonnull @size_functions) #7, !dbg !2420
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2421
  ret void, !dbg !2421
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_iterate(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node** %ptr) unnamed_addr #0 !dbg !2422 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2429, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata %union.tree_node** %ptr, metadata !2430, metadata !DIExpression()), !dbg !2431
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2432
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2432

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2432
  %0 = load i32, i32* %num, align 8, !dbg !2432
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2432
  br i1 %cmp, label %if.then, label %if.else, !dbg !2434

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2435
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2435
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2435
  br label %return, !dbg !2435

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2437

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %union.tree_node* [ null, %if.else ], [ %1, %if.then ], !dbg !2439
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2439
  store %union.tree_node* %storemerge, %union.tree_node** %ptr, align 8, !dbg !2439
  ret i32 %retval.0, !dbg !2434
}

declare dso_local void @dump_function(i32, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @gimplify_function_tree(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @cgraph_finalize_function(%union.tree_node*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_gc_free(%struct.VEC_tree_gc** %vec_) unnamed_addr #0 !dbg !2440 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** @size_functions, metadata !2445, metadata !DIExpression()), !dbg !2446
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @size_functions, align 8, !dbg !2447
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !2447
  br i1 %tobool, label %if.end, label %if.then, !dbg !2449

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_gc* %0 to i8*, !dbg !2449
  tail call void @ggc_free(i8* nonnull %1) #6, !dbg !2447
  br label %if.end, !dbg !2447

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_gc* null, %struct.VEC_tree_gc** @size_functions, align 8, !dbg !2449
  ret void, !dbg !2449
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mode_for_size(i32 %size, i32 %mclass, i32 %limit) local_unnamed_addr #5 !dbg !2450 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !2454, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i32 %mclass, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i32 %limit, metadata !2456, metadata !DIExpression()), !dbg !2458
  %tobool = icmp eq i32 %limit, 0, !dbg !2459
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2461

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @mode_size, i64 0, i64 17), align 1, !dbg !2462
  %conv1 = zext i8 %0 to i32, !dbg !2462
  %mul = shl nuw nsw i32 %conv1, 3, !dbg !2462
  %cmp = icmp ult i32 %mul, %size, !dbg !2463
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2464

if.end:                                           ; preds = %entry, %land.lhs.true
  %idxprom = zext i32 %mclass to i64, !dbg !2465
  %arrayidx = getelementptr inbounds [18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 %idxprom, !dbg !2465
  br label %for.cond, !dbg !2467

for.cond:                                         ; preds = %for.inc, %if.end
  %mode.0.in.in = phi i8* [ %arrayidx, %if.end ], [ %arrayidx16, %for.inc ]
  %mode.0.in = load i8, i8* %mode.0.in.in, align 1, !dbg !2468
  call void @llvm.dbg.value(metadata i8 %mode.0.in, metadata !2457, metadata !DIExpression()), !dbg !2458
  %cmp6 = icmp eq i8 %mode.0.in, 0, !dbg !2469
  br i1 %cmp6, label %cleanup.loopexit.split.loop.exit1, label %for.body, !dbg !2471

for.body:                                         ; preds = %for.cond
  %idxprom8 = zext i8 %mode.0.in to i64, !dbg !2472
  %arrayidx9 = getelementptr inbounds [87 x i16], [87 x i16]* @mode_precision, i64 0, i64 %idxprom8, !dbg !2472
  %1 = load i16, i16* %arrayidx9, align 2, !dbg !2472
  %conv10 = zext i16 %1 to i32, !dbg !2472
  %cmp11 = icmp eq i32 %conv10, %size, !dbg !2474
  br i1 %cmp11, label %cleanup.loopexit.split.loop.exit, label %for.inc, !dbg !2475

for.inc:                                          ; preds = %for.body
  %arrayidx16 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom8, !dbg !2476
  br label %for.cond, !dbg !2477, !llvm.loop !2478

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body
  %mode.0.in.lcssa4 = phi i8 [ %mode.0.in, %for.body ], !dbg !2468
  %mode.0.le = zext i8 %mode.0.in.lcssa4 to i32, !dbg !2468
  br label %cleanup.loopexit, !dbg !2480

cleanup.loopexit.split.loop.exit1:                ; preds = %for.cond
  br label %cleanup.loopexit, !dbg !2480

cleanup.loopexit:                                 ; preds = %cleanup.loopexit.split.loop.exit1, %cleanup.loopexit.split.loop.exit
  %retval.0.ph = phi i32 [ %mode.0.le, %cleanup.loopexit.split.loop.exit ], [ 1, %cleanup.loopexit.split.loop.exit1 ]
  br label %cleanup, !dbg !2480

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true
  %retval.0 = phi i32 [ 1, %land.lhs.true ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2458
  ret i32 %retval.0, !dbg !2480
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mode_for_size_tree(%union.tree_node* %size, i32 %mclass, i32 %limit) local_unnamed_addr #5 !dbg !2481 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %size, metadata !2488, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %mclass, metadata !2489, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %limit, metadata !2490, metadata !DIExpression()), !dbg !2493
  %call = tail call i32 @host_integerp(%union.tree_node* %size, i32 1) #6, !dbg !2494
  %tobool = icmp eq i32 %call, 0, !dbg !2494
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2496

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @tree_low_cst(%union.tree_node* %size, i32 1) #6, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %call1, metadata !2491, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 undef, metadata !2492, metadata !DIExpression()), !dbg !2493
  %0 = icmp ugt i64 %call1, 4294967295, !dbg !2498
  br i1 %0, label %cleanup, label %if.end5, !dbg !2500

if.end5:                                          ; preds = %if.end
  %conv = trunc i64 %call1 to i32, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2492, metadata !DIExpression()), !dbg !2493
  %call6 = tail call i32 @mode_for_size(i32 %conv, i32 %mclass, i32 %limit) #7, !dbg !2502
  br label %cleanup, !dbg !2503

cleanup:                                          ; preds = %entry, %if.end, %if.end5
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 1, %entry ], [ 1, %if.end ], !dbg !2493
  ret i32 %retval.0, !dbg !2504
}

declare dso_local i32 @host_integerp(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i64 @tree_low_cst(%union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @smallest_mode_for_size(i32 %size, i32 %mclass) local_unnamed_addr #5 !dbg !2505 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !2509, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i32 %mclass, metadata !2510, metadata !DIExpression()), !dbg !2512
  %idxprom = zext i32 %mclass to i64, !dbg !2513
  %arrayidx = getelementptr inbounds [18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 %idxprom, !dbg !2513
  br label %for.cond, !dbg !2515

for.cond:                                         ; preds = %for.inc, %entry
  %mode.0.in.in = phi i8* [ %arrayidx, %entry ], [ %arrayidx8, %for.inc ]
  %mode.0.in = load i8, i8* %mode.0.in.in, align 1, !dbg !2516
  call void @llvm.dbg.value(metadata i8 %mode.0.in, metadata !2511, metadata !DIExpression()), !dbg !2512
  %cmp = icmp eq i8 %mode.0.in, 0, !dbg !2517
  br i1 %cmp, label %for.end, label %for.body, !dbg !2519

for.body:                                         ; preds = %for.cond
  %idxprom2 = zext i8 %mode.0.in to i64, !dbg !2520
  %arrayidx3 = getelementptr inbounds [87 x i16], [87 x i16]* @mode_precision, i64 0, i64 %idxprom2, !dbg !2520
  %0 = load i16, i16* %arrayidx3, align 2, !dbg !2520
  %conv4 = zext i16 %0 to i32, !dbg !2520
  %cmp5 = icmp ult i32 %conv4, %size, !dbg !2522
  br i1 %cmp5, label %for.inc, label %cleanup.loopexit, !dbg !2523

for.inc:                                          ; preds = %for.body
  %arrayidx8 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom2, !dbg !2524
  br label %for.cond, !dbg !2525, !llvm.loop !2526

for.end:                                          ; preds = %for.cond
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 430, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2528
  br label %cleanup, !dbg !2529

cleanup.loopexit:                                 ; preds = %for.body
  %mode.0.in.lcssa2 = phi i8 [ %mode.0.in, %for.body ], !dbg !2516
  %mode.0.le = zext i8 %mode.0.in.lcssa2 to i32, !dbg !2516
  br label %cleanup, !dbg !2530

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %mode.0.le, %cleanup.loopexit ], !dbg !2512
  ret i32 %retval.0, !dbg !2530
}

; Function Attrs: nounwind uwtable
define dso_local i32 @int_mode_for_mode(i32 %mode) local_unnamed_addr #5 !dbg !2531 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2535, metadata !DIExpression()), !dbg !2536
  %idxprom = zext i32 %mode to i64, !dbg !2537
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2537
  %0 = load i8, i8* %arrayidx, align 1, !dbg !2537
  switch i8 %0, label %sw.default [
    i8 2, label %sw.epilog
    i8 3, label %sw.epilog
    i8 10, label %sw.bb1
    i8 11, label %sw.bb1
    i8 8, label %sw.bb1
    i8 9, label %sw.bb1
    i8 12, label %sw.bb1
    i8 17, label %sw.bb1
    i8 4, label %sw.bb1
    i8 6, label %sw.bb1
    i8 5, label %sw.bb1
    i8 7, label %sw.bb1
    i8 13, label %sw.bb1
    i8 15, label %sw.bb1
    i8 14, label %sw.bb1
    i8 16, label %sw.bb1
    i8 0, label %sw.bb8
  ], !dbg !2538

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %arrayidx3 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !2539
  %1 = load i8, i8* %arrayidx3, align 1, !dbg !2539
  %conv5 = zext i8 %1 to i32, !dbg !2539
  %mul = shl nuw nsw i32 %conv5, 3, !dbg !2539
  %call = tail call i32 @mode_for_size(i32 %mul, i32 2, i32 0) #7, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %call, metadata !2535, metadata !DIExpression()), !dbg !2536
  br label %sw.epilog, !dbg !2542

sw.bb8:                                           ; preds = %entry
  %cmp = icmp eq i32 %mode, 1, !dbg !2543
  br i1 %cmp, label %sw.epilog, label %sw.default, !dbg !2545

sw.default:                                       ; preds = %sw.bb8, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 472, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2546
  br label %sw.epilog, !dbg !2547

sw.epilog:                                        ; preds = %sw.bb8, %entry, %entry, %sw.default, %sw.bb1
  %mode.addr.0 = phi i32 [ %mode, %sw.default ], [ %call, %sw.bb1 ], [ %mode, %entry ], [ %mode, %entry ], [ 1, %sw.bb8 ]
  call void @llvm.dbg.value(metadata i32 %mode.addr.0, metadata !2535, metadata !DIExpression()), !dbg !2536
  ret i32 %mode.addr.0, !dbg !2548
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mode_alignment(i32 %mode) local_unnamed_addr #5 !dbg !2549 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2553, metadata !DIExpression()), !dbg !2554
  %0 = load i32, i32* @ix86_isa_flags, align 4, !dbg !2555
  %and = and i32 %0, 32, !dbg !2555
  %cmp = icmp eq i32 %and, 0, !dbg !2555
  %cond = select i1 %cmp, i32 128, i32 256, !dbg !2555
  %idxprom = zext i32 %mode to i64, !dbg !2555
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_base_align, i64 0, i64 %idxprom, !dbg !2555
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2555
  %cmp1 = icmp eq i8 %1, 0, !dbg !2555
  br i1 %cmp1, label %cond.end, label %cond.false, !dbg !2555

cond.false:                                       ; preds = %entry
  %conv5 = zext i8 %1 to i32, !dbg !2555
  %mul6 = shl nuw nsw i32 %conv5, 3, !dbg !2555
  br label %cond.end, !dbg !2555

cond.end:                                         ; preds = %entry, %cond.false
  %cond7 = phi i32 [ %mul6, %cond.false ], [ 1, %entry ], !dbg !2555
  %cmp8 = icmp slt i32 %cond, %cond7, !dbg !2555
  br i1 %cmp8, label %cond.true10, label %cond.false15, !dbg !2555

cond.true10:                                      ; preds = %cond.end
  br label %cond.end30, !dbg !2555

cond.false15:                                     ; preds = %cond.end
  br i1 %cmp1, label %cond.end30, label %cond.false23, !dbg !2555

cond.false23:                                     ; preds = %cond.false15
  %conv26 = zext i8 %1 to i32, !dbg !2555
  %mul27 = shl nuw nsw i32 %conv26, 3, !dbg !2555
  br label %cond.end30, !dbg !2555

cond.end30:                                       ; preds = %cond.false23, %cond.false15, %cond.true10
  %cond31 = phi i32 [ %cond, %cond.true10 ], [ %mul27, %cond.false23 ], [ 1, %cond.false15 ], !dbg !2555
  ret i32 %cond31, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local void @layout_decl(%union.tree_node* %decl, i32 %known_align) local_unnamed_addr #5 !dbg !2557 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2561, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 %known_align, metadata !2562, metadata !DIExpression()), !dbg !2585
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2586
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2586
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2563, metadata !DIExpression()), !dbg !2585
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2587
  %bf.load = load i64, i64* %1, align 8, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2565, metadata !DIExpression()), !dbg !2585
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2588
  %2 = load i32, i32* %locus, align 8, !dbg !2588
  call void @llvm.dbg.value(metadata i32 %2, metadata !2566, metadata !DIExpression()), !dbg !2585
  %trunc = trunc i64 %bf.load to i16, !dbg !2589
  switch i16 %trunc, label %cond.true [
    i16 33, label %cleanup.cont
    i16 32, label %cond.end
    i16 34, label %cond.end
    i16 36, label %cond.end
    i16 35, label %cond.end
    i16 31, label %cond.end
  ], !dbg !2589

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 527, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2590
  %bf.load11.pre = load i64, i64* %1, align 8, !dbg !2591
  br label %cond.end, !dbg !2590

cond.end:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %cond.true
  %bf.load11 = phi i64 [ %bf.load, %entry ], [ %bf.load, %entry ], [ %bf.load, %entry ], [ %bf.load, %entry ], [ %bf.load, %entry ], [ %bf.load11.pre, %cond.true ], !dbg !2591
  %bf.cast13 = and i64 %bf.load11, 65535, !dbg !2591
  %arrayidx14 = getelementptr inbounds [191 x [64 x i8]], [191 x [64 x i8]]* @tree_contains_struct, i64 0, i64 %bf.cast13, i64 11, !dbg !2591
  %3 = load i8, i8* %arrayidx14, align 1, !dbg !2591
  %tobool = icmp eq i8 %3, 0, !dbg !2591
  br i1 %tobool, label %cond.end31, label %land.lhs.true, !dbg !2591

land.lhs.true:                                    ; preds = %cond.end
  %rtl15 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2591
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtl15, align 8, !dbg !2591
  %cmp16 = icmp eq %struct.rtx_def* %4, null, !dbg !2591
  br i1 %cmp16, label %cond.end31, label %cond.true18, !dbg !2591

cond.true18:                                      ; preds = %land.lhs.true
  br i1 false, label %cond.false25, label %cond.true22, !dbg !2591

cond.true22:                                      ; preds = %cond.true18
  br label %cond.end31, !dbg !2591

cond.false25:                                     ; preds = %cond.true18
  br label %cond.end31, !dbg !2591

cond.end31:                                       ; preds = %land.lhs.true, %cond.end, %cond.true22, %cond.false25
  %cond32 = phi %struct.rtx_def* [ %4, %cond.true22 ], [ undef, %cond.false25 ], [ null, %land.lhs.true ], [ null, %cond.end ], !dbg !2591
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond32, metadata !2565, metadata !DIExpression()), !dbg !2585
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2592
  %cmp33 = icmp eq %union.tree_node* %0, %5, !dbg !2594
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2595
  %spec.select = select i1 %cmp33, %union.tree_node* %6, %union.tree_node* %0, !dbg !2596
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select, metadata !2563, metadata !DIExpression()), !dbg !2585
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %spec.select, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2597
  %bf.load38 = load i64, i64* %7, align 8, !dbg !2597
  %bf.cast40 = and i64 %bf.load38, 2097152, !dbg !2597
  %bf.clear43 = and i64 %bf.load11, -2097153, !dbg !2598
  %bf.set = or i64 %bf.clear43, %bf.cast40, !dbg !2598
  store i64 %bf.set, i64* %1, align 8, !dbg !2598
  %mode = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2599
  %8 = bitcast i40* %mode to i64*, !dbg !2599
  %bf.load44 = load i64, i64* %8, align 8, !dbg !2599
  %bf.cast462 = and i64 %bf.load44, 255, !dbg !2601
  %cmp47 = icmp eq i64 %bf.cast462, 0, !dbg !2601
  br i1 %cmp47, label %if.then49, label %if.end72, !dbg !2602

if.then49:                                        ; preds = %cond.end31
  %bf.load51 = load i64, i64* %7, align 8, !dbg !2603
  %bf.cast5317 = and i64 %bf.load51, 65535, !dbg !2603
  %cmp54 = icmp eq i64 %bf.cast5317, 14, !dbg !2603
  br i1 %cmp54, label %cond.true56, label %cond.false57, !dbg !2603

cond.true56:                                      ; preds = %if.then49
  %call = tail call i32 @vector_type_mode(%union.tree_node* %spec.select) #7, !dbg !2603
  %bf.load67.pre = load i64, i64* %8, align 8, !dbg !2604
  br label %cond.end63, !dbg !2603

cond.false57:                                     ; preds = %if.then49
  %type58 = bitcast %union.tree_node* %spec.select to %struct.tree_type*, !dbg !2603
  %mode59 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type58, i64 0, i32 6, !dbg !2603
  %bf.load60 = load i32, i32* %mode59, align 4, !dbg !2603
  %bf.lshr61 = lshr i32 %bf.load60, 16, !dbg !2603
  %bf.clear62 = and i32 %bf.lshr61, 255, !dbg !2603
  br label %cond.end63, !dbg !2603

cond.end63:                                       ; preds = %cond.false57, %cond.true56
  %bf.load67 = phi i64 [ %bf.load67.pre, %cond.true56 ], [ %bf.load44, %cond.false57 ], !dbg !2604
  %cond64 = phi i32 [ %call, %cond.true56 ], [ %bf.clear62, %cond.false57 ], !dbg !2603
  %9 = and i32 %cond64, 255, !dbg !2604
  %bf.value68 = zext i32 %9 to i64, !dbg !2604
  %bf.clear69 = and i64 %bf.load67, -256, !dbg !2604
  %bf.set70 = or i64 %bf.clear69, %bf.value68, !dbg !2604
  store i64 %bf.set70, i64* %8, align 8, !dbg !2604
  br label %if.end72, !dbg !2605

if.end72:                                         ; preds = %cond.end63, %cond.end31
  %size = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2606
  %10 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !2606
  %cmp74 = icmp eq %union.tree_node* %10, null, !dbg !2608
  br i1 %cmp74, label %if.then76, label %if.else, !dbg !2609

if.then76:                                        ; preds = %if.end72
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %spec.select, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2610
  %12 = bitcast %union.tree_node** %11 to i64*, !dbg !2610
  %13 = load i64, i64* %12, align 8, !dbg !2610
  %14 = bitcast %union.tree_node** %size to i64*, !dbg !2612
  store i64 %13, i64* %14, align 8, !dbg !2612
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %spec.select, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2613
  %16 = bitcast %union.tree_node** %15 to i64*, !dbg !2613
  %17 = load i64, i64* %16, align 8, !dbg !2613
  %size_unit83 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2614
  %18 = bitcast %union.tree_node** %size_unit83 to i64*, !dbg !2615
  store i64 %17, i64* %18, align 8, !dbg !2615
  br label %if.end96, !dbg !2616

if.else:                                          ; preds = %if.end72
  %size_unit85 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2617
  %19 = load %union.tree_node*, %union.tree_node** %size_unit85, align 8, !dbg !2617
  %cmp86 = icmp eq %union.tree_node* %19, null, !dbg !2619
  br i1 %cmp86, label %if.then88, label %if.end96, !dbg !2620

if.then88:                                        ; preds = %if.else
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2621
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 21), align 8, !dbg !2622
  %call91 = tail call %union.tree_node* @size_binop_loc(i32 %2, i32 68, %union.tree_node* nonnull %10, %union.tree_node* %21) #6, !dbg !2623
  %call92 = tail call %union.tree_node* @fold_convert_loc(i32 %2, %union.tree_node* %20, %union.tree_node* %call91) #6, !dbg !2624
  store %union.tree_node* %call92, %union.tree_node** %size_unit85, align 8, !dbg !2625
  br label %if.end96, !dbg !2626

if.end96:                                         ; preds = %if.else, %if.then88, %if.then76
  %bf.cast18 = and i64 %bf.load, 65535, !dbg !2627
  %cmp97 = icmp eq i64 %bf.cast18, 31, !dbg !2627
  br i1 %cmp97, label %if.else100, label %if.then99, !dbg !2628

if.then99:                                        ; preds = %if.end96
  tail call fastcc void @do_type_align(%union.tree_node* %spec.select, %union.tree_node* %decl) #7, !dbg !2629
  br label %if.end329, !dbg !2629

if.else100:                                       ; preds = %if.end96
  %bf.load103 = load i64, i64* %1, align 8, !dbg !2630
  call void @llvm.dbg.value(metadata i8 0, metadata !2570, metadata !DIExpression()), !dbg !2631
  %bf.lshr111 = lshr i64 %bf.load103, 41, !dbg !2632
  %22 = trunc i64 %bf.lshr111 to i8, !dbg !2632
  %bf.cast113 = and i8 %22, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i8 %bf.cast113, metadata !2571, metadata !DIExpression()), !dbg !2631
  %bf.load116 = load i64, i64* %8, align 8, !dbg !2633
  %bf.cast1193 = and i64 %bf.load116, 33554432, !dbg !2633
  %tobool120 = icmp eq i64 %bf.cast1193, 0, !dbg !2633
  br i1 %tobool120, label %if.else260, label %if.then121, !dbg !2634

if.then121:                                       ; preds = %if.else100
  %23 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2635
  store %union.tree_node* %spec.select, %union.tree_node** %23, align 8, !dbg !2636
  %24 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !2637
  %call124 = tail call i32 @integer_zerop(%union.tree_node* %24) #6, !dbg !2639
  %tobool125 = icmp eq i32 %call124, 0, !dbg !2639
  br i1 %tobool125, label %if.end131, label %land.lhs.true126, !dbg !2640

land.lhs.true126:                                 ; preds = %if.then121
  %25 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 18), align 8, !dbg !2641
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2642
  %26 = load %union.tree_node*, %union.tree_node** %context, align 8, !dbg !2642
  %call128 = tail call zeroext i8 %25(%union.tree_node* %26) #6, !dbg !2643
  %tobool129 = icmp eq i8 %call128, 0, !dbg !2643
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !2644

if.then130:                                       ; preds = %land.lhs.true126
  call void @llvm.dbg.value(metadata i8 1, metadata !2570, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8 0, metadata !2571, metadata !DIExpression()), !dbg !2631
  tail call fastcc void @do_type_align(%union.tree_node* %spec.select, %union.tree_node* %decl) #7, !dbg !2645
  br label %if.end131, !dbg !2648

if.end131:                                        ; preds = %land.lhs.true126, %if.then121, %if.then130
  %zero_bitfield.0 = phi i8 [ 0, %land.lhs.true126 ], [ 1, %if.then130 ], [ 0, %if.then121 ], !dbg !2631
  %packed_p.0 = phi i8 [ %bf.cast113, %land.lhs.true126 ], [ 0, %if.then130 ], [ %bf.cast113, %if.then121 ], !dbg !2631
  call void @llvm.dbg.value(metadata i8 %packed_p.0, metadata !2571, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8 %zero_bitfield.0, metadata !2570, metadata !DIExpression()), !dbg !2631
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %spec.select, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2649
  %28 = load %union.tree_node*, %union.tree_node** %27, align 8, !dbg !2649
  %cmp134 = icmp eq %union.tree_node* %28, null, !dbg !2650
  br i1 %cmp134, label %if.end215, label %land.lhs.true136, !dbg !2651

land.lhs.true136:                                 ; preds = %if.end131
  %29 = getelementptr inbounds %union.tree_node, %union.tree_node* %28, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2651
  %bf.load140 = load i64, i64* %29, align 8, !dbg !2652
  %bf.cast14214 = and i64 %bf.load140, 65535, !dbg !2653
  %cmp143 = icmp eq i64 %bf.cast14214, 23, !dbg !2653
  br i1 %cmp143, label %land.lhs.true145, label %if.end215, !dbg !2654

land.lhs.true145:                                 ; preds = %land.lhs.true136
  %bf.load147 = load i64, i64* %7, align 8, !dbg !2655
  %bf.cast14915 = and i64 %bf.load147, 65535, !dbg !2655
  %cmp150 = icmp eq i64 %bf.cast14915, 14, !dbg !2655
  br i1 %cmp150, label %cond.true152, label %cond.false154, !dbg !2655

cond.true152:                                     ; preds = %land.lhs.true145
  %call153 = tail call i32 @vector_type_mode(%union.tree_node* %spec.select) #7, !dbg !2655
  br label %cond.end160, !dbg !2655

cond.false154:                                    ; preds = %land.lhs.true145
  %type155 = bitcast %union.tree_node* %spec.select to %struct.tree_type*, !dbg !2655
  %mode156 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type155, i64 0, i32 6, !dbg !2655
  %bf.load157 = load i32, i32* %mode156, align 4, !dbg !2655
  %bf.lshr158 = lshr i32 %bf.load157, 16, !dbg !2655
  %bf.clear159 = and i32 %bf.lshr158, 255, !dbg !2655
  br label %cond.end160, !dbg !2655

cond.end160:                                      ; preds = %cond.false154, %cond.true152
  %cond161 = phi i32 [ %call153, %cond.true152 ], [ %bf.clear159, %cond.false154 ], !dbg !2655
  %idxprom162 = zext i32 %cond161 to i64, !dbg !2655
  %arrayidx163 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom162, !dbg !2655
  %30 = load i8, i8* %arrayidx163, align 1, !dbg !2655
  %cmp165 = icmp eq i8 %30, 2, !dbg !2656
  br i1 %cmp165, label %if.then167, label %if.end215, !dbg !2657

if.then167:                                       ; preds = %cond.end160
  %31 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !2658
  %call170 = tail call i32 @mode_for_size_tree(%union.tree_node* %31, i32 2, i32 1) #7, !dbg !2659
  call void @llvm.dbg.value(metadata i32 %call170, metadata !2573, metadata !DIExpression()), !dbg !2660
  %call171 = tail call i32 @get_mode_alignment(i32 %call170) #7, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %call171, metadata !2578, metadata !DIExpression()), !dbg !2660
  %cmp172 = icmp eq i32 %call170, 1, !dbg !2662
  br i1 %cmp172, label %if.end215, label %land.lhs.true174, !dbg !2664

land.lhs.true174:                                 ; preds = %if.then167
  %cmp175 = icmp ugt i32 %call171, 8, !dbg !2665
  br i1 %cmp175, label %land.lhs.true177, label %land.lhs.true185, !dbg !2666

land.lhs.true177:                                 ; preds = %land.lhs.true174
  %bf.load180 = load i64, i64* %1, align 8, !dbg !2667
  %bf.cast18316 = and i64 %bf.load180, 2199023255552, !dbg !2667
  %tobool184 = icmp eq i64 %bf.cast18316, 0, !dbg !2667
  br i1 %tobool184, label %land.lhs.true185, label %if.end215, !dbg !2668

land.lhs.true185:                                 ; preds = %land.lhs.true177, %land.lhs.true174
  %cmp186 = icmp eq i32 %known_align, 0, !dbg !2669
  %cmp189 = icmp ule i32 %call171, %known_align, !dbg !2670
  %or.cond = or i1 %cmp186, %cmp189, !dbg !2671
  br i1 %or.cond, label %if.then191, label %if.end215, !dbg !2671

if.then191:                                       ; preds = %land.lhs.true185
  %align = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2672
  %32 = load i32, i32* %align, align 8, !dbg !2672
  %cmp193 = icmp ugt i32 %call171, %32, !dbg !2672
  br i1 %cmp193, label %cond.end199, label %cond.false196, !dbg !2672

cond.false196:                                    ; preds = %if.then191
  br label %cond.end199, !dbg !2672

cond.end199:                                      ; preds = %if.then191, %cond.false196
  %cond200 = phi i32 [ %32, %cond.false196 ], [ %call171, %if.then191 ], !dbg !2672
  store i32 %cond200, i32* %align, align 8, !dbg !2674
  %bf.load205 = load i64, i64* %8, align 8, !dbg !2675
  %33 = and i32 %call170, 255, !dbg !2675
  %bf.value206 = zext i32 %33 to i64, !dbg !2675
  %bf.clear207 = and i64 %bf.load205, -33554688, !dbg !2675
  %bf.set208 = or i64 %bf.clear207, %bf.value206, !dbg !2675
  store i64 %bf.set208, i64* %8, align 8, !dbg !2676
  br label %if.end215, !dbg !2677

if.end215:                                        ; preds = %land.lhs.true177, %if.then167, %if.end131, %cond.end199, %land.lhs.true185, %cond.end160, %land.lhs.true136
  %bf.load217 = load i64, i64* %7, align 8, !dbg !2678
  %bf.cast21912 = and i64 %bf.load217, 65535, !dbg !2678
  %cmp220 = icmp eq i64 %bf.cast21912, 14, !dbg !2678
  br i1 %cmp220, label %cond.true222, label %cond.false224, !dbg !2678

cond.true222:                                     ; preds = %if.end215
  %call223 = tail call i32 @vector_type_mode(%union.tree_node* %spec.select) #7, !dbg !2678
  br label %cond.end230, !dbg !2678

cond.false224:                                    ; preds = %if.end215
  %type225 = bitcast %union.tree_node* %spec.select to %struct.tree_type*, !dbg !2678
  %mode226 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type225, i64 0, i32 6, !dbg !2678
  %bf.load227 = load i32, i32* %mode226, align 4, !dbg !2678
  %bf.lshr228 = lshr i32 %bf.load227, 16, !dbg !2678
  %bf.clear229 = and i32 %bf.lshr228, 255, !dbg !2678
  br label %cond.end230, !dbg !2678

cond.end230:                                      ; preds = %cond.false224, %cond.true222
  %cond231 = phi i32 [ %call223, %cond.true222 ], [ %bf.clear229, %cond.false224 ], !dbg !2678
  %cmp232 = icmp eq i32 %cond231, 1, !dbg !2680
  br i1 %cmp232, label %land.lhs.true234, label %if.end274, !dbg !2681

land.lhs.true234:                                 ; preds = %cond.end230
  %bf.load237 = load i64, i64* %8, align 8, !dbg !2682
  %bf.cast23913 = and i64 %bf.load237, 255, !dbg !2683
  %cmp240 = icmp eq i64 %bf.cast23913, 1, !dbg !2683
  br i1 %cmp240, label %land.lhs.true242, label %if.end274, !dbg !2684

land.lhs.true242:                                 ; preds = %land.lhs.true234
  %34 = getelementptr inbounds %union.tree_node, %union.tree_node* %spec.select, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2685
  %35 = load i32, i32* %34, align 8, !dbg !2685
  %cmp245 = icmp ugt i32 %35, %known_align, !dbg !2686
  br i1 %cmp245, label %if.end274, label %land.lhs.true247, !dbg !2687

land.lhs.true247:                                 ; preds = %land.lhs.true242
  %align249 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2688
  %36 = load i32, i32* %align249, align 8, !dbg !2688
  %cmp252 = icmp ult i32 %36, %35, !dbg !2689
  br i1 %cmp252, label %if.end274, label %if.then254, !dbg !2690

if.then254:                                       ; preds = %land.lhs.true247
  %bf.clear258 = and i64 %bf.load237, -33554433, !dbg !2691
  store i64 %bf.clear258, i64* %8, align 8, !dbg !2691
  br label %if.end274, !dbg !2692

if.else260:                                       ; preds = %if.else100
  %tobool262 = icmp eq i8 %bf.cast113, 0, !dbg !2693
  br i1 %tobool262, label %if.else272, label %land.lhs.true263, !dbg !2695

land.lhs.true263:                                 ; preds = %if.else260
  %bf.cast26911 = and i64 %bf.load103, 4398046511104, !dbg !2696
  %tobool270 = icmp eq i64 %bf.cast26911, 0, !dbg !2696
  br i1 %tobool270, label %if.else272, label %if.end274, !dbg !2697

if.else272:                                       ; preds = %land.lhs.true263, %if.else260
  tail call fastcc void @do_type_align(%union.tree_node* %spec.select, %union.tree_node* %decl) #7, !dbg !2698
  br label %if.end274

if.end274:                                        ; preds = %land.lhs.true247, %land.lhs.true242, %land.lhs.true263, %if.else272, %cond.end230, %land.lhs.true234, %if.then254
  %zero_bitfield.1 = phi i8 [ %zero_bitfield.0, %if.then254 ], [ %zero_bitfield.0, %land.lhs.true247 ], [ %zero_bitfield.0, %land.lhs.true242 ], [ %zero_bitfield.0, %land.lhs.true234 ], [ %zero_bitfield.0, %cond.end230 ], [ 0, %land.lhs.true263 ], [ 0, %if.else272 ], !dbg !2699
  %packed_p.1 = phi i8 [ %packed_p.0, %if.then254 ], [ %packed_p.0, %land.lhs.true247 ], [ %packed_p.0, %land.lhs.true242 ], [ %packed_p.0, %land.lhs.true234 ], [ %packed_p.0, %cond.end230 ], [ %bf.cast113, %land.lhs.true263 ], [ %bf.cast113, %if.else272 ], !dbg !2700
  call void @llvm.dbg.value(metadata i8 %packed_p.1, metadata !2571, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8 %zero_bitfield.1, metadata !2570, metadata !DIExpression()), !dbg !2631
  %tobool276 = icmp eq i8 %packed_p.1, 0, !dbg !2701
  %bf.cast1064 = and i64 %bf.load103, 4398046511104, !dbg !2703
  %tobool278 = icmp ne i64 %bf.cast1064, 0, !dbg !2703
  %or.cond1 = or i1 %tobool276, %tobool278, !dbg !2704
  br i1 %or.cond1, label %if.end292, label %if.then279, !dbg !2704

if.then279:                                       ; preds = %if.end274
  %align281 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2705
  %37 = load i32, i32* %align281, align 8, !dbg !2705
  %cmp282 = icmp ult i32 %37, 8, !dbg !2705
  br i1 %cmp282, label %cond.true284, label %cond.end288, !dbg !2705

cond.true284:                                     ; preds = %if.then279
  br label %cond.end288, !dbg !2705

cond.end288:                                      ; preds = %if.then279, %cond.true284
  %cond289 = phi i32 [ %37, %cond.true284 ], [ 8, %if.then279 ], !dbg !2705
  store i32 %cond289, i32* %align281, align 8, !dbg !2706
  br label %if.end292, !dbg !2707

if.end292:                                        ; preds = %if.end274, %cond.end288
  br i1 %tobool276, label %land.lhs.true294, label %if.end308, !dbg !2708

land.lhs.true294:                                 ; preds = %if.end292
  %bf.load297 = load i64, i64* %1, align 8, !dbg !2710
  %bf.cast3005 = and i64 %bf.load297, 4398046511104, !dbg !2710
  %tobool301 = icmp eq i64 %bf.cast3005, 0, !dbg !2710
  br i1 %tobool301, label %if.then302, label %if.end308, !dbg !2711

if.then302:                                       ; preds = %land.lhs.true294
  %align304 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2712
  %38 = load i32, i32* %align304, align 8, !dbg !2712
  %call305 = tail call i32 @x86_field_alignment(%union.tree_node* %decl, i32 %38) #6, !dbg !2712
  store i32 %call305, i32* %align304, align 8, !dbg !2714
  br label %if.end308, !dbg !2715

if.end308:                                        ; preds = %land.lhs.true294, %if.end292, %if.then302
  %tobool309 = icmp eq i8 %zero_bitfield.1, 0, !dbg !2716
  %39 = load i32, i32* @initial_max_fld_align, align 4, !dbg !2718
  %mul = shl i32 %39, 3, !dbg !2718
  %40 = load i32, i32* @maximum_field_alignment, align 4, !dbg !2718
  %mfa.0 = select i1 %tobool309, i32 %40, i32 %mul, !dbg !2718
  call void @llvm.dbg.value(metadata i32 %mfa.0, metadata !2572, metadata !DIExpression()), !dbg !2631
  %cmp313 = icmp eq i32 %mfa.0, 0, !dbg !2719
  br i1 %cmp313, label %if.end329, label %if.then315, !dbg !2721

if.then315:                                       ; preds = %if.end308
  %align317 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2722
  %41 = load i32, i32* %align317, align 8, !dbg !2722
  %cmp318 = icmp ult i32 %41, %mfa.0, !dbg !2722
  br i1 %cmp318, label %cond.true320, label %cond.end324, !dbg !2722

cond.true320:                                     ; preds = %if.then315
  br label %cond.end324, !dbg !2722

cond.end324:                                      ; preds = %if.then315, %cond.true320
  %cond325 = phi i32 [ %41, %cond.true320 ], [ %mfa.0, %if.then315 ], !dbg !2722
  store i32 %cond325, i32* %align317, align 8, !dbg !2723
  br label %if.end329, !dbg !2724

if.end329:                                        ; preds = %if.end308, %cond.end324, %if.then99
  %42 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !2725
  %cmp332 = icmp eq %union.tree_node* %42, null, !dbg !2727
  br i1 %cmp332, label %if.end349, label %land.lhs.true334, !dbg !2728

land.lhs.true334:                                 ; preds = %if.end329
  %43 = getelementptr inbounds %union.tree_node, %union.tree_node* %42, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2728
  %bf.load338 = load i64, i64* %43, align 8, !dbg !2729
  %bf.cast34010 = and i64 %bf.load338, 65535, !dbg !2730
  %cmp341 = icmp eq i64 %bf.cast34010, 23, !dbg !2730
  br i1 %cmp341, label %if.end349, label %if.then343, !dbg !2731

if.then343:                                       ; preds = %land.lhs.true334
  %call346 = tail call %union.tree_node* @variable_size(%union.tree_node* nonnull %42) #7, !dbg !2732
  store %union.tree_node* %call346, %union.tree_node** %size, align 8, !dbg !2733
  br label %if.end349, !dbg !2734

if.end349:                                        ; preds = %land.lhs.true334, %if.end329, %if.then343
  %size_unit351 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2735
  %44 = load %union.tree_node*, %union.tree_node** %size_unit351, align 8, !dbg !2735
  %cmp352 = icmp eq %union.tree_node* %44, null, !dbg !2737
  br i1 %cmp352, label %if.end369, label %land.lhs.true354, !dbg !2738

land.lhs.true354:                                 ; preds = %if.end349
  %45 = getelementptr inbounds %union.tree_node, %union.tree_node* %44, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2738
  %bf.load358 = load i64, i64* %45, align 8, !dbg !2739
  %bf.cast3609 = and i64 %bf.load358, 65535, !dbg !2740
  %cmp361 = icmp eq i64 %bf.cast3609, 23, !dbg !2740
  br i1 %cmp361, label %if.end369, label %if.then363, !dbg !2741

if.then363:                                       ; preds = %land.lhs.true354
  %call366 = tail call %union.tree_node* @variable_size(%union.tree_node* nonnull %44) #7, !dbg !2742
  store %union.tree_node* %call366, %union.tree_node** %size_unit351, align 8, !dbg !2743
  br label %if.end369, !dbg !2744

if.end369:                                        ; preds = %land.lhs.true354, %if.end349, %if.then363
  %46 = phi %union.tree_node* [ %44, %land.lhs.true354 ], [ null, %if.end349 ], [ %call366, %if.then363 ]
  %47 = load i8, i8* @warn_larger_than, align 1, !dbg !2745
  %tobool371 = icmp eq i8 %47, 0, !dbg !2745
  br i1 %tobool371, label %if.end416, label %land.lhs.true372, !dbg !2746

land.lhs.true372:                                 ; preds = %if.end369
  switch i16 %trunc, label %if.end416 [
    i16 32, label %land.lhs.true378
    i16 34, label %land.lhs.true378
  ], !dbg !2747

land.lhs.true378:                                 ; preds = %land.lhs.true372, %land.lhs.true372
  %bf.load381 = load i64, i64* %8, align 8, !dbg !2748
  %bf.cast3847 = and i64 %bf.load381, 33554432, !dbg !2748
  %tobool385 = icmp eq i64 %bf.cast3847, 0, !dbg !2748
  br i1 %tobool385, label %if.then386, label %if.end416, !dbg !2749

if.then386:                                       ; preds = %land.lhs.true378
  call void @llvm.dbg.value(metadata %union.tree_node* %46, metadata !2579, metadata !DIExpression()), !dbg !2750
  %cmp390 = icmp eq %union.tree_node* %46, null, !dbg !2751
  br i1 %cmp390, label %if.end416, label %land.lhs.true392, !dbg !2752

land.lhs.true392:                                 ; preds = %if.then386
  %48 = getelementptr inbounds %union.tree_node, %union.tree_node* %46, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2753
  %bf.load394 = load i64, i64* %48, align 8, !dbg !2753
  %bf.cast3968 = and i64 %bf.load394, 65535, !dbg !2754
  %cmp397 = icmp eq i64 %bf.cast3968, 23, !dbg !2754
  br i1 %cmp397, label %land.lhs.true399, label %if.end416, !dbg !2755

land.lhs.true399:                                 ; preds = %land.lhs.true392
  %49 = load i64, i64* @larger_than_size, align 8, !dbg !2756
  %call400 = tail call i32 @compare_tree_int(%union.tree_node* nonnull %46, i64 %49) #6, !dbg !2757
  %cmp401 = icmp sgt i32 %call400, 0, !dbg !2758
  br i1 %cmp401, label %if.then403, label %if.end416, !dbg !2759

if.then403:                                       ; preds = %land.lhs.true399
  %int_cst404 = getelementptr inbounds %union.tree_node, %union.tree_node* %46, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2760
  %low = bitcast i32* %int_cst404 to i64*, !dbg !2760
  %50 = load i64, i64* %low, align 8, !dbg !2760
  call void @llvm.dbg.value(metadata i32 undef, metadata !2582, metadata !DIExpression()), !dbg !2761
  %sext = shl i64 %50, 32, !dbg !2762
  %conv406 = ashr exact i64 %sext, 32, !dbg !2762
  %call407 = tail call i32 @compare_tree_int(%union.tree_node* nonnull %46, i64 %conv406) #6, !dbg !2764
  %cmp408 = icmp eq i32 %call407, 0, !dbg !2765
  br i1 %cmp408, label %if.then410, label %if.else412, !dbg !2766

if.then410:                                       ; preds = %if.then403
  %conv405 = trunc i64 %50 to i32, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %conv405, metadata !2582, metadata !DIExpression()), !dbg !2761
  %call411 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), %union.tree_node* %decl, i32 %conv405) #6, !dbg !2767
  br label %if.end416, !dbg !2767

if.else412:                                       ; preds = %if.then403
  %51 = load i64, i64* @larger_than_size, align 8, !dbg !2768
  %call413 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), %union.tree_node* %decl, i64 %51) #6, !dbg !2769
  br label %if.end416

if.end416:                                        ; preds = %if.then386, %land.lhs.true378, %if.end369, %land.lhs.true392, %land.lhs.true399, %if.else412, %if.then410, %land.lhs.true372
  %tobool417 = icmp eq %struct.rtx_def* %cond32, null, !dbg !2770
  br i1 %tobool417, label %cleanup.cont, label %if.then418, !dbg !2772

if.then418:                                       ; preds = %if.end416
  %bf.load421 = load i64, i64* %8, align 8, !dbg !2773
  %52 = trunc i64 %bf.load421 to i32, !dbg !2773
  %53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond32, i64 0, i32 0, !dbg !2773
  %bf.load424 = load i32, i32* %53, align 8, !dbg !2773
  %bf.cast423 = shl i32 %52, 16, !dbg !2773
  %bf.shl426 = and i32 %bf.cast423, 16711680, !dbg !2773
  %bf.clear427 = and i32 %bf.load424, -16711681, !dbg !2773
  %bf.set428 = or i32 %bf.clear427, %bf.shl426, !dbg !2773
  store i32 %bf.set428, i32* %53, align 8, !dbg !2773
  tail call void @set_decl_rtl(%union.tree_node* %decl, %struct.rtx_def* null) #6, !dbg !2775
  tail call void @set_mem_attributes(%struct.rtx_def* nonnull %cond32, %union.tree_node* %decl, i32 1) #6, !dbg !2776
  tail call void @set_decl_rtl(%union.tree_node* %decl, %struct.rtx_def* nonnull %cond32) #6, !dbg !2777
  br label %cleanup.cont, !dbg !2778

cleanup.cont:                                     ; preds = %if.end416, %entry, %if.then418
  ret void, !dbg !2779
}

declare dso_local void @make_decl_rtl(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @vector_type_mode(%union.tree_node* %t) local_unnamed_addr #5 !dbg !2780 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2784, metadata !DIExpression()), !dbg !2789
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2790
  %bf.load = load i64, i64* %0, align 8, !dbg !2790
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2790
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !2790
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2790

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2790
  br label %cond.end, !dbg !2790

cond.end:                                         ; preds = %entry, %cond.true
  %type = bitcast %union.tree_node* %t to %struct.tree_type*, !dbg !2791
  %mode1 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i64 0, i32 6, !dbg !2792
  %bf.load2 = load i32, i32* %mode1, align 4, !dbg !2792
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !2792
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %bf.clear3, metadata !2785, metadata !DIExpression()), !dbg !2789
  %idxprom = zext i32 %bf.clear3 to i64, !dbg !2793
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2793
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2793
  %cmp4 = icmp eq i8 %1, 12, !dbg !2793
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false, !dbg !2793

lor.lhs.false:                                    ; preds = %cond.end
  %cmp9 = icmp eq i8 %1, 17, !dbg !2793
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false11, !dbg !2793

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %cmp15 = icmp eq i8 %1, 13, !dbg !2793
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false17, !dbg !2793

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %cmp21 = icmp eq i8 %1, 14, !dbg !2793
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false23, !dbg !2793

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  %cmp27 = icmp eq i8 %1, 15, !dbg !2793
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false29, !dbg !2793

lor.lhs.false29:                                  ; preds = %lor.lhs.false23
  %cmp33 = icmp eq i8 %1, 16, !dbg !2793
  br i1 %cmp33, label %land.lhs.true, label %cleanup73, !dbg !2794

land.lhs.true:                                    ; preds = %lor.lhs.false29, %lor.lhs.false23, %lor.lhs.false17, %lor.lhs.false11, %lor.lhs.false, %cond.end
  %2 = load i8 (i32)*, i8 (i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 59), align 8, !dbg !2795
  %call = tail call zeroext i8 %2(i32 %bf.clear3) #6, !dbg !2796
  %tobool = icmp eq i8 %call, 0, !dbg !2796
  br i1 %tobool, label %if.then, label %lor.lhs.false35, !dbg !2797

lor.lhs.false35:                                  ; preds = %land.lhs.true
  %arrayidx37 = getelementptr inbounds [87 x i8], [87 x i8]* @have_regs_of_mode, i64 0, i64 %idxprom, !dbg !2798
  %3 = load i8, i8* %arrayidx37, align 1, !dbg !2798
  %tobool38 = icmp eq i8 %3, 0, !dbg !2798
  br i1 %tobool38, label %if.then, label %cleanup73, !dbg !2799

if.then:                                          ; preds = %lor.lhs.false35, %land.lhs.true
  %type39 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2800
  %4 = bitcast %union.tree_node** %type39 to %struct.tree_type**, !dbg !2800
  %5 = load %struct.tree_type*, %struct.tree_type** %4, align 8, !dbg !2800
  %mode41 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %5, i64 0, i32 6, !dbg !2801
  %bf.load42 = load i32, i32* %mode41, align 4, !dbg !2801
  %bf.lshr43 = lshr i32 %bf.load42, 16, !dbg !2801
  %bf.clear44 = and i32 %bf.lshr43, 255, !dbg !2801
  call void @llvm.dbg.value(metadata i32 %bf.clear44, metadata !2786, metadata !DIExpression()), !dbg !2802
  %idxprom45 = zext i32 %bf.clear44 to i64, !dbg !2803
  %arrayidx46 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom45, !dbg !2803
  %6 = load i8, i8* %arrayidx46, align 1, !dbg !2803
  %cmp48 = icmp eq i8 %6, 2, !dbg !2805
  br i1 %cmp48, label %if.then50, label %if.end71, !dbg !2806

if.then50:                                        ; preds = %if.then
  %bf.load52 = load i32, i32* %mode1, align 4, !dbg !2807
  %bf.clear53 = and i32 %bf.load52, 1023, !dbg !2807
  %sh_prom = zext i32 %bf.clear53 to i64, !dbg !2807
  %arrayidx55 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom45, !dbg !2809
  %7 = load i8, i8* %arrayidx55, align 1, !dbg !2809
  %conv57 = zext i8 %7 to i64, !dbg !2809
  %mul = shl nuw nsw i64 %conv57, 3, !dbg !2809
  %mul60 = shl i64 %mul, %sh_prom, !dbg !2810
  %conv61 = trunc i64 %mul60 to i32, !dbg !2807
  %call62 = tail call i32 @mode_for_size(i32 %conv61, i32 2, i32 0) #7, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %call62, metadata !2785, metadata !DIExpression()), !dbg !2789
  %cmp63 = icmp eq i32 %call62, 0, !dbg !2812
  br i1 %cmp63, label %if.end71, label %land.lhs.true65, !dbg !2814

land.lhs.true65:                                  ; preds = %if.then50
  %idxprom66 = zext i32 %call62 to i64, !dbg !2815
  %arrayidx67 = getelementptr inbounds [87 x i8], [87 x i8]* @have_regs_of_mode, i64 0, i64 %idxprom66, !dbg !2815
  %8 = load i8, i8* %arrayidx67, align 1, !dbg !2815
  %tobool69 = icmp eq i8 %8, 0, !dbg !2815
  br i1 %tobool69, label %if.end71, label %cleanup73, !dbg !2816

if.end71:                                         ; preds = %land.lhs.true65, %if.then50, %if.then
  br label %cleanup73, !dbg !2817

cleanup73:                                        ; preds = %lor.lhs.false35, %land.lhs.true65, %lor.lhs.false29, %if.end71
  %retval.1 = phi i32 [ 1, %if.end71 ], [ %call62, %land.lhs.true65 ], [ %bf.clear3, %lor.lhs.false35 ], [ %bf.clear3, %lor.lhs.false29 ], !dbg !2789
  ret i32 %retval.1, !dbg !2818
}

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @size_binop_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @do_type_align(%union.tree_node* %type, %union.tree_node* %decl) unnamed_addr #0 !dbg !2819 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2823, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2824, metadata !DIExpression()), !dbg !2825
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2826
  %1 = load i32, i32* %0, align 8, !dbg !2826
  %align2 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2828
  %2 = load i32, i32* %align2, align 8, !dbg !2828
  %cmp = icmp ugt i32 %1, %2, !dbg !2829
  br i1 %cmp, label %if.then, label %if.end17, !dbg !2830

if.then:                                          ; preds = %entry
  store i32 %1, i32* %align2, align 8, !dbg !2831
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2833
  %bf.load = load i64, i64* %3, align 8, !dbg !2833
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2835
  %cmp7 = icmp eq i64 %bf.cast1, 31, !dbg !2835
  br i1 %cmp7, label %if.then8, label %if.end17, !dbg !2836

if.then8:                                         ; preds = %if.then
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2837
  %bf.load10 = load i64, i64* %4, align 8, !dbg !2837
  %bf.cast12 = and i64 %bf.load10, 4398046511104, !dbg !2837
  %bf.clear16 = and i64 %bf.load, -4398046511105, !dbg !2838
  %bf.set = or i64 %bf.clear16, %bf.cast12, !dbg !2838
  store i64 %bf.set, i64* %3, align 8, !dbg !2838
  br label %if.end17, !dbg !2839

if.end17:                                         ; preds = %if.then, %if.then8, %entry
  ret void, !dbg !2840
}

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @x86_field_alignment(%union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i32 @compare_tree_int(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #2

declare dso_local void @set_decl_rtl(%union.tree_node*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @set_mem_attributes(%struct.rtx_def*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @relayout_decl(%union.tree_node* %decl) local_unnamed_addr #5 !dbg !2841 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !2843, metadata !DIExpression()), !dbg !2844
  %size_unit = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2845
  store %union.tree_node* null, %union.tree_node** %size_unit, align 8, !dbg !2846
  %size = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2847
  store %union.tree_node* null, %union.tree_node** %size, align 8, !dbg !2848
  %mode = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2849
  %0 = bitcast i40* %mode to i64*, !dbg !2849
  %bf.load = load i64, i64* %0, align 8, !dbg !2850
  %bf.clear = and i64 %bf.load, -256, !dbg !2850
  store i64 %bf.clear, i64* %0, align 8, !dbg !2850
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2851
  %bf.load3 = load i64, i64* %1, align 8, !dbg !2851
  %bf.cast1 = and i64 %bf.load3, 4398046511104, !dbg !2851
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2851
  br i1 %tobool, label %if.then, label %if.end, !dbg !2853

if.then:                                          ; preds = %entry
  %align = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2854
  store i32 0, i32* %align, align 8, !dbg !2855
  br label %if.end, !dbg !2854

if.end:                                           ; preds = %entry, %if.then
  tail call void @set_decl_rtl(%union.tree_node* %decl, %struct.rtx_def* null) #6, !dbg !2856
  tail call void @layout_decl(%union.tree_node* %decl, i32 0) #7, !dbg !2857
  ret void, !dbg !2858
}

; Function Attrs: nounwind uwtable
define dso_local %struct.record_layout_info_s* @start_record_layout(%union.tree_node* %t) local_unnamed_addr #5 !dbg !2859 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2864, metadata !DIExpression()), !dbg !2866
  %call = tail call i8* @xmalloc(i64 64) #6, !dbg !2867
  %0 = bitcast i8* %call to %struct.record_layout_info_s*, !dbg !2867
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %0, metadata !2865, metadata !DIExpression()), !dbg !2866
  %t1 = bitcast i8* %call to %union.tree_node**, !dbg !2868
  store %union.tree_node* %t, %union.tree_node** %t1, align 8, !dbg !2869
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2870
  %2 = load i32, i32* %1, align 8, !dbg !2870
  %cmp = icmp ult i32 %2, 8, !dbg !2870
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !2870

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2870

cond.end:                                         ; preds = %entry, %cond.false
  %3 = phi i32 [ %2, %cond.false ], [ 8, %entry ], !dbg !2870
  %record_align = getelementptr inbounds i8, i8* %call, i64 32, !dbg !2871
  %4 = bitcast i8* %record_align to i32*, !dbg !2871
  store i32 %3, i32* %4, align 8, !dbg !2872
  %unpacked_align = getelementptr inbounds i8, i8* %call, i64 36, !dbg !2873
  %5 = bitcast i8* %unpacked_align to i32*, !dbg !2873
  store i32 %3, i32* %5, align 4, !dbg !2874
  %6 = load i32, i32* @ix86_isa_flags, align 4, !dbg !2875
  %and = and i32 %6, 32, !dbg !2875
  %cmp6 = icmp eq i32 %and, 0, !dbg !2875
  %cond7 = select i1 %cmp6, i32 128, i32 256, !dbg !2875
  %cmp8 = icmp ugt i32 %3, %cond7, !dbg !2875
  br i1 %cmp8, label %cond.true9, label %cond.false11, !dbg !2875

cond.true9:                                       ; preds = %cond.end
  br label %cond.end15, !dbg !2875

cond.false11:                                     ; preds = %cond.end
  br label %cond.end15, !dbg !2875

cond.end15:                                       ; preds = %cond.false11, %cond.true9
  %cond16 = phi i32 [ %3, %cond.true9 ], [ %cond7, %cond.false11 ], !dbg !2875
  %offset_align = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2876
  %7 = bitcast i8* %offset_align to i32*, !dbg !2876
  store i32 %cond16, i32* %7, align 8, !dbg !2877
  %8 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 17) to i64*), align 8, !dbg !2878
  %offset = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2879
  %9 = bitcast i8* %offset to i64*, !dbg !2880
  store i64 %8, i64* %9, align 8, !dbg !2880
  %10 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 19) to i64*), align 8, !dbg !2881
  %bitpos = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2882
  %11 = bitcast i8* %bitpos to i64*, !dbg !2883
  store i64 %10, i64* %11, align 8, !dbg !2883
  %prev_field = getelementptr inbounds i8, i8* %call, i64 40, !dbg !2884
  %12 = bitcast i8* %prev_field to %union.tree_node**, !dbg !2884
  store %union.tree_node* null, %union.tree_node** %12, align 8, !dbg !2885
  %pending_statics = getelementptr inbounds i8, i8* %call, i64 48, !dbg !2886
  %13 = bitcast i8* %pending_statics to %union.tree_node**, !dbg !2886
  store %union.tree_node* null, %union.tree_node** %13, align 8, !dbg !2887
  %packed_maybe_necessary = getelementptr inbounds i8, i8* %call, i64 60, !dbg !2888
  %14 = bitcast i8* %packed_maybe_necessary to i32*, !dbg !2888
  store i32 0, i32* %14, align 4, !dbg !2889
  %remaining_in_alignment = getelementptr inbounds i8, i8* %call, i64 56, !dbg !2890
  %15 = bitcast i8* %remaining_in_alignment to i32*, !dbg !2890
  store i32 0, i32* %15, align 8, !dbg !2891
  ret %struct.record_layout_info_s* %0, !dbg !2892
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @bit_from_pos(%union.tree_node* %offset, %union.tree_node* %bitpos) local_unnamed_addr #5 !dbg !2893 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %offset, metadata !2897, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata %union.tree_node* %bitpos, metadata !2898, metadata !DIExpression()), !dbg !2899
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2), align 16, !dbg !2900
  %call = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %0, %union.tree_node* %offset) #6, !dbg !2900
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 21), align 8, !dbg !2900
  %call1 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 65, %union.tree_node* %call, %union.tree_node* %1) #6, !dbg !2900
  %call2 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %bitpos, %union.tree_node* %call1) #6, !dbg !2900
  ret %union.tree_node* %call2, !dbg !2901
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @byte_from_pos(%union.tree_node* %offset, %union.tree_node* %bitpos) local_unnamed_addr #5 !dbg !2902 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %offset, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata %union.tree_node* %bitpos, metadata !2905, metadata !DIExpression()), !dbg !2906
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2907
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 21), align 8, !dbg !2907
  %call = tail call %union.tree_node* @size_binop_loc(i32 0, i32 67, %union.tree_node* %bitpos, %union.tree_node* %1) #6, !dbg !2907
  %call1 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %0, %union.tree_node* %call) #6, !dbg !2907
  %call2 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %offset, %union.tree_node* %call1) #6, !dbg !2907
  ret %union.tree_node* %call2, !dbg !2908
}

; Function Attrs: nounwind uwtable
define dso_local void @pos_from_bit(%union.tree_node** %poffset, %union.tree_node** %pbitpos, i32 %off_align, %union.tree_node* %pos) local_unnamed_addr #5 !dbg !2909 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %poffset, metadata !2913, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata %union.tree_node** %pbitpos, metadata !2914, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 %off_align, metadata !2915, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata %union.tree_node* %pos, metadata !2916, metadata !DIExpression()), !dbg !2917
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2918
  %conv = zext i32 %off_align to i64, !dbg !2918
  %call = tail call %union.tree_node* @size_int_kind(i64 %conv, i32 2) #6, !dbg !2918
  %call1 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 69, %union.tree_node* %pos, %union.tree_node* %call) #6, !dbg !2918
  %call2 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %0, %union.tree_node* %call1) #6, !dbg !2918
  %div = lshr i32 %off_align, 3, !dbg !2918
  %conv3 = zext i32 %div to i64, !dbg !2918
  %call4 = tail call %union.tree_node* @size_int_kind(i64 %conv3, i32 0) #6, !dbg !2918
  %call5 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 65, %union.tree_node* %call2, %union.tree_node* %call4) #6, !dbg !2918
  store %union.tree_node* %call5, %union.tree_node** %poffset, align 8, !dbg !2919
  %call7 = tail call %union.tree_node* @size_int_kind(i64 %conv, i32 2) #6, !dbg !2920
  %call8 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 73, %union.tree_node* %pos, %union.tree_node* %call7) #6, !dbg !2920
  store %union.tree_node* %call8, %union.tree_node** %pbitpos, align 8, !dbg !2921
  ret void, !dbg !2922
}

declare dso_local %union.tree_node* @size_int_kind(i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @normalize_offset(%union.tree_node** %poffset, %union.tree_node** %pbitpos, i32 %off_align) local_unnamed_addr #5 !dbg !2923 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %poffset, metadata !2927, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata %union.tree_node** %pbitpos, metadata !2928, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32 %off_align, metadata !2929, metadata !DIExpression()), !dbg !2933
  %0 = load %union.tree_node*, %union.tree_node** %pbitpos, align 8, !dbg !2934
  %conv = zext i32 %off_align to i64, !dbg !2935
  %call = tail call i32 @compare_tree_int(%union.tree_node* %0, i64 %conv) #6, !dbg !2936
  %cmp = icmp sgt i32 %call, -1, !dbg !2937
  br i1 %cmp, label %if.then, label %if.end, !dbg !2938

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %pbitpos, align 8, !dbg !2939
  %call3 = tail call %union.tree_node* @size_int_kind(i64 %conv, i32 2) #6, !dbg !2939
  %call4 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 69, %union.tree_node* %1, %union.tree_node* %call3) #6, !dbg !2939
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2930, metadata !DIExpression()), !dbg !2940
  %2 = load %union.tree_node*, %union.tree_node** %poffset, align 8, !dbg !2941
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !2941
  %call5 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %3, %union.tree_node* %call4) #6, !dbg !2941
  %div = lshr i32 %off_align, 3, !dbg !2941
  %conv6 = zext i32 %div to i64, !dbg !2941
  %call7 = tail call %union.tree_node* @size_int_kind(i64 %conv6, i32 0) #6, !dbg !2941
  %call8 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 65, %union.tree_node* %call5, %union.tree_node* %call7) #6, !dbg !2941
  %call9 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %2, %union.tree_node* %call8) #6, !dbg !2941
  store %union.tree_node* %call9, %union.tree_node** %poffset, align 8, !dbg !2942
  %4 = load %union.tree_node*, %union.tree_node** %pbitpos, align 8, !dbg !2943
  %call11 = tail call %union.tree_node* @size_int_kind(i64 %conv, i32 2) #6, !dbg !2943
  %call12 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 73, %union.tree_node* %4, %union.tree_node* %call11) #6, !dbg !2943
  store %union.tree_node* %call12, %union.tree_node** %pbitpos, align 8, !dbg !2944
  br label %if.end, !dbg !2945

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2946
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_rli(%struct.record_layout_info_s* %rli) local_unnamed_addr #5 !dbg !2947 {
entry:
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %rli, metadata !2951, metadata !DIExpression()), !dbg !2952
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2953
  %t = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 0, !dbg !2954
  %1 = load %union.tree_node*, %union.tree_node** %t, align 8, !dbg !2954
  tail call void @print_node_brief(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %union.tree_node* %1, i32 0) #6, !dbg !2955
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2956
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !2957
  %3 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !2957
  tail call void @print_node_brief(%struct._IO_FILE* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %union.tree_node* %3, i32 0) #6, !dbg !2958
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2959
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 3, !dbg !2960
  %5 = load %union.tree_node*, %union.tree_node** %bitpos, align 8, !dbg !2960
  tail call void @print_node_brief(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %union.tree_node* %5, i32 0) #6, !dbg !2961
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2962
  %record_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 4, !dbg !2963
  %7 = load i32, i32* %record_align, align 8, !dbg !2963
  %unpacked_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 5, !dbg !2964
  %8 = load i32, i32* %unpacked_align, align 4, !dbg !2964
  %offset_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 2, !dbg !2965
  %9 = load i32, i32* %offset_align, align 8, !dbg !2965
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %7, i32 %8, i32 %9) #6, !dbg !2966
  %10 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 18), align 8, !dbg !2967
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8, !dbg !2969
  %call2 = tail call zeroext i8 %10(%union.tree_node* %11) #6, !dbg !2970
  %tobool = icmp eq i8 %call2, 0, !dbg !2970
  br i1 %tobool, label %if.end, label %if.then, !dbg !2971

if.then:                                          ; preds = %entry
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2972
  %remaining_in_alignment = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 8, !dbg !2973
  %13 = load i32, i32* %remaining_in_alignment, align 8, !dbg !2973
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %13) #6, !dbg !2974
  br label %if.end, !dbg !2974

if.end:                                           ; preds = %entry, %if.then
  %packed_maybe_necessary = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 9, !dbg !2975
  %14 = load i32, i32* %packed_maybe_necessary, align 4, !dbg !2975
  %tobool4 = icmp eq i32 %14, 0, !dbg !2977
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2978

if.then5:                                         ; preds = %if.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2979
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2980
  br label %if.end7, !dbg !2980

if.end7:                                          ; preds = %if.end, %if.then5
  %pending_statics = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 7, !dbg !2981
  %16 = load %union.tree_node*, %union.tree_node** %pending_statics, align 8, !dbg !2981
  %tobool8 = icmp eq %union.tree_node* %16, null, !dbg !2983
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !2984

if.then9:                                         ; preds = %if.end7
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2985
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2987
  %18 = load %union.tree_node*, %union.tree_node** %pending_statics, align 8, !dbg !2988
  tail call void @debug_tree(%union.tree_node* %18) #6, !dbg !2989
  br label %if.end12, !dbg !2990

if.end12:                                         ; preds = %if.end7, %if.then9
  ret void, !dbg !2991
}

declare dso_local void @print_node_brief(%struct._IO_FILE*, i8*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @debug_tree(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @normalize_rli(%struct.record_layout_info_s* %rli) local_unnamed_addr #5 !dbg !2992 {
entry:
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %rli, metadata !2994, metadata !DIExpression()), !dbg !2995
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !2996
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 3, !dbg !2997
  %offset_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 2, !dbg !2998
  %0 = load i32, i32* %offset_align, align 8, !dbg !2998
  tail call void @normalize_offset(%union.tree_node** nonnull %offset, %union.tree_node** nonnull %bitpos, i32 %0) #7, !dbg !2999
  ret void, !dbg !3000
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @rli_size_unit_so_far(%struct.record_layout_info_s* %rli) local_unnamed_addr #5 !dbg !3001 {
entry:
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %rli, metadata !3005, metadata !DIExpression()), !dbg !3006
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !3007
  %0 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !3007
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 3, !dbg !3008
  %1 = load %union.tree_node*, %union.tree_node** %bitpos, align 8, !dbg !3008
  %call = tail call %union.tree_node* @byte_from_pos(%union.tree_node* %0, %union.tree_node* %1) #7, !dbg !3009
  ret %union.tree_node* %call, !dbg !3010
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @rli_size_so_far(%struct.record_layout_info_s* %rli) local_unnamed_addr #5 !dbg !3011 {
entry:
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %rli, metadata !3013, metadata !DIExpression()), !dbg !3014
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !3015
  %0 = load %union.tree_node*, %union.tree_node** %offset, align 8, !dbg !3015
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 3, !dbg !3016
  %1 = load %union.tree_node*, %union.tree_node** %bitpos, align 8, !dbg !3016
  %call = tail call %union.tree_node* @bit_from_pos(%union.tree_node* %0, %union.tree_node* %1) #7, !dbg !3017
  ret %union.tree_node* %call, !dbg !3018
}

; Function Attrs: nounwind uwtable
define dso_local i32 @update_alignment_for_field(%struct.record_layout_info_s* %rli, %union.tree_node* %field, i32 %known_align) local_unnamed_addr #5 !dbg !3019 {
entry:
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %rli, metadata !3023, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata %union.tree_node* %field, metadata !3024, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i32 %known_align, metadata !3025, metadata !DIExpression()), !dbg !3040
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3041
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !3041
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3027, metadata !DIExpression()), !dbg !3040
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3042
  %bf.load = load i64, i64* %1, align 8, !dbg !3042
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3044
  %cmp = icmp eq i64 %bf.cast1, 0, !dbg !3044
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3045

if.end:                                           ; preds = %entry
  tail call void @layout_decl(%union.tree_node* %field, i32 %known_align) #7, !dbg !3046
  %align = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3047
  %2 = load i32, i32* %align, align 8, !dbg !3047
  call void @llvm.dbg.value(metadata i32 %2, metadata !3026, metadata !DIExpression()), !dbg !3040
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3048
  %bf.load4 = load i64, i64* %3, align 8, !dbg !3048
  %bf.lshr = lshr i64 %bf.load4, 42, !dbg !3048
  %4 = trunc i64 %bf.lshr to i8, !dbg !3048
  %bf.cast6 = and i8 %4, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i8 %bf.cast6, metadata !3028, metadata !DIExpression()), !dbg !3040
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3049
  %cmp7 = icmp eq %union.tree_node* %0, %5, !dbg !3050
  br i1 %cmp7, label %land.end, label %land.lhs.true, !dbg !3051

land.lhs.true:                                    ; preds = %if.end
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3052
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !3052
  %tobool = icmp eq %union.tree_node* %7, null, !dbg !3052
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3053

land.rhs:                                         ; preds = %land.lhs.true
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3054
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !3054
  %call = tail call i32 @integer_zerop(%union.tree_node* %9) #6, !dbg !3055
  %tobool10 = icmp eq i32 %call, 0, !dbg !3056
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %if.end, %land.rhs
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %tobool10, %land.rhs ], !dbg !3040
  call void @llvm.dbg.value(metadata i1 %10, metadata !3029, metadata !DIExpression()), !dbg !3040
  %11 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 18), align 8, !dbg !3057
  %t = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 0, !dbg !3058
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8, !dbg !3058
  %call12 = tail call zeroext i8 %11(%union.tree_node* %12) #6, !dbg !3059
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3059
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !3060

if.then14:                                        ; preds = %land.end
  call void @llvm.dbg.value(metadata i1 %10, metadata !3029, metadata !DIExpression()), !dbg !3040
  br i1 %10, label %lor.lhs.false, label %land.lhs.true16, !dbg !3061

land.lhs.true16:                                  ; preds = %if.then14
  %bf.load19 = load i64, i64* %3, align 8, !dbg !3062
  %bf.cast224 = and i64 %bf.load19, 2199023255552, !dbg !3062
  %tobool23 = icmp eq i64 %bf.cast224, 0, !dbg !3062
  br i1 %tobool23, label %if.then47, label %lor.lhs.false, !dbg !3063

lor.lhs.false:                                    ; preds = %land.lhs.true16, %if.then14
  %size25 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3064
  %13 = load %union.tree_node*, %union.tree_node** %size25, align 8, !dbg !3064
  %call26 = tail call i32 @integer_zerop(%union.tree_node* %13) #6, !dbg !3065
  %tobool27 = icmp eq i32 %call26, 0, !dbg !3065
  br i1 %tobool27, label %cond.true, label %cond.false, !dbg !3066

cond.true:                                        ; preds = %lor.lhs.false
  %bf.load30 = load i64, i64* %3, align 8, !dbg !3067
  %bf.cast335 = and i64 %bf.load30, 2199023255552, !dbg !3067
  %tobool34 = icmp eq i64 %bf.cast335, 0, !dbg !3067
  br i1 %tobool34, label %if.then47, label %if.end218, !dbg !3068

cond.false:                                       ; preds = %lor.lhs.false
  %prev_field = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 6, !dbg !3069
  %14 = load %union.tree_node*, %union.tree_node** %prev_field, align 8, !dbg !3069
  %tobool35 = icmp eq %union.tree_node* %14, null, !dbg !3070
  br i1 %tobool35, label %if.end218, label %land.lhs.true36, !dbg !3071

land.lhs.true36:                                  ; preds = %cond.false
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %14, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3072
  %16 = load %union.tree_node*, %union.tree_node** %15, align 8, !dbg !3072
  %tobool40 = icmp eq %union.tree_node* %16, null, !dbg !3072
  br i1 %tobool40, label %if.end218, label %land.lhs.true41, !dbg !3073

land.lhs.true41:                                  ; preds = %land.lhs.true36
  %size44 = getelementptr inbounds %union.tree_node, %union.tree_node* %14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3074
  %17 = load %union.tree_node*, %union.tree_node** %size44, align 8, !dbg !3074
  %call45 = tail call i32 @integer_zerop(%union.tree_node* %17) #6, !dbg !3075
  %tobool46 = icmp eq i32 %call45, 0, !dbg !3075
  br i1 %tobool46, label %if.then47, label %if.end218, !dbg !3066

if.then47:                                        ; preds = %land.lhs.true41, %cond.true, %land.lhs.true16
  %18 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3076
  %19 = load i32, i32* %18, align 8, !dbg !3076
  call void @llvm.dbg.value(metadata i32 %19, metadata !3030, metadata !DIExpression()), !dbg !3077
  %cmp50 = icmp ugt i32 %19, %2, !dbg !3078
  %. = select i1 %cmp50, i32 %19, i32 %2, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %., metadata !3030, metadata !DIExpression()), !dbg !3077
  %20 = load i32, i32* @maximum_field_alignment, align 4, !dbg !3079
  %cmp54 = icmp eq i32 %20, 0, !dbg !3081
  br i1 %cmp54, label %if.end63, label %if.then56, !dbg !3082

if.then56:                                        ; preds = %if.then47
  %cmp57 = icmp ult i32 %., %20, !dbg !3083
  %cond62 = select i1 %cmp57, i32 %., i32 %20, !dbg !3083
  br label %if.end63, !dbg !3083

if.end63:                                         ; preds = %if.then47, %if.then56
  %type_align.0 = phi i32 [ %., %if.then47 ], [ %cond62, %if.then56 ], !dbg !3077
  call void @llvm.dbg.value(metadata i32 %type_align.0, metadata !3030, metadata !DIExpression()), !dbg !3077
  %record_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 4, !dbg !3084
  %21 = load i32, i32* %record_align, align 8, !dbg !3084
  %cmp64 = icmp ugt i32 %21, %type_align.0, !dbg !3084
  br i1 %cmp64, label %cond.true66, label %cond.end69, !dbg !3084

cond.true66:                                      ; preds = %if.end63
  br label %cond.end69, !dbg !3084

cond.end69:                                       ; preds = %if.end63, %cond.true66
  %cond70 = phi i32 [ %21, %cond.true66 ], [ %type_align.0, %if.end63 ], !dbg !3084
  store i32 %cond70, i32* %record_align, align 8, !dbg !3085
  %unpacked_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 5, !dbg !3086
  %22 = load i32, i32* %unpacked_align, align 4, !dbg !3086
  %23 = load i32, i32* %18, align 8, !dbg !3086
  %cmp74 = icmp ugt i32 %22, %23, !dbg !3086
  br i1 %cmp74, label %cond.true76, label %cond.false78, !dbg !3086

cond.true76:                                      ; preds = %cond.end69
  br label %cond.end81, !dbg !3086

cond.false78:                                     ; preds = %cond.end69
  br label %cond.end81, !dbg !3086

cond.end81:                                       ; preds = %cond.false78, %cond.true76
  %cond82 = phi i32 [ %22, %cond.true76 ], [ %23, %cond.false78 ], !dbg !3086
  store i32 %cond82, i32* %unpacked_align, align 4, !dbg !3087
  br label %if.end218, !dbg !3088

if.else:                                          ; preds = %land.end
  br i1 %10, label %if.then87, label %if.else194, !dbg !3089

if.then87:                                        ; preds = %if.else
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3090
  %24 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !3090
  %cmp88 = icmp eq %union.tree_node* %24, null, !dbg !3091
  br i1 %cmp88, label %lor.lhs.false90, label %if.then94, !dbg !3092

lor.lhs.false90:                                  ; preds = %if.then87
  %25 = load i8 ()*, i8 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 21), align 8, !dbg !3093
  %call91 = tail call zeroext i8 %25() #6, !dbg !3094
  %tobool93 = icmp eq i8 %call91, 0, !dbg !3094
  br i1 %tobool93, label %if.end218, label %if.then94, !dbg !3095

if.then94:                                        ; preds = %lor.lhs.false90, %if.then87
  %26 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3096
  %27 = load i32, i32* %26, align 8, !dbg !3096
  call void @llvm.dbg.value(metadata i32 %27, metadata !3035, metadata !DIExpression()), !dbg !3097
  %bf.load100 = load i64, i64* %1, align 8, !dbg !3098
  %bf.cast1032 = and i64 %bf.load100, 4398046511104, !dbg !3098
  %tobool104 = icmp eq i64 %bf.cast1032, 0, !dbg !3098
  br i1 %tobool104, label %if.then105, label %if.end107, !dbg !3100

if.then105:                                       ; preds = %if.then94
  %call106 = tail call i32 @x86_field_alignment(%union.tree_node* %field, i32 %27) #6, !dbg !3101
  call void @llvm.dbg.value(metadata i32 %call106, metadata !3035, metadata !DIExpression()), !dbg !3097
  br label %if.end107, !dbg !3102

if.end107:                                        ; preds = %if.then94, %if.then105
  %type_align95.0 = phi i32 [ %27, %if.then94 ], [ %call106, %if.then105 ], !dbg !3097
  call void @llvm.dbg.value(metadata i32 %type_align95.0, metadata !3035, metadata !DIExpression()), !dbg !3097
  %size109 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3103
  %28 = load %union.tree_node*, %union.tree_node** %size109, align 8, !dbg !3103
  %call110 = tail call i32 @integer_zerop(%union.tree_node* %28) #6, !dbg !3105
  %tobool111 = icmp eq i32 %call110, 0, !dbg !3105
  br i1 %tobool111, label %if.else123, label %if.then112, !dbg !3106

if.then112:                                       ; preds = %if.end107
  %29 = load i32, i32* @initial_max_fld_align, align 4, !dbg !3107
  %tobool113 = icmp eq i32 %29, 0, !dbg !3107
  br i1 %tobool113, label %if.end150, label %if.then114, !dbg !3110

if.then114:                                       ; preds = %if.then112
  %mul = shl i32 %29, 3, !dbg !3111
  %cmp115 = icmp ult i32 %type_align95.0, %mul, !dbg !3111
  %cond121 = select i1 %cmp115, i32 %type_align95.0, i32 %mul, !dbg !3111
  br label %if.end150, !dbg !3111

if.else123:                                       ; preds = %if.end107
  %30 = load i32, i32* @maximum_field_alignment, align 4, !dbg !3112
  %cmp124 = icmp eq i32 %30, 0, !dbg !3114
  br i1 %cmp124, label %if.else133, label %if.then126, !dbg !3115

if.then126:                                       ; preds = %if.else123
  %cmp127 = icmp ult i32 %type_align95.0, %30, !dbg !3116
  %cond132 = select i1 %cmp127, i32 %type_align95.0, i32 %30, !dbg !3116
  br label %if.end150, !dbg !3116

if.else133:                                       ; preds = %if.else123
  %bf.load136 = load i64, i64* %3, align 8, !dbg !3117
  %bf.cast1393 = and i64 %bf.load136, 2199023255552, !dbg !3117
  %tobool140 = icmp eq i64 %bf.cast1393, 0, !dbg !3117
  %cmp142 = icmp ult i32 %type_align95.0, 8, !dbg !3119
  %31 = or i1 %tobool140, %cmp142, !dbg !3119
  %type_align95.2 = select i1 %31, i32 %type_align95.0, i32 8, !dbg !3119
  br label %if.end150, !dbg !3119

if.end150:                                        ; preds = %if.then112, %if.then126, %if.else133, %if.then114
  %type_align95.4 = phi i32 [ %type_align95.0, %if.then112 ], [ %cond121, %if.then114 ], [ %cond132, %if.then126 ], [ %type_align95.2, %if.else133 ], !dbg !3120
  call void @llvm.dbg.value(metadata i32 %type_align95.4, metadata !3035, metadata !DIExpression()), !dbg !3097
  %record_align151 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 4, !dbg !3121
  %32 = load i32, i32* %record_align151, align 8, !dbg !3121
  %cmp152 = icmp ugt i32 %32, %2, !dbg !3121
  br i1 %cmp152, label %cond.true154, label %cond.end157, !dbg !3121

cond.true154:                                     ; preds = %if.end150
  br label %cond.end157, !dbg !3121

cond.end157:                                      ; preds = %if.end150, %cond.true154
  %33 = phi i32 [ %32, %cond.true154 ], [ %2, %if.end150 ], !dbg !3121
  store i32 %33, i32* %record_align151, align 8, !dbg !3122
  %cmp161 = icmp ugt i32 %33, %type_align95.4, !dbg !3123
  br i1 %cmp161, label %cond.true163, label %cond.end166, !dbg !3123

cond.true163:                                     ; preds = %cond.end157
  br label %cond.end166, !dbg !3123

cond.end166:                                      ; preds = %cond.end157, %cond.true163
  %cond167 = phi i32 [ %33, %cond.true163 ], [ %type_align95.4, %cond.end157 ], !dbg !3123
  store i32 %cond167, i32* %record_align151, align 8, !dbg !3124
  %34 = load i32, i32* @warn_packed, align 4, !dbg !3125
  %tobool169 = icmp eq i32 %34, 0, !dbg !3125
  br i1 %tobool169, label %if.end184, label %if.then170, !dbg !3127

if.then170:                                       ; preds = %cond.end166
  %unpacked_align171 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 5, !dbg !3128
  %35 = load i32, i32* %unpacked_align171, align 4, !dbg !3128
  %36 = load i32, i32* %26, align 8, !dbg !3128
  %cmp174 = icmp ugt i32 %35, %36, !dbg !3128
  br i1 %cmp174, label %cond.true176, label %cond.false178, !dbg !3128

cond.true176:                                     ; preds = %if.then170
  br label %cond.end181, !dbg !3128

cond.false178:                                    ; preds = %if.then170
  br label %cond.end181, !dbg !3128

cond.end181:                                      ; preds = %cond.false178, %cond.true176
  %cond182 = phi i32 [ %35, %cond.true176 ], [ %36, %cond.false178 ], !dbg !3128
  store i32 %cond182, i32* %unpacked_align171, align 4, !dbg !3129
  br label %if.end184, !dbg !3130

if.end184:                                        ; preds = %cond.end166, %cond.end181
  %bf.load187 = load i64, i64* %1, align 8, !dbg !3131
  %bf.lshr188 = lshr i64 %bf.load187, 42, !dbg !3131
  %37 = trunc i64 %bf.lshr188 to i8, !dbg !3131
  %bf.cast190 = and i8 %37, 1, !dbg !3131
  %or = or i8 %bf.cast190, %bf.cast6, !dbg !3132
  call void @llvm.dbg.value(metadata i8 %or, metadata !3028, metadata !DIExpression()), !dbg !3040
  br label %if.end218, !dbg !3133

if.else194:                                       ; preds = %if.else
  %record_align195 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 4, !dbg !3134
  %38 = load i32, i32* %record_align195, align 8, !dbg !3134
  %cmp196 = icmp ugt i32 %38, %2, !dbg !3134
  br i1 %cmp196, label %cond.true198, label %cond.end201, !dbg !3134

cond.true198:                                     ; preds = %if.else194
  br label %cond.end201, !dbg !3134

cond.end201:                                      ; preds = %if.else194, %cond.true198
  %cond202 = phi i32 [ %38, %cond.true198 ], [ %2, %if.else194 ], !dbg !3134
  store i32 %cond202, i32* %record_align195, align 8, !dbg !3136
  %unpacked_align204 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 5, !dbg !3137
  %39 = load i32, i32* %unpacked_align204, align 4, !dbg !3137
  %40 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3137
  %41 = load i32, i32* %40, align 8, !dbg !3137
  %cmp207 = icmp ugt i32 %39, %41, !dbg !3137
  br i1 %cmp207, label %cond.true209, label %cond.false211, !dbg !3137

cond.true209:                                     ; preds = %cond.end201
  br label %cond.end214, !dbg !3137

cond.false211:                                    ; preds = %cond.end201
  br label %cond.end214, !dbg !3137

cond.end214:                                      ; preds = %cond.false211, %cond.true209
  %cond215 = phi i32 [ %39, %cond.true209 ], [ %41, %cond.false211 ], !dbg !3137
  store i32 %cond215, i32* %unpacked_align204, align 4, !dbg !3138
  br label %if.end218

if.end218:                                        ; preds = %land.lhs.true41, %land.lhs.true36, %cond.false, %cond.true, %lor.lhs.false90, %cond.end214, %if.end184, %cond.end81
  %user_align.2 = phi i8 [ %bf.cast6, %cond.end81 ], [ %bf.cast6, %land.lhs.true41 ], [ %bf.cast6, %land.lhs.true36 ], [ %bf.cast6, %cond.false ], [ %bf.cast6, %cond.true ], [ %bf.cast6, %cond.end214 ], [ %or, %if.end184 ], [ %bf.cast6, %lor.lhs.false90 ], !dbg !3040
  call void @llvm.dbg.value(metadata i8 %user_align.2, metadata !3028, metadata !DIExpression()), !dbg !3040
  %conv219 = zext i8 %user_align.2 to i64, !dbg !3139
  %42 = bitcast %struct.record_layout_info_s* %rli to %struct.tree_common**, !dbg !3140
  %43 = load %struct.tree_common*, %struct.tree_common** %42, align 8, !dbg !3140
  %44 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %43, i64 0, i32 0, i32 0, !dbg !3140
  %bf.load223 = load i64, i64* %44, align 8, !dbg !3141
  %or2276 = shl nuw nsw i64 %conv219, 42, !dbg !3141
  %45 = and i64 %or2276, 4398046511104, !dbg !3141
  %bf.set = or i64 %45, %bf.load223, !dbg !3141
  store i64 %bf.set, i64* %44, align 8, !dbg !3141
  br label %cleanup, !dbg !3142

cleanup:                                          ; preds = %entry, %if.end218
  %retval.0 = phi i32 [ %2, %if.end218 ], [ 0, %entry ], !dbg !3040
  ret i32 %retval.0, !dbg !3143
}

; Function Attrs: nounwind uwtable
define dso_local void @place_field(%struct.record_layout_info_s* %rli, %union.tree_node* %field) local_unnamed_addr #5 !dbg !3144 {
entry:
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %rli, metadata !3148, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata %union.tree_node* %field, metadata !3149, metadata !DIExpression()), !dbg !3180
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3181
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !3181
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3153, metadata !DIExpression()), !dbg !3180
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3182
  %bf.load = load i64, i64* %1, align 8, !dbg !3182
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3182
  %cmp = icmp eq i64 %bf.cast1, 0, !dbg !3182
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3182

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1043, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3182
  %bf.load3.pre = load i64, i64* %1, align 8, !dbg !3183
  br label %cond.end, !dbg !3182

cond.end:                                         ; preds = %entry, %cond.true
  %bf.load9 = phi i64 [ %bf.load, %entry ], [ %bf.load3.pre, %cond.true ], !dbg !3183
  %bf.cast52 = and i64 %bf.load9, 65535, !dbg !3185
  %cmp6 = icmp eq i64 %bf.cast52, 32, !dbg !3185
  br i1 %cmp6, label %if.then, label %if.else, !dbg !3186

if.then:                                          ; preds = %cond.end
  %pending_statics = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 7, !dbg !3187
  %2 = load %union.tree_node*, %union.tree_node** %pending_statics, align 8, !dbg !3187
  %call = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %field, %union.tree_node* %2) #6, !dbg !3187
  store %union.tree_node* %call, %union.tree_node** %pending_statics, align 8, !dbg !3189
  br label %cleanup.cont, !dbg !3190

if.else:                                          ; preds = %cond.end
  %cmp12 = icmp eq i64 %bf.cast52, 31, !dbg !3191
  br i1 %cmp12, label %if.else14, label %cleanup.cont, !dbg !3193

if.else14:                                        ; preds = %if.else
  %3 = bitcast %struct.record_layout_info_s* %rli to i64**, !dbg !3194
  %4 = load i64*, i64** %3, align 8, !dbg !3194
  %bf.load16 = load i64, i64* %4, align 8, !dbg !3194
  %bf.cast184 = and i64 %bf.load16, 65535, !dbg !3196
  %cmp19 = icmp eq i64 %bf.cast184, 16, !dbg !3196
  br i1 %cmp19, label %if.else21, label %if.then20, !dbg !3197

if.then20:                                        ; preds = %if.else14
  tail call fastcc void @place_union_field(%struct.record_layout_info_s* %rli, %union.tree_node* %field) #7, !dbg !3198
  br label %cleanup.cont, !dbg !3200

if.else21:                                        ; preds = %if.else14
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3201
  %bf.load23 = load i64, i64* %5, align 8, !dbg !3201
  %bf.cast255 = and i64 %bf.load23, 65535, !dbg !3203
  %cmp26 = icmp eq i64 %bf.cast255, 0, !dbg !3203
  br i1 %cmp26, label %if.then27, label %if.end36, !dbg !3204

if.then27:                                        ; preds = %if.else21
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !3205
  %6 = bitcast %union.tree_node** %offset to i64*, !dbg !3205
  %7 = load i64, i64* %6, align 8, !dbg !3205
  %offset28 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3207
  %8 = bitcast %struct.rtx_def** %offset28 to i64*, !dbg !3208
  store i64 %7, i64* %8, align 8, !dbg !3208
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 3, !dbg !3209
  %9 = bitcast %union.tree_node** %bitpos to i64*, !dbg !3209
  %10 = load i64, i64* %9, align 8, !dbg !3209
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3210
  %12 = bitcast %union.tree_node** %11 to i64*, !dbg !3211
  store i64 %10, i64* %12, align 8, !dbg !3211
  %offset_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 2, !dbg !3212
  %13 = load i32, i32* %offset_align, align 8, !dbg !3212
  %sub = sub i32 0, %13, !dbg !3212
  %and = and i32 %13, %sub, !dbg !3212
  %conv = zext i32 %and to i64, !dbg !3212
  %call31 = tail call i32 @exact_log2(i64 %conv) #6, !dbg !3212
  %off_align = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3212
  %14 = bitcast i40* %off_align to i64*, !dbg !3212
  %bf.load32 = load i64, i64* %14, align 8, !dbg !3212
  %15 = and i32 %call31, 255, !dbg !3212
  %bf.value = zext i32 %15 to i64, !dbg !3212
  %bf.shl = shl nuw nsw i64 %bf.value, 32, !dbg !3212
  %bf.clear33 = and i64 %bf.load32, -1095216660481, !dbg !3212
  %bf.set = or i64 %bf.clear33, %bf.shl, !dbg !3212
  store i64 %bf.set, i64* %14, align 8, !dbg !3212
  br label %cleanup.cont, !dbg !3213

if.end36:                                         ; preds = %if.else21
  %bitpos37 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 3, !dbg !3214
  %16 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3214
  %call38 = tail call i32 @integer_zerop(%union.tree_node* %16) #6, !dbg !3216
  %tobool = icmp eq i32 %call38, 0, !dbg !3216
  br i1 %tobool, label %if.then39, label %if.else47, !dbg !3217

if.then39:                                        ; preds = %if.end36
  %17 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3218
  %call41 = tail call i64 @tree_low_cst(%union.tree_node* %17, i32 1) #6, !dbg !3219
  %18 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3220
  %call43 = tail call i64 @tree_low_cst(%union.tree_node* %18, i32 1) #6, !dbg !3221
  %sub44 = sub nsw i64 0, %call43, !dbg !3222
  %and45 = and i64 %call41, %sub44, !dbg !3223
  %conv46 = trunc i64 %and45 to i32, !dbg !3224
  call void @llvm.dbg.value(metadata i32 %conv46, metadata !3151, metadata !DIExpression()), !dbg !3180
  br label %if.end68, !dbg !3225

if.else47:                                        ; preds = %if.end36
  %offset48 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !3226
  %19 = load %union.tree_node*, %union.tree_node** %offset48, align 8, !dbg !3226
  %call49 = tail call i32 @integer_zerop(%union.tree_node* %19) #6, !dbg !3228
  %tobool50 = icmp eq i32 %call49, 0, !dbg !3228
  br i1 %tobool50, label %if.else52, label %if.end68, !dbg !3229

if.else52:                                        ; preds = %if.else47
  %20 = load %union.tree_node*, %union.tree_node** %offset48, align 8, !dbg !3230
  %call54 = tail call i32 @host_integerp(%union.tree_node* %20, i32 1) #6, !dbg !3232
  %tobool55 = icmp eq i32 %call54, 0, !dbg !3232
  br i1 %tobool55, label %if.else64, label %if.then56, !dbg !3233

if.then56:                                        ; preds = %if.else52
  %21 = load %union.tree_node*, %union.tree_node** %offset48, align 8, !dbg !3234
  %call58 = tail call i64 @tree_low_cst(%union.tree_node* %21, i32 1) #6, !dbg !3235
  %22 = load %union.tree_node*, %union.tree_node** %offset48, align 8, !dbg !3236
  %call60 = tail call i64 @tree_low_cst(%union.tree_node* %22, i32 1) #6, !dbg !3237
  %sub61 = sub nsw i64 0, %call60, !dbg !3238
  %and62 = and i64 %call58, %sub61, !dbg !3239
  %and62.tr = trunc i64 %and62 to i32, !dbg !3240
  %conv63 = shl i32 %and62.tr, 3, !dbg !3240
  call void @llvm.dbg.value(metadata i32 %conv63, metadata !3151, metadata !DIExpression()), !dbg !3180
  br label %if.end68, !dbg !3241

if.else64:                                        ; preds = %if.else52
  %offset_align65 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 2, !dbg !3242
  %23 = load i32, i32* %offset_align65, align 8, !dbg !3242
  call void @llvm.dbg.value(metadata i32 %23, metadata !3151, metadata !DIExpression()), !dbg !3180
  br label %if.end68

if.end68:                                         ; preds = %if.else47, %if.else64, %if.then56, %if.then39
  %known_align.2 = phi i32 [ %conv46, %if.then39 ], [ 0, %if.else47 ], [ %conv63, %if.then56 ], [ %23, %if.else64 ], !dbg !3243
  call void @llvm.dbg.value(metadata i32 %known_align.2, metadata !3151, metadata !DIExpression()), !dbg !3180
  %call69 = tail call i32 @update_alignment_for_field(%struct.record_layout_info_s* %rli, %union.tree_node* %field, i32 %known_align.2) #7, !dbg !3244
  call void @llvm.dbg.value(metadata i32 %call69, metadata !3150, metadata !DIExpression()), !dbg !3180
  %cmp70 = icmp eq i32 %known_align.2, 0, !dbg !3245
  br i1 %cmp70, label %if.then72, label %if.end88, !dbg !3247

if.then72:                                        ; preds = %if.end68
  %24 = load i32, i32* @ix86_isa_flags, align 4, !dbg !3248
  %and73 = and i32 %24, 32, !dbg !3248
  %cmp74 = icmp eq i32 %and73, 0, !dbg !3248
  %cond76 = select i1 %cmp74, i32 128, i32 256, !dbg !3248
  %record_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 4, !dbg !3248
  %25 = load i32, i32* %record_align, align 8, !dbg !3248
  %cmp77 = icmp ugt i32 %cond76, %25, !dbg !3248
  br i1 %cmp77, label %cond.true79, label %cond.false84, !dbg !3248

cond.true79:                                      ; preds = %if.then72
  br label %if.end88, !dbg !3248

cond.false84:                                     ; preds = %if.then72
  br label %if.end88, !dbg !3248

if.end88:                                         ; preds = %cond.true79, %cond.false84, %if.end68
  %known_align.3 = phi i32 [ %known_align.2, %if.end68 ], [ %cond76, %cond.true79 ], [ %25, %cond.false84 ], !dbg !3180
  call void @llvm.dbg.value(metadata i32 %known_align.3, metadata !3151, metadata !DIExpression()), !dbg !3180
  %26 = load i32, i32* @warn_packed, align 4, !dbg !3249
  %tobool89 = icmp eq i32 %26, 0, !dbg !3249
  br i1 %tobool89, label %if.end120, label %land.lhs.true, !dbg !3251

land.lhs.true:                                    ; preds = %if.end88
  %bf.load92 = load i64, i64* %1, align 8, !dbg !3252
  %bf.cast9420 = and i64 %bf.load92, 2199023255552, !dbg !3252
  %tobool95 = icmp eq i64 %bf.cast9420, 0, !dbg !3252
  br i1 %tobool95, label %if.end120, label %if.then96, !dbg !3253

if.then96:                                        ; preds = %land.lhs.true
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3254
  %28 = load i32, i32* %27, align 8, !dbg !3254
  %cmp98 = icmp ult i32 %known_align.3, %28, !dbg !3257
  br i1 %cmp98, label %if.else118, label %if.then100, !dbg !3258

if.then100:                                       ; preds = %if.then96
  %cmp103 = icmp ugt i32 %28, %call69, !dbg !3259
  br i1 %cmp103, label %if.then105, label %if.end120, !dbg !3262

if.then105:                                       ; preds = %if.then100
  %29 = bitcast %struct.record_layout_info_s* %rli to %struct.tree_common**, !dbg !3263
  %30 = load %struct.tree_common*, %struct.tree_common** %29, align 8, !dbg !3263
  %31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %30, i64 0, i32 0, i32 0, !dbg !3263
  %bf.load109 = load i64, i64* %31, align 8, !dbg !3263
  %bf.cast11221 = and i64 %bf.load109, 2199023255552, !dbg !3263
  %tobool113 = icmp eq i64 %bf.cast11221, 0, !dbg !3263
  br i1 %tobool113, label %if.then114, label %if.end120, !dbg !3267

if.then114:                                       ; preds = %if.then105
  %call115 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), %union.tree_node* %field) #6, !dbg !3268
  br label %if.end120, !dbg !3268

if.else118:                                       ; preds = %if.then96
  %packed_maybe_necessary = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 9, !dbg !3269
  store i32 1, i32* %packed_maybe_necessary, align 4, !dbg !3270
  br label %if.end120

if.end120:                                        ; preds = %if.then105, %land.lhs.true, %if.end88, %if.else118, %if.then114, %if.then100
  %cmp121 = icmp ult i32 %known_align.3, %call69, !dbg !3271
  br i1 %cmp121, label %land.lhs.true123, label %if.end162, !dbg !3273

land.lhs.true123:                                 ; preds = %if.end120
  %32 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 18), align 8, !dbg !3274
  %t124 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 0, !dbg !3275
  %33 = load %union.tree_node*, %union.tree_node** %t124, align 8, !dbg !3275
  %call125 = tail call zeroext i8 %32(%union.tree_node* %33) #6, !dbg !3276
  %tobool126 = icmp eq i8 %call125, 0, !dbg !3276
  br i1 %tobool126, label %if.then127, label %if.end162, !dbg !3277

if.then127:                                       ; preds = %land.lhs.true123
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3278
  %34 = load i32, i32* %locus, align 8, !dbg !3278
  %cmp128 = icmp eq i32 %34, 1, !dbg !3281
  br i1 %cmp128, label %if.end132, label %if.then130, !dbg !3282

if.then130:                                       ; preds = %if.then127
  %call131 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), %union.tree_node* %field) #6, !dbg !3283
  br label %if.end132, !dbg !3283

if.end132:                                        ; preds = %if.then127, %if.then130
  %offset_align133 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 2, !dbg !3284
  %35 = load i32, i32* %offset_align133, align 8, !dbg !3284
  %cmp134 = icmp ult i32 %call69, %35, !dbg !3286
  br i1 %cmp134, label %if.then136, label %if.else140, !dbg !3287

if.then136:                                       ; preds = %if.end132
  %36 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3288
  %call138 = tail call %union.tree_node* @round_up_loc(i32 0, %union.tree_node* %36, i32 %call69) #6, !dbg !3288
  store %union.tree_node* %call138, %union.tree_node** %bitpos37, align 8, !dbg !3289
  %offset152.phi.trans.insert = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !3290
  %.phi.trans.insert = bitcast %union.tree_node** %offset152.phi.trans.insert to i64**, !dbg !3290
  %.pre = load i64*, i64** %.phi.trans.insert, align 8, !dbg !3292
  br label %if.end151, !dbg !3293

if.else140:                                       ; preds = %if.end132
  %offset141 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !3294
  %37 = load %union.tree_node*, %union.tree_node** %offset141, align 8, !dbg !3294
  %38 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3294
  %39 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3294
  %40 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 21), align 8, !dbg !3294
  %call143 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 68, %union.tree_node* %39, %union.tree_node* %40) #6, !dbg !3294
  %call144 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %38, %union.tree_node* %call143) #6, !dbg !3294
  %call145 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %37, %union.tree_node* %call144) #6, !dbg !3294
  store %union.tree_node* %call145, %union.tree_node** %offset141, align 8, !dbg !3296
  %41 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 19) to i64*), align 8, !dbg !3297
  %42 = bitcast %union.tree_node** %bitpos37 to i64*, !dbg !3298
  store i64 %41, i64* %42, align 8, !dbg !3298
  %div = lshr i32 %call69, 3, !dbg !3299
  %call149 = tail call %union.tree_node* @round_up_loc(i32 0, %union.tree_node* %call145, i32 %div) #6, !dbg !3299
  store %union.tree_node* %call149, %union.tree_node** %offset141, align 8, !dbg !3300
  %43 = getelementptr inbounds %union.tree_node, %union.tree_node* %call149, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  br label %if.end151

if.end151:                                        ; preds = %if.else140, %if.then136
  %44 = phi i64* [ %43, %if.else140 ], [ %.pre, %if.then136 ], !dbg !3292
  %bf.load154 = load i64, i64* %44, align 8, !dbg !3292
  %bf.cast15719 = and i64 %bf.load154, 131072, !dbg !3292
  %tobool158 = icmp eq i64 %bf.cast15719, 0, !dbg !3292
  br i1 %tobool158, label %if.then159, label %if.end162, !dbg !3301

if.then159:                                       ; preds = %if.end151
  store i32 %call69, i32* %offset_align133, align 8, !dbg !3302
  br label %if.end162, !dbg !3303

if.end162:                                        ; preds = %if.end151, %land.lhs.true123, %if.then159, %if.end120
  %45 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 18), align 8, !dbg !3304
  %t163 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 0, !dbg !3305
  %46 = load %union.tree_node*, %union.tree_node** %t163, align 8, !dbg !3305
  %call164 = tail call zeroext i8 %45(%union.tree_node* %46) #6, !dbg !3306
  %tobool165 = icmp eq i8 %call164, 0, !dbg !3306
  br i1 %tobool165, label %land.lhs.true166, label %if.end288, !dbg !3307

land.lhs.true166:                                 ; preds = %if.end162
  %bf.load168 = load i64, i64* %1, align 8, !dbg !3308
  %bf.cast1706 = and i64 %bf.load168, 65535, !dbg !3309
  %cmp171 = icmp eq i64 %bf.cast1706, 31, !dbg !3309
  %47 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3310
  %cmp174 = icmp ne %union.tree_node* %0, %47, !dbg !3311
  %or.cond = and i1 %cmp171, %cmp174, !dbg !3312
  br i1 %or.cond, label %land.lhs.true176, label %if.end288, !dbg !3312

land.lhs.true176:                                 ; preds = %land.lhs.true166
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3313
  %48 = bitcast i40* %decl_flag_1 to i64*, !dbg !3313
  %bf.load178 = load i64, i64* %48, align 8, !dbg !3313
  %bf.cast18111 = and i64 %bf.load178, 33554432, !dbg !3313
  %tobool182 = icmp eq i64 %bf.cast18111, 0, !dbg !3313
  br i1 %tobool182, label %if.end288, label %land.lhs.true183, !dbg !3314

land.lhs.true183:                                 ; preds = %land.lhs.true176
  %bf.cast18912 = and i64 %bf.load168, 2199023255552, !dbg !3315
  %tobool190 = icmp eq i64 %bf.cast18912, 0, !dbg !3315
  br i1 %tobool190, label %land.lhs.true195, label %lor.lhs.false, !dbg !3316

lor.lhs.false:                                    ; preds = %land.lhs.true183
  %49 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3317
  %50 = load i32, i32* %49, align 8, !dbg !3317
  %cmp193 = icmp ult i32 %50, 9, !dbg !3318
  br i1 %cmp193, label %land.lhs.true195, label %if.end288, !dbg !3319

land.lhs.true195:                                 ; preds = %land.lhs.true183, %lor.lhs.false
  %51 = load i32, i32* @maximum_field_alignment, align 4, !dbg !3320
  %cmp196 = icmp eq i32 %51, 0, !dbg !3321
  br i1 %cmp196, label %land.lhs.true198, label %if.end288, !dbg !3322

land.lhs.true198:                                 ; preds = %land.lhs.true195
  %size = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3323
  %52 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !3323
  %call200 = tail call i32 @integer_zerop(%union.tree_node* %52) #6, !dbg !3324
  %tobool201 = icmp eq i32 %call200, 0, !dbg !3324
  br i1 %tobool201, label %land.lhs.true202, label %if.end288, !dbg !3325

land.lhs.true202:                                 ; preds = %land.lhs.true198
  %53 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !3326
  %call205 = tail call i32 @host_integerp(%union.tree_node* %53, i32 1) #6, !dbg !3327
  %tobool206 = icmp eq i32 %call205, 0, !dbg !3327
  br i1 %tobool206, label %if.end288, label %land.lhs.true207, !dbg !3328

land.lhs.true207:                                 ; preds = %land.lhs.true202
  %offset208 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !3329
  %54 = load %union.tree_node*, %union.tree_node** %offset208, align 8, !dbg !3329
  %call209 = tail call i32 @host_integerp(%union.tree_node* %54, i32 1) #6, !dbg !3330
  %tobool210 = icmp eq i32 %call209, 0, !dbg !3330
  br i1 %tobool210, label %if.end288, label %land.lhs.true211, !dbg !3331

land.lhs.true211:                                 ; preds = %land.lhs.true207
  %55 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3332
  %56 = load %union.tree_node*, %union.tree_node** %55, align 8, !dbg !3332
  %call214 = tail call i32 @host_integerp(%union.tree_node* %56, i32 1) #6, !dbg !3333
  %tobool215 = icmp eq i32 %call214, 0, !dbg !3333
  br i1 %tobool215, label %if.end288, label %if.then216, !dbg !3334

if.then216:                                       ; preds = %land.lhs.true211
  %57 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3335
  %58 = load i32, i32* %57, align 8, !dbg !3335
  call void @llvm.dbg.value(metadata i32 %58, metadata !3154, metadata !DIExpression()), !dbg !3336
  %59 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !3337
  call void @llvm.dbg.value(metadata %union.tree_node* %59, metadata !3157, metadata !DIExpression()), !dbg !3336
  %call221 = tail call i64 @tree_low_cst(%union.tree_node* %59, i32 1) #6, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %call221, metadata !3158, metadata !DIExpression()), !dbg !3336
  %60 = load %union.tree_node*, %union.tree_node** %offset208, align 8, !dbg !3339
  %call224 = tail call i64 @tree_low_cst(%union.tree_node* %60, i32 0) #6, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %call224, metadata !3159, metadata !DIExpression()), !dbg !3336
  %61 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3341
  %call227 = tail call i64 @tree_low_cst(%union.tree_node* %61, i32 0) #6, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %call227, metadata !3160, metadata !DIExpression()), !dbg !3336
  %bf.load230 = load i64, i64* %5, align 8, !dbg !3343
  %bf.cast23313 = and i64 %bf.load230, 4398046511104, !dbg !3343
  %tobool234 = icmp eq i64 %bf.cast23313, 0, !dbg !3343
  br i1 %tobool234, label %if.then235, label %if.end237, !dbg !3345

if.then235:                                       ; preds = %if.then216
  %call236 = tail call i32 @x86_field_alignment(%union.tree_node* %field, i32 %58) #6, !dbg !3346
  call void @llvm.dbg.value(metadata i32 %call236, metadata !3154, metadata !DIExpression()), !dbg !3336
  br label %if.end237, !dbg !3347

if.end237:                                        ; preds = %if.then216, %if.then235
  %type_align.0 = phi i32 [ %58, %if.then216 ], [ %call236, %if.then235 ], !dbg !3336
  call void @llvm.dbg.value(metadata i32 %type_align.0, metadata !3154, metadata !DIExpression()), !dbg !3336
  %conv238 = zext i32 %type_align.0 to i64, !dbg !3348
  %call239 = tail call fastcc i32 @excess_unit_span(i64 %call224, i64 %call227, i64 %call221, i64 %conv238, %union.tree_node* %0) #7, !dbg !3350
  %tobool240 = icmp eq i32 %call239, 0, !dbg !3350
  br i1 %tobool240, label %if.end259, label %if.then241, !dbg !3351

if.then241:                                       ; preds = %if.end237
  %bf.load244 = load i64, i64* %1, align 8, !dbg !3352
  %bf.cast24718 = and i64 %bf.load244, 2199023255552, !dbg !3352
  %tobool248 = icmp eq i64 %bf.cast24718, 0, !dbg !3352
  br i1 %tobool248, label %if.else254, label %if.then249, !dbg !3355

if.then249:                                       ; preds = %if.then241
  %62 = load i32, i32* @warn_packed_bitfield_compat, align 4, !dbg !3356
  %cmp250 = icmp eq i32 %62, 1, !dbg !3359
  br i1 %cmp250, label %if.then252, label %if.end259, !dbg !3360

if.then252:                                       ; preds = %if.then249
  %63 = load i32, i32* @input_location, align 4, !dbg !3361
  tail call void (i32, i8*, ...) @inform(i32 %63, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), %union.tree_node* %field) #6, !dbg !3362
  br label %if.end259, !dbg !3362

if.else254:                                       ; preds = %if.then241
  %64 = load i32, i32* @input_location, align 4, !dbg !3363
  %65 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3364
  %call256 = tail call %union.tree_node* @round_up_loc(i32 %64, %union.tree_node* %65, i32 %type_align.0) #6, !dbg !3365
  store %union.tree_node* %call256, %union.tree_node** %bitpos37, align 8, !dbg !3366
  br label %if.end259

if.end259:                                        ; preds = %if.end237, %if.else254, %if.then252, %if.then249
  %bf.load262 = load i64, i64* %1, align 8, !dbg !3367
  %bf.cast26514 = and i64 %bf.load262, 2199023255552, !dbg !3367
  %tobool266 = icmp eq i64 %bf.cast26514, 0, !dbg !3367
  br i1 %tobool266, label %if.then267, label %if.end288, !dbg !3369

if.then267:                                       ; preds = %if.end259
  %bf.load270 = load i64, i64* %5, align 8, !dbg !3370
  %66 = bitcast %struct.record_layout_info_s* %rli to %struct.tree_common**, !dbg !3371
  %67 = load %struct.tree_common*, %struct.tree_common** %66, align 8, !dbg !3371
  %68 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %67, i64 0, i32 0, i32 0, !dbg !3371
  %bf.load277 = load i64, i64* %68, align 8, !dbg !3372
  %69 = and i64 %bf.load270, 4398046511104, !dbg !3372
  %bf.set285 = or i64 %69, %bf.load277, !dbg !3372
  store i64 %bf.set285, i64* %68, align 8, !dbg !3372
  br label %if.end288, !dbg !3371

if.end288:                                        ; preds = %if.end259, %land.lhs.true211, %land.lhs.true207, %land.lhs.true202, %land.lhs.true198, %land.lhs.true176, %if.end162, %if.then267, %land.lhs.true195, %lor.lhs.false, %land.lhs.true166
  %70 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 18), align 8, !dbg !3373
  %71 = load %union.tree_node*, %union.tree_node** %t163, align 8, !dbg !3374
  %call290 = tail call zeroext i8 %70(%union.tree_node* %71) #6, !dbg !3375
  %tobool291 = icmp eq i8 %call290, 0, !dbg !3375
  br i1 %tobool291, label %if.end471, label %if.then292, !dbg !3376

if.then292:                                       ; preds = %if.end288
  %prev_field = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 6, !dbg !3377
  %72 = load %union.tree_node*, %union.tree_node** %prev_field, align 8, !dbg !3377
  call void @llvm.dbg.value(metadata %union.tree_node* %72, metadata !3161, metadata !DIExpression()), !dbg !3378
  %tobool293 = icmp eq %union.tree_node* %72, null, !dbg !3379
  br i1 %tobool293, label %cond.end297, label %cond.true294, !dbg !3379

cond.true294:                                     ; preds = %if.then292
  %73 = getelementptr inbounds %union.tree_node, %union.tree_node* %72, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3380
  %74 = bitcast %union.tree_node** %73 to %struct.tree_type**, !dbg !3380
  %75 = load %struct.tree_type*, %struct.tree_type** %74, align 8, !dbg !3380
  br label %cond.end297, !dbg !3379

cond.end297:                                      ; preds = %if.then292, %cond.true294
  %76 = phi %struct.tree_type* [ %75, %cond.true294 ], [ null, %if.then292 ], !dbg !3379
  br i1 %tobool293, label %if.end394, label %if.then301, !dbg !3381

if.then301:                                       ; preds = %cond.end297
  %77 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3382
  %78 = load %union.tree_node*, %union.tree_node** %77, align 8, !dbg !3382
  %tobool304 = icmp eq %union.tree_node* %78, null, !dbg !3382
  br i1 %tobool304, label %if.else367, label %land.lhs.true305, !dbg !3383

land.lhs.true305:                                 ; preds = %if.then301
  %size307 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3384
  %79 = load %union.tree_node*, %union.tree_node** %size307, align 8, !dbg !3384
  %call308 = tail call i32 @integer_zerop(%union.tree_node* %79) #6, !dbg !3385
  %tobool309 = icmp eq i32 %call308, 0, !dbg !3385
  br i1 %tobool309, label %land.lhs.true310, label %if.else367, !dbg !3386

land.lhs.true310:                                 ; preds = %land.lhs.true305
  %80 = bitcast %union.tree_node** %prev_field to %struct.tree_decl_common**, !dbg !3387
  %81 = load %struct.tree_decl_common*, %struct.tree_decl_common** %80, align 8, !dbg !3387
  %size313 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %81, i64 0, i32 1, !dbg !3387
  %82 = load %union.tree_node*, %union.tree_node** %size313, align 8, !dbg !3387
  %call314 = tail call i32 @integer_zerop(%union.tree_node* %82) #6, !dbg !3388
  %tobool315 = icmp eq i32 %call314, 0, !dbg !3388
  br i1 %tobool315, label %land.lhs.true316, label %if.else367, !dbg !3389

land.lhs.true316:                                 ; preds = %land.lhs.true310
  %83 = load %struct.tree_decl_common*, %struct.tree_decl_common** %80, align 8, !dbg !3390
  %size319 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %83, i64 0, i32 1, !dbg !3390
  %84 = load %union.tree_node*, %union.tree_node** %size319, align 8, !dbg !3390
  %call320 = tail call i32 @host_integerp(%union.tree_node* %84, i32 0) #6, !dbg !3391
  %tobool321 = icmp eq i32 %call320, 0, !dbg !3391
  br i1 %tobool321, label %if.else367, label %land.lhs.true322, !dbg !3392

land.lhs.true322:                                 ; preds = %land.lhs.true316
  %85 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3393
  %86 = load %union.tree_node*, %union.tree_node** %85, align 8, !dbg !3393
  %call325 = tail call i32 @host_integerp(%union.tree_node* %86, i32 0) #6, !dbg !3394
  %tobool326 = icmp eq i32 %call325, 0, !dbg !3394
  br i1 %tobool326, label %if.else367, label %land.lhs.true327, !dbg !3395

land.lhs.true327:                                 ; preds = %land.lhs.true322
  %87 = load %union.tree_node*, %union.tree_node** %85, align 8, !dbg !3396
  %size331 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %76, i64 0, i32 2, !dbg !3397
  %88 = load %union.tree_node*, %union.tree_node** %size331, align 8, !dbg !3397
  %call332 = tail call i32 @simple_cst_equal(%union.tree_node* %87, %union.tree_node* %88) #6, !dbg !3398
  %tobool333 = icmp eq i32 %call332, 0, !dbg !3398
  br i1 %tobool333, label %if.else367, label %if.then334, !dbg !3399

if.then334:                                       ; preds = %land.lhs.true327
  %89 = load %union.tree_node*, %union.tree_node** %size307, align 8, !dbg !3400
  %call337 = tail call i64 @tree_low_cst(%union.tree_node* %89, i32 1) #6, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %call337, metadata !3165, metadata !DIExpression()), !dbg !3402
  %remaining_in_alignment = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 8, !dbg !3403
  %90 = load i32, i32* %remaining_in_alignment, align 8, !dbg !3403
  %conv338 = sext i32 %90 to i64, !dbg !3404
  %cmp339 = icmp sgt i64 %call337, %conv338, !dbg !3405
  br i1 %cmp339, label %if.then341, label %if.else361, !dbg !3406

if.then341:                                       ; preds = %if.then334
  %91 = load %union.tree_node*, %union.tree_node** %85, align 8, !dbg !3407
  %call344 = tail call i64 @tree_low_cst(%union.tree_node* %91, i32 1) #6, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %call344, metadata !3170, metadata !DIExpression()), !dbg !3409
  %92 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3410
  %93 = load i32, i32* %remaining_in_alignment, align 8, !dbg !3410
  %conv347 = sext i32 %93 to i64, !dbg !3410
  %call348 = tail call %union.tree_node* @size_int_kind(i64 %conv347, i32 2) #6, !dbg !3410
  %call349 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %92, %union.tree_node* %call348) #6, !dbg !3410
  store %union.tree_node* %call349, %union.tree_node** %bitpos37, align 8, !dbg !3411
  store %union.tree_node* %field, %union.tree_node** %prev_field, align 8, !dbg !3412
  %cmp352 = icmp slt i64 %call344, %call337, !dbg !3413
  br i1 %cmp352, label %if.then354, label %if.else356, !dbg !3415

if.then354:                                       ; preds = %if.then341
  store i32 0, i32* %remaining_in_alignment, align 8, !dbg !3416
  br label %if.end393, !dbg !3417

if.else356:                                       ; preds = %if.then341
  %sub357 = sub nsw i64 %call344, %call337, !dbg !3418
  %conv358 = trunc i64 %sub357 to i32, !dbg !3419
  store i32 %conv358, i32* %remaining_in_alignment, align 8, !dbg !3420
  br label %if.end393

if.else361:                                       ; preds = %if.then334
  %94 = trunc i64 %call337 to i32, !dbg !3421
  %conv365 = sub i32 %90, %94, !dbg !3421
  store i32 %conv365, i32* %remaining_in_alignment, align 8, !dbg !3421
  br label %if.end393

if.else367:                                       ; preds = %land.lhs.true327, %land.lhs.true322, %land.lhs.true316, %land.lhs.true310, %land.lhs.true305, %if.then301
  %95 = bitcast %union.tree_node** %prev_field to %struct.tree_decl_common**, !dbg !3422
  %96 = load %struct.tree_decl_common*, %struct.tree_decl_common** %95, align 8, !dbg !3422
  %size370 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %96, i64 0, i32 1, !dbg !3422
  %97 = load %union.tree_node*, %union.tree_node** %size370, align 8, !dbg !3422
  %call371 = tail call i32 @integer_zerop(%union.tree_node* %97) #6, !dbg !3425
  %tobool372 = icmp eq i32 %call371, 0, !dbg !3425
  br i1 %tobool372, label %if.then373, label %if.end381, !dbg !3426

if.then373:                                       ; preds = %if.else367
  %98 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3427
  %remaining_in_alignment375 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 8, !dbg !3427
  %99 = load i32, i32* %remaining_in_alignment375, align 8, !dbg !3427
  %conv376 = sext i32 %99 to i64, !dbg !3427
  %call377 = tail call %union.tree_node* @size_int_kind(i64 %conv376, i32 2) #6, !dbg !3427
  %call378 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %98, %union.tree_node* %call377) #6, !dbg !3427
  store %union.tree_node* %call378, %union.tree_node** %bitpos37, align 8, !dbg !3429
  br label %if.end381, !dbg !3430

if.end381:                                        ; preds = %if.else367, %if.then373
  %prev_saved.0 = phi %union.tree_node* [ %72, %if.then373 ], [ null, %if.else367 ], !dbg !3378
  call void @llvm.dbg.value(metadata %union.tree_node* %prev_saved.0, metadata !3161, metadata !DIExpression()), !dbg !3378
  %100 = load %union.tree_node*, %union.tree_node** %77, align 8, !dbg !3431
  %tobool384 = icmp eq %union.tree_node* %100, null, !dbg !3431
  br i1 %tobool384, label %if.then390, label %lor.lhs.false385, !dbg !3433

lor.lhs.false385:                                 ; preds = %if.end381
  %size387 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3434
  %101 = load %union.tree_node*, %union.tree_node** %size387, align 8, !dbg !3434
  %call388 = tail call i32 @integer_zerop(%union.tree_node* %101) #6, !dbg !3435
  %tobool389 = icmp eq i32 %call388, 0, !dbg !3435
  br i1 %tobool389, label %if.end393, label %if.then390, !dbg !3436

if.then390:                                       ; preds = %lor.lhs.false385, %if.end381
  store %union.tree_node* null, %union.tree_node** %prev_field, align 8, !dbg !3437
  br label %if.end393, !dbg !3438

if.end393:                                        ; preds = %lor.lhs.false385, %if.then390, %if.else361, %if.else356, %if.then354
  %prev_saved.1 = phi %union.tree_node* [ %72, %if.then354 ], [ %72, %if.else356 ], [ %72, %if.else361 ], [ %prev_saved.0, %if.then390 ], [ %prev_saved.0, %lor.lhs.false385 ], !dbg !3378
  call void @llvm.dbg.value(metadata %union.tree_node* %prev_saved.1, metadata !3161, metadata !DIExpression()), !dbg !3378
  tail call void @normalize_rli(%struct.record_layout_info_s* %rli) #7, !dbg !3439
  br label %if.end394, !dbg !3440

if.end394:                                        ; preds = %cond.end297, %if.end393
  %prev_saved.2 = phi %union.tree_node* [ %prev_saved.1, %if.end393 ], [ null, %cond.end297 ], !dbg !3378
  call void @llvm.dbg.value(metadata %union.tree_node* %prev_saved.2, metadata !3161, metadata !DIExpression()), !dbg !3378
  %102 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3441
  %103 = load %union.tree_node*, %union.tree_node** %102, align 8, !dbg !3441
  %tobool397 = icmp eq %union.tree_node* %103, null, !dbg !3441
  br i1 %tobool397, label %if.then413, label %lor.lhs.false398, !dbg !3442

lor.lhs.false398:                                 ; preds = %if.end394
  %cmp399 = icmp eq %union.tree_node* %prev_saved.2, null, !dbg !3443
  br i1 %cmp399, label %cond.false408, label %cond.true401, !dbg !3444

cond.true401:                                     ; preds = %lor.lhs.false398
  %104 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3445
  %105 = load %union.tree_node*, %union.tree_node** %104, align 8, !dbg !3445
  %size405 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %76, i64 0, i32 2, !dbg !3446
  %106 = load %union.tree_node*, %union.tree_node** %size405, align 8, !dbg !3446
  %call406 = tail call i32 @simple_cst_equal(%union.tree_node* %105, %union.tree_node* %106) #6, !dbg !3447
  %tobool407 = icmp eq i32 %call406, 0, !dbg !3447
  br i1 %tobool407, label %if.then413, label %if.end471, !dbg !3448

cond.false408:                                    ; preds = %lor.lhs.false398
  %size410 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3449
  %107 = load %union.tree_node*, %union.tree_node** %size410, align 8, !dbg !3449
  %call411 = tail call i32 @integer_zerop(%union.tree_node* %107) #6, !dbg !3450
  %tobool412 = icmp eq i32 %call411, 0, !dbg !3450
  br i1 %tobool412, label %if.then413, label %if.end471, !dbg !3444

if.then413:                                       ; preds = %cond.true401, %cond.false408, %if.end394
  call void @llvm.dbg.value(metadata i32 8, metadata !3173, metadata !DIExpression()), !dbg !3451
  %size416 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3452
  %108 = load %union.tree_node*, %union.tree_node** %size416, align 8, !dbg !3452
  %cmp417 = icmp eq %union.tree_node* %108, null, !dbg !3453
  br i1 %cmp417, label %if.then413.if.end451_crit_edge, label %land.lhs.true419, !dbg !3454

if.then413.if.end451_crit_edge:                   ; preds = %if.then413
  %.pre25 = bitcast %union.tree_node** %type1 to %struct.tree_type**, !dbg !3455
  br label %if.end451, !dbg !3454

land.lhs.true419:                                 ; preds = %if.then413
  %109 = bitcast %union.tree_node** %type1 to %struct.tree_type**, !dbg !3456
  %110 = load %struct.tree_type*, %struct.tree_type** %109, align 8, !dbg !3456
  %size423 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %110, i64 0, i32 2, !dbg !3456
  %111 = load %union.tree_node*, %union.tree_node** %size423, align 8, !dbg !3456
  %call424 = tail call i32 @host_integerp(%union.tree_node* %111, i32 1) #6, !dbg !3457
  %tobool425 = icmp eq i32 %call424, 0, !dbg !3457
  br i1 %tobool425, label %if.end451, label %land.lhs.true426, !dbg !3458

land.lhs.true426:                                 ; preds = %land.lhs.true419
  %112 = load %union.tree_node*, %union.tree_node** %size416, align 8, !dbg !3459
  %call429 = tail call i32 @host_integerp(%union.tree_node* %112, i32 1) #6, !dbg !3460
  %tobool430 = icmp eq i32 %call429, 0, !dbg !3460
  br i1 %tobool430, label %if.end451, label %if.then431, !dbg !3461

if.then431:                                       ; preds = %land.lhs.true426
  %113 = load %union.tree_node*, %union.tree_node** %size416, align 8, !dbg !3462
  %call435 = tail call i64 @tree_low_cst(%union.tree_node* %113, i32 1) #6, !dbg !3463
  call void @llvm.dbg.value(metadata i64 %call435, metadata !3176, metadata !DIExpression()), !dbg !3464
  %114 = load %struct.tree_type*, %struct.tree_type** %109, align 8, !dbg !3465
  %size440 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %114, i64 0, i32 2, !dbg !3465
  %115 = load %union.tree_node*, %union.tree_node** %size440, align 8, !dbg !3465
  %call441 = tail call i64 @tree_low_cst(%union.tree_node* %115, i32 1) #6, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %call441, metadata !3179, metadata !DIExpression()), !dbg !3464
  %cmp442 = icmp ult i64 %call441, %call435, !dbg !3467
  br i1 %cmp442, label %if.then444, label %if.else446, !dbg !3469

if.then444:                                       ; preds = %if.then431
  %remaining_in_alignment445 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 8, !dbg !3470
  store i32 0, i32* %remaining_in_alignment445, align 8, !dbg !3471
  br label %if.end451, !dbg !3472

if.else446:                                       ; preds = %if.then431
  %sub447 = sub i64 %call441, %call435, !dbg !3473
  %conv448 = trunc i64 %sub447 to i32, !dbg !3474
  %remaining_in_alignment449 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 8, !dbg !3475
  store i32 %conv448, i32* %remaining_in_alignment449, align 8, !dbg !3476
  br label %if.end451

if.end451:                                        ; preds = %if.then413.if.end451_crit_edge, %land.lhs.true426, %land.lhs.true419, %if.then444, %if.else446
  %.pre-phi26 = phi %struct.tree_type** [ %.pre25, %if.then413.if.end451_crit_edge ], [ %109, %land.lhs.true426 ], [ %109, %land.lhs.true419 ], [ %109, %if.then444 ], [ %109, %if.else446 ], !dbg !3455
  %116 = load %struct.tree_type*, %struct.tree_type** %.pre-phi26, align 8, !dbg !3455
  %align455 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %116, i64 0, i32 7, !dbg !3455
  %117 = load i32, i32* %align455, align 8, !dbg !3455
  call void @llvm.dbg.value(metadata i32 %117, metadata !3173, metadata !DIExpression()), !dbg !3451
  %118 = load i32, i32* @maximum_field_alignment, align 4, !dbg !3477
  %cmp456 = icmp eq i32 %118, 0, !dbg !3479
  br i1 %cmp456, label %if.end465, label %if.then458, !dbg !3480

if.then458:                                       ; preds = %if.end451
  %cmp459 = icmp ult i32 %117, %118, !dbg !3481
  %cond464 = select i1 %cmp459, i32 %117, i32 %118, !dbg !3481
  br label %if.end465, !dbg !3481

if.end465:                                        ; preds = %if.end451, %if.then458
  %type_align414.0 = phi i32 [ %117, %if.end451 ], [ %cond464, %if.then458 ], !dbg !3451
  call void @llvm.dbg.value(metadata i32 %type_align414.0, metadata !3173, metadata !DIExpression()), !dbg !3451
  %119 = load i32, i32* @input_location, align 4, !dbg !3482
  %120 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3483
  %call467 = tail call %union.tree_node* @round_up_loc(i32 %119, %union.tree_node* %120, i32 %type_align414.0) #6, !dbg !3484
  store %union.tree_node* %call467, %union.tree_node** %bitpos37, align 8, !dbg !3485
  store %union.tree_node* null, %union.tree_node** %prev_field, align 8, !dbg !3486
  br label %if.end471, !dbg !3487

if.end471:                                        ; preds = %cond.true401, %cond.false408, %if.end288, %if.end465
  tail call void @normalize_rli(%struct.record_layout_info_s* %rli) #7, !dbg !3488
  %offset472 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !3489
  %121 = bitcast %union.tree_node** %offset472 to i64*, !dbg !3489
  %122 = load i64, i64* %121, align 8, !dbg !3489
  %offset474 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3490
  %123 = bitcast %struct.rtx_def** %offset474 to i64*, !dbg !3491
  store i64 %122, i64* %123, align 8, !dbg !3491
  %124 = bitcast %union.tree_node** %bitpos37 to i64*, !dbg !3492
  %125 = load i64, i64* %124, align 8, !dbg !3492
  %126 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3493
  %127 = bitcast %union.tree_node** %126 to i64*, !dbg !3494
  store i64 %125, i64* %127, align 8, !dbg !3494
  %offset_align478 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 2, !dbg !3495
  %128 = load i32, i32* %offset_align478, align 8, !dbg !3495
  %sub480 = sub i32 0, %128, !dbg !3495
  %and481 = and i32 %128, %sub480, !dbg !3495
  %conv482 = zext i32 %and481 to i64, !dbg !3495
  %call483 = tail call i32 @exact_log2(i64 %conv482) #6, !dbg !3495
  %off_align485 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3495
  %129 = bitcast i40* %off_align485 to i64*, !dbg !3495
  %bf.load486 = load i64, i64* %129, align 8, !dbg !3495
  %130 = and i32 %call483, 255, !dbg !3495
  %bf.value487 = zext i32 %130 to i64, !dbg !3495
  %bf.shl488 = shl nuw nsw i64 %bf.value487, 32, !dbg !3495
  %bf.clear489 = and i64 %bf.load486, -1095216660481, !dbg !3495
  %bf.set490 = or i64 %bf.clear489, %bf.shl488, !dbg !3495
  store i64 %bf.set490, i64* %129, align 8, !dbg !3495
  %131 = load %union.tree_node*, %union.tree_node** %126, align 8, !dbg !3496
  %call494 = tail call i32 @integer_zerop(%union.tree_node* %131) #6, !dbg !3498
  %tobool495 = icmp eq i32 %call494, 0, !dbg !3498
  br i1 %tobool495, label %if.then496, label %if.else506, !dbg !3499

if.then496:                                       ; preds = %if.end471
  %132 = load %union.tree_node*, %union.tree_node** %126, align 8, !dbg !3500
  %call499 = tail call i64 @tree_low_cst(%union.tree_node* %132, i32 1) #6, !dbg !3501
  %133 = load %union.tree_node*, %union.tree_node** %126, align 8, !dbg !3502
  %call502 = tail call i64 @tree_low_cst(%union.tree_node* %133, i32 1) #6, !dbg !3503
  %sub503 = sub nsw i64 0, %call502, !dbg !3504
  %and504 = and i64 %call499, %sub503, !dbg !3505
  %conv505 = trunc i64 %and504 to i32, !dbg !3506
  call void @llvm.dbg.value(metadata i32 %conv505, metadata !3152, metadata !DIExpression()), !dbg !3180
  br label %if.end554, !dbg !3507

if.else506:                                       ; preds = %if.end471
  %134 = bitcast %struct.rtx_def** %offset474 to %union.tree_node**, !dbg !3508
  %135 = load %union.tree_node*, %union.tree_node** %134, align 8, !dbg !3508
  %call509 = tail call i32 @integer_zerop(%union.tree_node* %135) #6, !dbg !3510
  %tobool510 = icmp eq i32 %call509, 0, !dbg !3510
  br i1 %tobool510, label %if.else528, label %if.then511, !dbg !3511

if.then511:                                       ; preds = %if.else506
  %136 = load i32, i32* @ix86_isa_flags, align 4, !dbg !3512
  %and512 = and i32 %136, 32, !dbg !3512
  %cmp513 = icmp eq i32 %and512, 0, !dbg !3512
  %cond515 = select i1 %cmp513, i32 128, i32 256, !dbg !3512
  %record_align516 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 4, !dbg !3512
  %137 = load i32, i32* %record_align516, align 8, !dbg !3512
  %cmp517 = icmp ugt i32 %cond515, %137, !dbg !3512
  br i1 %cmp517, label %cond.true519, label %cond.false524, !dbg !3512

cond.true519:                                     ; preds = %if.then511
  br label %if.end554, !dbg !3512

cond.false524:                                    ; preds = %if.then511
  br label %if.end554, !dbg !3512

if.else528:                                       ; preds = %if.else506
  %138 = load %union.tree_node*, %union.tree_node** %134, align 8, !dbg !3513
  %call531 = tail call i32 @host_integerp(%union.tree_node* %138, i32 1) #6, !dbg !3515
  %tobool532 = icmp eq i32 %call531, 0, !dbg !3515
  br i1 %tobool532, label %if.else544, label %if.then533, !dbg !3516

if.then533:                                       ; preds = %if.else528
  %139 = load %union.tree_node*, %union.tree_node** %134, align 8, !dbg !3517
  %call536 = tail call i64 @tree_low_cst(%union.tree_node* %139, i32 1) #6, !dbg !3518
  %140 = load %union.tree_node*, %union.tree_node** %134, align 8, !dbg !3519
  %call539 = tail call i64 @tree_low_cst(%union.tree_node* %140, i32 1) #6, !dbg !3520
  %sub540 = sub nsw i64 0, %call539, !dbg !3521
  %and541 = and i64 %call536, %sub540, !dbg !3522
  %and541.tr = trunc i64 %and541 to i32, !dbg !3523
  %conv543 = shl i32 %and541.tr, 3, !dbg !3523
  call void @llvm.dbg.value(metadata i32 %conv543, metadata !3152, metadata !DIExpression()), !dbg !3180
  br label %if.end554, !dbg !3524

if.else544:                                       ; preds = %if.else528
  %bf.load547 = load i64, i64* %129, align 8, !dbg !3525
  %bf.lshr548 = lshr i64 %bf.load547, 32, !dbg !3525
  %bf.cast550 = and i64 %bf.lshr548, 255, !dbg !3525
  %shl = shl i64 1, %bf.cast550, !dbg !3525
  %conv551 = trunc i64 %shl to i32, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %conv551, metadata !3152, metadata !DIExpression()), !dbg !3180
  br label %if.end554

if.end554:                                        ; preds = %cond.false524, %cond.true519, %if.else544, %if.then533, %if.then496
  %actual_align.2 = phi i32 [ %conv505, %if.then496 ], [ %cond515, %cond.true519 ], [ %137, %cond.false524 ], [ %conv543, %if.then533 ], [ %conv551, %if.else544 ], !dbg !3526
  call void @llvm.dbg.value(metadata i32 %actual_align.2, metadata !3152, metadata !DIExpression()), !dbg !3180
  %cmp555 = icmp eq i32 %known_align.3, %actual_align.2, !dbg !3527
  br i1 %cmp555, label %if.end558, label %if.then557, !dbg !3529

if.then557:                                       ; preds = %if.end554
  tail call void @layout_decl(%union.tree_node* %field, i32 %actual_align.2) #7, !dbg !3530
  br label %if.end558, !dbg !3530

if.end558:                                        ; preds = %if.end554, %if.then557
  %prev_field559 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 6, !dbg !3531
  %141 = load %union.tree_node*, %union.tree_node** %prev_field559, align 8, !dbg !3531
  %cmp560 = icmp eq %union.tree_node* %141, null, !dbg !3533
  br i1 %cmp560, label %land.lhs.true562, label %if.end568, !dbg !3534

land.lhs.true562:                                 ; preds = %if.end558
  %142 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3535
  %143 = load %union.tree_node*, %union.tree_node** %142, align 8, !dbg !3535
  %tobool565 = icmp eq %union.tree_node* %143, null, !dbg !3535
  br i1 %tobool565, label %if.end568, label %if.then566, !dbg !3536

if.then566:                                       ; preds = %land.lhs.true562
  store %union.tree_node* %field, %union.tree_node** %prev_field559, align 8, !dbg !3537
  br label %if.end568, !dbg !3538

if.end568:                                        ; preds = %land.lhs.true562, %if.then566, %if.end558
  %size570 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3539
  %144 = load %union.tree_node*, %union.tree_node** %size570, align 8, !dbg !3539
  %cmp571 = icmp eq %union.tree_node* %144, null, !dbg !3541
  br i1 %cmp571, label %cleanup.cont, label %if.else574, !dbg !3542

if.else574:                                       ; preds = %if.end568
  %145 = getelementptr inbounds %union.tree_node, %union.tree_node* %144, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3542
  %bf.load578 = load i64, i64* %145, align 8, !dbg !3543
  %bf.cast5807 = and i64 %bf.load578, 65535, !dbg !3545
  %cmp581 = icmp eq i64 %bf.cast5807, 23, !dbg !3545
  br i1 %cmp581, label %lor.lhs.false583, label %if.then592, !dbg !3546

lor.lhs.false583:                                 ; preds = %if.else574
  %bf.cast5908 = and i64 %bf.load578, 134217728, !dbg !3547
  %tobool591 = icmp eq i64 %bf.cast5908, 0, !dbg !3547
  br i1 %tobool591, label %if.else613, label %if.then592, !dbg !3548

if.then592:                                       ; preds = %lor.lhs.false583, %if.else574
  %146 = load %union.tree_node*, %union.tree_node** %offset472, align 8, !dbg !3549
  %147 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3549
  %148 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3549
  %149 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 21), align 8, !dbg !3549
  %call595 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 68, %union.tree_node* %148, %union.tree_node* %149) #6, !dbg !3549
  %call596 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %147, %union.tree_node* %call595) #6, !dbg !3549
  %call597 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %146, %union.tree_node* %call596) #6, !dbg !3549
  store %union.tree_node* %call597, %union.tree_node** %offset472, align 8, !dbg !3551
  %size_unit = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3552
  %150 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !3552
  %call601 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %call597, %union.tree_node* %150) #6, !dbg !3552
  store %union.tree_node* %call601, %union.tree_node** %offset472, align 8, !dbg !3553
  %151 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 19) to i64*), align 8, !dbg !3554
  store i64 %151, i64* %124, align 8, !dbg !3555
  %152 = load i32, i32* %offset_align478, align 8, !dbg !3556
  %cmp605 = icmp ult i32 %152, %call69, !dbg !3556
  br i1 %cmp605, label %cond.true607, label %cond.end610, !dbg !3556

cond.true607:                                     ; preds = %if.then592
  br label %cond.end610, !dbg !3556

cond.end610:                                      ; preds = %if.then592, %cond.true607
  %cond611 = phi i32 [ %152, %cond.true607 ], [ %call69, %if.then592 ], !dbg !3556
  store i32 %cond611, i32* %offset_align478, align 8, !dbg !3557
  br label %cleanup.cont, !dbg !3558

if.else613:                                       ; preds = %lor.lhs.false583
  %153 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 18), align 8, !dbg !3559
  %154 = load %union.tree_node*, %union.tree_node** %t163, align 8, !dbg !3561
  %call615 = tail call zeroext i8 %153(%union.tree_node* %154) #6, !dbg !3562
  %tobool616 = icmp eq i8 %call615, 0, !dbg !3562
  %155 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3563
  %156 = load %union.tree_node*, %union.tree_node** %size570, align 8, !dbg !3563
  %call621 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %155, %union.tree_node* %156) #6, !dbg !3563
  store %union.tree_node* %call621, %union.tree_node** %bitpos37, align 8, !dbg !3563
  br i1 %tobool616, label %if.else652, label %if.then617, !dbg !3564

if.then617:                                       ; preds = %if.else613
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3565
  %157 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3565
  %cmp624 = icmp eq %union.tree_node* %157, null, !dbg !3568
  br i1 %cmp624, label %land.lhs.true635, label %lor.lhs.false626, !dbg !3569

lor.lhs.false626:                                 ; preds = %if.then617
  %158 = getelementptr inbounds %union.tree_node, %union.tree_node* %157, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3569
  %bf.load630 = load i64, i64* %158, align 8, !dbg !3570
  %bf.cast6329 = and i64 %bf.load630, 65535, !dbg !3571
  %cmp633 = icmp eq i64 %bf.cast6329, 31, !dbg !3571
  br i1 %cmp633, label %if.end651, label %land.lhs.true635, !dbg !3572

land.lhs.true635:                                 ; preds = %lor.lhs.false626, %if.then617
  %159 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3573
  %160 = load %union.tree_node*, %union.tree_node** %159, align 8, !dbg !3573
  %tobool638 = icmp eq %union.tree_node* %160, null, !dbg !3573
  br i1 %tobool638, label %if.end651, label %land.lhs.true639, !dbg !3574

land.lhs.true639:                                 ; preds = %land.lhs.true635
  %161 = load %union.tree_node*, %union.tree_node** %size570, align 8, !dbg !3575
  %call642 = tail call i32 @integer_zerop(%union.tree_node* %161) #6, !dbg !3576
  %tobool643 = icmp eq i32 %call642, 0, !dbg !3576
  br i1 %tobool643, label %if.then644, label %if.end651, !dbg !3577

if.then644:                                       ; preds = %land.lhs.true639
  %162 = load %union.tree_node*, %union.tree_node** %bitpos37, align 8, !dbg !3578
  %remaining_in_alignment646 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 8, !dbg !3578
  %163 = load i32, i32* %remaining_in_alignment646, align 8, !dbg !3578
  %conv647 = sext i32 %163 to i64, !dbg !3578
  %call648 = tail call %union.tree_node* @size_int_kind(i64 %conv647, i32 2) #6, !dbg !3578
  %call649 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %162, %union.tree_node* %call648) #6, !dbg !3578
  store %union.tree_node* %call649, %union.tree_node** %bitpos37, align 8, !dbg !3579
  br label %if.end651, !dbg !3580

if.end651:                                        ; preds = %land.lhs.true639, %land.lhs.true635, %lor.lhs.false626, %if.then644
  tail call void @normalize_rli(%struct.record_layout_info_s* %rli) #7, !dbg !3581
  br label %cleanup.cont, !dbg !3582

if.else652:                                       ; preds = %if.else613
  tail call void @normalize_rli(%struct.record_layout_info_s* %rli) #7, !dbg !3583
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.else, %if.then, %if.then20, %if.then27, %cond.end610, %if.else652, %if.end651, %if.end568
  ret void, !dbg !3585
}

; Function Attrs: nounwind uwtable
define internal fastcc void @place_union_field(%struct.record_layout_info_s* %rli, %union.tree_node* %field) unnamed_addr #5 !dbg !3586 {
entry:
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %rli, metadata !3588, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata %union.tree_node* %field, metadata !3589, metadata !DIExpression()), !dbg !3590
  %call = tail call i32 @update_alignment_for_field(%struct.record_layout_info_s* %rli, %union.tree_node* %field, i32 0) #7, !dbg !3591
  %0 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 17) to i64*), align 8, !dbg !3592
  %offset = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3593
  %1 = bitcast %struct.rtx_def** %offset to i64*, !dbg !3594
  store i64 %0, i64* %1, align 8, !dbg !3594
  %2 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 19) to i64*), align 8, !dbg !3595
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3596
  %4 = bitcast %union.tree_node** %3 to i64*, !dbg !3597
  store i64 %2, i64* %4, align 8, !dbg !3597
  %5 = load i32, i32* @ix86_isa_flags, align 4, !dbg !3598
  %and = and i32 %5, 32, !dbg !3598
  %cmp = icmp eq i32 %and, 0, !dbg !3598
  %and5 = select i1 %cmp, i64 128, i64 256, !dbg !3598
  %call6 = tail call i32 @exact_log2(i64 %and5) #6, !dbg !3598
  %off_align = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3598
  %6 = bitcast i40* %off_align to i64*, !dbg !3598
  %bf.load = load i64, i64* %6, align 8, !dbg !3598
  %7 = and i32 %call6, 255, !dbg !3598
  %bf.value = zext i32 %7 to i64, !dbg !3598
  %bf.shl = shl nuw nsw i64 %bf.value, 32, !dbg !3598
  %bf.clear = and i64 %bf.load, -1095216660481, !dbg !3598
  %bf.set = or i64 %bf.clear, %bf.shl, !dbg !3598
  store i64 %bf.set, i64* %6, align 8, !dbg !3598
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3599
  %8 = bitcast %union.tree_node** %type to i64**, !dbg !3599
  %9 = load i64*, i64** %8, align 8, !dbg !3599
  %bf.load7 = load i64, i64* %9, align 8, !dbg !3599
  %bf.cast1 = and i64 %bf.load7, 65535, !dbg !3601
  %cmp9 = icmp eq i64 %bf.cast1, 0, !dbg !3601
  br i1 %cmp9, label %if.end37, label %if.end, !dbg !3602

if.end:                                           ; preds = %entry
  %10 = bitcast %struct.record_layout_info_s* %rli to i64**, !dbg !3603
  %11 = load i64*, i64** %10, align 8, !dbg !3603
  %bf.load12 = load i64, i64* %11, align 8, !dbg !3603
  %bf.cast142 = and i64 %bf.load12, 65535, !dbg !3605
  %cmp15 = icmp eq i64 %bf.cast142, 17, !dbg !3605
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !3606

if.then17:                                        ; preds = %if.end
  %offset18 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !3607
  %12 = load %union.tree_node*, %union.tree_node** %offset18, align 8, !dbg !3607
  %size_unit = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3607
  %13 = load %union.tree_node*, %union.tree_node** %size_unit, align 8, !dbg !3607
  %call20 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 81, %union.tree_node* %12, %union.tree_node* %13) #6, !dbg !3607
  store %union.tree_node* %call20, %union.tree_node** %offset18, align 8, !dbg !3608
  br label %if.end37, !dbg !3609

if.else:                                          ; preds = %if.end
  %cmp27 = icmp eq i64 %bf.cast142, 18, !dbg !3610
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !3612

if.then29:                                        ; preds = %if.else
  %14 = load i32, i32* @input_location, align 4, !dbg !3613
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3613
  %16 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3613
  %17 = load %union.tree_node*, %union.tree_node** %16, align 8, !dbg !3613
  %size_unit32 = getelementptr inbounds %union.tree_node, %union.tree_node* %field, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3613
  %18 = load %union.tree_node*, %union.tree_node** %size_unit32, align 8, !dbg !3613
  %offset33 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 1, !dbg !3613
  %19 = load %union.tree_node*, %union.tree_node** %offset33, align 8, !dbg !3613
  %call34 = tail call %union.tree_node* @fold_build3_stat_loc(i32 %14, i32 56, %union.tree_node* %15, %union.tree_node* %17, %union.tree_node* %18, %union.tree_node* %19) #6, !dbg !3613
  store %union.tree_node* %call34, %union.tree_node** %offset33, align 8, !dbg !3614
  br label %if.end37, !dbg !3615

if.end37:                                         ; preds = %if.else, %if.then29, %entry, %if.then17
  ret void, !dbg !3616
}

declare dso_local i32 @exact_log2(i64) local_unnamed_addr #2

declare dso_local %union.tree_node* @round_up_loc(i32, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @excess_unit_span(i64 %byte_offset, i64 %bit_offset, i64 %size, i64 %align, %union.tree_node* %type) unnamed_addr #5 !dbg !3617 {
entry:
  call void @llvm.dbg.value(metadata i64 %byte_offset, metadata !3621, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %bit_offset, metadata !3622, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %size, metadata !3623, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i64 %align, metadata !3624, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3625, metadata !DIExpression()), !dbg !3627
  %mul = shl nsw i64 %byte_offset, 3, !dbg !3628
  %add = add nsw i64 %mul, %bit_offset, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %add, metadata !3626, metadata !DIExpression()), !dbg !3627
  %rem = urem i64 %add, %align, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %rem, metadata !3626, metadata !DIExpression()), !dbg !3627
  %add1 = add i64 %rem, %size, !dbg !3631
  %add2 = add i64 %add1, %align, !dbg !3632
  %sub = add i64 %add2, -1, !dbg !3633
  %div = udiv i64 %sub, %align, !dbg !3634
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3635
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3635
  %call = tail call i64 @tree_low_cst(%union.tree_node* %1, i32 1) #6, !dbg !3636
  %div5 = udiv i64 %call, %align, !dbg !3637
  %cmp = icmp ugt i64 %div, %div5, !dbg !3638
  %conv = zext i1 %cmp to i32, !dbg !3638
  ret i32 %conv, !dbg !3639
}

declare dso_local void @inform(i32, i8*, ...) local_unnamed_addr #2

declare dso_local i32 @simple_cst_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @compute_record_mode(%union.tree_node* %type) local_unnamed_addr #5 !dbg !3640 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3642, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32 0, metadata !3644, metadata !DIExpression()), !dbg !3645
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3646
  %mode2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !3646
  %bf.load = load i32, i32* %mode2, align 4, !dbg !3646
  %bf.clear = and i32 %bf.load, -16711681, !dbg !3646
  %bf.set = or i32 %bf.clear, 65536, !dbg !3646
  store i32 %bf.set, i32* %mode2, align 4, !dbg !3646
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3647
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3647
  %call = tail call i32 @host_integerp(%union.tree_node* %1, i32 1) #6, !dbg !3649
  %tobool = icmp eq i32 %call, 0, !dbg !3649
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !3650

if.end:                                           ; preds = %entry
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3651
  %2 = bitcast i32* %values to %union.tree_node**, !dbg !3651
  br label %for.cond, !dbg !3653

for.cond:                                         ; preds = %for.inc, %if.end
  %mode.0 = phi i32 [ 0, %if.end ], [ %mode.2, %for.inc ], !dbg !3654
  %field.0.in = phi %union.tree_node** [ %2, %if.end ], [ %chain, %for.inc ]
  %field.0 = load %union.tree_node*, %union.tree_node** %field.0.in, align 8, !dbg !3655
  call void @llvm.dbg.value(metadata %union.tree_node* %field.0, metadata !3643, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32 %mode.0, metadata !3644, metadata !DIExpression()), !dbg !3645
  %tobool5 = icmp eq %union.tree_node* %field.0, null, !dbg !3656
  br i1 %tobool5, label %for.end, label %for.body, !dbg !3656

for.body:                                         ; preds = %for.cond
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3657
  %bf.load6 = load i64, i64* %3, align 8, !dbg !3657
  %bf.cast3 = and i64 %bf.load6, 65535, !dbg !3661
  %cmp = icmp eq i64 %bf.cast3, 31, !dbg !3661
  br i1 %cmp, label %if.end9, label %for.inc, !dbg !3662

if.end9:                                          ; preds = %for.body
  %type10 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3663
  %4 = bitcast %union.tree_node** %type10 to i64**, !dbg !3663
  %5 = load i64*, i64** %4, align 8, !dbg !3663
  %bf.load12 = load i64, i64* %5, align 8, !dbg !3663
  %bf.cast144 = and i64 %bf.load12, 65535, !dbg !3665
  %cmp15 = icmp eq i64 %bf.cast144, 0, !dbg !3665
  br i1 %cmp15, label %cleanup.cont.loopexit, label %lor.lhs.false, !dbg !3666

lor.lhs.false:                                    ; preds = %if.end9
  %cmp22 = icmp eq i64 %bf.cast144, 14, !dbg !3667
  br i1 %cmp22, label %cond.true, label %cond.false, !dbg !3667

cond.true:                                        ; preds = %lor.lhs.false
  %.cast = bitcast i64* %5 to %union.tree_node*, !dbg !3667
  %call25 = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #7, !dbg !3667
  br label %cond.end, !dbg !3667

cond.false:                                       ; preds = %lor.lhs.false
  %type28 = bitcast i64* %5 to %struct.tree_type*, !dbg !3667
  %mode29 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type28, i64 0, i32 6, !dbg !3667
  %bf.load30 = load i32, i32* %mode29, align 4, !dbg !3667
  %bf.lshr = lshr i32 %bf.load30, 16, !dbg !3667
  %bf.clear31 = and i32 %bf.lshr, 255, !dbg !3667
  br label %cond.end, !dbg !3667

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call25, %cond.true ], [ %bf.clear31, %cond.false ], !dbg !3667
  %cmp32 = icmp eq i32 %cond, 1, !dbg !3668
  br i1 %cmp32, label %land.lhs.true, label %lor.lhs.false53, !dbg !3669

land.lhs.true:                                    ; preds = %cond.end
  %6 = bitcast %union.tree_node** %type10 to %struct.tree_type**, !dbg !3670
  %7 = load %struct.tree_type*, %struct.tree_type** %6, align 8, !dbg !3670
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %7, i64 0, i32 6, !dbg !3670
  %bf.load36 = load i32, i32* %no_force_blk_flag, align 4, !dbg !3670
  %bf.clear38 = and i32 %bf.load36, 1024, !dbg !3670
  %tobool39 = icmp eq i32 %bf.clear38, 0, !dbg !3670
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false53, !dbg !3671

land.lhs.true40:                                  ; preds = %land.lhs.true
  %size44 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %7, i64 0, i32 2, !dbg !3672
  %8 = load %union.tree_node*, %union.tree_node** %size44, align 8, !dbg !3672
  %cmp45 = icmp eq %union.tree_node* %8, null, !dbg !3673
  br i1 %cmp45, label %cleanup.cont.loopexit, label %land.lhs.true46, !dbg !3674

land.lhs.true46:                                  ; preds = %land.lhs.true40
  %call51 = tail call i32 @integer_zerop(%union.tree_node* nonnull %8) #6, !dbg !3675
  %tobool52 = icmp eq i32 %call51, 0, !dbg !3675
  br i1 %tobool52, label %cleanup.cont.loopexit, label %lor.lhs.false53, !dbg !3676

lor.lhs.false53:                                  ; preds = %land.lhs.true46, %land.lhs.true, %cond.end
  %call54 = tail call %union.tree_node* @bit_position(%union.tree_node* nonnull %field.0) #6, !dbg !3677
  %call55 = tail call i32 @host_integerp(%union.tree_node* %call54, i32 1) #6, !dbg !3678
  %tobool56 = icmp eq i32 %call55, 0, !dbg !3678
  br i1 %tobool56, label %cleanup.cont.loopexit, label %lor.lhs.false57, !dbg !3679

lor.lhs.false57:                                  ; preds = %lor.lhs.false53
  %size58 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3680
  %9 = load %union.tree_node*, %union.tree_node** %size58, align 8, !dbg !3680
  %cmp59 = icmp eq %union.tree_node* %9, null, !dbg !3681
  br i1 %cmp59, label %cleanup.cont.loopexit, label %lor.lhs.false60, !dbg !3682

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %call63 = tail call i32 @host_integerp(%union.tree_node* nonnull %9, i32 1) #6, !dbg !3683
  %tobool64 = icmp eq i32 %call63, 0, !dbg !3683
  br i1 %tobool64, label %cleanup.cont.loopexit, label %if.end66, !dbg !3684

if.end66:                                         ; preds = %lor.lhs.false60
  %10 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3685
  %11 = load %union.tree_node*, %union.tree_node** %size58, align 8, !dbg !3687
  %call71 = tail call i32 @simple_cst_equal(%union.tree_node* %10, %union.tree_node* %11) #6, !dbg !3688
  %tobool72 = icmp eq i32 %call71, 0, !dbg !3688
  br i1 %tobool72, label %for.inc, label %if.then73, !dbg !3689

if.then73:                                        ; preds = %if.end66
  %mode75 = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3690
  %12 = bitcast i40* %mode75 to i64*, !dbg !3690
  %bf.load76 = load i64, i64* %12, align 8, !dbg !3690
  %13 = trunc i64 %bf.load76 to i32, !dbg !3690
  %bf.cast78 = and i32 %13, 255, !dbg !3690
  call void @llvm.dbg.value(metadata i32 %bf.cast78, metadata !3644, metadata !DIExpression()), !dbg !3645
  br label %for.inc, !dbg !3691

for.inc:                                          ; preds = %if.end66, %for.body, %if.then73
  %mode.2 = phi i32 [ %mode.0, %for.body ], [ %bf.cast78, %if.then73 ], [ %mode.0, %if.end66 ], !dbg !3645
  call void @llvm.dbg.value(metadata i32 %mode.2, metadata !3644, metadata !DIExpression()), !dbg !3645
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3692
  br label %for.cond, !dbg !3693, !llvm.loop !3694

for.end:                                          ; preds = %for.cond
  %mode.0.lcssa = phi i32 [ %mode.0, %for.cond ], !dbg !3654
  call void @llvm.dbg.value(metadata i32 %mode.0.lcssa, metadata !3644, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32 %mode.0.lcssa, metadata !3644, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i32 %mode.0.lcssa, metadata !3644, metadata !DIExpression()), !dbg !3645
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3696
  %bf.load82 = load i64, i64* %14, align 8, !dbg !3696
  %bf.cast841 = and i64 %bf.load82, 65535, !dbg !3698
  %cmp85 = icmp eq i64 %bf.cast841, 16, !dbg !3698
  %cmp87 = icmp ne i32 %mode.0.lcssa, 0, !dbg !3699
  %or.cond = and i1 %cmp85, %cmp87, !dbg !3700
  br i1 %or.cond, label %land.lhs.true88, label %if.else, !dbg !3700

land.lhs.true88:                                  ; preds = %for.end
  %15 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3701
  %call91 = tail call i32 @host_integerp(%union.tree_node* %15, i32 1) #6, !dbg !3702
  %tobool92 = icmp eq i32 %call91, 0, !dbg !3702
  br i1 %tobool92, label %if.else, label %land.lhs.true93, !dbg !3703

land.lhs.true93:                                  ; preds = %land.lhs.true88
  %idxprom = zext i32 %mode.0.lcssa to i64, !dbg !3704
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3704
  %16 = load i8, i8* %arrayidx, align 1, !dbg !3704
  %conv94 = zext i8 %16 to i64, !dbg !3704
  %mul = shl nuw nsw i64 %conv94, 3, !dbg !3704
  %17 = bitcast %union.tree_node** %0 to %struct.tree_int_cst**, !dbg !3705
  %18 = load %struct.tree_int_cst*, %struct.tree_int_cst** %17, align 8, !dbg !3705
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %18, i64 0, i32 1, i32 0, !dbg !3705
  %19 = load i64, i64* %low, align 8, !dbg !3705
  %cmp100 = icmp eq i64 %mul, %19, !dbg !3706
  br i1 %cmp100, label %if.then102, label %if.else, !dbg !3707

if.then102:                                       ; preds = %land.lhs.true93
  %bf.load105 = load i32, i32* %mode2, align 4, !dbg !3708
  %bf.value = shl i32 %mode.0.lcssa, 16, !dbg !3708
  %bf.shl = and i32 %bf.value, 16711680, !dbg !3708
  %bf.clear106 = and i32 %bf.load105, -16711681, !dbg !3708
  %bf.set107 = or i32 %bf.clear106, %bf.shl, !dbg !3708
  br label %if.end118, !dbg !3708

if.else:                                          ; preds = %land.lhs.true88, %land.lhs.true93, %for.end
  %20 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3709
  %call110 = tail call i32 @mode_for_size_tree(%union.tree_node* %20, i32 2, i32 1) #7, !dbg !3709
  %bf.load113 = load i32, i32* %mode2, align 4, !dbg !3709
  %bf.value114 = shl i32 %call110, 16, !dbg !3709
  %bf.shl115 = and i32 %bf.value114, 16711680, !dbg !3709
  %bf.clear116 = and i32 %bf.load113, -16711681, !dbg !3709
  %bf.set117 = or i32 %bf.clear116, %bf.shl115, !dbg !3709
  br label %if.end118

if.end118:                                        ; preds = %if.else, %if.then102
  %storemerge = phi i32 [ %bf.set117, %if.else ], [ %bf.set107, %if.then102 ], !dbg !3710
  store i32 %storemerge, i32* %mode2, align 4, !dbg !3710
  %bf.load120 = load i64, i64* %14, align 8, !dbg !3711
  %bf.cast1222 = and i64 %bf.load120, 65535, !dbg !3711
  %cmp123 = icmp eq i64 %bf.cast1222, 14, !dbg !3711
  br i1 %cmp123, label %cond.true125, label %cond.false127, !dbg !3711

cond.true125:                                     ; preds = %if.end118
  %call126 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !3711
  br label %cond.end133, !dbg !3711

cond.false127:                                    ; preds = %if.end118
  br label %cond.end133, !dbg !3711

cond.end133:                                      ; preds = %cond.false127, %cond.true125
  br label %cleanup.cont, !dbg !3713

cleanup.cont.loopexit:                            ; preds = %if.end9, %lor.lhs.false57, %lor.lhs.false53, %lor.lhs.false60, %land.lhs.true40, %land.lhs.true46
  br label %cleanup.cont, !dbg !3713

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry, %cond.end133
  ret void, !dbg !3713
}

declare dso_local %union.tree_node* @bit_position(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @finish_record_layout(%struct.record_layout_info_s* %rli, i32 %free_p) local_unnamed_addr #5 !dbg !3714 {
entry:
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %rli, metadata !3718, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i32 %free_p, metadata !3719, metadata !DIExpression()), !dbg !3721
  tail call fastcc void @finalize_record_size(%struct.record_layout_info_s* %rli) #7, !dbg !3722
  %t = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 0, !dbg !3723
  %0 = load %union.tree_node*, %union.tree_node** %t, align 8, !dbg !3723
  tail call void @compute_record_mode(%union.tree_node* %0) #7, !dbg !3724
  %1 = load %union.tree_node*, %union.tree_node** %t, align 8, !dbg !3725
  tail call fastcc void @finalize_type_size(%union.tree_node* %1) #7, !dbg !3726
  %2 = bitcast %struct.record_layout_info_s* %rli to %struct.tree_type**, !dbg !3727
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !3727
  %next_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 15, !dbg !3727
  %4 = bitcast %struct.record_layout_info_s* %rli to %struct.tree_common**, !dbg !3729
  br label %for.cond, !dbg !3731

for.cond:                                         ; preds = %for.body, %entry
  %variant.0.in = phi %union.tree_node** [ %next_variant, %entry ], [ %11, %for.body ]
  %variant.0 = load %union.tree_node*, %union.tree_node** %variant.0.in, align 8, !dbg !3732
  call void @llvm.dbg.value(metadata %union.tree_node* %variant.0, metadata !3720, metadata !DIExpression()), !dbg !3721
  %tobool = icmp eq %union.tree_node* %variant.0, null, !dbg !3733
  br i1 %tobool, label %while.cond.preheader, label %for.body, !dbg !3733

while.cond.preheader:                             ; preds = %for.cond
  %pending_statics = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 7, !dbg !3721
  %5 = bitcast %union.tree_node** %pending_statics to %struct.tree_common**, !dbg !3734
  %6 = bitcast %union.tree_node** %pending_statics to i64*, !dbg !3734
  %.pre = load %union.tree_node*, %union.tree_node** %pending_statics, align 8, !dbg !3736
  %7 = bitcast %union.tree_node* %.pre to %struct.tree_list*, !dbg !3737
  br label %while.cond, !dbg !3737

for.body:                                         ; preds = %for.cond
  %8 = load %struct.tree_common*, %struct.tree_common** %4, align 8, !dbg !3738
  %9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %8, i64 0, i32 0, i32 0, !dbg !3738
  %bf.load = load i64, i64* %9, align 8, !dbg !3738
  %bf.cast = and i64 %bf.load, 2199023255552, !dbg !3738
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %variant.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3739
  %bf.load6 = load i64, i64* %10, align 8, !dbg !3740
  %bf.clear7 = and i64 %bf.load6, -2199023255553, !dbg !3740
  %bf.set = or i64 %bf.clear7, %bf.cast, !dbg !3740
  store i64 %bf.set, i64* %10, align 8, !dbg !3740
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %variant.0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3741
  br label %for.cond, !dbg !3742, !llvm.loop !3743

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %12 = phi %struct.tree_list* [ %7, %while.cond.preheader ], [ %19, %while.body ]
  %13 = phi %union.tree_node* [ %.pre, %while.cond.preheader ], [ %18, %while.body ], !dbg !3736
  %tobool10 = icmp eq %union.tree_node* %13, null, !dbg !3737
  br i1 %tobool10, label %while.end, label %while.body, !dbg !3737

while.body:                                       ; preds = %while.cond
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %12, i64 0, i32 2, !dbg !3745
  %14 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !3745
  tail call void @layout_decl(%union.tree_node* %14, i32 0) #7, !dbg !3746
  %15 = load %struct.tree_common*, %struct.tree_common** %5, align 8, !dbg !3747
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %15, i64 0, i32 1, !dbg !3747
  %16 = bitcast %union.tree_node** %chain to i64*, !dbg !3747
  %17 = load i64, i64* %16, align 8, !dbg !3747
  store i64 %17, i64* %6, align 8, !dbg !3748
  %18 = inttoptr i64 %17 to %union.tree_node*, !dbg !3737
  %19 = inttoptr i64 %17 to %struct.tree_list*, !dbg !3737
  br label %while.cond, !dbg !3737, !llvm.loop !3749

while.end:                                        ; preds = %while.cond
  %tobool15 = icmp eq i32 %free_p, 0, !dbg !3751
  br i1 %tobool15, label %if.end, label %if.then, !dbg !3753

if.then:                                          ; preds = %while.end
  %20 = bitcast %struct.record_layout_info_s* %rli to i8*, !dbg !3754
  tail call void @free(i8* %20) #6, !dbg !3755
  br label %if.end, !dbg !3755

if.end:                                           ; preds = %while.end, %if.then
  ret void, !dbg !3756
}

; Function Attrs: nounwind uwtable
define internal fastcc void @finalize_record_size(%struct.record_layout_info_s* %rli) unnamed_addr #5 !dbg !3757 {
entry:
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %rli, metadata !3759, metadata !DIExpression()), !dbg !3770
  %offset_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 2, !dbg !3771
  store i32 8, i32* %offset_align, align 8, !dbg !3772
  tail call void @normalize_rli(%struct.record_layout_info_s* %rli) #7, !dbg !3773
  %0 = bitcast %struct.record_layout_info_s* %rli to %struct.tree_type**, !dbg !3774
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !3774
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 7, !dbg !3774
  %2 = load i32, i32* %align, align 8, !dbg !3774
  %record_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 4, !dbg !3774
  %3 = load i32, i32* %record_align, align 8, !dbg !3774
  %cmp = icmp ugt i32 %2, %3, !dbg !3774
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3774

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3774

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3774

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ], !dbg !3774
  store i32 %cond, i32* %align, align 8, !dbg !3775
  %call = tail call %union.tree_node* @rli_size_so_far(%struct.record_layout_info_s* %rli) #7, !dbg !3776
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3760, metadata !DIExpression()), !dbg !3770
  %call8 = tail call %union.tree_node* @rli_size_unit_so_far(%struct.record_layout_info_s* %rli) #7, !dbg !3777
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !3761, metadata !DIExpression()), !dbg !3770
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 3, !dbg !3778
  %4 = load %union.tree_node*, %union.tree_node** %bitpos, align 8, !dbg !3778
  %call9 = tail call i32 @integer_zerop(%union.tree_node* %4) #6, !dbg !3780
  %tobool = icmp eq i32 %call9, 0, !dbg !3780
  br i1 %tobool, label %if.then, label %if.end, !dbg !3781

if.then:                                          ; preds = %cond.end
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 18), align 16, !dbg !3782
  %call10 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %call8, %union.tree_node* %5) #6, !dbg !3782
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !3761, metadata !DIExpression()), !dbg !3770
  br label %if.end, !dbg !3783

if.end:                                           ; preds = %cond.end, %if.then
  %unpadded_size_unit.0 = phi %union.tree_node* [ %call8, %cond.end ], [ %call10, %if.then ], !dbg !3770
  call void @llvm.dbg.value(metadata %union.tree_node* %unpadded_size_unit.0, metadata !3761, metadata !DIExpression()), !dbg !3770
  %6 = load i32, i32* @input_location, align 4, !dbg !3784
  %7 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !3785
  %align13 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %7, i64 0, i32 7, !dbg !3785
  %8 = load i32, i32* %align13, align 8, !dbg !3785
  %call14 = tail call %union.tree_node* @round_up_loc(i32 %6, %union.tree_node* %call, i32 %8) #6, !dbg !3786
  %9 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !3787
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 2, !dbg !3787
  store %union.tree_node* %call14, %union.tree_node** %size, align 8, !dbg !3788
  %10 = load i32, i32* @input_location, align 4, !dbg !3789
  %11 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !3790
  %align19 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %11, i64 0, i32 7, !dbg !3790
  %12 = load i32, i32* %align19, align 8, !dbg !3790
  %div = lshr i32 %12, 3, !dbg !3790
  %call20 = tail call %union.tree_node* @round_up_loc(i32 %10, %union.tree_node* %unpadded_size_unit.0, i32 %div) #6, !dbg !3791
  %13 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !3792
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %13, i64 0, i32 3, !dbg !3792
  store %union.tree_node* %call20, %union.tree_node** %size_unit, align 8, !dbg !3793
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3794
  %bf.load = load i64, i64* %14, align 8, !dbg !3794
  %bf.cast1 = and i64 %bf.load, 131072, !dbg !3794
  %tobool23 = icmp eq i64 %bf.cast1, 0, !dbg !3794
  br i1 %tobool23, label %if.end33, label %land.lhs.true, !dbg !3796

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !3797
  %size26 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %15, i64 0, i32 2, !dbg !3797
  %16 = load %union.tree_node*, %union.tree_node** %size26, align 8, !dbg !3797
  %call27 = tail call i32 @simple_cst_equal(%union.tree_node* %call, %union.tree_node* %16) #6, !dbg !3798
  %cmp28 = icmp eq i32 %call27, 0, !dbg !3799
  %17 = load i32, i32* @input_location, align 4, !dbg !3800
  %cmp30 = icmp ne i32 %17, 1, !dbg !3801
  %or.cond = and i1 %cmp28, %cmp30, !dbg !3802
  br i1 %or.cond, label %if.then31, label %if.end33, !dbg !3802

if.then31:                                        ; preds = %land.lhs.true
  %call32 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 157, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !3803
  br label %if.end33, !dbg !3803

if.end33:                                         ; preds = %if.end, %if.then31, %land.lhs.true
  %18 = load i32, i32* @warn_packed, align 4, !dbg !3804
  %tobool34 = icmp eq i32 %18, 0, !dbg !3804
  br i1 %tobool34, label %if.end116, label %land.lhs.true35, !dbg !3805

land.lhs.true35:                                  ; preds = %if.end33
  %19 = bitcast %struct.record_layout_info_s* %rli to i64**, !dbg !3806
  %20 = load i64*, i64** %19, align 8, !dbg !3806
  %bf.load38 = load i64, i64* %20, align 8, !dbg !3806
  %bf.cast402 = and i64 %bf.load38, 65535, !dbg !3807
  %cmp41 = icmp eq i64 %bf.cast402, 16, !dbg !3807
  br i1 %cmp41, label %land.lhs.true42, label %if.end116, !dbg !3808

land.lhs.true42:                                  ; preds = %land.lhs.true35
  %21 = bitcast %struct.record_layout_info_s* %rli to %struct.tree_common**, !dbg !3809
  %bf.cast483 = and i64 %bf.load38, 2199023255552, !dbg !3809
  %tobool49 = icmp eq i64 %bf.cast483, 0, !dbg !3809
  br i1 %tobool49, label %if.end116, label %land.lhs.true50, !dbg !3810

land.lhs.true50:                                  ; preds = %land.lhs.true42
  %packed_maybe_necessary = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 9, !dbg !3811
  %22 = load i32, i32* %packed_maybe_necessary, align 4, !dbg !3811
  %tobool51 = icmp eq i32 %22, 0, !dbg !3812
  br i1 %tobool51, label %land.lhs.true52, label %if.end116, !dbg !3813

land.lhs.true52:                                  ; preds = %land.lhs.true50
  %bf.load54 = load i64, i64* %14, align 8, !dbg !3814
  %bf.cast574 = and i64 %bf.load54, 131072, !dbg !3814
  %tobool58 = icmp eq i64 %bf.cast574, 0, !dbg !3814
  br i1 %tobool58, label %if.end116, label %if.then59, !dbg !3815

if.then59:                                        ; preds = %land.lhs.true52
  %align62 = getelementptr inbounds i64, i64* %20, i64 8, !dbg !3816
  %23 = bitcast i64* %align62 to i32*, !dbg !3816
  %24 = load i32, i32* %23, align 8, !dbg !3816
  %unpacked_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %rli, i64 0, i32 5, !dbg !3816
  %25 = load i32, i32* %unpacked_align, align 4, !dbg !3816
  %cmp63 = icmp ugt i32 %24, %25, !dbg !3816
  br i1 %cmp63, label %cond.true64, label %cond.false68, !dbg !3816

cond.true64:                                      ; preds = %if.then59
  br label %cond.end70, !dbg !3816

cond.false68:                                     ; preds = %if.then59
  br label %cond.end70, !dbg !3816

cond.end70:                                       ; preds = %cond.false68, %cond.true64
  %cond71 = phi i32 [ %24, %cond.true64 ], [ %25, %cond.false68 ], !dbg !3816
  store i32 %cond71, i32* %unpacked_align, align 4, !dbg !3817
  %26 = load i32, i32* @input_location, align 4, !dbg !3818
  %size75 = getelementptr inbounds i64, i64* %20, i64 4, !dbg !3819
  %27 = bitcast i64* %size75 to %union.tree_node**, !dbg !3819
  %28 = load %union.tree_node*, %union.tree_node** %27, align 8, !dbg !3819
  %call77 = tail call %union.tree_node* @round_up_loc(i32 %26, %union.tree_node* %28, i32 %cond71) #6, !dbg !3820
  call void @llvm.dbg.value(metadata %union.tree_node* %call77, metadata !3762, metadata !DIExpression()), !dbg !3821
  %29 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !3822
  %size80 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %29, i64 0, i32 2, !dbg !3822
  %30 = load %union.tree_node*, %union.tree_node** %size80, align 8, !dbg !3822
  %call81 = tail call i32 @simple_cst_equal(%union.tree_node* %call77, %union.tree_node* %30) #6, !dbg !3823
  %tobool82 = icmp eq i32 %call81, 0, !dbg !3823
  br i1 %tobool82, label %if.end116, label %if.then83, !dbg !3824

if.then83:                                        ; preds = %cond.end70
  %31 = load %struct.tree_common*, %struct.tree_common** %21, align 8, !dbg !3825
  %32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %31, i64 0, i32 0, i32 0, !dbg !3825
  %bf.load87 = load i64, i64* %32, align 8, !dbg !3826
  %bf.clear88 = and i64 %bf.load87, -2199023255553, !dbg !3826
  store i64 %bf.clear88, i64* %32, align 8, !dbg !3826
  %33 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !3827
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %33, i64 0, i32 12, !dbg !3827
  %34 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !3827
  %tobool91 = icmp eq %union.tree_node* %34, null, !dbg !3827
  br i1 %tobool91, label %if.else112, label %if.then92, !dbg !3828

if.then92:                                        ; preds = %if.then83
  %35 = getelementptr inbounds %union.tree_node, %union.tree_node* %34, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3828
  %bf.load98 = load i64, i64* %35, align 8, !dbg !3829
  %bf.cast1005 = and i64 %bf.load98, 65535, !dbg !3831
  %cmp101 = icmp eq i64 %bf.cast1005, 1, !dbg !3831
  br i1 %cmp101, label %if.end110, label %if.else, !dbg !3832

if.else:                                          ; preds = %if.then92
  %name109 = getelementptr inbounds %union.tree_node, %union.tree_node* %34, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3833
  %36 = load %union.tree_node*, %union.tree_node** %name109, align 8, !dbg !3833
  call void @llvm.dbg.value(metadata %union.tree_node* %36, metadata !3765, metadata !DIExpression()), !dbg !3834
  br label %if.end110

if.end110:                                        ; preds = %if.then92, %if.else
  %name93.0 = phi %union.tree_node* [ %36, %if.else ], [ %34, %if.then92 ], !dbg !3835
  call void @llvm.dbg.value(metadata %union.tree_node* %name93.0, metadata !3765, metadata !DIExpression()), !dbg !3834
  %call111 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 155, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), %union.tree_node* %name93.0) #6, !dbg !3836
  br label %if.end116, !dbg !3838

if.else112:                                       ; preds = %if.then83
  %call113 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !3839
  br label %if.end116

if.end116:                                        ; preds = %cond.end70, %land.lhs.true52, %land.lhs.true50, %land.lhs.true42, %if.end33, %if.else112, %if.end110, %land.lhs.true35
  ret void, !dbg !3842
}

; Function Attrs: nounwind uwtable
define internal fastcc void @finalize_type_size(%union.tree_node* %type) unnamed_addr #5 !dbg !3843 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3845, metadata !DIExpression()), !dbg !3857
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3858
  %bf.load = load i64, i64* %0, align 8, !dbg !3858
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3858
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !3858
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3858

cond.true:                                        ; preds = %entry
  %call = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !3858
  br label %cond.end, !dbg !3858

cond.false:                                       ; preds = %entry
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3858
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !3858
  %bf.load2 = load i32, i32* %mode, align 4, !dbg !3858
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !3858
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !3858
  br label %cond.end, !dbg !3858

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %bf.clear3, %cond.false ], !dbg !3858
  %cmp4 = icmp eq i32 %cond, 1, !dbg !3859
  br i1 %cmp4, label %if.end69, label %land.lhs.true, !dbg !3860

land.lhs.true:                                    ; preds = %cond.end
  %bf.load6 = load i64, i64* %0, align 8, !dbg !3861
  %bf.cast85 = and i64 %bf.load6, 65535, !dbg !3861
  %cmp9 = icmp eq i64 %bf.cast85, 14, !dbg !3861
  br i1 %cmp9, label %cond.true10, label %cond.false12, !dbg !3861

cond.true10:                                      ; preds = %land.lhs.true
  %call11 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !3861
  br label %cond.end18, !dbg !3861

cond.false12:                                     ; preds = %land.lhs.true
  %type13 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3861
  %mode14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type13, i64 0, i32 6, !dbg !3861
  %bf.load15 = load i32, i32* %mode14, align 4, !dbg !3861
  %bf.lshr16 = lshr i32 %bf.load15, 16, !dbg !3861
  %bf.clear17 = and i32 %bf.lshr16, 255, !dbg !3861
  br label %cond.end18, !dbg !3861

cond.end18:                                       ; preds = %cond.false12, %cond.true10
  %cond19 = phi i32 [ %call11, %cond.true10 ], [ %bf.clear17, %cond.false12 ], !dbg !3861
  %cmp20 = icmp eq i32 %cond19, 0, !dbg !3862
  br i1 %cmp20, label %if.end69, label %land.lhs.true21, !dbg !3863

land.lhs.true21:                                  ; preds = %cond.end18
  %bf.load23 = load i64, i64* %0, align 8, !dbg !3864
  %bf.cast256 = and i64 %bf.load23, 65535, !dbg !3865
  %cmp26 = icmp eq i64 %bf.cast256, 16, !dbg !3865
  br i1 %cmp26, label %if.end69, label %land.lhs.true27, !dbg !3866

land.lhs.true27:                                  ; preds = %land.lhs.true21
  %cmp32 = icmp eq i64 %bf.cast256, 17, !dbg !3867
  br i1 %cmp32, label %if.end69, label %land.lhs.true33, !dbg !3868

land.lhs.true33:                                  ; preds = %land.lhs.true27
  %cmp38 = icmp eq i64 %bf.cast256, 18, !dbg !3869
  br i1 %cmp38, label %if.end69, label %land.lhs.true39, !dbg !3870

land.lhs.true39:                                  ; preds = %land.lhs.true33
  %cmp44 = icmp eq i64 %bf.cast256, 15, !dbg !3871
  br i1 %cmp44, label %if.end69, label %if.then, !dbg !3872

if.then:                                          ; preds = %land.lhs.true39
  %cmp49 = icmp eq i64 %bf.cast256, 14, !dbg !3873
  br i1 %cmp49, label %cond.true50, label %cond.false52, !dbg !3873

cond.true50:                                      ; preds = %if.then
  %call51 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !3873
  br label %cond.end58, !dbg !3873

cond.false52:                                     ; preds = %if.then
  %type53 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3873
  %mode54 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type53, i64 0, i32 6, !dbg !3873
  %bf.load55 = load i32, i32* %mode54, align 4, !dbg !3873
  %bf.lshr56 = lshr i32 %bf.load55, 16, !dbg !3873
  %bf.clear57 = and i32 %bf.lshr56, 255, !dbg !3873
  br label %cond.end58, !dbg !3873

cond.end58:                                       ; preds = %cond.false52, %cond.true50
  %cond59 = phi i32 [ %call51, %cond.true50 ], [ %bf.clear57, %cond.false52 ], !dbg !3873
  %call60 = tail call i32 @get_mode_alignment(i32 %cond59) #7, !dbg !3873
  call void @llvm.dbg.value(metadata i32 %call60, metadata !3846, metadata !DIExpression()), !dbg !3874
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3875
  %2 = load i32, i32* %1, align 8, !dbg !3875
  %cmp62 = icmp ult i32 %call60, %2, !dbg !3877
  br i1 %cmp62, label %if.end69, label %if.then63, !dbg !3878

if.then63:                                        ; preds = %cond.end58
  store i32 %call60, i32* %1, align 8, !dbg !3879
  %bf.load67 = load i64, i64* %0, align 8, !dbg !3881
  %bf.clear68 = and i64 %bf.load67, -4398046511105, !dbg !3881
  store i64 %bf.clear68, i64* %0, align 8, !dbg !3881
  br label %if.end69, !dbg !3882

if.end69:                                         ; preds = %cond.end58, %land.lhs.true39, %land.lhs.true33, %land.lhs.true27, %land.lhs.true21, %cond.end18, %cond.end, %if.then63
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3883
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !3883
  %cmp71 = icmp eq %union.tree_node* %4, null, !dbg !3885
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3886
  %6 = ptrtoint %union.tree_node* %4 to i64, !dbg !3886
  br i1 %cmp71, label %land.lhs.true72, label %if.end82, !dbg !3886

land.lhs.true72:                                  ; preds = %if.end69
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3887
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !3887
  %cmp74 = icmp eq %union.tree_node* %8, null, !dbg !3888
  br i1 %cmp74, label %if.end82, label %if.then75, !dbg !3889

if.then75:                                        ; preds = %land.lhs.true72
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !3890
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 21), align 8, !dbg !3890
  %call78 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 69, %union.tree_node* nonnull %8, %union.tree_node* %10) #6, !dbg !3890
  %call79 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %9, %union.tree_node* %call78) #6, !dbg !3890
  store %union.tree_node* %call79, %union.tree_node** %3, align 8, !dbg !3891
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call79, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3892
  %12 = ptrtoint %union.tree_node* %call79 to i64, !dbg !3892
  br label %if.end82, !dbg !3892

if.end82:                                         ; preds = %land.lhs.true72, %if.then75, %if.end69
  %13 = phi i64 [ %6, %land.lhs.true72 ], [ %12, %if.then75 ], [ %6, %if.end69 ]
  %14 = phi i64* [ %5, %land.lhs.true72 ], [ %11, %if.then75 ], [ %5, %if.end69 ]
  %15 = phi %union.tree_node* [ null, %land.lhs.true72 ], [ %call79, %if.then75 ], [ %4, %if.end69 ]
  %16 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3893
  %17 = load %union.tree_node*, %union.tree_node** %16, align 8, !dbg !3893
  %cmp85 = icmp eq %union.tree_node* %17, null, !dbg !3895
  br i1 %cmp85, label %if.end101, label %if.then86, !dbg !3896

if.then86:                                        ; preds = %if.end82
  %18 = load i32, i32* @input_location, align 4, !dbg !3897
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3899
  %20 = load i32, i32* %19, align 8, !dbg !3899
  %call91 = tail call %union.tree_node* @round_up_loc(i32 %18, %union.tree_node* nonnull %17, i32 %20) #6, !dbg !3900
  store %union.tree_node* %call91, %union.tree_node** %16, align 8, !dbg !3901
  %21 = load i32, i32* @input_location, align 4, !dbg !3902
  %22 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !3903
  %23 = load i32, i32* %19, align 8, !dbg !3904
  %div = lshr i32 %23, 3, !dbg !3904
  %call98 = tail call %union.tree_node* @round_up_loc(i32 %21, %union.tree_node* %22, i32 %div) #6, !dbg !3905
  store %union.tree_node* %call98, %union.tree_node** %3, align 8, !dbg !3906
  %.pre = load %union.tree_node*, %union.tree_node** %16, align 8, !dbg !3907
  %24 = getelementptr inbounds %union.tree_node, %union.tree_node* %call98, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3909
  %25 = ptrtoint %union.tree_node* %call98 to i64, !dbg !3909
  br label %if.end101, !dbg !3909

if.end101:                                        ; preds = %if.end82, %if.then86
  %26 = phi i64 [ %13, %if.end82 ], [ %25, %if.then86 ]
  %27 = phi i64* [ %14, %if.end82 ], [ %24, %if.then86 ]
  %28 = phi %union.tree_node* [ %15, %if.end82 ], [ %call98, %if.then86 ]
  %.pn = phi %union.tree_node* [ %17, %if.end82 ], [ %.pre, %if.then86 ]
  %29 = phi %union.tree_node* [ null, %if.end82 ], [ %.pre, %if.then86 ], !dbg !3907
  %cmp104 = icmp eq %union.tree_node* %29, null, !dbg !3910
  br i1 %cmp104, label %if.end119, label %land.lhs.true105, !dbg !3911

land.lhs.true105:                                 ; preds = %if.end101
  %30 = getelementptr inbounds %union.tree_node, %union.tree_node* %.pn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3857
  %bf.load109 = load i64, i64* %30, align 8, !dbg !3912
  %bf.cast1114 = and i64 %bf.load109, 65535, !dbg !3913
  %cmp112 = icmp eq i64 %bf.cast1114, 23, !dbg !3913
  br i1 %cmp112, label %if.end119, label %if.then113, !dbg !3914

if.then113:                                       ; preds = %land.lhs.true105
  %call116 = tail call %union.tree_node* @variable_size(%union.tree_node* nonnull %29) #7, !dbg !3915
  store %union.tree_node* %call116, %union.tree_node** %16, align 8, !dbg !3916
  %.pre11 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !3917
  %31 = getelementptr inbounds %union.tree_node, %union.tree_node* %.pre11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3919
  %32 = ptrtoint %union.tree_node* %.pre11 to i64, !dbg !3919
  br label %if.end119, !dbg !3919

if.end119:                                        ; preds = %land.lhs.true105, %if.end101, %if.then113
  %33 = phi i64 [ %26, %land.lhs.true105 ], [ %26, %if.end101 ], [ %32, %if.then113 ]
  %34 = phi i64* [ %27, %land.lhs.true105 ], [ %27, %if.end101 ], [ %31, %if.then113 ]
  %35 = phi %union.tree_node* [ %28, %land.lhs.true105 ], [ %28, %if.end101 ], [ %.pre11, %if.then113 ], !dbg !3917
  %cmp122 = icmp eq %union.tree_node* %35, null, !dbg !3920
  br i1 %cmp122, label %if.end137, label %land.lhs.true123, !dbg !3921

land.lhs.true123:                                 ; preds = %if.end119
  %bf.load127 = load i64, i64* %34, align 8, !dbg !3922
  %bf.cast1293 = and i64 %bf.load127, 65535, !dbg !3923
  %cmp130 = icmp eq i64 %bf.cast1293, 23, !dbg !3923
  br i1 %cmp130, label %if.end137, label %if.then131, !dbg !3924

if.then131:                                       ; preds = %land.lhs.true123
  %call134 = tail call %union.tree_node* @variable_size(%union.tree_node* nonnull %35) #7, !dbg !3925
  store %union.tree_node* %call134, %union.tree_node** %3, align 8, !dbg !3926
  %36 = ptrtoint %union.tree_node* %call134 to i64, !dbg !3927
  br label %if.end137, !dbg !3927

if.end137:                                        ; preds = %land.lhs.true123, %if.end119, %if.then131
  %37 = phi i64 [ %33, %land.lhs.true123 ], [ %33, %if.end119 ], [ %36, %if.then131 ]
  %38 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3928
  %39 = load %union.tree_node*, %union.tree_node** %38, align 8, !dbg !3928
  %tobool = icmp eq %union.tree_node* %39, null, !dbg !3928
  br i1 %tobool, label %lor.lhs.false, label %if.then141, !dbg !3929

lor.lhs.false:                                    ; preds = %if.end137
  %40 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3930
  %41 = load %union.tree_node*, %union.tree_node** %40, align 8, !dbg !3930
  %cmp140 = icmp eq %union.tree_node* %41, %type, !dbg !3931
  br i1 %cmp140, label %if.end195, label %if.then141, !dbg !3932

if.then141:                                       ; preds = %lor.lhs.false, %if.end137
  %42 = bitcast %union.tree_node** %16 to i64*, !dbg !3933
  %43 = load i64, i64* %42, align 8, !dbg !3933
  %44 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3934
  %45 = load i32, i32* %44, align 8, !dbg !3934
  call void @llvm.dbg.value(metadata i32 %45, metadata !3854, metadata !DIExpression()), !dbg !3935
  %bf.load153 = load i64, i64* %0, align 8, !dbg !3936
  %bf.cast156 = and i64 %bf.load153, 4398046511104, !dbg !3936
  %bf.cast1612 = and i64 %bf.load153, 65535, !dbg !3937
  %cmp162 = icmp eq i64 %bf.cast1612, 14, !dbg !3937
  br i1 %cmp162, label %cond.true163, label %cond.false165, !dbg !3937

cond.true163:                                     ; preds = %if.then141
  %call164 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !3937
  br label %cond.end171, !dbg !3937

cond.false165:                                    ; preds = %if.then141
  %type166 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3937
  %mode167 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type166, i64 0, i32 6, !dbg !3937
  %bf.load168 = load i32, i32* %mode167, align 4, !dbg !3937
  %bf.lshr169 = lshr i32 %bf.load168, 16, !dbg !3937
  %bf.clear170 = and i32 %bf.lshr169, 255, !dbg !3937
  br label %cond.end171, !dbg !3937

cond.end171:                                      ; preds = %cond.false165, %cond.true163
  %cond172 = phi i32 [ %call164, %cond.true163 ], [ %bf.clear170, %cond.false165 ], !dbg !3937
  call void @llvm.dbg.value(metadata i32 %cond172, metadata !3856, metadata !DIExpression()), !dbg !3935
  %46 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3938
  %bf.value189 = shl i32 %cond172, 16, !dbg !3940
  %bf.shl190 = and i32 %bf.value189, 16711680, !dbg !3940
  br label %for.cond, !dbg !3943

for.cond:                                         ; preds = %for.body, %cond.end171
  %variant.0.in = phi %union.tree_node** [ %46, %cond.end171 ], [ %53, %for.body ]
  %variant.0 = load %union.tree_node*, %union.tree_node** %variant.0.in, align 8, !dbg !3944
  call void @llvm.dbg.value(metadata %union.tree_node* %variant.0, metadata !3849, metadata !DIExpression()), !dbg !3935
  %cmp175 = icmp eq %union.tree_node* %variant.0, null, !dbg !3945
  br i1 %cmp175, label %if.end195.loopexit, label %for.body, !dbg !3946

for.body:                                         ; preds = %for.cond
  %47 = getelementptr inbounds %union.tree_node, %union.tree_node* %variant.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3947
  %48 = bitcast %union.tree_node** %47 to i64*, !dbg !3948
  store i64 %43, i64* %48, align 8, !dbg !3948
  %49 = getelementptr inbounds %union.tree_node, %union.tree_node* %variant.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3949
  %50 = bitcast %union.tree_node** %49 to i64*, !dbg !3950
  store i64 %37, i64* %50, align 8, !dbg !3950
  %51 = getelementptr inbounds %union.tree_node, %union.tree_node* %variant.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3951
  store i32 %45, i32* %51, align 8, !dbg !3952
  %52 = getelementptr inbounds %union.tree_node, %union.tree_node* %variant.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3953
  %bf.load184 = load i64, i64* %52, align 8, !dbg !3954
  %bf.clear185 = and i64 %bf.load184, -4398046511105, !dbg !3954
  %bf.set = or i64 %bf.clear185, %bf.cast156, !dbg !3954
  store i64 %bf.set, i64* %52, align 8, !dbg !3954
  %type186 = bitcast %union.tree_node* %variant.0 to %struct.tree_type*, !dbg !3955
  %mode187 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type186, i64 0, i32 6, !dbg !3955
  %bf.load188 = load i32, i32* %mode187, align 4, !dbg !3955
  %bf.clear191 = and i32 %bf.load188, -16711681, !dbg !3955
  %bf.set192 = or i32 %bf.clear191, %bf.shl190, !dbg !3955
  store i32 %bf.set192, i32* %mode187, align 4, !dbg !3955
  %53 = getelementptr inbounds %union.tree_node, %union.tree_node* %variant.0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3956
  br label %for.cond, !dbg !3957, !llvm.loop !3958

if.end195.loopexit:                               ; preds = %for.cond
  br label %if.end195, !dbg !3960

if.end195:                                        ; preds = %if.end195.loopexit, %lor.lhs.false
  ret void, !dbg !3960
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @finish_builtin_struct(%union.tree_node* %type, i8* %name, %union.tree_node* %fields, %union.tree_node* %align_type) local_unnamed_addr #5 !dbg !3961 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3965, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i8* %name, metadata !3966, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata %union.tree_node* %fields, metadata !3967, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata %union.tree_node* %align_type, metadata !3968, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3969, metadata !DIExpression()), !dbg !3971
  br label %for.cond, !dbg !3972

for.cond:                                         ; preds = %for.body, %entry
  %fields.addr.0 = phi %union.tree_node* [ %fields, %entry ], [ %0, %for.body ]
  %tail.0 = phi %union.tree_node* [ null, %entry ], [ %fields.addr.0, %for.body ], !dbg !3974
  call void @llvm.dbg.value(metadata %union.tree_node* %tail.0, metadata !3969, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata %union.tree_node* %fields.addr.0, metadata !3967, metadata !DIExpression()), !dbg !3971
  %tobool = icmp eq %union.tree_node* %fields.addr.0, null, !dbg !3975
  br i1 %tobool, label %for.end, label %for.body, !dbg !3975

for.body:                                         ; preds = %for.cond
  %context = getelementptr inbounds %union.tree_node, %union.tree_node* %fields.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3976
  store %union.tree_node* %type, %union.tree_node** %context, align 8, !dbg !3979
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %fields.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3980
  %0 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3980
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3970, metadata !DIExpression()), !dbg !3971
  store %union.tree_node* %tail.0, %union.tree_node** %chain, align 8, !dbg !3981
  call void @llvm.dbg.value(metadata %union.tree_node* %fields.addr.0, metadata !3969, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3967, metadata !DIExpression()), !dbg !3971
  br label %for.cond, !dbg !3982, !llvm.loop !3983

for.end:                                          ; preds = %for.cond
  %tail.0.lcssa = phi %union.tree_node* [ %tail.0, %for.cond ], !dbg !3974
  call void @llvm.dbg.value(metadata %union.tree_node* %tail.0.lcssa, metadata !3969, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata %union.tree_node* %tail.0.lcssa, metadata !3969, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata %union.tree_node* %tail.0.lcssa, metadata !3969, metadata !DIExpression()), !dbg !3971
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3985
  %1 = bitcast i32* %values to %union.tree_node**, !dbg !3985
  store %union.tree_node* %tail.0.lcssa, %union.tree_node** %1, align 8, !dbg !3986
  %tobool4 = icmp eq %union.tree_node* %align_type, null, !dbg !3987
  br i1 %tobool4, label %if.end, label %if.then, !dbg !3989

if.then:                                          ; preds = %for.end
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %align_type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3990
  %3 = load i32, i32* %2, align 8, !dbg !3990
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3992
  store i32 %3, i32* %4, align 8, !dbg !3993
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %align_type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3994
  %bf.load = load i64, i64* %5, align 8, !dbg !3994
  %bf.cast = and i64 %bf.load, 4398046511104, !dbg !3994
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3995
  %bf.load11 = load i64, i64* %6, align 8, !dbg !3996
  %bf.clear12 = and i64 %bf.load11, -4398046511105, !dbg !3996
  %bf.set = or i64 %bf.clear12, %bf.cast, !dbg !3996
  store i64 %bf.set, i64* %6, align 8, !dbg !3996
  br label %if.end, !dbg !3997

if.end:                                           ; preds = %for.end, %if.then
  tail call void @layout_type(%union.tree_node* %type) #7, !dbg !3998
  %call = tail call %union.tree_node* @get_identifier(i8* %name) #6, !dbg !3999
  %call13 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 35, %union.tree_node* %call, %union.tree_node* %type) #6, !dbg !3999
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !4000
  store %union.tree_node* %call13, %union.tree_node** %7, align 8, !dbg !4001
  %.cast = ptrtoint %union.tree_node* %call13 to i64, !dbg !4002
  %chain19 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4003
  %8 = bitcast %union.tree_node** %chain19 to i64*, !dbg !4004
  store i64 %.cast, i64* %8, align 8, !dbg !4004
  tail call void @layout_decl(%union.tree_node* %call13, i32 0) #7, !dbg !4005
  ret void, !dbg !4006
}

; Function Attrs: nounwind uwtable
define dso_local void @layout_type(%union.tree_node* %type) local_unnamed_addr #5 !dbg !4007 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4009, metadata !DIExpression()), !dbg !4036
  %tobool = icmp eq %union.tree_node* %type, null, !dbg !4037
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4037

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1792, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4037
  br label %cond.end, !dbg !4037

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !4038
  %cmp = icmp eq %union.tree_node* %0, %type, !dbg !4040
  br i1 %cmp, label %if.end969, label %if.end, !dbg !4041

if.end:                                           ; preds = %cond.end
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4042
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !4042
  %tobool2 = icmp eq %union.tree_node* %2, null, !dbg !4042
  br i1 %tobool2, label %if.end4, label %if.end969, !dbg !4044

if.end4:                                          ; preds = %if.end
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4045
  %bf.load = load i64, i64* %3, align 8, !dbg !4045
  %4 = trunc i64 %bf.load to i16, !dbg !4045
  switch i16 %4, label %sw.default [
    i16 22, label %sw.bb
    i16 7, label %sw.bb5
    i16 8, label %sw.bb16
    i16 6, label %sw.bb16
    i16 9, label %sw.bb83
    i16 11, label %sw.bb145
    i16 13, label %sw.bb195
    i16 14, label %sw.bb281
    i16 19, label %sw.bb486
    i16 5, label %sw.bb497
    i16 20, label %sw.bb517
    i16 21, label %sw.bb517
    i16 10, label %sw.bb532
    i16 12, label %sw.bb532
    i16 15, label %sw.bb602
    i16 16, label %sw.bb876
    i16 17, label %sw.bb876
    i16 18, label %sw.bb876
  ], !dbg !4046

sw.bb:                                            ; preds = %if.end4
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1806, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4047
  br label %sw.bb5, !dbg !4047

sw.bb5:                                           ; preds = %if.end4, %sw.bb
  %type6 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4048
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i64 0, i32 6, !dbg !4048
  %bf.load7 = load i32, i32* %precision, align 4, !dbg !4048
  %bf.clear8 = and i32 %bf.load7, 1023, !dbg !4048
  %cmp9 = icmp eq i32 %bf.clear8, 0, !dbg !4050
  br i1 %cmp9, label %if.then10, label %sw.bb16, !dbg !4051

if.then10:                                        ; preds = %sw.bb5
  %bf.clear14 = and i32 %bf.load7, -1024, !dbg !4052
  %bf.set = or i32 %bf.clear14, 1, !dbg !4052
  store i32 %bf.set, i32* %precision, align 4, !dbg !4052
  br label %sw.bb16, !dbg !4053

sw.bb16:                                          ; preds = %sw.bb5, %if.then10, %if.end4, %if.end4
  %minval = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, !dbg !4054
  %5 = bitcast %struct.lang_decl** %minval to i64**, !dbg !4054
  %6 = load i64*, i64** %5, align 8, !dbg !4054
  %bf.load19 = load i64, i64* %6, align 8, !dbg !4054
  %bf.cast2128 = and i64 %bf.load19, 65535, !dbg !4056
  %cmp22 = icmp eq i64 %bf.cast2128, 23, !dbg !4056
  br i1 %cmp22, label %land.lhs.true, label %if.end31, !dbg !4057

land.lhs.true:                                    ; preds = %sw.bb16
  %7 = bitcast i64* %6 to %union.tree_node*, !dbg !4057
  %call = tail call i32 @tree_int_cst_sgn(%union.tree_node* %7) #6, !dbg !4058
  %cmp25 = icmp sgt i32 %call, -1, !dbg !4059
  br i1 %cmp25, label %if.then26, label %if.end31, !dbg !4060

if.then26:                                        ; preds = %land.lhs.true
  %bf.load28 = load i64, i64* %3, align 8, !dbg !4061
  %bf.set30 = or i64 %bf.load28, 2097152, !dbg !4061
  store i64 %bf.set30, i64* %3, align 8, !dbg !4061
  br label %if.end31, !dbg !4062

if.end31:                                         ; preds = %if.then26, %land.lhs.true, %sw.bb16
  %type32 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4063
  %precision33 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type32, i64 0, i32 6, !dbg !4063
  %bf.load34 = load i32, i32* %precision33, align 4, !dbg !4063
  %bf.clear35 = and i32 %bf.load34, 1023, !dbg !4063
  %call36 = tail call i32 @smallest_mode_for_size(i32 %bf.clear35, i32 2) #7, !dbg !4063
  %bf.load38 = load i32, i32* %precision33, align 4, !dbg !4063
  %bf.value = shl i32 %call36, 16, !dbg !4063
  %bf.shl = and i32 %bf.value, 16711680, !dbg !4063
  %bf.clear39 = and i32 %bf.load38, -16711681, !dbg !4063
  %bf.set40 = or i32 %bf.clear39, %bf.shl, !dbg !4063
  store i32 %bf.set40, i32* %precision33, align 4, !dbg !4063
  %bf.load42 = load i64, i64* %3, align 8, !dbg !4064
  %bf.cast4429 = and i64 %bf.load42, 65535, !dbg !4064
  %cmp45 = icmp eq i64 %bf.cast4429, 14, !dbg !4064
  br i1 %cmp45, label %cond.true46, label %cond.false48, !dbg !4064

cond.true46:                                      ; preds = %if.end31
  %call47 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4064
  br label %cond.end53, !dbg !4064

cond.false48:                                     ; preds = %if.end31
  %bf.clear52 = and i32 %call36, 255, !dbg !4064
  br label %cond.end53, !dbg !4064

cond.end53:                                       ; preds = %cond.false48, %cond.true46
  %cond54 = phi i32 [ %call47, %cond.true46 ], [ %bf.clear52, %cond.false48 ], !dbg !4064
  %idxprom = zext i32 %cond54 to i64, !dbg !4064
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !4064
  %8 = load i8, i8* %arrayidx, align 1, !dbg !4064
  %conv55 = zext i8 %8 to i64, !dbg !4064
  %mul = shl nuw nsw i64 %conv55, 3, !dbg !4064
  %call58 = tail call %union.tree_node* @size_int_kind(i64 %mul, i32 2) #6, !dbg !4064
  store %union.tree_node* %call58, %union.tree_node** %1, align 8, !dbg !4065
  %bf.load62 = load i64, i64* %3, align 8, !dbg !4066
  %bf.cast6430 = and i64 %bf.load62, 65535, !dbg !4066
  %cmp65 = icmp eq i64 %bf.cast6430, 14, !dbg !4066
  br i1 %cmp65, label %cond.true67, label %cond.false69, !dbg !4066

cond.true67:                                      ; preds = %cond.end53
  %call68 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4066
  br label %cond.end75, !dbg !4066

cond.false69:                                     ; preds = %cond.end53
  %bf.load72 = load i32, i32* %precision33, align 4, !dbg !4066
  %bf.lshr73 = lshr i32 %bf.load72, 16, !dbg !4066
  %bf.clear74 = and i32 %bf.lshr73, 255, !dbg !4066
  br label %cond.end75, !dbg !4066

cond.end75:                                       ; preds = %cond.false69, %cond.true67
  %cond76 = phi i32 [ %call68, %cond.true67 ], [ %bf.clear74, %cond.false69 ], !dbg !4066
  %idxprom77 = zext i32 %cond76 to i64, !dbg !4066
  %arrayidx78 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom77, !dbg !4066
  %9 = load i8, i8* %arrayidx78, align 1, !dbg !4066
  %conv80 = zext i8 %9 to i64, !dbg !4066
  %call81 = tail call %union.tree_node* @size_int_kind(i64 %conv80, i32 0) #6, !dbg !4066
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4067
  store %union.tree_node* %call81, %union.tree_node** %10, align 8, !dbg !4068
  br label %sw.epilog, !dbg !4069

sw.bb83:                                          ; preds = %if.end4
  %type84 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4070
  %precision85 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type84, i64 0, i32 6, !dbg !4070
  %bf.load86 = load i32, i32* %precision85, align 4, !dbg !4070
  %bf.clear87 = and i32 %bf.load86, 1023, !dbg !4070
  %call88 = tail call i32 @mode_for_size(i32 %bf.clear87, i32 8, i32 0) #7, !dbg !4070
  %bf.load91 = load i32, i32* %precision85, align 4, !dbg !4070
  %bf.value92 = shl i32 %call88, 16, !dbg !4070
  %bf.shl93 = and i32 %bf.value92, 16711680, !dbg !4070
  %bf.clear94 = and i32 %bf.load91, -16711681, !dbg !4070
  %bf.set95 = or i32 %bf.clear94, %bf.shl93, !dbg !4070
  store i32 %bf.set95, i32* %precision85, align 4, !dbg !4070
  %bf.load97 = load i64, i64* %3, align 8, !dbg !4071
  %bf.cast9926 = and i64 %bf.load97, 65535, !dbg !4071
  %cmp100 = icmp eq i64 %bf.cast9926, 14, !dbg !4071
  br i1 %cmp100, label %cond.true102, label %cond.false104, !dbg !4071

cond.true102:                                     ; preds = %sw.bb83
  %call103 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4071
  br label %cond.end110, !dbg !4071

cond.false104:                                    ; preds = %sw.bb83
  %bf.clear109 = and i32 %call88, 255, !dbg !4071
  br label %cond.end110, !dbg !4071

cond.end110:                                      ; preds = %cond.false104, %cond.true102
  %cond111 = phi i32 [ %call103, %cond.true102 ], [ %bf.clear109, %cond.false104 ], !dbg !4071
  %idxprom112 = zext i32 %cond111 to i64, !dbg !4071
  %arrayidx113 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom112, !dbg !4071
  %11 = load i8, i8* %arrayidx113, align 1, !dbg !4071
  %conv115 = zext i8 %11 to i64, !dbg !4071
  %mul116 = shl nuw nsw i64 %conv115, 3, !dbg !4071
  %call119 = tail call %union.tree_node* @size_int_kind(i64 %mul116, i32 2) #6, !dbg !4071
  store %union.tree_node* %call119, %union.tree_node** %1, align 8, !dbg !4072
  %bf.load123 = load i64, i64* %3, align 8, !dbg !4073
  %bf.cast12527 = and i64 %bf.load123, 65535, !dbg !4073
  %cmp126 = icmp eq i64 %bf.cast12527, 14, !dbg !4073
  br i1 %cmp126, label %cond.true128, label %cond.false130, !dbg !4073

cond.true128:                                     ; preds = %cond.end110
  %call129 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4073
  br label %cond.end136, !dbg !4073

cond.false130:                                    ; preds = %cond.end110
  %bf.load133 = load i32, i32* %precision85, align 4, !dbg !4073
  %bf.lshr134 = lshr i32 %bf.load133, 16, !dbg !4073
  %bf.clear135 = and i32 %bf.lshr134, 255, !dbg !4073
  br label %cond.end136, !dbg !4073

cond.end136:                                      ; preds = %cond.false130, %cond.true128
  %cond137 = phi i32 [ %call129, %cond.true128 ], [ %bf.clear135, %cond.false130 ], !dbg !4073
  %idxprom138 = zext i32 %cond137 to i64, !dbg !4073
  %arrayidx139 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom138, !dbg !4073
  %12 = load i8, i8* %arrayidx139, align 1, !dbg !4073
  %conv141 = zext i8 %12 to i64, !dbg !4073
  %call142 = tail call %union.tree_node* @size_int_kind(i64 %conv141, i32 0) #6, !dbg !4073
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4074
  store %union.tree_node* %call142, %union.tree_node** %13, align 8, !dbg !4075
  br label %sw.epilog, !dbg !4076

sw.bb145:                                         ; preds = %if.end4
  %bf.cast14924 = and i64 %bf.load, 65535, !dbg !4077
  %cmp150 = icmp eq i64 %bf.cast14924, 14, !dbg !4077
  br i1 %cmp150, label %cond.true152, label %cond.false154, !dbg !4077

cond.true152:                                     ; preds = %sw.bb145
  %call153 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4077
  br label %cond.end160, !dbg !4077

cond.false154:                                    ; preds = %sw.bb145
  %type155 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4077
  %mode156 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type155, i64 0, i32 6, !dbg !4077
  %bf.load157 = load i32, i32* %mode156, align 4, !dbg !4077
  %bf.lshr158 = lshr i32 %bf.load157, 16, !dbg !4077
  %bf.clear159 = and i32 %bf.lshr158, 255, !dbg !4077
  br label %cond.end160, !dbg !4077

cond.end160:                                      ; preds = %cond.false154, %cond.true152
  %cond161 = phi i32 [ %call153, %cond.true152 ], [ %bf.clear159, %cond.false154 ], !dbg !4077
  %idxprom162 = zext i32 %cond161 to i64, !dbg !4077
  %arrayidx163 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom162, !dbg !4077
  %14 = load i8, i8* %arrayidx163, align 1, !dbg !4077
  %conv165 = zext i8 %14 to i64, !dbg !4077
  %mul166 = shl nuw nsw i64 %conv165, 3, !dbg !4077
  %call169 = tail call %union.tree_node* @size_int_kind(i64 %mul166, i32 2) #6, !dbg !4077
  store %union.tree_node* %call169, %union.tree_node** %1, align 8, !dbg !4078
  %bf.load173 = load i64, i64* %3, align 8, !dbg !4079
  %bf.cast17525 = and i64 %bf.load173, 65535, !dbg !4079
  %cmp176 = icmp eq i64 %bf.cast17525, 14, !dbg !4079
  br i1 %cmp176, label %cond.true178, label %cond.false180, !dbg !4079

cond.true178:                                     ; preds = %cond.end160
  %call179 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4079
  br label %cond.end186, !dbg !4079

cond.false180:                                    ; preds = %cond.end160
  %type181 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4079
  %mode182 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type181, i64 0, i32 6, !dbg !4079
  %bf.load183 = load i32, i32* %mode182, align 4, !dbg !4079
  %bf.lshr184 = lshr i32 %bf.load183, 16, !dbg !4079
  %bf.clear185 = and i32 %bf.lshr184, 255, !dbg !4079
  br label %cond.end186, !dbg !4079

cond.end186:                                      ; preds = %cond.false180, %cond.true178
  %cond187 = phi i32 [ %call179, %cond.true178 ], [ %bf.clear185, %cond.false180 ], !dbg !4079
  %idxprom188 = zext i32 %cond187 to i64, !dbg !4079
  %arrayidx189 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom188, !dbg !4079
  %15 = load i8, i8* %arrayidx189, align 1, !dbg !4079
  %conv191 = zext i8 %15 to i64, !dbg !4079
  %call192 = tail call %union.tree_node* @size_int_kind(i64 %conv191, i32 0) #6, !dbg !4079
  %16 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4080
  store %union.tree_node* %call192, %union.tree_node** %16, align 8, !dbg !4081
  br label %sw.epilog, !dbg !4082

sw.bb195:                                         ; preds = %if.end4
  %type196 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4083
  %17 = bitcast %union.tree_node** %type196 to i64**, !dbg !4083
  %18 = load i64*, i64** %17, align 8, !dbg !4083
  %bf.load198 = load i64, i64* %18, align 8, !dbg !4083
  %bf.cast201 = and i64 %bf.load198, 2097152, !dbg !4083
  %bf.clear206 = and i64 %bf.load, -2097153, !dbg !4084
  %bf.set207 = or i64 %bf.clear206, %bf.cast201, !dbg !4084
  store i64 %bf.set207, i64* %3, align 8, !dbg !4084
  %19 = bitcast i64* %18 to %struct.tree_type*, !dbg !4085
  %precision211 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %19, i64 0, i32 6, !dbg !4085
  %bf.load212 = load i32, i32* %precision211, align 4, !dbg !4085
  %bf.clear213 = shl i32 %bf.load212, 1, !dbg !4085
  %mul214 = and i32 %bf.clear213, 2046, !dbg !4085
  %bf.load218 = load i64, i64* %18, align 8, !dbg !4085
  %bf.cast22021 = and i64 %bf.load218, 65535, !dbg !4085
  %cmp221 = icmp eq i64 %bf.cast22021, 9, !dbg !4085
  %cond223 = select i1 %cmp221, i32 11, i32 10, !dbg !4085
  %call224 = tail call i32 @mode_for_size(i32 %mul214, i32 %cond223, i32 0) #7, !dbg !4085
  %type225 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4085
  %mode226 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type225, i64 0, i32 6, !dbg !4085
  %bf.load227 = load i32, i32* %mode226, align 4, !dbg !4085
  %bf.value228 = shl i32 %call224, 16, !dbg !4085
  %bf.shl229 = and i32 %bf.value228, 16711680, !dbg !4085
  %bf.clear230 = and i32 %bf.load227, -16711681, !dbg !4085
  %bf.set231 = or i32 %bf.clear230, %bf.shl229, !dbg !4085
  store i32 %bf.set231, i32* %mode226, align 4, !dbg !4085
  %bf.load233 = load i64, i64* %3, align 8, !dbg !4086
  %bf.cast23522 = and i64 %bf.load233, 65535, !dbg !4086
  %cmp236 = icmp eq i64 %bf.cast23522, 14, !dbg !4086
  br i1 %cmp236, label %cond.true238, label %cond.false240, !dbg !4086

cond.true238:                                     ; preds = %sw.bb195
  %call239 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4086
  br label %cond.end246, !dbg !4086

cond.false240:                                    ; preds = %sw.bb195
  %bf.clear245 = and i32 %call224, 255, !dbg !4086
  br label %cond.end246, !dbg !4086

cond.end246:                                      ; preds = %cond.false240, %cond.true238
  %cond247 = phi i32 [ %call239, %cond.true238 ], [ %bf.clear245, %cond.false240 ], !dbg !4086
  %idxprom248 = zext i32 %cond247 to i64, !dbg !4086
  %arrayidx249 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom248, !dbg !4086
  %20 = load i8, i8* %arrayidx249, align 1, !dbg !4086
  %conv251 = zext i8 %20 to i64, !dbg !4086
  %mul252 = shl nuw nsw i64 %conv251, 3, !dbg !4086
  %call255 = tail call %union.tree_node* @size_int_kind(i64 %mul252, i32 2) #6, !dbg !4086
  store %union.tree_node* %call255, %union.tree_node** %1, align 8, !dbg !4087
  %bf.load259 = load i64, i64* %3, align 8, !dbg !4088
  %bf.cast26123 = and i64 %bf.load259, 65535, !dbg !4088
  %cmp262 = icmp eq i64 %bf.cast26123, 14, !dbg !4088
  br i1 %cmp262, label %cond.true264, label %cond.false266, !dbg !4088

cond.true264:                                     ; preds = %cond.end246
  %call265 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4088
  br label %cond.end272, !dbg !4088

cond.false266:                                    ; preds = %cond.end246
  %bf.load269 = load i32, i32* %mode226, align 4, !dbg !4088
  %bf.lshr270 = lshr i32 %bf.load269, 16, !dbg !4088
  %bf.clear271 = and i32 %bf.lshr270, 255, !dbg !4088
  br label %cond.end272, !dbg !4088

cond.end272:                                      ; preds = %cond.false266, %cond.true264
  %cond273 = phi i32 [ %call265, %cond.true264 ], [ %bf.clear271, %cond.false266 ], !dbg !4088
  %idxprom274 = zext i32 %cond273 to i64, !dbg !4088
  %arrayidx275 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom274, !dbg !4088
  %21 = load i8, i8* %arrayidx275, align 1, !dbg !4088
  %conv277 = zext i8 %21 to i64, !dbg !4088
  %call278 = tail call %union.tree_node* @size_int_kind(i64 %conv277, i32 0) #6, !dbg !4088
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4089
  store %union.tree_node* %call278, %union.tree_node** %22, align 8, !dbg !4090
  br label %sw.epilog, !dbg !4091

sw.bb281:                                         ; preds = %if.end4
  %type282 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4092
  %precision283 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type282, i64 0, i32 6, !dbg !4092
  %bf.load284 = load i32, i32* %precision283, align 4, !dbg !4092
  %bf.clear285 = and i32 %bf.load284, 1023, !dbg !4092
  %sh_prom = zext i32 %bf.clear285 to i64, !dbg !4092
  %shl = shl i64 1, %sh_prom, !dbg !4092
  %conv286 = trunc i64 %shl to i32, !dbg !4092
  call void @llvm.dbg.value(metadata i32 %conv286, metadata !4010, metadata !DIExpression()), !dbg !4093
  %type288 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4094
  %23 = load %union.tree_node*, %union.tree_node** %type288, align 8, !dbg !4094
  call void @llvm.dbg.value(metadata %union.tree_node* %23, metadata !4013, metadata !DIExpression()), !dbg !4093
  %24 = tail call i32 @llvm.ctpop.i32(i32 %conv286), !dbg !4095, !range !4096
  %tobool289 = icmp ugt i32 %24, 1, !dbg !4095
  br i1 %tobool289, label %cond.true290, label %cond.end292, !dbg !4095

cond.true290:                                     ; preds = %sw.bb281
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1855, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4095
  %bf.load295.pre = load i64, i64* %3, align 8, !dbg !4097
  br label %cond.end292, !dbg !4095

cond.end292:                                      ; preds = %sw.bb281, %cond.true290
  %bf.load295 = phi i64 [ %bf.load, %sw.bb281 ], [ %bf.load295.pre, %cond.true290 ], !dbg !4097
  %bf.cast29718 = and i64 %bf.load295, 65535, !dbg !4097
  %cmp298 = icmp eq i64 %bf.cast29718, 14, !dbg !4097
  br i1 %cmp298, label %cond.true300, label %cond.false302, !dbg !4097

cond.true300:                                     ; preds = %cond.end292
  %call301 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4097
  br label %cond.end308, !dbg !4097

cond.false302:                                    ; preds = %cond.end292
  %bf.load305 = load i32, i32* %precision283, align 4, !dbg !4097
  %bf.lshr306 = lshr i32 %bf.load305, 16, !dbg !4097
  %bf.clear307 = and i32 %bf.lshr306, 255, !dbg !4097
  br label %cond.end308, !dbg !4097

cond.end308:                                      ; preds = %cond.false302, %cond.true300
  %cond309 = phi i32 [ %call301, %cond.true300 ], [ %bf.clear307, %cond.false302 ], !dbg !4097
  %cmp310 = icmp eq i32 %cond309, 0, !dbg !4098
  br i1 %cmp310, label %if.then312, label %if.end438, !dbg !4099

if.then312:                                       ; preds = %cond.end308
  %25 = getelementptr inbounds %union.tree_node, %union.tree_node* %23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4100
  %bf.load314 = load i64, i64* %25, align 8, !dbg !4100
  %bf.cast31620 = and i64 %bf.load314, 65535, !dbg !4100
  %cmp317 = icmp eq i64 %bf.cast31620, 14, !dbg !4100
  br i1 %cmp317, label %cond.true319, label %cond.false321, !dbg !4100

cond.true319:                                     ; preds = %if.then312
  %call320 = tail call i32 @vector_type_mode(%union.tree_node* %23) #7, !dbg !4100
  br label %cond.end327, !dbg !4100

cond.false321:                                    ; preds = %if.then312
  %type322 = bitcast %union.tree_node* %23 to %struct.tree_type*, !dbg !4100
  %mode323 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type322, i64 0, i32 6, !dbg !4100
  %bf.load324 = load i32, i32* %mode323, align 4, !dbg !4100
  %bf.lshr325 = lshr i32 %bf.load324, 16, !dbg !4100
  %bf.clear326 = and i32 %bf.lshr325, 255, !dbg !4100
  br label %cond.end327, !dbg !4100

cond.end327:                                      ; preds = %cond.false321, %cond.true319
  %cond328 = phi i32 [ %call320, %cond.true319 ], [ %bf.clear326, %cond.false321 ], !dbg !4100
  call void @llvm.dbg.value(metadata i32 %cond328, metadata !4014, metadata !DIExpression()), !dbg !4101
  %idxprom330 = zext i32 %cond328 to i64, !dbg !4102
  %arrayidx331 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom330, !dbg !4102
  %26 = load i8, i8* %arrayidx331, align 1, !dbg !4102
  %cmp333 = icmp eq i8 %26, 8, !dbg !4102
  br i1 %cmp333, label %if.end373, label %lor.lhs.false, !dbg !4102

lor.lhs.false:                                    ; preds = %cond.end327
  %cmp338 = icmp eq i8 %26, 9, !dbg !4102
  br i1 %cmp338, label %if.end373, label %if.else, !dbg !4104

if.else:                                          ; preds = %lor.lhs.false
  %cmp344 = icmp eq i8 %26, 4, !dbg !4105
  br i1 %cmp344, label %if.end373, label %if.else347, !dbg !4107

if.else347:                                       ; preds = %if.else
  %cmp351 = icmp eq i8 %26, 5, !dbg !4108
  br i1 %cmp351, label %if.end373, label %if.else354, !dbg !4110

if.else354:                                       ; preds = %if.else347
  %cmp358 = icmp eq i8 %26, 6, !dbg !4111
  br i1 %cmp358, label %if.end373, label %if.else361, !dbg !4113

if.else361:                                       ; preds = %if.else354
  %cmp365 = icmp eq i8 %26, 7, !dbg !4114
  %. = select i1 %cmp365, i32 0, i32 55
  call void @llvm.dbg.value(metadata i32 %., metadata !4017, metadata !DIExpression()), !dbg !4101
  br label %if.end373

if.end373:                                        ; preds = %if.else, %if.else361, %if.else354, %if.else347, %cond.end327, %lor.lhs.false
  %mode329.4 = phi i32 [ 78, %lor.lhs.false ], [ 78, %cond.end327 ], [ 0, %if.else ], [ 0, %if.else347 ], [ %., %if.else361 ], [ 0, %if.else354 ], !dbg !4116
  call void @llvm.dbg.value(metadata i32 %mode329.4, metadata !4017, metadata !DIExpression()), !dbg !4101
  br label %for.cond, !dbg !4117

for.cond:                                         ; preds = %for.inc, %if.end373
  %mode329.5 = phi i32 [ %mode329.4, %if.end373 ], [ %conv391, %for.inc ], !dbg !4101
  call void @llvm.dbg.value(metadata i32 %mode329.5, metadata !4017, metadata !DIExpression()), !dbg !4101
  %cond = icmp eq i32 %mode329.5, 0, !dbg !4118
  br i1 %cond, label %land.lhs.true394.loopexit, label %for.body, !dbg !4118

for.body:                                         ; preds = %for.cond
  %idxprom376 = zext i32 %mode329.5 to i64, !dbg !4120
  %arrayidx377 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_nunits, i64 0, i64 %idxprom376, !dbg !4120
  %27 = load i8, i8* %arrayidx377, align 1, !dbg !4120
  %conv378 = zext i8 %27 to i32, !dbg !4120
  %cmp379 = icmp eq i32 %conv378, %conv286, !dbg !4123
  br i1 %cmp379, label %land.lhs.true381, label %for.inc, !dbg !4124

land.lhs.true381:                                 ; preds = %for.body
  %arrayidx383 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom376, !dbg !4125
  %28 = load i8, i8* %arrayidx383, align 1, !dbg !4125
  %conv384 = zext i8 %28 to i32, !dbg !4125
  %cmp385 = icmp eq i32 %cond328, %conv384, !dbg !4126
  br i1 %cmp385, label %for.end, label %for.inc, !dbg !4127

for.inc:                                          ; preds = %for.body, %land.lhs.true381
  %arrayidx390 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom376, !dbg !4128
  %29 = load i8, i8* %arrayidx390, align 1, !dbg !4128
  %conv391 = zext i8 %29 to i32, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %conv391, metadata !4017, metadata !DIExpression()), !dbg !4101
  br label %for.cond, !dbg !4129, !llvm.loop !4130

for.end:                                          ; preds = %land.lhs.true381
  %mode329.5.lcssa39 = phi i32 [ %mode329.5, %land.lhs.true381 ], !dbg !4101
  call void @llvm.dbg.value(metadata i32 %mode329.5.lcssa39, metadata !4017, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 %mode329.5.lcssa39, metadata !4017, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 %mode329.5.lcssa39, metadata !4017, metadata !DIExpression()), !dbg !4101
  br i1 false, label %for.end.land.lhs.true394_crit_edge, label %if.end410, !dbg !4132

for.end.land.lhs.true394_crit_edge:               ; preds = %for.end
  br label %land.lhs.true394, !dbg !4132

land.lhs.true394.loopexit:                        ; preds = %for.cond
  %mode329.5.lcssa = phi i32 [ %mode329.5, %for.cond ], !dbg !4101
  call void @llvm.dbg.value(metadata i32 %mode329.5.lcssa, metadata !4017, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 %mode329.5.lcssa, metadata !4017, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 %mode329.5.lcssa, metadata !4017, metadata !DIExpression()), !dbg !4101
  br label %land.lhs.true394, !dbg !4134

land.lhs.true394:                                 ; preds = %for.end.land.lhs.true394_crit_edge, %land.lhs.true394.loopexit
  %mode329.540 = phi i32 [ %mode329.5.lcssa39, %for.end.land.lhs.true394_crit_edge ], [ %mode329.5.lcssa, %land.lhs.true394.loopexit ]
  %cmp398 = icmp eq i8 %26, 2, !dbg !4135
  br i1 %cmp398, label %if.then400, label %if.end410, !dbg !4136

if.then400:                                       ; preds = %land.lhs.true394
  %arrayidx402 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom330, !dbg !4137
  %30 = load i8, i8* %arrayidx402, align 1, !dbg !4137
  %conv404 = zext i8 %30 to i32, !dbg !4137
  %mul405 = shl nuw nsw i32 %conv404, 3, !dbg !4137
  %mul408 = mul nsw i32 %mul405, %conv286, !dbg !4138
  %call409 = tail call i32 @mode_for_size(i32 %mul408, i32 2, i32 0) #7, !dbg !4139
  call void @llvm.dbg.value(metadata i32 %call409, metadata !4017, metadata !DIExpression()), !dbg !4101
  br label %if.end410, !dbg !4140

if.end410:                                        ; preds = %if.then400, %land.lhs.true394, %for.end
  %mode329.6 = phi i32 [ %call409, %if.then400 ], [ %mode329.540, %land.lhs.true394 ], [ %mode329.5.lcssa39, %for.end ], !dbg !4101
  call void @llvm.dbg.value(metadata i32 %mode329.6, metadata !4017, metadata !DIExpression()), !dbg !4101
  %cmp411 = icmp eq i32 %mode329.6, 0, !dbg !4141
  br i1 %cmp411, label %if.then423, label %lor.lhs.false413, !dbg !4143

lor.lhs.false413:                                 ; preds = %if.end410
  %idxprom414 = zext i32 %mode329.6 to i64, !dbg !4144
  %arrayidx415 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom414, !dbg !4144
  %31 = load i8, i8* %arrayidx415, align 1, !dbg !4144
  %cmp417 = icmp eq i8 %31, 2, !dbg !4145
  br i1 %cmp417, label %land.lhs.true419, label %if.else429, !dbg !4146

land.lhs.true419:                                 ; preds = %lor.lhs.false413
  %arrayidx421 = getelementptr inbounds [87 x i8], [87 x i8]* @have_regs_of_mode, i64 0, i64 %idxprom414, !dbg !4147
  %32 = load i8, i8* %arrayidx421, align 1, !dbg !4147
  %tobool422 = icmp eq i8 %32, 0, !dbg !4147
  br i1 %tobool422, label %if.then423, label %if.else429, !dbg !4148

if.then423:                                       ; preds = %land.lhs.true419, %if.end410
  %bf.load426 = load i32, i32* %precision283, align 4, !dbg !4149
  %bf.clear427 = and i32 %bf.load426, -16711681, !dbg !4149
  %bf.set428 = or i32 %bf.clear427, 65536, !dbg !4149
  store i32 %bf.set428, i32* %precision283, align 4, !dbg !4149
  br label %if.end438, !dbg !4149

if.else429:                                       ; preds = %land.lhs.true419, %lor.lhs.false413
  %bf.load432 = load i32, i32* %precision283, align 4, !dbg !4150
  %bf.value433 = shl i32 %mode329.6, 16, !dbg !4150
  %bf.shl434 = and i32 %bf.value433, 16711680, !dbg !4150
  %bf.clear435 = and i32 %bf.load432, -16711681, !dbg !4150
  %bf.set436 = or i32 %bf.clear435, %bf.shl434, !dbg !4150
  store i32 %bf.set436, i32* %precision283, align 4, !dbg !4150
  br label %if.end438

if.end438:                                        ; preds = %if.then423, %if.else429, %cond.end308
  %33 = bitcast %union.tree_node** %type288 to i64**, !dbg !4151
  %34 = load i64*, i64** %33, align 8, !dbg !4151
  %bf.load442 = load i64, i64* %34, align 8, !dbg !4151
  %bf.cast445 = and i64 %bf.load442, 2147483648, !dbg !4151
  %bf.load447 = load i64, i64* %3, align 8, !dbg !4152
  %bf.clear450 = and i64 %bf.load447, -2147483649, !dbg !4152
  %bf.set451 = or i64 %bf.clear450, %bf.cast445, !dbg !4152
  store i64 %bf.set451, i64* %3, align 8, !dbg !4152
  %bf.load456 = load i64, i64* %34, align 8, !dbg !4153
  %bf.cast459 = and i64 %bf.load456, 2097152, !dbg !4153
  %bf.clear464 = and i64 %bf.set451, -2097153, !dbg !4154
  %bf.set465 = or i64 %bf.clear464, %bf.cast459, !dbg !4154
  store i64 %bf.set465, i64* %3, align 8, !dbg !4154
  %35 = getelementptr inbounds %union.tree_node, %union.tree_node* %23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4155
  %36 = load %union.tree_node*, %union.tree_node** %35, align 8, !dbg !4155
  %sext = shl i64 %shl, 32, !dbg !4156
  %conv469 = ashr exact i64 %sext, 32, !dbg !4156
  %call470 = tail call %union.tree_node* @size_int_kind(i64 %conv469, i32 0) #6, !dbg !4156
  %call471 = tail call %union.tree_node* @int_const_binop(i32 65, %union.tree_node* %36, %union.tree_node* %call470, i32 0) #6, !dbg !4157
  %37 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4158
  store %union.tree_node* %call471, %union.tree_node** %37, align 8, !dbg !4159
  %38 = getelementptr inbounds %union.tree_node, %union.tree_node* %23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4160
  %39 = load %union.tree_node*, %union.tree_node** %38, align 8, !dbg !4160
  %call477 = tail call %union.tree_node* @size_int_kind(i64 %conv469, i32 2) #6, !dbg !4161
  %call478 = tail call %union.tree_node* @int_const_binop(i32 65, %union.tree_node* %39, %union.tree_node* %call477, i32 0) #6, !dbg !4162
  store %union.tree_node* %call478, %union.tree_node** %1, align 8, !dbg !4163
  %call483 = tail call i64 @tree_low_cst(%union.tree_node* %call478, i32 0) #6, !dbg !4164
  %conv484 = trunc i64 %call483 to i32, !dbg !4164
  %40 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4165
  store i32 %conv484, i32* %40, align 8, !dbg !4166
  br label %sw.epilog

sw.bb486:                                         ; preds = %if.end4
  %41 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4167
  store i32 1, i32* %41, align 8, !dbg !4168
  %bf.clear492 = and i64 %bf.load, -4398046511105, !dbg !4169
  store i64 %bf.clear492, i64* %3, align 8, !dbg !4169
  %type493 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4170
  %mode494 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type493, i64 0, i32 6, !dbg !4170
  %bf.load495 = load i32, i32* %mode494, align 4, !dbg !4170
  %bf.clear496 = and i32 %bf.load495, -16711681, !dbg !4170
  store i32 %bf.clear496, i32* %mode494, align 4, !dbg !4170
  br label %sw.epilog, !dbg !4171

sw.bb497:                                         ; preds = %if.end4
  %call498 = tail call %union.tree_node* @size_int_kind(i64 32, i32 2) #6, !dbg !4172
  store %union.tree_node* %call498, %union.tree_node** %1, align 8, !dbg !4173
  %call501 = tail call %union.tree_node* @size_int_kind(i64 4, i32 0) #6, !dbg !4174
  %42 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4175
  store %union.tree_node* %call501, %union.tree_node** %42, align 8, !dbg !4176
  %call504 = tail call i32 @mode_for_size(i32 32, i32 2, i32 0) #7, !dbg !4177
  %type505 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4177
  %mode506 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type505, i64 0, i32 6, !dbg !4177
  %bf.load507 = load i32, i32* %mode506, align 4, !dbg !4177
  %bf.value508 = shl i32 %call504, 16, !dbg !4177
  %bf.shl509 = and i32 %bf.value508, 16711680, !dbg !4177
  %bf.clear510 = and i32 %bf.load507, -16712704, !dbg !4177
  %bf.set511 = or i32 %bf.clear510, %bf.shl509, !dbg !4177
  %bf.set516 = or i32 %bf.set511, 32, !dbg !4178
  store i32 %bf.set516, i32* %mode506, align 4, !dbg !4178
  br label %sw.epilog, !dbg !4179

sw.bb517:                                         ; preds = %if.end4, %if.end4
  %call518 = tail call i32 @mode_for_size(i32 8, i32 2, i32 0) #7, !dbg !4180
  %type519 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4180
  %mode520 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type519, i64 0, i32 6, !dbg !4180
  %bf.load521 = load i32, i32* %mode520, align 4, !dbg !4180
  %bf.value522 = shl i32 %call518, 16, !dbg !4180
  %bf.shl523 = and i32 %bf.value522, 16711680, !dbg !4180
  %bf.clear524 = and i32 %bf.load521, -16711681, !dbg !4180
  %bf.set525 = or i32 %bf.clear524, %bf.shl523, !dbg !4180
  store i32 %bf.set525, i32* %mode520, align 4, !dbg !4180
  %call526 = tail call %union.tree_node* @size_int_kind(i64 8, i32 2) #6, !dbg !4181
  store %union.tree_node* %call526, %union.tree_node** %1, align 8, !dbg !4182
  %call529 = tail call %union.tree_node* @size_int_kind(i64 1, i32 0) #6, !dbg !4183
  %43 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4184
  store %union.tree_node* %call529, %union.tree_node** %43, align 8, !dbg !4185
  br label %sw.epilog, !dbg !4186

sw.bb532:                                         ; preds = %if.end4, %if.end4
  %bf.cast53716 = and i64 %bf.load, 65535, !dbg !4187
  %cmp538 = icmp eq i64 %bf.cast53716, 14, !dbg !4187
  br i1 %cmp538, label %cond.true540, label %cond.false542, !dbg !4187

cond.true540:                                     ; preds = %sw.bb532
  %call541 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4187
  %bf.load551.pre = load i64, i64* %3, align 8, !dbg !4188
  br label %cond.end548, !dbg !4187

cond.false542:                                    ; preds = %sw.bb532
  %type543 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4187
  %mode544 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type543, i64 0, i32 6, !dbg !4187
  %bf.load545 = load i32, i32* %mode544, align 4, !dbg !4187
  %bf.lshr546 = lshr i32 %bf.load545, 16, !dbg !4187
  %bf.clear547 = and i32 %bf.lshr546, 255, !dbg !4187
  br label %cond.end548, !dbg !4187

cond.end548:                                      ; preds = %cond.false542, %cond.true540
  %bf.load551 = phi i64 [ %bf.load551.pre, %cond.true540 ], [ %bf.load, %cond.false542 ], !dbg !4188
  %cond549 = phi i32 [ %call541, %cond.true540 ], [ %bf.clear547, %cond.false542 ], !dbg !4187
  call void @llvm.dbg.value(metadata i32 %cond549, metadata !4018, metadata !DIExpression()), !dbg !4189
  %bf.cast55317 = and i64 %bf.load551, 65535, !dbg !4190
  %cmp554 = icmp eq i64 %bf.cast55317, 12, !dbg !4190
  %.b = load i1, i1* @reference_types_internal, align 4, !dbg !4191
  %or.cond = and i1 %cmp554, %.b, !dbg !4192
  br i1 %or.cond, label %if.then558, label %if.end567, !dbg !4192

if.then558:                                       ; preds = %cond.end548
  %type560 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4193
  %44 = bitcast %union.tree_node** %type560 to i64**, !dbg !4193
  %45 = load i64*, i64** %44, align 8, !dbg !4193
  %bf.load562 = load i64, i64* %45, align 8, !dbg !4193
  %bf.lshr563 = lshr i64 %bf.load562, 56, !dbg !4193
  %conv565 = trunc i64 %bf.lshr563 to i8, !dbg !4193
  call void @llvm.dbg.value(metadata i8 %conv565, metadata !4020, metadata !DIExpression()), !dbg !4194
  %46 = load i32 (i8)*, i32 (i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 57, i32 1), align 8, !dbg !4195
  %call566 = tail call i32 %46(i8 zeroext %conv565) #6, !dbg !4196
  call void @llvm.dbg.value(metadata i32 %call566, metadata !4018, metadata !DIExpression()), !dbg !4189
  br label %if.end567, !dbg !4197

if.end567:                                        ; preds = %if.then558, %cond.end548
  %mode533.0 = phi i32 [ %call566, %if.then558 ], [ %cond549, %cond.end548 ], !dbg !4189
  call void @llvm.dbg.value(metadata i32 %mode533.0, metadata !4018, metadata !DIExpression()), !dbg !4189
  %idxprom568 = zext i32 %mode533.0 to i64, !dbg !4198
  %arrayidx569 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom568, !dbg !4198
  %47 = load i8, i8* %arrayidx569, align 1, !dbg !4198
  %conv571 = zext i8 %47 to i64, !dbg !4198
  %mul572 = shl nuw nsw i64 %conv571, 3, !dbg !4198
  %call575 = tail call %union.tree_node* @size_int_kind(i64 %mul572, i32 2) #6, !dbg !4198
  store %union.tree_node* %call575, %union.tree_node** %1, align 8, !dbg !4199
  %48 = load i8, i8* %arrayidx569, align 1, !dbg !4200
  %conv581 = zext i8 %48 to i64, !dbg !4200
  %call582 = tail call %union.tree_node* @size_int_kind(i64 %conv581, i32 0) #6, !dbg !4200
  %49 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4201
  store %union.tree_node* %call582, %union.tree_node** %49, align 8, !dbg !4202
  %bf.load586 = load i64, i64* %3, align 8, !dbg !4203
  %bf.set588 = or i64 %bf.load586, 2097152, !dbg !4203
  store i64 %bf.set588, i64* %3, align 8, !dbg !4203
  %50 = load i8, i8* %arrayidx569, align 1, !dbg !4204
  %conv592 = zext i8 %50 to i32, !dbg !4204
  %mul593 = shl nuw nsw i32 %conv592, 3, !dbg !4204
  %type596 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4205
  %precision597 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type596, i64 0, i32 6, !dbg !4205
  %bf.load598 = load i32, i32* %precision597, align 4, !dbg !4206
  %bf.value599 = and i32 %mul593, 1016, !dbg !4206
  %bf.clear600 = and i32 %bf.load598, -1024, !dbg !4206
  %bf.set601 = or i32 %bf.clear600, %bf.value599, !dbg !4206
  store i32 %bf.set601, i32* %precision597, align 4, !dbg !4206
  br label %sw.epilog, !dbg !4207

sw.bb602:                                         ; preds = %if.end4
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4208
  %51 = bitcast i32* %values to %union.tree_node**, !dbg !4208
  %52 = load %union.tree_node*, %union.tree_node** %51, align 8, !dbg !4208
  call void @llvm.dbg.value(metadata %union.tree_node* %52, metadata !4024, metadata !DIExpression()), !dbg !4209
  %type605 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4210
  %53 = load %union.tree_node*, %union.tree_node** %type605, align 8, !dbg !4210
  call void @llvm.dbg.value(metadata %union.tree_node* %53, metadata !4026, metadata !DIExpression()), !dbg !4209
  %call606 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %53) #6, !dbg !4211
  %tobool607 = icmp eq %union.tree_node* %52, null, !dbg !4212
  br i1 %tobool607, label %if.end650, label %land.lhs.true608, !dbg !4213

land.lhs.true608:                                 ; preds = %sw.bb602
  %maxval = getelementptr inbounds %union.tree_node, %union.tree_node* %52, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4214
  %54 = bitcast %struct.rtx_def** %maxval to %union.tree_node**, !dbg !4214
  %55 = load %union.tree_node*, %union.tree_node** %54, align 8, !dbg !4214
  %tobool610 = icmp eq %union.tree_node* %55, null, !dbg !4214
  br i1 %tobool610, label %if.end650, label %land.lhs.true611, !dbg !4215

land.lhs.true611:                                 ; preds = %land.lhs.true608
  %minval613 = getelementptr inbounds %union.tree_node, %union.tree_node* %52, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, !dbg !4216
  %56 = bitcast %struct.lang_decl** %minval613 to %union.tree_node**, !dbg !4216
  %57 = load %union.tree_node*, %union.tree_node** %56, align 8, !dbg !4216
  %tobool614 = icmp eq %union.tree_node* %57, null, !dbg !4216
  br i1 %tobool614, label %if.end650, label %land.lhs.true615, !dbg !4217

land.lhs.true615:                                 ; preds = %land.lhs.true611
  %58 = getelementptr inbounds %union.tree_node, %union.tree_node* %53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4218
  %59 = load %union.tree_node*, %union.tree_node** %58, align 8, !dbg !4218
  %tobool618 = icmp eq %union.tree_node* %59, null, !dbg !4218
  br i1 %tobool618, label %if.end650, label %if.then619, !dbg !4219

if.then619:                                       ; preds = %land.lhs.true615
  call void @llvm.dbg.value(metadata %union.tree_node* %55, metadata !4027, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata %union.tree_node* %57, metadata !4030, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata %union.tree_node* %59, metadata !4031, metadata !DIExpression()), !dbg !4220
  %call626 = tail call i32 @integer_zerop(%union.tree_node* nonnull %59) #6, !dbg !4221
  %tobool627 = icmp eq i32 %call626, 0, !dbg !4221
  br i1 %tobool627, label %if.else629, label %if.then628, !dbg !4223

if.then628:                                       ; preds = %if.then619
  %60 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 17), align 8, !dbg !4224
  call void @llvm.dbg.value(metadata %union.tree_node* %60, metadata !4032, metadata !DIExpression()), !dbg !4220
  br label %if.end635, !dbg !4225

if.else629:                                       ; preds = %if.then619
  %61 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 18), align 16, !dbg !4226
  %62 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !4226
  %63 = load i32, i32* @input_location, align 4, !dbg !4226
  %type631 = getelementptr inbounds %union.tree_node, %union.tree_node* %57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4226
  %64 = load %union.tree_node*, %union.tree_node** %type631, align 8, !dbg !4226
  %call632 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %63, i32 64, %union.tree_node* %64, %union.tree_node* nonnull %55, %union.tree_node* nonnull %57) #6, !dbg !4226
  %call633 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %62, %union.tree_node* %call632) #6, !dbg !4226
  %call634 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 63, %union.tree_node* %61, %union.tree_node* %call633) #6, !dbg !4226
  call void @llvm.dbg.value(metadata %union.tree_node* %call634, metadata !4032, metadata !DIExpression()), !dbg !4220
  br label %if.end635

if.end635:                                        ; preds = %if.else629, %if.then628
  %length.0 = phi %union.tree_node* [ %60, %if.then628 ], [ %call634, %if.else629 ], !dbg !4227
  call void @llvm.dbg.value(metadata %union.tree_node* %length.0, metadata !4032, metadata !DIExpression()), !dbg !4220
  %65 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2), align 16, !dbg !4228
  %call636 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %65, %union.tree_node* %length.0) #6, !dbg !4228
  %call637 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 65, %union.tree_node* nonnull %59, %union.tree_node* %call636) #6, !dbg !4228
  store %union.tree_node* %call637, %union.tree_node** %1, align 8, !dbg !4229
  %66 = getelementptr inbounds %union.tree_node, %union.tree_node* %53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4230
  %67 = load %union.tree_node*, %union.tree_node** %66, align 8, !dbg !4230
  %tobool642 = icmp eq %union.tree_node* %67, null, !dbg !4230
  br i1 %tobool642, label %if.end650, label %if.then643, !dbg !4232

if.then643:                                       ; preds = %if.end635
  %call646 = tail call %union.tree_node* @size_binop_loc(i32 0, i32 65, %union.tree_node* nonnull %67, %union.tree_node* %length.0) #6, !dbg !4233
  %68 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4234
  store %union.tree_node* %call646, %union.tree_node** %68, align 8, !dbg !4235
  br label %if.end650, !dbg !4234

if.end650:                                        ; preds = %if.end635, %land.lhs.true615, %land.lhs.true611, %land.lhs.true608, %sw.bb602, %if.then643
  %69 = getelementptr inbounds %union.tree_node, %union.tree_node* %53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4236
  %70 = load i32, i32* %69, align 8, !dbg !4236
  %cmp653 = icmp ugt i32 %70, 8, !dbg !4236
  br i1 %cmp653, label %cond.true655, label %cond.end659, !dbg !4236

cond.true655:                                     ; preds = %if.end650
  br label %cond.end659, !dbg !4236

cond.end659:                                      ; preds = %if.end650, %cond.true655
  %cond660 = phi i32 [ %70, %cond.true655 ], [ 8, %if.end650 ], !dbg !4236
  %71 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4237
  store i32 %cond660, i32* %71, align 8, !dbg !4238
  %72 = getelementptr inbounds %union.tree_node, %union.tree_node* %53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4239
  %73 = load %union.tree_node*, %union.tree_node** %72, align 8, !dbg !4239
  %tobool665 = icmp eq %union.tree_node* %73, null, !dbg !4239
  br i1 %tobool665, label %if.then666, label %if.end668, !dbg !4241

if.then666:                                       ; preds = %cond.end659
  %74 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 1, !dbg !4242
  store %union.tree_node* null, %union.tree_node** %74, align 8, !dbg !4242
  br label %if.end668, !dbg !4242

if.end668:                                        ; preds = %cond.end659, %if.then666
  %75 = getelementptr inbounds %union.tree_node, %union.tree_node* %53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4243
  %bf.load671 = load i64, i64* %75, align 8, !dbg !4243
  %bf.cast674 = and i64 %bf.load671, 4398046511104, !dbg !4243
  %bf.load677 = load i64, i64* %3, align 8, !dbg !4244
  %bf.clear680 = and i64 %bf.load677, -4398046511105, !dbg !4244
  %bf.set681 = or i64 %bf.clear680, %bf.cast674, !dbg !4244
  store i64 %bf.set681, i64* %3, align 8, !dbg !4244
  %type683 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4245
  %mode684 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type683, i64 0, i32 6, !dbg !4245
  %bf.load685 = load i32, i32* %mode684, align 4, !dbg !4245
  %bf.clear686 = and i32 %bf.load685, -16711681, !dbg !4245
  %bf.set687 = or i32 %bf.clear686, 65536, !dbg !4245
  store i32 %bf.set687, i32* %mode684, align 4, !dbg !4245
  %76 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !4246
  %cmp690 = icmp eq %union.tree_node* %76, null, !dbg !4248
  br i1 %cmp690, label %if.end838, label %land.lhs.true692, !dbg !4249

land.lhs.true692:                                 ; preds = %if.end668
  %77 = bitcast %union.tree_node** %type605 to i64**, !dbg !4250
  %78 = load i64*, i64** %77, align 8, !dbg !4250
  %bf.load696 = load i64, i64* %78, align 8, !dbg !4250
  %bf.cast69812 = and i64 %bf.load696, 65535, !dbg !4250
  %cmp699 = icmp eq i64 %bf.cast69812, 14, !dbg !4250
  br i1 %cmp699, label %cond.true701, label %cond.false705, !dbg !4250

cond.true701:                                     ; preds = %land.lhs.true692
  %.cast = bitcast i64* %78 to %union.tree_node*, !dbg !4250
  %call704 = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #7, !dbg !4250
  br label %cond.end713, !dbg !4250

cond.false705:                                    ; preds = %land.lhs.true692
  %79 = bitcast i64* %78 to %struct.tree_type*, !dbg !4250
  %mode709 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %79, i64 0, i32 6, !dbg !4250
  %bf.load710 = load i32, i32* %mode709, align 4, !dbg !4250
  %bf.lshr711 = lshr i32 %bf.load710, 16, !dbg !4250
  %bf.clear712 = and i32 %bf.lshr711, 255, !dbg !4250
  br label %cond.end713, !dbg !4250

cond.end713:                                      ; preds = %cond.false705, %cond.true701
  %cond714 = phi i32 [ %call704, %cond.true701 ], [ %bf.clear712, %cond.false705 ], !dbg !4250
  %cmp715 = icmp eq i32 %cond714, 1, !dbg !4251
  br i1 %cmp715, label %lor.lhs.false717, label %cond.end713.if.then725_crit_edge, !dbg !4252

cond.end713.if.then725_crit_edge:                 ; preds = %cond.end713
  %.phi.trans.insert = bitcast %union.tree_node** %type605 to %struct.tree_type**, !dbg !4253
  %.pre = load %struct.tree_type*, %struct.tree_type** %.phi.trans.insert, align 8, !dbg !4256
  br label %if.then725, !dbg !4252

lor.lhs.false717:                                 ; preds = %cond.end713
  %80 = bitcast %union.tree_node** %type605 to %struct.tree_type**, !dbg !4257
  %81 = load %struct.tree_type*, %struct.tree_type** %80, align 8, !dbg !4257
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %81, i64 0, i32 6, !dbg !4257
  %bf.load721 = load i32, i32* %no_force_blk_flag, align 4, !dbg !4257
  %bf.clear723 = and i32 %bf.load721, 1024, !dbg !4257
  %tobool724 = icmp eq i32 %bf.clear723, 0, !dbg !4257
  br i1 %tobool724, label %if.end838, label %if.then725, !dbg !4258

if.then725:                                       ; preds = %cond.end713.if.then725_crit_edge, %lor.lhs.false717
  %82 = phi %struct.tree_type* [ %.pre, %cond.end713.if.then725_crit_edge ], [ %81, %lor.lhs.false717 ], !dbg !4256
  %83 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !4259
  %size731 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %82, i64 0, i32 2, !dbg !4256
  %84 = load %union.tree_node*, %union.tree_node** %size731, align 8, !dbg !4256
  %call732 = tail call i32 @simple_cst_equal(%union.tree_node* %83, %union.tree_node* %84) #6, !dbg !4260
  %tobool733 = icmp eq i32 %call732, 0, !dbg !4260
  br i1 %tobool733, label %if.else764, label %if.then734, !dbg !4261

if.then734:                                       ; preds = %if.then725
  %85 = load i64*, i64** %77, align 8, !dbg !4262
  %bf.load738 = load i64, i64* %85, align 8, !dbg !4262
  %bf.cast74014 = and i64 %bf.load738, 65535, !dbg !4262
  %cmp741 = icmp eq i64 %bf.cast74014, 14, !dbg !4262
  br i1 %cmp741, label %cond.true743, label %cond.false747, !dbg !4262

cond.true743:                                     ; preds = %if.then734
  %.cast15 = bitcast i64* %85 to %union.tree_node*, !dbg !4262
  %call746 = tail call i32 @vector_type_mode(%union.tree_node* %.cast15) #7, !dbg !4262
  br label %cond.end755, !dbg !4262

cond.false747:                                    ; preds = %if.then734
  %type750 = bitcast i64* %85 to %struct.tree_type*, !dbg !4262
  %mode751 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type750, i64 0, i32 6, !dbg !4262
  %bf.load752 = load i32, i32* %mode751, align 4, !dbg !4262
  %bf.lshr753 = lshr i32 %bf.load752, 16, !dbg !4262
  %bf.clear754 = and i32 %bf.lshr753, 255, !dbg !4262
  br label %cond.end755, !dbg !4262

cond.end755:                                      ; preds = %cond.false747, %cond.true743
  %cond756 = phi i32 [ %call746, %cond.true743 ], [ %bf.clear754, %cond.false747 ], !dbg !4262
  %bf.load759 = load i32, i32* %mode684, align 4, !dbg !4262
  %bf.value760 = shl i32 %cond756, 16, !dbg !4262
  %bf.shl761 = and i32 %bf.value760, 16711680, !dbg !4262
  %bf.clear762 = and i32 %bf.load759, -16711681, !dbg !4262
  %bf.set763 = or i32 %bf.clear762, %bf.shl761, !dbg !4262
  br label %if.end775, !dbg !4262

if.else764:                                       ; preds = %if.then725
  %86 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !4263
  %call767 = tail call i32 @mode_for_size_tree(%union.tree_node* %86, i32 2, i32 1) #7, !dbg !4263
  %bf.load770 = load i32, i32* %mode684, align 4, !dbg !4263
  %bf.value771 = shl i32 %call767, 16, !dbg !4263
  %bf.shl772 = and i32 %bf.value771, 16711680, !dbg !4263
  %bf.clear773 = and i32 %bf.load770, -16711681, !dbg !4263
  %bf.set774 = or i32 %bf.clear773, %bf.shl772, !dbg !4263
  br label %if.end775

if.end775:                                        ; preds = %if.else764, %cond.end755
  %storemerge = phi i32 [ %bf.set763, %cond.end755 ], [ %bf.set774, %if.else764 ], !dbg !4253
  store i32 %storemerge, i32* %mode684, align 4, !dbg !4253
  %bf.load777 = load i64, i64* %3, align 8, !dbg !4264
  %bf.cast77913 = and i64 %bf.load777, 65535, !dbg !4264
  %cmp780 = icmp eq i64 %bf.cast77913, 14, !dbg !4264
  br i1 %cmp780, label %cond.true782, label %cond.false784, !dbg !4264

cond.true782:                                     ; preds = %if.end775
  %call783 = tail call i32 @vector_type_mode(%union.tree_node* %type) #7, !dbg !4264
  br label %cond.end790, !dbg !4264

cond.false784:                                    ; preds = %if.end775
  br label %cond.end790, !dbg !4264

cond.end790:                                      ; preds = %cond.false784, %cond.true782
  br label %if.end838, !dbg !4266

if.end838:                                        ; preds = %lor.lhs.false717, %if.end668, %cond.end790
  %87 = getelementptr inbounds %union.tree_node, %union.tree_node* %53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4267
  %88 = load %union.tree_node*, %union.tree_node** %87, align 8, !dbg !4267
  %tobool841 = icmp eq %union.tree_node* %88, null, !dbg !4267
  br i1 %tobool841, label %sw.epilog, label %land.lhs.true842, !dbg !4269

land.lhs.true842:                                 ; preds = %if.end838
  %89 = getelementptr inbounds %union.tree_node, %union.tree_node* %88, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4269
  %bf.load846 = load i64, i64* %89, align 8, !dbg !4270
  %bf.cast84810 = and i64 %bf.load846, 65535, !dbg !4271
  %cmp849 = icmp eq i64 %bf.cast84810, 23, !dbg !4271
  br i1 %cmp849, label %land.lhs.true851, label %sw.epilog, !dbg !4272

land.lhs.true851:                                 ; preds = %land.lhs.true842
  %bf.cast85811 = and i64 %bf.load846, 134217728, !dbg !4273
  %tobool859 = icmp eq i64 %bf.cast85811, 0, !dbg !4273
  br i1 %tobool859, label %land.lhs.true860, label %sw.epilog, !dbg !4274

land.lhs.true860:                                 ; preds = %land.lhs.true851
  %call863 = tail call i32 @integer_zerop(%union.tree_node* nonnull %88) #6, !dbg !4275
  %tobool864 = icmp eq i32 %call863, 0, !dbg !4275
  br i1 %tobool864, label %land.lhs.true865, label %sw.epilog, !dbg !4276

land.lhs.true865:                                 ; preds = %land.lhs.true860
  %90 = load %union.tree_node*, %union.tree_node** %87, align 8, !dbg !4277
  %91 = load i32, i32* %69, align 8, !dbg !4278
  %div = lshr i32 %91, 3, !dbg !4278
  %conv870 = zext i32 %div to i64, !dbg !4278
  %call871 = tail call i32 @compare_tree_int(%union.tree_node* %90, i64 %conv870) #6, !dbg !4279
  %cmp872 = icmp slt i32 %call871, 0, !dbg !4280
  br i1 %cmp872, label %if.then874, label %sw.epilog, !dbg !4281

if.then874:                                       ; preds = %land.lhs.true865
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !4282
  br label %sw.epilog, !dbg !4282

sw.bb876:                                         ; preds = %if.end4, %if.end4, %if.end4
  %call877 = tail call %struct.record_layout_info_s* @start_record_layout(%union.tree_node* %type) #7, !dbg !4283
  call void @llvm.dbg.value(metadata %struct.record_layout_info_s* %call877, metadata !4035, metadata !DIExpression()), !dbg !4284
  %bf.load879 = load i64, i64* %3, align 8, !dbg !4285
  %bf.cast8811 = and i64 %bf.load879, 65535, !dbg !4287
  %cmp882 = icmp eq i64 %bf.cast8811, 18, !dbg !4287
  br i1 %cmp882, label %if.then884, label %sw.bb876.if.end890_crit_edge, !dbg !4288

sw.bb876.if.end890_crit_edge:                     ; preds = %sw.bb876
  br label %if.end890, !dbg !4288

if.then884:                                       ; preds = %sw.bb876
  %values886 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4289
  %92 = bitcast i32* %values886 to %union.tree_node**, !dbg !4289
  %93 = load %union.tree_node*, %union.tree_node** %92, align 8, !dbg !4289
  %call887 = tail call %union.tree_node* @nreverse(%union.tree_node* %93) #6, !dbg !4290
  store %union.tree_node* %call887, %union.tree_node** %92, align 8, !dbg !4291
  br label %if.end890, !dbg !4292

if.end890:                                        ; preds = %sw.bb876.if.end890_crit_edge, %if.then884
  %values892 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4293
  %94 = bitcast i32* %values892 to %union.tree_node**, !dbg !4293
  br label %for.cond893, !dbg !4295

for.cond893:                                      ; preds = %for.body895, %if.end890
  %field.0.in = phi %union.tree_node** [ %94, %if.end890 ], [ %chain, %for.body895 ]
  %field.0 = load %union.tree_node*, %union.tree_node** %field.0.in, align 8, !dbg !4296
  call void @llvm.dbg.value(metadata %union.tree_node* %field.0, metadata !4033, metadata !DIExpression()), !dbg !4284
  %tobool894 = icmp eq %union.tree_node* %field.0, null, !dbg !4297
  br i1 %tobool894, label %for.end898, label %for.body895, !dbg !4297

for.body895:                                      ; preds = %for.cond893
  tail call void @place_field(%struct.record_layout_info_s* %call877, %union.tree_node* nonnull %field.0) #7, !dbg !4298
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %field.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4300
  br label %for.cond893, !dbg !4301, !llvm.loop !4302

for.end898:                                       ; preds = %for.cond893
  %bf.load900 = load i64, i64* %3, align 8, !dbg !4304
  %bf.cast9022 = and i64 %bf.load900, 65535, !dbg !4306
  %cmp903 = icmp eq i64 %bf.cast9022, 18, !dbg !4306
  br i1 %cmp903, label %if.then905, label %if.end911, !dbg !4307

if.then905:                                       ; preds = %for.end898
  %95 = load %union.tree_node*, %union.tree_node** %94, align 8, !dbg !4308
  %call908 = tail call %union.tree_node* @nreverse(%union.tree_node* %95) #6, !dbg !4309
  store %union.tree_node* %call908, %union.tree_node** %94, align 8, !dbg !4310
  br label %if.end911, !dbg !4311

if.end911:                                        ; preds = %if.then905, %for.end898
  tail call void @finish_record_layout(%struct.record_layout_info_s* %call877, i32 1) #7, !dbg !4312
  br label %sw.epilog, !dbg !4313

sw.default:                                       ; preds = %if.end4
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2084, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4314
  br label %sw.epilog, !dbg !4315

sw.epilog:                                        ; preds = %land.lhs.true860, %land.lhs.true851, %if.end838, %land.lhs.true842, %land.lhs.true865, %if.then874, %sw.default, %if.end911, %if.end567, %sw.bb517, %sw.bb497, %sw.bb486, %if.end438, %cond.end272, %cond.end186, %cond.end136, %cond.end75
  %bf.load913 = load i64, i64* %3, align 8, !dbg !4316
  %bf.cast9153 = and i64 %bf.load913, 65535, !dbg !4318
  %cmp916 = icmp eq i64 %bf.cast9153, 16, !dbg !4318
  br i1 %cmp916, label %if.end933, label %land.lhs.true918, !dbg !4319

land.lhs.true918:                                 ; preds = %sw.epilog
  %cmp923 = icmp eq i64 %bf.cast9153, 17, !dbg !4320
  br i1 %cmp923, label %if.end933, label %land.lhs.true925, !dbg !4321

land.lhs.true925:                                 ; preds = %land.lhs.true918
  %cmp930 = icmp eq i64 %bf.cast9153, 18, !dbg !4322
  br i1 %cmp930, label %if.end933, label %if.then932, !dbg !4323

if.then932:                                       ; preds = %land.lhs.true925
  tail call fastcc void @finalize_type_size(%union.tree_node* %type) #7, !dbg !4324
  %bf.load935.pre = load i64, i64* %3, align 8, !dbg !4325
  %.pre36 = and i64 %bf.load935.pre, 65535, !dbg !4325
  br label %if.end933, !dbg !4324

if.end933:                                        ; preds = %land.lhs.true925, %land.lhs.true918, %sw.epilog, %if.then932
  %bf.cast9374.pre-phi = phi i64 [ %bf.cast9153, %land.lhs.true925 ], [ %bf.cast9153, %land.lhs.true918 ], [ %bf.cast9153, %sw.epilog ], [ %.pre36, %if.then932 ], !dbg !4325
  %cmp938 = icmp eq i64 %bf.cast9374.pre-phi, 15, !dbg !4325
  br i1 %cmp938, label %if.then961, label %lor.lhs.false940, !dbg !4325

lor.lhs.false940:                                 ; preds = %if.end933
  %cmp945 = icmp eq i64 %bf.cast9374.pre-phi, 16, !dbg !4325
  br i1 %cmp945, label %if.then961, label %lor.lhs.false947, !dbg !4325

lor.lhs.false947:                                 ; preds = %lor.lhs.false940
  %cmp952 = icmp eq i64 %bf.cast9374.pre-phi, 17, !dbg !4325
  br i1 %cmp952, label %if.then961, label %lor.lhs.false954, !dbg !4325

lor.lhs.false954:                                 ; preds = %lor.lhs.false947
  %cmp959 = icmp eq i64 %bf.cast9374.pre-phi, 18, !dbg !4325
  br i1 %cmp959, label %if.then961, label %if.end969, !dbg !4327

if.then961:                                       ; preds = %lor.lhs.false954, %lor.lhs.false947, %lor.lhs.false940, %if.end933
  %type962 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4328
  %alias_set = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type962, i64 0, i32 8, !dbg !4328
  %96 = load i32, i32* %alias_set, align 4, !dbg !4328
  %cmp963 = icmp eq i32 %96, -1, !dbg !4328
  br i1 %cmp963, label %if.end969, label %cond.true965, !dbg !4328

cond.true965:                                     ; preds = %if.then961
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2098, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4328
  br label %if.end969, !dbg !4328

if.end969:                                        ; preds = %if.then961, %if.end, %cond.true965, %cond.end, %lor.lhs.false954
  ret void, !dbg !4329
}

declare dso_local %union.tree_node* @build_decl_stat(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #2

declare dso_local i32 @tree_int_cst_sgn(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @int_const_binop(i32, %union.tree_node*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_pointer_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @nreverse(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @make_signed_type(i32 %precision) local_unnamed_addr #5 !dbg !4330 {
entry:
  call void @llvm.dbg.value(metadata i32 %precision, metadata !4334, metadata !DIExpression()), !dbg !4336
  %call = tail call %union.tree_node* @make_node_stat(i32 8) #6, !dbg !4337
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4335, metadata !DIExpression()), !dbg !4336
  %type1 = bitcast %union.tree_node* %call to %struct.tree_type*, !dbg !4338
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !4338
  %bf.load = load i32, i32* %precision2, align 4, !dbg !4339
  %bf.value = and i32 %precision, 1023, !dbg !4339
  %bf.clear = and i32 %bf.load, -1024, !dbg !4339
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !4339
  store i32 %bf.set, i32* %precision2, align 4, !dbg !4339
  tail call void @fixup_signed_type(%union.tree_node* %call) #7, !dbg !4340
  ret %union.tree_node* %call, !dbg !4341
}

declare dso_local %union.tree_node* @make_node_stat(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fixup_signed_type(%union.tree_node* %type) local_unnamed_addr #5 !dbg !4342 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4344, metadata !DIExpression()), !dbg !4346
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4347
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !4347
  %bf.load = load i32, i32* %precision2, align 4, !dbg !4347
  %bf.clear = and i32 %bf.load, 1023, !dbg !4347
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4345, metadata !DIExpression()), !dbg !4346
  %0 = icmp ult i32 %bf.clear, 128, !dbg !4348
  %spec.select = select i1 %0, i32 %bf.clear, i32 128, !dbg !4348
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4345, metadata !DIExpression()), !dbg !4346
  tail call void @set_min_and_max_values_for_integral_type(%union.tree_node* %type, i32 %spec.select, i8 zeroext 0) #7, !dbg !4349
  tail call void @layout_type(%union.tree_node* %type) #7, !dbg !4350
  ret void, !dbg !4351
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @make_unsigned_type(i32 %precision) local_unnamed_addr #5 !dbg !4352 {
entry:
  call void @llvm.dbg.value(metadata i32 %precision, metadata !4354, metadata !DIExpression()), !dbg !4356
  %call = tail call %union.tree_node* @make_node_stat(i32 8) #6, !dbg !4357
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4355, metadata !DIExpression()), !dbg !4356
  %type1 = bitcast %union.tree_node* %call to %struct.tree_type*, !dbg !4358
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !4358
  %bf.load = load i32, i32* %precision2, align 4, !dbg !4359
  %bf.value = and i32 %precision, 1023, !dbg !4359
  %bf.clear = and i32 %bf.load, -1024, !dbg !4359
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !4359
  store i32 %bf.set, i32* %precision2, align 4, !dbg !4359
  tail call void @fixup_unsigned_type(%union.tree_node* %call) #7, !dbg !4360
  ret %union.tree_node* %call, !dbg !4361
}

; Function Attrs: nounwind uwtable
define dso_local void @fixup_unsigned_type(%union.tree_node* %type) local_unnamed_addr #5 !dbg !4362 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4364, metadata !DIExpression()), !dbg !4366
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4367
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !4367
  %bf.load = load i32, i32* %precision2, align 4, !dbg !4367
  %bf.clear = and i32 %bf.load, 1023, !dbg !4367
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4365, metadata !DIExpression()), !dbg !4366
  %0 = icmp ult i32 %bf.clear, 128, !dbg !4368
  %spec.select = select i1 %0, i32 %bf.clear, i32 128, !dbg !4368
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4365, metadata !DIExpression()), !dbg !4366
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4369
  %bf.load3 = load i64, i64* %1, align 8, !dbg !4370
  %bf.set = or i64 %bf.load3, 2097152, !dbg !4370
  store i64 %bf.set, i64* %1, align 8, !dbg !4370
  tail call void @set_min_and_max_values_for_integral_type(%union.tree_node* %type, i32 %spec.select, i8 zeroext 1) #7, !dbg !4371
  tail call void @layout_type(%union.tree_node* %type) #7, !dbg !4372
  ret void, !dbg !4373
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @make_fract_type(i32 %precision, i32 %unsignedp, i32 %satp) local_unnamed_addr #5 !dbg !4374 {
entry:
  call void @llvm.dbg.value(metadata i32 %precision, metadata !4378, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i32 %unsignedp, metadata !4379, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i32 %satp, metadata !4380, metadata !DIExpression()), !dbg !4382
  %call = tail call %union.tree_node* @make_node_stat(i32 11) #6, !dbg !4383
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4381, metadata !DIExpression()), !dbg !4382
  %type1 = bitcast %union.tree_node* %call to %struct.tree_type*, !dbg !4384
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !4384
  %bf.load = load i32, i32* %precision2, align 4, !dbg !4385
  %bf.value = and i32 %precision, 1023, !dbg !4385
  %bf.clear = and i32 %bf.load, -1024, !dbg !4385
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !4385
  store i32 %bf.set, i32* %precision2, align 4, !dbg !4385
  %tobool = icmp eq i32 %satp, 0, !dbg !4386
  br i1 %tobool, label %if.end, label %if.then, !dbg !4388

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4389
  %bf.load3 = load i64, i64* %0, align 8, !dbg !4390
  %bf.set5 = or i64 %bf.load3, 2147483648, !dbg !4390
  store i64 %bf.set5, i64* %0, align 8, !dbg !4390
  br label %if.end, !dbg !4389

if.end:                                           ; preds = %entry, %if.then
  %tobool6 = icmp eq i32 %unsignedp, 0, !dbg !4391
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !4393

if.then7:                                         ; preds = %if.end
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4394
  %bf.load9 = load i64, i64* %1, align 8, !dbg !4396
  %bf.set11 = or i64 %bf.load9, 2097152, !dbg !4396
  store i64 %bf.set11, i64* %1, align 8, !dbg !4396
  %call12 = tail call i32 @mode_for_size(i32 %precision, i32 5, i32 0) #7, !dbg !4397
  %bf.load14 = load i32, i32* %precision2, align 4, !dbg !4397
  %bf.value15 = shl i32 %call12, 16, !dbg !4397
  %bf.shl = and i32 %bf.value15, 16711680, !dbg !4397
  %bf.clear16 = and i32 %bf.load14, -16711681, !dbg !4397
  %bf.set17 = or i32 %bf.clear16, %bf.shl, !dbg !4397
  br label %if.end26, !dbg !4398

if.else:                                          ; preds = %if.end
  %call18 = tail call i32 @mode_for_size(i32 %precision, i32 4, i32 0) #7, !dbg !4399
  %bf.load21 = load i32, i32* %precision2, align 4, !dbg !4399
  %bf.value22 = shl i32 %call18, 16, !dbg !4399
  %bf.shl23 = and i32 %bf.value22, 16711680, !dbg !4399
  %bf.clear24 = and i32 %bf.load21, -16711681, !dbg !4399
  %bf.set25 = or i32 %bf.clear24, %bf.shl23, !dbg !4399
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then7
  %storemerge = phi i32 [ %bf.set17, %if.then7 ], [ %bf.set25, %if.else ], !dbg !4400
  store i32 %storemerge, i32* %precision2, align 4, !dbg !4400
  tail call void @layout_type(%union.tree_node* %call) #7, !dbg !4401
  ret %union.tree_node* %call, !dbg !4402
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @make_accum_type(i32 %precision, i32 %unsignedp, i32 %satp) local_unnamed_addr #5 !dbg !4403 {
entry:
  call void @llvm.dbg.value(metadata i32 %precision, metadata !4405, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i32 %unsignedp, metadata !4406, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.value(metadata i32 %satp, metadata !4407, metadata !DIExpression()), !dbg !4409
  %call = tail call %union.tree_node* @make_node_stat(i32 11) #6, !dbg !4410
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4408, metadata !DIExpression()), !dbg !4409
  %type1 = bitcast %union.tree_node* %call to %struct.tree_type*, !dbg !4411
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !4411
  %bf.load = load i32, i32* %precision2, align 4, !dbg !4412
  %bf.value = and i32 %precision, 1023, !dbg !4412
  %bf.clear = and i32 %bf.load, -1024, !dbg !4412
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !4412
  store i32 %bf.set, i32* %precision2, align 4, !dbg !4412
  %tobool = icmp eq i32 %satp, 0, !dbg !4413
  br i1 %tobool, label %if.end, label %if.then, !dbg !4415

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4416
  %bf.load3 = load i64, i64* %0, align 8, !dbg !4417
  %bf.set5 = or i64 %bf.load3, 2147483648, !dbg !4417
  store i64 %bf.set5, i64* %0, align 8, !dbg !4417
  br label %if.end, !dbg !4416

if.end:                                           ; preds = %entry, %if.then
  %tobool6 = icmp eq i32 %unsignedp, 0, !dbg !4418
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !4420

if.then7:                                         ; preds = %if.end
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4421
  %bf.load9 = load i64, i64* %1, align 8, !dbg !4423
  %bf.set11 = or i64 %bf.load9, 2097152, !dbg !4423
  store i64 %bf.set11, i64* %1, align 8, !dbg !4423
  %call12 = tail call i32 @mode_for_size(i32 %precision, i32 7, i32 0) #7, !dbg !4424
  %bf.load14 = load i32, i32* %precision2, align 4, !dbg !4424
  %bf.value15 = shl i32 %call12, 16, !dbg !4424
  %bf.shl = and i32 %bf.value15, 16711680, !dbg !4424
  %bf.clear16 = and i32 %bf.load14, -16711681, !dbg !4424
  %bf.set17 = or i32 %bf.clear16, %bf.shl, !dbg !4424
  br label %if.end26, !dbg !4425

if.else:                                          ; preds = %if.end
  %call18 = tail call i32 @mode_for_size(i32 %precision, i32 6, i32 0) #7, !dbg !4426
  %bf.load21 = load i32, i32* %precision2, align 4, !dbg !4426
  %bf.value22 = shl i32 %call18, 16, !dbg !4426
  %bf.shl23 = and i32 %bf.value22, 16711680, !dbg !4426
  %bf.clear24 = and i32 %bf.load21, -16711681, !dbg !4426
  %bf.set25 = or i32 %bf.clear24, %bf.shl23, !dbg !4426
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then7
  %storemerge = phi i32 [ %bf.set17, %if.then7 ], [ %bf.set25, %if.else ], !dbg !4427
  store i32 %storemerge, i32* %precision2, align 4, !dbg !4427
  tail call void @layout_type(%union.tree_node* %call) #7, !dbg !4428
  ret %union.tree_node* %call, !dbg !4429
}

; Function Attrs: nounwind uwtable
define dso_local void @initialize_sizetypes(i8 zeroext %signed_p) local_unnamed_addr #5 !dbg !4430 {
entry:
  call void @llvm.dbg.value(metadata i8 %signed_p, metadata !4434, metadata !DIExpression()), !dbg !4437
  %call = tail call %union.tree_node* @make_node_stat(i32 8) #6, !dbg !4438
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4435, metadata !DIExpression()), !dbg !4437
  %0 = load i8, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @mode_size, i64 0, i64 16), align 16, !dbg !4439
  %conv1 = zext i8 %0 to i32, !dbg !4439
  %mul = shl nuw nsw i32 %conv1, 3, !dbg !4439
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4436, metadata !DIExpression()), !dbg !4437
  %type = bitcast %union.tree_node* %call to %struct.tree_type*, !dbg !4440
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i64 0, i32 6, !dbg !4440
  %bf.load = load i32, i32* %mode, align 4, !dbg !4440
  %bf.clear = and i32 %bf.load, -16711681, !dbg !4440
  %bf.set = or i32 %bf.clear, 1048576, !dbg !4440
  store i32 %bf.set, i32* %mode, align 4, !dbg !4440
  %call4 = tail call i32 @get_mode_alignment(i32 16) #7, !dbg !4441
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4442
  store i32 %call4, i32* %1, align 8, !dbg !4443
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4444
  %bf.load6 = load i64, i64* %2, align 8, !dbg !4445
  %bf.load9 = load i32, i32* %mode, align 4, !dbg !4446
  %bf.set11 = or i32 %bf.load9, 1024, !dbg !4446
  store i32 %bf.set11, i32* %mode, align 4, !dbg !4446
  %tobool = icmp eq i8 %signed_p, 0, !dbg !4447
  %3 = zext i1 %tobool to i64, !dbg !4448
  %bf.shl = shl nuw nsw i64 %3, 21, !dbg !4448
  %bf.clear14 = and i64 %bf.load6, -4398048608257, !dbg !4448
  %bf.set15 = or i64 %bf.clear14, %bf.shl, !dbg !4448
  store i64 %bf.set15, i64* %2, align 8, !dbg !4448
  %conv16 = zext i32 %mul to i64, !dbg !4449
  %call17 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %call, i64 %conv16) #6, !dbg !4450
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4451
  store %union.tree_node* %call17, %union.tree_node** %4, align 8, !dbg !4452
  %5 = load i8, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @mode_size, i64 0, i64 16), align 16, !dbg !4453
  %conv20 = zext i8 %5 to i64, !dbg !4453
  %call21 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %call, i64 %conv20) #6, !dbg !4454
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4455
  store %union.tree_node* %call21, %union.tree_node** %6, align 8, !dbg !4456
  %bf.load25 = load i32, i32* %mode, align 4, !dbg !4457
  %bf.value26 = and i32 %mul, 1016, !dbg !4457
  %bf.clear27 = and i32 %bf.load25, -1024, !dbg !4457
  %bf.set28 = or i32 %bf.clear27, %bf.value26, !dbg !4457
  store i32 %bf.set28, i32* %mode, align 4, !dbg !4457
  %conv32 = zext i1 %tobool to i8, !dbg !4458
  tail call void @set_min_and_max_values_for_integral_type(%union.tree_node* %call, i32 %mul, i8 zeroext %conv32) #7, !dbg !4459
  store %union.tree_node* %call, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16, !dbg !4460
  %call33 = tail call %union.tree_node* @build_distinct_type_copy(%union.tree_node* %call) #6, !dbg !4461
  store %union.tree_node* %call33, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2), align 16, !dbg !4462
  ret void, !dbg !4463
}

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @set_min_and_max_values_for_integral_type(%union.tree_node* %type, i32 %precision, i8 zeroext %is_unsigned) local_unnamed_addr #5 !dbg !4464 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4468, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i32 %precision, metadata !4469, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i8 %is_unsigned, metadata !4470, metadata !DIExpression()), !dbg !4473
  %tobool = icmp eq i8 %is_unsigned, 0, !dbg !4474
  br i1 %tobool, label %if.else, label %if.then, !dbg !4476

if.then:                                          ; preds = %entry
  %call = tail call %union.tree_node* @build_int_cst(%union.tree_node* %type, i64 0) #6, !dbg !4477
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4471, metadata !DIExpression()), !dbg !4473
  %cmp = icmp sgt i32 %precision, 63, !dbg !4479
  %sh_prom = zext i32 %precision to i64, !dbg !4480
  %notmask2 = shl nsw i64 -1, %sh_prom, !dbg !4480
  %sub1 = xor i64 %notmask2, -1, !dbg !4480
  %cond = select i1 %cmp, i64 -1, i64 %sub1, !dbg !4480
  %cmp3 = icmp sgt i32 %precision, 64, !dbg !4481
  %sub6 = sub i32 128, %precision, !dbg !4482
  %sh_prom7 = zext i32 %sub6 to i64, !dbg !4482
  %shr = lshr i64 -1, %sh_prom7, !dbg !4482
  %cond10 = select i1 %cmp3, i64 %shr, i64 0, !dbg !4482
  %call11 = tail call %union.tree_node* @build_int_cst_wide(%union.tree_node* %type, i64 %cond, i64 %cond10) #6, !dbg !4483
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !4472, metadata !DIExpression()), !dbg !4473
  br label %if.end, !dbg !4484

if.else:                                          ; preds = %entry
  %cmp13 = icmp sgt i32 %precision, 64, !dbg !4485
  %sub16 = add nsw i32 %precision, -1, !dbg !4487
  %sh_prom17 = zext i32 %sub16 to i64, !dbg !4487
  %shl18 = shl i64 -1, %sh_prom17, !dbg !4487
  %cond20 = select i1 %cmp13, i64 0, i64 %shl18, !dbg !4487
  %cmp23 = icmp sgt i32 %precision, 65, !dbg !4488
  %sub26 = add nsw i32 %precision, -65, !dbg !4489
  %cond29 = select i1 %cmp23, i32 %sub26, i32 0, !dbg !4489
  %sh_prom30 = zext i32 %cond29 to i64, !dbg !4490
  %shl31 = shl i64 -1, %sh_prom30, !dbg !4490
  %call32 = tail call %union.tree_node* @build_int_cst_wide(%union.tree_node* %type, i64 %cond20, i64 %shl31) #6, !dbg !4491
  call void @llvm.dbg.value(metadata %union.tree_node* %call32, metadata !4471, metadata !DIExpression()), !dbg !4473
  %sub40 = xor i64 %shl18, -1, !dbg !4492
  %cond42 = select i1 %cmp13, i64 -1, i64 %sub40, !dbg !4492
  %cmp45 = icmp sgt i32 %sub26, 0, !dbg !4493
  %sh_prom49 = zext i32 %sub26 to i64, !dbg !4494
  %notmask1 = shl nsw i64 -1, %sh_prom49, !dbg !4494
  %sub51 = xor i64 %notmask1, -1, !dbg !4494
  %cond54 = select i1 %cmp45, i64 %sub51, i64 0, !dbg !4494
  %call55 = tail call %union.tree_node* @build_int_cst_wide(%union.tree_node* %type, i64 %cond42, i64 %cond54) #6, !dbg !4495
  call void @llvm.dbg.value(metadata %union.tree_node* %call55, metadata !4472, metadata !DIExpression()), !dbg !4473
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %min_value.0 = phi %union.tree_node* [ %call, %if.then ], [ %call32, %if.else ], !dbg !4496
  %max_value.0 = phi %union.tree_node* [ %call11, %if.then ], [ %call55, %if.else ], !dbg !4496
  call void @llvm.dbg.value(metadata %union.tree_node* %max_value.0, metadata !4472, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata %union.tree_node* %min_value.0, metadata !4471, metadata !DIExpression()), !dbg !4473
  %minval = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, !dbg !4497
  %0 = bitcast %struct.lang_decl** %minval to %union.tree_node**, !dbg !4497
  store %union.tree_node* %min_value.0, %union.tree_node** %0, align 8, !dbg !4498
  %maxval = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4499
  %1 = bitcast %struct.rtx_def** %maxval to %union.tree_node**, !dbg !4499
  store %union.tree_node* %max_value.0, %union.tree_node** %1, align 8, !dbg !4500
  ret void, !dbg !4501
}

declare dso_local %union.tree_node* @build_distinct_type_copy(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @set_sizetype(%union.tree_node* %type) local_unnamed_addr #5 !dbg !4502 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4504, metadata !DIExpression()), !dbg !4512
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !4513
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !4513
  %bf.load = load i32, i32* %precision, align 4, !dbg !4513
  %bf.clear = and i32 %bf.load, 1023, !dbg !4513
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4506, metadata !DIExpression()), !dbg !4512
  %add3 = add nuw nsw i32 %bf.clear, 4, !dbg !4514
  %0 = load i8, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @mode_size, i64 0, i64 17), align 1, !dbg !4514
  %conv4 = zext i8 %0 to i32, !dbg !4514
  %mul = shl nuw nsw i32 %conv4, 3, !dbg !4514
  %cmp = icmp ult i32 %add3, %mul, !dbg !4514
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4514

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4514

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4514

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add3, %cond.true ], [ %mul, %cond.false ], !dbg !4514
  call void @llvm.dbg.value(metadata i32 %cond, metadata !4507, metadata !DIExpression()), !dbg !4512
  %call = tail call i32 @smallest_mode_for_size(i32 %cond, i32 2) #7, !dbg !4515
  %idxprom = zext i32 %call to i64, !dbg !4515
  %arrayidx = getelementptr inbounds [87 x i16], [87 x i16]* @mode_precision, i64 0, i64 %idxprom, !dbg !4515
  %1 = load i16, i16* %arrayidx, align 2, !dbg !4515
  %conv15 = zext i16 %1 to i32, !dbg !4515
  call void @llvm.dbg.value(metadata i32 %conv15, metadata !4507, metadata !DIExpression()), !dbg !4512
  %2 = icmp ult i32 %conv15, 128, !dbg !4516
  %spec.select = select i1 %2, i32 %conv15, i32 128, !dbg !4516
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4507, metadata !DIExpression()), !dbg !4512
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4517
  %bf.load18 = load i64, i64* %3, align 8, !dbg !4517
  %4 = load i64*, i64** bitcast ([4 x %union.tree_node*]* @sizetype_tab to i64**), align 16, !dbg !4517
  %bf.load21 = load i64, i64* %4, align 8, !dbg !4517
  %bf.lshr11 = xor i64 %bf.load18, %bf.load21, !dbg !4517
  %5 = and i64 %bf.lshr11, 2097152, !dbg !4517
  %cmp25 = icmp eq i64 %5, 0, !dbg !4517
  br i1 %cmp25, label %cond.end29, label %cond.true27, !dbg !4517

cond.true27:                                      ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4517
  br label %cond.end29, !dbg !4517

cond.end29:                                       ; preds = %cond.end, %cond.true27
  %call31 = tail call %union.tree_node* @build_distinct_type_copy(%union.tree_node* %type) #6, !dbg !4518
  call void @llvm.dbg.value(metadata %union.tree_node* %call31, metadata !4505, metadata !DIExpression()), !dbg !4512
  %6 = load %struct.tree_type*, %struct.tree_type** bitcast ([4 x %union.tree_node*]* @sizetype_tab to %struct.tree_type**), align 16, !dbg !4519
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i64 0, i32 1, !dbg !4519
  %7 = bitcast %union.tree_node** %values to i64*, !dbg !4519
  %8 = load i64, i64* %7, align 8, !dbg !4519
  %values34 = getelementptr inbounds %union.tree_node, %union.tree_node* %call31, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4520
  %9 = bitcast i32* %values34 to i64*, !dbg !4521
  store i64 %8, i64* %9, align 8, !dbg !4521
  %10 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i64 0, i32 0, i32 0, i32 0, !dbg !4522
  %bf.load36 = load i64, i64* %10, align 8, !dbg !4522
  %bf.cast39 = and i64 %bf.load36, 134217728, !dbg !4522
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call31, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4523
  %bf.load41 = load i64, i64* %11, align 8, !dbg !4524
  %bf.clear42 = and i64 %bf.load41, -134217729, !dbg !4524
  %bf.set = or i64 %bf.clear42, %bf.cast39, !dbg !4524
  store i64 %bf.set, i64* %11, align 8, !dbg !4524
  %12 = inttoptr i64 %8 to %struct.tree_common*, !dbg !4525
  %type45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i64 0, i32 2, !dbg !4525
  store %union.tree_node* %type, %union.tree_node** %type45, align 8, !dbg !4526
  %13 = load %struct.tree_type*, %struct.tree_type** bitcast ([4 x %union.tree_node*]* @sizetype_tab to %struct.tree_type**), align 16, !dbg !4527
  %uid = getelementptr inbounds %struct.tree_type, %struct.tree_type* %13, i64 0, i32 5, !dbg !4527
  %14 = load i32, i32* %uid, align 8, !dbg !4527
  %uid48 = getelementptr inbounds %union.tree_node, %union.tree_node* %call31, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4528
  %15 = bitcast i40* %uid48 to i32*, !dbg !4528
  store i32 %14, i32* %15, align 8, !dbg !4529
  %type49 = bitcast %union.tree_node* %call31 to %struct.tree_type*, !dbg !4530
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type49, i64 0, i32 6, !dbg !4530
  %bf.load50 = load i32, i32* %no_force_blk_flag, align 4, !dbg !4531
  %bf.set52 = or i32 %bf.load50, 1024, !dbg !4531
  store i32 %bf.set52, i32* %no_force_blk_flag, align 4, !dbg !4531
  %16 = bitcast %struct.tree_type* %13 to i8*, !dbg !4532
  %17 = bitcast %union.tree_node* %call31 to i8*, !dbg !4533
  %.cast = bitcast %struct.tree_type* %13 to %union.tree_node*, !dbg !4534
  %call53 = tail call i64 @tree_size(%union.tree_node* %.cast) #6, !dbg !4535
  %call54 = tail call i8* @memcpy(i8* %16, i8* %17, i64 %call53) #6, !dbg !4536
  %18 = load i64, i64* bitcast ([4 x %union.tree_node*]* @sizetype_tab to i64*), align 16, !dbg !4537
  %.cast1 = inttoptr i64 %18 to %struct.tree_type*, !dbg !4538
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %.cast1, i64 0, i32 16, !dbg !4538
  %19 = bitcast %union.tree_node** %main_variant to i64*, !dbg !4539
  store i64 %18, i64* %19, align 8, !dbg !4539
  %canonical = getelementptr inbounds %struct.tree_type, %struct.tree_type* %.cast1, i64 0, i32 19, !dbg !4540
  %20 = bitcast %union.tree_node** %canonical to i64*, !dbg !4541
  store i64 %18, i64* %20, align 8, !dbg !4541
  %call57 = tail call %union.tree_node* @make_node_stat(i32 8) #6, !dbg !4542
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !4505, metadata !DIExpression()), !dbg !4512
  %call58 = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4543
  %21 = getelementptr inbounds %union.tree_node, %union.tree_node* %call57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !4544
  store %union.tree_node* %call58, %union.tree_node** %21, align 8, !dbg !4545
  %22 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2) to %struct.tree_type**), align 16, !dbg !4546
  %values61 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %22, i64 0, i32 1, !dbg !4546
  %23 = bitcast %union.tree_node** %values61 to i64*, !dbg !4546
  %24 = load i64, i64* %23, align 8, !dbg !4546
  %values63 = getelementptr inbounds %union.tree_node, %union.tree_node* %call57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4547
  %25 = bitcast i32* %values63 to i64*, !dbg !4548
  store i64 %24, i64* %25, align 8, !dbg !4548
  %26 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %22, i64 0, i32 0, i32 0, i32 0, !dbg !4549
  %bf.load65 = load i64, i64* %26, align 8, !dbg !4549
  %bf.cast68 = and i64 %bf.load65, 134217728, !dbg !4549
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %call57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4550
  %bf.load70 = load i64, i64* %27, align 8, !dbg !4551
  %bf.clear73 = and i64 %bf.load70, -134217729, !dbg !4551
  %bf.set74 = or i64 %bf.clear73, %bf.cast68, !dbg !4551
  store i64 %bf.set74, i64* %27, align 8, !dbg !4551
  %type76 = bitcast %union.tree_node* %call57 to %struct.tree_type*, !dbg !4552
  %precision77 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type76, i64 0, i32 6, !dbg !4552
  %bf.load78 = load i32, i32* %precision77, align 4, !dbg !4553
  %bf.clear80 = and i32 %bf.load78, -1024, !dbg !4553
  %bf.set81 = or i32 %bf.clear80, %spec.select, !dbg !4553
  store i32 %bf.set81, i32* %precision77, align 4, !dbg !4553
  %28 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2) to %struct.tree_type**), align 16, !dbg !4554
  %uid83 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %28, i64 0, i32 5, !dbg !4554
  %29 = load i32, i32* %uid83, align 8, !dbg !4554
  %uid85 = getelementptr inbounds %union.tree_node, %union.tree_node* %call57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4555
  %30 = bitcast i40* %uid85 to i32*, !dbg !4555
  store i32 %29, i32* %30, align 8, !dbg !4556
  %bf.set90 = or i32 %bf.set81, 1024, !dbg !4557
  store i32 %bf.set90, i32* %precision77, align 4, !dbg !4557
  %31 = bitcast %struct.tree_type* %28 to i8*, !dbg !4558
  %32 = bitcast %union.tree_node* %call57 to i8*, !dbg !4559
  %.cast3 = bitcast %struct.tree_type* %28 to %union.tree_node*, !dbg !4560
  %call91 = tail call i64 @tree_size(%union.tree_node* %.cast3) #6, !dbg !4561
  %call92 = tail call i8* @memcpy(i8* %31, i8* %32, i64 %call91) #6, !dbg !4562
  %33 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2) to i64*), align 16, !dbg !4563
  %.cast4 = inttoptr i64 %33 to %struct.tree_type*, !dbg !4564
  %main_variant94 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %.cast4, i64 0, i32 16, !dbg !4564
  %34 = bitcast %union.tree_node** %main_variant94 to i64*, !dbg !4565
  store i64 %33, i64* %34, align 8, !dbg !4565
  %canonical96 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %.cast4, i64 0, i32 19, !dbg !4566
  %35 = bitcast %union.tree_node** %canonical96 to i64*, !dbg !4567
  store i64 %33, i64* %35, align 8, !dbg !4567
  %bf.load98 = load i64, i64* %3, align 8, !dbg !4568
  %bf.cast1016 = and i64 %bf.load98, 2097152, !dbg !4568
  %tobool = icmp eq i64 %bf.cast1016, 0, !dbg !4568
  %36 = inttoptr i64 %33 to %union.tree_node*, !dbg !4570
  br i1 %tobool, label %if.else, label %if.then102, !dbg !4571

if.then102:                                       ; preds = %cond.end29
  tail call void @fixup_unsigned_type(%union.tree_node* %36) #7, !dbg !4572
  %call103 = tail call %union.tree_node* @make_signed_type(i32 %bf.clear) #7, !dbg !4574
  store %union.tree_node* %call103, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8, !dbg !4575
  %.cast9 = bitcast %union.tree_node* %call103 to %struct.tree_type*, !dbg !4576
  %no_force_blk_flag105 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %.cast9, i64 0, i32 6, !dbg !4576
  %bf.load106 = load i32, i32* %no_force_blk_flag105, align 4, !dbg !4577
  %bf.set108 = or i32 %bf.load106, 1024, !dbg !4577
  store i32 %bf.set108, i32* %no_force_blk_flag105, align 4, !dbg !4577
  %call109 = tail call %union.tree_node* @make_signed_type(i32 %spec.select) #7, !dbg !4578
  store %union.tree_node* %call109, %union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8, !dbg !4579
  %.cast10 = bitcast %union.tree_node* %call109 to %struct.tree_type*, !dbg !4580
  %no_force_blk_flag111 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %.cast10, i64 0, i32 6, !dbg !4580
  %bf.load112 = load i32, i32* %no_force_blk_flag111, align 4, !dbg !4581
  %bf.set114 = or i32 %bf.load112, 1024, !dbg !4581
  store i32 %bf.set114, i32* %no_force_blk_flag111, align 4, !dbg !4581
  br label %if.end115, !dbg !4582

if.else:                                          ; preds = %cond.end29
  tail call void @fixup_signed_type(%union.tree_node* %36) #7, !dbg !4583
  %37 = load i64, i64* bitcast ([4 x %union.tree_node*]* @sizetype_tab to i64*), align 16, !dbg !4585
  store i64 %37, i64* bitcast (%union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1) to i64*), align 8, !dbg !4586
  %38 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2) to i64*), align 16, !dbg !4587
  store i64 %38, i64* bitcast (%union.tree_node** getelementptr inbounds ([4 x %union.tree_node*], [4 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3) to i64*), align 8, !dbg !4588
  br label %if.end115

if.end115:                                        ; preds = %if.else, %if.then102
  %bf.load117 = load i64, i64* %3, align 8, !dbg !4589
  %bf.cast1207 = and i64 %bf.load117, 2097152, !dbg !4589
  %tobool121 = icmp eq i64 %bf.cast1207, 0, !dbg !4589
  br i1 %tobool121, label %if.end130, label %if.then122, !dbg !4590

if.then122:                                       ; preds = %if.end115
  %39 = load %struct.tree_type*, %struct.tree_type** bitcast ([4 x %union.tree_node*]* @sizetype_tab to %struct.tree_type**), align 16, !dbg !4591
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %39, i64 0, i32 14, !dbg !4591
  %40 = load %union.tree_node*, %union.tree_node** %maxval, align 8, !dbg !4591
  call void @llvm.dbg.value(metadata %union.tree_node* %40, metadata !4508, metadata !DIExpression()), !dbg !4592
  %.cast8 = bitcast %struct.tree_type* %39 to %union.tree_node*, !dbg !4593
  %int_cst124 = getelementptr inbounds %union.tree_node, %union.tree_node* %40, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4594
  %low = bitcast i32* %int_cst124 to i64*, !dbg !4594
  %41 = load i64, i64* %low, align 8, !dbg !4594
  %high = getelementptr inbounds i32, i32* %int_cst124, i64 2, !dbg !4595
  %42 = bitcast i32* %high to i64*, !dbg !4595
  %43 = load i64, i64* %42, align 8, !dbg !4595
  %call127 = tail call %union.tree_node* @build_int_cst_wide_type(%union.tree_node* %.cast8, i64 %41, i64 %43) #6, !dbg !4596
  call void @llvm.dbg.value(metadata %union.tree_node* %call127, metadata !4511, metadata !DIExpression()), !dbg !4592
  %44 = load %struct.tree_type*, %struct.tree_type** bitcast ([4 x %union.tree_node*]* @sizetype_tab to %struct.tree_type**), align 16, !dbg !4597
  %maxval129 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %44, i64 0, i32 14, !dbg !4597
  store %union.tree_node* %call127, %union.tree_node** %maxval129, align 8, !dbg !4598
  br label %if.end130, !dbg !4599

if.end130:                                        ; preds = %if.end115, %if.then122
  ret void, !dbg !4600
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i64 @tree_size(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst_wide_type(%union.tree_node*, i64, i64) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst_wide(%union.tree_node*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @get_best_mode(i32 %bitsize, i32 %bitpos, i32 %align, i32 %largest_mode, i32 %volatilep) local_unnamed_addr #5 !dbg !4601 {
entry:
  call void @llvm.dbg.value(metadata i32 %bitsize, metadata !4605, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i32 %bitpos, metadata !4606, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i32 %align, metadata !4607, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i32 %largest_mode, metadata !4608, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i32 %volatilep, metadata !4609, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i32 0, metadata !4611, metadata !DIExpression()), !dbg !4616
  br label %for.cond, !dbg !4617

for.cond:                                         ; preds = %for.inc, %entry
  %mode.0.in.in = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 2), %entry ], [ %arrayidx9, %for.inc ]
  %unit.0 = phi i32 [ 0, %entry ], [ %mul, %for.inc ], !dbg !4616
  %mode.0.in = load i8, i8* %mode.0.in.in, align 1, !dbg !4619
  call void @llvm.dbg.value(metadata i32 %unit.0, metadata !4611, metadata !DIExpression()), !dbg !4616
  %cmp = icmp eq i8 %mode.0.in, 0, !dbg !4620
  br i1 %cmp, label %for.end, label %for.body, !dbg !4622

for.body:                                         ; preds = %for.cond
  %idxprom = zext i8 %mode.0.in to i64, !dbg !4623
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !4623
  %0 = load i8, i8* %arrayidx, align 1, !dbg !4623
  %conv3 = zext i8 %0 to i32, !dbg !4623
  %mul = shl nuw nsw i32 %conv3, 3, !dbg !4623
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4611, metadata !DIExpression()), !dbg !4616
  %rem = urem i32 %bitpos, %mul, !dbg !4625
  %add = add i32 %rem, %bitsize, !dbg !4627
  %cmp6 = icmp ugt i32 %add, %mul, !dbg !4628
  br i1 %cmp6, label %for.inc, label %for.end, !dbg !4629

for.inc:                                          ; preds = %for.body
  %arrayidx9 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom, !dbg !4630
  br label %for.cond, !dbg !4631, !llvm.loop !4632

for.end:                                          ; preds = %for.body, %for.cond
  %mode.0.in.lcssa = phi i8 [ %mode.0.in, %for.body ], [ %mode.0.in, %for.cond ], !dbg !4619
  %cmp.lcssa = phi i1 [ %cmp, %for.body ], [ %cmp, %for.cond ], !dbg !4620
  %unit.1 = phi i32 [ %unit.0, %for.cond ], [ %mul, %for.body ], !dbg !4616
  %mode.0.le = zext i8 %mode.0.in.lcssa to i32, !dbg !4619
  call void @llvm.dbg.value(metadata i32 %unit.1, metadata !4611, metadata !DIExpression()), !dbg !4616
  br i1 %cmp.lcssa, label %cleanup103, label %lor.lhs.false, !dbg !4634

lor.lhs.false:                                    ; preds = %for.end
  %1 = load i32, i32* @ix86_isa_flags, align 4, !dbg !4636
  %and = and i32 %1, 32, !dbg !4636
  %cmp13 = icmp eq i32 %and, 0, !dbg !4636
  %cond = select i1 %cmp13, i32 128, i32 256, !dbg !4636
  %cmp15 = icmp ult i32 %unit.1, %cond, !dbg !4636
  br i1 %cmp15, label %cond.end, label %cond.false, !dbg !4636

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end, !dbg !4636

cond.end:                                         ; preds = %lor.lhs.false, %cond.false
  %cond21 = phi i32 [ %cond, %cond.false ], [ %unit.1, %lor.lhs.false ], !dbg !4636
  %cmp22 = icmp ugt i32 %cond21, %align, !dbg !4637
  br i1 %cmp22, label %cleanup103, label %lor.lhs.false24, !dbg !4638

lor.lhs.false24:                                  ; preds = %cond.end
  %cmp25 = icmp eq i32 %largest_mode, 0, !dbg !4639
  br i1 %cmp25, label %if.end37, label %land.lhs.true, !dbg !4640

land.lhs.true:                                    ; preds = %lor.lhs.false24
  %idxprom27 = zext i32 %largest_mode to i64, !dbg !4641
  %arrayidx28 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom27, !dbg !4641
  %2 = load i8, i8* %arrayidx28, align 1, !dbg !4641
  %conv30 = zext i8 %2 to i32, !dbg !4641
  %mul31 = shl nuw nsw i32 %conv30, 3, !dbg !4641
  %cmp34 = icmp ugt i32 %unit.1, %mul31, !dbg !4642
  br i1 %cmp34, label %cleanup103, label %if.end37, !dbg !4643

if.end37:                                         ; preds = %lor.lhs.false24, %land.lhs.true
  %tobool = icmp eq i32 %volatilep, 0, !dbg !4644
  br i1 %tobool, label %if.end102, label %land.lhs.true38, !dbg !4645

land.lhs.true38:                                  ; preds = %if.end37
  %3 = load i8 ()*, i8 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 22), align 8, !dbg !4646
  %call = tail call zeroext i8 %3() #6, !dbg !4647
  %tobool39 = icmp eq i8 %call, 0, !dbg !4647
  br i1 %tobool39, label %if.then40, label %if.end102, !dbg !4648

if.then40:                                        ; preds = %land.lhs.true38
  call void @llvm.dbg.value(metadata i32 0, metadata !4612, metadata !DIExpression()), !dbg !4649
  %add53 = add nsw i32 %bitpos, %bitsize, !dbg !4650
  %sub = add nsw i32 %add53, -1, !dbg !4650
  %4 = load i32, i32* @ix86_isa_flags, align 4, !dbg !4650
  %and61 = and i32 %4, 32, !dbg !4650
  %cmp62 = icmp eq i32 %and61, 0, !dbg !4650
  %cond64 = select i1 %cmp62, i32 128, i32 256, !dbg !4650
  %cmp65 = icmp ugt i32 %cond64, %align, !dbg !4650
  %idxprom81 = zext i32 %largest_mode to i64, !dbg !4650
  %arrayidx82 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom81, !dbg !4650
  br i1 %cmp65, label %if.then40.split.us, label %if.then40.if.then40.split_crit_edge, !dbg !4655

if.then40.if.then40.split_crit_edge:              ; preds = %if.then40
  br label %for.cond42, !dbg !4655

if.then40.split.us:                               ; preds = %if.then40
  br i1 %cmp25, label %if.then40.split.us.split.us, label %if.then40.split.us.if.then40.split.us.split_crit_edge, !dbg !4655

if.then40.split.us.if.then40.split.us.split_crit_edge: ; preds = %if.then40.split.us
  br label %for.cond42.us, !dbg !4655

if.then40.split.us.split.us:                      ; preds = %if.then40.split.us
  br label %for.cond42.us.us, !dbg !4655

for.cond42.us.us:                                 ; preds = %for.inc92.us.us, %if.then40.split.us.split.us
  %wide_mode.0.us.us = phi i32 [ 0, %if.then40.split.us.split.us ], [ %wide_mode.1.us.us, %for.inc92.us.us ], !dbg !4649
  %tmode.0.in.in.us.us = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 2), %if.then40.split.us.split.us ], [ %arrayidx94.us.us, %for.inc92.us.us ]
  %tmode.0.in.us.us = load i8, i8* %tmode.0.in.in.us.us, align 1, !dbg !4656
  %tmode.0.us.us = zext i8 %tmode.0.in.us.us to i32, !dbg !4656
  call void @llvm.dbg.value(metadata i32 %tmode.0.us.us, metadata !4615, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.0.us.us, metadata !4612, metadata !DIExpression()), !dbg !4649
  %cmp43.us.us = icmp eq i8 %tmode.0.in.us.us, 0, !dbg !4657
  br i1 %cmp43.us.us, label %for.end96.us-lcssa.us.us-lcssa.us, label %for.body45.us.us, !dbg !4658

for.body45.us.us:                                 ; preds = %for.cond42.us.us
  %idxprom46.us.us = zext i8 %tmode.0.in.us.us to i64, !dbg !4659
  %arrayidx47.us.us = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom46.us.us, !dbg !4659
  %5 = load i8, i8* %arrayidx47.us.us, align 1, !dbg !4659
  %conv49.us.us = zext i8 %5 to i32, !dbg !4659
  %mul50.us.us = shl nuw nsw i32 %conv49.us.us, 3, !dbg !4659
  call void @llvm.dbg.value(metadata i32 %mul50.us.us, metadata !4611, metadata !DIExpression()), !dbg !4616
  %div.us.us = udiv i32 %bitpos, %mul50.us.us, !dbg !4660
  %div54.us.us = udiv i32 %sub, %mul50.us.us, !dbg !4661
  %cmp55.us.us = icmp eq i32 %div.us.us, %div54.us.us, !dbg !4662
  %cmp58.us.us = icmp ult i8 %5, 5, !dbg !4663
  %or.cond.us.us = and i1 %cmp55.us.us, %cmp58.us.us, !dbg !4664
  br i1 %or.cond.us.us, label %land.lhs.true60.us.us, label %for.inc92.us.us, !dbg !4664

land.lhs.true60.us.us:                            ; preds = %for.body45.us.us
  %cmp75.us.us = icmp ugt i32 %mul50.us.us, %align, !dbg !4665
  br i1 %cmp75.us.us, label %for.inc92.us.us, label %land.lhs.true77.us.us, !dbg !4666

land.lhs.true77.us.us:                            ; preds = %land.lhs.true60.us.us
  call void @llvm.dbg.value(metadata i32 %tmode.0.us.us, metadata !4612, metadata !DIExpression()), !dbg !4649
  br label %for.inc92.us.us, !dbg !4667

for.inc92.us.us:                                  ; preds = %land.lhs.true77.us.us, %land.lhs.true60.us.us, %for.body45.us.us
  %wide_mode.1.us.us = phi i32 [ %tmode.0.us.us, %land.lhs.true77.us.us ], [ %wide_mode.0.us.us, %land.lhs.true60.us.us ], [ %wide_mode.0.us.us, %for.body45.us.us ], !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.1.us.us, metadata !4612, metadata !DIExpression()), !dbg !4649
  %arrayidx94.us.us = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom46.us.us, !dbg !4668
  br label %for.cond42.us.us, !dbg !4669, !llvm.loop !4670

for.end96.us-lcssa.us.us-lcssa.us:                ; preds = %for.cond42.us.us
  %wide_mode.0.us.us.lcssa = phi i32 [ %wide_mode.0.us.us, %for.cond42.us.us ], !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.0.us.us.lcssa, metadata !4612, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.0.us.us.lcssa, metadata !4612, metadata !DIExpression()), !dbg !4649
  br label %for.end96.us-lcssa.us, !dbg !4672

for.cond42.us:                                    ; preds = %for.inc92.us, %if.then40.split.us.if.then40.split.us.split_crit_edge
  %wide_mode.0.us = phi i32 [ 0, %if.then40.split.us.if.then40.split.us.split_crit_edge ], [ %wide_mode.1.us, %for.inc92.us ], !dbg !4649
  %tmode.0.in.in.us = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 2), %if.then40.split.us.if.then40.split.us.split_crit_edge ], [ %arrayidx94.us, %for.inc92.us ]
  %tmode.0.in.us = load i8, i8* %tmode.0.in.in.us, align 1, !dbg !4656
  %tmode.0.us = zext i8 %tmode.0.in.us to i32, !dbg !4656
  call void @llvm.dbg.value(metadata i32 %tmode.0.us, metadata !4615, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.0.us, metadata !4612, metadata !DIExpression()), !dbg !4649
  %cmp43.us = icmp eq i8 %tmode.0.in.us, 0, !dbg !4657
  br i1 %cmp43.us, label %for.end96.us-lcssa.us.us-lcssa, label %for.body45.us, !dbg !4658

for.body45.us:                                    ; preds = %for.cond42.us
  %idxprom46.us = zext i8 %tmode.0.in.us to i64, !dbg !4659
  %arrayidx47.us = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom46.us, !dbg !4659
  %6 = load i8, i8* %arrayidx47.us, align 1, !dbg !4659
  %conv49.us = zext i8 %6 to i32, !dbg !4659
  %mul50.us = shl nuw nsw i32 %conv49.us, 3, !dbg !4659
  call void @llvm.dbg.value(metadata i32 %mul50.us, metadata !4611, metadata !DIExpression()), !dbg !4616
  %div.us = udiv i32 %bitpos, %mul50.us, !dbg !4660
  %div54.us = udiv i32 %sub, %mul50.us, !dbg !4661
  %cmp55.us = icmp eq i32 %div.us, %div54.us, !dbg !4662
  %cmp58.us = icmp ult i8 %6, 5, !dbg !4663
  %or.cond.us = and i1 %cmp55.us, %cmp58.us, !dbg !4664
  br i1 %or.cond.us, label %land.lhs.true60.us, label %for.inc92.us, !dbg !4664

land.lhs.true60.us:                               ; preds = %for.body45.us
  %cmp75.us = icmp ugt i32 %mul50.us, %align, !dbg !4665
  br i1 %cmp75.us, label %for.inc92.us, label %land.lhs.true77.us, !dbg !4666

land.lhs.true77.us:                               ; preds = %land.lhs.true60.us
  %7 = load i8, i8* %arrayidx82, align 1, !dbg !4674
  %conv84.us = zext i8 %7 to i32, !dbg !4674
  %mul85.us = shl nuw nsw i32 %conv84.us, 3, !dbg !4674
  %cmp88.us = icmp ugt i32 %mul50.us, %mul85.us, !dbg !4675
  br i1 %cmp88.us, label %for.inc92.us, label %if.then90.us, !dbg !4676

if.then90.us:                                     ; preds = %land.lhs.true77.us
  call void @llvm.dbg.value(metadata i32 %tmode.0.us, metadata !4612, metadata !DIExpression()), !dbg !4649
  br label %for.inc92.us, !dbg !4667

for.inc92.us:                                     ; preds = %if.then90.us, %land.lhs.true77.us, %land.lhs.true60.us, %for.body45.us
  %wide_mode.1.us = phi i32 [ %tmode.0.us, %if.then90.us ], [ %wide_mode.0.us, %land.lhs.true77.us ], [ %wide_mode.0.us, %land.lhs.true60.us ], [ %wide_mode.0.us, %for.body45.us ], !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.1.us, metadata !4612, metadata !DIExpression()), !dbg !4649
  %arrayidx94.us = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom46.us, !dbg !4668
  br label %for.cond42.us, !dbg !4669, !llvm.loop !4670

for.end96.us-lcssa.us.us-lcssa:                   ; preds = %for.cond42.us
  %wide_mode.0.us.lcssa = phi i32 [ %wide_mode.0.us, %for.cond42.us ], !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.0.us.lcssa, metadata !4612, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.0.us.lcssa, metadata !4612, metadata !DIExpression()), !dbg !4649
  br label %for.end96.us-lcssa.us, !dbg !4672

for.end96.us-lcssa.us:                            ; preds = %for.end96.us-lcssa.us.us-lcssa.us, %for.end96.us-lcssa.us.us-lcssa
  %wide_mode.0.lcssa.ph.us = phi i32 [ %wide_mode.0.us.lcssa, %for.end96.us-lcssa.us.us-lcssa ], [ %wide_mode.0.us.us.lcssa, %for.end96.us-lcssa.us.us-lcssa.us ]
  br label %for.end96, !dbg !4672

for.cond42:                                       ; preds = %for.inc92, %if.then40.if.then40.split_crit_edge
  %wide_mode.0 = phi i32 [ 0, %if.then40.if.then40.split_crit_edge ], [ %wide_mode.1, %for.inc92 ], !dbg !4649
  %tmode.0.in.in = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @class_narrowest_mode, i64 0, i64 2), %if.then40.if.then40.split_crit_edge ], [ %arrayidx94, %for.inc92 ]
  %tmode.0.in = load i8, i8* %tmode.0.in.in, align 1, !dbg !4656
  %tmode.0 = zext i8 %tmode.0.in to i32, !dbg !4656
  call void @llvm.dbg.value(metadata i32 %tmode.0, metadata !4615, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.0, metadata !4612, metadata !DIExpression()), !dbg !4649
  %cmp43 = icmp eq i8 %tmode.0.in, 0, !dbg !4657
  br i1 %cmp43, label %for.end96.us-lcssa, label %for.body45, !dbg !4658

for.body45:                                       ; preds = %for.cond42
  %idxprom46 = zext i8 %tmode.0.in to i64, !dbg !4659
  %arrayidx47 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom46, !dbg !4659
  %8 = load i8, i8* %arrayidx47, align 1, !dbg !4659
  %conv49 = zext i8 %8 to i32, !dbg !4659
  %mul50 = shl nuw nsw i32 %conv49, 3, !dbg !4659
  call void @llvm.dbg.value(metadata i32 %mul50, metadata !4611, metadata !DIExpression()), !dbg !4616
  %div = udiv i32 %bitpos, %mul50, !dbg !4660
  %div54 = udiv i32 %sub, %mul50, !dbg !4661
  %cmp55 = icmp eq i32 %div, %div54, !dbg !4662
  %cmp58 = icmp ult i8 %8, 5, !dbg !4663
  %or.cond = and i1 %cmp55, %cmp58, !dbg !4664
  br i1 %or.cond, label %land.lhs.true60, label %for.inc92, !dbg !4664

land.lhs.true60:                                  ; preds = %for.body45
  %cmp75 = icmp ugt i32 %mul50, %cond64, !dbg !4665
  br i1 %cmp75, label %for.inc92, label %land.lhs.true77, !dbg !4666

land.lhs.true77:                                  ; preds = %land.lhs.true60
  br i1 %cmp25, label %if.then90, label %lor.lhs.false80, !dbg !4677

lor.lhs.false80:                                  ; preds = %land.lhs.true77
  %9 = load i8, i8* %arrayidx82, align 1, !dbg !4674
  %conv84 = zext i8 %9 to i32, !dbg !4674
  %mul85 = shl nuw nsw i32 %conv84, 3, !dbg !4674
  %cmp88 = icmp ugt i32 %mul50, %mul85, !dbg !4675
  br i1 %cmp88, label %for.inc92, label %if.then90, !dbg !4676

if.then90:                                        ; preds = %lor.lhs.false80, %land.lhs.true77
  call void @llvm.dbg.value(metadata i32 %tmode.0, metadata !4612, metadata !DIExpression()), !dbg !4649
  br label %for.inc92, !dbg !4667

for.inc92:                                        ; preds = %lor.lhs.false80, %land.lhs.true60, %for.body45, %if.then90
  %wide_mode.1 = phi i32 [ %tmode.0, %if.then90 ], [ %wide_mode.0, %lor.lhs.false80 ], [ %wide_mode.0, %land.lhs.true60 ], [ %wide_mode.0, %for.body45 ], !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.1, metadata !4612, metadata !DIExpression()), !dbg !4649
  %arrayidx94 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_wider, i64 0, i64 %idxprom46, !dbg !4668
  br label %for.cond42, !dbg !4669, !llvm.loop !4670

for.end96.us-lcssa:                               ; preds = %for.cond42
  %wide_mode.0.lcssa4 = phi i32 [ %wide_mode.0, %for.cond42 ], !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.0.lcssa4, metadata !4612, metadata !DIExpression()), !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.0.lcssa4, metadata !4612, metadata !DIExpression()), !dbg !4649
  br label %for.end96, !dbg !4672

for.end96:                                        ; preds = %for.end96.us-lcssa.us, %for.end96.us-lcssa
  %wide_mode.0.lcssa = phi i32 [ %wide_mode.0.lcssa4, %for.end96.us-lcssa ], [ %wide_mode.0.lcssa.ph.us, %for.end96.us-lcssa.us ], !dbg !4649
  call void @llvm.dbg.value(metadata i32 %wide_mode.0.lcssa, metadata !4612, metadata !DIExpression()), !dbg !4649
  %cmp97 = icmp eq i32 %wide_mode.0.lcssa, 0, !dbg !4672
  br i1 %cmp97, label %if.end102, label %cleanup103

if.end102:                                        ; preds = %land.lhs.true38, %if.end37, %for.end96
  br label %cleanup103, !dbg !4678

cleanup103:                                       ; preds = %for.end, %cond.end, %land.lhs.true, %for.end96, %if.end102
  %retval.1 = phi i32 [ %mode.0.le, %if.end102 ], [ %wide_mode.0.lcssa, %for.end96 ], [ 0, %land.lhs.true ], [ 0, %cond.end ], [ 0, %for.end ], !dbg !4616
  ret i32 %retval.1, !dbg !4679
}

; Function Attrs: nounwind uwtable
define dso_local void @get_mode_bounds(i32 %mode, i32 %sign, i32 %target_mode, %struct.rtx_def** %mmin, %struct.rtx_def** %mmax) local_unnamed_addr #5 !dbg !4680 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4685, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i32 %sign, metadata !4686, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i32 %target_mode, metadata !4687, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata %struct.rtx_def** %mmin, metadata !4688, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata %struct.rtx_def** %mmax, metadata !4689, metadata !DIExpression()), !dbg !4693
  %idxprom = zext i32 %mode to i64, !dbg !4694
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !4694
  %0 = load i8, i8* %arrayidx, align 1, !dbg !4694
  %conv1 = zext i8 %0 to i64, !dbg !4694
  %mul = shl nuw nsw i64 %conv1, 3, !dbg !4694
  call void @llvm.dbg.value(metadata i8 %0, metadata !4690, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value)), !dbg !4693
  %cmp = icmp ult i8 %0, 9, !dbg !4695
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4695

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2512, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4695
  br label %cond.end, !dbg !4695

cond.end:                                         ; preds = %entry, %cond.true
  %tobool = icmp eq i32 %sign, 0, !dbg !4696
  %sub = add nuw nsw i64 %mul, 4294967295, !dbg !4698
  %sh_prom = and i64 %sub, 4294967295, !dbg !4698
  %shl = shl i64 1, %sh_prom, !dbg !4698
  br i1 %tobool, label %if.else, label %if.then, !dbg !4699

if.then:                                          ; preds = %cond.end
  %sub5 = sub i64 0, %shl, !dbg !4700
  call void @llvm.dbg.value(metadata i64 %sub5, metadata !4691, metadata !DIExpression()), !dbg !4693
  %notmask = shl nsw i64 -1, %sh_prom, !dbg !4702
  %sub9 = xor i64 %notmask, -1, !dbg !4702
  call void @llvm.dbg.value(metadata i64 %sub9, metadata !4692, metadata !DIExpression()), !dbg !4693
  br label %if.end, !dbg !4703

if.else:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata i64 0, metadata !4691, metadata !DIExpression()), !dbg !4693
  %shl13 = shl i64 %shl, 1, !dbg !4704
  %sub14 = add i64 %shl13, -1, !dbg !4706
  call void @llvm.dbg.value(metadata i64 %sub14, metadata !4692, metadata !DIExpression()), !dbg !4693
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %min_val.0 = phi i64 [ %sub5, %if.then ], [ 0, %if.else ], !dbg !4698
  %max_val.0 = phi i64 [ %sub9, %if.then ], [ %sub14, %if.else ], !dbg !4698
  call void @llvm.dbg.value(metadata i64 %max_val.0, metadata !4692, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.value(metadata i64 %min_val.0, metadata !4691, metadata !DIExpression()), !dbg !4693
  %call = tail call %struct.rtx_def* @gen_int_mode(i64 %min_val.0, i32 %target_mode) #6, !dbg !4707
  store %struct.rtx_def* %call, %struct.rtx_def** %mmin, align 8, !dbg !4708
  %call15 = tail call %struct.rtx_def* @gen_int_mode(i64 %max_val.0, i32 %target_mode) #6, !dbg !4709
  store %struct.rtx_def* %call15, %struct.rtx_def** %mmax, align 8, !dbg !4710
  ret void, !dbg !4711
}

declare dso_local %struct.rtx_def* @gen_int_mode(i64, i32) local_unnamed_addr #2

declare dso_local void @gt_ggc_mx_VEC_tree_gc(i8*) #2

declare dso_local void @gt_pch_nx_VEC_tree_gc(i8*) #2

declare dso_local void @gt_ggc_mx_lang_tree_node(i8*) #2

declare dso_local void @gt_pch_nx_lang_tree_node(i8*) #2

declare dso_local void @find_placeholder_in_expr(%union.tree_node*, %struct.VEC_tree_heap**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !4712 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4716, metadata !DIExpression()), !dbg !4717
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !4718
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4718

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4718
  %0 = load i32, i32* %num, align 8, !dbg !4718
  br label %cond.end, !dbg !4718

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4718
  ret i32 %cond, !dbg !4718
}

declare dso_local %union.tree_node* @walk_tree_1(%union.tree_node**, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @copy_self_referential_tree_r(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #5 !dbg !4719 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %tp, metadata !4724, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i32* %walk_subtrees, metadata !4725, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i8* %data, metadata !4726, metadata !DIExpression()), !dbg !4733
  %0 = bitcast %union.tree_node** %tp to i64**, !dbg !4734
  %1 = load i64*, i64** %0, align 8, !dbg !4734
  %bf.load = load i64, i64* %1, align 8, !dbg !4734
  %bf.cast = and i64 %bf.load, 65535, !dbg !4734
  call void @llvm.dbg.value(metadata i64 %bf.cast, metadata !4727, metadata !DIExpression()), !dbg !4733
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !4735
  %2 = load i32, i32* %arrayidx, align 4, !dbg !4735
  %cmp = icmp eq i32 %2, 2, !dbg !4736
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4737

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %2, 3, !dbg !4738
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !4739

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %2, 1, !dbg !4740
  br i1 %cmp7, label %if.then, label %if.else, !dbg !4741

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 0, i32* %walk_subtrees, align 4, !dbg !4742
  br label %cleanup45, !dbg !4744

if.else:                                          ; preds = %lor.lhs.false4
  %trunc = trunc i64 %bf.load to i16, !dbg !4745
  switch i16 %trunc, label %if.end44 [
    i16 121, label %land.lhs.true
    i16 41, label %if.else.if.then18_crit_edge
    i16 120, label %if.then40
  ], !dbg !4745

if.else.if.then18_crit_edge:                      ; preds = %if.else
  br label %if.then18, !dbg !4745

land.lhs.true:                                    ; preds = %if.else
  %arrayidx9 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !4746
  %3 = bitcast i64* %arrayidx9 to i64**, !dbg !4746
  %4 = load i64*, i64** %3, align 8, !dbg !4746
  %bf.load11 = load i64, i64* %4, align 8, !dbg !4746
  %bf.cast132 = and i64 %bf.load11, 65535, !dbg !4747
  %cmp14 = icmp eq i64 %bf.cast132, 62, !dbg !4747
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !4748

if.then15:                                        ; preds = %land.lhs.true
  store i32 0, i32* %walk_subtrees, align 4, !dbg !4749
  br label %cleanup45, !dbg !4751

if.else16:                                        ; preds = %land.lhs.true
  switch i16 121, label %if.end44 [
    i16 41, label %if.then18
    i16 120, label %if.then40
  ], !dbg !4752

if.then18:                                        ; preds = %if.else.if.then18_crit_edge, %if.else16
  %arrayidx21 = getelementptr inbounds i64, i64* %1, i64 5, !dbg !4753
  %5 = bitcast i64* %arrayidx21 to %union.tree_node**, !dbg !4753
  br label %for.cond, !dbg !4755

for.cond:                                         ; preds = %for.inc, %if.then18
  %inner.0.in = phi %union.tree_node** [ %5, %if.then18 ], [ %operands30, %for.inc ]
  %inner.0 = load %union.tree_node*, %union.tree_node** %inner.0.in, align 8, !dbg !4756
  call void @llvm.dbg.value(metadata %union.tree_node* %inner.0, metadata !4728, metadata !DIExpression()), !dbg !4757
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %inner.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4758
  %bf.load23 = load i64, i64* %6, align 8, !dbg !4758
  %bf.cast25 = and i64 %bf.load23, 65535, !dbg !4758
  %arrayidx27 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast25, !dbg !4758
  %7 = load i32, i32* %arrayidx27, align 4, !dbg !4758
  %cmp28 = icmp eq i32 %7, 4, !dbg !4758
  br i1 %cmp28, label %for.inc, label %for.end, !dbg !4760

for.inc:                                          ; preds = %for.cond
  %operands30 = getelementptr inbounds %union.tree_node, %union.tree_node* %inner.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4761
  br label %for.cond, !dbg !4762, !llvm.loop !4763

for.end:                                          ; preds = %for.cond
  %bf.cast25.lcssa = phi i64 [ %bf.cast25, %for.cond ], !dbg !4758
  %cmp36 = icmp eq i64 %bf.cast25.lcssa, 62, !dbg !4765
  br i1 %cmp36, label %if.then37, label %cleanup, !dbg !4767

if.then37:                                        ; preds = %for.end
  store i32 0, i32* %walk_subtrees, align 4, !dbg !4768
  br label %cleanup, !dbg !4770

cleanup:                                          ; preds = %for.end, %if.then37
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then37 ], [ true, %for.end ]
  br i1 %cleanup.dest.slot.0, label %if.end44, label %cleanup45

if.then40:                                        ; preds = %if.else, %if.else16
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !4771
  br label %cleanup45, !dbg !4773

if.end44:                                         ; preds = %if.else16, %if.else, %cleanup
  %call = tail call %union.tree_node* @copy_tree_r(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #6, !dbg !4774
  br label %cleanup45, !dbg !4775

cleanup45:                                        ; preds = %cleanup, %if.end44, %if.then40, %if.then15, %if.then
  %retval.1 = phi %union.tree_node* [ null, %if.then ], [ null, %if.then15 ], [ null, %cleanup ], [ %call, %if.end44 ], [ %8, %if.then40 ], !dbg !4733
  ret %union.tree_node* %retval.1, !dbg !4776
}

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

declare dso_local %union.tree_node* @substitute_in_expr(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @chainon(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !4777 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !4782, metadata !DIExpression()), !dbg !4783
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !4784
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !4784
  br i1 %tobool, label %if.end, label %if.then, !dbg !4786

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !4786
  tail call void @free(i8* nonnull %1) #6, !dbg !4784
  br label %if.end, !dbg !4784

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !4786
  ret void, !dbg !4786
}

declare dso_local %union.tree_node* @build_function_type(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_file_function_name(i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build2_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build1_stat(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_gc_safe_push(%struct.VEC_tree_gc** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !4787 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** @size_functions, metadata !4791, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !4792, metadata !DIExpression()), !dbg !4793
  %call = tail call fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** nonnull @size_functions, i32 1) #7, !dbg !4794
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @size_functions, align 8, !dbg !4794
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !4794
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4794

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !4794
  br label %cond.end, !dbg !4794

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4794
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !4794
  ret %union.tree_node** %call1, !dbg !4794
}

declare dso_local %union.tree_node* @build_function_call_expr(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @copy_tree_r(%union.tree_node**, i32*, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_gc_reserve(%struct.VEC_tree_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4795 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_gc** @size_functions, metadata !4799, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 1, metadata !4800, metadata !DIExpression()), !dbg !4802
  %0 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** @size_functions, align 8, !dbg !4803
  %tobool = icmp eq %struct.VEC_tree_gc* %0, null, !dbg !4803
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4803

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %0, i64 0, i32 0, !dbg !4803
  br label %cond.end, !dbg !4803

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4803
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !4803
  %tobool1 = icmp eq i32 %call, 0, !dbg !4803
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4803
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4801, metadata !DIExpression()), !dbg !4802
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4803

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_tree_gc** @size_functions to i8**), align 8, !dbg !4804
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %1, i32 1) #6, !dbg !4804
  store i8* %call3, i8** bitcast (%struct.VEC_tree_gc** @size_functions to i8**), align 8, !dbg !4804
  br label %if.end, !dbg !4804

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4803
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !4806 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4811, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !4812, metadata !DIExpression()), !dbg !4814
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4815
  %0 = load i32, i32* %num1, align 8, !dbg !4815
  %inc = add i32 %0, 1, !dbg !4815
  store i32 %inc, i32* %num1, align 8, !dbg !4815
  %idxprom = zext i32 %0 to i64, !dbg !4815
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4815
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !4813, metadata !DIExpression()), !dbg !4814
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !4815
  ret %union.tree_node** %arrayidx, !dbg !4815
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4816 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4820, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i32 1, metadata !4821, metadata !DIExpression()), !dbg !4822
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !4823
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4823

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !4823
  %0 = load i32, i32* %alloc, align 4, !dbg !4823
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4823
  %1 = load i32, i32* %num, align 8, !dbg !4823
  %cmp1 = icmp ne i32 %0, %1, !dbg !4823
  %phitmp = zext i1 %cmp1 to i32, !dbg !4823
  br label %cond.end, !dbg !4823

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4823

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4823
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #2

declare dso_local void @ggc_free(i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_build3_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.ctpop.i32(i32) #1

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
!llvm.module.flags = !{!1749, !1750, !1751}
!llvm.ident = !{!1752}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "maximum_field_alignment", scope: !2, file: !3, line: 51, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !399, globals: !1688, nameTableKind: None)
!3 = !DIFile(filename: "stor-layout.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !335, !340, !345, !363, !370, !377}
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
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !378, line: 36, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!380 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!386 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!387 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!388 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!389 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!390 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!391 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!392 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!393 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!394 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!395 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!396 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!397 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!398 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!399 = !{!400, !401, !402, !403, !406, !407, !134, !409, !1674, !5, !377, !584, !1675, !536, !463, !465, !1402, !7}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!402 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !410, line: 56, baseType: !411)
!410 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !413)
!413 = !{!414, !447, !453, !466, !485, !496, !501, !510, !516, !529, !541, !579, !1072, !1100, !1108, !1109, !1114, !1123, !1129, !1134, !1138, !1142, !1316, !1363, !1369, !1375, !1382, !1393, !1418, !1435, !1447, !1469, !1484, !1656}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !412, file: !135, line: 3372, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !415, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !415, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !415, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !415, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !415, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !415, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !415, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !415, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !415, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !415, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !415, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !415, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !415, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !415, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !415, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !415, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !415, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !415, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !415, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !415, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !415, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !415, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !415, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !415, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !415, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !415, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !415, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !415, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !415, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !415, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !412, file: !135, line: 3373, baseType: !448, size: 192)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !449)
!449 = !{!450, !451, !452}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !448, file: !135, line: 403, baseType: !415, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !448, file: !135, line: 404, baseType: !409, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !448, file: !135, line: 405, baseType: !409, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !412, file: !135, line: 3374, baseType: !454, size: 320)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !454, file: !135, line: 1385, baseType: !448, size: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !454, file: !135, line: 1386, baseType: !458, size: 128, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !459, line: 58, baseType: !460)
!459 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 54, size: 128, elements: !461)
!461 = !{!462, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !460, file: !459, line: 56, baseType: !463, size: 64)
!463 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !460, file: !459, line: 57, baseType: !465, size: 64, offset: 64)
!465 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !412, file: !135, line: 3375, baseType: !467, size: 256)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !467, file: !135, line: 1398, baseType: !448, size: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !467, file: !135, line: 1399, baseType: !471, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !473, line: 52, size: 256, elements: !474)
!473 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!474 = !{!475, !476, !477, !478, !479, !480, !481}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !472, file: !473, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !472, file: !473, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !472, file: !473, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !472, file: !473, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !472, file: !473, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !472, file: !473, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !472, file: !473, line: 62, baseType: !482, size: 192, offset: 64)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 192, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 3)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !412, file: !135, line: 3376, baseType: !486, size: 256)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !486, file: !135, line: 1409, baseType: !448, size: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !486, file: !135, line: 1410, baseType: !490, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !492, line: 27, size: 192, elements: !493)
!492 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !491, file: !492, line: 29, baseType: !458, size: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !491, file: !492, line: 30, baseType: !5, size: 32, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !412, file: !135, line: 3377, baseType: !497, size: 256)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !497, file: !135, line: 1438, baseType: !448, size: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !497, file: !135, line: 1439, baseType: !409, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !412, file: !135, line: 3378, baseType: !502, size: 256)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !503)
!503 = !{!504, !505, !506}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !502, file: !135, line: 1419, baseType: !448, size: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !502, file: !135, line: 1420, baseType: !402, size: 32, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !502, file: !135, line: 1421, baseType: !507, size: 8, offset: 224)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 8, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 1)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !412, file: !135, line: 3379, baseType: !511, size: 320)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !512)
!512 = !{!513, !514, !515}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !511, file: !135, line: 1429, baseType: !448, size: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !511, file: !135, line: 1430, baseType: !409, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !511, file: !135, line: 1431, baseType: !409, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !412, file: !135, line: 3380, baseType: !517, size: 320)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !517, file: !135, line: 1461, baseType: !448, size: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !517, file: !135, line: 1462, baseType: !521, size: 128, offset: 192)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !522, line: 31, size: 128, elements: !523)
!522 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!523 = !{!524, !527, !528}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !521, file: !522, line: 32, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !521, file: !522, line: 33, baseType: !7, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !521, file: !522, line: 34, baseType: !7, size: 32, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !412, file: !135, line: 3381, baseType: !530, size: 384)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !531)
!531 = !{!532, !533, !538, !539, !540}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !530, file: !135, line: 2508, baseType: !448, size: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !530, file: !135, line: 2509, baseType: !534, size: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !535, line: 58, baseType: !536)
!535 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !537, line: 44, baseType: !7)
!537 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!538 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !530, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !135, line: 2511, baseType: !409, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !530, file: !135, line: 2512, baseType: !409, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !412, file: !135, line: 3382, baseType: !542, size: 896)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !542, file: !135, line: 2653, baseType: !530, size: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !542, file: !135, line: 2654, baseType: !409, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !542, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !542, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !542, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !542, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !542, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !542, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !542, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !542, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !542, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !542, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !542, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !542, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !542, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !542, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !542, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !542, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !542, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !542, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !542, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !542, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !542, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !542, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !542, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !542, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !542, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !542, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !542, file: !135, line: 2705, baseType: !409, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !542, file: !135, line: 2706, baseType: !409, size: 64, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !542, file: !135, line: 2707, baseType: !409, size: 64, offset: 704)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !542, file: !135, line: 2708, baseType: !409, size: 64, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !542, file: !135, line: 2711, baseType: !577, size: 64, offset: 832)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !412, file: !135, line: 3383, baseType: !580, size: 960)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !580, file: !135, line: 2757, baseType: !542, size: 896)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !580, file: !135, line: 2758, baseType: !584, size: 64, offset: 896)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !410, line: 50, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !587, line: 240, size: 384, elements: !588)
!587 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !586, file: !587, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !586, file: !587, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !586, file: !587, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !586, file: !587, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !586, file: !587, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !586, file: !587, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !586, file: !587, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !586, file: !587, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !586, file: !587, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !586, file: !587, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !586, file: !587, line: 321, baseType: !600, size: 320, offset: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !587, line: 315, size: 320, elements: !601)
!601 = !{!602, !1005, !1007, !1070, !1071}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !600, file: !587, line: 316, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 64, elements: !508)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !587, line: 183, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !587, line: 166, size: 64, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !619, !620, !632, !635, !695, !696, !982, !995, !1002}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !605, file: !587, line: 168, baseType: !402, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !605, file: !587, line: 169, baseType: !7, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !605, file: !587, line: 170, baseType: !407, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !605, file: !587, line: 171, baseType: !584, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !605, file: !587, line: 172, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !410, line: 53, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !587, line: 359, size: 128, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !614, file: !587, line: 360, baseType: !402, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !614, file: !587, line: 361, baseType: !618, size: 64, offset: 64)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 64, elements: !508)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !605, file: !587, line: 173, baseType: !5, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !605, file: !587, line: 174, baseType: !621, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !587, line: 133, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 115, size: 32, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !622, file: !587, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !622, file: !587, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !622, file: !587, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !622, file: !587, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !622, file: !587, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !622, file: !587, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !622, file: !587, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !622, file: !587, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !605, file: !587, line: 175, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !587, line: 175, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !605, file: !587, line: 176, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !638, line: 75, size: 256, elements: !639)
!638 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!639 = !{!640, !654, !655, !656}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !637, file: !638, line: 76, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !638, line: 68, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !638, line: 63, size: 320, elements: !644)
!644 = !{!645, !647, !648, !649}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !643, file: !638, line: 64, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !643, file: !638, line: 65, baseType: !646, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !643, file: !638, line: 66, baseType: !7, size: 32, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !643, file: !638, line: 67, baseType: !650, size: 128, offset: 192)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 128, elements: !652)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !638, line: 29, baseType: !463)
!652 = !{!653}
!653 = !DISubrange(count: 2)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !637, file: !638, line: 77, baseType: !641, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !637, file: !638, line: 78, baseType: !7, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !637, file: !638, line: 79, baseType: !657, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !638, line: 49, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !638, line: 45, size: 832, elements: !660)
!660 = !{!661, !662, !663}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !659, file: !638, line: 46, baseType: !646, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !659, file: !638, line: 47, baseType: !636, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !659, file: !638, line: 48, baseType: !664, size: 704, offset: 128)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !665, line: 164, size: 704, elements: !666)
!665 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!666 = !{!667, !668, !678, !679, !680, !681, !682, !683, !687, !691, !692, !693, !694}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !664, file: !665, line: 166, baseType: !465, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !664, file: !665, line: 167, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !665, line: 157, size: 192, elements: !671)
!671 = !{!672, !673, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !670, file: !665, line: 159, baseType: !404, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !670, file: !665, line: 160, baseType: !669, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !670, file: !665, line: 161, baseType: !675, size: 32, offset: 128)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 32, elements: !676)
!676 = !{!677}
!677 = !DISubrange(count: 4)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !664, file: !665, line: 168, baseType: !404, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !664, file: !665, line: 169, baseType: !404, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !664, file: !665, line: 170, baseType: !404, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !664, file: !665, line: 171, baseType: !465, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !664, file: !665, line: 172, baseType: !402, size: 32, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !664, file: !665, line: 176, baseType: !684, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!669, !406, !465}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !664, file: !665, line: 177, baseType: !688, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !406, !669}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !664, file: !665, line: 178, baseType: !406, size: 64, offset: 576)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !664, file: !665, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !664, file: !665, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !664, file: !665, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !605, file: !587, line: 177, baseType: !409, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !605, file: !587, line: 178, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !330, line: 217, size: 832, elements: !699)
!699 = !{!700, !947, !948, !949, !952, !956, !957, !958, !976, !977, !978, !979, !980, !981}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !698, file: !330, line: 219, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !330, line: 151, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !330, line: 151, size: 128, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !703, file: !330, line: 151, baseType: !706, size: 128)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !330, line: 150, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !330, line: 150, size: 128, elements: !708)
!708 = !{!709, !710, !711}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !707, file: !330, line: 150, baseType: !7, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !707, file: !330, line: 150, baseType: !7, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !707, file: !330, line: 150, baseType: !712, size: 64, offset: 64)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 64, elements: !508)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !410, line: 108, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !330, line: 122, size: 512, elements: !716)
!716 = !{!717, !718, !719, !939, !940, !941, !942, !943, !944, !945}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !715, file: !330, line: 124, baseType: !697, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !715, file: !330, line: 125, baseType: !697, size: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !715, file: !330, line: 131, baseType: !720, size: 64, offset: 128)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !330, line: 128, size: 64, elements: !721)
!721 = !{!722, !938}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !720, file: !330, line: 129, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !410, line: 66, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !726, line: 143, size: 192, elements: !727)
!726 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!727 = !{!728, !936, !937}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !725, file: !726, line: 145, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !410, line: 69, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !726, line: 136, size: 192, elements: !732)
!732 = !{!733, !934, !935}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !731, file: !726, line: 137, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !410, line: 58, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !726, line: 737, size: 768, elements: !737)
!737 = !{!738, !755, !789, !795, !800, !805, !812, !818, !824, !829, !843, !848, !854, !859, !869, !874, !892, !899, !906, !912, !917, !923, !929}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !736, file: !726, line: 738, baseType: !739, size: 256)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !726, line: 271, size: 256, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !739, file: !726, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !739, file: !726, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !739, file: !726, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !739, file: !726, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !739, file: !726, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !739, file: !726, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !739, file: !726, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !739, file: !726, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !739, file: !726, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !739, file: !726, line: 312, baseType: !7, size: 32, offset: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !739, file: !726, line: 316, baseType: !534, size: 32, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !739, file: !726, line: 319, baseType: !7, size: 32, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !739, file: !726, line: 323, baseType: !697, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !739, file: !726, line: 327, baseType: !409, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !736, file: !726, line: 739, baseType: !756, size: 448)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !726, line: 350, size: 448, elements: !757)
!757 = !{!758, !787}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !756, file: !726, line: 353, baseType: !759, size: 384)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !726, line: 333, size: 384, elements: !760)
!760 = !{!761, !762, !770}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !759, file: !726, line: 336, baseType: !739, size: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !759, file: !726, line: 343, baseType: !763, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !765, line: 37, size: 128, elements: !766)
!765 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !765, line: 39, baseType: !763, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !764, file: !765, line: 40, baseType: !769, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !759, file: !726, line: 344, baseType: !771, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !765, line: 45, size: 320, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !772, file: !765, line: 47, baseType: !771, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !772, file: !765, line: 48, baseType: !776, size: 256, offset: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !777)
!777 = !{!778, !780, !781, !786}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !776, file: !135, line: 1884, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !135, line: 1885, baseType: !779, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !776, file: !135, line: 1891, baseType: !782, size: 64, offset: 128)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !135, line: 1891, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !782, file: !135, line: 1891, baseType: !734, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !782, file: !135, line: 1891, baseType: !409, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !776, file: !135, line: 1892, baseType: !769, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !756, file: !726, line: 359, baseType: !788, size: 64, offset: 384)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 64, elements: !508)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !736, file: !726, line: 740, baseType: !790, size: 512)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !726, line: 365, size: 512, elements: !791)
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !790, file: !726, line: 368, baseType: !759, size: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !790, file: !726, line: 373, baseType: !409, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !790, file: !726, line: 374, baseType: !409, size: 64, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !736, file: !726, line: 741, baseType: !796, size: 576)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !726, line: 380, size: 576, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !796, file: !726, line: 383, baseType: !790, size: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !796, file: !726, line: 389, baseType: !788, size: 64, offset: 512)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !736, file: !726, line: 742, baseType: !801, size: 320)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !726, line: 395, size: 320, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !801, file: !726, line: 397, baseType: !739, size: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !801, file: !726, line: 400, baseType: !723, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !736, file: !726, line: 743, baseType: !806, size: 448)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !726, line: 406, size: 448, elements: !807)
!807 = !{!808, !809, !810, !811}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !806, file: !726, line: 408, baseType: !739, size: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !806, file: !726, line: 412, baseType: !409, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !806, file: !726, line: 420, baseType: !409, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !806, file: !726, line: 423, baseType: !723, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !736, file: !726, line: 744, baseType: !813, size: 384)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !726, line: 429, size: 384, elements: !814)
!814 = !{!815, !816, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !813, file: !726, line: 431, baseType: !739, size: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !813, file: !726, line: 434, baseType: !409, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !813, file: !726, line: 437, baseType: !723, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !736, file: !726, line: 745, baseType: !819, size: 384)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !726, line: 443, size: 384, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !819, file: !726, line: 445, baseType: !739, size: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !819, file: !726, line: 449, baseType: !409, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !819, file: !726, line: 453, baseType: !723, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !736, file: !726, line: 746, baseType: !825, size: 320)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !726, line: 459, size: 320, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !825, file: !726, line: 461, baseType: !739, size: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !825, file: !726, line: 464, baseType: !409, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !736, file: !726, line: 747, baseType: !830, size: 768)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !726, line: 469, size: 768, elements: !831)
!831 = !{!832, !833, !834, !835, !836}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !830, file: !726, line: 471, baseType: !739, size: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !830, file: !726, line: 474, baseType: !7, size: 32, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !830, file: !726, line: 475, baseType: !7, size: 32, offset: 288)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !830, file: !726, line: 478, baseType: !409, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !830, file: !726, line: 481, baseType: !837, size: 384, offset: 384)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 384, elements: !508)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !839)
!839 = !{!840, !841, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !838, file: !135, line: 1920, baseType: !776, size: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !838, file: !135, line: 1921, baseType: !409, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !838, file: !135, line: 1922, baseType: !534, size: 32, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !736, file: !726, line: 748, baseType: !844, size: 320)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !726, line: 487, size: 320, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !844, file: !726, line: 490, baseType: !739, size: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !844, file: !726, line: 494, baseType: !402, size: 32, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !736, file: !726, line: 749, baseType: !849, size: 384)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !726, line: 500, size: 384, elements: !850)
!850 = !{!851, !852, !853}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !849, file: !726, line: 502, baseType: !739, size: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !849, file: !726, line: 506, baseType: !723, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !849, file: !726, line: 510, baseType: !723, size: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !736, file: !726, line: 750, baseType: !855, size: 320)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !726, line: 529, size: 320, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !855, file: !726, line: 531, baseType: !739, size: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !855, file: !726, line: 540, baseType: !723, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !736, file: !726, line: 751, baseType: !860, size: 704)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !726, line: 546, size: 704, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867, !868}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !860, file: !726, line: 549, baseType: !790, size: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !860, file: !726, line: 553, baseType: !407, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !860, file: !726, line: 557, baseType: !401, size: 8, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !860, file: !726, line: 558, baseType: !401, size: 8, offset: 584)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !860, file: !726, line: 559, baseType: !401, size: 8, offset: 592)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !860, file: !726, line: 560, baseType: !401, size: 8, offset: 600)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !860, file: !726, line: 566, baseType: !788, size: 64, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !736, file: !726, line: 752, baseType: !870, size: 384)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !726, line: 571, size: 384, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !870, file: !726, line: 573, baseType: !801, size: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !870, file: !726, line: 577, baseType: !409, size: 64, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !736, file: !726, line: 753, baseType: !875, size: 576)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !726, line: 600, size: 576, elements: !876)
!876 = !{!877, !878, !879, !882, !891}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !875, file: !726, line: 602, baseType: !801, size: 320)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !875, file: !726, line: 605, baseType: !409, size: 64, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !875, file: !726, line: 609, baseType: !880, size: 64, offset: 384)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !881, line: 46, baseType: !463)
!881 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!882 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !875, file: !726, line: 612, baseType: !883, size: 64, offset: 448)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !726, line: 581, size: 320, elements: !885)
!885 = !{!886, !887, !888, !889, !890}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !884, file: !726, line: 583, baseType: !134, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !884, file: !726, line: 586, baseType: !409, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !884, file: !726, line: 589, baseType: !409, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !884, file: !726, line: 592, baseType: !409, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !884, file: !726, line: 595, baseType: !409, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !875, file: !726, line: 616, baseType: !723, size: 64, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !736, file: !726, line: 754, baseType: !893, size: 512)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !726, line: 622, size: 512, elements: !894)
!894 = !{!895, !896, !897, !898}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !893, file: !726, line: 624, baseType: !801, size: 320)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !893, file: !726, line: 628, baseType: !409, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !893, file: !726, line: 632, baseType: !409, size: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !893, file: !726, line: 636, baseType: !409, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !736, file: !726, line: 755, baseType: !900, size: 704)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !726, line: 642, size: 704, elements: !901)
!901 = !{!902, !903, !904, !905}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !900, file: !726, line: 644, baseType: !893, size: 512)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !900, file: !726, line: 648, baseType: !409, size: 64, offset: 512)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !900, file: !726, line: 652, baseType: !409, size: 64, offset: 576)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !900, file: !726, line: 653, baseType: !409, size: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !736, file: !726, line: 756, baseType: !907, size: 448)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !726, line: 663, size: 448, elements: !908)
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !907, file: !726, line: 665, baseType: !801, size: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !907, file: !726, line: 668, baseType: !409, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !907, file: !726, line: 673, baseType: !409, size: 64, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !736, file: !726, line: 757, baseType: !913, size: 384)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !726, line: 694, size: 384, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !913, file: !726, line: 696, baseType: !801, size: 320)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !913, file: !726, line: 699, baseType: !409, size: 64, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !736, file: !726, line: 758, baseType: !918, size: 384)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !726, line: 681, size: 384, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !918, file: !726, line: 683, baseType: !739, size: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !918, file: !726, line: 686, baseType: !409, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !918, file: !726, line: 689, baseType: !409, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !736, file: !726, line: 759, baseType: !924, size: 384)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !726, line: 707, size: 384, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !924, file: !726, line: 709, baseType: !739, size: 256)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !924, file: !726, line: 712, baseType: !409, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !924, file: !726, line: 712, baseType: !409, size: 64, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !736, file: !726, line: 760, baseType: !930, size: 320)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !726, line: 718, size: 320, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !930, file: !726, line: 720, baseType: !739, size: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !930, file: !726, line: 723, baseType: !409, size: 64, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !731, file: !726, line: 138, baseType: !730, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !726, line: 139, baseType: !730, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !725, file: !726, line: 146, baseType: !729, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !725, file: !726, line: 152, baseType: !723, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !720, file: !330, line: 130, baseType: !584, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !715, file: !330, line: 134, baseType: !406, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !715, file: !330, line: 137, baseType: !409, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !715, file: !330, line: 138, baseType: !534, size: 32, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !715, file: !330, line: 142, baseType: !7, size: 32, offset: 352)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !330, line: 144, baseType: !402, size: 32, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !715, file: !330, line: 145, baseType: !402, size: 32, offset: 416)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !715, file: !330, line: 146, baseType: !946, size: 64, offset: 448)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !330, line: 119, baseType: !465)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !698, file: !330, line: 220, baseType: !701, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !698, file: !330, line: 223, baseType: !406, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !698, file: !330, line: 226, baseType: !950, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 185, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !698, file: !330, line: 229, baseType: !953, size: 128, offset: 256)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 128, elements: !652)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !330, line: 229, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !698, file: !330, line: 232, baseType: !697, size: 64, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !698, file: !330, line: 233, baseType: !697, size: 64, offset: 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !698, file: !330, line: 238, baseType: !959, size: 64, offset: 512)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !330, line: 235, size: 64, elements: !960)
!960 = !{!961, !967}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !959, file: !330, line: 236, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !330, line: 273, size: 128, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !963, file: !330, line: 275, baseType: !723, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !963, file: !330, line: 278, baseType: !723, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !959, file: !330, line: 237, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !330, line: 259, size: 320, elements: !970)
!970 = !{!971, !972, !973, !974, !975}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !969, file: !330, line: 261, baseType: !584, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !969, file: !330, line: 262, baseType: !584, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !969, file: !330, line: 266, baseType: !584, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !969, file: !330, line: 267, baseType: !584, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !969, file: !330, line: 270, baseType: !402, size: 32, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !698, file: !330, line: 241, baseType: !946, size: 64, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !698, file: !330, line: 244, baseType: !402, size: 32, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !698, file: !330, line: 247, baseType: !402, size: 32, offset: 672)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !698, file: !330, line: 250, baseType: !402, size: 32, offset: 704)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !698, file: !330, line: 253, baseType: !402, size: 32, offset: 736)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !330, line: 256, baseType: !402, size: 32, offset: 768)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !605, file: !587, line: 179, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !587, line: 150, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !587, line: 142, size: 320, elements: !986)
!986 = !{!987, !988, !989, !990, !993, !994}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !985, file: !587, line: 144, baseType: !409, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !985, file: !587, line: 145, baseType: !584, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !985, file: !587, line: 146, baseType: !584, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !985, file: !587, line: 147, baseType: !991, size: 32, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !992, line: 31, baseType: !402)
!992 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!993 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !985, file: !587, line: 148, baseType: !7, size: 32, offset: 224)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !985, file: !587, line: 149, baseType: !401, size: 8, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !605, file: !587, line: 180, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !587, line: 162, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !587, line: 159, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !998, file: !587, line: 160, baseType: !409, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !998, file: !587, line: 161, baseType: !465, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !605, file: !587, line: 181, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !587, line: 181, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !600, file: !587, line: 317, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 64, elements: !508)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !600, file: !587, line: 318, baseType: !1008, size: 320)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !587, line: 188, size: 320, elements: !1009)
!1009 = !{!1010, !1012, !1069}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1008, file: !587, line: 190, baseType: !1011, size: 192)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 192, elements: !483)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1008, file: !587, line: 193, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !587, line: 206, size: 320, elements: !1015)
!1015 = !{!1016, !1054, !1055, !1056, !1068}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1014, file: !587, line: 208, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !410, line: 62, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1020, line: 538, size: 256, elements: !1021)
!1020 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1021 = !{!1022, !1026, !1032, !1045}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1019, file: !1020, line: 539, baseType: !1023, size: 32)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1020, line: 482, size: 32, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1023, file: !1020, line: 484, baseType: !7, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1019, file: !1020, line: 540, baseType: !1027, size: 192)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1020, line: 488, size: 192, elements: !1028)
!1028 = !{!1029, !1030, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1027, file: !1020, line: 489, baseType: !1023, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1027, file: !1020, line: 492, baseType: !407, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1027, file: !1020, line: 496, baseType: !409, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1019, file: !1020, line: 541, baseType: !1033, size: 256)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1020, line: 504, size: 256, elements: !1034)
!1034 = !{!1035, !1036, !1043, !1044}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1033, file: !1020, line: 505, baseType: !1023, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1033, file: !1020, line: 509, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1020, line: 501, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1033, file: !1020, line: 510, baseType: !1041, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1033, file: !1020, line: 513, baseType: !1017, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1019, file: !1020, line: 542, baseType: !1046, size: 128)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1020, line: 530, size: 128, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1046, file: !1020, line: 531, baseType: !1023, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1046, file: !1020, line: 534, baseType: !1050, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1020, line: 525, baseType: !1051)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!401, !409, !407, !463, !463}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1014, file: !587, line: 211, baseType: !7, size: 32, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1014, file: !587, line: 214, baseType: !465, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1014, file: !587, line: 224, baseType: !1057, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !587, line: 202, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !587, line: 202, size: 128, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1059, file: !587, line: 202, baseType: !1062, size: 128)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !587, line: 200, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !587, line: 200, size: 128, elements: !1064)
!1064 = !{!1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1063, file: !587, line: 200, baseType: !7, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1063, file: !587, line: 200, baseType: !7, size: 32, offset: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1063, file: !587, line: 200, baseType: !618, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1014, file: !587, line: 234, baseType: !1057, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1008, file: !587, line: 197, baseType: !465, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !600, file: !587, line: 319, baseType: !472, size: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !600, file: !587, line: 320, baseType: !491, size: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !412, file: !135, line: 3384, baseType: !1073, size: 1472)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1074)
!1074 = !{!1075, !1096, !1097, !1098, !1099}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1073, file: !135, line: 3115, baseType: !1076, size: 1216)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1076, file: !135, line: 2985, baseType: !580, size: 960)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1076, file: !135, line: 2986, baseType: !409, size: 64, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1076, file: !135, line: 2987, baseType: !409, size: 64, offset: 1024)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1076, file: !135, line: 2988, baseType: !409, size: 64, offset: 1088)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1076, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1076, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1076, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1076, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1076, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1076, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1076, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1076, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1076, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1076, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1076, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1076, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1076, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1076, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1073, file: !135, line: 3117, baseType: !409, size: 64, offset: 1216)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1073, file: !135, line: 3119, baseType: !409, size: 64, offset: 1280)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1073, file: !135, line: 3121, baseType: !409, size: 64, offset: 1344)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1073, file: !135, line: 3123, baseType: !409, size: 64, offset: 1408)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !412, file: !135, line: 3385, baseType: !1101, size: 1088)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1102)
!1102 = !{!1103, !1104, !1105}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1101, file: !135, line: 2875, baseType: !580, size: 960)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1101, file: !135, line: 2876, baseType: !584, size: 64, offset: 960)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1101, file: !135, line: 2877, baseType: !1106, size: 64, offset: 1024)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !135, line: 2856, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !412, file: !135, line: 3386, baseType: !1076, size: 1216)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !412, file: !135, line: 3387, baseType: !1110, size: 1280)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1110, file: !135, line: 3094, baseType: !1076, size: 1216)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1110, file: !135, line: 3095, baseType: !1106, size: 64, offset: 1216)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !412, file: !135, line: 3388, baseType: !1115, size: 1216)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1115, file: !135, line: 2825, baseType: !542, size: 896)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1115, file: !135, line: 2827, baseType: !409, size: 64, offset: 896)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1115, file: !135, line: 2828, baseType: !409, size: 64, offset: 960)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1115, file: !135, line: 2829, baseType: !409, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1115, file: !135, line: 2830, baseType: !409, size: 64, offset: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1115, file: !135, line: 2831, baseType: !409, size: 64, offset: 1152)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !412, file: !135, line: 3389, baseType: !1124, size: 1024)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1125)
!1125 = !{!1126, !1127, !1128}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1124, file: !135, line: 2851, baseType: !580, size: 960)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1124, file: !135, line: 2852, baseType: !402, size: 32, offset: 960)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1124, file: !135, line: 2853, baseType: !402, size: 32, offset: 992)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !412, file: !135, line: 3390, baseType: !1130, size: 1024)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1131)
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1130, file: !135, line: 2858, baseType: !580, size: 960)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1130, file: !135, line: 2859, baseType: !1106, size: 64, offset: 960)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !412, file: !135, line: 3391, baseType: !1135, size: 960)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1136)
!1136 = !{!1137}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1135, file: !135, line: 2863, baseType: !580, size: 960)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !412, file: !135, line: 3392, baseType: !1139, size: 1472)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1139, file: !135, line: 3305, baseType: !1073, size: 1472)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !412, file: !135, line: 3393, baseType: !1143, size: 1792)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1144)
!1144 = !{!1145, !1146, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1143, file: !135, line: 3249, baseType: !1073, size: 1472)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1143, file: !135, line: 3251, baseType: !1147, size: 64, offset: 1472)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1149, line: 463, size: 1152, elements: !1150)
!1149 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1150 = !{!1151, !1154, !1185, !1186, !1189, !1192, !1240, !1241, !1242, !1243, !1244, !1268, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1148, file: !1149, line: 464, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1149, line: 464, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1148, file: !1149, line: 467, baseType: !1155, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !330, line: 374, size: 640, elements: !1157)
!1157 = !{!1158, !1160, !1161, !1174, !1175, !1176, !1177, !1178, !1179, !1181, !1183, !1184}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1156, file: !330, line: 377, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !410, line: 111, baseType: !697)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1156, file: !330, line: 378, baseType: !1159, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1156, file: !330, line: 381, baseType: !1162, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !330, line: 282, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !330, line: 282, size: 128, elements: !1165)
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1164, file: !330, line: 282, baseType: !1167, size: 128)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !330, line: 281, baseType: !1168)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !330, line: 281, size: 128, elements: !1169)
!1169 = !{!1170, !1171, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1168, file: !330, line: 281, baseType: !7, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1168, file: !330, line: 281, baseType: !7, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1168, file: !330, line: 281, baseType: !1173, size: 64, offset: 64)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1159, size: 64, elements: !508)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1156, file: !330, line: 384, baseType: !402, size: 32, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1156, file: !330, line: 387, baseType: !402, size: 32, offset: 224)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1156, file: !330, line: 390, baseType: !402, size: 32, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1156, file: !330, line: 394, baseType: !1162, size: 64, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1156, file: !330, line: 396, baseType: !329, size: 32, offset: 384)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1156, file: !330, line: 399, baseType: !1180, size: 64, offset: 416)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !652)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1156, file: !330, line: 402, baseType: !1182, size: 64, offset: 480)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !652)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1156, file: !330, line: 406, baseType: !402, size: 32, offset: 544)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1156, file: !330, line: 409, baseType: !402, size: 32, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1148, file: !1149, line: 470, baseType: !724, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1148, file: !1149, line: 473, baseType: !1187, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1149, line: 166, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1148, file: !1149, line: 476, baseType: !1190, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1149, line: 476, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1148, file: !1149, line: 479, baseType: !1193, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1194, line: 144, baseType: !1195)
!1194 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1194, line: 100, size: 896, elements: !1197)
!1197 = !{!1198, !1204, !1209, !1214, !1216, !1217, !1218, !1219, !1220, !1221, !1226, !1228, !1229, !1234, !1239}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1196, file: !1194, line: 102, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1194, line: 52, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!1203, !1041}
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1194, line: 47, baseType: !7)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1196, file: !1194, line: 105, baseType: !1205, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1194, line: 59, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!402, !1041, !1041}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1196, file: !1194, line: 108, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1194, line: 63, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !406}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1196, file: !1194, line: 111, baseType: !1215, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1196, file: !1194, line: 114, baseType: !880, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1196, file: !1194, line: 117, baseType: !880, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1196, file: !1194, line: 120, baseType: !880, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1196, file: !1194, line: 124, baseType: !7, size: 32, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1196, file: !1194, line: 128, baseType: !7, size: 32, offset: 480)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1196, file: !1194, line: 131, baseType: !1222, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1194, line: 75, baseType: !1223)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!406, !880, !880}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1196, file: !1194, line: 132, baseType: !1227, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1194, line: 78, baseType: !1211)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1196, file: !1194, line: 135, baseType: !406, size: 64, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1196, file: !1194, line: 136, baseType: !1230, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1194, line: 82, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!406, !406, !880, !880}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1196, file: !1194, line: 137, baseType: !1235, size: 64, offset: 768)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1194, line: 83, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !406, !406}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1196, file: !1194, line: 141, baseType: !7, size: 32, offset: 832)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1148, file: !1149, line: 484, baseType: !409, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1148, file: !1149, line: 488, baseType: !409, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1148, file: !1149, line: 493, baseType: !409, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1148, file: !1149, line: 496, baseType: !409, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1148, file: !1149, line: 501, baseType: !1245, size: 64, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !341, line: 2355, size: 576, elements: !1247)
!1247 = !{!1248, !1251, !1252, !1253, !1254, !1256, !1257, !1262, !1263, !1264, !1265, !1266, !1267}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1246, file: !341, line: 2356, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !341, line: 2356, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1246, file: !341, line: 2357, baseType: !407, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1246, file: !341, line: 2358, baseType: !402, size: 32, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1246, file: !341, line: 2359, baseType: !402, size: 32, offset: 160)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1246, file: !341, line: 2360, baseType: !1255, size: 128, offset: 192)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 128, elements: !676)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1246, file: !341, line: 2364, baseType: !402, size: 32, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1246, file: !341, line: 2367, baseType: !1258, size: 128, offset: 384)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !341, line: 2349, size: 128, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1258, file: !341, line: 2351, baseType: !584, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1258, file: !341, line: 2352, baseType: !465, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1246, file: !341, line: 2371, baseType: !340, size: 32, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1246, file: !341, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1246, file: !341, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1246, file: !341, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1246, file: !341, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1246, file: !341, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1148, file: !1149, line: 504, baseType: !1269, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1149, line: 504, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1148, file: !1149, line: 507, baseType: !1193, size: 64, offset: 768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1148, file: !1149, line: 510, baseType: !402, size: 32, offset: 832)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1148, file: !1149, line: 513, baseType: !402, size: 32, offset: 864)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1148, file: !1149, line: 516, baseType: !534, size: 32, offset: 896)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1148, file: !1149, line: 519, baseType: !534, size: 32, offset: 928)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1148, file: !1149, line: 522, baseType: !7, size: 32, offset: 960)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1148, file: !1149, line: 523, baseType: !7, size: 32, offset: 992)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1148, file: !1149, line: 528, baseType: !407, size: 64, offset: 1024)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1148, file: !1149, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1148, file: !1149, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1148, file: !1149, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1148, file: !1149, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1148, file: !1149, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1148, file: !1149, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1148, file: !1149, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1148, file: !1149, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1148, file: !1149, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1148, file: !1149, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1148, file: !1149, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1148, file: !1149, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1148, file: !1149, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1148, file: !1149, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1148, file: !1149, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1148, file: !1149, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1143, file: !135, line: 3254, baseType: !409, size: 64, offset: 1536)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1143, file: !135, line: 3257, baseType: !409, size: 64, offset: 1600)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1143, file: !135, line: 3258, baseType: !409, size: 64, offset: 1664)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1143, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1143, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1143, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1143, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1143, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1143, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1143, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1143, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1143, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1143, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1143, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1143, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1143, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1143, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1143, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1143, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1143, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1143, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !135, line: 3394, baseType: !1317, size: 1344)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1317, file: !135, line: 2280, baseType: !448, size: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1317, file: !135, line: 2281, baseType: !409, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1317, file: !135, line: 2282, baseType: !409, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1317, file: !135, line: 2283, baseType: !409, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1317, file: !135, line: 2284, baseType: !409, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1317, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1317, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1317, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1317, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1317, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1317, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1317, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1317, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1317, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1317, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1317, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1317, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1317, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1317, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1317, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1317, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1317, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1317, file: !135, line: 2306, baseType: !991, size: 32, offset: 544)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1317, file: !135, line: 2307, baseType: !409, size: 64, offset: 576)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1317, file: !135, line: 2308, baseType: !409, size: 64, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1317, file: !135, line: 2314, baseType: !1345, size: 64, offset: 704)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1345, file: !135, line: 2310, baseType: !402, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1345, file: !135, line: 2311, baseType: !407, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1345, file: !135, line: 2312, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1317, file: !135, line: 2315, baseType: !409, size: 64, offset: 768)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1317, file: !135, line: 2316, baseType: !409, size: 64, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1317, file: !135, line: 2317, baseType: !409, size: 64, offset: 896)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1317, file: !135, line: 2318, baseType: !409, size: 64, offset: 960)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1317, file: !135, line: 2319, baseType: !409, size: 64, offset: 1024)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1317, file: !135, line: 2320, baseType: !409, size: 64, offset: 1088)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1317, file: !135, line: 2321, baseType: !409, size: 64, offset: 1152)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1317, file: !135, line: 2322, baseType: !409, size: 64, offset: 1216)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1317, file: !135, line: 2324, baseType: !1361, size: 64, offset: 1280)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !412, file: !135, line: 3395, baseType: !1364, size: 320)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1364, file: !135, line: 1470, baseType: !448, size: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1364, file: !135, line: 1471, baseType: !409, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1364, file: !135, line: 1472, baseType: !409, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !412, file: !135, line: 3396, baseType: !1370, size: 320)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1371)
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1370, file: !135, line: 1483, baseType: !448, size: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1370, file: !135, line: 1484, baseType: !402, size: 32, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1370, file: !135, line: 1485, baseType: !788, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !412, file: !135, line: 3397, baseType: !1376, size: 384)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1376, file: !135, line: 1830, baseType: !448, size: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1376, file: !135, line: 1831, baseType: !534, size: 32, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1376, file: !135, line: 1832, baseType: !409, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1376, file: !135, line: 1835, baseType: !788, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !412, file: !135, line: 3398, baseType: !1383, size: 704)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1392}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1383, file: !135, line: 1899, baseType: !448, size: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1383, file: !135, line: 1902, baseType: !409, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1383, file: !135, line: 1905, baseType: !734, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1383, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1383, file: !135, line: 1911, baseType: !1390, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !135, line: 1876, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1383, file: !135, line: 1914, baseType: !776, size: 256, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !412, file: !135, line: 3399, baseType: !1394, size: 704)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1413, !1414, !1415, !1416, !1417}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1394, file: !135, line: 2009, baseType: !448, size: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1394, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1394, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1394, file: !135, line: 2014, baseType: !534, size: 32, offset: 224)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1394, file: !135, line: 2016, baseType: !409, size: 64, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1394, file: !135, line: 2017, baseType: !1402, size: 64, offset: 320)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1404, file: !135, line: 183, baseType: !1407, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !1409)
!1409 = !{!1410, !1411, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1408, file: !135, line: 182, baseType: !7, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1408, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1408, file: !135, line: 182, baseType: !788, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1394, file: !135, line: 2019, baseType: !409, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1394, file: !135, line: 2020, baseType: !409, size: 64, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1394, file: !135, line: 2021, baseType: !409, size: 64, offset: 512)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1394, file: !135, line: 2022, baseType: !409, size: 64, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1394, file: !135, line: 2023, baseType: !409, size: 64, offset: 640)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !412, file: !135, line: 3400, baseType: !1419, size: 832)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1419, file: !135, line: 2431, baseType: !448, size: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1419, file: !135, line: 2433, baseType: !409, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1419, file: !135, line: 2434, baseType: !409, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1419, file: !135, line: 2435, baseType: !409, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1419, file: !135, line: 2436, baseType: !409, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1419, file: !135, line: 2437, baseType: !1402, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1419, file: !135, line: 2438, baseType: !409, size: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1419, file: !135, line: 2440, baseType: !409, size: 64, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1419, file: !135, line: 2441, baseType: !409, size: 64, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1419, file: !135, line: 2443, baseType: !1431, size: 128, offset: 704)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1432, file: !135, line: 182, baseType: !1407, size: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !412, file: !135, line: 3401, baseType: !1436, size: 320)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1437)
!1437 = !{!1438, !1439, !1446}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1436, file: !135, line: 3329, baseType: !448, size: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1436, file: !135, line: 3330, baseType: !1440, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1442)
!1442 = !{!1443, !1444, !1445}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1441, file: !135, line: 3322, baseType: !1440, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1441, file: !135, line: 3323, baseType: !1440, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1441, file: !135, line: 3324, baseType: !409, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1436, file: !135, line: 3331, baseType: !1440, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !412, file: !135, line: 3402, baseType: !1448, size: 256)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1448, file: !135, line: 1541, baseType: !448, size: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1448, file: !135, line: 1542, baseType: !1452, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1454, file: !135, line: 1538, baseType: !1457, size: 192)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1459)
!1459 = !{!1460, !1461, !1462}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1458, file: !135, line: 1537, baseType: !7, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1458, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1458, file: !135, line: 1537, baseType: !1463, size: 128, offset: 64)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1464, size: 128, elements: !508)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1465)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1465, file: !135, line: 1533, baseType: !409, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1465, file: !135, line: 1534, baseType: !409, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !412, file: !135, line: 3403, baseType: !1470, size: 512)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1475, !1481, !1482, !1483}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1470, file: !135, line: 1939, baseType: !448, size: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1470, file: !135, line: 1940, baseType: !534, size: 32, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1470, file: !135, line: 1941, baseType: !345, size: 32, offset: 224)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1470, file: !135, line: 1946, baseType: !1476, size: 32, offset: 256)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1477)
!1477 = !{!1478, !1479, !1480}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1476, file: !135, line: 1943, baseType: !363, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1476, file: !135, line: 1944, baseType: !370, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1476, file: !135, line: 1945, baseType: !134, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1470, file: !135, line: 1950, baseType: !723, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1470, file: !135, line: 1951, baseType: !723, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1470, file: !135, line: 1953, baseType: !788, size: 64, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !412, file: !135, line: 3404, baseType: !1485, size: 1664)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1485, file: !135, line: 3338, baseType: !448, size: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1485, file: !135, line: 3341, baseType: !1489, size: 1472, offset: 192)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1490, line: 410, size: 1472, elements: !1491)
!1490 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1489, file: !1490, line: 412, baseType: !402, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1489, file: !1490, line: 413, baseType: !402, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1489, file: !1490, line: 414, baseType: !402, size: 32, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1489, file: !1490, line: 415, baseType: !402, size: 32, offset: 96)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1489, file: !1490, line: 416, baseType: !402, size: 32, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1489, file: !1490, line: 417, baseType: !402, size: 32, offset: 160)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1489, file: !1490, line: 418, baseType: !401, size: 8, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1489, file: !1490, line: 419, baseType: !401, size: 8, offset: 200)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1489, file: !1490, line: 420, baseType: !1501, size: 8, offset: 208)
!1501 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1489, file: !1490, line: 421, baseType: !1501, size: 8, offset: 216)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1489, file: !1490, line: 422, baseType: !1501, size: 8, offset: 224)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1489, file: !1490, line: 423, baseType: !1501, size: 8, offset: 232)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1489, file: !1490, line: 424, baseType: !1501, size: 8, offset: 240)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1489, file: !1490, line: 425, baseType: !1501, size: 8, offset: 248)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1489, file: !1490, line: 426, baseType: !1501, size: 8, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1489, file: !1490, line: 427, baseType: !1501, size: 8, offset: 264)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1489, file: !1490, line: 428, baseType: !1501, size: 8, offset: 272)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1489, file: !1490, line: 429, baseType: !1501, size: 8, offset: 280)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1489, file: !1490, line: 430, baseType: !1501, size: 8, offset: 288)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1489, file: !1490, line: 431, baseType: !1501, size: 8, offset: 296)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1489, file: !1490, line: 432, baseType: !1501, size: 8, offset: 304)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1489, file: !1490, line: 433, baseType: !1501, size: 8, offset: 312)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1489, file: !1490, line: 434, baseType: !1501, size: 8, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1489, file: !1490, line: 435, baseType: !1501, size: 8, offset: 328)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1489, file: !1490, line: 436, baseType: !1501, size: 8, offset: 336)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1489, file: !1490, line: 437, baseType: !1501, size: 8, offset: 344)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1489, file: !1490, line: 438, baseType: !1501, size: 8, offset: 352)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1489, file: !1490, line: 439, baseType: !1501, size: 8, offset: 360)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1489, file: !1490, line: 440, baseType: !1501, size: 8, offset: 368)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1489, file: !1490, line: 441, baseType: !1501, size: 8, offset: 376)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1489, file: !1490, line: 442, baseType: !1501, size: 8, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1489, file: !1490, line: 443, baseType: !1501, size: 8, offset: 392)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1489, file: !1490, line: 444, baseType: !1501, size: 8, offset: 400)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1489, file: !1490, line: 445, baseType: !1501, size: 8, offset: 408)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1489, file: !1490, line: 446, baseType: !1501, size: 8, offset: 416)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1489, file: !1490, line: 447, baseType: !1501, size: 8, offset: 424)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1489, file: !1490, line: 448, baseType: !1501, size: 8, offset: 432)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1489, file: !1490, line: 449, baseType: !1501, size: 8, offset: 440)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1489, file: !1490, line: 450, baseType: !1501, size: 8, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1489, file: !1490, line: 451, baseType: !1501, size: 8, offset: 456)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1489, file: !1490, line: 452, baseType: !1501, size: 8, offset: 464)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1489, file: !1490, line: 453, baseType: !1501, size: 8, offset: 472)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1489, file: !1490, line: 454, baseType: !1501, size: 8, offset: 480)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1489, file: !1490, line: 455, baseType: !1501, size: 8, offset: 488)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1489, file: !1490, line: 456, baseType: !1501, size: 8, offset: 496)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1489, file: !1490, line: 457, baseType: !1501, size: 8, offset: 504)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1489, file: !1490, line: 458, baseType: !1501, size: 8, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1489, file: !1490, line: 459, baseType: !1501, size: 8, offset: 520)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1489, file: !1490, line: 460, baseType: !1501, size: 8, offset: 528)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1489, file: !1490, line: 461, baseType: !1501, size: 8, offset: 536)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1489, file: !1490, line: 462, baseType: !1501, size: 8, offset: 544)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1489, file: !1490, line: 463, baseType: !1501, size: 8, offset: 552)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1489, file: !1490, line: 464, baseType: !1501, size: 8, offset: 560)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1489, file: !1490, line: 465, baseType: !1501, size: 8, offset: 568)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1489, file: !1490, line: 466, baseType: !1501, size: 8, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1489, file: !1490, line: 467, baseType: !1501, size: 8, offset: 584)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1489, file: !1490, line: 468, baseType: !1501, size: 8, offset: 592)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1489, file: !1490, line: 469, baseType: !1501, size: 8, offset: 600)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1489, file: !1490, line: 470, baseType: !1501, size: 8, offset: 608)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1489, file: !1490, line: 471, baseType: !1501, size: 8, offset: 616)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1489, file: !1490, line: 472, baseType: !1501, size: 8, offset: 624)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1489, file: !1490, line: 473, baseType: !1501, size: 8, offset: 632)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1489, file: !1490, line: 474, baseType: !1501, size: 8, offset: 640)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1489, file: !1490, line: 475, baseType: !1501, size: 8, offset: 648)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1489, file: !1490, line: 476, baseType: !1501, size: 8, offset: 656)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1489, file: !1490, line: 477, baseType: !1501, size: 8, offset: 664)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1489, file: !1490, line: 478, baseType: !1501, size: 8, offset: 672)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1489, file: !1490, line: 479, baseType: !1501, size: 8, offset: 680)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1489, file: !1490, line: 480, baseType: !1501, size: 8, offset: 688)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1489, file: !1490, line: 481, baseType: !1501, size: 8, offset: 696)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1489, file: !1490, line: 482, baseType: !1501, size: 8, offset: 704)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1489, file: !1490, line: 483, baseType: !1501, size: 8, offset: 712)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1489, file: !1490, line: 484, baseType: !1501, size: 8, offset: 720)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1489, file: !1490, line: 485, baseType: !1501, size: 8, offset: 728)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1489, file: !1490, line: 486, baseType: !1501, size: 8, offset: 736)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1489, file: !1490, line: 487, baseType: !1501, size: 8, offset: 744)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1489, file: !1490, line: 488, baseType: !1501, size: 8, offset: 752)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1489, file: !1490, line: 489, baseType: !1501, size: 8, offset: 760)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1489, file: !1490, line: 490, baseType: !1501, size: 8, offset: 768)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1489, file: !1490, line: 491, baseType: !1501, size: 8, offset: 776)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1489, file: !1490, line: 492, baseType: !1501, size: 8, offset: 784)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1489, file: !1490, line: 493, baseType: !1501, size: 8, offset: 792)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1489, file: !1490, line: 494, baseType: !1501, size: 8, offset: 800)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1489, file: !1490, line: 495, baseType: !1501, size: 8, offset: 808)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1489, file: !1490, line: 496, baseType: !1501, size: 8, offset: 816)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1489, file: !1490, line: 497, baseType: !1501, size: 8, offset: 824)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1489, file: !1490, line: 498, baseType: !1501, size: 8, offset: 832)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1489, file: !1490, line: 499, baseType: !1501, size: 8, offset: 840)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1489, file: !1490, line: 500, baseType: !1501, size: 8, offset: 848)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1489, file: !1490, line: 501, baseType: !1501, size: 8, offset: 856)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1489, file: !1490, line: 502, baseType: !1501, size: 8, offset: 864)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1489, file: !1490, line: 503, baseType: !1501, size: 8, offset: 872)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1489, file: !1490, line: 504, baseType: !1501, size: 8, offset: 880)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1489, file: !1490, line: 505, baseType: !1501, size: 8, offset: 888)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1489, file: !1490, line: 506, baseType: !1501, size: 8, offset: 896)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1489, file: !1490, line: 507, baseType: !1501, size: 8, offset: 904)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1489, file: !1490, line: 508, baseType: !1501, size: 8, offset: 912)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1489, file: !1490, line: 509, baseType: !1501, size: 8, offset: 920)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1489, file: !1490, line: 510, baseType: !1501, size: 8, offset: 928)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1489, file: !1490, line: 511, baseType: !1501, size: 8, offset: 936)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1489, file: !1490, line: 512, baseType: !1501, size: 8, offset: 944)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1489, file: !1490, line: 513, baseType: !1501, size: 8, offset: 952)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1489, file: !1490, line: 514, baseType: !1501, size: 8, offset: 960)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1489, file: !1490, line: 515, baseType: !1501, size: 8, offset: 968)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1489, file: !1490, line: 516, baseType: !1501, size: 8, offset: 976)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1489, file: !1490, line: 517, baseType: !1501, size: 8, offset: 984)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1489, file: !1490, line: 518, baseType: !1501, size: 8, offset: 992)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1489, file: !1490, line: 519, baseType: !1501, size: 8, offset: 1000)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1489, file: !1490, line: 520, baseType: !1501, size: 8, offset: 1008)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1489, file: !1490, line: 521, baseType: !1501, size: 8, offset: 1016)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1489, file: !1490, line: 522, baseType: !1501, size: 8, offset: 1024)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1489, file: !1490, line: 523, baseType: !1501, size: 8, offset: 1032)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1489, file: !1490, line: 524, baseType: !1501, size: 8, offset: 1040)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1489, file: !1490, line: 525, baseType: !1501, size: 8, offset: 1048)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1489, file: !1490, line: 526, baseType: !1501, size: 8, offset: 1056)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1489, file: !1490, line: 527, baseType: !1501, size: 8, offset: 1064)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1489, file: !1490, line: 528, baseType: !1501, size: 8, offset: 1072)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1489, file: !1490, line: 529, baseType: !1501, size: 8, offset: 1080)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1489, file: !1490, line: 530, baseType: !1501, size: 8, offset: 1088)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1489, file: !1490, line: 531, baseType: !1501, size: 8, offset: 1096)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1489, file: !1490, line: 532, baseType: !1501, size: 8, offset: 1104)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1489, file: !1490, line: 533, baseType: !1501, size: 8, offset: 1112)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1489, file: !1490, line: 534, baseType: !1501, size: 8, offset: 1120)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1489, file: !1490, line: 535, baseType: !1501, size: 8, offset: 1128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1489, file: !1490, line: 536, baseType: !1501, size: 8, offset: 1136)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1489, file: !1490, line: 537, baseType: !1501, size: 8, offset: 1144)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1489, file: !1490, line: 538, baseType: !1501, size: 8, offset: 1152)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1489, file: !1490, line: 539, baseType: !1501, size: 8, offset: 1160)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1489, file: !1490, line: 540, baseType: !1501, size: 8, offset: 1168)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1489, file: !1490, line: 541, baseType: !1501, size: 8, offset: 1176)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1489, file: !1490, line: 542, baseType: !1501, size: 8, offset: 1184)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1489, file: !1490, line: 543, baseType: !1501, size: 8, offset: 1192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1489, file: !1490, line: 544, baseType: !1501, size: 8, offset: 1200)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1489, file: !1490, line: 545, baseType: !1501, size: 8, offset: 1208)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1489, file: !1490, line: 546, baseType: !1501, size: 8, offset: 1216)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1489, file: !1490, line: 547, baseType: !1501, size: 8, offset: 1224)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1489, file: !1490, line: 548, baseType: !1501, size: 8, offset: 1232)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1489, file: !1490, line: 549, baseType: !1501, size: 8, offset: 1240)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1489, file: !1490, line: 550, baseType: !1501, size: 8, offset: 1248)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1489, file: !1490, line: 551, baseType: !1501, size: 8, offset: 1256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1489, file: !1490, line: 552, baseType: !1501, size: 8, offset: 1264)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1489, file: !1490, line: 553, baseType: !1501, size: 8, offset: 1272)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1489, file: !1490, line: 554, baseType: !1501, size: 8, offset: 1280)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1489, file: !1490, line: 555, baseType: !1501, size: 8, offset: 1288)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1489, file: !1490, line: 556, baseType: !1501, size: 8, offset: 1296)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1489, file: !1490, line: 557, baseType: !1501, size: 8, offset: 1304)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1489, file: !1490, line: 558, baseType: !1501, size: 8, offset: 1312)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1489, file: !1490, line: 559, baseType: !1501, size: 8, offset: 1320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1489, file: !1490, line: 560, baseType: !1501, size: 8, offset: 1328)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1489, file: !1490, line: 561, baseType: !1501, size: 8, offset: 1336)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1489, file: !1490, line: 562, baseType: !1501, size: 8, offset: 1344)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1489, file: !1490, line: 563, baseType: !1501, size: 8, offset: 1352)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1489, file: !1490, line: 564, baseType: !1501, size: 8, offset: 1360)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1489, file: !1490, line: 565, baseType: !1501, size: 8, offset: 1368)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1489, file: !1490, line: 566, baseType: !1501, size: 8, offset: 1376)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1489, file: !1490, line: 567, baseType: !1501, size: 8, offset: 1384)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1489, file: !1490, line: 568, baseType: !1501, size: 8, offset: 1392)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1489, file: !1490, line: 569, baseType: !1501, size: 8, offset: 1400)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1489, file: !1490, line: 570, baseType: !1501, size: 8, offset: 1408)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1489, file: !1490, line: 571, baseType: !1501, size: 8, offset: 1416)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1489, file: !1490, line: 572, baseType: !1501, size: 8, offset: 1424)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1489, file: !1490, line: 573, baseType: !1501, size: 8, offset: 1432)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1489, file: !1490, line: 574, baseType: !1501, size: 8, offset: 1440)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !412, file: !135, line: 3405, baseType: !1657, size: 384)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1657, file: !135, line: 3353, baseType: !448, size: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1657, file: !135, line: 3356, baseType: !1661, size: 192, offset: 192)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1490, line: 578, size: 192, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1661, file: !1490, line: 580, baseType: !402, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1661, file: !1490, line: 581, baseType: !402, size: 32, offset: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1661, file: !1490, line: 582, baseType: !402, size: 32, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1661, file: !1490, line: 583, baseType: !402, size: 32, offset: 96)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1661, file: !1490, line: 584, baseType: !401, size: 8, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1661, file: !1490, line: 585, baseType: !401, size: 8, offset: 136)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1661, file: !1490, line: 586, baseType: !401, size: 8, offset: 144)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1661, file: !1490, line: 587, baseType: !401, size: 8, offset: 152)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1661, file: !1490, line: 588, baseType: !401, size: 8, offset: 160)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1661, file: !1490, line: 589, baseType: !401, size: 8, offset: 168)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1661, file: !1490, line: 590, baseType: !401, size: 8, offset: 176)
!1674 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_layout_info_s", file: !135, line: 4198, size: 512, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !1676, file: !135, line: 4201, baseType: !409, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1676, file: !135, line: 4204, baseType: !409, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "offset_align", scope: !1676, file: !135, line: 4206, baseType: !7, size: 32, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "bitpos", scope: !1676, file: !135, line: 4208, baseType: !409, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "record_align", scope: !1676, file: !135, line: 4210, baseType: !7, size: 32, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "unpacked_align", scope: !1676, file: !135, line: 4213, baseType: !7, size: 32, offset: 288)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "prev_field", scope: !1676, file: !135, line: 4215, baseType: !409, size: 64, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pending_statics", scope: !1676, file: !135, line: 4218, baseType: !409, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_in_alignment", scope: !1676, file: !135, line: 4220, baseType: !402, size: 32, offset: 448)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "packed_maybe_necessary", scope: !1676, file: !135, line: 4223, baseType: !402, size: 32, offset: 480)
!1688 = !{!0, !1689, !1691, !1705, !1708, !1710, !1712, !1714}
!1689 = !DIGlobalVariableExpression(var: !1690, expr: !DIExpression())
!1690 = distinct !DIGlobalVariable(name: "initial_max_fld_align", scope: !2, file: !3, line: 53, type: !7, isLocal: false, isDefinition: true)
!1691 = !DIGlobalVariableExpression(var: !1692, expr: !DIExpression())
!1692 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_stor_layout_h", scope: !2, file: !1693, line: 24, type: !1694, isLocal: false, isDefinition: true)
!1693 = !DIFile(filename: "./gt-stor-layout.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1695, size: 960, elements: !483)
!1695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1696)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1697, line: 69, size: 320, elements: !1698)
!1697 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1698 = !{!1699, !1700, !1701, !1702, !1704}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1696, file: !1697, line: 70, baseType: !406, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1696, file: !1697, line: 71, baseType: !880, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1696, file: !1697, line: 72, baseType: !880, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1696, file: !1697, line: 73, baseType: !1703, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1697, line: 65, baseType: !1211)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1696, file: !1697, line: 74, baseType: !1703, size: 64, offset: 256)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(name: "sizetype_tab", scope: !2, file: !3, line: 47, type: !1707, isLocal: false, isDefinition: true)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 256, elements: !676)
!1708 = !DIGlobalVariableExpression(var: !1709, expr: !DIExpression())
!1709 = distinct !DIGlobalVariable(name: "pending_sizes", scope: !2, file: !3, line: 72, type: !409, isLocal: true, isDefinition: true)
!1710 = !DIGlobalVariableExpression(var: !1711, expr: !DIExpression())
!1711 = distinct !DIGlobalVariable(name: "size_functions", scope: !2, file: !3, line: 173, type: !1402, isLocal: true, isDefinition: true)
!1712 = !DIGlobalVariableExpression(var: !1713, expr: !DIExpression())
!1713 = distinct !DIGlobalVariable(name: "reference_types_internal", scope: !2, file: !3, line: 58, type: !402, isLocal: true, isDefinition: true)
!1714 = !DIGlobalVariableExpression(var: !1715, expr: !DIExpression())
!1715 = distinct !DIGlobalVariable(name: "fnno", scope: !1716, file: !3, line: 234, type: !463, isLocal: true, isDefinition: true)
!1716 = distinct !DISubprogram(name: "self_referential_size", scope: !3, file: !3, line: 232, type: !1717, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!409, !409}
!1719 = !{!1720, !1721, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1741, !1745, !1746, !1747}
!1720 = !DILocalVariable(name: "size", arg: 1, scope: !1716, file: !3, line: 232, type: !409)
!1721 = !DILocalVariable(name: "self_refs", scope: !1716, file: !3, line: 235, type: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !135, line: 184, baseType: !1724)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !135, line: 184, size: 128, elements: !1725)
!1725 = !{!1726}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1724, file: !135, line: 184, baseType: !1407, size: 128)
!1727 = !DILocalVariable(name: "param_type_list", scope: !1716, file: !3, line: 236, type: !409)
!1728 = !DILocalVariable(name: "param_decl_list", scope: !1716, file: !3, line: 236, type: !409)
!1729 = !DILocalVariable(name: "arg_list", scope: !1716, file: !3, line: 236, type: !409)
!1730 = !DILocalVariable(name: "t", scope: !1716, file: !3, line: 237, type: !409)
!1731 = !DILocalVariable(name: "ref", scope: !1716, file: !3, line: 237, type: !409)
!1732 = !DILocalVariable(name: "return_type", scope: !1716, file: !3, line: 237, type: !409)
!1733 = !DILocalVariable(name: "fntype", scope: !1716, file: !3, line: 237, type: !409)
!1734 = !DILocalVariable(name: "fnname", scope: !1716, file: !3, line: 237, type: !409)
!1735 = !DILocalVariable(name: "fndecl", scope: !1716, file: !3, line: 237, type: !409)
!1736 = !DILocalVariable(name: "i", scope: !1716, file: !3, line: 238, type: !7)
!1737 = !DILocalVariable(name: "buf", scope: !1716, file: !3, line: 239, type: !1738)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 1024, elements: !1739)
!1739 = !{!1740}
!1740 = !DISubrange(count: 128)
!1741 = !DILocalVariable(name: "subst", scope: !1742, file: !3, line: 260, type: !409)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 259, column: 5)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 258, column: 3)
!1744 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 258, column: 3)
!1745 = !DILocalVariable(name: "param_name", scope: !1742, file: !3, line: 260, type: !409)
!1746 = !DILocalVariable(name: "param_type", scope: !1742, file: !3, line: 260, type: !409)
!1747 = !DILocalVariable(name: "param_decl", scope: !1742, file: !3, line: 260, type: !409)
!1748 = !DIGlobalVariableExpression(var: !1713, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1749 = !{i32 2, !"Dwarf Version", i32 4}
!1750 = !{i32 2, !"Debug Info Version", i32 3}
!1751 = !{i32 1, !"wchar_size", i32 4}
!1752 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1753 = distinct !DISubprogram(name: "vprintf", scope: !1754, file: !1754, line: 39, type: !1755, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1765)
!1754 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!402, !1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !407)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1760)
!1760 = !{!1761, !1762, !1763, !1764}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1759, file: !3, baseType: !7, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1759, file: !3, baseType: !7, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1759, file: !3, baseType: !406, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1759, file: !3, baseType: !406, size: 64, offset: 128)
!1765 = !{!1766, !1767}
!1766 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1753, file: !1754, line: 39, type: !1757)
!1767 = !DILocalVariable(name: "__arg", arg: 2, scope: !1753, file: !1754, line: 39, type: !1758)
!1768 = !DILocation(line: 0, scope: !1753)
!1769 = !DILocation(line: 41, column: 20, scope: !1753)
!1770 = !DILocation(line: 41, column: 10, scope: !1753)
!1771 = !DILocation(line: 41, column: 3, scope: !1753)
!1772 = distinct !DISubprogram(name: "getchar", scope: !1754, file: !1754, line: 47, type: !1773, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!402}
!1775 = !{}
!1776 = !DILocation(line: 49, column: 16, scope: !1772)
!1777 = !DILocation(line: 49, column: 10, scope: !1772)
!1778 = !DILocation(line: 49, column: 3, scope: !1772)
!1779 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1754, file: !1754, line: 56, type: !1780, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1832)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!402, !1782}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1784, line: 7, baseType: !1785)
!1784 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1786, line: 49, size: 1728, elements: !1787)
!1786 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1803, !1805, !1806, !1807, !1810, !1811, !1812, !1813, !1816, !1818, !1821, !1824, !1825, !1826, !1827, !1828}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1785, file: !1786, line: 51, baseType: !402, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1785, file: !1786, line: 54, baseType: !404, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1785, file: !1786, line: 55, baseType: !404, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1785, file: !1786, line: 56, baseType: !404, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1785, file: !1786, line: 57, baseType: !404, size: 64, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1785, file: !1786, line: 58, baseType: !404, size: 64, offset: 320)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1785, file: !1786, line: 59, baseType: !404, size: 64, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1785, file: !1786, line: 60, baseType: !404, size: 64, offset: 448)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1785, file: !1786, line: 61, baseType: !404, size: 64, offset: 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1785, file: !1786, line: 64, baseType: !404, size: 64, offset: 576)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1785, file: !1786, line: 65, baseType: !404, size: 64, offset: 640)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1785, file: !1786, line: 66, baseType: !404, size: 64, offset: 704)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1785, file: !1786, line: 68, baseType: !1801, size: 64, offset: 768)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1786, line: 36, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1785, file: !1786, line: 70, baseType: !1804, size: 64, offset: 832)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1785, file: !1786, line: 72, baseType: !402, size: 32, offset: 896)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1785, file: !1786, line: 73, baseType: !402, size: 32, offset: 928)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1785, file: !1786, line: 74, baseType: !1808, size: 64, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1809, line: 152, baseType: !465)
!1809 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1785, file: !1786, line: 77, baseType: !1674, size: 16, offset: 1024)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1785, file: !1786, line: 78, baseType: !1501, size: 8, offset: 1040)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1785, file: !1786, line: 79, baseType: !507, size: 8, offset: 1048)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1785, file: !1786, line: 81, baseType: !1814, size: 64, offset: 1088)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1786, line: 43, baseType: null)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1785, file: !1786, line: 89, baseType: !1817, size: 64, offset: 1152)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1809, line: 153, baseType: !465)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1785, file: !1786, line: 91, baseType: !1819, size: 64, offset: 1216)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1786, line: 37, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1785, file: !1786, line: 92, baseType: !1822, size: 64, offset: 1280)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1786, line: 38, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1785, file: !1786, line: 93, baseType: !1804, size: 64, offset: 1344)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1785, file: !1786, line: 94, baseType: !406, size: 64, offset: 1408)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1785, file: !1786, line: 95, baseType: !880, size: 64, offset: 1472)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1785, file: !1786, line: 96, baseType: !402, size: 32, offset: 1536)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1785, file: !1786, line: 98, baseType: !1829, size: 160, offset: 1568)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 160, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 20)
!1832 = !{!1833}
!1833 = !DILocalVariable(name: "__fp", arg: 1, scope: !1779, file: !1754, line: 56, type: !1782)
!1834 = !DILocation(line: 0, scope: !1779)
!1835 = !DILocation(line: 58, column: 10, scope: !1779)
!1836 = !DILocation(line: 58, column: 3, scope: !1779)
!1837 = distinct !DISubprogram(name: "getc_unlocked", scope: !1754, file: !1754, line: 66, type: !1780, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1838)
!1838 = !{!1839}
!1839 = !DILocalVariable(name: "__fp", arg: 1, scope: !1837, file: !1754, line: 66, type: !1782)
!1840 = !DILocation(line: 0, scope: !1837)
!1841 = !DILocation(line: 68, column: 10, scope: !1837)
!1842 = !DILocation(line: 68, column: 3, scope: !1837)
!1843 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1754, file: !1754, line: 73, type: !1773, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1775)
!1844 = !DILocation(line: 75, column: 10, scope: !1843)
!1845 = !DILocation(line: 75, column: 3, scope: !1843)
!1846 = distinct !DISubprogram(name: "putchar", scope: !1754, file: !1754, line: 82, type: !1847, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!402, !402}
!1849 = !{!1850}
!1850 = !DILocalVariable(name: "__c", arg: 1, scope: !1846, file: !1754, line: 82, type: !402)
!1851 = !DILocation(line: 0, scope: !1846)
!1852 = !DILocation(line: 84, column: 21, scope: !1846)
!1853 = !DILocation(line: 84, column: 10, scope: !1846)
!1854 = !DILocation(line: 84, column: 3, scope: !1846)
!1855 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1754, file: !1754, line: 91, type: !1856, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!402, !402, !1782}
!1858 = !{!1859, !1860}
!1859 = !DILocalVariable(name: "__c", arg: 1, scope: !1855, file: !1754, line: 91, type: !402)
!1860 = !DILocalVariable(name: "__stream", arg: 2, scope: !1855, file: !1754, line: 91, type: !1782)
!1861 = !DILocation(line: 0, scope: !1855)
!1862 = !DILocation(line: 93, column: 10, scope: !1855)
!1863 = !DILocation(line: 93, column: 3, scope: !1855)
!1864 = distinct !DISubprogram(name: "putc_unlocked", scope: !1754, file: !1754, line: 101, type: !1856, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1865)
!1865 = !{!1866, !1867}
!1866 = !DILocalVariable(name: "__c", arg: 1, scope: !1864, file: !1754, line: 101, type: !402)
!1867 = !DILocalVariable(name: "__stream", arg: 2, scope: !1864, file: !1754, line: 101, type: !1782)
!1868 = !DILocation(line: 0, scope: !1864)
!1869 = !DILocation(line: 103, column: 10, scope: !1864)
!1870 = !DILocation(line: 103, column: 3, scope: !1864)
!1871 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1754, file: !1754, line: 108, type: !1847, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1872)
!1872 = !{!1873}
!1873 = !DILocalVariable(name: "__c", arg: 1, scope: !1871, file: !1754, line: 108, type: !402)
!1874 = !DILocation(line: 0, scope: !1871)
!1875 = !DILocation(line: 110, column: 10, scope: !1871)
!1876 = !DILocation(line: 110, column: 3, scope: !1871)
!1877 = distinct !DISubprogram(name: "getline", scope: !1754, file: !1754, line: 118, type: !1878, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1882)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!1880, !403, !1881, !1782}
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1809, line: 193, baseType: !465)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!1882 = !{!1883, !1884, !1885}
!1883 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1877, file: !1754, line: 118, type: !403)
!1884 = !DILocalVariable(name: "__n", arg: 2, scope: !1877, file: !1754, line: 118, type: !1881)
!1885 = !DILocalVariable(name: "__stream", arg: 3, scope: !1877, file: !1754, line: 118, type: !1782)
!1886 = !DILocation(line: 0, scope: !1877)
!1887 = !DILocation(line: 120, column: 10, scope: !1877)
!1888 = !DILocation(line: 120, column: 3, scope: !1877)
!1889 = distinct !DISubprogram(name: "feof_unlocked", scope: !1754, file: !1754, line: 128, type: !1780, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1890)
!1890 = !{!1891}
!1891 = !DILocalVariable(name: "__stream", arg: 1, scope: !1889, file: !1754, line: 128, type: !1782)
!1892 = !DILocation(line: 0, scope: !1889)
!1893 = !DILocation(line: 130, column: 10, scope: !1889)
!1894 = !DILocation(line: 130, column: 3, scope: !1889)
!1895 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1754, file: !1754, line: 135, type: !1780, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1896 = !{!1897}
!1897 = !DILocalVariable(name: "__stream", arg: 1, scope: !1895, file: !1754, line: 135, type: !1782)
!1898 = !DILocation(line: 0, scope: !1895)
!1899 = !DILocation(line: 137, column: 10, scope: !1895)
!1900 = !DILocation(line: 137, column: 3, scope: !1895)
!1901 = distinct !DISubprogram(name: "tolower", scope: !1902, file: !1902, line: 207, type: !1847, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1903)
!1902 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1903 = !{!1904}
!1904 = !DILocalVariable(name: "__c", arg: 1, scope: !1901, file: !1902, line: 207, type: !402)
!1905 = !DILocation(line: 0, scope: !1901)
!1906 = !DILocation(line: 209, column: 22, scope: !1901)
!1907 = !DILocation(line: 209, column: 39, scope: !1901)
!1908 = !DILocation(line: 209, column: 38, scope: !1901)
!1909 = !DILocation(line: 209, column: 37, scope: !1901)
!1910 = !DILocation(line: 209, column: 10, scope: !1901)
!1911 = !DILocation(line: 209, column: 3, scope: !1901)
!1912 = distinct !DISubprogram(name: "toupper", scope: !1902, file: !1902, line: 213, type: !1847, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1913)
!1913 = !{!1914}
!1914 = !DILocalVariable(name: "__c", arg: 1, scope: !1912, file: !1902, line: 213, type: !402)
!1915 = !DILocation(line: 0, scope: !1912)
!1916 = !DILocation(line: 215, column: 22, scope: !1912)
!1917 = !DILocation(line: 215, column: 39, scope: !1912)
!1918 = !DILocation(line: 215, column: 38, scope: !1912)
!1919 = !DILocation(line: 215, column: 37, scope: !1912)
!1920 = !DILocation(line: 215, column: 10, scope: !1912)
!1921 = !DILocation(line: 215, column: 3, scope: !1912)
!1922 = distinct !DISubprogram(name: "atoi", scope: !1923, file: !1923, line: 361, type: !1924, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1926)
!1923 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!402, !407}
!1926 = !{!1927}
!1927 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1922, file: !1923, line: 361, type: !407)
!1928 = !DILocation(line: 0, scope: !1922)
!1929 = !DILocation(line: 363, column: 16, scope: !1922)
!1930 = !DILocation(line: 363, column: 10, scope: !1922)
!1931 = !DILocation(line: 363, column: 3, scope: !1922)
!1932 = distinct !DISubprogram(name: "atol", scope: !1923, file: !1923, line: 366, type: !1933, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!465, !407}
!1935 = !{!1936}
!1936 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1932, file: !1923, line: 366, type: !407)
!1937 = !DILocation(line: 0, scope: !1932)
!1938 = !DILocation(line: 368, column: 10, scope: !1932)
!1939 = !DILocation(line: 368, column: 3, scope: !1932)
!1940 = distinct !DISubprogram(name: "atoll", scope: !1923, file: !1923, line: 373, type: !1941, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1944)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1943, !407}
!1943 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1944 = !{!1945}
!1945 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1940, file: !1923, line: 373, type: !407)
!1946 = !DILocation(line: 0, scope: !1940)
!1947 = !DILocation(line: 375, column: 10, scope: !1940)
!1948 = !DILocation(line: 375, column: 3, scope: !1940)
!1949 = distinct !DISubprogram(name: "bsearch", scope: !1950, file: !1950, line: 20, type: !1951, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1954)
!1950 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!406, !1041, !1041, !880, !880, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1923, line: 808, baseType: !1206)
!1954 = !{!1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964}
!1955 = !DILocalVariable(name: "__key", arg: 1, scope: !1949, file: !1950, line: 20, type: !1041)
!1956 = !DILocalVariable(name: "__base", arg: 2, scope: !1949, file: !1950, line: 20, type: !1041)
!1957 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1949, file: !1950, line: 20, type: !880)
!1958 = !DILocalVariable(name: "__size", arg: 4, scope: !1949, file: !1950, line: 20, type: !880)
!1959 = !DILocalVariable(name: "__compar", arg: 5, scope: !1949, file: !1950, line: 21, type: !1953)
!1960 = !DILocalVariable(name: "__l", scope: !1949, file: !1950, line: 23, type: !880)
!1961 = !DILocalVariable(name: "__u", scope: !1949, file: !1950, line: 23, type: !880)
!1962 = !DILocalVariable(name: "__idx", scope: !1949, file: !1950, line: 23, type: !880)
!1963 = !DILocalVariable(name: "__p", scope: !1949, file: !1950, line: 24, type: !1041)
!1964 = !DILocalVariable(name: "__comparison", scope: !1949, file: !1950, line: 25, type: !402)
!1965 = !DILocation(line: 0, scope: !1949)
!1966 = !DILocation(line: 29, column: 3, scope: !1949)
!1967 = !DILocation(line: 27, column: 7, scope: !1949)
!1968 = !DILocation(line: 29, column: 14, scope: !1949)
!1969 = !DILocation(line: 31, column: 20, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1949, file: !1950, line: 30, column: 5)
!1971 = !DILocation(line: 31, column: 27, scope: !1970)
!1972 = !DILocation(line: 32, column: 56, scope: !1970)
!1973 = !DILocation(line: 32, column: 47, scope: !1970)
!1974 = !DILocation(line: 33, column: 22, scope: !1970)
!1975 = !DILocation(line: 34, column: 24, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1970, file: !1950, line: 34, column: 11)
!1977 = !DILocation(line: 34, column: 11, scope: !1970)
!1978 = !DILocation(line: 36, column: 29, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !1950, line: 36, column: 16)
!1980 = !DILocation(line: 36, column: 16, scope: !1976)
!1981 = !DILocation(line: 37, column: 14, scope: !1979)
!1982 = distinct !{!1982, !1966, !1983}
!1983 = !DILocation(line: 40, column: 5, scope: !1949)
!1984 = !DILocation(line: 43, column: 1, scope: !1949)
!1985 = distinct !DISubprogram(name: "atof", scope: !1986, file: !1986, line: 25, type: !1987, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1990)
!1986 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1989, !407}
!1989 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1990 = !{!1991}
!1991 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1985, file: !1986, line: 25, type: !407)
!1992 = !DILocation(line: 0, scope: !1985)
!1993 = !DILocation(line: 27, column: 10, scope: !1985)
!1994 = !DILocation(line: 27, column: 3, scope: !1985)
!1995 = distinct !DISubprogram(name: "strtoimax", scope: !1996, file: !1996, line: 324, type: !1997, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!1996 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1999, !1757, !2002, !402}
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2000, line: 101, baseType: !2001)
!2000 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1809, line: 72, baseType: !465)
!2002 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !403)
!2003 = !{!2004, !2005, !2006}
!2004 = !DILocalVariable(name: "nptr", arg: 1, scope: !1995, file: !1996, line: 324, type: !1757)
!2005 = !DILocalVariable(name: "endptr", arg: 2, scope: !1995, file: !1996, line: 324, type: !2002)
!2006 = !DILocalVariable(name: "base", arg: 3, scope: !1995, file: !1996, line: 324, type: !402)
!2007 = !DILocation(line: 0, scope: !1995)
!2008 = !DILocation(line: 327, column: 10, scope: !1995)
!2009 = !DILocation(line: 327, column: 3, scope: !1995)
!2010 = distinct !DISubprogram(name: "strtoumax", scope: !1996, file: !1996, line: 336, type: !2011, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2015)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!2013, !1757, !2002, !402}
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2000, line: 102, baseType: !2014)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1809, line: 73, baseType: !463)
!2015 = !{!2016, !2017, !2018}
!2016 = !DILocalVariable(name: "nptr", arg: 1, scope: !2010, file: !1996, line: 336, type: !1757)
!2017 = !DILocalVariable(name: "endptr", arg: 2, scope: !2010, file: !1996, line: 336, type: !2002)
!2018 = !DILocalVariable(name: "base", arg: 3, scope: !2010, file: !1996, line: 336, type: !402)
!2019 = !DILocation(line: 0, scope: !2010)
!2020 = !DILocation(line: 339, column: 10, scope: !2010)
!2021 = !DILocation(line: 339, column: 3, scope: !2010)
!2022 = distinct !DISubprogram(name: "wcstoimax", scope: !1996, file: !1996, line: 348, type: !2023, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!1999, !2025, !2029, !402}
!2025 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2026)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1996, line: 34, baseType: !402)
!2029 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2032 = !{!2033, !2034, !2035}
!2033 = !DILocalVariable(name: "nptr", arg: 1, scope: !2022, file: !1996, line: 348, type: !2025)
!2034 = !DILocalVariable(name: "endptr", arg: 2, scope: !2022, file: !1996, line: 348, type: !2029)
!2035 = !DILocalVariable(name: "base", arg: 3, scope: !2022, file: !1996, line: 348, type: !402)
!2036 = !DILocation(line: 0, scope: !2022)
!2037 = !DILocation(line: 351, column: 10, scope: !2022)
!2038 = !DILocation(line: 351, column: 3, scope: !2022)
!2039 = distinct !DISubprogram(name: "wcstoumax", scope: !1996, file: !1996, line: 362, type: !2040, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!2013, !2025, !2029, !402}
!2042 = !{!2043, !2044, !2045}
!2043 = !DILocalVariable(name: "nptr", arg: 1, scope: !2039, file: !1996, line: 362, type: !2025)
!2044 = !DILocalVariable(name: "endptr", arg: 2, scope: !2039, file: !1996, line: 362, type: !2029)
!2045 = !DILocalVariable(name: "base", arg: 3, scope: !2039, file: !1996, line: 362, type: !402)
!2046 = !DILocation(line: 0, scope: !2039)
!2047 = !DILocation(line: 365, column: 10, scope: !2039)
!2048 = !DILocation(line: 365, column: 3, scope: !2039)
!2049 = distinct !DISubprogram(name: "stat", scope: !2050, file: !2050, line: 453, type: !2051, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2088)
!2050 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!402, !407, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2055, line: 46, size: 1152, elements: !2056)
!2055 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2056 = !{!2057, !2059, !2061, !2063, !2065, !2067, !2069, !2070, !2071, !2072, !2074, !2076, !2084, !2085, !2086}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2054, file: !2055, line: 48, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1809, line: 145, baseType: !463)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2054, file: !2055, line: 53, baseType: !2060, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1809, line: 148, baseType: !463)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2054, file: !2055, line: 61, baseType: !2062, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1809, line: 151, baseType: !463)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2054, file: !2055, line: 62, baseType: !2064, size: 32, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1809, line: 150, baseType: !7)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2054, file: !2055, line: 64, baseType: !2066, size: 32, offset: 224)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1809, line: 146, baseType: !7)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2054, file: !2055, line: 65, baseType: !2068, size: 32, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1809, line: 147, baseType: !7)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2054, file: !2055, line: 67, baseType: !402, size: 32, offset: 288)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2054, file: !2055, line: 69, baseType: !2058, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2054, file: !2055, line: 74, baseType: !1808, size: 64, offset: 384)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2054, file: !2055, line: 78, baseType: !2073, size: 64, offset: 448)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1809, line: 174, baseType: !465)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2054, file: !2055, line: 80, baseType: !2075, size: 64, offset: 512)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1809, line: 179, baseType: !465)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2054, file: !2055, line: 91, baseType: !2077, size: 128, offset: 576)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2078, line: 10, size: 128, elements: !2079)
!2078 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2079 = !{!2080, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2077, file: !2078, line: 12, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1809, line: 160, baseType: !465)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2077, file: !2078, line: 16, baseType: !2083, size: 64, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1809, line: 196, baseType: !465)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2054, file: !2055, line: 92, baseType: !2077, size: 128, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2054, file: !2055, line: 93, baseType: !2077, size: 128, offset: 832)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2054, file: !2055, line: 106, baseType: !2087, size: 192, offset: 960)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2083, size: 192, elements: !483)
!2088 = !{!2089, !2090}
!2089 = !DILocalVariable(name: "__path", arg: 1, scope: !2049, file: !2050, line: 453, type: !407)
!2090 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2049, file: !2050, line: 453, type: !2053)
!2091 = !DILocation(line: 0, scope: !2049)
!2092 = !DILocation(line: 455, column: 10, scope: !2049)
!2093 = !DILocation(line: 455, column: 3, scope: !2049)
!2094 = distinct !DISubprogram(name: "lstat", scope: !2050, file: !2050, line: 460, type: !2051, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2095 = !{!2096, !2097}
!2096 = !DILocalVariable(name: "__path", arg: 1, scope: !2094, file: !2050, line: 460, type: !407)
!2097 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2094, file: !2050, line: 460, type: !2053)
!2098 = !DILocation(line: 0, scope: !2094)
!2099 = !DILocation(line: 462, column: 10, scope: !2094)
!2100 = !DILocation(line: 462, column: 3, scope: !2094)
!2101 = distinct !DISubprogram(name: "fstat", scope: !2050, file: !2050, line: 467, type: !2102, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!402, !402, !2053}
!2104 = !{!2105, !2106}
!2105 = !DILocalVariable(name: "__fd", arg: 1, scope: !2101, file: !2050, line: 467, type: !402)
!2106 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2101, file: !2050, line: 467, type: !2053)
!2107 = !DILocation(line: 0, scope: !2101)
!2108 = !DILocation(line: 469, column: 10, scope: !2101)
!2109 = !DILocation(line: 469, column: 3, scope: !2101)
!2110 = distinct !DISubprogram(name: "fstatat", scope: !2050, file: !2050, line: 474, type: !2111, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!402, !402, !407, !2053, !402}
!2113 = !{!2114, !2115, !2116, !2117}
!2114 = !DILocalVariable(name: "__fd", arg: 1, scope: !2110, file: !2050, line: 474, type: !402)
!2115 = !DILocalVariable(name: "__filename", arg: 2, scope: !2110, file: !2050, line: 474, type: !407)
!2116 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2110, file: !2050, line: 474, type: !2053)
!2117 = !DILocalVariable(name: "__flag", arg: 4, scope: !2110, file: !2050, line: 474, type: !402)
!2118 = !DILocation(line: 0, scope: !2110)
!2119 = !DILocation(line: 477, column: 10, scope: !2110)
!2120 = !DILocation(line: 477, column: 3, scope: !2110)
!2121 = distinct !DISubprogram(name: "mknod", scope: !2050, file: !2050, line: 483, type: !2122, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!402, !407, !2064, !2058}
!2124 = !{!2125, !2126, !2127}
!2125 = !DILocalVariable(name: "__path", arg: 1, scope: !2121, file: !2050, line: 483, type: !407)
!2126 = !DILocalVariable(name: "__mode", arg: 2, scope: !2121, file: !2050, line: 483, type: !2064)
!2127 = !DILocalVariable(name: "__dev", arg: 3, scope: !2121, file: !2050, line: 483, type: !2058)
!2128 = !DILocation(line: 0, scope: !2121)
!2129 = !DILocation(line: 485, column: 10, scope: !2121)
!2130 = !DILocation(line: 485, column: 3, scope: !2121)
!2131 = distinct !DISubprogram(name: "mknodat", scope: !2050, file: !2050, line: 491, type: !2132, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!402, !402, !407, !2064, !2058}
!2134 = !{!2135, !2136, !2137, !2138}
!2135 = !DILocalVariable(name: "__fd", arg: 1, scope: !2131, file: !2050, line: 491, type: !402)
!2136 = !DILocalVariable(name: "__path", arg: 2, scope: !2131, file: !2050, line: 491, type: !407)
!2137 = !DILocalVariable(name: "__mode", arg: 3, scope: !2131, file: !2050, line: 491, type: !2064)
!2138 = !DILocalVariable(name: "__dev", arg: 4, scope: !2131, file: !2050, line: 491, type: !2058)
!2139 = !DILocation(line: 0, scope: !2131)
!2140 = !DILocation(line: 494, column: 10, scope: !2131)
!2141 = !DILocation(line: 494, column: 3, scope: !2131)
!2142 = distinct !DISubprogram(name: "stat64", scope: !2050, file: !2050, line: 502, type: !2143, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2165)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!402, !407, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2055, line: 119, size: 1152, elements: !2147)
!2147 = !{!2148, !2149, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2161, !2162, !2163, !2164}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2146, file: !2055, line: 121, baseType: !2058, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2146, file: !2055, line: 123, baseType: !2150, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1809, line: 149, baseType: !463)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2146, file: !2055, line: 124, baseType: !2062, size: 64, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2146, file: !2055, line: 125, baseType: !2064, size: 32, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2146, file: !2055, line: 132, baseType: !2066, size: 32, offset: 224)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2146, file: !2055, line: 133, baseType: !2068, size: 32, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2146, file: !2055, line: 135, baseType: !402, size: 32, offset: 288)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2146, file: !2055, line: 136, baseType: !2058, size: 64, offset: 320)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2146, file: !2055, line: 137, baseType: !1808, size: 64, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2146, file: !2055, line: 143, baseType: !2073, size: 64, offset: 448)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2146, file: !2055, line: 144, baseType: !2160, size: 64, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1809, line: 180, baseType: !465)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2146, file: !2055, line: 152, baseType: !2077, size: 128, offset: 576)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2146, file: !2055, line: 153, baseType: !2077, size: 128, offset: 704)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2146, file: !2055, line: 154, baseType: !2077, size: 128, offset: 832)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2146, file: !2055, line: 164, baseType: !2087, size: 192, offset: 960)
!2165 = !{!2166, !2167}
!2166 = !DILocalVariable(name: "__path", arg: 1, scope: !2142, file: !2050, line: 502, type: !407)
!2167 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2142, file: !2050, line: 502, type: !2145)
!2168 = !DILocation(line: 0, scope: !2142)
!2169 = !DILocation(line: 504, column: 10, scope: !2142)
!2170 = !DILocation(line: 504, column: 3, scope: !2142)
!2171 = distinct !DISubprogram(name: "lstat64", scope: !2050, file: !2050, line: 509, type: !2143, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2172 = !{!2173, !2174}
!2173 = !DILocalVariable(name: "__path", arg: 1, scope: !2171, file: !2050, line: 509, type: !407)
!2174 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2171, file: !2050, line: 509, type: !2145)
!2175 = !DILocation(line: 0, scope: !2171)
!2176 = !DILocation(line: 511, column: 10, scope: !2171)
!2177 = !DILocation(line: 511, column: 3, scope: !2171)
!2178 = distinct !DISubprogram(name: "fstat64", scope: !2050, file: !2050, line: 516, type: !2179, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!402, !402, !2145}
!2181 = !{!2182, !2183}
!2182 = !DILocalVariable(name: "__fd", arg: 1, scope: !2178, file: !2050, line: 516, type: !402)
!2183 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2178, file: !2050, line: 516, type: !2145)
!2184 = !DILocation(line: 0, scope: !2178)
!2185 = !DILocation(line: 518, column: 10, scope: !2178)
!2186 = !DILocation(line: 518, column: 3, scope: !2178)
!2187 = distinct !DISubprogram(name: "fstatat64", scope: !2050, file: !2050, line: 523, type: !2188, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!402, !402, !407, !2145, !402}
!2190 = !{!2191, !2192, !2193, !2194}
!2191 = !DILocalVariable(name: "__fd", arg: 1, scope: !2187, file: !2050, line: 523, type: !402)
!2192 = !DILocalVariable(name: "__filename", arg: 2, scope: !2187, file: !2050, line: 523, type: !407)
!2193 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2187, file: !2050, line: 523, type: !2145)
!2194 = !DILocalVariable(name: "__flag", arg: 4, scope: !2187, file: !2050, line: 523, type: !402)
!2195 = !DILocation(line: 0, scope: !2187)
!2196 = !DILocation(line: 526, column: 10, scope: !2187)
!2197 = !DILocation(line: 526, column: 3, scope: !2187)
!2198 = distinct !DISubprogram(name: "internal_reference_types", scope: !3, file: !3, line: 78, type: !2199, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1775)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null}
!2201 = !DILocation(line: 80, column: 28, scope: !2198)
!2202 = !DILocation(line: 81, column: 1, scope: !2198)
!2203 = distinct !DISubprogram(name: "get_pending_sizes", scope: !3, file: !3, line: 86, type: !2204, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!409}
!2206 = !{!2207}
!2207 = !DILocalVariable(name: "chain", scope: !2203, file: !3, line: 88, type: !409)
!2208 = !DILocation(line: 88, column: 16, scope: !2203)
!2209 = !DILocation(line: 0, scope: !2203)
!2210 = !DILocation(line: 90, column: 17, scope: !2203)
!2211 = !DILocation(line: 91, column: 3, scope: !2203)
!2212 = distinct !DISubprogram(name: "put_pending_size", scope: !3, file: !3, line: 97, type: !2213, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !409}
!2215 = !{!2216}
!2216 = !DILocalVariable(name: "expr", arg: 1, scope: !2212, file: !3, line: 97, type: !409)
!2217 = !DILocation(line: 0, scope: !2212)
!2218 = !DILocation(line: 101, column: 10, scope: !2212)
!2219 = !DILocation(line: 103, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 103, column: 7)
!2221 = !DILocation(line: 103, column: 24, scope: !2220)
!2222 = !DILocation(line: 103, column: 7, scope: !2212)
!2223 = !DILocation(line: 104, column: 21, scope: !2220)
!2224 = !DILocation(line: 104, column: 19, scope: !2220)
!2225 = !DILocation(line: 104, column: 5, scope: !2220)
!2226 = !DILocation(line: 105, column: 1, scope: !2212)
!2227 = distinct !DISubprogram(name: "put_pending_sizes", scope: !3, file: !3, line: 111, type: !2213, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2228 = !{!2229}
!2229 = !DILocalVariable(name: "chain", arg: 1, scope: !2227, file: !3, line: 111, type: !409)
!2230 = !DILocation(line: 0, scope: !2227)
!2231 = !DILocation(line: 113, column: 3, scope: !2227)
!2232 = !DILocation(line: 114, column: 17, scope: !2227)
!2233 = !DILocation(line: 115, column: 1, scope: !2227)
!2234 = distinct !DISubprogram(name: "variable_size", scope: !3, file: !3, line: 121, type: !1717, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2235)
!2235 = !{!2236, !2237}
!2236 = !DILocalVariable(name: "size", arg: 1, scope: !2234, file: !3, line: 121, type: !409)
!2237 = !DILocalVariable(name: "save", scope: !2234, file: !3, line: 123, type: !409)
!2238 = !DILocation(line: 0, scope: !2234)
!2239 = !DILocation(line: 126, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 126, column: 7)
!2241 = !DILocation(line: 126, column: 7, scope: !2234)
!2242 = !DILocation(line: 131, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 131, column: 7)
!2244 = !DILocation(line: 131, column: 7, scope: !2234)
!2245 = !DILocation(line: 132, column: 12, scope: !2243)
!2246 = !DILocation(line: 132, column: 5, scope: !2243)
!2247 = !DILocation(line: 137, column: 24, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 137, column: 7)
!2249 = !DILocation(line: 137, column: 7, scope: !2248)
!2250 = !DILocation(line: 137, column: 45, scope: !2248)
!2251 = !DILocation(line: 137, column: 7, scope: !2234)
!2252 = !DILocation(line: 140, column: 10, scope: !2234)
!2253 = !DILocation(line: 150, column: 10, scope: !2234)
!2254 = !DILocation(line: 152, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 152, column: 7)
!2256 = !DILocation(line: 152, column: 12, scope: !2255)
!2257 = !DILocation(line: 152, column: 21, scope: !2255)
!2258 = !DILocation(line: 152, column: 15, scope: !2255)
!2259 = !DILocation(line: 152, column: 7, scope: !2234)
!2260 = !DILocation(line: 157, column: 24, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 157, column: 7)
!2262 = !DILocation(line: 157, column: 7, scope: !2261)
!2263 = !DILocation(line: 157, column: 7, scope: !2234)
!2264 = !DILocation(line: 159, column: 11, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 159, column: 11)
!2266 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 158, column: 5)
!2267 = !DILocation(line: 159, column: 11, scope: !2266)
!2268 = !DILocation(line: 160, column: 2, scope: !2265)
!2269 = !DILocation(line: 162, column: 2, scope: !2265)
!2270 = !DILocation(line: 164, column: 14, scope: !2266)
!2271 = !DILocation(line: 164, column: 7, scope: !2266)
!2272 = !DILocation(line: 167, column: 3, scope: !2234)
!2273 = !DILocation(line: 169, column: 3, scope: !2234)
!2274 = !DILocation(line: 170, column: 1, scope: !2234)
!2275 = !DILocation(line: 0, scope: !1716)
!2276 = !DILocation(line: 235, column: 3, scope: !1716)
!2277 = !DILocation(line: 235, column: 21, scope: !1716)
!2278 = !DILocation(line: 237, column: 3, scope: !1716)
!2279 = !DILocation(line: 239, column: 3, scope: !1716)
!2280 = !DILocation(line: 239, column: 8, scope: !1716)
!2281 = !DILocation(line: 242, column: 7, scope: !1716)
!2282 = !DILocation(line: 242, column: 5, scope: !1716)
!2283 = !DILocation(line: 243, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 243, column: 7)
!2285 = !DILocation(line: 243, column: 21, scope: !2284)
!2286 = !DILocation(line: 243, column: 7, scope: !1716)
!2287 = !DILocation(line: 247, column: 3, scope: !1716)
!2288 = !DILocation(line: 248, column: 3, scope: !1716)
!2289 = !DILocation(line: 251, column: 5, scope: !1716)
!2290 = !DILocation(line: 252, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 252, column: 7)
!2292 = !DILocation(line: 252, column: 64, scope: !2291)
!2293 = !DILocation(line: 252, column: 7, scope: !1716)
!2294 = !DILocation(line: 254, column: 10, scope: !1716)
!2295 = !DILocation(line: 0, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 262, column: 11)
!2297 = !DILocation(line: 0, scope: !1742)
!2298 = !DILocation(line: 258, column: 8, scope: !1744)
!2299 = !DILocation(line: 0, scope: !1744)
!2300 = !DILocation(line: 258, column: 15, scope: !1743)
!2301 = !DILocation(line: 258, column: 3, scope: !1744)
!2302 = !DILocation(line: 262, column: 11, scope: !2296)
!2303 = !DILocation(line: 262, column: 11, scope: !1742)
!2304 = !DILocation(line: 265, column: 4, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 263, column: 2)
!2306 = !DILocation(line: 266, column: 12, scope: !2305)
!2307 = !DILocation(line: 267, column: 2, scope: !2305)
!2308 = !DILocation(line: 269, column: 32, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 269, column: 16)
!2310 = !DILocation(line: 269, column: 16, scope: !2296)
!2311 = !DILocation(line: 273, column: 10, scope: !2309)
!2312 = !DILocation(line: 275, column: 7, scope: !1742)
!2313 = !DILocation(line: 276, column: 20, scope: !1742)
!2314 = !DILocation(line: 277, column: 20, scope: !1742)
!2315 = !DILocation(line: 279, column: 4, scope: !1742)
!2316 = !DILocation(line: 280, column: 25, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 280, column: 11)
!2318 = !DILocation(line: 280, column: 11, scope: !2317)
!2319 = !DILocation(line: 281, column: 4, scope: !2317)
!2320 = !DILocation(line: 281, column: 7, scope: !2317)
!2321 = !DILocation(line: 282, column: 4, scope: !2317)
!2322 = !DILocation(line: 282, column: 7, scope: !2317)
!2323 = !DILocation(line: 282, column: 37, scope: !2317)
!2324 = !DILocation(line: 282, column: 35, scope: !2317)
!2325 = !DILocation(line: 280, column: 11, scope: !1742)
!2326 = !DILocation(line: 283, column: 2, scope: !2317)
!2327 = !DILocation(line: 283, column: 29, scope: !2317)
!2328 = !DILocation(line: 285, column: 2, scope: !2317)
!2329 = !DILocation(line: 285, column: 29, scope: !2317)
!2330 = !DILocation(line: 286, column: 7, scope: !1742)
!2331 = !DILocation(line: 286, column: 36, scope: !1742)
!2332 = !DILocation(line: 287, column: 7, scope: !1742)
!2333 = !DILocation(line: 287, column: 34, scope: !1742)
!2334 = !DILocation(line: 289, column: 14, scope: !1742)
!2335 = !DILocation(line: 291, column: 25, scope: !1742)
!2336 = !DILocation(line: 292, column: 25, scope: !1742)
!2337 = !DILocation(line: 293, column: 18, scope: !1742)
!2338 = !DILocation(line: 258, column: 55, scope: !1743)
!2339 = !DILocation(line: 258, column: 3, scope: !1743)
!2340 = distinct !{!2340, !2301, !2341}
!2341 = !DILocation(line: 294, column: 5, scope: !1744)
!2342 = !DILocation(line: 296, column: 3, scope: !1716)
!2343 = !DILocation(line: 299, column: 21, scope: !1716)
!2344 = !DILocation(line: 302, column: 21, scope: !1716)
!2345 = !DILocation(line: 303, column: 21, scope: !1716)
!2346 = !DILocation(line: 304, column: 14, scope: !1716)
!2347 = !DILocation(line: 307, column: 17, scope: !1716)
!2348 = !DILocation(line: 308, column: 12, scope: !1716)
!2349 = !DILocation(line: 311, column: 55, scope: !1716)
!2350 = !DILocation(line: 311, column: 3, scope: !1716)
!2351 = !DILocation(line: 312, column: 12, scope: !1716)
!2352 = !DILocation(line: 313, column: 12, scope: !1716)
!2353 = !DILocation(line: 314, column: 8, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 314, column: 3)
!2355 = !DILocation(line: 0, scope: !2354)
!2356 = !DILocation(line: 314, column: 3, scope: !2354)
!2357 = !DILocation(line: 315, column: 5, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 314, column: 3)
!2359 = !DILocation(line: 315, column: 22, scope: !2358)
!2360 = !DILocation(line: 314, column: 36, scope: !2358)
!2361 = !DILocation(line: 314, column: 3, scope: !2358)
!2362 = distinct !{!2362, !2356, !2363}
!2363 = !DILocation(line: 315, column: 24, scope: !2354)
!2364 = !DILocation(line: 316, column: 3, scope: !1716)
!2365 = !DILocation(line: 316, column: 27, scope: !1716)
!2366 = !DILocation(line: 318, column: 7, scope: !1716)
!2367 = !DILocation(line: 317, column: 3, scope: !1716)
!2368 = !DILocation(line: 318, column: 5, scope: !1716)
!2369 = !DILocation(line: 319, column: 3, scope: !1716)
!2370 = !DILocation(line: 319, column: 39, scope: !1716)
!2371 = !DILocation(line: 323, column: 3, scope: !1716)
!2372 = !DILocation(line: 323, column: 28, scope: !1716)
!2373 = !DILocation(line: 324, column: 27, scope: !1716)
!2374 = !DILocation(line: 327, column: 3, scope: !1716)
!2375 = !DILocation(line: 327, column: 26, scope: !1716)
!2376 = !DILocation(line: 328, column: 25, scope: !1716)
!2377 = !DILocation(line: 332, column: 3, scope: !1716)
!2378 = !DILocation(line: 332, column: 35, scope: !1716)
!2379 = !DILocation(line: 335, column: 27, scope: !1716)
!2380 = !DILocation(line: 335, column: 3, scope: !1716)
!2381 = !DILocation(line: 335, column: 25, scope: !1716)
!2382 = !DILocation(line: 336, column: 3, scope: !1716)
!2383 = !DILocation(line: 336, column: 46, scope: !1716)
!2384 = !DILocation(line: 337, column: 7, scope: !1716)
!2385 = !DILocation(line: 337, column: 5, scope: !1716)
!2386 = !DILocation(line: 338, column: 30, scope: !1716)
!2387 = !DILocation(line: 338, column: 3, scope: !1716)
!2388 = !DILocation(line: 338, column: 28, scope: !1716)
!2389 = !DILocation(line: 339, column: 24, scope: !1716)
!2390 = !DILocation(line: 342, column: 3, scope: !1716)
!2391 = !DILocation(line: 345, column: 36, scope: !1716)
!2392 = !DILocation(line: 345, column: 10, scope: !1716)
!2393 = !DILocation(line: 345, column: 3, scope: !1716)
!2394 = !DILocation(line: 346, column: 1, scope: !1716)
!2395 = distinct !DISubprogram(name: "finalize_size_functions", scope: !3, file: !3, line: 356, type: !2199, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "i", scope: !2395, file: !3, line: 358, type: !7)
!2398 = !DILocalVariable(name: "fndecl", scope: !2395, file: !3, line: 359, type: !409)
!2399 = !DILocation(line: 359, column: 3, scope: !2395)
!2400 = !DILocation(line: 0, scope: !2395)
!2401 = !DILocation(line: 361, column: 8, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 361, column: 3)
!2403 = !DILocation(line: 0, scope: !2402)
!2404 = !DILocation(line: 361, column: 15, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 361, column: 3)
!2406 = !DILocation(line: 361, column: 3, scope: !2402)
!2407 = !DILocation(line: 363, column: 36, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 362, column: 5)
!2409 = !DILocation(line: 363, column: 7, scope: !2408)
!2410 = !DILocation(line: 364, column: 31, scope: !2408)
!2411 = !DILocation(line: 364, column: 7, scope: !2408)
!2412 = !DILocation(line: 365, column: 35, scope: !2408)
!2413 = !DILocation(line: 365, column: 7, scope: !2408)
!2414 = !DILocation(line: 366, column: 33, scope: !2408)
!2415 = !DILocation(line: 366, column: 7, scope: !2408)
!2416 = !DILocation(line: 361, column: 62, scope: !2405)
!2417 = !DILocation(line: 361, column: 3, scope: !2405)
!2418 = distinct !{!2418, !2406, !2419}
!2419 = !DILocation(line: 367, column: 5, scope: !2402)
!2420 = !DILocation(line: 369, column: 3, scope: !2395)
!2421 = !DILocation(line: 370, column: 1, scope: !2395)
!2422 = distinct !DISubprogram(name: "VEC_tree_base_iterate", scope: !135, file: !135, line: 182, type: !2423, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2427)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!402, !2425, !7, !769}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!2427 = !{!2428, !2429, !2430}
!2428 = !DILocalVariable(name: "vec_", arg: 1, scope: !2422, file: !135, line: 182, type: !2425)
!2429 = !DILocalVariable(name: "ix_", arg: 2, scope: !2422, file: !135, line: 182, type: !7)
!2430 = !DILocalVariable(name: "ptr", arg: 3, scope: !2422, file: !135, line: 182, type: !769)
!2431 = !DILocation(line: 0, scope: !2422)
!2432 = !DILocation(line: 182, column: 1, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2422, file: !135, line: 182, column: 1)
!2434 = !DILocation(line: 182, column: 1, scope: !2422)
!2435 = !DILocation(line: 182, column: 1, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !135, line: 182, column: 1)
!2437 = !DILocation(line: 182, column: 1, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2433, file: !135, line: 182, column: 1)
!2439 = !DILocation(line: 0, scope: !2433)
!2440 = distinct !DISubprogram(name: "VEC_tree_gc_free", scope: !135, file: !135, line: 183, type: !2441, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!2444 = !{!2445}
!2445 = !DILocalVariable(name: "vec_", arg: 1, scope: !2440, file: !135, line: 183, type: !2443)
!2446 = !DILocation(line: 0, scope: !2440)
!2447 = !DILocation(line: 183, column: 1, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2440, file: !135, line: 183, column: 1)
!2449 = !DILocation(line: 183, column: 1, scope: !2440)
!2450 = distinct !DISubprogram(name: "mode_for_size", scope: !3, file: !3, line: 382, type: !2451, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!5, !7, !377, !402}
!2453 = !{!2454, !2455, !2456, !2457}
!2454 = !DILocalVariable(name: "size", arg: 1, scope: !2450, file: !3, line: 382, type: !7)
!2455 = !DILocalVariable(name: "mclass", arg: 2, scope: !2450, file: !3, line: 382, type: !377)
!2456 = !DILocalVariable(name: "limit", arg: 3, scope: !2450, file: !3, line: 382, type: !402)
!2457 = !DILocalVariable(name: "mode", scope: !2450, file: !3, line: 384, type: !5)
!2458 = !DILocation(line: 0, scope: !2450)
!2459 = !DILocation(line: 386, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 386, column: 7)
!2461 = !DILocation(line: 386, column: 13, scope: !2460)
!2462 = !DILocation(line: 386, column: 23, scope: !2460)
!2463 = !DILocation(line: 386, column: 21, scope: !2460)
!2464 = !DILocation(line: 386, column: 7, scope: !2450)
!2465 = !DILocation(line: 390, column: 15, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 390, column: 3)
!2467 = !DILocation(line: 390, column: 8, scope: !2466)
!2468 = !DILocation(line: 0, scope: !2466)
!2469 = !DILocation(line: 390, column: 55, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 390, column: 3)
!2471 = !DILocation(line: 390, column: 3, scope: !2466)
!2472 = !DILocation(line: 392, column: 9, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 392, column: 9)
!2474 = !DILocation(line: 392, column: 35, scope: !2473)
!2475 = !DILocation(line: 392, column: 9, scope: !2470)
!2476 = !DILocation(line: 391, column: 15, scope: !2470)
!2477 = !DILocation(line: 390, column: 3, scope: !2470)
!2478 = distinct !{!2478, !2471, !2479}
!2479 = !DILocation(line: 393, column: 14, scope: !2466)
!2480 = !DILocation(line: 396, column: 1, scope: !2450)
!2481 = distinct !DISubprogram(name: "mode_for_size_tree", scope: !3, file: !3, line: 401, type: !2482, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2487)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!5, !2484, !377, !402}
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !410, line: 59, baseType: !2485)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!2487 = !{!2488, !2489, !2490, !2491, !2492}
!2488 = !DILocalVariable(name: "size", arg: 1, scope: !2481, file: !3, line: 401, type: !2484)
!2489 = !DILocalVariable(name: "mclass", arg: 2, scope: !2481, file: !3, line: 401, type: !377)
!2490 = !DILocalVariable(name: "limit", arg: 3, scope: !2481, file: !3, line: 401, type: !402)
!2491 = !DILocalVariable(name: "uhwi", scope: !2481, file: !3, line: 403, type: !463)
!2492 = !DILocalVariable(name: "ui", scope: !2481, file: !3, line: 404, type: !7)
!2493 = !DILocation(line: 0, scope: !2481)
!2494 = !DILocation(line: 406, column: 8, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 406, column: 7)
!2496 = !DILocation(line: 406, column: 7, scope: !2481)
!2497 = !DILocation(line: 408, column: 10, scope: !2481)
!2498 = !DILocation(line: 410, column: 12, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 410, column: 7)
!2500 = !DILocation(line: 410, column: 7, scope: !2481)
!2501 = !DILocation(line: 409, column: 8, scope: !2481)
!2502 = !DILocation(line: 412, column: 10, scope: !2481)
!2503 = !DILocation(line: 412, column: 3, scope: !2481)
!2504 = !DILocation(line: 413, column: 1, scope: !2481)
!2505 = distinct !DISubprogram(name: "smallest_mode_for_size", scope: !3, file: !3, line: 419, type: !2506, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2508)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!5, !7, !377}
!2508 = !{!2509, !2510, !2511}
!2509 = !DILocalVariable(name: "size", arg: 1, scope: !2505, file: !3, line: 419, type: !7)
!2510 = !DILocalVariable(name: "mclass", arg: 2, scope: !2505, file: !3, line: 419, type: !377)
!2511 = !DILocalVariable(name: "mode", scope: !2505, file: !3, line: 421, type: !5)
!2512 = !DILocation(line: 0, scope: !2505)
!2513 = !DILocation(line: 425, column: 15, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 425, column: 3)
!2515 = !DILocation(line: 425, column: 8, scope: !2514)
!2516 = !DILocation(line: 0, scope: !2514)
!2517 = !DILocation(line: 425, column: 55, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 425, column: 3)
!2519 = !DILocation(line: 425, column: 3, scope: !2514)
!2520 = !DILocation(line: 427, column: 9, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 427, column: 9)
!2522 = !DILocation(line: 427, column: 35, scope: !2521)
!2523 = !DILocation(line: 427, column: 9, scope: !2518)
!2524 = !DILocation(line: 426, column: 15, scope: !2518)
!2525 = !DILocation(line: 425, column: 3, scope: !2518)
!2526 = distinct !{!2526, !2519, !2527}
!2527 = !DILocation(line: 428, column: 14, scope: !2514)
!2528 = !DILocation(line: 430, column: 3, scope: !2505)
!2529 = !DILocation(line: 432, column: 5, scope: !2505)
!2530 = !DILocation(line: 434, column: 1, scope: !2505)
!2531 = distinct !DISubprogram(name: "int_mode_for_mode", scope: !3, file: !3, line: 439, type: !2532, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!5, !5}
!2534 = !{!2535}
!2535 = !DILocalVariable(name: "mode", arg: 1, scope: !2531, file: !3, line: 439, type: !5)
!2536 = !DILocation(line: 0, scope: !2531)
!2537 = !DILocation(line: 441, column: 11, scope: !2531)
!2538 = !DILocation(line: 441, column: 3, scope: !2531)
!2539 = !DILocation(line: 461, column: 29, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 442, column: 5)
!2541 = !DILocation(line: 461, column: 14, scope: !2540)
!2542 = !DILocation(line: 462, column: 7, scope: !2540)
!2543 = !DILocation(line: 465, column: 16, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 465, column: 11)
!2545 = !DILocation(line: 465, column: 11, scope: !2540)
!2546 = !DILocation(line: 472, column: 7, scope: !2540)
!2547 = !DILocation(line: 473, column: 5, scope: !2540)
!2548 = !DILocation(line: 475, column: 3, scope: !2531)
!2549 = distinct !DISubprogram(name: "get_mode_alignment", scope: !3, file: !3, line: 482, type: !2550, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!7, !5}
!2552 = !{!2553}
!2553 = !DILocalVariable(name: "mode", arg: 1, scope: !2549, file: !3, line: 482, type: !5)
!2554 = !DILocation(line: 0, scope: !2549)
!2555 = !DILocation(line: 484, column: 10, scope: !2549)
!2556 = !DILocation(line: 484, column: 3, scope: !2549)
!2557 = distinct !DISubprogram(name: "layout_decl", scope: !3, file: !3, line: 516, type: !2558, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null, !409, !7}
!2560 = !{!2561, !2562, !2563, !2564, !2565, !2566, !2567, !2570, !2571, !2572, !2573, !2578, !2579, !2582}
!2561 = !DILocalVariable(name: "decl", arg: 1, scope: !2557, file: !3, line: 516, type: !409)
!2562 = !DILocalVariable(name: "known_align", arg: 2, scope: !2557, file: !3, line: 516, type: !7)
!2563 = !DILocalVariable(name: "type", scope: !2557, file: !3, line: 518, type: !409)
!2564 = !DILocalVariable(name: "code", scope: !2557, file: !3, line: 519, type: !134)
!2565 = !DILocalVariable(name: "rtl", scope: !2557, file: !3, line: 520, type: !584)
!2566 = !DILocalVariable(name: "loc", scope: !2557, file: !3, line: 521, type: !534)
!2567 = !DILocalVariable(name: "old_user_align", scope: !2568, file: !3, line: 565, type: !401)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 564, column: 5)
!2569 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 559, column: 7)
!2570 = !DILocalVariable(name: "zero_bitfield", scope: !2568, file: !3, line: 566, type: !401)
!2571 = !DILocalVariable(name: "packed_p", scope: !2568, file: !3, line: 567, type: !401)
!2572 = !DILocalVariable(name: "mfa", scope: !2568, file: !3, line: 568, type: !7)
!2573 = !DILocalVariable(name: "xmode", scope: !2574, file: !3, line: 605, type: !5)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 604, column: 6)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 601, column: 8)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 571, column: 2)
!2577 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 570, column: 11)
!2578 = !DILocalVariable(name: "xalign", scope: !2574, file: !3, line: 607, type: !7)
!2579 = !DILocalVariable(name: "size", scope: !2580, file: !3, line: 675, type: !409)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 674, column: 5)
!2581 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 671, column: 7)
!2582 = !DILocalVariable(name: "size_as_int", scope: !2583, file: !3, line: 680, type: !402)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 679, column: 2)
!2584 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 677, column: 11)
!2585 = !DILocation(line: 0, scope: !2557)
!2586 = !DILocation(line: 518, column: 15, scope: !2557)
!2587 = !DILocation(line: 519, column: 25, scope: !2557)
!2588 = !DILocation(line: 521, column: 20, scope: !2557)
!2589 = !DILocation(line: 523, column: 7, scope: !2557)
!2590 = !DILocation(line: 526, column: 3, scope: !2557)
!2591 = !DILocation(line: 529, column: 9, scope: !2557)
!2592 = !DILocation(line: 531, column: 15, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 531, column: 7)
!2594 = !DILocation(line: 531, column: 12, scope: !2593)
!2595 = !DILocation(line: 532, column: 12, scope: !2593)
!2596 = !DILocation(line: 531, column: 7, scope: !2557)
!2597 = !DILocation(line: 544, column: 26, scope: !2557)
!2598 = !DILocation(line: 544, column: 24, scope: !2557)
!2599 = !DILocation(line: 545, column: 7, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 545, column: 7)
!2601 = !DILocation(line: 545, column: 24, scope: !2600)
!2602 = !DILocation(line: 545, column: 7, scope: !2557)
!2603 = !DILocation(line: 546, column: 24, scope: !2600)
!2604 = !DILocation(line: 546, column: 22, scope: !2600)
!2605 = !DILocation(line: 546, column: 5, scope: !2600)
!2606 = !DILocation(line: 548, column: 7, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 548, column: 7)
!2608 = !DILocation(line: 548, column: 24, scope: !2607)
!2609 = !DILocation(line: 548, column: 7, scope: !2557)
!2610 = !DILocation(line: 550, column: 26, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 549, column: 5)
!2612 = !DILocation(line: 550, column: 24, scope: !2611)
!2613 = !DILocation(line: 551, column: 31, scope: !2611)
!2614 = !DILocation(line: 551, column: 7, scope: !2611)
!2615 = !DILocation(line: 551, column: 29, scope: !2611)
!2616 = !DILocation(line: 552, column: 5, scope: !2611)
!2617 = !DILocation(line: 553, column: 12, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 553, column: 12)
!2619 = !DILocation(line: 553, column: 34, scope: !2618)
!2620 = !DILocation(line: 553, column: 12, scope: !2607)
!2621 = !DILocation(line: 555, column: 32, scope: !2618)
!2622 = !DILocation(line: 557, column: 8, scope: !2618)
!2623 = !DILocation(line: 556, column: 6, scope: !2618)
!2624 = !DILocation(line: 555, column: 9, scope: !2618)
!2625 = !DILocation(line: 555, column: 7, scope: !2618)
!2626 = !DILocation(line: 554, column: 5, scope: !2618)
!2627 = !DILocation(line: 559, column: 12, scope: !2569)
!2628 = !DILocation(line: 559, column: 7, scope: !2557)
!2629 = !DILocation(line: 561, column: 5, scope: !2569)
!2630 = !DILocation(line: 565, column: 29, scope: !2568)
!2631 = !DILocation(line: 0, scope: !2568)
!2632 = !DILocation(line: 567, column: 23, scope: !2568)
!2633 = !DILocation(line: 570, column: 11, scope: !2577)
!2634 = !DILocation(line: 570, column: 11, scope: !2568)
!2635 = !DILocation(line: 572, column: 4, scope: !2576)
!2636 = !DILocation(line: 572, column: 31, scope: !2576)
!2637 = !DILocation(line: 577, column: 23, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 577, column: 8)
!2639 = !DILocation(line: 577, column: 8, scope: !2638)
!2640 = !DILocation(line: 578, column: 8, scope: !2638)
!2641 = !DILocation(line: 578, column: 21, scope: !2638)
!2642 = !DILocation(line: 578, column: 43, scope: !2638)
!2643 = !DILocation(line: 578, column: 13, scope: !2638)
!2644 = !DILocation(line: 577, column: 8, scope: !2576)
!2645 = !DILocation(line: 584, column: 3, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 583, column: 12)
!2647 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 579, column: 6)
!2648 = !DILocation(line: 596, column: 6, scope: !2647)
!2649 = !DILocation(line: 601, column: 8, scope: !2575)
!2650 = !DILocation(line: 601, column: 25, scope: !2575)
!2651 = !DILocation(line: 602, column: 8, scope: !2575)
!2652 = !DILocation(line: 602, column: 11, scope: !2575)
!2653 = !DILocation(line: 602, column: 40, scope: !2575)
!2654 = !DILocation(line: 603, column: 8, scope: !2575)
!2655 = !DILocation(line: 603, column: 11, scope: !2575)
!2656 = !DILocation(line: 603, column: 45, scope: !2575)
!2657 = !DILocation(line: 601, column: 8, scope: !2576)
!2658 = !DILocation(line: 606, column: 25, scope: !2574)
!2659 = !DILocation(line: 606, column: 5, scope: !2574)
!2660 = !DILocation(line: 0, scope: !2574)
!2661 = !DILocation(line: 607, column: 30, scope: !2574)
!2662 = !DILocation(line: 609, column: 18, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 609, column: 12)
!2664 = !DILocation(line: 610, column: 5, scope: !2663)
!2665 = !DILocation(line: 610, column: 17, scope: !2663)
!2666 = !DILocation(line: 610, column: 33, scope: !2663)
!2667 = !DILocation(line: 610, column: 36, scope: !2663)
!2668 = !DILocation(line: 611, column: 5, scope: !2663)
!2669 = !DILocation(line: 611, column: 21, scope: !2663)
!2670 = !DILocation(line: 611, column: 41, scope: !2663)
!2671 = !DILocation(line: 611, column: 26, scope: !2663)
!2672 = !DILocation(line: 613, column: 25, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 612, column: 3)
!2674 = !DILocation(line: 613, column: 23, scope: !2673)
!2675 = !DILocation(line: 614, column: 22, scope: !2673)
!2676 = !DILocation(line: 615, column: 27, scope: !2673)
!2677 = !DILocation(line: 616, column: 3, scope: !2673)
!2678 = !DILocation(line: 620, column: 8, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 620, column: 8)
!2680 = !DILocation(line: 620, column: 25, scope: !2679)
!2681 = !DILocation(line: 620, column: 36, scope: !2679)
!2682 = !DILocation(line: 620, column: 39, scope: !2679)
!2683 = !DILocation(line: 620, column: 56, scope: !2679)
!2684 = !DILocation(line: 621, column: 8, scope: !2679)
!2685 = !DILocation(line: 621, column: 26, scope: !2679)
!2686 = !DILocation(line: 621, column: 23, scope: !2679)
!2687 = !DILocation(line: 622, column: 8, scope: !2679)
!2688 = !DILocation(line: 622, column: 11, scope: !2679)
!2689 = !DILocation(line: 622, column: 29, scope: !2679)
!2690 = !DILocation(line: 620, column: 8, scope: !2576)
!2691 = !DILocation(line: 623, column: 28, scope: !2679)
!2692 = !DILocation(line: 623, column: 6, scope: !2679)
!2693 = !DILocation(line: 625, column: 16, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 625, column: 16)
!2695 = !DILocation(line: 625, column: 25, scope: !2694)
!2696 = !DILocation(line: 625, column: 28, scope: !2694)
!2697 = !DILocation(line: 625, column: 16, scope: !2577)
!2698 = !DILocation(line: 631, column: 2, scope: !2694)
!2699 = !DILocation(line: 566, column: 12, scope: !2568)
!2700 = !DILocation(line: 567, column: 12, scope: !2568)
!2701 = !DILocation(line: 636, column: 11, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 636, column: 11)
!2703 = !DILocation(line: 637, column: 8, scope: !2702)
!2704 = !DILocation(line: 637, column: 4, scope: !2702)
!2705 = !DILocation(line: 638, column: 22, scope: !2702)
!2706 = !DILocation(line: 638, column: 20, scope: !2702)
!2707 = !DILocation(line: 638, column: 2, scope: !2702)
!2708 = !DILocation(line: 640, column: 22, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 640, column: 11)
!2710 = !DILocation(line: 640, column: 27, scope: !2709)
!2711 = !DILocation(line: 640, column: 11, scope: !2568)
!2712 = !DILocation(line: 650, column: 24, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 641, column: 2)
!2714 = !DILocation(line: 650, column: 22, scope: !2713)
!2715 = !DILocation(line: 652, column: 2, scope: !2713)
!2716 = !DILocation(line: 654, column: 11, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 654, column: 11)
!2718 = !DILocation(line: 654, column: 11, scope: !2568)
!2719 = !DILocation(line: 659, column: 15, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 659, column: 11)
!2721 = !DILocation(line: 659, column: 11, scope: !2568)
!2722 = !DILocation(line: 660, column: 22, scope: !2720)
!2723 = !DILocation(line: 660, column: 20, scope: !2720)
!2724 = !DILocation(line: 660, column: 2, scope: !2720)
!2725 = !DILocation(line: 664, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 664, column: 7)
!2727 = !DILocation(line: 664, column: 24, scope: !2726)
!2728 = !DILocation(line: 664, column: 29, scope: !2726)
!2729 = !DILocation(line: 664, column: 32, scope: !2726)
!2730 = !DILocation(line: 664, column: 61, scope: !2726)
!2731 = !DILocation(line: 664, column: 7, scope: !2557)
!2732 = !DILocation(line: 665, column: 24, scope: !2726)
!2733 = !DILocation(line: 665, column: 22, scope: !2726)
!2734 = !DILocation(line: 665, column: 5, scope: !2726)
!2735 = !DILocation(line: 666, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 666, column: 7)
!2737 = !DILocation(line: 666, column: 29, scope: !2736)
!2738 = !DILocation(line: 667, column: 7, scope: !2736)
!2739 = !DILocation(line: 667, column: 10, scope: !2736)
!2740 = !DILocation(line: 667, column: 44, scope: !2736)
!2741 = !DILocation(line: 666, column: 7, scope: !2557)
!2742 = !DILocation(line: 668, column: 29, scope: !2736)
!2743 = !DILocation(line: 668, column: 27, scope: !2736)
!2744 = !DILocation(line: 668, column: 5, scope: !2736)
!2745 = !DILocation(line: 671, column: 7, scope: !2581)
!2746 = !DILocation(line: 672, column: 7, scope: !2581)
!2747 = !DILocation(line: 672, column: 28, scope: !2581)
!2748 = !DILocation(line: 673, column: 12, scope: !2581)
!2749 = !DILocation(line: 671, column: 7, scope: !2557)
!2750 = !DILocation(line: 0, scope: !2580)
!2751 = !DILocation(line: 677, column: 16, scope: !2584)
!2752 = !DILocation(line: 677, column: 21, scope: !2584)
!2753 = !DILocation(line: 677, column: 24, scope: !2584)
!2754 = !DILocation(line: 677, column: 41, scope: !2584)
!2755 = !DILocation(line: 678, column: 4, scope: !2584)
!2756 = !DILocation(line: 678, column: 31, scope: !2584)
!2757 = !DILocation(line: 678, column: 7, scope: !2584)
!2758 = !DILocation(line: 678, column: 49, scope: !2584)
!2759 = !DILocation(line: 677, column: 11, scope: !2580)
!2760 = !DILocation(line: 680, column: 22, scope: !2583)
!2761 = !DILocation(line: 0, scope: !2583)
!2762 = !DILocation(line: 682, column: 32, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 682, column: 8)
!2764 = !DILocation(line: 682, column: 8, scope: !2763)
!2765 = !DILocation(line: 682, column: 45, scope: !2763)
!2766 = !DILocation(line: 682, column: 8, scope: !2583)
!2767 = !DILocation(line: 683, column: 6, scope: !2763)
!2768 = !DILocation(line: 686, column: 28, scope: !2763)
!2769 = !DILocation(line: 685, column: 6, scope: !2763)
!2770 = !DILocation(line: 691, column: 7, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 691, column: 7)
!2772 = !DILocation(line: 691, column: 7, scope: !2557)
!2773 = !DILocation(line: 693, column: 7, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 692, column: 5)
!2775 = !DILocation(line: 694, column: 7, scope: !2774)
!2776 = !DILocation(line: 695, column: 7, scope: !2774)
!2777 = !DILocation(line: 696, column: 7, scope: !2774)
!2778 = !DILocation(line: 697, column: 5, scope: !2774)
!2779 = !DILocation(line: 698, column: 1, scope: !2557)
!2780 = distinct !DISubprogram(name: "vector_type_mode", scope: !3, file: !3, line: 2111, type: !2781, scopeLine: 2112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!5, !2484}
!2783 = !{!2784, !2785, !2786}
!2784 = !DILocalVariable(name: "t", arg: 1, scope: !2780, file: !3, line: 2111, type: !2484)
!2785 = !DILocalVariable(name: "mode", scope: !2780, file: !3, line: 2113, type: !5)
!2786 = !DILocalVariable(name: "innermode", scope: !2787, file: !3, line: 2122, type: !5)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 2121, column: 5)
!2788 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 2118, column: 7)
!2789 = !DILocation(line: 0, scope: !2780)
!2790 = !DILocation(line: 2115, column: 3, scope: !2780)
!2791 = !DILocation(line: 2117, column: 13, scope: !2780)
!2792 = !DILocation(line: 2117, column: 18, scope: !2780)
!2793 = !DILocation(line: 2118, column: 7, scope: !2788)
!2794 = !DILocation(line: 2119, column: 7, scope: !2788)
!2795 = !DILocation(line: 2119, column: 20, scope: !2788)
!2796 = !DILocation(line: 2119, column: 12, scope: !2788)
!2797 = !DILocation(line: 2120, column: 4, scope: !2788)
!2798 = !DILocation(line: 2120, column: 8, scope: !2788)
!2799 = !DILocation(line: 2118, column: 7, scope: !2780)
!2800 = !DILocation(line: 2122, column: 37, scope: !2787)
!2801 = !DILocation(line: 2122, column: 57, scope: !2787)
!2802 = !DILocation(line: 0, scope: !2787)
!2803 = !DILocation(line: 2125, column: 11, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 2125, column: 11)
!2805 = !DILocation(line: 2125, column: 38, scope: !2804)
!2806 = !DILocation(line: 2125, column: 11, scope: !2787)
!2807 = !DILocation(line: 2127, column: 26, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 2126, column: 2)
!2809 = !DILocation(line: 2128, column: 7, scope: !2808)
!2810 = !DILocation(line: 2128, column: 5, scope: !2808)
!2811 = !DILocation(line: 2127, column: 11, scope: !2808)
!2812 = !DILocation(line: 2130, column: 13, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 2130, column: 8)
!2814 = !DILocation(line: 2130, column: 25, scope: !2813)
!2815 = !DILocation(line: 2130, column: 28, scope: !2813)
!2816 = !DILocation(line: 2130, column: 8, scope: !2808)
!2817 = !DILocation(line: 2134, column: 7, scope: !2787)
!2818 = !DILocation(line: 2138, column: 1, scope: !2780)
!2819 = distinct !DISubprogram(name: "do_type_align", scope: !3, file: !3, line: 492, type: !2820, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{null, !409, !409}
!2822 = !{!2823, !2824}
!2823 = !DILocalVariable(name: "type", arg: 1, scope: !2819, file: !3, line: 492, type: !409)
!2824 = !DILocalVariable(name: "decl", arg: 2, scope: !2819, file: !3, line: 492, type: !409)
!2825 = !DILocation(line: 0, scope: !2819)
!2826 = !DILocation(line: 494, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 494, column: 7)
!2828 = !DILocation(line: 494, column: 27, scope: !2827)
!2829 = !DILocation(line: 494, column: 25, scope: !2827)
!2830 = !DILocation(line: 494, column: 7, scope: !2819)
!2831 = !DILocation(line: 496, column: 25, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 495, column: 5)
!2833 = !DILocation(line: 497, column: 11, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 497, column: 11)
!2835 = !DILocation(line: 497, column: 28, scope: !2834)
!2836 = !DILocation(line: 497, column: 11, scope: !2832)
!2837 = !DILocation(line: 498, column: 27, scope: !2834)
!2838 = !DILocation(line: 498, column: 25, scope: !2834)
!2839 = !DILocation(line: 498, column: 2, scope: !2834)
!2840 = !DILocation(line: 500, column: 1, scope: !2819)
!2841 = distinct !DISubprogram(name: "relayout_decl", scope: !3, file: !3, line: 704, type: !2213, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2842)
!2842 = !{!2843}
!2843 = !DILocalVariable(name: "decl", arg: 1, scope: !2841, file: !3, line: 704, type: !409)
!2844 = !DILocation(line: 0, scope: !2841)
!2845 = !DILocation(line: 706, column: 22, scope: !2841)
!2846 = !DILocation(line: 706, column: 44, scope: !2841)
!2847 = !DILocation(line: 706, column: 3, scope: !2841)
!2848 = !DILocation(line: 706, column: 20, scope: !2841)
!2849 = !DILocation(line: 707, column: 3, scope: !2841)
!2850 = !DILocation(line: 707, column: 20, scope: !2841)
!2851 = !DILocation(line: 708, column: 8, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 708, column: 7)
!2853 = !DILocation(line: 708, column: 7, scope: !2841)
!2854 = !DILocation(line: 709, column: 5, scope: !2852)
!2855 = !DILocation(line: 709, column: 23, scope: !2852)
!2856 = !DILocation(line: 710, column: 3, scope: !2841)
!2857 = !DILocation(line: 712, column: 3, scope: !2841)
!2858 = !DILocation(line: 713, column: 1, scope: !2841)
!2859 = distinct !DISubprogram(name: "start_record_layout", scope: !3, file: !3, line: 723, type: !2860, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2863)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!2862, !409}
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "record_layout_info", file: !135, line: 4224, baseType: !1675)
!2863 = !{!2864, !2865}
!2864 = !DILocalVariable(name: "t", arg: 1, scope: !2859, file: !3, line: 723, type: !409)
!2865 = !DILocalVariable(name: "rli", scope: !2859, file: !3, line: 725, type: !2862)
!2866 = !DILocation(line: 0, scope: !2859)
!2867 = !DILocation(line: 725, column: 28, scope: !2859)
!2868 = !DILocation(line: 727, column: 8, scope: !2859)
!2869 = !DILocation(line: 727, column: 10, scope: !2859)
!2870 = !DILocation(line: 732, column: 23, scope: !2859)
!2871 = !DILocation(line: 732, column: 8, scope: !2859)
!2872 = !DILocation(line: 732, column: 21, scope: !2859)
!2873 = !DILocation(line: 733, column: 8, scope: !2859)
!2874 = !DILocation(line: 733, column: 23, scope: !2859)
!2875 = !DILocation(line: 734, column: 23, scope: !2859)
!2876 = !DILocation(line: 734, column: 8, scope: !2859)
!2877 = !DILocation(line: 734, column: 21, scope: !2859)
!2878 = !DILocation(line: 750, column: 17, scope: !2859)
!2879 = !DILocation(line: 750, column: 8, scope: !2859)
!2880 = !DILocation(line: 750, column: 15, scope: !2859)
!2881 = !DILocation(line: 751, column: 17, scope: !2859)
!2882 = !DILocation(line: 751, column: 8, scope: !2859)
!2883 = !DILocation(line: 751, column: 15, scope: !2859)
!2884 = !DILocation(line: 752, column: 8, scope: !2859)
!2885 = !DILocation(line: 752, column: 19, scope: !2859)
!2886 = !DILocation(line: 753, column: 8, scope: !2859)
!2887 = !DILocation(line: 753, column: 24, scope: !2859)
!2888 = !DILocation(line: 754, column: 8, scope: !2859)
!2889 = !DILocation(line: 754, column: 31, scope: !2859)
!2890 = !DILocation(line: 755, column: 8, scope: !2859)
!2891 = !DILocation(line: 755, column: 31, scope: !2859)
!2892 = !DILocation(line: 757, column: 3, scope: !2859)
!2893 = distinct !DISubprogram(name: "bit_from_pos", scope: !3, file: !3, line: 764, type: !2894, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2896)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!409, !409, !409}
!2896 = !{!2897, !2898}
!2897 = !DILocalVariable(name: "offset", arg: 1, scope: !2893, file: !3, line: 764, type: !409)
!2898 = !DILocalVariable(name: "bitpos", arg: 2, scope: !2893, file: !3, line: 764, type: !409)
!2899 = !DILocation(line: 0, scope: !2893)
!2900 = !DILocation(line: 766, column: 10, scope: !2893)
!2901 = !DILocation(line: 766, column: 3, scope: !2893)
!2902 = distinct !DISubprogram(name: "byte_from_pos", scope: !3, file: !3, line: 773, type: !2894, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2903)
!2903 = !{!2904, !2905}
!2904 = !DILocalVariable(name: "offset", arg: 1, scope: !2902, file: !3, line: 773, type: !409)
!2905 = !DILocalVariable(name: "bitpos", arg: 2, scope: !2902, file: !3, line: 773, type: !409)
!2906 = !DILocation(line: 0, scope: !2902)
!2907 = !DILocation(line: 775, column: 10, scope: !2902)
!2908 = !DILocation(line: 775, column: 3, scope: !2902)
!2909 = distinct !DISubprogram(name: "pos_from_bit", scope: !3, file: !3, line: 782, type: !2910, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !769, !769, !7, !409}
!2912 = !{!2913, !2914, !2915, !2916}
!2913 = !DILocalVariable(name: "poffset", arg: 1, scope: !2909, file: !3, line: 782, type: !769)
!2914 = !DILocalVariable(name: "pbitpos", arg: 2, scope: !2909, file: !3, line: 782, type: !769)
!2915 = !DILocalVariable(name: "off_align", arg: 3, scope: !2909, file: !3, line: 782, type: !7)
!2916 = !DILocalVariable(name: "pos", arg: 4, scope: !2909, file: !3, line: 783, type: !409)
!2917 = !DILocation(line: 0, scope: !2909)
!2918 = !DILocation(line: 785, column: 14, scope: !2909)
!2919 = !DILocation(line: 785, column: 12, scope: !2909)
!2920 = !DILocation(line: 790, column: 14, scope: !2909)
!2921 = !DILocation(line: 790, column: 12, scope: !2909)
!2922 = !DILocation(line: 791, column: 1, scope: !2909)
!2923 = distinct !DISubprogram(name: "normalize_offset", scope: !3, file: !3, line: 797, type: !2924, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !769, !769, !7}
!2926 = !{!2927, !2928, !2929, !2930}
!2927 = !DILocalVariable(name: "poffset", arg: 1, scope: !2923, file: !3, line: 797, type: !769)
!2928 = !DILocalVariable(name: "pbitpos", arg: 2, scope: !2923, file: !3, line: 797, type: !769)
!2929 = !DILocalVariable(name: "off_align", arg: 3, scope: !2923, file: !3, line: 797, type: !7)
!2930 = !DILocalVariable(name: "extra_aligns", scope: !2931, file: !3, line: 803, type: !409)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 802, column: 5)
!2932 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 801, column: 7)
!2933 = !DILocation(line: 0, scope: !2923)
!2934 = !DILocation(line: 801, column: 25, scope: !2932)
!2935 = !DILocation(line: 801, column: 35, scope: !2932)
!2936 = !DILocation(line: 801, column: 7, scope: !2932)
!2937 = !DILocation(line: 801, column: 46, scope: !2932)
!2938 = !DILocation(line: 801, column: 7, scope: !2923)
!2939 = !DILocation(line: 803, column: 27, scope: !2931)
!2940 = !DILocation(line: 0, scope: !2931)
!2941 = !DILocation(line: 807, column: 4, scope: !2931)
!2942 = !DILocation(line: 807, column: 2, scope: !2931)
!2943 = !DILocation(line: 813, column: 4, scope: !2931)
!2944 = !DILocation(line: 813, column: 2, scope: !2931)
!2945 = !DILocation(line: 814, column: 5, scope: !2931)
!2946 = !DILocation(line: 815, column: 1, scope: !2923)
!2947 = distinct !DISubprogram(name: "debug_rli", scope: !3, file: !3, line: 820, type: !2948, scopeLine: 821, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{null, !2862}
!2950 = !{!2951}
!2951 = !DILocalVariable(name: "rli", arg: 1, scope: !2947, file: !3, line: 820, type: !2862)
!2952 = !DILocation(line: 0, scope: !2947)
!2953 = !DILocation(line: 822, column: 21, scope: !2947)
!2954 = !DILocation(line: 822, column: 42, scope: !2947)
!2955 = !DILocation(line: 822, column: 3, scope: !2947)
!2956 = !DILocation(line: 823, column: 21, scope: !2947)
!2957 = !DILocation(line: 823, column: 46, scope: !2947)
!2958 = !DILocation(line: 823, column: 3, scope: !2947)
!2959 = !DILocation(line: 824, column: 21, scope: !2947)
!2960 = !DILocation(line: 824, column: 45, scope: !2947)
!2961 = !DILocation(line: 824, column: 3, scope: !2947)
!2962 = !DILocation(line: 826, column: 12, scope: !2947)
!2963 = !DILocation(line: 827, column: 10, scope: !2947)
!2964 = !DILocation(line: 827, column: 29, scope: !2947)
!2965 = !DILocation(line: 828, column: 10, scope: !2947)
!2966 = !DILocation(line: 826, column: 3, scope: !2947)
!2967 = !DILocation(line: 831, column: 15, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 831, column: 7)
!2969 = !DILocation(line: 831, column: 42, scope: !2968)
!2970 = !DILocation(line: 831, column: 7, scope: !2968)
!2971 = !DILocation(line: 831, column: 7, scope: !2947)
!2972 = !DILocation(line: 832, column: 14, scope: !2968)
!2973 = !DILocation(line: 832, column: 60, scope: !2968)
!2974 = !DILocation(line: 832, column: 5, scope: !2968)
!2975 = !DILocation(line: 834, column: 12, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 834, column: 7)
!2977 = !DILocation(line: 834, column: 7, scope: !2976)
!2978 = !DILocation(line: 834, column: 7, scope: !2947)
!2979 = !DILocation(line: 835, column: 14, scope: !2976)
!2980 = !DILocation(line: 835, column: 5, scope: !2976)
!2981 = !DILocation(line: 837, column: 12, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 837, column: 7)
!2983 = !DILocation(line: 837, column: 7, scope: !2982)
!2984 = !DILocation(line: 837, column: 7, scope: !2947)
!2985 = !DILocation(line: 839, column: 16, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 838, column: 5)
!2987 = !DILocation(line: 839, column: 7, scope: !2986)
!2988 = !DILocation(line: 840, column: 24, scope: !2986)
!2989 = !DILocation(line: 840, column: 7, scope: !2986)
!2990 = !DILocation(line: 841, column: 5, scope: !2986)
!2991 = !DILocation(line: 842, column: 1, scope: !2947)
!2992 = distinct !DISubprogram(name: "normalize_rli", scope: !3, file: !3, line: 848, type: !2948, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2993)
!2993 = !{!2994}
!2994 = !DILocalVariable(name: "rli", arg: 1, scope: !2992, file: !3, line: 848, type: !2862)
!2995 = !DILocation(line: 0, scope: !2992)
!2996 = !DILocation(line: 850, column: 27, scope: !2992)
!2997 = !DILocation(line: 850, column: 41, scope: !2992)
!2998 = !DILocation(line: 850, column: 54, scope: !2992)
!2999 = !DILocation(line: 850, column: 3, scope: !2992)
!3000 = !DILocation(line: 851, column: 1, scope: !2992)
!3001 = distinct !DISubprogram(name: "rli_size_unit_so_far", scope: !3, file: !3, line: 856, type: !3002, scopeLine: 857, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!409, !2862}
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "rli", arg: 1, scope: !3001, file: !3, line: 856, type: !2862)
!3006 = !DILocation(line: 0, scope: !3001)
!3007 = !DILocation(line: 858, column: 30, scope: !3001)
!3008 = !DILocation(line: 858, column: 43, scope: !3001)
!3009 = !DILocation(line: 858, column: 10, scope: !3001)
!3010 = !DILocation(line: 858, column: 3, scope: !3001)
!3011 = distinct !DISubprogram(name: "rli_size_so_far", scope: !3, file: !3, line: 864, type: !3002, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3012)
!3012 = !{!3013}
!3013 = !DILocalVariable(name: "rli", arg: 1, scope: !3011, file: !3, line: 864, type: !2862)
!3014 = !DILocation(line: 0, scope: !3011)
!3015 = !DILocation(line: 866, column: 29, scope: !3011)
!3016 = !DILocation(line: 866, column: 42, scope: !3011)
!3017 = !DILocation(line: 866, column: 10, scope: !3011)
!3018 = !DILocation(line: 866, column: 3, scope: !3011)
!3019 = distinct !DISubprogram(name: "update_alignment_for_field", scope: !3, file: !3, line: 875, type: !3020, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!7, !2862, !409, !7}
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3035}
!3023 = !DILocalVariable(name: "rli", arg: 1, scope: !3019, file: !3, line: 875, type: !2862)
!3024 = !DILocalVariable(name: "field", arg: 2, scope: !3019, file: !3, line: 875, type: !409)
!3025 = !DILocalVariable(name: "known_align", arg: 3, scope: !3019, file: !3, line: 876, type: !7)
!3026 = !DILocalVariable(name: "desired_align", scope: !3019, file: !3, line: 879, type: !7)
!3027 = !DILocalVariable(name: "type", scope: !3019, file: !3, line: 881, type: !409)
!3028 = !DILocalVariable(name: "user_align", scope: !3019, file: !3, line: 883, type: !401)
!3029 = !DILocalVariable(name: "is_bitfield", scope: !3019, file: !3, line: 884, type: !401)
!3030 = !DILocalVariable(name: "type_align", scope: !3031, file: !3, line: 917, type: !7)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 916, column: 2)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 910, column: 11)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 903, column: 5)
!3034 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 902, column: 7)
!3035 = !DILocalVariable(name: "type_align", scope: !3036, file: !3, line: 934, type: !7)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 933, column: 2)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 931, column: 11)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 927, column: 5)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 926, column: 12)
!3040 = !DILocation(line: 0, scope: !3019)
!3041 = !DILocation(line: 881, column: 15, scope: !3019)
!3042 = !DILocation(line: 887, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 887, column: 7)
!3044 = !DILocation(line: 887, column: 24, scope: !3043)
!3045 = !DILocation(line: 887, column: 7, scope: !3019)
!3046 = !DILocation(line: 891, column: 3, scope: !3019)
!3047 = !DILocation(line: 892, column: 19, scope: !3019)
!3048 = !DILocation(line: 893, column: 16, scope: !3019)
!3049 = !DILocation(line: 895, column: 26, scope: !3019)
!3050 = !DILocation(line: 895, column: 23, scope: !3019)
!3051 = !DILocation(line: 896, column: 4, scope: !3019)
!3052 = !DILocation(line: 896, column: 7, scope: !3019)
!3053 = !DILocation(line: 897, column: 4, scope: !3019)
!3054 = !DILocation(line: 897, column: 24, scope: !3019)
!3055 = !DILocation(line: 897, column: 9, scope: !3019)
!3056 = !DILocation(line: 897, column: 7, scope: !3019)
!3057 = !DILocation(line: 902, column: 15, scope: !3034)
!3058 = !DILocation(line: 902, column: 42, scope: !3034)
!3059 = !DILocation(line: 902, column: 7, scope: !3034)
!3060 = !DILocation(line: 902, column: 7, scope: !3019)
!3061 = !DILocation(line: 910, column: 25, scope: !3032)
!3062 = !DILocation(line: 910, column: 29, scope: !3032)
!3063 = !DILocation(line: 911, column: 4, scope: !3032)
!3064 = !DILocation(line: 911, column: 24, scope: !3032)
!3065 = !DILocation(line: 911, column: 9, scope: !3032)
!3066 = !DILocation(line: 910, column: 11, scope: !3033)
!3067 = !DILocation(line: 912, column: 11, scope: !3032)
!3068 = !DILocation(line: 911, column: 8, scope: !3032)
!3069 = !DILocation(line: 913, column: 16, scope: !3032)
!3070 = !DILocation(line: 913, column: 11, scope: !3032)
!3071 = !DILocation(line: 914, column: 4, scope: !3032)
!3072 = !DILocation(line: 914, column: 7, scope: !3032)
!3073 = !DILocation(line: 915, column: 4, scope: !3032)
!3074 = !DILocation(line: 915, column: 24, scope: !3032)
!3075 = !DILocation(line: 915, column: 9, scope: !3032)
!3076 = !DILocation(line: 917, column: 30, scope: !3031)
!3077 = !DILocation(line: 0, scope: !3031)
!3078 = !DILocation(line: 918, column: 17, scope: !3031)
!3079 = !DILocation(line: 919, column: 8, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 919, column: 8)
!3081 = !DILocation(line: 919, column: 32, scope: !3080)
!3082 = !DILocation(line: 919, column: 8, scope: !3031)
!3083 = !DILocation(line: 920, column: 19, scope: !3080)
!3084 = !DILocation(line: 921, column: 24, scope: !3031)
!3085 = !DILocation(line: 921, column: 22, scope: !3031)
!3086 = !DILocation(line: 922, column: 26, scope: !3031)
!3087 = !DILocation(line: 922, column: 24, scope: !3031)
!3088 = !DILocation(line: 923, column: 2, scope: !3031)
!3089 = !DILocation(line: 926, column: 12, scope: !3034)
!3090 = !DILocation(line: 931, column: 11, scope: !3037)
!3091 = !DILocation(line: 931, column: 29, scope: !3037)
!3092 = !DILocation(line: 932, column: 4, scope: !3037)
!3093 = !DILocation(line: 932, column: 15, scope: !3037)
!3094 = !DILocation(line: 932, column: 7, scope: !3037)
!3095 = !DILocation(line: 931, column: 11, scope: !3038)
!3096 = !DILocation(line: 934, column: 30, scope: !3036)
!3097 = !DILocation(line: 0, scope: !3036)
!3098 = !DILocation(line: 937, column: 10, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 937, column: 8)
!3100 = !DILocation(line: 937, column: 8, scope: !3036)
!3101 = !DILocation(line: 938, column: 19, scope: !3099)
!3102 = !DILocation(line: 938, column: 6, scope: !3099)
!3103 = !DILocation(line: 944, column: 23, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 944, column: 8)
!3105 = !DILocation(line: 944, column: 8, scope: !3104)
!3106 = !DILocation(line: 944, column: 8, scope: !3036)
!3107 = !DILocation(line: 946, column: 12, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 946, column: 12)
!3109 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 945, column: 6)
!3110 = !DILocation(line: 946, column: 12, scope: !3109)
!3111 = !DILocation(line: 947, column: 23, scope: !3108)
!3112 = !DILocation(line: 950, column: 13, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 950, column: 13)
!3114 = !DILocation(line: 950, column: 37, scope: !3113)
!3115 = !DILocation(line: 950, column: 13, scope: !3104)
!3116 = !DILocation(line: 951, column: 19, scope: !3113)
!3117 = !DILocation(line: 952, column: 13, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 952, column: 13)
!3119 = !DILocation(line: 952, column: 13, scope: !3113)
!3120 = !DILocation(line: 0, scope: !3104)
!3121 = !DILocation(line: 960, column: 24, scope: !3036)
!3122 = !DILocation(line: 960, column: 22, scope: !3036)
!3123 = !DILocation(line: 961, column: 24, scope: !3036)
!3124 = !DILocation(line: 961, column: 22, scope: !3036)
!3125 = !DILocation(line: 963, column: 8, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 963, column: 8)
!3127 = !DILocation(line: 963, column: 8, scope: !3036)
!3128 = !DILocation(line: 964, column: 28, scope: !3126)
!3129 = !DILocation(line: 964, column: 26, scope: !3126)
!3130 = !DILocation(line: 964, column: 6, scope: !3126)
!3131 = !DILocation(line: 965, column: 18, scope: !3036)
!3132 = !DILocation(line: 965, column: 15, scope: !3036)
!3133 = !DILocation(line: 966, column: 2, scope: !3036)
!3134 = !DILocation(line: 971, column: 27, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 970, column: 5)
!3136 = !DILocation(line: 971, column: 25, scope: !3135)
!3137 = !DILocation(line: 972, column: 29, scope: !3135)
!3138 = !DILocation(line: 972, column: 27, scope: !3135)
!3139 = !DILocation(line: 975, column: 31, scope: !3019)
!3140 = !DILocation(line: 975, column: 3, scope: !3019)
!3141 = !DILocation(line: 975, column: 28, scope: !3019)
!3142 = !DILocation(line: 977, column: 3, scope: !3019)
!3143 = !DILocation(line: 978, column: 1, scope: !3019)
!3144 = distinct !DISubprogram(name: "place_field", scope: !3, file: !3, line: 1032, type: !3145, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3147)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !2862, !409}
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3153, !3154, !3157, !3158, !3159, !3160, !3161, !3164, !3165, !3170, !3173, !3176, !3179}
!3148 = !DILocalVariable(name: "rli", arg: 1, scope: !3144, file: !3, line: 1032, type: !2862)
!3149 = !DILocalVariable(name: "field", arg: 2, scope: !3144, file: !3, line: 1032, type: !409)
!3150 = !DILocalVariable(name: "desired_align", scope: !3144, file: !3, line: 1035, type: !7)
!3151 = !DILocalVariable(name: "known_align", scope: !3144, file: !3, line: 1038, type: !7)
!3152 = !DILocalVariable(name: "actual_align", scope: !3144, file: !3, line: 1039, type: !7)
!3153 = !DILocalVariable(name: "type", scope: !3144, file: !3, line: 1041, type: !409)
!3154 = !DILocalVariable(name: "type_align", scope: !3155, file: !3, line: 1167, type: !7)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 1166, column: 5)
!3156 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1153, column: 7)
!3157 = !DILocalVariable(name: "dsize", scope: !3155, file: !3, line: 1168, type: !409)
!3158 = !DILocalVariable(name: "field_size", scope: !3155, file: !3, line: 1169, type: !465)
!3159 = !DILocalVariable(name: "offset", scope: !3155, file: !3, line: 1170, type: !465)
!3160 = !DILocalVariable(name: "bit_offset", scope: !3155, file: !3, line: 1171, type: !465)
!3161 = !DILocalVariable(name: "prev_saved", scope: !3162, file: !3, line: 1254, type: !409)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 1253, column: 5)
!3163 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1252, column: 7)
!3164 = !DILocalVariable(name: "prev_type", scope: !3162, file: !3, line: 1255, type: !409)
!3165 = !DILocalVariable(name: "bitsize", scope: !3166, file: !3, line: 1276, type: !465)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 1272, column: 6)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 1266, column: 8)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 1259, column: 2)
!3169 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1258, column: 11)
!3170 = !DILocalVariable(name: "typesize", scope: !3171, file: !3, line: 1280, type: !465)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 1279, column: 3)
!3172 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 1278, column: 12)
!3173 = !DILocalVariable(name: "type_align", scope: !3174, file: !3, line: 1345, type: !7)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 1343, column: 2)
!3175 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1339, column: 11)
!3176 = !DILocalVariable(name: "bitsize", scope: !3177, file: !3, line: 1355, type: !463)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1354, column: 6)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 1351, column: 8)
!3179 = !DILocalVariable(name: "typesize", scope: !3177, file: !3, line: 1357, type: !463)
!3180 = !DILocation(line: 0, scope: !3144)
!3181 = !DILocation(line: 1041, column: 15, scope: !3144)
!3182 = !DILocation(line: 1043, column: 3, scope: !3144)
!3183 = !DILocation(line: 1049, column: 7, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1049, column: 7)
!3185 = !DILocation(line: 1049, column: 25, scope: !3184)
!3186 = !DILocation(line: 1049, column: 7, scope: !3144)
!3187 = !DILocation(line: 1051, column: 30, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 1050, column: 5)
!3189 = !DILocation(line: 1051, column: 28, scope: !3188)
!3190 = !DILocation(line: 1053, column: 7, scope: !3188)
!3191 = !DILocation(line: 1058, column: 30, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 1058, column: 12)
!3193 = !DILocation(line: 1058, column: 12, scope: !3184)
!3194 = !DILocation(line: 1063, column: 12, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 1063, column: 12)
!3196 = !DILocation(line: 1063, column: 31, scope: !3195)
!3197 = !DILocation(line: 1063, column: 12, scope: !3192)
!3198 = !DILocation(line: 1065, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1064, column: 5)
!3200 = !DILocation(line: 1066, column: 7, scope: !3199)
!3201 = !DILocation(line: 1069, column: 12, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1069, column: 12)
!3203 = !DILocation(line: 1069, column: 29, scope: !3202)
!3204 = !DILocation(line: 1069, column: 12, scope: !3195)
!3205 = !DILocation(line: 1073, column: 40, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 1070, column: 5)
!3207 = !DILocation(line: 1073, column: 7, scope: !3206)
!3208 = !DILocation(line: 1073, column: 33, scope: !3206)
!3209 = !DILocation(line: 1074, column: 44, scope: !3206)
!3210 = !DILocation(line: 1074, column: 7, scope: !3206)
!3211 = !DILocation(line: 1074, column: 37, scope: !3206)
!3212 = !DILocation(line: 1075, column: 7, scope: !3206)
!3213 = !DILocation(line: 1076, column: 7, scope: !3206)
!3214 = !DILocation(line: 1081, column: 29, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1081, column: 7)
!3216 = !DILocation(line: 1081, column: 9, scope: !3215)
!3217 = !DILocation(line: 1081, column: 7, scope: !3144)
!3218 = !DILocation(line: 1082, column: 39, scope: !3215)
!3219 = !DILocation(line: 1082, column: 20, scope: !3215)
!3220 = !DILocation(line: 1083, column: 29, scope: !3215)
!3221 = !DILocation(line: 1083, column: 10, scope: !3215)
!3222 = !DILocation(line: 1083, column: 8, scope: !3215)
!3223 = !DILocation(line: 1083, column: 6, scope: !3215)
!3224 = !DILocation(line: 1082, column: 19, scope: !3215)
!3225 = !DILocation(line: 1082, column: 5, scope: !3215)
!3226 = !DILocation(line: 1084, column: 32, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 1084, column: 12)
!3228 = !DILocation(line: 1084, column: 12, scope: !3227)
!3229 = !DILocation(line: 1084, column: 12, scope: !3215)
!3230 = !DILocation(line: 1086, column: 32, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 1086, column: 12)
!3232 = !DILocation(line: 1086, column: 12, scope: !3231)
!3233 = !DILocation(line: 1086, column: 12, scope: !3227)
!3234 = !DILocation(line: 1088, column: 28, scope: !3231)
!3235 = !DILocation(line: 1088, column: 9, scope: !3231)
!3236 = !DILocation(line: 1089, column: 32, scope: !3231)
!3237 = !DILocation(line: 1089, column: 13, scope: !3231)
!3238 = !DILocation(line: 1089, column: 11, scope: !3231)
!3239 = !DILocation(line: 1089, column: 9, scope: !3231)
!3240 = !DILocation(line: 1087, column: 19, scope: !3231)
!3241 = !DILocation(line: 1087, column: 5, scope: !3231)
!3242 = !DILocation(line: 1091, column: 24, scope: !3231)
!3243 = !DILocation(line: 0, scope: !3215)
!3244 = !DILocation(line: 1093, column: 19, scope: !3144)
!3245 = !DILocation(line: 1094, column: 19, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1094, column: 7)
!3247 = !DILocation(line: 1094, column: 7, scope: !3144)
!3248 = !DILocation(line: 1095, column: 19, scope: !3246)
!3249 = !DILocation(line: 1097, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1097, column: 7)
!3251 = !DILocation(line: 1097, column: 19, scope: !3250)
!3252 = !DILocation(line: 1097, column: 22, scope: !3250)
!3253 = !DILocation(line: 1097, column: 7, scope: !3144)
!3254 = !DILocation(line: 1099, column: 26, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 1099, column: 11)
!3256 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 1098, column: 5)
!3257 = !DILocation(line: 1099, column: 23, scope: !3255)
!3258 = !DILocation(line: 1099, column: 11, scope: !3256)
!3259 = !DILocation(line: 1101, column: 26, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 1101, column: 8)
!3261 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1100, column: 2)
!3262 = !DILocation(line: 1101, column: 8, scope: !3261)
!3263 = !DILocation(line: 1107, column: 18, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 1107, column: 17)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 1103, column: 12)
!3266 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 1102, column: 6)
!3267 = !DILocation(line: 1107, column: 17, scope: !3265)
!3268 = !DILocation(line: 1108, column: 3, scope: !3264)
!3269 = !DILocation(line: 1113, column: 7, scope: !3255)
!3270 = !DILocation(line: 1113, column: 30, scope: !3255)
!3271 = !DILocation(line: 1119, column: 19, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1119, column: 7)
!3273 = !DILocation(line: 1120, column: 7, scope: !3272)
!3274 = !DILocation(line: 1120, column: 19, scope: !3272)
!3275 = !DILocation(line: 1120, column: 46, scope: !3272)
!3276 = !DILocation(line: 1120, column: 11, scope: !3272)
!3277 = !DILocation(line: 1119, column: 7, scope: !3144)
!3278 = !DILocation(line: 1125, column: 11, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 1125, column: 11)
!3280 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1121, column: 5)
!3281 = !DILocation(line: 1125, column: 40, scope: !3279)
!3282 = !DILocation(line: 1125, column: 11, scope: !3280)
!3283 = !DILocation(line: 1126, column: 2, scope: !3279)
!3284 = !DILocation(line: 1130, column: 32, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 1130, column: 11)
!3286 = !DILocation(line: 1130, column: 25, scope: !3285)
!3287 = !DILocation(line: 1130, column: 11, scope: !3280)
!3288 = !DILocation(line: 1131, column: 16, scope: !3285)
!3289 = !DILocation(line: 1131, column: 14, scope: !3285)
!3290 = !DILocation(line: 0, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 1145, column: 11)
!3292 = !DILocation(line: 1145, column: 13, scope: !3291)
!3293 = !DILocation(line: 1131, column: 2, scope: !3285)
!3294 = !DILocation(line: 1136, column: 8, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 1133, column: 2)
!3296 = !DILocation(line: 1136, column: 6, scope: !3295)
!3297 = !DILocation(line: 1140, column: 18, scope: !3295)
!3298 = !DILocation(line: 1140, column: 16, scope: !3295)
!3299 = !DILocation(line: 1142, column: 18, scope: !3295)
!3300 = !DILocation(line: 1142, column: 16, scope: !3295)
!3301 = !DILocation(line: 1145, column: 11, scope: !3280)
!3302 = !DILocation(line: 1146, column: 20, scope: !3291)
!3303 = !DILocation(line: 1146, column: 2, scope: !3291)
!3304 = !DILocation(line: 1154, column: 20, scope: !3156)
!3305 = !DILocation(line: 1154, column: 47, scope: !3156)
!3306 = !DILocation(line: 1154, column: 12, scope: !3156)
!3307 = !DILocation(line: 1155, column: 7, scope: !3156)
!3308 = !DILocation(line: 1155, column: 10, scope: !3156)
!3309 = !DILocation(line: 1155, column: 28, scope: !3156)
!3310 = !DILocation(line: 1156, column: 18, scope: !3156)
!3311 = !DILocation(line: 1156, column: 15, scope: !3156)
!3312 = !DILocation(line: 1156, column: 7, scope: !3156)
!3313 = !DILocation(line: 1157, column: 10, scope: !3156)
!3314 = !DILocation(line: 1158, column: 7, scope: !3156)
!3315 = !DILocation(line: 1158, column: 13, scope: !3156)
!3316 = !DILocation(line: 1160, column: 4, scope: !3156)
!3317 = !DILocation(line: 1160, column: 7, scope: !3156)
!3318 = !DILocation(line: 1160, column: 25, scope: !3156)
!3319 = !DILocation(line: 1161, column: 7, scope: !3156)
!3320 = !DILocation(line: 1161, column: 10, scope: !3156)
!3321 = !DILocation(line: 1161, column: 34, scope: !3156)
!3322 = !DILocation(line: 1162, column: 7, scope: !3156)
!3323 = !DILocation(line: 1162, column: 27, scope: !3156)
!3324 = !DILocation(line: 1162, column: 12, scope: !3156)
!3325 = !DILocation(line: 1163, column: 7, scope: !3156)
!3326 = !DILocation(line: 1163, column: 25, scope: !3156)
!3327 = !DILocation(line: 1163, column: 10, scope: !3156)
!3328 = !DILocation(line: 1164, column: 7, scope: !3156)
!3329 = !DILocation(line: 1164, column: 30, scope: !3156)
!3330 = !DILocation(line: 1164, column: 10, scope: !3156)
!3331 = !DILocation(line: 1165, column: 7, scope: !3156)
!3332 = !DILocation(line: 1165, column: 25, scope: !3156)
!3333 = !DILocation(line: 1165, column: 10, scope: !3156)
!3334 = !DILocation(line: 1153, column: 7, scope: !3144)
!3335 = !DILocation(line: 1167, column: 33, scope: !3155)
!3336 = !DILocation(line: 0, scope: !3155)
!3337 = !DILocation(line: 1168, column: 20, scope: !3155)
!3338 = !DILocation(line: 1169, column: 34, scope: !3155)
!3339 = !DILocation(line: 1170, column: 49, scope: !3155)
!3340 = !DILocation(line: 1170, column: 30, scope: !3155)
!3341 = !DILocation(line: 1171, column: 53, scope: !3155)
!3342 = !DILocation(line: 1171, column: 34, scope: !3155)
!3343 = !DILocation(line: 1174, column: 13, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 1174, column: 11)
!3345 = !DILocation(line: 1174, column: 11, scope: !3155)
!3346 = !DILocation(line: 1175, column: 15, scope: !3344)
!3347 = !DILocation(line: 1175, column: 2, scope: !3344)
!3348 = !DILocation(line: 1180, column: 61, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 1180, column: 11)
!3350 = !DILocation(line: 1180, column: 11, scope: !3349)
!3351 = !DILocation(line: 1180, column: 11, scope: !3155)
!3352 = !DILocation(line: 1182, column: 8, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 1182, column: 8)
!3354 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 1181, column: 2)
!3355 = !DILocation(line: 1182, column: 8, scope: !3354)
!3356 = !DILocation(line: 1184, column: 12, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 1184, column: 12)
!3358 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 1183, column: 6)
!3359 = !DILocation(line: 1184, column: 40, scope: !3357)
!3360 = !DILocation(line: 1184, column: 12, scope: !3358)
!3361 = !DILocation(line: 1186, column: 6, scope: !3357)
!3362 = !DILocation(line: 1185, column: 3, scope: !3357)
!3363 = !DILocation(line: 1191, column: 34, scope: !3353)
!3364 = !DILocation(line: 1191, column: 55, scope: !3353)
!3365 = !DILocation(line: 1191, column: 20, scope: !3353)
!3366 = !DILocation(line: 1191, column: 18, scope: !3353)
!3367 = !DILocation(line: 1194, column: 13, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 1194, column: 11)
!3369 = !DILocation(line: 1194, column: 11, scope: !3155)
!3370 = !DILocation(line: 1195, column: 30, scope: !3368)
!3371 = !DILocation(line: 1195, column: 2, scope: !3368)
!3372 = !DILocation(line: 1195, column: 27, scope: !3368)
!3373 = !DILocation(line: 1252, column: 15, scope: !3163)
!3374 = !DILocation(line: 1252, column: 42, scope: !3163)
!3375 = !DILocation(line: 1252, column: 7, scope: !3163)
!3376 = !DILocation(line: 1252, column: 7, scope: !3144)
!3377 = !DILocation(line: 1254, column: 30, scope: !3162)
!3378 = !DILocation(line: 0, scope: !3162)
!3379 = !DILocation(line: 1255, column: 24, scope: !3162)
!3380 = !DILocation(line: 1255, column: 37, scope: !3162)
!3381 = !DILocation(line: 1258, column: 11, scope: !3162)
!3382 = !DILocation(line: 1266, column: 8, scope: !3167)
!3383 = !DILocation(line: 1267, column: 8, scope: !3167)
!3384 = !DILocation(line: 1267, column: 27, scope: !3167)
!3385 = !DILocation(line: 1267, column: 12, scope: !3167)
!3386 = !DILocation(line: 1268, column: 8, scope: !3167)
!3387 = !DILocation(line: 1268, column: 27, scope: !3167)
!3388 = !DILocation(line: 1268, column: 12, scope: !3167)
!3389 = !DILocation(line: 1269, column: 8, scope: !3167)
!3390 = !DILocation(line: 1269, column: 26, scope: !3167)
!3391 = !DILocation(line: 1269, column: 11, scope: !3167)
!3392 = !DILocation(line: 1270, column: 8, scope: !3167)
!3393 = !DILocation(line: 1270, column: 26, scope: !3167)
!3394 = !DILocation(line: 1270, column: 11, scope: !3167)
!3395 = !DILocation(line: 1271, column: 8, scope: !3167)
!3396 = !DILocation(line: 1271, column: 29, scope: !3167)
!3397 = !DILocation(line: 1271, column: 47, scope: !3167)
!3398 = !DILocation(line: 1271, column: 11, scope: !3167)
!3399 = !DILocation(line: 1266, column: 8, scope: !3168)
!3400 = !DILocation(line: 1276, column: 46, scope: !3166)
!3401 = !DILocation(line: 1276, column: 32, scope: !3166)
!3402 = !DILocation(line: 0, scope: !3166)
!3403 = !DILocation(line: 1278, column: 17, scope: !3172)
!3404 = !DILocation(line: 1278, column: 12, scope: !3172)
!3405 = !DILocation(line: 1278, column: 40, scope: !3172)
!3406 = !DILocation(line: 1278, column: 12, scope: !3166)
!3407 = !DILocation(line: 1280, column: 44, scope: !3171)
!3408 = !DILocation(line: 1280, column: 30, scope: !3171)
!3409 = !DILocation(line: 0, scope: !3171)
!3410 = !DILocation(line: 1284, column: 9, scope: !3171)
!3411 = !DILocation(line: 1284, column: 7, scope: !3171)
!3412 = !DILocation(line: 1286, column: 21, scope: !3171)
!3413 = !DILocation(line: 1287, column: 18, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 1287, column: 9)
!3415 = !DILocation(line: 1287, column: 9, scope: !3171)
!3416 = !DILocation(line: 1288, column: 35, scope: !3414)
!3417 = !DILocation(line: 1288, column: 7, scope: !3414)
!3418 = !DILocation(line: 1290, column: 46, scope: !3414)
!3419 = !DILocation(line: 1290, column: 37, scope: !3414)
!3420 = !DILocation(line: 1290, column: 35, scope: !3414)
!3421 = !DILocation(line: 1293, column: 31, scope: !3172)
!3422 = !DILocation(line: 1306, column: 28, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 1306, column: 12)
!3424 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 1296, column: 6)
!3425 = !DILocation(line: 1306, column: 13, scope: !3423)
!3426 = !DILocation(line: 1306, column: 12, scope: !3424)
!3427 = !DILocation(line: 1309, column: 9, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 1307, column: 3)
!3429 = !DILocation(line: 1309, column: 7, scope: !3428)
!3430 = !DILocation(line: 1311, column: 3, scope: !3428)
!3431 = !DILocation(line: 1319, column: 13, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 1319, column: 12)
!3433 = !DILocation(line: 1320, column: 5, scope: !3432)
!3434 = !DILocation(line: 1320, column: 23, scope: !3432)
!3435 = !DILocation(line: 1320, column: 8, scope: !3432)
!3436 = !DILocation(line: 1319, column: 12, scope: !3424)
!3437 = !DILocation(line: 1321, column: 19, scope: !3432)
!3438 = !DILocation(line: 1321, column: 3, scope: !3432)
!3439 = !DILocation(line: 1324, column: 4, scope: !3168)
!3440 = !DILocation(line: 1325, column: 9, scope: !3168)
!3441 = !DILocation(line: 1339, column: 12, scope: !3175)
!3442 = !DILocation(line: 1340, column: 4, scope: !3175)
!3443 = !DILocation(line: 1340, column: 19, scope: !3175)
!3444 = !DILocation(line: 1339, column: 11, scope: !3162)
!3445 = !DILocation(line: 1341, column: 29, scope: !3175)
!3446 = !DILocation(line: 1341, column: 47, scope: !3175)
!3447 = !DILocation(line: 1341, column: 11, scope: !3175)
!3448 = !DILocation(line: 1340, column: 8, scope: !3175)
!3449 = !DILocation(line: 1342, column: 26, scope: !3175)
!3450 = !DILocation(line: 1342, column: 11, scope: !3175)
!3451 = !DILocation(line: 0, scope: !3174)
!3452 = !DILocation(line: 1351, column: 8, scope: !3178)
!3453 = !DILocation(line: 1351, column: 26, scope: !3178)
!3454 = !DILocation(line: 1352, column: 8, scope: !3178)
!3455 = !DILocation(line: 1367, column: 17, scope: !3174)
!3456 = !DILocation(line: 1352, column: 26, scope: !3178)
!3457 = !DILocation(line: 1352, column: 11, scope: !3178)
!3458 = !DILocation(line: 1353, column: 8, scope: !3178)
!3459 = !DILocation(line: 1353, column: 26, scope: !3178)
!3460 = !DILocation(line: 1353, column: 11, scope: !3178)
!3461 = !DILocation(line: 1351, column: 8, scope: !3174)
!3462 = !DILocation(line: 1356, column: 19, scope: !3177)
!3463 = !DILocation(line: 1356, column: 5, scope: !3177)
!3464 = !DILocation(line: 0, scope: !3177)
!3465 = !DILocation(line: 1358, column: 19, scope: !3177)
!3466 = !DILocation(line: 1358, column: 5, scope: !3177)
!3467 = !DILocation(line: 1360, column: 21, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 1360, column: 12)
!3469 = !DILocation(line: 1360, column: 12, scope: !3177)
!3470 = !DILocation(line: 1361, column: 8, scope: !3468)
!3471 = !DILocation(line: 1361, column: 31, scope: !3468)
!3472 = !DILocation(line: 1361, column: 3, scope: !3468)
!3473 = !DILocation(line: 1363, column: 42, scope: !3468)
!3474 = !DILocation(line: 1363, column: 33, scope: !3468)
!3475 = !DILocation(line: 1363, column: 8, scope: !3468)
!3476 = !DILocation(line: 1363, column: 31, scope: !3468)
!3477 = !DILocation(line: 1369, column: 8, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 1369, column: 8)
!3479 = !DILocation(line: 1369, column: 32, scope: !3478)
!3480 = !DILocation(line: 1369, column: 8, scope: !3174)
!3481 = !DILocation(line: 1370, column: 19, scope: !3478)
!3482 = !DILocation(line: 1372, column: 32, scope: !3174)
!3483 = !DILocation(line: 1372, column: 53, scope: !3174)
!3484 = !DILocation(line: 1372, column: 18, scope: !3174)
!3485 = !DILocation(line: 1372, column: 16, scope: !3174)
!3486 = !DILocation(line: 1376, column: 20, scope: !3174)
!3487 = !DILocation(line: 1377, column: 2, scope: !3174)
!3488 = !DILocation(line: 1381, column: 3, scope: !3144)
!3489 = !DILocation(line: 1382, column: 36, scope: !3144)
!3490 = !DILocation(line: 1382, column: 3, scope: !3144)
!3491 = !DILocation(line: 1382, column: 29, scope: !3144)
!3492 = !DILocation(line: 1383, column: 40, scope: !3144)
!3493 = !DILocation(line: 1383, column: 3, scope: !3144)
!3494 = !DILocation(line: 1383, column: 33, scope: !3144)
!3495 = !DILocation(line: 1384, column: 3, scope: !3144)
!3496 = !DILocation(line: 1389, column: 24, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1389, column: 7)
!3498 = !DILocation(line: 1389, column: 9, scope: !3497)
!3499 = !DILocation(line: 1389, column: 7, scope: !3144)
!3500 = !DILocation(line: 1390, column: 35, scope: !3497)
!3501 = !DILocation(line: 1390, column: 21, scope: !3497)
!3502 = !DILocation(line: 1391, column: 25, scope: !3497)
!3503 = !DILocation(line: 1391, column: 11, scope: !3497)
!3504 = !DILocation(line: 1391, column: 9, scope: !3497)
!3505 = !DILocation(line: 1391, column: 7, scope: !3497)
!3506 = !DILocation(line: 1390, column: 20, scope: !3497)
!3507 = !DILocation(line: 1390, column: 5, scope: !3497)
!3508 = !DILocation(line: 1392, column: 27, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1392, column: 12)
!3510 = !DILocation(line: 1392, column: 12, scope: !3509)
!3511 = !DILocation(line: 1392, column: 12, scope: !3497)
!3512 = !DILocation(line: 1393, column: 20, scope: !3509)
!3513 = !DILocation(line: 1394, column: 27, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 1394, column: 12)
!3515 = !DILocation(line: 1394, column: 12, scope: !3514)
!3516 = !DILocation(line: 1394, column: 12, scope: !3509)
!3517 = !DILocation(line: 1396, column: 23, scope: !3514)
!3518 = !DILocation(line: 1396, column: 9, scope: !3514)
!3519 = !DILocation(line: 1397, column: 27, scope: !3514)
!3520 = !DILocation(line: 1397, column: 13, scope: !3514)
!3521 = !DILocation(line: 1397, column: 11, scope: !3514)
!3522 = !DILocation(line: 1397, column: 9, scope: !3514)
!3523 = !DILocation(line: 1395, column: 20, scope: !3514)
!3524 = !DILocation(line: 1395, column: 5, scope: !3514)
!3525 = !DILocation(line: 1399, column: 20, scope: !3514)
!3526 = !DILocation(line: 0, scope: !3497)
!3527 = !DILocation(line: 1404, column: 19, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1404, column: 7)
!3529 = !DILocation(line: 1404, column: 7, scope: !3144)
!3530 = !DILocation(line: 1405, column: 5, scope: !3528)
!3531 = !DILocation(line: 1407, column: 12, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1407, column: 7)
!3533 = !DILocation(line: 1407, column: 23, scope: !3532)
!3534 = !DILocation(line: 1407, column: 31, scope: !3532)
!3535 = !DILocation(line: 1407, column: 34, scope: !3532)
!3536 = !DILocation(line: 1407, column: 7, scope: !3144)
!3537 = !DILocation(line: 1408, column: 21, scope: !3532)
!3538 = !DILocation(line: 1408, column: 5, scope: !3532)
!3539 = !DILocation(line: 1417, column: 7, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1417, column: 7)
!3541 = !DILocation(line: 1417, column: 25, scope: !3540)
!3542 = !DILocation(line: 1417, column: 7, scope: !3144)
!3543 = !DILocation(line: 1419, column: 12, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 1419, column: 12)
!3545 = !DILocation(line: 1419, column: 42, scope: !3544)
!3546 = !DILocation(line: 1420, column: 5, scope: !3544)
!3547 = !DILocation(line: 1420, column: 8, scope: !3544)
!3548 = !DILocation(line: 1419, column: 12, scope: !3540)
!3549 = !DILocation(line: 1423, column: 4, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1421, column: 5)
!3551 = !DILocation(line: 1423, column: 2, scope: !3550)
!3552 = !DILocation(line: 1428, column: 4, scope: !3550)
!3553 = !DILocation(line: 1428, column: 2, scope: !3550)
!3554 = !DILocation(line: 1429, column: 21, scope: !3550)
!3555 = !DILocation(line: 1429, column: 19, scope: !3550)
!3556 = !DILocation(line: 1430, column: 27, scope: !3550)
!3557 = !DILocation(line: 1430, column: 25, scope: !3550)
!3558 = !DILocation(line: 1431, column: 5, scope: !3550)
!3559 = !DILocation(line: 1432, column: 20, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1432, column: 12)
!3561 = !DILocation(line: 1432, column: 47, scope: !3560)
!3562 = !DILocation(line: 1432, column: 12, scope: !3560)
!3563 = !DILocation(line: 0, scope: !3560)
!3564 = !DILocation(line: 1432, column: 12, scope: !3544)
!3565 = !DILocation(line: 1438, column: 12, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 1438, column: 11)
!3567 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 1433, column: 5)
!3568 = !DILocation(line: 1438, column: 31, scope: !3566)
!3569 = !DILocation(line: 1439, column: 5, scope: !3566)
!3570 = !DILocation(line: 1439, column: 8, scope: !3566)
!3571 = !DILocation(line: 1439, column: 39, scope: !3566)
!3572 = !DILocation(line: 1440, column: 4, scope: !3566)
!3573 = !DILocation(line: 1440, column: 7, scope: !3566)
!3574 = !DILocation(line: 1441, column: 4, scope: !3566)
!3575 = !DILocation(line: 1441, column: 23, scope: !3566)
!3576 = !DILocation(line: 1441, column: 8, scope: !3566)
!3577 = !DILocation(line: 1438, column: 11, scope: !3567)
!3578 = !DILocation(line: 1442, column: 16, scope: !3566)
!3579 = !DILocation(line: 1442, column: 14, scope: !3566)
!3580 = !DILocation(line: 1442, column: 2, scope: !3566)
!3581 = !DILocation(line: 1445, column: 7, scope: !3567)
!3582 = !DILocation(line: 1446, column: 5, scope: !3567)
!3583 = !DILocation(line: 1450, column: 7, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 1448, column: 5)
!3585 = !DILocation(line: 1452, column: 1, scope: !3144)
!3586 = distinct !DISubprogram(name: "place_union_field", scope: !3, file: !3, line: 983, type: !3145, scopeLine: 984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3587)
!3587 = !{!3588, !3589}
!3588 = !DILocalVariable(name: "rli", arg: 1, scope: !3586, file: !3, line: 983, type: !2862)
!3589 = !DILocalVariable(name: "field", arg: 2, scope: !3586, file: !3, line: 983, type: !409)
!3590 = !DILocation(line: 0, scope: !3586)
!3591 = !DILocation(line: 985, column: 3, scope: !3586)
!3592 = !DILocation(line: 987, column: 31, scope: !3586)
!3593 = !DILocation(line: 987, column: 3, scope: !3586)
!3594 = !DILocation(line: 987, column: 29, scope: !3586)
!3595 = !DILocation(line: 988, column: 35, scope: !3586)
!3596 = !DILocation(line: 988, column: 3, scope: !3586)
!3597 = !DILocation(line: 988, column: 33, scope: !3586)
!3598 = !DILocation(line: 989, column: 3, scope: !3586)
!3599 = !DILocation(line: 994, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 994, column: 7)
!3601 = !DILocation(line: 994, column: 37, scope: !3600)
!3602 = !DILocation(line: 994, column: 7, scope: !3586)
!3603 = !DILocation(line: 999, column: 7, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 999, column: 7)
!3605 = !DILocation(line: 999, column: 26, scope: !3604)
!3606 = !DILocation(line: 999, column: 7, scope: !3586)
!3607 = !DILocation(line: 1000, column: 19, scope: !3604)
!3608 = !DILocation(line: 1000, column: 17, scope: !3604)
!3609 = !DILocation(line: 1000, column: 5, scope: !3604)
!3610 = !DILocation(line: 1001, column: 31, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1001, column: 12)
!3612 = !DILocation(line: 1001, column: 12, scope: !3604)
!3613 = !DILocation(line: 1002, column: 19, scope: !3611)
!3614 = !DILocation(line: 1002, column: 17, scope: !3611)
!3615 = !DILocation(line: 1002, column: 5, scope: !3611)
!3616 = !DILocation(line: 1005, column: 1, scope: !3586)
!3617 = distinct !DISubprogram(name: "excess_unit_span", scope: !3, file: !3, line: 1012, type: !3618, scopeLine: 1014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!402, !465, !465, !465, !465, !409}
!3620 = !{!3621, !3622, !3623, !3624, !3625, !3626}
!3621 = !DILocalVariable(name: "byte_offset", arg: 1, scope: !3617, file: !3, line: 1012, type: !465)
!3622 = !DILocalVariable(name: "bit_offset", arg: 2, scope: !3617, file: !3, line: 1012, type: !465)
!3623 = !DILocalVariable(name: "size", arg: 3, scope: !3617, file: !3, line: 1013, type: !465)
!3624 = !DILocalVariable(name: "align", arg: 4, scope: !3617, file: !3, line: 1013, type: !465)
!3625 = !DILocalVariable(name: "type", arg: 5, scope: !3617, file: !3, line: 1013, type: !409)
!3626 = !DILocalVariable(name: "offset", scope: !3617, file: !3, line: 1017, type: !463)
!3627 = !DILocation(line: 0, scope: !3617)
!3628 = !DILocation(line: 1017, column: 47, scope: !3617)
!3629 = !DILocation(line: 1017, column: 63, scope: !3617)
!3630 = !DILocation(line: 1019, column: 19, scope: !3617)
!3631 = !DILocation(line: 1020, column: 19, scope: !3617)
!3632 = !DILocation(line: 1020, column: 26, scope: !3617)
!3633 = !DILocation(line: 1020, column: 34, scope: !3617)
!3634 = !DILocation(line: 1020, column: 39, scope: !3617)
!3635 = !DILocation(line: 1021, column: 46, scope: !3617)
!3636 = !DILocation(line: 1021, column: 32, scope: !3617)
!3637 = !DILocation(line: 1022, column: 7, scope: !3617)
!3638 = !DILocation(line: 1021, column: 4, scope: !3617)
!3639 = !DILocation(line: 1020, column: 3, scope: !3617)
!3640 = distinct !DISubprogram(name: "compute_record_mode", scope: !3, file: !3, line: 1545, type: !2213, scopeLine: 1546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3641)
!3641 = !{!3642, !3643, !3644}
!3642 = !DILocalVariable(name: "type", arg: 1, scope: !3640, file: !3, line: 1545, type: !409)
!3643 = !DILocalVariable(name: "field", scope: !3640, file: !3, line: 1547, type: !409)
!3644 = !DILocalVariable(name: "mode", scope: !3640, file: !3, line: 1548, type: !5)
!3645 = !DILocation(line: 0, scope: !3640)
!3646 = !DILocation(line: 1554, column: 3, scope: !3640)
!3647 = !DILocation(line: 1556, column: 24, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1556, column: 7)
!3649 = !DILocation(line: 1556, column: 9, scope: !3648)
!3650 = !DILocation(line: 1556, column: 7, scope: !3640)
!3651 = !DILocation(line: 1562, column: 16, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1562, column: 3)
!3653 = !DILocation(line: 1562, column: 8, scope: !3652)
!3654 = !DILocation(line: 1548, column: 21, scope: !3640)
!3655 = !DILocation(line: 0, scope: !3652)
!3656 = !DILocation(line: 1562, column: 3, scope: !3652)
!3657 = !DILocation(line: 1564, column: 11, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 1564, column: 11)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 1563, column: 5)
!3660 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1562, column: 3)
!3661 = !DILocation(line: 1564, column: 29, scope: !3658)
!3662 = !DILocation(line: 1564, column: 11, scope: !3659)
!3663 = !DILocation(line: 1567, column: 11, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 1567, column: 11)
!3665 = !DILocation(line: 1567, column: 41, scope: !3664)
!3666 = !DILocation(line: 1568, column: 4, scope: !3664)
!3667 = !DILocation(line: 1568, column: 8, scope: !3664)
!3668 = !DILocation(line: 1568, column: 38, scope: !3664)
!3669 = !DILocation(line: 1569, column: 8, scope: !3664)
!3670 = !DILocation(line: 1569, column: 13, scope: !3664)
!3671 = !DILocation(line: 1570, column: 8, scope: !3664)
!3672 = !DILocation(line: 1570, column: 13, scope: !3664)
!3673 = !DILocation(line: 1570, column: 43, scope: !3664)
!3674 = !DILocation(line: 1571, column: 6, scope: !3664)
!3675 = !DILocation(line: 1571, column: 9, scope: !3664)
!3676 = !DILocation(line: 1572, column: 4, scope: !3664)
!3677 = !DILocation(line: 1572, column: 24, scope: !3664)
!3678 = !DILocation(line: 1572, column: 9, scope: !3664)
!3679 = !DILocation(line: 1573, column: 4, scope: !3664)
!3680 = !DILocation(line: 1573, column: 7, scope: !3664)
!3681 = !DILocation(line: 1573, column: 25, scope: !3664)
!3682 = !DILocation(line: 1574, column: 4, scope: !3664)
!3683 = !DILocation(line: 1574, column: 9, scope: !3664)
!3684 = !DILocation(line: 1567, column: 11, scope: !3659)
!3685 = !DILocation(line: 1580, column: 29, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 1580, column: 11)
!3687 = !DILocation(line: 1580, column: 47, scope: !3686)
!3688 = !DILocation(line: 1580, column: 11, scope: !3686)
!3689 = !DILocation(line: 1580, column: 11, scope: !3659)
!3690 = !DILocation(line: 1581, column: 9, scope: !3686)
!3691 = !DILocation(line: 1581, column: 2, scope: !3686)
!3692 = !DILocation(line: 1562, column: 51, scope: !3660)
!3693 = !DILocation(line: 1562, column: 3, scope: !3660)
!3694 = distinct !{!3694, !3656, !3695}
!3695 = !DILocation(line: 1590, column: 5, scope: !3652)
!3696 = !DILocation(line: 1595, column: 7, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1595, column: 7)
!3698 = !DILocation(line: 1595, column: 24, scope: !3697)
!3699 = !DILocation(line: 1595, column: 47, scope: !3697)
!3700 = !DILocation(line: 1595, column: 39, scope: !3697)
!3701 = !DILocation(line: 1596, column: 25, scope: !3697)
!3702 = !DILocation(line: 1596, column: 10, scope: !3697)
!3703 = !DILocation(line: 1597, column: 7, scope: !3697)
!3704 = !DILocation(line: 1597, column: 10, scope: !3697)
!3705 = !DILocation(line: 1597, column: 37, scope: !3697)
!3706 = !DILocation(line: 1597, column: 34, scope: !3697)
!3707 = !DILocation(line: 1595, column: 7, scope: !3640)
!3708 = !DILocation(line: 1598, column: 5, scope: !3697)
!3709 = !DILocation(line: 1600, column: 5, scope: !3697)
!3710 = !DILocation(line: 0, scope: !3697)
!3711 = !DILocation(line: 1604, column: 7, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1604, column: 7)
!3713 = !DILocation(line: 1614, column: 1, scope: !3640)
!3714 = distinct !DISubprogram(name: "finish_record_layout", scope: !3, file: !3, line: 1709, type: !3715, scopeLine: 1710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !2862, !402}
!3717 = !{!3718, !3719, !3720}
!3718 = !DILocalVariable(name: "rli", arg: 1, scope: !3714, file: !3, line: 1709, type: !2862)
!3719 = !DILocalVariable(name: "free_p", arg: 2, scope: !3714, file: !3, line: 1709, type: !402)
!3720 = !DILocalVariable(name: "variant", scope: !3714, file: !3, line: 1711, type: !409)
!3721 = !DILocation(line: 0, scope: !3714)
!3722 = !DILocation(line: 1714, column: 3, scope: !3714)
!3723 = !DILocation(line: 1717, column: 29, scope: !3714)
!3724 = !DILocation(line: 1717, column: 3, scope: !3714)
!3725 = !DILocation(line: 1720, column: 28, scope: !3714)
!3726 = !DILocation(line: 1720, column: 3, scope: !3714)
!3727 = !DILocation(line: 1724, column: 18, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1724, column: 3)
!3729 = !DILocation(line: 0, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 1724, column: 3)
!3731 = !DILocation(line: 1724, column: 8, scope: !3728)
!3732 = !DILocation(line: 0, scope: !3728)
!3733 = !DILocation(line: 1724, column: 3, scope: !3728)
!3734 = !DILocation(line: 0, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1731, column: 5)
!3736 = !DILocation(line: 1730, column: 15, scope: !3714)
!3737 = !DILocation(line: 1730, column: 3, scope: !3714)
!3738 = !DILocation(line: 1726, column: 29, scope: !3730)
!3739 = !DILocation(line: 1726, column: 5, scope: !3730)
!3740 = !DILocation(line: 1726, column: 27, scope: !3730)
!3741 = !DILocation(line: 1725, column: 18, scope: !3730)
!3742 = !DILocation(line: 1724, column: 3, scope: !3730)
!3743 = distinct !{!3743, !3733, !3744}
!3744 = !DILocation(line: 1726, column: 29, scope: !3728)
!3745 = !DILocation(line: 1732, column: 20, scope: !3735)
!3746 = !DILocation(line: 1732, column: 7, scope: !3735)
!3747 = !DILocation(line: 1733, column: 30, scope: !3735)
!3748 = !DILocation(line: 1733, column: 28, scope: !3735)
!3749 = distinct !{!3749, !3737, !3750}
!3750 = !DILocation(line: 1734, column: 5, scope: !3714)
!3751 = !DILocation(line: 1737, column: 7, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1737, column: 7)
!3753 = !DILocation(line: 1737, column: 7, scope: !3714)
!3754 = !DILocation(line: 1738, column: 11, scope: !3752)
!3755 = !DILocation(line: 1738, column: 5, scope: !3752)
!3756 = !DILocation(line: 1739, column: 1, scope: !3714)
!3757 = distinct !DISubprogram(name: "finalize_record_size", scope: !3, file: !3, line: 1459, type: !2948, scopeLine: 1460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3758)
!3758 = !{!3759, !3760, !3761, !3762, !3765}
!3759 = !DILocalVariable(name: "rli", arg: 1, scope: !3757, file: !3, line: 1459, type: !2862)
!3760 = !DILocalVariable(name: "unpadded_size", scope: !3757, file: !3, line: 1461, type: !409)
!3761 = !DILocalVariable(name: "unpadded_size_unit", scope: !3757, file: !3, line: 1461, type: !409)
!3762 = !DILocalVariable(name: "unpacked_size", scope: !3763, file: !3, line: 1500, type: !409)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 1499, column: 5)
!3764 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 1496, column: 7)
!3765 = !DILocalVariable(name: "name", scope: !3766, file: !3, line: 1516, type: !409)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 1515, column: 6)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 1514, column: 8)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1511, column: 2)
!3769 = distinct !DILexicalBlock(scope: !3763, file: !3, line: 1510, column: 11)
!3770 = !DILocation(line: 0, scope: !3757)
!3771 = !DILocation(line: 1465, column: 8, scope: !3757)
!3772 = !DILocation(line: 1465, column: 21, scope: !3757)
!3773 = !DILocation(line: 1466, column: 3, scope: !3757)
!3774 = !DILocation(line: 1473, column: 25, scope: !3757)
!3775 = !DILocation(line: 1473, column: 23, scope: !3757)
!3776 = !DILocation(line: 1479, column: 19, scope: !3757)
!3777 = !DILocation(line: 1480, column: 24, scope: !3757)
!3778 = !DILocation(line: 1481, column: 29, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 1481, column: 7)
!3780 = !DILocation(line: 1481, column: 9, scope: !3779)
!3781 = !DILocation(line: 1481, column: 7, scope: !3757)
!3782 = !DILocation(line: 1483, column: 9, scope: !3779)
!3783 = !DILocation(line: 1482, column: 5, scope: !3779)
!3784 = !DILocation(line: 1486, column: 38, scope: !3757)
!3785 = !DILocation(line: 1487, column: 6, scope: !3757)
!3786 = !DILocation(line: 1486, column: 24, scope: !3757)
!3787 = !DILocation(line: 1486, column: 3, scope: !3757)
!3788 = !DILocation(line: 1486, column: 22, scope: !3757)
!3789 = !DILocation(line: 1489, column: 21, scope: !3757)
!3790 = !DILocation(line: 1489, column: 57, scope: !3757)
!3791 = !DILocation(line: 1489, column: 7, scope: !3757)
!3792 = !DILocation(line: 1488, column: 3, scope: !3757)
!3793 = !DILocation(line: 1489, column: 5, scope: !3757)
!3794 = !DILocation(line: 1491, column: 7, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 1491, column: 7)
!3796 = !DILocation(line: 1492, column: 7, scope: !3795)
!3797 = !DILocation(line: 1492, column: 43, scope: !3795)
!3798 = !DILocation(line: 1492, column: 10, scope: !3795)
!3799 = !DILocation(line: 1492, column: 63, scope: !3795)
!3800 = !DILocation(line: 1493, column: 10, scope: !3795)
!3801 = !DILocation(line: 1493, column: 25, scope: !3795)
!3802 = !DILocation(line: 1493, column: 7, scope: !3795)
!3803 = !DILocation(line: 1494, column: 5, scope: !3795)
!3804 = !DILocation(line: 1496, column: 7, scope: !3764)
!3805 = !DILocation(line: 1496, column: 19, scope: !3764)
!3806 = !DILocation(line: 1496, column: 22, scope: !3764)
!3807 = !DILocation(line: 1496, column: 41, scope: !3764)
!3808 = !DILocation(line: 1497, column: 7, scope: !3764)
!3809 = !DILocation(line: 1497, column: 10, scope: !3764)
!3810 = !DILocation(line: 1497, column: 31, scope: !3764)
!3811 = !DILocation(line: 1497, column: 41, scope: !3764)
!3812 = !DILocation(line: 1497, column: 36, scope: !3764)
!3813 = !DILocation(line: 1498, column: 7, scope: !3764)
!3814 = !DILocation(line: 1498, column: 10, scope: !3764)
!3815 = !DILocation(line: 1496, column: 7, scope: !3757)
!3816 = !DILocation(line: 1506, column: 29, scope: !3763)
!3817 = !DILocation(line: 1506, column: 27, scope: !3763)
!3818 = !DILocation(line: 1509, column: 37, scope: !3763)
!3819 = !DILocation(line: 1509, column: 53, scope: !3763)
!3820 = !DILocation(line: 1509, column: 23, scope: !3763)
!3821 = !DILocation(line: 0, scope: !3763)
!3822 = !DILocation(line: 1510, column: 44, scope: !3769)
!3823 = !DILocation(line: 1510, column: 11, scope: !3769)
!3824 = !DILocation(line: 1510, column: 11, scope: !3763)
!3825 = !DILocation(line: 1512, column: 4, scope: !3768)
!3826 = !DILocation(line: 1512, column: 25, scope: !3768)
!3827 = !DILocation(line: 1514, column: 8, scope: !3767)
!3828 = !DILocation(line: 1514, column: 8, scope: !3768)
!3829 = !DILocation(line: 1518, column: 12, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 1518, column: 12)
!3831 = !DILocation(line: 1518, column: 43, scope: !3830)
!3832 = !DILocation(line: 1518, column: 12, scope: !3766)
!3833 = !DILocation(line: 1521, column: 10, scope: !3830)
!3834 = !DILocation(line: 0, scope: !3766)
!3835 = !DILocation(line: 0, scope: !3830)
!3836 = !DILocation(line: 1527, column: 3, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 1523, column: 12)
!3838 = !DILocation(line: 1529, column: 6, scope: !3766)
!3839 = !DILocation(line: 1536, column: 3, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 1532, column: 12)
!3841 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 1531, column: 6)
!3842 = !DILocation(line: 1540, column: 1, scope: !3757)
!3843 = distinct !DISubprogram(name: "finalize_type_size", scope: !3, file: !3, line: 1620, type: !2213, scopeLine: 1621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3844)
!3844 = !{!3845, !3846, !3849, !3852, !3853, !3854, !3855, !3856}
!3845 = !DILocalVariable(name: "type", arg: 1, scope: !3843, file: !3, line: 1620, type: !409)
!3846 = !DILocalVariable(name: "mode_align", scope: !3847, file: !3, line: 1633, type: !7)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 1632, column: 5)
!3848 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1627, column: 7)
!3849 = !DILocalVariable(name: "variant", scope: !3850, file: !3, line: 1680, type: !409)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 1679, column: 5)
!3851 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1677, column: 7)
!3852 = !DILocalVariable(name: "size", scope: !3850, file: !3, line: 1682, type: !409)
!3853 = !DILocalVariable(name: "size_unit", scope: !3850, file: !3, line: 1683, type: !409)
!3854 = !DILocalVariable(name: "align", scope: !3850, file: !3, line: 1684, type: !7)
!3855 = !DILocalVariable(name: "user_align", scope: !3850, file: !3, line: 1685, type: !7)
!3856 = !DILocalVariable(name: "mode", scope: !3850, file: !3, line: 1686, type: !5)
!3857 = !DILocation(line: 0, scope: !3843)
!3858 = !DILocation(line: 1627, column: 7, scope: !3848)
!3859 = !DILocation(line: 1627, column: 24, scope: !3848)
!3860 = !DILocation(line: 1627, column: 35, scope: !3848)
!3861 = !DILocation(line: 1627, column: 38, scope: !3848)
!3862 = !DILocation(line: 1627, column: 55, scope: !3848)
!3863 = !DILocation(line: 1628, column: 7, scope: !3848)
!3864 = !DILocation(line: 1629, column: 8, scope: !3848)
!3865 = !DILocation(line: 1629, column: 25, scope: !3848)
!3866 = !DILocation(line: 1629, column: 40, scope: !3848)
!3867 = !DILocation(line: 1629, column: 60, scope: !3848)
!3868 = !DILocation(line: 1630, column: 8, scope: !3848)
!3869 = !DILocation(line: 1630, column: 28, scope: !3848)
!3870 = !DILocation(line: 1631, column: 8, scope: !3848)
!3871 = !DILocation(line: 1631, column: 28, scope: !3848)
!3872 = !DILocation(line: 1627, column: 7, scope: !3843)
!3873 = !DILocation(line: 1633, column: 29, scope: !3847)
!3874 = !DILocation(line: 0, scope: !3847)
!3875 = !DILocation(line: 1637, column: 25, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 1637, column: 11)
!3877 = !DILocation(line: 1637, column: 22, scope: !3876)
!3878 = !DILocation(line: 1637, column: 11, scope: !3847)
!3879 = !DILocation(line: 1639, column: 22, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 1638, column: 2)
!3881 = !DILocation(line: 1640, column: 27, scope: !3880)
!3882 = !DILocation(line: 1641, column: 2, scope: !3880)
!3883 = !DILocation(line: 1652, column: 7, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1652, column: 7)
!3885 = !DILocation(line: 1652, column: 29, scope: !3884)
!3886 = !DILocation(line: 1652, column: 34, scope: !3884)
!3887 = !DILocation(line: 1652, column: 37, scope: !3884)
!3888 = !DILocation(line: 1652, column: 54, scope: !3884)
!3889 = !DILocation(line: 1652, column: 7, scope: !3843)
!3890 = !DILocation(line: 1657, column: 9, scope: !3884)
!3891 = !DILocation(line: 1657, column: 7, scope: !3884)
!3892 = !DILocation(line: 1656, column: 5, scope: !3884)
!3893 = !DILocation(line: 1661, column: 7, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1661, column: 7)
!3895 = !DILocation(line: 1661, column: 24, scope: !3894)
!3896 = !DILocation(line: 1661, column: 7, scope: !3843)
!3897 = !DILocation(line: 1663, column: 40, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 1662, column: 5)
!3899 = !DILocation(line: 1664, column: 26, scope: !3898)
!3900 = !DILocation(line: 1663, column: 26, scope: !3898)
!3901 = !DILocation(line: 1663, column: 24, scope: !3898)
!3902 = !DILocation(line: 1665, column: 45, scope: !3898)
!3903 = !DILocation(line: 1665, column: 61, scope: !3898)
!3904 = !DILocation(line: 1666, column: 6, scope: !3898)
!3905 = !DILocation(line: 1665, column: 31, scope: !3898)
!3906 = !DILocation(line: 1665, column: 29, scope: !3898)
!3907 = !DILocation(line: 1670, column: 7, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1670, column: 7)
!3909 = !DILocation(line: 1667, column: 5, scope: !3898)
!3910 = !DILocation(line: 1670, column: 24, scope: !3908)
!3911 = !DILocation(line: 1670, column: 29, scope: !3908)
!3912 = !DILocation(line: 1670, column: 32, scope: !3908)
!3913 = !DILocation(line: 1670, column: 61, scope: !3908)
!3914 = !DILocation(line: 1670, column: 7, scope: !3843)
!3915 = !DILocation(line: 1671, column: 24, scope: !3908)
!3916 = !DILocation(line: 1671, column: 22, scope: !3908)
!3917 = !DILocation(line: 1672, column: 7, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1672, column: 7)
!3919 = !DILocation(line: 1671, column: 5, scope: !3908)
!3920 = !DILocation(line: 1672, column: 29, scope: !3918)
!3921 = !DILocation(line: 1673, column: 7, scope: !3918)
!3922 = !DILocation(line: 1673, column: 10, scope: !3918)
!3923 = !DILocation(line: 1673, column: 44, scope: !3918)
!3924 = !DILocation(line: 1672, column: 7, scope: !3843)
!3925 = !DILocation(line: 1674, column: 29, scope: !3918)
!3926 = !DILocation(line: 1674, column: 27, scope: !3918)
!3927 = !DILocation(line: 1674, column: 5, scope: !3918)
!3928 = !DILocation(line: 1677, column: 7, scope: !3851)
!3929 = !DILocation(line: 1678, column: 7, scope: !3851)
!3930 = !DILocation(line: 1678, column: 18, scope: !3851)
!3931 = !DILocation(line: 1678, column: 15, scope: !3851)
!3932 = !DILocation(line: 1677, column: 7, scope: !3843)
!3933 = !DILocation(line: 1682, column: 19, scope: !3850)
!3934 = !DILocation(line: 1684, column: 28, scope: !3850)
!3935 = !DILocation(line: 0, scope: !3850)
!3936 = !DILocation(line: 1685, column: 33, scope: !3850)
!3937 = !DILocation(line: 1686, column: 32, scope: !3850)
!3938 = !DILocation(line: 1689, column: 22, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 1689, column: 7)
!3940 = !DILocation(line: 0, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 1692, column: 2)
!3942 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 1689, column: 7)
!3943 = !DILocation(line: 1689, column: 12, scope: !3939)
!3944 = !DILocation(line: 0, scope: !3939)
!3945 = !DILocation(line: 1690, column: 13, scope: !3942)
!3946 = !DILocation(line: 1689, column: 7, scope: !3939)
!3947 = !DILocation(line: 1693, column: 4, scope: !3941)
!3948 = !DILocation(line: 1693, column: 24, scope: !3941)
!3949 = !DILocation(line: 1694, column: 4, scope: !3941)
!3950 = !DILocation(line: 1694, column: 29, scope: !3941)
!3951 = !DILocation(line: 1695, column: 4, scope: !3941)
!3952 = !DILocation(line: 1695, column: 25, scope: !3941)
!3953 = !DILocation(line: 1696, column: 4, scope: !3941)
!3954 = !DILocation(line: 1696, column: 30, scope: !3941)
!3955 = !DILocation(line: 1697, column: 4, scope: !3941)
!3956 = !DILocation(line: 1691, column: 15, scope: !3942)
!3957 = !DILocation(line: 1689, column: 7, scope: !3942)
!3958 = distinct !{!3958, !3946, !3959}
!3959 = !DILocation(line: 1698, column: 2, scope: !3939)
!3960 = !DILocation(line: 1700, column: 1, scope: !3843)
!3961 = distinct !DISubprogram(name: "finish_builtin_struct", scope: !3, file: !3, line: 1749, type: !3962, scopeLine: 1751, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !409, !407, !409, !409}
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970}
!3965 = !DILocalVariable(name: "type", arg: 1, scope: !3961, file: !3, line: 1749, type: !409)
!3966 = !DILocalVariable(name: "name", arg: 2, scope: !3961, file: !3, line: 1749, type: !407)
!3967 = !DILocalVariable(name: "fields", arg: 3, scope: !3961, file: !3, line: 1749, type: !409)
!3968 = !DILocalVariable(name: "align_type", arg: 4, scope: !3961, file: !3, line: 1750, type: !409)
!3969 = !DILocalVariable(name: "tail", scope: !3961, file: !3, line: 1752, type: !409)
!3970 = !DILocalVariable(name: "next", scope: !3961, file: !3, line: 1752, type: !409)
!3971 = !DILocation(line: 0, scope: !3961)
!3972 = !DILocation(line: 1754, column: 8, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 1754, column: 3)
!3974 = !DILocation(line: 0, scope: !3973)
!3975 = !DILocation(line: 1754, column: 3, scope: !3973)
!3976 = !DILocation(line: 1756, column: 7, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 1755, column: 5)
!3978 = distinct !DILexicalBlock(scope: !3973, file: !3, line: 1754, column: 3)
!3979 = !DILocation(line: 1756, column: 35, scope: !3977)
!3980 = !DILocation(line: 1757, column: 14, scope: !3977)
!3981 = !DILocation(line: 1758, column: 27, scope: !3977)
!3982 = !DILocation(line: 1754, column: 3, scope: !3978)
!3983 = distinct !{!3983, !3975, !3984}
!3984 = !DILocation(line: 1759, column: 5, scope: !3973)
!3985 = !DILocation(line: 1760, column: 3, scope: !3961)
!3986 = !DILocation(line: 1760, column: 22, scope: !3961)
!3987 = !DILocation(line: 1762, column: 7, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 1762, column: 7)
!3989 = !DILocation(line: 1762, column: 7, scope: !3961)
!3990 = !DILocation(line: 1764, column: 27, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1763, column: 5)
!3992 = !DILocation(line: 1764, column: 7, scope: !3991)
!3993 = !DILocation(line: 1764, column: 25, scope: !3991)
!3994 = !DILocation(line: 1765, column: 32, scope: !3991)
!3995 = !DILocation(line: 1765, column: 7, scope: !3991)
!3996 = !DILocation(line: 1765, column: 30, scope: !3991)
!3997 = !DILocation(line: 1766, column: 5, scope: !3991)
!3998 = !DILocation(line: 1768, column: 3, scope: !3961)
!3999 = !DILocation(line: 1772, column: 22, scope: !3961)
!4000 = !DILocation(line: 1772, column: 3, scope: !3961)
!4001 = !DILocation(line: 1772, column: 20, scope: !3961)
!4002 = !DILocation(line: 1775, column: 27, scope: !3961)
!4003 = !DILocation(line: 1775, column: 3, scope: !3961)
!4004 = !DILocation(line: 1775, column: 25, scope: !3961)
!4005 = !DILocation(line: 1776, column: 3, scope: !3961)
!4006 = !DILocation(line: 1777, column: 1, scope: !3961)
!4007 = distinct !DISubprogram(name: "layout_type", scope: !3, file: !3, line: 1790, type: !2213, scopeLine: 1791, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4008)
!4008 = !{!4009, !4010, !4013, !4014, !4017, !4018, !4020, !4024, !4026, !4027, !4030, !4031, !4032, !4033, !4035}
!4009 = !DILocalVariable(name: "type", arg: 1, scope: !4007, file: !3, line: 1790, type: !409)
!4010 = !DILocalVariable(name: "nunits", scope: !4011, file: !3, line: 1852, type: !402)
!4011 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 1851, column: 7)
!4012 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1802, column: 5)
!4013 = !DILocalVariable(name: "innertype", scope: !4011, file: !3, line: 1853, type: !409)
!4014 = !DILocalVariable(name: "innermode", scope: !4015, file: !3, line: 1860, type: !5)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 1859, column: 4)
!4016 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 1858, column: 6)
!4017 = !DILocalVariable(name: "mode", scope: !4015, file: !3, line: 1861, type: !5)
!4018 = !DILocalVariable(name: "mode", scope: !4019, file: !3, line: 1941, type: !5)
!4019 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 1940, column: 7)
!4020 = !DILocalVariable(name: "as", scope: !4021, file: !3, line: 1944, type: !4023)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 1943, column: 4)
!4022 = distinct !DILexicalBlock(scope: !4019, file: !3, line: 1942, column: 6)
!4023 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_space_t", file: !410, line: 73, baseType: !401)
!4024 = !DILocalVariable(name: "index", scope: !4025, file: !3, line: 1957, type: !409)
!4025 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 1956, column: 7)
!4026 = !DILocalVariable(name: "element", scope: !4025, file: !3, line: 1958, type: !409)
!4027 = !DILocalVariable(name: "ub", scope: !4028, file: !3, line: 1966, type: !409)
!4028 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 1965, column: 4)
!4029 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 1963, column: 6)
!4030 = !DILocalVariable(name: "lb", scope: !4028, file: !3, line: 1967, type: !409)
!4031 = !DILocalVariable(name: "element_size", scope: !4028, file: !3, line: 1968, type: !409)
!4032 = !DILocalVariable(name: "length", scope: !4028, file: !3, line: 1969, type: !409)
!4033 = !DILocalVariable(name: "field", scope: !4034, file: !3, line: 2059, type: !409)
!4034 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 2058, column: 7)
!4035 = !DILocalVariable(name: "rli", scope: !4034, file: !3, line: 2060, type: !2862)
!4036 = !DILocation(line: 0, scope: !4007)
!4037 = !DILocation(line: 1792, column: 3, scope: !4007)
!4038 = !DILocation(line: 1794, column: 15, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1794, column: 7)
!4040 = !DILocation(line: 1794, column: 12, scope: !4039)
!4041 = !DILocation(line: 1794, column: 7, scope: !4007)
!4042 = !DILocation(line: 1798, column: 7, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1798, column: 7)
!4044 = !DILocation(line: 1798, column: 7, scope: !4007)
!4045 = !DILocation(line: 1801, column: 11, scope: !4007)
!4046 = !DILocation(line: 1801, column: 3, scope: !4007)
!4047 = !DILocation(line: 1806, column: 7, scope: !4012)
!4048 = !DILocation(line: 1809, column: 11, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 1809, column: 11)
!4050 = !DILocation(line: 1809, column: 33, scope: !4049)
!4051 = !DILocation(line: 1809, column: 11, scope: !4012)
!4052 = !DILocation(line: 1810, column: 24, scope: !4049)
!4053 = !DILocation(line: 1810, column: 2, scope: !4049)
!4054 = !DILocation(line: 1816, column: 11, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 1816, column: 11)
!4056 = !DILocation(line: 1816, column: 45, scope: !4055)
!4057 = !DILocation(line: 1817, column: 4, scope: !4055)
!4058 = !DILocation(line: 1817, column: 7, scope: !4055)
!4059 = !DILocation(line: 1817, column: 48, scope: !4055)
!4060 = !DILocation(line: 1816, column: 11, scope: !4012)
!4061 = !DILocation(line: 1818, column: 23, scope: !4055)
!4062 = !DILocation(line: 1818, column: 2, scope: !4055)
!4063 = !DILocation(line: 1820, column: 7, scope: !4012)
!4064 = !DILocation(line: 1822, column: 26, scope: !4012)
!4065 = !DILocation(line: 1822, column: 24, scope: !4012)
!4066 = !DILocation(line: 1823, column: 31, scope: !4012)
!4067 = !DILocation(line: 1823, column: 7, scope: !4012)
!4068 = !DILocation(line: 1823, column: 29, scope: !4012)
!4069 = !DILocation(line: 1824, column: 7, scope: !4012)
!4070 = !DILocation(line: 1827, column: 7, scope: !4012)
!4071 = !DILocation(line: 1829, column: 26, scope: !4012)
!4072 = !DILocation(line: 1829, column: 24, scope: !4012)
!4073 = !DILocation(line: 1830, column: 31, scope: !4012)
!4074 = !DILocation(line: 1830, column: 7, scope: !4012)
!4075 = !DILocation(line: 1830, column: 29, scope: !4012)
!4076 = !DILocation(line: 1831, column: 7, scope: !4012)
!4077 = !DILocation(line: 1835, column: 25, scope: !4012)
!4078 = !DILocation(line: 1835, column: 23, scope: !4012)
!4079 = !DILocation(line: 1836, column: 30, scope: !4012)
!4080 = !DILocation(line: 1836, column: 6, scope: !4012)
!4081 = !DILocation(line: 1836, column: 28, scope: !4012)
!4082 = !DILocation(line: 1837, column: 6, scope: !4012)
!4083 = !DILocation(line: 1840, column: 30, scope: !4012)
!4084 = !DILocation(line: 1840, column: 28, scope: !4012)
!4085 = !DILocation(line: 1841, column: 7, scope: !4012)
!4086 = !DILocation(line: 1846, column: 26, scope: !4012)
!4087 = !DILocation(line: 1846, column: 24, scope: !4012)
!4088 = !DILocation(line: 1847, column: 31, scope: !4012)
!4089 = !DILocation(line: 1847, column: 7, scope: !4012)
!4090 = !DILocation(line: 1847, column: 29, scope: !4012)
!4091 = !DILocation(line: 1848, column: 7, scope: !4012)
!4092 = !DILocation(line: 1852, column: 15, scope: !4011)
!4093 = !DILocation(line: 0, scope: !4011)
!4094 = !DILocation(line: 1853, column: 19, scope: !4011)
!4095 = !DILocation(line: 1855, column: 2, scope: !4011)
!4096 = !{i32 0, i32 33}
!4097 = !DILocation(line: 1858, column: 6, scope: !4016)
!4098 = !DILocation(line: 1858, column: 23, scope: !4016)
!4099 = !DILocation(line: 1858, column: 6, scope: !4011)
!4100 = !DILocation(line: 1860, column: 36, scope: !4015)
!4101 = !DILocation(line: 0, scope: !4015)
!4102 = !DILocation(line: 1864, column: 10, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1864, column: 10)
!4104 = !DILocation(line: 1864, column: 10, scope: !4015)
!4105 = !DILocation(line: 1866, column: 15, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 1866, column: 15)
!4107 = !DILocation(line: 1866, column: 15, scope: !4103)
!4108 = !DILocation(line: 1868, column: 15, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 1868, column: 15)
!4110 = !DILocation(line: 1868, column: 15, scope: !4106)
!4111 = !DILocation(line: 1870, column: 15, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 1870, column: 15)
!4113 = !DILocation(line: 1870, column: 15, scope: !4109)
!4114 = !DILocation(line: 1872, column: 15, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 1872, column: 15)
!4116 = !DILocation(line: 0, scope: !4103)
!4117 = !DILocation(line: 1879, column: 6, scope: !4015)
!4118 = !DILocation(line: 1879, column: 6, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1879, column: 6)
!4120 = !DILocation(line: 1880, column: 12, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 1880, column: 12)
!4122 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 1879, column: 6)
!4123 = !DILocation(line: 1880, column: 35, scope: !4121)
!4124 = !DILocation(line: 1881, column: 7, scope: !4121)
!4125 = !DILocation(line: 1881, column: 10, scope: !4121)
!4126 = !DILocation(line: 1881, column: 32, scope: !4121)
!4127 = !DILocation(line: 1880, column: 12, scope: !4122)
!4128 = !DILocation(line: 1879, column: 39, scope: !4122)
!4129 = !DILocation(line: 1879, column: 6, scope: !4122)
!4130 = distinct !{!4130, !4118, !4131}
!4131 = !DILocation(line: 1882, column: 10, scope: !4119)
!4132 = !DILocation(line: 1886, column: 10, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1885, column: 10)
!4134 = !DILocation(line: 1886, column: 13, scope: !4133)
!4135 = !DILocation(line: 1886, column: 40, scope: !4133)
!4136 = !DILocation(line: 1885, column: 10, scope: !4015)
!4137 = !DILocation(line: 1887, column: 39, scope: !4133)
!4138 = !DILocation(line: 1887, column: 37, scope: !4133)
!4139 = !DILocation(line: 1887, column: 15, scope: !4133)
!4140 = !DILocation(line: 1887, column: 8, scope: !4133)
!4141 = !DILocation(line: 1890, column: 15, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1890, column: 10)
!4143 = !DILocation(line: 1890, column: 27, scope: !4142)
!4144 = !DILocation(line: 1891, column: 4, scope: !4142)
!4145 = !DILocation(line: 1891, column: 26, scope: !4142)
!4146 = !DILocation(line: 1892, column: 4, scope: !4142)
!4147 = !DILocation(line: 1892, column: 8, scope: !4142)
!4148 = !DILocation(line: 1890, column: 10, scope: !4015)
!4149 = !DILocation(line: 1893, column: 8, scope: !4142)
!4150 = !DILocation(line: 1895, column: 8, scope: !4142)
!4151 = !DILocation(line: 1898, column: 27, scope: !4011)
!4152 = !DILocation(line: 1898, column: 25, scope: !4011)
!4153 = !DILocation(line: 1899, column: 32, scope: !4011)
!4154 = !DILocation(line: 1899, column: 30, scope: !4011)
!4155 = !DILocation(line: 1901, column: 15, scope: !4011)
!4156 = !DILocation(line: 1902, column: 15, scope: !4011)
!4157 = !DILocation(line: 1900, column: 26, scope: !4011)
!4158 = !DILocation(line: 1900, column: 2, scope: !4011)
!4159 = !DILocation(line: 1900, column: 24, scope: !4011)
!4160 = !DILocation(line: 1903, column: 49, scope: !4011)
!4161 = !DILocation(line: 1904, column: 10, scope: !4011)
!4162 = !DILocation(line: 1903, column: 21, scope: !4011)
!4163 = !DILocation(line: 1903, column: 19, scope: !4011)
!4164 = !DILocation(line: 1908, column: 22, scope: !4011)
!4165 = !DILocation(line: 1908, column: 2, scope: !4011)
!4166 = !DILocation(line: 1908, column: 20, scope: !4011)
!4167 = !DILocation(line: 1914, column: 7, scope: !4012)
!4168 = !DILocation(line: 1914, column: 25, scope: !4012)
!4169 = !DILocation(line: 1915, column: 30, scope: !4012)
!4170 = !DILocation(line: 1916, column: 7, scope: !4012)
!4171 = !DILocation(line: 1917, column: 7, scope: !4012)
!4172 = !DILocation(line: 1920, column: 26, scope: !4012)
!4173 = !DILocation(line: 1920, column: 24, scope: !4012)
!4174 = !DILocation(line: 1921, column: 31, scope: !4012)
!4175 = !DILocation(line: 1921, column: 7, scope: !4012)
!4176 = !DILocation(line: 1921, column: 29, scope: !4012)
!4177 = !DILocation(line: 1924, column: 7, scope: !4012)
!4178 = !DILocation(line: 1925, column: 29, scope: !4012)
!4179 = !DILocation(line: 1926, column: 7, scope: !4012)
!4180 = !DILocation(line: 1933, column: 7, scope: !4012)
!4181 = !DILocation(line: 1934, column: 26, scope: !4012)
!4182 = !DILocation(line: 1934, column: 24, scope: !4012)
!4183 = !DILocation(line: 1935, column: 31, scope: !4012)
!4184 = !DILocation(line: 1935, column: 7, scope: !4012)
!4185 = !DILocation(line: 1935, column: 29, scope: !4012)
!4186 = !DILocation(line: 1936, column: 7, scope: !4012)
!4187 = !DILocation(line: 1941, column: 27, scope: !4019)
!4188 = !DILocation(line: 1942, column: 6, scope: !4022)
!4189 = !DILocation(line: 0, scope: !4019)
!4190 = !DILocation(line: 1942, column: 23, scope: !4022)
!4191 = !DILocation(line: 1942, column: 44, scope: !4022)
!4192 = !DILocation(line: 1942, column: 41, scope: !4022)
!4193 = !DILocation(line: 1944, column: 24, scope: !4021)
!4194 = !DILocation(line: 0, scope: !4021)
!4195 = !DILocation(line: 1945, column: 32, scope: !4021)
!4196 = !DILocation(line: 1945, column: 13, scope: !4021)
!4197 = !DILocation(line: 1946, column: 4, scope: !4021)
!4198 = !DILocation(line: 1948, column: 21, scope: !4019)
!4199 = !DILocation(line: 1948, column: 19, scope: !4019)
!4200 = !DILocation(line: 1949, column: 26, scope: !4019)
!4201 = !DILocation(line: 1949, column: 2, scope: !4019)
!4202 = !DILocation(line: 1949, column: 24, scope: !4019)
!4203 = !DILocation(line: 1950, column: 23, scope: !4019)
!4204 = !DILocation(line: 1951, column: 26, scope: !4019)
!4205 = !DILocation(line: 1951, column: 2, scope: !4019)
!4206 = !DILocation(line: 1951, column: 24, scope: !4019)
!4207 = !DILocation(line: 1953, column: 7, scope: !4012)
!4208 = !DILocation(line: 1957, column: 15, scope: !4025)
!4209 = !DILocation(line: 0, scope: !4025)
!4210 = !DILocation(line: 1958, column: 17, scope: !4025)
!4211 = !DILocation(line: 1960, column: 2, scope: !4025)
!4212 = !DILocation(line: 1963, column: 6, scope: !4029)
!4213 = !DILocation(line: 1963, column: 12, scope: !4029)
!4214 = !DILocation(line: 1963, column: 15, scope: !4029)
!4215 = !DILocation(line: 1963, column: 38, scope: !4029)
!4216 = !DILocation(line: 1963, column: 41, scope: !4029)
!4217 = !DILocation(line: 1964, column: 6, scope: !4029)
!4218 = !DILocation(line: 1964, column: 9, scope: !4029)
!4219 = !DILocation(line: 1963, column: 6, scope: !4025)
!4220 = !DILocation(line: 0, scope: !4028)
!4221 = !DILocation(line: 1973, column: 10, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 1973, column: 10)
!4223 = !DILocation(line: 1973, column: 10, scope: !4028)
!4224 = !DILocation(line: 1974, column: 17, scope: !4222)
!4225 = !DILocation(line: 1974, column: 8, scope: !4222)
!4226 = !DILocation(line: 1980, column: 5, scope: !4222)
!4227 = !DILocation(line: 0, scope: !4222)
!4228 = !DILocation(line: 1987, column: 25, scope: !4028)
!4229 = !DILocation(line: 1987, column: 23, scope: !4028)
!4230 = !DILocation(line: 1995, column: 10, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 1995, column: 10)
!4232 = !DILocation(line: 1995, column: 10, scope: !4028)
!4233 = !DILocation(line: 1997, column: 5, scope: !4231)
!4234 = !DILocation(line: 1996, column: 8, scope: !4231)
!4235 = !DILocation(line: 1997, column: 3, scope: !4231)
!4236 = !DILocation(line: 2007, column: 22, scope: !4025)
!4237 = !DILocation(line: 2007, column: 2, scope: !4025)
!4238 = !DILocation(line: 2007, column: 20, scope: !4025)
!4239 = !DILocation(line: 2009, column: 7, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 2009, column: 6)
!4241 = !DILocation(line: 2009, column: 6, scope: !4025)
!4242 = !DILocation(line: 2013, column: 4, scope: !4240)
!4243 = !DILocation(line: 2014, column: 27, scope: !4025)
!4244 = !DILocation(line: 2014, column: 25, scope: !4025)
!4245 = !DILocation(line: 2015, column: 2, scope: !4025)
!4246 = !DILocation(line: 2016, column: 6, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 2016, column: 6)
!4248 = !DILocation(line: 2016, column: 23, scope: !4247)
!4249 = !DILocation(line: 2022, column: 6, scope: !4247)
!4250 = !DILocation(line: 2022, column: 10, scope: !4247)
!4251 = !DILocation(line: 2022, column: 39, scope: !4247)
!4252 = !DILocation(line: 2023, column: 3, scope: !4247)
!4253 = !DILocation(line: 0, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 2026, column: 10)
!4255 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 2024, column: 4)
!4256 = !DILocation(line: 2027, column: 7, scope: !4254)
!4257 = !DILocation(line: 2023, column: 6, scope: !4247)
!4258 = !DILocation(line: 2016, column: 6, scope: !4025)
!4259 = !DILocation(line: 2026, column: 28, scope: !4254)
!4260 = !DILocation(line: 2026, column: 10, scope: !4254)
!4261 = !DILocation(line: 2026, column: 10, scope: !4255)
!4262 = !DILocation(line: 2028, column: 8, scope: !4254)
!4263 = !DILocation(line: 2030, column: 8, scope: !4254)
!4264 = !DILocation(line: 2033, column: 10, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 2033, column: 10)
!4266 = !DILocation(line: 2040, column: 4, scope: !4255)
!4267 = !DILocation(line: 2043, column: 6, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 2043, column: 6)
!4269 = !DILocation(line: 2044, column: 6, scope: !4268)
!4270 = !DILocation(line: 2044, column: 9, scope: !4268)
!4271 = !DILocation(line: 2044, column: 46, scope: !4268)
!4272 = !DILocation(line: 2047, column: 6, scope: !4268)
!4273 = !DILocation(line: 2047, column: 10, scope: !4268)
!4274 = !DILocation(line: 2048, column: 6, scope: !4268)
!4275 = !DILocation(line: 2048, column: 10, scope: !4268)
!4276 = !DILocation(line: 2049, column: 6, scope: !4268)
!4277 = !DILocation(line: 2049, column: 27, scope: !4268)
!4278 = !DILocation(line: 2050, column: 8, scope: !4268)
!4279 = !DILocation(line: 2049, column: 9, scope: !4268)
!4280 = !DILocation(line: 2050, column: 35, scope: !4268)
!4281 = !DILocation(line: 2043, column: 6, scope: !4025)
!4282 = !DILocation(line: 2051, column: 4, scope: !4268)
!4283 = !DILocation(line: 2063, column: 8, scope: !4034)
!4284 = !DILocation(line: 0, scope: !4034)
!4285 = !DILocation(line: 2068, column: 6, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 2068, column: 6)
!4287 = !DILocation(line: 2068, column: 23, scope: !4286)
!4288 = !DILocation(line: 2068, column: 6, scope: !4034)
!4289 = !DILocation(line: 2069, column: 35, scope: !4286)
!4290 = !DILocation(line: 2069, column: 25, scope: !4286)
!4291 = !DILocation(line: 2069, column: 23, scope: !4286)
!4292 = !DILocation(line: 2069, column: 4, scope: !4286)
!4293 = !DILocation(line: 2072, column: 15, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 2072, column: 2)
!4295 = !DILocation(line: 2072, column: 7, scope: !4294)
!4296 = !DILocation(line: 0, scope: !4294)
!4297 = !DILocation(line: 2072, column: 2, scope: !4294)
!4298 = !DILocation(line: 2073, column: 4, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 2072, column: 2)
!4300 = !DILocation(line: 2072, column: 50, scope: !4299)
!4301 = !DILocation(line: 2072, column: 2, scope: !4299)
!4302 = distinct !{!4302, !4297, !4303}
!4303 = !DILocation(line: 2073, column: 27, scope: !4294)
!4304 = !DILocation(line: 2075, column: 6, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 2075, column: 6)
!4306 = !DILocation(line: 2075, column: 23, scope: !4305)
!4307 = !DILocation(line: 2075, column: 6, scope: !4034)
!4308 = !DILocation(line: 2076, column: 35, scope: !4305)
!4309 = !DILocation(line: 2076, column: 25, scope: !4305)
!4310 = !DILocation(line: 2076, column: 23, scope: !4305)
!4311 = !DILocation(line: 2076, column: 4, scope: !4305)
!4312 = !DILocation(line: 2079, column: 2, scope: !4034)
!4313 = !DILocation(line: 2081, column: 7, scope: !4012)
!4314 = !DILocation(line: 2084, column: 7, scope: !4012)
!4315 = !DILocation(line: 2085, column: 5, scope: !4012)
!4316 = !DILocation(line: 2090, column: 7, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 2090, column: 7)
!4318 = !DILocation(line: 2090, column: 24, scope: !4317)
!4319 = !DILocation(line: 2091, column: 7, scope: !4317)
!4320 = !DILocation(line: 2091, column: 27, scope: !4317)
!4321 = !DILocation(line: 2092, column: 7, scope: !4317)
!4322 = !DILocation(line: 2092, column: 27, scope: !4317)
!4323 = !DILocation(line: 2090, column: 7, scope: !4007)
!4324 = !DILocation(line: 2093, column: 5, scope: !4317)
!4325 = !DILocation(line: 2097, column: 7, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 2097, column: 7)
!4327 = !DILocation(line: 2097, column: 7, scope: !4007)
!4328 = !DILocation(line: 2098, column: 5, scope: !4326)
!4329 = !DILocation(line: 2099, column: 1, scope: !4007)
!4330 = distinct !DISubprogram(name: "make_signed_type", scope: !3, file: !3, line: 2143, type: !4331, scopeLine: 2144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4333)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!409, !402}
!4333 = !{!4334, !4335}
!4334 = !DILocalVariable(name: "precision", arg: 1, scope: !4330, file: !3, line: 2143, type: !402)
!4335 = !DILocalVariable(name: "type", scope: !4330, file: !3, line: 2145, type: !409)
!4336 = !DILocation(line: 0, scope: !4330)
!4337 = !DILocation(line: 2145, column: 15, scope: !4330)
!4338 = !DILocation(line: 2147, column: 3, scope: !4330)
!4339 = !DILocation(line: 2147, column: 25, scope: !4330)
!4340 = !DILocation(line: 2149, column: 3, scope: !4330)
!4341 = !DILocation(line: 2150, column: 3, scope: !4330)
!4342 = distinct !DISubprogram(name: "fixup_signed_type", scope: !3, file: !3, line: 2389, type: !2213, scopeLine: 2390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4343)
!4343 = !{!4344, !4345}
!4344 = !DILocalVariable(name: "type", arg: 1, scope: !4342, file: !3, line: 2389, type: !409)
!4345 = !DILocalVariable(name: "precision", scope: !4342, file: !3, line: 2391, type: !402)
!4346 = !DILocation(line: 0, scope: !4342)
!4347 = !DILocation(line: 2391, column: 19, scope: !4342)
!4348 = !DILocation(line: 2396, column: 7, scope: !4342)
!4349 = !DILocation(line: 2399, column: 3, scope: !4342)
!4350 = !DILocation(line: 2403, column: 3, scope: !4342)
!4351 = !DILocation(line: 2404, column: 1, scope: !4342)
!4352 = distinct !DISubprogram(name: "make_unsigned_type", scope: !3, file: !3, line: 2156, type: !4331, scopeLine: 2157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4353)
!4353 = !{!4354, !4355}
!4354 = !DILocalVariable(name: "precision", arg: 1, scope: !4352, file: !3, line: 2156, type: !402)
!4355 = !DILocalVariable(name: "type", scope: !4352, file: !3, line: 2158, type: !409)
!4356 = !DILocation(line: 0, scope: !4352)
!4357 = !DILocation(line: 2158, column: 15, scope: !4352)
!4358 = !DILocation(line: 2160, column: 3, scope: !4352)
!4359 = !DILocation(line: 2160, column: 25, scope: !4352)
!4360 = !DILocation(line: 2162, column: 3, scope: !4352)
!4361 = !DILocation(line: 2163, column: 3, scope: !4352)
!4362 = distinct !DISubprogram(name: "fixup_unsigned_type", scope: !3, file: !3, line: 2411, type: !2213, scopeLine: 2412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4363)
!4363 = !{!4364, !4365}
!4364 = !DILocalVariable(name: "type", arg: 1, scope: !4362, file: !3, line: 2411, type: !409)
!4365 = !DILocalVariable(name: "precision", scope: !4362, file: !3, line: 2413, type: !402)
!4366 = !DILocation(line: 0, scope: !4362)
!4367 = !DILocation(line: 2413, column: 19, scope: !4362)
!4368 = !DILocation(line: 2418, column: 7, scope: !4362)
!4369 = !DILocation(line: 2421, column: 3, scope: !4362)
!4370 = !DILocation(line: 2421, column: 24, scope: !4362)
!4371 = !DILocation(line: 2423, column: 3, scope: !4362)
!4372 = !DILocation(line: 2427, column: 3, scope: !4362)
!4373 = !DILocation(line: 2428, column: 1, scope: !4362)
!4374 = distinct !DISubprogram(name: "make_fract_type", scope: !3, file: !3, line: 2170, type: !4375, scopeLine: 2171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4377)
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!409, !402, !402, !402}
!4377 = !{!4378, !4379, !4380, !4381}
!4378 = !DILocalVariable(name: "precision", arg: 1, scope: !4374, file: !3, line: 2170, type: !402)
!4379 = !DILocalVariable(name: "unsignedp", arg: 2, scope: !4374, file: !3, line: 2170, type: !402)
!4380 = !DILocalVariable(name: "satp", arg: 3, scope: !4374, file: !3, line: 2170, type: !402)
!4381 = !DILocalVariable(name: "type", scope: !4374, file: !3, line: 2172, type: !409)
!4382 = !DILocation(line: 0, scope: !4374)
!4383 = !DILocation(line: 2172, column: 15, scope: !4374)
!4384 = !DILocation(line: 2174, column: 3, scope: !4374)
!4385 = !DILocation(line: 2174, column: 25, scope: !4374)
!4386 = !DILocation(line: 2176, column: 7, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 2176, column: 7)
!4388 = !DILocation(line: 2176, column: 7, scope: !4374)
!4389 = !DILocation(line: 2177, column: 5, scope: !4387)
!4390 = !DILocation(line: 2177, column: 28, scope: !4387)
!4391 = !DILocation(line: 2180, column: 7, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 2180, column: 7)
!4393 = !DILocation(line: 2180, column: 7, scope: !4374)
!4394 = !DILocation(line: 2182, column: 7, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 2181, column: 5)
!4396 = !DILocation(line: 2182, column: 28, scope: !4395)
!4397 = !DILocation(line: 2183, column: 7, scope: !4395)
!4398 = !DILocation(line: 2184, column: 5, scope: !4395)
!4399 = !DILocation(line: 2186, column: 5, scope: !4392)
!4400 = !DILocation(line: 0, scope: !4392)
!4401 = !DILocation(line: 2187, column: 3, scope: !4374)
!4402 = !DILocation(line: 2189, column: 3, scope: !4374)
!4403 = distinct !DISubprogram(name: "make_accum_type", scope: !3, file: !3, line: 2196, type: !4375, scopeLine: 2197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4404)
!4404 = !{!4405, !4406, !4407, !4408}
!4405 = !DILocalVariable(name: "precision", arg: 1, scope: !4403, file: !3, line: 2196, type: !402)
!4406 = !DILocalVariable(name: "unsignedp", arg: 2, scope: !4403, file: !3, line: 2196, type: !402)
!4407 = !DILocalVariable(name: "satp", arg: 3, scope: !4403, file: !3, line: 2196, type: !402)
!4408 = !DILocalVariable(name: "type", scope: !4403, file: !3, line: 2198, type: !409)
!4409 = !DILocation(line: 0, scope: !4403)
!4410 = !DILocation(line: 2198, column: 15, scope: !4403)
!4411 = !DILocation(line: 2200, column: 3, scope: !4403)
!4412 = !DILocation(line: 2200, column: 25, scope: !4403)
!4413 = !DILocation(line: 2202, column: 7, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 2202, column: 7)
!4415 = !DILocation(line: 2202, column: 7, scope: !4403)
!4416 = !DILocation(line: 2203, column: 5, scope: !4414)
!4417 = !DILocation(line: 2203, column: 28, scope: !4414)
!4418 = !DILocation(line: 2206, column: 7, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 2206, column: 7)
!4420 = !DILocation(line: 2206, column: 7, scope: !4403)
!4421 = !DILocation(line: 2208, column: 7, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 2207, column: 5)
!4423 = !DILocation(line: 2208, column: 28, scope: !4422)
!4424 = !DILocation(line: 2209, column: 7, scope: !4422)
!4425 = !DILocation(line: 2210, column: 5, scope: !4422)
!4426 = !DILocation(line: 2212, column: 5, scope: !4419)
!4427 = !DILocation(line: 0, scope: !4419)
!4428 = !DILocation(line: 2213, column: 3, scope: !4403)
!4429 = !DILocation(line: 2215, column: 3, scope: !4403)
!4430 = distinct !DISubprogram(name: "initialize_sizetypes", scope: !3, file: !3, line: 2222, type: !4431, scopeLine: 2223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !401}
!4433 = !{!4434, !4435, !4436}
!4434 = !DILocalVariable(name: "signed_p", arg: 1, scope: !4430, file: !3, line: 2222, type: !401)
!4435 = !DILocalVariable(name: "t", scope: !4430, file: !3, line: 2224, type: !409)
!4436 = !DILocalVariable(name: "precision", scope: !4430, file: !3, line: 2225, type: !402)
!4437 = !DILocation(line: 0, scope: !4430)
!4438 = !DILocation(line: 2224, column: 12, scope: !4430)
!4439 = !DILocation(line: 2225, column: 19, scope: !4430)
!4440 = !DILocation(line: 2227, column: 3, scope: !4430)
!4441 = !DILocation(line: 2228, column: 20, scope: !4430)
!4442 = !DILocation(line: 2228, column: 3, scope: !4430)
!4443 = !DILocation(line: 2228, column: 18, scope: !4430)
!4444 = !DILocation(line: 2229, column: 3, scope: !4430)
!4445 = !DILocation(line: 2229, column: 23, scope: !4430)
!4446 = !DILocation(line: 2230, column: 24, scope: !4430)
!4447 = !DILocation(line: 2231, column: 23, scope: !4430)
!4448 = !DILocation(line: 2231, column: 21, scope: !4430)
!4449 = !DILocation(line: 2232, column: 37, scope: !4430)
!4450 = !DILocation(line: 2232, column: 19, scope: !4430)
!4451 = !DILocation(line: 2232, column: 3, scope: !4430)
!4452 = !DILocation(line: 2232, column: 17, scope: !4430)
!4453 = !DILocation(line: 2233, column: 42, scope: !4430)
!4454 = !DILocation(line: 2233, column: 24, scope: !4430)
!4455 = !DILocation(line: 2233, column: 3, scope: !4430)
!4456 = !DILocation(line: 2233, column: 22, scope: !4430)
!4457 = !DILocation(line: 2234, column: 22, scope: !4430)
!4458 = !DILocation(line: 2237, column: 59, scope: !4430)
!4459 = !DILocation(line: 2237, column: 3, scope: !4430)
!4460 = !DILocation(line: 2239, column: 12, scope: !4430)
!4461 = !DILocation(line: 2240, column: 17, scope: !4430)
!4462 = !DILocation(line: 2240, column: 15, scope: !4430)
!4463 = !DILocation(line: 2241, column: 1, scope: !4430)
!4464 = distinct !DISubprogram(name: "set_min_and_max_values_for_integral_type", scope: !3, file: !3, line: 2337, type: !4465, scopeLine: 2340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4467)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !409, !402, !401}
!4467 = !{!4468, !4469, !4470, !4471, !4472}
!4468 = !DILocalVariable(name: "type", arg: 1, scope: !4464, file: !3, line: 2337, type: !409)
!4469 = !DILocalVariable(name: "precision", arg: 2, scope: !4464, file: !3, line: 2338, type: !402)
!4470 = !DILocalVariable(name: "is_unsigned", arg: 3, scope: !4464, file: !3, line: 2339, type: !401)
!4471 = !DILocalVariable(name: "min_value", scope: !4464, file: !3, line: 2341, type: !409)
!4472 = !DILocalVariable(name: "max_value", scope: !4464, file: !3, line: 2342, type: !409)
!4473 = !DILocation(line: 0, scope: !4464)
!4474 = !DILocation(line: 2344, column: 7, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 2344, column: 7)
!4476 = !DILocation(line: 2344, column: 7, scope: !4464)
!4477 = !DILocation(line: 2346, column: 19, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 2345, column: 5)
!4479 = !DILocation(line: 2348, column: 65, scope: !4478)
!4480 = !DILocation(line: 2348, column: 30, scope: !4478)
!4481 = !DILocation(line: 2351, column: 45, scope: !4478)
!4482 = !DILocation(line: 2351, column: 10, scope: !4478)
!4483 = !DILocation(line: 2348, column: 4, scope: !4478)
!4484 = !DILocation(line: 2356, column: 5, scope: !4478)
!4485 = !DILocation(line: 2361, column: 46, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 2358, column: 5)
!4487 = !DILocation(line: 2361, column: 11, scope: !4486)
!4488 = !DILocation(line: 2365, column: 48, scope: !4486)
!4489 = !DILocation(line: 2365, column: 9, scope: !4486)
!4490 = !DILocation(line: 2365, column: 5, scope: !4486)
!4491 = !DILocation(line: 2360, column: 4, scope: !4486)
!4492 = !DILocation(line: 2370, column: 11, scope: !4486)
!4493 = !DILocation(line: 2373, column: 50, scope: !4486)
!4494 = !DILocation(line: 2373, column: 11, scope: !4486)
!4495 = !DILocation(line: 2369, column: 4, scope: !4486)
!4496 = !DILocation(line: 0, scope: !4475)
!4497 = !DILocation(line: 2379, column: 3, scope: !4464)
!4498 = !DILocation(line: 2379, column: 25, scope: !4464)
!4499 = !DILocation(line: 2380, column: 3, scope: !4464)
!4500 = !DILocation(line: 2380, column: 25, scope: !4464)
!4501 = !DILocation(line: 2381, column: 1, scope: !4464)
!4502 = distinct !DISubprogram(name: "set_sizetype", scope: !3, file: !3, line: 2250, type: !2213, scopeLine: 2251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4503)
!4503 = !{!4504, !4505, !4506, !4507, !4508, !4511}
!4504 = !DILocalVariable(name: "type", arg: 1, scope: !4502, file: !3, line: 2250, type: !409)
!4505 = !DILocalVariable(name: "t", scope: !4502, file: !3, line: 2252, type: !409)
!4506 = !DILocalVariable(name: "oprecision", scope: !4502, file: !3, line: 2253, type: !402)
!4507 = !DILocalVariable(name: "precision", scope: !4502, file: !3, line: 2258, type: !402)
!4508 = !DILocalVariable(name: "orig_max", scope: !4509, file: !3, line: 2315, type: !409)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 2314, column: 5)
!4510 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 2313, column: 7)
!4511 = !DILocalVariable(name: "new_max", scope: !4509, file: !3, line: 2315, type: !409)
!4512 = !DILocation(line: 0, scope: !4502)
!4513 = !DILocation(line: 2253, column: 20, scope: !4502)
!4514 = !DILocation(line: 2259, column: 7, scope: !4502)
!4515 = !DILocation(line: 2261, column: 7, scope: !4502)
!4516 = !DILocation(line: 2262, column: 7, scope: !4502)
!4517 = !DILocation(line: 2265, column: 3, scope: !4502)
!4518 = !DILocation(line: 2267, column: 7, scope: !4502)
!4519 = !DILocation(line: 2270, column: 28, scope: !4502)
!4520 = !DILocation(line: 2270, column: 3, scope: !4502)
!4521 = !DILocation(line: 2270, column: 26, scope: !4502)
!4522 = !DILocation(line: 2271, column: 30, scope: !4502)
!4523 = !DILocation(line: 2271, column: 3, scope: !4502)
!4524 = !DILocation(line: 2271, column: 28, scope: !4502)
!4525 = !DILocation(line: 2272, column: 3, scope: !4502)
!4526 = !DILocation(line: 2272, column: 38, scope: !4502)
!4527 = !DILocation(line: 2273, column: 18, scope: !4502)
!4528 = !DILocation(line: 2273, column: 3, scope: !4502)
!4529 = !DILocation(line: 2273, column: 16, scope: !4502)
!4530 = !DILocation(line: 2274, column: 3, scope: !4502)
!4531 = !DILocation(line: 2274, column: 24, scope: !4502)
!4532 = !DILocation(line: 2277, column: 11, scope: !4502)
!4533 = !DILocation(line: 2277, column: 21, scope: !4502)
!4534 = !DILocation(line: 2277, column: 35, scope: !4502)
!4535 = !DILocation(line: 2277, column: 24, scope: !4502)
!4536 = !DILocation(line: 2277, column: 3, scope: !4502)
!4537 = !DILocation(line: 2278, column: 34, scope: !4502)
!4538 = !DILocation(line: 2278, column: 3, scope: !4502)
!4539 = !DILocation(line: 2278, column: 32, scope: !4502)
!4540 = !DILocation(line: 2279, column: 3, scope: !4502)
!4541 = !DILocation(line: 2279, column: 29, scope: !4502)
!4542 = !DILocation(line: 2281, column: 7, scope: !4502)
!4543 = !DILocation(line: 2282, column: 19, scope: !4502)
!4544 = !DILocation(line: 2282, column: 3, scope: !4502)
!4545 = !DILocation(line: 2282, column: 17, scope: !4502)
!4546 = !DILocation(line: 2285, column: 28, scope: !4502)
!4547 = !DILocation(line: 2285, column: 3, scope: !4502)
!4548 = !DILocation(line: 2285, column: 26, scope: !4502)
!4549 = !DILocation(line: 2286, column: 30, scope: !4502)
!4550 = !DILocation(line: 2286, column: 3, scope: !4502)
!4551 = !DILocation(line: 2286, column: 28, scope: !4502)
!4552 = !DILocation(line: 2287, column: 3, scope: !4502)
!4553 = !DILocation(line: 2287, column: 22, scope: !4502)
!4554 = !DILocation(line: 2288, column: 18, scope: !4502)
!4555 = !DILocation(line: 2288, column: 3, scope: !4502)
!4556 = !DILocation(line: 2288, column: 16, scope: !4502)
!4557 = !DILocation(line: 2289, column: 24, scope: !4502)
!4558 = !DILocation(line: 2292, column: 11, scope: !4502)
!4559 = !DILocation(line: 2292, column: 24, scope: !4502)
!4560 = !DILocation(line: 2292, column: 38, scope: !4502)
!4561 = !DILocation(line: 2292, column: 27, scope: !4502)
!4562 = !DILocation(line: 2292, column: 3, scope: !4502)
!4563 = !DILocation(line: 2293, column: 37, scope: !4502)
!4564 = !DILocation(line: 2293, column: 3, scope: !4502)
!4565 = !DILocation(line: 2293, column: 35, scope: !4502)
!4566 = !DILocation(line: 2294, column: 3, scope: !4502)
!4567 = !DILocation(line: 2294, column: 32, scope: !4502)
!4568 = !DILocation(line: 2296, column: 7, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 2296, column: 7)
!4570 = !DILocation(line: 0, scope: !4569)
!4571 = !DILocation(line: 2296, column: 7, scope: !4502)
!4572 = !DILocation(line: 2298, column: 7, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 2297, column: 5)
!4574 = !DILocation(line: 2299, column: 19, scope: !4573)
!4575 = !DILocation(line: 2299, column: 17, scope: !4573)
!4576 = !DILocation(line: 2300, column: 7, scope: !4573)
!4577 = !DILocation(line: 2300, column: 36, scope: !4573)
!4578 = !DILocation(line: 2301, column: 22, scope: !4573)
!4579 = !DILocation(line: 2301, column: 20, scope: !4573)
!4580 = !DILocation(line: 2302, column: 7, scope: !4573)
!4581 = !DILocation(line: 2302, column: 39, scope: !4573)
!4582 = !DILocation(line: 2303, column: 5, scope: !4573)
!4583 = !DILocation(line: 2306, column: 7, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 2305, column: 5)
!4585 = !DILocation(line: 2307, column: 19, scope: !4584)
!4586 = !DILocation(line: 2307, column: 17, scope: !4584)
!4587 = !DILocation(line: 2308, column: 22, scope: !4584)
!4588 = !DILocation(line: 2308, column: 20, scope: !4584)
!4589 = !DILocation(line: 2313, column: 7, scope: !4510)
!4590 = !DILocation(line: 2313, column: 7, scope: !4502)
!4591 = !DILocation(line: 2317, column: 18, scope: !4509)
!4592 = !DILocation(line: 0, scope: !4509)
!4593 = !DILocation(line: 2321, column: 42, scope: !4509)
!4594 = !DILocation(line: 2322, column: 7, scope: !4509)
!4595 = !DILocation(line: 2323, column: 7, scope: !4509)
!4596 = !DILocation(line: 2321, column: 17, scope: !4509)
!4597 = !DILocation(line: 2324, column: 7, scope: !4509)
!4598 = !DILocation(line: 2324, column: 33, scope: !4509)
!4599 = !DILocation(line: 2325, column: 5, scope: !4509)
!4600 = !DILocation(line: 2326, column: 1, scope: !4502)
!4601 = distinct !DISubprogram(name: "get_best_mode", scope: !3, file: !3, line: 2450, type: !4602, scopeLine: 2452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4604)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!5, !402, !402, !7, !5, !402}
!4604 = !{!4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4615}
!4605 = !DILocalVariable(name: "bitsize", arg: 1, scope: !4601, file: !3, line: 2450, type: !402)
!4606 = !DILocalVariable(name: "bitpos", arg: 2, scope: !4601, file: !3, line: 2450, type: !402)
!4607 = !DILocalVariable(name: "align", arg: 3, scope: !4601, file: !3, line: 2450, type: !7)
!4608 = !DILocalVariable(name: "largest_mode", arg: 4, scope: !4601, file: !3, line: 2451, type: !5)
!4609 = !DILocalVariable(name: "volatilep", arg: 5, scope: !4601, file: !3, line: 2451, type: !402)
!4610 = !DILocalVariable(name: "mode", scope: !4601, file: !3, line: 2453, type: !5)
!4611 = !DILocalVariable(name: "unit", scope: !4601, file: !3, line: 2454, type: !7)
!4612 = !DILocalVariable(name: "wide_mode", scope: !4613, file: !3, line: 2480, type: !5)
!4613 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 2479, column: 5)
!4614 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 2477, column: 7)
!4615 = !DILocalVariable(name: "tmode", scope: !4613, file: !3, line: 2480, type: !5)
!4616 = !DILocation(line: 0, scope: !4601)
!4617 = !DILocation(line: 2457, column: 8, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 2457, column: 3)
!4619 = !DILocation(line: 0, scope: !4618)
!4620 = !DILocation(line: 2457, column: 57, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 2457, column: 3)
!4622 = !DILocation(line: 2457, column: 3, scope: !4618)
!4623 = !DILocation(line: 2460, column: 14, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 2459, column: 5)
!4625 = !DILocation(line: 2461, column: 19, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 2461, column: 11)
!4627 = !DILocation(line: 2461, column: 27, scope: !4626)
!4628 = !DILocation(line: 2461, column: 37, scope: !4626)
!4629 = !DILocation(line: 2461, column: 11, scope: !4624)
!4630 = !DILocation(line: 2458, column: 15, scope: !4621)
!4631 = !DILocation(line: 2457, column: 3, scope: !4621)
!4632 = distinct !{!4632, !4622, !4633}
!4633 = !DILocation(line: 2463, column: 5, scope: !4618)
!4634 = !DILocation(line: 2473, column: 7, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 2465, column: 7)
!4636 = !DILocation(line: 2473, column: 10, scope: !4635)
!4637 = !DILocation(line: 2473, column: 40, scope: !4635)
!4638 = !DILocation(line: 2474, column: 7, scope: !4635)
!4639 = !DILocation(line: 2474, column: 24, scope: !4635)
!4640 = !DILocation(line: 2474, column: 36, scope: !4635)
!4641 = !DILocation(line: 2474, column: 46, scope: !4635)
!4642 = !DILocation(line: 2474, column: 44, scope: !4635)
!4643 = !DILocation(line: 2465, column: 7, scope: !4601)
!4644 = !DILocation(line: 2478, column: 11, scope: !4614)
!4645 = !DILocation(line: 2478, column: 21, scope: !4614)
!4646 = !DILocation(line: 2478, column: 33, scope: !4614)
!4647 = !DILocation(line: 2478, column: 25, scope: !4614)
!4648 = !DILocation(line: 2477, column: 7, scope: !4601)
!4649 = !DILocation(line: 0, scope: !4613)
!4650 = !DILocation(line: 0, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 2486, column: 8)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 2484, column: 2)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 2482, column: 7)
!4654 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 2482, column: 7)
!4655 = !DILocation(line: 2482, column: 12, scope: !4654)
!4656 = !DILocation(line: 0, scope: !4654)
!4657 = !DILocation(line: 2482, column: 63, scope: !4653)
!4658 = !DILocation(line: 2482, column: 7, scope: !4654)
!4659 = !DILocation(line: 2485, column: 11, scope: !4652)
!4660 = !DILocation(line: 2486, column: 15, scope: !4651)
!4661 = !DILocation(line: 2486, column: 48, scope: !4651)
!4662 = !DILocation(line: 2486, column: 22, scope: !4651)
!4663 = !DILocation(line: 2487, column: 16, scope: !4651)
!4664 = !DILocation(line: 2487, column: 8, scope: !4651)
!4665 = !DILocation(line: 2488, column: 16, scope: !4651)
!4666 = !DILocation(line: 2489, column: 8, scope: !4651)
!4667 = !DILocation(line: 2491, column: 6, scope: !4651)
!4668 = !DILocation(line: 2483, column: 13, scope: !4653)
!4669 = !DILocation(line: 2482, column: 7, scope: !4653)
!4670 = distinct !{!4670, !4658, !4671}
!4671 = !DILocation(line: 2492, column: 2, scope: !4654)
!4672 = !DILocation(line: 2494, column: 21, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 2494, column: 11)
!4674 = !DILocation(line: 2490, column: 16, scope: !4651)
!4675 = !DILocation(line: 2490, column: 13, scope: !4651)
!4676 = !DILocation(line: 2486, column: 8, scope: !4652)
!4677 = !DILocation(line: 2490, column: 5, scope: !4651)
!4678 = !DILocation(line: 2498, column: 3, scope: !4601)
!4679 = !DILocation(line: 2499, column: 1, scope: !4601)
!4680 = distinct !DISubprogram(name: "get_mode_bounds", scope: !3, file: !3, line: 2505, type: !4681, scopeLine: 2508, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4684)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{null, !5, !402, !5, !4683, !4683}
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!4684 = !{!4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692}
!4685 = !DILocalVariable(name: "mode", arg: 1, scope: !4680, file: !3, line: 2505, type: !5)
!4686 = !DILocalVariable(name: "sign", arg: 2, scope: !4680, file: !3, line: 2505, type: !402)
!4687 = !DILocalVariable(name: "target_mode", arg: 3, scope: !4680, file: !3, line: 2506, type: !5)
!4688 = !DILocalVariable(name: "mmin", arg: 4, scope: !4680, file: !3, line: 2507, type: !4683)
!4689 = !DILocalVariable(name: "mmax", arg: 5, scope: !4680, file: !3, line: 2507, type: !4683)
!4690 = !DILocalVariable(name: "size", scope: !4680, file: !3, line: 2509, type: !7)
!4691 = !DILocalVariable(name: "min_val", scope: !4680, file: !3, line: 2510, type: !463)
!4692 = !DILocalVariable(name: "max_val", scope: !4680, file: !3, line: 2510, type: !463)
!4693 = !DILocation(line: 0, scope: !4680)
!4694 = !DILocation(line: 2509, column: 19, scope: !4680)
!4695 = !DILocation(line: 2512, column: 3, scope: !4680)
!4696 = !DILocation(line: 2514, column: 7, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 2514, column: 7)
!4698 = !DILocation(line: 0, scope: !4697)
!4699 = !DILocation(line: 2514, column: 7, scope: !4680)
!4700 = !DILocation(line: 2516, column: 17, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 2515, column: 5)
!4702 = !DILocation(line: 2517, column: 60, scope: !4701)
!4703 = !DILocation(line: 2518, column: 5, scope: !4701)
!4704 = !DILocation(line: 2522, column: 59, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 2520, column: 5)
!4706 = !DILocation(line: 2522, column: 65, scope: !4705)
!4707 = !DILocation(line: 2525, column: 11, scope: !4680)
!4708 = !DILocation(line: 2525, column: 9, scope: !4680)
!4709 = !DILocation(line: 2526, column: 11, scope: !4680)
!4710 = !DILocation(line: 2526, column: 9, scope: !4680)
!4711 = !DILocation(line: 2527, column: 1, scope: !4680)
!4712 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !135, file: !135, line: 182, type: !4713, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4715)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!7, !2425}
!4715 = !{!4716}
!4716 = !DILocalVariable(name: "vec_", arg: 1, scope: !4712, file: !135, line: 182, type: !2425)
!4717 = !DILocation(line: 0, scope: !4712)
!4718 = !DILocation(line: 182, column: 1, scope: !4712)
!4719 = distinct !DISubprogram(name: "copy_self_referential_tree_r", scope: !3, file: !3, line: 180, type: !4720, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4723)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!409, !769, !4722, !406}
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!4723 = !{!4724, !4725, !4726, !4727, !4728}
!4724 = !DILocalVariable(name: "tp", arg: 1, scope: !4719, file: !3, line: 180, type: !769)
!4725 = !DILocalVariable(name: "walk_subtrees", arg: 2, scope: !4719, file: !3, line: 180, type: !4722)
!4726 = !DILocalVariable(name: "data", arg: 3, scope: !4719, file: !3, line: 180, type: !406)
!4727 = !DILocalVariable(name: "code", scope: !4719, file: !3, line: 182, type: !134)
!4728 = !DILocalVariable(name: "inner", scope: !4729, file: !3, line: 204, type: !409)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 203, column: 5)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 202, column: 12)
!4731 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 194, column: 12)
!4732 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 185, column: 7)
!4733 = !DILocation(line: 0, scope: !4719)
!4734 = !DILocation(line: 182, column: 25, scope: !4719)
!4735 = !DILocation(line: 185, column: 7, scope: !4732)
!4736 = !DILocation(line: 185, column: 30, scope: !4732)
!4737 = !DILocation(line: 186, column: 7, scope: !4732)
!4738 = !DILocation(line: 186, column: 33, scope: !4732)
!4739 = !DILocation(line: 187, column: 7, scope: !4732)
!4740 = !DILocation(line: 187, column: 33, scope: !4732)
!4741 = !DILocation(line: 185, column: 7, scope: !4719)
!4742 = !DILocation(line: 189, column: 22, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 188, column: 5)
!4744 = !DILocation(line: 190, column: 7, scope: !4743)
!4745 = !DILocation(line: 195, column: 5, scope: !4731)
!4746 = !DILocation(line: 195, column: 8, scope: !4731)
!4747 = !DILocation(line: 195, column: 42, scope: !4731)
!4748 = !DILocation(line: 194, column: 12, scope: !4732)
!4749 = !DILocation(line: 197, column: 22, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 196, column: 5)
!4751 = !DILocation(line: 198, column: 7, scope: !4750)
!4752 = !DILocation(line: 202, column: 12, scope: !4731)
!4753 = !DILocation(line: 205, column: 20, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 205, column: 7)
!4755 = !DILocation(line: 205, column: 12, scope: !4754)
!4756 = !DILocation(line: 0, scope: !4754)
!4757 = !DILocation(line: 0, scope: !4729)
!4758 = !DILocation(line: 206, column: 5, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 205, column: 7)
!4760 = !DILocation(line: 205, column: 7, scope: !4754)
!4761 = !DILocation(line: 207, column: 13, scope: !4759)
!4762 = !DILocation(line: 205, column: 7, scope: !4759)
!4763 = distinct !{!4763, !4760, !4764}
!4764 = !DILocation(line: 208, column: 2, scope: !4754)
!4765 = !DILocation(line: 210, column: 29, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 210, column: 11)
!4767 = !DILocation(line: 210, column: 11, scope: !4729)
!4768 = !DILocation(line: 212, column: 19, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 211, column: 2)
!4770 = !DILocation(line: 213, column: 4, scope: !4769)
!4771 = !DILocation(line: 223, column: 12, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 222, column: 12)
!4773 = !DILocation(line: 223, column: 5, scope: !4772)
!4774 = !DILocation(line: 225, column: 10, scope: !4719)
!4775 = !DILocation(line: 225, column: 3, scope: !4719)
!4776 = !DILocation(line: 226, column: 1, scope: !4719)
!4777 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !135, file: !135, line: 184, type: !4778, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4781)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{null, !4780}
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!4781 = !{!4782}
!4782 = !DILocalVariable(name: "vec_", arg: 1, scope: !4777, file: !135, line: 184, type: !4780)
!4783 = !DILocation(line: 0, scope: !4777)
!4784 = !DILocation(line: 184, column: 1, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4777, file: !135, line: 184, column: 1)
!4786 = !DILocation(line: 184, column: 1, scope: !4777)
!4787 = distinct !DISubprogram(name: "VEC_tree_gc_safe_push", scope: !135, file: !135, line: 183, type: !4788, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4790)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!769, !2443, !409}
!4790 = !{!4791, !4792}
!4791 = !DILocalVariable(name: "vec_", arg: 1, scope: !4787, file: !135, line: 183, type: !2443)
!4792 = !DILocalVariable(name: "obj_", arg: 2, scope: !4787, file: !135, line: 183, type: !409)
!4793 = !DILocation(line: 0, scope: !4787)
!4794 = !DILocation(line: 183, column: 1, scope: !4787)
!4795 = distinct !DISubprogram(name: "VEC_tree_gc_reserve", scope: !135, file: !135, line: 183, type: !4796, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4798)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!402, !2443, !402}
!4798 = !{!4799, !4800, !4801}
!4799 = !DILocalVariable(name: "vec_", arg: 1, scope: !4795, file: !135, line: 183, type: !2443)
!4800 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4795, file: !135, line: 183, type: !402)
!4801 = !DILocalVariable(name: "extend", scope: !4795, file: !135, line: 183, type: !402)
!4802 = !DILocation(line: 0, scope: !4795)
!4803 = !DILocation(line: 183, column: 1, scope: !4795)
!4804 = !DILocation(line: 183, column: 1, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4795, file: !135, line: 183, column: 1)
!4806 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !135, file: !135, line: 182, type: !4807, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4810)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!769, !4809, !409}
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!4810 = !{!4811, !4812, !4813}
!4811 = !DILocalVariable(name: "vec_", arg: 1, scope: !4806, file: !135, line: 182, type: !4809)
!4812 = !DILocalVariable(name: "obj_", arg: 2, scope: !4806, file: !135, line: 182, type: !409)
!4813 = !DILocalVariable(name: "slot_", scope: !4806, file: !135, line: 182, type: !769)
!4814 = !DILocation(line: 0, scope: !4806)
!4815 = !DILocation(line: 182, column: 1, scope: !4806)
!4816 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !135, file: !135, line: 182, type: !4817, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4819)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!402, !4809, !402}
!4819 = !{!4820, !4821}
!4820 = !DILocalVariable(name: "vec_", arg: 1, scope: !4816, file: !135, line: 182, type: !4809)
!4821 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4816, file: !135, line: 182, type: !402)
!4822 = !DILocation(line: 0, scope: !4816)
!4823 = !DILocation(line: 182, column: 1, scope: !4816)
