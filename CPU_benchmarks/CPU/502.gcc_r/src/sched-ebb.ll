; ModuleID = 'sched-ebb.bc'
source_filename = "sched-ebb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gcov_ctr_summary = type opaque
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type { %struct.eh_region_d*, %struct.VEC_eh_region_gc*, %struct.VEC_eh_landing_pad_gc*, %struct.htab*, %struct.VEC_tree_gc*, %union.eh_status_u }
%struct.eh_region_d = type { %struct.eh_region_d*, %struct.eh_region_d*, %struct.eh_region_d*, i32, i32, %union.eh_region_u, %struct.eh_landing_pad_d*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.eh_landing_pad_d = type { %struct.eh_landing_pad_d*, %struct.eh_region_d*, %union.tree_node*, %struct.rtx_def*, i32 }
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
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.common_sched_info_def = type { void (i32, i32, i32)*, void (%struct.basic_block_def*, %struct.basic_block_def*)*, i32 (%struct.basic_block_def*)*, i32 (%struct.rtx_def*)*, i32 }
%struct.sched_deps_info_def = type { void (%struct.rtx_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*)*, void (%struct.rtx_def*)*, void ()*, void (%struct.rtx_def*)*, void ()*, void (%struct.rtx_def*)*, void ()*, void (i32)*, void (i32)*, void (i32)*, void (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, i8 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.haifa_sched_info = type { void ()*, i32 (%struct.rtx_def*)*, i32 ()*, i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, i8* (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, %struct.rtx_def*)*, i8 (%struct.rtx_def*)*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8, i32, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, %struct.basic_block_def* (%struct.basic_block_def*, %struct.rtx_def*)*, i32 }
%struct.VEC_haifa_insn_data_def_heap = type { %struct.VEC_haifa_insn_data_def_base }
%struct.VEC_haifa_insn_data_def_base = type { i32, i32, [1 x %struct._haifa_insn_data] }
%struct._haifa_insn_data = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.basic_block_def*, %struct.rtx_def*, %struct.reg_pressure_data*, i32*, %struct.reg_use_data*, %struct.reg_set_data*, i32 }
%struct.reg_pressure_data = type { i32 }
%struct.reg_use_data = type { i32, %struct.rtx_def*, %struct.reg_use_data*, %struct.reg_use_data* }
%struct.reg_set_data = type { i32, %struct.rtx_def*, %struct.reg_set_data* }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void ()*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, void ()*, void ()*, i32 ()*, i32 (%struct.rtx_def*)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32, i32, i32*)*, i8 (%struct._dep*, i32, i32)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def*, i32, i32)*, void ()*, i8* ()*, void (i8*, i8)*, void (i8*)*, void (i8*)*, void (i8*)*, i32 (%struct.rtx_def*, i32, %struct.rtx_def**)*, i8 (i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, i8 (%struct.rtx_def*)*, void (%struct.spec_info_def*)*, i32 (%struct.rtx_def*)*, i32 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i32 (%struct.ddg*)* }
%struct._dep = type { %struct.rtx_def*, %struct.rtx_def*, i32, i32 }
%struct.spec_info_def = type { i32, %struct._IO_FILE*, i32, i32, i32 }
%struct.ddg = type opaque
%struct.vectorize = type { %union.tree_node* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (i32, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (i8)*, i8 (%union.tree_node*, i8)*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (i32, %union.tree_node*, i32, i8)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.addr_space = type { i32 (i8)*, i32 (i8)*, i8 (i32, i8)*, i8 (i32, %struct.rtx_def*, i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i8)*, i8 (i8, i8)*, %struct.rtx_def* (%struct.rtx_def*, %union.tree_node*, %union.tree_node*)* }
%struct.stdarg_info = type opaque
%union.gimple_statement_d = type opaque
%struct.calls = type { i32 (%union.tree_node*, i32, i32*, %union.tree_node*, i32)*, i8 (%union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, i32)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, %struct.rtx_def* ()*, void (%struct.ix86_args*, i32, %union.tree_node*, i32*, i32)*, i8 (%struct.ix86_args*)*, i8 (%struct.ix86_args*)*, i8 (%union.tree_node*)*, i8 (i32, %union.tree_node*)*, i8 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i32 (%struct.ix86_args*, i32, %union.tree_node*, i8)*, i8* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %struct.rtx_def* (%union.tree_node*, %union.tree_node*, i8)*, %struct.rtx_def* (i32, %struct.rtx_def*)*, %struct.rtx_def* ()*, void ()*, %struct.rtx_def* ()*, i8 ()*, %struct.rtx_def* (%union.tree_node*, i8)*, void (%struct.rtx_def*, %union.tree_node*, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)* }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.secondary_reload_info = type { i32, i32, %struct.secondary_reload_info*, i32 }
%struct.c = type { i32 (i8)* }
%struct.cxx = type { %union.tree_node* ()*, i8 ()*, %union.tree_node* (%union.tree_node*)*, i8 ()*, i32 (%union.tree_node*, i32)*, i8 ()*, i8 ()*, void (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void (%union.tree_node*)* }
%struct.emutls = type { i8*, i8*, i8*, i8*, i8*, i8*, %union.tree_node* (%union.tree_node*, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i8, i8 }
%struct.target_option_hooks = type { i8 (%union.tree_node*, %union.tree_node*, %union.tree_node*, i32)*, void (%struct.cl_target_option*)*, void (%struct.cl_target_option*)*, void (%struct._IO_FILE*, i32, %struct.cl_target_option*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)* }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct._dep_link = type { %struct._dep_node*, %struct._dep_link*, %struct._dep_link** }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.deps = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, %struct.deps_reg*, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.deps_reg = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32 }
%struct._sd_iterator = type { i32, %struct.rtx_def*, %struct._dep_link**, i8 }
%struct._deps_list = type { %struct._dep_link*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@profile_info = external dso_local local_unnamed_addr global %struct.gcov_ctr_summary*, align 8
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@ebb_common_sched_info = internal global %struct.common_sched_info_def zeroinitializer, align 8, !dbg !0
@haifa_common_sched_info = external dso_local constant %struct.common_sched_info_def, align 8
@common_sched_info = external dso_local local_unnamed_addr global %struct.common_sched_info_def*, align 8
@ebb_sched_deps_info = internal global %struct.sched_deps_info_def { void (%struct.rtx_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*)* @ebb_compute_jump_reg_dependencies, void (%struct.rtx_def*)* null, void ()* null, void (%struct.rtx_def*)* null, void ()* null, void (%struct.rtx_def*)* null, void ()* null, void (i32)* null, void (i32)* null, void (i32)* null, void (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)* null, void (%struct.rtx_def*, i32)* null, i8 1 }, align 8, !dbg !1768
@sched_deps_info = external dso_local local_unnamed_addr global %struct.sched_deps_info_def*, align 8
@ebb_sched_info = internal global %struct.haifa_sched_info { void ()* @init_ready_list, i32 (%struct.rtx_def*)* null, i32 ()* @schedule_more_p, i32 (%struct.rtx_def*, i32)* null, i32 (%struct.rtx_def*, %struct.rtx_def*)* @rank, i8* (%struct.rtx_def*, i32)* @ebb_print_insn, i32 (%struct.rtx_def*, %struct.rtx_def*)* @ebb_contributes_to_priority, i8 (%struct.rtx_def*)* null, %struct.rtx_def* null, %struct.rtx_def* null, %struct.rtx_def* null, %struct.rtx_def* null, i8 1, i32 0, void (%struct.rtx_def*, i32)* @ebb_add_remove_insn, void (%struct.rtx_def*, %struct.rtx_def*)* @begin_schedule_ready, %struct.basic_block_def* (%struct.basic_block_def*, %struct.rtx_def*)* @advance_target_bb, i32 24 }, align 8, !dbg !1807
@current_sched_info = external dso_local local_unnamed_addr global %struct.haifa_sched_info*, align 8
@dont_calc_deps = internal global %struct.bitmap_head_def zeroinitializer, align 8, !dbg !1765
@reload_completed = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@sched_rgn_n_insns = internal unnamed_addr global i32 0, align 4, !dbg !1859
@sched_verbose = external dso_local local_unnamed_addr global i32, align 4
@rgn_n_insns = internal unnamed_addr global i32 0, align 4, !dbg !1861
@.str.2 = private unnamed_addr constant [12 x i8] c"sched-ebb.c\00", align 1
@sched_dump = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c";;   --------------- forward dependences: ------------ \0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\0A;;   --- EBB Dependences --- from bb%d to bb%d \0A\00", align 1
@ebb_print_insn.tmp = internal global [80 x i8] zeroinitializer, align 16, !dbg !1863
@.str.5 = private unnamed_addr constant [6 x i8] c"+ %4d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"  %4d\00", align 1
@last_bb = internal unnamed_addr global %struct.basic_block_def* null, align 8, !dbg !1872
@sched_init_only_bb = external dso_local local_unnamed_addr global void (%struct.basic_block_def*, %struct.basic_block_def*)*, align 8
@h_i_d = external dso_local local_unnamed_addr global %struct.VEC_haifa_insn_data_def_heap*, align 8
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@haifa_recovery_bb_ever_added_p = external dso_local local_unnamed_addr global i8, align 1
@flag_schedule_speculative_load = external dso_local local_unnamed_addr global i32, align 4
@spec_info = external dso_local local_unnamed_addr global %struct.spec_info_def*, align 8
@sd_iterator_start.null_link = internal global %struct._dep_link* null, align 8, !dbg !1874

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1933 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1946, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1947, metadata !DIExpression()), !dbg !1948
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1949
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1950
  ret i32 %call, !dbg !1951
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1952 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1954
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1955
  ret i32 %call, !dbg !1956
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1957 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2012, metadata !DIExpression()), !dbg !2013
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2014
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2014
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2014
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2014
  %cmp = icmp uge i8* %0, %1, !dbg !2014
  %conv1 = zext i1 %cmp to i64, !dbg !2014
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2014
  %tobool = icmp eq i64 %expval, 0, !dbg !2014
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2014

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2014
  br label %cond.end, !dbg !2014

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2014
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2014
  %2 = load i8, i8* %0, align 1, !dbg !2014
  %conv3 = zext i8 %2 to i32, !dbg !2014
  br label %cond.end, !dbg !2014

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2014
  ret i32 %cond, !dbg !2015
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2016 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2018, metadata !DIExpression()), !dbg !2019
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2020
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2020
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2020
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2020
  %cmp = icmp uge i8* %0, %1, !dbg !2020
  %conv1 = zext i1 %cmp to i64, !dbg !2020
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2020
  %tobool = icmp eq i64 %expval, 0, !dbg !2020
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2020

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2020
  br label %cond.end, !dbg !2020

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2020
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2020
  %2 = load i8, i8* %0, align 1, !dbg !2020
  %conv3 = zext i8 %2 to i32, !dbg !2020
  br label %cond.end, !dbg !2020

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2020
  ret i32 %cond, !dbg !2021
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2022 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2023
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2023
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2023
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2023
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2023
  %cmp = icmp uge i8* %1, %2, !dbg !2023
  %conv1 = zext i1 %cmp to i64, !dbg !2023
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2023
  %tobool = icmp eq i64 %expval, 0, !dbg !2023
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2023

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2023
  br label %cond.end, !dbg !2023

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2023
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2023
  %3 = load i8, i8* %1, align 1, !dbg !2023
  %conv3 = zext i8 %3 to i32, !dbg !2023
  br label %cond.end, !dbg !2023

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2023
  ret i32 %cond, !dbg !2024
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2025 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2029, metadata !DIExpression()), !dbg !2030
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2031
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2032
  ret i32 %call, !dbg !2033
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2034 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2039, metadata !DIExpression()), !dbg !2040
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2041
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2041
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2041
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2041
  %cmp = icmp uge i8* %0, %1, !dbg !2041
  %conv1 = zext i1 %cmp to i64, !dbg !2041
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2041
  %tobool = icmp eq i64 %expval, 0, !dbg !2041
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2041

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2041
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2041
  br label %cond.end, !dbg !2041

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2041
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2041
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2041
  store i8 %conv2, i8* %0, align 1, !dbg !2041
  %conv6 = and i32 %__c, 255, !dbg !2041
  br label %cond.end, !dbg !2041

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2041
  ret i32 %cond, !dbg !2042
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2043 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2045, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2046, metadata !DIExpression()), !dbg !2047
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2048
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2048
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2048
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2048
  %cmp = icmp uge i8* %0, %1, !dbg !2048
  %conv1 = zext i1 %cmp to i64, !dbg !2048
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2048
  %tobool = icmp eq i64 %expval, 0, !dbg !2048
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2048

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2048
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2048
  br label %cond.end, !dbg !2048

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2048
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2048
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2048
  store i8 %conv2, i8* %0, align 1, !dbg !2048
  %conv6 = and i32 %__c, 255, !dbg !2048
  br label %cond.end, !dbg !2048

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2048
  ret i32 %cond, !dbg !2049
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2050 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2052, metadata !DIExpression()), !dbg !2053
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2054
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2054
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2054
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2054
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2054
  %cmp = icmp uge i8* %1, %2, !dbg !2054
  %conv1 = zext i1 %cmp to i64, !dbg !2054
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2054
  %tobool = icmp eq i64 %expval, 0, !dbg !2054
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2054

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2054
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2054
  br label %cond.end, !dbg !2054

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2054
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2054
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2054
  store i8 %conv4, i8* %1, align 1, !dbg !2054
  %conv6 = and i32 %__c, 255, !dbg !2054
  br label %cond.end, !dbg !2054

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2054
  ret i32 %cond, !dbg !2055
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2056 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2062, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2064, metadata !DIExpression()), !dbg !2065
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2066
  ret i64 %call, !dbg !2067
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2068 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2070, metadata !DIExpression()), !dbg !2071
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2072
  %0 = load i32, i32* %_flags, align 8, !dbg !2072
  %and = lshr i32 %0, 4, !dbg !2072
  %and.lobit = and i32 %and, 1, !dbg !2072
  ret i32 %and.lobit, !dbg !2073
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2074 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2076, metadata !DIExpression()), !dbg !2077
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2078
  %0 = load i32, i32* %_flags, align 8, !dbg !2078
  %and = lshr i32 %0, 5, !dbg !2078
  %and.lobit = and i32 %and, 1, !dbg !2078
  ret i32 %and.lobit, !dbg !2079
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2080 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2083, metadata !DIExpression()), !dbg !2084
  %__c.off = add i32 %__c, 128, !dbg !2085
  %0 = icmp ult i32 %__c.off, 384, !dbg !2085
  br i1 %0, label %cond.true, label %cond.end, !dbg !2085

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2086
  %1 = load i32*, i32** %call, align 8, !dbg !2087
  %idxprom = sext i32 %__c to i64, !dbg !2088
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2088
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2088
  br label %cond.end, !dbg !2089

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2089
  ret i32 %cond, !dbg !2090
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2091 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2093, metadata !DIExpression()), !dbg !2094
  %__c.off = add i32 %__c, 128, !dbg !2095
  %0 = icmp ult i32 %__c.off, 384, !dbg !2095
  br i1 %0, label %cond.true, label %cond.end, !dbg !2095

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2096
  %1 = load i32*, i32** %call, align 8, !dbg !2097
  %idxprom = sext i32 %__c to i64, !dbg !2098
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2098
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2098
  br label %cond.end, !dbg !2099

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2099
  ret i32 %cond, !dbg !2100
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2101 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2106, metadata !DIExpression()), !dbg !2107
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2108
  %conv = trunc i64 %call to i32, !dbg !2109
  ret i32 %conv, !dbg !2110
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2111 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2115, metadata !DIExpression()), !dbg !2116
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2117
  ret i64 %call, !dbg !2118
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2119 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2124, metadata !DIExpression()), !dbg !2125
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2126
  ret i64 %call, !dbg !2127
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2128 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2134, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2135, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2136, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2137, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2138, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64 0, metadata !2139, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2140, metadata !DIExpression()), !dbg !2144
  br label %while.cond, !dbg !2145

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2146
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2144
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2140, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2139, metadata !DIExpression()), !dbg !2144
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2147
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2145

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2148
  %div = lshr i64 %add, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %div, metadata !2141, metadata !DIExpression()), !dbg !2144
  %mul = mul i64 %div, %__size, !dbg !2151
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2152
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2142, metadata !DIExpression()), !dbg !2144
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %call, metadata !2143, metadata !DIExpression()), !dbg !2144
  %cmp1 = icmp slt i32 %call, 0, !dbg !2154
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2156

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2157
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2159

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2139, metadata !DIExpression()), !dbg !2144
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2144
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2144
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2140, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2139, metadata !DIExpression()), !dbg !2144
  br label %while.cond, !dbg !2145, !llvm.loop !2161

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2144
  ret i8* %retval.0, !dbg !2163
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2164 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2170, metadata !DIExpression()), !dbg !2171
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2172
  ret double %call, !dbg !2173
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2174 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2183, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2184, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 %base, metadata !2185, metadata !DIExpression()), !dbg !2186
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2187
  ret i64 %call, !dbg !2188
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2189 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2195, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i32 %base, metadata !2197, metadata !DIExpression()), !dbg !2198
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2199
  ret i64 %call, !dbg !2200
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2201 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2212, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2213, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i32 %base, metadata !2214, metadata !DIExpression()), !dbg !2215
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2216
  ret i64 %call, !dbg !2217
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2218 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2223, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %base, metadata !2224, metadata !DIExpression()), !dbg !2225
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2226
  ret i64 %call, !dbg !2227
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2228 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2268, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2269, metadata !DIExpression()), !dbg !2270
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2271
  ret i32 %call, !dbg !2272
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2273 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2276, metadata !DIExpression()), !dbg !2277
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2278
  ret i32 %call, !dbg !2279
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2280 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2284, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2285, metadata !DIExpression()), !dbg !2286
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2287
  ret i32 %call, !dbg !2288
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2289 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2293, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2294, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2295, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2296, metadata !DIExpression()), !dbg !2297
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2298
  ret i32 %call, !dbg !2299
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2300 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2304, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2306, metadata !DIExpression()), !dbg !2307
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2306, metadata !DIExpression(DW_OP_deref)), !dbg !2307
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2308
  ret i32 %call, !dbg !2309
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2310 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2314, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2315, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2316, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2317, metadata !DIExpression()), !dbg !2318
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2317, metadata !DIExpression(DW_OP_deref)), !dbg !2318
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2319
  ret i32 %call, !dbg !2320
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2321 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2345, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2346, metadata !DIExpression()), !dbg !2347
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2348
  ret i32 %call, !dbg !2349
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2350 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2352, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2353, metadata !DIExpression()), !dbg !2354
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2355
  ret i32 %call, !dbg !2356
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2357 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2362, metadata !DIExpression()), !dbg !2363
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2364
  ret i32 %call, !dbg !2365
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2366 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2370, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2371, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2372, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2373, metadata !DIExpression()), !dbg !2374
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2375
  ret i32 %call, !dbg !2376
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ebb_compute_jump_reg_dependencies(%struct.rtx_def* %insn, %struct.bitmap_head_def* %cond_set, %struct.bitmap_head_def* %used, %struct.bitmap_head_def* %set) #5 !dbg !2377 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2379, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %cond_set, metadata !2380, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %used, metadata !2381, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %set, metadata !2382, metadata !DIExpression()), !dbg !2392
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !2393
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !2393
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2393
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2383, metadata !DIExpression()), !dbg !2392
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !2394
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2394
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2395
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2395
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2396
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2396
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 1, !dbg !2396
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2396
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2396
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2396
  store i32 %5, i32* %4, align 8, !dbg !2396
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2396
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2396
  store %struct.VEC_edge_gc** %7, %struct.VEC_edge_gc*** %6, align 8, !dbg !2396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !2396
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2396
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2398
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2398
  br label %for.cond, !dbg !2396

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %8, align 8, !dbg !2400
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2400
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2384, metadata !DIExpression(DW_OP_deref)), !dbg !2392
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %10, %struct.VEC_edge_gc** %11, %struct.edge_def** nonnull %e) #8, !dbg !2400
  %tobool = icmp eq i8 %call1, 0, !dbg !2396
  br i1 %tobool, label %for.end, label %for.body, !dbg !2396

for.body:                                         ; preds = %for.cond
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2401
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !2384, metadata !DIExpression()), !dbg !2392
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 7, !dbg !2403
  %13 = load i32, i32* %flags, align 8, !dbg !2403
  %and = and i32 %13, 1, !dbg !2404
  %tobool2 = icmp eq i32 %and, 0, !dbg !2404
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !2384, metadata !DIExpression()), !dbg !2392
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 1, !dbg !2405
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2405
  %call3 = call %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def* %14) #6, !dbg !2405
  br i1 %tobool2, label %if.else, label %if.then, !dbg !2406

if.then:                                          ; preds = %for.body
  call void @bitmap_and(%struct.bitmap_head_def* %set, %struct.bitmap_head_def* %call3, %struct.bitmap_head_def* %cond_set) #6, !dbg !2407
  br label %for.inc, !dbg !2407

if.else:                                          ; preds = %for.body
  %call6 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %used, %struct.bitmap_head_def* %call3) #6, !dbg !2408
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2385, metadata !DIExpression(DW_OP_deref)), !dbg !2392
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2400
  br label %for.cond, !dbg !2400, !llvm.loop !2409

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2411
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2411
  ret void, !dbg !2411
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2412 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2416, metadata !DIExpression()), !dbg !2418
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2419
  store i32 0, i32* %index, align 8, !dbg !2420
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2421
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2422
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2423
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2423
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2423
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2424 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2430, metadata !DIExpression()), !dbg !2431
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2432
  %tobool = icmp eq i8 %call, 0, !dbg !2432
  br i1 %tobool, label %if.then, label %if.else, !dbg !2434

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2435
  br label %return, !dbg !2437

if.else:                                          ; preds = %entry
  br label %return, !dbg !2438

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2440
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2440
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2440
  ret i8 %retval.0, !dbg !2441
}

declare dso_local void @bitmap_and(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2442 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2447, metadata !DIExpression()), !dbg !2448
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2449
  %0 = load i32, i32* %index, align 8, !dbg !2449
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2449
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2449
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !2449
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2449
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2449

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2449
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2449
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !2449
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2449
  br label %cond.end, !dbg !2449

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2449
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2449
  %cmp = icmp ult i32 %0, %call2, !dbg !2449
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2449

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2449
  br label %cond.end5, !dbg !2449

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2450
  %inc = add i32 %5, 1, !dbg !2450
  store i32 %inc, i32* %index, align 8, !dbg !2450
  ret void, !dbg !2451
}

; Function Attrs: nounwind uwtable
define dso_local void @schedule_ebbs() local_unnamed_addr #5 !dbg !2452 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !2466
  %tobool = icmp ne %struct.gcov_ctr_summary* %0, null, !dbg !2466
  %1 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !2468
  %tobool1 = icmp ne i32 %1, 0, !dbg !2468
  %or.cond = and i1 %tobool, %tobool1, !dbg !2469
  %2 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2470
  br i1 %or.cond, label %if.then, label %if.else, !dbg !2469

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %2, i64 51, i32 1, !dbg !2471
  br label %if.end, !dbg !2472

if.else:                                          ; preds = %entry
  %value3 = getelementptr inbounds %struct.param_info, %struct.param_info* %2, i64 52, i32 1, !dbg !2473
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %probability_cutoff.0.in = phi i32* [ %value, %if.then ], [ %value3, %if.else ]
  %probability_cutoff.0 = load i32, i32* %probability_cutoff.0.in, align 8, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %probability_cutoff.0, metadata !2455, metadata !DIExpression()), !dbg !2474
  %mul = mul nsw i32 %probability_cutoff.0, 100, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2455, metadata !DIExpression()), !dbg !2474
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2476
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2476
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2476
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 3, !dbg !2476
  %5 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2476
  %cmp = icmp eq i32 %5, 2, !dbg !2478
  br i1 %cmp, label %cleanup.cont99, label %if.end5, !dbg !2479

if.end5:                                          ; preds = %if.end
  %call = tail call i8* @memcpy(i8* bitcast (%struct.common_sched_info_def* @ebb_common_sched_info to i8*), i8* bitcast (%struct.common_sched_info_def* @haifa_common_sched_info to i8*), i64 40) #6, !dbg !2480
  store void (i32, i32, i32)* @ebb_fix_recovery_cfg, void (i32, i32, i32)** getelementptr inbounds (%struct.common_sched_info_def, %struct.common_sched_info_def* @ebb_common_sched_info, i64 0, i32 0), align 8, !dbg !2482
  store void (%struct.basic_block_def*, %struct.basic_block_def*)* @ebb_add_block, void (%struct.basic_block_def*, %struct.basic_block_def*)** getelementptr inbounds (%struct.common_sched_info_def, %struct.common_sched_info_def* @ebb_common_sched_info, i64 0, i32 1), align 8, !dbg !2483
  store i32 2, i32* getelementptr inbounds (%struct.common_sched_info_def, %struct.common_sched_info_def* @ebb_common_sched_info, i64 0, i32 4), align 8, !dbg !2484
  store %struct.common_sched_info_def* @ebb_common_sched_info, %struct.common_sched_info_def** @common_sched_info, align 8, !dbg !2485
  store %struct.sched_deps_info_def* @ebb_sched_deps_info, %struct.sched_deps_info_def** @sched_deps_info, align 8, !dbg !2486
  store %struct.haifa_sched_info* @ebb_sched_info, %struct.haifa_sched_info** @current_sched_info, align 8, !dbg !2487
  tail call void @haifa_sched_init() #6, !dbg !2488
  tail call void @compute_bb_for_insn() #6, !dbg !2489
  tail call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* nonnull @dont_calc_deps, %struct.bitmap_obstack* null) #8, !dbg !2490
  tail call void @bitmap_clear(%struct.bitmap_head_def* nonnull @dont_calc_deps) #6, !dbg !2491
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2492
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !2492
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !2492
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 0, !dbg !2492
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2492
  %9 = bitcast %struct.edge_def** %e to i8*, !dbg !2493
  %10 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2493
  %11 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2494
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2494
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2494
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2496
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2496
  br label %for.cond, !dbg !2492

for.cond:                                         ; preds = %while.end, %if.end5
  %16 = phi %struct.control_flow_graph* [ %7, %if.end5 ], [ %.pre1, %while.end ], !dbg !2498
  %.pn = phi %struct.basic_block_def* [ %8, %if.end5 ], [ %call88, %while.end ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2499
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2499
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2454, metadata !DIExpression()), !dbg !2474
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %16, i64 0, i32 1, !dbg !2498
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2498
  %cmp10 = icmp eq %struct.basic_block_def* %bb.0, %17, !dbg !2498
  br i1 %cmp10, label %for.end91, label %for.body, !dbg !2492

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2500
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2500
  %18 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2500
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %18, i64 0, i32 0, !dbg !2500
  %19 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2500
  call void @llvm.dbg.value(metadata %struct.rtx_def* %19, metadata !2457, metadata !DIExpression()), !dbg !2501
  br label %for.cond11, !dbg !2502

for.cond11:                                       ; preds = %cleanup.for.cond11_crit_edge, %for.body
  %20 = phi %struct.basic_block_def* [ %17, %for.body ], [ %.pre5, %cleanup.for.cond11_crit_edge ], !dbg !2503
  %21 = phi %struct.rtl_bb_info* [ %18, %for.body ], [ %.pre2, %cleanup.for.cond11_crit_edge ], !dbg !2505
  %bb.1 = phi %struct.basic_block_def* [ %bb.0, %for.body ], [ %bb.2, %cleanup.for.cond11_crit_edge ], !dbg !2492
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2454, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !2506
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !2507
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %21, i64 0, i32 1, !dbg !2505
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2505
  call void @llvm.dbg.value(metadata %struct.rtx_def* %22, metadata !2456, metadata !DIExpression()), !dbg !2474
  %next_bb14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 6, !dbg !2508
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb14, align 8, !dbg !2508
  %cmp18 = icmp eq %struct.basic_block_def* %23, %20, !dbg !2509
  br i1 %cmp18, label %cleanup, label %lor.lhs.false, !dbg !2510

lor.lhs.false:                                    ; preds = %for.cond11
  %il20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 7, !dbg !2511
  %24 = bitcast %union.basic_block_il_dependent* %il20 to i32***, !dbg !2511
  %25 = load i32**, i32*** %24, align 8, !dbg !2511
  %26 = load i32*, i32** %25, align 8, !dbg !2511
  %bf.load = load i32, i32* %26, align 8, !dbg !2511
  %bf.clear = and i32 %bf.load, 65535, !dbg !2511
  %cmp23 = icmp eq i32 %bf.clear, 12, !dbg !2511
  br i1 %cmp23, label %cleanup, label %if.end25, !dbg !2512

if.end25:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #7, !dbg !2513
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !2513
  %call26 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2513
  %27 = extractvalue { i32, %struct.VEC_edge_gc** } %call26, 0, !dbg !2513
  store i32 %27, i32* %12, align 8, !dbg !2513
  %28 = extractvalue { i32, %struct.VEC_edge_gc** } %call26, 1, !dbg !2513
  store %struct.VEC_edge_gc** %28, %struct.VEC_edge_gc*** %13, align 8, !dbg !2513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 8 %11, i64 16, i1 false), !dbg !2513
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #7, !dbg !2513
  br label %for.cond27, !dbg !2513

for.cond27:                                       ; preds = %for.inc, %if.end25
  %29 = load i32, i32* %14, align 8, !dbg !2514
  %30 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %15, align 8, !dbg !2514
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2461, metadata !DIExpression(DW_OP_deref)), !dbg !2493
  %call28 = call fastcc zeroext i8 @ei_cond(i32 %29, %struct.VEC_edge_gc** %30, %struct.edge_def** nonnull %e) #8, !dbg !2514
  %tobool29 = icmp eq i8 %call28, 0, !dbg !2513
  br i1 %tobool29, label %for.cond27.for.end_crit_edge, label %for.body30, !dbg !2513

for.cond27.for.end_crit_edge:                     ; preds = %for.cond27
  %.pre6 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2515
  br label %for.end, !dbg !2513

for.body30:                                       ; preds = %for.cond27
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2517
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !2461, metadata !DIExpression()), !dbg !2493
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i64 0, i32 7, !dbg !2519
  %32 = load i32, i32* %flags, align 8, !dbg !2519
  %and = and i32 %32, 1, !dbg !2520
  %cmp31 = icmp eq i32 %and, 0, !dbg !2521
  br i1 %cmp31, label %for.inc, label %for.end.loopexit, !dbg !2522

for.inc:                                          ; preds = %for.body30
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2465, metadata !DIExpression(DW_OP_deref)), !dbg !2493
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2514
  br label %for.cond27, !dbg !2514, !llvm.loop !2523

for.end.loopexit:                                 ; preds = %for.body30
  %.lcssa = phi %struct.edge_def* [ %31, %for.body30 ], !dbg !2517
  br label %for.end, !dbg !2515

for.end:                                          ; preds = %for.end.loopexit, %for.cond27.for.end_crit_edge
  %33 = phi %struct.edge_def* [ %.pre6, %for.cond27.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !2515
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2461, metadata !DIExpression()), !dbg !2493
  %tobool34 = icmp eq %struct.edge_def* %33, null, !dbg !2515
  br i1 %tobool34, label %cleanup, label %if.end36, !dbg !2525

if.end36:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !2461, metadata !DIExpression()), !dbg !2493
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i64 0, i32 8, !dbg !2526
  %34 = load i32, i32* %probability, align 4, !dbg !2526
  %cmp37 = icmp sgt i32 %34, %mul, !dbg !2528
  br i1 %cmp37, label %if.end39, label %cleanup, !dbg !2529

if.end39:                                         ; preds = %if.end36
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb14, align 8, !dbg !2530
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %35, metadata !2454, metadata !DIExpression()), !dbg !2474
  br label %cleanup, !dbg !2531

cleanup:                                          ; preds = %if.end36, %for.end, %for.cond11, %lor.lhs.false, %if.end39
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end39 ], [ false, %lor.lhs.false ], [ false, %for.cond11 ], [ false, %for.end ], [ false, %if.end36 ]
  %bb.2 = phi %struct.basic_block_def* [ %35, %if.end39 ], [ %bb.1, %lor.lhs.false ], [ %bb.1, %for.cond11 ], [ %bb.1, %for.end ], [ %bb.1, %if.end36 ], !dbg !2499
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !2454, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !2531
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !2531
  br i1 %cleanup.dest.slot.0, label %cleanup.for.cond11_crit_edge, label %while.cond.preheader, !llvm.loop !2532

cleanup.for.cond11_crit_edge:                     ; preds = %cleanup
  %il12.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 7, !dbg !2493
  %rtl13.phi.trans.insert = bitcast %union.basic_block_il_dependent* %il12.phi.trans.insert to %struct.rtl_bb_info**, !dbg !2493
  %.pre2 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl13.phi.trans.insert, align 8, !dbg !2505
  %.pre3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2503
  %cfg16.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre3, i64 0, i32 1, !dbg !2535
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg16.phi.trans.insert, align 8, !dbg !2503
  %x_exit_block_ptr17.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre4, i64 0, i32 1, !dbg !2535
  %.pre5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr17.phi.trans.insert, align 8, !dbg !2503
  br label %for.cond11

while.cond.preheader:                             ; preds = %cleanup
  %.lcssa8 = phi %struct.rtx_def* [ %22, %cleanup ], !dbg !2505
  br label %while.cond, !dbg !2536

while.cond:                                       ; preds = %while.cond.preheader, %if.end87
  %head.0 = phi %struct.rtx_def* [ %head.2, %if.end87 ], [ %19, %while.cond.preheader ], !dbg !2501
  %tail.0 = phi %struct.rtx_def* [ %tail.2, %if.end87 ], [ %.lcssa8, %while.cond.preheader ], !dbg !2537
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail.0, metadata !2456, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head.0, metadata !2457, metadata !DIExpression()), !dbg !2501
  %cmp43 = icmp eq %struct.rtx_def* %head.0, %tail.0, !dbg !2538
  br i1 %cmp43, label %while.end, label %while.body, !dbg !2536

while.body:                                       ; preds = %while.cond
  %36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %head.0, i64 0, i32 0, !dbg !2539
  %bf.load44 = load i32, i32* %36, align 8, !dbg !2539
  %bf.clear45 = and i32 %bf.load44, 65535, !dbg !2539
  %cmp46 = icmp eq i32 %bf.clear45, 13, !dbg !2539
  br i1 %cmp46, label %if.then55, label %lor.lhs.false47, !dbg !2542

lor.lhs.false47:                                  ; preds = %while.body
  %cmp50 = icmp eq i32 %bf.clear45, 7, !dbg !2543
  br i1 %cmp50, label %land.lhs.true51, label %if.else57, !dbg !2543

land.lhs.true51:                                  ; preds = %lor.lhs.false47
  %bf.clear53 = and i32 %bf.load44, 67108864, !dbg !2543
  %tobool54 = icmp eq i32 %bf.clear53, 0, !dbg !2543
  br i1 %tobool54, label %if.then55, label %if.else57, !dbg !2544

