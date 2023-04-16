; ModuleID = 'fwprop.bc'
source_filename = "fwprop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.df = type { [8 x %struct.dataflow*], [8 x %struct.dataflow*], %struct.bitmap_head_def*, %struct.df_ref_info, %struct.df_ref_info, %struct.df_reg_info**, %struct.df_reg_info**, %struct.df_reg_info**, i32, i32, %struct.df_insn_info**, i32, i32, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32*, i32*, i32, i32, i32*, i32, i8, i8, i8 }
%struct.dataflow = type { %struct.df_problem*, i8**, i32, %struct.alloc_pool_def*, %struct.bitmap_head_def*, i8*, i32, i8, i8, i8 }
%struct.df_problem = type { i32, i32, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.basic_block_def*, i8*)*, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32)*, void (%struct.basic_block_def*)*, void (%struct.edge_def*)*, i8 (i32)*, void (%struct.bitmap_head_def*)*, void ()*, void ()*, void (%struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void ()*, void ()*, %struct.df_problem*, i32, i8 }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.gimple_seq_d = type opaque
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
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_df = type opaque
%struct.loops = type { i32, %struct.VEC_loop_p_gc*, %struct.htab*, %struct.loop* }
%struct.VEC_loop_p_gc = type { %struct.VEC_loop_p_base }
%struct.VEC_loop_p_base = type { i32, i32, [1 x %struct.loop*] }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type opaque
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.alloc_pool_def = type { i8*, i64, %struct.alloc_pool_list_def*, i8*, i64, i64, i64, i64, %struct.alloc_pool_list_def*, i64, i64 }
%struct.alloc_pool_list_def = type { %struct.alloc_pool_list_def* }
%struct.df_ref_info = type { %union.df_ref_d**, i32*, i32*, i32, i32, i32, i32 }
%union.df_ref_d = type { %struct.df_extract_ref }
%struct.df_extract_ref = type { %struct.df_regular_ref, i32, i32, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, %struct.rtx_def** }
%struct.df_base_ref = type { i32, %struct.rtx_def*, %struct.df_link*, %struct.df_insn_info*, %union.df_ref_d*, %union.df_ref_d*, i32, i32, i32 }
%struct.df_link = type { %union.df_ref_d*, %struct.df_link* }
%struct.df_insn_info = type { %struct.rtx_def*, %union.df_ref_d**, %union.df_ref_d**, %union.df_ref_d**, %struct.df_mw_hardreg**, i32 }
%struct.df_mw_hardreg = type { %struct.rtx_def*, i32, i32, i32, i32 }
%struct.df_reg_info = type { %union.df_ref_d*, i32 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.VEC_df_ref_heap = type { %struct.VEC_df_ref_base }
%struct.VEC_df_ref_base = type { i32, i32, [1 x %union.df_ref_d*] }
%struct.rtl_hooks = type { %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i64, i64*)*, %struct.rtx_def* (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, i32*)*, i8 (i32, %struct.rtx_def*)* }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.dom_walk_data = type { i8, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)*, void (%struct.dom_walk_data*, %struct.basic_block_def*)*, void (%struct.dom_walk_data*, %struct.basic_block_def*)*, i8*, %struct.VEC_void_p_heap*, i64, %struct.VEC_void_p_heap* }
%struct.VEC_void_p_heap = type { %struct.VEC_void_p_base }
%struct.VEC_void_p_base = type { i32, i32, [1 x i8*] }
%struct.df_md_bb_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.df_lr_bb_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.df_scan_bb_info = type { %union.df_ref_d**, %union.df_ref_d** }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.mem_attrs = type { %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }
%struct.find_occurrence_data = type { %struct.rtx_def*, %struct.rtx_def** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"fwprop1\00", align 1
@pass_rtl_fwprop = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_fwprop, i32 ()* @fwprop, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 120, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"fwprop2\00", align 1
@pass_rtl_fwprop_addr = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8 ()* @gate_fwprop, i32 ()* @fwprop_addr, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 120, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8, !dbg !1962
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_forward_propagate = external dso_local local_unnamed_addr global i32, align 4
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@num_changes = internal unnamed_addr global i32 0, align 4, !dbg !1990
@use_def_ref = internal global %struct.VEC_df_ref_heap* null, align 8, !dbg !1992
@reg_defs = internal global %struct.VEC_df_ref_heap* null, align 8, !dbg !1994
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@reg_defs_stack = internal global %struct.VEC_df_ref_heap* null, align 8, !dbg !1996
@local_md = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !1998
@local_lr = internal unnamed_addr global %struct.bitmap_head_def* null, align 8, !dbg !2000
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"fwprop.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@rtl_hooks = external dso_local local_unnamed_addr global %struct.rtl_hooks, align 8
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"\0AIn insn %d, replacing\0A \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0A with \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Changes to insn %d not recognized\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Changes to insn %d not profitable\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Changed insn %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c" Setting REG_EQUAL note\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"\0ANumber of successful forward propagations: %d\0A\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2006 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2019, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2020, metadata !DIExpression()), !dbg !2021
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2022
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2023
  ret i32 %call, !dbg !2024
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2025 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2029
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2030
  ret i32 %call, !dbg !2031
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2032 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2086, metadata !DIExpression()), !dbg !2087
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2088
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2088
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2088
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2088
  %cmp = icmp uge i8* %0, %1, !dbg !2088
  %conv1 = zext i1 %cmp to i64, !dbg !2088
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2088
  %tobool = icmp eq i64 %expval, 0, !dbg !2088
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2088

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2088
  br label %cond.end, !dbg !2088

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2088
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2088
  %2 = load i8, i8* %0, align 1, !dbg !2088
  %conv3 = zext i8 %2 to i32, !dbg !2088
  br label %cond.end, !dbg !2088

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2088
  ret i32 %cond, !dbg !2089
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2090 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2092, metadata !DIExpression()), !dbg !2093
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2094
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2094
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2094
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2094
  %cmp = icmp uge i8* %0, %1, !dbg !2094
  %conv1 = zext i1 %cmp to i64, !dbg !2094
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2094
  %tobool = icmp eq i64 %expval, 0, !dbg !2094
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2094

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2094
  br label %cond.end, !dbg !2094

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2094
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2094
  %2 = load i8, i8* %0, align 1, !dbg !2094
  %conv3 = zext i8 %2 to i32, !dbg !2094
  br label %cond.end, !dbg !2094

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2094
  ret i32 %cond, !dbg !2095
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2096 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2097
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2097
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2097
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2097
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2097
  %cmp = icmp uge i8* %1, %2, !dbg !2097
  %conv1 = zext i1 %cmp to i64, !dbg !2097
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2097
  %tobool = icmp eq i64 %expval, 0, !dbg !2097
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2097

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2097
  br label %cond.end, !dbg !2097

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2097
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2097
  %3 = load i8, i8* %1, align 1, !dbg !2097
  %conv3 = zext i8 %3 to i32, !dbg !2097
  br label %cond.end, !dbg !2097

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2097
  ret i32 %cond, !dbg !2098
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2099 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2103, metadata !DIExpression()), !dbg !2104
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2105
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2106
  ret i32 %call, !dbg !2107
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2108 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2112, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2113, metadata !DIExpression()), !dbg !2114
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2115
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2115
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2115
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2115
  %cmp = icmp uge i8* %0, %1, !dbg !2115
  %conv1 = zext i1 %cmp to i64, !dbg !2115
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2115
  %tobool = icmp eq i64 %expval, 0, !dbg !2115
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2115

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2115
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2115
  br label %cond.end, !dbg !2115

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2115
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2115
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2115
  store i8 %conv2, i8* %0, align 1, !dbg !2115
  %conv6 = and i32 %__c, 255, !dbg !2115
  br label %cond.end, !dbg !2115

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2115
  ret i32 %cond, !dbg !2116
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2117 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2119, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2120, metadata !DIExpression()), !dbg !2121
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2122
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2122
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2122
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2122
  %cmp = icmp uge i8* %0, %1, !dbg !2122
  %conv1 = zext i1 %cmp to i64, !dbg !2122
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2122
  %tobool = icmp eq i64 %expval, 0, !dbg !2122
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2122

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2122
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2122
  br label %cond.end, !dbg !2122

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2122
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2122
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2122
  store i8 %conv2, i8* %0, align 1, !dbg !2122
  %conv6 = and i32 %__c, 255, !dbg !2122
  br label %cond.end, !dbg !2122

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2122
  ret i32 %cond, !dbg !2123
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2124 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2126, metadata !DIExpression()), !dbg !2127
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2128
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2128
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2128
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2128
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2128
  %cmp = icmp uge i8* %1, %2, !dbg !2128
  %conv1 = zext i1 %cmp to i64, !dbg !2128
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2128
  %tobool = icmp eq i64 %expval, 0, !dbg !2128
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2128

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2128
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2128
  br label %cond.end, !dbg !2128

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2128
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2128
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2128
  store i8 %conv4, i8* %1, align 1, !dbg !2128
  %conv6 = and i32 %__c, 255, !dbg !2128
  br label %cond.end, !dbg !2128

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2128
  ret i32 %cond, !dbg !2129
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2138, metadata !DIExpression()), !dbg !2139
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2140
  ret i64 %call, !dbg !2141
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2142 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2144, metadata !DIExpression()), !dbg !2145
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2146
  %0 = load i32, i32* %_flags, align 8, !dbg !2146
  %and = lshr i32 %0, 4, !dbg !2146
  %and.lobit = and i32 %and, 1, !dbg !2146
  ret i32 %and.lobit, !dbg !2147
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2148 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2150, metadata !DIExpression()), !dbg !2151
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2152
  %0 = load i32, i32* %_flags, align 8, !dbg !2152
  %and = lshr i32 %0, 5, !dbg !2152
  %and.lobit = and i32 %and, 1, !dbg !2152
  ret i32 %and.lobit, !dbg !2153
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2154 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2157, metadata !DIExpression()), !dbg !2158
  %__c.off = add i32 %__c, 128, !dbg !2159
  %0 = icmp ult i32 %__c.off, 384, !dbg !2159
  br i1 %0, label %cond.true, label %cond.end, !dbg !2159

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2160
  %1 = load i32*, i32** %call, align 8, !dbg !2161
  %idxprom = sext i32 %__c to i64, !dbg !2162
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2162
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2162
  br label %cond.end, !dbg !2163

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2163
  ret i32 %cond, !dbg !2164
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2165 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2167, metadata !DIExpression()), !dbg !2168
  %__c.off = add i32 %__c, 128, !dbg !2169
  %0 = icmp ult i32 %__c.off, 384, !dbg !2169
  br i1 %0, label %cond.true, label %cond.end, !dbg !2169

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2170
  %1 = load i32*, i32** %call, align 8, !dbg !2171
  %idxprom = sext i32 %__c to i64, !dbg !2172
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2172
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2172
  br label %cond.end, !dbg !2173

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2173
  ret i32 %cond, !dbg !2174
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2180, metadata !DIExpression()), !dbg !2181
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2182
  %conv = trunc i64 %call to i32, !dbg !2183
  ret i32 %conv, !dbg !2184
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2185 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2189, metadata !DIExpression()), !dbg !2190
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2191
  ret i64 %call, !dbg !2192
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2193 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2198, metadata !DIExpression()), !dbg !2199
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2200
  ret i64 %call, !dbg !2201
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2208, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2209, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2210, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2211, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2212, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 0, metadata !2213, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2214, metadata !DIExpression()), !dbg !2218
  br label %while.cond, !dbg !2219

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2220
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2214, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2213, metadata !DIExpression()), !dbg !2218
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2221
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2219

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2222
  %div = lshr i64 %add, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %div, metadata !2215, metadata !DIExpression()), !dbg !2218
  %mul = mul i64 %div, %__size, !dbg !2225
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2226
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2216, metadata !DIExpression()), !dbg !2218
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %call, metadata !2217, metadata !DIExpression()), !dbg !2218
  %cmp1 = icmp slt i32 %call, 0, !dbg !2228
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2230

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2231
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2233

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2213, metadata !DIExpression()), !dbg !2218
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2218
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2214, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2213, metadata !DIExpression()), !dbg !2218
  br label %while.cond, !dbg !2219, !llvm.loop !2235

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2218
  ret i8* %retval.0, !dbg !2237
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2238 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2244, metadata !DIExpression()), !dbg !2245
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2246
  ret double %call, !dbg !2247
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2248 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2257, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2258, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i32 %base, metadata !2259, metadata !DIExpression()), !dbg !2260
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2261
  ret i64 %call, !dbg !2262
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2269, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2270, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %base, metadata !2271, metadata !DIExpression()), !dbg !2272
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2273
  ret i64 %call, !dbg !2274
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2275 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2286, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2287, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %base, metadata !2288, metadata !DIExpression()), !dbg !2289
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2290
  ret i64 %call, !dbg !2291
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2292 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2296, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2297, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32 %base, metadata !2298, metadata !DIExpression()), !dbg !2299
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2300
  ret i64 %call, !dbg !2301
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2302 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2342, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2343, metadata !DIExpression()), !dbg !2344
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2345
  ret i32 %call, !dbg !2346
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2347 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2350, metadata !DIExpression()), !dbg !2351
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2352
  ret i32 %call, !dbg !2353
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2354 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2358, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2359, metadata !DIExpression()), !dbg !2360
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2361
  ret i32 %call, !dbg !2362
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2363 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2367, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2368, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2369, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2370, metadata !DIExpression()), !dbg !2371
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2372
  ret i32 %call, !dbg !2373
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2374 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2380, metadata !DIExpression()), !dbg !2381
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2380, metadata !DIExpression(DW_OP_deref)), !dbg !2381
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2382
  ret i32 %call, !dbg !2383
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2384 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2388, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2389, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2391, metadata !DIExpression()), !dbg !2392
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2391, metadata !DIExpression(DW_OP_deref)), !dbg !2392
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2393
  ret i32 %call, !dbg !2394
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2395 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2419, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2420, metadata !DIExpression()), !dbg !2421
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2422
  ret i32 %call, !dbg !2423
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2424 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2427, metadata !DIExpression()), !dbg !2428
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2429
  ret i32 %call, !dbg !2430
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2431 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2436, metadata !DIExpression()), !dbg !2437
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2438
  ret i32 %call, !dbg !2439
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2440 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2444, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2447, metadata !DIExpression()), !dbg !2448
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2449
  ret i32 %call, !dbg !2450
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_fwprop() #4 !dbg !2451 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2452
  %cmp = icmp sgt i32 %0, 0, !dbg !2453
  %1 = load i32, i32* @flag_forward_propagate, align 4, !dbg !2454
  %tobool = icmp ne i32 %1, 0, !dbg !2454
  %2 = and i1 %cmp, %tobool, !dbg !2454
  %conv = zext i1 %2 to i8, !dbg !2452
  ret i8 %conv, !dbg !2455
}

; Function Attrs: nounwind uwtable
define internal i32 @fwprop() #4 !dbg !2456 {
entry:
  tail call fastcc void @fwprop_init() #7, !dbg !2463
  call void @llvm.dbg.value(metadata i32 0, metadata !2458, metadata !DIExpression()), !dbg !2464
  br label %for.cond, !dbg !2465

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2466
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2458, metadata !DIExpression()), !dbg !2464
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !2467
  %table_size = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 4, i32 4, !dbg !2467
  %1 = load i32, i32* %table_size, align 4, !dbg !2467
  %2 = zext i32 %1 to i64, !dbg !2468
  %cmp = icmp ult i64 %indvars.iv, %2, !dbg !2468
  br i1 %cmp, label %for.body, label %for.end, !dbg !2469

for.body:                                         ; preds = %for.cond
  %refs = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 4, i32 0, !dbg !2470
  %3 = load %union.df_ref_d**, %union.df_ref_d*** %refs, align 8, !dbg !2470
  %arrayidx = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %3, i64 %indvars.iv, !dbg !2470
  %4 = load %union.df_ref_d*, %union.df_ref_d** %arrayidx, align 8, !dbg !2470
  call void @llvm.dbg.value(metadata %union.df_ref_d* %4, metadata !2459, metadata !DIExpression()), !dbg !2471
  %tobool = icmp eq %union.df_ref_d* %4, null, !dbg !2472
  br i1 %tobool, label %for.inc, label %if.then, !dbg !2474

if.then:                                          ; preds = %for.body
  %5 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2475
  %bf.load = load i32, i32* %5, align 8, !dbg !2475
  %bf.clear = and i32 %bf.load, 65280, !dbg !2475
  %cmp2 = icmp eq i32 %bf.clear, 256, !dbg !2477
  br i1 %cmp2, label %if.then30, label %lor.lhs.false, !dbg !2478

lor.lhs.false:                                    ; preds = %if.then
  %bf.clear5 = and i32 %bf.load, 255, !dbg !2479
  %cmp6 = icmp eq i32 %bf.clear5, 1, !dbg !2479
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !2479

cond.true:                                        ; preds = %lor.lhs.false
  %bb = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 1, !dbg !2479
  %6 = bitcast %struct.rtx_def*** %bb to %struct.basic_block_def**, !dbg !2479
  br label %cond.end, !dbg !2479

cond.false:                                       ; preds = %lor.lhs.false
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2479
  %7 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !2479
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %7, i64 0, i32 0, !dbg !2479
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2479
  %arrayidx8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 1, !dbg !2479
  %rt_bb = bitcast %struct.object_block** %arrayidx8 to %struct.basic_block_def**, !dbg !2479
  br label %cond.end, !dbg !2479

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.basic_block_def** [ %6, %cond.true ], [ %rt_bb, %cond.false ]
  %cond = load %struct.basic_block_def*, %struct.basic_block_def** %cond.in, align 8, !dbg !2479
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond, i64 0, i32 3, !dbg !2480
  %9 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2480
  %cmp9 = icmp eq %struct.loop* %9, null, !dbg !2481
  br i1 %cmp9, label %if.then30, label %lor.lhs.false10, !dbg !2482

lor.lhs.false10:                                  ; preds = %cond.end
  br i1 %cmp6, label %cond.true15, label %cond.false18, !dbg !2483

cond.true15:                                      ; preds = %lor.lhs.false10
  %bb17 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 1, !dbg !2483
  %10 = bitcast %struct.rtx_def*** %bb17 to %struct.basic_block_def**, !dbg !2483
  br label %cond.end26, !dbg !2483

cond.false18:                                     ; preds = %lor.lhs.false10
  %insn_info20 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2483
  %11 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info20, align 8, !dbg !2483
  %insn21 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %11, i64 0, i32 0, !dbg !2483
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn21, align 8, !dbg !2483
  %arrayidx24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, i32 0, i32 1, !dbg !2483
  %rt_bb25 = bitcast %struct.object_block** %arrayidx24 to %struct.basic_block_def**, !dbg !2483
  br label %cond.end26, !dbg !2483

cond.end26:                                       ; preds = %cond.false18, %cond.true15
  %cond27.in = phi %struct.basic_block_def** [ %10, %cond.true15 ], [ %rt_bb25, %cond.false18 ]
  %cond27 = load %struct.basic_block_def*, %struct.basic_block_def** %cond27.in, align 8, !dbg !2483
  %loop_father28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond27, i64 0, i32 3, !dbg !2484
  %13 = load %struct.loop*, %struct.loop** %loop_father28, align 8, !dbg !2484
  %call = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %13) #7, !dbg !2485
  %cmp29 = icmp eq %struct.loop* %call, null, !dbg !2486
  br i1 %cmp29, label %if.then30, label %for.inc, !dbg !2487

if.then30:                                        ; preds = %cond.end26, %cond.end, %if.then
  tail call fastcc void @forward_propagate_into(%union.df_ref_d* nonnull %4) #7, !dbg !2488
  br label %for.inc, !dbg !2488

for.inc:                                          ; preds = %for.body, %if.then30, %cond.end26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2489
  br label %for.cond, !dbg !2490, !llvm.loop !2491

for.end:                                          ; preds = %for.cond
  tail call fastcc void @fwprop_done() #7, !dbg !2493
  ret i32 0, !dbg !2494
}

; Function Attrs: nounwind uwtable
define internal i32 @fwprop_addr() #4 !dbg !2495 {
entry:
  tail call fastcc void @fwprop_init() #7, !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !2497, metadata !DIExpression()), !dbg !2503
  br label %for.cond, !dbg !2504

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !2505
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2497, metadata !DIExpression()), !dbg !2503
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !2506
  %table_size = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 4, i32 4, !dbg !2506
  %1 = load i32, i32* %table_size, align 4, !dbg !2506
  %2 = zext i32 %1 to i64, !dbg !2507
  %cmp = icmp ult i64 %indvars.iv, %2, !dbg !2507
  br i1 %cmp, label %for.body, label %for.end, !dbg !2508

for.body:                                         ; preds = %for.cond
  %refs = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 4, i32 0, !dbg !2509
  %3 = load %union.df_ref_d**, %union.df_ref_d*** %refs, align 8, !dbg !2509
  %arrayidx = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %3, i64 %indvars.iv, !dbg !2509
  %4 = load %union.df_ref_d*, %union.df_ref_d** %arrayidx, align 8, !dbg !2509
  call void @llvm.dbg.value(metadata %union.df_ref_d* %4, metadata !2498, metadata !DIExpression()), !dbg !2510
  %tobool = icmp eq %union.df_ref_d* %4, null, !dbg !2511
  br i1 %tobool, label %for.inc, label %if.then, !dbg !2513

if.then:                                          ; preds = %for.body
  %5 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2514
  %bf.load = load i32, i32* %5, align 8, !dbg !2514
  %bf.clear = and i32 %bf.load, 65280, !dbg !2514
  %cmp2 = icmp eq i32 %bf.clear, 256, !dbg !2516
  br i1 %cmp2, label %for.inc, label %land.lhs.true, !dbg !2517

land.lhs.true:                                    ; preds = %if.then
  %bf.clear5 = and i32 %bf.load, 255, !dbg !2518
  %cmp6 = icmp eq i32 %bf.clear5, 1, !dbg !2518
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !2518

cond.true:                                        ; preds = %land.lhs.true
  %bb = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 1, !dbg !2518
  %6 = bitcast %struct.rtx_def*** %bb to %struct.basic_block_def**, !dbg !2518
  br label %cond.end, !dbg !2518

cond.false:                                       ; preds = %land.lhs.true
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2518
  %7 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !2518
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %7, i64 0, i32 0, !dbg !2518
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2518
  %arrayidx8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 1, !dbg !2518
  %rt_bb = bitcast %struct.object_block** %arrayidx8 to %struct.basic_block_def**, !dbg !2518
  br label %cond.end, !dbg !2518

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.basic_block_def** [ %6, %cond.true ], [ %rt_bb, %cond.false ]
  %cond = load %struct.basic_block_def*, %struct.basic_block_def** %cond.in, align 8, !dbg !2518
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond, i64 0, i32 3, !dbg !2519
  %9 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2519
  %cmp9 = icmp eq %struct.loop* %9, null, !dbg !2520
  br i1 %cmp9, label %for.inc, label %land.lhs.true10, !dbg !2521

land.lhs.true10:                                  ; preds = %cond.end
  br i1 %cmp6, label %cond.true15, label %cond.false18, !dbg !2522

cond.true15:                                      ; preds = %land.lhs.true10
  %bb17 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 1, !dbg !2522
  %10 = bitcast %struct.rtx_def*** %bb17 to %struct.basic_block_def**, !dbg !2522
  br label %cond.end26, !dbg !2522

cond.false18:                                     ; preds = %land.lhs.true10
  %insn_info20 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %4, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2522
  %11 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info20, align 8, !dbg !2522
  %insn21 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %11, i64 0, i32 0, !dbg !2522
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn21, align 8, !dbg !2522
  %arrayidx24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, i32 0, i32 1, !dbg !2522
  %rt_bb25 = bitcast %struct.object_block** %arrayidx24 to %struct.basic_block_def**, !dbg !2522
  br label %cond.end26, !dbg !2522

cond.end26:                                       ; preds = %cond.false18, %cond.true15
  %cond27.in = phi %struct.basic_block_def** [ %10, %cond.true15 ], [ %rt_bb25, %cond.false18 ]
  %cond27 = load %struct.basic_block_def*, %struct.basic_block_def** %cond27.in, align 8, !dbg !2522
  %loop_father28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond27, i64 0, i32 3, !dbg !2523
  %13 = load %struct.loop*, %struct.loop** %loop_father28, align 8, !dbg !2523
  %call = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %13) #7, !dbg !2524
  %cmp29 = icmp eq %struct.loop* %call, null, !dbg !2525
  br i1 %cmp29, label %for.inc, label %if.then30, !dbg !2526

if.then30:                                        ; preds = %cond.end26
  tail call fastcc void @forward_propagate_into(%union.df_ref_d* nonnull %4) #7, !dbg !2527
  br label %for.inc, !dbg !2527

for.inc:                                          ; preds = %cond.end26, %cond.end, %if.then, %for.body, %if.then30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2528
  br label %for.cond, !dbg !2529, !llvm.loop !2530

for.end:                                          ; preds = %for.cond
  tail call fastcc void @fwprop_done() #7, !dbg !2532
  ret i32 0, !dbg !2533
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fwprop_init() unnamed_addr #4 !dbg !2534 {
entry:
  store i32 0, i32* @num_changes, align 4, !dbg !2537
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !2538
  tail call void @loop_optimizer_init(i32 0) #6, !dbg !2539
  tail call fastcc void @build_single_def_use_links() #7, !dbg !2540
  %call = tail call i32 @df_set_flags(i32 32) #6, !dbg !2541
  ret void, !dbg !2542
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2543 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2549, metadata !DIExpression()), !dbg !2551
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2552
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2552
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2552
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2552

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2552
  br label %cond.end, !dbg !2552

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2552
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %call, metadata !2550, metadata !DIExpression()), !dbg !2551
  %cmp = icmp eq i32 %call, 0, !dbg !2553
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2555

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2556
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !2556
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !2556

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !2556
  br label %cond.end8, !dbg !2556

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !2556
  %sub = add i32 %call, -1, !dbg !2556
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #7, !dbg !2556
  br label %cleanup, !dbg !2557

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !2551
  ret %struct.loop* %retval.0, !dbg !2558
}

; Function Attrs: nounwind uwtable
define internal fastcc void @forward_propagate_into(%union.df_ref_d* %use) unnamed_addr #4 !dbg !2559 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use, metadata !2563, metadata !DIExpression()), !dbg !2569
  %0 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2570
  %bf.load = load i32, i32* %0, align 8, !dbg !2570
  %and = and i32 %bf.load, 2097152, !dbg !2572
  %tobool = icmp eq i32 %and, 0, !dbg !2572
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !2573

if.end:                                           ; preds = %entry
  %bf.clear = and i32 %bf.load, 255, !dbg !2574
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !2574
  br i1 %cmp, label %cleanup.cont, label %if.end4, !dbg !2576

if.end4:                                          ; preds = %if.end
  %call = tail call fastcc %union.df_ref_d* @get_def_for_use(%union.df_ref_d* %use) #7, !dbg !2577
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call, metadata !2564, metadata !DIExpression()), !dbg !2569
  %tobool5 = icmp eq %union.df_ref_d* %call, null, !dbg !2578
  br i1 %tobool5, label %cleanup.cont, label %if.end7, !dbg !2580

if.end7:                                          ; preds = %if.end4
  %1 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2581
  %bf.load9 = load i32, i32* %1, align 8, !dbg !2581
  %and11 = and i32 %bf.load9, 2097152, !dbg !2583
  %tobool12 = icmp eq i32 %and11, 0, !dbg !2583
  br i1 %tobool12, label %if.end14, label %cleanup.cont, !dbg !2584

if.end14:                                         ; preds = %if.end7
  %bf.clear17 = and i32 %bf.load9, 255, !dbg !2585
  %cmp18 = icmp eq i32 %bf.clear17, 1, !dbg !2585
  br i1 %cmp18, label %cleanup.cont, label %if.end20, !dbg !2587

if.end20:                                         ; preds = %if.end14
  br i1 false, label %cond.true, label %cond.false, !dbg !2588

cond.true:                                        ; preds = %if.end20
  br label %cond.end, !dbg !2588

cond.false:                                       ; preds = %if.end20
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2588
  %2 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !2588
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %2, i64 0, i32 0, !dbg !2588
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2588
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 1, !dbg !2588
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !2588
  %cond.pre = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2588
  br label %cond.end, !dbg !2588

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.basic_block_def* [ undef, %cond.true ], [ %cond.pre, %cond.false ], !dbg !2588
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond, i64 0, i32 3, !dbg !2590
  %4 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2590
  %bf.load27 = load i32, i32* %0, align 8, !dbg !2591
  %bf.clear28 = and i32 %bf.load27, 255, !dbg !2591
  %cmp29 = icmp eq i32 %bf.clear28, 1, !dbg !2591
  br i1 %cmp29, label %cond.true30, label %cond.false33, !dbg !2591

cond.true30:                                      ; preds = %cond.end
  %bb32 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 1, !dbg !2591
  %5 = bitcast %struct.rtx_def*** %bb32 to %struct.basic_block_def**, !dbg !2591
  br label %cond.end41, !dbg !2591

cond.false33:                                     ; preds = %cond.end
  %insn_info35 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2591
  %6 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info35, align 8, !dbg !2591
  %insn36 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %6, i64 0, i32 0, !dbg !2591
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn36, align 8, !dbg !2591
  %arrayidx39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 1, !dbg !2591
  %rt_bb40 = bitcast %struct.object_block** %arrayidx39 to %struct.basic_block_def**, !dbg !2591
  br label %cond.end41, !dbg !2591

cond.end41:                                       ; preds = %cond.false33, %cond.true30
  %cond42.in = phi %struct.basic_block_def** [ %5, %cond.true30 ], [ %rt_bb40, %cond.false33 ]
  %cond42 = load %struct.basic_block_def*, %struct.basic_block_def** %cond42.in, align 8, !dbg !2591
  %loop_father43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond42, i64 0, i32 3, !dbg !2592
  %8 = load %struct.loop*, %struct.loop** %loop_father43, align 8, !dbg !2592
  %cmp44 = icmp eq %struct.loop* %4, %8, !dbg !2593
  br i1 %cmp44, label %if.end46, label %cleanup.cont, !dbg !2594

if.end46:                                         ; preds = %cond.end41
  %insn_info48 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2595
  %9 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info48, align 8, !dbg !2595
  %insn49 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %9, i64 0, i32 0, !dbg !2595
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn49, align 8, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !2567, metadata !DIExpression()), !dbg !2569
  %and53 = and i32 %bf.load27, 262144, !dbg !2596
  %tobool54 = icmp eq i32 %and53, 0, !dbg !2596
  br i1 %tobool54, label %if.else, label %if.then55, !dbg !2598

if.then55:                                        ; preds = %if.end46
  %call56 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %10, i32 4, %struct.rtx_def* null) #6, !dbg !2599
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call56, metadata !2568, metadata !DIExpression()), !dbg !2569
  br label %if.end60, !dbg !2600

if.else:                                          ; preds = %if.end46
  %u57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, !dbg !2601
  %11 = getelementptr inbounds %union.u, %union.u* %u57, i64 1, i32 0, i32 0, i64 0, !dbg !2601
  %rt_rtx = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !2601
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2601
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !2568, metadata !DIExpression()), !dbg !2569
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then55
  %parent.0 = phi %struct.rtx_def* [ %call56, %if.then55 ], [ %12, %if.else ], !dbg !2602
  call void @llvm.dbg.value(metadata %struct.rtx_def* %parent.0, metadata !2568, metadata !DIExpression()), !dbg !2569
  %reg = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2603
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !2603
  %call62 = tail call i32 @reg_mentioned_p(%struct.rtx_def* %13, %struct.rtx_def* %parent.0) #6, !dbg !2605
  %tobool63 = icmp eq i32 %call62, 0, !dbg !2605
  br i1 %tobool63, label %cleanup.cont, label %if.end65, !dbg !2606

if.end65:                                         ; preds = %if.end60
  %insn_info67 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !2607
  %14 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info67, align 8, !dbg !2607
  %insn68 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %14, i64 0, i32 0, !dbg !2607
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn68, align 8, !dbg !2607
  call void @llvm.dbg.value(metadata %struct.rtx_def* %15, metadata !2565, metadata !DIExpression()), !dbg !2569
  %call69 = tail call i32 @multiple_sets(%struct.rtx_def* %15) #6, !dbg !2608
  %tobool70 = icmp eq i32 %call69, 0, !dbg !2608
  br i1 %tobool70, label %if.end72, label %cleanup.cont, !dbg !2610

if.end72:                                         ; preds = %if.end65
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i64 0, i32 0, !dbg !2611
  %bf.load73 = load i32, i32* %16, align 8, !dbg !2611
  %bf.clear74 = and i32 %bf.load73, 65535, !dbg !2611
  %cmp75 = icmp eq i32 %bf.clear74, 8, !dbg !2611
  br i1 %cmp75, label %cond.true87, label %lor.lhs.false, !dbg !2611

lor.lhs.false:                                    ; preds = %if.end72
  %cmp78 = icmp eq i32 %bf.clear74, 7, !dbg !2611
  br i1 %cmp78, label %cond.true87, label %lor.lhs.false79, !dbg !2611

lor.lhs.false79:                                  ; preds = %lor.lhs.false
  %cmp82 = icmp eq i32 %bf.clear74, 9, !dbg !2611
  br i1 %cmp82, label %cond.true87, label %lor.lhs.false83, !dbg !2611

lor.lhs.false83:                                  ; preds = %lor.lhs.false79
  %cmp86 = icmp eq i32 %bf.clear74, 10, !dbg !2611
  br i1 %cmp86, label %cond.true87, label %cond.end109, !dbg !2611

cond.true87:                                      ; preds = %lor.lhs.false83, %lor.lhs.false79, %lor.lhs.false, %if.end72
  %u88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i64 0, i32 1, !dbg !2611
  %17 = getelementptr inbounds %union.u, %union.u* %u88, i64 1, i32 0, i32 0, i64 0, !dbg !2611
  %18 = bitcast %union.rtunion_def* %17 to i32**, !dbg !2611
  %19 = load i32*, i32** %18, align 8, !dbg !2611
  %bf.load92 = load i32, i32* %19, align 8, !dbg !2611
  %bf.clear93 = and i32 %bf.load92, 65535, !dbg !2611
  %cmp94 = icmp eq i32 %bf.clear93, 23, !dbg !2611
  %20 = bitcast i32* %19 to %struct.rtx_def*, !dbg !2611
  br i1 %cmp94, label %cond.end109, label %cond.false100, !dbg !2611

cond.false100:                                    ; preds = %cond.true87
  %call105 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %15, %struct.rtx_def* %20) #6, !dbg !2611
  br label %cond.end109, !dbg !2611

cond.end109:                                      ; preds = %lor.lhs.false83, %cond.false100, %cond.true87
  %cond110 = phi %struct.rtx_def* [ %call105, %cond.false100 ], [ %20, %cond.true87 ], [ null, %lor.lhs.false83 ], !dbg !2611
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond110, metadata !2566, metadata !DIExpression()), !dbg !2569
  %tobool111 = icmp eq %struct.rtx_def* %cond110, null, !dbg !2612
  br i1 %tobool111, label %cleanup.cont, label %if.end113, !dbg !2614

if.end113:                                        ; preds = %cond.end109
  %call114 = tail call fastcc zeroext i8 @forward_propagate_and_simplify(%union.df_ref_d* %use, %struct.rtx_def* %15, %struct.rtx_def* nonnull %cond110) #7, !dbg !2615
  %tobool115 = icmp eq i8 %call114, 0, !dbg !2615
  br i1 %tobool115, label %if.then116, label %cleanup.cont, !dbg !2617

if.then116:                                       ; preds = %if.end113
  %call117 = tail call fastcc zeroext i8 @forward_propagate_subreg(%union.df_ref_d* %use, %struct.rtx_def* %15, %struct.rtx_def* nonnull %cond110) #7, !dbg !2618
  br label %cleanup.cont, !dbg !2618

cleanup.cont:                                     ; preds = %if.end113, %cond.end109, %if.end65, %if.end60, %cond.end41, %if.end7, %if.end4, %entry, %if.end, %if.end14, %if.then116
  ret void, !dbg !2619
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fwprop_done() unnamed_addr #4 !dbg !2620 {
entry:
  tail call void @loop_optimizer_finalize() #6, !dbg !2621
  tail call fastcc void @VEC_df_ref_heap_free(%struct.VEC_df_ref_heap** nonnull @use_def_ref) #7, !dbg !2622
  tail call void @free_dominance_info(i32 1) #6, !dbg !2623
  %call = tail call zeroext i8 @cleanup_cfg(i32 0) #6, !dbg !2624
  %call1 = tail call %struct.rtx_def* @get_insns() #6, !dbg !2625
  %call2 = tail call i32 @max_reg_num() #6, !dbg !2626
  %call3 = tail call i32 @delete_trivially_dead_insns(%struct.rtx_def* %call1, i32 %call2) #6, !dbg !2627
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2628
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2628
  br i1 %tobool, label %if.end, label %if.then, !dbg !2630

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @num_changes, align 4, !dbg !2631
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 %1) #6, !dbg !2632
  br label %if.end, !dbg !2632

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2633
}

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #1

declare dso_local void @loop_optimizer_init(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @build_single_def_use_links() unnamed_addr #4 !dbg !2634 {
entry:
  %walk_data = alloca %struct.dom_walk_data, align 8
  %0 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 0, !dbg !2668
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2668
  %call = tail call i32 @df_set_flags(i32 4) #6, !dbg !2669
  tail call void @df_md_add_problem() #6, !dbg !2670
  tail call void @df_note_add_problem() #6, !dbg !2671
  tail call void @df_analyze() #6, !dbg !2672
  tail call void @df_maybe_reorganize_use_refs(i32 6) #6, !dbg !2673
  %1 = load %struct.df*, %struct.df** @df, align 8, !dbg !2674
  %table_size = getelementptr inbounds %struct.df, %struct.df* %1, i64 0, i32 4, i32 4, !dbg !2674
  %2 = load i32, i32* %table_size, align 4, !dbg !2674
  %call1 = tail call fastcc %struct.VEC_df_ref_heap* @VEC_df_ref_heap_alloc(i32 %2) #7, !dbg !2674
  store %struct.VEC_df_ref_heap* %call1, %struct.VEC_df_ref_heap** @use_def_ref, align 8, !dbg !2675
  %3 = load %struct.df*, %struct.df** @df, align 8, !dbg !2676
  %table_size3 = getelementptr inbounds %struct.df, %struct.df* %3, i64 0, i32 4, i32 4, !dbg !2676
  %4 = load i32, i32* %table_size3, align 4, !dbg !2676
  tail call fastcc void @VEC_df_ref_heap_safe_grow_cleared(%struct.VEC_df_ref_heap** nonnull @use_def_ref, i32 %4) #7, !dbg !2676
  %call4 = tail call i32 @max_reg_num() #6, !dbg !2677
  %call5 = tail call fastcc %struct.VEC_df_ref_heap* @VEC_df_ref_heap_alloc(i32 %call4) #7, !dbg !2677
  store %struct.VEC_df_ref_heap* %call5, %struct.VEC_df_ref_heap** @reg_defs, align 8, !dbg !2678
  %call6 = tail call i32 @max_reg_num() #6, !dbg !2679
  tail call fastcc void @VEC_df_ref_heap_safe_grow_cleared(%struct.VEC_df_ref_heap** nonnull @reg_defs, i32 %call6) #7, !dbg !2679
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2680
  %cfg = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2680
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2680
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 3, !dbg !2680
  %7 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2680
  %mul = mul nsw i32 %7, 10, !dbg !2680
  %call7 = tail call fastcc %struct.VEC_df_ref_heap* @VEC_df_ref_heap_alloc(i32 %mul) #7, !dbg !2680
  store %struct.VEC_df_ref_heap* %call7, %struct.VEC_df_ref_heap** @reg_defs_stack, align 8, !dbg !2681
  %call8 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2682
  store %struct.bitmap_head_def* %call8, %struct.bitmap_head_def** @local_md, align 8, !dbg !2683
  %call9 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2684
  store %struct.bitmap_head_def* %call9, %struct.bitmap_head_def** @local_lr, align 8, !dbg !2685
  store i8 1, i8* %0, align 8, !dbg !2686
  %initialize_block_local_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 1, !dbg !2687
  store void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)* null, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)** %initialize_block_local_data, align 8, !dbg !2688
  %before_dom_children = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 2, !dbg !2689
  store void (%struct.dom_walk_data*, %struct.basic_block_def*)* @single_def_use_enter_block, void (%struct.dom_walk_data*, %struct.basic_block_def*)** %before_dom_children, align 8, !dbg !2690
  %after_dom_children = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 3, !dbg !2691
  store void (%struct.dom_walk_data*, %struct.basic_block_def*)* @single_def_use_leave_block, void (%struct.dom_walk_data*, %struct.basic_block_def*)** %after_dom_children, align 8, !dbg !2692
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2636, metadata !DIExpression(DW_OP_deref)), !dbg !2693
  call void @init_walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data) #6, !dbg !2694
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2695
  %cfg11 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !2695
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg11, align 8, !dbg !2695
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !2695
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2695
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2636, metadata !DIExpression(DW_OP_deref)), !dbg !2693
  call void @walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data, %struct.basic_block_def* %10) #6, !dbg !2696
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2636, metadata !DIExpression(DW_OP_deref)), !dbg !2693
  call void @fini_walk_dominator_tree(%struct.dom_walk_data* nonnull %walk_data) #6, !dbg !2697
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_lr, align 8, !dbg !2698
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %11) #6, !dbg !2698
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @local_lr, align 8, !dbg !2698
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_md, align 8, !dbg !2699
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %12) #6, !dbg !2699
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @local_md, align 8, !dbg !2699
  call fastcc void @VEC_df_ref_heap_free(%struct.VEC_df_ref_heap** nonnull @reg_defs) #7, !dbg !2700
  call fastcc void @VEC_df_ref_heap_free(%struct.VEC_df_ref_heap** nonnull @reg_defs_stack) #7, !dbg !2701
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2702
  ret void, !dbg !2702
}

declare dso_local i32 @df_set_flags(i32) local_unnamed_addr #1

declare dso_local void @df_md_add_problem() local_unnamed_addr #1

declare dso_local void @df_note_add_problem() local_unnamed_addr #1

declare dso_local void @df_analyze() local_unnamed_addr #1

declare dso_local void @df_maybe_reorganize_use_refs(i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_df_ref_heap* @VEC_df_ref_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2703 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2707, metadata !DIExpression()), !dbg !2708
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !2709
  %0 = bitcast i8* %call to %struct.VEC_df_ref_heap*, !dbg !2709
  ret %struct.VEC_df_ref_heap* %0, !dbg !2709
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_df_ref_heap_safe_grow_cleared(%struct.VEC_df_ref_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !2710 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_heap** %vec_, metadata !2715, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %size_, metadata !2716, metadata !DIExpression()), !dbg !2718
  %0 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** %vec_, align 8, !dbg !2719
  %tobool = icmp eq %struct.VEC_df_ref_heap* %0, null, !dbg !2719
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2719

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %0, i64 0, i32 0, !dbg !2719
  br label %cond.end, !dbg !2719

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_df_ref_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2719
  %call = tail call fastcc i32 @VEC_df_ref_base_length(%struct.VEC_df_ref_base* %cond) #7, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %call, metadata !2717, metadata !DIExpression()), !dbg !2718
  tail call fastcc void @VEC_df_ref_heap_safe_grow(%struct.VEC_df_ref_heap** %vec_, i32 %size_) #7, !dbg !2719
  %1 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** %vec_, align 8, !dbg !2719
  %tobool1 = icmp eq %struct.VEC_df_ref_heap* %1, null, !dbg !2719
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2719

cond.true2:                                       ; preds = %cond.end
  %base3 = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %1, i64 0, i32 0, !dbg !2719
  br label %cond.end5, !dbg !2719

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_df_ref_base* [ %base3, %cond.true2 ], [ null, %cond.end ], !dbg !2719
  %call7 = tail call fastcc %union.df_ref_d** @VEC_df_ref_base_address(%struct.VEC_df_ref_base* %cond6) #7, !dbg !2719
  %idxprom = sext i32 %call to i64, !dbg !2719
  %arrayidx = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %call7, i64 %idxprom, !dbg !2719
  %2 = bitcast %union.df_ref_d** %arrayidx to i8*, !dbg !2719
  %sub = sub nsw i32 %size_, %call, !dbg !2719
  %conv = sext i32 %sub to i64, !dbg !2719
  %mul = shl nsw i64 %conv, 3, !dbg !2719
  %call8 = tail call i8* @memset(i8* %2, i32 0, i64 %mul) #6, !dbg !2719
  ret void, !dbg !2719
}

declare dso_local i32 @max_reg_num() local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @single_def_use_enter_block(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %bb) #4 !dbg !2720 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2722, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2723, metadata !DIExpression()), !dbg !2733
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2734
  %0 = load i32, i32* %index, align 8, !dbg !2734
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2733
  %call = tail call fastcc %struct.df_md_bb_info* @df_md_get_bb_info(i32 %0) #7, !dbg !2735
  call void @llvm.dbg.value(metadata %struct.df_md_bb_info* %call, metadata !2725, metadata !DIExpression()), !dbg !2733
  %call1 = tail call fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %0) #7, !dbg !2736
  call void @llvm.dbg.value(metadata %struct.df_lr_bb_info* %call1, metadata !2726, metadata !DIExpression()), !dbg !2733
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_md, align 8, !dbg !2737
  %in = getelementptr inbounds %struct.df_md_bb_info, %struct.df_md_bb_info* %call, i64 0, i32 3, !dbg !2738
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in, align 8, !dbg !2738
  tail call void @bitmap_copy(%struct.bitmap_head_def* %1, %struct.bitmap_head_def* %2) #6, !dbg !2739
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_lr, align 8, !dbg !2740
  %in2 = getelementptr inbounds %struct.df_lr_bb_info, %struct.df_lr_bb_info* %call1, i64 0, i32 2, !dbg !2741
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in2, align 8, !dbg !2741
  tail call void @bitmap_copy(%struct.bitmap_head_def* %3, %struct.bitmap_head_def* %4) #6, !dbg !2742
  %call3 = tail call fastcc %union.df_ref_d** @VEC_df_ref_heap_safe_push(%struct.VEC_df_ref_heap** nonnull @reg_defs_stack, %union.df_ref_d* null) #7, !dbg !2743
  %call4 = tail call fastcc %union.df_ref_d** @df_get_artificial_uses(i32 %0) #7, !dbg !2744
  tail call fastcc void @process_uses(%union.df_ref_d** %call4, i32 2) #7, !dbg !2745
  %call5 = tail call fastcc %union.df_ref_d** @df_get_artificial_defs(i32 %0) #7, !dbg !2746
  tail call fastcc void @process_defs(%union.df_ref_d** %call5, i32 2) #7, !dbg !2747
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_lr, align 8, !dbg !2748
  tail call void @df_simulate_initialize_forwards(%struct.basic_block_def* %bb, %struct.bitmap_head_def* %5) #6, !dbg !2749
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2750
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2750
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2750
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 0, !dbg !2750
  br label %for.cond, !dbg !2750

for.cond:                                         ; preds = %for.inc, %entry
  %insn.0.in = phi %struct.rtx_def** [ %head_, %entry ], [ %rt_rtx33, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2751
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2727, metadata !DIExpression()), !dbg !2733
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2752
  br i1 %tobool, label %for.end, label %land.rhs, !dbg !2752

land.rhs:                                         ; preds = %for.cond
  %7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2752
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 1, !dbg !2752
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2752
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2752
  %rt_rtx = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !2752
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2752
  %cmp = icmp eq %struct.rtx_def* %insn.0, %10, !dbg !2752
  br i1 %cmp, label %for.end, label %for.body, !dbg !2750

for.body:                                         ; preds = %land.rhs
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2753
  %bf.load = load i32, i32* %11, align 8, !dbg !2753
  %bf.clear = and i32 %bf.load, 65535, !dbg !2753
  %cmp8 = icmp eq i32 %bf.clear, 8, !dbg !2753
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !2753

lor.lhs.false:                                    ; preds = %for.body
  %cmp11 = icmp eq i32 %bf.clear, 7, !dbg !2753
  br i1 %cmp11, label %if.then, label %lor.lhs.false12, !dbg !2753

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %cmp15 = icmp eq i32 %bf.clear, 9, !dbg !2753
  br i1 %cmp15, label %if.then, label %lor.lhs.false16, !dbg !2753

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %cmp19 = icmp eq i32 %bf.clear, 10, !dbg !2753
  br i1 %cmp19, label %if.then, label %for.inc, !dbg !2754

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false12, %lor.lhs.false, %for.body
  %arrayidx22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2755
  %rt_int = bitcast %union.rtunion_def* %arrayidx22 to i32*, !dbg !2755
  %12 = load i32, i32* %rt_int, align 8, !dbg !2755
  call void @llvm.dbg.value(metadata i32 %12, metadata !2728, metadata !DIExpression()), !dbg !2756
  %13 = load %struct.df*, %struct.df** @df, align 8, !dbg !2757
  %insns = getelementptr inbounds %struct.df, %struct.df* %13, i64 0, i32 10, !dbg !2757
  %14 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !2757
  %idxprom = zext i32 %12 to i64, !dbg !2757
  %arrayidx23 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %14, i64 %idxprom, !dbg !2757
  %15 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx23, align 8, !dbg !2757
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %15, i64 0, i32 2, !dbg !2757
  %16 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !2757
  tail call fastcc void @process_uses(%union.df_ref_d** %16, i32 0) #7, !dbg !2758
  %17 = load %struct.df*, %struct.df** @df, align 8, !dbg !2759
  %insns24 = getelementptr inbounds %struct.df, %struct.df* %17, i64 0, i32 10, !dbg !2759
  %18 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns24, align 8, !dbg !2759
  %arrayidx26 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %18, i64 %idxprom, !dbg !2759
  %19 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx26, align 8, !dbg !2759
  %eq_uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %19, i64 0, i32 3, !dbg !2759
  %20 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses, align 8, !dbg !2759
  tail call fastcc void @process_uses(%union.df_ref_d** %20, i32 0) #7, !dbg !2760
  %21 = load %struct.df*, %struct.df** @df, align 8, !dbg !2761
  %insns27 = getelementptr inbounds %struct.df, %struct.df* %21, i64 0, i32 10, !dbg !2761
  %22 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns27, align 8, !dbg !2761
  %arrayidx29 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %22, i64 %idxprom, !dbg !2761
  %23 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx29, align 8, !dbg !2761
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %23, i64 0, i32 1, !dbg !2761
  %24 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !2761
  tail call fastcc void @process_defs(%union.df_ref_d** %24, i32 0) #7, !dbg !2762
  %25 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_lr, align 8, !dbg !2763
  tail call void @df_simulate_one_insn_forwards(%struct.basic_block_def* %bb, %struct.rtx_def* nonnull %insn.0, %struct.bitmap_head_def* %25) #6, !dbg !2764
  br label %for.inc, !dbg !2765

for.inc:                                          ; preds = %lor.lhs.false16, %if.then
  %26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2752
  %rt_rtx33 = bitcast %union.rtunion_def* %26 to %struct.rtx_def**, !dbg !2752
  br label %for.cond, !dbg !2752, !llvm.loop !2766

for.end:                                          ; preds = %land.rhs, %for.cond
  %call34 = tail call fastcc %union.df_ref_d** @df_get_artificial_uses(i32 %0) #7, !dbg !2768
  tail call fastcc void @process_uses(%union.df_ref_d** %call34, i32 0) #7, !dbg !2769
  %call35 = tail call fastcc %union.df_ref_d** @df_get_artificial_defs(i32 %0) #7, !dbg !2770
  tail call fastcc void @process_defs(%union.df_ref_d** %call35, i32 0) #7, !dbg !2771
  ret void, !dbg !2772
}

; Function Attrs: nounwind uwtable
define internal void @single_def_use_leave_block(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %bb) #4 !dbg !2773 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !2775, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2776, metadata !DIExpression()), !dbg !2780
  br label %while.cond, !dbg !2781

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @reg_defs_stack, align 8, !dbg !2782
  %base = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %0, i64 0, i32 0, !dbg !2782
  %call = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_pop(%struct.VEC_df_ref_base* %base) #7, !dbg !2782
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call, metadata !2777, metadata !DIExpression()), !dbg !2780
  %cmp = icmp eq %union.df_ref_d* %call, null, !dbg !2783
  br i1 %cmp, label %while.end, label %while.body, !dbg !2781

while.body:                                       ; preds = %while.cond
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2784
  %1 = load i32, i32* %regno, align 8, !dbg !2784
  call void @llvm.dbg.value(metadata i32 %1, metadata !2778, metadata !DIExpression()), !dbg !2785
  %2 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @reg_defs, align 8, !dbg !2786
  %base4 = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %2, i64 0, i32 0, !dbg !2786
  %call8 = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_index(%struct.VEC_df_ref_base* %base4, i32 %1) #7, !dbg !2786
  %cmp9 = icmp eq %union.df_ref_d* %call, %call8, !dbg !2788
  %3 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @reg_defs, align 8, !dbg !2789
  %base12 = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %3, i64 0, i32 0, !dbg !2789
  br i1 %cmp9, label %if.then, label %if.else, !dbg !2790

if.then:                                          ; preds = %while.body
  %call16 = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_replace(%struct.VEC_df_ref_base* %base12, i32 %1, %union.df_ref_d* null) #7, !dbg !2791
  br label %if.end, !dbg !2791

if.else:                                          ; preds = %while.body
  %call23 = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_replace(%struct.VEC_df_ref_base* %base12, i32 %1, %union.df_ref_d* nonnull %call) #7, !dbg !2792
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !2781, !llvm.loop !2793

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2795
}

declare dso_local void @init_walk_dominator_tree(%struct.dom_walk_data*) local_unnamed_addr #1

declare dso_local void @walk_dominator_tree(%struct.dom_walk_data*, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local void @fini_walk_dominator_tree(%struct.dom_walk_data*) local_unnamed_addr #1

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_df_ref_heap_free(%struct.VEC_df_ref_heap** %vec_) unnamed_addr #0 !dbg !2796 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_heap** %vec_, metadata !2800, metadata !DIExpression()), !dbg !2801
  %0 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** %vec_, align 8, !dbg !2802
  %tobool = icmp eq %struct.VEC_df_ref_heap* %0, null, !dbg !2802
  br i1 %tobool, label %if.end, label %if.then, !dbg !2804

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_df_ref_heap* %0 to i8*, !dbg !2804
  tail call void @free(i8* nonnull %1) #6, !dbg !2802
  br label %if.end, !dbg !2802

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_df_ref_heap* null, %struct.VEC_df_ref_heap** %vec_, align 8, !dbg !2804
  ret void, !dbg !2804
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_df_ref_base_length(%struct.VEC_df_ref_base* %vec_) unnamed_addr #0 !dbg !2805 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_base* %vec_, metadata !2811, metadata !DIExpression()), !dbg !2812
  %tobool = icmp eq %struct.VEC_df_ref_base* %vec_, null, !dbg !2813
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2813

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_df_ref_base, %struct.VEC_df_ref_base* %vec_, i64 0, i32 0, !dbg !2813
  %0 = load i32, i32* %num, align 8, !dbg !2813
  br label %cond.end, !dbg !2813

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2813
  ret i32 %cond, !dbg !2813
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_df_ref_heap_safe_grow(%struct.VEC_df_ref_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !2814 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_heap** %vec_, metadata !2816, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 %size_, metadata !2817, metadata !DIExpression()), !dbg !2818
  %cmp = icmp sgt i32 %size_, -1, !dbg !2819
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2819

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** %vec_, align 8, !dbg !2819
  %tobool = icmp eq %struct.VEC_df_ref_heap* %0, null, !dbg !2819
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2819

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %0, i64 0, i32 0, !dbg !2819
  br label %cond.end, !dbg !2819

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_df_ref_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !2819
  %call = tail call fastcc i32 @VEC_df_ref_base_length(%struct.VEC_df_ref_base* %cond) #7, !dbg !2819
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** %vec_, align 8, !dbg !2819
  %tobool2 = icmp eq %struct.VEC_df_ref_heap* %1, null, !dbg !2819
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !2819

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %1, i64 0, i32 0, i32 0, !dbg !2819
  %2 = load i32, i32* %num, align 8, !dbg !2819
  br label %cond.end11, !dbg !2819

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !2819
  %sub = sub nsw i32 %size_, %cond12, !dbg !2819
  %call13 = tail call fastcc i32 @VEC_df_ref_heap_reserve_exact(%struct.VEC_df_ref_heap** %vec_, i32 %sub) #7, !dbg !2819
  %3 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** %vec_, align 8, !dbg !2819
  %num20 = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %3, i64 0, i32 0, i32 0, !dbg !2819
  store i32 %size_, i32* %num20, align 8, !dbg !2819
  ret void, !dbg !2819
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d** @VEC_df_ref_base_address(%struct.VEC_df_ref_base* %vec_) unnamed_addr #0 !dbg !2820 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_base* %vec_, metadata !2825, metadata !DIExpression()), !dbg !2826
  %tobool = icmp eq %struct.VEC_df_ref_base* %vec_, null, !dbg !2827
  %arraydecay = getelementptr inbounds %struct.VEC_df_ref_base, %struct.VEC_df_ref_base* %vec_, i64 0, i32 2, i64 0, !dbg !2827
  %cond = select i1 %tobool, %union.df_ref_d** null, %union.df_ref_d** %arraydecay, !dbg !2827
  ret %union.df_ref_d** %cond, !dbg !2827
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_df_ref_heap_reserve_exact(%struct.VEC_df_ref_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2828 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_heap** %vec_, metadata !2832, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2833, metadata !DIExpression()), !dbg !2835
  %0 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** %vec_, align 8, !dbg !2836
  %tobool = icmp eq %struct.VEC_df_ref_heap* %0, null, !dbg !2836
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2836

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %0, i64 0, i32 0, !dbg !2836
  br label %cond.end, !dbg !2836

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_df_ref_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2836
  %call = tail call fastcc i32 @VEC_df_ref_base_space(%struct.VEC_df_ref_base* %cond, i32 %alloc_) #7, !dbg !2836
  %tobool1 = icmp eq i32 %call, 0, !dbg !2836
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2834, metadata !DIExpression()), !dbg !2835
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2836

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_df_ref_heap** %vec_ to i8**, !dbg !2837
  %2 = load i8*, i8** %1, align 8, !dbg !2837
  %call3 = tail call i8* @vec_heap_p_reserve_exact(i8* %2, i32 %alloc_) #6, !dbg !2837
  store i8* %call3, i8** %1, align 8, !dbg !2837
  br label %if.end, !dbg !2837

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2836
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_df_ref_base_space(%struct.VEC_df_ref_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2839 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_base* %vec_, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2844, metadata !DIExpression()), !dbg !2845
  %tobool = icmp eq %struct.VEC_df_ref_base* %vec_, null, !dbg !2846
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2846

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_df_ref_base, %struct.VEC_df_ref_base* %vec_, i64 0, i32 1, !dbg !2846
  %0 = load i32, i32* %alloc, align 4, !dbg !2846
  %num = getelementptr inbounds %struct.VEC_df_ref_base, %struct.VEC_df_ref_base* %vec_, i64 0, i32 0, !dbg !2846
  %1 = load i32, i32* %num, align 8, !dbg !2846
  %sub = sub i32 %0, %1, !dbg !2846
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !2846
  br label %cond.end, !dbg !2846

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !2846
  br label %cond.end, !dbg !2846

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !2846
  ret i32 %cond, !dbg !2846
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_md_bb_info* @df_md_get_bb_info(i32 %index) unnamed_addr #0 !dbg !2847 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !2851, metadata !DIExpression()), !dbg !2852
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !2853
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 7, !dbg !2853
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !2853
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !2855
  %2 = load i32, i32* %block_info_size, align 8, !dbg !2855
  %cmp = icmp ugt i32 %2, %index, !dbg !2856
  br i1 %cmp, label %if.then, label %return, !dbg !2857

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !2858
  %3 = load i8**, i8*** %block_info, align 8, !dbg !2858
  %idxprom = zext i32 %index to i64, !dbg !2859
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !2859
  %4 = bitcast i8** %arrayidx3 to %struct.df_md_bb_info**, !dbg !2859
  %5 = load %struct.df_md_bb_info*, %struct.df_md_bb_info** %4, align 8, !dbg !2859
  br label %return, !dbg !2860

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_md_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !2861
  ret %struct.df_md_bb_info* %retval.0, !dbg !2862
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_lr_bb_info* @df_lr_get_bb_info(i32 %index) unnamed_addr #0 !dbg !2863 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !2867, metadata !DIExpression()), !dbg !2868
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !2869
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 1, !dbg !2869
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !2869
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !2871
  %2 = load i32, i32* %block_info_size, align 8, !dbg !2871
  %cmp = icmp ugt i32 %2, %index, !dbg !2872
  br i1 %cmp, label %if.then, label %return, !dbg !2873

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !2874
  %3 = load i8**, i8*** %block_info, align 8, !dbg !2874
  %idxprom = zext i32 %index to i64, !dbg !2875
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !2875
  %4 = bitcast i8** %arrayidx3 to %struct.df_lr_bb_info**, !dbg !2875
  %5 = load %struct.df_lr_bb_info*, %struct.df_lr_bb_info** %4, align 8, !dbg !2875
  br label %return, !dbg !2876

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_lr_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !2877
  ret %struct.df_lr_bb_info* %retval.0, !dbg !2878
}

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d** @VEC_df_ref_heap_safe_push(%struct.VEC_df_ref_heap** %vec_, %union.df_ref_d* %obj_) unnamed_addr #0 !dbg !2879 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_heap** %vec_, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata %union.df_ref_d* %obj_, metadata !2884, metadata !DIExpression()), !dbg !2885
  %call = tail call fastcc i32 @VEC_df_ref_heap_reserve(%struct.VEC_df_ref_heap** %vec_, i32 1) #7, !dbg !2886
  %0 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** %vec_, align 8, !dbg !2886
  %tobool = icmp eq %struct.VEC_df_ref_heap* %0, null, !dbg !2886
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2886

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %0, i64 0, i32 0, !dbg !2886
  br label %cond.end, !dbg !2886

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_df_ref_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2886
  %call1 = tail call fastcc %union.df_ref_d** @VEC_df_ref_base_quick_push(%struct.VEC_df_ref_base* %cond, %union.df_ref_d* %obj_) #7, !dbg !2886
  ret %union.df_ref_d** %call1, !dbg !2886
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_uses(%union.df_ref_d** %use_rec, i32 %top_flag) unnamed_addr #4 !dbg !2887 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec, metadata !2891, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 %top_flag, metadata !2892, metadata !DIExpression()), !dbg !2897
  br label %while.cond, !dbg !2898

while.cond:                                       ; preds = %if.end26, %entry
  %use_rec.addr.0 = phi %union.df_ref_d** [ %use_rec, %entry ], [ %incdec.ptr, %if.end26 ]
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.addr.0, metadata !2891, metadata !DIExpression()), !dbg !2897
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.addr.0, i64 1, !dbg !2899
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2891, metadata !DIExpression()), !dbg !2897
  %0 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.addr.0, align 8, !dbg !2900
  call void @llvm.dbg.value(metadata %union.df_ref_d* %0, metadata !2893, metadata !DIExpression()), !dbg !2897
  %cmp = icmp eq %union.df_ref_d* %0, null, !dbg !2901
  br i1 %cmp, label %while.end, label %while.body, !dbg !2898

while.body:                                       ; preds = %while.cond
  %1 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2902
  %bf.load = load i32, i32* %1, align 8, !dbg !2902
  %2 = lshr i32 %bf.load, 16, !dbg !2902
  %and = and i32 %2, 2, !dbg !2903
  %cmp1 = icmp eq i32 %and, %top_flag, !dbg !2904
  br i1 %cmp1, label %if.then, label %if.end26, !dbg !2905

if.then:                                          ; preds = %while.body
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2906
  %3 = load i32, i32* %regno, align 8, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %3, metadata !2894, metadata !DIExpression()), !dbg !2907
  %4 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @reg_defs, align 8, !dbg !2908
  %base3 = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %4, i64 0, i32 0, !dbg !2908
  %call = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_index(%struct.VEC_df_ref_base* %base3, i32 %3) #7, !dbg !2908
  %tobool4 = icmp eq %union.df_ref_d* %call, null, !dbg !2908
  br i1 %tobool4, label %if.end26, label %land.lhs.true, !dbg !2910

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_md, align 8, !dbg !2911
  %call5 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %5, i32 %3) #6, !dbg !2912
  %tobool6 = icmp eq i32 %call5, 0, !dbg !2912
  br i1 %tobool6, label %land.lhs.true7, label %if.end26, !dbg !2913

land.lhs.true7:                                   ; preds = %land.lhs.true
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_lr, align 8, !dbg !2914
  %call8 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %6, i32 %3) #6, !dbg !2915
  %tobool9 = icmp eq i32 %call8, 0, !dbg !2915
  br i1 %tobool9, label %if.end26, label %if.then10, !dbg !2916

if.then10:                                        ; preds = %land.lhs.true7
  %7 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @use_def_ref, align 8, !dbg !2917
  %base13 = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %7, i64 0, i32 0, !dbg !2917
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !2917
  %8 = load i32, i32* %id, align 4, !dbg !2917
  %9 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @reg_defs, align 8, !dbg !2917
  %base20 = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %9, i64 0, i32 0, !dbg !2917
  %call24 = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_index(%struct.VEC_df_ref_base* %base20, i32 %3) #7, !dbg !2917
  %call25 = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_replace(%struct.VEC_df_ref_base* %base13, i32 %8, %union.df_ref_d* %call24) #7, !dbg !2917
  br label %if.end26, !dbg !2917

if.end26:                                         ; preds = %land.lhs.true7, %land.lhs.true, %if.then, %if.then10, %while.body
  br label %while.cond, !dbg !2898, !llvm.loop !2918

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2920
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d** @df_get_artificial_uses(i32 %bb_index) unnamed_addr #0 !dbg !2921 {
entry:
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !2925, metadata !DIExpression()), !dbg !2926
  %call = tail call fastcc %struct.df_scan_bb_info* @df_scan_get_bb_info(i32 %bb_index) #7, !dbg !2927
  %artificial_uses = getelementptr inbounds %struct.df_scan_bb_info, %struct.df_scan_bb_info* %call, i64 0, i32 1, !dbg !2928
  %0 = load %union.df_ref_d**, %union.df_ref_d*** %artificial_uses, align 8, !dbg !2928
  ret %union.df_ref_d** %0, !dbg !2929
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_defs(%union.df_ref_d** %def_rec, i32 %top_flag) unnamed_addr #4 !dbg !2930 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec, metadata !2932, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 %top_flag, metadata !2933, metadata !DIExpression()), !dbg !2938
  br label %while.cond, !dbg !2939

while.cond:                                       ; preds = %cleanup, %entry
  %def_rec.addr.0 = phi %union.df_ref_d** [ %def_rec, %entry ], [ %incdec.ptr, %cleanup ]
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.addr.0, metadata !2932, metadata !DIExpression()), !dbg !2938
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.addr.0, i64 1, !dbg !2940
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !2932, metadata !DIExpression()), !dbg !2938
  %0 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.addr.0, align 8, !dbg !2941
  call void @llvm.dbg.value(metadata %union.df_ref_d* %0, metadata !2934, metadata !DIExpression()), !dbg !2938
  %cmp = icmp eq %union.df_ref_d* %0, null, !dbg !2942
  br i1 %cmp, label %while.end, label %while.body, !dbg !2939

while.body:                                       ; preds = %while.cond
  %1 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @reg_defs, align 8, !dbg !2943
  %base = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %1, i64 0, i32 0, !dbg !2943
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !2943
  %2 = load i32, i32* %regno, align 8, !dbg !2943
  %call = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_index(%struct.VEC_df_ref_base* %base, i32 %2) #7, !dbg !2943
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call, metadata !2935, metadata !DIExpression()), !dbg !2944
  %3 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !2945
  %bf.load = load i32, i32* %3, align 8, !dbg !2945
  %4 = lshr i32 %bf.load, 16, !dbg !2945
  %and = and i32 %4, 2, !dbg !2947
  %cmp3 = icmp eq i32 %and, %top_flag, !dbg !2948
  br i1 %cmp3, label %if.end, label %cleanup, !dbg !2949, !llvm.loop !2950

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* %regno, align 8, !dbg !2952
  call void @llvm.dbg.value(metadata i32 %5, metadata !2937, metadata !DIExpression()), !dbg !2944
  %tobool6 = icmp eq %union.df_ref_d* %call, null, !dbg !2953
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2955

if.then7:                                         ; preds = %if.end
  %call8 = tail call fastcc %union.df_ref_d** @VEC_df_ref_heap_safe_push(%struct.VEC_df_ref_heap** nonnull @reg_defs_stack, %union.df_ref_d* nonnull %call) #7, !dbg !2956
  br label %if.end18, !dbg !2956

if.else:                                          ; preds = %if.end
  %and12 = and i32 %bf.load, 5308416, !dbg !2957
  %tobool13 = icmp eq i32 %and12, 0, !dbg !2957
  br i1 %tobool13, label %if.else15, label %if.end18, !dbg !2960

if.else15:                                        ; preds = %if.else
  %call16 = tail call fastcc %union.df_ref_d** @VEC_df_ref_heap_safe_push(%struct.VEC_df_ref_heap** nonnull @reg_defs_stack, %union.df_ref_d* nonnull %0) #7, !dbg !2961
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.else15, %if.then7
  %bf.load20 = load i32, i32* %3, align 8, !dbg !2962
  %and22 = and i32 %bf.load20, 5308416, !dbg !2964
  %tobool23 = icmp eq i32 %and22, 0, !dbg !2964
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @local_md, align 8, !dbg !2965
  br i1 %tobool23, label %if.else33, label %if.then24, !dbg !2966

if.then24:                                        ; preds = %if.end18
  %call25 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %5) #6, !dbg !2967
  %7 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @reg_defs, align 8, !dbg !2969
  %base28 = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %7, i64 0, i32 0, !dbg !2969
  %call32 = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_replace(%struct.VEC_df_ref_base* %base28, i32 %5, %union.df_ref_d* null) #7, !dbg !2969
  br label %cleanup, !dbg !2970

if.else33:                                        ; preds = %if.end18
  %call34 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %6, i32 %5) #6, !dbg !2971
  %8 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @reg_defs, align 8, !dbg !2973
  %base37 = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %8, i64 0, i32 0, !dbg !2973
  %call41 = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_replace(%struct.VEC_df_ref_base* %base37, i32 %5, %union.df_ref_d* nonnull %0) #7, !dbg !2973
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.then24, %if.else33
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2974
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d** @df_get_artificial_defs(i32 %bb_index) unnamed_addr #0 !dbg !2975 {
entry:
  call void @llvm.dbg.value(metadata i32 %bb_index, metadata !2977, metadata !DIExpression()), !dbg !2978
  %call = tail call fastcc %struct.df_scan_bb_info* @df_scan_get_bb_info(i32 %bb_index) #7, !dbg !2979
  %artificial_defs = getelementptr inbounds %struct.df_scan_bb_info, %struct.df_scan_bb_info* %call, i64 0, i32 0, !dbg !2980
  %0 = load %union.df_ref_d**, %union.df_ref_d*** %artificial_defs, align 8, !dbg !2980
  ret %union.df_ref_d** %0, !dbg !2981
}

declare dso_local void @df_simulate_initialize_forwards(%struct.basic_block_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @df_simulate_one_insn_forwards(%struct.basic_block_def*, %struct.rtx_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_df_ref_heap_reserve(%struct.VEC_df_ref_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2982 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_heap** %vec_, metadata !2984, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32 1, metadata !2985, metadata !DIExpression()), !dbg !2987
  %0 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** %vec_, align 8, !dbg !2988
  %tobool = icmp eq %struct.VEC_df_ref_heap* %0, null, !dbg !2988
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2988

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %0, i64 0, i32 0, !dbg !2988
  br label %cond.end, !dbg !2988

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_df_ref_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2988
  %call = tail call fastcc i32 @VEC_df_ref_base_space(%struct.VEC_df_ref_base* %cond, i32 1) #7, !dbg !2988
  %tobool1 = icmp eq i32 %call, 0, !dbg !2988
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2988
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2986, metadata !DIExpression()), !dbg !2987
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2988

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_df_ref_heap** %vec_ to i8**, !dbg !2989
  %2 = load i8*, i8** %1, align 8, !dbg !2989
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !2989
  store i8* %call3, i8** %1, align 8, !dbg !2989
  br label %if.end, !dbg !2989

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2988
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d** @VEC_df_ref_base_quick_push(%struct.VEC_df_ref_base* %vec_, %union.df_ref_d* %obj_) unnamed_addr #0 !dbg !2991 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_base* %vec_, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata %union.df_ref_d* %obj_, metadata !2996, metadata !DIExpression()), !dbg !2998
  %num1 = getelementptr inbounds %struct.VEC_df_ref_base, %struct.VEC_df_ref_base* %vec_, i64 0, i32 0, !dbg !2999
  %0 = load i32, i32* %num1, align 8, !dbg !2999
  %inc = add i32 %0, 1, !dbg !2999
  store i32 %inc, i32* %num1, align 8, !dbg !2999
  %idxprom = zext i32 %0 to i64, !dbg !2999
  %arrayidx = getelementptr inbounds %struct.VEC_df_ref_base, %struct.VEC_df_ref_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2999
  call void @llvm.dbg.value(metadata %union.df_ref_d** %arrayidx, metadata !2997, metadata !DIExpression()), !dbg !2998
  store %union.df_ref_d* %obj_, %union.df_ref_d** %arrayidx, align 8, !dbg !2999
  ret %union.df_ref_d** %arrayidx, !dbg !2999
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d* @VEC_df_ref_base_index(%struct.VEC_df_ref_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3000 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_base* %vec_, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3005, metadata !DIExpression()), !dbg !3006
  br label %land.end, !dbg !3007

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3007
  %arrayidx = getelementptr inbounds %struct.VEC_df_ref_base, %struct.VEC_df_ref_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3007
  %0 = load %union.df_ref_d*, %union.df_ref_d** %arrayidx, align 8, !dbg !3007
  ret %union.df_ref_d* %0, !dbg !3007
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d* @VEC_df_ref_base_replace(%struct.VEC_df_ref_base* %vec_, i32 %ix_, %union.df_ref_d* %obj_) unnamed_addr #0 !dbg !3008 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_base* %vec_, metadata !3012, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.df_ref_d* %obj_, metadata !3014, metadata !DIExpression()), !dbg !3016
  %idxprom = zext i32 %ix_ to i64, !dbg !3017
  %arrayidx = getelementptr inbounds %struct.VEC_df_ref_base, %struct.VEC_df_ref_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3017
  %0 = load %union.df_ref_d*, %union.df_ref_d** %arrayidx, align 8, !dbg !3017
  call void @llvm.dbg.value(metadata %union.df_ref_d* %0, metadata !3015, metadata !DIExpression()), !dbg !3016
  store %union.df_ref_d* %obj_, %union.df_ref_d** %arrayidx, align 8, !dbg !3017
  ret %union.df_ref_d* %0, !dbg !3017
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_scan_bb_info* @df_scan_get_bb_info(i32 %index) unnamed_addr #0 !dbg !3018 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3022, metadata !DIExpression()), !dbg !3023
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3024
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 0, !dbg !3024
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3024
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !3026
  %2 = load i32, i32* %block_info_size, align 8, !dbg !3026
  %cmp = icmp ugt i32 %2, %index, !dbg !3027
  br i1 %cmp, label %if.then, label %return, !dbg !3028

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !3029
  %3 = load i8**, i8*** %block_info, align 8, !dbg !3029
  %idxprom = zext i32 %index to i64, !dbg !3030
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !3030
  %4 = bitcast i8** %arrayidx3 to %struct.df_scan_bb_info**, !dbg !3030
  %5 = load %struct.df_scan_bb_info*, %struct.df_scan_bb_info** %4, align 8, !dbg !3030
  br label %return, !dbg !3031

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_scan_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !3032
  ret %struct.df_scan_bb_info* %retval.0, !dbg !3033
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d* @VEC_df_ref_base_pop(%struct.VEC_df_ref_base* %vec_) unnamed_addr #0 !dbg !3034 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_df_ref_base* %vec_, metadata !3038, metadata !DIExpression()), !dbg !3040
  %num1 = getelementptr inbounds %struct.VEC_df_ref_base, %struct.VEC_df_ref_base* %vec_, i64 0, i32 0, !dbg !3041
  %0 = load i32, i32* %num1, align 8, !dbg !3041
  %dec = add i32 %0, -1, !dbg !3041
  store i32 %dec, i32* %num1, align 8, !dbg !3041
  %idxprom = zext i32 %dec to i64, !dbg !3041
  %arrayidx = getelementptr inbounds %struct.VEC_df_ref_base, %struct.VEC_df_ref_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3041
  %1 = load %union.df_ref_d*, %union.df_ref_d** %arrayidx, align 8, !dbg !3041
  call void @llvm.dbg.value(metadata %union.df_ref_d* %1, metadata !3039, metadata !DIExpression()), !dbg !3040
  ret %union.df_ref_d* %1, !dbg !3041
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !3042 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3048, metadata !DIExpression()), !dbg !3049
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3050
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3050

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3050
  %0 = load i32, i32* %num, align 8, !dbg !3050
  br label %cond.end, !dbg !3050

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3050
  ret i32 %cond, !dbg !3050
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3051 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3055, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3056, metadata !DIExpression()), !dbg !3057
  br label %land.end, !dbg !3058

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3058
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3058
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !3058
  ret %struct.loop* %0, !dbg !3058
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.df_ref_d* @get_def_for_use(%union.df_ref_d* %use) unnamed_addr #0 !dbg !3059 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use, metadata !3063, metadata !DIExpression()), !dbg !3064
  %0 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @use_def_ref, align 8, !dbg !3065
  %base = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %0, i64 0, i32 0, !dbg !3065
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !3065
  %1 = load i32, i32* %id, align 4, !dbg !3065
  %call = tail call fastcc %union.df_ref_d* @VEC_df_ref_base_index(%struct.VEC_df_ref_base* %base, i32 %1) #7, !dbg !3065
  ret %union.df_ref_d* %call, !dbg !3066
}

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @multiple_sets(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @forward_propagate_and_simplify(%union.df_ref_d* %use, %struct.rtx_def* %def_insn, %struct.rtx_def* %def_set) unnamed_addr #4 !dbg !3067 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use, metadata !3071, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata %struct.rtx_def* %def_insn, metadata !3072, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata %struct.rtx_def* %def_set, metadata !3073, metadata !DIExpression()), !dbg !3095
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3096
  %0 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !3096
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %0, i64 0, i32 0, !dbg !3096
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3096
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3074, metadata !DIExpression()), !dbg !3095
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3097
  %bf.load = load i32, i32* %2, align 8, !dbg !3097
  %bf.clear = and i32 %bf.load, 65535, !dbg !3097
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3097
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3097

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !3097
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !3097

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !3097
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !3097

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !3097
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !3097

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, !dbg !3097
  %3 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3097
  %4 = bitcast %union.rtunion_def* %3 to i32**, !dbg !3097
  %5 = load i32*, i32** %4, align 8, !dbg !3097
  %bf.load12 = load i32, i32* %5, align 8, !dbg !3097
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !3097
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !3097
  %6 = bitcast i32* %5 to %struct.rtx_def*, !dbg !3097
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !3097

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %1, %struct.rtx_def* %6) #6, !dbg !3097
  br label %cond.end25, !dbg !3097

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %6, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !3097
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond26, metadata !3075, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i32 -1, metadata !3082, metadata !DIExpression()), !dbg !3095
  %u27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, !dbg !3098
  %7 = getelementptr inbounds %union.u, %union.u* %u27, i64 1, i32 0, i32 0, i64 1, !dbg !3098
  %rt_int = bitcast %union.rtunion_def* %7 to i32*, !dbg !3098
  %8 = load i32, i32* %rt_int, align 8, !dbg !3098
  %cmp30 = icmp slt i32 %8, 0, !dbg !3100
  br i1 %cmp30, label %if.then, label %if.end, !dbg !3101

if.then:                                          ; preds = %cond.end25
  %9 = getelementptr inbounds %union.u, %union.u* %u27, i64 1, i32 0, i32 0, i64 0, !dbg !3102
  %rt_rtx34 = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !3102
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx34, align 8, !dbg !3102
  %call35 = tail call i32 @asm_noperands(%struct.rtx_def* %10) #6, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %call35, metadata !3082, metadata !DIExpression()), !dbg !3095
  br label %if.end, !dbg !3104

if.end:                                           ; preds = %if.then, %cond.end25
  %asm_use.0 = phi i32 [ %call35, %if.then ], [ -1, %cond.end25 ], !dbg !3095
  call void @llvm.dbg.value(metadata i32 %asm_use.0, metadata !3082, metadata !DIExpression()), !dbg !3095
  %tobool = icmp eq %struct.rtx_def* %cond26, null, !dbg !3105
  %cmp36 = icmp slt i32 %asm_use.0, 0, !dbg !3107
  %or.cond = and i1 %tobool, %cmp36, !dbg !3108
  br i1 %or.cond, label %land.lhs.true37, label %if.end42, !dbg !3108

land.lhs.true37:                                  ; preds = %if.end
  %bf.load38 = load i32, i32* %2, align 8, !dbg !3109
  %bf.clear39 = and i32 %bf.load38, 65535, !dbg !3109
  %cmp40 = icmp eq i32 %bf.clear39, 7, !dbg !3109
  br i1 %cmp40, label %if.end42, label %cleanup, !dbg !3110

if.end42:                                         ; preds = %if.end, %land.lhs.true37
  br i1 %tobool, label %if.end53, label %land.lhs.true44, !dbg !3111

land.lhs.true44:                                  ; preds = %if.end42
  %arrayidx47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3113
  %11 = bitcast %union.rtunion_def* %arrayidx47 to i32**, !dbg !3113
  %12 = load i32*, i32** %11, align 8, !dbg !3113
  %bf.load49 = load i32, i32* %12, align 8, !dbg !3113
  %bf.clear50 = and i32 %bf.load49, 16711680, !dbg !3113
  %cmp51 = icmp eq i32 %bf.clear50, 0, !dbg !3114
  br i1 %cmp51, label %cleanup, label %if.end53, !dbg !3115

if.end53:                                         ; preds = %if.end42, %land.lhs.true44
  %reg55 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3116
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg55, align 8, !dbg !3116
  call void @llvm.dbg.value(metadata %struct.rtx_def* %13, metadata !3077, metadata !DIExpression()), !dbg !3095
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 0, !dbg !3117
  %bf.load56 = load i32, i32* %14, align 8, !dbg !3117
  %bf.clear57 = and i32 %bf.load56, 65535, !dbg !3117
  %cmp58 = icmp eq i32 %bf.clear57, 39, !dbg !3119
  br i1 %cmp58, label %land.lhs.true59, label %if.end93, !dbg !3120

land.lhs.true59:                                  ; preds = %if.end53
  %arrayidx62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_set, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3121
  %15 = bitcast %union.rtunion_def* %arrayidx62 to i32**, !dbg !3121
  %16 = load i32*, i32** %15, align 8, !dbg !3121
  %bf.load64 = load i32, i32* %16, align 8, !dbg !3121
  %bf.clear65 = and i32 %bf.load64, 65535, !dbg !3121
  %cmp66 = icmp eq i32 %bf.clear65, 39, !dbg !3122
  br i1 %cmp66, label %land.lhs.true67, label %if.end93, !dbg !3123

land.lhs.true67:                                  ; preds = %land.lhs.true59
  %17 = getelementptr inbounds i32, i32* %16, i64 4, !dbg !3124
  %18 = load i32, i32* %17, align 8, !dbg !3124
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3125
  %rt_uint78 = bitcast %union.rtunion_def* %19 to i32*, !dbg !3125
  %20 = load i32, i32* %rt_uint78, align 8, !dbg !3125
  %cmp79 = icmp eq i32 %18, %20, !dbg !3126
  br i1 %cmp79, label %lor.lhs.false80, label %cleanup, !dbg !3127

lor.lhs.false80:                                  ; preds = %land.lhs.true67
  %bf.lshr862 = xor i32 %bf.load64, %bf.load56, !dbg !3128
  %21 = and i32 %bf.lshr862, 16711680, !dbg !3128
  %cmp91 = icmp eq i32 %21, 0, !dbg !3128
  br i1 %cmp91, label %if.end93, label %cleanup, !dbg !3129

if.end93:                                         ; preds = %lor.lhs.false80, %land.lhs.true59, %if.end53
  %cmp96 = icmp eq i32 %bf.clear57, 37, !dbg !3130
  br i1 %cmp96, label %land.lhs.true97, label %if.end106, !dbg !3132

land.lhs.true97:                                  ; preds = %if.end93
  %arrayidx100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_set, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3133
  %22 = bitcast %union.rtunion_def* %arrayidx100 to i32**, !dbg !3133
  %23 = load i32*, i32** %22, align 8, !dbg !3133
  %bf.load102 = load i32, i32* %23, align 8, !dbg !3133
  %bf.clear103 = and i32 %bf.load102, 65535, !dbg !3133
  %cmp104 = icmp eq i32 %bf.clear103, 39, !dbg !3134
  br i1 %cmp104, label %cleanup, label %if.end106, !dbg !3135

if.end106:                                        ; preds = %land.lhs.true97, %if.end93
  br i1 %cmp58, label %land.lhs.true110, label %if.end123, !dbg !3136

land.lhs.true110:                                 ; preds = %if.end106
  %arrayidx113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_set, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3138
  %24 = bitcast %union.rtunion_def* %arrayidx113 to i32**, !dbg !3138
  %25 = load i32*, i32** %24, align 8, !dbg !3138
  %bf.load115 = load i32, i32* %25, align 8, !dbg !3138
  %bf.clear116 = and i32 %bf.load115, 65535, !dbg !3138
  %cmp117 = icmp eq i32 %bf.clear116, 37, !dbg !3138
  br i1 %cmp117, label %if.then118, label %if.end123, !dbg !3139

if.then118:                                       ; preds = %land.lhs.true110
  %arrayidx121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3140
  %rt_rtx122 = bitcast %union.rtunion_def* %arrayidx121 to %struct.rtx_def**, !dbg !3140
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx122, align 8, !dbg !3140
  call void @llvm.dbg.value(metadata %struct.rtx_def* %26, metadata !3077, metadata !DIExpression()), !dbg !3095
  br label %if.end123, !dbg !3141

if.end123:                                        ; preds = %if.then118, %land.lhs.true110, %if.end106
  %reg.0 = phi %struct.rtx_def* [ %26, %if.then118 ], [ %13, %land.lhs.true110 ], [ %13, %if.end106 ], !dbg !3095
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.0, metadata !3077, metadata !DIExpression()), !dbg !3095
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_set, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3142
  %rt_rtx127 = bitcast %union.rtunion_def* %27 to %struct.rtx_def**, !dbg !3142
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx127, align 8, !dbg !3142
  call void @llvm.dbg.value(metadata %struct.rtx_def* %28, metadata !3076, metadata !DIExpression()), !dbg !3095
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i64 0, i32 0, !dbg !3143
  %bf.load128 = load i32, i32* %29, align 8, !dbg !3143
  %bf.clear129 = and i32 %bf.load128, 65535, !dbg !3143
  %idxprom = zext i32 %bf.clear129 to i64, !dbg !3143
  %arrayidx130 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !3143
  %30 = load i32, i32* %arrayidx130, align 4, !dbg !3143
  %cmp131 = icmp eq i32 %30, 9, !dbg !3143
  br i1 %cmp131, label %if.end136, label %land.lhs.true132, !dbg !3145

land.lhs.true132:                                 ; preds = %if.end123
  %call133 = tail call fastcc zeroext i8 @all_uses_available_at(%struct.rtx_def* %def_insn, %struct.rtx_def* %1) #7, !dbg !3146
  %tobool134 = icmp eq i8 %call133, 0, !dbg !3146
  br i1 %tobool134, label %cleanup, label %land.lhs.true132.if.end136_crit_edge, !dbg !3147

land.lhs.true132.if.end136_crit_edge:             ; preds = %land.lhs.true132
  %bf.load137.pre = load i32, i32* %29, align 8, !dbg !3148
  br label %if.end136, !dbg !3147

if.end136:                                        ; preds = %land.lhs.true132.if.end136_crit_edge, %if.end123
  %bf.load141 = phi i32 [ %bf.load137.pre, %land.lhs.true132.if.end136_crit_edge ], [ %bf.load128, %if.end123 ], !dbg !3148
  %bf.clear138 = and i32 %bf.load141, 65535, !dbg !3148
  %cmp139 = icmp eq i32 %bf.clear138, 43, !dbg !3148
  br i1 %cmp139, label %land.lhs.true140, label %if.end173, !dbg !3149

land.lhs.true140:                                 ; preds = %if.end136
  %bf.clear143 = and i32 %bf.load141, 67108864, !dbg !3150
  %tobool144 = icmp eq i32 %bf.clear143, 0, !dbg !3150
  br i1 %tobool144, label %if.end173, label %if.then145, !dbg !3151

if.then145:                                       ; preds = %land.lhs.true140
  %call146 = tail call %struct.rtx_def* @avoid_constant_pool_reference(%struct.rtx_def* %28) #6, !dbg !3152
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call146, metadata !3083, metadata !DIExpression()), !dbg !3153
  %cmp147 = icmp ne %struct.rtx_def* %call146, %28, !dbg !3154
  %tobool149 = icmp ne %struct.rtx_def* %cond26, null, !dbg !3155
  %or.cond1 = and i1 %cmp147, %tobool149, !dbg !3156
  br i1 %or.cond1, label %if.then150, label %cleanup, !dbg !3156

if.then150:                                       ; preds = %if.then145
  %call151 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %1, i32 4, %struct.rtx_def* null) #6, !dbg !3157
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call151, metadata !3086, metadata !DIExpression()), !dbg !3158
  %tobool152 = icmp eq %struct.rtx_def* %call151, null, !dbg !3159
  br i1 %tobool152, label %cond.false158, label %cond.true153, !dbg !3159

cond.true153:                                     ; preds = %if.then150
  %arrayidx156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call151, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3160
  br label %cond.end163, !dbg !3159

cond.false158:                                    ; preds = %if.then150
  %31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3161
  br label %cond.end163, !dbg !3159

cond.end163:                                      ; preds = %cond.false158, %cond.true153
  %cond164.in.in = phi %union.rtunion_def* [ %arrayidx156, %cond.true153 ], [ %31, %cond.false158 ]
  %cond164.in = bitcast %union.rtunion_def* %cond164.in.in to %struct.rtx_def**, !dbg !3158
  %cond164 = load %struct.rtx_def*, %struct.rtx_def** %cond164.in, align 8, !dbg !3159
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond164, metadata !3089, metadata !DIExpression()), !dbg !3158
  %call166 = tail call %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def* %cond164, %struct.rtx_def* %28, %struct.rtx_def* %call146) #6, !dbg !3162
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call166, metadata !3090, metadata !DIExpression()), !dbg !3158
  %cmp167 = icmp eq %struct.rtx_def* %cond164, %call166, !dbg !3163
  br i1 %cmp167, label %cleanup, label %if.then168, !dbg !3165

if.then168:                                       ; preds = %cond.end163
  %call169 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %call166) #6, !dbg !3166
  %call170 = tail call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %1, i32 4, %struct.rtx_def* %call169) #6, !dbg !3167
  br label %cleanup, !dbg !3167

if.end173:                                        ; preds = %land.lhs.true140, %if.end136
  %cmp174 = icmp sgt i32 %asm_use.0, -1, !dbg !3168
  br i1 %cmp174, label %if.then175, label %if.end177, !dbg !3170

if.then175:                                       ; preds = %if.end173
  %call176 = tail call fastcc zeroext i8 @forward_propagate_asm(%union.df_ref_d* %use, %struct.rtx_def* %def_insn, %struct.rtx_def* %def_set, %struct.rtx_def* %reg.0) #7, !dbg !3171
  br label %cleanup, !dbg !3172

if.end177:                                        ; preds = %if.end173
  %32 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3173
  %bf.load179 = load i32, i32* %32, align 8, !dbg !3173
  %bf.clear181 = and i32 %bf.load179, 65280, !dbg !3173
  %cmp182 = icmp eq i32 %bf.clear181, 768, !dbg !3174
  br i1 %cmp182, label %if.then183, label %if.else, !dbg !3175

if.then183:                                       ; preds = %if.end177
  %arrayidx186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3176
  call void @llvm.dbg.value(metadata %union.rtunion_def* %arrayidx186, metadata !3079, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 0, metadata !3080, metadata !DIExpression()), !dbg !3095
  br label %if.end218, !dbg !3178

if.else:                                          ; preds = %if.end177
  br i1 %tobool, label %if.then189, label %if.else198, !dbg !3179

if.then189:                                       ; preds = %if.else
  %33 = getelementptr inbounds %union.u, %union.u* %u27, i64 1, i32 0, i32 0, i64 0, !dbg !3180
  %rt_rtx193 = bitcast %union.rtunion_def* %33 to %struct.rtx_def**, !dbg !3180
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx193, align 8, !dbg !3180
  %35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3180
  call void @llvm.dbg.value(metadata %union.rtunion_def* %35, metadata !3079, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 0, metadata !3080, metadata !DIExpression()), !dbg !3095
  br label %if.end218, !dbg !3182

if.else198:                                       ; preds = %if.else
  %call200 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %1, i32 4, %struct.rtx_def* null) #6, !dbg !3183
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call200, metadata !3091, metadata !DIExpression()), !dbg !3184
  %bf.load202 = load i32, i32* %32, align 8, !dbg !3185
  %and = and i32 %bf.load202, 262144, !dbg !3187
  %tobool203 = icmp eq i32 %and, 0, !dbg !3187
  %arrayidx207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call200, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3188
  %36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3188
  %loc.0.v = select i1 %tobool203, %union.rtunion_def* %36, %union.rtunion_def* %arrayidx207, !dbg !3188
  call void @llvm.dbg.value(metadata %union.rtunion_def* %loc.0.v, metadata !3079, metadata !DIExpression()), !dbg !3095
  %cmp215 = icmp eq %struct.rtx_def* %call200, null, !dbg !3189
  %conv216 = zext i1 %cmp215 to i8, !dbg !3190
  call void @llvm.dbg.value(metadata i8 %conv216, metadata !3080, metadata !DIExpression()), !dbg !3095
  br label %if.end218

if.end218:                                        ; preds = %if.then189, %if.else198, %if.then183
  %loc.2.in = phi %union.rtunion_def* [ %arrayidx186, %if.then183 ], [ %loc.0.v, %if.else198 ], [ %35, %if.then189 ]
  %set_reg_equal.1 = phi i8 [ 0, %if.then183 ], [ %conv216, %if.else198 ], [ 0, %if.then189 ], !dbg !3191
  %loc.2 = bitcast %union.rtunion_def* %loc.2.in to %struct.rtx_def**, !dbg !3191
  call void @llvm.dbg.value(metadata i8 %set_reg_equal.1, metadata !3080, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc.2, metadata !3079, metadata !DIExpression()), !dbg !3095
  %37 = bitcast %union.rtunion_def* %loc.2.in to i32**, !dbg !3192
  %38 = load i32*, i32** %37, align 8, !dbg !3192
  %bf.load219 = load i32, i32* %38, align 8, !dbg !3192
  %bf.clear221 = and i32 %bf.load219, 16711680, !dbg !3192
  %cmp222 = icmp eq i32 %bf.clear221, 0, !dbg !3194
  %39 = bitcast i32* %38 to %struct.rtx_def*, !dbg !3195
  br i1 %cmp222, label %if.then224, label %if.else232, !dbg !3195

if.then224:                                       ; preds = %if.end218
  %arrayidx227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3196
  %mode.0.in.in.in.in.phi.trans.insert = bitcast %union.rtunion_def* %arrayidx227 to i32**, !dbg !3197
  %mode.0.in.in.in.pre = load i32*, i32** %mode.0.in.in.in.in.phi.trans.insert, align 8, !dbg !3197
  %mode.0.in.in.pre = load i32, i32* %mode.0.in.in.in.pre, align 8, !dbg !3197
  br label %if.end236, !dbg !3198

if.else232:                                       ; preds = %if.end218
  br label %if.end236

if.end236:                                        ; preds = %if.else232, %if.then224
  %mode.0.in.in = phi i32 [ %mode.0.in.in.pre, %if.then224 ], [ %bf.load219, %if.else232 ], !dbg !3197
  %mode.0.in = lshr i32 %mode.0.in.in, 16, !dbg !3197
  %mode.0 = and i32 %mode.0.in, 255, !dbg !3197
  call void @llvm.dbg.value(metadata i32 %mode.0, metadata !3081, metadata !DIExpression()), !dbg !3095
  %arrayidx239 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 1, !dbg !3199
  %rt_bb = bitcast %struct.object_block** %arrayidx239 to %struct.basic_block_def**, !dbg !3199
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3199
  %call240 = tail call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %40) #6, !dbg !3200
  %call241 = tail call fastcc %struct.rtx_def* @propagate_rtx(%struct.rtx_def* %39, i32 %mode.0, %struct.rtx_def* %reg.0, %struct.rtx_def* %28, i8 zeroext %call240) #7, !dbg !3201
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call241, metadata !3078, metadata !DIExpression()), !dbg !3095
  %tobool242 = icmp eq %struct.rtx_def* %call241, null, !dbg !3202
  br i1 %tobool242, label %cleanup, label %if.end244, !dbg !3204

if.end244:                                        ; preds = %if.end236
  %call245 = tail call fastcc zeroext i8 @try_fwprop_subst(%union.df_ref_d* %use, %struct.rtx_def** %loc.2, %struct.rtx_def* nonnull %call241, %struct.rtx_def* %def_insn, i8 zeroext %set_reg_equal.1) #7, !dbg !3205
  br label %cleanup, !dbg !3206

cleanup:                                          ; preds = %lor.lhs.false80, %land.lhs.true67, %cond.end163, %if.end236, %land.lhs.true132, %if.then145, %if.then168, %land.lhs.true97, %land.lhs.true44, %land.lhs.true37, %if.end244, %if.then175
  %retval.0 = phi i8 [ %call176, %if.then175 ], [ %call245, %if.end244 ], [ 0, %land.lhs.true37 ], [ 0, %land.lhs.true44 ], [ 0, %lor.lhs.false80 ], [ 0, %land.lhs.true67 ], [ 0, %land.lhs.true97 ], [ 0, %land.lhs.true132 ], [ 0, %cond.end163 ], [ 0, %if.then168 ], [ 0, %if.then145 ], [ 0, %if.end236 ], !dbg !3095
  ret i8 %retval.0, !dbg !3207
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @forward_propagate_subreg(%union.df_ref_d* %use, %struct.rtx_def* %def_insn, %struct.rtx_def* %def_set) unnamed_addr #4 !dbg !3208 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use, metadata !3210, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata %struct.rtx_def* %def_insn, metadata !3211, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata %struct.rtx_def* %def_set, metadata !3212, metadata !DIExpression()), !dbg !3217
  %reg = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3218
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !3218
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3213, metadata !DIExpression()), !dbg !3217
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !3219
  %bf.load = load i32, i32* %1, align 8, !dbg !3219
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3219
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3219
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3216, metadata !DIExpression()), !dbg !3217
  %bf.clear2 = and i32 %bf.load, 65535, !dbg !3220
  %cmp = icmp eq i32 %bf.clear2, 39, !dbg !3222
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !3223

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_set, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3224
  %2 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !3224
  %3 = load i32*, i32** %2, align 8, !dbg !3224
  %bf.load3 = load i32, i32* %3, align 8, !dbg !3224
  %bf.clear4 = and i32 %bf.load3, 65535, !dbg !3224
  %cmp5 = icmp eq i32 %bf.clear4, 37, !dbg !3224
  br i1 %cmp5, label %if.end, label %cleanup, !dbg !3225

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = zext i32 %bf.clear to i64, !dbg !3226
  %arrayidx6 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !3226
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3226
  %arrayidx10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3228
  %5 = bitcast %union.rtunion_def* %arrayidx10 to i32**, !dbg !3228
  %6 = load i32*, i32** %5, align 8, !dbg !3228
  %bf.load12 = load i32, i32* %6, align 8, !dbg !3228
  %bf.lshr13 = lshr i32 %bf.load12, 16, !dbg !3228
  %bf.clear14 = and i32 %bf.lshr13, 255, !dbg !3228
  %idxprom15 = zext i32 %bf.clear14 to i64, !dbg !3228
  %arrayidx16 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom15, !dbg !3228
  %7 = load i8, i8* %arrayidx16, align 1, !dbg !3228
  %cmp19 = icmp ugt i8 %4, %7, !dbg !3229
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !3230

if.then21:                                        ; preds = %if.end
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3231
  %8 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !3231
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %8, i64 0, i32 0, !dbg !3231
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3231
  call void @llvm.dbg.value(metadata %struct.rtx_def* %9, metadata !3214, metadata !DIExpression()), !dbg !3217
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_set, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3233
  %rt_rtx26 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !3233
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx26, align 8, !dbg !3233
  call void @llvm.dbg.value(metadata %struct.rtx_def* %11, metadata !3215, metadata !DIExpression()), !dbg !3217
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 0, !dbg !3234
  %bf.load27 = load i32, i32* %12, align 8, !dbg !3234
  %bf.clear28 = and i32 %bf.load27, 65535, !dbg !3234
  %cmp29 = icmp eq i32 %bf.clear28, 39, !dbg !3236
  br i1 %cmp29, label %land.lhs.true, label %cleanup, !dbg !3237

land.lhs.true:                                    ; preds = %if.then21
  %arrayidx33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3238
  %13 = bitcast %union.rtunion_def* %arrayidx33 to i32**, !dbg !3238
  %14 = load i32*, i32** %13, align 8, !dbg !3238
  %bf.load35 = load i32, i32* %14, align 8, !dbg !3238
  %bf.clear36 = and i32 %bf.load35, 65535, !dbg !3238
  %cmp37 = icmp eq i32 %bf.clear36, 37, !dbg !3238
  br i1 %cmp37, label %land.lhs.true39, label %cleanup, !dbg !3239

land.lhs.true39:                                  ; preds = %land.lhs.true
  %bf.lshr45 = lshr i32 %bf.load35, 16, !dbg !3240
  %bf.clear46 = and i32 %bf.lshr45, 255, !dbg !3240
  %cmp47 = icmp eq i32 %bf.clear46, %bf.clear, !dbg !3241
  br i1 %cmp47, label %land.lhs.true49, label %cleanup, !dbg !3242

land.lhs.true49:                                  ; preds = %land.lhs.true39
  %call = tail call i32 @subreg_lowpart_p(%struct.rtx_def* %11) #6, !dbg !3243
  %tobool = icmp eq i32 %call, 0, !dbg !3243
  br i1 %tobool, label %cleanup, label %land.lhs.true50, !dbg !3244

land.lhs.true50:                                  ; preds = %land.lhs.true49
  %call51 = tail call fastcc zeroext i8 @all_uses_available_at(%struct.rtx_def* %def_insn, %struct.rtx_def* %9) #7, !dbg !3245
  %tobool53 = icmp eq i8 %call51, 0, !dbg !3245
  br i1 %tobool53, label %cleanup, label %if.then54, !dbg !3246

if.then54:                                        ; preds = %land.lhs.true50
  %15 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3247
  %bf.load56 = load i32, i32* %15, align 8, !dbg !3247
  %bf.clear57 = and i32 %bf.load56, 255, !dbg !3247
  %cmp58 = icmp eq i32 %bf.clear57, 2, !dbg !3247
  br i1 %cmp58, label %cond.true, label %lor.lhs.false60, !dbg !3247

lor.lhs.false60:                                  ; preds = %if.then54
  %cmp64 = icmp eq i32 %bf.clear57, 3, !dbg !3247
  br i1 %cmp64, label %cond.true, label %cond.end, !dbg !3247

cond.true:                                        ; preds = %lor.lhs.false60, %if.then54
  %loc = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 1, !dbg !3247
  %16 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8, !dbg !3247
  br label %cond.end, !dbg !3247

cond.end:                                         ; preds = %lor.lhs.false60, %cond.true
  %cond = phi %struct.rtx_def** [ %16, %cond.true ], [ null, %lor.lhs.false60 ], !dbg !3247
  %rt_rtx69 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**, !dbg !3248
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx69, align 8, !dbg !3248
  %call70 = tail call fastcc zeroext i8 @try_fwprop_subst(%union.df_ref_d* %use, %struct.rtx_def** %cond, %struct.rtx_def* %17, %struct.rtx_def* %def_insn, i8 zeroext 0) #7, !dbg !3249
  br label %cleanup, !dbg !3250

if.else:                                          ; preds = %if.end
  %call72 = tail call i32 @subreg_lowpart_p(%struct.rtx_def* %0) #6, !dbg !3251
  %tobool73 = icmp eq i32 %call72, 0, !dbg !3251
  br i1 %tobool73, label %cleanup, label %if.then74, !dbg !3253

if.then74:                                        ; preds = %if.else
  %insn_info76 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3254
  %18 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info76, align 8, !dbg !3254
  %insn77 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %18, i64 0, i32 0, !dbg !3254
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn77, align 8, !dbg !3254
  call void @llvm.dbg.value(metadata %struct.rtx_def* %19, metadata !3214, metadata !DIExpression()), !dbg !3217
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_set, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3256
  %rt_rtx81 = bitcast %union.rtunion_def* %20 to %struct.rtx_def**, !dbg !3256
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx81, align 8, !dbg !3256
  call void @llvm.dbg.value(metadata %struct.rtx_def* %21, metadata !3215, metadata !DIExpression()), !dbg !3217
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 0, !dbg !3257
  %bf.load82 = load i32, i32* %22, align 8, !dbg !3257
  %bf.clear83 = and i32 %bf.load82, 65535, !dbg !3257
  %cmp84 = icmp eq i32 %bf.clear83, 99, !dbg !3259
  br i1 %cmp84, label %land.lhs.true91, label %lor.lhs.false86, !dbg !3260

lor.lhs.false86:                                  ; preds = %if.then74
  %cmp89 = icmp eq i32 %bf.clear83, 98, !dbg !3261
  br i1 %cmp89, label %land.lhs.true91, label %cleanup, !dbg !3262

land.lhs.true91:                                  ; preds = %lor.lhs.false86, %if.then74
  %arrayidx94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3263
  %23 = bitcast %union.rtunion_def* %arrayidx94 to i32**, !dbg !3263
  %24 = load i32*, i32** %23, align 8, !dbg !3263
  %bf.load96 = load i32, i32* %24, align 8, !dbg !3263
  %bf.clear97 = and i32 %bf.load96, 65535, !dbg !3263
  %cmp98 = icmp eq i32 %bf.clear97, 37, !dbg !3263
  br i1 %cmp98, label %land.lhs.true100, label %cleanup, !dbg !3264

land.lhs.true100:                                 ; preds = %land.lhs.true91
  %bf.lshr106 = lshr i32 %bf.load96, 16, !dbg !3265
  %bf.clear107 = and i32 %bf.lshr106, 255, !dbg !3265
  %cmp108 = icmp eq i32 %bf.clear107, %bf.clear, !dbg !3266
  br i1 %cmp108, label %land.lhs.true110, label %cleanup, !dbg !3267

land.lhs.true110:                                 ; preds = %land.lhs.true100
  %call111 = tail call fastcc zeroext i8 @free_load_extend(%struct.rtx_def* %21, %struct.rtx_def* %def_insn) #7, !dbg !3268
  br i1 true, label %land.lhs.true113, label %land.lhs.true110.cleanup_crit_edge, !dbg !3269

land.lhs.true110.cleanup_crit_edge:               ; preds = %land.lhs.true110
  br label %cleanup, !dbg !3269

land.lhs.true113:                                 ; preds = %land.lhs.true110
  %call114 = tail call fastcc zeroext i8 @all_uses_available_at(%struct.rtx_def* %def_insn, %struct.rtx_def* %19) #7, !dbg !3270
  %tobool116 = icmp eq i8 %call114, 0, !dbg !3270
  br i1 %tobool116, label %cleanup, label %if.then117, !dbg !3271

if.then117:                                       ; preds = %land.lhs.true113
  %25 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3272
  %bf.load119 = load i32, i32* %25, align 8, !dbg !3272
  %bf.clear120 = and i32 %bf.load119, 255, !dbg !3272
  %cmp121 = icmp eq i32 %bf.clear120, 2, !dbg !3272
  br i1 %cmp121, label %cond.true129, label %lor.lhs.false123, !dbg !3272

lor.lhs.false123:                                 ; preds = %if.then117
  %cmp127 = icmp eq i32 %bf.clear120, 3, !dbg !3272
  br i1 %cmp127, label %cond.true129, label %cond.end133, !dbg !3272

cond.true129:                                     ; preds = %lor.lhs.false123, %if.then117
  %loc131 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 1, !dbg !3272
  %26 = load %struct.rtx_def**, %struct.rtx_def*** %loc131, align 8, !dbg !3272
  br label %cond.end133, !dbg !3272

cond.end133:                                      ; preds = %lor.lhs.false123, %cond.true129
  %cond134 = phi %struct.rtx_def** [ %26, %cond.true129 ], [ null, %lor.lhs.false123 ], !dbg !3272
  %rt_rtx138 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**, !dbg !3273
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx138, align 8, !dbg !3273
  %call139 = tail call fastcc zeroext i8 @try_fwprop_subst(%union.df_ref_d* %use, %struct.rtx_def** %cond134, %struct.rtx_def* %27, %struct.rtx_def* %def_insn, i8 zeroext 0) #7, !dbg !3274
  br label %cleanup, !dbg !3275

cleanup:                                          ; preds = %land.lhs.true110.cleanup_crit_edge, %land.lhs.true50, %land.lhs.true49, %land.lhs.true113, %if.else, %entry, %land.lhs.true39, %land.lhs.true, %if.then21, %lor.lhs.false86, %land.lhs.true91, %land.lhs.true100, %lor.lhs.false, %cond.end133, %cond.end
  %retval.0 = phi i8 [ %call70, %cond.end ], [ %call139, %cond.end133 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.else ], [ 0, %land.lhs.true113 ], [ undef, %land.lhs.true110.cleanup_crit_edge ], [ 0, %land.lhs.true100 ], [ 0, %land.lhs.true91 ], [ 0, %lor.lhs.false86 ], [ 0, %if.then21 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true39 ], [ 0, %land.lhs.true49 ], [ 0, %land.lhs.true50 ], !dbg !3217
  ret i8 %retval.0, !dbg !3276
}

declare dso_local i32 @asm_noperands(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @all_uses_available_at(%struct.rtx_def* %def_insn, %struct.rtx_def* %target_insn) unnamed_addr #4 !dbg !3277 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %def_insn, metadata !3281, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target_insn, metadata !3282, metadata !DIExpression()), !dbg !3307
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3308
  %insns = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 10, !dbg !3308
  %1 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3308
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3308
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3308
  %2 = load i32, i32* %rt_int, align 8, !dbg !3308
  %idxprom = sext i32 %2 to i64, !dbg !3308
  %arrayidx1 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %1, i64 %idxprom, !dbg !3308
  %3 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx1, align 8, !dbg !3308
  call void @llvm.dbg.value(metadata %struct.df_insn_info* %3, metadata !3284, metadata !DIExpression()), !dbg !3307
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_insn, i64 0, i32 0, !dbg !3309
  %bf.load = load i32, i32* %4, align 8, !dbg !3309
  %bf.clear = and i32 %bf.load, 65535, !dbg !3309
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3309
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3309

lor.lhs.false:                                    ; preds = %entry
  %cmp4 = icmp eq i32 %bf.clear, 7, !dbg !3309
  br i1 %cmp4, label %cond.true, label %lor.lhs.false5, !dbg !3309

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %cmp8 = icmp eq i32 %bf.clear, 9, !dbg !3309
  br i1 %cmp8, label %cond.true, label %lor.lhs.false9, !dbg !3309

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %cmp12 = icmp eq i32 %bf.clear, 10, !dbg !3309
  br i1 %cmp12, label %cond.true, label %cond.end29, !dbg !3309

cond.true:                                        ; preds = %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %entry
  %u13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_insn, i64 0, i32 1, !dbg !3309
  %5 = getelementptr inbounds %union.u, %union.u* %u13, i64 1, i32 0, i32 0, i64 0, !dbg !3309
  %6 = bitcast %union.rtunion_def* %5 to i32**, !dbg !3309
  %7 = load i32*, i32** %6, align 8, !dbg !3309
  %bf.load16 = load i32, i32* %7, align 8, !dbg !3309
  %bf.clear17 = and i32 %bf.load16, 65535, !dbg !3309
  %cmp18 = icmp eq i32 %bf.clear17, 23, !dbg !3309
  %8 = bitcast i32* %7 to %struct.rtx_def*, !dbg !3309
  br i1 %cmp18, label %cond.end29, label %cond.false, !dbg !3309

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %def_insn, %struct.rtx_def* %8) #6, !dbg !3309
  br label %cond.end29, !dbg !3309

cond.end29:                                       ; preds = %lor.lhs.false9, %cond.false, %cond.true
  %cond30 = phi %struct.rtx_def* [ %call, %cond.false ], [ %8, %cond.true ], [ null, %lor.lhs.false9 ], !dbg !3309
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond30, metadata !3285, metadata !DIExpression()), !dbg !3307
  %tobool = icmp eq %struct.rtx_def* %cond30, null, !dbg !3310
  br i1 %tobool, label %cond.true31, label %cond.end33, !dbg !3310

cond.true31:                                      ; preds = %cond.end29
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 796, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3310
  br label %cond.end33, !dbg !3310

cond.end33:                                       ; preds = %cond.end29, %cond.true31
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_insn, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3311
  %rt_rtx38 = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !3311
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx38, align 8, !dbg !3311
  %cmp39 = icmp eq %struct.rtx_def* %10, %target_insn, !dbg !3312
  br i1 %cmp39, label %land.lhs.true, label %cond.end33.if.else_crit_edge, !dbg !3313

cond.end33.if.else_crit_edge:                     ; preds = %cond.end33
  %arrayidx77.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond30, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3314
  %.phi.trans.insert = bitcast %union.rtunion_def* %arrayidx77.phi.trans.insert to i32**, !dbg !3314
  %.pre = load i32*, i32** %.phi.trans.insert, align 8, !dbg !3315
  %bf.load79.pre = load i32, i32* %.pre, align 8, !dbg !3315
  %11 = bitcast i32* %.pre to %struct.rtx_def*, !dbg !3313
  br label %if.else, !dbg !3313

land.lhs.true:                                    ; preds = %cond.end33
  %arrayidx42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond30, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3316
  %12 = bitcast %union.rtunion_def* %arrayidx42 to i32**, !dbg !3316
  %13 = load i32*, i32** %12, align 8, !dbg !3316
  %bf.load44 = load i32, i32* %13, align 8, !dbg !3316
  %bf.clear45 = and i32 %bf.load44, 65535, !dbg !3316
  %cmp46 = icmp eq i32 %bf.clear45, 37, !dbg !3316
  %14 = bitcast i32* %13 to %struct.rtx_def*, !dbg !3317
  br i1 %cmp46, label %if.then, label %if.else, !dbg !3317

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.rtx_def* %14, metadata !3286, metadata !DIExpression()), !dbg !3318
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 2, !dbg !3319
  %15 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !3319
  call void @llvm.dbg.value(metadata %union.df_ref_d** %15, metadata !3283, metadata !DIExpression()), !dbg !3307
  br label %for.cond, !dbg !3320

for.cond:                                         ; preds = %for.inc, %if.then
  %use_rec.0 = phi %union.df_ref_d** [ %15, %if.then ], [ %incdec.ptr, %for.inc ], !dbg !3321
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.0, metadata !3283, metadata !DIExpression()), !dbg !3307
  %16 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.0, align 8, !dbg !3322
  %tobool51 = icmp eq %union.df_ref_d* %16, null, !dbg !3323
  br i1 %tobool51, label %for.end, label %for.body, !dbg !3323

for.body:                                         ; preds = %for.cond
  %reg = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %16, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3324
  %17 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !3324
  %call52 = tail call i32 @rtx_equal_p(%struct.rtx_def* %17, %struct.rtx_def* %14) #6, !dbg !3326
  %tobool53 = icmp eq i32 %call52, 0, !dbg !3326
  br i1 %tobool53, label %for.inc, label %cleanup71.loopexit10

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.0, i64 1, !dbg !3327
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !3283, metadata !DIExpression()), !dbg !3307
  br label %for.cond, !dbg !3328, !llvm.loop !3329

for.end:                                          ; preds = %for.cond
  %eq_uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 3, !dbg !3331
  %18 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses, align 8, !dbg !3331
  call void @llvm.dbg.value(metadata %union.df_ref_d** %18, metadata !3283, metadata !DIExpression()), !dbg !3307
  br label %for.cond55, !dbg !3332

for.cond55:                                       ; preds = %for.inc68, %for.end
  %use_rec.1 = phi %union.df_ref_d** [ %18, %for.end ], [ %incdec.ptr69, %for.inc68 ], !dbg !3333
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.1, metadata !3283, metadata !DIExpression()), !dbg !3307
  %19 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.1, align 8, !dbg !3334
  %tobool56 = icmp eq %union.df_ref_d* %19, null, !dbg !3335
  br i1 %tobool56, label %cleanup71.loopexit, label %for.body57, !dbg !3335

for.body57:                                       ; preds = %for.cond55
  %reg60 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %19, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3336
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reg60, align 8, !dbg !3336
  %call61 = tail call i32 @rtx_equal_p(%struct.rtx_def* %20, %struct.rtx_def* %14) #6, !dbg !3338
  %tobool62 = icmp eq i32 %call61, 0, !dbg !3338
  br i1 %tobool62, label %for.inc68, label %cleanup71.loopexit

for.inc68:                                        ; preds = %for.body57
  %incdec.ptr69 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.1, i64 1, !dbg !3339
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr69, metadata !3283, metadata !DIExpression()), !dbg !3307
  br label %for.cond55, !dbg !3340, !llvm.loop !3341

cleanup71.loopexit:                               ; preds = %for.body57, %for.cond55
  %cleanup.dest.slot.2.shrunk.ph = phi i1 [ false, %for.cond55 ], [ true, %for.body57 ]
  br label %cleanup71

cleanup71.loopexit10:                             ; preds = %for.body
  br label %cleanup71

cleanup71:                                        ; preds = %cleanup71.loopexit10, %cleanup71.loopexit
  %cleanup.dest.slot.2.shrunk = phi i1 [ %cleanup.dest.slot.2.shrunk.ph, %cleanup71.loopexit ], [ true, %cleanup71.loopexit10 ]
  br i1 %cleanup.dest.slot.2.shrunk, label %cleanup140, label %if.end139

if.else:                                          ; preds = %cond.end33.if.else_crit_edge, %land.lhs.true
  %21 = phi %struct.rtx_def* [ %11, %cond.end33.if.else_crit_edge ], [ %14, %land.lhs.true ]
  %bf.load79 = phi i32 [ %bf.load79.pre, %cond.end33.if.else_crit_edge ], [ %bf.load44, %land.lhs.true ], !dbg !3315
  %bf.clear80 = and i32 %bf.load79, 65535, !dbg !3315
  %cmp81 = icmp eq i32 %bf.clear80, 37, !dbg !3315
  br i1 %cmp81, label %cond.true82, label %cond.end88, !dbg !3315

cond.true82:                                      ; preds = %if.else
  br label %cond.end88, !dbg !3315

cond.end88:                                       ; preds = %if.else, %cond.true82
  %cond89 = phi %struct.rtx_def* [ %21, %cond.true82 ], [ null, %if.else ], !dbg !3315
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond89, metadata !3297, metadata !DIExpression()), !dbg !3314
  %uses90 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 2, !dbg !3343
  %22 = load %union.df_ref_d**, %union.df_ref_d*** %uses90, align 8, !dbg !3343
  call void @llvm.dbg.value(metadata %union.df_ref_d** %22, metadata !3283, metadata !DIExpression()), !dbg !3307
  %tobool95 = icmp eq %struct.rtx_def* %cond89, null, !dbg !3344
  br i1 %tobool95, label %cond.end88.split.us, label %cond.end88.cond.end88.split_crit_edge, !dbg !3346

cond.end88.cond.end88.split_crit_edge:            ; preds = %cond.end88
  br label %for.cond91, !dbg !3346

cond.end88.split.us:                              ; preds = %cond.end88
  br label %for.cond91.us, !dbg !3346

for.cond91.us:                                    ; preds = %for.inc110.us, %cond.end88.split.us
  %use_rec.2.us = phi %union.df_ref_d** [ %22, %cond.end88.split.us ], [ %incdec.ptr111.us, %for.inc110.us ], !dbg !3347
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.2.us, metadata !3283, metadata !DIExpression()), !dbg !3307
  %23 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.2.us, align 8, !dbg !3348
  %tobool92.us = icmp eq %union.df_ref_d* %23, null, !dbg !3349
  br i1 %tobool92.us, label %for.end112.us-lcssa.us, label %for.body93.us, !dbg !3349

for.body93.us:                                    ; preds = %for.cond91.us
  call void @llvm.dbg.value(metadata %union.df_ref_d* undef, metadata !3299, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata %union.df_ref_d* %23, metadata !3299, metadata !DIExpression()), !dbg !3350
  %call103.us = tail call fastcc zeroext i8 @use_killed_between(%union.df_ref_d* nonnull %23, %struct.rtx_def* %def_insn, %struct.rtx_def* %target_insn) #7, !dbg !3351
  %tobool104.us = icmp eq i8 %call103.us, 0, !dbg !3351
  br i1 %tobool104.us, label %for.inc110.us, label %cleanup136.loopexit11.us-lcssa.us

for.inc110.us:                                    ; preds = %for.body93.us
  %incdec.ptr111.us = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.2.us, i64 1, !dbg !3353
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr111.us, metadata !3283, metadata !DIExpression()), !dbg !3307
  br label %for.cond91.us, !dbg !3354, !llvm.loop !3355

for.end112.us-lcssa.us:                           ; preds = %for.cond91.us
  br label %for.end112, !dbg !3357

cleanup136.loopexit11.us-lcssa.us:                ; preds = %for.body93.us
  br label %cleanup136.loopexit11

for.cond91:                                       ; preds = %for.inc110, %cond.end88.cond.end88.split_crit_edge
  %use_rec.2 = phi %union.df_ref_d** [ %22, %cond.end88.cond.end88.split_crit_edge ], [ %incdec.ptr111, %for.inc110 ], !dbg !3347
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.2, metadata !3283, metadata !DIExpression()), !dbg !3307
  %24 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.2, align 8, !dbg !3348
  %tobool92 = icmp eq %union.df_ref_d* %24, null, !dbg !3349
  br i1 %tobool92, label %for.end112.us-lcssa, label %for.body93, !dbg !3349

for.body93:                                       ; preds = %for.cond91
  call void @llvm.dbg.value(metadata %union.df_ref_d* %24, metadata !3299, metadata !DIExpression()), !dbg !3350
  %reg98 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %24, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3358
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg98, align 8, !dbg !3358
  %call99 = tail call i32 @rtx_equal_p(%struct.rtx_def* %25, %struct.rtx_def* nonnull %cond89) #6, !dbg !3359
  %tobool100 = icmp eq i32 %call99, 0, !dbg !3359
  br i1 %tobool100, label %if.end102, label %cleanup107, !dbg !3360

if.end102:                                        ; preds = %for.body93
  %call103 = tail call fastcc zeroext i8 @use_killed_between(%union.df_ref_d* nonnull %24, %struct.rtx_def* %def_insn, %struct.rtx_def* %target_insn) #7, !dbg !3351
  %tobool104 = icmp ne i8 %call103, 0, !dbg !3351
  %.8 = zext i1 %tobool104 to i32, !dbg !3361
  br label %cleanup107, !dbg !3361

cleanup107:                                       ; preds = %for.body93, %if.end102
  %cleanup.dest.slot.3 = phi i32 [ 1, %for.body93 ], [ %.8, %if.end102 ]
  %cond3 = icmp eq i32 %cleanup.dest.slot.3, 0
  br i1 %cond3, label %for.inc110, label %cleanup136.loopexit11.us-lcssa

for.inc110:                                       ; preds = %cleanup107
  %incdec.ptr111 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.2, i64 1, !dbg !3353
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr111, metadata !3283, metadata !DIExpression()), !dbg !3307
  br label %for.cond91, !dbg !3354, !llvm.loop !3355

for.end112.us-lcssa:                              ; preds = %for.cond91
  br label %for.end112, !dbg !3357

for.end112:                                       ; preds = %for.end112.us-lcssa.us, %for.end112.us-lcssa
  %eq_uses113 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %3, i64 0, i32 3, !dbg !3357
  %26 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses113, align 8, !dbg !3357
  call void @llvm.dbg.value(metadata %union.df_ref_d** %26, metadata !3283, metadata !DIExpression()), !dbg !3307
  br i1 %tobool95, label %for.end112.split.us, label %for.end112.for.end112.split_crit_edge, !dbg !3362

for.end112.for.end112.split_crit_edge:            ; preds = %for.end112
  br label %for.cond114, !dbg !3362

for.end112.split.us:                              ; preds = %for.end112
  br label %for.cond114.us, !dbg !3362

for.cond114.us:                                   ; preds = %for.inc133.us, %for.end112.split.us
  %use_rec.3.us = phi %union.df_ref_d** [ %26, %for.end112.split.us ], [ %incdec.ptr134.us, %for.inc133.us ], !dbg !3363
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.3.us, metadata !3283, metadata !DIExpression()), !dbg !3307
  %27 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.3.us, align 8, !dbg !3364
  %tobool115.us = icmp eq %union.df_ref_d* %27, null, !dbg !3365
  br i1 %tobool115.us, label %cleanup136.loopexit.us-lcssa.us, label %for.body116.us, !dbg !3365

for.body116.us:                                   ; preds = %for.cond114.us
  call void @llvm.dbg.value(metadata %union.df_ref_d* undef, metadata !3303, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata %union.df_ref_d* %27, metadata !3303, metadata !DIExpression()), !dbg !3366
  %call126.us = tail call fastcc zeroext i8 @use_killed_between(%union.df_ref_d* nonnull %27, %struct.rtx_def* %def_insn, %struct.rtx_def* %target_insn) #7, !dbg !3367
  %tobool127.us = icmp ne i8 %call126.us, 0, !dbg !3367
  %.9.us = zext i1 %tobool127.us to i32, !dbg !3369
  br i1 %tobool127.us, label %cleanup136.loopexit.us-lcssa.us, label %for.inc133.us

for.inc133.us:                                    ; preds = %for.body116.us
  %incdec.ptr134.us = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.3.us, i64 1, !dbg !3370
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr134.us, metadata !3283, metadata !DIExpression()), !dbg !3307
  br label %for.cond114.us, !dbg !3371, !llvm.loop !3372

cleanup136.loopexit.us-lcssa.us:                  ; preds = %for.body116.us, %for.cond114.us
  %cleanup.dest.slot.5.ph.ph.us = phi i32 [ %.9.us, %for.body116.us ], [ 0, %for.cond114.us ]
  br label %cleanup136.loopexit

for.cond114:                                      ; preds = %for.inc133, %for.end112.for.end112.split_crit_edge
  %use_rec.3 = phi %union.df_ref_d** [ %26, %for.end112.for.end112.split_crit_edge ], [ %incdec.ptr134, %for.inc133 ], !dbg !3363
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.3, metadata !3283, metadata !DIExpression()), !dbg !3307
  %28 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.3, align 8, !dbg !3364
  %tobool115 = icmp eq %union.df_ref_d* %28, null, !dbg !3365
  br i1 %tobool115, label %cleanup136.loopexit.us-lcssa, label %for.body116, !dbg !3365

for.body116:                                      ; preds = %for.cond114
  call void @llvm.dbg.value(metadata %union.df_ref_d* %28, metadata !3303, metadata !DIExpression()), !dbg !3366
  %reg121 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %28, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3374
  %29 = load %struct.rtx_def*, %struct.rtx_def** %reg121, align 8, !dbg !3374
  %call122 = tail call i32 @rtx_equal_p(%struct.rtx_def* %29, %struct.rtx_def* nonnull %cond89) #6, !dbg !3376
  %tobool123 = icmp eq i32 %call122, 0, !dbg !3376
  br i1 %tobool123, label %if.end125, label %cleanup130, !dbg !3377

if.end125:                                        ; preds = %for.body116
  %call126 = tail call fastcc zeroext i8 @use_killed_between(%union.df_ref_d* nonnull %28, %struct.rtx_def* %def_insn, %struct.rtx_def* %target_insn) #7, !dbg !3367
  %tobool127 = icmp ne i8 %call126, 0, !dbg !3367
  %.9 = zext i1 %tobool127 to i32, !dbg !3369
  br label %cleanup130, !dbg !3369

cleanup130:                                       ; preds = %for.body116, %if.end125
  %cleanup.dest.slot.4 = phi i32 [ 1, %for.body116 ], [ %.9, %if.end125 ]
  %cond2 = icmp eq i32 %cleanup.dest.slot.4, 0
  br i1 %cond2, label %for.inc133, label %cleanup136.loopexit.us-lcssa

for.inc133:                                       ; preds = %cleanup130
  %incdec.ptr134 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.3, i64 1, !dbg !3370
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr134, metadata !3283, metadata !DIExpression()), !dbg !3307
  br label %for.cond114, !dbg !3371, !llvm.loop !3372

cleanup136.loopexit.us-lcssa:                     ; preds = %for.cond114, %cleanup130
  %cleanup.dest.slot.5.ph.ph = phi i32 [ %cleanup.dest.slot.4, %cleanup130 ], [ 0, %for.cond114 ]
  br label %cleanup136.loopexit

cleanup136.loopexit:                              ; preds = %cleanup136.loopexit.us-lcssa.us, %cleanup136.loopexit.us-lcssa
  %cleanup.dest.slot.5.ph = phi i32 [ %cleanup.dest.slot.5.ph.ph, %cleanup136.loopexit.us-lcssa ], [ %cleanup.dest.slot.5.ph.ph.us, %cleanup136.loopexit.us-lcssa.us ]
  br label %cleanup136

cleanup136.loopexit11.us-lcssa:                   ; preds = %cleanup107
  %cleanup.dest.slot.3.lcssa16 = phi i32 [ %cleanup.dest.slot.3, %cleanup107 ]
  br label %cleanup136.loopexit11

cleanup136.loopexit11:                            ; preds = %cleanup136.loopexit11.us-lcssa.us, %cleanup136.loopexit11.us-lcssa
  %cleanup.dest.slot.3.lcssa = phi i32 [ %cleanup.dest.slot.3.lcssa16, %cleanup136.loopexit11.us-lcssa ], [ 1, %cleanup136.loopexit11.us-lcssa.us ]
  br label %cleanup136

cleanup136:                                       ; preds = %cleanup136.loopexit11, %cleanup136.loopexit
  %cleanup.dest.slot.5 = phi i32 [ %cleanup.dest.slot.5.ph, %cleanup136.loopexit ], [ %cleanup.dest.slot.3.lcssa, %cleanup136.loopexit11 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.5, 0
  br i1 %cond1, label %if.end139, label %cleanup140

if.end139:                                        ; preds = %cleanup71, %cleanup136
  br label %cleanup140, !dbg !3378

cleanup140:                                       ; preds = %cleanup71, %cleanup136, %if.end139
  %retval.10 = phi i8 [ 0, %cleanup71 ], [ 1, %if.end139 ], [ 0, %cleanup136 ], !dbg !3307
  ret i8 %retval.10, !dbg !3379
}

declare dso_local %struct.rtx_def* @avoid_constant_pool_reference(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @simplify_replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @copy_rtx(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @forward_propagate_asm(%union.df_ref_d* %use, %struct.rtx_def* %def_insn, %struct.rtx_def* %def_set, %struct.rtx_def* %reg) unnamed_addr #4 !dbg !3380 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use, metadata !3384, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def* %def_insn, metadata !3385, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def* %def_set, metadata !3386, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3387, metadata !DIExpression()), !dbg !3397
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3398
  %0 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !3398
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %0, i64 0, i32 0, !dbg !3398
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3398
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3388, metadata !DIExpression()), !dbg !3397
  %2 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3399
  %bf.load = load i32, i32* %2, align 8, !dbg !3399
  %and = and i32 %bf.load, 262144, !dbg !3399
  %cmp = icmp eq i32 %and, 0, !dbg !3399
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3399

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3399
  br label %cond.end, !dbg !3399

cond.end:                                         ; preds = %entry, %cond.true
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_set, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3400
  %rt_rtx = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !3400
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3400
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !3389, metadata !DIExpression()), !dbg !3397
  %u2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, !dbg !3401
  %5 = getelementptr inbounds %union.u, %union.u* %u2, i64 1, i32 0, i32 0, i64 0, !dbg !3401
  %rt_rtx5 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !3401
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx5, align 8, !dbg !3401
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3390, metadata !DIExpression()), !dbg !3397
  %7 = load %struct.df*, %struct.df** @df, align 8, !dbg !3402
  %insns = getelementptr inbounds %struct.df, %struct.df* %7, i64 0, i32 10, !dbg !3402
  %8 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3402
  %arrayidx8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3402
  %rt_int = bitcast %union.rtunion_def* %arrayidx8 to i32*, !dbg !3402
  %9 = load i32, i32* %rt_int, align 8, !dbg !3402
  %idxprom = sext i32 %9 to i64, !dbg !3402
  %arrayidx9 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %8, i64 %idxprom, !dbg !3402
  %10 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx9, align 8, !dbg !3402
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %10, i64 0, i32 2, !dbg !3402
  %11 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !3402
  call void @llvm.dbg.value(metadata %union.df_ref_d** %11, metadata !3396, metadata !DIExpression()), !dbg !3397
  %12 = load %union.df_ref_d*, %union.df_ref_d** %11, align 8, !dbg !3403
  %tobool = icmp eq %union.df_ref_d* %12, null, !dbg !3403
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3405

land.lhs.true:                                    ; preds = %cond.end
  %arrayidx11 = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %11, i64 1, !dbg !3406
  %13 = load %union.df_ref_d*, %union.df_ref_d** %arrayidx11, align 8, !dbg !3406
  %tobool12 = icmp eq %union.df_ref_d* %13, null, !dbg !3406
  br i1 %tobool12, label %if.end, label %cleanup, !dbg !3407

if.end:                                           ; preds = %land.lhs.true, %cond.end
  %arrayidx15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 1, !dbg !3408
  %rt_bb = bitcast %struct.object_block** %arrayidx15 to %struct.basic_block_def**, !dbg !3408
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3408
  %call = tail call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %14) #6, !dbg !3409
  call void @llvm.dbg.value(metadata i8 %call, metadata !3394, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3391, metadata !DIExpression()), !dbg !3397
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !3410
  %bf.load16 = load i32, i32* %15, align 8, !dbg !3410
  %trunc = trunc i32 %bf.load16 to i16, !dbg !3411
  switch i16 %trunc, label %sw.default [
    i16 17, label %sw.epilog
    i16 23, label %sw.bb17
    i16 15, label %for.cond.preheader
  ], !dbg !3411

for.cond.preheader:                               ; preds = %if.end
  %arrayidx47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3412
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtvec_def**, !dbg !3412
  %.pre = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3416
  br label %for.cond, !dbg !3417

sw.bb17:                                          ; preds = %if.end
  %arrayidx20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3418
  %16 = bitcast %union.rtunion_def* %arrayidx20 to i32**, !dbg !3418
  %17 = load i32*, i32** %16, align 8, !dbg !3418
  %bf.load22 = load i32, i32* %17, align 8, !dbg !3418
  %bf.clear23 = and i32 %bf.load22, 65535, !dbg !3418
  %cmp24 = icmp eq i32 %bf.clear23, 43, !dbg !3418
  br i1 %cmp24, label %if.then26, label %if.end39, !dbg !3420

if.then26:                                        ; preds = %sw.bb17
  %18 = bitcast i32* %17 to %struct.rtx_def*, !dbg !3420
  call void @llvm.dbg.value(metadata %union.rtunion_def* %arrayidx20, metadata !3393, metadata !DIExpression()), !dbg !3397
  %bf.lshr = lshr i32 %bf.load22, 16, !dbg !3421
  %bf.clear32 = and i32 %bf.lshr, 255, !dbg !3421
  %call34 = tail call fastcc %struct.rtx_def* @propagate_rtx(%struct.rtx_def* %18, i32 %bf.clear32, %struct.rtx_def* %reg, %struct.rtx_def* %4, i8 zeroext %call) #7, !dbg !3423
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call34, metadata !3392, metadata !DIExpression()), !dbg !3397
  %tobool35 = icmp eq %struct.rtx_def* %call34, null, !dbg !3424
  br i1 %tobool35, label %if.end39, label %if.then36, !dbg !3426

if.then36:                                        ; preds = %if.then26
  %rt_rtx30 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**, !dbg !3427
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx30, metadata !3393, metadata !DIExpression()), !dbg !3397
  %call37 = tail call zeroext i8 @validate_unshare_change(%struct.rtx_def* %1, %struct.rtx_def** nonnull %rt_rtx30, %struct.rtx_def* nonnull %call34, i8 zeroext 1) #6, !dbg !3428
  br label %if.end39, !dbg !3428

if.end39:                                         ; preds = %if.then26, %if.then36, %sw.bb17
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3429
  %rt_rtx43 = bitcast %union.rtunion_def* %19 to %struct.rtx_def**, !dbg !3429
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx43, align 8, !dbg !3429
  call void @llvm.dbg.value(metadata %struct.rtx_def* %20, metadata !3391, metadata !DIExpression()), !dbg !3397
  br label %sw.epilog, !dbg !3430

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv3 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next4, %for.inc ]
  %21 = phi %struct.rtvec_def* [ %.pre, %for.cond.preheader ], [ %39, %for.inc ]
  %22 = phi %struct.rtvec_def* [ %.pre, %for.cond.preheader ], [ %40, %for.inc ]
  %23 = phi %struct.rtvec_def* [ %.pre, %for.cond.preheader ], [ %41, %for.inc ], !dbg !3416
  %asm_operands.0 = phi %struct.rtx_def* [ null, %for.cond.preheader ], [ %asm_operands.2, %for.inc ], !dbg !3397
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3395, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def* %asm_operands.0, metadata !3391, metadata !DIExpression()), !dbg !3397
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %23, i64 0, i32 0, !dbg !3416
  %24 = load i32, i32* %num_elem, align 8, !dbg !3416
  %25 = sext i32 %24 to i64, !dbg !3431
  %cmp48 = icmp slt i64 %indvars.iv3, %25, !dbg !3431
  br i1 %cmp48, label %for.body, label %sw.epilog.loopexit, !dbg !3417

for.body:                                         ; preds = %for.cond
  %arrayidx55 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %23, i64 0, i32 1, i64 %indvars.iv3, !dbg !3432
  %26 = bitcast %struct.rtx_def** %arrayidx55 to i32**, !dbg !3432
  %27 = load i32*, i32** %26, align 8, !dbg !3432
  %bf.load56 = load i32, i32* %27, align 8, !dbg !3432
  %bf.clear57 = and i32 %bf.load56, 65535, !dbg !3432
  %cmp58 = icmp eq i32 %bf.clear57, 23, !dbg !3434
  %arrayidx67 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i64 0, i32 1, i64 %indvars.iv3, !dbg !3435
  %28 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx67, align 8, !dbg !3435
  br i1 %cmp58, label %if.then60, label %if.else, !dbg !3436

if.then60:                                        ; preds = %for.body
  %arrayidx70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3437
  %29 = bitcast %union.rtunion_def* %arrayidx70 to i32**, !dbg !3437
  %30 = load i32*, i32** %29, align 8, !dbg !3437
  %bf.load72 = load i32, i32* %30, align 8, !dbg !3437
  %bf.clear73 = and i32 %bf.load72, 65535, !dbg !3437
  %cmp74 = icmp eq i32 %bf.clear73, 43, !dbg !3437
  br i1 %cmp74, label %if.then76, label %if.end97, !dbg !3440

if.then76:                                        ; preds = %if.then60
  %arrayidx83 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i64 0, i32 1, i64 %indvars.iv3, !dbg !3441
  %31 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx83, align 8, !dbg !3441
  %arrayidx86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3441
  %rt_rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**, !dbg !3441
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx87, metadata !3393, metadata !DIExpression()), !dbg !3397
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx87, align 8, !dbg !3443
  %.cast1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i64 0, i32 0, !dbg !3444
  %bf.load88 = load i32, i32* %.cast1, align 8, !dbg !3444
  %bf.lshr89 = lshr i32 %bf.load88, 16, !dbg !3444
  %bf.clear90 = and i32 %bf.lshr89, 255, !dbg !3444
  %call92 = tail call fastcc %struct.rtx_def* @propagate_rtx(%struct.rtx_def* %32, i32 %bf.clear90, %struct.rtx_def* %reg, %struct.rtx_def* %4, i8 zeroext %call) #7, !dbg !3445
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call92, metadata !3392, metadata !DIExpression()), !dbg !3397
  %tobool93 = icmp eq %struct.rtx_def* %call92, null, !dbg !3446
  br i1 %tobool93, label %if.end97, label %if.then94, !dbg !3448

if.then94:                                        ; preds = %if.then76
  %call95 = tail call zeroext i8 @validate_unshare_change(%struct.rtx_def* %1, %struct.rtx_def** nonnull %rt_rtx87, %struct.rtx_def* nonnull %call92, i8 zeroext 1) #6, !dbg !3449
  br label %if.end97, !dbg !3449

if.end97:                                         ; preds = %if.then76, %if.then94, %if.then60
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3450
  %arrayidx104 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i64 0, i32 1, i64 %indvars.iv3, !dbg !3450
  %34 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx104, align 8, !dbg !3450
  %35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3450
  %rt_rtx108 = bitcast %union.rtunion_def* %35 to %struct.rtx_def**, !dbg !3450
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx108, align 8, !dbg !3450
  call void @llvm.dbg.value(metadata %struct.rtx_def* %36, metadata !3391, metadata !DIExpression()), !dbg !3397
  br label %for.inc, !dbg !3451

if.else:                                          ; preds = %for.body
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i64 0, i32 0, !dbg !3452
  %bf.load116 = load i32, i32* %37, align 8, !dbg !3452
  %bf.clear117 = and i32 %bf.load116, 65535, !dbg !3452
  %cmp118 = icmp eq i32 %bf.clear117, 17, !dbg !3454
  br i1 %cmp118, label %if.then120, label %for.inc, !dbg !3455

if.then120:                                       ; preds = %if.else
  %arrayidx127 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i64 0, i32 1, i64 %indvars.iv3, !dbg !3456
  %38 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx127, align 8, !dbg !3456
  call void @llvm.dbg.value(metadata %struct.rtx_def* %38, metadata !3391, metadata !DIExpression()), !dbg !3397
  br label %for.inc, !dbg !3457

for.inc:                                          ; preds = %if.end97, %if.then120, %if.else
  %39 = phi %struct.rtvec_def* [ %33, %if.end97 ], [ %21, %if.then120 ], [ %21, %if.else ]
  %40 = phi %struct.rtvec_def* [ %33, %if.end97 ], [ %21, %if.then120 ], [ %22, %if.else ]
  %41 = phi %struct.rtvec_def* [ %33, %if.end97 ], [ %21, %if.then120 ], [ %22, %if.else ]
  %asm_operands.2 = phi %struct.rtx_def* [ %36, %if.end97 ], [ %38, %if.then120 ], [ %asm_operands.0, %if.else ], !dbg !3435
  call void @llvm.dbg.value(metadata %struct.rtx_def* %asm_operands.2, metadata !3391, metadata !DIExpression()), !dbg !3397
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !3458
  call void @llvm.dbg.value(metadata i32 undef, metadata !3395, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3397
  br label %for.cond, !dbg !3459, !llvm.loop !3460

sw.default:                                       ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3462
  br label %sw.epilog, !dbg !3463

sw.epilog.loopexit:                               ; preds = %for.cond
  %asm_operands.0.lcssa = phi %struct.rtx_def* [ %asm_operands.0, %for.cond ], !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def* %asm_operands.0.lcssa, metadata !3391, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def* %asm_operands.0.lcssa, metadata !3391, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def* %asm_operands.0.lcssa, metadata !3391, metadata !DIExpression()), !dbg !3397
  br label %sw.epilog, !dbg !3464

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %if.end, %sw.default, %if.end39
  %asm_operands.3 = phi %struct.rtx_def* [ null, %sw.default ], [ %20, %if.end39 ], [ %6, %if.end ], [ %asm_operands.0.lcssa, %sw.epilog.loopexit ], !dbg !3397
  call void @llvm.dbg.value(metadata %struct.rtx_def* %asm_operands.3, metadata !3391, metadata !DIExpression()), !dbg !3397
  %tobool130 = icmp eq %struct.rtx_def* %asm_operands.3, null, !dbg !3464
  br i1 %tobool130, label %cond.true136, label %land.lhs.true131, !dbg !3464

land.lhs.true131:                                 ; preds = %sw.epilog
  %42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %asm_operands.3, i64 0, i32 0, !dbg !3464
  %bf.load132 = load i32, i32* %42, align 8, !dbg !3464
  %bf.clear133 = and i32 %bf.load132, 65535, !dbg !3464
  %cmp134 = icmp eq i32 %bf.clear133, 17, !dbg !3464
  br i1 %cmp134, label %cond.end138, label %cond.true136, !dbg !3464

cond.true136:                                     ; preds = %sw.epilog, %land.lhs.true131
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3464
  br label %cond.end138, !dbg !3464

cond.end138:                                      ; preds = %land.lhs.true131, %cond.true136
  call void @llvm.dbg.value(metadata i32 0, metadata !3395, metadata !DIExpression()), !dbg !3397
  %arrayidx143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %asm_operands.3, i64 0, i32 1, i32 0, i32 1, !dbg !3465
  %rt_rtvec144 = bitcast %struct.object_block** %arrayidx143 to %struct.rtvec_def**, !dbg !3465
  br label %for.cond140, !dbg !3468

for.cond140:                                      ; preds = %for.inc165, %cond.end138
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc165 ], [ 0, %cond.end138 ], !dbg !3469
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3395, metadata !DIExpression()), !dbg !3397
  %43 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec144, align 8, !dbg !3470
  %num_elem145 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %43, i64 0, i32 0, !dbg !3470
  %44 = load i32, i32* %num_elem145, align 8, !dbg !3470
  %45 = sext i32 %44 to i64, !dbg !3471
  %cmp146 = icmp slt i64 %indvars.iv, %45, !dbg !3471
  br i1 %cmp146, label %for.body148, label %for.end167, !dbg !3472

for.body148:                                      ; preds = %for.cond140
  %arrayidx155 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %43, i64 0, i32 1, i64 %indvars.iv, !dbg !3473
  call void @llvm.dbg.value(metadata %struct.rtx_def** %arrayidx155, metadata !3393, metadata !DIExpression()), !dbg !3397
  %46 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx155, align 8, !dbg !3475
  %.cast = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i64 0, i32 0, !dbg !3476
  %bf.load156 = load i32, i32* %.cast, align 8, !dbg !3476
  %bf.lshr157 = lshr i32 %bf.load156, 16, !dbg !3476
  %bf.clear158 = and i32 %bf.lshr157, 255, !dbg !3476
  %call160 = tail call fastcc %struct.rtx_def* @propagate_rtx(%struct.rtx_def* %46, i32 %bf.clear158, %struct.rtx_def* %reg, %struct.rtx_def* %4, i8 zeroext %call) #7, !dbg !3477
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call160, metadata !3392, metadata !DIExpression()), !dbg !3397
  %tobool161 = icmp eq %struct.rtx_def* %call160, null, !dbg !3478
  br i1 %tobool161, label %for.inc165, label %if.then162, !dbg !3480

if.then162:                                       ; preds = %for.body148
  %call163 = tail call zeroext i8 @validate_unshare_change(%struct.rtx_def* %1, %struct.rtx_def** nonnull %arrayidx155, %struct.rtx_def* nonnull %call160, i8 zeroext 1) #6, !dbg !3481
  br label %for.inc165, !dbg !3481

for.inc165:                                       ; preds = %for.body148, %if.then162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3482
  call void @llvm.dbg.value(metadata i32 undef, metadata !3395, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3397
  br label %for.cond140, !dbg !3483, !llvm.loop !3484

for.end167:                                       ; preds = %for.cond140
  %call168 = tail call i32 @num_changes_pending() #6, !dbg !3486
  %cmp169 = icmp eq i32 %call168, 0, !dbg !3488
  br i1 %cmp169, label %cleanup, label %lor.lhs.false, !dbg !3489

lor.lhs.false:                                    ; preds = %for.end167
  %call171 = tail call i32 @apply_change_group() #6, !dbg !3490
  %tobool172 = icmp eq i32 %call171, 0, !dbg !3490
  br i1 %tobool172, label %cleanup, label %if.end174, !dbg !3491

if.end174:                                        ; preds = %lor.lhs.false
  %47 = load i32, i32* @num_changes, align 4, !dbg !3492
  %inc175 = add nsw i32 %47, 1, !dbg !3492
  store i32 %inc175, i32* @num_changes, align 4, !dbg !3492
  br label %cleanup, !dbg !3493

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false, %for.end167, %if.end174
  %retval.0 = phi i8 [ 1, %if.end174 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 0, %for.end167 ], !dbg !3397
  ret i8 %retval.0, !dbg !3494
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @propagate_rtx(%struct.rtx_def* %x, i32 %mode, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i8 zeroext %speed) unnamed_addr #4 !dbg !3495 {
entry:
  %new_rtx.addr = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3499, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3500, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata %struct.rtx_def* %old_rtx, metadata !3501, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata %struct.rtx_def* %new_rtx, metadata !3502, metadata !DIExpression()), !dbg !3507
  store %struct.rtx_def* %new_rtx, %struct.rtx_def** %new_rtx.addr, align 8
  call void @llvm.dbg.value(metadata i8 %speed, metadata !3503, metadata !DIExpression()), !dbg !3507
  %0 = bitcast %struct.rtx_def** %tem to i8*, !dbg !3508
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3508
  %.cast = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %new_rtx, i64 0, i32 0, !dbg !3509
  %bf.load = load i32, i32* %.cast, align 8, !dbg !3509
  %bf.clear = and i32 %bf.load, 65535, !dbg !3509
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3509
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %new_rtx, i64 0, i32 0, !dbg !3511
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3511

land.lhs.true:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.rtx_def* %new_rtx, metadata !3502, metadata !DIExpression()), !dbg !3507
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %new_rtx) #7, !dbg !3512
  %cmp1 = icmp ult i32 %call, 53, !dbg !3513
  br i1 %cmp1, label %cleanup, label %land.lhs.true.if.end_crit_edge, !dbg !3514

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %bf.load2.pre = load i32, i32* %1, align 8, !dbg !3515
  %.pre2 = and i32 %bf.load2.pre, 65535, !dbg !3515
  br label %if.end, !dbg !3514

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry
  %bf.clear3.pre-phi = phi i32 [ %.pre2, %land.lhs.true.if.end_crit_edge ], [ %bf.clear, %entry ], !dbg !3515
  call void @llvm.dbg.value(metadata i32 0, metadata !3506, metadata !DIExpression()), !dbg !3507
  %cmp4 = icmp eq i32 %bf.clear3.pre-phi, 37, !dbg !3515
  br i1 %cmp4, label %if.then8, label %lor.lhs.false, !dbg !3517

lor.lhs.false:                                    ; preds = %if.end
  %idxprom = zext i32 %bf.clear3.pre-phi to i64, !dbg !3518
  %arrayidx = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !3518
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3518
  %cmp7 = icmp eq i32 %2, 9, !dbg !3518
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !3519

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !3506, metadata !DIExpression()), !dbg !3507
  br label %if.end9, !dbg !3520

if.end9:                                          ; preds = %if.then8, %lor.lhs.false
  %flags.0 = phi i32 [ 1, %if.then8 ], [ 0, %lor.lhs.false ], !dbg !3507
  call void @llvm.dbg.value(metadata i32 %flags.0, metadata !3506, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata %struct.rtx_def** %new_rtx.addr, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3507
  %call10 = call i32 @for_each_rtx(%struct.rtx_def** nonnull %new_rtx.addr, i32 (%struct.rtx_def**, i8*)* nonnull @varying_mem_p, i8* null) #6, !dbg !3521
  %tobool = icmp eq i32 %call10, 0, !dbg !3521
  %or12 = or i32 %flags.0, 2, !dbg !3523
  %spec.select = select i1 %tobool, i32 %or12, i32 %flags.0, !dbg !3524
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3506, metadata !DIExpression()), !dbg !3507
  %tobool14 = icmp eq i8 %speed, 0, !dbg !3525
  %or16 = or i32 %spec.select, 4, !dbg !3527
  %flags.2 = select i1 %tobool14, i32 %spec.select, i32 %or16, !dbg !3527
  call void @llvm.dbg.value(metadata i32 %flags.2, metadata !3506, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3504, metadata !DIExpression()), !dbg !3507
  store %struct.rtx_def* %x, %struct.rtx_def** %tem, align 8, !dbg !3528
  %3 = load %struct.rtx_def*, %struct.rtx_def** %new_rtx.addr, align 8, !dbg !3529
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3502, metadata !DIExpression()), !dbg !3507
  %call18 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %3) #6, !dbg !3530
  call void @llvm.dbg.value(metadata %struct.rtx_def** %tem, metadata !3504, metadata !DIExpression(DW_OP_deref)), !dbg !3507
  %call19 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %tem, %struct.rtx_def* %old_rtx, %struct.rtx_def* %call18, i32 %flags.2) #7, !dbg !3531
  call void @llvm.dbg.value(metadata i8 %call19, metadata !3505, metadata !DIExpression()), !dbg !3507
  %4 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8, !dbg !3532
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !3504, metadata !DIExpression()), !dbg !3507
  %cmp20 = icmp ne %struct.rtx_def* %4, %x, !dbg !3534
  %tobool22 = icmp ne i8 %call19, 0, !dbg !3535
  %or.cond = and i1 %cmp20, %tobool22, !dbg !3536
  br i1 %or.cond, label %if.end24, label %cleanup, !dbg !3536

if.end24:                                         ; preds = %if.end9
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i64 0, i32 0, !dbg !3536
  %bf.load25 = load i32, i32* %5, align 8, !dbg !3537
  %bf.clear26 = and i32 %bf.load25, 16711680, !dbg !3537
  %cmp27 = icmp eq i32 %bf.clear26, 0, !dbg !3539
  br i1 %cmp27, label %land.lhs.true28, label %if.end33, !dbg !3540

land.lhs.true28:                                  ; preds = %if.end24
  %bf.clear30 = and i32 %bf.load25, 65535, !dbg !3541
  %cmp31 = icmp eq i32 %bf.clear30, 30, !dbg !3541
  br i1 %cmp31, label %if.end33, label %cleanup, !dbg !3542

if.end33:                                         ; preds = %land.lhs.true28, %if.end24
  br i1 %cmp27, label %if.then38, label %if.else, !dbg !3543

if.then38:                                        ; preds = %if.end33
  %6 = load %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* (i32, %struct.rtx_def*)** getelementptr inbounds (%struct.rtl_hooks, %struct.rtl_hooks* @rtl_hooks, i64 0, i32 1), align 8, !dbg !3544
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !3504, metadata !DIExpression()), !dbg !3507
  %call39 = call %struct.rtx_def* %6(i32 %mode, %struct.rtx_def* %4) #6, !dbg !3546
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call39, metadata !3504, metadata !DIExpression()), !dbg !3507
  store %struct.rtx_def* %call39, %struct.rtx_def** %tem, align 8, !dbg !3547
  br label %if.end44, !dbg !3548

if.else:                                          ; preds = %if.end33
  %bf.lshr41 = lshr i32 %bf.load25, 16, !dbg !3549
  %bf.clear42 = and i32 %bf.lshr41, 255, !dbg !3549
  %cmp43 = icmp eq i32 %bf.clear42, %mode, !dbg !3549
  br i1 %cmp43, label %if.end44, label %cond.true, !dbg !3549

cond.true:                                        ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 684, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3549
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8, !dbg !3550
  br label %if.end44, !dbg !3549

if.end44:                                         ; preds = %cond.true, %if.else, %if.then38
  %7 = phi %struct.rtx_def* [ %.pre, %cond.true ], [ %4, %if.else ], [ %call39, %if.then38 ], !dbg !3550
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3504, metadata !DIExpression()), !dbg !3507
  br label %cleanup, !dbg !3551

cleanup:                                          ; preds = %land.lhs.true28, %if.end9, %land.lhs.true, %if.end44
  %retval.0 = phi %struct.rtx_def* [ %7, %if.end44 ], [ null, %land.lhs.true ], [ null, %if.end9 ], [ null, %land.lhs.true28 ], !dbg !3507
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3552
  ret %struct.rtx_def* %retval.0, !dbg !3552
}

declare dso_local zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @try_fwprop_subst(%union.df_ref_d* %use, %struct.rtx_def** %loc, %struct.rtx_def* %new_rtx, %struct.rtx_def* %def_insn, i8 zeroext %set_reg_equal) unnamed_addr #4 !dbg !3553 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use, metadata !3557, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !3558, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata %struct.rtx_def* %new_rtx, metadata !3559, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata %struct.rtx_def* %def_insn, metadata !3560, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i8 %set_reg_equal, metadata !3561, metadata !DIExpression()), !dbg !3580
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3581
  %0 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !3581
  %insn1 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %0, i64 0, i32 0, !dbg !3581
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !3581
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3562, metadata !DIExpression()), !dbg !3580
  %2 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !3582
  %bf.load = load i32, i32* %2, align 8, !dbg !3582
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !3582
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3582
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3563, metadata !DIExpression()), !dbg !3580
  %bf.ashr = ashr i32 %bf.load, 16, !dbg !3583
  call void @llvm.dbg.value(metadata i32 %bf.ashr, metadata !3564, metadata !DIExpression()), !dbg !3580
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3584
  %bf.load5 = load i32, i32* %3, align 8, !dbg !3584
  %bf.clear6 = and i32 %bf.load5, 65535, !dbg !3584
  %cmp = icmp eq i32 %bf.clear6, 8, !dbg !3584
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3584

lor.lhs.false:                                    ; preds = %entry
  %cmp9 = icmp eq i32 %bf.clear6, 7, !dbg !3584
  br i1 %cmp9, label %cond.true, label %lor.lhs.false10, !dbg !3584

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %cmp13 = icmp eq i32 %bf.clear6, 9, !dbg !3584
  br i1 %cmp13, label %cond.true, label %lor.lhs.false14, !dbg !3584

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %cmp17 = icmp eq i32 %bf.clear6, 10, !dbg !3584
  br i1 %cmp17, label %cond.true, label %cond.end31, !dbg !3584

cond.true:                                        ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, !dbg !3584
  %4 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3584
  %5 = bitcast %union.rtunion_def* %4 to i32**, !dbg !3584
  %6 = load i32*, i32** %5, align 8, !dbg !3584
  %bf.load18 = load i32, i32* %6, align 8, !dbg !3584
  %bf.clear19 = and i32 %bf.load18, 65535, !dbg !3584
  %cmp20 = icmp eq i32 %bf.clear19, 23, !dbg !3584
  %7 = bitcast i32* %6 to %struct.rtx_def*, !dbg !3584
  br i1 %cmp20, label %cond.end31, label %cond.false, !dbg !3584

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %1, %struct.rtx_def* %7) #6, !dbg !3584
  br label %cond.end31, !dbg !3584

cond.end31:                                       ; preds = %lor.lhs.false14, %cond.false, %cond.true
  %cond32 = phi %struct.rtx_def* [ %call, %cond.false ], [ %7, %cond.true ], [ null, %lor.lhs.false14 ], !dbg !3584
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond32, metadata !3565, metadata !DIExpression()), !dbg !3580
  %arrayidx35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 1, !dbg !3585
  %rt_bb = bitcast %struct.object_block** %arrayidx35 to %struct.basic_block_def**, !dbg !3585
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3585
  %call36 = tail call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %8) #6, !dbg !3586
  call void @llvm.dbg.value(metadata i8 %call36, metadata !3566, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i32 0, metadata !3567, metadata !DIExpression()), !dbg !3580
  %tobool = icmp eq %struct.rtx_def* %cond32, null, !dbg !3587
  br i1 %tobool, label %if.end, label %if.then, !dbg !3589

if.then:                                          ; preds = %cond.end31
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond32, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3590
  %rt_rtx40 = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !3590
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx40, align 8, !dbg !3590
  %call41 = tail call i32 @rtx_cost(%struct.rtx_def* %10, i32 23, i8 zeroext %call36) #6, !dbg !3591
  call void @llvm.dbg.value(metadata i32 %call41, metadata !3567, metadata !DIExpression()), !dbg !3580
  br label %if.end, !dbg !3592

if.end:                                           ; preds = %cond.end31, %if.then
  %old_cost.0 = phi i32 [ %call41, %if.then ], [ 0, %cond.end31 ], !dbg !3580
  call void @llvm.dbg.value(metadata i32 %old_cost.0, metadata !3567, metadata !DIExpression()), !dbg !3580
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3593
  %tobool42 = icmp eq %struct._IO_FILE* %11, null, !dbg !3593
  br i1 %tobool42, label %if.end50, label %if.then43, !dbg !3595

if.then43:                                        ; preds = %if.end
  %arrayidx46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3596
  %rt_int = bitcast %union.rtunion_def* %arrayidx46 to i32*, !dbg !3596
  %12 = load i32, i32* %rt_int, align 8, !dbg !3596
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %12) #6, !dbg !3598
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3599
  %14 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8, !dbg !3600
  tail call void @print_inline_rtx(%struct._IO_FILE* %13, %struct.rtx_def* %14, i32 2) #6, !dbg !3601
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3602
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3603
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3604
  tail call void @print_inline_rtx(%struct._IO_FILE* %16, %struct.rtx_def* %new_rtx, i32 2) #6, !dbg !3605
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3606
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3607
  br label %if.end50, !dbg !3608

if.end50:                                         ; preds = %if.end, %if.then43
  %call51 = tail call zeroext i8 @validate_unshare_change(%struct.rtx_def* %1, %struct.rtx_def** %loc, %struct.rtx_def* %new_rtx, i8 zeroext 1) #6, !dbg !3609
  %call52 = tail call i32 @verify_changes(i32 0) #6, !dbg !3610
  %tobool53 = icmp eq i32 %call52, 0, !dbg !3610
  br i1 %tobool53, label %if.then54, label %if.else, !dbg !3612

if.then54:                                        ; preds = %if.end50
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3613
  %tobool55 = icmp eq %struct._IO_FILE* %18, null, !dbg !3613
  br i1 %tobool55, label %if.end95, label %if.then56, !dbg !3616

if.then56:                                        ; preds = %if.then54
  %arrayidx59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3617
  %rt_int60 = bitcast %union.rtunion_def* %arrayidx59 to i32*, !dbg !3617
  %19 = load i32, i32* %rt_int60, align 8, !dbg !3617
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %19) #6, !dbg !3618
  br label %if.end95, !dbg !3618

if.else:                                          ; preds = %if.end50
  %bf.load64 = load i32, i32* %2, align 8, !dbg !3619
  %bf.clear66 = and i32 %bf.load64, 65280, !dbg !3619
  %cmp67 = icmp eq i32 %bf.clear66, 256, !dbg !3621
  %tobool68 = icmp ne %struct.rtx_def* %cond32, null, !dbg !3622
  %or.cond = and i1 %cmp67, %tobool68, !dbg !3623
  br i1 %or.cond, label %land.lhs.true69, label %if.else85, !dbg !3623

land.lhs.true69:                                  ; preds = %if.else
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond32, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3624
  %rt_rtx73 = bitcast %union.rtunion_def* %20 to %struct.rtx_def**, !dbg !3624
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx73, align 8, !dbg !3624
  %call74 = tail call i32 @rtx_cost(%struct.rtx_def* %21, i32 23, i8 zeroext %call36) #6, !dbg !3625
  %cmp75 = icmp sgt i32 %call74, %old_cost.0, !dbg !3626
  br i1 %cmp75, label %if.then76, label %if.else85, !dbg !3627

if.then76:                                        ; preds = %land.lhs.true69
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3628
  %tobool77 = icmp eq %struct._IO_FILE* %22, null, !dbg !3628
  br i1 %tobool77, label %if.end95, label %if.then78, !dbg !3631

if.then78:                                        ; preds = %if.then76
  %arrayidx81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3632
  %rt_int82 = bitcast %union.rtunion_def* %arrayidx81 to i32*, !dbg !3632
  %23 = load i32, i32* %rt_int82, align 8, !dbg !3632
  %call83 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %23) #6, !dbg !3633
  br label %if.end95, !dbg !3633

if.else85:                                        ; preds = %land.lhs.true69, %if.else
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3634
  %tobool86 = icmp eq %struct._IO_FILE* %24, null, !dbg !3634
  br i1 %tobool86, label %if.end95, label %if.then87, !dbg !3637

if.then87:                                        ; preds = %if.else85
  %arrayidx90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3638
  %rt_int91 = bitcast %union.rtunion_def* %arrayidx90 to i32*, !dbg !3638
  %25 = load i32, i32* %rt_int91, align 8, !dbg !3638
  %call92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %25) #6, !dbg !3639
  br label %if.end95, !dbg !3639

if.end95:                                         ; preds = %if.then76, %if.else85, %if.then54, %if.then78, %if.then87, %if.then56
  %ok.1 = phi i8 [ 0, %if.then56 ], [ 0, %if.then54 ], [ 0, %if.then78 ], [ 0, %if.then76 ], [ 1, %if.then87 ], [ 1, %if.else85 ], !dbg !3640
  call void @llvm.dbg.value(metadata i8 %ok.1, metadata !3568, metadata !DIExpression()), !dbg !3580
  %tobool96 = icmp eq i8 %ok.1, 0, !dbg !3641
  br i1 %tobool96, label %if.else111, label %if.then97, !dbg !3642

if.then97:                                        ; preds = %if.end95
  tail call void @confirm_change_group() #6, !dbg !3643
  %26 = load i32, i32* @num_changes, align 4, !dbg !3644
  %inc = add nsw i32 %26, 1, !dbg !3644
  store i32 %inc, i32* @num_changes, align 4, !dbg !3644
  tail call void @df_ref_remove(%union.df_ref_d* %use) #6, !dbg !3645
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %new_rtx, i64 0, i32 0, !dbg !3646
  %bf.load98 = load i32, i32* %27, align 8, !dbg !3646
  %bf.clear99 = and i32 %bf.load98, 65535, !dbg !3646
  %idxprom = zext i32 %bf.clear99 to i64, !dbg !3646
  %arrayidx100 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !3646
  %28 = load i32, i32* %arrayidx100, align 4, !dbg !3646
  %cmp101 = icmp eq i32 %28, 9, !dbg !3646
  br i1 %cmp101, label %if.end138, label %if.then102, !dbg !3647

if.then102:                                       ; preds = %if.then97
  %29 = load %struct.df*, %struct.df** @df, align 8, !dbg !3648
  %insns = getelementptr inbounds %struct.df, %struct.df* %29, i64 0, i32 10, !dbg !3648
  %30 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3648
  %arrayidx106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3648
  %rt_int107 = bitcast %union.rtunion_def* %arrayidx106 to i32*, !dbg !3648
  %31 = load i32, i32* %rt_int107, align 8, !dbg !3648
  %idxprom108 = sext i32 %31 to i64, !dbg !3648
  %arrayidx109 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %30, i64 %idxprom108, !dbg !3648
  %32 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx109, align 8, !dbg !3648
  call void @llvm.dbg.value(metadata %struct.df_insn_info* %32, metadata !3569, metadata !DIExpression()), !dbg !3649
  %uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %32, i64 0, i32 2, !dbg !3650
  %33 = load %union.df_ref_d**, %union.df_ref_d*** %uses, align 8, !dbg !3650
  tail call fastcc void @update_df(%struct.rtx_def* %1, %struct.rtx_def** %loc, %union.df_ref_d** %33, i32 %bf.clear, i32 %bf.ashr) #7, !dbg !3651
  %eq_uses = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %32, i64 0, i32 3, !dbg !3652
  %34 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses, align 8, !dbg !3652
  tail call fastcc void @update_df(%struct.rtx_def* %1, %struct.rtx_def** %loc, %union.df_ref_d** %34, i32 %bf.clear, i32 %bf.ashr) #7, !dbg !3653
  br label %if.end138, !dbg !3654

if.else111:                                       ; preds = %if.end95
  tail call void @cancel_changes(i32 0) #6, !dbg !3655
  %tobool112 = icmp eq i8 %set_reg_equal, 0, !dbg !3656
  br i1 %tobool112, label %if.end138, label %if.then113, !dbg !3657

if.then113:                                       ; preds = %if.else111
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3658
  %tobool114 = icmp eq %struct._IO_FILE* %35, null, !dbg !3658
  br i1 %tobool114, label %if.end117, label %if.then115, !dbg !3660

if.then115:                                       ; preds = %if.then113
  %call116 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3661
  br label %if.end117, !dbg !3661

if.end117:                                        ; preds = %if.then113, %if.then115
  %call118 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %new_rtx) #6, !dbg !3662
  %call119 = tail call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %1, i32 4, %struct.rtx_def* %call118) #6, !dbg !3663
  %36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %new_rtx, i64 0, i32 0, !dbg !3664
  %bf.load120 = load i32, i32* %36, align 8, !dbg !3664
  %bf.clear121 = and i32 %bf.load120, 65535, !dbg !3664
  %idxprom122 = zext i32 %bf.clear121 to i64, !dbg !3664
  %arrayidx123 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom122, !dbg !3664
  %37 = load i32, i32* %arrayidx123, align 4, !dbg !3664
  %cmp124 = icmp eq i32 %37, 9, !dbg !3664
  br i1 %cmp124, label %if.end138, label %if.then125, !dbg !3665

if.then125:                                       ; preds = %if.end117
  %38 = load %struct.df*, %struct.df** @df, align 8, !dbg !3666
  %insns127 = getelementptr inbounds %struct.df, %struct.df* %38, i64 0, i32 10, !dbg !3666
  %39 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns127, align 8, !dbg !3666
  %arrayidx130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3666
  %rt_int131 = bitcast %union.rtunion_def* %arrayidx130 to i32*, !dbg !3666
  %40 = load i32, i32* %rt_int131, align 8, !dbg !3666
  %idxprom132 = sext i32 %40 to i64, !dbg !3666
  %arrayidx133 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %39, i64 %idxprom132, !dbg !3666
  %41 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx133, align 8, !dbg !3666
  call void @llvm.dbg.value(metadata %struct.df_insn_info* %41, metadata !3574, metadata !DIExpression()), !dbg !3667
  %uses134 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %41, i64 0, i32 2, !dbg !3668
  %42 = load %union.df_ref_d**, %union.df_ref_d*** %uses134, align 8, !dbg !3668
  tail call fastcc void @update_df(%struct.rtx_def* %1, %struct.rtx_def** %loc, %union.df_ref_d** %42, i32 %bf.clear, i32 4) #7, !dbg !3669
  %eq_uses135 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %41, i64 0, i32 3, !dbg !3670
  %43 = load %union.df_ref_d**, %union.df_ref_d*** %eq_uses135, align 8, !dbg !3670
  tail call fastcc void @update_df(%struct.rtx_def* %1, %struct.rtx_def** %loc, %union.df_ref_d** %43, i32 %bf.clear, i32 4) #7, !dbg !3671
  br label %if.end138, !dbg !3672

if.end138:                                        ; preds = %if.else111, %if.then125, %if.end117, %if.then97, %if.then102
  ret i8 %ok.1, !dbg !3673
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @use_killed_between(%union.df_ref_d* %use, %struct.rtx_def* %def_insn, %struct.rtx_def* %target_insn) unnamed_addr #4 !dbg !3674 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %use, metadata !3676, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata %struct.rtx_def* %def_insn, metadata !3677, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata %struct.rtx_def* %target_insn, metadata !3678, metadata !DIExpression()), !dbg !3686
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_insn, i64 0, i32 1, i32 0, i32 1, !dbg !3687
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3687
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3687
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3679, metadata !DIExpression()), !dbg !3686
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %target_insn, i64 0, i32 1, i32 0, i32 1, !dbg !3688
  %rt_bb4 = bitcast %struct.object_block** %arrayidx3 to %struct.basic_block_def**, !dbg !3688
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb4, align 8, !dbg !3688
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !3680, metadata !DIExpression()), !dbg !3686
  %cmp = icmp eq %struct.basic_block_def* %0, %1, !dbg !3689
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3691

cond.true:                                        ; preds = %entry
  %2 = load %struct.df*, %struct.df** @df, align 8, !dbg !3692
  %insns = getelementptr inbounds %struct.df, %struct.df* %2, i64 0, i32 10, !dbg !3692
  %3 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3692
  %arrayidx7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3692
  %rt_int = bitcast %union.rtunion_def* %arrayidx7 to i32*, !dbg !3692
  %4 = load i32, i32* %rt_int, align 8, !dbg !3692
  %idxprom = sext i32 %4 to i64, !dbg !3692
  %arrayidx8 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %3, i64 %idxprom, !dbg !3692
  %5 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx8, align 8, !dbg !3692
  %luid = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %5, i64 0, i32 5, !dbg !3692
  %6 = load i32, i32* %luid, align 8, !dbg !3692
  %arrayidx12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %target_insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3693
  %rt_int13 = bitcast %union.rtunion_def* %arrayidx12 to i32*, !dbg !3693
  %7 = load i32, i32* %rt_int13, align 8, !dbg !3693
  %idxprom14 = sext i32 %7 to i64, !dbg !3693
  %arrayidx15 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %3, i64 %idxprom14, !dbg !3693
  %8 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx15, align 8, !dbg !3693
  %luid16 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %8, i64 0, i32 5, !dbg !3693
  %9 = load i32, i32* %luid16, align 8, !dbg !3693
  %cmp17 = icmp slt i32 %6, %9, !dbg !3694
  br i1 %cmp17, label %if.end, label %cleanup90, !dbg !3695

cond.false:                                       ; preds = %entry
  %call = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %1, %struct.basic_block_def* %0) #6, !dbg !3696
  %tobool = icmp eq i8 %call, 0, !dbg !3696
  br i1 %tobool, label %cleanup90, label %cond.false.if.end_crit_edge, !dbg !3691

cond.false.if.end_crit_edge:                      ; preds = %cond.false
  %.pre = load %struct.df*, %struct.df** @df, align 8, !dbg !3697
  br label %if.end, !dbg !3691

if.end:                                           ; preds = %cond.false.if.end_crit_edge, %cond.true
  %10 = phi %struct.df* [ %.pre, %cond.false.if.end_crit_edge ], [ %2, %cond.true ], !dbg !3697
  %regno18 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %use, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !3698
  %11 = load i32, i32* %regno18, align 8, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %11, metadata !3681, metadata !DIExpression()), !dbg !3686
  %def_regs = getelementptr inbounds %struct.df, %struct.df* %10, i64 0, i32 5, !dbg !3697
  %12 = load %struct.df_reg_info**, %struct.df_reg_info*** %def_regs, align 8, !dbg !3697
  %idxprom19 = sext i32 %11 to i64, !dbg !3697
  %arrayidx20 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %12, i64 %idxprom19, !dbg !3697
  %13 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx20, align 8, !dbg !3697
  %reg_chain = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %13, i64 0, i32 0, !dbg !3697
  %14 = load %union.df_ref_d*, %union.df_ref_d** %reg_chain, align 8, !dbg !3697
  call void @llvm.dbg.value(metadata %union.df_ref_d* %14, metadata !3682, metadata !DIExpression()), !dbg !3686
  %tobool21 = icmp eq %union.df_ref_d* %14, null, !dbg !3699
  br i1 %tobool21, label %if.end27, label %land.lhs.true, !dbg !3701

land.lhs.true:                                    ; preds = %if.end
  %next_reg = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %14, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !3702
  %15 = load %union.df_ref_d*, %union.df_ref_d** %next_reg, align 8, !dbg !3702
  %cmp23 = icmp eq %union.df_ref_d* %15, null, !dbg !3703
  %cmp25 = icmp sgt i32 %11, 52, !dbg !3704
  %or.cond = and i1 %cmp23, %cmp25, !dbg !3705
  br i1 %or.cond, label %cleanup90, label %if.end27, !dbg !3705

if.end27:                                         ; preds = %if.end, %land.lhs.true
  br i1 %cmp, label %if.then29, label %if.end31, !dbg !3706

if.then29:                                        ; preds = %if.end27
  %call30 = tail call fastcc zeroext i8 @local_ref_killed_between_p(%union.df_ref_d* %use, %struct.rtx_def* %def_insn, %struct.rtx_def* %target_insn) #7, !dbg !3707
  br label %cleanup90, !dbg !3709

if.end31:                                         ; preds = %if.end27
  %call32 = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %1) #7, !dbg !3710
  %tobool33 = icmp eq i8 %call32, 0, !dbg !3710
  br i1 %tobool33, label %cleanup90, label %land.lhs.true34, !dbg !3711

land.lhs.true34:                                  ; preds = %if.end31
  %call35 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %1) #7, !dbg !3712
  %cmp36 = icmp eq %struct.basic_block_def* %call35, %0, !dbg !3713
  br i1 %cmp36, label %if.then38, label %cleanup90, !dbg !3714

if.then38:                                        ; preds = %land.lhs.true34
  %call39 = tail call %union.df_ref_d* @df_bb_regno_last_def_find(%struct.basic_block_def* %0, i32 %11) #6, !dbg !3715
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call39, metadata !3683, metadata !DIExpression()), !dbg !3716
  %tobool40 = icmp eq %union.df_ref_d* %call39, null, !dbg !3717
  br i1 %tobool40, label %if.end62, label %land.lhs.true41, !dbg !3719

land.lhs.true41:                                  ; preds = %if.then38
  %16 = load %struct.df*, %struct.df** @df, align 8, !dbg !3720
  %insns42 = getelementptr inbounds %struct.df, %struct.df* %16, i64 0, i32 10, !dbg !3720
  %17 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns42, align 8, !dbg !3720
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call39, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3720
  %18 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !3720
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %18, i64 0, i32 0, !dbg !3720
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3720
  %arrayidx46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3720
  %rt_int47 = bitcast %union.rtunion_def* %arrayidx46 to i32*, !dbg !3720
  %20 = load i32, i32* %rt_int47, align 8, !dbg !3720
  %idxprom48 = sext i32 %20 to i64, !dbg !3720
  %arrayidx49 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %17, i64 %idxprom48, !dbg !3720
  %21 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx49, align 8, !dbg !3720
  %luid50 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %21, i64 0, i32 5, !dbg !3720
  %22 = load i32, i32* %luid50, align 8, !dbg !3720
  %arrayidx54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %def_insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3721
  %rt_int55 = bitcast %union.rtunion_def* %arrayidx54 to i32*, !dbg !3721
  %23 = load i32, i32* %rt_int55, align 8, !dbg !3721
  %idxprom56 = sext i32 %23 to i64, !dbg !3721
  %arrayidx57 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %17, i64 %idxprom56, !dbg !3721
  %24 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx57, align 8, !dbg !3721
  %luid58 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %24, i64 0, i32 5, !dbg !3721
  %25 = load i32, i32* %luid58, align 8, !dbg !3721
  %cmp59 = icmp slt i32 %22, %25, !dbg !3722
  br i1 %cmp59, label %if.end62, label %cleanup90, !dbg !3723

if.end62:                                         ; preds = %land.lhs.true41, %if.then38
  %call63 = tail call %union.df_ref_d* @df_bb_regno_first_def_find(%struct.basic_block_def* %1, i32 %11) #6, !dbg !3724
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call63, metadata !3683, metadata !DIExpression()), !dbg !3716
  %tobool64 = icmp eq %union.df_ref_d* %call63, null, !dbg !3725
  br i1 %tobool64, label %if.end88, label %land.lhs.true65, !dbg !3727

land.lhs.true65:                                  ; preds = %if.end62
  %26 = load %struct.df*, %struct.df** @df, align 8, !dbg !3728
  %insns66 = getelementptr inbounds %struct.df, %struct.df* %26, i64 0, i32 10, !dbg !3728
  %27 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns66, align 8, !dbg !3728
  %insn_info68 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call63, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !3728
  %28 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info68, align 8, !dbg !3728
  %insn69 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %28, i64 0, i32 0, !dbg !3728
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn69, align 8, !dbg !3728
  %arrayidx72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3728
  %rt_int73 = bitcast %union.rtunion_def* %arrayidx72 to i32*, !dbg !3728
  %30 = load i32, i32* %rt_int73, align 8, !dbg !3728
  %idxprom74 = sext i32 %30 to i64, !dbg !3728
  %arrayidx75 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %27, i64 %idxprom74, !dbg !3728
  %31 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx75, align 8, !dbg !3728
  %luid76 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %31, i64 0, i32 5, !dbg !3728
  %32 = load i32, i32* %luid76, align 8, !dbg !3728
  %arrayidx80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %target_insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3729
  %rt_int81 = bitcast %union.rtunion_def* %arrayidx80 to i32*, !dbg !3729
  %33 = load i32, i32* %rt_int81, align 8, !dbg !3729
  %idxprom82 = sext i32 %33 to i64, !dbg !3729
  %arrayidx83 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %27, i64 %idxprom82, !dbg !3729
  %34 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx83, align 8, !dbg !3729
  %luid84 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %34, i64 0, i32 5, !dbg !3729
  %35 = load i32, i32* %luid84, align 8, !dbg !3729
  %cmp85 = icmp slt i32 %32, %35, !dbg !3730
  br i1 %cmp85, label %cleanup90, label %if.end88, !dbg !3731

if.end88:                                         ; preds = %if.end62, %land.lhs.true65
  br label %cleanup90, !dbg !3732

cleanup90:                                        ; preds = %cond.true, %land.lhs.true41, %if.end31, %cond.false, %land.lhs.true34, %if.end88, %land.lhs.true65, %land.lhs.true, %if.then29
  %retval.1 = phi i8 [ %call30, %if.then29 ], [ 1, %cond.false ], [ 1, %cond.true ], [ 0, %land.lhs.true ], [ 0, %if.end88 ], [ 1, %land.lhs.true41 ], [ 1, %land.lhs.true65 ], [ 1, %land.lhs.true34 ], [ 1, %if.end31 ], !dbg !3686
  ret i8 %retval.1, !dbg !3733
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @local_ref_killed_between_p(%union.df_ref_d* %ref, %struct.rtx_def* %from, %struct.rtx_def* %to) unnamed_addr #4 !dbg !3734 {
entry:
  call void @llvm.dbg.value(metadata %union.df_ref_d* %ref, metadata !3736, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata %struct.rtx_def* %from, metadata !3737, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata %struct.rtx_def* %to, metadata !3738, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata %struct.rtx_def* %from, metadata !3739, metadata !DIExpression()), !dbg !3748
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3749
  %insns = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 10, !dbg !3749
  %regno = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %ref, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !3750
  br label %for.cond, !dbg !3752

for.cond:                                         ; preds = %for.inc24, %entry
  %insn.0 = phi %struct.rtx_def* [ %from, %entry ], [ %10, %for.inc24 ], !dbg !3753
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3739, metadata !DIExpression()), !dbg !3748
  %cmp = icmp eq %struct.rtx_def* %insn.0, %to, !dbg !3754
  br i1 %cmp, label %cleanup29, label %for.body, !dbg !3755

for.body:                                         ; preds = %for.cond
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3756
  %bf.load = load i32, i32* %1, align 8, !dbg !3756
  %bf.clear = and i32 %bf.load, 65535, !dbg !3756
  %cmp1 = icmp eq i32 %bf.clear, 8, !dbg !3756
  br i1 %cmp1, label %if.end, label %lor.lhs.false, !dbg !3756

lor.lhs.false:                                    ; preds = %for.body
  %cmp4 = icmp eq i32 %bf.clear, 7, !dbg !3756
  br i1 %cmp4, label %if.end, label %lor.lhs.false5, !dbg !3756

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %cmp8 = icmp eq i32 %bf.clear, 9, !dbg !3756
  br i1 %cmp8, label %if.end, label %lor.lhs.false9, !dbg !3756

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %cmp12 = icmp eq i32 %bf.clear, 10, !dbg !3756
  br i1 %cmp12, label %if.end, label %cleanup21, !dbg !3758

if.end:                                           ; preds = %lor.lhs.false9, %lor.lhs.false5, %lor.lhs.false, %for.body
  %2 = load %struct.df_insn_info**, %struct.df_insn_info*** %insns, align 8, !dbg !3759
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3759
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3759
  %3 = load i32, i32* %rt_int, align 8, !dbg !3759
  %idxprom = sext i32 %3 to i64, !dbg !3759
  %arrayidx13 = getelementptr inbounds %struct.df_insn_info*, %struct.df_insn_info** %2, i64 %idxprom, !dbg !3759
  %4 = load %struct.df_insn_info*, %struct.df_insn_info** %arrayidx13, align 8, !dbg !3759
  %defs = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %4, i64 0, i32 1, !dbg !3759
  %5 = load %union.df_ref_d**, %union.df_ref_d*** %defs, align 8, !dbg !3759
  call void @llvm.dbg.value(metadata %union.df_ref_d** %5, metadata !3740, metadata !DIExpression()), !dbg !3760
  br label %for.cond14, !dbg !3761

for.cond14:                                       ; preds = %for.inc, %if.end
  %def_rec.0 = phi %union.df_ref_d** [ %5, %if.end ], [ %incdec.ptr, %for.inc ], !dbg !3749
  call void @llvm.dbg.value(metadata %union.df_ref_d** %def_rec.0, metadata !3740, metadata !DIExpression()), !dbg !3760
  %6 = load %union.df_ref_d*, %union.df_ref_d** %def_rec.0, align 8, !dbg !3762
  %tobool = icmp eq %union.df_ref_d* %6, null, !dbg !3763
  br i1 %tobool, label %cleanup21.loopexit.split.loop.exit, label %for.body15, !dbg !3763

for.body15:                                       ; preds = %for.cond14
  %7 = load i32, i32* %regno, align 8, !dbg !3764
  %regno17 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %6, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !3765
  %8 = load i32, i32* %regno17, align 8, !dbg !3765
  %cmp18 = icmp eq i32 %7, %8, !dbg !3766
  br i1 %cmp18, label %cleanup21.loopexit.split.loop.exit1, label %for.inc

for.inc:                                          ; preds = %for.body15
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %def_rec.0, i64 1, !dbg !3767
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !3740, metadata !DIExpression()), !dbg !3760
  br label %for.cond14, !dbg !3768, !llvm.loop !3769

cleanup21.loopexit.split.loop.exit:               ; preds = %for.cond14
  br label %cleanup21.loopexit

cleanup21.loopexit.split.loop.exit1:              ; preds = %for.body15
  br label %cleanup21.loopexit

cleanup21.loopexit:                               ; preds = %cleanup21.loopexit.split.loop.exit1, %cleanup21.loopexit.split.loop.exit
  %cleanup.dest.slot.1.ph = phi i32 [ 0, %cleanup21.loopexit.split.loop.exit ], [ 1, %cleanup21.loopexit.split.loop.exit1 ]
  br label %cleanup21

cleanup21:                                        ; preds = %cleanup21.loopexit, %lor.lhs.false9
  %cleanup.dest.slot.1 = phi i32 [ 4, %lor.lhs.false9 ], [ %cleanup.dest.slot.1.ph, %cleanup21.loopexit ]
  switch i32 %cleanup.dest.slot.1, label %cleanup29 [
    i32 0, label %for.inc24
    i32 4, label %for.inc24
  ]

for.inc24:                                        ; preds = %cleanup21, %cleanup21
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3771
  %rt_rtx = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !3771
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3771
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !3739, metadata !DIExpression()), !dbg !3748
  br label %for.cond, !dbg !3772, !llvm.loop !3773

cleanup29:                                        ; preds = %for.cond, %cleanup21
  %retval.4 = phi i8 [ 1, %cleanup21 ], [ 0, %for.cond ], !dbg !3748
  ret i8 %retval.4, !dbg !3775
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3776 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3783, metadata !DIExpression()), !dbg !3784
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3785
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3785
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3785
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3785

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3785
  br label %cond.end, !dbg !3785

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3785
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3785
  %cmp = icmp eq i32 %call, 1, !dbg !3786
  %conv2 = zext i1 %cmp to i8, !dbg !3785
  ret i8 %conv2, !dbg !3787
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3788 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3792, metadata !DIExpression()), !dbg !3793
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !3794
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !3795
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3795
  ret %struct.basic_block_def* %0, !dbg !3796
}

declare dso_local %union.df_ref_d* @df_bb_regno_last_def_find(%struct.basic_block_def*, i32) local_unnamed_addr #1

declare dso_local %union.df_ref_d* @df_bb_regno_first_def_find(%struct.basic_block_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3797 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3803, metadata !DIExpression()), !dbg !3804
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3805
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3805

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3805
  %0 = load i32, i32* %num, align 8, !dbg !3805
  br label %cond.end, !dbg !3805

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3805
  ret i32 %cond, !dbg !3805
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3806 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3810, metadata !DIExpression()), !dbg !3811
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !3812
  %tobool = icmp eq i8 %call, 0, !dbg !3812
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3812

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3812
  br label %cond.end, !dbg !3812

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3813
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3813
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3813
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3813

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3813
  br label %cond.end5, !dbg !3813

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3813
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3813
  ret %struct.edge_def* %call7, !dbg !3814
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3815 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3819, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i32 0, metadata !3820, metadata !DIExpression()), !dbg !3821
  br label %land.end, !dbg !3822

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 0, !dbg !3822
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3822
  ret %struct.edge_def* %0, !dbg !3822
}

declare dso_local zeroext i8 @validate_unshare_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #1

declare dso_local i32 @num_changes_pending() local_unnamed_addr #1

declare dso_local i32 @apply_change_group() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3823 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3830, metadata !DIExpression()), !dbg !3831
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3832
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3832
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3832
  ret i32 %0, !dbg !3833
}

declare dso_local i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @varying_mem_p(%struct.rtx_def** %body, i8* %data) #4 !dbg !3834 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %body, metadata !3838, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i8* %data, metadata !3839, metadata !DIExpression()), !dbg !3841
  %0 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8, !dbg !3842
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3840, metadata !DIExpression()), !dbg !3841
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !3843
  %bf.load = load i32, i32* %1, align 8, !dbg !3843
  %bf.clear = and i32 %bf.load, 65535, !dbg !3843
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !3843
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3844

land.rhs:                                         ; preds = %entry
  %bf.clear2 = lshr i32 %bf.load, 26
  %bf.clear2.lobit = and i32 %bf.clear2, 1
  %2 = xor i32 %bf.clear2.lobit, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %2, %land.rhs ]
  ret i32 %3, !dbg !3845
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** %px, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) unnamed_addr #4 !dbg !3846 {
entry:
  %op0 = alloca %struct.rtx_def*, align 8
  %op1 = alloca %struct.rtx_def*, align 8
  %op2 = alloca %struct.rtx_def*, align 8
  %new_op0 = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def** %px, metadata !3850, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def* %old_rtx, metadata !3851, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def* %new_rtx, metadata !3852, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3853, metadata !DIExpression()), !dbg !3868
  %0 = load %struct.rtx_def*, %struct.rtx_def** %px, align 8, !dbg !3869
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !3854, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3855, metadata !DIExpression()), !dbg !3868
  %1 = bitcast %struct.rtx_def** %op0 to i8*, !dbg !3870
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !3870
  %2 = bitcast %struct.rtx_def** %op1 to i8*, !dbg !3870
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !3870
  %3 = bitcast %struct.rtx_def** %op2 to i8*, !dbg !3870
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3870
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !3871
  %bf.load = load i32, i32* %4, align 8, !dbg !3871
  %bf.clear = and i32 %bf.load, 65535, !dbg !3871
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3859, metadata !DIExpression()), !dbg !3868
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3872
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3872
  call void @llvm.dbg.value(metadata i32 %bf.clear2, metadata !3860, metadata !DIExpression()), !dbg !3868
  %5 = trunc i32 %flags to i8, !dbg !3873
  %6 = and i8 %5, 1, !dbg !3873
  call void @llvm.dbg.value(metadata i8 %6, metadata !3862, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i8 1, metadata !3863, metadata !DIExpression()), !dbg !3868
  %and4 = and i32 %flags, 2, !dbg !3874
  %tobool = icmp eq i32 %and4, 0, !dbg !3874
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3876

land.lhs.true:                                    ; preds = %entry
  %cmp7 = icmp eq i32 %bf.clear, 43, !dbg !3877
  br i1 %cmp7, label %land.lhs.true9, label %if.end, !dbg !3878

land.lhs.true9:                                   ; preds = %land.lhs.true
  %bf.clear12 = and i32 %bf.load, 67108864, !dbg !3879
  %tobool13 = icmp eq i32 %bf.clear12, 0, !dbg !3879
  br i1 %tobool13, label %if.then, label %if.end, !dbg !3880

if.then:                                          ; preds = %land.lhs.true9
  %call = tail call i32 @side_effects_p(%struct.rtx_def* %0) #6, !dbg !3881
  %tobool14 = icmp eq i32 %call, 0, !dbg !3881
  %bf.load15 = load i32, i32* %4, align 8, !dbg !3883
  %bf.lshr16 = lshr i32 %bf.load15, 16, !dbg !3883
  %bf.clear17 = and i32 %bf.lshr16, 255, !dbg !3883
  br i1 %tobool14, label %cond.false, label %cond.true, !dbg !3881

cond.true:                                        ; preds = %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !3884
  %call18 = tail call %struct.rtx_def* @gen_rtx_fmt_e_stat(i32 25, i32 %bf.clear17, %struct.rtx_def* %7) #6, !dbg !3884
  br label %cond.end, !dbg !3881

cond.false:                                       ; preds = %if.then
  %call22 = tail call %struct.rtx_def* @gen_rtx_fmt_0_stat(i32 38, i32 %bf.clear17) #6, !dbg !3885
  br label %cond.end, !dbg !3881

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %call18, %cond.true ], [ %call22, %cond.false ], !dbg !3881
  store %struct.rtx_def* %cond, %struct.rtx_def** %px, align 8, !dbg !3886
  br label %cleanup377, !dbg !3887

if.end:                                           ; preds = %land.lhs.true9, %entry, %land.lhs.true
  %cmp23 = icmp eq %struct.rtx_def* %0, %old_rtx, !dbg !3888
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !3890

if.then25:                                        ; preds = %if.end
  store %struct.rtx_def* %new_rtx, %struct.rtx_def** %px, align 8, !dbg !3891
  br label %cleanup377, !dbg !3893

if.end26:                                         ; preds = %if.end
  %idxprom = zext i32 %bf.clear to i64, !dbg !3894
  %arrayidx = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !3894
  %8 = load i32, i32* %arrayidx, align 4, !dbg !3894
  switch i32 %8, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb45
    i32 3, label %sw.bb45
    i32 0, label %sw.bb80
    i32 1, label %sw.bb80
    i32 10, label %sw.bb130
    i32 11, label %sw.bb130
    i32 5, label %sw.bb191
    i32 8, label %sw.bb224
  ], !dbg !3895

sw.bb:                                            ; preds = %if.end26
  %arrayidx27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3896
  %9 = bitcast %union.rtunion_def* %arrayidx27 to i64*, !dbg !3896
  %10 = load i64, i64* %9, align 8, !dbg !3896
  %11 = bitcast %struct.rtx_def** %op0 to i64*, !dbg !3897
  store i64 %10, i64* %11, align 8, !dbg !3897
  %.cast8 = inttoptr i64 %10 to i32*, !dbg !3898
  %bf.load28 = load i32, i32* %.cast8, align 8, !dbg !3898
  call void @llvm.dbg.value(metadata i32 %bf.load28, metadata !3861, metadata !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op0, metadata !3856, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call31 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op0, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) #7, !dbg !3899
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8, !dbg !3900
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !3856, metadata !DIExpression()), !dbg !3868
  %rt_rtx39 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**, !dbg !3902
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx39, align 8, !dbg !3902
  %cmp40 = icmp eq %struct.rtx_def* %12, %13, !dbg !3903
  br i1 %cmp40, label %cleanup377, label %if.end43, !dbg !3904

if.end43:                                         ; preds = %sw.bb
  %14 = and i8 %call31, 1, !dbg !3905
  %and34 = zext i8 %14 to i32, !dbg !3905
  %bf.lshr29 = lshr i32 %bf.load28, 16, !dbg !3898
  call void @llvm.dbg.value(metadata i32 %bf.lshr29, metadata !3861, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !3868
  %bf.clear30 = and i32 %bf.lshr29, 255, !dbg !3898
  call void @llvm.dbg.value(metadata i32 %bf.clear30, metadata !3861, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !3856, metadata !DIExpression()), !dbg !3868
  %call44 = call %struct.rtx_def* @simplify_gen_unary(i32 %bf.clear, i32 %bf.clear2, %struct.rtx_def* %12, i32 %bf.clear30) #6, !dbg !3906
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call44, metadata !3855, metadata !DIExpression()), !dbg !3868
  br label %sw.epilog, !dbg !3907

sw.bb45:                                          ; preds = %if.end26, %if.end26
  %arrayidx48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3908
  %15 = bitcast %union.rtunion_def* %arrayidx48 to i64*, !dbg !3908
  %16 = load i64, i64* %15, align 8, !dbg !3908
  %17 = bitcast %struct.rtx_def** %op0 to i64*, !dbg !3909
  store i64 %16, i64* %17, align 8, !dbg !3909
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3910
  %19 = bitcast %union.rtunion_def* %18 to i64*, !dbg !3910
  %20 = load i64, i64* %19, align 8, !dbg !3910
  %21 = bitcast %struct.rtx_def** %op1 to i64*, !dbg !3911
  store i64 %20, i64* %21, align 8, !dbg !3911
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op0, metadata !3856, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call54 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op0, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) #7, !dbg !3912
  %22 = and i8 %call54, 1, !dbg !3913
  call void @llvm.dbg.value(metadata i8 %22, metadata !3863, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op1, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call59 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op1, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) #7, !dbg !3914
  %and627 = and i8 %22, %call59, !dbg !3915
  %and62 = zext i8 %and627 to i32, !dbg !3915
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8, !dbg !3916
  call void @llvm.dbg.value(metadata %struct.rtx_def* %23, metadata !3856, metadata !DIExpression()), !dbg !3868
  %rt_rtx67 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**, !dbg !3918
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx67, align 8, !dbg !3918
  %cmp68 = icmp eq %struct.rtx_def* %23, %24, !dbg !3919
  br i1 %cmp68, label %land.lhs.true70, label %sw.bb45.if.end78_crit_edge, !dbg !3920

sw.bb45.if.end78_crit_edge:                       ; preds = %sw.bb45
  %.pre12 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8, !dbg !3921
  br label %if.end78, !dbg !3920

land.lhs.true70:                                  ; preds = %sw.bb45
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8, !dbg !3922
  call void @llvm.dbg.value(metadata %struct.rtx_def* %25, metadata !3857, metadata !DIExpression()), !dbg !3868
  %rt_rtx74 = bitcast %union.rtunion_def* %18 to %struct.rtx_def**, !dbg !3923
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx74, align 8, !dbg !3923
  %cmp75 = icmp eq %struct.rtx_def* %25, %26, !dbg !3924
  br i1 %cmp75, label %cleanup377, label %if.end78, !dbg !3925

if.end78:                                         ; preds = %sw.bb45.if.end78_crit_edge, %land.lhs.true70
  %27 = phi %struct.rtx_def* [ %.pre12, %sw.bb45.if.end78_crit_edge ], [ %25, %land.lhs.true70 ], !dbg !3921
  call void @llvm.dbg.value(metadata %struct.rtx_def* %23, metadata !3856, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def* %27, metadata !3857, metadata !DIExpression()), !dbg !3868
  %call79 = call %struct.rtx_def* @simplify_gen_binary(i32 %bf.clear, i32 %bf.clear2, %struct.rtx_def* %23, %struct.rtx_def* %27) #6, !dbg !3926
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call79, metadata !3855, metadata !DIExpression()), !dbg !3868
  br label %sw.epilog, !dbg !3927

sw.bb80:                                          ; preds = %if.end26, %if.end26
  %arrayidx83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3928
  %28 = bitcast %union.rtunion_def* %arrayidx83 to i64*, !dbg !3928
  %29 = load i64, i64* %28, align 8, !dbg !3928
  %30 = bitcast %struct.rtx_def** %op0 to i64*, !dbg !3929
  store i64 %29, i64* %30, align 8, !dbg !3929
  %31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3930
  %32 = bitcast %union.rtunion_def* %31 to i64*, !dbg !3930
  %33 = load i64, i64* %32, align 8, !dbg !3930
  %34 = bitcast %struct.rtx_def** %op1 to i64*, !dbg !3931
  store i64 %33, i64* %34, align 8, !dbg !3931
  %35 = inttoptr i64 %29 to i32*, !dbg !3932
  %bf.load89 = load i32, i32* %35, align 8, !dbg !3932
  %bf.clear91 = and i32 %bf.load89, 16711680, !dbg !3932
  %cmp92 = icmp eq i32 %bf.clear91, 0, !dbg !3933
  br i1 %cmp92, label %cond.false98, label %cond.true94, !dbg !3932

cond.true94:                                      ; preds = %sw.bb80
  br label %cond.end102, !dbg !3932

cond.false98:                                     ; preds = %sw.bb80
  %36 = inttoptr i64 %33 to i32*, !dbg !3932
  br label %cond.end102, !dbg !3932

cond.end102:                                      ; preds = %cond.false98, %cond.true94
  %cond103.in.in.in = phi i32* [ %35, %cond.true94 ], [ %36, %cond.false98 ], !dbg !3934
  %cond103.in.in = load i32, i32* %cond103.in.in.in, align 8, !dbg !3934
  %cond103.in = lshr i32 %cond103.in.in, 16, !dbg !3934
  %cond103 = and i32 %cond103.in, 255, !dbg !3932
  call void @llvm.dbg.value(metadata i32 %cond103, metadata !3861, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op0, metadata !3856, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call104 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op0, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) #7, !dbg !3935
  %37 = and i8 %call104, 1, !dbg !3936
  call void @llvm.dbg.value(metadata i8 %37, metadata !3863, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op1, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call109 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op1, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) #7, !dbg !3937
  %and1126 = and i8 %37, %call109, !dbg !3938
  %and112 = zext i8 %and1126 to i32, !dbg !3938
  %38 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8, !dbg !3939
  call void @llvm.dbg.value(metadata %struct.rtx_def* %38, metadata !3856, metadata !DIExpression()), !dbg !3868
  %rt_rtx117 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**, !dbg !3941
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx117, align 8, !dbg !3941
  %cmp118 = icmp eq %struct.rtx_def* %38, %39, !dbg !3942
  br i1 %cmp118, label %land.lhs.true120, label %cond.end102.if.end128_crit_edge, !dbg !3943

cond.end102.if.end128_crit_edge:                  ; preds = %cond.end102
  %.pre11 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8, !dbg !3944
  br label %if.end128, !dbg !3943

land.lhs.true120:                                 ; preds = %cond.end102
  %40 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8, !dbg !3945
  call void @llvm.dbg.value(metadata %struct.rtx_def* %40, metadata !3857, metadata !DIExpression()), !dbg !3868
  %rt_rtx124 = bitcast %union.rtunion_def* %31 to %struct.rtx_def**, !dbg !3946
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx124, align 8, !dbg !3946
  %cmp125 = icmp eq %struct.rtx_def* %40, %41, !dbg !3947
  br i1 %cmp125, label %cleanup377, label %if.end128, !dbg !3948

if.end128:                                        ; preds = %cond.end102.if.end128_crit_edge, %land.lhs.true120
  %42 = phi %struct.rtx_def* [ %.pre11, %cond.end102.if.end128_crit_edge ], [ %40, %land.lhs.true120 ], !dbg !3944
  call void @llvm.dbg.value(metadata %struct.rtx_def* %38, metadata !3856, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def* %42, metadata !3857, metadata !DIExpression()), !dbg !3868
  %call129 = call %struct.rtx_def* @simplify_gen_relational(i32 %bf.clear, i32 %bf.clear2, i32 %cond103, %struct.rtx_def* %38, %struct.rtx_def* %42) #6, !dbg !3949
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call129, metadata !3855, metadata !DIExpression()), !dbg !3868
  br label %sw.epilog, !dbg !3950

sw.bb130:                                         ; preds = %if.end26, %if.end26
  %arrayidx133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3951
  %43 = bitcast %union.rtunion_def* %arrayidx133 to i64*, !dbg !3951
  %44 = load i64, i64* %43, align 8, !dbg !3951
  %45 = bitcast %struct.rtx_def** %op0 to i64*, !dbg !3952
  store i64 %44, i64* %45, align 8, !dbg !3952
  %46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3953
  %47 = bitcast %union.rtunion_def* %46 to i64*, !dbg !3953
  %48 = load i64, i64* %47, align 8, !dbg !3953
  %49 = bitcast %struct.rtx_def** %op1 to i64*, !dbg !3954
  store i64 %48, i64* %49, align 8, !dbg !3954
  %50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3955
  %51 = bitcast %union.rtunion_def* %50 to i64*, !dbg !3955
  %52 = load i64, i64* %51, align 8, !dbg !3955
  %53 = bitcast %struct.rtx_def** %op2 to i64*, !dbg !3956
  store i64 %52, i64* %53, align 8, !dbg !3956
  %54 = inttoptr i64 %44 to i32*, !dbg !3957
  %bf.load143 = load i32, i32* %54, align 8, !dbg !3957
  %bf.lshr144 = lshr i32 %bf.load143, 16, !dbg !3957
  %bf.clear145 = and i32 %bf.lshr144, 255, !dbg !3957
  call void @llvm.dbg.value(metadata i32 %bf.clear145, metadata !3861, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op0, metadata !3856, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call146 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op0, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) #7, !dbg !3958
  %55 = and i8 %call146, 1, !dbg !3959
  call void @llvm.dbg.value(metadata i8 %55, metadata !3863, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op1, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call151 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op1, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) #7, !dbg !3960
  %and1544 = and i8 %55, %call151, !dbg !3961
  call void @llvm.dbg.value(metadata i8 %and1544, metadata !3863, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op2, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call156 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op2, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) #7, !dbg !3962
  %and1595 = and i8 %and1544, %call156, !dbg !3963
  %and159 = zext i8 %and1595 to i32, !dbg !3963
  %56 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8, !dbg !3964
  call void @llvm.dbg.value(metadata %struct.rtx_def* %56, metadata !3856, metadata !DIExpression()), !dbg !3868
  %rt_rtx164 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**, !dbg !3966
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx164, align 8, !dbg !3966
  %cmp165 = icmp eq %struct.rtx_def* %56, %57, !dbg !3967
  %58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i64 0, i32 0, !dbg !3968
  br i1 %cmp165, label %land.lhs.true167, label %if.end182, !dbg !3968

land.lhs.true167:                                 ; preds = %sw.bb130
  %59 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8, !dbg !3969
  call void @llvm.dbg.value(metadata %struct.rtx_def* %59, metadata !3857, metadata !DIExpression()), !dbg !3868
  %rt_rtx171 = bitcast %union.rtunion_def* %46 to %struct.rtx_def**, !dbg !3970
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx171, align 8, !dbg !3970
  %cmp172 = icmp eq %struct.rtx_def* %59, %60, !dbg !3971
  br i1 %cmp172, label %land.lhs.true174, label %if.end182, !dbg !3972

land.lhs.true174:                                 ; preds = %land.lhs.true167
  %61 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8, !dbg !3973
  call void @llvm.dbg.value(metadata %struct.rtx_def* %61, metadata !3858, metadata !DIExpression()), !dbg !3868
  %rt_rtx178 = bitcast %union.rtunion_def* %50 to %struct.rtx_def**, !dbg !3974
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx178, align 8, !dbg !3974
  %cmp179 = icmp eq %struct.rtx_def* %61, %62, !dbg !3975
  br i1 %cmp179, label %cleanup377, label %if.end182, !dbg !3976

if.end182:                                        ; preds = %land.lhs.true174, %land.lhs.true167, %sw.bb130
  %cmp183 = icmp eq i32 %bf.clear145, 0, !dbg !3977
  br i1 %cmp183, label %if.then185, label %if.end189, !dbg !3979

if.then185:                                       ; preds = %if.end182
  %bf.load186 = load i32, i32* %58, align 8, !dbg !3980
  %bf.lshr187 = lshr i32 %bf.load186, 16, !dbg !3980
  %bf.clear188 = and i32 %bf.lshr187, 255, !dbg !3980
  call void @llvm.dbg.value(metadata i32 %bf.clear188, metadata !3861, metadata !DIExpression()), !dbg !3868
  br label %if.end189, !dbg !3981

if.end189:                                        ; preds = %if.then185, %if.end182
  %op_mode.0 = phi i32 [ %bf.clear188, %if.then185 ], [ %bf.clear145, %if.end182 ], !dbg !3934
  call void @llvm.dbg.value(metadata i32 %op_mode.0, metadata !3861, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def* %56, metadata !3856, metadata !DIExpression()), !dbg !3868
  %63 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8, !dbg !3982
  call void @llvm.dbg.value(metadata %struct.rtx_def* %63, metadata !3857, metadata !DIExpression()), !dbg !3868
  %64 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8, !dbg !3983
  call void @llvm.dbg.value(metadata %struct.rtx_def* %64, metadata !3858, metadata !DIExpression()), !dbg !3868
  %call190 = call %struct.rtx_def* @simplify_gen_ternary(i32 %bf.clear, i32 %bf.clear2, i32 %op_mode.0, %struct.rtx_def* %56, %struct.rtx_def* %63, %struct.rtx_def* %64) #6, !dbg !3984
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call190, metadata !3855, metadata !DIExpression()), !dbg !3868
  br label %sw.epilog, !dbg !3985

sw.bb191:                                         ; preds = %if.end26
  %cmp192 = icmp eq i32 %bf.clear, 39, !dbg !3986
  br i1 %cmp192, label %if.then194, label %sw.epilog, !dbg !3988

if.then194:                                       ; preds = %sw.bb191
  %arrayidx197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3989
  %65 = bitcast %union.rtunion_def* %arrayidx197 to i64*, !dbg !3989
  %66 = load i64, i64* %65, align 8, !dbg !3989
  %67 = bitcast %struct.rtx_def** %op0 to i64*, !dbg !3991
  store i64 %66, i64* %67, align 8, !dbg !3991
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op0, metadata !3856, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call199 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op0, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) #7, !dbg !3992
  %68 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8, !dbg !3993
  call void @llvm.dbg.value(metadata %struct.rtx_def* %68, metadata !3856, metadata !DIExpression()), !dbg !3868
  %rt_rtx207 = bitcast %union.rtunion_def* %arrayidx197 to %struct.rtx_def**, !dbg !3995
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx207, align 8, !dbg !3995
  %cmp208 = icmp eq %struct.rtx_def* %68, %69, !dbg !3996
  br i1 %cmp208, label %cleanup377, label %if.end211, !dbg !3997

if.end211:                                        ; preds = %if.then194
  %70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i64 0, i32 0, !dbg !3997
  %71 = and i8 %call199, 1, !dbg !3998
  %and202 = zext i8 %71 to i32, !dbg !3998
  call void @llvm.dbg.value(metadata %struct.rtx_def* %68, metadata !3856, metadata !DIExpression()), !dbg !3868
  %bf.load216 = load i32, i32* %70, align 8, !dbg !3999
  %bf.lshr217 = lshr i32 %bf.load216, 16, !dbg !3999
  %bf.clear218 = and i32 %bf.lshr217, 255, !dbg !3999
  %72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4000
  %rt_uint = bitcast %union.rtunion_def* %72 to i32*, !dbg !4000
  %73 = load i32, i32* %rt_uint, align 8, !dbg !4000
  %call222 = call %struct.rtx_def* @simplify_gen_subreg(i32 %bf.clear2, %struct.rtx_def* %68, i32 %bf.clear218, i32 %73) #6, !dbg !4001
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call222, metadata !3855, metadata !DIExpression()), !dbg !3868
  br label %sw.epilog, !dbg !4002

sw.bb224:                                         ; preds = %if.end26
  %cmp225 = icmp eq i32 %bf.clear, 43, !dbg !4003
  %cmp228 = icmp ne %struct.rtx_def* %0, %new_rtx, !dbg !4004
  %or.cond = and i1 %cmp225, %cmp228, !dbg !4005
  br i1 %or.cond, label %if.then230, label %if.else, !dbg !4005

if.then230:                                       ; preds = %sw.bb224
  %74 = bitcast %struct.rtx_def** %new_op0 to i8*, !dbg !4006
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74) #8, !dbg !4006
  %arrayidx233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4007
  %75 = bitcast %union.rtunion_def* %arrayidx233 to i64*, !dbg !4007
  %76 = load i64, i64* %75, align 8, !dbg !4007
  %77 = bitcast %struct.rtx_def** %op0 to i64*, !dbg !4008
  store i64 %76, i64* %77, align 8, !dbg !4008
  %.cast = inttoptr i64 %76 to %struct.rtx_def*, !dbg !4009
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.cast, metadata !3856, metadata !DIExpression()), !dbg !3868
  %call235 = tail call fastcc zeroext i8 @can_simplify_addr(%struct.rtx_def* %.cast) #7, !dbg !4011
  %tobool236 = icmp eq i8 %call235, 0, !dbg !4011
  br i1 %tobool236, label %cleanup, label %if.end238, !dbg !4012

if.end238:                                        ; preds = %if.then230
  %78 = load %struct.rtx_def* (%struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 40), align 8, !dbg !4013
  call void @llvm.dbg.value(metadata %struct.rtx_def* %.cast, metadata !3856, metadata !DIExpression()), !dbg !3868
  %call239 = tail call %struct.rtx_def* %78(%struct.rtx_def* %.cast) #6, !dbg !4014
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call239, metadata !3864, metadata !DIExpression()), !dbg !4015
  store %struct.rtx_def* %call239, %struct.rtx_def** %new_op0, align 8, !dbg !4016
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call239, metadata !3856, metadata !DIExpression()), !dbg !3868
  store %struct.rtx_def* %call239, %struct.rtx_def** %op0, align 8, !dbg !4017
  %or = or i32 %flags, 1, !dbg !4018
  call void @llvm.dbg.value(metadata %struct.rtx_def** %new_op0, metadata !3864, metadata !DIExpression(DW_OP_deref)), !dbg !4015
  %call240 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %new_op0, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %or) #7, !dbg !4019
  %79 = and i8 %call240, 1, !dbg !4020
  %and243 = zext i8 %79 to i32, !dbg !4020
  call void @llvm.dbg.value(metadata i8 %79, metadata !3863, metadata !DIExpression()), !dbg !3868
  %tobool245 = icmp eq i8 %79, 0, !dbg !4021
  br i1 %tobool245, label %cleanup, label %lor.lhs.false, !dbg !4023

lor.lhs.false:                                    ; preds = %if.end238
  %80 = load %struct.rtx_def*, %struct.rtx_def** %new_op0, align 8, !dbg !4024
  call void @llvm.dbg.value(metadata %struct.rtx_def* %80, metadata !3864, metadata !DIExpression()), !dbg !4015
  %81 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8, !dbg !4025
  call void @llvm.dbg.value(metadata %struct.rtx_def* %81, metadata !3856, metadata !DIExpression()), !dbg !3868
  %cmp246 = icmp eq %struct.rtx_def* %80, %81, !dbg !4026
  br i1 %cmp246, label %cleanup, label %lor.lhs.false248, !dbg !4027

lor.lhs.false248:                                 ; preds = %lor.lhs.false
  %82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i64 0, i32 0, !dbg !4027
  %83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i64 0, i32 0, !dbg !4027
  %bf.load249 = load i32, i32* %83, align 8, !dbg !4028
  %bf.load252 = load i32, i32* %82, align 8, !dbg !4029
  %bf.lshr2509 = xor i32 %bf.load249, %bf.load252, !dbg !4030
  %84 = and i32 %bf.lshr2509, 16711680, !dbg !4030
  %cmp255 = icmp eq i32 %84, 0, !dbg !4030
  br i1 %cmp255, label %if.end264, label %lor.lhs.false257, !dbg !4031

lor.lhs.false257:                                 ; preds = %lor.lhs.false248
  %bf.clear260 = and i32 %bf.load249, 16711680, !dbg !4032
  %cmp261 = icmp eq i32 %bf.clear260, 0, !dbg !4033
  br i1 %cmp261, label %if.end264, label %cleanup, !dbg !4034

if.end264:                                        ; preds = %lor.lhs.false257, %lor.lhs.false248
  call void @llvm.dbg.value(metadata %struct.rtx_def* %80, metadata !3864, metadata !DIExpression()), !dbg !4015
  call fastcc void @canonicalize_address(%struct.rtx_def* %80) #7, !dbg !4035
  %85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %old_rtx, i64 0, i32 0, !dbg !4036
  %bf.load265 = load i32, i32* %85, align 8, !dbg !4036
  %bf.clear266 = and i32 %bf.load265, 65535, !dbg !4036
  %cmp267 = icmp eq i32 %bf.clear266, 37, !dbg !4036
  br i1 %cmp267, label %land.lhs.true269, label %land.lhs.true274, !dbg !4038

land.lhs.true269:                                 ; preds = %if.end264
  %86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %new_rtx, i64 0, i32 0, !dbg !4039
  %bf.load270 = load i32, i32* %86, align 8, !dbg !4039
  %bf.clear271 = and i32 %bf.load270, 65535, !dbg !4039
  %cmp272 = icmp eq i32 %bf.clear271, 37, !dbg !4039
  br i1 %cmp272, label %if.end298, label %land.lhs.true274, !dbg !4040

land.lhs.true274:                                 ; preds = %land.lhs.true269, %if.end264
  %87 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8, !dbg !4041
  call void @llvm.dbg.value(metadata %struct.rtx_def* %87, metadata !3856, metadata !DIExpression()), !dbg !3868
  %88 = load %struct.rtx_def*, %struct.rtx_def** %new_op0, align 8, !dbg !4042
  call void @llvm.dbg.value(metadata %struct.rtx_def* %88, metadata !3864, metadata !DIExpression()), !dbg !4015
  %bf.load275 = load i32, i32* %4, align 8, !dbg !4043
  %bf.lshr276 = lshr i32 %bf.load275, 16, !dbg !4043
  %bf.clear277 = and i32 %bf.lshr276, 255, !dbg !4043
  %89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4044
  %rt_mem = bitcast %union.rtunion_def* %89 to %struct.mem_attrs**, !dbg !4044
  %90 = load %struct.mem_attrs*, %struct.mem_attrs** %rt_mem, align 8, !dbg !4044
  %cmp281 = icmp eq %struct.mem_attrs* %90, null, !dbg !4044
  br i1 %cmp281, label %cond.end290, label %cond.false284, !dbg !4044

cond.false284:                                    ; preds = %land.lhs.true274
  %addrspace = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %90, i64 0, i32 5, !dbg !4044
  %91 = load i8, i8* %addrspace, align 8, !dbg !4044
  br label %cond.end290, !dbg !4044

cond.end290:                                      ; preds = %land.lhs.true274, %cond.false284
  %cond291 = phi i8 [ %91, %cond.false284 ], [ 0, %land.lhs.true274 ]
  %conv294 = and i8 %5, 4, !dbg !4045
  %call295 = call fastcc zeroext i8 @should_replace_address(%struct.rtx_def* %87, %struct.rtx_def* %88, i32 %bf.clear277, i8 zeroext %cond291, i8 zeroext %conv294) #7, !dbg !4046
  %tobool296 = icmp eq i8 %call295, 0, !dbg !4046
  br i1 %tobool296, label %cleanup, label %if.end298, !dbg !4047

if.end298:                                        ; preds = %cond.end290, %land.lhs.true269
  %92 = load %struct.rtx_def*, %struct.rtx_def** %new_op0, align 8, !dbg !4048
  call void @llvm.dbg.value(metadata %struct.rtx_def* %92, metadata !3864, metadata !DIExpression()), !dbg !4015
  %call299 = call %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def* %0, %struct.rtx_def* %92) #6, !dbg !4049
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call299, metadata !3855, metadata !DIExpression()), !dbg !3868
  br label %cleanup, !dbg !4050

cleanup:                                          ; preds = %cond.end290, %if.end238, %if.then230, %lor.lhs.false, %lor.lhs.false257, %if.end298
  %tem.1 = phi %struct.rtx_def* [ %call299, %if.end298 ], [ null, %if.then230 ], [ null, %lor.lhs.false257 ], [ null, %lor.lhs.false ], [ null, %if.end238 ], [ null, %cond.end290 ], !dbg !3868
  %valid_ops.1 = phi i32 [ %and243, %if.end298 ], [ 1, %if.then230 ], [ %and243, %lor.lhs.false257 ], [ %and243, %lor.lhs.false ], [ %and243, %if.end238 ], [ %and243, %cond.end290 ], !dbg !3868
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end298 ], [ false, %if.then230 ], [ false, %lor.lhs.false257 ], [ false, %lor.lhs.false ], [ false, %if.end238 ], [ false, %cond.end290 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tem.1, metadata !3855, metadata !DIExpression()), !dbg !3868
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74) #8, !dbg !4050
  br i1 %cleanup.dest.slot.0, label %sw.epilog, label %cleanup377

if.else:                                          ; preds = %sw.bb224
  %trunc = trunc i32 %bf.load to i16, !dbg !4051
  switch i16 %trunc, label %sw.epilog [
    i16 122, label %if.then302
    i16 37, label %if.then353
  ], !dbg !4051

if.then302:                                       ; preds = %if.else
  %arrayidx305 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4052
  %93 = bitcast %union.rtunion_def* %arrayidx305 to i64*, !dbg !4052
  %94 = load i64, i64* %93, align 8, !dbg !4052
  %95 = bitcast %struct.rtx_def** %op0 to i64*, !dbg !4055
  store i64 %94, i64* %95, align 8, !dbg !4055
  %96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4056
  %97 = bitcast %union.rtunion_def* %96 to i64*, !dbg !4056
  %98 = load i64, i64* %97, align 8, !dbg !4056
  %99 = bitcast %struct.rtx_def** %op1 to i64*, !dbg !4057
  store i64 %98, i64* %99, align 8, !dbg !4057
  %or311 = or i32 %flags, 1, !dbg !4058
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op0, metadata !3856, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call312 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op0, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %or311) #7, !dbg !4059
  call void @llvm.dbg.value(metadata %struct.rtx_def** %op1, metadata !3857, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %call313 = call fastcc zeroext i8 @propagate_rtx_1(%struct.rtx_def** nonnull %op1, %struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %flags) #7, !dbg !4060
  call void @llvm.dbg.value(metadata i8 undef, metadata !3863, metadata !DIExpression()), !dbg !3868
  %100 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8, !dbg !4061
  call void @llvm.dbg.value(metadata %struct.rtx_def* %100, metadata !3856, metadata !DIExpression()), !dbg !3868
  %rt_rtx321 = bitcast %union.rtunion_def* %arrayidx305 to %struct.rtx_def**, !dbg !4063
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx321, align 8, !dbg !4063
  %cmp322 = icmp eq %struct.rtx_def* %100, %101, !dbg !4064
  %102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i64 0, i32 0, !dbg !4065
  br i1 %cmp322, label %land.lhs.true324, label %if.end332, !dbg !4065

land.lhs.true324:                                 ; preds = %if.then302
  %103 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8, !dbg !4066
  call void @llvm.dbg.value(metadata %struct.rtx_def* %103, metadata !3857, metadata !DIExpression()), !dbg !3868
  %rt_rtx328 = bitcast %union.rtunion_def* %96 to %struct.rtx_def**, !dbg !4067
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx328, align 8, !dbg !4067
  %cmp329 = icmp eq %struct.rtx_def* %103, %104, !dbg !4068
  br i1 %cmp329, label %cleanup377, label %if.end332, !dbg !4069

if.end332:                                        ; preds = %land.lhs.true324, %if.then302
  %bf.load333 = load i32, i32* %102, align 8, !dbg !4070
  %bf.clear334 = and i32 %bf.load333, 65535, !dbg !4070
  %cmp335 = icmp eq i32 %bf.clear334, 121, !dbg !4072
  br i1 %cmp335, label %land.lhs.true337, label %if.else345, !dbg !4073

land.lhs.true337:                                 ; preds = %if.end332
  call void @llvm.dbg.value(metadata %struct.rtx_def* %100, metadata !3856, metadata !DIExpression()), !dbg !3868
  %arrayidx340 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4074
  %rt_rtx341 = bitcast %union.rtunion_def* %arrayidx340 to %struct.rtx_def**, !dbg !4074
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx341, align 8, !dbg !4074
  %106 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8, !dbg !4075
  call void @llvm.dbg.value(metadata %struct.rtx_def* %106, metadata !3857, metadata !DIExpression()), !dbg !3868
  %call342 = call i32 @rtx_equal_p(%struct.rtx_def* %105, %struct.rtx_def* %106) #6, !dbg !4076
  %tobool343 = icmp eq i32 %call342, 0, !dbg !4076
  br i1 %tobool343, label %land.lhs.true337.if.else345_crit_edge, label %if.then344, !dbg !4077

land.lhs.true337.if.else345_crit_edge:            ; preds = %land.lhs.true337
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8, !dbg !4078
  br label %if.else345, !dbg !4077

if.then344:                                       ; preds = %land.lhs.true337
  %107 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8, !dbg !4079
  call void @llvm.dbg.value(metadata %struct.rtx_def* %107, metadata !3857, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def* %107, metadata !3855, metadata !DIExpression()), !dbg !3868
  br label %if.end347, !dbg !4080

if.else345:                                       ; preds = %land.lhs.true337.if.else345_crit_edge, %if.end332
  %108 = phi %struct.rtx_def* [ %.pre, %land.lhs.true337.if.else345_crit_edge ], [ %100, %if.end332 ], !dbg !4078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %108, metadata !3856, metadata !DIExpression()), !dbg !3868
  %109 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8, !dbg !4078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %109, metadata !3857, metadata !DIExpression()), !dbg !3868
  %call346 = call %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32 122, i32 %bf.clear2, %struct.rtx_def* %108, %struct.rtx_def* %109) #6, !dbg !4078
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call346, metadata !3855, metadata !DIExpression()), !dbg !3868
  br label %if.end347

if.end347:                                        ; preds = %if.else345, %if.then344
  %tem.2 = phi %struct.rtx_def* [ %107, %if.then344 ], [ %call346, %if.else345 ], !dbg !4081
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tem.2, metadata !3855, metadata !DIExpression()), !dbg !3868
  %call348 = call i32 @memory_address_addr_space_p(i32 %bf.clear2, %struct.rtx_def* %tem.2, i8 zeroext 0) #6, !dbg !4082
  %conv349 = trunc i32 %call348 to i8, !dbg !4082
  br label %cleanup377, !dbg !4083

if.then353:                                       ; preds = %if.else
  %call354 = tail call i32 @rtx_equal_p(%struct.rtx_def* %0, %struct.rtx_def* %old_rtx) #6, !dbg !4084
  %tobool355 = icmp eq i32 %call354, 0, !dbg !4084
  br i1 %tobool355, label %sw.epilog, label %if.then356, !dbg !4088

if.then356:                                       ; preds = %if.then353
  store %struct.rtx_def* %new_rtx, %struct.rtx_def** %px, align 8, !dbg !4089
  br label %cleanup377, !dbg !4091

sw.epilog:                                        ; preds = %if.then353, %if.end26, %cleanup, %if.else, %sw.bb191, %if.end211, %if.end189, %if.end128, %if.end78, %if.end43
  %tem.4 = phi %struct.rtx_def* [ %call190, %if.end189 ], [ %call129, %if.end128 ], [ %call79, %if.end78 ], [ %call44, %if.end43 ], [ %call222, %if.end211 ], [ null, %sw.bb191 ], [ %tem.1, %cleanup ], [ null, %if.else ], [ null, %if.then353 ], [ null, %if.end26 ], !dbg !3868
  %valid_ops.3 = phi i32 [ %and159, %if.end189 ], [ %and112, %if.end128 ], [ %and62, %if.end78 ], [ %and34, %if.end43 ], [ %and202, %if.end211 ], [ 1, %sw.bb191 ], [ %valid_ops.1, %cleanup ], [ 1, %if.else ], [ 1, %if.then353 ], [ 1, %if.end26 ], !dbg !3868
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tem.4, metadata !3855, metadata !DIExpression()), !dbg !3868
  %cmp361 = icmp eq %struct.rtx_def* %tem.4, null, !dbg !4092
  br i1 %cmp361, label %cleanup377, label %if.end364, !dbg !4094

if.end364:                                        ; preds = %sw.epilog
  store %struct.rtx_def* %tem.4, %struct.rtx_def** %px, align 8, !dbg !4095
  %conv365 = and i32 %valid_ops.3, 255, !dbg !4096
  %tobool366 = icmp ne i32 %conv365, 0, !dbg !4096
  %tobool369 = icmp ne i8 %6, 0, !dbg !4097
  %or.cond2 = or i1 %tobool366, %tobool369, !dbg !4098
  br i1 %or.cond2, label %lor.end, label %lor.rhs, !dbg !4098

lor.rhs:                                          ; preds = %if.end364
  %110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tem.4, i64 0, i32 0, !dbg !4099
  %bf.load370 = load i32, i32* %110, align 8, !dbg !4099
  %bf.clear371 = and i32 %bf.load370, 65535, !dbg !4099
  %idxprom372 = zext i32 %bf.clear371 to i64, !dbg !4099
  %arrayidx373 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom372, !dbg !4099
  %111 = load i32, i32* %arrayidx373, align 4, !dbg !4099
  %cmp374 = icmp eq i32 %111, 9, !dbg !4099
  %phitmp = zext i1 %cmp374 to i8, !dbg !4100
  br label %lor.end, !dbg !4100

lor.end:                                          ; preds = %lor.rhs, %if.end364
  %112 = phi i8 [ 1, %if.end364 ], [ %phitmp, %lor.rhs ]
  br label %cleanup377, !dbg !4101

cleanup377:                                       ; preds = %sw.epilog, %land.lhs.true324, %if.then194, %land.lhs.true174, %land.lhs.true120, %land.lhs.true70, %sw.bb, %cleanup, %lor.end, %if.then356, %if.end347, %if.then25, %cond.end
  %retval.1 = phi i8 [ %6, %if.then25 ], [ %112, %lor.end ], [ 1, %cleanup ], [ %conv349, %if.end347 ], [ %6, %if.then356 ], [ 0, %cond.end ], [ 1, %sw.bb ], [ 1, %land.lhs.true70 ], [ 1, %land.lhs.true120 ], [ 1, %land.lhs.true174 ], [ 1, %if.then194 ], [ 1, %land.lhs.true324 ], [ 1, %sw.epilog ], !dbg !3868
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !4102
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !4102
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4102
  ret i8 %retval.1, !dbg !4102
}

declare dso_local i32 @side_effects_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_e_stat(i32, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_0_stat(i32, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @simplify_gen_unary(i32, i32, %struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @simplify_gen_binary(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @simplify_gen_relational(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @simplify_gen_ternary(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @simplify_gen_subreg(i32, %struct.rtx_def*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @can_simplify_addr(%struct.rtx_def* %addr) unnamed_addr #4 !dbg !4103 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %addr, metadata !4107, metadata !DIExpression()), !dbg !4109
  %call = tail call zeroext i8 @constant_address_p(%struct.rtx_def* %addr) #6, !dbg !4110
  %tobool = icmp eq i8 %call, 0, !dbg !4110
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4112

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %addr, i64 0, i32 0, !dbg !4113
  %bf.load = load i32, i32* %0, align 8, !dbg !4113
  %bf.clear = and i32 %bf.load, 65535, !dbg !4113
  %cmp = icmp eq i32 %bf.clear, 49, !dbg !4115
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4116

if.then1:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %addr, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4117
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !4117
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4117
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !4108, metadata !DIExpression()), !dbg !4109
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !4109
  %bf.load3.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !4118
  br label %if.end2, !dbg !4119

if.end2:                                          ; preds = %if.end, %if.then1
  %bf.load3 = phi i32 [ %bf.load3.pre, %if.then1 ], [ %bf.load, %if.end ], !dbg !4118
  %reg.0 = phi %struct.rtx_def* [ %1, %if.then1 ], [ %addr, %if.end ], !dbg !4120
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.0, metadata !4108, metadata !DIExpression()), !dbg !4109
  %bf.clear4 = and i32 %bf.load3, 65535, !dbg !4118
  %cmp5 = icmp eq i32 %bf.clear4, 37, !dbg !4118
  br i1 %cmp5, label %lor.rhs, label %lor.end, !dbg !4121

lor.rhs:                                          ; preds = %if.end2
  %call6 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg.0) #7, !dbg !4122
  %cmp7 = icmp eq i32 %call6, 20, !dbg !4123
  br i1 %cmp7, label %lor.end, label %land.lhs.true, !dbg !4124

land.lhs.true:                                    ; preds = %lor.rhs
  %call8 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg.0) #7, !dbg !4125
  %cmp9 = icmp eq i32 %call8, 6, !dbg !4126
  br i1 %cmp9, label %lor.end, label %land.rhs, !dbg !4127

land.rhs:                                         ; preds = %land.lhs.true
  %call10 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg.0) #7, !dbg !4128
  %cmp11 = icmp ne i32 %call10, 16, !dbg !4129
  %phitmp = zext i1 %cmp11 to i8
  br label %lor.end

lor.end:                                          ; preds = %land.lhs.true, %lor.rhs, %land.rhs, %if.end2
  %2 = phi i8 [ 1, %if.end2 ], [ 0, %land.lhs.true ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  br label %cleanup, !dbg !4130

cleanup:                                          ; preds = %entry, %lor.end
  %retval.0 = phi i8 [ %2, %lor.end ], [ 0, %entry ], !dbg !4109
  ret i8 %retval.0, !dbg !4131
}

; Function Attrs: nounwind uwtable
define internal fastcc void @canonicalize_address(%struct.rtx_def* %x) unnamed_addr #4 !dbg !4132 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4136, metadata !DIExpression()), !dbg !4143
  br label %for.cond, !dbg !4144

for.cond:                                         ; preds = %sw.epilog, %entry
  %x.addr.0 = phi %struct.rtx_def* [ %x, %entry ], [ %x.addr.1, %sw.epilog ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.0, metadata !4136, metadata !DIExpression()), !dbg !4143
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 0, !dbg !4145
  %bf.load = load i32, i32* %0, align 8, !dbg !4145
  %trunc = trunc i32 %bf.load to i16, !dbg !4146
  switch i16 %trunc, label %sw.default [
    i16 65, label %sw.bb
    i16 49, label %sw.bb47
    i16 35, label %sw.bb83
  ], !dbg !4146

sw.bb:                                            ; preds = %for.cond
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4147
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !4147
  %3 = load i32*, i32** %2, align 8, !dbg !4147
  %bf.load1 = load i32, i32* %3, align 8, !dbg !4147
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !4147
  %cmp = icmp eq i32 %bf.clear2, 30, !dbg !4147
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4148

land.lhs.true:                                    ; preds = %sw.bb
  %rt_rtx6 = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !4149
  %u7 = getelementptr inbounds i32, i32* %3, i64 2, !dbg !4149
  %arrayidx8 = bitcast i32* %u7 to i64*, !dbg !4149
  %4 = load i64, i64* %arrayidx8, align 8, !dbg !4149
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4150
  %bf.clear10 = and i32 %bf.lshr, 255, !dbg !4150
  %idxprom = zext i32 %bf.clear10 to i64, !dbg !4150
  %arrayidx11 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !4150
  %5 = load i8, i8* %arrayidx11, align 1, !dbg !4150
  %conv12 = zext i8 %5 to i64, !dbg !4150
  %mul = shl nuw nsw i64 %conv12, 3, !dbg !4150
  %cmp15 = icmp slt i64 %4, %mul, !dbg !4151
  br i1 %cmp15, label %land.lhs.true17, label %if.end, !dbg !4152

land.lhs.true17:                                  ; preds = %land.lhs.true
  %cmp25 = icmp sgt i64 %4, -1, !dbg !4153
  br i1 %cmp25, label %if.then, label %if.end, !dbg !4154

if.then:                                          ; preds = %land.lhs.true17
  call void @llvm.dbg.value(metadata i64 %4, metadata !4137, metadata !DIExpression()), !dbg !4155
  %bf.clear35 = and i32 %bf.load, -65536, !dbg !4156
  %bf.set = or i32 %bf.clear35, 52, !dbg !4156
  store i32 %bf.set, i32* %0, align 8, !dbg !4156
  %shl = shl i64 1, %4, !dbg !4157
  %call = tail call %struct.rtx_def* @gen_int_mode(i64 %shl, i32 %bf.clear10) #6, !dbg !4158
  store %struct.rtx_def* %call, %struct.rtx_def** %rt_rtx6, align 8, !dbg !4159
  br label %if.end, !dbg !4160

if.end:                                           ; preds = %if.then, %land.lhs.true17, %land.lhs.true, %sw.bb
  %arrayidx45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4161
  br label %sw.epilog, !dbg !4162

sw.bb47:                                          ; preds = %for.cond
  %arrayidx50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4163
  %6 = bitcast %union.rtunion_def* %arrayidx50 to i32**, !dbg !4163
  %7 = load i32*, i32** %6, align 8, !dbg !4163
  %bf.load52 = load i32, i32* %7, align 8, !dbg !4163
  %bf.clear53 = and i32 %bf.load52, 65535, !dbg !4163
  %cmp54 = icmp eq i32 %bf.clear53, 49, !dbg !4165
  %8 = bitcast i32* %7 to %struct.rtx_def*, !dbg !4166
  br i1 %cmp54, label %if.then73, label %lor.lhs.false, !dbg !4166

lor.lhs.false:                                    ; preds = %sw.bb47
  %cmp62 = icmp eq i32 %bf.clear53, 65, !dbg !4167
  br i1 %cmp62, label %if.then73, label %lor.lhs.false64, !dbg !4168

lor.lhs.false64:                                  ; preds = %lor.lhs.false
  %cmp71 = icmp eq i32 %bf.clear53, 35, !dbg !4169
  br i1 %cmp71, label %if.then73, label %if.end78, !dbg !4170

if.then73:                                        ; preds = %lor.lhs.false64, %lor.lhs.false, %sw.bb47
  tail call fastcc void @canonicalize_address(%struct.rtx_def* %8) #7, !dbg !4171
  br label %if.end78, !dbg !4171

if.end78:                                         ; preds = %if.then73, %lor.lhs.false64
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4172
  br label %sw.epilog, !dbg !4173

sw.bb83:                                          ; preds = %for.cond
  %arrayidx86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.addr.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4174
  br label %sw.epilog, !dbg !4175

sw.default:                                       ; preds = %for.cond
  ret void, !dbg !4176

sw.epilog:                                        ; preds = %sw.bb83, %if.end78, %if.end
  %x.addr.1.in.in = phi %union.rtunion_def* [ %arrayidx86, %sw.bb83 ], [ %9, %if.end78 ], [ %arrayidx45, %if.end ]
  %x.addr.1.in = bitcast %union.rtunion_def* %x.addr.1.in.in to %struct.rtx_def**, !dbg !4177
  %x.addr.1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr.1.in, align 8, !dbg !4177
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.addr.1, metadata !4136, metadata !DIExpression()), !dbg !4143
  br label %for.cond, !dbg !4178, !llvm.loop !4179
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @should_replace_address(%struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx, i32 %mode, i8 zeroext %as, i8 zeroext %speed) unnamed_addr #4 !dbg !4182 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %old_rtx, metadata !4187, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata %struct.rtx_def* %new_rtx, metadata !4188, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4189, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i8 %as, metadata !4190, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i8 %speed, metadata !4191, metadata !DIExpression()), !dbg !4193
  %call = tail call i32 @rtx_equal_p(%struct.rtx_def* %old_rtx, %struct.rtx_def* %new_rtx) #6, !dbg !4194
  %tobool = icmp eq i32 %call, 0, !dbg !4194
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !4196

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @memory_address_addr_space_p(i32 %mode, %struct.rtx_def* %new_rtx, i8 zeroext %as) #6, !dbg !4197
  %tobool2 = icmp eq i32 %call1, 0, !dbg !4197
  br i1 %tobool2, label %cleanup, label %if.end, !dbg !4198

if.end:                                           ; preds = %lor.lhs.false
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %old_rtx, i64 0, i32 0, !dbg !4199
  %bf.load = load i32, i32* %0, align 8, !dbg !4199
  %bf.clear = and i32 %bf.load, 65535, !dbg !4199
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !4199
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !4201

land.lhs.true:                                    ; preds = %if.end
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %new_rtx, i64 0, i32 0, !dbg !4202
  %bf.load3 = load i32, i32* %1, align 8, !dbg !4202
  %bf.clear4 = and i32 %bf.load3, 65535, !dbg !4202
  %cmp5 = icmp eq i32 %bf.clear4, 37, !dbg !4202
  br i1 %cmp5, label %cleanup, label %if.end7, !dbg !4203

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %call8 = tail call i32 @address_cost(%struct.rtx_def* %old_rtx, i32 %mode, i8 zeroext %as, i8 zeroext %speed) #6, !dbg !4204
  %call9 = tail call i32 @address_cost(%struct.rtx_def* %new_rtx, i32 %mode, i8 zeroext %as, i8 zeroext %speed) #6, !dbg !4205
  %sub = sub nsw i32 %call8, %call9, !dbg !4206
  call void @llvm.dbg.value(metadata i32 %sub, metadata !4192, metadata !DIExpression()), !dbg !4193
  %cmp10 = icmp eq i32 %sub, 0, !dbg !4207
  br i1 %cmp10, label %if.then11, label %if.end15, !dbg !4209

if.then11:                                        ; preds = %if.end7
  %call12 = tail call i32 @rtx_cost(%struct.rtx_def* %new_rtx, i32 23, i8 zeroext %speed) #6, !dbg !4210
  %call13 = tail call i32 @rtx_cost(%struct.rtx_def* %old_rtx, i32 23, i8 zeroext %speed) #6, !dbg !4211
  %sub14 = sub nsw i32 %call12, %call13, !dbg !4212
  call void @llvm.dbg.value(metadata i32 %sub14, metadata !4192, metadata !DIExpression()), !dbg !4193
  br label %if.end15, !dbg !4213

if.end15:                                         ; preds = %if.then11, %if.end7
  %gain.0 = phi i32 [ %sub14, %if.then11 ], [ %sub, %if.end7 ], !dbg !4193
  call void @llvm.dbg.value(metadata i32 %gain.0, metadata !4192, metadata !DIExpression()), !dbg !4193
  %cmp16 = icmp sgt i32 %gain.0, 0, !dbg !4214
  %conv17 = zext i1 %cmp16 to i8, !dbg !4215
  br label %cleanup, !dbg !4216

cleanup:                                          ; preds = %lor.lhs.false, %entry, %land.lhs.true, %if.end15
  %retval.0 = phi i8 [ %conv17, %if.end15 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %land.lhs.true ], !dbg !4193
  ret i8 %retval.0, !dbg !4217
}

declare dso_local %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_ee_stat(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @memory_address_addr_space_p(i32, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #1

declare dso_local zeroext i8 @constant_address_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_int_mode(i64, i32) local_unnamed_addr #1

declare dso_local i32 @address_cost(%struct.rtx_def*, i32, i8 zeroext, i8 zeroext) local_unnamed_addr #1

declare dso_local i32 @rtx_cost(%struct.rtx_def*, i32, i8 zeroext) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local void @print_inline_rtx(%struct._IO_FILE*, %struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local i32 @verify_changes(i32) local_unnamed_addr #1

declare dso_local void @confirm_change_group() local_unnamed_addr #1

declare dso_local void @df_ref_remove(%union.df_ref_d*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @update_df(%struct.rtx_def* %insn, %struct.rtx_def** %loc, %union.df_ref_d** %use_rec, i32 %type, i32 %new_flags) unnamed_addr #4 !dbg !4218 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4222, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata %struct.rtx_def** %loc, metadata !4223, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec, metadata !4224, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i32 %type, metadata !4225, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i32 %new_flags, metadata !4226, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i8 0, metadata !4227, metadata !DIExpression()), !dbg !4236
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !4237
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !4237
  br label %while.cond, !dbg !4238

while.cond:                                       ; preds = %cleanup, %entry
  %changed.0 = phi i8 [ 0, %entry ], [ %changed.1, %cleanup ], !dbg !4236
  %use_rec.addr.0 = phi %union.df_ref_d** [ %use_rec, %entry ], [ %incdec.ptr, %cleanup ]
  call void @llvm.dbg.value(metadata %union.df_ref_d** %use_rec.addr.0, metadata !4224, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !4227, metadata !DIExpression()), !dbg !4236
  %0 = load %union.df_ref_d*, %union.df_ref_d** %use_rec.addr.0, align 8, !dbg !4239
  %tobool = icmp eq %union.df_ref_d* %0, null, !dbg !4238
  br i1 %tobool, label %while.end, label %while.body, !dbg !4238

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %union.df_ref_d* %0, metadata !4228, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata %union.df_ref_d* %0, metadata !4230, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i32 -1, metadata !4232, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i32 -1, metadata !4233, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i32 0, metadata !4234, metadata !DIExpression()), !dbg !4237
  %reg = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !4240
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !4240
  %call = tail call fastcc %struct.rtx_def** @find_occurrence(%struct.rtx_def** %loc, %struct.rtx_def* %1) #7, !dbg !4241
  call void @llvm.dbg.value(metadata %struct.rtx_def** %call, metadata !4235, metadata !DIExpression()), !dbg !4237
  %incdec.ptr = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %use_rec.addr.0, i64 1, !dbg !4242
  call void @llvm.dbg.value(metadata %union.df_ref_d** %incdec.ptr, metadata !4224, metadata !DIExpression()), !dbg !4236
  %tobool1 = icmp eq %struct.rtx_def** %call, null, !dbg !4243
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !4245, !llvm.loop !4246

if.end:                                           ; preds = %while.body
  %2 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 0, i32 0, i32 0, !dbg !4248
  %bf.load = load i32, i32* %2, align 8, !dbg !4248
  %and = and i32 %bf.load, 50331648, !dbg !4248
  %cmp = icmp eq i32 %and, 0, !dbg !4248
  br i1 %cmp, label %if.end9, label %if.then3, !dbg !4250

if.then3:                                         ; preds = %if.end
  %width4 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 1, !dbg !4251
  %3 = load i32, i32* %width4, align 8, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %3, metadata !4232, metadata !DIExpression()), !dbg !4237
  %offset6 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 2, !dbg !4253
  %4 = load i32, i32* %offset6, align 4, !dbg !4253
  call void @llvm.dbg.value(metadata i32 %4, metadata !4233, metadata !DIExpression()), !dbg !4237
  %mode8 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %0, i64 0, i32 0, i32 3, !dbg !4254
  %5 = load i32, i32* %mode8, align 8, !dbg !4254
  call void @llvm.dbg.value(metadata i32 %5, metadata !4234, metadata !DIExpression()), !dbg !4237
  br label %if.end9, !dbg !4255

if.end9:                                          ; preds = %if.end, %if.then3
  %width.0 = phi i32 [ %3, %if.then3 ], [ -1, %if.end ], !dbg !4237
  %offset.0 = phi i32 [ %4, %if.then3 ], [ -1, %if.end ], !dbg !4237
  %mode.0 = phi i32 [ %5, %if.then3 ], [ 0, %if.end ], !dbg !4237
  call void @llvm.dbg.value(metadata i32 %mode.0, metadata !4234, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i32 %offset.0, metadata !4233, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i32 %width.0, metadata !4232, metadata !DIExpression()), !dbg !4237
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !4256
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !4257
  %bf.ashr14 = ashr i32 %bf.load, 16, !dbg !4258
  %or = or i32 %bf.ashr14, %new_flags, !dbg !4259
  %call15 = tail call %union.df_ref_d* @df_ref_create(%struct.rtx_def* %6, %struct.rtx_def** nonnull %call, %struct.rtx_def* %insn, %struct.basic_block_def* %7, i32 %type, i32 %or, i32 %width.0, i32 %offset.0, i32 %mode.0) #6, !dbg !4260
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call15, metadata !4231, metadata !DIExpression()), !dbg !4237
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call15, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !4261
  %8 = load i32, i32* %id, align 4, !dbg !4261
  %9 = load %struct.VEC_df_ref_heap*, %struct.VEC_df_ref_heap** @use_def_ref, align 8, !dbg !4261
  %base18 = getelementptr inbounds %struct.VEC_df_ref_heap, %struct.VEC_df_ref_heap* %9, i64 0, i32 0, !dbg !4261
  %call19 = tail call fastcc i32 @VEC_df_ref_base_length(%struct.VEC_df_ref_base* %base18) #7, !dbg !4261
  %cmp20 = icmp eq i32 %8, %call19, !dbg !4261
  br i1 %cmp20, label %cond.end23, label %cond.true21, !dbg !4261

cond.true21:                                      ; preds = %if.end9
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 931, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4261
  br label %cond.end23, !dbg !4261

cond.end23:                                       ; preds = %if.end9, %cond.true21
  %call25 = tail call fastcc %union.df_ref_d* @get_def_for_use(%union.df_ref_d* nonnull %0) #7, !dbg !4262
  %call26 = tail call fastcc %union.df_ref_d** @VEC_df_ref_heap_safe_push(%struct.VEC_df_ref_heap** nonnull @use_def_ref, %union.df_ref_d* %call25) #7, !dbg !4262
  call void @llvm.dbg.value(metadata i8 1, metadata !4227, metadata !DIExpression()), !dbg !4236
  br label %cleanup, !dbg !4247

cleanup:                                          ; preds = %while.body, %cond.end23
  %changed.1 = phi i8 [ 1, %cond.end23 ], [ %changed.0, %while.body ], !dbg !4236
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !4227, metadata !DIExpression()), !dbg !4236
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %changed.0.lcssa = phi i8 [ %changed.0, %while.cond ], !dbg !4236
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !4227, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !4227, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !4227, metadata !DIExpression()), !dbg !4236
  %tobool33 = icmp eq i8 %changed.0.lcssa, 0, !dbg !4263
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !4265

if.then34:                                        ; preds = %while.end
  %call35 = tail call zeroext i8 @df_insn_rescan(%struct.rtx_def* %insn) #6, !dbg !4266
  br label %if.end36, !dbg !4266

if.end36:                                         ; preds = %while.end, %if.then34
  ret void, !dbg !4267
}

declare dso_local void @cancel_changes(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def** @find_occurrence(%struct.rtx_def** %px, %struct.rtx_def* %find) unnamed_addr #4 !dbg !4268 {
entry:
  %data = alloca %struct.find_occurrence_data, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def** %px, metadata !4272, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata %struct.rtx_def* %find, metadata !4273, metadata !DIExpression()), !dbg !4275
  %0 = bitcast %struct.find_occurrence_data* %data to i8*, !dbg !4276
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !4276
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %find, i64 0, i32 0, !dbg !4277
  %bf.load = load i32, i32* %1, align 8, !dbg !4277
  %bf.clear = and i32 %bf.load, 65535, !dbg !4277
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !4277
  br i1 %cmp, label %cond.end, label %lor.lhs.false, !dbg !4277

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 39, !dbg !4277
  br i1 %cmp3, label %land.lhs.true, label %cond.true, !dbg !4277

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %find, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4277
  %2 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !4277
  %3 = load i32*, i32** %2, align 8, !dbg !4277
  %bf.load4 = load i32, i32* %3, align 8, !dbg !4277
  %bf.clear5 = and i32 %bf.load4, 65535, !dbg !4277
  %cmp6 = icmp eq i32 %bf.clear5, 37, !dbg !4277
  br i1 %cmp6, label %cond.end, label %cond.true, !dbg !4277

cond.true:                                        ; preds = %land.lhs.true, %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 883, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4277
  br label %cond.end, !dbg !4277

cond.end:                                         ; preds = %entry, %land.lhs.true, %cond.true
  %find7 = getelementptr inbounds %struct.find_occurrence_data, %struct.find_occurrence_data* %data, i64 0, i32 0, !dbg !4278
  store %struct.rtx_def* %find, %struct.rtx_def** %find7, align 8, !dbg !4279
  %retval8 = getelementptr inbounds %struct.find_occurrence_data, %struct.find_occurrence_data* %data, i64 0, i32 1, !dbg !4280
  store %struct.rtx_def** null, %struct.rtx_def*** %retval8, align 8, !dbg !4281
  %call = call i32 @for_each_rtx(%struct.rtx_def** %px, i32 (%struct.rtx_def**, i8*)* nonnull @find_occurrence_callback, i8* nonnull %0) #6, !dbg !4282
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %retval8, align 8, !dbg !4283
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !4284
  ret %struct.rtx_def** %4, !dbg !4285
}

declare dso_local %union.df_ref_d* @df_ref_create(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, %struct.basic_block_def*, i32, i32, i32, i32, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @df_insn_rescan(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @find_occurrence_callback(%struct.rtx_def** %px, i8* %data) #4 !dbg !4286 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %px, metadata !4288, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i8* %data, metadata !4289, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i8* %data, metadata !4290, metadata !DIExpression()), !dbg !4293
  %0 = load %struct.rtx_def*, %struct.rtx_def** %px, align 8, !dbg !4294
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !4291, metadata !DIExpression()), !dbg !4293
  %find1 = bitcast i8* %data to %struct.rtx_def**, !dbg !4295
  %1 = load %struct.rtx_def*, %struct.rtx_def** %find1, align 8, !dbg !4295
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !4292, metadata !DIExpression()), !dbg !4293
  %cmp = icmp eq %struct.rtx_def* %0, %1, !dbg !4296
  br i1 %cmp, label %if.then, label %cleanup, !dbg !4298

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %data, metadata !4290, metadata !DIExpression()), !dbg !4293
  %retval2 = getelementptr inbounds i8, i8* %data, i64 8, !dbg !4299
  %2 = bitcast i8* %retval2 to %struct.rtx_def***, !dbg !4299
  store %struct.rtx_def** %px, %struct.rtx_def*** %2, align 8, !dbg !4301
  br label %cleanup, !dbg !4302

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ], !dbg !4293
  ret i32 %retval.0, !dbg !4303
}

declare dso_local i32 @subreg_lowpart_p(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @free_load_extend(%struct.rtx_def* %src, %struct.rtx_def* %insn) unnamed_addr #4 !dbg !4304 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %src, metadata !4306, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4307, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata %union.df_ref_d* null, metadata !4310, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata %struct.rtx_def* undef, metadata !4308, metadata !DIExpression()), !dbg !4312
  ret i8 undef, !dbg !4313
}

declare dso_local void @loop_optimizer_finalize() local_unnamed_addr #1

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #1

declare dso_local zeroext i8 @cleanup_cfg(i32) local_unnamed_addr #1

declare dso_local i32 @delete_trivially_dead_insns(%struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

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
!llvm.module.flags = !{!2002, !2003, !2004}
!llvm.ident = !{!2005}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_rtl_fwprop", scope: !2, file: !3, line: 1446, type: !1964, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !723, globals: !1961, nameTableKind: None)
!3 = !DIFile(filename: "fwprop.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !326, !330, !336, !341, !346, !365, !372, !379, !573, !716}
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
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !318, line: 31, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322, !323, !324, !325}
!320 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!323 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!324 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!325 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!326 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !318, line: 91, baseType: !7, size: 32, elements: !327)
!327 = !{!328, !329}
!328 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!329 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !331, line: 363, baseType: !7, size: 32, elements: !332)
!331 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!332 = !{!333, !334, !335}
!333 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!334 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!335 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !331, line: 355, baseType: !7, size: 32, elements: !337)
!337 = !{!338, !339, !340}
!338 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!340 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!341 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !342, line: 474, baseType: !7, size: 32, elements: !343)
!342 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!343 = !{!344, !345}
!344 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!345 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !347, line: 280, baseType: !7, size: 32, elements: !348)
!347 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!349 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!365 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !347, line: 1817, baseType: !7, size: 32, elements: !366)
!366 = !{!367, !368, !369, !370, !371}
!367 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !347, line: 1805, baseType: !7, size: 32, elements: !373)
!373 = !{!374, !375, !376, !377, !378}
!374 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!377 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!378 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !347, line: 39, baseType: !7, size: 32, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!381 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!382 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!383 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!384 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!385 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!386 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!387 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!388 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!389 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!390 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!391 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!392 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!393 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!394 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!395 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!396 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!397 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!398 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!399 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!400 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!401 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!402 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!403 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!404 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!405 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!406 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!407 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!408 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!409 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!410 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!411 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!412 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!413 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!414 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!415 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!416 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!417 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!418 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!419 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!420 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!421 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!422 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!423 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!424 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!425 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!426 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!427 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!428 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!429 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!430 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!431 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!432 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!433 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!434 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!435 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!436 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!437 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!438 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!439 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!440 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!441 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!442 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!443 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!444 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!445 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!446 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!447 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!448 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!449 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!450 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!451 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!452 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!453 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!454 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!455 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!456 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!457 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!458 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!459 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!460 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!461 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!462 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!463 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!464 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!465 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!466 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!467 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!468 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!469 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!470 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!471 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!472 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!473 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!474 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!475 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!476 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!477 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!478 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!479 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!480 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!481 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!482 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!483 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!484 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!485 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!486 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!487 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!488 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!489 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!490 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!491 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!492 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!493 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!494 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!495 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!496 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!497 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!498 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!499 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!500 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!501 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!502 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!503 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!504 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!505 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!506 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!507 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!508 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!509 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!510 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!511 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!512 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!513 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!514 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!515 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!516 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!517 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!518 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!519 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!520 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!521 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!522 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!523 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!524 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!525 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!526 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!527 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!528 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!529 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!530 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!531 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!532 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!533 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!534 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!535 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!536 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!537 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!538 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!539 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!540 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!541 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!542 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!543 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!544 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!545 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!546 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!547 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!548 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!549 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!550 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!551 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!552 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!553 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!554 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!555 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!556 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!557 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!558 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!559 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!560 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!561 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!562 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!563 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!564 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!565 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!566 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!567 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!568 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!569 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!570 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!571 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!572 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !574, line: 45, baseType: !7, size: 32, elements: !575)
!574 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!576 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!577 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!578 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!579 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!580 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!581 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!582 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!583 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!584 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!585 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!586 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!587 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!588 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!589 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!590 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!591 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!592 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!593 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!594 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!595 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!596 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!597 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!598 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!599 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!600 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!601 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!602 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!603 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!604 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!605 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!606 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!607 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!608 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!609 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!610 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!611 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!612 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!613 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!614 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!615 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!616 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!617 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!618 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!619 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!620 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!621 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!622 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!623 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!624 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!625 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!626 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!627 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!628 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!629 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!630 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!631 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!632 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!633 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!634 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!635 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!636 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!637 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!638 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!639 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!640 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!641 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!642 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!643 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!644 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!645 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!646 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!647 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!648 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!649 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!650 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!651 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!652 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!653 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!654 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!655 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!656 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!657 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!658 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!659 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!660 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!661 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!662 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!663 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!664 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!665 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!666 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!667 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!668 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!669 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!670 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!671 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!672 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!673 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!674 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!675 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!676 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!677 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!678 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!679 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!680 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!681 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!682 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!683 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!684 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!685 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!686 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!687 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!688 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!689 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!690 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!691 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!692 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!693 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!694 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!695 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!696 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!697 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!698 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!699 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!700 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!701 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!702 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!703 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!704 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!705 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!706 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!707 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!708 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!709 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!710 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!711 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!712 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!713 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!714 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!715 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!716 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "df_ref_type", file: !717, line: 81, baseType: !7, size: 32, elements: !718)
!717 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!718 = !{!719, !720, !721, !722}
!719 = !DIEnumerator(name: "DF_REF_REG_DEF", value: 0, isUnsigned: true)
!720 = !DIEnumerator(name: "DF_REF_REG_USE", value: 1, isUnsigned: true)
!721 = !DIEnumerator(name: "DF_REF_REG_MEM_LOAD", value: 2, isUnsigned: true)
!722 = !DIEnumerator(name: "DF_REF_REG_MEM_STORE", value: 3, isUnsigned: true)
!723 = !{!724, !725, !726, !727, !730, !731, !733, !796, !7, !573, !1935, !1943, !1950, !819, !189, !1955, !768, !1956}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!726 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !734, line: 47, baseType: !735)
!734 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !737, line: 75, size: 256, elements: !738)
!737 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!738 = !{!739, !754, !755, !756}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !736, file: !737, line: 76, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !737, line: 68, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !737, line: 63, size: 320, elements: !743)
!743 = !{!744, !746, !747, !748}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !742, file: !737, line: 64, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !742, file: !737, line: 65, baseType: !745, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !742, file: !737, line: 66, baseType: !7, size: 32, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !742, file: !737, line: 67, baseType: !749, size: 128, offset: 192)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 128, elements: !752)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !737, line: 29, baseType: !751)
!751 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!752 = !{!753}
!753 = !DISubrange(count: 2)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !736, file: !737, line: 77, baseType: !740, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !736, file: !737, line: 78, baseType: !7, size: 32, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !736, file: !737, line: 79, baseType: !757, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !737, line: 49, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !737, line: 45, size: 832, elements: !760)
!760 = !{!761, !762, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !759, file: !737, line: 46, baseType: !745, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !759, file: !737, line: 47, baseType: !735, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !759, file: !737, line: 48, baseType: !764, size: 704, offset: 128)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !765, line: 164, size: 704, elements: !766)
!765 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!766 = !{!767, !769, !779, !780, !781, !782, !783, !784, !788, !792, !793, !794, !795}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !764, file: !765, line: 166, baseType: !768, size: 64)
!768 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !764, file: !765, line: 167, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !765, line: 157, size: 192, elements: !772)
!772 = !{!773, !774, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !771, file: !765, line: 159, baseType: !728, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !771, file: !765, line: 160, baseType: !770, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !771, file: !765, line: 161, baseType: !776, size: 32, offset: 128)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 32, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 4)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !764, file: !765, line: 168, baseType: !728, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !764, file: !765, line: 169, baseType: !728, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !764, file: !765, line: 170, baseType: !728, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !764, file: !765, line: 171, baseType: !768, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !764, file: !765, line: 172, baseType: !726, size: 32, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !764, file: !765, line: 176, baseType: !785, size: 64, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!770, !730, !768}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !764, file: !765, line: 177, baseType: !789, size: 64, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !730, !770}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !764, file: !765, line: 178, baseType: !730, size: 64, offset: 576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !764, file: !765, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !764, file: !765, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !764, file: !765, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_df_ref_heap", file: !3, line: 121, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_df_ref_heap", file: !3, line: 121, size: 128, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !798, file: !3, line: 121, baseType: !801, size: 128)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_df_ref_base", file: !3, line: 120, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_df_ref_base", file: !3, line: 120, size: 128, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !802, file: !3, line: 120, baseType: !7, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !802, file: !3, line: 120, baseType: !7, size: 32, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !802, file: !3, line: 120, baseType: !807, size: 64, offset: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 64, elements: !853)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_ref", file: !717, line: 429, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "df_ref_d", file: !717, line: 422, size: 704, elements: !811)
!811 = !{!812, !1917, !1923, !1928}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !810, file: !717, line: 424, baseType: !813, size: 512)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_base_ref", file: !717, line: 356, size: 512, elements: !814)
!814 = !{!815, !816, !817, !818, !1885, !1891, !1912, !1913, !1914, !1915, !1916}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !813, file: !717, line: 360, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !813, file: !717, line: 362, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !717, line: 364, baseType: !726, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !813, file: !717, line: 365, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !734, line: 50, baseType: !820)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !574, line: 240, size: 384, elements: !822)
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !821, file: !574, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !821, file: !574, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !821, file: !574, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !821, file: !574, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !821, file: !574, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !821, file: !574, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !821, file: !574, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !821, file: !574, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !821, file: !574, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !821, file: !574, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !821, file: !574, line: 321, baseType: !834, size: 320, offset: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !574, line: 315, size: 320, elements: !835)
!835 = !{!836, !1820, !1822, !1883, !1884}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !834, file: !574, line: 316, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 64, elements: !853)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !574, line: 183, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !574, line: 166, size: 64, elements: !840)
!840 = !{!841, !842, !843, !844, !845, !855, !856, !868, !871, !872, !1798, !1799, !1810, !1817}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !839, file: !574, line: 168, baseType: !726, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !839, file: !574, line: 169, baseType: !7, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !839, file: !574, line: 170, baseType: !731, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !839, file: !574, line: 171, baseType: !819, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !839, file: !574, line: 172, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !734, line: 53, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !574, line: 359, size: 128, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !848, file: !574, line: 360, baseType: !726, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !848, file: !574, line: 361, baseType: !852, size: 64, offset: 64)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 64, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 1)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !839, file: !574, line: 173, baseType: !189, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !839, file: !574, line: 174, baseType: !857, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !574, line: 133, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 115, size: 32, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !858, file: !574, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !858, file: !574, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !858, file: !574, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !858, file: !574, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !858, file: !574, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !858, file: !574, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !858, file: !574, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !858, file: !574, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !839, file: !574, line: 175, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !574, line: 175, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !839, file: !574, line: 176, baseType: !735, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !839, file: !574, line: 177, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !734, line: 56, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !347, line: 3371, size: 1792, elements: !876)
!876 = !{!877, !910, !916, !927, !946, !957, !962, !969, !975, !988, !1000, !1038, !1043, !1071, !1079, !1080, !1085, !1094, !1100, !1105, !1109, !1113, !1425, !1474, !1480, !1487, !1494, !1517, !1542, !1559, !1571, !1593, !1608, !1780}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !875, file: !347, line: 3372, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !347, line: 360, size: 64, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !878, file: !347, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !878, file: !347, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !878, file: !347, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !878, file: !347, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !878, file: !347, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !878, file: !347, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !878, file: !347, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !878, file: !347, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !878, file: !347, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !878, file: !347, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !878, file: !347, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !878, file: !347, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !878, file: !347, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !878, file: !347, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !878, file: !347, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !878, file: !347, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !878, file: !347, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !878, file: !347, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !878, file: !347, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !878, file: !347, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !878, file: !347, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !878, file: !347, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !878, file: !347, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !878, file: !347, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !878, file: !347, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !878, file: !347, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !878, file: !347, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !878, file: !347, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !878, file: !347, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !878, file: !347, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !875, file: !347, line: 3373, baseType: !911, size: 192)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !347, line: 402, size: 192, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !911, file: !347, line: 403, baseType: !878, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !911, file: !347, line: 404, baseType: !873, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !911, file: !347, line: 405, baseType: !873, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !875, file: !347, line: 3374, baseType: !917, size: 320)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !347, line: 1384, size: 320, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !917, file: !347, line: 1385, baseType: !911, size: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !917, file: !347, line: 1386, baseType: !921, size: 128, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !922, line: 58, baseType: !923)
!922 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !922, line: 54, size: 128, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !923, file: !922, line: 56, baseType: !751, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !923, file: !922, line: 57, baseType: !768, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !875, file: !347, line: 3375, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !347, line: 1397, size: 256, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !928, file: !347, line: 1398, baseType: !911, size: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !928, file: !347, line: 1399, baseType: !932, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !934, line: 52, size: 256, elements: !935)
!934 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!935 = !{!936, !937, !938, !939, !940, !941, !942}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !933, file: !934, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !933, file: !934, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !933, file: !934, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !933, file: !934, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !933, file: !934, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !933, file: !934, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !933, file: !934, line: 62, baseType: !943, size: 192, offset: 64)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 192, elements: !944)
!944 = !{!945}
!945 = !DISubrange(count: 3)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !875, file: !347, line: 3376, baseType: !947, size: 256)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !347, line: 1408, size: 256, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !947, file: !347, line: 1409, baseType: !911, size: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !947, file: !347, line: 1410, baseType: !951, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !953, line: 27, size: 192, elements: !954)
!953 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !952, file: !953, line: 29, baseType: !921, size: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !952, file: !953, line: 30, baseType: !189, size: 32, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !875, file: !347, line: 3377, baseType: !958, size: 256)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !347, line: 1437, size: 256, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !958, file: !347, line: 1438, baseType: !911, size: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !958, file: !347, line: 1439, baseType: !873, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !875, file: !347, line: 3378, baseType: !963, size: 256)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !347, line: 1418, size: 256, elements: !964)
!964 = !{!965, !966, !967}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !963, file: !347, line: 1419, baseType: !911, size: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !963, file: !347, line: 1420, baseType: !726, size: 32, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !963, file: !347, line: 1421, baseType: !968, size: 8, offset: 224)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 8, elements: !853)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !875, file: !347, line: 3379, baseType: !970, size: 320)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !347, line: 1428, size: 320, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !970, file: !347, line: 1429, baseType: !911, size: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !970, file: !347, line: 1430, baseType: !873, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !970, file: !347, line: 1431, baseType: !873, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !875, file: !347, line: 3380, baseType: !976, size: 320)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !347, line: 1460, size: 320, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !976, file: !347, line: 1461, baseType: !911, size: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !976, file: !347, line: 1462, baseType: !980, size: 128, offset: 192)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !981, line: 31, size: 128, elements: !982)
!981 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!982 = !{!983, !986, !987}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !980, file: !981, line: 32, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !980, file: !981, line: 33, baseType: !7, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !980, file: !981, line: 34, baseType: !7, size: 32, offset: 96)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !875, file: !347, line: 3381, baseType: !989, size: 384)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !347, line: 2507, size: 384, elements: !990)
!990 = !{!991, !992, !997, !998, !999}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !989, file: !347, line: 2508, baseType: !911, size: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !989, file: !347, line: 2509, baseType: !993, size: 32, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !994, line: 58, baseType: !995)
!994 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !996, line: 44, baseType: !7)
!996 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!997 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !989, file: !347, line: 2510, baseType: !7, size: 32, offset: 224)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !989, file: !347, line: 2511, baseType: !873, size: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !989, file: !347, line: 2512, baseType: !873, size: 64, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !875, file: !347, line: 3382, baseType: !1001, size: 896)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !347, line: 2652, size: 896, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1001, file: !347, line: 2653, baseType: !989, size: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1001, file: !347, line: 2654, baseType: !873, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1001, file: !347, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1001, file: !347, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1001, file: !347, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1001, file: !347, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1001, file: !347, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1001, file: !347, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1001, file: !347, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1001, file: !347, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1001, file: !347, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1001, file: !347, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1001, file: !347, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1001, file: !347, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1001, file: !347, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1001, file: !347, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1001, file: !347, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1001, file: !347, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1001, file: !347, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1001, file: !347, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1001, file: !347, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1001, file: !347, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1001, file: !347, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1001, file: !347, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1001, file: !347, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1001, file: !347, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1001, file: !347, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1001, file: !347, line: 2703, baseType: !7, size: 32, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1001, file: !347, line: 2705, baseType: !873, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1001, file: !347, line: 2706, baseType: !873, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1001, file: !347, line: 2707, baseType: !873, size: 64, offset: 704)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1001, file: !347, line: 2708, baseType: !873, size: 64, offset: 768)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1001, file: !347, line: 2711, baseType: !1036, size: 64, offset: 832)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !347, line: 2711, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !875, file: !347, line: 3383, baseType: !1039, size: 960)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !347, line: 2756, size: 960, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1039, file: !347, line: 2757, baseType: !1001, size: 896)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1039, file: !347, line: 2758, baseType: !819, size: 64, offset: 896)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !875, file: !347, line: 3384, baseType: !1044, size: 1472)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !347, line: 3114, size: 1472, elements: !1045)
!1045 = !{!1046, !1067, !1068, !1069, !1070}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1044, file: !347, line: 3115, baseType: !1047, size: 1216)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !347, line: 2984, size: 1216, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1047, file: !347, line: 2985, baseType: !1039, size: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1047, file: !347, line: 2986, baseType: !873, size: 64, offset: 960)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1047, file: !347, line: 2987, baseType: !873, size: 64, offset: 1024)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1047, file: !347, line: 2988, baseType: !873, size: 64, offset: 1088)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1047, file: !347, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1047, file: !347, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1047, file: !347, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1047, file: !347, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1047, file: !347, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1047, file: !347, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1047, file: !347, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1047, file: !347, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1047, file: !347, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1047, file: !347, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1047, file: !347, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1047, file: !347, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1047, file: !347, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1047, file: !347, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1044, file: !347, line: 3117, baseType: !873, size: 64, offset: 1216)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1044, file: !347, line: 3119, baseType: !873, size: 64, offset: 1280)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1044, file: !347, line: 3121, baseType: !873, size: 64, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1044, file: !347, line: 3123, baseType: !873, size: 64, offset: 1408)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !875, file: !347, line: 3385, baseType: !1072, size: 1088)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !347, line: 2874, size: 1088, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1072, file: !347, line: 2875, baseType: !1039, size: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1072, file: !347, line: 2876, baseType: !819, size: 64, offset: 960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1072, file: !347, line: 2877, baseType: !1077, size: 64, offset: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !347, line: 2856, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !875, file: !347, line: 3386, baseType: !1047, size: 1216)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !875, file: !347, line: 3387, baseType: !1081, size: 1280)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !347, line: 3093, size: 1280, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1081, file: !347, line: 3094, baseType: !1047, size: 1216)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1081, file: !347, line: 3095, baseType: !1077, size: 64, offset: 1216)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !875, file: !347, line: 3388, baseType: !1086, size: 1216)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !347, line: 2824, size: 1216, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1086, file: !347, line: 2825, baseType: !1001, size: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1086, file: !347, line: 2827, baseType: !873, size: 64, offset: 896)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1086, file: !347, line: 2828, baseType: !873, size: 64, offset: 960)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1086, file: !347, line: 2829, baseType: !873, size: 64, offset: 1024)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1086, file: !347, line: 2830, baseType: !873, size: 64, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1086, file: !347, line: 2831, baseType: !873, size: 64, offset: 1152)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !875, file: !347, line: 3389, baseType: !1095, size: 1024)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !347, line: 2850, size: 1024, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1095, file: !347, line: 2851, baseType: !1039, size: 960)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1095, file: !347, line: 2852, baseType: !726, size: 32, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1095, file: !347, line: 2853, baseType: !726, size: 32, offset: 992)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !875, file: !347, line: 3390, baseType: !1101, size: 1024)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !347, line: 2857, size: 1024, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1101, file: !347, line: 2858, baseType: !1039, size: 960)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1101, file: !347, line: 2859, baseType: !1077, size: 64, offset: 960)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !875, file: !347, line: 3391, baseType: !1106, size: 960)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !347, line: 2862, size: 960, elements: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1106, file: !347, line: 2863, baseType: !1039, size: 960)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !875, file: !347, line: 3392, baseType: !1110, size: 1472)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !347, line: 3304, size: 1472, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1110, file: !347, line: 3305, baseType: !1044, size: 1472)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !875, file: !347, line: 3393, baseType: !1114, size: 1792)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !347, line: 3248, size: 1792, elements: !1115)
!1115 = !{!1116, !1117, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1114, file: !347, line: 3249, baseType: !1044, size: 1472)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1114, file: !347, line: 3251, baseType: !1118, size: 64, offset: 1472)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1120, line: 463, size: 1152, elements: !1121)
!1120 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1121 = !{!1122, !1125, !1285, !1286, !1289, !1348, !1349, !1350, !1351, !1352, !1353, !1377, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1119, file: !1120, line: 464, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1120, line: 464, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1119, file: !1120, line: 467, baseType: !1126, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !331, line: 374, size: 640, elements: !1128)
!1128 = !{!1129, !1260, !1261, !1274, !1275, !1276, !1277, !1278, !1279, !1281, !1283, !1284}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1127, file: !331, line: 377, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !734, line: 111, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !331, line: 217, size: 832, elements: !1133)
!1133 = !{!1134, !1169, !1170, !1171, !1230, !1234, !1235, !1236, !1254, !1255, !1256, !1257, !1258, !1259}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1132, file: !331, line: 219, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !331, line: 151, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !331, line: 151, size: 128, elements: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1137, file: !331, line: 151, baseType: !1140, size: 128)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !331, line: 150, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !331, line: 150, size: 128, elements: !1142)
!1142 = !{!1143, !1144, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1141, file: !331, line: 150, baseType: !7, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1141, file: !331, line: 150, baseType: !7, size: 32, offset: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1141, file: !331, line: 150, baseType: !1146, size: 64, offset: 64)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1147, size: 64, elements: !853)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !734, line: 108, baseType: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !331, line: 122, size: 512, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1149, file: !331, line: 124, baseType: !1131, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1149, file: !331, line: 125, baseType: !1131, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1149, file: !331, line: 131, baseType: !1154, size: 64, offset: 128)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !331, line: 128, size: 64, elements: !1155)
!1155 = !{!1156, !1160}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1154, file: !331, line: 129, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !734, line: 66, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !734, line: 65, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1154, file: !331, line: 130, baseType: !819, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1149, file: !331, line: 134, baseType: !730, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1149, file: !331, line: 137, baseType: !873, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1149, file: !331, line: 138, baseType: !993, size: 32, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1149, file: !331, line: 142, baseType: !7, size: 32, offset: 352)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1149, file: !331, line: 144, baseType: !726, size: 32, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1149, file: !331, line: 145, baseType: !726, size: 32, offset: 416)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1149, file: !331, line: 146, baseType: !1168, size: 64, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !331, line: 119, baseType: !768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1132, file: !331, line: 220, baseType: !1135, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1132, file: !331, line: 223, baseType: !730, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1132, file: !331, line: 226, baseType: !1172, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 100, size: 1216, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1184, !1185, !1186, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1220, !1228, !1229}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1173, file: !318, line: 102, baseType: !726, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1173, file: !318, line: 105, baseType: !7, size: 32, offset: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1173, file: !318, line: 108, baseType: !1131, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1173, file: !318, line: 111, baseType: !1131, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1173, file: !318, line: 114, baseType: !1180, size: 64, offset: 192)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !318, line: 41, size: 64, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1180, file: !318, line: 42, baseType: !317, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1180, file: !318, line: 43, baseType: !7, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1173, file: !318, line: 117, baseType: !7, size: 32, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1173, file: !318, line: 120, baseType: !7, size: 32, offset: 288)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1173, file: !318, line: 123, baseType: !1187, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !318, line: 87, baseType: !1189)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !318, line: 87, size: 128, elements: !1190)
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1189, file: !318, line: 87, baseType: !1192, size: 128)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !318, line: 85, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !318, line: 85, size: 128, elements: !1194)
!1194 = !{!1195, !1196, !1197}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1193, file: !318, line: 85, baseType: !7, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1193, file: !318, line: 85, baseType: !7, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1193, file: !318, line: 85, baseType: !1198, size: 64, offset: 64)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, size: 64, elements: !853)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !318, line: 84, baseType: !1172)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1173, file: !318, line: 126, baseType: !1172, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1173, file: !318, line: 129, baseType: !1172, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1173, file: !318, line: 132, baseType: !730, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1173, file: !318, line: 139, baseType: !873, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1173, file: !318, line: 143, baseType: !921, size: 128, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1173, file: !318, line: 146, baseType: !921, size: 128, offset: 768)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1173, file: !318, line: 148, baseType: !725, size: 8, offset: 896)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1173, file: !318, line: 149, baseType: !725, size: 8, offset: 904)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1173, file: !318, line: 153, baseType: !326, size: 32, offset: 928)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1173, file: !318, line: 156, baseType: !1210, size: 64, offset: 960)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !318, line: 48, size: 320, elements: !1212)
!1212 = !{!1213, !1217, !1218, !1219}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1211, file: !318, line: 50, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !734, line: 58, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !734, line: 57, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1211, file: !318, line: 59, baseType: !921, size: 128, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1211, file: !318, line: 64, baseType: !725, size: 8, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1211, file: !318, line: 67, baseType: !1210, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1173, file: !318, line: 159, baseType: !1221, size: 64, offset: 1024)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !318, line: 72, size: 256, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1222, file: !318, line: 74, baseType: !1148, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1222, file: !318, line: 77, baseType: !1221, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1222, file: !318, line: 78, baseType: !1221, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1222, file: !318, line: 81, baseType: !1221, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1173, file: !318, line: 162, baseType: !725, size: 8, offset: 1088)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1173, file: !318, line: 166, baseType: !873, size: 64, offset: 1152)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1132, file: !331, line: 229, baseType: !1231, size: 128, offset: 256)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 128, elements: !752)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !331, line: 229, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1132, file: !331, line: 232, baseType: !1131, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1132, file: !331, line: 233, baseType: !1131, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1132, file: !331, line: 238, baseType: !1237, size: 64, offset: 512)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !331, line: 235, size: 64, elements: !1238)
!1238 = !{!1239, !1245}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1237, file: !331, line: 236, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !331, line: 273, size: 128, elements: !1242)
!1242 = !{!1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1241, file: !331, line: 275, baseType: !1157, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1241, file: !331, line: 278, baseType: !1157, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1237, file: !331, line: 237, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !331, line: 259, size: 320, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252, !1253}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1247, file: !331, line: 261, baseType: !819, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1247, file: !331, line: 262, baseType: !819, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1247, file: !331, line: 266, baseType: !819, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1247, file: !331, line: 267, baseType: !819, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1247, file: !331, line: 270, baseType: !726, size: 32, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1132, file: !331, line: 241, baseType: !1168, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1132, file: !331, line: 244, baseType: !726, size: 32, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1132, file: !331, line: 247, baseType: !726, size: 32, offset: 672)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1132, file: !331, line: 250, baseType: !726, size: 32, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1132, file: !331, line: 253, baseType: !726, size: 32, offset: 736)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1132, file: !331, line: 256, baseType: !726, size: 32, offset: 768)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1127, file: !331, line: 378, baseType: !1130, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1127, file: !331, line: 381, baseType: !1262, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !331, line: 282, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !331, line: 282, size: 128, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1264, file: !331, line: 282, baseType: !1267, size: 128)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !331, line: 281, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !331, line: 281, size: 128, elements: !1269)
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1268, file: !331, line: 281, baseType: !7, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1268, file: !331, line: 281, baseType: !7, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1268, file: !331, line: 281, baseType: !1273, size: 64, offset: 64)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 64, elements: !853)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1127, file: !331, line: 384, baseType: !726, size: 32, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1127, file: !331, line: 387, baseType: !726, size: 32, offset: 224)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1127, file: !331, line: 390, baseType: !726, size: 32, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1127, file: !331, line: 394, baseType: !1262, size: 64, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1127, file: !331, line: 396, baseType: !330, size: 32, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1127, file: !331, line: 399, baseType: !1280, size: 64, offset: 416)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 64, elements: !752)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1127, file: !331, line: 402, baseType: !1282, size: 64, offset: 480)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !752)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1127, file: !331, line: 406, baseType: !726, size: 32, offset: 544)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1127, file: !331, line: 409, baseType: !726, size: 32, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1119, file: !1120, line: 470, baseType: !1158, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1119, file: !1120, line: 473, baseType: !1287, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1120, line: 166, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1119, file: !1120, line: 476, baseType: !1290, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !318, line: 187, size: 256, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1347}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1291, file: !318, line: 189, baseType: !726, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1291, file: !318, line: 192, baseType: !1187, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1291, file: !318, line: 197, baseType: !1296, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1297, line: 144, baseType: !1298)
!1297 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1297, line: 100, size: 896, elements: !1300)
!1300 = !{!1301, !1309, !1314, !1319, !1321, !1324, !1325, !1326, !1327, !1328, !1333, !1335, !1336, !1341, !1346}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1299, file: !1297, line: 102, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1297, line: 52, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1297, line: 47, baseType: !7)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1299, file: !1297, line: 105, baseType: !1310, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1297, line: 59, baseType: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!726, !1307, !1307}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1299, file: !1297, line: 108, baseType: !1315, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1297, line: 63, baseType: !1316)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !730}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1299, file: !1297, line: 111, baseType: !1320, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1299, file: !1297, line: 114, baseType: !1322, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1323, line: 46, baseType: !751)
!1323 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1299, file: !1297, line: 117, baseType: !1322, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1299, file: !1297, line: 120, baseType: !1322, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1299, file: !1297, line: 124, baseType: !7, size: 32, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1299, file: !1297, line: 128, baseType: !7, size: 32, offset: 480)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1299, file: !1297, line: 131, baseType: !1329, size: 64, offset: 512)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1297, line: 75, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!730, !1322, !1322}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1299, file: !1297, line: 132, baseType: !1334, size: 64, offset: 576)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1297, line: 78, baseType: !1316)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1299, file: !1297, line: 135, baseType: !730, size: 64, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1299, file: !1297, line: 136, baseType: !1337, size: 64, offset: 704)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1297, line: 82, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!730, !730, !1322, !1322}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1299, file: !1297, line: 137, baseType: !1342, size: 64, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1297, line: 83, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !730, !730}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1299, file: !1297, line: 141, baseType: !7, size: 32, offset: 832)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1291, file: !318, line: 200, baseType: !1172, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1119, file: !1120, line: 479, baseType: !1296, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1119, file: !1120, line: 484, baseType: !873, size: 64, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1119, file: !1120, line: 488, baseType: !873, size: 64, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1119, file: !1120, line: 493, baseType: !873, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1119, file: !1120, line: 496, baseType: !873, size: 64, offset: 576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1119, file: !1120, line: 501, baseType: !1354, size: 64, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !342, line: 2355, size: 576, elements: !1356)
!1356 = !{!1357, !1360, !1361, !1362, !1363, !1365, !1366, !1371, !1372, !1373, !1374, !1375, !1376}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1355, file: !342, line: 2356, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !342, line: 2356, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1355, file: !342, line: 2357, baseType: !731, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1355, file: !342, line: 2358, baseType: !726, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1355, file: !342, line: 2359, baseType: !726, size: 32, offset: 160)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1355, file: !342, line: 2360, baseType: !1364, size: 128, offset: 192)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 128, elements: !777)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1355, file: !342, line: 2364, baseType: !726, size: 32, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1355, file: !342, line: 2367, baseType: !1367, size: 128, offset: 384)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !342, line: 2349, size: 128, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1367, file: !342, line: 2351, baseType: !819, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1367, file: !342, line: 2352, baseType: !768, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1355, file: !342, line: 2371, baseType: !341, size: 32, offset: 512)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1355, file: !342, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1355, file: !342, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1355, file: !342, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1355, file: !342, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1355, file: !342, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1119, file: !1120, line: 504, baseType: !1378, size: 64, offset: 704)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1120, line: 504, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1119, file: !1120, line: 507, baseType: !1296, size: 64, offset: 768)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1119, file: !1120, line: 510, baseType: !726, size: 32, offset: 832)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1119, file: !1120, line: 513, baseType: !726, size: 32, offset: 864)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1119, file: !1120, line: 516, baseType: !993, size: 32, offset: 896)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1119, file: !1120, line: 519, baseType: !993, size: 32, offset: 928)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1119, file: !1120, line: 522, baseType: !7, size: 32, offset: 960)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1119, file: !1120, line: 523, baseType: !7, size: 32, offset: 992)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1119, file: !1120, line: 528, baseType: !731, size: 64, offset: 1024)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1119, file: !1120, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1119, file: !1120, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1119, file: !1120, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1119, file: !1120, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1119, file: !1120, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1119, file: !1120, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1119, file: !1120, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1119, file: !1120, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1119, file: !1120, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1119, file: !1120, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1119, file: !1120, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1119, file: !1120, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1119, file: !1120, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1119, file: !1120, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1119, file: !1120, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1119, file: !1120, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1114, file: !347, line: 3254, baseType: !873, size: 64, offset: 1536)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1114, file: !347, line: 3257, baseType: !873, size: 64, offset: 1600)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1114, file: !347, line: 3258, baseType: !873, size: 64, offset: 1664)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1114, file: !347, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1114, file: !347, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1114, file: !347, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1114, file: !347, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1114, file: !347, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1114, file: !347, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1114, file: !347, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1114, file: !347, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1114, file: !347, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1114, file: !347, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1114, file: !347, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1114, file: !347, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1114, file: !347, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1114, file: !347, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1114, file: !347, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1114, file: !347, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1114, file: !347, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1114, file: !347, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !875, file: !347, line: 3394, baseType: !1426, size: 1344)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !347, line: 2279, size: 1344, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1453, !1454, !1455, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1426, file: !347, line: 2280, baseType: !911, size: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1426, file: !347, line: 2281, baseType: !873, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1426, file: !347, line: 2282, baseType: !873, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1426, file: !347, line: 2283, baseType: !873, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1426, file: !347, line: 2284, baseType: !873, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1426, file: !347, line: 2285, baseType: !7, size: 32, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1426, file: !347, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1426, file: !347, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1426, file: !347, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1426, file: !347, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1426, file: !347, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1426, file: !347, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1426, file: !347, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1426, file: !347, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1426, file: !347, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1426, file: !347, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1426, file: !347, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1426, file: !347, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1426, file: !347, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1426, file: !347, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1426, file: !347, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1426, file: !347, line: 2305, baseType: !7, size: 32, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1426, file: !347, line: 2306, baseType: !1451, size: 32, offset: 544)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1452, line: 31, baseType: !726)
!1452 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1426, file: !347, line: 2307, baseType: !873, size: 64, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1426, file: !347, line: 2308, baseType: !873, size: 64, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1426, file: !347, line: 2314, baseType: !1456, size: 64, offset: 704)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !347, line: 2309, size: 64, elements: !1457)
!1457 = !{!1458, !1459, !1460}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1456, file: !347, line: 2310, baseType: !726, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1456, file: !347, line: 2311, baseType: !731, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1456, file: !347, line: 2312, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !347, line: 2277, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1426, file: !347, line: 2315, baseType: !873, size: 64, offset: 768)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1426, file: !347, line: 2316, baseType: !873, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1426, file: !347, line: 2317, baseType: !873, size: 64, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1426, file: !347, line: 2318, baseType: !873, size: 64, offset: 960)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1426, file: !347, line: 2319, baseType: !873, size: 64, offset: 1024)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1426, file: !347, line: 2320, baseType: !873, size: 64, offset: 1088)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1426, file: !347, line: 2321, baseType: !873, size: 64, offset: 1152)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1426, file: !347, line: 2322, baseType: !873, size: 64, offset: 1216)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1426, file: !347, line: 2324, baseType: !1472, size: 64, offset: 1280)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !347, line: 2324, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !875, file: !347, line: 3395, baseType: !1475, size: 320)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !347, line: 1469, size: 320, elements: !1476)
!1476 = !{!1477, !1478, !1479}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1475, file: !347, line: 1470, baseType: !911, size: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1475, file: !347, line: 1471, baseType: !873, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1475, file: !347, line: 1472, baseType: !873, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !875, file: !347, line: 3396, baseType: !1481, size: 320)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !347, line: 1482, size: 320, elements: !1482)
!1482 = !{!1483, !1484, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1481, file: !347, line: 1483, baseType: !911, size: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1481, file: !347, line: 1484, baseType: !726, size: 32, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1481, file: !347, line: 1485, baseType: !1486, size: 64, offset: 256)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 64, elements: !853)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !875, file: !347, line: 3397, baseType: !1488, size: 384)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !347, line: 1829, size: 384, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1488, file: !347, line: 1830, baseType: !911, size: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1488, file: !347, line: 1831, baseType: !993, size: 32, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1488, file: !347, line: 1832, baseType: !873, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1488, file: !347, line: 1835, baseType: !1486, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !875, file: !347, line: 3398, baseType: !1495, size: 704)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !347, line: 1898, size: 704, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1504}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1495, file: !347, line: 1899, baseType: !911, size: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1495, file: !347, line: 1902, baseType: !873, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1495, file: !347, line: 1905, baseType: !1214, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1495, file: !347, line: 1908, baseType: !7, size: 32, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1495, file: !347, line: 1911, baseType: !1502, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !347, line: 1876, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1495, file: !347, line: 1914, baseType: !1505, size: 256, offset: 448)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !347, line: 1883, size: 256, elements: !1506)
!1506 = !{!1507, !1509, !1510, !1515}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1505, file: !347, line: 1884, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1505, file: !347, line: 1885, baseType: !1508, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1505, file: !347, line: 1891, baseType: !1511, size: 64, offset: 128)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1505, file: !347, line: 1891, size: 64, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1511, file: !347, line: 1891, baseType: !1214, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1511, file: !347, line: 1891, baseType: !873, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1505, file: !347, line: 1892, baseType: !1516, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !875, file: !347, line: 3399, baseType: !1518, size: 704)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !347, line: 2008, size: 704, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1537, !1538, !1539, !1540, !1541}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1518, file: !347, line: 2009, baseType: !911, size: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1518, file: !347, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1518, file: !347, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1518, file: !347, line: 2014, baseType: !993, size: 32, offset: 224)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1518, file: !347, line: 2016, baseType: !873, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1518, file: !347, line: 2017, baseType: !1526, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !347, line: 183, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !347, line: 183, size: 128, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1528, file: !347, line: 183, baseType: !1531, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !347, line: 182, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !347, line: 182, size: 128, elements: !1533)
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1532, file: !347, line: 182, baseType: !7, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1532, file: !347, line: 182, baseType: !7, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1532, file: !347, line: 182, baseType: !1486, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1518, file: !347, line: 2019, baseType: !873, size: 64, offset: 384)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1518, file: !347, line: 2020, baseType: !873, size: 64, offset: 448)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1518, file: !347, line: 2021, baseType: !873, size: 64, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1518, file: !347, line: 2022, baseType: !873, size: 64, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1518, file: !347, line: 2023, baseType: !873, size: 64, offset: 640)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !875, file: !347, line: 3400, baseType: !1543, size: 832)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !347, line: 2430, size: 832, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1543, file: !347, line: 2431, baseType: !911, size: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1543, file: !347, line: 2433, baseType: !873, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1543, file: !347, line: 2434, baseType: !873, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1543, file: !347, line: 2435, baseType: !873, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1543, file: !347, line: 2436, baseType: !873, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1543, file: !347, line: 2437, baseType: !1526, size: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1543, file: !347, line: 2438, baseType: !873, size: 64, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1543, file: !347, line: 2440, baseType: !873, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1543, file: !347, line: 2441, baseType: !873, size: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1543, file: !347, line: 2443, baseType: !1555, size: 128, offset: 704)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !347, line: 182, baseType: !1556)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !347, line: 182, size: 128, elements: !1557)
!1557 = !{!1558}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1556, file: !347, line: 182, baseType: !1531, size: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !875, file: !347, line: 3401, baseType: !1560, size: 320)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !347, line: 3327, size: 320, elements: !1561)
!1561 = !{!1562, !1563, !1570}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1560, file: !347, line: 3329, baseType: !911, size: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1560, file: !347, line: 3330, baseType: !1564, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !347, line: 3320, size: 192, elements: !1566)
!1566 = !{!1567, !1568, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1565, file: !347, line: 3322, baseType: !1564, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1565, file: !347, line: 3323, baseType: !1564, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1565, file: !347, line: 3324, baseType: !873, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1560, file: !347, line: 3331, baseType: !1564, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !875, file: !347, line: 3402, baseType: !1572, size: 256)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !347, line: 1540, size: 256, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1572, file: !347, line: 1541, baseType: !911, size: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1572, file: !347, line: 1542, baseType: !1576, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !347, line: 1538, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !347, line: 1538, size: 192, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1578, file: !347, line: 1538, baseType: !1581, size: 192)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !347, line: 1537, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !347, line: 1537, size: 192, elements: !1583)
!1583 = !{!1584, !1585, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1582, file: !347, line: 1537, baseType: !7, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1582, file: !347, line: 1537, baseType: !7, size: 32, offset: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1582, file: !347, line: 1537, baseType: !1587, size: 128, offset: 64)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1588, size: 128, elements: !853)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !347, line: 1535, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !347, line: 1532, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1589, file: !347, line: 1533, baseType: !873, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1589, file: !347, line: 1534, baseType: !873, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !875, file: !347, line: 3403, baseType: !1594, size: 512)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !347, line: 1938, size: 512, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1605, !1606, !1607}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1594, file: !347, line: 1939, baseType: !911, size: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1594, file: !347, line: 1940, baseType: !993, size: 32, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1594, file: !347, line: 1941, baseType: !346, size: 32, offset: 224)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1594, file: !347, line: 1946, baseType: !1600, size: 32, offset: 256)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !347, line: 1942, size: 32, elements: !1601)
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1600, file: !347, line: 1943, baseType: !365, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1600, file: !347, line: 1944, baseType: !372, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1600, file: !347, line: 1945, baseType: !379, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1594, file: !347, line: 1950, baseType: !1157, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1594, file: !347, line: 1951, baseType: !1157, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1594, file: !347, line: 1953, baseType: !1486, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !875, file: !347, line: 3404, baseType: !1609, size: 1664)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !347, line: 3337, size: 1664, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1609, file: !347, line: 3338, baseType: !911, size: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1609, file: !347, line: 3341, baseType: !1613, size: 1472, offset: 192)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1614, line: 410, size: 1472, elements: !1615)
!1614 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1613, file: !1614, line: 412, baseType: !726, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1613, file: !1614, line: 413, baseType: !726, size: 32, offset: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1613, file: !1614, line: 414, baseType: !726, size: 32, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1613, file: !1614, line: 415, baseType: !726, size: 32, offset: 96)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1613, file: !1614, line: 416, baseType: !726, size: 32, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1613, file: !1614, line: 417, baseType: !726, size: 32, offset: 160)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1613, file: !1614, line: 418, baseType: !725, size: 8, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1613, file: !1614, line: 419, baseType: !725, size: 8, offset: 200)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1613, file: !1614, line: 420, baseType: !1625, size: 8, offset: 208)
!1625 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1613, file: !1614, line: 421, baseType: !1625, size: 8, offset: 216)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1613, file: !1614, line: 422, baseType: !1625, size: 8, offset: 224)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1613, file: !1614, line: 423, baseType: !1625, size: 8, offset: 232)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1613, file: !1614, line: 424, baseType: !1625, size: 8, offset: 240)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1613, file: !1614, line: 425, baseType: !1625, size: 8, offset: 248)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1613, file: !1614, line: 426, baseType: !1625, size: 8, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1613, file: !1614, line: 427, baseType: !1625, size: 8, offset: 264)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1613, file: !1614, line: 428, baseType: !1625, size: 8, offset: 272)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1613, file: !1614, line: 429, baseType: !1625, size: 8, offset: 280)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1613, file: !1614, line: 430, baseType: !1625, size: 8, offset: 288)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1613, file: !1614, line: 431, baseType: !1625, size: 8, offset: 296)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1613, file: !1614, line: 432, baseType: !1625, size: 8, offset: 304)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1613, file: !1614, line: 433, baseType: !1625, size: 8, offset: 312)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1613, file: !1614, line: 434, baseType: !1625, size: 8, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1613, file: !1614, line: 435, baseType: !1625, size: 8, offset: 328)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1613, file: !1614, line: 436, baseType: !1625, size: 8, offset: 336)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1613, file: !1614, line: 437, baseType: !1625, size: 8, offset: 344)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1613, file: !1614, line: 438, baseType: !1625, size: 8, offset: 352)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1613, file: !1614, line: 439, baseType: !1625, size: 8, offset: 360)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1613, file: !1614, line: 440, baseType: !1625, size: 8, offset: 368)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1613, file: !1614, line: 441, baseType: !1625, size: 8, offset: 376)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1613, file: !1614, line: 442, baseType: !1625, size: 8, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1613, file: !1614, line: 443, baseType: !1625, size: 8, offset: 392)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1613, file: !1614, line: 444, baseType: !1625, size: 8, offset: 400)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1613, file: !1614, line: 445, baseType: !1625, size: 8, offset: 408)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1613, file: !1614, line: 446, baseType: !1625, size: 8, offset: 416)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1613, file: !1614, line: 447, baseType: !1625, size: 8, offset: 424)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1613, file: !1614, line: 448, baseType: !1625, size: 8, offset: 432)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1613, file: !1614, line: 449, baseType: !1625, size: 8, offset: 440)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1613, file: !1614, line: 450, baseType: !1625, size: 8, offset: 448)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1613, file: !1614, line: 451, baseType: !1625, size: 8, offset: 456)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1613, file: !1614, line: 452, baseType: !1625, size: 8, offset: 464)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1613, file: !1614, line: 453, baseType: !1625, size: 8, offset: 472)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1613, file: !1614, line: 454, baseType: !1625, size: 8, offset: 480)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1613, file: !1614, line: 455, baseType: !1625, size: 8, offset: 488)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1613, file: !1614, line: 456, baseType: !1625, size: 8, offset: 496)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1613, file: !1614, line: 457, baseType: !1625, size: 8, offset: 504)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1613, file: !1614, line: 458, baseType: !1625, size: 8, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1613, file: !1614, line: 459, baseType: !1625, size: 8, offset: 520)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1613, file: !1614, line: 460, baseType: !1625, size: 8, offset: 528)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1613, file: !1614, line: 461, baseType: !1625, size: 8, offset: 536)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1613, file: !1614, line: 462, baseType: !1625, size: 8, offset: 544)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1613, file: !1614, line: 463, baseType: !1625, size: 8, offset: 552)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1613, file: !1614, line: 464, baseType: !1625, size: 8, offset: 560)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1613, file: !1614, line: 465, baseType: !1625, size: 8, offset: 568)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1613, file: !1614, line: 466, baseType: !1625, size: 8, offset: 576)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1613, file: !1614, line: 467, baseType: !1625, size: 8, offset: 584)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1613, file: !1614, line: 468, baseType: !1625, size: 8, offset: 592)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1613, file: !1614, line: 469, baseType: !1625, size: 8, offset: 600)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1613, file: !1614, line: 470, baseType: !1625, size: 8, offset: 608)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1613, file: !1614, line: 471, baseType: !1625, size: 8, offset: 616)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1613, file: !1614, line: 472, baseType: !1625, size: 8, offset: 624)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1613, file: !1614, line: 473, baseType: !1625, size: 8, offset: 632)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1613, file: !1614, line: 474, baseType: !1625, size: 8, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1613, file: !1614, line: 475, baseType: !1625, size: 8, offset: 648)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1613, file: !1614, line: 476, baseType: !1625, size: 8, offset: 656)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1613, file: !1614, line: 477, baseType: !1625, size: 8, offset: 664)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1613, file: !1614, line: 478, baseType: !1625, size: 8, offset: 672)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1613, file: !1614, line: 479, baseType: !1625, size: 8, offset: 680)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1613, file: !1614, line: 480, baseType: !1625, size: 8, offset: 688)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1613, file: !1614, line: 481, baseType: !1625, size: 8, offset: 696)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1613, file: !1614, line: 482, baseType: !1625, size: 8, offset: 704)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1613, file: !1614, line: 483, baseType: !1625, size: 8, offset: 712)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1613, file: !1614, line: 484, baseType: !1625, size: 8, offset: 720)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1613, file: !1614, line: 485, baseType: !1625, size: 8, offset: 728)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1613, file: !1614, line: 486, baseType: !1625, size: 8, offset: 736)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1613, file: !1614, line: 487, baseType: !1625, size: 8, offset: 744)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1613, file: !1614, line: 488, baseType: !1625, size: 8, offset: 752)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1613, file: !1614, line: 489, baseType: !1625, size: 8, offset: 760)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1613, file: !1614, line: 490, baseType: !1625, size: 8, offset: 768)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1613, file: !1614, line: 491, baseType: !1625, size: 8, offset: 776)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1613, file: !1614, line: 492, baseType: !1625, size: 8, offset: 784)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1613, file: !1614, line: 493, baseType: !1625, size: 8, offset: 792)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1613, file: !1614, line: 494, baseType: !1625, size: 8, offset: 800)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1613, file: !1614, line: 495, baseType: !1625, size: 8, offset: 808)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1613, file: !1614, line: 496, baseType: !1625, size: 8, offset: 816)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1613, file: !1614, line: 497, baseType: !1625, size: 8, offset: 824)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1613, file: !1614, line: 498, baseType: !1625, size: 8, offset: 832)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1613, file: !1614, line: 499, baseType: !1625, size: 8, offset: 840)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1613, file: !1614, line: 500, baseType: !1625, size: 8, offset: 848)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1613, file: !1614, line: 501, baseType: !1625, size: 8, offset: 856)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1613, file: !1614, line: 502, baseType: !1625, size: 8, offset: 864)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1613, file: !1614, line: 503, baseType: !1625, size: 8, offset: 872)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1613, file: !1614, line: 504, baseType: !1625, size: 8, offset: 880)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1613, file: !1614, line: 505, baseType: !1625, size: 8, offset: 888)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1613, file: !1614, line: 506, baseType: !1625, size: 8, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1613, file: !1614, line: 507, baseType: !1625, size: 8, offset: 904)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1613, file: !1614, line: 508, baseType: !1625, size: 8, offset: 912)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1613, file: !1614, line: 509, baseType: !1625, size: 8, offset: 920)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1613, file: !1614, line: 510, baseType: !1625, size: 8, offset: 928)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1613, file: !1614, line: 511, baseType: !1625, size: 8, offset: 936)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1613, file: !1614, line: 512, baseType: !1625, size: 8, offset: 944)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1613, file: !1614, line: 513, baseType: !1625, size: 8, offset: 952)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1613, file: !1614, line: 514, baseType: !1625, size: 8, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1613, file: !1614, line: 515, baseType: !1625, size: 8, offset: 968)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1613, file: !1614, line: 516, baseType: !1625, size: 8, offset: 976)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1613, file: !1614, line: 517, baseType: !1625, size: 8, offset: 984)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1613, file: !1614, line: 518, baseType: !1625, size: 8, offset: 992)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1613, file: !1614, line: 519, baseType: !1625, size: 8, offset: 1000)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1613, file: !1614, line: 520, baseType: !1625, size: 8, offset: 1008)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1613, file: !1614, line: 521, baseType: !1625, size: 8, offset: 1016)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1613, file: !1614, line: 522, baseType: !1625, size: 8, offset: 1024)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1613, file: !1614, line: 523, baseType: !1625, size: 8, offset: 1032)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1613, file: !1614, line: 524, baseType: !1625, size: 8, offset: 1040)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1613, file: !1614, line: 525, baseType: !1625, size: 8, offset: 1048)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1613, file: !1614, line: 526, baseType: !1625, size: 8, offset: 1056)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1613, file: !1614, line: 527, baseType: !1625, size: 8, offset: 1064)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1613, file: !1614, line: 528, baseType: !1625, size: 8, offset: 1072)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1613, file: !1614, line: 529, baseType: !1625, size: 8, offset: 1080)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1613, file: !1614, line: 530, baseType: !1625, size: 8, offset: 1088)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1613, file: !1614, line: 531, baseType: !1625, size: 8, offset: 1096)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1613, file: !1614, line: 532, baseType: !1625, size: 8, offset: 1104)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1613, file: !1614, line: 533, baseType: !1625, size: 8, offset: 1112)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1613, file: !1614, line: 534, baseType: !1625, size: 8, offset: 1120)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1613, file: !1614, line: 535, baseType: !1625, size: 8, offset: 1128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1613, file: !1614, line: 536, baseType: !1625, size: 8, offset: 1136)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1613, file: !1614, line: 537, baseType: !1625, size: 8, offset: 1144)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1613, file: !1614, line: 538, baseType: !1625, size: 8, offset: 1152)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1613, file: !1614, line: 539, baseType: !1625, size: 8, offset: 1160)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1613, file: !1614, line: 540, baseType: !1625, size: 8, offset: 1168)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1613, file: !1614, line: 541, baseType: !1625, size: 8, offset: 1176)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1613, file: !1614, line: 542, baseType: !1625, size: 8, offset: 1184)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1613, file: !1614, line: 543, baseType: !1625, size: 8, offset: 1192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1613, file: !1614, line: 544, baseType: !1625, size: 8, offset: 1200)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1613, file: !1614, line: 545, baseType: !1625, size: 8, offset: 1208)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1613, file: !1614, line: 546, baseType: !1625, size: 8, offset: 1216)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1613, file: !1614, line: 547, baseType: !1625, size: 8, offset: 1224)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1613, file: !1614, line: 548, baseType: !1625, size: 8, offset: 1232)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1613, file: !1614, line: 549, baseType: !1625, size: 8, offset: 1240)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1613, file: !1614, line: 550, baseType: !1625, size: 8, offset: 1248)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1613, file: !1614, line: 551, baseType: !1625, size: 8, offset: 1256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1613, file: !1614, line: 552, baseType: !1625, size: 8, offset: 1264)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1613, file: !1614, line: 553, baseType: !1625, size: 8, offset: 1272)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1613, file: !1614, line: 554, baseType: !1625, size: 8, offset: 1280)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1613, file: !1614, line: 555, baseType: !1625, size: 8, offset: 1288)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1613, file: !1614, line: 556, baseType: !1625, size: 8, offset: 1296)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1613, file: !1614, line: 557, baseType: !1625, size: 8, offset: 1304)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1613, file: !1614, line: 558, baseType: !1625, size: 8, offset: 1312)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1613, file: !1614, line: 559, baseType: !1625, size: 8, offset: 1320)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1613, file: !1614, line: 560, baseType: !1625, size: 8, offset: 1328)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1613, file: !1614, line: 561, baseType: !1625, size: 8, offset: 1336)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1613, file: !1614, line: 562, baseType: !1625, size: 8, offset: 1344)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1613, file: !1614, line: 563, baseType: !1625, size: 8, offset: 1352)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1613, file: !1614, line: 564, baseType: !1625, size: 8, offset: 1360)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1613, file: !1614, line: 565, baseType: !1625, size: 8, offset: 1368)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1613, file: !1614, line: 566, baseType: !1625, size: 8, offset: 1376)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1613, file: !1614, line: 567, baseType: !1625, size: 8, offset: 1384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1613, file: !1614, line: 568, baseType: !1625, size: 8, offset: 1392)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1613, file: !1614, line: 569, baseType: !1625, size: 8, offset: 1400)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1613, file: !1614, line: 570, baseType: !1625, size: 8, offset: 1408)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1613, file: !1614, line: 571, baseType: !1625, size: 8, offset: 1416)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1613, file: !1614, line: 572, baseType: !1625, size: 8, offset: 1424)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1613, file: !1614, line: 573, baseType: !1625, size: 8, offset: 1432)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1613, file: !1614, line: 574, baseType: !1625, size: 8, offset: 1440)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !875, file: !347, line: 3405, baseType: !1781, size: 384)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !347, line: 3352, size: 384, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1781, file: !347, line: 3353, baseType: !911, size: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1781, file: !347, line: 3356, baseType: !1785, size: 192, offset: 192)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1614, line: 578, size: 192, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1785, file: !1614, line: 580, baseType: !726, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1785, file: !1614, line: 581, baseType: !726, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1785, file: !1614, line: 582, baseType: !726, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1785, file: !1614, line: 583, baseType: !726, size: 32, offset: 96)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1785, file: !1614, line: 584, baseType: !725, size: 8, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1785, file: !1614, line: 585, baseType: !725, size: 8, offset: 136)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1785, file: !1614, line: 586, baseType: !725, size: 8, offset: 144)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1785, file: !1614, line: 587, baseType: !725, size: 8, offset: 152)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1785, file: !1614, line: 588, baseType: !725, size: 8, offset: 160)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1785, file: !1614, line: 589, baseType: !725, size: 8, offset: 168)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1785, file: !1614, line: 590, baseType: !725, size: 8, offset: 176)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !839, file: !574, line: 178, baseType: !1131, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !839, file: !574, line: 179, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !574, line: 150, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !574, line: 142, size: 320, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1802, file: !574, line: 144, baseType: !873, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1802, file: !574, line: 145, baseType: !819, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1802, file: !574, line: 146, baseType: !819, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1802, file: !574, line: 147, baseType: !1451, size: 32, offset: 192)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1802, file: !574, line: 148, baseType: !7, size: 32, offset: 224)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1802, file: !574, line: 149, baseType: !725, size: 8, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !839, file: !574, line: 180, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !574, line: 162, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !574, line: 159, size: 128, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1813, file: !574, line: 160, baseType: !873, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1813, file: !574, line: 161, baseType: !768, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !839, file: !574, line: 181, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !574, line: 181, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !834, file: !574, line: 317, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 64, elements: !853)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !834, file: !574, line: 318, baseType: !1823, size: 320)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !574, line: 188, size: 320, elements: !1824)
!1824 = !{!1825, !1827, !1882}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1823, file: !574, line: 190, baseType: !1826, size: 192)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 192, elements: !944)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1823, file: !574, line: 193, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !574, line: 206, size: 320, elements: !1830)
!1830 = !{!1831, !1867, !1868, !1869, !1881}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1829, file: !574, line: 208, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !734, line: 62, baseType: !1834)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1835, line: 538, size: 256, elements: !1836)
!1835 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1836 = !{!1837, !1841, !1847, !1858}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1834, file: !1835, line: 539, baseType: !1838, size: 32)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1835, line: 482, size: 32, elements: !1839)
!1839 = !{!1840}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1838, file: !1835, line: 484, baseType: !7, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1834, file: !1835, line: 540, baseType: !1842, size: 192)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1835, line: 488, size: 192, elements: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1842, file: !1835, line: 489, baseType: !1838, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1842, file: !1835, line: 492, baseType: !731, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1842, file: !1835, line: 496, baseType: !873, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1834, file: !1835, line: 541, baseType: !1848, size: 256)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1835, line: 504, size: 256, elements: !1849)
!1849 = !{!1850, !1851, !1856, !1857}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1848, file: !1835, line: 505, baseType: !1838, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1848, file: !1835, line: 509, baseType: !1852, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1835, line: 501, baseType: !1853)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{null, !1307}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1848, file: !1835, line: 510, baseType: !1307, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1848, file: !1835, line: 513, baseType: !1832, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1834, file: !1835, line: 542, baseType: !1859, size: 128)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1835, line: 530, size: 128, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1859, file: !1835, line: 531, baseType: !1838, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1859, file: !1835, line: 534, baseType: !1863, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1835, line: 525, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!725, !873, !731, !751, !751}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1829, file: !574, line: 211, baseType: !7, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1829, file: !574, line: 214, baseType: !768, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1829, file: !574, line: 224, baseType: !1870, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !574, line: 202, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !574, line: 202, size: 128, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1872, file: !574, line: 202, baseType: !1875, size: 128)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !574, line: 200, baseType: !1876)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !574, line: 200, size: 128, elements: !1877)
!1877 = !{!1878, !1879, !1880}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1876, file: !574, line: 200, baseType: !7, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1876, file: !574, line: 200, baseType: !7, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1876, file: !574, line: 200, baseType: !852, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1829, file: !574, line: 234, baseType: !1870, size: 64, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1823, file: !574, line: 197, baseType: !768, size: 64, offset: 256)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !834, file: !574, line: 319, baseType: !933, size: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !834, file: !574, line: 320, baseType: !952, size: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !813, file: !717, line: 366, baseType: !1886, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_link", file: !717, line: 449, size: 128, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1887, file: !717, line: 451, baseType: !808, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1887, file: !717, line: 452, baseType: !1886, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "insn_info", scope: !813, file: !717, line: 370, baseType: !1892, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_insn_info", file: !717, line: 433, size: 384, elements: !1894)
!1894 = !{!1895, !1896, !1898, !1899, !1900, !1911}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1893, file: !717, line: 435, baseType: !819, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !1893, file: !717, line: 436, baseType: !1897, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !1893, file: !717, line: 437, baseType: !1897, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "eq_uses", scope: !1893, file: !717, line: 439, baseType: !1897, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mw_hardregs", scope: !1893, file: !717, line: 440, baseType: !1901, size: 64, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_mw_hardreg", file: !717, line: 339, size: 192, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1910}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "mw_reg", scope: !1903, file: !717, line: 341, baseType: !819, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1903, file: !717, line: 344, baseType: !7, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1903, file: !717, line: 346, baseType: !726, size: 16, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "start_regno", scope: !1903, file: !717, line: 347, baseType: !7, size: 32, offset: 96)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "end_regno", scope: !1903, file: !717, line: 348, baseType: !7, size: 32, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "mw_order", scope: !1903, file: !717, line: 349, baseType: !7, size: 32, offset: 160)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !1893, file: !717, line: 444, baseType: !726, size: 32, offset: 320)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "next_reg", scope: !813, file: !717, line: 374, baseType: !809, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "prev_reg", scope: !813, file: !717, line: 375, baseType: !809, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !813, file: !717, line: 376, baseType: !7, size: 32, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !813, file: !717, line: 379, baseType: !726, size: 32, offset: 416)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !813, file: !717, line: 382, baseType: !7, size: 32, offset: 448)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "regular_ref", scope: !810, file: !717, line: 425, baseType: !1918, size: 576)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_regular_ref", file: !717, line: 398, size: 576, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1918, file: !717, line: 400, baseType: !813, size: 512)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1918, file: !717, line: 405, baseType: !1922, size: 64, offset: 512)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_ref", scope: !810, file: !717, line: 426, baseType: !1924, size: 576)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_artificial_ref", file: !717, line: 388, size: 576, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1924, file: !717, line: 390, baseType: !813, size: 512)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1924, file: !717, line: 394, baseType: !1130, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "extract_ref", scope: !810, file: !717, line: 427, baseType: !1929, size: 704)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_extract_ref", file: !717, line: 413, size: 704, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1929, file: !717, line: 415, baseType: !1918, size: 576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1929, file: !717, line: 416, baseType: !726, size: 32, offset: 576)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1929, file: !717, line: 417, baseType: !726, size: 32, offset: 608)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1929, file: !717, line: 418, baseType: !189, size: 32, offset: 640)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_md_bb_info", file: !717, line: 810, size: 320, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !1936, file: !717, line: 813, baseType: !733, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !1936, file: !717, line: 814, baseType: !733, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1936, file: !717, line: 815, baseType: !733, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1936, file: !717, line: 818, baseType: !733, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1936, file: !717, line: 819, baseType: !733, size: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_lr_bb_info", file: !717, line: 826, size: 256, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1944, file: !717, line: 829, baseType: !733, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1944, file: !717, line: 831, baseType: !733, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1944, file: !717, line: 834, baseType: !733, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1944, file: !717, line: 835, baseType: !733, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_scan_bb_info", file: !717, line: 771, size: 128, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_defs", scope: !1951, file: !717, line: 782, baseType: !1897, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_uses", scope: !1951, file: !717, line: 788, baseType: !1897, size: 64, offset: 64)
!1955 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "find_occurrence_data", file: !3, line: 848, size: 128, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !1957, file: !3, line: 850, baseType: !819, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !1957, file: !3, line: 851, baseType: !1922, size: 64, offset: 64)
!1961 = !{!0, !1962, !1990, !1992, !1994, !1996, !1998, !2000}
!1962 = !DIGlobalVariableExpression(var: !1963, expr: !DIExpression())
!1963 = distinct !DIGlobalVariable(name: "pass_rtl_fwprop_addr", scope: !2, file: !3, line: 1490, type: !1964, isLocal: false, isDefinition: true)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !1965)
!1965 = !{!1966}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1964, file: !6, line: 164, baseType: !1967, size: 640)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1975, !1979, !1981, !1982, !1983, !1985, !1986, !1987, !1988, !1989}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1967, file: !6, line: 117, baseType: !5, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1967, file: !6, line: 121, baseType: !731, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1967, file: !6, line: 125, baseType: !1972, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!725}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1967, file: !6, line: 130, baseType: !1976, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!7}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1967, file: !6, line: 133, baseType: !1980, size: 64, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1967, file: !6, line: 136, baseType: !1980, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1967, file: !6, line: 139, baseType: !726, size: 32, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1967, file: !6, line: 143, baseType: !1984, size: 32, offset: 416)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1967, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1967, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1967, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1967, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1967, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1990 = !DIGlobalVariableExpression(var: !1991, expr: !DIExpression())
!1991 = distinct !DIGlobalVariable(name: "num_changes", scope: !2, file: !3, line: 118, type: !726, isLocal: true, isDefinition: true)
!1992 = !DIGlobalVariableExpression(var: !1993, expr: !DIExpression())
!1993 = distinct !DIGlobalVariable(name: "use_def_ref", scope: !2, file: !3, line: 122, type: !796, isLocal: true, isDefinition: true)
!1994 = !DIGlobalVariableExpression(var: !1995, expr: !DIExpression())
!1995 = distinct !DIGlobalVariable(name: "reg_defs", scope: !2, file: !3, line: 123, type: !796, isLocal: true, isDefinition: true)
!1996 = !DIGlobalVariableExpression(var: !1997, expr: !DIExpression())
!1997 = distinct !DIGlobalVariable(name: "reg_defs_stack", scope: !2, file: !3, line: 124, type: !796, isLocal: true, isDefinition: true)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(name: "local_md", scope: !2, file: !3, line: 130, type: !733, isLocal: true, isDefinition: true)
!2000 = !DIGlobalVariableExpression(var: !2001, expr: !DIExpression())
!2001 = distinct !DIGlobalVariable(name: "local_lr", scope: !2, file: !3, line: 131, type: !733, isLocal: true, isDefinition: true)
!2002 = !{i32 2, !"Dwarf Version", i32 4}
!2003 = !{i32 2, !"Debug Info Version", i32 3}
!2004 = !{i32 1, !"wchar_size", i32 4}
!2005 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2006 = distinct !DISubprogram(name: "vprintf", scope: !2007, file: !2007, line: 39, type: !2008, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2018)
!2007 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!726, !2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !731)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2017}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2012, file: !3, baseType: !7, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2012, file: !3, baseType: !7, size: 32, offset: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2012, file: !3, baseType: !730, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2012, file: !3, baseType: !730, size: 64, offset: 128)
!2018 = !{!2019, !2020}
!2019 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2006, file: !2007, line: 39, type: !2010)
!2020 = !DILocalVariable(name: "__arg", arg: 2, scope: !2006, file: !2007, line: 39, type: !2011)
!2021 = !DILocation(line: 0, scope: !2006)
!2022 = !DILocation(line: 41, column: 20, scope: !2006)
!2023 = !DILocation(line: 41, column: 10, scope: !2006)
!2024 = !DILocation(line: 41, column: 3, scope: !2006)
!2025 = distinct !DISubprogram(name: "getchar", scope: !2007, file: !2007, line: 47, type: !2026, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!726}
!2028 = !{}
!2029 = !DILocation(line: 49, column: 16, scope: !2025)
!2030 = !DILocation(line: 49, column: 10, scope: !2025)
!2031 = !DILocation(line: 49, column: 3, scope: !2025)
!2032 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2007, file: !2007, line: 56, type: !2033, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2085)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!726, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2037, line: 7, baseType: !2038)
!2037 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2039, line: 49, size: 1728, elements: !2040)
!2039 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2040 = !{!2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2056, !2058, !2059, !2060, !2063, !2064, !2065, !2066, !2069, !2071, !2074, !2077, !2078, !2079, !2080, !2081}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2038, file: !2039, line: 51, baseType: !726, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2038, file: !2039, line: 54, baseType: !728, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2038, file: !2039, line: 55, baseType: !728, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2038, file: !2039, line: 56, baseType: !728, size: 64, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2038, file: !2039, line: 57, baseType: !728, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2038, file: !2039, line: 58, baseType: !728, size: 64, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2038, file: !2039, line: 59, baseType: !728, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2038, file: !2039, line: 60, baseType: !728, size: 64, offset: 448)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2038, file: !2039, line: 61, baseType: !728, size: 64, offset: 512)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2038, file: !2039, line: 64, baseType: !728, size: 64, offset: 576)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2038, file: !2039, line: 65, baseType: !728, size: 64, offset: 640)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2038, file: !2039, line: 66, baseType: !728, size: 64, offset: 704)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2038, file: !2039, line: 68, baseType: !2054, size: 64, offset: 768)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2039, line: 36, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2038, file: !2039, line: 70, baseType: !2057, size: 64, offset: 832)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2038, file: !2039, line: 72, baseType: !726, size: 32, offset: 896)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2038, file: !2039, line: 73, baseType: !726, size: 32, offset: 928)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2038, file: !2039, line: 74, baseType: !2061, size: 64, offset: 960)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2062, line: 152, baseType: !768)
!2062 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2038, file: !2039, line: 77, baseType: !1955, size: 16, offset: 1024)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2038, file: !2039, line: 78, baseType: !1625, size: 8, offset: 1040)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2038, file: !2039, line: 79, baseType: !968, size: 8, offset: 1048)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2038, file: !2039, line: 81, baseType: !2067, size: 64, offset: 1088)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2039, line: 43, baseType: null)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2038, file: !2039, line: 89, baseType: !2070, size: 64, offset: 1152)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2062, line: 153, baseType: !768)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2038, file: !2039, line: 91, baseType: !2072, size: 64, offset: 1216)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2039, line: 37, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2038, file: !2039, line: 92, baseType: !2075, size: 64, offset: 1280)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2039, line: 38, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2038, file: !2039, line: 93, baseType: !2057, size: 64, offset: 1344)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2038, file: !2039, line: 94, baseType: !730, size: 64, offset: 1408)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2038, file: !2039, line: 95, baseType: !1322, size: 64, offset: 1472)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2038, file: !2039, line: 96, baseType: !726, size: 32, offset: 1536)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2038, file: !2039, line: 98, baseType: !2082, size: 160, offset: 1568)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 160, elements: !2083)
!2083 = !{!2084}
!2084 = !DISubrange(count: 20)
!2085 = !{!2086}
!2086 = !DILocalVariable(name: "__fp", arg: 1, scope: !2032, file: !2007, line: 56, type: !2035)
!2087 = !DILocation(line: 0, scope: !2032)
!2088 = !DILocation(line: 58, column: 10, scope: !2032)
!2089 = !DILocation(line: 58, column: 3, scope: !2032)
!2090 = distinct !DISubprogram(name: "getc_unlocked", scope: !2007, file: !2007, line: 66, type: !2033, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2091 = !{!2092}
!2092 = !DILocalVariable(name: "__fp", arg: 1, scope: !2090, file: !2007, line: 66, type: !2035)
!2093 = !DILocation(line: 0, scope: !2090)
!2094 = !DILocation(line: 68, column: 10, scope: !2090)
!2095 = !DILocation(line: 68, column: 3, scope: !2090)
!2096 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2007, file: !2007, line: 73, type: !2026, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2097 = !DILocation(line: 75, column: 10, scope: !2096)
!2098 = !DILocation(line: 75, column: 3, scope: !2096)
!2099 = distinct !DISubprogram(name: "putchar", scope: !2007, file: !2007, line: 82, type: !2100, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!726, !726}
!2102 = !{!2103}
!2103 = !DILocalVariable(name: "__c", arg: 1, scope: !2099, file: !2007, line: 82, type: !726)
!2104 = !DILocation(line: 0, scope: !2099)
!2105 = !DILocation(line: 84, column: 21, scope: !2099)
!2106 = !DILocation(line: 84, column: 10, scope: !2099)
!2107 = !DILocation(line: 84, column: 3, scope: !2099)
!2108 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2007, file: !2007, line: 91, type: !2109, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!726, !726, !2035}
!2111 = !{!2112, !2113}
!2112 = !DILocalVariable(name: "__c", arg: 1, scope: !2108, file: !2007, line: 91, type: !726)
!2113 = !DILocalVariable(name: "__stream", arg: 2, scope: !2108, file: !2007, line: 91, type: !2035)
!2114 = !DILocation(line: 0, scope: !2108)
!2115 = !DILocation(line: 93, column: 10, scope: !2108)
!2116 = !DILocation(line: 93, column: 3, scope: !2108)
!2117 = distinct !DISubprogram(name: "putc_unlocked", scope: !2007, file: !2007, line: 101, type: !2109, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2118 = !{!2119, !2120}
!2119 = !DILocalVariable(name: "__c", arg: 1, scope: !2117, file: !2007, line: 101, type: !726)
!2120 = !DILocalVariable(name: "__stream", arg: 2, scope: !2117, file: !2007, line: 101, type: !2035)
!2121 = !DILocation(line: 0, scope: !2117)
!2122 = !DILocation(line: 103, column: 10, scope: !2117)
!2123 = !DILocation(line: 103, column: 3, scope: !2117)
!2124 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2007, file: !2007, line: 108, type: !2100, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "__c", arg: 1, scope: !2124, file: !2007, line: 108, type: !726)
!2127 = !DILocation(line: 0, scope: !2124)
!2128 = !DILocation(line: 110, column: 10, scope: !2124)
!2129 = !DILocation(line: 110, column: 3, scope: !2124)
!2130 = distinct !DISubprogram(name: "getline", scope: !2007, file: !2007, line: 118, type: !2131, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!2133, !727, !2134, !2035}
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2062, line: 193, baseType: !768)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!2135 = !{!2136, !2137, !2138}
!2136 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2130, file: !2007, line: 118, type: !727)
!2137 = !DILocalVariable(name: "__n", arg: 2, scope: !2130, file: !2007, line: 118, type: !2134)
!2138 = !DILocalVariable(name: "__stream", arg: 3, scope: !2130, file: !2007, line: 118, type: !2035)
!2139 = !DILocation(line: 0, scope: !2130)
!2140 = !DILocation(line: 120, column: 10, scope: !2130)
!2141 = !DILocation(line: 120, column: 3, scope: !2130)
!2142 = distinct !DISubprogram(name: "feof_unlocked", scope: !2007, file: !2007, line: 128, type: !2033, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2143)
!2143 = !{!2144}
!2144 = !DILocalVariable(name: "__stream", arg: 1, scope: !2142, file: !2007, line: 128, type: !2035)
!2145 = !DILocation(line: 0, scope: !2142)
!2146 = !DILocation(line: 130, column: 10, scope: !2142)
!2147 = !DILocation(line: 130, column: 3, scope: !2142)
!2148 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2007, file: !2007, line: 135, type: !2033, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2149)
!2149 = !{!2150}
!2150 = !DILocalVariable(name: "__stream", arg: 1, scope: !2148, file: !2007, line: 135, type: !2035)
!2151 = !DILocation(line: 0, scope: !2148)
!2152 = !DILocation(line: 137, column: 10, scope: !2148)
!2153 = !DILocation(line: 137, column: 3, scope: !2148)
!2154 = distinct !DISubprogram(name: "tolower", scope: !2155, file: !2155, line: 207, type: !2100, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2155 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2156 = !{!2157}
!2157 = !DILocalVariable(name: "__c", arg: 1, scope: !2154, file: !2155, line: 207, type: !726)
!2158 = !DILocation(line: 0, scope: !2154)
!2159 = !DILocation(line: 209, column: 22, scope: !2154)
!2160 = !DILocation(line: 209, column: 39, scope: !2154)
!2161 = !DILocation(line: 209, column: 38, scope: !2154)
!2162 = !DILocation(line: 209, column: 37, scope: !2154)
!2163 = !DILocation(line: 209, column: 10, scope: !2154)
!2164 = !DILocation(line: 209, column: 3, scope: !2154)
!2165 = distinct !DISubprogram(name: "toupper", scope: !2155, file: !2155, line: 213, type: !2100, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2166 = !{!2167}
!2167 = !DILocalVariable(name: "__c", arg: 1, scope: !2165, file: !2155, line: 213, type: !726)
!2168 = !DILocation(line: 0, scope: !2165)
!2169 = !DILocation(line: 215, column: 22, scope: !2165)
!2170 = !DILocation(line: 215, column: 39, scope: !2165)
!2171 = !DILocation(line: 215, column: 38, scope: !2165)
!2172 = !DILocation(line: 215, column: 37, scope: !2165)
!2173 = !DILocation(line: 215, column: 10, scope: !2165)
!2174 = !DILocation(line: 215, column: 3, scope: !2165)
!2175 = distinct !DISubprogram(name: "atoi", scope: !2176, file: !2176, line: 361, type: !2177, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2176 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!726, !731}
!2179 = !{!2180}
!2180 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2175, file: !2176, line: 361, type: !731)
!2181 = !DILocation(line: 0, scope: !2175)
!2182 = !DILocation(line: 363, column: 16, scope: !2175)
!2183 = !DILocation(line: 363, column: 10, scope: !2175)
!2184 = !DILocation(line: 363, column: 3, scope: !2175)
!2185 = distinct !DISubprogram(name: "atol", scope: !2176, file: !2176, line: 366, type: !2186, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!768, !731}
!2188 = !{!2189}
!2189 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2185, file: !2176, line: 366, type: !731)
!2190 = !DILocation(line: 0, scope: !2185)
!2191 = !DILocation(line: 368, column: 10, scope: !2185)
!2192 = !DILocation(line: 368, column: 3, scope: !2185)
!2193 = distinct !DISubprogram(name: "atoll", scope: !2176, file: !2176, line: 373, type: !2194, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2197)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!2196, !731}
!2196 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2197 = !{!2198}
!2198 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2193, file: !2176, line: 373, type: !731)
!2199 = !DILocation(line: 0, scope: !2193)
!2200 = !DILocation(line: 375, column: 10, scope: !2193)
!2201 = !DILocation(line: 375, column: 3, scope: !2193)
!2202 = distinct !DISubprogram(name: "bsearch", scope: !2203, file: !2203, line: 20, type: !2204, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!730, !1307, !1307, !1322, !1322, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2176, line: 808, baseType: !1311)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217}
!2208 = !DILocalVariable(name: "__key", arg: 1, scope: !2202, file: !2203, line: 20, type: !1307)
!2209 = !DILocalVariable(name: "__base", arg: 2, scope: !2202, file: !2203, line: 20, type: !1307)
!2210 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2202, file: !2203, line: 20, type: !1322)
!2211 = !DILocalVariable(name: "__size", arg: 4, scope: !2202, file: !2203, line: 20, type: !1322)
!2212 = !DILocalVariable(name: "__compar", arg: 5, scope: !2202, file: !2203, line: 21, type: !2206)
!2213 = !DILocalVariable(name: "__l", scope: !2202, file: !2203, line: 23, type: !1322)
!2214 = !DILocalVariable(name: "__u", scope: !2202, file: !2203, line: 23, type: !1322)
!2215 = !DILocalVariable(name: "__idx", scope: !2202, file: !2203, line: 23, type: !1322)
!2216 = !DILocalVariable(name: "__p", scope: !2202, file: !2203, line: 24, type: !1307)
!2217 = !DILocalVariable(name: "__comparison", scope: !2202, file: !2203, line: 25, type: !726)
!2218 = !DILocation(line: 0, scope: !2202)
!2219 = !DILocation(line: 29, column: 3, scope: !2202)
!2220 = !DILocation(line: 27, column: 7, scope: !2202)
!2221 = !DILocation(line: 29, column: 14, scope: !2202)
!2222 = !DILocation(line: 31, column: 20, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2202, file: !2203, line: 30, column: 5)
!2224 = !DILocation(line: 31, column: 27, scope: !2223)
!2225 = !DILocation(line: 32, column: 56, scope: !2223)
!2226 = !DILocation(line: 32, column: 47, scope: !2223)
!2227 = !DILocation(line: 33, column: 22, scope: !2223)
!2228 = !DILocation(line: 34, column: 24, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2223, file: !2203, line: 34, column: 11)
!2230 = !DILocation(line: 34, column: 11, scope: !2223)
!2231 = !DILocation(line: 36, column: 29, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !2203, line: 36, column: 16)
!2233 = !DILocation(line: 36, column: 16, scope: !2229)
!2234 = !DILocation(line: 37, column: 14, scope: !2232)
!2235 = distinct !{!2235, !2219, !2236}
!2236 = !DILocation(line: 40, column: 5, scope: !2202)
!2237 = !DILocation(line: 43, column: 1, scope: !2202)
!2238 = distinct !DISubprogram(name: "atof", scope: !2239, file: !2239, line: 25, type: !2240, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2243)
!2239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!2242, !731}
!2242 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2243 = !{!2244}
!2244 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2238, file: !2239, line: 25, type: !731)
!2245 = !DILocation(line: 0, scope: !2238)
!2246 = !DILocation(line: 27, column: 10, scope: !2238)
!2247 = !DILocation(line: 27, column: 3, scope: !2238)
!2248 = distinct !DISubprogram(name: "strtoimax", scope: !2249, file: !2249, line: 324, type: !2250, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2256)
!2249 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!2252, !2010, !2255, !726}
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2253, line: 101, baseType: !2254)
!2253 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2062, line: 72, baseType: !768)
!2255 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !727)
!2256 = !{!2257, !2258, !2259}
!2257 = !DILocalVariable(name: "nptr", arg: 1, scope: !2248, file: !2249, line: 324, type: !2010)
!2258 = !DILocalVariable(name: "endptr", arg: 2, scope: !2248, file: !2249, line: 324, type: !2255)
!2259 = !DILocalVariable(name: "base", arg: 3, scope: !2248, file: !2249, line: 324, type: !726)
!2260 = !DILocation(line: 0, scope: !2248)
!2261 = !DILocation(line: 327, column: 10, scope: !2248)
!2262 = !DILocation(line: 327, column: 3, scope: !2248)
!2263 = distinct !DISubprogram(name: "strtoumax", scope: !2249, file: !2249, line: 336, type: !2264, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2268)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!2266, !2010, !2255, !726}
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2253, line: 102, baseType: !2267)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2062, line: 73, baseType: !751)
!2268 = !{!2269, !2270, !2271}
!2269 = !DILocalVariable(name: "nptr", arg: 1, scope: !2263, file: !2249, line: 336, type: !2010)
!2270 = !DILocalVariable(name: "endptr", arg: 2, scope: !2263, file: !2249, line: 336, type: !2255)
!2271 = !DILocalVariable(name: "base", arg: 3, scope: !2263, file: !2249, line: 336, type: !726)
!2272 = !DILocation(line: 0, scope: !2263)
!2273 = !DILocation(line: 339, column: 10, scope: !2263)
!2274 = !DILocation(line: 339, column: 3, scope: !2263)
!2275 = distinct !DISubprogram(name: "wcstoimax", scope: !2249, file: !2249, line: 348, type: !2276, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2285)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!2252, !2278, !2282, !726}
!2278 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2279)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2281)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2249, line: 34, baseType: !726)
!2282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2283)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2285 = !{!2286, !2287, !2288}
!2286 = !DILocalVariable(name: "nptr", arg: 1, scope: !2275, file: !2249, line: 348, type: !2278)
!2287 = !DILocalVariable(name: "endptr", arg: 2, scope: !2275, file: !2249, line: 348, type: !2282)
!2288 = !DILocalVariable(name: "base", arg: 3, scope: !2275, file: !2249, line: 348, type: !726)
!2289 = !DILocation(line: 0, scope: !2275)
!2290 = !DILocation(line: 351, column: 10, scope: !2275)
!2291 = !DILocation(line: 351, column: 3, scope: !2275)
!2292 = distinct !DISubprogram(name: "wcstoumax", scope: !2249, file: !2249, line: 362, type: !2293, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!2266, !2278, !2282, !726}
!2295 = !{!2296, !2297, !2298}
!2296 = !DILocalVariable(name: "nptr", arg: 1, scope: !2292, file: !2249, line: 362, type: !2278)
!2297 = !DILocalVariable(name: "endptr", arg: 2, scope: !2292, file: !2249, line: 362, type: !2282)
!2298 = !DILocalVariable(name: "base", arg: 3, scope: !2292, file: !2249, line: 362, type: !726)
!2299 = !DILocation(line: 0, scope: !2292)
!2300 = !DILocation(line: 365, column: 10, scope: !2292)
!2301 = !DILocation(line: 365, column: 3, scope: !2292)
!2302 = distinct !DISubprogram(name: "stat", scope: !2303, file: !2303, line: 453, type: !2304, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2341)
!2303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!726, !731, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2308, line: 46, size: 1152, elements: !2309)
!2308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2309 = !{!2310, !2312, !2314, !2316, !2318, !2320, !2322, !2323, !2324, !2325, !2327, !2329, !2337, !2338, !2339}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2307, file: !2308, line: 48, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2062, line: 145, baseType: !751)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2307, file: !2308, line: 53, baseType: !2313, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2062, line: 148, baseType: !751)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2307, file: !2308, line: 61, baseType: !2315, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2062, line: 151, baseType: !751)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2307, file: !2308, line: 62, baseType: !2317, size: 32, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2062, line: 150, baseType: !7)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2307, file: !2308, line: 64, baseType: !2319, size: 32, offset: 224)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2062, line: 146, baseType: !7)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2307, file: !2308, line: 65, baseType: !2321, size: 32, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2062, line: 147, baseType: !7)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2307, file: !2308, line: 67, baseType: !726, size: 32, offset: 288)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2307, file: !2308, line: 69, baseType: !2311, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2307, file: !2308, line: 74, baseType: !2061, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2307, file: !2308, line: 78, baseType: !2326, size: 64, offset: 448)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2062, line: 174, baseType: !768)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2307, file: !2308, line: 80, baseType: !2328, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2062, line: 179, baseType: !768)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2307, file: !2308, line: 91, baseType: !2330, size: 128, offset: 576)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2331, line: 10, size: 128, elements: !2332)
!2331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2332 = !{!2333, !2335}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2330, file: !2331, line: 12, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2062, line: 160, baseType: !768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2330, file: !2331, line: 16, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2062, line: 196, baseType: !768)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2307, file: !2308, line: 92, baseType: !2330, size: 128, offset: 704)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2307, file: !2308, line: 93, baseType: !2330, size: 128, offset: 832)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2307, file: !2308, line: 106, baseType: !2340, size: 192, offset: 960)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2336, size: 192, elements: !944)
!2341 = !{!2342, !2343}
!2342 = !DILocalVariable(name: "__path", arg: 1, scope: !2302, file: !2303, line: 453, type: !731)
!2343 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2302, file: !2303, line: 453, type: !2306)
!2344 = !DILocation(line: 0, scope: !2302)
!2345 = !DILocation(line: 455, column: 10, scope: !2302)
!2346 = !DILocation(line: 455, column: 3, scope: !2302)
!2347 = distinct !DISubprogram(name: "lstat", scope: !2303, file: !2303, line: 460, type: !2304, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2348)
!2348 = !{!2349, !2350}
!2349 = !DILocalVariable(name: "__path", arg: 1, scope: !2347, file: !2303, line: 460, type: !731)
!2350 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2347, file: !2303, line: 460, type: !2306)
!2351 = !DILocation(line: 0, scope: !2347)
!2352 = !DILocation(line: 462, column: 10, scope: !2347)
!2353 = !DILocation(line: 462, column: 3, scope: !2347)
!2354 = distinct !DISubprogram(name: "fstat", scope: !2303, file: !2303, line: 467, type: !2355, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!726, !726, !2306}
!2357 = !{!2358, !2359}
!2358 = !DILocalVariable(name: "__fd", arg: 1, scope: !2354, file: !2303, line: 467, type: !726)
!2359 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2354, file: !2303, line: 467, type: !2306)
!2360 = !DILocation(line: 0, scope: !2354)
!2361 = !DILocation(line: 469, column: 10, scope: !2354)
!2362 = !DILocation(line: 469, column: 3, scope: !2354)
!2363 = distinct !DISubprogram(name: "fstatat", scope: !2303, file: !2303, line: 474, type: !2364, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!726, !726, !731, !2306, !726}
!2366 = !{!2367, !2368, !2369, !2370}
!2367 = !DILocalVariable(name: "__fd", arg: 1, scope: !2363, file: !2303, line: 474, type: !726)
!2368 = !DILocalVariable(name: "__filename", arg: 2, scope: !2363, file: !2303, line: 474, type: !731)
!2369 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2363, file: !2303, line: 474, type: !2306)
!2370 = !DILocalVariable(name: "__flag", arg: 4, scope: !2363, file: !2303, line: 474, type: !726)
!2371 = !DILocation(line: 0, scope: !2363)
!2372 = !DILocation(line: 477, column: 10, scope: !2363)
!2373 = !DILocation(line: 477, column: 3, scope: !2363)
!2374 = distinct !DISubprogram(name: "mknod", scope: !2303, file: !2303, line: 483, type: !2375, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!726, !731, !2317, !2311}
!2377 = !{!2378, !2379, !2380}
!2378 = !DILocalVariable(name: "__path", arg: 1, scope: !2374, file: !2303, line: 483, type: !731)
!2379 = !DILocalVariable(name: "__mode", arg: 2, scope: !2374, file: !2303, line: 483, type: !2317)
!2380 = !DILocalVariable(name: "__dev", arg: 3, scope: !2374, file: !2303, line: 483, type: !2311)
!2381 = !DILocation(line: 0, scope: !2374)
!2382 = !DILocation(line: 485, column: 10, scope: !2374)
!2383 = !DILocation(line: 485, column: 3, scope: !2374)
!2384 = distinct !DISubprogram(name: "mknodat", scope: !2303, file: !2303, line: 491, type: !2385, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!726, !726, !731, !2317, !2311}
!2387 = !{!2388, !2389, !2390, !2391}
!2388 = !DILocalVariable(name: "__fd", arg: 1, scope: !2384, file: !2303, line: 491, type: !726)
!2389 = !DILocalVariable(name: "__path", arg: 2, scope: !2384, file: !2303, line: 491, type: !731)
!2390 = !DILocalVariable(name: "__mode", arg: 3, scope: !2384, file: !2303, line: 491, type: !2317)
!2391 = !DILocalVariable(name: "__dev", arg: 4, scope: !2384, file: !2303, line: 491, type: !2311)
!2392 = !DILocation(line: 0, scope: !2384)
!2393 = !DILocation(line: 494, column: 10, scope: !2384)
!2394 = !DILocation(line: 494, column: 3, scope: !2384)
!2395 = distinct !DISubprogram(name: "stat64", scope: !2303, file: !2303, line: 502, type: !2396, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2418)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!726, !731, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2308, line: 119, size: 1152, elements: !2400)
!2400 = !{!2401, !2402, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2414, !2415, !2416, !2417}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2399, file: !2308, line: 121, baseType: !2311, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2399, file: !2308, line: 123, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2062, line: 149, baseType: !751)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2399, file: !2308, line: 124, baseType: !2315, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2399, file: !2308, line: 125, baseType: !2317, size: 32, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2399, file: !2308, line: 132, baseType: !2319, size: 32, offset: 224)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2399, file: !2308, line: 133, baseType: !2321, size: 32, offset: 256)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2399, file: !2308, line: 135, baseType: !726, size: 32, offset: 288)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2399, file: !2308, line: 136, baseType: !2311, size: 64, offset: 320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2399, file: !2308, line: 137, baseType: !2061, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2399, file: !2308, line: 143, baseType: !2326, size: 64, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2399, file: !2308, line: 144, baseType: !2413, size: 64, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2062, line: 180, baseType: !768)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2399, file: !2308, line: 152, baseType: !2330, size: 128, offset: 576)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2399, file: !2308, line: 153, baseType: !2330, size: 128, offset: 704)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2399, file: !2308, line: 154, baseType: !2330, size: 128, offset: 832)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2399, file: !2308, line: 164, baseType: !2340, size: 192, offset: 960)
!2418 = !{!2419, !2420}
!2419 = !DILocalVariable(name: "__path", arg: 1, scope: !2395, file: !2303, line: 502, type: !731)
!2420 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2395, file: !2303, line: 502, type: !2398)
!2421 = !DILocation(line: 0, scope: !2395)
!2422 = !DILocation(line: 504, column: 10, scope: !2395)
!2423 = !DILocation(line: 504, column: 3, scope: !2395)
!2424 = distinct !DISubprogram(name: "lstat64", scope: !2303, file: !2303, line: 509, type: !2396, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2425)
!2425 = !{!2426, !2427}
!2426 = !DILocalVariable(name: "__path", arg: 1, scope: !2424, file: !2303, line: 509, type: !731)
!2427 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2424, file: !2303, line: 509, type: !2398)
!2428 = !DILocation(line: 0, scope: !2424)
!2429 = !DILocation(line: 511, column: 10, scope: !2424)
!2430 = !DILocation(line: 511, column: 3, scope: !2424)
!2431 = distinct !DISubprogram(name: "fstat64", scope: !2303, file: !2303, line: 516, type: !2432, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!726, !726, !2398}
!2434 = !{!2435, !2436}
!2435 = !DILocalVariable(name: "__fd", arg: 1, scope: !2431, file: !2303, line: 516, type: !726)
!2436 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2431, file: !2303, line: 516, type: !2398)
!2437 = !DILocation(line: 0, scope: !2431)
!2438 = !DILocation(line: 518, column: 10, scope: !2431)
!2439 = !DILocation(line: 518, column: 3, scope: !2431)
!2440 = distinct !DISubprogram(name: "fstatat64", scope: !2303, file: !2303, line: 523, type: !2441, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!726, !726, !731, !2398, !726}
!2443 = !{!2444, !2445, !2446, !2447}
!2444 = !DILocalVariable(name: "__fd", arg: 1, scope: !2440, file: !2303, line: 523, type: !726)
!2445 = !DILocalVariable(name: "__filename", arg: 2, scope: !2440, file: !2303, line: 523, type: !731)
!2446 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2440, file: !2303, line: 523, type: !2398)
!2447 = !DILocalVariable(name: "__flag", arg: 4, scope: !2440, file: !2303, line: 523, type: !726)
!2448 = !DILocation(line: 0, scope: !2440)
!2449 = !DILocation(line: 526, column: 10, scope: !2440)
!2450 = !DILocation(line: 526, column: 3, scope: !2440)
!2451 = distinct !DISubprogram(name: "gate_fwprop", scope: !3, file: !3, line: 1413, type: !1973, scopeLine: 1414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2452 = !DILocation(line: 1415, column: 10, scope: !2451)
!2453 = !DILocation(line: 1415, column: 19, scope: !2451)
!2454 = !DILocation(line: 1415, column: 23, scope: !2451)
!2455 = !DILocation(line: 1415, column: 3, scope: !2451)
!2456 = distinct !DISubprogram(name: "fwprop", scope: !3, file: !3, line: 1419, type: !1977, scopeLine: 1420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2457)
!2457 = !{!2458, !2459}
!2458 = !DILocalVariable(name: "i", scope: !2456, file: !3, line: 1421, type: !7)
!2459 = !DILocalVariable(name: "use", scope: !2460, file: !3, line: 1433, type: !808)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1432, column: 5)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 1431, column: 3)
!2462 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 1431, column: 3)
!2463 = !DILocation(line: 1423, column: 3, scope: !2456)
!2464 = !DILocation(line: 0, scope: !2456)
!2465 = !DILocation(line: 1431, column: 8, scope: !2462)
!2466 = !DILocation(line: 0, scope: !2462)
!2467 = !DILocation(line: 1431, column: 19, scope: !2461)
!2468 = !DILocation(line: 1431, column: 17, scope: !2461)
!2469 = !DILocation(line: 1431, column: 3, scope: !2462)
!2470 = !DILocation(line: 1433, column: 20, scope: !2460)
!2471 = !DILocation(line: 0, scope: !2460)
!2472 = !DILocation(line: 1434, column: 11, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 1434, column: 11)
!2474 = !DILocation(line: 1434, column: 11, scope: !2460)
!2475 = !DILocation(line: 1435, column: 6, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1435, column: 6)
!2477 = !DILocation(line: 1435, column: 24, scope: !2476)
!2478 = !DILocation(line: 1436, column: 6, scope: !2476)
!2479 = !DILocation(line: 1436, column: 9, scope: !2476)
!2480 = !DILocation(line: 1436, column: 26, scope: !2476)
!2481 = !DILocation(line: 1436, column: 38, scope: !2476)
!2482 = !DILocation(line: 1438, column: 6, scope: !2476)
!2483 = !DILocation(line: 1438, column: 21, scope: !2476)
!2484 = !DILocation(line: 1438, column: 38, scope: !2476)
!2485 = !DILocation(line: 1438, column: 9, scope: !2476)
!2486 = !DILocation(line: 1438, column: 51, scope: !2476)
!2487 = !DILocation(line: 1435, column: 6, scope: !2473)
!2488 = !DILocation(line: 1439, column: 4, scope: !2476)
!2489 = !DILocation(line: 1431, column: 43, scope: !2461)
!2490 = !DILocation(line: 1431, column: 3, scope: !2461)
!2491 = distinct !{!2491, !2469, !2492}
!2492 = !DILocation(line: 1440, column: 5, scope: !2462)
!2493 = !DILocation(line: 1442, column: 3, scope: !2456)
!2494 = !DILocation(line: 1443, column: 3, scope: !2456)
!2495 = distinct !DISubprogram(name: "fwprop_addr", scope: !3, file: !3, line: 1467, type: !1977, scopeLine: 1468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2496)
!2496 = !{!2497, !2498}
!2497 = !DILocalVariable(name: "i", scope: !2495, file: !3, line: 1469, type: !7)
!2498 = !DILocalVariable(name: "use", scope: !2499, file: !3, line: 1476, type: !808)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1475, column: 5)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 1474, column: 3)
!2501 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1474, column: 3)
!2502 = !DILocation(line: 1470, column: 3, scope: !2495)
!2503 = !DILocation(line: 0, scope: !2495)
!2504 = !DILocation(line: 1474, column: 8, scope: !2501)
!2505 = !DILocation(line: 0, scope: !2501)
!2506 = !DILocation(line: 1474, column: 19, scope: !2500)
!2507 = !DILocation(line: 1474, column: 17, scope: !2500)
!2508 = !DILocation(line: 1474, column: 3, scope: !2501)
!2509 = !DILocation(line: 1476, column: 20, scope: !2499)
!2510 = !DILocation(line: 0, scope: !2499)
!2511 = !DILocation(line: 1477, column: 11, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 1477, column: 11)
!2513 = !DILocation(line: 1477, column: 11, scope: !2499)
!2514 = !DILocation(line: 1478, column: 6, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 1478, column: 6)
!2516 = !DILocation(line: 1478, column: 24, scope: !2515)
!2517 = !DILocation(line: 1479, column: 6, scope: !2515)
!2518 = !DILocation(line: 1479, column: 9, scope: !2515)
!2519 = !DILocation(line: 1479, column: 26, scope: !2515)
!2520 = !DILocation(line: 1479, column: 38, scope: !2515)
!2521 = !DILocation(line: 1481, column: 6, scope: !2515)
!2522 = !DILocation(line: 1481, column: 21, scope: !2515)
!2523 = !DILocation(line: 1481, column: 38, scope: !2515)
!2524 = !DILocation(line: 1481, column: 9, scope: !2515)
!2525 = !DILocation(line: 1481, column: 51, scope: !2515)
!2526 = !DILocation(line: 1478, column: 6, scope: !2512)
!2527 = !DILocation(line: 1482, column: 4, scope: !2515)
!2528 = !DILocation(line: 1474, column: 43, scope: !2500)
!2529 = !DILocation(line: 1474, column: 3, scope: !2500)
!2530 = distinct !{!2530, !2508, !2531}
!2531 = !DILocation(line: 1483, column: 5, scope: !2501)
!2532 = !DILocation(line: 1485, column: 3, scope: !2495)
!2533 = !DILocation(line: 1487, column: 3, scope: !2495)
!2534 = distinct !DISubprogram(name: "fwprop_init", scope: !3, file: !3, line: 1378, type: !2535, scopeLine: 1379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null}
!2537 = !DILocation(line: 1380, column: 15, scope: !2534)
!2538 = !DILocation(line: 1381, column: 3, scope: !2534)
!2539 = !DILocation(line: 1387, column: 3, scope: !2534)
!2540 = !DILocation(line: 1389, column: 3, scope: !2534)
!2541 = !DILocation(line: 1390, column: 3, scope: !2534)
!2542 = !DILocation(line: 1391, column: 1, scope: !2534)
!2543 = distinct !DISubprogram(name: "loop_outer", scope: !318, file: !318, line: 434, type: !2544, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2548)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!1172, !2546}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!2548 = !{!2549, !2550}
!2549 = !DILocalVariable(name: "loop", arg: 1, scope: !2543, file: !318, line: 434, type: !2546)
!2550 = !DILocalVariable(name: "n", scope: !2543, file: !318, line: 436, type: !7)
!2551 = !DILocation(line: 0, scope: !2543)
!2552 = !DILocation(line: 436, column: 16, scope: !2543)
!2553 = !DILocation(line: 438, column: 9, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2543, file: !318, line: 438, column: 7)
!2555 = !DILocation(line: 438, column: 7, scope: !2543)
!2556 = !DILocation(line: 441, column: 10, scope: !2543)
!2557 = !DILocation(line: 441, column: 3, scope: !2543)
!2558 = !DILocation(line: 442, column: 1, scope: !2543)
!2559 = distinct !DISubprogram(name: "forward_propagate_into", scope: !3, file: !3, line: 1329, type: !2560, scopeLine: 1330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{null, !808}
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568}
!2563 = !DILocalVariable(name: "use", arg: 1, scope: !2559, file: !3, line: 1329, type: !808)
!2564 = !DILocalVariable(name: "def", scope: !2559, file: !3, line: 1331, type: !808)
!2565 = !DILocalVariable(name: "def_insn", scope: !2559, file: !3, line: 1332, type: !819)
!2566 = !DILocalVariable(name: "def_set", scope: !2559, file: !3, line: 1332, type: !819)
!2567 = !DILocalVariable(name: "use_insn", scope: !2559, file: !3, line: 1332, type: !819)
!2568 = !DILocalVariable(name: "parent", scope: !2559, file: !3, line: 1333, type: !819)
!2569 = !DILocation(line: 0, scope: !2559)
!2570 = !DILocation(line: 1335, column: 7, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1335, column: 7)
!2572 = !DILocation(line: 1335, column: 26, scope: !2571)
!2573 = !DILocation(line: 1335, column: 7, scope: !2559)
!2574 = !DILocation(line: 1337, column: 7, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1337, column: 7)
!2576 = !DILocation(line: 1337, column: 7, scope: !2559)
!2577 = !DILocation(line: 1341, column: 9, scope: !2559)
!2578 = !DILocation(line: 1342, column: 8, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1342, column: 7)
!2580 = !DILocation(line: 1342, column: 7, scope: !2559)
!2581 = !DILocation(line: 1344, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1344, column: 7)
!2583 = !DILocation(line: 1344, column: 26, scope: !2582)
!2584 = !DILocation(line: 1344, column: 7, scope: !2559)
!2585 = !DILocation(line: 1346, column: 7, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1346, column: 7)
!2587 = !DILocation(line: 1346, column: 7, scope: !2559)
!2588 = !DILocation(line: 1350, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1350, column: 7)
!2590 = !DILocation(line: 1350, column: 24, scope: !2589)
!2591 = !DILocation(line: 1350, column: 39, scope: !2589)
!2592 = !DILocation(line: 1350, column: 56, scope: !2589)
!2593 = !DILocation(line: 1350, column: 36, scope: !2589)
!2594 = !DILocation(line: 1350, column: 7, scope: !2559)
!2595 = !DILocation(line: 1354, column: 14, scope: !2559)
!2596 = !DILocation(line: 1355, column: 26, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1355, column: 7)
!2598 = !DILocation(line: 1355, column: 7, scope: !2559)
!2599 = !DILocation(line: 1356, column: 14, scope: !2597)
!2600 = !DILocation(line: 1356, column: 5, scope: !2597)
!2601 = !DILocation(line: 1358, column: 14, scope: !2597)
!2602 = !DILocation(line: 0, scope: !2597)
!2603 = !DILocation(line: 1360, column: 25, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1360, column: 7)
!2605 = !DILocation(line: 1360, column: 8, scope: !2604)
!2606 = !DILocation(line: 1360, column: 7, scope: !2559)
!2607 = !DILocation(line: 1363, column: 14, scope: !2559)
!2608 = !DILocation(line: 1364, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1364, column: 7)
!2610 = !DILocation(line: 1364, column: 7, scope: !2559)
!2611 = !DILocation(line: 1366, column: 13, scope: !2559)
!2612 = !DILocation(line: 1367, column: 8, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1367, column: 7)
!2614 = !DILocation(line: 1367, column: 7, scope: !2559)
!2615 = !DILocation(line: 1372, column: 8, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1372, column: 7)
!2617 = !DILocation(line: 1372, column: 7, scope: !2559)
!2618 = !DILocation(line: 1373, column: 5, scope: !2616)
!2619 = !DILocation(line: 1374, column: 1, scope: !2559)
!2620 = distinct !DISubprogram(name: "fwprop_done", scope: !3, file: !3, line: 1394, type: !2535, scopeLine: 1395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2621 = !DILocation(line: 1396, column: 3, scope: !2620)
!2622 = !DILocation(line: 1398, column: 3, scope: !2620)
!2623 = !DILocation(line: 1399, column: 3, scope: !2620)
!2624 = !DILocation(line: 1400, column: 3, scope: !2620)
!2625 = !DILocation(line: 1401, column: 32, scope: !2620)
!2626 = !DILocation(line: 1401, column: 46, scope: !2620)
!2627 = !DILocation(line: 1401, column: 3, scope: !2620)
!2628 = !DILocation(line: 1403, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 1403, column: 7)
!2630 = !DILocation(line: 1403, column: 7, scope: !2620)
!2631 = !DILocation(line: 1406, column: 7, scope: !2629)
!2632 = !DILocation(line: 1404, column: 5, scope: !2629)
!2633 = !DILocation(line: 1407, column: 1, scope: !2620)
!2634 = distinct !DISubprogram(name: "build_single_def_use_links", scope: !3, file: !3, line: 272, type: !2535, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2635)
!2635 = !{!2636}
!2636 = !DILocalVariable(name: "walk_data", scope: !2634, file: !3, line: 274, type: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dom_walk_data", file: !2638, line: 29, size: 512, elements: !2639)
!2638 = !DIFile(filename: "./domwalk.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2639 = !{!2640, !2641, !2646, !2650, !2651, !2652, !2666, !2667}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dom_direction", scope: !2637, file: !2638, line: 35, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "initialize_block_local_data", scope: !2637, file: !2638, line: 46, baseType: !2642, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !2645, !1130, !725}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "before_dom_children", scope: !2637, file: !2638, line: 50, baseType: !2647, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !2645, !1130}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "after_dom_children", scope: !2637, file: !2638, line: 53, baseType: !2647, size: 64, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "global_data", scope: !2637, file: !2638, line: 56, baseType: !730, size: 64, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "block_data_stack", scope: !2637, file: !2638, line: 61, baseType: !2653, size: 64, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_heap", file: !2638, line: 23, baseType: !2655)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_heap", file: !2638, line: 23, size: 128, elements: !2656)
!2656 = !{!2657}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2655, file: !2638, line: 23, baseType: !2658, size: 128)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_base", file: !2638, line: 22, baseType: !2659)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_base", file: !2638, line: 22, size: 128, elements: !2660)
!2660 = !{!2661, !2662, !2663}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2659, file: !2638, line: 22, baseType: !7, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2659, file: !2638, line: 22, baseType: !7, size: 32, offset: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2659, file: !2638, line: 22, baseType: !2664, size: 64, offset: 64)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2665, size: 64, elements: !853)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "void_p", file: !2638, line: 21, baseType: !730)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "block_local_data_size", scope: !2637, file: !2638, line: 65, baseType: !1322, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "free_block_data", scope: !2637, file: !2638, line: 71, baseType: !2653, size: 64, offset: 448)
!2668 = !DILocation(line: 274, column: 3, scope: !2634)
!2669 = !DILocation(line: 278, column: 3, scope: !2634)
!2670 = !DILocation(line: 279, column: 3, scope: !2634)
!2671 = !DILocation(line: 280, column: 3, scope: !2634)
!2672 = !DILocation(line: 281, column: 3, scope: !2634)
!2673 = !DILocation(line: 282, column: 3, scope: !2634)
!2674 = !DILocation(line: 284, column: 17, scope: !2634)
!2675 = !DILocation(line: 284, column: 15, scope: !2634)
!2676 = !DILocation(line: 285, column: 3, scope: !2634)
!2677 = !DILocation(line: 287, column: 14, scope: !2634)
!2678 = !DILocation(line: 287, column: 12, scope: !2634)
!2679 = !DILocation(line: 288, column: 3, scope: !2634)
!2680 = !DILocation(line: 290, column: 20, scope: !2634)
!2681 = !DILocation(line: 290, column: 18, scope: !2634)
!2682 = !DILocation(line: 291, column: 14, scope: !2634)
!2683 = !DILocation(line: 291, column: 12, scope: !2634)
!2684 = !DILocation(line: 292, column: 14, scope: !2634)
!2685 = !DILocation(line: 292, column: 12, scope: !2634)
!2686 = !DILocation(line: 296, column: 27, scope: !2634)
!2687 = !DILocation(line: 297, column: 13, scope: !2634)
!2688 = !DILocation(line: 297, column: 41, scope: !2634)
!2689 = !DILocation(line: 298, column: 13, scope: !2634)
!2690 = !DILocation(line: 298, column: 33, scope: !2634)
!2691 = !DILocation(line: 299, column: 13, scope: !2634)
!2692 = !DILocation(line: 299, column: 32, scope: !2634)
!2693 = !DILocation(line: 0, scope: !2634)
!2694 = !DILocation(line: 301, column: 3, scope: !2634)
!2695 = !DILocation(line: 302, column: 36, scope: !2634)
!2696 = !DILocation(line: 302, column: 3, scope: !2634)
!2697 = !DILocation(line: 303, column: 3, scope: !2634)
!2698 = !DILocation(line: 305, column: 3, scope: !2634)
!2699 = !DILocation(line: 306, column: 3, scope: !2634)
!2700 = !DILocation(line: 307, column: 3, scope: !2634)
!2701 = !DILocation(line: 308, column: 3, scope: !2634)
!2702 = !DILocation(line: 309, column: 1, scope: !2634)
!2703 = distinct !DISubprogram(name: "VEC_df_ref_heap_alloc", scope: !3, file: !3, line: 121, type: !2704, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!796, !726}
!2706 = !{!2707}
!2707 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2703, file: !3, line: 121, type: !726)
!2708 = !DILocation(line: 0, scope: !2703)
!2709 = !DILocation(line: 121, column: 1, scope: !2703)
!2710 = distinct !DISubprogram(name: "VEC_df_ref_heap_safe_grow_cleared", scope: !3, file: !3, line: 121, type: !2711, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2714)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !2713, !726}
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!2714 = !{!2715, !2716, !2717}
!2715 = !DILocalVariable(name: "vec_", arg: 1, scope: !2710, file: !3, line: 121, type: !2713)
!2716 = !DILocalVariable(name: "size_", arg: 2, scope: !2710, file: !3, line: 121, type: !726)
!2717 = !DILocalVariable(name: "oldsize", scope: !2710, file: !3, line: 121, type: !726)
!2718 = !DILocation(line: 0, scope: !2710)
!2719 = !DILocation(line: 121, column: 1, scope: !2710)
!2720 = distinct !DISubprogram(name: "single_def_use_enter_block", scope: !3, file: !3, line: 215, type: !2648, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2721 = !{!2722, !2723, !2724, !2725, !2726, !2727, !2728}
!2722 = !DILocalVariable(name: "walk_data", arg: 1, scope: !2720, file: !3, line: 215, type: !2645)
!2723 = !DILocalVariable(name: "bb", arg: 2, scope: !2720, file: !3, line: 216, type: !1130)
!2724 = !DILocalVariable(name: "bb_index", scope: !2720, file: !3, line: 218, type: !726)
!2725 = !DILocalVariable(name: "md_bb_info", scope: !2720, file: !3, line: 219, type: !1935)
!2726 = !DILocalVariable(name: "lr_bb_info", scope: !2720, file: !3, line: 220, type: !1943)
!2727 = !DILocalVariable(name: "insn", scope: !2720, file: !3, line: 221, type: !819)
!2728 = !DILocalVariable(name: "uid", scope: !2729, file: !3, line: 236, type: !7)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 235, column: 7)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 234, column: 9)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 233, column: 3)
!2732 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 233, column: 3)
!2733 = !DILocation(line: 0, scope: !2720)
!2734 = !DILocation(line: 218, column: 22, scope: !2720)
!2735 = !DILocation(line: 219, column: 38, scope: !2720)
!2736 = !DILocation(line: 220, column: 38, scope: !2720)
!2737 = !DILocation(line: 223, column: 16, scope: !2720)
!2738 = !DILocation(line: 223, column: 38, scope: !2720)
!2739 = !DILocation(line: 223, column: 3, scope: !2720)
!2740 = !DILocation(line: 224, column: 16, scope: !2720)
!2741 = !DILocation(line: 224, column: 38, scope: !2720)
!2742 = !DILocation(line: 224, column: 3, scope: !2720)
!2743 = !DILocation(line: 227, column: 3, scope: !2720)
!2744 = !DILocation(line: 229, column: 17, scope: !2720)
!2745 = !DILocation(line: 229, column: 3, scope: !2720)
!2746 = !DILocation(line: 230, column: 17, scope: !2720)
!2747 = !DILocation(line: 230, column: 3, scope: !2720)
!2748 = !DILocation(line: 231, column: 40, scope: !2720)
!2749 = !DILocation(line: 231, column: 3, scope: !2720)
!2750 = !DILocation(line: 233, column: 3, scope: !2732)
!2751 = !DILocation(line: 0, scope: !2732)
!2752 = !DILocation(line: 233, column: 3, scope: !2731)
!2753 = !DILocation(line: 234, column: 9, scope: !2730)
!2754 = !DILocation(line: 234, column: 9, scope: !2731)
!2755 = !DILocation(line: 236, column: 28, scope: !2729)
!2756 = !DILocation(line: 0, scope: !2729)
!2757 = !DILocation(line: 237, column: 23, scope: !2729)
!2758 = !DILocation(line: 237, column: 9, scope: !2729)
!2759 = !DILocation(line: 238, column: 23, scope: !2729)
!2760 = !DILocation(line: 238, column: 9, scope: !2729)
!2761 = !DILocation(line: 239, column: 23, scope: !2729)
!2762 = !DILocation(line: 239, column: 9, scope: !2729)
!2763 = !DILocation(line: 240, column: 43, scope: !2729)
!2764 = !DILocation(line: 240, column: 2, scope: !2729)
!2765 = !DILocation(line: 241, column: 7, scope: !2729)
!2766 = distinct !{!2766, !2750, !2767}
!2767 = !DILocation(line: 241, column: 7, scope: !2732)
!2768 = !DILocation(line: 243, column: 17, scope: !2720)
!2769 = !DILocation(line: 243, column: 3, scope: !2720)
!2770 = !DILocation(line: 244, column: 17, scope: !2720)
!2771 = !DILocation(line: 244, column: 3, scope: !2720)
!2772 = !DILocation(line: 245, column: 1, scope: !2720)
!2773 = distinct !DISubprogram(name: "single_def_use_leave_block", scope: !3, file: !3, line: 251, type: !2648, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2774)
!2774 = !{!2775, !2776, !2777, !2778}
!2775 = !DILocalVariable(name: "walk_data", arg: 1, scope: !2773, file: !3, line: 251, type: !2645)
!2776 = !DILocalVariable(name: "bb", arg: 2, scope: !2773, file: !3, line: 252, type: !1130)
!2777 = !DILocalVariable(name: "saved_def", scope: !2773, file: !3, line: 254, type: !808)
!2778 = !DILocalVariable(name: "dregno", scope: !2779, file: !3, line: 257, type: !7)
!2779 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 256, column: 5)
!2780 = !DILocation(line: 0, scope: !2773)
!2781 = !DILocation(line: 255, column: 3, scope: !2773)
!2782 = !DILocation(line: 255, column: 23, scope: !2773)
!2783 = !DILocation(line: 255, column: 57, scope: !2773)
!2784 = !DILocation(line: 257, column: 29, scope: !2779)
!2785 = !DILocation(line: 0, scope: !2779)
!2786 = !DILocation(line: 260, column: 24, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 260, column: 11)
!2788 = !DILocation(line: 260, column: 21, scope: !2787)
!2789 = !DILocation(line: 0, scope: !2787)
!2790 = !DILocation(line: 260, column: 11, scope: !2779)
!2791 = !DILocation(line: 261, column: 2, scope: !2787)
!2792 = !DILocation(line: 263, column: 2, scope: !2787)
!2793 = distinct !{!2793, !2781, !2794}
!2794 = !DILocation(line: 264, column: 5, scope: !2773)
!2795 = !DILocation(line: 265, column: 1, scope: !2773)
!2796 = distinct !DISubprogram(name: "VEC_df_ref_heap_free", scope: !3, file: !3, line: 121, type: !2797, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !2713}
!2799 = !{!2800}
!2800 = !DILocalVariable(name: "vec_", arg: 1, scope: !2796, file: !3, line: 121, type: !2713)
!2801 = !DILocation(line: 0, scope: !2796)
!2802 = !DILocation(line: 121, column: 1, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 121, column: 1)
!2804 = !DILocation(line: 121, column: 1, scope: !2796)
!2805 = distinct !DISubprogram(name: "VEC_df_ref_base_length", scope: !3, file: !3, line: 120, type: !2806, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2810)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!7, !2808}
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!2810 = !{!2811}
!2811 = !DILocalVariable(name: "vec_", arg: 1, scope: !2805, file: !3, line: 120, type: !2808)
!2812 = !DILocation(line: 0, scope: !2805)
!2813 = !DILocation(line: 120, column: 1, scope: !2805)
!2814 = distinct !DISubprogram(name: "VEC_df_ref_heap_safe_grow", scope: !3, file: !3, line: 121, type: !2711, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2815)
!2815 = !{!2816, !2817}
!2816 = !DILocalVariable(name: "vec_", arg: 1, scope: !2814, file: !3, line: 121, type: !2713)
!2817 = !DILocalVariable(name: "size_", arg: 2, scope: !2814, file: !3, line: 121, type: !726)
!2818 = !DILocation(line: 0, scope: !2814)
!2819 = !DILocation(line: 121, column: 1, scope: !2814)
!2820 = distinct !DISubprogram(name: "VEC_df_ref_base_address", scope: !3, file: !3, line: 120, type: !2821, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2824)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!1897, !2823}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!2824 = !{!2825}
!2825 = !DILocalVariable(name: "vec_", arg: 1, scope: !2820, file: !3, line: 120, type: !2823)
!2826 = !DILocation(line: 0, scope: !2820)
!2827 = !DILocation(line: 120, column: 1, scope: !2820)
!2828 = distinct !DISubprogram(name: "VEC_df_ref_heap_reserve_exact", scope: !3, file: !3, line: 121, type: !2829, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!726, !2713, !726}
!2831 = !{!2832, !2833, !2834}
!2832 = !DILocalVariable(name: "vec_", arg: 1, scope: !2828, file: !3, line: 121, type: !2713)
!2833 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2828, file: !3, line: 121, type: !726)
!2834 = !DILocalVariable(name: "extend", scope: !2828, file: !3, line: 121, type: !726)
!2835 = !DILocation(line: 0, scope: !2828)
!2836 = !DILocation(line: 121, column: 1, scope: !2828)
!2837 = !DILocation(line: 121, column: 1, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 121, column: 1)
!2839 = distinct !DISubprogram(name: "VEC_df_ref_base_space", scope: !3, file: !3, line: 120, type: !2840, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!726, !2823, !726}
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "vec_", arg: 1, scope: !2839, file: !3, line: 120, type: !2823)
!2844 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2839, file: !3, line: 120, type: !726)
!2845 = !DILocation(line: 0, scope: !2839)
!2846 = !DILocation(line: 120, column: 1, scope: !2839)
!2847 = distinct !DISubprogram(name: "df_md_get_bb_info", scope: !717, file: !717, line: 1061, type: !2848, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!1935, !7}
!2850 = !{!2851}
!2851 = !DILocalVariable(name: "index", arg: 1, scope: !2847, file: !717, line: 1061, type: !7)
!2852 = !DILocation(line: 0, scope: !2847)
!2853 = !DILocation(line: 1063, column: 15, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2847, file: !717, line: 1063, column: 7)
!2855 = !DILocation(line: 1063, column: 22, scope: !2854)
!2856 = !DILocation(line: 1063, column: 13, scope: !2854)
!2857 = !DILocation(line: 1063, column: 7, scope: !2847)
!2858 = !DILocation(line: 1064, column: 44, scope: !2854)
!2859 = !DILocation(line: 1064, column: 37, scope: !2854)
!2860 = !DILocation(line: 1064, column: 5, scope: !2854)
!2861 = !DILocation(line: 0, scope: !2854)
!2862 = !DILocation(line: 1067, column: 1, scope: !2847)
!2863 = distinct !DISubprogram(name: "df_lr_get_bb_info", scope: !717, file: !717, line: 1052, type: !2864, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!1943, !7}
!2866 = !{!2867}
!2867 = !DILocalVariable(name: "index", arg: 1, scope: !2863, file: !717, line: 1052, type: !7)
!2868 = !DILocation(line: 0, scope: !2863)
!2869 = !DILocation(line: 1054, column: 15, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2863, file: !717, line: 1054, column: 7)
!2871 = !DILocation(line: 1054, column: 22, scope: !2870)
!2872 = !DILocation(line: 1054, column: 13, scope: !2870)
!2873 = !DILocation(line: 1054, column: 7, scope: !2863)
!2874 = !DILocation(line: 1055, column: 44, scope: !2870)
!2875 = !DILocation(line: 1055, column: 37, scope: !2870)
!2876 = !DILocation(line: 1055, column: 5, scope: !2870)
!2877 = !DILocation(line: 0, scope: !2870)
!2878 = !DILocation(line: 1058, column: 1, scope: !2863)
!2879 = distinct !DISubprogram(name: "VEC_df_ref_heap_safe_push", scope: !3, file: !3, line: 121, type: !2880, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!1897, !2713, !808}
!2882 = !{!2883, !2884}
!2883 = !DILocalVariable(name: "vec_", arg: 1, scope: !2879, file: !3, line: 121, type: !2713)
!2884 = !DILocalVariable(name: "obj_", arg: 2, scope: !2879, file: !3, line: 121, type: !808)
!2885 = !DILocation(line: 0, scope: !2879)
!2886 = !DILocation(line: 121, column: 1, scope: !2879)
!2887 = distinct !DISubprogram(name: "process_uses", scope: !3, file: !3, line: 198, type: !2888, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{null, !1897, !726}
!2890 = !{!2891, !2892, !2893, !2894}
!2891 = !DILocalVariable(name: "use_rec", arg: 1, scope: !2887, file: !3, line: 198, type: !1897)
!2892 = !DILocalVariable(name: "top_flag", arg: 2, scope: !2887, file: !3, line: 198, type: !726)
!2893 = !DILocalVariable(name: "use", scope: !2887, file: !3, line: 200, type: !808)
!2894 = !DILocalVariable(name: "uregno", scope: !2895, file: !3, line: 204, type: !7)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 203, column: 7)
!2896 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 202, column: 9)
!2897 = !DILocation(line: 0, scope: !2887)
!2898 = !DILocation(line: 201, column: 3, scope: !2887)
!2899 = !DILocation(line: 201, column: 25, scope: !2887)
!2900 = !DILocation(line: 201, column: 17, scope: !2887)
!2901 = !DILocation(line: 201, column: 29, scope: !2887)
!2902 = !DILocation(line: 202, column: 10, scope: !2896)
!2903 = !DILocation(line: 202, column: 29, scope: !2896)
!2904 = !DILocation(line: 202, column: 46, scope: !2896)
!2905 = !DILocation(line: 202, column: 9, scope: !2887)
!2906 = !DILocation(line: 204, column: 31, scope: !2895)
!2907 = !DILocation(line: 0, scope: !2895)
!2908 = !DILocation(line: 205, column: 13, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 205, column: 13)
!2910 = !DILocation(line: 206, column: 6, scope: !2909)
!2911 = !DILocation(line: 206, column: 24, scope: !2909)
!2912 = !DILocation(line: 206, column: 10, scope: !2909)
!2913 = !DILocation(line: 207, column: 6, scope: !2909)
!2914 = !DILocation(line: 207, column: 23, scope: !2909)
!2915 = !DILocation(line: 207, column: 9, scope: !2909)
!2916 = !DILocation(line: 205, column: 13, scope: !2895)
!2917 = !DILocation(line: 208, column: 4, scope: !2909)
!2918 = distinct !{!2918, !2898, !2919}
!2919 = !DILocation(line: 210, column: 7, scope: !2887)
!2920 = !DILocation(line: 211, column: 1, scope: !2887)
!2921 = distinct !DISubprogram(name: "df_get_artificial_uses", scope: !717, file: !717, line: 1099, type: !2922, scopeLine: 1100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2924)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!1897, !7}
!2924 = !{!2925}
!2925 = !DILocalVariable(name: "bb_index", arg: 1, scope: !2921, file: !717, line: 1099, type: !7)
!2926 = !DILocation(line: 0, scope: !2921)
!2927 = !DILocation(line: 1101, column: 10, scope: !2921)
!2928 = !DILocation(line: 1101, column: 42, scope: !2921)
!2929 = !DILocation(line: 1101, column: 3, scope: !2921)
!2930 = distinct !DISubprogram(name: "process_defs", scope: !3, file: !3, line: 153, type: !2888, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2931)
!2931 = !{!2932, !2933, !2934, !2935, !2937}
!2932 = !DILocalVariable(name: "def_rec", arg: 1, scope: !2930, file: !3, line: 153, type: !1897)
!2933 = !DILocalVariable(name: "top_flag", arg: 2, scope: !2930, file: !3, line: 153, type: !726)
!2934 = !DILocalVariable(name: "def", scope: !2930, file: !3, line: 155, type: !808)
!2935 = !DILocalVariable(name: "curr_def", scope: !2936, file: !3, line: 158, type: !808)
!2936 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 157, column: 5)
!2937 = !DILocalVariable(name: "dregno", scope: !2936, file: !3, line: 159, type: !7)
!2938 = !DILocation(line: 0, scope: !2930)
!2939 = !DILocation(line: 156, column: 3, scope: !2930)
!2940 = !DILocation(line: 156, column: 25, scope: !2930)
!2941 = !DILocation(line: 156, column: 17, scope: !2930)
!2942 = !DILocation(line: 156, column: 29, scope: !2930)
!2943 = !DILocation(line: 158, column: 25, scope: !2936)
!2944 = !DILocation(line: 0, scope: !2936)
!2945 = !DILocation(line: 161, column: 12, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 161, column: 11)
!2947 = !DILocation(line: 161, column: 31, scope: !2946)
!2948 = !DILocation(line: 161, column: 48, scope: !2946)
!2949 = !DILocation(line: 161, column: 11, scope: !2936)
!2950 = distinct !{!2950, !2939, !2951}
!2951 = !DILocation(line: 188, column: 5, scope: !2930)
!2952 = !DILocation(line: 164, column: 16, scope: !2936)
!2953 = !DILocation(line: 165, column: 11, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 165, column: 11)
!2955 = !DILocation(line: 165, column: 11, scope: !2936)
!2956 = !DILocation(line: 166, column: 2, scope: !2954)
!2957 = !DILocation(line: 172, column: 27, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 172, column: 8)
!2959 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 168, column: 2)
!2960 = !DILocation(line: 172, column: 8, scope: !2959)
!2961 = !DILocation(line: 175, column: 6, scope: !2958)
!2962 = !DILocation(line: 178, column: 11, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 178, column: 11)
!2964 = !DILocation(line: 178, column: 30, scope: !2963)
!2965 = !DILocation(line: 0, scope: !2963)
!2966 = !DILocation(line: 178, column: 11, scope: !2936)
!2967 = !DILocation(line: 180, column: 4, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 179, column: 2)
!2969 = !DILocation(line: 181, column: 4, scope: !2968)
!2970 = !DILocation(line: 182, column: 2, scope: !2968)
!2971 = !DILocation(line: 185, column: 4, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 184, column: 2)
!2973 = !DILocation(line: 186, column: 4, scope: !2972)
!2974 = !DILocation(line: 189, column: 1, scope: !2930)
!2975 = distinct !DISubprogram(name: "df_get_artificial_defs", scope: !717, file: !717, line: 1090, type: !2922, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2976)
!2976 = !{!2977}
!2977 = !DILocalVariable(name: "bb_index", arg: 1, scope: !2975, file: !717, line: 1090, type: !7)
!2978 = !DILocation(line: 0, scope: !2975)
!2979 = !DILocation(line: 1092, column: 10, scope: !2975)
!2980 = !DILocation(line: 1092, column: 42, scope: !2975)
!2981 = !DILocation(line: 1092, column: 3, scope: !2975)
!2982 = distinct !DISubprogram(name: "VEC_df_ref_heap_reserve", scope: !3, file: !3, line: 121, type: !2829, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2983)
!2983 = !{!2984, !2985, !2986}
!2984 = !DILocalVariable(name: "vec_", arg: 1, scope: !2982, file: !3, line: 121, type: !2713)
!2985 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2982, file: !3, line: 121, type: !726)
!2986 = !DILocalVariable(name: "extend", scope: !2982, file: !3, line: 121, type: !726)
!2987 = !DILocation(line: 0, scope: !2982)
!2988 = !DILocation(line: 121, column: 1, scope: !2982)
!2989 = !DILocation(line: 121, column: 1, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 121, column: 1)
!2991 = distinct !DISubprogram(name: "VEC_df_ref_base_quick_push", scope: !3, file: !3, line: 120, type: !2992, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!1897, !2823, !808}
!2994 = !{!2995, !2996, !2997}
!2995 = !DILocalVariable(name: "vec_", arg: 1, scope: !2991, file: !3, line: 120, type: !2823)
!2996 = !DILocalVariable(name: "obj_", arg: 2, scope: !2991, file: !3, line: 120, type: !808)
!2997 = !DILocalVariable(name: "slot_", scope: !2991, file: !3, line: 120, type: !1897)
!2998 = !DILocation(line: 0, scope: !2991)
!2999 = !DILocation(line: 120, column: 1, scope: !2991)
!3000 = distinct !DISubprogram(name: "VEC_df_ref_base_index", scope: !3, file: !3, line: 120, type: !3001, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!808, !2808, !7}
!3003 = !{!3004, !3005}
!3004 = !DILocalVariable(name: "vec_", arg: 1, scope: !3000, file: !3, line: 120, type: !2808)
!3005 = !DILocalVariable(name: "ix_", arg: 2, scope: !3000, file: !3, line: 120, type: !7)
!3006 = !DILocation(line: 0, scope: !3000)
!3007 = !DILocation(line: 120, column: 1, scope: !3000)
!3008 = distinct !DISubprogram(name: "VEC_df_ref_base_replace", scope: !3, file: !3, line: 120, type: !3009, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!808, !2823, !7, !808}
!3011 = !{!3012, !3013, !3014, !3015}
!3012 = !DILocalVariable(name: "vec_", arg: 1, scope: !3008, file: !3, line: 120, type: !2823)
!3013 = !DILocalVariable(name: "ix_", arg: 2, scope: !3008, file: !3, line: 120, type: !7)
!3014 = !DILocalVariable(name: "obj_", arg: 3, scope: !3008, file: !3, line: 120, type: !808)
!3015 = !DILocalVariable(name: "old_obj_", scope: !3008, file: !3, line: 120, type: !808)
!3016 = !DILocation(line: 0, scope: !3008)
!3017 = !DILocation(line: 120, column: 1, scope: !3008)
!3018 = distinct !DISubprogram(name: "df_scan_get_bb_info", scope: !717, file: !717, line: 1034, type: !3019, scopeLine: 1035, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!1950, !7}
!3021 = !{!3022}
!3022 = !DILocalVariable(name: "index", arg: 1, scope: !3018, file: !717, line: 1034, type: !7)
!3023 = !DILocation(line: 0, scope: !3018)
!3024 = !DILocation(line: 1036, column: 15, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3018, file: !717, line: 1036, column: 7)
!3026 = !DILocation(line: 1036, column: 24, scope: !3025)
!3027 = !DILocation(line: 1036, column: 13, scope: !3025)
!3028 = !DILocation(line: 1036, column: 7, scope: !3018)
!3029 = !DILocation(line: 1037, column: 48, scope: !3025)
!3030 = !DILocation(line: 1037, column: 39, scope: !3025)
!3031 = !DILocation(line: 1037, column: 5, scope: !3025)
!3032 = !DILocation(line: 0, scope: !3025)
!3033 = !DILocation(line: 1040, column: 1, scope: !3018)
!3034 = distinct !DISubprogram(name: "VEC_df_ref_base_pop", scope: !3, file: !3, line: 120, type: !3035, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!808, !2823}
!3037 = !{!3038, !3039}
!3038 = !DILocalVariable(name: "vec_", arg: 1, scope: !3034, file: !3, line: 120, type: !2823)
!3039 = !DILocalVariable(name: "obj_", scope: !3034, file: !3, line: 120, type: !808)
!3040 = !DILocation(line: 0, scope: !3034)
!3041 = !DILocation(line: 120, column: 1, scope: !3034)
!3042 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !318, file: !318, line: 85, type: !3043, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3047)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!7, !3045}
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1192)
!3047 = !{!3048}
!3048 = !DILocalVariable(name: "vec_", arg: 1, scope: !3042, file: !318, line: 85, type: !3045)
!3049 = !DILocation(line: 0, scope: !3042)
!3050 = !DILocation(line: 85, column: 1, scope: !3042)
!3051 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !318, file: !318, line: 85, type: !3052, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!1199, !3045, !7}
!3054 = !{!3055, !3056}
!3055 = !DILocalVariable(name: "vec_", arg: 1, scope: !3051, file: !318, line: 85, type: !3045)
!3056 = !DILocalVariable(name: "ix_", arg: 2, scope: !3051, file: !318, line: 85, type: !7)
!3057 = !DILocation(line: 0, scope: !3051)
!3058 = !DILocation(line: 85, column: 1, scope: !3051)
!3059 = distinct !DISubprogram(name: "get_def_for_use", scope: !3, file: !3, line: 137, type: !3060, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!808, !808}
!3062 = !{!3063}
!3063 = !DILocalVariable(name: "use", arg: 1, scope: !3059, file: !3, line: 137, type: !808)
!3064 = !DILocation(line: 0, scope: !3059)
!3065 = !DILocation(line: 139, column: 10, scope: !3059)
!3066 = !DILocation(line: 139, column: 3, scope: !3059)
!3067 = distinct !DISubprogram(name: "forward_propagate_and_simplify", scope: !3, file: !3, line: 1221, type: !3068, scopeLine: 1222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3070)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!725, !808, !819, !819}
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3086, !3089, !3090, !3091}
!3071 = !DILocalVariable(name: "use", arg: 1, scope: !3067, file: !3, line: 1221, type: !808)
!3072 = !DILocalVariable(name: "def_insn", arg: 2, scope: !3067, file: !3, line: 1221, type: !819)
!3073 = !DILocalVariable(name: "def_set", arg: 3, scope: !3067, file: !3, line: 1221, type: !819)
!3074 = !DILocalVariable(name: "use_insn", scope: !3067, file: !3, line: 1223, type: !819)
!3075 = !DILocalVariable(name: "use_set", scope: !3067, file: !3, line: 1224, type: !819)
!3076 = !DILocalVariable(name: "src", scope: !3067, file: !3, line: 1225, type: !819)
!3077 = !DILocalVariable(name: "reg", scope: !3067, file: !3, line: 1225, type: !819)
!3078 = !DILocalVariable(name: "new_rtx", scope: !3067, file: !3, line: 1225, type: !819)
!3079 = !DILocalVariable(name: "loc", scope: !3067, file: !3, line: 1225, type: !1922)
!3080 = !DILocalVariable(name: "set_reg_equal", scope: !3067, file: !3, line: 1226, type: !725)
!3081 = !DILocalVariable(name: "mode", scope: !3067, file: !3, line: 1227, type: !189)
!3082 = !DILocalVariable(name: "asm_use", scope: !3067, file: !3, line: 1228, type: !726)
!3083 = !DILocalVariable(name: "x", scope: !3084, file: !3, line: 1268, type: !819)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 1267, column: 5)
!3085 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1266, column: 7)
!3086 = !DILocalVariable(name: "note", scope: !3087, file: !3, line: 1271, type: !819)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 1270, column: 2)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 1269, column: 11)
!3089 = !DILocalVariable(name: "old_rtx", scope: !3087, file: !3, line: 1272, type: !819)
!3090 = !DILocalVariable(name: "new_rtx", scope: !3087, file: !3, line: 1273, type: !819)
!3091 = !DILocalVariable(name: "note", scope: !3092, file: !3, line: 1297, type: !819)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 1296, column: 5)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 1290, column: 12)
!3094 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1285, column: 7)
!3095 = !DILocation(line: 0, scope: !3067)
!3096 = !DILocation(line: 1223, column: 18, scope: !3067)
!3097 = !DILocation(line: 1224, column: 17, scope: !3067)
!3098 = !DILocation(line: 1230, column: 7, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1230, column: 7)
!3100 = !DILocation(line: 1230, column: 28, scope: !3099)
!3101 = !DILocation(line: 1230, column: 7, scope: !3067)
!3102 = !DILocation(line: 1231, column: 30, scope: !3099)
!3103 = !DILocation(line: 1231, column: 15, scope: !3099)
!3104 = !DILocation(line: 1231, column: 5, scope: !3099)
!3105 = !DILocation(line: 1233, column: 8, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1233, column: 7)
!3107 = !DILocation(line: 1233, column: 27, scope: !3106)
!3108 = !DILocation(line: 1233, column: 16, scope: !3106)
!3109 = !DILocation(line: 1233, column: 35, scope: !3106)
!3110 = !DILocation(line: 1233, column: 7, scope: !3067)
!3111 = !DILocation(line: 1237, column: 15, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1237, column: 7)
!3113 = !DILocation(line: 1237, column: 18, scope: !3112)
!3114 = !DILocation(line: 1237, column: 48, scope: !3112)
!3115 = !DILocation(line: 1237, column: 7, scope: !3067)
!3116 = !DILocation(line: 1241, column: 9, scope: !3067)
!3117 = !DILocation(line: 1242, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1242, column: 7)
!3119 = !DILocation(line: 1242, column: 22, scope: !3118)
!3120 = !DILocation(line: 1243, column: 7, scope: !3118)
!3121 = !DILocation(line: 1243, column: 10, scope: !3118)
!3122 = !DILocation(line: 1243, column: 40, scope: !3118)
!3123 = !DILocation(line: 1244, column: 7, scope: !3118)
!3124 = !DILocation(line: 1244, column: 11, scope: !3118)
!3125 = !DILocation(line: 1244, column: 47, scope: !3118)
!3126 = !DILocation(line: 1244, column: 44, scope: !3118)
!3127 = !DILocation(line: 1245, column: 4, scope: !3118)
!3128 = !DILocation(line: 1245, column: 37, scope: !3118)
!3129 = !DILocation(line: 1242, column: 7, scope: !3067)
!3130 = !DILocation(line: 1249, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1249, column: 7)
!3132 = !DILocation(line: 1249, column: 19, scope: !3131)
!3133 = !DILocation(line: 1249, column: 22, scope: !3131)
!3134 = !DILocation(line: 1249, column: 52, scope: !3131)
!3135 = !DILocation(line: 1249, column: 7, scope: !3067)
!3136 = !DILocation(line: 1254, column: 32, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1254, column: 7)
!3138 = !DILocation(line: 1254, column: 35, scope: !3137)
!3139 = !DILocation(line: 1254, column: 7, scope: !3067)
!3140 = !DILocation(line: 1255, column: 11, scope: !3137)
!3141 = !DILocation(line: 1255, column: 5, scope: !3137)
!3142 = !DILocation(line: 1259, column: 9, scope: !3067)
!3143 = !DILocation(line: 1260, column: 8, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1260, column: 7)
!3145 = !DILocation(line: 1260, column: 25, scope: !3144)
!3146 = !DILocation(line: 1260, column: 29, scope: !3144)
!3147 = !DILocation(line: 1260, column: 7, scope: !3067)
!3148 = !DILocation(line: 1266, column: 7, scope: !3085)
!3149 = !DILocation(line: 1266, column: 19, scope: !3085)
!3150 = !DILocation(line: 1266, column: 22, scope: !3085)
!3151 = !DILocation(line: 1266, column: 7, scope: !3067)
!3152 = !DILocation(line: 1268, column: 15, scope: !3084)
!3153 = !DILocation(line: 0, scope: !3084)
!3154 = !DILocation(line: 1269, column: 13, scope: !3088)
!3155 = !DILocation(line: 1269, column: 23, scope: !3088)
!3156 = !DILocation(line: 1269, column: 20, scope: !3088)
!3157 = !DILocation(line: 1271, column: 22, scope: !3087)
!3158 = !DILocation(line: 0, scope: !3087)
!3159 = !DILocation(line: 1272, column: 18, scope: !3087)
!3160 = !DILocation(line: 1272, column: 25, scope: !3087)
!3161 = !DILocation(line: 1272, column: 42, scope: !3087)
!3162 = !DILocation(line: 1273, column: 18, scope: !3087)
!3163 = !DILocation(line: 1274, column: 16, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 1274, column: 8)
!3165 = !DILocation(line: 1274, column: 8, scope: !3087)
!3166 = !DILocation(line: 1275, column: 55, scope: !3164)
!3167 = !DILocation(line: 1275, column: 13, scope: !3164)
!3168 = !DILocation(line: 1280, column: 15, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1280, column: 7)
!3170 = !DILocation(line: 1280, column: 7, scope: !3067)
!3171 = !DILocation(line: 1281, column: 12, scope: !3169)
!3172 = !DILocation(line: 1281, column: 5, scope: !3169)
!3173 = !DILocation(line: 1285, column: 7, scope: !3094)
!3174 = !DILocation(line: 1285, column: 25, scope: !3094)
!3175 = !DILocation(line: 1285, column: 7, scope: !3067)
!3176 = !DILocation(line: 1287, column: 14, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 1286, column: 5)
!3178 = !DILocation(line: 1289, column: 5, scope: !3177)
!3179 = !DILocation(line: 1290, column: 12, scope: !3094)
!3180 = !DILocation(line: 1292, column: 14, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 1291, column: 5)
!3182 = !DILocation(line: 1294, column: 5, scope: !3181)
!3183 = !DILocation(line: 1297, column: 18, scope: !3092)
!3184 = !DILocation(line: 0, scope: !3092)
!3185 = !DILocation(line: 1298, column: 11, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 1298, column: 11)
!3187 = !DILocation(line: 1298, column: 30, scope: !3186)
!3188 = !DILocation(line: 1298, column: 11, scope: !3092)
!3189 = !DILocation(line: 1307, column: 29, scope: !3092)
!3190 = !DILocation(line: 1307, column: 23, scope: !3092)
!3191 = !DILocation(line: 0, scope: !3094)
!3192 = !DILocation(line: 1310, column: 7, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1310, column: 7)
!3194 = !DILocation(line: 1310, column: 23, scope: !3193)
!3195 = !DILocation(line: 1310, column: 7, scope: !3067)
!3196 = !DILocation(line: 1311, column: 12, scope: !3193)
!3197 = !DILocation(line: 0, scope: !3193)
!3198 = !DILocation(line: 1311, column: 5, scope: !3193)
!3199 = !DILocation(line: 1316, column: 34, scope: !3067)
!3200 = !DILocation(line: 1316, column: 9, scope: !3067)
!3201 = !DILocation(line: 1315, column: 13, scope: !3067)
!3202 = !DILocation(line: 1318, column: 8, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1318, column: 7)
!3204 = !DILocation(line: 1318, column: 7, scope: !3067)
!3205 = !DILocation(line: 1321, column: 10, scope: !3067)
!3206 = !DILocation(line: 1321, column: 3, scope: !3067)
!3207 = !DILocation(line: 1322, column: 1, scope: !3067)
!3208 = distinct !DISubprogram(name: "forward_propagate_subreg", scope: !3, file: !3, line: 1091, type: !3068, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216}
!3210 = !DILocalVariable(name: "use", arg: 1, scope: !3208, file: !3, line: 1091, type: !808)
!3211 = !DILocalVariable(name: "def_insn", arg: 2, scope: !3208, file: !3, line: 1091, type: !819)
!3212 = !DILocalVariable(name: "def_set", arg: 3, scope: !3208, file: !3, line: 1091, type: !819)
!3213 = !DILocalVariable(name: "use_reg", scope: !3208, file: !3, line: 1093, type: !819)
!3214 = !DILocalVariable(name: "use_insn", scope: !3208, file: !3, line: 1094, type: !819)
!3215 = !DILocalVariable(name: "src", scope: !3208, file: !3, line: 1094, type: !819)
!3216 = !DILocalVariable(name: "use_mode", scope: !3208, file: !3, line: 1097, type: !189)
!3217 = !DILocation(line: 0, scope: !3208)
!3218 = !DILocation(line: 1093, column: 17, scope: !3208)
!3219 = !DILocation(line: 1097, column: 32, scope: !3208)
!3220 = !DILocation(line: 1098, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 1098, column: 7)
!3222 = !DILocation(line: 1098, column: 26, scope: !3221)
!3223 = !DILocation(line: 1099, column: 7, scope: !3221)
!3224 = !DILocation(line: 1099, column: 11, scope: !3221)
!3225 = !DILocation(line: 1098, column: 7, scope: !3208)
!3226 = !DILocation(line: 1103, column: 7, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 1103, column: 7)
!3228 = !DILocation(line: 1104, column: 9, scope: !3227)
!3229 = !DILocation(line: 1104, column: 7, scope: !3227)
!3230 = !DILocation(line: 1103, column: 7, scope: !3208)
!3231 = !DILocation(line: 1111, column: 18, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 1105, column: 5)
!3233 = !DILocation(line: 1112, column: 13, scope: !3232)
!3234 = !DILocation(line: 1113, column: 11, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 1113, column: 11)
!3236 = !DILocation(line: 1113, column: 26, scope: !3235)
!3237 = !DILocation(line: 1114, column: 4, scope: !3235)
!3238 = !DILocation(line: 1114, column: 7, scope: !3235)
!3239 = !DILocation(line: 1115, column: 4, scope: !3235)
!3240 = !DILocation(line: 1115, column: 7, scope: !3235)
!3241 = !DILocation(line: 1115, column: 35, scope: !3235)
!3242 = !DILocation(line: 1116, column: 4, scope: !3235)
!3243 = !DILocation(line: 1116, column: 7, scope: !3235)
!3244 = !DILocation(line: 1117, column: 4, scope: !3235)
!3245 = !DILocation(line: 1117, column: 7, scope: !3235)
!3246 = !DILocation(line: 1113, column: 11, scope: !3232)
!3247 = !DILocation(line: 1118, column: 32, scope: !3235)
!3248 = !DILocation(line: 1118, column: 50, scope: !3235)
!3249 = !DILocation(line: 1118, column: 9, scope: !3235)
!3250 = !DILocation(line: 1118, column: 2, scope: !3235)
!3251 = !DILocation(line: 1126, column: 12, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 1126, column: 12)
!3253 = !DILocation(line: 1126, column: 12, scope: !3227)
!3254 = !DILocation(line: 1128, column: 18, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1127, column: 5)
!3256 = !DILocation(line: 1129, column: 13, scope: !3255)
!3257 = !DILocation(line: 1130, column: 12, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1130, column: 11)
!3259 = !DILocation(line: 1130, column: 27, scope: !3258)
!3260 = !DILocation(line: 1131, column: 5, scope: !3258)
!3261 = !DILocation(line: 1131, column: 23, scope: !3258)
!3262 = !DILocation(line: 1132, column: 4, scope: !3258)
!3263 = !DILocation(line: 1132, column: 7, scope: !3258)
!3264 = !DILocation(line: 1133, column: 4, scope: !3258)
!3265 = !DILocation(line: 1133, column: 7, scope: !3258)
!3266 = !DILocation(line: 1133, column: 32, scope: !3258)
!3267 = !DILocation(line: 1134, column: 4, scope: !3258)
!3268 = !DILocation(line: 1134, column: 8, scope: !3258)
!3269 = !DILocation(line: 1135, column: 4, scope: !3258)
!3270 = !DILocation(line: 1135, column: 7, scope: !3258)
!3271 = !DILocation(line: 1130, column: 11, scope: !3255)
!3272 = !DILocation(line: 1136, column: 32, scope: !3258)
!3273 = !DILocation(line: 1136, column: 50, scope: !3258)
!3274 = !DILocation(line: 1136, column: 9, scope: !3258)
!3275 = !DILocation(line: 1136, column: 2, scope: !3258)
!3276 = !DILocation(line: 1141, column: 1, scope: !3208)
!3277 = distinct !DISubprogram(name: "all_uses_available_at", scope: !3, file: !3, line: 790, type: !3278, scopeLine: 791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!725, !819, !819}
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3286, !3289, !3293, !3297, !3299, !3303}
!3281 = !DILocalVariable(name: "def_insn", arg: 1, scope: !3277, file: !3, line: 790, type: !819)
!3282 = !DILocalVariable(name: "target_insn", arg: 2, scope: !3277, file: !3, line: 790, type: !819)
!3283 = !DILocalVariable(name: "use_rec", scope: !3277, file: !3, line: 792, type: !1897)
!3284 = !DILocalVariable(name: "insn_info", scope: !3277, file: !3, line: 793, type: !1892)
!3285 = !DILocalVariable(name: "def_set", scope: !3277, file: !3, line: 794, type: !819)
!3286 = !DILocalVariable(name: "def_reg", scope: !3287, file: !3, line: 803, type: !819)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 802, column: 5)
!3288 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 800, column: 7)
!3289 = !DILocalVariable(name: "use", scope: !3290, file: !3, line: 809, type: !808)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 808, column: 2)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 807, column: 7)
!3292 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 807, column: 7)
!3293 = !DILocalVariable(name: "use", scope: !3294, file: !3, line: 815, type: !808)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 814, column: 2)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 813, column: 7)
!3296 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 813, column: 7)
!3297 = !DILocalVariable(name: "def_reg", scope: !3298, file: !3, line: 822, type: !819)
!3298 = distinct !DILexicalBlock(scope: !3288, file: !3, line: 821, column: 5)
!3299 = !DILocalVariable(name: "use", scope: !3300, file: !3, line: 828, type: !808)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 827, column: 2)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 826, column: 7)
!3302 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 826, column: 7)
!3303 = !DILocalVariable(name: "use", scope: !3304, file: !3, line: 836, type: !808)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 835, column: 2)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 834, column: 7)
!3306 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 834, column: 7)
!3307 = !DILocation(line: 0, scope: !3277)
!3308 = !DILocation(line: 793, column: 36, scope: !3277)
!3309 = !DILocation(line: 794, column: 17, scope: !3277)
!3310 = !DILocation(line: 796, column: 3, scope: !3277)
!3311 = !DILocation(line: 800, column: 7, scope: !3288)
!3312 = !DILocation(line: 800, column: 28, scope: !3288)
!3313 = !DILocation(line: 801, column: 7, scope: !3288)
!3314 = !DILocation(line: 0, scope: !3298)
!3315 = !DILocation(line: 822, column: 21, scope: !3298)
!3316 = !DILocation(line: 801, column: 10, scope: !3288)
!3317 = !DILocation(line: 800, column: 7, scope: !3277)
!3318 = !DILocation(line: 0, scope: !3287)
!3319 = !DILocation(line: 807, column: 22, scope: !3292)
!3320 = !DILocation(line: 807, column: 12, scope: !3292)
!3321 = !DILocation(line: 0, scope: !3292)
!3322 = !DILocation(line: 807, column: 53, scope: !3291)
!3323 = !DILocation(line: 807, column: 7, scope: !3292)
!3324 = !DILocation(line: 810, column: 21, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 810, column: 8)
!3326 = !DILocation(line: 810, column: 8, scope: !3325)
!3327 = !DILocation(line: 807, column: 70, scope: !3291)
!3328 = !DILocation(line: 807, column: 7, scope: !3291)
!3329 = distinct !{!3329, !3323, !3330}
!3330 = !DILocation(line: 812, column: 2, scope: !3292)
!3331 = !DILocation(line: 813, column: 22, scope: !3296)
!3332 = !DILocation(line: 813, column: 12, scope: !3296)
!3333 = !DILocation(line: 0, scope: !3296)
!3334 = !DILocation(line: 813, column: 56, scope: !3295)
!3335 = !DILocation(line: 813, column: 7, scope: !3296)
!3336 = !DILocation(line: 816, column: 21, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 816, column: 8)
!3338 = !DILocation(line: 816, column: 8, scope: !3337)
!3339 = !DILocation(line: 813, column: 73, scope: !3295)
!3340 = !DILocation(line: 813, column: 7, scope: !3295)
!3341 = distinct !{!3341, !3335, !3342}
!3342 = !DILocation(line: 818, column: 2, scope: !3296)
!3343 = !DILocation(line: 826, column: 22, scope: !3302)
!3344 = !DILocation(line: 0, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 829, column: 8)
!3346 = !DILocation(line: 826, column: 12, scope: !3302)
!3347 = !DILocation(line: 0, scope: !3302)
!3348 = !DILocation(line: 826, column: 53, scope: !3301)
!3349 = !DILocation(line: 826, column: 7, scope: !3302)
!3350 = !DILocation(line: 0, scope: !3300)
!3351 = !DILocation(line: 831, column: 8, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 831, column: 8)
!3353 = !DILocation(line: 826, column: 70, scope: !3301)
!3354 = !DILocation(line: 826, column: 7, scope: !3301)
!3355 = distinct !{!3355, !3349, !3356}
!3356 = !DILocation(line: 833, column: 2, scope: !3302)
!3357 = !DILocation(line: 834, column: 22, scope: !3306)
!3358 = !DILocation(line: 829, column: 32, scope: !3345)
!3359 = !DILocation(line: 829, column: 19, scope: !3345)
!3360 = !DILocation(line: 829, column: 8, scope: !3300)
!3361 = !DILocation(line: 0, scope: !3301)
!3362 = !DILocation(line: 834, column: 12, scope: !3306)
!3363 = !DILocation(line: 0, scope: !3306)
!3364 = !DILocation(line: 834, column: 56, scope: !3305)
!3365 = !DILocation(line: 834, column: 7, scope: !3306)
!3366 = !DILocation(line: 0, scope: !3304)
!3367 = !DILocation(line: 839, column: 8, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 839, column: 8)
!3369 = !DILocation(line: 0, scope: !3305)
!3370 = !DILocation(line: 834, column: 73, scope: !3305)
!3371 = !DILocation(line: 834, column: 7, scope: !3305)
!3372 = distinct !{!3372, !3365, !3373}
!3373 = !DILocation(line: 841, column: 2, scope: !3306)
!3374 = !DILocation(line: 837, column: 32, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 837, column: 8)
!3376 = !DILocation(line: 837, column: 19, scope: !3375)
!3377 = !DILocation(line: 837, column: 8, scope: !3304)
!3378 = !DILocation(line: 844, column: 3, scope: !3277)
!3379 = !DILocation(line: 845, column: 1, scope: !3277)
!3380 = distinct !DISubprogram(name: "forward_propagate_asm", scope: !3, file: !3, line: 1146, type: !3381, scopeLine: 1147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!725, !808, !819, !819, !819}
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396}
!3384 = !DILocalVariable(name: "use", arg: 1, scope: !3380, file: !3, line: 1146, type: !808)
!3385 = !DILocalVariable(name: "def_insn", arg: 2, scope: !3380, file: !3, line: 1146, type: !819)
!3386 = !DILocalVariable(name: "def_set", arg: 3, scope: !3380, file: !3, line: 1146, type: !819)
!3387 = !DILocalVariable(name: "reg", arg: 4, scope: !3380, file: !3, line: 1146, type: !819)
!3388 = !DILocalVariable(name: "use_insn", scope: !3380, file: !3, line: 1148, type: !819)
!3389 = !DILocalVariable(name: "src", scope: !3380, file: !3, line: 1148, type: !819)
!3390 = !DILocalVariable(name: "use_pat", scope: !3380, file: !3, line: 1148, type: !819)
!3391 = !DILocalVariable(name: "asm_operands", scope: !3380, file: !3, line: 1148, type: !819)
!3392 = !DILocalVariable(name: "new_rtx", scope: !3380, file: !3, line: 1148, type: !819)
!3393 = !DILocalVariable(name: "loc", scope: !3380, file: !3, line: 1148, type: !1922)
!3394 = !DILocalVariable(name: "speed_p", scope: !3380, file: !3, line: 1149, type: !726)
!3395 = !DILocalVariable(name: "i", scope: !3380, file: !3, line: 1149, type: !726)
!3396 = !DILocalVariable(name: "use_vec", scope: !3380, file: !3, line: 1150, type: !1897)
!3397 = !DILocation(line: 0, scope: !3380)
!3398 = !DILocation(line: 1148, column: 18, scope: !3380)
!3399 = !DILocation(line: 1152, column: 3, scope: !3380)
!3400 = !DILocation(line: 1154, column: 9, scope: !3380)
!3401 = !DILocation(line: 1155, column: 13, scope: !3380)
!3402 = !DILocation(line: 1159, column: 13, scope: !3380)
!3403 = !DILocation(line: 1160, column: 7, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1160, column: 7)
!3405 = !DILocation(line: 1160, column: 18, scope: !3404)
!3406 = !DILocation(line: 1160, column: 21, scope: !3404)
!3407 = !DILocation(line: 1160, column: 7, scope: !3380)
!3408 = !DILocation(line: 1163, column: 38, scope: !3380)
!3409 = !DILocation(line: 1163, column: 13, scope: !3380)
!3410 = !DILocation(line: 1165, column: 11, scope: !3380)
!3411 = !DILocation(line: 1165, column: 3, scope: !3380)
!3412 = !DILocation(line: 0, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 1181, column: 7)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 1181, column: 7)
!3415 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1166, column: 5)
!3416 = !DILocation(line: 1181, column: 23, scope: !3413)
!3417 = !DILocation(line: 1181, column: 7, scope: !3414)
!3418 = !DILocation(line: 1171, column: 11, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 1171, column: 11)
!3420 = !DILocation(line: 1171, column: 11, scope: !3415)
!3421 = !DILocation(line: 1174, column: 35, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 1172, column: 2)
!3423 = !DILocation(line: 1174, column: 14, scope: !3422)
!3424 = !DILocation(line: 1175, column: 8, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1175, column: 8)
!3426 = !DILocation(line: 1175, column: 8, scope: !3422)
!3427 = !DILocation(line: 1173, column: 11, scope: !3422)
!3428 = !DILocation(line: 1176, column: 6, scope: !3425)
!3429 = !DILocation(line: 1178, column: 22, scope: !3415)
!3430 = !DILocation(line: 1179, column: 7, scope: !3415)
!3431 = !DILocation(line: 1181, column: 21, scope: !3413)
!3432 = !DILocation(line: 1182, column: 6, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1182, column: 6)
!3434 = !DILocation(line: 1182, column: 41, scope: !3433)
!3435 = !DILocation(line: 0, scope: !3433)
!3436 = !DILocation(line: 1182, column: 6, scope: !3413)
!3437 = !DILocation(line: 1184, column: 10, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 1184, column: 10)
!3439 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1183, column: 4)
!3440 = !DILocation(line: 1184, column: 10, scope: !3439)
!3441 = !DILocation(line: 1186, column: 10, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 1185, column: 8)
!3443 = !DILocation(line: 1187, column: 28, scope: !3442)
!3444 = !DILocation(line: 1187, column: 34, scope: !3442)
!3445 = !DILocation(line: 1187, column: 13, scope: !3442)
!3446 = !DILocation(line: 1189, column: 7, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 1189, column: 7)
!3448 = !DILocation(line: 1189, column: 7, scope: !3442)
!3449 = !DILocation(line: 1190, column: 5, scope: !3447)
!3450 = !DILocation(line: 1192, column: 21, scope: !3439)
!3451 = !DILocation(line: 1193, column: 4, scope: !3439)
!3452 = !DILocation(line: 1194, column: 11, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1194, column: 11)
!3454 = !DILocation(line: 1194, column: 46, scope: !3453)
!3455 = !DILocation(line: 1194, column: 11, scope: !3433)
!3456 = !DILocation(line: 1195, column: 19, scope: !3453)
!3457 = !DILocation(line: 1195, column: 4, scope: !3453)
!3458 = !DILocation(line: 1181, column: 46, scope: !3413)
!3459 = !DILocation(line: 1181, column: 7, scope: !3413)
!3460 = distinct !{!3460, !3417, !3461}
!3461 = !DILocation(line: 1195, column: 19, scope: !3414)
!3462 = !DILocation(line: 1198, column: 7, scope: !3415)
!3463 = !DILocation(line: 1199, column: 5, scope: !3415)
!3464 = !DILocation(line: 1201, column: 3, scope: !3380)
!3465 = !DILocation(line: 0, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 1202, column: 3)
!3467 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1202, column: 3)
!3468 = !DILocation(line: 1202, column: 8, scope: !3467)
!3469 = !DILocation(line: 0, scope: !3467)
!3470 = !DILocation(line: 1202, column: 19, scope: !3466)
!3471 = !DILocation(line: 1202, column: 17, scope: !3466)
!3472 = !DILocation(line: 1202, column: 3, scope: !3467)
!3473 = !DILocation(line: 1204, column: 14, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 1203, column: 5)
!3475 = !DILocation(line: 1205, column: 32, scope: !3474)
!3476 = !DILocation(line: 1205, column: 38, scope: !3474)
!3477 = !DILocation(line: 1205, column: 17, scope: !3474)
!3478 = !DILocation(line: 1206, column: 11, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 1206, column: 11)
!3480 = !DILocation(line: 1206, column: 11, scope: !3474)
!3481 = !DILocation(line: 1207, column: 2, scope: !3479)
!3482 = !DILocation(line: 1202, column: 62, scope: !3466)
!3483 = !DILocation(line: 1202, column: 3, scope: !3466)
!3484 = distinct !{!3484, !3472, !3485}
!3485 = !DILocation(line: 1208, column: 5, scope: !3467)
!3486 = !DILocation(line: 1210, column: 7, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1210, column: 7)
!3488 = !DILocation(line: 1210, column: 30, scope: !3487)
!3489 = !DILocation(line: 1210, column: 35, scope: !3487)
!3490 = !DILocation(line: 1210, column: 39, scope: !3487)
!3491 = !DILocation(line: 1210, column: 7, scope: !3380)
!3492 = !DILocation(line: 1213, column: 14, scope: !3380)
!3493 = !DILocation(line: 1214, column: 3, scope: !3380)
!3494 = !DILocation(line: 1215, column: 1, scope: !3380)
!3495 = distinct !DISubprogram(name: "propagate_rtx", scope: !3, file: !3, line: 652, type: !3496, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!819, !819, !189, !819, !819, !725}
!3498 = !{!3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506}
!3499 = !DILocalVariable(name: "x", arg: 1, scope: !3495, file: !3, line: 652, type: !819)
!3500 = !DILocalVariable(name: "mode", arg: 2, scope: !3495, file: !3, line: 652, type: !189)
!3501 = !DILocalVariable(name: "old_rtx", arg: 3, scope: !3495, file: !3, line: 652, type: !819)
!3502 = !DILocalVariable(name: "new_rtx", arg: 4, scope: !3495, file: !3, line: 652, type: !819)
!3503 = !DILocalVariable(name: "speed", arg: 5, scope: !3495, file: !3, line: 653, type: !725)
!3504 = !DILocalVariable(name: "tem", scope: !3495, file: !3, line: 655, type: !819)
!3505 = !DILocalVariable(name: "collapsed", scope: !3495, file: !3, line: 656, type: !725)
!3506 = !DILocalVariable(name: "flags", scope: !3495, file: !3, line: 657, type: !726)
!3507 = !DILocation(line: 0, scope: !3495)
!3508 = !DILocation(line: 655, column: 3, scope: !3495)
!3509 = !DILocation(line: 659, column: 7, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 659, column: 7)
!3511 = !DILocation(line: 659, column: 23, scope: !3510)
!3512 = !DILocation(line: 659, column: 26, scope: !3510)
!3513 = !DILocation(line: 659, column: 42, scope: !3510)
!3514 = !DILocation(line: 659, column: 7, scope: !3495)
!3515 = !DILocation(line: 663, column: 7, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 663, column: 7)
!3517 = !DILocation(line: 663, column: 23, scope: !3516)
!3518 = !DILocation(line: 663, column: 26, scope: !3516)
!3519 = !DILocation(line: 663, column: 7, scope: !3495)
!3520 = !DILocation(line: 664, column: 5, scope: !3516)
!3521 = !DILocation(line: 665, column: 8, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 665, column: 7)
!3523 = !DILocation(line: 666, column: 11, scope: !3522)
!3524 = !DILocation(line: 665, column: 7, scope: !3495)
!3525 = !DILocation(line: 668, column: 7, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 668, column: 7)
!3527 = !DILocation(line: 668, column: 7, scope: !3495)
!3528 = !DILocation(line: 671, column: 7, scope: !3495)
!3529 = !DILocation(line: 672, column: 57, scope: !3495)
!3530 = !DILocation(line: 672, column: 47, scope: !3495)
!3531 = !DILocation(line: 672, column: 15, scope: !3495)
!3532 = !DILocation(line: 673, column: 7, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 673, column: 7)
!3534 = !DILocation(line: 673, column: 11, scope: !3533)
!3535 = !DILocation(line: 673, column: 20, scope: !3533)
!3536 = !DILocation(line: 673, column: 16, scope: !3533)
!3537 = !DILocation(line: 678, column: 7, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 678, column: 7)
!3539 = !DILocation(line: 678, column: 22, scope: !3538)
!3540 = !DILocation(line: 678, column: 34, scope: !3538)
!3541 = !DILocation(line: 678, column: 38, scope: !3538)
!3542 = !DILocation(line: 678, column: 7, scope: !3495)
!3543 = !DILocation(line: 681, column: 7, scope: !3495)
!3544 = !DILocation(line: 682, column: 21, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 681, column: 7)
!3546 = !DILocation(line: 682, column: 11, scope: !3545)
!3547 = !DILocation(line: 682, column: 9, scope: !3545)
!3548 = !DILocation(line: 682, column: 5, scope: !3545)
!3549 = !DILocation(line: 684, column: 5, scope: !3545)
!3550 = !DILocation(line: 686, column: 10, scope: !3495)
!3551 = !DILocation(line: 686, column: 3, scope: !3495)
!3552 = !DILocation(line: 687, column: 1, scope: !3495)
!3553 = distinct !DISubprogram(name: "try_fwprop_subst", scope: !3, file: !3, line: 947, type: !3554, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!725, !808, !1922, !819, !819, !725}
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3574}
!3557 = !DILocalVariable(name: "use", arg: 1, scope: !3553, file: !3, line: 947, type: !808)
!3558 = !DILocalVariable(name: "loc", arg: 2, scope: !3553, file: !3, line: 947, type: !1922)
!3559 = !DILocalVariable(name: "new_rtx", arg: 3, scope: !3553, file: !3, line: 947, type: !819)
!3560 = !DILocalVariable(name: "def_insn", arg: 4, scope: !3553, file: !3, line: 947, type: !819)
!3561 = !DILocalVariable(name: "set_reg_equal", arg: 5, scope: !3553, file: !3, line: 947, type: !725)
!3562 = !DILocalVariable(name: "insn", scope: !3553, file: !3, line: 949, type: !819)
!3563 = !DILocalVariable(name: "type", scope: !3553, file: !3, line: 950, type: !716)
!3564 = !DILocalVariable(name: "flags", scope: !3553, file: !3, line: 951, type: !726)
!3565 = !DILocalVariable(name: "set", scope: !3553, file: !3, line: 952, type: !819)
!3566 = !DILocalVariable(name: "speed", scope: !3553, file: !3, line: 953, type: !725)
!3567 = !DILocalVariable(name: "old_cost", scope: !3553, file: !3, line: 954, type: !726)
!3568 = !DILocalVariable(name: "ok", scope: !3553, file: !3, line: 955, type: !725)
!3569 = !DILocalVariable(name: "insn_info", scope: !3570, file: !3, line: 1005, type: !1892)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 1004, column: 2)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 1003, column: 11)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 998, column: 5)
!3573 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 997, column: 7)
!3574 = !DILocalVariable(name: "insn_info", scope: !3575, file: !3, line: 1027, type: !1892)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 1026, column: 6)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 1025, column: 15)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 1017, column: 2)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 1016, column: 11)
!3579 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 1011, column: 5)
!3580 = !DILocation(line: 0, scope: !3553)
!3581 = !DILocation(line: 949, column: 14, scope: !3553)
!3582 = !DILocation(line: 950, column: 27, scope: !3553)
!3583 = !DILocation(line: 951, column: 15, scope: !3553)
!3584 = !DILocation(line: 952, column: 13, scope: !3553)
!3585 = !DILocation(line: 953, column: 41, scope: !3553)
!3586 = !DILocation(line: 953, column: 16, scope: !3553)
!3587 = !DILocation(line: 960, column: 7, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 960, column: 7)
!3589 = !DILocation(line: 960, column: 7, scope: !3553)
!3590 = !DILocation(line: 961, column: 26, scope: !3588)
!3591 = !DILocation(line: 961, column: 16, scope: !3588)
!3592 = !DILocation(line: 961, column: 5, scope: !3588)
!3593 = !DILocation(line: 962, column: 7, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 962, column: 7)
!3595 = !DILocation(line: 962, column: 7, scope: !3553)
!3596 = !DILocation(line: 964, column: 57, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 963, column: 5)
!3598 = !DILocation(line: 964, column: 7, scope: !3597)
!3599 = !DILocation(line: 965, column: 25, scope: !3597)
!3600 = !DILocation(line: 965, column: 36, scope: !3597)
!3601 = !DILocation(line: 965, column: 7, scope: !3597)
!3602 = !DILocation(line: 966, column: 16, scope: !3597)
!3603 = !DILocation(line: 966, column: 7, scope: !3597)
!3604 = !DILocation(line: 967, column: 25, scope: !3597)
!3605 = !DILocation(line: 967, column: 7, scope: !3597)
!3606 = !DILocation(line: 968, column: 16, scope: !3597)
!3607 = !DILocation(line: 968, column: 7, scope: !3597)
!3608 = !DILocation(line: 969, column: 5, scope: !3597)
!3609 = !DILocation(line: 971, column: 3, scope: !3553)
!3610 = !DILocation(line: 972, column: 8, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 972, column: 7)
!3612 = !DILocation(line: 972, column: 7, scope: !3553)
!3613 = !DILocation(line: 974, column: 11, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 974, column: 11)
!3615 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 973, column: 5)
!3616 = !DILocation(line: 974, column: 11, scope: !3615)
!3617 = !DILocation(line: 976, column: 4, scope: !3614)
!3618 = !DILocation(line: 975, column: 2, scope: !3614)
!3619 = !DILocation(line: 980, column: 12, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 980, column: 12)
!3621 = !DILocation(line: 980, column: 30, scope: !3620)
!3622 = !DILocation(line: 981, column: 8, scope: !3620)
!3623 = !DILocation(line: 981, column: 5, scope: !3620)
!3624 = !DILocation(line: 982, column: 18, scope: !3620)
!3625 = !DILocation(line: 982, column: 8, scope: !3620)
!3626 = !DILocation(line: 982, column: 45, scope: !3620)
!3627 = !DILocation(line: 980, column: 12, scope: !3611)
!3628 = !DILocation(line: 984, column: 11, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 984, column: 11)
!3630 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 983, column: 5)
!3631 = !DILocation(line: 984, column: 11, scope: !3630)
!3632 = !DILocation(line: 986, column: 4, scope: !3629)
!3633 = !DILocation(line: 985, column: 2, scope: !3629)
!3634 = !DILocation(line: 992, column: 11, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 992, column: 11)
!3636 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 991, column: 5)
!3637 = !DILocation(line: 992, column: 11, scope: !3636)
!3638 = !DILocation(line: 993, column: 43, scope: !3635)
!3639 = !DILocation(line: 993, column: 2, scope: !3635)
!3640 = !DILocation(line: 0, scope: !3611)
!3641 = !DILocation(line: 997, column: 7, scope: !3573)
!3642 = !DILocation(line: 997, column: 7, scope: !3553)
!3643 = !DILocation(line: 999, column: 7, scope: !3572)
!3644 = !DILocation(line: 1000, column: 18, scope: !3572)
!3645 = !DILocation(line: 1002, column: 7, scope: !3572)
!3646 = !DILocation(line: 1003, column: 12, scope: !3571)
!3647 = !DILocation(line: 1003, column: 11, scope: !3572)
!3648 = !DILocation(line: 1005, column: 37, scope: !3570)
!3649 = !DILocation(line: 0, scope: !3570)
!3650 = !DILocation(line: 1006, column: 26, scope: !3570)
!3651 = !DILocation(line: 1006, column: 4, scope: !3570)
!3652 = !DILocation(line: 1007, column: 26, scope: !3570)
!3653 = !DILocation(line: 1007, column: 4, scope: !3570)
!3654 = !DILocation(line: 1008, column: 2, scope: !3570)
!3655 = !DILocation(line: 1012, column: 7, scope: !3579)
!3656 = !DILocation(line: 1016, column: 11, scope: !3578)
!3657 = !DILocation(line: 1016, column: 11, scope: !3579)
!3658 = !DILocation(line: 1018, column: 8, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 1018, column: 8)
!3660 = !DILocation(line: 1018, column: 8, scope: !3577)
!3661 = !DILocation(line: 1019, column: 6, scope: !3659)
!3662 = !DILocation(line: 1021, column: 42, scope: !3577)
!3663 = !DILocation(line: 1021, column: 4, scope: !3577)
!3664 = !DILocation(line: 1025, column: 16, scope: !3576)
!3665 = !DILocation(line: 1025, column: 15, scope: !3577)
!3666 = !DILocation(line: 1027, column: 41, scope: !3575)
!3667 = !DILocation(line: 0, scope: !3575)
!3668 = !DILocation(line: 1028, column: 30, scope: !3575)
!3669 = !DILocation(line: 1028, column: 8, scope: !3575)
!3670 = !DILocation(line: 1030, column: 30, scope: !3575)
!3671 = !DILocation(line: 1030, column: 8, scope: !3575)
!3672 = !DILocation(line: 1032, column: 6, scope: !3575)
!3673 = !DILocation(line: 1036, column: 3, scope: !3553)
!3674 = distinct !DISubprogram(name: "use_killed_between", scope: !3, file: !3, line: 726, type: !3068, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3675)
!3675 = !{!3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683}
!3676 = !DILocalVariable(name: "use", arg: 1, scope: !3674, file: !3, line: 726, type: !808)
!3677 = !DILocalVariable(name: "def_insn", arg: 2, scope: !3674, file: !3, line: 726, type: !819)
!3678 = !DILocalVariable(name: "target_insn", arg: 3, scope: !3674, file: !3, line: 726, type: !819)
!3679 = !DILocalVariable(name: "def_bb", scope: !3674, file: !3, line: 728, type: !1130)
!3680 = !DILocalVariable(name: "target_bb", scope: !3674, file: !3, line: 729, type: !1130)
!3681 = !DILocalVariable(name: "regno", scope: !3674, file: !3, line: 730, type: !726)
!3682 = !DILocalVariable(name: "def", scope: !3674, file: !3, line: 731, type: !808)
!3683 = !DILocalVariable(name: "x", scope: !3684, file: !3, line: 764, type: !808)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 763, column: 5)
!3685 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 761, column: 7)
!3686 = !DILocation(line: 0, scope: !3674)
!3687 = !DILocation(line: 728, column: 24, scope: !3674)
!3688 = !DILocation(line: 729, column: 27, scope: !3674)
!3689 = !DILocation(line: 739, column: 14, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 739, column: 7)
!3691 = !DILocation(line: 739, column: 7, scope: !3674)
!3692 = !DILocation(line: 740, column: 9, scope: !3690)
!3693 = !DILocation(line: 740, column: 36, scope: !3690)
!3694 = !DILocation(line: 740, column: 33, scope: !3690)
!3695 = !DILocation(line: 739, column: 7, scope: !3690)
!3696 = !DILocation(line: 741, column: 10, scope: !3690)
!3697 = !DILocation(line: 750, column: 9, scope: !3674)
!3698 = !DILocation(line: 749, column: 11, scope: !3674)
!3699 = !DILocation(line: 751, column: 7, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 751, column: 7)
!3701 = !DILocation(line: 752, column: 7, scope: !3700)
!3702 = !DILocation(line: 752, column: 10, scope: !3700)
!3703 = !DILocation(line: 752, column: 32, scope: !3700)
!3704 = !DILocation(line: 753, column: 16, scope: !3700)
!3705 = !DILocation(line: 753, column: 7, scope: !3700)
!3706 = !DILocation(line: 757, column: 7, scope: !3674)
!3707 = !DILocation(line: 758, column: 12, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 757, column: 7)
!3709 = !DILocation(line: 758, column: 5, scope: !3708)
!3710 = !DILocation(line: 761, column: 7, scope: !3685)
!3711 = !DILocation(line: 762, column: 7, scope: !3685)
!3712 = !DILocation(line: 762, column: 10, scope: !3685)
!3713 = !DILocation(line: 762, column: 34, scope: !3685)
!3714 = !DILocation(line: 761, column: 7, scope: !3674)
!3715 = !DILocation(line: 768, column: 11, scope: !3684)
!3716 = !DILocation(line: 0, scope: !3684)
!3717 = !DILocation(line: 769, column: 11, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 769, column: 11)
!3719 = !DILocation(line: 769, column: 13, scope: !3718)
!3720 = !DILocation(line: 769, column: 16, scope: !3718)
!3721 = !DILocation(line: 769, column: 50, scope: !3718)
!3722 = !DILocation(line: 769, column: 47, scope: !3718)
!3723 = !DILocation(line: 769, column: 11, scope: !3684)
!3724 = !DILocation(line: 774, column: 11, scope: !3684)
!3725 = !DILocation(line: 775, column: 11, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 775, column: 11)
!3727 = !DILocation(line: 775, column: 13, scope: !3726)
!3728 = !DILocation(line: 775, column: 16, scope: !3726)
!3729 = !DILocation(line: 775, column: 49, scope: !3726)
!3730 = !DILocation(line: 775, column: 47, scope: !3726)
!3731 = !DILocation(line: 775, column: 11, scope: !3684)
!3732 = !DILocation(line: 778, column: 7, scope: !3684)
!3733 = !DILocation(line: 783, column: 1, scope: !3674)
!3734 = distinct !DISubprogram(name: "local_ref_killed_between_p", scope: !3, file: !3, line: 696, type: !3068, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3735)
!3735 = !{!3736, !3737, !3738, !3739, !3740, !3744}
!3736 = !DILocalVariable(name: "ref", arg: 1, scope: !3734, file: !3, line: 696, type: !808)
!3737 = !DILocalVariable(name: "from", arg: 2, scope: !3734, file: !3, line: 696, type: !819)
!3738 = !DILocalVariable(name: "to", arg: 3, scope: !3734, file: !3, line: 696, type: !819)
!3739 = !DILocalVariable(name: "insn", scope: !3734, file: !3, line: 698, type: !819)
!3740 = !DILocalVariable(name: "def_rec", scope: !3741, file: !3, line: 702, type: !1897)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 701, column: 5)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 700, column: 3)
!3743 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 700, column: 3)
!3744 = !DILocalVariable(name: "def", scope: !3745, file: !3, line: 708, type: !808)
!3745 = distinct !DILexicalBlock(scope: !3746, file: !3, line: 707, column: 2)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !3, line: 706, column: 7)
!3747 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 706, column: 7)
!3748 = !DILocation(line: 0, scope: !3734)
!3749 = !DILocation(line: 0, scope: !3747)
!3750 = !DILocation(line: 0, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 709, column: 8)
!3752 = !DILocation(line: 700, column: 8, scope: !3743)
!3753 = !DILocation(line: 0, scope: !3743)
!3754 = !DILocation(line: 700, column: 26, scope: !3742)
!3755 = !DILocation(line: 700, column: 3, scope: !3743)
!3756 = !DILocation(line: 703, column: 12, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 703, column: 11)
!3758 = !DILocation(line: 703, column: 11, scope: !3741)
!3759 = !DILocation(line: 706, column: 22, scope: !3747)
!3760 = !DILocation(line: 0, scope: !3741)
!3761 = !DILocation(line: 706, column: 12, scope: !3747)
!3762 = !DILocation(line: 706, column: 43, scope: !3746)
!3763 = !DILocation(line: 706, column: 7, scope: !3747)
!3764 = !DILocation(line: 709, column: 8, scope: !3751)
!3765 = !DILocation(line: 709, column: 30, scope: !3751)
!3766 = !DILocation(line: 709, column: 27, scope: !3751)
!3767 = !DILocation(line: 706, column: 60, scope: !3746)
!3768 = !DILocation(line: 706, column: 7, scope: !3746)
!3769 = distinct !{!3769, !3763, !3770}
!3770 = !DILocation(line: 711, column: 2, scope: !3747)
!3771 = !DILocation(line: 700, column: 40, scope: !3742)
!3772 = !DILocation(line: 700, column: 3, scope: !3742)
!3773 = distinct !{!3773, !3755, !3774}
!3774 = !DILocation(line: 712, column: 5, scope: !3743)
!3775 = !DILocation(line: 714, column: 1, scope: !3734)
!3776 = distinct !DISubprogram(name: "single_pred_p", scope: !331, file: !331, line: 634, type: !3777, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3782)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!725, !3779}
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !734, line: 112, baseType: !3780)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!3782 = !{!3783}
!3783 = !DILocalVariable(name: "bb", arg: 1, scope: !3776, file: !331, line: 634, type: !3779)
!3784 = !DILocation(line: 0, scope: !3776)
!3785 = !DILocation(line: 636, column: 10, scope: !3776)
!3786 = !DILocation(line: 636, column: 33, scope: !3776)
!3787 = !DILocation(line: 636, column: 3, scope: !3776)
!3788 = distinct !DISubprogram(name: "single_pred", scope: !331, file: !331, line: 672, type: !3789, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!1130, !3779}
!3791 = !{!3792}
!3792 = !DILocalVariable(name: "bb", arg: 1, scope: !3788, file: !331, line: 672, type: !3779)
!3793 = !DILocation(line: 0, scope: !3788)
!3794 = !DILocation(line: 674, column: 10, scope: !3788)
!3795 = !DILocation(line: 674, column: 33, scope: !3788)
!3796 = !DILocation(line: 674, column: 3, scope: !3788)
!3797 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !331, file: !331, line: 150, type: !3798, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3802)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!7, !3800}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!3802 = !{!3803}
!3803 = !DILocalVariable(name: "vec_", arg: 1, scope: !3797, file: !331, line: 150, type: !3800)
!3804 = !DILocation(line: 0, scope: !3797)
!3805 = !DILocation(line: 150, column: 1, scope: !3797)
!3806 = distinct !DISubprogram(name: "single_pred_edge", scope: !331, file: !331, line: 653, type: !3807, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!1147, !3779}
!3809 = !{!3810}
!3810 = !DILocalVariable(name: "bb", arg: 1, scope: !3806, file: !331, line: 653, type: !3779)
!3811 = !DILocation(line: 0, scope: !3806)
!3812 = !DILocation(line: 655, column: 3, scope: !3806)
!3813 = !DILocation(line: 656, column: 10, scope: !3806)
!3814 = !DILocation(line: 656, column: 3, scope: !3806)
!3815 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !331, file: !331, line: 150, type: !3816, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!1147, !3800, !7}
!3818 = !{!3819, !3820}
!3819 = !DILocalVariable(name: "vec_", arg: 1, scope: !3815, file: !331, line: 150, type: !3800)
!3820 = !DILocalVariable(name: "ix_", arg: 2, scope: !3815, file: !331, line: 150, type: !7)
!3821 = !DILocation(line: 0, scope: !3815)
!3822 = !DILocation(line: 150, column: 1, scope: !3815)
!3823 = distinct !DISubprogram(name: "rhs_regno", scope: !574, file: !574, line: 1051, type: !3824, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3829)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!7, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !734, line: 51, baseType: !3827)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!3829 = !{!3830}
!3830 = !DILocalVariable(name: "x", arg: 1, scope: !3823, file: !574, line: 1051, type: !3826)
!3831 = !DILocation(line: 0, scope: !3823)
!3832 = !DILocation(line: 1053, column: 10, scope: !3823)
!3833 = !DILocation(line: 1053, column: 3, scope: !3823)
!3834 = distinct !DISubprogram(name: "varying_mem_p", scope: !3, file: !3, line: 636, type: !3835, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3837)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!726, !1922, !730}
!3837 = !{!3838, !3839, !3840}
!3838 = !DILocalVariable(name: "body", arg: 1, scope: !3834, file: !3, line: 636, type: !1922)
!3839 = !DILocalVariable(name: "data", arg: 2, scope: !3834, file: !3, line: 636, type: !730)
!3840 = !DILocalVariable(name: "x", scope: !3834, file: !3, line: 638, type: !819)
!3841 = !DILocation(line: 0, scope: !3834)
!3842 = !DILocation(line: 638, column: 11, scope: !3834)
!3843 = !DILocation(line: 639, column: 10, scope: !3834)
!3844 = !DILocation(line: 639, column: 20, scope: !3834)
!3845 = !DILocation(line: 639, column: 3, scope: !3834)
!3846 = distinct !DISubprogram(name: "propagate_rtx_1", scope: !3, file: !3, line: 456, type: !3847, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!725, !1922, !819, !819, !726}
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864}
!3850 = !DILocalVariable(name: "px", arg: 1, scope: !3846, file: !3, line: 456, type: !1922)
!3851 = !DILocalVariable(name: "old_rtx", arg: 2, scope: !3846, file: !3, line: 456, type: !819)
!3852 = !DILocalVariable(name: "new_rtx", arg: 3, scope: !3846, file: !3, line: 456, type: !819)
!3853 = !DILocalVariable(name: "flags", arg: 4, scope: !3846, file: !3, line: 456, type: !726)
!3854 = !DILocalVariable(name: "x", scope: !3846, file: !3, line: 458, type: !819)
!3855 = !DILocalVariable(name: "tem", scope: !3846, file: !3, line: 458, type: !819)
!3856 = !DILocalVariable(name: "op0", scope: !3846, file: !3, line: 458, type: !819)
!3857 = !DILocalVariable(name: "op1", scope: !3846, file: !3, line: 458, type: !819)
!3858 = !DILocalVariable(name: "op2", scope: !3846, file: !3, line: 458, type: !819)
!3859 = !DILocalVariable(name: "code", scope: !3846, file: !3, line: 459, type: !573)
!3860 = !DILocalVariable(name: "mode", scope: !3846, file: !3, line: 460, type: !189)
!3861 = !DILocalVariable(name: "op_mode", scope: !3846, file: !3, line: 461, type: !189)
!3862 = !DILocalVariable(name: "can_appear", scope: !3846, file: !3, line: 462, type: !725)
!3863 = !DILocalVariable(name: "valid_ops", scope: !3846, file: !3, line: 463, type: !725)
!3864 = !DILocalVariable(name: "new_op0", scope: !3865, file: !3, line: 550, type: !819)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 549, column: 2)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 548, column: 11)
!3867 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 485, column: 5)
!3868 = !DILocation(line: 0, scope: !3846)
!3869 = !DILocation(line: 458, column: 11, scope: !3846)
!3870 = !DILocation(line: 458, column: 3, scope: !3846)
!3871 = !DILocation(line: 459, column: 24, scope: !3846)
!3872 = !DILocation(line: 460, column: 28, scope: !3846)
!3873 = !DILocation(line: 462, column: 21, scope: !3846)
!3874 = !DILocation(line: 465, column: 15, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 465, column: 7)
!3876 = !DILocation(line: 465, column: 32, scope: !3875)
!3877 = !DILocation(line: 465, column: 35, scope: !3875)
!3878 = !DILocation(line: 465, column: 45, scope: !3875)
!3879 = !DILocation(line: 465, column: 49, scope: !3875)
!3880 = !DILocation(line: 465, column: 7, scope: !3846)
!3881 = !DILocation(line: 469, column: 14, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 466, column: 5)
!3883 = !DILocation(line: 0, scope: !3882)
!3884 = !DILocation(line: 470, column: 9, scope: !3882)
!3885 = !DILocation(line: 471, column: 9, scope: !3882)
!3886 = !DILocation(line: 469, column: 11, scope: !3882)
!3887 = !DILocation(line: 472, column: 7, scope: !3882)
!3888 = !DILocation(line: 477, column: 9, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 477, column: 7)
!3890 = !DILocation(line: 477, column: 7, scope: !3846)
!3891 = !DILocation(line: 479, column: 11, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 478, column: 5)
!3893 = !DILocation(line: 480, column: 7, scope: !3892)
!3894 = !DILocation(line: 484, column: 11, scope: !3846)
!3895 = !DILocation(line: 484, column: 3, scope: !3846)
!3896 = !DILocation(line: 487, column: 13, scope: !3867)
!3897 = !DILocation(line: 487, column: 11, scope: !3867)
!3898 = !DILocation(line: 488, column: 17, scope: !3867)
!3899 = !DILocation(line: 489, column: 20, scope: !3867)
!3900 = !DILocation(line: 490, column: 11, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 490, column: 11)
!3902 = !DILocation(line: 490, column: 18, scope: !3901)
!3903 = !DILocation(line: 490, column: 15, scope: !3901)
!3904 = !DILocation(line: 490, column: 11, scope: !3867)
!3905 = !DILocation(line: 489, column: 17, scope: !3867)
!3906 = !DILocation(line: 492, column: 13, scope: !3867)
!3907 = !DILocation(line: 493, column: 7, scope: !3867)
!3908 = !DILocation(line: 497, column: 13, scope: !3867)
!3909 = !DILocation(line: 497, column: 11, scope: !3867)
!3910 = !DILocation(line: 498, column: 13, scope: !3867)
!3911 = !DILocation(line: 498, column: 11, scope: !3867)
!3912 = !DILocation(line: 499, column: 20, scope: !3867)
!3913 = !DILocation(line: 499, column: 17, scope: !3867)
!3914 = !DILocation(line: 500, column: 20, scope: !3867)
!3915 = !DILocation(line: 500, column: 17, scope: !3867)
!3916 = !DILocation(line: 501, column: 11, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 501, column: 11)
!3918 = !DILocation(line: 501, column: 18, scope: !3917)
!3919 = !DILocation(line: 501, column: 15, scope: !3917)
!3920 = !DILocation(line: 501, column: 30, scope: !3917)
!3921 = !DILocation(line: 503, column: 51, scope: !3867)
!3922 = !DILocation(line: 501, column: 33, scope: !3917)
!3923 = !DILocation(line: 501, column: 40, scope: !3917)
!3924 = !DILocation(line: 501, column: 37, scope: !3917)
!3925 = !DILocation(line: 501, column: 11, scope: !3867)
!3926 = !DILocation(line: 503, column: 13, scope: !3867)
!3927 = !DILocation(line: 504, column: 7, scope: !3867)
!3928 = !DILocation(line: 508, column: 13, scope: !3867)
!3929 = !DILocation(line: 508, column: 11, scope: !3867)
!3930 = !DILocation(line: 509, column: 13, scope: !3867)
!3931 = !DILocation(line: 509, column: 11, scope: !3867)
!3932 = !DILocation(line: 510, column: 17, scope: !3867)
!3933 = !DILocation(line: 510, column: 32, scope: !3867)
!3934 = !DILocation(line: 0, scope: !3867)
!3935 = !DILocation(line: 511, column: 20, scope: !3867)
!3936 = !DILocation(line: 511, column: 17, scope: !3867)
!3937 = !DILocation(line: 512, column: 20, scope: !3867)
!3938 = !DILocation(line: 512, column: 17, scope: !3867)
!3939 = !DILocation(line: 513, column: 11, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 513, column: 11)
!3941 = !DILocation(line: 513, column: 18, scope: !3940)
!3942 = !DILocation(line: 513, column: 15, scope: !3940)
!3943 = !DILocation(line: 513, column: 30, scope: !3940)
!3944 = !DILocation(line: 515, column: 64, scope: !3867)
!3945 = !DILocation(line: 513, column: 33, scope: !3940)
!3946 = !DILocation(line: 513, column: 40, scope: !3940)
!3947 = !DILocation(line: 513, column: 37, scope: !3940)
!3948 = !DILocation(line: 513, column: 11, scope: !3867)
!3949 = !DILocation(line: 515, column: 13, scope: !3867)
!3950 = !DILocation(line: 516, column: 7, scope: !3867)
!3951 = !DILocation(line: 520, column: 13, scope: !3867)
!3952 = !DILocation(line: 520, column: 11, scope: !3867)
!3953 = !DILocation(line: 521, column: 13, scope: !3867)
!3954 = !DILocation(line: 521, column: 11, scope: !3867)
!3955 = !DILocation(line: 522, column: 13, scope: !3867)
!3956 = !DILocation(line: 522, column: 11, scope: !3867)
!3957 = !DILocation(line: 523, column: 17, scope: !3867)
!3958 = !DILocation(line: 524, column: 20, scope: !3867)
!3959 = !DILocation(line: 524, column: 17, scope: !3867)
!3960 = !DILocation(line: 525, column: 20, scope: !3867)
!3961 = !DILocation(line: 525, column: 17, scope: !3867)
!3962 = !DILocation(line: 526, column: 20, scope: !3867)
!3963 = !DILocation(line: 526, column: 17, scope: !3867)
!3964 = !DILocation(line: 527, column: 11, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 527, column: 11)
!3966 = !DILocation(line: 527, column: 18, scope: !3965)
!3967 = !DILocation(line: 527, column: 15, scope: !3965)
!3968 = !DILocation(line: 527, column: 30, scope: !3965)
!3969 = !DILocation(line: 527, column: 33, scope: !3965)
!3970 = !DILocation(line: 527, column: 40, scope: !3965)
!3971 = !DILocation(line: 527, column: 37, scope: !3965)
!3972 = !DILocation(line: 527, column: 52, scope: !3965)
!3973 = !DILocation(line: 527, column: 55, scope: !3965)
!3974 = !DILocation(line: 527, column: 62, scope: !3965)
!3975 = !DILocation(line: 527, column: 59, scope: !3965)
!3976 = !DILocation(line: 527, column: 11, scope: !3867)
!3977 = !DILocation(line: 529, column: 19, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 529, column: 11)
!3979 = !DILocation(line: 529, column: 11, scope: !3867)
!3980 = !DILocation(line: 530, column: 12, scope: !3978)
!3981 = !DILocation(line: 530, column: 2, scope: !3978)
!3982 = !DILocation(line: 531, column: 61, scope: !3867)
!3983 = !DILocation(line: 531, column: 66, scope: !3867)
!3984 = !DILocation(line: 531, column: 13, scope: !3867)
!3985 = !DILocation(line: 532, column: 7, scope: !3867)
!3986 = !DILocation(line: 536, column: 16, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 536, column: 11)
!3988 = !DILocation(line: 536, column: 11, scope: !3867)
!3989 = !DILocation(line: 538, column: 17, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 537, column: 2)
!3991 = !DILocation(line: 538, column: 15, scope: !3990)
!3992 = !DILocation(line: 539, column: 17, scope: !3990)
!3993 = !DILocation(line: 540, column: 15, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 540, column: 15)
!3995 = !DILocation(line: 540, column: 22, scope: !3994)
!3996 = !DILocation(line: 540, column: 19, scope: !3994)
!3997 = !DILocation(line: 540, column: 15, scope: !3990)
!3998 = !DILocation(line: 539, column: 14, scope: !3990)
!3999 = !DILocation(line: 542, column: 42, scope: !3990)
!4000 = !DILocation(line: 543, column: 10, scope: !3990)
!4001 = !DILocation(line: 542, column: 10, scope: !3990)
!4002 = !DILocation(line: 544, column: 2, scope: !3990)
!4003 = !DILocation(line: 548, column: 16, scope: !3866)
!4004 = !DILocation(line: 548, column: 28, scope: !3866)
!4005 = !DILocation(line: 548, column: 23, scope: !3866)
!4006 = !DILocation(line: 550, column: 4, scope: !3865)
!4007 = !DILocation(line: 551, column: 10, scope: !3865)
!4008 = !DILocation(line: 551, column: 8, scope: !3865)
!4009 = !DILocation(line: 554, column: 28, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 554, column: 8)
!4011 = !DILocation(line: 554, column: 9, scope: !4010)
!4012 = !DILocation(line: 554, column: 8, scope: !3865)
!4013 = !DILocation(line: 557, column: 28, scope: !3865)
!4014 = !DILocation(line: 557, column: 20, scope: !3865)
!4015 = !DILocation(line: 0, scope: !3865)
!4016 = !DILocation(line: 557, column: 18, scope: !3865)
!4017 = !DILocation(line: 557, column: 8, scope: !3865)
!4018 = !DILocation(line: 559, column: 12, scope: !3865)
!4019 = !DILocation(line: 558, column: 17, scope: !3865)
!4020 = !DILocation(line: 558, column: 14, scope: !3865)
!4021 = !DILocation(line: 562, column: 9, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 562, column: 8)
!4023 = !DILocation(line: 563, column: 8, scope: !4022)
!4024 = !DILocation(line: 563, column: 11, scope: !4022)
!4025 = !DILocation(line: 563, column: 22, scope: !4022)
!4026 = !DILocation(line: 563, column: 19, scope: !4022)
!4027 = !DILocation(line: 564, column: 8, scope: !4022)
!4028 = !DILocation(line: 564, column: 13, scope: !4022)
!4029 = !DILocation(line: 564, column: 35, scope: !4022)
!4030 = !DILocation(line: 564, column: 32, scope: !4022)
!4031 = !DILocation(line: 565, column: 6, scope: !4022)
!4032 = !DILocation(line: 565, column: 9, scope: !4022)
!4033 = !DILocation(line: 565, column: 28, scope: !4022)
!4034 = !DILocation(line: 562, column: 8, scope: !3865)
!4035 = !DILocation(line: 568, column: 4, scope: !3865)
!4036 = !DILocation(line: 571, column: 10, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 571, column: 8)
!4038 = !DILocation(line: 571, column: 26, scope: !4037)
!4039 = !DILocation(line: 571, column: 29, scope: !4037)
!4040 = !DILocation(line: 572, column: 8, scope: !4037)
!4041 = !DILocation(line: 572, column: 36, scope: !4037)
!4042 = !DILocation(line: 572, column: 41, scope: !4037)
!4043 = !DILocation(line: 572, column: 50, scope: !4037)
!4044 = !DILocation(line: 573, column: 8, scope: !4037)
!4045 = !DILocation(line: 574, column: 15, scope: !4037)
!4046 = !DILocation(line: 572, column: 12, scope: !4037)
!4047 = !DILocation(line: 571, column: 8, scope: !3865)
!4048 = !DILocation(line: 577, column: 39, scope: !3865)
!4049 = !DILocation(line: 577, column: 10, scope: !3865)
!4050 = !DILocation(line: 578, column: 2, scope: !3866)
!4051 = !DILocation(line: 580, column: 16, scope: !3866)
!4052 = !DILocation(line: 582, column: 17, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 581, column: 2)
!4054 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 580, column: 16)
!4055 = !DILocation(line: 582, column: 15, scope: !4053)
!4056 = !DILocation(line: 583, column: 17, scope: !4053)
!4057 = !DILocation(line: 583, column: 15, scope: !4053)
!4058 = !DILocation(line: 588, column: 51, scope: !4053)
!4059 = !DILocation(line: 588, column: 4, scope: !4053)
!4060 = !DILocation(line: 589, column: 17, scope: !4053)
!4061 = !DILocation(line: 590, column: 15, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 590, column: 15)
!4063 = !DILocation(line: 590, column: 22, scope: !4062)
!4064 = !DILocation(line: 590, column: 19, scope: !4062)
!4065 = !DILocation(line: 590, column: 34, scope: !4062)
!4066 = !DILocation(line: 590, column: 37, scope: !4062)
!4067 = !DILocation(line: 590, column: 44, scope: !4062)
!4068 = !DILocation(line: 590, column: 41, scope: !4062)
!4069 = !DILocation(line: 590, column: 15, scope: !4053)
!4070 = !DILocation(line: 594, column: 8, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 594, column: 8)
!4072 = !DILocation(line: 594, column: 23, scope: !4071)
!4073 = !DILocation(line: 594, column: 31, scope: !4071)
!4074 = !DILocation(line: 594, column: 47, scope: !4071)
!4075 = !DILocation(line: 594, column: 62, scope: !4071)
!4076 = !DILocation(line: 594, column: 34, scope: !4071)
!4077 = !DILocation(line: 594, column: 8, scope: !4053)
!4078 = !DILocation(line: 597, column: 12, scope: !4071)
!4079 = !DILocation(line: 595, column: 12, scope: !4071)
!4080 = !DILocation(line: 595, column: 6, scope: !4071)
!4081 = !DILocation(line: 0, scope: !4071)
!4082 = !DILocation(line: 602, column: 11, scope: !4053)
!4083 = !DILocation(line: 602, column: 4, scope: !4053)
!4084 = !DILocation(line: 607, column: 8, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 607, column: 8)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 606, column: 2)
!4087 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 605, column: 16)
!4088 = !DILocation(line: 607, column: 8, scope: !4086)
!4089 = !DILocation(line: 609, column: 19, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 608, column: 6)
!4091 = !DILocation(line: 610, column: 15, scope: !4090)
!4092 = !DILocation(line: 620, column: 11, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 620, column: 7)
!4094 = !DILocation(line: 620, column: 7, scope: !3846)
!4095 = !DILocation(line: 623, column: 7, scope: !3846)
!4096 = !DILocation(line: 628, column: 10, scope: !3846)
!4097 = !DILocation(line: 628, column: 23, scope: !3846)
!4098 = !DILocation(line: 628, column: 20, scope: !3846)
!4099 = !DILocation(line: 628, column: 37, scope: !3846)
!4100 = !DILocation(line: 628, column: 34, scope: !3846)
!4101 = !DILocation(line: 628, column: 3, scope: !3846)
!4102 = !DILocation(line: 629, column: 1, scope: !3846)
!4103 = distinct !DISubprogram(name: "can_simplify_addr", scope: !3, file: !3, line: 323, type: !4104, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!725, !819}
!4106 = !{!4107, !4108}
!4107 = !DILocalVariable(name: "addr", arg: 1, scope: !4103, file: !3, line: 323, type: !819)
!4108 = !DILocalVariable(name: "reg", scope: !4103, file: !3, line: 325, type: !819)
!4109 = !DILocation(line: 0, scope: !4103)
!4110 = !DILocation(line: 327, column: 7, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 327, column: 7)
!4112 = !DILocation(line: 327, column: 7, scope: !4103)
!4113 = !DILocation(line: 330, column: 7, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 330, column: 7)
!4115 = !DILocation(line: 330, column: 23, scope: !4114)
!4116 = !DILocation(line: 330, column: 7, scope: !4103)
!4117 = !DILocation(line: 331, column: 11, scope: !4114)
!4118 = !DILocation(line: 335, column: 12, scope: !4103)
!4119 = !DILocation(line: 331, column: 5, scope: !4114)
!4120 = !DILocation(line: 0, scope: !4114)
!4121 = !DILocation(line: 336, column: 4, scope: !4103)
!4122 = !DILocation(line: 336, column: 8, scope: !4103)
!4123 = !DILocation(line: 336, column: 20, scope: !4103)
!4124 = !DILocation(line: 337, column: 8, scope: !4103)
!4125 = !DILocation(line: 337, column: 11, scope: !4103)
!4126 = !DILocation(line: 337, column: 23, scope: !4103)
!4127 = !DILocation(line: 338, column: 8, scope: !4103)
!4128 = !DILocation(line: 338, column: 11, scope: !4103)
!4129 = !DILocation(line: 338, column: 23, scope: !4103)
!4130 = !DILocation(line: 335, column: 3, scope: !4103)
!4131 = !DILocation(line: 339, column: 1, scope: !4103)
!4132 = distinct !DISubprogram(name: "canonicalize_address", scope: !3, file: !3, line: 349, type: !4133, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4135)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !819}
!4135 = !{!4136, !4137}
!4136 = !DILocalVariable(name: "x", arg: 1, scope: !4132, file: !3, line: 349, type: !819)
!4137 = !DILocalVariable(name: "shift", scope: !4138, file: !3, line: 359, type: !768)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 358, column: 4)
!4139 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 355, column: 13)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 353, column: 7)
!4141 = distinct !DILexicalBlock(scope: !4142, file: !3, line: 351, column: 3)
!4142 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 351, column: 3)
!4143 = !DILocation(line: 0, scope: !4132)
!4144 = !DILocation(line: 351, column: 3, scope: !4132)
!4145 = !DILocation(line: 352, column: 13, scope: !4141)
!4146 = !DILocation(line: 352, column: 5, scope: !4141)
!4147 = !DILocation(line: 355, column: 13, scope: !4139)
!4148 = !DILocation(line: 356, column: 13, scope: !4139)
!4149 = !DILocation(line: 356, column: 16, scope: !4139)
!4150 = !DILocation(line: 356, column: 39, scope: !4139)
!4151 = !DILocation(line: 356, column: 37, scope: !4139)
!4152 = !DILocation(line: 357, column: 13, scope: !4139)
!4153 = !DILocation(line: 357, column: 37, scope: !4139)
!4154 = !DILocation(line: 355, column: 13, scope: !4140)
!4155 = !DILocation(line: 0, scope: !4138)
!4156 = !DILocation(line: 360, column: 6, scope: !4138)
!4157 = !DILocation(line: 361, column: 52, scope: !4138)
!4158 = !DILocation(line: 361, column: 20, scope: !4138)
!4159 = !DILocation(line: 361, column: 18, scope: !4138)
!4160 = !DILocation(line: 363, column: 4, scope: !4138)
!4161 = !DILocation(line: 365, column: 6, scope: !4140)
!4162 = !DILocation(line: 366, column: 9, scope: !4140)
!4163 = !DILocation(line: 369, column: 13, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 369, column: 13)
!4165 = !DILocation(line: 369, column: 36, scope: !4164)
!4166 = !DILocation(line: 370, column: 6, scope: !4164)
!4167 = !DILocation(line: 370, column: 32, scope: !4164)
!4168 = !DILocation(line: 371, column: 6, scope: !4164)
!4169 = !DILocation(line: 371, column: 32, scope: !4164)
!4170 = !DILocation(line: 369, column: 13, scope: !4140)
!4171 = !DILocation(line: 372, column: 4, scope: !4164)
!4172 = !DILocation(line: 374, column: 6, scope: !4140)
!4173 = !DILocation(line: 375, column: 9, scope: !4140)
!4174 = !DILocation(line: 378, column: 6, scope: !4140)
!4175 = !DILocation(line: 379, column: 9, scope: !4140)
!4176 = !DILocation(line: 382, column: 9, scope: !4140)
!4177 = !DILocation(line: 0, scope: !4140)
!4178 = !DILocation(line: 351, column: 3, scope: !4141)
!4179 = distinct !{!4179, !4180, !4181}
!4180 = !DILocation(line: 351, column: 3, scope: !4142)
!4181 = !DILocation(line: 383, column: 7, scope: !4142)
!4182 = distinct !DISubprogram(name: "should_replace_address", scope: !3, file: !3, line: 390, type: !4183, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4186)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!725, !819, !819, !189, !4185, !725}
!4185 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_space_t", file: !734, line: 73, baseType: !725)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192}
!4187 = !DILocalVariable(name: "old_rtx", arg: 1, scope: !4182, file: !3, line: 390, type: !819)
!4188 = !DILocalVariable(name: "new_rtx", arg: 2, scope: !4182, file: !3, line: 390, type: !819)
!4189 = !DILocalVariable(name: "mode", arg: 3, scope: !4182, file: !3, line: 390, type: !189)
!4190 = !DILocalVariable(name: "as", arg: 4, scope: !4182, file: !3, line: 391, type: !4185)
!4191 = !DILocalVariable(name: "speed", arg: 5, scope: !4182, file: !3, line: 391, type: !725)
!4192 = !DILocalVariable(name: "gain", scope: !4182, file: !3, line: 393, type: !726)
!4193 = !DILocation(line: 0, scope: !4182)
!4194 = !DILocation(line: 395, column: 7, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 395, column: 7)
!4196 = !DILocation(line: 396, column: 7, scope: !4195)
!4197 = !DILocation(line: 396, column: 11, scope: !4195)
!4198 = !DILocation(line: 395, column: 7, scope: !4182)
!4199 = !DILocation(line: 400, column: 7, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 400, column: 7)
!4201 = !DILocation(line: 400, column: 23, scope: !4200)
!4202 = !DILocation(line: 400, column: 26, scope: !4200)
!4203 = !DILocation(line: 400, column: 7, scope: !4182)
!4204 = !DILocation(line: 404, column: 11, scope: !4182)
!4205 = !DILocation(line: 405, column: 6, scope: !4182)
!4206 = !DILocation(line: 405, column: 4, scope: !4182)
!4207 = !DILocation(line: 411, column: 12, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 411, column: 7)
!4209 = !DILocation(line: 411, column: 7, scope: !4182)
!4210 = !DILocation(line: 412, column: 12, scope: !4208)
!4211 = !DILocation(line: 412, column: 45, scope: !4208)
!4212 = !DILocation(line: 412, column: 43, scope: !4208)
!4213 = !DILocation(line: 412, column: 5, scope: !4208)
!4214 = !DILocation(line: 414, column: 16, scope: !4182)
!4215 = !DILocation(line: 414, column: 10, scope: !4182)
!4216 = !DILocation(line: 414, column: 3, scope: !4182)
!4217 = !DILocation(line: 415, column: 1, scope: !4182)
!4218 = distinct !DISubprogram(name: "update_df", scope: !3, file: !3, line: 897, type: !4219, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{null, !819, !1922, !1897, !716, !726}
!4221 = !{!4222, !4223, !4224, !4225, !4226, !4227, !4228, !4230, !4231, !4232, !4233, !4234, !4235}
!4222 = !DILocalVariable(name: "insn", arg: 1, scope: !4218, file: !3, line: 897, type: !819)
!4223 = !DILocalVariable(name: "loc", arg: 2, scope: !4218, file: !3, line: 897, type: !1922)
!4224 = !DILocalVariable(name: "use_rec", arg: 3, scope: !4218, file: !3, line: 897, type: !1897)
!4225 = !DILocalVariable(name: "type", arg: 4, scope: !4218, file: !3, line: 897, type: !716)
!4226 = !DILocalVariable(name: "new_flags", arg: 5, scope: !4218, file: !3, line: 898, type: !726)
!4227 = !DILocalVariable(name: "changed", scope: !4218, file: !3, line: 900, type: !725)
!4228 = !DILocalVariable(name: "use", scope: !4229, file: !3, line: 905, type: !808)
!4229 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 904, column: 5)
!4230 = !DILocalVariable(name: "orig_use", scope: !4229, file: !3, line: 906, type: !808)
!4231 = !DILocalVariable(name: "new_use", scope: !4229, file: !3, line: 906, type: !808)
!4232 = !DILocalVariable(name: "width", scope: !4229, file: !3, line: 907, type: !726)
!4233 = !DILocalVariable(name: "offset", scope: !4229, file: !3, line: 908, type: !726)
!4234 = !DILocalVariable(name: "mode", scope: !4229, file: !3, line: 909, type: !189)
!4235 = !DILocalVariable(name: "new_loc", scope: !4229, file: !3, line: 910, type: !1922)
!4236 = !DILocation(line: 0, scope: !4218)
!4237 = !DILocation(line: 0, scope: !4229)
!4238 = !DILocation(line: 903, column: 3, scope: !4218)
!4239 = !DILocation(line: 903, column: 10, scope: !4218)
!4240 = !DILocation(line: 910, column: 44, scope: !4229)
!4241 = !DILocation(line: 910, column: 22, scope: !4229)
!4242 = !DILocation(line: 911, column: 14, scope: !4229)
!4243 = !DILocation(line: 913, column: 12, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 913, column: 11)
!4245 = !DILocation(line: 913, column: 11, scope: !4229)
!4246 = distinct !{!4246, !4238, !4247}
!4247 = !DILocation(line: 934, column: 5, scope: !4218)
!4248 = !DILocation(line: 916, column: 11, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 916, column: 11)
!4250 = !DILocation(line: 916, column: 11, scope: !4229)
!4251 = !DILocation(line: 918, column: 12, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 917, column: 2)
!4253 = !DILocation(line: 919, column: 13, scope: !4252)
!4254 = !DILocation(line: 920, column: 11, scope: !4252)
!4255 = !DILocation(line: 921, column: 2, scope: !4252)
!4256 = !DILocation(line: 925, column: 32, scope: !4229)
!4257 = !DILocation(line: 926, column: 17, scope: !4229)
!4258 = !DILocation(line: 927, column: 17, scope: !4229)
!4259 = !DILocation(line: 927, column: 41, scope: !4229)
!4260 = !DILocation(line: 925, column: 17, scope: !4229)
!4261 = !DILocation(line: 931, column: 7, scope: !4229)
!4262 = !DILocation(line: 932, column: 7, scope: !4229)
!4263 = !DILocation(line: 935, column: 7, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 935, column: 7)
!4265 = !DILocation(line: 935, column: 7, scope: !4218)
!4266 = !DILocation(line: 936, column: 5, scope: !4264)
!4267 = !DILocation(line: 937, column: 1, scope: !4218)
!4268 = distinct !DISubprogram(name: "find_occurrence", scope: !3, file: !3, line: 877, type: !4269, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!1922, !1922, !819}
!4271 = !{!4272, !4273, !4274}
!4272 = !DILocalVariable(name: "px", arg: 1, scope: !4268, file: !3, line: 877, type: !1922)
!4273 = !DILocalVariable(name: "find", arg: 2, scope: !4268, file: !3, line: 877, type: !819)
!4274 = !DILocalVariable(name: "data", scope: !4268, file: !3, line: 879, type: !1957)
!4275 = !DILocation(line: 0, scope: !4268)
!4276 = !DILocation(line: 879, column: 3, scope: !4268)
!4277 = !DILocation(line: 881, column: 3, scope: !4268)
!4278 = !DILocation(line: 885, column: 8, scope: !4268)
!4279 = !DILocation(line: 885, column: 13, scope: !4268)
!4280 = !DILocation(line: 886, column: 8, scope: !4268)
!4281 = !DILocation(line: 886, column: 15, scope: !4268)
!4282 = !DILocation(line: 887, column: 3, scope: !4268)
!4283 = !DILocation(line: 888, column: 15, scope: !4268)
!4284 = !DILocation(line: 889, column: 1, scope: !4268)
!4285 = !DILocation(line: 888, column: 3, scope: !4268)
!4286 = distinct !DISubprogram(name: "find_occurrence_callback", scope: !3, file: !3, line: 859, type: !3835, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4287)
!4287 = !{!4288, !4289, !4290, !4291, !4292}
!4288 = !DILocalVariable(name: "px", arg: 1, scope: !4286, file: !3, line: 859, type: !1922)
!4289 = !DILocalVariable(name: "data", arg: 2, scope: !4286, file: !3, line: 859, type: !730)
!4290 = !DILocalVariable(name: "fod", scope: !4286, file: !3, line: 861, type: !1956)
!4291 = !DILocalVariable(name: "x", scope: !4286, file: !3, line: 862, type: !819)
!4292 = !DILocalVariable(name: "find", scope: !4286, file: !3, line: 863, type: !819)
!4293 = !DILocation(line: 0, scope: !4286)
!4294 = !DILocation(line: 862, column: 11, scope: !4286)
!4295 = !DILocation(line: 863, column: 19, scope: !4286)
!4296 = !DILocation(line: 865, column: 9, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 865, column: 7)
!4298 = !DILocation(line: 865, column: 7, scope: !4286)
!4299 = !DILocation(line: 867, column: 12, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 866, column: 5)
!4301 = !DILocation(line: 867, column: 19, scope: !4300)
!4302 = !DILocation(line: 868, column: 7, scope: !4300)
!4303 = !DILocation(line: 872, column: 1, scope: !4286)
!4304 = distinct !DISubprogram(name: "free_load_extend", scope: !3, file: !3, line: 1045, type: !3278, scopeLine: 1046, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4305)
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311}
!4306 = !DILocalVariable(name: "src", arg: 1, scope: !4304, file: !3, line: 1045, type: !819)
!4307 = !DILocalVariable(name: "insn", arg: 2, scope: !4304, file: !3, line: 1045, type: !819)
!4308 = !DILocalVariable(name: "reg", scope: !4304, file: !3, line: 1047, type: !819)
!4309 = !DILocalVariable(name: "use_vec", scope: !4304, file: !3, line: 1048, type: !1897)
!4310 = !DILocalVariable(name: "use", scope: !4304, file: !3, line: 1049, type: !808)
!4311 = !DILocalVariable(name: "def", scope: !4304, file: !3, line: 1049, type: !808)
!4312 = !DILocation(line: 0, scope: !4304)
!4313 = !DILocation(line: 1055, column: 5, scope: !4304)