if.then55:                                        ; preds = %land.lhs.true51, %while.body
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %head.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2545
  %rt_rtx = bitcast %union.rtunion_def* %37 to %struct.rtx_def**, !dbg !2545
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2545
  call void @llvm.dbg.value(metadata %struct.rtx_def* %38, metadata !2457, metadata !DIExpression()), !dbg !2501
  br label %if.end87, !dbg !2546

if.else57:                                        ; preds = %land.lhs.true51, %lor.lhs.false47
  %39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tail.0, i64 0, i32 0, !dbg !2547
  %bf.load58 = load i32, i32* %39, align 8, !dbg !2547
  %bf.clear59 = and i32 %bf.load58, 65535, !dbg !2547
  %cmp60 = icmp eq i32 %bf.clear59, 13, !dbg !2547
  br i1 %cmp60, label %if.then70, label %lor.lhs.false61, !dbg !2549

lor.lhs.false61:                                  ; preds = %if.else57
  %cmp64 = icmp eq i32 %bf.clear59, 7, !dbg !2550
  br i1 %cmp64, label %land.lhs.true65, label %if.else75, !dbg !2550

land.lhs.true65:                                  ; preds = %lor.lhs.false61
  %bf.clear68 = and i32 %bf.load58, 67108864, !dbg !2550
  %tobool69 = icmp eq i32 %bf.clear68, 0, !dbg !2550
  br i1 %tobool69, label %if.then70, label %if.else75, !dbg !2551

if.then70:                                        ; preds = %land.lhs.true65, %if.else57
  %40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tail.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2552
  %rt_rtx74 = bitcast %union.rtunion_def* %40 to %struct.rtx_def**, !dbg !2552
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx74, align 8, !dbg !2552
  call void @llvm.dbg.value(metadata %struct.rtx_def* %41, metadata !2456, metadata !DIExpression()), !dbg !2474
  br label %if.end87, !dbg !2553

if.else75:                                        ; preds = %land.lhs.true65, %lor.lhs.false61
  %cmp78 = icmp eq i32 %bf.clear45, 12, !dbg !2554
  br i1 %cmp78, label %if.then79, label %while.end, !dbg !2556

if.then79:                                        ; preds = %if.else75
  %42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %head.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2557
  %rt_rtx83 = bitcast %union.rtunion_def* %42 to %struct.rtx_def**, !dbg !2557
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx83, align 8, !dbg !2557
  call void @llvm.dbg.value(metadata %struct.rtx_def* %43, metadata !2457, metadata !DIExpression()), !dbg !2501
  br label %if.end87

if.end87:                                         ; preds = %if.then70, %if.then79, %if.then55
  %head.2 = phi %struct.rtx_def* [ %38, %if.then55 ], [ %head.0, %if.then70 ], [ %43, %if.then79 ], !dbg !2501
  %tail.2 = phi %struct.rtx_def* [ %tail.0, %if.then55 ], [ %41, %if.then70 ], [ %tail.0, %if.then79 ], !dbg !2501
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail.2, metadata !2456, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head.2, metadata !2457, metadata !DIExpression()), !dbg !2501
  br label %while.cond, !dbg !2536, !llvm.loop !2558

while.end:                                        ; preds = %while.cond, %if.else75
  %head.0.lcssa = phi %struct.rtx_def* [ %head.0, %while.cond ], [ %head.0, %if.else75 ], !dbg !2501
  %tail.0.lcssa = phi %struct.rtx_def* [ %tail.0, %while.cond ], [ %tail.0, %if.else75 ], !dbg !2537
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail.0.lcssa, metadata !2456, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail.0.lcssa, metadata !2456, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail.0.lcssa, metadata !2456, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail.0.lcssa, metadata !2456, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head.0.lcssa, metadata !2457, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail.0.lcssa, metadata !2456, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail.0.lcssa, metadata !2456, metadata !DIExpression()), !dbg !2474
  %call88 = call fastcc %struct.basic_block_def* @schedule_ebb(%struct.rtx_def* %head.0.lcssa, %struct.rtx_def* %tail.0.lcssa) #8, !dbg !2560
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call88, metadata !2454, metadata !DIExpression()), !dbg !2474
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2498
  %cfg9.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2561
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9.phi.trans.insert, align 8, !dbg !2498
  br label %for.cond, !dbg !2498, !llvm.loop !2562

for.end91:                                        ; preds = %for.cond
  call void @bitmap_clear(%struct.bitmap_head_def* nonnull @dont_calc_deps) #6, !dbg !2564
  %44 = load i32, i32* @reload_completed, align 4, !dbg !2565
  %tobool92 = icmp eq i32 %44, 0, !dbg !2565
  br i1 %tobool92, label %if.end94, label %if.then93, !dbg !2567

if.then93:                                        ; preds = %for.end91
  call void @reposition_prologue_and_epilogue_notes() #6, !dbg !2568
  br label %if.end94, !dbg !2568

if.end94:                                         ; preds = %for.end91, %if.then93
  call void @haifa_sched_finish() #6, !dbg !2569
  br label %cleanup.cont99, !dbg !2570

cleanup.cont99:                                   ; preds = %if.end94, %if.end
  ret void, !dbg !2570
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ebb_fix_recovery_cfg(i32 %bbi, i32 %jump_bbi, i32 %jump_bb_nexti) #5 !dbg !2571 {
entry:
  call void @llvm.dbg.value(metadata i32 %bbi, metadata !2573, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %jump_bbi, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %jump_bb_nexti, metadata !2575, metadata !DIExpression()), !dbg !2576
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2577
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 9, !dbg !2577
  %1 = load i32, i32* %index, align 8, !dbg !2577
  %cmp = icmp eq i32 %1, %bbi, !dbg !2577
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2577

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 700, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2577
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2578
  %index1.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pre, i64 0, i32 9, !dbg !2580
  %.pre1 = load i32, i32* %index1.phi.trans.insert, align 8, !dbg !2581
  br label %cond.end, !dbg !2577

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i32 [ %1, %entry ], [ %.pre1, %cond.true ], !dbg !2581
  %cmp2 = icmp eq i32 %2, %jump_bb_nexti, !dbg !2582
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2583

if.then:                                          ; preds = %cond.end
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2584
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2584
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2584
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 2, !dbg !2584
  %5 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2584
  %tobool = icmp eq %struct.VEC_basic_block_gc* %5, null, !dbg !2584
  br i1 %tobool, label %cond.end8, label %cond.true3, !dbg !2584

cond.true3:                                       ; preds = %if.then
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %5, i64 0, i32 0, !dbg !2584
  br label %cond.end8, !dbg !2584

cond.end8:                                        ; preds = %if.then, %cond.true3
  %cond9 = phi %struct.VEC_basic_block_base* [ %base, %cond.true3 ], [ null, %if.then ], !dbg !2584
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond9, i32 %jump_bbi) #8, !dbg !2584
  store %struct.basic_block_def* %call, %struct.basic_block_def** @last_bb, align 8, !dbg !2585
  br label %if.end, !dbg !2586

if.end:                                           ; preds = %cond.end8, %cond.end
  ret void, !dbg !2587
}

; Function Attrs: nounwind uwtable
define internal void @ebb_add_block(%struct.basic_block_def* %bb, %struct.basic_block_def* %after) #5 !dbg !2588 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %after, metadata !2591, metadata !DIExpression()), !dbg !2592
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2593
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2593
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2593
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !2593
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2593
  %cmp = icmp eq %struct.basic_block_def* %2, %after, !dbg !2595
  br i1 %cmp, label %if.then, label %if.else, !dbg !2596

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2597
  %3 = load i32, i32* %index, align 8, !dbg !2597
  %call = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* nonnull @dont_calc_deps, i32 %3) #6, !dbg !2598
  br label %if.end3, !dbg !2598

if.else:                                          ; preds = %entry
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2599
  %cmp1 = icmp eq %struct.basic_block_def* %4, %after, !dbg !2601
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2602

if.then2:                                         ; preds = %if.else
  store %struct.basic_block_def* %bb, %struct.basic_block_def** @last_bb, align 8, !dbg !2603
  br label %if.end3, !dbg !2604

if.end3:                                          ; preds = %if.else, %if.then2, %if.then
  ret void, !dbg !2605
}

declare dso_local void @haifa_sched_init() local_unnamed_addr #2

declare dso_local void @compute_bb_for_insn() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* %head, %struct.bitmap_obstack* %obstack) unnamed_addr #0 !dbg !2606 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* @dont_calc_deps, metadata !2610, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* null, metadata !2611, metadata !DIExpression()), !dbg !2612
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** getelementptr inbounds (%struct.bitmap_head_def, %struct.bitmap_head_def* @dont_calc_deps, i64 0, i32 1), align 8, !dbg !2613
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** getelementptr inbounds (%struct.bitmap_head_def, %struct.bitmap_head_def* @dont_calc_deps, i64 0, i32 0), align 8, !dbg !2614
  store %struct.bitmap_obstack* null, %struct.bitmap_obstack** getelementptr inbounds (%struct.bitmap_head_def, %struct.bitmap_head_def* @dont_calc_deps, i64 0, i32 3), align 8, !dbg !2615
  ret void, !dbg !2616
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @schedule_ebb(%struct.rtx_def* %head, %struct.rtx_def* %tail) unnamed_addr #5 !dbg !2617 {
entry:
  %target_bb = alloca %struct.basic_block_def*, align 8
  %tmp_deps = alloca %struct.deps, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head, metadata !2621, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail, metadata !2622, metadata !DIExpression()), !dbg !2657
  %0 = bitcast %struct.basic_block_def** %target_bb to i8*, !dbg !2658
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2658
  %1 = bitcast %struct.deps* %tmp_deps to i8*, !dbg !2659
  call void @llvm.lifetime.start.p0i8(i64 184, i8* nonnull %1) #7, !dbg !2659
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %head, i64 0, i32 1, i32 0, i32 1, !dbg !2660
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !2660
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2660
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !2623, metadata !DIExpression()), !dbg !2657
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tail, i64 0, i32 1, i32 0, i32 1, !dbg !2661
  %3 = bitcast %struct.object_block** %arrayidx3 to i64*, !dbg !2661
  %4 = load i64, i64* %3, align 8, !dbg !2661
  store i64 %4, i64* bitcast (%struct.basic_block_def** @last_bb to i64*), align 8, !dbg !2662
  %call = tail call i32 @no_real_insns_p(%struct.rtx_def* %head, %struct.rtx_def* %tail) #6, !dbg !2663
  %tobool = icmp eq i32 %call, 0, !dbg !2663
  br i1 %tobool, label %if.end, label %if.then, !dbg !2665

if.then:                                          ; preds = %entry
  %rt_bb8 = bitcast %struct.object_block** %arrayidx3 to %struct.basic_block_def**, !dbg !2666
  br label %cleanup, !dbg !2667

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %head, i64 0, i32 0, !dbg !2668
  %bf.load = load i32, i32* %5, align 8, !dbg !2668
  %bf.clear = and i32 %bf.load, 65535, !dbg !2668
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !2668
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !2668

lor.lhs.false:                                    ; preds = %if.end
  %cmp11 = icmp eq i32 %bf.clear, 7, !dbg !2668
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false12, !dbg !2668

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %cmp15 = icmp eq i32 %bf.clear, 9, !dbg !2668
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false16, !dbg !2668

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %cmp19 = icmp eq i32 %bf.clear, 10, !dbg !2668
  br i1 %cmp19, label %land.lhs.true, label %cond.true, !dbg !2668

land.lhs.true:                                    ; preds = %lor.lhs.false16, %lor.lhs.false12, %lor.lhs.false, %if.end
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tail, i64 0, i32 0, !dbg !2668
  %bf.load20 = load i32, i32* %6, align 8, !dbg !2668
  %bf.clear21 = and i32 %bf.load20, 65535, !dbg !2668
  %cmp22 = icmp eq i32 %bf.clear21, 8, !dbg !2668
  br i1 %cmp22, label %cond.end, label %lor.lhs.false23, !dbg !2668

lor.lhs.false23:                                  ; preds = %land.lhs.true
  %cmp26 = icmp eq i32 %bf.clear21, 7, !dbg !2668
  br i1 %cmp26, label %cond.end, label %lor.lhs.false27, !dbg !2668

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %cmp30 = icmp eq i32 %bf.clear21, 9, !dbg !2668
  br i1 %cmp30, label %cond.end, label %lor.lhs.false31, !dbg !2668

lor.lhs.false31:                                  ; preds = %lor.lhs.false27
  %cmp34 = icmp eq i32 %bf.clear21, 10, !dbg !2668
  br i1 %cmp34, label %cond.end, label %cond.true, !dbg !2668

cond.true:                                        ; preds = %lor.lhs.false31, %lor.lhs.false16
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 474, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2668
  br label %cond.end, !dbg !2668

cond.end:                                         ; preds = %land.lhs.true, %lor.lhs.false23, %lor.lhs.false27, %lor.lhs.false31, %cond.true
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !2669
  %7 = load i32, i32* %index, align 8, !dbg !2669
  %call35 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull @dont_calc_deps, i32 %7) #6, !dbg !2671
  %tobool36 = icmp eq i32 %call35, 0, !dbg !2671
  br i1 %tobool36, label %if.then37, label %if.else, !dbg !2672

if.then37:                                        ; preds = %cond.end
  tail call void @init_deps_global() #6, !dbg !2673
  call void @llvm.dbg.value(metadata %struct.deps* %tmp_deps, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2657
  call void @init_deps(%struct.deps* nonnull %tmp_deps, i8 zeroext 0) #6, !dbg !2675
  call void @llvm.dbg.value(metadata %struct.deps* %tmp_deps, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2657
  call void @sched_analyze(%struct.deps* nonnull %tmp_deps, %struct.rtx_def* %head, %struct.rtx_def* %tail) #6, !dbg !2676
  call void @llvm.dbg.value(metadata %struct.deps* %tmp_deps, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2657
  call void @free_deps(%struct.deps* nonnull %tmp_deps) #6, !dbg !2677
  call fastcc void @add_deps_for_risky_insns(%struct.rtx_def* %head, %struct.rtx_def* %tail) #8, !dbg !2678
  %8 = load void (%struct.rtx_def*, %struct.rtx_def*)*, void (%struct.rtx_def*, %struct.rtx_def*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 1, i32 10), align 8, !dbg !2679
  %tobool38 = icmp eq void (%struct.rtx_def*, %struct.rtx_def*)* %8, null, !dbg !2681
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !2682

if.then39:                                        ; preds = %if.then37
  call void %8(%struct.rtx_def* %head, %struct.rtx_def* %tail) #6, !dbg !2683
  br label %if.end40, !dbg !2683

if.end40:                                         ; preds = %if.then37, %if.then39
  call void @finish_deps_global() #6, !dbg !2684
  br label %if.end46, !dbg !2685

if.else:                                          ; preds = %cond.end
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2686
  %cmp41 = icmp eq %struct.basic_block_def* %2, %9, !dbg !2686
  br i1 %cmp41, label %if.end46, label %cond.true42, !dbg !2686

cond.true42:                                      ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 495, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2686
  br label %if.end46, !dbg !2686

if.end46:                                         ; preds = %cond.true42, %if.else, %if.end40
  %10 = load %struct.haifa_sched_info*, %struct.haifa_sched_info** @current_sched_info, align 8, !dbg !2687
  %sched_max_insns_priority = getelementptr inbounds %struct.haifa_sched_info, %struct.haifa_sched_info* %10, i64 0, i32 13, !dbg !2688
  store i32 0, i32* %sched_max_insns_priority, align 4, !dbg !2689
  %call47 = call i32 @set_priorities(%struct.rtx_def* %head, %struct.rtx_def* %tail) #6, !dbg !2690
  store i32 %call47, i32* @rgn_n_insns, align 4, !dbg !2691
  %11 = load %struct.haifa_sched_info*, %struct.haifa_sched_info** @current_sched_info, align 8, !dbg !2692
  %sched_max_insns_priority48 = getelementptr inbounds %struct.haifa_sched_info, %struct.haifa_sched_info* %11, i64 0, i32 13, !dbg !2693
  %12 = load i32, i32* %sched_max_insns_priority48, align 4, !dbg !2694
  %inc = add nsw i32 %12, 1, !dbg !2694
  store i32 %inc, i32* %sched_max_insns_priority48, align 4, !dbg !2694
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %head, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2695
  %14 = bitcast %union.rtunion_def* %13 to i64*, !dbg !2695
  %15 = load i64, i64* %14, align 8, !dbg !2695
  %prev_head = getelementptr inbounds %struct.haifa_sched_info, %struct.haifa_sched_info* %11, i64 0, i32 8, !dbg !2696
  %16 = bitcast %struct.rtx_def** %prev_head to i64*, !dbg !2697
  store i64 %15, i64* %16, align 8, !dbg !2697
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tail, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2698
  %18 = bitcast %union.rtunion_def* %17 to i64*, !dbg !2698
  %19 = load i64, i64* %18, align 8, !dbg !2698
  %next_tail = getelementptr inbounds %struct.haifa_sched_info, %struct.haifa_sched_info* %11, i64 0, i32 9, !dbg !2699
  %20 = bitcast %struct.rtx_def** %next_tail to i64*, !dbg !2700
  store i64 %19, i64* %20, align 8, !dbg !2700
  call void @remove_notes(%struct.rtx_def* %head, %struct.rtx_def* %tail) #6, !dbg !2701
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2702
  call void @unlink_bb_notes(%struct.basic_block_def* %2, %struct.basic_block_def* %21) #6, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !2624, metadata !DIExpression()), !dbg !2657
  store %struct.basic_block_def* %2, %struct.basic_block_def** %target_bb, align 8, !dbg !2704
  %22 = load i32, i32* @rgn_n_insns, align 4, !dbg !2705
  call void @sched_extend_ready_list(i32 %22) #6, !dbg !2706
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %target_bb, metadata !2624, metadata !DIExpression(DW_OP_deref)), !dbg !2657
  call void @schedule_block(%struct.basic_block_def** nonnull %target_bb) #6, !dbg !2707
  call void @sched_finish_ready_list() #6, !dbg !2708
  %23 = load i32, i32* @sched_rgn_n_insns, align 4, !dbg !2709
  %24 = load i32, i32* @rgn_n_insns, align 4, !dbg !2709
  %cmp56 = icmp eq i32 %23, %24, !dbg !2709
  br i1 %cmp56, label %cond.end59, label %cond.true57, !dbg !2709

cond.true57:                                      ; preds = %if.end46
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 521, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2709
  br label %cond.end59, !dbg !2709

cond.end59:                                       ; preds = %if.end46, %cond.true57
  %25 = load %struct.haifa_sched_info*, %struct.haifa_sched_info** @current_sched_info, align 8, !dbg !2710
  %head61 = getelementptr inbounds %struct.haifa_sched_info, %struct.haifa_sched_info* %25, i64 0, i32 10, !dbg !2711
  %26 = load %struct.rtx_def*, %struct.rtx_def** %head61, align 8, !dbg !2711
  %tail62 = getelementptr inbounds %struct.haifa_sched_info, %struct.haifa_sched_info* %25, i64 0, i32 11, !dbg !2712
  %27 = load %struct.rtx_def*, %struct.rtx_def** %tail62, align 8, !dbg !2712
  call void @sched_free_deps(%struct.rtx_def* %26, %struct.rtx_def* %27, i8 zeroext 1) #6, !dbg !2713
  %28 = load i8, i8* @haifa_recovery_bb_ever_added_p, align 1, !dbg !2714
  %tobool63 = icmp eq i8 %28, 0, !dbg !2714
  br i1 %tobool63, label %lor.lhs.false64, label %cond.end70, !dbg !2714

lor.lhs.false64:                                  ; preds = %cond.end59
  %call65 = call zeroext i8 @deps_pools_are_empty_p() #6, !dbg !2714
  %tobool67 = icmp eq i8 %call65, 0, !dbg !2714
  br i1 %tobool67, label %cond.true68, label %cond.end70, !dbg !2714

cond.true68:                                      ; preds = %lor.lhs.false64
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 527, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2714
  br label %cond.end70, !dbg !2714

cond.end70:                                       ; preds = %lor.lhs.false64, %cond.end59, %cond.true68
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2715
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 0, !dbg !2715
  %30 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2715
  %tobool72 = icmp eq %struct.VEC_edge_gc* %30, null, !dbg !2715
  br i1 %tobool72, label %cond.end76, label %cond.true73, !dbg !2715

cond.true73:                                      ; preds = %cond.end70
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %30, i64 0, i32 0, !dbg !2715
  br label %cond.end76, !dbg !2715

cond.end76:                                       ; preds = %cond.end70, %cond.true73
  %cond77 = phi %struct.VEC_edge_base* [ %base, %cond.true73 ], [ null, %cond.end70 ], !dbg !2715
  %call78 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond77) #8, !dbg !2715
  %cmp79 = icmp eq i32 %call78, 0, !dbg !2717
  br i1 %cmp79, label %if.then81, label %if.end99, !dbg !2718

if.then81:                                        ; preds = %cond.end76
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2719
  %cmp82 = icmp eq %struct.basic_block_def* %2, %31, !dbg !2719
  br i1 %cmp82, label %cond.true95, label %land.lhs.true84, !dbg !2719

land.lhs.true84:                                  ; preds = %if.then81
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i64 0, i32 1, !dbg !2719
  %32 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2719
  %tobool85 = icmp eq %struct.VEC_edge_gc* %32, null, !dbg !2719
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !2719

cond.true86:                                      ; preds = %land.lhs.true84
  %base88 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %32, i64 0, i32 0, !dbg !2719
  br label %cond.end90, !dbg !2719

cond.end90:                                       ; preds = %land.lhs.true84, %cond.true86
  %cond91 = phi %struct.VEC_edge_base* [ %base88, %cond.true86 ], [ null, %land.lhs.true84 ], !dbg !2719
  %call92 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond91) #8, !dbg !2719
  %cmp93 = icmp eq i32 %call92, 0, !dbg !2719
  br i1 %cmp93, label %cond.end97, label %cond.true95, !dbg !2719

cond.true95:                                      ; preds = %if.then81, %cond.end90
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 533, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2719
  br label %cond.end97, !dbg !2719

cond.end97:                                       ; preds = %cond.end90, %cond.true95
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2721
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 5, !dbg !2722
  %34 = bitcast %struct.basic_block_def** %prev_bb to i64*, !dbg !2722
  %35 = load i64, i64* %34, align 8, !dbg !2722
  store i64 %35, i64* bitcast (%struct.basic_block_def** @last_bb to i64*), align 8, !dbg !2723
  %.cast = inttoptr i64 %35 to %struct.basic_block_def*, !dbg !2724
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.cast, i64 0, i32 6, !dbg !2725
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !2725
  call void @delete_basic_block(%struct.basic_block_def* %36) #6, !dbg !2726
  br label %if.end99, !dbg !2727

if.end99:                                         ; preds = %cond.end97, %cond.end76
  br label %cleanup, !dbg !2728

cleanup:                                          ; preds = %if.end99, %if.then
  %retval.0.in = phi %struct.basic_block_def** [ %rt_bb8, %if.then ], [ @last_bb, %if.end99 ]
  %retval.0 = load %struct.basic_block_def*, %struct.basic_block_def** %retval.0.in, align 8, !dbg !2657
  call void @llvm.lifetime.end.p0i8(i64 184, i8* nonnull %1) #7, !dbg !2729
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2729
  ret %struct.basic_block_def* %retval.0, !dbg !2729
}

declare dso_local void @reposition_prologue_and_epilogue_notes() local_unnamed_addr #2

declare dso_local void @haifa_sched_finish() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2730 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2735
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2735
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2735

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2735
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2735
  br label %cond.end, !dbg !2735

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2735
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2735
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !2736
  %conv3 = zext i1 %cmp to i8, !dbg !2737
  ret i8 %conv3, !dbg !2738
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2739 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2744
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2744
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2744

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2744
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2744
  br label %cond.end, !dbg !2744

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2744
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !2744
  ret %struct.edge_def* %call2, !dbg !2745
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2746 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2752, metadata !DIExpression()), !dbg !2753
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2754
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2754

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2754
  %0 = load i32, i32* %num, align 8, !dbg !2754
  br label %cond.end, !dbg !2754

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2754
  ret i32 %cond, !dbg !2754
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2755 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !2760
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2760

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2760
  br label %cond.end, !dbg !2760

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !2761
  ret %struct.VEC_edge_gc* %0, !dbg !2762
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2763 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2767, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2768, metadata !DIExpression()), !dbg !2769
  br label %land.end, !dbg !2770

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2770
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2770
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2770
  ret %struct.edge_def* %0, !dbg !2770
}

; Function Attrs: nounwind uwtable
define internal void @init_ready_list() #5 !dbg !2771 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !2773, metadata !DIExpression()), !dbg !2777
  %0 = load %struct.haifa_sched_info*, %struct.haifa_sched_info** @current_sched_info, align 8, !dbg !2778
  %prev_head1 = getelementptr inbounds %struct.haifa_sched_info, %struct.haifa_sched_info* %0, i64 0, i32 8, !dbg !2779
  %1 = load %struct.rtx_def*, %struct.rtx_def** %prev_head1, align 8, !dbg !2779
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2774, metadata !DIExpression()), !dbg !2777
  %next_tail2 = getelementptr inbounds %struct.haifa_sched_info, %struct.haifa_sched_info* %0, i64 0, i32 9, !dbg !2780
  %2 = load %struct.rtx_def*, %struct.rtx_def** %next_tail2, align 8, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !2775, metadata !DIExpression()), !dbg !2777
  store i32 0, i32* @sched_rgn_n_insns, align 4, !dbg !2781
  %3 = load i32, i32* @sched_verbose, align 4, !dbg !2782
  %cmp = icmp sgt i32 %3, 4, !dbg !2784
  br i1 %cmp, label %if.then, label %if.end, !dbg !2785

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2786
  %rt_rtx = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !2786
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2786
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2787
  %rt_rtx6 = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !2787
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx6, align 8, !dbg !2787
  tail call fastcc void @debug_ebb_dependencies(%struct.rtx_def* %5, %struct.rtx_def* %7) #8, !dbg !2788
  br label %if.end, !dbg !2788

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond, !dbg !2789

for.cond:                                         ; preds = %for.body, %if.end
  %.pn = phi %struct.rtx_def* [ %1, %if.end ], [ %insn.0, %for.body ]
  %n.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !2777
  %insn.0.in.in = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %.pn, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2791
  %insn.0.in = bitcast %union.rtunion_def* %insn.0.in.in to %struct.rtx_def**, !dbg !2791
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2791
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !2773, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2776, metadata !DIExpression()), !dbg !2777
  %cmp11 = icmp eq %struct.rtx_def* %insn.0, %2, !dbg !2792
  br i1 %cmp11, label %for.end, label %for.body, !dbg !2794

for.body:                                         ; preds = %for.cond
  %call = tail call i32 @try_ready(%struct.rtx_def* %insn.0) #6, !dbg !2795
  %inc = add nuw nsw i32 %n.0, 1, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2773, metadata !DIExpression()), !dbg !2777
  br label %for.cond, !dbg !2798, !llvm.loop !2799

for.end:                                          ; preds = %for.cond
  %n.0.lcssa = phi i32 [ %n.0, %for.cond ], !dbg !2777
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2773, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2773, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2773, metadata !DIExpression()), !dbg !2777
  %8 = load i32, i32* @rgn_n_insns, align 4, !dbg !2801
  %cmp16 = icmp eq i32 %n.0.lcssa, %8, !dbg !2801
  br i1 %cmp16, label %cond.end, label %cond.true, !dbg !2801

cond.true:                                        ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2801
  br label %cond.end, !dbg !2801

cond.end:                                         ; preds = %for.end, %cond.true
  ret void, !dbg !2802
}

; Function Attrs: nounwind uwtable
define internal i32 @schedule_more_p() #5 !dbg !2803 {
entry:
  %0 = load i32, i32* @sched_rgn_n_insns, align 4, !dbg !2804
  %1 = load i32, i32* @rgn_n_insns, align 4, !dbg !2805
  %cmp = icmp slt i32 %0, %1, !dbg !2806
  %conv = zext i1 %cmp to i32, !dbg !2806
  ret i32 %conv, !dbg !2807
}

; Function Attrs: nounwind uwtable
define internal i32 @rank(%struct.rtx_def* %insn1, %struct.rtx_def* %insn2) #5 !dbg !2808 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn1, metadata !2810, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn2, metadata !2811, metadata !DIExpression()), !dbg !2814
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn1, i64 0, i32 1, i32 0, i32 1, !dbg !2815
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !2815
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2815
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2812, metadata !DIExpression()), !dbg !2814
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn2, i64 0, i32 1, i32 0, i32 1, !dbg !2816
  %rt_bb4 = bitcast %struct.object_block** %arrayidx3 to %struct.basic_block_def**, !dbg !2816
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb4, align 8, !dbg !2816
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !2813, metadata !DIExpression()), !dbg !2814
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 8, !dbg !2817
  %2 = load i64, i64* %count, align 8, !dbg !2817
  %count5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 8, !dbg !2819
  %3 = load i64, i64* %count5, align 8, !dbg !2819
  %cmp = icmp sgt i64 %2, %3, !dbg !2820
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !2821

lor.lhs.false:                                    ; preds = %entry
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 11, !dbg !2822
  %4 = load i32, i32* %frequency, align 8, !dbg !2822
  %frequency6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 11, !dbg !2823
  %5 = load i32, i32* %frequency6, align 8, !dbg !2823
  %cmp7 = icmp sgt i32 %4, %5, !dbg !2824
  br i1 %cmp7, label %cleanup, label %if.end, !dbg !2825

if.end:                                           ; preds = %lor.lhs.false
  %cmp10 = icmp slt i64 %2, %3, !dbg !2826
  br i1 %cmp10, label %cleanup, label %lor.lhs.false11, !dbg !2828

lor.lhs.false11:                                  ; preds = %if.end
  %cmp14 = icmp slt i32 %4, %5, !dbg !2829
  %spec.select = zext i1 %cmp14 to i32, !dbg !2830
  ret i32 %spec.select, !dbg !2830

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -1, %lor.lhs.false ], [ -1, %entry ], [ 1, %if.end ], !dbg !2814
  ret i32 %retval.0, !dbg !2831
}

; Function Attrs: nounwind uwtable
define internal i8* @ebb_print_insn(%struct.rtx_def* %insn, i32 %aligned) #5 !dbg !1865 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !1867, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 %aligned, metadata !1868, metadata !DIExpression()), !dbg !2832
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2833
  %bf.load = load i32, i32* %0, align 8, !dbg !2833
  %bf.clear = and i32 %bf.load, 16711680, !dbg !2833
  %cmp = icmp eq i32 %bf.clear, 1179648, !dbg !2835
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2836
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2836
  %1 = load i32, i32* %rt_int, align 8, !dbg !2836
  br i1 %cmp, label %if.then, label %if.else, !dbg !2837

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @ebb_print_insn.tmp, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %1) #6, !dbg !2838
  br label %if.end, !dbg !2838

if.else:                                          ; preds = %entry
  %call5 = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @ebb_print_insn.tmp, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %1) #6, !dbg !2839
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @ebb_print_insn.tmp, i64 0, i64 0), !dbg !2840
}

; Function Attrs: nounwind uwtable
define internal i32 @ebb_contributes_to_priority(%struct.rtx_def* %next, %struct.rtx_def* %insn) #5 !dbg !2841 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %next, metadata !2843, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2844, metadata !DIExpression()), !dbg !2845
  ret i32 1, !dbg !2846
}

; Function Attrs: nounwind uwtable
define internal void @ebb_add_remove_insn(%struct.rtx_def* %insn, i32 %remove_p) #5 !dbg !2847 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2849, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %remove_p, metadata !2850, metadata !DIExpression()), !dbg !2851
  %tobool = icmp eq i32 %remove_p, 0, !dbg !2852
  %0 = load i32, i32* @rgn_n_insns, align 4, !dbg !2854
  br i1 %tobool, label %if.then, label %if.else, !dbg !2855

if.then:                                          ; preds = %entry
  %inc = add nsw i32 %0, 1, !dbg !2856
  br label %if.end, !dbg !2857

if.else:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1, !dbg !2858
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %inc, %if.then ], [ %dec, %if.else ], !dbg !2854
  store i32 %storemerge, i32* @rgn_n_insns, align 4, !dbg !2854
  ret void, !dbg !2859
}

; Function Attrs: nounwind uwtable
define internal void @begin_schedule_ready(%struct.rtx_def* %insn, %struct.rtx_def* %last) #5 !dbg !2860 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2862, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last, metadata !2863, metadata !DIExpression()), !dbg !2869
  %0 = load i32, i32* @sched_rgn_n_insns, align 4, !dbg !2870
  %inc = add nsw i32 %0, 1, !dbg !2870
  store i32 %inc, i32* @sched_rgn_n_insns, align 4, !dbg !2870
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !2871
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !2871
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2871
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2872
  %cmp = icmp eq %struct.basic_block_def* %1, %2, !dbg !2873
  br i1 %cmp, label %land.lhs.true, label %if.end51, !dbg !2874

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i8 @control_flow_insn_p(%struct.rtx_def* %insn) #6, !dbg !2875
  %tobool = icmp eq i8 %call, 0, !dbg !2875
  br i1 %tobool, label %if.end51, label %land.lhs.true1, !dbg !2876

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2877
  %rt_rtx = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !2877
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2877
  %cmp5 = icmp eq %struct.rtx_def* %4, %last, !dbg !2878
  br i1 %cmp5, label %if.end51, label %if.then, !dbg !2879

if.then:                                          ; preds = %land.lhs.true1
  %5 = bitcast %struct.edge_def** %e to i8*, !dbg !2880
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2880
  %6 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2881
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !2881
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2882
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2882
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 1, !dbg !2882
  %call7 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2882
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2882
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 0, !dbg !2882
  store i32 %10, i32* %9, align 8, !dbg !2882
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2882
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 1, !dbg !2882
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %11, align 8, !dbg !2882
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !2882
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2882
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2884
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2884
  br label %for.cond, !dbg !2882

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %13, align 8, !dbg !2886
  %16 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %14, align 8, !dbg !2886
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2864, metadata !DIExpression(DW_OP_deref)), !dbg !2887
  %call8 = call fastcc zeroext i8 @ei_cond(i32 %15, %struct.VEC_edge_gc** %16, %struct.edge_def** nonnull %e) #8, !dbg !2886
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2882
  br i1 %tobool9, label %for.cond.for.end_crit_edge, label %for.body, !dbg !2882

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  %.pre = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2888
  br label %for.end, !dbg !2882

for.body:                                         ; preds = %for.cond
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2890
  call void @llvm.dbg.value(metadata %struct.edge_def* %17, metadata !2864, metadata !DIExpression()), !dbg !2887
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 7, !dbg !2892
  %18 = load i32, i32* %flags, align 8, !dbg !2892
  %and = and i32 %18, 1, !dbg !2893
  %tobool10 = icmp eq i32 %and, 0, !dbg !2893
  br i1 %tobool10, label %for.inc, label %for.end.loopexit, !dbg !2894

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2867, metadata !DIExpression(DW_OP_deref)), !dbg !2887
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2886
  br label %for.cond, !dbg !2886, !llvm.loop !2895

for.end.loopexit:                                 ; preds = %for.body
  %.lcssa = phi %struct.edge_def* [ %17, %for.body ], !dbg !2890
  br label %for.end, !dbg !2888

for.end:                                          ; preds = %for.end.loopexit, %for.cond.for.end_crit_edge
  %19 = phi %struct.edge_def* [ %.pre, %for.cond.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !2888
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !2864, metadata !DIExpression()), !dbg !2887
  %tobool12 = icmp eq %struct.edge_def* %19, null, !dbg !2888
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !2897

if.then13:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !2864, metadata !DIExpression()), !dbg !2887
  %call14 = call %struct.basic_block_def* @split_edge(%struct.edge_def* nonnull %19) #6, !dbg !2898
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call14, metadata !2868, metadata !DIExpression()), !dbg !2887
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call14, i64 0, i32 7, !dbg !2900
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2900
  %20 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2900
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %20, i64 0, i32 1, !dbg !2900
  %21 = bitcast %struct.rtx_def** %end_ to i32**, !dbg !2900
  %22 = load i32*, i32** %21, align 8, !dbg !2900
  %bf.load = load i32, i32* %22, align 8, !dbg !2900
  %bf.clear = and i32 %bf.load, 65535, !dbg !2900
  %cmp15 = icmp eq i32 %bf.clear, 13, !dbg !2900
  br i1 %cmp15, label %land.lhs.true17, label %cond.true, !dbg !2900

land.lhs.true17:                                  ; preds = %if.then13
  %23 = getelementptr inbounds i32, i32* %22, i64 12, !dbg !2900
  %24 = load i32, i32* %23, align 8, !dbg !2900
  %cmp24 = icmp eq i32 %24, 10, !dbg !2900
  br i1 %cmp24, label %if.end31, label %cond.true, !dbg !2900

cond.true:                                        ; preds = %land.lhs.true17, %if.then13
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2900
  br label %if.end31, !dbg !2900

if.else:                                          ; preds = %for.end
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 2, i32 0, !dbg !2901
  %26 = load i8*, i8** %25, align 8, !dbg !2901
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2902
  %call30 = call %struct.basic_block_def* @create_basic_block(i8* %26, i8* null, %struct.basic_block_def* %27) #6, !dbg !2903
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call30, metadata !2868, metadata !DIExpression()), !dbg !2887
  br label %if.end31

if.end31:                                         ; preds = %cond.true, %land.lhs.true17, %if.else
  %bb.0 = phi %struct.basic_block_def* [ %call30, %if.else ], [ %call14, %land.lhs.true17 ], [ %call14, %cond.true ], !dbg !2904
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2868, metadata !DIExpression()), !dbg !2887
  %il32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2905
  %rtl33 = bitcast %union.basic_block_il_dependent* %il32 to %struct.rtl_bb_info**, !dbg !2905
  %28 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl33, align 8, !dbg !2905
  %end_34 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %28, i64 0, i32 1, !dbg !2905
  %29 = load %struct.rtx_def*, %struct.rtx_def** %end_34, align 8, !dbg !2905
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2905
  %31 = bitcast %union.rtunion_def* %30 to i64*, !dbg !2905
  %32 = load i64, i64* %31, align 8, !dbg !2905
  %33 = load %struct.haifa_sched_info*, %struct.haifa_sched_info** @current_sched_info, align 8, !dbg !2906
  %next_tail = getelementptr inbounds %struct.haifa_sched_info, %struct.haifa_sched_info* %33, i64 0, i32 9, !dbg !2907
  %34 = bitcast %struct.rtx_def** %next_tail to i64*, !dbg !2908
  store i64 %32, i64* %34, align 8, !dbg !2908
  %tobool40 = icmp eq i64 %32, 0, !dbg !2909
  br i1 %tobool40, label %cond.true41, label %cond.end43, !dbg !2909

cond.true41:                                      ; preds = %if.end31
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2909
  br label %cond.end43, !dbg !2909

cond.end43:                                       ; preds = %if.end31, %cond.true41
  %35 = load void (%struct.basic_block_def*, %struct.basic_block_def*)*, void (%struct.basic_block_def*, %struct.basic_block_def*)** @sched_init_only_bb, align 8, !dbg !2910
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2911
  call void %35(%struct.basic_block_def* %bb.0, %struct.basic_block_def* %36) #6, !dbg !2910
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2912
  %cmp45 = icmp eq %struct.basic_block_def* %37, %bb.0, !dbg !2912
  br i1 %cmp45, label %cond.end49, label %cond.true47, !dbg !2912

cond.true47:                                      ; preds = %cond.end43
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2912
  br label %cond.end49, !dbg !2912

cond.end49:                                       ; preds = %cond.end43, %cond.true47
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2913
  br label %if.end51, !dbg !2914

if.end51:                                         ; preds = %land.lhs.true1, %land.lhs.true, %cond.end49, %entry
  ret void, !dbg !2915
}

; Function Attrs: nounwind uwtable
define internal %struct.basic_block_def* @advance_target_bb(%struct.basic_block_def* %bb, %struct.rtx_def* %insn) #5 !dbg !2916 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2919, metadata !DIExpression()), !dbg !2920
  %tobool = icmp eq %struct.rtx_def* %insn, null, !dbg !2921
  br i1 %tobool, label %do.body.preheader, label %if.then, !dbg !2923

do.body.preheader:                                ; preds = %entry
  br label %do.body, !dbg !2924

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !2926
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !2926
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2926
  %cmp = icmp eq %struct.basic_block_def* %0, %bb, !dbg !2929
  br i1 %cmp, label %return, label %land.lhs.true, !dbg !2930

land.lhs.true:                                    ; preds = %if.then
  %call = tail call zeroext i8 @control_flow_insn_p(%struct.rtx_def* nonnull %insn) #6, !dbg !2931
  %tobool1 = icmp eq i8 %call, 0, !dbg !2931
  br i1 %tobool1, label %return, label %land.lhs.true2, !dbg !2932

land.lhs.true2:                                   ; preds = %land.lhs.true
  %1 = load %struct.VEC_haifa_insn_data_def_heap*, %struct.VEC_haifa_insn_data_def_heap** @h_i_d, align 8, !dbg !2933
  %base = getelementptr inbounds %struct.VEC_haifa_insn_data_def_heap, %struct.VEC_haifa_insn_data_def_heap* %1, i64 0, i32 0, !dbg !2933
  %arrayidx6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2933
  %rt_int = bitcast %union.rtunion_def* %arrayidx6 to i32*, !dbg !2933
  %2 = load i32, i32* %rt_int, align 8, !dbg !2933
  %call7 = tail call fastcc %struct._haifa_insn_data* @VEC_haifa_insn_data_def_base_index(%struct.VEC_haifa_insn_data_def_base* %base, i32 %2) #8, !dbg !2933
  %recovery_block = getelementptr inbounds %struct._haifa_insn_data, %struct._haifa_insn_data* %call7, i64 0, i32 11, !dbg !2933
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %recovery_block, align 8, !dbg !2933
  %cmp8 = icmp eq %struct.basic_block_def* %3, null, !dbg !2933
  br i1 %cmp8, label %land.lhs.true25, label %land.lhs.true10, !dbg !2933

land.lhs.true10:                                  ; preds = %land.lhs.true2
  %4 = load %struct.VEC_haifa_insn_data_def_heap*, %struct.VEC_haifa_insn_data_def_heap** @h_i_d, align 8, !dbg !2933
  %base13 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_heap, %struct.VEC_haifa_insn_data_def_heap* %4, i64 0, i32 0, !dbg !2933
  %5 = load i32, i32* %rt_int, align 8, !dbg !2933
  %call21 = tail call fastcc %struct._haifa_insn_data* @VEC_haifa_insn_data_def_base_index(%struct.VEC_haifa_insn_data_def_base* %base13, i32 %5) #8, !dbg !2933
  %recovery_block22 = getelementptr inbounds %struct._haifa_insn_data, %struct._haifa_insn_data* %call21, i64 0, i32 11, !dbg !2933
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %recovery_block22, align 8, !dbg !2933
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2933
  %cfg = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2933
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2933
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 1, !dbg !2933
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2933
  %cmp23 = icmp eq %struct.basic_block_def* %6, %9, !dbg !2933
  br i1 %cmp23, label %land.lhs.true25, label %return, !dbg !2934

land.lhs.true25:                                  ; preds = %land.lhs.true10, %land.lhs.true2
  %10 = load %struct.VEC_haifa_insn_data_def_heap*, %struct.VEC_haifa_insn_data_def_heap** @h_i_d, align 8, !dbg !2935
  %base28 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_heap, %struct.VEC_haifa_insn_data_def_heap* %10, i64 0, i32 0, !dbg !2935
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2935
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2935
  %11 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2935
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %11, i64 0, i32 1, !dbg !2935
  %12 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2935
  %arrayidx34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2935
  %rt_int35 = bitcast %union.rtunion_def* %arrayidx34 to i32*, !dbg !2935
  %13 = load i32, i32* %rt_int35, align 8, !dbg !2935
  %call36 = tail call fastcc %struct._haifa_insn_data* @VEC_haifa_insn_data_def_base_index(%struct.VEC_haifa_insn_data_def_base* %base28, i32 %13) #8, !dbg !2935
  %recovery_block37 = getelementptr inbounds %struct._haifa_insn_data, %struct._haifa_insn_data* %call36, i64 0, i32 11, !dbg !2935
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %recovery_block37, align 8, !dbg !2935
  %cmp38 = icmp eq %struct.basic_block_def* %14, null, !dbg !2935
  br i1 %cmp38, label %if.then61, label %land.lhs.true40, !dbg !2935

land.lhs.true40:                                  ; preds = %land.lhs.true25
  %15 = load %struct.VEC_haifa_insn_data_def_heap*, %struct.VEC_haifa_insn_data_def_heap** @h_i_d, align 8, !dbg !2935
  %base43 = getelementptr inbounds %struct.VEC_haifa_insn_data_def_heap, %struct.VEC_haifa_insn_data_def_heap* %15, i64 0, i32 0, !dbg !2935
  %16 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2935
  %end_49 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %16, i64 0, i32 1, !dbg !2935
  %17 = load %struct.rtx_def*, %struct.rtx_def** %end_49, align 8, !dbg !2935
  %arrayidx52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2935
  %rt_int53 = bitcast %union.rtunion_def* %arrayidx52 to i32*, !dbg !2935
  %18 = load i32, i32* %rt_int53, align 8, !dbg !2935
  %call54 = tail call fastcc %struct._haifa_insn_data* @VEC_haifa_insn_data_def_base_index(%struct.VEC_haifa_insn_data_def_base* %base43, i32 %18) #8, !dbg !2935
  %recovery_block55 = getelementptr inbounds %struct._haifa_insn_data, %struct._haifa_insn_data* %call54, i64 0, i32 11, !dbg !2935
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %recovery_block55, align 8, !dbg !2935
  %20 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2935
  %cfg57 = getelementptr inbounds %struct.function, %struct.function* %20, i64 0, i32 1, !dbg !2935
  %21 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg57, align 8, !dbg !2935
  %x_exit_block_ptr58 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %21, i64 0, i32 1, !dbg !2935
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr58, align 8, !dbg !2935
  %cmp59 = icmp eq %struct.basic_block_def* %19, %22, !dbg !2935
  br i1 %cmp59, label %if.then61, label %return, !dbg !2936

if.then61:                                        ; preds = %land.lhs.true40, %land.lhs.true25
  %23 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2937
  %end_64 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %23, i64 0, i32 1, !dbg !2937
  %24 = load %struct.rtx_def*, %struct.rtx_def** %end_64, align 8, !dbg !2937
  %call65 = tail call zeroext i8 @control_flow_insn_p(%struct.rtx_def* %24) #6, !dbg !2937
  %tobool66 = icmp eq i8 %call65, 0, !dbg !2937
  br i1 %tobool66, label %land.lhs.true67, label %cond.true83, !dbg !2937

land.lhs.true67:                                  ; preds = %if.then61
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 6, !dbg !2937
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !2937
  %il68 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i64 0, i32 7, !dbg !2937
  %26 = bitcast %union.basic_block_il_dependent* %il68 to i32***, !dbg !2937
  %27 = load i32**, i32*** %26, align 8, !dbg !2937
  %28 = load i32*, i32** %27, align 8, !dbg !2937
  %bf.load = load i32, i32* %28, align 8, !dbg !2937
  %bf.clear = and i32 %bf.load, 65535, !dbg !2937
  %cmp70 = icmp eq i32 %bf.clear, 13, !dbg !2937
  br i1 %cmp70, label %land.lhs.true72, label %cond.true83, !dbg !2937

land.lhs.true72:                                  ; preds = %land.lhs.true67
  %29 = getelementptr inbounds i32, i32* %28, i64 12, !dbg !2937
  %30 = load i32, i32* %29, align 8, !dbg !2937
  %cmp81 = icmp eq i32 %30, 10, !dbg !2937
  br i1 %cmp81, label %return, label %cond.true83, !dbg !2937

cond.true83:                                      ; preds = %if.then61, %land.lhs.true72, %land.lhs.true67
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 672, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2937
  br label %return, !dbg !2937

do.body:                                          ; preds = %do.body.preheader, %cond.end92
  %bb.addr.0 = phi %struct.basic_block_def* [ %32, %cond.end92 ], [ %bb, %do.body.preheader ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0, metadata !2918, metadata !DIExpression()), !dbg !2920
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** @last_bb, align 8, !dbg !2939
  %cmp88 = icmp eq %struct.basic_block_def* %bb.addr.0, %31, !dbg !2939
  br i1 %cmp88, label %cond.true90, label %cond.end92, !dbg !2939

cond.true90:                                      ; preds = %do.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 683, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2939
  br label %cond.end92, !dbg !2939

cond.end92:                                       ; preds = %do.body, %cond.true90
  %next_bb94 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.0, i64 0, i32 6, !dbg !2941
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb94, align 8, !dbg !2941
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %32, metadata !2918, metadata !DIExpression()), !dbg !2920
  %call95 = tail call %struct.rtx_def* @bb_note(%struct.basic_block_def* %32) #6, !dbg !2942
  %il96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i64 0, i32 7, !dbg !2943
  %rtl97 = bitcast %union.basic_block_il_dependent* %il96 to %struct.rtl_bb_info**, !dbg !2943
  %33 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl97, align 8, !dbg !2943
  %end_98 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %33, i64 0, i32 1, !dbg !2943
  %34 = load %struct.rtx_def*, %struct.rtx_def** %end_98, align 8, !dbg !2943
  %cmp99 = icmp eq %struct.rtx_def* %call95, %34, !dbg !2944
  br i1 %cmp99, label %do.body, label %return.loopexit, !dbg !2945, !llvm.loop !2946

return.loopexit:                                  ; preds = %cond.end92
  %.lcssa = phi %struct.basic_block_def* [ %32, %cond.end92 ], !dbg !2941
  br label %return, !dbg !2948

return:                                           ; preds = %return.loopexit, %land.lhs.true10, %land.lhs.true40, %land.lhs.true, %if.then, %cond.true83, %land.lhs.true72
  %retval.0 = phi %struct.basic_block_def* [ %bb, %land.lhs.true72 ], [ %bb, %cond.true83 ], [ null, %land.lhs.true40 ], [ null, %land.lhs.true10 ], [ null, %land.lhs.true ], [ null, %if.then ], [ %.lcssa, %return.loopexit ], !dbg !2949
  ret %struct.basic_block_def* %retval.0, !dbg !2948
}

; Function Attrs: nounwind uwtable
define internal fastcc void @debug_ebb_dependencies(%struct.rtx_def* %head, %struct.rtx_def* %tail) unnamed_addr #5 !dbg !2950 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail, metadata !2953, metadata !DIExpression()), !dbg !2954
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8, !dbg !2955
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2956
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @sched_dump, align 8, !dbg !2957
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %head, i64 0, i32 1, i32 0, i32 1, !dbg !2958
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !2958
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !2958
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !2958
  %3 = load i32, i32* %index, align 8, !dbg !2958
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tail, i64 0, i32 1, i32 0, i32 1, !dbg !2959
  %rt_bb4 = bitcast %struct.object_block** %arrayidx3 to %struct.basic_block_def**, !dbg !2959
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb4, align 8, !dbg !2959
  %index5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 9, !dbg !2959
  %5 = load i32, i32* %index5, align 8, !dbg !2959
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %3, i32 %5) #6, !dbg !2960
  tail call void @debug_dependencies(%struct.rtx_def* %head, %struct.rtx_def* %tail) #6, !dbg !2961
  ret void, !dbg !2962
}

declare dso_local i32 @try_ready(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @debug_dependencies(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

declare dso_local zeroext i8 @control_flow_insn_p(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @create_basic_block(i8*, i8*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct._haifa_insn_data* @VEC_haifa_insn_data_def_base_index(%struct.VEC_haifa_insn_data_def_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2963 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_haifa_insn_data_def_base* %vec_, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3021, metadata !DIExpression()), !dbg !3022
  br label %land.end, !dbg !3023

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3023
  %arrayidx = getelementptr inbounds %struct.VEC_haifa_insn_data_def_base, %struct.VEC_haifa_insn_data_def_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3023
  ret %struct._haifa_insn_data* %arrayidx, !dbg !3023
}

declare dso_local %struct.rtx_def* @bb_note(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @no_real_insns_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local void @init_deps_global() local_unnamed_addr #2

declare dso_local void @init_deps(%struct.deps*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @sched_analyze(%struct.deps*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @free_deps(%struct.deps*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_deps_for_risky_insns(%struct.rtx_def* %head, %struct.rtx_def* %tail) unnamed_addr #5 !dbg !3024 {
entry:
  %_dep = alloca %struct._dep, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head, metadata !3026, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.rtx_def* %tail, metadata !3027, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3031, metadata !DIExpression()), !dbg !3050
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %tail, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3051
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !3051
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3051
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3032, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3033, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.rtx_def* %head, metadata !3028, metadata !DIExpression()), !dbg !3050
  %2 = bitcast %struct._dep* %_dep to i8*, !dbg !3052
  %status = getelementptr inbounds %struct._dep, %struct._dep* %_dep, i64 0, i32 3, !dbg !3053
  br label %for.cond, !dbg !3056

for.cond:                                         ; preds = %for.inc, %entry
  %last_jump.0 = phi %struct.rtx_def* [ null, %entry ], [ %last_jump.1, %for.inc ], !dbg !3050
  %insn.0 = phi %struct.rtx_def* [ %head, %entry ], [ %16, %for.inc ], !dbg !3057
  %last_block.0 = phi %struct.basic_block_def* [ null, %entry ], [ %last_block.1, %for.inc ], !dbg !3050
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %last_block.0, metadata !3033, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3028, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_jump.0, metadata !3031, metadata !DIExpression()), !dbg !3050
  %cmp = icmp eq %struct.rtx_def* %insn.0, %1, !dbg !3058
  br i1 %cmp, label %while.cond.preheader, label %for.body, !dbg !3059

while.cond.preheader:                             ; preds = %for.cond
  %last_block.0.lcssa = phi %struct.basic_block_def* [ %last_block.0, %for.cond ], !dbg !3050
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %last_block.0.lcssa, metadata !3033, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %last_block.0.lcssa, metadata !3033, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %last_block.0.lcssa, metadata !3033, metadata !DIExpression()), !dbg !3050
  br label %while.cond, !dbg !3060

for.body:                                         ; preds = %for.cond
  %call = call zeroext i8 @control_flow_insn_p(%struct.rtx_def* %insn.0) #6, !dbg !3061
  %tobool = icmp eq i8 %call, 0, !dbg !3061
  br i1 %tobool, label %if.else, label %if.then, !dbg !3062

if.then:                                          ; preds = %for.body
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 1, !dbg !3063
  %rt_bb = bitcast %struct.object_block** %arrayidx3 to %struct.basic_block_def**, !dbg !3063
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3063
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !3034, metadata !DIExpression()), !dbg !3050
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 2, !dbg !3065
  %4 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !3066
  store %struct.basic_block_def* %last_block.0, %struct.basic_block_def** %4, align 8, !dbg !3066
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !3033, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3031, metadata !DIExpression()), !dbg !3050
  br label %for.inc, !dbg !3067

if.else:                                          ; preds = %for.body
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3068
  %bf.load = load i32, i32* %5, align 8, !dbg !3068
  %bf.clear = and i32 %bf.load, 65535, !dbg !3068
  %cmp4 = icmp eq i32 %bf.clear, 8, !dbg !3068
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false, !dbg !3068

lor.lhs.false:                                    ; preds = %if.else
  %cmp7 = icmp eq i32 %bf.clear, 7, !dbg !3068
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false8, !dbg !3068

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i32 %bf.clear, 9, !dbg !3068
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false12, !dbg !3068

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %cmp15 = icmp eq i32 %bf.clear, 10, !dbg !3068
  %cmp16 = icmp ne %struct.rtx_def* %last_jump.0, null, !dbg !3069
  %or.cond = and i1 %cmp15, %cmp16, !dbg !3070
  br i1 %or.cond, label %if.then17, label %for.inc, !dbg !3070

land.lhs.true:                                    ; preds = %lor.lhs.false8, %lor.lhs.false, %if.else
  %cmp16.old = icmp eq %struct.rtx_def* %last_jump.0, null, !dbg !3069
  br i1 %cmp16.old, label %for.inc, label %if.then17, !dbg !3071

if.then17:                                        ; preds = %land.lhs.true, %lor.lhs.false12
  %call18 = call i32 @haifa_classify_insn(%struct.rtx_def* %insn.0) #6, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %call18, metadata !3030, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_jump.0, metadata !3029, metadata !DIExpression()), !dbg !3050
  switch i32 %call18, label %for.inc [
    i32 2, label %sw.bb
    i32 5, label %sw.bb29
    i32 4, label %sw.bb29
    i32 3, label %sw.bb29
  ], !dbg !3073

sw.bb:                                            ; preds = %if.then17
  %6 = load i32, i32* @flag_schedule_speculative_load, align 4, !dbg !3074
  %tobool19 = icmp eq i32 %6, 0, !dbg !3074
  br i1 %tobool19, label %sw.bb29, label %if.then20, !dbg !3076

if.then20:                                        ; preds = %sw.bb
  %call21 = call fastcc %struct.basic_block_def* @earliest_block_with_similiar_load(%struct.basic_block_def* %last_block.0, %struct.rtx_def* %insn.0) #8, !dbg !3077
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call21, metadata !3034, metadata !DIExpression()), !dbg !3050
  %tobool22 = icmp eq %struct.basic_block_def* %call21, null, !dbg !3079
  br i1 %tobool22, label %sw.bb29, label %if.then23, !dbg !3081

if.then23:                                        ; preds = %if.then20
  %aux24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call21, i64 0, i32 2, !dbg !3082
  %7 = bitcast i8** %aux24 to %struct.basic_block_def**, !dbg !3082
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %7, align 8, !dbg !3082
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %8, metadata !3034, metadata !DIExpression()), !dbg !3050
  %tobool25 = icmp eq %struct.basic_block_def* %8, null, !dbg !3084
  br i1 %tobool25, label %for.inc, label %if.end, !dbg !3086

if.end:                                           ; preds = %if.then23
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 7, !dbg !3087
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3087
  %9 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3087
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %9, i64 0, i32 1, !dbg !3087
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3087
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !3029, metadata !DIExpression()), !dbg !3050
  br label %sw.bb29, !dbg !3088

sw.bb29:                                          ; preds = %if.then20, %sw.bb, %if.end, %if.then17, %if.then17, %if.then17
  %prev.2 = phi %struct.rtx_def* [ %last_jump.0, %if.then17 ], [ %last_jump.0, %if.then17 ], [ %last_jump.0, %if.then17 ], [ %last_jump.0, %sw.bb ], [ %10, %if.end ], [ %last_jump.0, %if.then20 ], !dbg !3089
  call void @llvm.dbg.value(metadata %struct.rtx_def* %prev.2, metadata !3029, metadata !DIExpression()), !dbg !3050
  %call30 = call zeroext i8 @sched_insns_conditions_mutex_p(%struct.rtx_def* %insn.0, %struct.rtx_def* %prev.2) #6, !dbg !3090
  %tobool31 = icmp eq i8 %call30, 0, !dbg !3090
  br i1 %tobool31, label %if.then32, label %for.inc, !dbg !3091

if.then32:                                        ; preds = %sw.bb29
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3092
  call void @llvm.dbg.value(metadata %struct._dep* %_dep, metadata !3045, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata %struct._dep* %_dep, metadata !3035, metadata !DIExpression(DW_OP_deref)), !dbg !3052
  call void @init_dep(%struct._dep* nonnull %_dep, %struct.rtx_def* %prev.2, %struct.rtx_def* %insn.0, i32 12) #6, !dbg !3093
  %11 = load %struct.haifa_sched_info*, %struct.haifa_sched_info** @current_sched_info, align 8, !dbg !3094
  %flags = getelementptr inbounds %struct.haifa_sched_info, %struct.haifa_sched_info* %11, i64 0, i32 17, !dbg !3095
  %12 = load i32, i32* %flags, align 8, !dbg !3095
  %and = and i32 %12, 1, !dbg !3096
  %tobool33 = icmp eq i32 %and, 0, !dbg !3096
  br i1 %tobool33, label %if.then34, label %if.else37, !dbg !3097

if.then34:                                        ; preds = %if.then32
  call void @llvm.dbg.value(metadata %struct._dep* %_dep, metadata !3035, metadata !DIExpression(DW_OP_deref)), !dbg !3052
  %call35 = call i32 @sd_add_or_update_dep(%struct._dep* nonnull %_dep, i8 zeroext 0) #6, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %call35, metadata !3047, metadata !DIExpression()), !dbg !3099
  %cmp36 = icmp eq i32 %call35, 2, !dbg !3100
  br i1 %cmp36, label %cond.true, label %if.end48, !dbg !3100

cond.true:                                        ; preds = %if.then34
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 428, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3100
  br label %if.end48, !dbg !3100

if.else37:                                        ; preds = %if.then32
  %and39 = and i32 %12, 2, !dbg !3101
  %tobool40 = icmp eq i32 %and39, 0, !dbg !3101
  br i1 %tobool40, label %if.end46, label %land.lhs.true41, !dbg !3102

land.lhs.true41:                                  ; preds = %if.else37
  %13 = load %struct.spec_info_def*, %struct.spec_info_def** @spec_info, align 8, !dbg !3103
  %mask = getelementptr inbounds %struct.spec_info_def, %struct.spec_info_def* %13, i64 0, i32 0, !dbg !3104
  %14 = load i32, i32* %mask, align 8, !dbg !3104
  %and42 = and i32 %14, 258048, !dbg !3105
  %tobool43 = icmp eq i32 %and42, 0, !dbg !3105
  br i1 %tobool43, label %if.end46, label %if.then44, !dbg !3106

if.then44:                                        ; preds = %land.lhs.true41
  %call45 = call i32 @set_dep_weak(i32 67108864, i32 258048, i32 62) #6, !dbg !3107
  store i32 %call45, i32* %status, align 4, !dbg !3108
  br label %if.end46, !dbg !3109

if.end46:                                         ; preds = %land.lhs.true41, %if.else37, %if.then44
  call void @llvm.dbg.value(metadata %struct._dep* %_dep, metadata !3035, metadata !DIExpression(DW_OP_deref)), !dbg !3052
  %call47 = call i32 @sd_add_or_update_dep(%struct._dep* nonnull %_dep, i8 zeroext 0) #6, !dbg !3110
  br label %if.end48

if.end48:                                         ; preds = %if.then34, %cond.true, %if.end46
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !3111
  br label %for.inc, !dbg !3112

for.inc:                                          ; preds = %land.lhs.true, %if.then23, %sw.bb29, %if.then, %if.end48, %if.then17, %lor.lhs.false12
  %last_jump.1 = phi %struct.rtx_def* [ %insn.0, %if.then ], [ %last_jump.0, %if.then23 ], [ %last_jump.0, %if.end48 ], [ %last_jump.0, %sw.bb29 ], [ %last_jump.0, %if.then17 ], [ null, %land.lhs.true ], [ %last_jump.0, %lor.lhs.false12 ], !dbg !3050
  %last_block.1 = phi %struct.basic_block_def* [ %3, %if.then ], [ %last_block.0, %if.then23 ], [ %last_block.0, %if.end48 ], [ %last_block.0, %sw.bb29 ], [ %last_block.0, %if.then17 ], [ %last_block.0, %land.lhs.true ], [ %last_block.0, %lor.lhs.false12 ], !dbg !3050
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %last_block.1, metadata !3033, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_jump.1, metadata !3031, metadata !DIExpression()), !dbg !3050
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3113
  %rt_rtx55 = bitcast %union.rtunion_def* %15 to %struct.rtx_def**, !dbg !3113
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx55, align 8, !dbg !3113
  call void @llvm.dbg.value(metadata %struct.rtx_def* %16, metadata !3028, metadata !DIExpression()), !dbg !3050
  br label %for.cond, !dbg !3114, !llvm.loop !3115

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %last_block.2 = phi %struct.basic_block_def* [ %18, %while.body ], [ %last_block.0.lcssa, %while.cond.preheader ], !dbg !3050
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %last_block.2, metadata !3033, metadata !DIExpression()), !dbg !3050
  %tobool56 = icmp eq %struct.basic_block_def* %last_block.2, null, !dbg !3060
  br i1 %tobool56, label %while.end, label %while.body, !dbg !3060

while.body:                                       ; preds = %while.cond
  %aux57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %last_block.2, i64 0, i32 2, !dbg !3117
  %17 = bitcast i8** %aux57 to %struct.basic_block_def**, !dbg !3117
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %17, align 8, !dbg !3117
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %18, metadata !3034, metadata !DIExpression()), !dbg !3050
  store i8* null, i8** %aux57, align 8, !dbg !3119
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %18, metadata !3033, metadata !DIExpression()), !dbg !3050
  br label %while.cond, !dbg !3060, !llvm.loop !3120

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3122
}

declare dso_local void @finish_deps_global() local_unnamed_addr #2

declare dso_local i32 @set_priorities(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @remove_notes(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @unlink_bb_notes(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @sched_extend_ready_list(i32) local_unnamed_addr #2

declare dso_local void @schedule_block(%struct.basic_block_def**) local_unnamed_addr #2

declare dso_local void @sched_finish_ready_list() local_unnamed_addr #2

declare dso_local void @sched_free_deps(%struct.rtx_def*, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #2

declare dso_local zeroext i8 @deps_pools_are_empty_p() local_unnamed_addr #2

declare dso_local void @delete_basic_block(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local i32 @haifa_classify_insn(%struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @earliest_block_with_similiar_load(%struct.basic_block_def* %last_block, %struct.rtx_def* %load_insn) unnamed_addr #5 !dbg !3123 {
entry:
  %back_sd_it = alloca %struct._sd_iterator, align 8
  %back_dep = alloca %struct._dep*, align 8
  %tmp = alloca %struct._sd_iterator, align 8
  %fore_sd_it = alloca %struct._sd_iterator, align 8
  %fore_dep = alloca %struct._dep*, align 8
  %tmp1 = alloca %struct._sd_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %last_block, metadata !3125, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.rtx_def* %load_insn, metadata !3126, metadata !DIExpression()), !dbg !3145
  %0 = bitcast %struct._sd_iterator* %back_sd_it to i8*, !dbg !3146
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !3146
  %1 = bitcast %struct._dep** %back_dep to i8*, !dbg !3147
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3147
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3131, metadata !DIExpression()), !dbg !3145
  %2 = bitcast %struct._sd_iterator* %tmp to i8*, !dbg !3148
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #7, !dbg !3148
  call fastcc void @sd_iterator_start(%struct._sd_iterator* nonnull sret %tmp, %struct.rtx_def* %load_insn, i32 3) #8, !dbg !3148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 32, i1 false), !dbg !3148
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #7, !dbg !3148
  %3 = bitcast %struct._sd_iterator* %fore_sd_it to i8*, !dbg !3149
  %4 = bitcast %struct._dep** %fore_dep to i8*, !dbg !3149
  %5 = bitcast %struct._sd_iterator* %tmp1 to i8*, !dbg !3150
  br label %for.cond, !dbg !3148

for.cond:                                         ; preds = %for.inc31, %entry
  %earliest_block.0 = phi %struct.basic_block_def* [ null, %entry ], [ %earliest_block.5, %for.inc31 ], !dbg !3151
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %earliest_block.0, metadata !3131, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct._sd_iterator* %back_sd_it, metadata !3127, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  call void @llvm.dbg.value(metadata %struct._dep** %back_dep, metadata !3128, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  %call = call fastcc zeroext i8 @sd_iterator_cond(%struct._sd_iterator* nonnull %back_sd_it, %struct._dep** nonnull %back_dep) #8, !dbg !3152
  %tobool = icmp eq i8 %call, 0, !dbg !3148
  br i1 %tobool, label %for.end32, label %for.body, !dbg !3148

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct._dep* undef, metadata !3128, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.rtx_def* undef, metadata !3132, metadata !DIExpression()), !dbg !3153
  %6 = load %struct._dep*, %struct._dep** %back_dep, align 8, !dbg !3154
  call void @llvm.dbg.value(metadata %struct._dep* %6, metadata !3128, metadata !DIExpression()), !dbg !3145
  %type = getelementptr inbounds %struct._dep, %struct._dep* %6, i64 0, i32 2, !dbg !3154
  %7 = load i32, i32* %type, align 8, !dbg !3154
  %cmp = icmp eq i32 %7, 0, !dbg !3155
  br i1 %cmp, label %if.then, label %for.inc31, !dbg !3156

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct._dep* %6, metadata !3128, metadata !DIExpression()), !dbg !3145
  %pro = getelementptr inbounds %struct._dep, %struct._dep* %6, i64 0, i32 0, !dbg !3157
  %8 = load %struct.rtx_def*, %struct.rtx_def** %pro, align 8, !dbg !3157
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !3132, metadata !DIExpression()), !dbg !3153
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #7, !dbg !3158
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3159
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !3160
  call fastcc void @sd_iterator_start(%struct._sd_iterator* nonnull sret %tmp1, %struct.rtx_def* %8, i32 4) #8, !dbg !3160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %5, i64 32, i1 false), !dbg !3160
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !3160
  br label %for.cond2, !dbg !3160

for.cond2:                                        ; preds = %cleanup, %if.then
  %earliest_block.1 = phi %struct.basic_block_def* [ %earliest_block.0, %if.then ], [ %earliest_block.4, %cleanup ], !dbg !3151
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %earliest_block.1, metadata !3131, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct._sd_iterator* %fore_sd_it, metadata !3136, metadata !DIExpression(DW_OP_deref)), !dbg !3149
  call void @llvm.dbg.value(metadata %struct._dep** %fore_dep, metadata !3139, metadata !DIExpression(DW_OP_deref)), !dbg !3149
  %call3 = call fastcc zeroext i8 @sd_iterator_cond(%struct._sd_iterator* nonnull %fore_sd_it, %struct._dep** nonnull %fore_dep) #8, !dbg !3161
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3160
  br i1 %tobool4, label %for.end29, label %for.body5, !dbg !3160

for.body5:                                        ; preds = %for.cond2
  %9 = load %struct._dep*, %struct._dep** %fore_dep, align 8, !dbg !3162
  call void @llvm.dbg.value(metadata %struct._dep* %9, metadata !3139, metadata !DIExpression()), !dbg !3149
  %con = getelementptr inbounds %struct._dep, %struct._dep* %9, i64 0, i32 1, !dbg !3162
  %10 = load %struct.rtx_def*, %struct.rtx_def** %con, align 8, !dbg !3162
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !3140, metadata !DIExpression()), !dbg !3163
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 1, !dbg !3164
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3164
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3164
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %11, metadata !3144, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata %struct._dep* %9, metadata !3139, metadata !DIExpression()), !dbg !3149
  %type6 = getelementptr inbounds %struct._dep, %struct._dep* %9, i64 0, i32 2, !dbg !3165
  %12 = load i32, i32* %type6, align 8, !dbg !3165
  %cmp7 = icmp eq i32 %12, 0, !dbg !3167
  br i1 %cmp7, label %if.then8, label %cleanup, !dbg !3168

if.then8:                                         ; preds = %for.body5
  %cmp9 = icmp eq %struct.basic_block_def* %earliest_block.1, null, !dbg !3169
  br i1 %cmp9, label %if.end, label %land.lhs.true, !dbg !3172

land.lhs.true:                                    ; preds = %if.then8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %earliest_block.1, i64 0, i32 9, !dbg !3173
  %13 = load i32, i32* %index, align 8, !dbg !3173
  %index10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i64 0, i32 9, !dbg !3174
  %14 = load i32, i32* %index10, align 8, !dbg !3174
  %cmp11 = icmp slt i32 %13, %14, !dbg !3175
  br i1 %cmp11, label %cleanup, label %if.end, !dbg !3176

if.end:                                           ; preds = %if.then8, %land.lhs.true
  %call13 = call i32 @haifa_classify_insn(%struct.rtx_def* %10) #6, !dbg !3177
  %cmp14 = icmp eq i32 %call13, 2, !dbg !3179
  br i1 %cmp14, label %for.cond17.preheader, label %cleanup, !dbg !3180

for.cond17.preheader:                             ; preds = %if.end
  br label %for.cond17, !dbg !3181

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc
  %bb.0 = phi %struct.basic_block_def* [ %16, %for.inc ], [ %last_block, %for.cond17.preheader ], !dbg !3183
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3130, metadata !DIExpression()), !dbg !3145
  %cond = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3181
  br i1 %cond, label %if.then24.loopexit, label %for.body19, !dbg !3181

for.body19:                                       ; preds = %for.cond17
  %cmp20 = icmp eq %struct.basic_block_def* %11, %bb.0, !dbg !3184
  br i1 %cmp20, label %for.end, label %for.inc, !dbg !3187

for.inc:                                          ; preds = %for.body19
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3188
  %15 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !3188
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %15, align 8, !dbg !3188
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %16, metadata !3130, metadata !DIExpression()), !dbg !3145
  br label %for.cond17, !dbg !3189, !llvm.loop !3190

for.end:                                          ; preds = %for.body19
  br label %cleanup, !dbg !3192

if.then24.loopexit:                               ; preds = %for.cond17
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %11, metadata !3131, metadata !DIExpression()), !dbg !3145
  br label %cleanup, !dbg !3193

cleanup:                                          ; preds = %for.end, %if.end, %for.body5, %if.then24.loopexit, %land.lhs.true
  %earliest_block.4 = phi %struct.basic_block_def* [ %earliest_block.1, %land.lhs.true ], [ %earliest_block.1, %if.end ], [ %earliest_block.1, %for.body5 ], [ %earliest_block.1, %for.end ], [ %11, %if.then24.loopexit ], !dbg !3151
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %earliest_block.4, metadata !3131, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct._sd_iterator* %fore_sd_it, metadata !3136, metadata !DIExpression(DW_OP_deref)), !dbg !3149
  call fastcc void @sd_iterator_next(%struct._sd_iterator* nonnull %fore_sd_it) #8, !dbg !3161
  br label %for.cond2, !dbg !3161, !llvm.loop !3195

for.end29:                                        ; preds = %for.cond2
  %earliest_block.1.lcssa = phi %struct.basic_block_def* [ %earliest_block.1, %for.cond2 ], !dbg !3151
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %earliest_block.1.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %earliest_block.1.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %earliest_block.1.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3197
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #7, !dbg !3197
  br label %for.inc31, !dbg !3198

for.inc31:                                        ; preds = %for.body, %for.end29
  %earliest_block.5 = phi %struct.basic_block_def* [ %earliest_block.1.lcssa, %for.end29 ], [ %earliest_block.0, %for.body ], !dbg !3151
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %earliest_block.5, metadata !3131, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct._sd_iterator* %back_sd_it, metadata !3127, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  call fastcc void @sd_iterator_next(%struct._sd_iterator* nonnull %back_sd_it) #8, !dbg !3152
  br label %for.cond, !dbg !3152, !llvm.loop !3199

for.end32:                                        ; preds = %for.cond
  %earliest_block.0.lcssa = phi %struct.basic_block_def* [ %earliest_block.0, %for.cond ], !dbg !3151
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %earliest_block.0.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %earliest_block.0.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %earliest_block.0.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3201
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !3201
  ret %struct.basic_block_def* %earliest_block.0.lcssa, !dbg !3202
}

declare dso_local zeroext i8 @sched_insns_conditions_mutex_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @init_dep(%struct._dep*, %struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local i32 @sd_add_or_update_dep(%struct._dep*, i8 zeroext) local_unnamed_addr #2

declare dso_local i32 @set_dep_weak(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sd_iterator_start(%struct._sd_iterator* noalias sret %agg.result, %struct.rtx_def* %insn, i32 %types) unnamed_addr #0 !dbg !1876 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !1910, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %types, metadata !1911, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.declare(metadata %struct._sd_iterator* %agg.result, metadata !1912, metadata !DIExpression()), !dbg !3204
  %types1 = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %agg.result, i64 0, i32 0, !dbg !3205
  store i32 %types, i32* %types1, align 8, !dbg !3206
  %insn2 = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %agg.result, i64 0, i32 1, !dbg !3207
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn2, align 8, !dbg !3208
  %linkp = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %agg.result, i64 0, i32 2, !dbg !3209
  store %struct._dep_link** @sd_iterator_start.null_link, %struct._dep_link*** %linkp, align 8, !dbg !3210
  %resolved_p = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %agg.result, i64 0, i32 3, !dbg !3211
  store i8 0, i8* %resolved_p, align 8, !dbg !3212
  ret void, !dbg !3213
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(%struct._sd_iterator* %it_ptr, %struct._dep** %dep_ptr) unnamed_addr #0 !dbg !3214 {
entry:
  %list = alloca %struct._deps_list*, align 8
  call void @llvm.dbg.value(metadata %struct._sd_iterator* %it_ptr, metadata !3220, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata %struct._dep** %dep_ptr, metadata !3221, metadata !DIExpression()), !dbg !3235
  %linkp = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %it_ptr, i64 0, i32 2, !dbg !3236
  %0 = load %struct._dep_link**, %struct._dep_link*** %linkp, align 8, !dbg !3236
  %1 = load %struct._dep_link*, %struct._dep_link** %0, align 8, !dbg !3237
  call void @llvm.dbg.value(metadata %struct._dep_link* %1, metadata !3222, metadata !DIExpression()), !dbg !3235
  %cmp = icmp eq %struct._dep_link* %1, null, !dbg !3238
  br i1 %cmp, label %if.else, label %if.then, !dbg !3239

if.then:                                          ; preds = %entry
  %node = getelementptr inbounds %struct._dep_link, %struct._dep_link* %1, i64 0, i32 0, !dbg !3240
  %2 = load %struct._dep_node*, %struct._dep_node** %node, align 8, !dbg !3240
  %dep = getelementptr inbounds %struct._dep_node, %struct._dep_node* %2, i64 0, i32 1, !dbg !3240
  store %struct._dep* %dep, %struct._dep** %dep_ptr, align 8, !dbg !3242
  br label %cleanup9, !dbg !3243

if.else:                                          ; preds = %entry
  %types1 = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %it_ptr, i64 0, i32 0, !dbg !3244
  %3 = load i32, i32* %types1, align 8, !dbg !3244
  call void @llvm.dbg.value(metadata i32 %3, metadata !3223, metadata !DIExpression()), !dbg !3245
  %cmp2 = icmp eq i32 %3, 0, !dbg !3246
  br i1 %cmp2, label %if.end7, label %if.then3, !dbg !3247

if.then3:                                         ; preds = %if.else
  %4 = bitcast %struct._deps_list** %list to i8*, !dbg !3248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3248
  %insn = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %it_ptr, i64 0, i32 1, !dbg !3249
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3249
  %resolved_p = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %it_ptr, i64 0, i32 3, !dbg !3250
  call void @llvm.dbg.value(metadata %struct._deps_list** %list, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3251
  call void @sd_next_list(%struct.rtx_def* %5, i32* %types1, %struct._deps_list** nonnull %list, i8* nonnull %resolved_p) #6, !dbg !3252
  %6 = load %struct._deps_list*, %struct._deps_list** %list, align 8, !dbg !3253
  call void @llvm.dbg.value(metadata %struct._deps_list* %6, metadata !3226, metadata !DIExpression()), !dbg !3251
  %first = getelementptr inbounds %struct._deps_list, %struct._deps_list* %6, i64 0, i32 0, !dbg !3253
  store %struct._dep_link** %first, %struct._dep_link*** %linkp, align 8, !dbg !3254
  call void @llvm.dbg.value(metadata %struct._deps_list* %6, metadata !3226, metadata !DIExpression()), !dbg !3251
  %tobool = icmp eq %struct._deps_list* %6, null, !dbg !3255
  br i1 %tobool, label %cleanup, label %if.then6, !dbg !3257

if.then6:                                         ; preds = %if.then3
  %call = call fastcc zeroext i8 @sd_iterator_cond(%struct._sd_iterator* %it_ptr, %struct._dep** %dep_ptr) #8, !dbg !3258
  br label %cleanup, !dbg !3259

cleanup:                                          ; preds = %if.then3, %if.then6
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then6 ], [ true, %if.then3 ]
  %retval.0 = phi i8 [ %call, %if.then6 ], [ undef, %if.then3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !3260
  br i1 %cleanup.dest.slot.0, label %if.end7, label %cleanup9

if.end7:                                          ; preds = %if.else, %cleanup
  store %struct._dep* null, %struct._dep** %dep_ptr, align 8, !dbg !3261
  br label %cleanup9, !dbg !3262

cleanup9:                                         ; preds = %if.end7, %cleanup, %if.then
  %retval.2 = phi i8 [ 1, %if.then ], [ %retval.0, %cleanup ], [ 0, %if.end7 ], !dbg !3263
  ret i8 %retval.2, !dbg !3264
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sd_iterator_next(%struct._sd_iterator* %it_ptr) unnamed_addr #0 !dbg !3265 {
entry:
  call void @llvm.dbg.value(metadata %struct._sd_iterator* %it_ptr, metadata !3269, metadata !DIExpression()), !dbg !3270
  %linkp = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %it_ptr, i64 0, i32 2, !dbg !3271
  %0 = load %struct._dep_link**, %struct._dep_link*** %linkp, align 8, !dbg !3271
  %1 = load %struct._dep_link*, %struct._dep_link** %0, align 8, !dbg !3271
  %next = getelementptr inbounds %struct._dep_link, %struct._dep_link* %1, i64 0, i32 1, !dbg !3271
  store %struct._dep_link** %next, %struct._dep_link*** %linkp, align 8, !dbg !3272
  ret void, !dbg !3273
}

declare dso_local void @sd_next_list(%struct.rtx_def*, i32*, %struct._deps_list**, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3274 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3280, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3281, metadata !DIExpression()), !dbg !3282
  br label %land.end, !dbg !3283

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3283
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3283
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3283
  ret %struct.basic_block_def* %0, !dbg !3283
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
!llvm.module.flags = !{!1929, !1930, !1931}
!llvm.ident = !{!1932}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ebb_common_sched_info", scope: !2, file: !3, line: 270, type: !1913, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !585, globals: !1764, nameTableKind: None)
!3 = !DIFile(filename: "sched-ebb.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !141, !147, !152, !157, !176, !183, !190, !384, !527, !535, !540, !545, !579}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !135, line: 30, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !142, line: 363, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !142, line: 355, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !153, line: 474, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!154 = !{!155, !156}
!155 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !158, line: 280, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!160 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !158, line: 1817, baseType: !7, size: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !158, line: 1805, baseType: !7, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!189 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !158, line: 39, baseType: !7, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!192 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!201 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!202 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!203 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!204 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!205 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!206 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!207 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!208 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!209 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!210 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!211 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!212 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!213 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!214 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!215 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!216 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!217 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!218 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!219 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!220 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!221 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!222 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!223 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!224 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!225 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!226 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!227 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!228 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!229 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!230 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!231 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!232 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!233 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!234 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!235 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!236 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!237 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!238 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!239 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!240 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!241 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!242 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!243 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!244 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!245 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!246 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!247 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!248 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!249 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!250 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!251 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!252 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!253 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!254 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!255 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!256 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!257 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!258 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!259 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!260 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!261 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!262 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!263 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!264 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!265 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!266 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!267 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!268 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!269 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!270 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!271 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!272 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!273 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!274 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!275 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!276 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!277 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!278 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!279 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!280 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!281 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!282 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!283 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!284 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!285 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!286 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!287 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!288 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!289 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!290 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!291 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!292 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!293 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!294 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!295 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!296 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!297 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!298 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!299 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!300 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!301 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!302 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!303 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!304 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!305 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!306 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!307 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!308 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!309 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!310 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!311 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!312 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!313 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!314 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!315 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!316 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!317 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!318 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!319 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!320 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!321 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!322 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!323 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!324 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!325 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!326 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!327 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!328 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!329 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!330 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!331 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!332 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!333 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!334 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!335 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!336 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!337 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!338 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!339 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!340 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!341 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!342 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!343 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!344 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!356 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!357 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!358 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!359 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!360 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!361 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!377 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!378 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!379 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!380 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!381 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!382 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!383 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !385, line: 45, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!387 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!391 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!392 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!393 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!394 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!395 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!396 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!397 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!398 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!399 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!400 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!401 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!402 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!403 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!404 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!405 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!406 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!407 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!408 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!409 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!410 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!411 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!412 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!413 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!414 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!415 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!416 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!417 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!418 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!419 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!420 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!421 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!422 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!423 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!424 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!425 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!426 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!427 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!428 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!429 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!430 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!431 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!432 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!433 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!434 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!435 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!436 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!437 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!438 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!439 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!440 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!441 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!442 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!443 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!444 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!445 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!446 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!447 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!448 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!449 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!450 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!451 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!452 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!453 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!454 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!455 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!456 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!457 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!458 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!459 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!460 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!461 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!462 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!463 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!464 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!465 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!466 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!467 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!468 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!469 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!470 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!471 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!472 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!473 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!474 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!475 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!476 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!477 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!478 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!479 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!480 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!481 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!482 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!483 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!484 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!485 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!486 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!487 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!488 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!489 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!490 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!491 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!492 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!493 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!494 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!495 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!496 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!497 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!498 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!499 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!500 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!501 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!502 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!503 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!504 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!505 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!506 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!507 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!508 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!509 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!510 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!511 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!512 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!513 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!514 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!515 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!516 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!517 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!518 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!519 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!520 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!521 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!522 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!523 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!524 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!525 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!526 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!527 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sched_pass_id_t", file: !528, line: 37, baseType: !7, size: 32, elements: !529)
!528 = !DIFile(filename: "./sched-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!529 = !{!530, !531, !532, !533, !534}
!530 = !DIEnumerator(name: "SCHED_PASS_UNKNOWN", value: 0, isUnsigned: true)
!531 = !DIEnumerator(name: "SCHED_RGN_PASS", value: 1, isUnsigned: true)
!532 = !DIEnumerator(name: "SCHED_EBB_PASS", value: 2, isUnsigned: true)
!533 = !DIEnumerator(name: "SCHED_SMS_PASS", value: 3, isUnsigned: true)
!534 = !DIEnumerator(name: "SCHED_SEL_PASS", value: 4, isUnsigned: true)
!535 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "post_call_group", file: !528, line: 432, baseType: !7, size: 32, elements: !536)
!536 = !{!537, !538, !539}
!537 = !DIEnumerator(name: "not_post_call", value: 0, isUnsigned: true)
!538 = !DIEnumerator(name: "post_call", value: 1, isUnsigned: true)
!539 = !DIEnumerator(name: "post_call_initial", value: 2, isUnsigned: true)
!540 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_pending_barrier_mode", file: !528, line: 424, baseType: !7, size: 32, elements: !541)
!541 = !{!542, !543, !544}
!542 = !DIEnumerator(name: "NOT_A_BARRIER", value: 0, isUnsigned: true)
!543 = !DIEnumerator(name: "MOVE_BARRIER", value: 1, isUnsigned: true)
!544 = !DIEnumerator(name: "TRUE_BARRIER", value: 2, isUnsigned: true)
!545 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_note", file: !385, line: 836, baseType: !7, size: 32, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!547 = !DIEnumerator(name: "REG_DEP_TRUE", value: 0, isUnsigned: true)
!548 = !DIEnumerator(name: "REG_DEAD", value: 1, isUnsigned: true)
!549 = !DIEnumerator(name: "REG_INC", value: 2, isUnsigned: true)
!550 = !DIEnumerator(name: "REG_EQUIV", value: 3, isUnsigned: true)
!551 = !DIEnumerator(name: "REG_EQUAL", value: 4, isUnsigned: true)
!552 = !DIEnumerator(name: "REG_NONNEG", value: 5, isUnsigned: true)
!553 = !DIEnumerator(name: "REG_UNUSED", value: 6, isUnsigned: true)
!554 = !DIEnumerator(name: "REG_CC_SETTER", value: 7, isUnsigned: true)
!555 = !DIEnumerator(name: "REG_CC_USER", value: 8, isUnsigned: true)
!556 = !DIEnumerator(name: "REG_LABEL_TARGET", value: 9, isUnsigned: true)
!557 = !DIEnumerator(name: "REG_LABEL_OPERAND", value: 10, isUnsigned: true)
!558 = !DIEnumerator(name: "REG_DEP_OUTPUT", value: 11, isUnsigned: true)
!559 = !DIEnumerator(name: "REG_DEP_ANTI", value: 12, isUnsigned: true)
!560 = !DIEnumerator(name: "REG_BR_PROB", value: 13, isUnsigned: true)
!561 = !DIEnumerator(name: "REG_VALUE_PROFILE", value: 14, isUnsigned: true)
!562 = !DIEnumerator(name: "REG_NOALIAS", value: 15, isUnsigned: true)
!563 = !DIEnumerator(name: "REG_BR_PRED", value: 16, isUnsigned: true)
!564 = !DIEnumerator(name: "REG_FRAME_RELATED_EXPR", value: 17, isUnsigned: true)
!565 = !DIEnumerator(name: "REG_CFA_DEF_CFA", value: 18, isUnsigned: true)
!566 = !DIEnumerator(name: "REG_CFA_ADJUST_CFA", value: 19, isUnsigned: true)
!567 = !DIEnumerator(name: "REG_CFA_OFFSET", value: 20, isUnsigned: true)
!568 = !DIEnumerator(name: "REG_CFA_REGISTER", value: 21, isUnsigned: true)
!569 = !DIEnumerator(name: "REG_CFA_RESTORE", value: 22, isUnsigned: true)
!570 = !DIEnumerator(name: "REG_CFA_SET_VDRAP", value: 23, isUnsigned: true)
!571 = !DIEnumerator(name: "REG_EH_CONTEXT", value: 24, isUnsigned: true)
!572 = !DIEnumerator(name: "REG_EH_REGION", value: 25, isUnsigned: true)
!573 = !DIEnumerator(name: "REG_SAVE_NOTE", value: 26, isUnsigned: true)
!574 = !DIEnumerator(name: "REG_NORETURN", value: 27, isUnsigned: true)
!575 = !DIEnumerator(name: "REG_NON_LOCAL_GOTO", value: 28, isUnsigned: true)
!576 = !DIEnumerator(name: "REG_CROSSING_JUMP", value: 29, isUnsigned: true)
!577 = !DIEnumerator(name: "REG_SETJMP", value: 30, isUnsigned: true)
!578 = !DIEnumerator(name: "REG_NOTE_MAX", value: 31, isUnsigned: true)
!579 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "DEPS_ADJUST_RESULT", file: !528, line: 1016, baseType: !7, size: 32, elements: !580)
!580 = !{!581, !582, !583, !584}
!581 = !DIEnumerator(name: "DEP_NODEP", value: 0, isUnsigned: true)
!582 = !DIEnumerator(name: "DEP_PRESENT", value: 1, isUnsigned: true)
!583 = !DIEnumerator(name: "DEP_CHANGED", value: 2, isUnsigned: true)
!584 = !DIEnumerator(name: "DEP_CREATED", value: 3, isUnsigned: true)
!585 = !{!586, !587, !588, !589, !592, !593, !384, !5, !595, !1129, !1763}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!588 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !596, line: 50, baseType: !597)
!596 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !385, line: 240, size: 384, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !598, file: !385, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !598, file: !385, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !598, file: !385, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !598, file: !385, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !598, file: !385, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !598, file: !385, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !598, file: !385, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !598, file: !385, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !598, file: !385, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !598, file: !385, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !598, file: !385, line: 321, baseType: !611, size: 320, offset: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !385, line: 315, size: 320, elements: !612)
!612 = !{!613, !1698, !1700, !1761, !1762}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !611, file: !385, line: 316, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 64, elements: !630)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !385, line: 183, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !385, line: 166, size: 64, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !632, !633, !645, !648, !710, !1676, !1677, !1688, !1695}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !616, file: !385, line: 168, baseType: !588, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !616, file: !385, line: 169, baseType: !7, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !616, file: !385, line: 170, baseType: !593, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !616, file: !385, line: 171, baseType: !595, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !616, file: !385, line: 172, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !596, line: 53, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !385, line: 359, size: 128, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !625, file: !385, line: 360, baseType: !588, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !625, file: !385, line: 361, baseType: !629, size: 64, offset: 64)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 64, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 1)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !616, file: !385, line: 173, baseType: !5, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !616, file: !385, line: 174, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !385, line: 133, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 115, size: 32, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !635, file: !385, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !635, file: !385, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !635, file: !385, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !635, file: !385, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !635, file: !385, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !635, file: !385, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !635, file: !385, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !635, file: !385, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !616, file: !385, line: 175, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !385, line: 175, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !616, file: !385, line: 176, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !651, line: 75, size: 256, elements: !652)
!651 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!652 = !{!653, !668, !669, !670}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !650, file: !651, line: 76, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !651, line: 68, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !651, line: 63, size: 320, elements: !657)
!657 = !{!658, !660, !661, !662}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !656, file: !651, line: 64, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !656, file: !651, line: 65, baseType: !659, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !656, file: !651, line: 66, baseType: !7, size: 32, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !656, file: !651, line: 67, baseType: !663, size: 128, offset: 192)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 128, elements: !666)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !651, line: 29, baseType: !665)
!665 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!666 = !{!667}
!667 = !DISubrange(count: 2)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !650, file: !651, line: 77, baseType: !654, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !650, file: !651, line: 78, baseType: !7, size: 32, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !650, file: !651, line: 79, baseType: !671, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !651, line: 49, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !651, line: 45, size: 832, elements: !674)
!674 = !{!675, !676, !677}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !673, file: !651, line: 46, baseType: !659, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !673, file: !651, line: 47, baseType: !649, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !673, file: !651, line: 48, baseType: !678, size: 704, offset: 128)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !679, line: 164, size: 704, elements: !680)
!679 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!680 = !{!681, !683, !693, !694, !695, !696, !697, !698, !702, !706, !707, !708, !709}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !678, file: !679, line: 166, baseType: !682, size: 64)
!682 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !678, file: !679, line: 167, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !679, line: 157, size: 192, elements: !686)
!686 = !{!687, !688, !689}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !685, file: !679, line: 159, baseType: !590, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !685, file: !679, line: 160, baseType: !684, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !685, file: !679, line: 161, baseType: !690, size: 32, offset: 128)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 32, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 4)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !678, file: !679, line: 168, baseType: !590, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !678, file: !679, line: 169, baseType: !590, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !678, file: !679, line: 170, baseType: !590, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !678, file: !679, line: 171, baseType: !682, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !678, file: !679, line: 172, baseType: !588, size: 32, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !678, file: !679, line: 176, baseType: !699, size: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!684, !592, !682}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !678, file: !679, line: 177, baseType: !703, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !592, !684}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !678, file: !679, line: 178, baseType: !592, size: 64, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !678, file: !679, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !678, file: !679, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !678, file: !679, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !616, file: !385, line: 177, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !596, line: 56, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !158, line: 3371, size: 1792, elements: !714)
!714 = !{!715, !748, !754, !765, !784, !795, !800, !807, !813, !826, !838, !876, !881, !909, !917, !918, !923, !932, !938, !943, !947, !951, !1312, !1361, !1367, !1373, !1380, !1406, !1420, !1437, !1449, !1471, !1486, !1658}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !713, file: !158, line: 3372, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !158, line: 360, size: 64, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !716, file: !158, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !716, file: !158, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !716, file: !158, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !716, file: !158, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !716, file: !158, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !716, file: !158, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !716, file: !158, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !716, file: !158, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !716, file: !158, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !716, file: !158, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !716, file: !158, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !716, file: !158, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !716, file: !158, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !716, file: !158, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !716, file: !158, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !716, file: !158, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !716, file: !158, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !716, file: !158, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !716, file: !158, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !716, file: !158, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !716, file: !158, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !716, file: !158, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !716, file: !158, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !716, file: !158, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !716, file: !158, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !716, file: !158, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !716, file: !158, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !716, file: !158, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !716, file: !158, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !716, file: !158, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !713, file: !158, line: 3373, baseType: !749, size: 192)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !158, line: 402, size: 192, elements: !750)
!750 = !{!751, !752, !753}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !749, file: !158, line: 403, baseType: !716, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !749, file: !158, line: 404, baseType: !711, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !158, line: 405, baseType: !711, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !713, file: !158, line: 3374, baseType: !755, size: 320)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !158, line: 1384, size: 320, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !755, file: !158, line: 1385, baseType: !749, size: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !755, file: !158, line: 1386, baseType: !759, size: 128, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !760, line: 58, baseType: !761)
!760 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !760, line: 54, size: 128, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !761, file: !760, line: 56, baseType: !665, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !761, file: !760, line: 57, baseType: !682, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !713, file: !158, line: 3375, baseType: !766, size: 256)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !158, line: 1397, size: 256, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !766, file: !158, line: 1398, baseType: !749, size: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !766, file: !158, line: 1399, baseType: !770, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !772, line: 52, size: 256, elements: !773)
!772 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!773 = !{!774, !775, !776, !777, !778, !779, !780}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !771, file: !772, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !771, file: !772, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !771, file: !772, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !771, file: !772, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !771, file: !772, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !771, file: !772, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !771, file: !772, line: 62, baseType: !781, size: 192, offset: 64)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 192, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 3)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !713, file: !158, line: 3376, baseType: !785, size: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !158, line: 1408, size: 256, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !785, file: !158, line: 1409, baseType: !749, size: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !785, file: !158, line: 1410, baseType: !789, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !791, line: 27, size: 192, elements: !792)
!791 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !790, file: !791, line: 29, baseType: !759, size: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !790, file: !791, line: 30, baseType: !5, size: 32, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !713, file: !158, line: 3377, baseType: !796, size: 256)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !158, line: 1437, size: 256, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !796, file: !158, line: 1438, baseType: !749, size: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !796, file: !158, line: 1439, baseType: !711, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !713, file: !158, line: 3378, baseType: !801, size: 256)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !158, line: 1418, size: 256, elements: !802)
!802 = !{!803, !804, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !801, file: !158, line: 1419, baseType: !749, size: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !801, file: !158, line: 1420, baseType: !588, size: 32, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !801, file: !158, line: 1421, baseType: !806, size: 8, offset: 224)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 8, elements: !630)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !713, file: !158, line: 3379, baseType: !808, size: 320)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !158, line: 1428, size: 320, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !808, file: !158, line: 1429, baseType: !749, size: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !808, file: !158, line: 1430, baseType: !711, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !808, file: !158, line: 1431, baseType: !711, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !713, file: !158, line: 3380, baseType: !814, size: 320)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !158, line: 1460, size: 320, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !814, file: !158, line: 1461, baseType: !749, size: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !814, file: !158, line: 1462, baseType: !818, size: 128, offset: 192)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !819, line: 31, size: 128, elements: !820)
!819 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!820 = !{!821, !824, !825}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !818, file: !819, line: 32, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !818, file: !819, line: 33, baseType: !7, size: 32, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !818, file: !819, line: 34, baseType: !7, size: 32, offset: 96)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !713, file: !158, line: 3381, baseType: !827, size: 384)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !158, line: 2507, size: 384, elements: !828)
!828 = !{!829, !830, !835, !836, !837}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !827, file: !158, line: 2508, baseType: !749, size: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !827, file: !158, line: 2509, baseType: !831, size: 32, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !832, line: 58, baseType: !833)
!832 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !834, line: 44, baseType: !7)
!834 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!835 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !827, file: !158, line: 2510, baseType: !7, size: 32, offset: 224)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !827, file: !158, line: 2511, baseType: !711, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !827, file: !158, line: 2512, baseType: !711, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !713, file: !158, line: 3382, baseType: !839, size: 896)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !158, line: 2652, size: 896, elements: !840)
!840 = !{!841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !839, file: !158, line: 2653, baseType: !827, size: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !839, file: !158, line: 2654, baseType: !711, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !839, file: !158, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !839, file: !158, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !839, file: !158, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !839, file: !158, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !839, file: !158, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !839, file: !158, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !839, file: !158, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !839, file: !158, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !839, file: !158, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !839, file: !158, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !839, file: !158, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !839, file: !158, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !839, file: !158, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !839, file: !158, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !839, file: !158, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !839, file: !158, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !839, file: !158, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !839, file: !158, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !839, file: !158, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !839, file: !158, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !839, file: !158, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !839, file: !158, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !839, file: !158, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !839, file: !158, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !839, file: !158, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !839, file: !158, line: 2703, baseType: !7, size: 32, offset: 512)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !839, file: !158, line: 2705, baseType: !711, size: 64, offset: 576)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !839, file: !158, line: 2706, baseType: !711, size: 64, offset: 640)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !839, file: !158, line: 2707, baseType: !711, size: 64, offset: 704)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !839, file: !158, line: 2708, baseType: !711, size: 64, offset: 768)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !839, file: !158, line: 2711, baseType: !874, size: 64, offset: 832)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !158, line: 2711, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !713, file: !158, line: 3383, baseType: !877, size: 960)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !158, line: 2756, size: 960, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !877, file: !158, line: 2757, baseType: !839, size: 896)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !877, file: !158, line: 2758, baseType: !595, size: 64, offset: 896)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !713, file: !158, line: 3384, baseType: !882, size: 1472)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !158, line: 3114, size: 1472, elements: !883)
!883 = !{!884, !905, !906, !907, !908}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !882, file: !158, line: 3115, baseType: !885, size: 1216)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !158, line: 2984, size: 1216, elements: !886)
!886 = !{!887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !885, file: !158, line: 2985, baseType: !877, size: 960)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !885, file: !158, line: 2986, baseType: !711, size: 64, offset: 960)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !885, file: !158, line: 2987, baseType: !711, size: 64, offset: 1024)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !885, file: !158, line: 2988, baseType: !711, size: 64, offset: 1088)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !885, file: !158, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !885, file: !158, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !885, file: !158, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !885, file: !158, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !885, file: !158, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !885, file: !158, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !885, file: !158, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !885, file: !158, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !885, file: !158, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !885, file: !158, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !885, file: !158, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !885, file: !158, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !885, file: !158, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !885, file: !158, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !882, file: !158, line: 3117, baseType: !711, size: 64, offset: 1216)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !882, file: !158, line: 3119, baseType: !711, size: 64, offset: 1280)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !882, file: !158, line: 3121, baseType: !711, size: 64, offset: 1344)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !882, file: !158, line: 3123, baseType: !711, size: 64, offset: 1408)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !713, file: !158, line: 3385, baseType: !910, size: 1088)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !158, line: 2874, size: 1088, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !910, file: !158, line: 2875, baseType: !877, size: 960)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !910, file: !158, line: 2876, baseType: !595, size: 64, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !910, file: !158, line: 2877, baseType: !915, size: 64, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !158, line: 2856, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !713, file: !158, line: 3386, baseType: !885, size: 1216)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !713, file: !158, line: 3387, baseType: !919, size: 1280)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !158, line: 3093, size: 1280, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !919, file: !158, line: 3094, baseType: !885, size: 1216)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !919, file: !158, line: 3095, baseType: !915, size: 64, offset: 1216)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !713, file: !158, line: 3388, baseType: !924, size: 1216)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !158, line: 2824, size: 1216, elements: !925)
!925 = !{!926, !927, !928, !929, !930, !931}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !924, file: !158, line: 2825, baseType: !839, size: 896)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !924, file: !158, line: 2827, baseType: !711, size: 64, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !924, file: !158, line: 2828, baseType: !711, size: 64, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !924, file: !158, line: 2829, baseType: !711, size: 64, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !924, file: !158, line: 2830, baseType: !711, size: 64, offset: 1088)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !924, file: !158, line: 2831, baseType: !711, size: 64, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !713, file: !158, line: 3389, baseType: !933, size: 1024)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !158, line: 2850, size: 1024, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !158, line: 2851, baseType: !877, size: 960)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !933, file: !158, line: 2852, baseType: !588, size: 32, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !933, file: !158, line: 2853, baseType: !588, size: 32, offset: 992)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !713, file: !158, line: 3390, baseType: !939, size: 1024)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !158, line: 2857, size: 1024, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !939, file: !158, line: 2858, baseType: !877, size: 960)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !939, file: !158, line: 2859, baseType: !915, size: 64, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !713, file: !158, line: 3391, baseType: !944, size: 960)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !158, line: 2862, size: 960, elements: !945)
!945 = !{!946}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !944, file: !158, line: 2863, baseType: !877, size: 960)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !713, file: !158, line: 3392, baseType: !948, size: 1472)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !158, line: 3304, size: 1472, elements: !949)
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !948, file: !158, line: 3305, baseType: !882, size: 1472)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !713, file: !158, line: 3393, baseType: !952, size: 1792)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !158, line: 3248, size: 1792, elements: !953)
!953 = !{!954, !955, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !952, file: !158, line: 3249, baseType: !882, size: 1472)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !952, file: !158, line: 3251, baseType: !956, size: 64, offset: 1472)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !958, line: 463, size: 1152, elements: !959)
!958 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!959 = !{!960, !1124, !1228, !1229, !1232, !1235, !1236, !1237, !1238, !1239, !1240, !1264, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !957, file: !958, line: 464, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !135, line: 194, size: 384, elements: !963)
!963 = !{!964, !1013, !1026, !1040, !1092, !1105}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !962, file: !135, line: 197, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !135, line: 182, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !135, line: 116, size: 704, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !1001, !1010, !1011, !1012}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !967, file: !135, line: 119, baseType: !966, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !967, file: !135, line: 122, baseType: !966, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !967, file: !135, line: 123, baseType: !966, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !967, file: !135, line: 126, baseType: !588, size: 32, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !967, file: !135, line: 129, baseType: !134, size: 32, offset: 224)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !967, file: !135, line: 165, baseType: !975, size: 192, offset: 256)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !135, line: 132, size: 192, elements: !976)
!976 = !{!977, !990, !996}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !975, file: !135, line: 137, baseType: !978, size: 128)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !135, line: 133, size: 128, elements: !979)
!979 = !{!980, !989}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !978, file: !135, line: 135, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !135, line: 93, size: 320, elements: !983)
!983 = !{!984, !985, !986, !987, !988}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !982, file: !135, line: 96, baseType: !981, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !982, file: !135, line: 97, baseType: !981, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !982, file: !135, line: 101, baseType: !711, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !982, file: !135, line: 106, baseType: !711, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !982, file: !135, line: 111, baseType: !711, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !978, file: !135, line: 136, baseType: !981, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !975, file: !135, line: 151, baseType: !991, size: 192)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !135, line: 139, size: 192, elements: !992)
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !991, file: !135, line: 141, baseType: !711, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !991, file: !135, line: 145, baseType: !711, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !991, file: !135, line: 150, baseType: !588, size: 32, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !975, file: !135, line: 164, baseType: !997, size: 128)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !135, line: 153, size: 128, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !997, file: !135, line: 161, baseType: !711, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !997, file: !135, line: 163, baseType: !831, size: 32, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !967, file: !135, line: 168, baseType: !1002, size: 64, offset: 448)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !135, line: 67, size: 320, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1003, file: !135, line: 70, baseType: !1002, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1003, file: !135, line: 73, baseType: !966, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1003, file: !135, line: 78, baseType: !711, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1003, file: !135, line: 85, baseType: !595, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1003, file: !135, line: 88, baseType: !588, size: 32, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !967, file: !135, line: 173, baseType: !595, size: 64, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !967, file: !135, line: 173, baseType: !595, size: 64, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !967, file: !135, line: 177, baseType: !587, size: 8, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !962, file: !135, line: 200, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !135, line: 185, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !135, line: 185, size: 128, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1016, file: !135, line: 185, baseType: !1019, size: 128)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !135, line: 184, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !135, line: 184, size: 128, elements: !1021)
!1021 = !{!1022, !1023, !1024}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1020, file: !135, line: 184, baseType: !7, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1020, file: !135, line: 184, baseType: !7, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1020, file: !135, line: 184, baseType: !1025, size: 64, offset: 64)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 64, elements: !630)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !962, file: !135, line: 203, baseType: !1027, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, size: 128, elements: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1029, file: !135, line: 189, baseType: !1032, size: 128)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !135, line: 188, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !135, line: 188, size: 128, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1033, file: !135, line: 188, baseType: !7, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1033, file: !135, line: 188, baseType: !7, size: 32, offset: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1033, file: !135, line: 188, baseType: !1038, size: 64, offset: 64)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 64, elements: !630)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !135, line: 180, baseType: !1002)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !962, file: !135, line: 207, baseType: !1041, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1042, line: 144, baseType: !1043)
!1042 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1042, line: 100, size: 896, elements: !1045)
!1045 = !{!1046, !1054, !1059, !1064, !1066, !1069, !1070, !1071, !1072, !1073, !1078, !1080, !1081, !1086, !1091}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1044, file: !1042, line: 102, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1042, line: 52, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1042, line: 47, baseType: !7)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1044, file: !1042, line: 105, baseType: !1055, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1042, line: 59, baseType: !1056)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!588, !1052, !1052}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1044, file: !1042, line: 108, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1042, line: 63, baseType: !1061)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !592}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1044, file: !1042, line: 111, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1044, file: !1042, line: 114, baseType: !1067, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1068, line: 46, baseType: !665)
!1068 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1044, file: !1042, line: 117, baseType: !1067, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1044, file: !1042, line: 120, baseType: !1067, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1044, file: !1042, line: 124, baseType: !7, size: 32, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1044, file: !1042, line: 128, baseType: !7, size: 32, offset: 480)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1044, file: !1042, line: 131, baseType: !1074, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1042, line: 75, baseType: !1075)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!592, !1067, !1067}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1044, file: !1042, line: 132, baseType: !1079, size: 64, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1042, line: 78, baseType: !1061)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1044, file: !1042, line: 135, baseType: !592, size: 64, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1044, file: !1042, line: 136, baseType: !1082, size: 64, offset: 704)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1042, line: 82, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!592, !592, !1067, !1067}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1044, file: !1042, line: 137, baseType: !1087, size: 64, offset: 768)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1042, line: 83, baseType: !1088)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !592, !592}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1044, file: !1042, line: 141, baseType: !7, size: 32, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !962, file: !135, line: 211, baseType: !1093, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !158, line: 183, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !158, line: 183, size: 128, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1095, file: !158, line: 183, baseType: !1098, size: 128)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !158, line: 182, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !158, line: 182, size: 128, elements: !1100)
!1100 = !{!1101, !1102, !1103}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1099, file: !158, line: 182, baseType: !7, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1099, file: !158, line: 182, baseType: !7, size: 32, offset: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1099, file: !158, line: 182, baseType: !1104, size: 64, offset: 64)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 64, elements: !630)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !962, file: !135, line: 220, baseType: !1106, size: 64, offset: 320)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !135, line: 217, size: 64, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1106, file: !135, line: 218, baseType: !1093, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1106, file: !135, line: 219, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1112, line: 29, baseType: !1113)
!1112 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1112, line: 29, size: 96, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1113, file: !1112, line: 29, baseType: !1116, size: 96)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1112, line: 27, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1112, line: 27, size: 96, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1117, file: !1112, line: 27, baseType: !7, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1117, file: !1112, line: 27, baseType: !7, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1117, file: !1112, line: 27, baseType: !1122, size: 8, offset: 64)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1123, size: 8, elements: !630)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1112, line: 26, baseType: !587)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !957, file: !958, line: 467, baseType: !1125, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !142, line: 374, size: 640, elements: !1127)
!1127 = !{!1128, !1203, !1204, !1217, !1218, !1219, !1220, !1221, !1222, !1224, !1226, !1227}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1126, file: !142, line: 377, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !596, line: 111, baseType: !1130)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !142, line: 217, size: 832, elements: !1132)
!1132 = !{!1133, !1168, !1169, !1170, !1173, !1177, !1178, !1179, !1197, !1198, !1199, !1200, !1201, !1202}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1131, file: !142, line: 219, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !142, line: 151, baseType: !1136)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !142, line: 151, size: 128, elements: !1137)
!1137 = !{!1138}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1136, file: !142, line: 151, baseType: !1139, size: 128)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !142, line: 150, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !142, line: 150, size: 128, elements: !1141)
!1141 = !{!1142, !1143, !1144}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1140, file: !142, line: 150, baseType: !7, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1140, file: !142, line: 150, baseType: !7, size: 32, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1140, file: !142, line: 150, baseType: !1145, size: 64, offset: 64)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1146, size: 64, elements: !630)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !596, line: 108, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !142, line: 122, size: 512, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1160, !1161, !1162, !1163, !1164, !1165, !1166}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1148, file: !142, line: 124, baseType: !1130, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1148, file: !142, line: 125, baseType: !1130, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1148, file: !142, line: 131, baseType: !1153, size: 64, offset: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !142, line: 128, size: 64, elements: !1154)
!1154 = !{!1155, !1159}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1153, file: !142, line: 129, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !596, line: 66, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !596, line: 65, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1153, file: !142, line: 130, baseType: !595, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1148, file: !142, line: 134, baseType: !592, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1148, file: !142, line: 137, baseType: !711, size: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1148, file: !142, line: 138, baseType: !831, size: 32, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1148, file: !142, line: 142, baseType: !7, size: 32, offset: 352)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1148, file: !142, line: 144, baseType: !588, size: 32, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1148, file: !142, line: 145, baseType: !588, size: 32, offset: 416)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1148, file: !142, line: 146, baseType: !1167, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !142, line: 119, baseType: !682)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1131, file: !142, line: 220, baseType: !1134, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1131, file: !142, line: 223, baseType: !592, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1131, file: !142, line: 226, baseType: !1171, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !142, line: 185, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1131, file: !142, line: 229, baseType: !1174, size: 128, offset: 256)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, size: 128, elements: !666)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !142, line: 229, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1131, file: !142, line: 232, baseType: !1130, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1131, file: !142, line: 233, baseType: !1130, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1131, file: !142, line: 238, baseType: !1180, size: 64, offset: 512)
!1180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !142, line: 235, size: 64, elements: !1181)
!1181 = !{!1182, !1188}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1180, file: !142, line: 236, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !142, line: 273, size: 128, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1184, file: !142, line: 275, baseType: !1156, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1184, file: !142, line: 278, baseType: !1156, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1180, file: !142, line: 237, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !142, line: 259, size: 320, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1190, file: !142, line: 261, baseType: !595, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1190, file: !142, line: 262, baseType: !595, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1190, file: !142, line: 266, baseType: !595, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1190, file: !142, line: 267, baseType: !595, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1190, file: !142, line: 270, baseType: !588, size: 32, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1131, file: !142, line: 241, baseType: !1167, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1131, file: !142, line: 244, baseType: !588, size: 32, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1131, file: !142, line: 247, baseType: !588, size: 32, offset: 672)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1131, file: !142, line: 250, baseType: !588, size: 32, offset: 704)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1131, file: !142, line: 253, baseType: !588, size: 32, offset: 736)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1131, file: !142, line: 256, baseType: !588, size: 32, offset: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1126, file: !142, line: 378, baseType: !1129, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1126, file: !142, line: 381, baseType: !1205, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !142, line: 282, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !142, line: 282, size: 128, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1207, file: !142, line: 282, baseType: !1210, size: 128)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !142, line: 281, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !142, line: 281, size: 128, elements: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1211, file: !142, line: 281, baseType: !7, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1211, file: !142, line: 281, baseType: !7, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1211, file: !142, line: 281, baseType: !1216, size: 64, offset: 64)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1129, size: 64, elements: !630)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1126, file: !142, line: 384, baseType: !588, size: 32, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1126, file: !142, line: 387, baseType: !588, size: 32, offset: 224)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1126, file: !142, line: 390, baseType: !588, size: 32, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1126, file: !142, line: 394, baseType: !1205, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1126, file: !142, line: 396, baseType: !141, size: 32, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1126, file: !142, line: 399, baseType: !1223, size: 64, offset: 416)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !666)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1126, file: !142, line: 402, baseType: !1225, size: 64, offset: 480)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !666)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1126, file: !142, line: 406, baseType: !588, size: 32, offset: 544)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1126, file: !142, line: 409, baseType: !588, size: 32, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !957, file: !958, line: 470, baseType: !1157, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !957, file: !958, line: 473, baseType: !1230, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !958, line: 166, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !957, file: !958, line: 476, baseType: !1233, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !958, line: 476, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !957, file: !958, line: 479, baseType: !1041, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !957, file: !958, line: 484, baseType: !711, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !957, file: !958, line: 488, baseType: !711, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !957, file: !958, line: 493, baseType: !711, size: 64, offset: 512)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !957, file: !958, line: 496, baseType: !711, size: 64, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !957, file: !958, line: 501, baseType: !1241, size: 64, offset: 640)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !153, line: 2355, size: 576, elements: !1243)
!1243 = !{!1244, !1247, !1248, !1249, !1250, !1252, !1253, !1258, !1259, !1260, !1261, !1262, !1263}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1242, file: !153, line: 2356, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !153, line: 2356, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1242, file: !153, line: 2357, baseType: !593, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1242, file: !153, line: 2358, baseType: !588, size: 32, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1242, file: !153, line: 2359, baseType: !588, size: 32, offset: 160)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1242, file: !153, line: 2360, baseType: !1251, size: 128, offset: 192)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 128, elements: !691)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1242, file: !153, line: 2364, baseType: !588, size: 32, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1242, file: !153, line: 2367, baseType: !1254, size: 128, offset: 384)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !153, line: 2349, size: 128, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1254, file: !153, line: 2351, baseType: !595, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1254, file: !153, line: 2352, baseType: !682, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1242, file: !153, line: 2371, baseType: !152, size: 32, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1242, file: !153, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1242, file: !153, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1242, file: !153, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1242, file: !153, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1242, file: !153, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !957, file: !958, line: 504, baseType: !1265, size: 64, offset: 704)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !958, line: 504, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !957, file: !958, line: 507, baseType: !1041, size: 64, offset: 768)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !957, file: !958, line: 510, baseType: !588, size: 32, offset: 832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !957, file: !958, line: 513, baseType: !588, size: 32, offset: 864)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !957, file: !958, line: 516, baseType: !831, size: 32, offset: 896)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !957, file: !958, line: 519, baseType: !831, size: 32, offset: 928)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !957, file: !958, line: 522, baseType: !7, size: 32, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !957, file: !958, line: 523, baseType: !7, size: 32, offset: 992)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !957, file: !958, line: 528, baseType: !593, size: 64, offset: 1024)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !957, file: !958, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !957, file: !958, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !957, file: !958, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !957, file: !958, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !957, file: !958, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !957, file: !958, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !957, file: !958, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !957, file: !958, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !957, file: !958, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !957, file: !958, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !957, file: !958, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !957, file: !958, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !957, file: !958, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !957, file: !958, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !957, file: !958, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !957, file: !958, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !952, file: !158, line: 3254, baseType: !711, size: 64, offset: 1536)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !952, file: !158, line: 3257, baseType: !711, size: 64, offset: 1600)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !952, file: !158, line: 3258, baseType: !711, size: 64, offset: 1664)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !952, file: !158, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !952, file: !158, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !952, file: !158, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !952, file: !158, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !952, file: !158, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !952, file: !158, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !952, file: !158, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !952, file: !158, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !952, file: !158, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !952, file: !158, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !952, file: !158, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !952, file: !158, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !952, file: !158, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !952, file: !158, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !952, file: !158, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !952, file: !158, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !952, file: !158, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !952, file: !158, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !158, line: 3394, baseType: !1313, size: 1344)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !158, line: 2279, size: 1344, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1340, !1341, !1342, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1313, file: !158, line: 2280, baseType: !749, size: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1313, file: !158, line: 2281, baseType: !711, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1313, file: !158, line: 2282, baseType: !711, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1313, file: !158, line: 2283, baseType: !711, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1313, file: !158, line: 2284, baseType: !711, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1313, file: !158, line: 2285, baseType: !7, size: 32, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1313, file: !158, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1313, file: !158, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1313, file: !158, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1313, file: !158, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1313, file: !158, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1313, file: !158, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1313, file: !158, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1313, file: !158, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1313, file: !158, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1313, file: !158, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1313, file: !158, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1313, file: !158, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1313, file: !158, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1313, file: !158, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1313, file: !158, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1313, file: !158, line: 2305, baseType: !7, size: 32, offset: 512)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1313, file: !158, line: 2306, baseType: !1338, size: 32, offset: 544)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1339, line: 31, baseType: !588)
!1339 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1313, file: !158, line: 2307, baseType: !711, size: 64, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1313, file: !158, line: 2308, baseType: !711, size: 64, offset: 640)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1313, file: !158, line: 2314, baseType: !1343, size: 64, offset: 704)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !158, line: 2309, size: 64, elements: !1344)
!1344 = !{!1345, !1346, !1347}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1343, file: !158, line: 2310, baseType: !588, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1343, file: !158, line: 2311, baseType: !593, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1343, file: !158, line: 2312, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !158, line: 2277, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1313, file: !158, line: 2315, baseType: !711, size: 64, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1313, file: !158, line: 2316, baseType: !711, size: 64, offset: 832)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1313, file: !158, line: 2317, baseType: !711, size: 64, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1313, file: !158, line: 2318, baseType: !711, size: 64, offset: 960)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1313, file: !158, line: 2319, baseType: !711, size: 64, offset: 1024)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1313, file: !158, line: 2320, baseType: !711, size: 64, offset: 1088)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1313, file: !158, line: 2321, baseType: !711, size: 64, offset: 1152)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1313, file: !158, line: 2322, baseType: !711, size: 64, offset: 1216)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1313, file: !158, line: 2324, baseType: !1359, size: 64, offset: 1280)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !158, line: 2324, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !713, file: !158, line: 3395, baseType: !1362, size: 320)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !158, line: 1469, size: 320, elements: !1363)
!1363 = !{!1364, !1365, !1366}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1362, file: !158, line: 1470, baseType: !749, size: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1362, file: !158, line: 1471, baseType: !711, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1362, file: !158, line: 1472, baseType: !711, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !713, file: !158, line: 3396, baseType: !1368, size: 320)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !158, line: 1482, size: 320, elements: !1369)
!1369 = !{!1370, !1371, !1372}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1368, file: !158, line: 1483, baseType: !749, size: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1368, file: !158, line: 1484, baseType: !588, size: 32, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1368, file: !158, line: 1485, baseType: !1104, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !713, file: !158, line: 3397, baseType: !1374, size: 384)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !158, line: 1829, size: 384, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1374, file: !158, line: 1830, baseType: !749, size: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1374, file: !158, line: 1831, baseType: !831, size: 32, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1374, file: !158, line: 1832, baseType: !711, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1374, file: !158, line: 1835, baseType: !1104, size: 64, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !713, file: !158, line: 3398, baseType: !1381, size: 704)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !158, line: 1898, size: 704, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1389, !1390, !1393}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1381, file: !158, line: 1899, baseType: !749, size: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1381, file: !158, line: 1902, baseType: !711, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1381, file: !158, line: 1905, baseType: !1386, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !596, line: 58, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !596, line: 57, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1381, file: !158, line: 1908, baseType: !7, size: 32, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1381, file: !158, line: 1911, baseType: !1391, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !158, line: 1876, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1381, file: !158, line: 1914, baseType: !1394, size: 256, offset: 448)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !158, line: 1883, size: 256, elements: !1395)
!1395 = !{!1396, !1398, !1399, !1404}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1394, file: !158, line: 1884, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1394, file: !158, line: 1885, baseType: !1397, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1394, file: !158, line: 1891, baseType: !1400, size: 64, offset: 128)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !158, line: 1891, size: 64, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1400, file: !158, line: 1891, baseType: !1386, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1400, file: !158, line: 1891, baseType: !711, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1394, file: !158, line: 1892, baseType: !1405, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !713, file: !158, line: 3399, baseType: !1407, size: 704)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !158, line: 2008, size: 704, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1407, file: !158, line: 2009, baseType: !749, size: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1407, file: !158, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1407, file: !158, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1407, file: !158, line: 2014, baseType: !831, size: 32, offset: 224)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1407, file: !158, line: 2016, baseType: !711, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1407, file: !158, line: 2017, baseType: !1093, size: 64, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1407, file: !158, line: 2019, baseType: !711, size: 64, offset: 384)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1407, file: !158, line: 2020, baseType: !711, size: 64, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1407, file: !158, line: 2021, baseType: !711, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1407, file: !158, line: 2022, baseType: !711, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1407, file: !158, line: 2023, baseType: !711, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !713, file: !158, line: 3400, baseType: !1421, size: 832)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !158, line: 2430, size: 832, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1421, file: !158, line: 2431, baseType: !749, size: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1421, file: !158, line: 2433, baseType: !711, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1421, file: !158, line: 2434, baseType: !711, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1421, file: !158, line: 2435, baseType: !711, size: 64, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1421, file: !158, line: 2436, baseType: !711, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1421, file: !158, line: 2437, baseType: !1093, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1421, file: !158, line: 2438, baseType: !711, size: 64, offset: 512)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1421, file: !158, line: 2440, baseType: !711, size: 64, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1421, file: !158, line: 2441, baseType: !711, size: 64, offset: 640)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1421, file: !158, line: 2443, baseType: !1433, size: 128, offset: 704)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !158, line: 182, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !158, line: 182, size: 128, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1434, file: !158, line: 182, baseType: !1098, size: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !713, file: !158, line: 3401, baseType: !1438, size: 320)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !158, line: 3327, size: 320, elements: !1439)
!1439 = !{!1440, !1441, !1448}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1438, file: !158, line: 3329, baseType: !749, size: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1438, file: !158, line: 3330, baseType: !1442, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !158, line: 3320, size: 192, elements: !1444)
!1444 = !{!1445, !1446, !1447}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1443, file: !158, line: 3322, baseType: !1442, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1443, file: !158, line: 3323, baseType: !1442, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1443, file: !158, line: 3324, baseType: !711, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1438, file: !158, line: 3331, baseType: !1442, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !713, file: !158, line: 3402, baseType: !1450, size: 256)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !158, line: 1540, size: 256, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1450, file: !158, line: 1541, baseType: !749, size: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1450, file: !158, line: 1542, baseType: !1454, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !158, line: 1538, baseType: !1456)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !158, line: 1538, size: 192, elements: !1457)
!1457 = !{!1458}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1456, file: !158, line: 1538, baseType: !1459, size: 192)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !158, line: 1537, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !158, line: 1537, size: 192, elements: !1461)
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1460, file: !158, line: 1537, baseType: !7, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1460, file: !158, line: 1537, baseType: !7, size: 32, offset: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1460, file: !158, line: 1537, baseType: !1465, size: 128, offset: 64)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 128, elements: !630)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !158, line: 1535, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !158, line: 1532, size: 128, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1467, file: !158, line: 1533, baseType: !711, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1467, file: !158, line: 1534, baseType: !711, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !713, file: !158, line: 3403, baseType: !1472, size: 512)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !158, line: 1938, size: 512, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1483, !1484, !1485}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1472, file: !158, line: 1939, baseType: !749, size: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1472, file: !158, line: 1940, baseType: !831, size: 32, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1472, file: !158, line: 1941, baseType: !157, size: 32, offset: 224)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1472, file: !158, line: 1946, baseType: !1478, size: 32, offset: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !158, line: 1942, size: 32, elements: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1478, file: !158, line: 1943, baseType: !176, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1478, file: !158, line: 1944, baseType: !183, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1478, file: !158, line: 1945, baseType: !190, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1472, file: !158, line: 1950, baseType: !1156, size: 64, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1472, file: !158, line: 1951, baseType: !1156, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1472, file: !158, line: 1953, baseType: !1104, size: 64, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !713, file: !158, line: 3404, baseType: !1487, size: 1664)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !158, line: 3337, size: 1664, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1487, file: !158, line: 3338, baseType: !749, size: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1487, file: !158, line: 3341, baseType: !1491, size: 1472, offset: 192)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1492, line: 410, size: 1472, elements: !1493)
!1492 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1491, file: !1492, line: 412, baseType: !588, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1491, file: !1492, line: 413, baseType: !588, size: 32, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1491, file: !1492, line: 414, baseType: !588, size: 32, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1491, file: !1492, line: 415, baseType: !588, size: 32, offset: 96)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1491, file: !1492, line: 416, baseType: !588, size: 32, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1491, file: !1492, line: 417, baseType: !588, size: 32, offset: 160)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1491, file: !1492, line: 418, baseType: !587, size: 8, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1491, file: !1492, line: 419, baseType: !587, size: 8, offset: 200)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1491, file: !1492, line: 420, baseType: !1503, size: 8, offset: 208)
!1503 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1491, file: !1492, line: 421, baseType: !1503, size: 8, offset: 216)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1491, file: !1492, line: 422, baseType: !1503, size: 8, offset: 224)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1491, file: !1492, line: 423, baseType: !1503, size: 8, offset: 232)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1491, file: !1492, line: 424, baseType: !1503, size: 8, offset: 240)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1491, file: !1492, line: 425, baseType: !1503, size: 8, offset: 248)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1491, file: !1492, line: 426, baseType: !1503, size: 8, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1491, file: !1492, line: 427, baseType: !1503, size: 8, offset: 264)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1491, file: !1492, line: 428, baseType: !1503, size: 8, offset: 272)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1491, file: !1492, line: 429, baseType: !1503, size: 8, offset: 280)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1491, file: !1492, line: 430, baseType: !1503, size: 8, offset: 288)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1491, file: !1492, line: 431, baseType: !1503, size: 8, offset: 296)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1491, file: !1492, line: 432, baseType: !1503, size: 8, offset: 304)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1491, file: !1492, line: 433, baseType: !1503, size: 8, offset: 312)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1491, file: !1492, line: 434, baseType: !1503, size: 8, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1491, file: !1492, line: 435, baseType: !1503, size: 8, offset: 328)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1491, file: !1492, line: 436, baseType: !1503, size: 8, offset: 336)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1491, file: !1492, line: 437, baseType: !1503, size: 8, offset: 344)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1491, file: !1492, line: 438, baseType: !1503, size: 8, offset: 352)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1491, file: !1492, line: 439, baseType: !1503, size: 8, offset: 360)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1491, file: !1492, line: 440, baseType: !1503, size: 8, offset: 368)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1491, file: !1492, line: 441, baseType: !1503, size: 8, offset: 376)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1491, file: !1492, line: 442, baseType: !1503, size: 8, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1491, file: !1492, line: 443, baseType: !1503, size: 8, offset: 392)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1491, file: !1492, line: 444, baseType: !1503, size: 8, offset: 400)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1491, file: !1492, line: 445, baseType: !1503, size: 8, offset: 408)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1491, file: !1492, line: 446, baseType: !1503, size: 8, offset: 416)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1491, file: !1492, line: 447, baseType: !1503, size: 8, offset: 424)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1491, file: !1492, line: 448, baseType: !1503, size: 8, offset: 432)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1491, file: !1492, line: 449, baseType: !1503, size: 8, offset: 440)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1491, file: !1492, line: 450, baseType: !1503, size: 8, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1491, file: !1492, line: 451, baseType: !1503, size: 8, offset: 456)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1491, file: !1492, line: 452, baseType: !1503, size: 8, offset: 464)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1491, file: !1492, line: 453, baseType: !1503, size: 8, offset: 472)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1491, file: !1492, line: 454, baseType: !1503, size: 8, offset: 480)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1491, file: !1492, line: 455, baseType: !1503, size: 8, offset: 488)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1491, file: !1492, line: 456, baseType: !1503, size: 8, offset: 496)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1491, file: !1492, line: 457, baseType: !1503, size: 8, offset: 504)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1491, file: !1492, line: 458, baseType: !1503, size: 8, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1491, file: !1492, line: 459, baseType: !1503, size: 8, offset: 520)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1491, file: !1492, line: 460, baseType: !1503, size: 8, offset: 528)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1491, file: !1492, line: 461, baseType: !1503, size: 8, offset: 536)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1491, file: !1492, line: 462, baseType: !1503, size: 8, offset: 544)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1491, file: !1492, line: 463, baseType: !1503, size: 8, offset: 552)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1491, file: !1492, line: 464, baseType: !1503, size: 8, offset: 560)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1491, file: !1492, line: 465, baseType: !1503, size: 8, offset: 568)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1491, file: !1492, line: 466, baseType: !1503, size: 8, offset: 576)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1491, file: !1492, line: 467, baseType: !1503, size: 8, offset: 584)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1491, file: !1492, line: 468, baseType: !1503, size: 8, offset: 592)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1491, file: !1492, line: 469, baseType: !1503, size: 8, offset: 600)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1491, file: !1492, line: 470, baseType: !1503, size: 8, offset: 608)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1491, file: !1492, line: 471, baseType: !1503, size: 8, offset: 616)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1491, file: !1492, line: 472, baseType: !1503, size: 8, offset: 624)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1491, file: !1492, line: 473, baseType: !1503, size: 8, offset: 632)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1491, file: !1492, line: 474, baseType: !1503, size: 8, offset: 640)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1491, file: !1492, line: 475, baseType: !1503, size: 8, offset: 648)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1491, file: !1492, line: 476, baseType: !1503, size: 8, offset: 656)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1491, file: !1492, line: 477, baseType: !1503, size: 8, offset: 664)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1491, file: !1492, line: 478, baseType: !1503, size: 8, offset: 672)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1491, file: !1492, line: 479, baseType: !1503, size: 8, offset: 680)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1491, file: !1492, line: 480, baseType: !1503, size: 8, offset: 688)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1491, file: !1492, line: 481, baseType: !1503, size: 8, offset: 696)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1491, file: !1492, line: 482, baseType: !1503, size: 8, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1491, file: !1492, line: 483, baseType: !1503, size: 8, offset: 712)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1491, file: !1492, line: 484, baseType: !1503, size: 8, offset: 720)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1491, file: !1492, line: 485, baseType: !1503, size: 8, offset: 728)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1491, file: !1492, line: 486, baseType: !1503, size: 8, offset: 736)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1491, file: !1492, line: 487, baseType: !1503, size: 8, offset: 744)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1491, file: !1492, line: 488, baseType: !1503, size: 8, offset: 752)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1491, file: !1492, line: 489, baseType: !1503, size: 8, offset: 760)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1491, file: !1492, line: 490, baseType: !1503, size: 8, offset: 768)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1491, file: !1492, line: 491, baseType: !1503, size: 8, offset: 776)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1491, file: !1492, line: 492, baseType: !1503, size: 8, offset: 784)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1491, file: !1492, line: 493, baseType: !1503, size: 8, offset: 792)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1491, file: !1492, line: 494, baseType: !1503, size: 8, offset: 800)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1491, file: !1492, line: 495, baseType: !1503, size: 8, offset: 808)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1491, file: !1492, line: 496, baseType: !1503, size: 8, offset: 816)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1491, file: !1492, line: 497, baseType: !1503, size: 8, offset: 824)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1491, file: !1492, line: 498, baseType: !1503, size: 8, offset: 832)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1491, file: !1492, line: 499, baseType: !1503, size: 8, offset: 840)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1491, file: !1492, line: 500, baseType: !1503, size: 8, offset: 848)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1491, file: !1492, line: 501, baseType: !1503, size: 8, offset: 856)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1491, file: !1492, line: 502, baseType: !1503, size: 8, offset: 864)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1491, file: !1492, line: 503, baseType: !1503, size: 8, offset: 872)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1491, file: !1492, line: 504, baseType: !1503, size: 8, offset: 880)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1491, file: !1492, line: 505, baseType: !1503, size: 8, offset: 888)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1491, file: !1492, line: 506, baseType: !1503, size: 8, offset: 896)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1491, file: !1492, line: 507, baseType: !1503, size: 8, offset: 904)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1491, file: !1492, line: 508, baseType: !1503, size: 8, offset: 912)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1491, file: !1492, line: 509, baseType: !1503, size: 8, offset: 920)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1491, file: !1492, line: 510, baseType: !1503, size: 8, offset: 928)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1491, file: !1492, line: 511, baseType: !1503, size: 8, offset: 936)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1491, file: !1492, line: 512, baseType: !1503, size: 8, offset: 944)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1491, file: !1492, line: 513, baseType: !1503, size: 8, offset: 952)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1491, file: !1492, line: 514, baseType: !1503, size: 8, offset: 960)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1491, file: !1492, line: 515, baseType: !1503, size: 8, offset: 968)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1491, file: !1492, line: 516, baseType: !1503, size: 8, offset: 976)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1491, file: !1492, line: 517, baseType: !1503, size: 8, offset: 984)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1491, file: !1492, line: 518, baseType: !1503, size: 8, offset: 992)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1491, file: !1492, line: 519, baseType: !1503, size: 8, offset: 1000)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1491, file: !1492, line: 520, baseType: !1503, size: 8, offset: 1008)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1491, file: !1492, line: 521, baseType: !1503, size: 8, offset: 1016)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1491, file: !1492, line: 522, baseType: !1503, size: 8, offset: 1024)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1491, file: !1492, line: 523, baseType: !1503, size: 8, offset: 1032)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1491, file: !1492, line: 524, baseType: !1503, size: 8, offset: 1040)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1491, file: !1492, line: 525, baseType: !1503, size: 8, offset: 1048)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1491, file: !1492, line: 526, baseType: !1503, size: 8, offset: 1056)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1491, file: !1492, line: 527, baseType: !1503, size: 8, offset: 1064)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1491, file: !1492, line: 528, baseType: !1503, size: 8, offset: 1072)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1491, file: !1492, line: 529, baseType: !1503, size: 8, offset: 1080)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1491, file: !1492, line: 530, baseType: !1503, size: 8, offset: 1088)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1491, file: !1492, line: 531, baseType: !1503, size: 8, offset: 1096)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1491, file: !1492, line: 532, baseType: !1503, size: 8, offset: 1104)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1491, file: !1492, line: 533, baseType: !1503, size: 8, offset: 1112)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1491, file: !1492, line: 534, baseType: !1503, size: 8, offset: 1120)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1491, file: !1492, line: 535, baseType: !1503, size: 8, offset: 1128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1491, file: !1492, line: 536, baseType: !1503, size: 8, offset: 1136)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1491, file: !1492, line: 537, baseType: !1503, size: 8, offset: 1144)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1491, file: !1492, line: 538, baseType: !1503, size: 8, offset: 1152)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1491, file: !1492, line: 539, baseType: !1503, size: 8, offset: 1160)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1491, file: !1492, line: 540, baseType: !1503, size: 8, offset: 1168)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1491, file: !1492, line: 541, baseType: !1503, size: 8, offset: 1176)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1491, file: !1492, line: 542, baseType: !1503, size: 8, offset: 1184)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1491, file: !1492, line: 543, baseType: !1503, size: 8, offset: 1192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1491, file: !1492, line: 544, baseType: !1503, size: 8, offset: 1200)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1491, file: !1492, line: 545, baseType: !1503, size: 8, offset: 1208)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1491, file: !1492, line: 546, baseType: !1503, size: 8, offset: 1216)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1491, file: !1492, line: 547, baseType: !1503, size: 8, offset: 1224)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1491, file: !1492, line: 548, baseType: !1503, size: 8, offset: 1232)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1491, file: !1492, line: 549, baseType: !1503, size: 8, offset: 1240)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1491, file: !1492, line: 550, baseType: !1503, size: 8, offset: 1248)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1491, file: !1492, line: 551, baseType: !1503, size: 8, offset: 1256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1491, file: !1492, line: 552, baseType: !1503, size: 8, offset: 1264)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1491, file: !1492, line: 553, baseType: !1503, size: 8, offset: 1272)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1491, file: !1492, line: 554, baseType: !1503, size: 8, offset: 1280)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1491, file: !1492, line: 555, baseType: !1503, size: 8, offset: 1288)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1491, file: !1492, line: 556, baseType: !1503, size: 8, offset: 1296)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1491, file: !1492, line: 557, baseType: !1503, size: 8, offset: 1304)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1491, file: !1492, line: 558, baseType: !1503, size: 8, offset: 1312)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1491, file: !1492, line: 559, baseType: !1503, size: 8, offset: 1320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1491, file: !1492, line: 560, baseType: !1503, size: 8, offset: 1328)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1491, file: !1492, line: 561, baseType: !1503, size: 8, offset: 1336)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1491, file: !1492, line: 562, baseType: !1503, size: 8, offset: 1344)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1491, file: !1492, line: 563, baseType: !1503, size: 8, offset: 1352)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1491, file: !1492, line: 564, baseType: !1503, size: 8, offset: 1360)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1491, file: !1492, line: 565, baseType: !1503, size: 8, offset: 1368)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1491, file: !1492, line: 566, baseType: !1503, size: 8, offset: 1376)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1491, file: !1492, line: 567, baseType: !1503, size: 8, offset: 1384)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1491, file: !1492, line: 568, baseType: !1503, size: 8, offset: 1392)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1491, file: !1492, line: 569, baseType: !1503, size: 8, offset: 1400)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1491, file: !1492, line: 570, baseType: !1503, size: 8, offset: 1408)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1491, file: !1492, line: 571, baseType: !1503, size: 8, offset: 1416)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1491, file: !1492, line: 572, baseType: !1503, size: 8, offset: 1424)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1491, file: !1492, line: 573, baseType: !1503, size: 8, offset: 1432)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1491, file: !1492, line: 574, baseType: !1503, size: 8, offset: 1440)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !713, file: !158, line: 3405, baseType: !1659, size: 384)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !158, line: 3352, size: 384, elements: !1660)
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1659, file: !158, line: 3353, baseType: !749, size: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1659, file: !158, line: 3356, baseType: !1663, size: 192, offset: 192)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1492, line: 578, size: 192, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1663, file: !1492, line: 580, baseType: !588, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1663, file: !1492, line: 581, baseType: !588, size: 32, offset: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1663, file: !1492, line: 582, baseType: !588, size: 32, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1663, file: !1492, line: 583, baseType: !588, size: 32, offset: 96)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1663, file: !1492, line: 584, baseType: !587, size: 8, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1663, file: !1492, line: 585, baseType: !587, size: 8, offset: 136)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1663, file: !1492, line: 586, baseType: !587, size: 8, offset: 144)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1663, file: !1492, line: 587, baseType: !587, size: 8, offset: 152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1663, file: !1492, line: 588, baseType: !587, size: 8, offset: 160)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1663, file: !1492, line: 589, baseType: !587, size: 8, offset: 168)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1663, file: !1492, line: 590, baseType: !587, size: 8, offset: 176)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !616, file: !385, line: 178, baseType: !1130, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !616, file: !385, line: 179, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !385, line: 150, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !385, line: 142, size: 320, elements: !1681)
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1680, file: !385, line: 144, baseType: !711, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1680, file: !385, line: 145, baseType: !595, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1680, file: !385, line: 146, baseType: !595, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1680, file: !385, line: 147, baseType: !1338, size: 32, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1680, file: !385, line: 148, baseType: !7, size: 32, offset: 224)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1680, file: !385, line: 149, baseType: !587, size: 8, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !616, file: !385, line: 180, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !385, line: 162, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !385, line: 159, size: 128, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1691, file: !385, line: 160, baseType: !711, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1691, file: !385, line: 161, baseType: !682, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !616, file: !385, line: 181, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !385, line: 181, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !611, file: !385, line: 317, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 64, elements: !630)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !611, file: !385, line: 318, baseType: !1701, size: 320)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !385, line: 188, size: 320, elements: !1702)
!1702 = !{!1703, !1705, !1760}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1701, file: !385, line: 190, baseType: !1704, size: 192)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 192, elements: !782)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1701, file: !385, line: 193, baseType: !1706, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !385, line: 206, size: 320, elements: !1708)
!1708 = !{!1709, !1745, !1746, !1747, !1759}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1707, file: !385, line: 208, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !596, line: 62, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1713, line: 538, size: 256, elements: !1714)
!1713 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1714 = !{!1715, !1719, !1725, !1736}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1712, file: !1713, line: 539, baseType: !1716, size: 32)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1713, line: 482, size: 32, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1716, file: !1713, line: 484, baseType: !7, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1712, file: !1713, line: 540, baseType: !1720, size: 192)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1713, line: 488, size: 192, elements: !1721)
!1721 = !{!1722, !1723, !1724}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1720, file: !1713, line: 489, baseType: !1716, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1720, file: !1713, line: 492, baseType: !593, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1720, file: !1713, line: 496, baseType: !711, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1712, file: !1713, line: 541, baseType: !1726, size: 256)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1713, line: 504, size: 256, elements: !1727)
!1727 = !{!1728, !1729, !1734, !1735}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1726, file: !1713, line: 505, baseType: !1716, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1726, file: !1713, line: 509, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1713, line: 501, baseType: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1052}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1726, file: !1713, line: 510, baseType: !1052, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1726, file: !1713, line: 513, baseType: !1710, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1712, file: !1713, line: 542, baseType: !1737, size: 128)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1713, line: 530, size: 128, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1737, file: !1713, line: 531, baseType: !1716, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1737, file: !1713, line: 534, baseType: !1741, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1713, line: 525, baseType: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!587, !711, !593, !665, !665}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1707, file: !385, line: 211, baseType: !7, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1707, file: !385, line: 214, baseType: !682, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1707, file: !385, line: 224, baseType: !1748, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !385, line: 202, baseType: !1750)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !385, line: 202, size: 128, elements: !1751)
!1751 = !{!1752}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1750, file: !385, line: 202, baseType: !1753, size: 128)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !385, line: 200, baseType: !1754)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !385, line: 200, size: 128, elements: !1755)
!1755 = !{!1756, !1757, !1758}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1754, file: !385, line: 200, baseType: !7, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1754, file: !385, line: 200, baseType: !7, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1754, file: !385, line: 200, baseType: !629, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1707, file: !385, line: 234, baseType: !1748, size: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1701, file: !385, line: 197, baseType: !682, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !611, file: !385, line: 319, baseType: !771, size: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !611, file: !385, line: 320, baseType: !790, size: 192)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "ds_t", file: !528, line: 218, baseType: !588)
!1764 = !{!1765, !0, !1768, !1807, !1859, !1861, !1863, !1872, !1874}
!1765 = !DIGlobalVariableExpression(var: !1766, expr: !DIExpression())
!1766 = distinct !DIGlobalVariable(name: "dont_calc_deps", scope: !2, file: !3, line: 56, type: !1767, isLocal: true, isDefinition: true)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_head", file: !651, line: 84, baseType: !650)
!1768 = !DIGlobalVariableExpression(var: !1769, expr: !DIExpression())
!1769 = distinct !DIGlobalVariable(name: "ebb_sched_deps_info", scope: !2, file: !3, line: 272, type: !1770, isLocal: true, isDefinition: true)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_deps_info_def", file: !528, line: 1149, size: 832, elements: !1771)
!1771 = !{!1772, !1778, !1782, !1786, !1787, !1788, !1789, !1790, !1794, !1795, !1796, !1800, !1804, !1805, !1806}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "compute_jump_reg_dependencies", scope: !1770, file: !528, line: 1154, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !595, !1776, !1776, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "regset", file: !142, line: 37, baseType: !1777)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !596, line: 47, baseType: !649)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "start_insn", scope: !1770, file: !528, line: 1157, baseType: !1779, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !595}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "finish_insn", scope: !1770, file: !528, line: 1160, baseType: !1783, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "start_lhs", scope: !1770, file: !528, line: 1163, baseType: !1779, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "finish_lhs", scope: !1770, file: !528, line: 1166, baseType: !1783, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "start_rhs", scope: !1770, file: !528, line: 1169, baseType: !1779, size: 64, offset: 320)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "finish_rhs", scope: !1770, file: !528, line: 1172, baseType: !1783, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "note_reg_set", scope: !1770, file: !528, line: 1175, baseType: !1791, size: 64, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !588}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "note_reg_clobber", scope: !1770, file: !528, line: 1178, baseType: !1791, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "note_reg_use", scope: !1770, file: !528, line: 1181, baseType: !1791, size: 64, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "note_mem_dep", scope: !1770, file: !528, line: 1185, baseType: !1797, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !595, !595, !595, !1763}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "note_dep", scope: !1770, file: !528, line: 1188, baseType: !1801, size: 64, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !595, !1763}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "use_cselib", scope: !1770, file: !528, line: 1194, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "use_deps_list", scope: !1770, file: !528, line: 1198, baseType: !7, size: 1, offset: 769, flags: DIFlagBitField, extraData: i64 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "generate_spec_deps", scope: !1770, file: !528, line: 1202, baseType: !7, size: 1, offset: 770, flags: DIFlagBitField, extraData: i64 768)
!1807 = !DIGlobalVariableExpression(var: !1808, expr: !DIExpression())
!1808 = distinct !DIGlobalVariable(name: "ebb_sched_info", scope: !2, file: !3, line: 280, type: !1809, isLocal: true, isDefinition: true)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "haifa_sched_info", file: !528, line: 556, size: 1088, elements: !1810)
!1810 = !{!1811, !1812, !1816, !1820, !1824, !1828, !1835, !1836, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1850, !1854, !1858}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "init_ready_list", scope: !1809, file: !528, line: 560, baseType: !1783, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "can_schedule_ready_p", scope: !1809, file: !528, line: 563, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!588, !595}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_more_p", scope: !1809, file: !528, line: 565, baseType: !1817, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!588}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "new_ready", scope: !1809, file: !528, line: 571, baseType: !1821, size: 64, offset: 192)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!1763, !595, !1763}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !1809, file: !528, line: 575, baseType: !1825, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!588, !595, !595}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "print_insn", scope: !1809, file: !528, line: 580, baseType: !1829, size: 64, offset: 320)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!593, !1832, !588}
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !596, line: 51, baseType: !1833)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "contributes_to_priority", scope: !1809, file: !528, line: 583, baseType: !1825, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "insn_finishes_block_p", scope: !1809, file: !528, line: 587, baseType: !1837, size: 64, offset: 448)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!587, !595}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "prev_head", scope: !1809, file: !528, line: 590, baseType: !595, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "next_tail", scope: !1809, file: !528, line: 590, baseType: !595, size: 64, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1809, file: !528, line: 594, baseType: !595, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1809, file: !528, line: 594, baseType: !595, size: 64, offset: 704)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "queue_must_finish_empty", scope: !1809, file: !528, line: 597, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sched_max_insns_priority", scope: !1809, file: !528, line: 600, baseType: !588, size: 32, offset: 800)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "add_remove_insn", scope: !1809, file: !528, line: 606, baseType: !1847, size: 64, offset: 832)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !595, !588}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "begin_schedule_ready", scope: !1809, file: !528, line: 611, baseType: !1851, size: 64, offset: 896)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !595, !595}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "advance_target_bb", scope: !1809, file: !528, line: 617, baseType: !1855, size: 64, offset: 960)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!1129, !1129, !595}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !528, line: 621, baseType: !7, size: 32, offset: 1024)
!1859 = !DIGlobalVariableExpression(var: !1860, expr: !DIExpression())
!1860 = distinct !DIGlobalVariable(name: "sched_rgn_n_insns", scope: !2, file: !3, line: 53, type: !588, isLocal: true, isDefinition: true)
!1861 = !DIGlobalVariableExpression(var: !1862, expr: !DIExpression())
!1862 = distinct !DIGlobalVariable(name: "rgn_n_insns", scope: !2, file: !3, line: 50, type: !588, isLocal: true, isDefinition: true)
!1863 = !DIGlobalVariableExpression(var: !1864, expr: !DIExpression())
!1864 = distinct !DIGlobalVariable(name: "tmp", scope: !1865, file: !3, line: 201, type: !1869, isLocal: true, isDefinition: true)
!1865 = distinct !DISubprogram(name: "ebb_print_insn", scope: !3, file: !3, line: 199, type: !1830, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1866)
!1866 = !{!1867, !1868}
!1867 = !DILocalVariable(name: "insn", arg: 1, scope: !1865, file: !3, line: 199, type: !1832)
!1868 = !DILocalVariable(name: "aligned", arg: 2, scope: !1865, file: !3, line: 199, type: !588)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 640, elements: !1870)
!1870 = !{!1871}
!1871 = !DISubrange(count: 80)
!1872 = !DIGlobalVariableExpression(var: !1873, expr: !DIExpression())
!1873 = distinct !DIGlobalVariable(name: "last_bb", scope: !2, file: !3, line: 59, type: !1129, isLocal: true, isDefinition: true)
!1874 = !DIGlobalVariableExpression(var: !1875, expr: !DIExpression())
!1875 = distinct !DIGlobalVariable(name: "null_link", scope: !1876, file: !528, line: 1430, type: !1887, isLocal: true, isDefinition: true)
!1876 = distinct !DISubprogram(name: "sd_iterator_start", scope: !528, file: !528, line: 1427, type: !1877, scopeLine: 1428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1879, !595, !1883}
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "sd_iterator_def", file: !528, line: 1414, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sd_iterator", file: !528, line: 1395, size: 256, elements: !1881)
!1881 = !{!1882, !1884, !1885, !1908}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1880, file: !528, line: 1398, baseType: !1883, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "sd_list_types_def", file: !528, line: 1390, baseType: !588)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1880, file: !528, line: 1401, baseType: !595, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "linkp", scope: !1880, file: !528, line: 1408, baseType: !1886, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "dep_link_t", file: !528, line: 280, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dep_link", file: !528, line: 265, size: 192, elements: !1890)
!1890 = !{!1891, !1905, !1906}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1889, file: !528, line: 268, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "dep_node_t", file: !528, line: 261, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dep_node", file: !528, line: 405, size: 576, elements: !1895)
!1895 = !{!1896, !1897, !1904}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1894, file: !528, line: 408, baseType: !1889, size: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dep", scope: !1894, file: !528, line: 411, baseType: !1898, size: 192, offset: 192)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dep", file: !528, line: 227, size: 192, elements: !1899)
!1899 = !{!1900, !1901, !1902, !1903}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "pro", scope: !1898, file: !528, line: 230, baseType: !595, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "con", scope: !1898, file: !528, line: 233, baseType: !595, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1898, file: !528, line: 237, baseType: !545, size: 32, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1898, file: !528, line: 241, baseType: !1763, size: 32, offset: 160)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "forw", scope: !1894, file: !528, line: 414, baseType: !1889, size: 192, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1889, file: !528, line: 271, baseType: !1888, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "prev_nextp", scope: !1889, file: !528, line: 278, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "resolved_p", scope: !1880, file: !528, line: 1411, baseType: !587, size: 8, offset: 192)
!1909 = !{!1910, !1911, !1912}
!1910 = !DILocalVariable(name: "insn", arg: 1, scope: !1876, file: !528, line: 1427, type: !595)
!1911 = !DILocalVariable(name: "types", arg: 2, scope: !1876, file: !528, line: 1427, type: !1883)
!1912 = !DILocalVariable(name: "i", scope: !1876, file: !528, line: 1432, type: !1879)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_sched_info_def", file: !528, line: 81, size: 320, elements: !1914)
!1914 = !{!1915, !1919, !1923, !1927, !1928}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "fix_recovery_cfg", scope: !1913, file: !528, line: 89, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !588, !588, !588}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "add_block", scope: !1913, file: !528, line: 96, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1129, !1129}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_number_of_insns", scope: !1913, file: !528, line: 99, baseType: !1924, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!588, !1129}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "luid_for_non_insn", scope: !1913, file: !528, line: 105, baseType: !1813, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sched_pass_id", scope: !1913, file: !528, line: 108, baseType: !527, size: 32, offset: 256)
!1929 = !{i32 2, !"Dwarf Version", i32 4}
!1930 = !{i32 2, !"Debug Info Version", i32 3}
!1931 = !{i32 1, !"wchar_size", i32 4}
!1932 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1933 = distinct !DISubprogram(name: "vprintf", scope: !1934, file: !1934, line: 39, type: !1935, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1945)
!1934 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!588, !1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !593)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1939, file: !3, baseType: !7, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1939, file: !3, baseType: !7, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1939, file: !3, baseType: !592, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1939, file: !3, baseType: !592, size: 64, offset: 128)
!1945 = !{!1946, !1947}
!1946 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1933, file: !1934, line: 39, type: !1937)
!1947 = !DILocalVariable(name: "__arg", arg: 2, scope: !1933, file: !1934, line: 39, type: !1938)
!1948 = !DILocation(line: 0, scope: !1933)
!1949 = !DILocation(line: 41, column: 20, scope: !1933)
!1950 = !DILocation(line: 41, column: 10, scope: !1933)
!1951 = !DILocation(line: 41, column: 3, scope: !1933)
!1952 = distinct !DISubprogram(name: "getchar", scope: !1934, file: !1934, line: 47, type: !1818, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1953)
!1953 = !{}
!1954 = !DILocation(line: 49, column: 16, scope: !1952)
!1955 = !DILocation(line: 49, column: 10, scope: !1952)
!1956 = !DILocation(line: 49, column: 3, scope: !1952)
!1957 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1934, file: !1934, line: 56, type: !1958, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2011)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!588, !1960}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1962, line: 7, baseType: !1963)
!1962 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1964, line: 49, size: 1728, elements: !1965)
!1964 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1981, !1983, !1984, !1985, !1988, !1990, !1991, !1992, !1995, !1997, !2000, !2003, !2004, !2005, !2006, !2007}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1963, file: !1964, line: 51, baseType: !588, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1963, file: !1964, line: 54, baseType: !590, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1963, file: !1964, line: 55, baseType: !590, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1963, file: !1964, line: 56, baseType: !590, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1963, file: !1964, line: 57, baseType: !590, size: 64, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1963, file: !1964, line: 58, baseType: !590, size: 64, offset: 320)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1963, file: !1964, line: 59, baseType: !590, size: 64, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1963, file: !1964, line: 60, baseType: !590, size: 64, offset: 448)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1963, file: !1964, line: 61, baseType: !590, size: 64, offset: 512)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1963, file: !1964, line: 64, baseType: !590, size: 64, offset: 576)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1963, file: !1964, line: 65, baseType: !590, size: 64, offset: 640)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1963, file: !1964, line: 66, baseType: !590, size: 64, offset: 704)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1963, file: !1964, line: 68, baseType: !1979, size: 64, offset: 768)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1964, line: 36, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1963, file: !1964, line: 70, baseType: !1982, size: 64, offset: 832)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1963, file: !1964, line: 72, baseType: !588, size: 32, offset: 896)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1963, file: !1964, line: 73, baseType: !588, size: 32, offset: 928)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1963, file: !1964, line: 74, baseType: !1986, size: 64, offset: 960)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1987, line: 152, baseType: !682)
!1987 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1963, file: !1964, line: 77, baseType: !1989, size: 16, offset: 1024)
!1989 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1963, file: !1964, line: 78, baseType: !1503, size: 8, offset: 1040)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1963, file: !1964, line: 79, baseType: !806, size: 8, offset: 1048)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1963, file: !1964, line: 81, baseType: !1993, size: 64, offset: 1088)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1964, line: 43, baseType: null)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1963, file: !1964, line: 89, baseType: !1996, size: 64, offset: 1152)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1987, line: 153, baseType: !682)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1963, file: !1964, line: 91, baseType: !1998, size: 64, offset: 1216)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1964, line: 37, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1963, file: !1964, line: 92, baseType: !2001, size: 64, offset: 1280)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1964, line: 38, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1963, file: !1964, line: 93, baseType: !1982, size: 64, offset: 1344)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1963, file: !1964, line: 94, baseType: !592, size: 64, offset: 1408)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1963, file: !1964, line: 95, baseType: !1067, size: 64, offset: 1472)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1963, file: !1964, line: 96, baseType: !588, size: 32, offset: 1536)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1963, file: !1964, line: 98, baseType: !2008, size: 160, offset: 1568)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 160, elements: !2009)
!2009 = !{!2010}
!2010 = !DISubrange(count: 20)
!2011 = !{!2012}
!2012 = !DILocalVariable(name: "__fp", arg: 1, scope: !1957, file: !1934, line: 56, type: !1960)
!2013 = !DILocation(line: 0, scope: !1957)
!2014 = !DILocation(line: 58, column: 10, scope: !1957)
!2015 = !DILocation(line: 58, column: 3, scope: !1957)
!2016 = distinct !DISubprogram(name: "getc_unlocked", scope: !1934, file: !1934, line: 66, type: !1958, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2017 = !{!2018}
!2018 = !DILocalVariable(name: "__fp", arg: 1, scope: !2016, file: !1934, line: 66, type: !1960)
!2019 = !DILocation(line: 0, scope: !2016)
!2020 = !DILocation(line: 68, column: 10, scope: !2016)
!2021 = !DILocation(line: 68, column: 3, scope: !2016)
!2022 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1934, file: !1934, line: 73, type: !1818, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1953)
!2023 = !DILocation(line: 75, column: 10, scope: !2022)
!2024 = !DILocation(line: 75, column: 3, scope: !2022)
!2025 = distinct !DISubprogram(name: "putchar", scope: !1934, file: !1934, line: 82, type: !2026, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!588, !588}
!2028 = !{!2029}
!2029 = !DILocalVariable(name: "__c", arg: 1, scope: !2025, file: !1934, line: 82, type: !588)
!2030 = !DILocation(line: 0, scope: !2025)
!2031 = !DILocation(line: 84, column: 21, scope: !2025)
!2032 = !DILocation(line: 84, column: 10, scope: !2025)
!2033 = !DILocation(line: 84, column: 3, scope: !2025)
!2034 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1934, file: !1934, line: 91, type: !2035, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!588, !588, !1960}
!2037 = !{!2038, !2039}
!2038 = !DILocalVariable(name: "__c", arg: 1, scope: !2034, file: !1934, line: 91, type: !588)
!2039 = !DILocalVariable(name: "__stream", arg: 2, scope: !2034, file: !1934, line: 91, type: !1960)
!2040 = !DILocation(line: 0, scope: !2034)
!2041 = !DILocation(line: 93, column: 10, scope: !2034)
!2042 = !DILocation(line: 93, column: 3, scope: !2034)
!2043 = distinct !DISubprogram(name: "putc_unlocked", scope: !1934, file: !1934, line: 101, type: !2035, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2044 = !{!2045, !2046}
!2045 = !DILocalVariable(name: "__c", arg: 1, scope: !2043, file: !1934, line: 101, type: !588)
!2046 = !DILocalVariable(name: "__stream", arg: 2, scope: !2043, file: !1934, line: 101, type: !1960)
!2047 = !DILocation(line: 0, scope: !2043)
!2048 = !DILocation(line: 103, column: 10, scope: !2043)
!2049 = !DILocation(line: 103, column: 3, scope: !2043)
!2050 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1934, file: !1934, line: 108, type: !2026, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2051)
!2051 = !{!2052}
!2052 = !DILocalVariable(name: "__c", arg: 1, scope: !2050, file: !1934, line: 108, type: !588)
!2053 = !DILocation(line: 0, scope: !2050)
!2054 = !DILocation(line: 110, column: 10, scope: !2050)
!2055 = !DILocation(line: 110, column: 3, scope: !2050)
!2056 = distinct !DISubprogram(name: "getline", scope: !1934, file: !1934, line: 118, type: !2057, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2061)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!2059, !589, !2060, !1960}
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1987, line: 193, baseType: !682)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!2061 = !{!2062, !2063, !2064}
!2062 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2056, file: !1934, line: 118, type: !589)
!2063 = !DILocalVariable(name: "__n", arg: 2, scope: !2056, file: !1934, line: 118, type: !2060)
!2064 = !DILocalVariable(name: "__stream", arg: 3, scope: !2056, file: !1934, line: 118, type: !1960)
!2065 = !DILocation(line: 0, scope: !2056)
!2066 = !DILocation(line: 120, column: 10, scope: !2056)
!2067 = !DILocation(line: 120, column: 3, scope: !2056)
!2068 = distinct !DISubprogram(name: "feof_unlocked", scope: !1934, file: !1934, line: 128, type: !1958, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2069)
!2069 = !{!2070}
!2070 = !DILocalVariable(name: "__stream", arg: 1, scope: !2068, file: !1934, line: 128, type: !1960)
!2071 = !DILocation(line: 0, scope: !2068)
!2072 = !DILocation(line: 130, column: 10, scope: !2068)
!2073 = !DILocation(line: 130, column: 3, scope: !2068)
!2074 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1934, file: !1934, line: 135, type: !1958, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2075 = !{!2076}
!2076 = !DILocalVariable(name: "__stream", arg: 1, scope: !2074, file: !1934, line: 135, type: !1960)
!2077 = !DILocation(line: 0, scope: !2074)
!2078 = !DILocation(line: 137, column: 10, scope: !2074)
!2079 = !DILocation(line: 137, column: 3, scope: !2074)
!2080 = distinct !DISubprogram(name: "tolower", scope: !2081, file: !2081, line: 207, type: !2026, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2082)
!2081 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2082 = !{!2083}
!2083 = !DILocalVariable(name: "__c", arg: 1, scope: !2080, file: !2081, line: 207, type: !588)
!2084 = !DILocation(line: 0, scope: !2080)
!2085 = !DILocation(line: 209, column: 22, scope: !2080)
!2086 = !DILocation(line: 209, column: 39, scope: !2080)
!2087 = !DILocation(line: 209, column: 38, scope: !2080)
!2088 = !DILocation(line: 209, column: 37, scope: !2080)
!2089 = !DILocation(line: 209, column: 10, scope: !2080)
!2090 = !DILocation(line: 209, column: 3, scope: !2080)
!2091 = distinct !DISubprogram(name: "toupper", scope: !2081, file: !2081, line: 213, type: !2026, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2092)
!2092 = !{!2093}
!2093 = !DILocalVariable(name: "__c", arg: 1, scope: !2091, file: !2081, line: 213, type: !588)
!2094 = !DILocation(line: 0, scope: !2091)
!2095 = !DILocation(line: 215, column: 22, scope: !2091)
!2096 = !DILocation(line: 215, column: 39, scope: !2091)
!2097 = !DILocation(line: 215, column: 38, scope: !2091)
!2098 = !DILocation(line: 215, column: 37, scope: !2091)
!2099 = !DILocation(line: 215, column: 10, scope: !2091)
!2100 = !DILocation(line: 215, column: 3, scope: !2091)
!2101 = distinct !DISubprogram(name: "atoi", scope: !2102, file: !2102, line: 361, type: !2103, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2105)
!2102 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!588, !593}
!2105 = !{!2106}
!2106 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2101, file: !2102, line: 361, type: !593)
!2107 = !DILocation(line: 0, scope: !2101)
!2108 = !DILocation(line: 363, column: 16, scope: !2101)
!2109 = !DILocation(line: 363, column: 10, scope: !2101)
!2110 = !DILocation(line: 363, column: 3, scope: !2101)
!2111 = distinct !DISubprogram(name: "atol", scope: !2102, file: !2102, line: 366, type: !2112, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!682, !593}
!2114 = !{!2115}
!2115 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2111, file: !2102, line: 366, type: !593)
!2116 = !DILocation(line: 0, scope: !2111)
!2117 = !DILocation(line: 368, column: 10, scope: !2111)
!2118 = !DILocation(line: 368, column: 3, scope: !2111)
!2119 = distinct !DISubprogram(name: "atoll", scope: !2102, file: !2102, line: 373, type: !2120, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2123)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!2122, !593}
!2122 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2123 = !{!2124}
!2124 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2119, file: !2102, line: 373, type: !593)
!2125 = !DILocation(line: 0, scope: !2119)
!2126 = !DILocation(line: 375, column: 10, scope: !2119)
!2127 = !DILocation(line: 375, column: 3, scope: !2119)
!2128 = distinct !DISubprogram(name: "bsearch", scope: !2129, file: !2129, line: 20, type: !2130, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2133)
!2129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!592, !1052, !1052, !1067, !1067, !2132}
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2102, line: 808, baseType: !1056)
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143}
!2134 = !DILocalVariable(name: "__key", arg: 1, scope: !2128, file: !2129, line: 20, type: !1052)
!2135 = !DILocalVariable(name: "__base", arg: 2, scope: !2128, file: !2129, line: 20, type: !1052)
!2136 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2128, file: !2129, line: 20, type: !1067)
!2137 = !DILocalVariable(name: "__size", arg: 4, scope: !2128, file: !2129, line: 20, type: !1067)
!2138 = !DILocalVariable(name: "__compar", arg: 5, scope: !2128, file: !2129, line: 21, type: !2132)
!2139 = !DILocalVariable(name: "__l", scope: !2128, file: !2129, line: 23, type: !1067)
!2140 = !DILocalVariable(name: "__u", scope: !2128, file: !2129, line: 23, type: !1067)
!2141 = !DILocalVariable(name: "__idx", scope: !2128, file: !2129, line: 23, type: !1067)
!2142 = !DILocalVariable(name: "__p", scope: !2128, file: !2129, line: 24, type: !1052)
!2143 = !DILocalVariable(name: "__comparison", scope: !2128, file: !2129, line: 25, type: !588)
!2144 = !DILocation(line: 0, scope: !2128)
!2145 = !DILocation(line: 29, column: 3, scope: !2128)
!2146 = !DILocation(line: 27, column: 7, scope: !2128)
!2147 = !DILocation(line: 29, column: 14, scope: !2128)
!2148 = !DILocation(line: 31, column: 20, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2128, file: !2129, line: 30, column: 5)
!2150 = !DILocation(line: 31, column: 27, scope: !2149)
!2151 = !DILocation(line: 32, column: 56, scope: !2149)
!2152 = !DILocation(line: 32, column: 47, scope: !2149)
!2153 = !DILocation(line: 33, column: 22, scope: !2149)
!2154 = !DILocation(line: 34, column: 24, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2149, file: !2129, line: 34, column: 11)
!2156 = !DILocation(line: 34, column: 11, scope: !2149)
!2157 = !DILocation(line: 36, column: 29, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2155, file: !2129, line: 36, column: 16)
!2159 = !DILocation(line: 36, column: 16, scope: !2155)
!2160 = !DILocation(line: 37, column: 14, scope: !2158)
!2161 = distinct !{!2161, !2145, !2162}
!2162 = !DILocation(line: 40, column: 5, scope: !2128)
!2163 = !DILocation(line: 43, column: 1, scope: !2128)
!2164 = distinct !DISubprogram(name: "atof", scope: !2165, file: !2165, line: 25, type: !2166, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!2168, !593}
!2168 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2169 = !{!2170}
!2170 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2164, file: !2165, line: 25, type: !593)
!2171 = !DILocation(line: 0, scope: !2164)
!2172 = !DILocation(line: 27, column: 10, scope: !2164)
!2173 = !DILocation(line: 27, column: 3, scope: !2164)
!2174 = distinct !DISubprogram(name: "strtoimax", scope: !2175, file: !2175, line: 324, type: !2176, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2182)
!2175 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!2178, !1937, !2181, !588}
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2179, line: 101, baseType: !2180)
!2179 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1987, line: 72, baseType: !682)
!2181 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !589)
!2182 = !{!2183, !2184, !2185}
!2183 = !DILocalVariable(name: "nptr", arg: 1, scope: !2174, file: !2175, line: 324, type: !1937)
!2184 = !DILocalVariable(name: "endptr", arg: 2, scope: !2174, file: !2175, line: 324, type: !2181)
!2185 = !DILocalVariable(name: "base", arg: 3, scope: !2174, file: !2175, line: 324, type: !588)
!2186 = !DILocation(line: 0, scope: !2174)
!2187 = !DILocation(line: 327, column: 10, scope: !2174)
!2188 = !DILocation(line: 327, column: 3, scope: !2174)
!2189 = distinct !DISubprogram(name: "strtoumax", scope: !2175, file: !2175, line: 336, type: !2190, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2192, !1937, !2181, !588}
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2179, line: 102, baseType: !2193)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1987, line: 73, baseType: !665)
!2194 = !{!2195, !2196, !2197}
!2195 = !DILocalVariable(name: "nptr", arg: 1, scope: !2189, file: !2175, line: 336, type: !1937)
!2196 = !DILocalVariable(name: "endptr", arg: 2, scope: !2189, file: !2175, line: 336, type: !2181)
!2197 = !DILocalVariable(name: "base", arg: 3, scope: !2189, file: !2175, line: 336, type: !588)
!2198 = !DILocation(line: 0, scope: !2189)
!2199 = !DILocation(line: 339, column: 10, scope: !2189)
!2200 = !DILocation(line: 339, column: 3, scope: !2189)
!2201 = distinct !DISubprogram(name: "wcstoimax", scope: !2175, file: !2175, line: 348, type: !2202, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2211)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!2178, !2204, !2208, !588}
!2204 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2205)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2207)
!2207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2175, line: 34, baseType: !588)
!2208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2209)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2211 = !{!2212, !2213, !2214}
!2212 = !DILocalVariable(name: "nptr", arg: 1, scope: !2201, file: !2175, line: 348, type: !2204)
!2213 = !DILocalVariable(name: "endptr", arg: 2, scope: !2201, file: !2175, line: 348, type: !2208)
!2214 = !DILocalVariable(name: "base", arg: 3, scope: !2201, file: !2175, line: 348, type: !588)
!2215 = !DILocation(line: 0, scope: !2201)
!2216 = !DILocation(line: 351, column: 10, scope: !2201)
!2217 = !DILocation(line: 351, column: 3, scope: !2201)
!2218 = distinct !DISubprogram(name: "wcstoumax", scope: !2175, file: !2175, line: 362, type: !2219, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!2192, !2204, !2208, !588}
!2221 = !{!2222, !2223, !2224}
!2222 = !DILocalVariable(name: "nptr", arg: 1, scope: !2218, file: !2175, line: 362, type: !2204)
!2223 = !DILocalVariable(name: "endptr", arg: 2, scope: !2218, file: !2175, line: 362, type: !2208)
!2224 = !DILocalVariable(name: "base", arg: 3, scope: !2218, file: !2175, line: 362, type: !588)
!2225 = !DILocation(line: 0, scope: !2218)
!2226 = !DILocation(line: 365, column: 10, scope: !2218)
!2227 = !DILocation(line: 365, column: 3, scope: !2218)
!2228 = distinct !DISubprogram(name: "stat", scope: !2229, file: !2229, line: 453, type: !2230, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2267)
!2229 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!588, !593, !2232}
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2234, line: 46, size: 1152, elements: !2235)
!2234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2235 = !{!2236, !2238, !2240, !2242, !2244, !2246, !2248, !2249, !2250, !2251, !2253, !2255, !2263, !2264, !2265}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2233, file: !2234, line: 48, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1987, line: 145, baseType: !665)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2233, file: !2234, line: 53, baseType: !2239, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1987, line: 148, baseType: !665)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2233, file: !2234, line: 61, baseType: !2241, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1987, line: 151, baseType: !665)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2233, file: !2234, line: 62, baseType: !2243, size: 32, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1987, line: 150, baseType: !7)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2233, file: !2234, line: 64, baseType: !2245, size: 32, offset: 224)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1987, line: 146, baseType: !7)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2233, file: !2234, line: 65, baseType: !2247, size: 32, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1987, line: 147, baseType: !7)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2233, file: !2234, line: 67, baseType: !588, size: 32, offset: 288)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2233, file: !2234, line: 69, baseType: !2237, size: 64, offset: 320)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2233, file: !2234, line: 74, baseType: !1986, size: 64, offset: 384)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2233, file: !2234, line: 78, baseType: !2252, size: 64, offset: 448)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1987, line: 174, baseType: !682)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2233, file: !2234, line: 80, baseType: !2254, size: 64, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1987, line: 179, baseType: !682)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2233, file: !2234, line: 91, baseType: !2256, size: 128, offset: 576)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2257, line: 10, size: 128, elements: !2258)
!2257 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2258 = !{!2259, !2261}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2256, file: !2257, line: 12, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1987, line: 160, baseType: !682)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2256, file: !2257, line: 16, baseType: !2262, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1987, line: 196, baseType: !682)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2233, file: !2234, line: 92, baseType: !2256, size: 128, offset: 704)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2233, file: !2234, line: 93, baseType: !2256, size: 128, offset: 832)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2233, file: !2234, line: 106, baseType: !2266, size: 192, offset: 960)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2262, size: 192, elements: !782)
!2267 = !{!2268, !2269}
!2268 = !DILocalVariable(name: "__path", arg: 1, scope: !2228, file: !2229, line: 453, type: !593)
!2269 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2228, file: !2229, line: 453, type: !2232)
!2270 = !DILocation(line: 0, scope: !2228)
!2271 = !DILocation(line: 455, column: 10, scope: !2228)
!2272 = !DILocation(line: 455, column: 3, scope: !2228)
!2273 = distinct !DISubprogram(name: "lstat", scope: !2229, file: !2229, line: 460, type: !2230, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2274 = !{!2275, !2276}
!2275 = !DILocalVariable(name: "__path", arg: 1, scope: !2273, file: !2229, line: 460, type: !593)
!2276 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2273, file: !2229, line: 460, type: !2232)
!2277 = !DILocation(line: 0, scope: !2273)
!2278 = !DILocation(line: 462, column: 10, scope: !2273)
!2279 = !DILocation(line: 462, column: 3, scope: !2273)
!2280 = distinct !DISubprogram(name: "fstat", scope: !2229, file: !2229, line: 467, type: !2281, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!588, !588, !2232}
!2283 = !{!2284, !2285}
!2284 = !DILocalVariable(name: "__fd", arg: 1, scope: !2280, file: !2229, line: 467, type: !588)
!2285 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2280, file: !2229, line: 467, type: !2232)
!2286 = !DILocation(line: 0, scope: !2280)
!2287 = !DILocation(line: 469, column: 10, scope: !2280)
!2288 = !DILocation(line: 469, column: 3, scope: !2280)
!2289 = distinct !DISubprogram(name: "fstatat", scope: !2229, file: !2229, line: 474, type: !2290, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!588, !588, !593, !2232, !588}
!2292 = !{!2293, !2294, !2295, !2296}
!2293 = !DILocalVariable(name: "__fd", arg: 1, scope: !2289, file: !2229, line: 474, type: !588)
!2294 = !DILocalVariable(name: "__filename", arg: 2, scope: !2289, file: !2229, line: 474, type: !593)
!2295 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2289, file: !2229, line: 474, type: !2232)
!2296 = !DILocalVariable(name: "__flag", arg: 4, scope: !2289, file: !2229, line: 474, type: !588)
!2297 = !DILocation(line: 0, scope: !2289)
!2298 = !DILocation(line: 477, column: 10, scope: !2289)
!2299 = !DILocation(line: 477, column: 3, scope: !2289)
!2300 = distinct !DISubprogram(name: "mknod", scope: !2229, file: !2229, line: 483, type: !2301, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!588, !593, !2243, !2237}
!2303 = !{!2304, !2305, !2306}
!2304 = !DILocalVariable(name: "__path", arg: 1, scope: !2300, file: !2229, line: 483, type: !593)
!2305 = !DILocalVariable(name: "__mode", arg: 2, scope: !2300, file: !2229, line: 483, type: !2243)
!2306 = !DILocalVariable(name: "__dev", arg: 3, scope: !2300, file: !2229, line: 483, type: !2237)
!2307 = !DILocation(line: 0, scope: !2300)
!2308 = !DILocation(line: 485, column: 10, scope: !2300)
!2309 = !DILocation(line: 485, column: 3, scope: !2300)
!2310 = distinct !DISubprogram(name: "mknodat", scope: !2229, file: !2229, line: 491, type: !2311, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!588, !588, !593, !2243, !2237}
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DILocalVariable(name: "__fd", arg: 1, scope: !2310, file: !2229, line: 491, type: !588)
!2315 = !DILocalVariable(name: "__path", arg: 2, scope: !2310, file: !2229, line: 491, type: !593)
!2316 = !DILocalVariable(name: "__mode", arg: 3, scope: !2310, file: !2229, line: 491, type: !2243)
!2317 = !DILocalVariable(name: "__dev", arg: 4, scope: !2310, file: !2229, line: 491, type: !2237)
!2318 = !DILocation(line: 0, scope: !2310)
!2319 = !DILocation(line: 494, column: 10, scope: !2310)
!2320 = !DILocation(line: 494, column: 3, scope: !2310)
!2321 = distinct !DISubprogram(name: "stat64", scope: !2229, file: !2229, line: 502, type: !2322, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!588, !593, !2324}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2234, line: 119, size: 1152, elements: !2326)
!2326 = !{!2327, !2328, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2340, !2341, !2342, !2343}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2325, file: !2234, line: 121, baseType: !2237, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2325, file: !2234, line: 123, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1987, line: 149, baseType: !665)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2325, file: !2234, line: 124, baseType: !2241, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2325, file: !2234, line: 125, baseType: !2243, size: 32, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2325, file: !2234, line: 132, baseType: !2245, size: 32, offset: 224)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2325, file: !2234, line: 133, baseType: !2247, size: 32, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2325, file: !2234, line: 135, baseType: !588, size: 32, offset: 288)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2325, file: !2234, line: 136, baseType: !2237, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2325, file: !2234, line: 137, baseType: !1986, size: 64, offset: 384)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2325, file: !2234, line: 143, baseType: !2252, size: 64, offset: 448)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2325, file: !2234, line: 144, baseType: !2339, size: 64, offset: 512)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1987, line: 180, baseType: !682)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2325, file: !2234, line: 152, baseType: !2256, size: 128, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2325, file: !2234, line: 153, baseType: !2256, size: 128, offset: 704)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2325, file: !2234, line: 154, baseType: !2256, size: 128, offset: 832)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2325, file: !2234, line: 164, baseType: !2266, size: 192, offset: 960)
!2344 = !{!2345, !2346}
!2345 = !DILocalVariable(name: "__path", arg: 1, scope: !2321, file: !2229, line: 502, type: !593)
!2346 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2321, file: !2229, line: 502, type: !2324)
!2347 = !DILocation(line: 0, scope: !2321)
!2348 = !DILocation(line: 504, column: 10, scope: !2321)
!2349 = !DILocation(line: 504, column: 3, scope: !2321)
!2350 = distinct !DISubprogram(name: "lstat64", scope: !2229, file: !2229, line: 509, type: !2322, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2351)
!2351 = !{!2352, !2353}
!2352 = !DILocalVariable(name: "__path", arg: 1, scope: !2350, file: !2229, line: 509, type: !593)
!2353 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2350, file: !2229, line: 509, type: !2324)
!2354 = !DILocation(line: 0, scope: !2350)
!2355 = !DILocation(line: 511, column: 10, scope: !2350)
!2356 = !DILocation(line: 511, column: 3, scope: !2350)
!2357 = distinct !DISubprogram(name: "fstat64", scope: !2229, file: !2229, line: 516, type: !2358, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!588, !588, !2324}
!2360 = !{!2361, !2362}
!2361 = !DILocalVariable(name: "__fd", arg: 1, scope: !2357, file: !2229, line: 516, type: !588)
!2362 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2357, file: !2229, line: 516, type: !2324)
!2363 = !DILocation(line: 0, scope: !2357)
!2364 = !DILocation(line: 518, column: 10, scope: !2357)
!2365 = !DILocation(line: 518, column: 3, scope: !2357)
!2366 = distinct !DISubprogram(name: "fstatat64", scope: !2229, file: !2229, line: 523, type: !2367, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!588, !588, !593, !2324, !588}
!2369 = !{!2370, !2371, !2372, !2373}
!2370 = !DILocalVariable(name: "__fd", arg: 1, scope: !2366, file: !2229, line: 523, type: !588)
!2371 = !DILocalVariable(name: "__filename", arg: 2, scope: !2366, file: !2229, line: 523, type: !593)
!2372 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2366, file: !2229, line: 523, type: !2324)
!2373 = !DILocalVariable(name: "__flag", arg: 4, scope: !2366, file: !2229, line: 523, type: !588)
!2374 = !DILocation(line: 0, scope: !2366)
!2375 = !DILocation(line: 526, column: 10, scope: !2366)
!2376 = !DILocation(line: 526, column: 3, scope: !2366)
!2377 = distinct !DISubprogram(name: "ebb_compute_jump_reg_dependencies", scope: !3, file: !3, line: 248, type: !1774, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2378)
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384, !2385}
!2379 = !DILocalVariable(name: "insn", arg: 1, scope: !2377, file: !3, line: 248, type: !595)
!2380 = !DILocalVariable(name: "cond_set", arg: 2, scope: !2377, file: !3, line: 248, type: !1776)
!2381 = !DILocalVariable(name: "used", arg: 3, scope: !2377, file: !3, line: 248, type: !1776)
!2382 = !DILocalVariable(name: "set", arg: 4, scope: !2377, file: !3, line: 249, type: !1776)
!2383 = !DILocalVariable(name: "b", scope: !2377, file: !3, line: 251, type: !1129)
!2384 = !DILocalVariable(name: "e", scope: !2377, file: !3, line: 252, type: !1146)
!2385 = !DILocalVariable(name: "ei", scope: !2377, file: !3, line: 253, type: !2386)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !142, line: 682, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 679, size: 128, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2387, file: !142, line: 680, baseType: !7, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2387, file: !142, line: 681, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!2392 = !DILocation(line: 0, scope: !2377)
!2393 = !DILocation(line: 251, column: 19, scope: !2377)
!2394 = !DILocation(line: 252, column: 3, scope: !2377)
!2395 = !DILocation(line: 253, column: 3, scope: !2377)
!2396 = !DILocation(line: 255, column: 3, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 255, column: 3)
!2398 = !DILocation(line: 0, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 255, column: 3)
!2400 = !DILocation(line: 255, column: 3, scope: !2399)
!2401 = !DILocation(line: 256, column: 9, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 256, column: 9)
!2403 = !DILocation(line: 256, column: 12, scope: !2402)
!2404 = !DILocation(line: 256, column: 18, scope: !2402)
!2405 = !DILocation(line: 0, scope: !2402)
!2406 = !DILocation(line: 256, column: 9, scope: !2399)
!2407 = !DILocation(line: 262, column: 7, scope: !2402)
!2408 = !DILocation(line: 264, column: 7, scope: !2402)
!2409 = distinct !{!2409, !2396, !2410}
!2410 = !DILocation(line: 264, column: 54, scope: !2397)
!2411 = !DILocation(line: 265, column: 1, scope: !2377)
!2412 = distinct !DISubprogram(name: "ei_start_1", scope: !142, file: !142, line: 696, type: !2413, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!2386, !2391}
!2415 = !{!2416, !2417}
!2416 = !DILocalVariable(name: "ev", arg: 1, scope: !2412, file: !142, line: 696, type: !2391)
!2417 = !DILocalVariable(name: "i", scope: !2412, file: !142, line: 698, type: !2386)
!2418 = !DILocation(line: 0, scope: !2412)
!2419 = !DILocation(line: 700, column: 5, scope: !2412)
!2420 = !DILocation(line: 700, column: 11, scope: !2412)
!2421 = !DILocation(line: 701, column: 5, scope: !2412)
!2422 = !DILocation(line: 701, column: 15, scope: !2412)
!2423 = !DILocation(line: 703, column: 3, scope: !2412)
!2424 = distinct !DISubprogram(name: "ei_cond", scope: !142, file: !142, line: 771, type: !2425, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2428)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!587, !2386, !2427}
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!2428 = !{!2429, !2430}
!2429 = !DILocalVariable(name: "ei", arg: 1, scope: !2424, file: !142, line: 771, type: !2386)
!2430 = !DILocalVariable(name: "p", arg: 2, scope: !2424, file: !142, line: 771, type: !2427)
!2431 = !DILocation(line: 0, scope: !2424)
!2432 = !DILocation(line: 773, column: 8, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2424, file: !142, line: 773, column: 7)
!2434 = !DILocation(line: 773, column: 7, scope: !2424)
!2435 = !DILocation(line: 775, column: 12, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !142, line: 774, column: 5)
!2437 = !DILocation(line: 776, column: 7, scope: !2436)
!2438 = !DILocation(line: 781, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2433, file: !142, line: 779, column: 5)
!2440 = !DILocation(line: 0, scope: !2433)
!2441 = !DILocation(line: 783, column: 1, scope: !2424)
!2442 = distinct !DISubprogram(name: "ei_next", scope: !142, file: !142, line: 736, type: !2443, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{null, !2445}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2446 = !{!2447}
!2447 = !DILocalVariable(name: "i", arg: 1, scope: !2442, file: !142, line: 736, type: !2445)
!2448 = !DILocation(line: 0, scope: !2442)
!2449 = !DILocation(line: 738, column: 3, scope: !2442)
!2450 = !DILocation(line: 739, column: 11, scope: !2442)
!2451 = !DILocation(line: 740, column: 1, scope: !2442)
!2452 = distinct !DISubprogram(name: "schedule_ebbs", scope: !3, file: !3, line: 544, type: !1784, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2461, !2465}
!2454 = !DILocalVariable(name: "bb", scope: !2452, file: !3, line: 546, type: !1129)
!2455 = !DILocalVariable(name: "probability_cutoff", scope: !2452, file: !3, line: 547, type: !588)
!2456 = !DILocalVariable(name: "tail", scope: !2452, file: !3, line: 548, type: !595)
!2457 = !DILocalVariable(name: "head", scope: !2458, file: !3, line: 586, type: !595)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 585, column: 5)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 584, column: 3)
!2460 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 584, column: 3)
!2461 = !DILocalVariable(name: "e", scope: !2462, file: !3, line: 590, type: !1146)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 589, column: 2)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 588, column: 7)
!2464 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 588, column: 7)
!2465 = !DILocalVariable(name: "ei", scope: !2462, file: !3, line: 591, type: !2386)
!2466 = !DILocation(line: 550, column: 7, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 550, column: 7)
!2468 = !DILocation(line: 550, column: 23, scope: !2467)
!2469 = !DILocation(line: 550, column: 20, scope: !2467)
!2470 = !DILocation(line: 0, scope: !2467)
!2471 = !DILocation(line: 551, column: 26, scope: !2467)
!2472 = !DILocation(line: 551, column: 5, scope: !2467)
!2473 = !DILocation(line: 553, column: 26, scope: !2467)
!2474 = !DILocation(line: 0, scope: !2452)
!2475 = !DILocation(line: 554, column: 47, scope: !2452)
!2476 = !DILocation(line: 558, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 558, column: 7)
!2478 = !DILocation(line: 558, column: 22, scope: !2477)
!2479 = !DILocation(line: 558, column: 7, scope: !2452)
!2480 = !DILocation(line: 563, column: 5, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 562, column: 3)
!2482 = !DILocation(line: 566, column: 44, scope: !2481)
!2483 = !DILocation(line: 567, column: 37, scope: !2481)
!2484 = !DILocation(line: 568, column: 41, scope: !2481)
!2485 = !DILocation(line: 570, column: 23, scope: !2481)
!2486 = !DILocation(line: 571, column: 21, scope: !2481)
!2487 = !DILocation(line: 572, column: 24, scope: !2481)
!2488 = !DILocation(line: 575, column: 3, scope: !2452)
!2489 = !DILocation(line: 577, column: 3, scope: !2452)
!2490 = !DILocation(line: 580, column: 3, scope: !2452)
!2491 = !DILocation(line: 581, column: 3, scope: !2452)
!2492 = !DILocation(line: 584, column: 3, scope: !2460)
!2493 = !DILocation(line: 0, scope: !2462)
!2494 = !DILocation(line: 0, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 596, column: 4)
!2496 = !DILocation(line: 0, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 596, column: 4)
!2498 = !DILocation(line: 584, column: 3, scope: !2459)
!2499 = !DILocation(line: 0, scope: !2460)
!2500 = !DILocation(line: 586, column: 18, scope: !2458)
!2501 = !DILocation(line: 0, scope: !2458)
!2502 = !DILocation(line: 588, column: 7, scope: !2458)
!2503 = !DILocation(line: 593, column: 23, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 593, column: 8)
!2505 = !DILocation(line: 592, column: 11, scope: !2462)
!2506 = !DILocation(line: 590, column: 4, scope: !2462)
!2507 = !DILocation(line: 591, column: 4, scope: !2462)
!2508 = !DILocation(line: 593, column: 12, scope: !2504)
!2509 = !DILocation(line: 593, column: 20, scope: !2504)
!2510 = !DILocation(line: 594, column: 8, scope: !2504)
!2511 = !DILocation(line: 594, column: 11, scope: !2504)
!2512 = !DILocation(line: 593, column: 8, scope: !2462)
!2513 = !DILocation(line: 596, column: 4, scope: !2495)
!2514 = !DILocation(line: 596, column: 4, scope: !2497)
!2515 = !DILocation(line: 599, column: 10, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 599, column: 8)
!2517 = !DILocation(line: 597, column: 11, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 597, column: 10)
!2519 = !DILocation(line: 597, column: 14, scope: !2518)
!2520 = !DILocation(line: 597, column: 20, scope: !2518)
!2521 = !DILocation(line: 597, column: 37, scope: !2518)
!2522 = !DILocation(line: 597, column: 10, scope: !2497)
!2523 = distinct !{!2523, !2513, !2524}
!2524 = !DILocation(line: 598, column: 8, scope: !2495)
!2525 = !DILocation(line: 599, column: 8, scope: !2462)
!2526 = !DILocation(line: 601, column: 11, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 601, column: 8)
!2528 = !DILocation(line: 601, column: 23, scope: !2527)
!2529 = !DILocation(line: 601, column: 8, scope: !2462)
!2530 = !DILocation(line: 603, column: 13, scope: !2462)
!2531 = !DILocation(line: 604, column: 2, scope: !2463)
!2532 = distinct !{!2532, !2533, !2534}
!2533 = !DILocation(line: 588, column: 7, scope: !2464)
!2534 = !DILocation(line: 604, column: 2, scope: !2464)
!2535 = !DILocation(line: 0, scope: !2504)
!2536 = !DILocation(line: 608, column: 7, scope: !2458)
!2537 = !DILocation(line: 592, column: 9, scope: !2462)
!2538 = !DILocation(line: 608, column: 19, scope: !2458)
!2539 = !DILocation(line: 610, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 610, column: 8)
!2541 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 609, column: 2)
!2542 = !DILocation(line: 610, column: 22, scope: !2540)
!2543 = !DILocation(line: 610, column: 25, scope: !2540)
!2544 = !DILocation(line: 610, column: 8, scope: !2541)
!2545 = !DILocation(line: 611, column: 13, scope: !2540)
!2546 = !DILocation(line: 611, column: 6, scope: !2540)
!2547 = !DILocation(line: 612, column: 13, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 612, column: 13)
!2549 = !DILocation(line: 612, column: 27, scope: !2548)
!2550 = !DILocation(line: 612, column: 30, scope: !2548)
!2551 = !DILocation(line: 612, column: 13, scope: !2540)
!2552 = !DILocation(line: 613, column: 13, scope: !2548)
!2553 = !DILocation(line: 613, column: 6, scope: !2548)
!2554 = !DILocation(line: 614, column: 13, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 614, column: 13)
!2556 = !DILocation(line: 614, column: 13, scope: !2548)
!2557 = !DILocation(line: 615, column: 13, scope: !2555)
!2558 = distinct !{!2558, !2536, !2559}
!2559 = !DILocation(line: 618, column: 2, scope: !2458)
!2560 = !DILocation(line: 620, column: 12, scope: !2458)
!2561 = !DILocation(line: 0, scope: !2459)
!2562 = distinct !{!2562, !2492, !2563}
!2563 = !DILocation(line: 621, column: 5, scope: !2460)
!2564 = !DILocation(line: 622, column: 3, scope: !2452)
!2565 = !DILocation(line: 626, column: 7, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 626, column: 7)
!2567 = !DILocation(line: 626, column: 7, scope: !2452)
!2568 = !DILocation(line: 627, column: 5, scope: !2566)
!2569 = !DILocation(line: 629, column: 3, scope: !2452)
!2570 = !DILocation(line: 630, column: 1, scope: !2452)
!2571 = distinct !DISubprogram(name: "ebb_fix_recovery_cfg", scope: !3, file: !3, line: 697, type: !1917, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2572)
!2572 = !{!2573, !2574, !2575}
!2573 = !DILocalVariable(name: "bbi", arg: 1, scope: !2571, file: !3, line: 697, type: !588)
!2574 = !DILocalVariable(name: "jump_bbi", arg: 2, scope: !2571, file: !3, line: 697, type: !588)
!2575 = !DILocalVariable(name: "jump_bb_nexti", arg: 3, scope: !2571, file: !3, line: 698, type: !588)
!2576 = !DILocation(line: 0, scope: !2571)
!2577 = !DILocation(line: 700, column: 3, scope: !2571)
!2578 = !DILocation(line: 702, column: 24, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 702, column: 7)
!2580 = !DILocation(line: 0, scope: !2579)
!2581 = !DILocation(line: 702, column: 33, scope: !2579)
!2582 = !DILocation(line: 702, column: 21, scope: !2579)
!2583 = !DILocation(line: 702, column: 7, scope: !2571)
!2584 = !DILocation(line: 703, column: 15, scope: !2579)
!2585 = !DILocation(line: 703, column: 13, scope: !2579)
!2586 = !DILocation(line: 703, column: 5, scope: !2579)
!2587 = !DILocation(line: 704, column: 1, scope: !2571)
!2588 = distinct !DISubprogram(name: "ebb_add_block", scope: !3, file: !3, line: 644, type: !1921, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2589)
!2589 = !{!2590, !2591}
!2590 = !DILocalVariable(name: "bb", arg: 1, scope: !2588, file: !3, line: 644, type: !1129)
!2591 = !DILocalVariable(name: "after", arg: 2, scope: !2588, file: !3, line: 644, type: !1129)
!2592 = !DILocation(line: 0, scope: !2588)
!2593 = !DILocation(line: 649, column: 16, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 649, column: 7)
!2595 = !DILocation(line: 649, column: 13, scope: !2594)
!2596 = !DILocation(line: 649, column: 7, scope: !2588)
!2597 = !DILocation(line: 650, column: 42, scope: !2594)
!2598 = !DILocation(line: 650, column: 5, scope: !2594)
!2599 = !DILocation(line: 651, column: 21, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 651, column: 12)
!2601 = !DILocation(line: 651, column: 18, scope: !2600)
!2602 = !DILocation(line: 651, column: 12, scope: !2594)
!2603 = !DILocation(line: 652, column: 13, scope: !2600)
!2604 = !DILocation(line: 652, column: 5, scope: !2600)
!2605 = !DILocation(line: 653, column: 1, scope: !2588)
!2606 = distinct !DISubprogram(name: "bitmap_initialize_stat", scope: !651, file: !651, line: 165, type: !2607, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !1777, !671}
!2609 = !{!2610, !2611}
!2610 = !DILocalVariable(name: "head", arg: 1, scope: !2606, file: !651, line: 165, type: !1777)
!2611 = !DILocalVariable(name: "obstack", arg: 2, scope: !2606, file: !651, line: 165, type: !671)
!2612 = !DILocation(line: 0, scope: !2606)
!2613 = !DILocation(line: 167, column: 31, scope: !2606)
!2614 = !DILocation(line: 167, column: 15, scope: !2606)
!2615 = !DILocation(line: 168, column: 17, scope: !2606)
!2616 = !DILocation(line: 172, column: 1, scope: !2606)
!2617 = distinct !DISubprogram(name: "schedule_ebb", scope: !3, file: !3, line: 463, type: !2618, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!1129, !595, !595}
!2620 = !{!2621, !2622, !2623, !2624, !2625}
!2621 = !DILocalVariable(name: "head", arg: 1, scope: !2617, file: !3, line: 463, type: !595)
!2622 = !DILocalVariable(name: "tail", arg: 2, scope: !2617, file: !3, line: 463, type: !595)
!2623 = !DILocalVariable(name: "first_bb", scope: !2617, file: !3, line: 465, type: !1129)
!2624 = !DILocalVariable(name: "target_bb", scope: !2617, file: !3, line: 465, type: !1129)
!2625 = !DILocalVariable(name: "tmp_deps", scope: !2617, file: !3, line: 466, type: !2626)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !528, line: 451, size: 1472, elements: !2627)
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2652, !2654, !2655, !2656}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_insns", scope: !2626, file: !528, line: 463, baseType: !595, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_mems", scope: !2626, file: !528, line: 466, baseType: !595, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "pending_write_insns", scope: !2626, file: !528, line: 469, baseType: !595, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "pending_write_mems", scope: !2626, file: !528, line: 472, baseType: !595, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_length", scope: !2626, file: !528, line: 480, baseType: !588, size: 32, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "pending_write_list_length", scope: !2626, file: !528, line: 483, baseType: !588, size: 32, offset: 288)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "pending_flush_length", scope: !2626, file: !528, line: 487, baseType: !588, size: 32, offset: 320)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "last_pending_memory_flush", scope: !2626, file: !528, line: 498, baseType: !595, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "last_function_call", scope: !2626, file: !528, line: 503, baseType: !595, size: 64, offset: 448)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "last_function_call_may_noreturn", scope: !2626, file: !528, line: 509, baseType: !595, size: 64, offset: 512)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sched_before_next_call", scope: !2626, file: !528, line: 515, baseType: !595, size: 64, offset: 576)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "in_post_call_group_p", scope: !2626, file: !528, line: 519, baseType: !535, size: 32, offset: 640)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "last_debug_insn", scope: !2626, file: !528, line: 522, baseType: !595, size: 64, offset: 704)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "max_reg", scope: !2626, file: !528, line: 526, baseType: !588, size: 32, offset: 768)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "reg_last", scope: !2626, file: !528, line: 532, baseType: !2643, size: 64, offset: 832)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deps_reg", file: !528, line: 440, size: 320, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2644, file: !528, line: 442, baseType: !595, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sets", scope: !2644, file: !528, line: 443, baseType: !595, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_sets", scope: !2644, file: !528, line: 444, baseType: !595, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "clobbers", scope: !2644, file: !528, line: 445, baseType: !595, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "uses_length", scope: !2644, file: !528, line: 446, baseType: !588, size: 32, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "clobbers_length", scope: !2644, file: !528, line: 447, baseType: !588, size: 32, offset: 288)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "reg_last_in_use", scope: !2626, file: !528, line: 536, baseType: !2653, size: 256, offset: 896)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "regset_head", file: !142, line: 34, baseType: !1767)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "reg_conditional_sets", scope: !2626, file: !528, line: 539, baseType: !2653, size: 256, offset: 1152)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "last_reg_pending_barrier", scope: !2626, file: !528, line: 542, baseType: !540, size: 32, offset: 1408)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !2626, file: !528, line: 546, baseType: !7, size: 1, offset: 1440, flags: DIFlagBitField, extraData: i64 1440)
!2657 = !DILocation(line: 0, scope: !2617)
!2658 = !DILocation(line: 465, column: 3, scope: !2617)
!2659 = !DILocation(line: 466, column: 3, scope: !2617)
!2660 = !DILocation(line: 468, column: 14, scope: !2617)
!2661 = !DILocation(line: 469, column: 13, scope: !2617)
!2662 = !DILocation(line: 469, column: 11, scope: !2617)
!2663 = !DILocation(line: 471, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 471, column: 7)
!2665 = !DILocation(line: 471, column: 7, scope: !2617)
!2666 = !DILocation(line: 472, column: 12, scope: !2664)
!2667 = !DILocation(line: 472, column: 5, scope: !2664)
!2668 = !DILocation(line: 474, column: 3, scope: !2617)
!2669 = !DILocation(line: 476, column: 49, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 476, column: 7)
!2671 = !DILocation(line: 476, column: 8, scope: !2670)
!2672 = !DILocation(line: 476, column: 7, scope: !2617)
!2673 = !DILocation(line: 478, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 477, column: 5)
!2675 = !DILocation(line: 481, column: 7, scope: !2674)
!2676 = !DILocation(line: 482, column: 7, scope: !2674)
!2677 = !DILocation(line: 483, column: 7, scope: !2674)
!2678 = !DILocation(line: 485, column: 7, scope: !2674)
!2679 = !DILocation(line: 487, column: 25, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 487, column: 11)
!2681 = !DILocation(line: 487, column: 11, scope: !2680)
!2682 = !DILocation(line: 487, column: 11, scope: !2674)
!2683 = !DILocation(line: 488, column: 9, scope: !2680)
!2684 = !DILocation(line: 490, column: 7, scope: !2674)
!2685 = !DILocation(line: 491, column: 5, scope: !2674)
!2686 = !DILocation(line: 495, column: 5, scope: !2670)
!2687 = !DILocation(line: 498, column: 3, scope: !2617)
!2688 = !DILocation(line: 498, column: 23, scope: !2617)
!2689 = !DILocation(line: 498, column: 48, scope: !2617)
!2690 = !DILocation(line: 499, column: 17, scope: !2617)
!2691 = !DILocation(line: 499, column: 15, scope: !2617)
!2692 = !DILocation(line: 500, column: 3, scope: !2617)
!2693 = !DILocation(line: 500, column: 23, scope: !2617)
!2694 = !DILocation(line: 500, column: 47, scope: !2617)
!2695 = !DILocation(line: 502, column: 35, scope: !2617)
!2696 = !DILocation(line: 502, column: 23, scope: !2617)
!2697 = !DILocation(line: 502, column: 33, scope: !2617)
!2698 = !DILocation(line: 503, column: 35, scope: !2617)
!2699 = !DILocation(line: 503, column: 23, scope: !2617)
!2700 = !DILocation(line: 503, column: 33, scope: !2617)
!2701 = !DILocation(line: 505, column: 3, scope: !2617)
!2702 = !DILocation(line: 507, column: 30, scope: !2617)
!2703 = !DILocation(line: 507, column: 3, scope: !2617)
!2704 = !DILocation(line: 509, column: 13, scope: !2617)
!2705 = !DILocation(line: 512, column: 28, scope: !2617)
!2706 = !DILocation(line: 512, column: 3, scope: !2617)
!2707 = !DILocation(line: 513, column: 3, scope: !2617)
!2708 = !DILocation(line: 515, column: 3, scope: !2617)
!2709 = !DILocation(line: 521, column: 3, scope: !2617)
!2710 = !DILocation(line: 524, column: 20, scope: !2617)
!2711 = !DILocation(line: 524, column: 40, scope: !2617)
!2712 = !DILocation(line: 524, column: 66, scope: !2617)
!2713 = !DILocation(line: 524, column: 3, scope: !2617)
!2714 = !DILocation(line: 526, column: 3, scope: !2617)
!2715 = !DILocation(line: 529, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 529, column: 7)
!2717 = !DILocation(line: 529, column: 35, scope: !2716)
!2718 = !DILocation(line: 529, column: 7, scope: !2617)
!2719 = !DILocation(line: 532, column: 7, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 531, column: 5)
!2721 = !DILocation(line: 534, column: 17, scope: !2720)
!2722 = !DILocation(line: 534, column: 26, scope: !2720)
!2723 = !DILocation(line: 534, column: 15, scope: !2720)
!2724 = !DILocation(line: 535, column: 27, scope: !2720)
!2725 = !DILocation(line: 535, column: 36, scope: !2720)
!2726 = !DILocation(line: 535, column: 7, scope: !2720)
!2727 = !DILocation(line: 536, column: 5, scope: !2720)
!2728 = !DILocation(line: 538, column: 3, scope: !2617)
!2729 = !DILocation(line: 539, column: 1, scope: !2617)
!2730 = distinct !DISubprogram(name: "ei_end_p", scope: !142, file: !142, line: 721, type: !2731, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!587, !2386}
!2733 = !{!2734}
!2734 = !DILocalVariable(name: "i", arg: 1, scope: !2730, file: !142, line: 721, type: !2386)
!2735 = !DILocation(line: 723, column: 22, scope: !2730)
!2736 = !DILocation(line: 723, column: 19, scope: !2730)
!2737 = !DILocation(line: 723, column: 10, scope: !2730)
!2738 = !DILocation(line: 723, column: 3, scope: !2730)
!2739 = distinct !DISubprogram(name: "ei_edge", scope: !142, file: !142, line: 752, type: !2740, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!1146, !2386}
!2742 = !{!2743}
!2743 = !DILocalVariable(name: "i", arg: 1, scope: !2739, file: !142, line: 752, type: !2386)
!2744 = !DILocation(line: 754, column: 10, scope: !2739)
!2745 = !DILocation(line: 754, column: 3, scope: !2739)
!2746 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !142, file: !142, line: 150, type: !2747, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2751)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!7, !2749}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!2751 = !{!2752}
!2752 = !DILocalVariable(name: "vec_", arg: 1, scope: !2746, file: !142, line: 150, type: !2749)
!2753 = !DILocation(line: 0, scope: !2746)
!2754 = !DILocation(line: 150, column: 1, scope: !2746)
!2755 = distinct !DISubprogram(name: "ei_container", scope: !142, file: !142, line: 685, type: !2756, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!1134, !2386}
!2758 = !{!2759}
!2759 = !DILocalVariable(name: "i", arg: 1, scope: !2755, file: !142, line: 685, type: !2386)
!2760 = !DILocation(line: 687, column: 3, scope: !2755)
!2761 = !DILocation(line: 688, column: 10, scope: !2755)
!2762 = !DILocation(line: 688, column: 3, scope: !2755)
!2763 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !142, file: !142, line: 150, type: !2764, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!1146, !2749, !7}
!2766 = !{!2767, !2768}
!2767 = !DILocalVariable(name: "vec_", arg: 1, scope: !2763, file: !142, line: 150, type: !2749)
!2768 = !DILocalVariable(name: "ix_", arg: 2, scope: !2763, file: !142, line: 150, type: !7)
!2769 = !DILocation(line: 0, scope: !2763)
!2770 = !DILocation(line: 150, column: 1, scope: !2763)
!2771 = distinct !DISubprogram(name: "init_ready_list", scope: !3, file: !3, line: 103, type: !1784, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2772)
!2772 = !{!2773, !2774, !2775, !2776}
!2773 = !DILocalVariable(name: "n", scope: !2771, file: !3, line: 105, type: !588)
!2774 = !DILocalVariable(name: "prev_head", scope: !2771, file: !3, line: 106, type: !595)
!2775 = !DILocalVariable(name: "next_tail", scope: !2771, file: !3, line: 107, type: !595)
!2776 = !DILocalVariable(name: "insn", scope: !2771, file: !3, line: 108, type: !595)
!2777 = !DILocation(line: 0, scope: !2771)
!2778 = !DILocation(line: 106, column: 19, scope: !2771)
!2779 = !DILocation(line: 106, column: 39, scope: !2771)
!2780 = !DILocation(line: 107, column: 39, scope: !2771)
!2781 = !DILocation(line: 110, column: 21, scope: !2771)
!2782 = !DILocation(line: 113, column: 7, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 113, column: 7)
!2784 = !DILocation(line: 113, column: 21, scope: !2783)
!2785 = !DILocation(line: 113, column: 7, scope: !2771)
!2786 = !DILocation(line: 114, column: 29, scope: !2783)
!2787 = !DILocation(line: 114, column: 52, scope: !2783)
!2788 = !DILocation(line: 114, column: 5, scope: !2783)
!2789 = !DILocation(line: 118, column: 8, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 118, column: 3)
!2791 = !DILocation(line: 0, scope: !2790)
!2792 = !DILocation(line: 118, column: 43, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 118, column: 3)
!2794 = !DILocation(line: 118, column: 3, scope: !2790)
!2795 = !DILocation(line: 120, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 119, column: 5)
!2797 = !DILocation(line: 121, column: 8, scope: !2796)
!2798 = !DILocation(line: 118, column: 3, scope: !2793)
!2799 = distinct !{!2799, !2794, !2800}
!2800 = !DILocation(line: 122, column: 5, scope: !2790)
!2801 = !DILocation(line: 124, column: 3, scope: !2771)
!2802 = !DILocation(line: 125, column: 1, scope: !2771)
!2803 = distinct !DISubprogram(name: "schedule_more_p", scope: !3, file: !3, line: 81, type: !1818, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1953)
!2804 = !DILocation(line: 83, column: 10, scope: !2803)
!2805 = !DILocation(line: 83, column: 30, scope: !2803)
!2806 = !DILocation(line: 83, column: 28, scope: !2803)
!2807 = !DILocation(line: 83, column: 3, scope: !2803)
!2808 = distinct !DISubprogram(name: "rank", scope: !3, file: !3, line: 217, type: !1826, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2809)
!2809 = !{!2810, !2811, !2812, !2813}
!2810 = !DILocalVariable(name: "insn1", arg: 1, scope: !2808, file: !3, line: 217, type: !595)
!2811 = !DILocalVariable(name: "insn2", arg: 2, scope: !2808, file: !3, line: 217, type: !595)
!2812 = !DILocalVariable(name: "bb1", scope: !2808, file: !3, line: 219, type: !1129)
!2813 = !DILocalVariable(name: "bb2", scope: !2808, file: !3, line: 220, type: !1129)
!2814 = !DILocation(line: 0, scope: !2808)
!2815 = !DILocation(line: 219, column: 21, scope: !2808)
!2816 = !DILocation(line: 220, column: 21, scope: !2808)
!2817 = !DILocation(line: 222, column: 12, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 222, column: 7)
!2819 = !DILocation(line: 222, column: 25, scope: !2818)
!2820 = !DILocation(line: 222, column: 18, scope: !2818)
!2821 = !DILocation(line: 223, column: 7, scope: !2818)
!2822 = !DILocation(line: 223, column: 15, scope: !2818)
!2823 = !DILocation(line: 223, column: 32, scope: !2818)
!2824 = !DILocation(line: 223, column: 25, scope: !2818)
!2825 = !DILocation(line: 222, column: 7, scope: !2808)
!2826 = !DILocation(line: 225, column: 18, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 225, column: 7)
!2828 = !DILocation(line: 226, column: 7, scope: !2827)
!2829 = !DILocation(line: 226, column: 25, scope: !2827)
!2830 = !DILocation(line: 225, column: 7, scope: !2808)
!2831 = !DILocation(line: 229, column: 1, scope: !2808)
!2832 = !DILocation(line: 0, scope: !1865)
!2833 = !DILocation(line: 204, column: 7, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 204, column: 7)
!2835 = !DILocation(line: 204, column: 23, scope: !2834)
!2836 = !DILocation(line: 0, scope: !2834)
!2837 = !DILocation(line: 204, column: 7, scope: !1865)
!2838 = !DILocation(line: 205, column: 5, scope: !2834)
!2839 = !DILocation(line: 207, column: 5, scope: !2834)
!2840 = !DILocation(line: 209, column: 3, scope: !1865)
!2841 = distinct !DISubprogram(name: "ebb_contributes_to_priority", scope: !3, file: !3, line: 236, type: !1826, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2842)
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "next", arg: 1, scope: !2841, file: !3, line: 236, type: !595)
!2844 = !DILocalVariable(name: "insn", arg: 2, scope: !2841, file: !3, line: 237, type: !595)
!2845 = !DILocation(line: 0, scope: !2841)
!2846 = !DILocation(line: 239, column: 3, scope: !2841)
!2847 = distinct !DISubprogram(name: "ebb_add_remove_insn", scope: !3, file: !3, line: 634, type: !1848, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2848)
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "insn", arg: 1, scope: !2847, file: !3, line: 634, type: !595)
!2850 = !DILocalVariable(name: "remove_p", arg: 2, scope: !2847, file: !3, line: 634, type: !588)
!2851 = !DILocation(line: 0, scope: !2847)
!2852 = !DILocation(line: 636, column: 8, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 636, column: 7)
!2854 = !DILocation(line: 0, scope: !2853)
!2855 = !DILocation(line: 636, column: 7, scope: !2847)
!2856 = !DILocation(line: 637, column: 16, scope: !2853)
!2857 = !DILocation(line: 637, column: 5, scope: !2853)
!2858 = !DILocation(line: 639, column: 16, scope: !2853)
!2859 = !DILocation(line: 640, column: 1, scope: !2847)
!2860 = distinct !DISubprogram(name: "begin_schedule_ready", scope: !3, file: !3, line: 129, type: !1852, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2861)
!2861 = !{!2862, !2863, !2864, !2867, !2868}
!2862 = !DILocalVariable(name: "insn", arg: 1, scope: !2860, file: !3, line: 129, type: !595)
!2863 = !DILocalVariable(name: "last", arg: 2, scope: !2860, file: !3, line: 129, type: !595)
!2864 = !DILocalVariable(name: "e", scope: !2865, file: !3, line: 139, type: !1146)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 138, column: 5)
!2866 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 133, column: 7)
!2867 = !DILocalVariable(name: "ei", scope: !2865, file: !3, line: 140, type: !2386)
!2868 = !DILocalVariable(name: "bb", scope: !2865, file: !3, line: 141, type: !1129)
!2869 = !DILocation(line: 0, scope: !2860)
!2870 = !DILocation(line: 131, column: 20, scope: !2860)
!2871 = !DILocation(line: 133, column: 7, scope: !2866)
!2872 = !DILocation(line: 133, column: 32, scope: !2866)
!2873 = !DILocation(line: 133, column: 29, scope: !2866)
!2874 = !DILocation(line: 135, column: 7, scope: !2866)
!2875 = !DILocation(line: 135, column: 10, scope: !2866)
!2876 = !DILocation(line: 137, column: 7, scope: !2866)
!2877 = !DILocation(line: 137, column: 18, scope: !2866)
!2878 = !DILocation(line: 137, column: 15, scope: !2866)
!2879 = !DILocation(line: 133, column: 7, scope: !2860)
!2880 = !DILocation(line: 139, column: 7, scope: !2865)
!2881 = !DILocation(line: 140, column: 7, scope: !2865)
!2882 = !DILocation(line: 148, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 148, column: 7)
!2884 = !DILocation(line: 0, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 148, column: 7)
!2886 = !DILocation(line: 148, column: 7, scope: !2885)
!2887 = !DILocation(line: 0, scope: !2865)
!2888 = !DILocation(line: 171, column: 11, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 171, column: 11)
!2890 = !DILocation(line: 149, column: 6, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 149, column: 6)
!2892 = !DILocation(line: 149, column: 9, scope: !2891)
!2893 = !DILocation(line: 149, column: 15, scope: !2891)
!2894 = !DILocation(line: 149, column: 6, scope: !2885)
!2895 = distinct !{!2895, !2882, !2896}
!2896 = !DILocation(line: 150, column: 4, scope: !2883)
!2897 = !DILocation(line: 171, column: 11, scope: !2865)
!2898 = !DILocation(line: 173, column: 9, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 172, column: 2)
!2900 = !DILocation(line: 174, column: 4, scope: !2899)
!2901 = !DILocation(line: 178, column: 27, scope: !2889)
!2902 = !DILocation(line: 178, column: 55, scope: !2889)
!2903 = !DILocation(line: 178, column: 7, scope: !2889)
!2904 = !DILocation(line: 0, scope: !2889)
!2905 = !DILocation(line: 184, column: 39, scope: !2865)
!2906 = !DILocation(line: 184, column: 7, scope: !2865)
!2907 = !DILocation(line: 184, column: 27, scope: !2865)
!2908 = !DILocation(line: 184, column: 37, scope: !2865)
!2909 = !DILocation(line: 185, column: 7, scope: !2865)
!2910 = !DILocation(line: 188, column: 7, scope: !2865)
!2911 = !DILocation(line: 188, column: 31, scope: !2865)
!2912 = !DILocation(line: 189, column: 7, scope: !2865)
!2913 = !DILocation(line: 190, column: 5, scope: !2866)
!2914 = !DILocation(line: 190, column: 5, scope: !2865)
!2915 = !DILocation(line: 191, column: 1, scope: !2860)
!2916 = distinct !DISubprogram(name: "advance_target_bb", scope: !3, file: !3, line: 658, type: !1856, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2917)
!2917 = !{!2918, !2919}
!2918 = !DILocalVariable(name: "bb", arg: 1, scope: !2916, file: !3, line: 658, type: !1129)
!2919 = !DILocalVariable(name: "insn", arg: 2, scope: !2916, file: !3, line: 658, type: !595)
!2920 = !DILocation(line: 0, scope: !2916)
!2921 = !DILocation(line: 660, column: 7, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 660, column: 7)
!2923 = !DILocation(line: 660, column: 7, scope: !2916)
!2924 = !DILocation(line: 681, column: 7, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 680, column: 5)
!2926 = !DILocation(line: 662, column: 11, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 662, column: 11)
!2928 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 661, column: 5)
!2929 = !DILocation(line: 662, column: 33, scope: !2927)
!2930 = !DILocation(line: 663, column: 4, scope: !2927)
!2931 = !DILocation(line: 663, column: 7, scope: !2927)
!2932 = !DILocation(line: 667, column: 4, scope: !2927)
!2933 = !DILocation(line: 667, column: 8, scope: !2927)
!2934 = !DILocation(line: 668, column: 4, scope: !2927)
!2935 = !DILocation(line: 668, column: 8, scope: !2927)
!2936 = !DILocation(line: 662, column: 11, scope: !2928)
!2937 = !DILocation(line: 671, column: 4, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 669, column: 2)
!2939 = !DILocation(line: 683, column: 4, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 682, column: 2)
!2941 = !DILocation(line: 685, column: 13, scope: !2940)
!2942 = !DILocation(line: 687, column: 14, scope: !2925)
!2943 = !DILocation(line: 687, column: 30, scope: !2925)
!2944 = !DILocation(line: 687, column: 27, scope: !2925)
!2945 = !DILocation(line: 686, column: 2, scope: !2940)
!2946 = distinct !{!2946, !2924, !2947}
!2947 = !DILocation(line: 687, column: 41, scope: !2925)
!2948 = !DILocation(line: 691, column: 1, scope: !2916)
!2949 = !DILocation(line: 0, scope: !2922)
!2950 = distinct !DISubprogram(name: "debug_ebb_dependencies", scope: !3, file: !3, line: 88, type: !1852, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2951)
!2951 = !{!2952, !2953}
!2952 = !DILocalVariable(name: "head", arg: 1, scope: !2950, file: !3, line: 88, type: !595)
!2953 = !DILocalVariable(name: "tail", arg: 2, scope: !2950, file: !3, line: 88, type: !595)
!2954 = !DILocation(line: 0, scope: !2950)
!2955 = !DILocation(line: 90, column: 12, scope: !2950)
!2956 = !DILocation(line: 90, column: 3, scope: !2950)
!2957 = !DILocation(line: 93, column: 12, scope: !2950)
!2958 = !DILocation(line: 94, column: 5, scope: !2950)
!2959 = !DILocation(line: 94, column: 23, scope: !2950)
!2960 = !DILocation(line: 93, column: 3, scope: !2950)
!2961 = !DILocation(line: 96, column: 3, scope: !2950)
!2962 = !DILocation(line: 97, column: 1, scope: !2950)
!2963 = distinct !DISubprogram(name: "VEC_haifa_insn_data_def_base_index", scope: !528, file: !528, line: 825, type: !2964, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3019)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!2966, !3011, !7}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "haifa_insn_data_def", file: !528, line: 822, baseType: !2968)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_haifa_insn_data", file: !528, line: 751, size: 768, elements: !2969)
!2969 = !{!2970, !2971, !2972, !2973, !2974, !2975, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2993, !2995, !3003, !3010}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !2968, file: !528, line: 758, baseType: !588, size: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2968, file: !528, line: 761, baseType: !588, size: 32, offset: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !2968, file: !528, line: 765, baseType: !588, size: 32, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "inter_tick", scope: !2968, file: !528, line: 769, baseType: !588, size: 32, offset: 96)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "queue_index", scope: !2968, file: !528, line: 772, baseType: !588, size: 32, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !2968, file: !528, line: 774, baseType: !2976, size: 16, offset: 160)
!2976 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fed_by_spec_load", scope: !2968, file: !528, line: 778, baseType: !7, size: 1, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "is_load_insn", scope: !2968, file: !528, line: 779, baseType: !7, size: 1, offset: 177, flags: DIFlagBitField, extraData: i64 176)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "priority_status", scope: !2968, file: !528, line: 784, baseType: !1503, size: 8, offset: 184)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "todo_spec", scope: !2968, file: !528, line: 787, baseType: !1763, size: 32, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "done_spec", scope: !2968, file: !528, line: 790, baseType: !1763, size: 32, offset: 224)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "check_spec", scope: !2968, file: !528, line: 793, baseType: !1763, size: 32, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "recovery_block", scope: !2968, file: !528, line: 796, baseType: !1129, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pat", scope: !2968, file: !528, line: 799, baseType: !595, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "reg_pressure", scope: !2968, file: !528, line: 804, baseType: !2986, size: 64, offset: 448)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_pressure_data", file: !528, line: 711, size: 32, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "clobber_increase", scope: !2987, file: !528, line: 714, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "set_increase", scope: !2987, file: !528, line: 717, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "unused_set_increase", scope: !2987, file: !528, line: 720, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "change", scope: !2987, file: !528, line: 722, baseType: !588, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "max_reg_pressure", scope: !2968, file: !528, line: 810, baseType: !2994, size: 64, offset: 512)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "reg_use_list", scope: !2968, file: !528, line: 813, baseType: !2996, size: 64, offset: 576)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_use_data", file: !528, line: 726, size: 256, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !2997, file: !528, line: 729, baseType: !588, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2997, file: !528, line: 731, baseType: !595, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "next_regno_use", scope: !2997, file: !528, line: 733, baseType: !2996, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "next_insn_use", scope: !2997, file: !528, line: 735, baseType: !2996, size: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "reg_set_list", scope: !2968, file: !528, line: 816, baseType: !3004, size: 64, offset: 640)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_set_data", file: !528, line: 741, size: 192, elements: !3006)
!3006 = !{!3007, !3008, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !3005, file: !528, line: 744, baseType: !588, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3005, file: !528, line: 746, baseType: !595, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "next_insn_set", scope: !3005, file: !528, line: 748, baseType: !3004, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "reg_pressure_excess_cost_change", scope: !2968, file: !528, line: 819, baseType: !588, size: 32, offset: 704)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_haifa_insn_data_def_base", file: !528, line: 825, baseType: !3013)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_haifa_insn_data_def_base", file: !528, line: 825, size: 832, elements: !3014)
!3014 = !{!3015, !3016, !3017}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3013, file: !528, line: 825, baseType: !7, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3013, file: !528, line: 825, baseType: !7, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !3013, file: !528, line: 825, baseType: !3018, size: 768, offset: 64)
!3018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2967, size: 768, elements: !630)
!3019 = !{!3020, !3021}
!3020 = !DILocalVariable(name: "vec_", arg: 1, scope: !2963, file: !528, line: 825, type: !3011)
!3021 = !DILocalVariable(name: "ix_", arg: 2, scope: !2963, file: !528, line: 825, type: !7)
!3022 = !DILocation(line: 0, scope: !2963)
!3023 = !DILocation(line: 825, column: 1, scope: !2963)
!3024 = distinct !DISubprogram(name: "add_deps_for_risky_insns", scope: !3, file: !3, line: 371, type: !1852, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3025)
!3025 = !{!3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3045, !3047}
!3026 = !DILocalVariable(name: "head", arg: 1, scope: !3024, file: !3, line: 371, type: !595)
!3027 = !DILocalVariable(name: "tail", arg: 2, scope: !3024, file: !3, line: 371, type: !595)
!3028 = !DILocalVariable(name: "insn", scope: !3024, file: !3, line: 373, type: !595)
!3029 = !DILocalVariable(name: "prev", scope: !3024, file: !3, line: 373, type: !595)
!3030 = !DILocalVariable(name: "classification", scope: !3024, file: !3, line: 374, type: !588)
!3031 = !DILocalVariable(name: "last_jump", scope: !3024, file: !3, line: 375, type: !595)
!3032 = !DILocalVariable(name: "next_tail", scope: !3024, file: !3, line: 376, type: !595)
!3033 = !DILocalVariable(name: "last_block", scope: !3024, file: !3, line: 377, type: !1129)
!3034 = !DILocalVariable(name: "bb", scope: !3024, file: !3, line: 377, type: !1129)
!3035 = !DILocalVariable(name: "_dep", scope: !3036, file: !3, line: 416, type: !3044)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 415, column: 8)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 414, column: 10)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 392, column: 4)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 388, column: 7)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 387, column: 14)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 380, column: 9)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 379, column: 3)
!3043 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 379, column: 3)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "dep_def", file: !528, line: 244, baseType: !1898)
!3045 = !DILocalVariable(name: "dep", scope: !3036, file: !3, line: 416, type: !3046)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3047 = !DILocalVariable(name: "res", scope: !3048, file: !3, line: 422, type: !579)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 421, column: 5)
!3049 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 420, column: 7)
!3050 = !DILocation(line: 0, scope: !3024)
!3051 = !DILocation(line: 376, column: 19, scope: !3024)
!3052 = !DILocation(line: 0, scope: !3036)
!3053 = !DILocation(line: 0, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 432, column: 11)
!3055 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 431, column: 5)
!3056 = !DILocation(line: 379, column: 8, scope: !3043)
!3057 = !DILocation(line: 0, scope: !3043)
!3058 = !DILocation(line: 379, column: 26, scope: !3042)
!3059 = !DILocation(line: 379, column: 3, scope: !3043)
!3060 = !DILocation(line: 451, column: 3, scope: !3024)
!3061 = !DILocation(line: 380, column: 9, scope: !3041)
!3062 = !DILocation(line: 380, column: 9, scope: !3042)
!3063 = !DILocation(line: 382, column: 7, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 381, column: 7)
!3065 = !DILocation(line: 383, column: 6, scope: !3064)
!3066 = !DILocation(line: 383, column: 10, scope: !3064)
!3067 = !DILocation(line: 386, column: 7, scope: !3064)
!3068 = !DILocation(line: 387, column: 14, scope: !3040)
!3069 = !DILocation(line: 387, column: 41, scope: !3040)
!3070 = !DILocation(line: 387, column: 28, scope: !3040)
!3071 = !DILocation(line: 387, column: 14, scope: !3041)
!3072 = !DILocation(line: 389, column: 19, scope: !3039)
!3073 = !DILocation(line: 391, column: 2, scope: !3039)
!3074 = !DILocation(line: 394, column: 10, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 394, column: 10)
!3076 = !DILocation(line: 394, column: 10, scope: !3038)
!3077 = !DILocation(line: 396, column: 8, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 395, column: 8)
!3079 = !DILocation(line: 397, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 397, column: 7)
!3081 = !DILocation(line: 397, column: 7, scope: !3078)
!3082 = !DILocation(line: 399, column: 30, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 398, column: 5)
!3084 = !DILocation(line: 400, column: 12, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 400, column: 11)
!3086 = !DILocation(line: 400, column: 11, scope: !3083)
!3087 = !DILocation(line: 402, column: 14, scope: !3083)
!3088 = !DILocation(line: 403, column: 5, scope: !3083)
!3089 = !DILocation(line: 0, scope: !3039)
!3090 = !DILocation(line: 414, column: 12, scope: !3037)
!3091 = !DILocation(line: 414, column: 10, scope: !3038)
!3092 = !DILocation(line: 416, column: 3, scope: !3036)
!3093 = !DILocation(line: 418, column: 3, scope: !3036)
!3094 = !DILocation(line: 420, column: 9, scope: !3049)
!3095 = !DILocation(line: 420, column: 29, scope: !3049)
!3096 = !DILocation(line: 420, column: 35, scope: !3049)
!3097 = !DILocation(line: 420, column: 7, scope: !3036)
!3098 = !DILocation(line: 424, column: 13, scope: !3048)
!3099 = !DILocation(line: 0, scope: !3048)
!3100 = !DILocation(line: 428, column: 7, scope: !3048)
!3101 = !DILocation(line: 432, column: 38, scope: !3054)
!3102 = !DILocation(line: 433, column: 4, scope: !3054)
!3103 = !DILocation(line: 433, column: 8, scope: !3054)
!3104 = !DILocation(line: 433, column: 19, scope: !3054)
!3105 = !DILocation(line: 433, column: 24, scope: !3054)
!3106 = !DILocation(line: 432, column: 11, scope: !3055)
!3107 = !DILocation(line: 434, column: 28, scope: !3054)
!3108 = !DILocation(line: 434, column: 26, scope: !3054)
!3109 = !DILocation(line: 434, column: 9, scope: !3054)
!3110 = !DILocation(line: 437, column: 7, scope: !3055)
!3111 = !DILocation(line: 442, column: 8, scope: !3037)
!3112 = !DILocation(line: 442, column: 8, scope: !3036)
!3113 = !DILocation(line: 379, column: 47, scope: !3042)
!3114 = !DILocation(line: 379, column: 3, scope: !3042)
!3115 = distinct !{!3115, !3059, !3116}
!3116 = !DILocation(line: 449, column: 7, scope: !3043)
!3117 = !DILocation(line: 453, column: 38, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 452, column: 5)
!3119 = !DILocation(line: 454, column: 23, scope: !3118)
!3120 = distinct !{!3120, !3060, !3121}
!3121 = !DILocation(line: 456, column: 5, scope: !3024)
!3122 = !DILocation(line: 457, column: 1, scope: !3024)
!3123 = distinct !DISubprogram(name: "earliest_block_with_similiar_load", scope: !3, file: !3, line: 320, type: !1856, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3130, !3131, !3132, !3136, !3139, !3140, !3144}
!3125 = !DILocalVariable(name: "last_block", arg: 1, scope: !3123, file: !3, line: 320, type: !1129)
!3126 = !DILocalVariable(name: "load_insn", arg: 2, scope: !3123, file: !3, line: 320, type: !595)
!3127 = !DILocalVariable(name: "back_sd_it", scope: !3123, file: !3, line: 322, type: !1879)
!3128 = !DILocalVariable(name: "back_dep", scope: !3123, file: !3, line: 323, type: !3129)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "dep_t", file: !528, line: 245, baseType: !3046)
!3130 = !DILocalVariable(name: "bb", scope: !3123, file: !3, line: 324, type: !1129)
!3131 = !DILocalVariable(name: "earliest_block", scope: !3123, file: !3, line: 324, type: !1129)
!3132 = !DILocalVariable(name: "insn1", scope: !3133, file: !3, line: 328, type: !595)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 327, column: 5)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 326, column: 3)
!3135 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 326, column: 3)
!3136 = !DILocalVariable(name: "fore_sd_it", scope: !3137, file: !3, line: 333, type: !1879)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 332, column: 2)
!3138 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 330, column: 11)
!3139 = !DILocalVariable(name: "fore_dep", scope: !3137, file: !3, line: 334, type: !3129)
!3140 = !DILocalVariable(name: "insn2", scope: !3141, file: !3, line: 338, type: !595)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 337, column: 6)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 336, column: 4)
!3143 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 336, column: 4)
!3144 = !DILocalVariable(name: "insn2_block", scope: !3141, file: !3, line: 339, type: !1129)
!3145 = !DILocation(line: 0, scope: !3123)
!3146 = !DILocation(line: 322, column: 3, scope: !3123)
!3147 = !DILocation(line: 323, column: 3, scope: !3123)
!3148 = !DILocation(line: 326, column: 3, scope: !3135)
!3149 = !DILocation(line: 0, scope: !3137)
!3150 = !DILocation(line: 0, scope: !3143)
!3151 = !DILocation(line: 324, column: 19, scope: !3123)
!3152 = !DILocation(line: 326, column: 3, scope: !3134)
!3153 = !DILocation(line: 0, scope: !3133)
!3154 = !DILocation(line: 330, column: 11, scope: !3138)
!3155 = !DILocation(line: 330, column: 31, scope: !3138)
!3156 = !DILocation(line: 330, column: 11, scope: !3133)
!3157 = !DILocation(line: 328, column: 19, scope: !3133)
!3158 = !DILocation(line: 333, column: 4, scope: !3137)
!3159 = !DILocation(line: 334, column: 4, scope: !3137)
!3160 = !DILocation(line: 336, column: 4, scope: !3143)
!3161 = !DILocation(line: 336, column: 4, scope: !3142)
!3162 = !DILocation(line: 338, column: 20, scope: !3141)
!3163 = !DILocation(line: 0, scope: !3141)
!3164 = !DILocation(line: 339, column: 34, scope: !3141)
!3165 = !DILocation(line: 341, column: 12, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 341, column: 12)
!3167 = !DILocation(line: 341, column: 32, scope: !3166)
!3168 = !DILocation(line: 341, column: 12, scope: !3141)
!3169 = !DILocation(line: 343, column: 24, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 343, column: 9)
!3171 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 342, column: 3)
!3172 = !DILocation(line: 344, column: 9, scope: !3170)
!3173 = !DILocation(line: 344, column: 28, scope: !3170)
!3174 = !DILocation(line: 344, column: 49, scope: !3170)
!3175 = !DILocation(line: 344, column: 34, scope: !3170)
!3176 = !DILocation(line: 343, column: 9, scope: !3171)
!3177 = !DILocation(line: 348, column: 9, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 348, column: 9)
!3179 = !DILocation(line: 348, column: 37, scope: !3178)
!3180 = !DILocation(line: 348, column: 9, scope: !3171)
!3181 = !DILocation(line: 352, column: 5, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 352, column: 5)
!3183 = !DILocation(line: 0, scope: !3182)
!3184 = !DILocation(line: 353, column: 23, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 353, column: 11)
!3186 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 352, column: 5)
!3187 = !DILocation(line: 353, column: 11, scope: !3186)
!3188 = !DILocation(line: 352, column: 54, scope: !3186)
!3189 = !DILocation(line: 352, column: 5, scope: !3186)
!3190 = distinct !{!3190, !3181, !3191}
!3191 = !DILocation(line: 354, column: 9, scope: !3182)
!3192 = !DILocation(line: 356, column: 9, scope: !3171)
!3193 = !DILocation(line: 358, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 356, column: 9)
!3195 = distinct !{!3195, !3160, !3196}
!3196 = !DILocation(line: 360, column: 6, scope: !3143)
!3197 = !DILocation(line: 361, column: 2, scope: !3138)
!3198 = !DILocation(line: 361, column: 2, scope: !3137)
!3199 = distinct !{!3199, !3148, !3200}
!3200 = !DILocation(line: 362, column: 5, scope: !3135)
!3201 = !DILocation(line: 365, column: 1, scope: !3123)
!3202 = !DILocation(line: 364, column: 3, scope: !3123)
!3203 = !DILocation(line: 0, scope: !1876)
!3204 = !DILocation(line: 1432, column: 19, scope: !1876)
!3205 = !DILocation(line: 1434, column: 5, scope: !1876)
!3206 = !DILocation(line: 1434, column: 11, scope: !1876)
!3207 = !DILocation(line: 1435, column: 5, scope: !1876)
!3208 = !DILocation(line: 1435, column: 10, scope: !1876)
!3209 = !DILocation(line: 1436, column: 5, scope: !1876)
!3210 = !DILocation(line: 1436, column: 11, scope: !1876)
!3211 = !DILocation(line: 1439, column: 5, scope: !1876)
!3212 = !DILocation(line: 1439, column: 16, scope: !1876)
!3213 = !DILocation(line: 1441, column: 3, scope: !1876)
!3214 = distinct !DISubprogram(name: "sd_iterator_cond", scope: !528, file: !528, line: 1446, type: !3215, scopeLine: 1447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3219)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!587, !3217, !3218}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3219 = !{!3220, !3221, !3222, !3223, !3226}
!3220 = !DILocalVariable(name: "it_ptr", arg: 1, scope: !3214, file: !528, line: 1446, type: !3217)
!3221 = !DILocalVariable(name: "dep_ptr", arg: 2, scope: !3214, file: !528, line: 1446, type: !3218)
!3222 = !DILocalVariable(name: "link", scope: !3214, file: !528, line: 1448, type: !1887)
!3223 = !DILocalVariable(name: "types", scope: !3224, file: !528, line: 1457, type: !1883)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !528, line: 1456, column: 5)
!3225 = distinct !DILexicalBlock(scope: !3214, file: !528, line: 1450, column: 7)
!3226 = !DILocalVariable(name: "list", scope: !3227, file: !528, line: 1462, type: !3229)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !528, line: 1461, column: 2)
!3228 = distinct !DILexicalBlock(scope: !3224, file: !528, line: 1459, column: 11)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "deps_list_t", file: !528, line: 305, baseType: !3230)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_deps_list", file: !528, line: 297, size: 128, elements: !3232)
!3232 = !{!3233, !3234}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3231, file: !528, line: 300, baseType: !1887, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "n_links", scope: !3231, file: !528, line: 303, baseType: !588, size: 32, offset: 64)
!3235 = !DILocation(line: 0, scope: !3214)
!3236 = !DILocation(line: 1448, column: 30, scope: !3214)
!3237 = !DILocation(line: 1448, column: 21, scope: !3214)
!3238 = !DILocation(line: 1450, column: 12, scope: !3225)
!3239 = !DILocation(line: 1450, column: 7, scope: !3214)
!3240 = !DILocation(line: 1452, column: 18, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3225, file: !528, line: 1451, column: 5)
!3242 = !DILocation(line: 1452, column: 16, scope: !3241)
!3243 = !DILocation(line: 1453, column: 7, scope: !3241)
!3244 = !DILocation(line: 1457, column: 41, scope: !3224)
!3245 = !DILocation(line: 0, scope: !3224)
!3246 = !DILocation(line: 1459, column: 17, scope: !3228)
!3247 = !DILocation(line: 1459, column: 11, scope: !3224)
!3248 = !DILocation(line: 1462, column: 4, scope: !3227)
!3249 = !DILocation(line: 1464, column: 26, scope: !3227)
!3250 = !DILocation(line: 1465, column: 36, scope: !3227)
!3251 = !DILocation(line: 0, scope: !3227)
!3252 = !DILocation(line: 1464, column: 4, scope: !3227)
!3253 = !DILocation(line: 1467, column: 21, scope: !3227)
!3254 = !DILocation(line: 1467, column: 18, scope: !3227)
!3255 = !DILocation(line: 1469, column: 8, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3227, file: !528, line: 1469, column: 8)
!3257 = !DILocation(line: 1469, column: 8, scope: !3227)
!3258 = !DILocation(line: 1470, column: 13, scope: !3256)
!3259 = !DILocation(line: 1470, column: 6, scope: !3256)
!3260 = !DILocation(line: 1471, column: 2, scope: !3228)
!3261 = !DILocation(line: 1473, column: 16, scope: !3224)
!3262 = !DILocation(line: 1474, column: 7, scope: !3224)
!3263 = !DILocation(line: 0, scope: !3225)
!3264 = !DILocation(line: 1476, column: 1, scope: !3214)
!3265 = distinct !DISubprogram(name: "sd_iterator_next", scope: !528, file: !528, line: 1480, type: !3266, scopeLine: 1481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !3217}
!3268 = !{!3269}
!3269 = !DILocalVariable(name: "it_ptr", arg: 1, scope: !3265, file: !528, line: 1480, type: !3217)
!3270 = !DILocation(line: 0, scope: !3265)
!3271 = !DILocation(line: 1482, column: 20, scope: !3265)
!3272 = !DILocation(line: 1482, column: 17, scope: !3265)
!3273 = !DILocation(line: 1483, column: 1, scope: !3265)
!3274 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !142, file: !142, line: 281, type: !3275, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3279)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!1129, !3277, !7}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!3279 = !{!3280, !3281}
!3280 = !DILocalVariable(name: "vec_", arg: 1, scope: !3274, file: !142, line: 281, type: !3277)
!3281 = !DILocalVariable(name: "ix_", arg: 2, scope: !3274, file: !142, line: 281, type: !7)
!3282 = !DILocation(line: 0, scope: !3274)
!3283 = !DILocation(line: 281, column: 1, scope: !3274)
