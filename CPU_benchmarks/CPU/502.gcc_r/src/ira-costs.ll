; ModuleID = 'ira-costs.bc'
source_filename = "ira-costs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.costs = type { i32, [1 x i32] }
%struct.ira_loop_tree_node = type { %struct.basic_block_def*, %struct.loop*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node*, i32, i8, %struct.ira_allocno**, i8, [27 x i32], %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
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
%union.section = type opaque
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
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type opaque
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.ira_allocno = type { i32, i32, i32, i32, %struct.rtx_def*, %struct.ira_allocno*, %struct.ira_loop_tree_node*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ira_allocno_copy*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno*, %struct.ira_allocno_live_range*, i32, i32, i8*, i32, i32, i64, i64, i32, i32, i32, i16, %struct.ira_allocno*, i32*, i32*, i32*, i32*, i32, i32, %struct.ira_allocno*, %struct.ira_allocno*, i32 }
%struct.ira_allocno_copy = type { i32, %struct.ira_allocno*, %struct.ira_allocno*, i32, i8, %struct.rtx_def*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_allocno_copy*, %struct.ira_loop_tree_node* }
%struct.ira_allocno_live_range = type { %struct.ira_allocno*, i32, i32, %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range*, %struct.ira_allocno_live_range* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [14 x %struct.rtx_def**], [14 x i8], i8, i8, i8, [30 x i8], %struct.rtx_def* }
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
%struct.ira_allocno_iterator = type { i32 }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@init_cost = internal unnamed_addr global %struct.costs* null, align 8, !dbg !0
@op_costs = internal global [30 x %struct.costs*] zeroinitializer, align 16, !dbg !1710
@this_op_costs = internal unnamed_addr global [30 x %struct.costs*] zeroinitializer, align 16, !dbg !1715
@temp_costs = internal unnamed_addr global %struct.costs* null, align 8, !dbg !1708
@cost_classes = internal unnamed_addr global i32* null, align 8, !dbg !1719
@ira_important_classes_num = external dso_local local_unnamed_addr global i32, align 4
@max_struct_costs_size = internal unnamed_addr global i32 0, align 4, !dbg !1706
@allocno_p = internal unnamed_addr global i1 false, align 1, !dbg !1742
@ira_allocnos_num = external dso_local local_unnamed_addr global i32, align 4
@cost_elements_num = internal unnamed_addr global i32 0, align 4, !dbg !1704
@total_allocno_costs = internal unnamed_addr global %struct.costs* null, align 8, !dbg !1717
@ira_dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_ira_verbose = external dso_local local_unnamed_addr global i32, align 4
@internal_flag_ira_verbose = external dso_local local_unnamed_addr global i32, align 4
@pseudo_classes_defined_p = internal unnamed_addr global i1 false, align 1, !dbg !1743
@ira_class_hard_regs_num = external dso_local local_unnamed_addr global [27 x i32], align 16
@ira_class_hard_regs = external dso_local local_unnamed_addr global [27 x [53 x i16]], align 16
@regclass_map = external dso_local local_unnamed_addr constant [53 x i32], align 16
@call_used_reg_set = external dso_local local_unnamed_addr global i64, align 8
@ira_memory_move_cost = external dso_local local_unnamed_addr global [87 x [27 x [2 x i16]]], align 16
@costs = internal unnamed_addr global %struct.costs* null, align 8, !dbg !1721
@pref_buffer = internal unnamed_addr global i32* null, align 8, !dbg !1723
@regno_cover_class = internal unnamed_addr global i32* null, align 8, !dbg !1725
@pref = internal unnamed_addr global i32* null, align 8, !dbg !1727
@flag_expensive_optimizations = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [44 x i8] c"\0APass %i for finding pseudo/allocno costs\0A\0A\00", align 1
@cost_class_nums = internal unnamed_addr global [27 x i32] zeroinitializer, align 16, !dbg !1729
@cost_classes_num = internal unnamed_addr global i32 0, align 4, !dbg !1734
@ira_important_classes = external dso_local local_unnamed_addr global [27 x i32], align 16
@struct_costs_size = internal unnamed_addr global i32 0, align 4, !dbg !1736
@ira_loop_tree_root = external dso_local local_unnamed_addr global %struct.ira_loop_tree_node*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@regno_reg_rtx = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@ira_regno_allocno_map = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@flag_ira_region = external dso_local local_unnamed_addr global i32, align 4
@contains_reg_of_mode = external dso_local local_unnamed_addr global [27 x [87 x i8]], align 16
@ira_reg_class_union = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@reg_class_size = external dso_local local_unnamed_addr global [27 x i32], align 16
@reg_class_subunion = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@ira_class_translate = external dso_local local_unnamed_addr global [27 x i32], align 16
@flag_ira_algorithm = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"    r%d: preferred %s, alternative %s, cover %s\0A\00", align 1
@reg_class_names = external dso_local local_unnamed_addr global [0 x i8*], align 8
@ira_class_subset_p = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@.str.2 = private unnamed_addr constant [14 x i8] c"    a%d (r%d,\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"b%d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"l%d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c") best %s, cover %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@optimize_size = external dso_local local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@frequency = internal unnamed_addr global i32 0, align 4, !dbg !1738
@ira_curr_regno_allocno_map = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8
@recog_data = external dso_local global %struct.recog_data, align 8
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@reg_renumber = external dso_local local_unnamed_addr global i16*, align 8
@ira_register_move_cost = external dso_local local_unnamed_addr global [87 x [27 x i16]*], align 16
@ira_may_move_in_cost = external dso_local local_unnamed_addr global [87 x [27 x i16]*], align 16
@ira_may_move_out_cost = external dso_local local_unnamed_addr global [87 x [27 x i16]*], align 16
@ira_reg_class_intersect = external dso_local local_unnamed_addr global [27 x [27 x i32]], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@flag_pic = external dso_local local_unnamed_addr global i32, align 4
@reg_class_contents = external dso_local local_unnamed_addr global [27 x i64], align 16
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@move_cost = external dso_local local_unnamed_addr global [87 x [27 x i16]*], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"  a%d(r%d,\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c") costs:\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" %s:%d\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" MEM:%i\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"  r%d costs:\00", align 1
@ira_available_class_regs = external dso_local local_unnamed_addr global [27 x i32], align 16
@optimize = external dso_local local_unnamed_addr global i32, align 4
@ira_class_hard_reg_index = external dso_local local_unnamed_addr global [27 x [53 x i16]], align 16
@ira_allocnos = external dso_local local_unnamed_addr global %struct.ira_allocno**, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1748 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1761, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1762, metadata !DIExpression()), !dbg !1763
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1764
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1765
  ret i32 %call, !dbg !1766
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1767 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1771
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1772
  ret i32 %call, !dbg !1773
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1774 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1828, metadata !DIExpression()), !dbg !1829
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1830
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1830
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1830
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1830
  %cmp = icmp uge i8* %0, %1, !dbg !1830
  %conv1 = zext i1 %cmp to i64, !dbg !1830
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1830
  %tobool = icmp eq i64 %expval, 0, !dbg !1830
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1830

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1830
  br label %cond.end, !dbg !1830

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1830
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1830
  %2 = load i8, i8* %0, align 1, !dbg !1830
  %conv3 = zext i8 %2 to i32, !dbg !1830
  br label %cond.end, !dbg !1830

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1830
  ret i32 %cond, !dbg !1831
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1832 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1834, metadata !DIExpression()), !dbg !1835
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1836
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1836
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1836
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1836
  %cmp = icmp uge i8* %0, %1, !dbg !1836
  %conv1 = zext i1 %cmp to i64, !dbg !1836
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1836
  %tobool = icmp eq i64 %expval, 0, !dbg !1836
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1836

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1836
  br label %cond.end, !dbg !1836

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1836
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1836
  %2 = load i8, i8* %0, align 1, !dbg !1836
  %conv3 = zext i8 %2 to i32, !dbg !1836
  br label %cond.end, !dbg !1836

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1836
  ret i32 %cond, !dbg !1837
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1838 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1839
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1839
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1839
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1839
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1839
  %cmp = icmp uge i8* %1, %2, !dbg !1839
  %conv1 = zext i1 %cmp to i64, !dbg !1839
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1839
  %tobool = icmp eq i64 %expval, 0, !dbg !1839
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1839

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1839
  br label %cond.end, !dbg !1839

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1839
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1839
  %3 = load i8, i8* %1, align 1, !dbg !1839
  %conv3 = zext i8 %3 to i32, !dbg !1839
  br label %cond.end, !dbg !1839

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1839
  ret i32 %cond, !dbg !1840
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1841 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1845, metadata !DIExpression()), !dbg !1846
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1847
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1848
  ret i32 %call, !dbg !1849
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1850 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1854, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1855, metadata !DIExpression()), !dbg !1856
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1857
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1857
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1857
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1857
  %cmp = icmp uge i8* %0, %1, !dbg !1857
  %conv1 = zext i1 %cmp to i64, !dbg !1857
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1857
  %tobool = icmp eq i64 %expval, 0, !dbg !1857
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1857

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1857
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1857
  br label %cond.end, !dbg !1857

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1857
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1857
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1857
  store i8 %conv2, i8* %0, align 1, !dbg !1857
  %conv6 = and i32 %__c, 255, !dbg !1857
  br label %cond.end, !dbg !1857

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1857
  ret i32 %cond, !dbg !1858
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1859 {
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1866 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1868, metadata !DIExpression()), !dbg !1869
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1870
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1870
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1870
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1870
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1870
  %cmp = icmp uge i8* %1, %2, !dbg !1870
  %conv1 = zext i1 %cmp to i64, !dbg !1870
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1870
  %tobool = icmp eq i64 %expval, 0, !dbg !1870
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1870

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1870
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1870
  br label %cond.end, !dbg !1870

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1870
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1870
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1870
  store i8 %conv4, i8* %1, align 1, !dbg !1870
  %conv6 = and i32 %__c, 255, !dbg !1870
  br label %cond.end, !dbg !1870

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1870
  ret i32 %cond, !dbg !1871
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1872 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1878, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1879, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1880, metadata !DIExpression()), !dbg !1881
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1882
  ret i64 %call, !dbg !1883
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1884 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1886, metadata !DIExpression()), !dbg !1887
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1888
  %0 = load i32, i32* %_flags, align 8, !dbg !1888
  %and = lshr i32 %0, 4, !dbg !1888
  %and.lobit = and i32 %and, 1, !dbg !1888
  ret i32 %and.lobit, !dbg !1889
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1890 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1892, metadata !DIExpression()), !dbg !1893
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1894
  %0 = load i32, i32* %_flags, align 8, !dbg !1894
  %and = lshr i32 %0, 5, !dbg !1894
  %and.lobit = and i32 %and, 1, !dbg !1894
  ret i32 %and.lobit, !dbg !1895
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1896 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1899, metadata !DIExpression()), !dbg !1900
  %__c.off = add i32 %__c, 128, !dbg !1901
  %0 = icmp ult i32 %__c.off, 384, !dbg !1901
  br i1 %0, label %cond.true, label %cond.end, !dbg !1901

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1902
  %1 = load i32*, i32** %call, align 8, !dbg !1903
  %idxprom = sext i32 %__c to i64, !dbg !1904
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1904
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1904
  br label %cond.end, !dbg !1905

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1905
  ret i32 %cond, !dbg !1906
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1907 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1909, metadata !DIExpression()), !dbg !1910
  %__c.off = add i32 %__c, 128, !dbg !1911
  %0 = icmp ult i32 %__c.off, 384, !dbg !1911
  br i1 %0, label %cond.true, label %cond.end, !dbg !1911

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1912
  %1 = load i32*, i32** %call, align 8, !dbg !1913
  %idxprom = sext i32 %__c to i64, !dbg !1914
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1914
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1914
  br label %cond.end, !dbg !1915

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1915
  ret i32 %cond, !dbg !1916
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1917 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1922, metadata !DIExpression()), !dbg !1923
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1924
  %conv = trunc i64 %call to i32, !dbg !1925
  ret i32 %conv, !dbg !1926
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1927 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1931, metadata !DIExpression()), !dbg !1932
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1933
  ret i64 %call, !dbg !1934
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1935 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1940, metadata !DIExpression()), !dbg !1941
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1942
  ret i64 %call, !dbg !1943
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1944 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1950, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1951, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1952, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1953, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1954, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 0, metadata !1955, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1956, metadata !DIExpression()), !dbg !1960
  br label %while.cond, !dbg !1961

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1962
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1960
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1956, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1955, metadata !DIExpression()), !dbg !1960
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1963
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1961

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1964
  %div = lshr i64 %add, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %div, metadata !1957, metadata !DIExpression()), !dbg !1960
  %mul = mul i64 %div, %__size, !dbg !1967
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1968
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1958, metadata !DIExpression()), !dbg !1960
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %call, metadata !1959, metadata !DIExpression()), !dbg !1960
  %cmp1 = icmp slt i32 %call, 0, !dbg !1970
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1972

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1973
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1975

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1955, metadata !DIExpression()), !dbg !1960
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1960
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1960
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1956, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1955, metadata !DIExpression()), !dbg !1960
  br label %while.cond, !dbg !1961, !llvm.loop !1977

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1960
  ret i8* %retval.0, !dbg !1979
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1980 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1986, metadata !DIExpression()), !dbg !1987
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1988
  ret double %call, !dbg !1989
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1990 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1999, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2000, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i32 %base, metadata !2001, metadata !DIExpression()), !dbg !2002
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2003
  ret i64 %call, !dbg !2004
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2005 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2011, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2012, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i32 %base, metadata !2013, metadata !DIExpression()), !dbg !2014
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2015
  ret i64 %call, !dbg !2016
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2017 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2028, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2029, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %base, metadata !2030, metadata !DIExpression()), !dbg !2031
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2032
  ret i64 %call, !dbg !2033
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2034 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2038, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2039, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %base, metadata !2040, metadata !DIExpression()), !dbg !2041
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2042
  ret i64 %call, !dbg !2043
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2044 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2084, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2085, metadata !DIExpression()), !dbg !2086
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2087
  ret i32 %call, !dbg !2088
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2089 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2091, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2092, metadata !DIExpression()), !dbg !2093
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2094
  ret i32 %call, !dbg !2095
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2096 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2100, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2101, metadata !DIExpression()), !dbg !2102
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2103
  ret i32 %call, !dbg !2104
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2105 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2109, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2110, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2112, metadata !DIExpression()), !dbg !2113
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2114
  ret i32 %call, !dbg !2115
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2116 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2120, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2121, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2122, metadata !DIExpression()), !dbg !2123
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2122, metadata !DIExpression(DW_OP_deref)), !dbg !2123
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2124
  ret i32 %call, !dbg !2125
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2126 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2130, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2131, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2132, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2133, metadata !DIExpression()), !dbg !2134
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2133, metadata !DIExpression(DW_OP_deref)), !dbg !2134
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2135
  ret i32 %call, !dbg !2136
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2137 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2161, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2162, metadata !DIExpression()), !dbg !2163
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2164
  ret i32 %call, !dbg !2165
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2166 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2168, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2169, metadata !DIExpression()), !dbg !2170
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2171
  ret i32 %call, !dbg !2172
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2173 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2178, metadata !DIExpression()), !dbg !2179
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2180
  ret i32 %call, !dbg !2181
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2182 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2186, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2187, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2188, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2189, metadata !DIExpression()), !dbg !2190
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2191
  ret i32 %call, !dbg !2192
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ira_init_costs_once() local_unnamed_addr #5 !dbg !2193 {
entry:
  store %struct.costs* null, %struct.costs** @init_cost, align 8, !dbg !2198
  call void @llvm.dbg.value(metadata i32 0, metadata !2197, metadata !DIExpression()), !dbg !2199
  br label %for.cond, !dbg !2200

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2202
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2197, metadata !DIExpression()), !dbg !2199
  %exitcond = icmp eq i64 %indvars.iv, 30, !dbg !2203
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2205

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 %indvars.iv, !dbg !2206
  store %struct.costs* null, %struct.costs** %arrayidx, align 8, !dbg !2208
  %arrayidx2 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @this_op_costs, i64 0, i64 %indvars.iv, !dbg !2209
  store %struct.costs* null, %struct.costs** %arrayidx2, align 8, !dbg !2210
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2211
  call void @llvm.dbg.value(metadata i32 undef, metadata !2197, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2199
  br label %for.cond, !dbg !2212, !llvm.loop !2213

for.end:                                          ; preds = %for.cond
  store %struct.costs* null, %struct.costs** @temp_costs, align 8, !dbg !2215
  store i32* null, i32** @cost_classes, align 8, !dbg !2216
  ret void, !dbg !2217
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_init_costs() local_unnamed_addr #5 !dbg !2218 {
entry:
  tail call fastcc void @free_ira_costs() #7, !dbg !2221
  %0 = load i32, i32* @ira_important_classes_num, align 4, !dbg !2222
  %sub = shl i32 %0, 2, !dbg !2223
  %add = add i32 %sub, 4, !dbg !2224
  store i32 %add, i32* @max_struct_costs_size, align 4, !dbg !2225
  %conv2 = sext i32 %add to i64, !dbg !2226
  %call = tail call i8* @xmalloc(i64 %conv2) #6, !dbg !2227
  store i8* %call, i8** bitcast (%struct.costs** @init_cost to i8**), align 8, !dbg !2228
  %mem_cost = bitcast i8* %call to i32*, !dbg !2229
  store i32 1000000, i32* %mem_cost, align 4, !dbg !2230
  call void @llvm.dbg.value(metadata i32 0, metadata !2220, metadata !DIExpression()), !dbg !2231
  br label %for.cond, !dbg !2232

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.body ], [ 0, %entry ], !dbg !2234
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2220, metadata !DIExpression()), !dbg !2231
  %1 = load i32, i32* @ira_important_classes_num, align 4, !dbg !2235
  %2 = sext i32 %1 to i64, !dbg !2237
  %cmp = icmp slt i64 %indvars.iv1, %2, !dbg !2237
  br i1 %cmp, label %for.body, label %for.cond4.preheader, !dbg !2238

for.cond4.preheader:                              ; preds = %for.cond
  br label %for.cond4, !dbg !2239

for.body:                                         ; preds = %for.cond
  %3 = load %struct.costs*, %struct.costs** @init_cost, align 8, !dbg !2241
  %arrayidx = getelementptr inbounds %struct.costs, %struct.costs* %3, i64 0, i32 1, i64 %indvars.iv1, !dbg !2241
  store i32 1000000, i32* %arrayidx, align 4, !dbg !2242
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i32 undef, metadata !2220, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2231
  br label %for.cond, !dbg !2244, !llvm.loop !2245

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body7
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body7 ], !dbg !2247
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2220, metadata !DIExpression()), !dbg !2231
  %4 = load i32, i32* @max_struct_costs_size, align 4, !dbg !2231
  %conv8 = sext i32 %4 to i64, !dbg !2231
  %call9 = tail call i8* @xmalloc(i64 %conv8) #6, !dbg !2231
  %exitcond = icmp eq i64 %indvars.iv, 30, !dbg !2248
  br i1 %exitcond, label %for.end18, label %for.body7, !dbg !2239

for.body7:                                        ; preds = %for.cond4
  %arrayidx11 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 %indvars.iv, !dbg !2250
  %5 = bitcast %struct.costs** %arrayidx11 to i8**, !dbg !2252
  store i8* %call9, i8** %5, align 8, !dbg !2252
  %6 = load i32, i32* @max_struct_costs_size, align 4, !dbg !2253
  %conv12 = sext i32 %6 to i64, !dbg !2253
  %call13 = tail call i8* @xmalloc(i64 %conv12) #6, !dbg !2254
  %arrayidx15 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @this_op_costs, i64 0, i64 %indvars.iv, !dbg !2255
  %7 = bitcast %struct.costs** %arrayidx15 to i8**, !dbg !2256
  store i8* %call13, i8** %7, align 8, !dbg !2256
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i32 undef, metadata !2220, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2231
  br label %for.cond4, !dbg !2258, !llvm.loop !2259

for.end18:                                        ; preds = %for.cond4
  %call9.lcssa = phi i8* [ %call9, %for.cond4 ], !dbg !2231
  store i8* %call9.lcssa, i8** bitcast (%struct.costs** @temp_costs to i8**), align 8, !dbg !2261
  %8 = load i32, i32* @ira_important_classes_num, align 4, !dbg !2262
  %conv21 = sext i32 %8 to i64, !dbg !2262
  %mul22 = shl nsw i64 %conv21, 2, !dbg !2263
  %call23 = tail call i8* @xmalloc(i64 %mul22) #6, !dbg !2264
  store i8* %call23, i8** bitcast (i32** @cost_classes to i8**), align 8, !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_ira_costs() unnamed_addr #5 !dbg !2267 {
entry:
  %0 = load %struct.costs*, %struct.costs** @init_cost, align 8, !dbg !2270
  %cmp = icmp eq %struct.costs* %0, null, !dbg !2272
  br i1 %cmp, label %if.end, label %if.then, !dbg !2273

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.costs* %0 to i8*, !dbg !2273
  tail call void @free(i8* nonnull %1) #6, !dbg !2274
  br label %if.end, !dbg !2274

if.end:                                           ; preds = %entry, %if.then
  store %struct.costs* null, %struct.costs** @init_cost, align 8, !dbg !2275
  call void @llvm.dbg.value(metadata i32 0, metadata !2269, metadata !DIExpression()), !dbg !2276
  br label %for.cond, !dbg !2277

for.cond:                                         ; preds = %if.end13, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end13 ], [ 0, %if.end ], !dbg !2279
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2269, metadata !DIExpression()), !dbg !2276
  %exitcond = icmp eq i64 %indvars.iv, 30, !dbg !2280
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2282

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 %indvars.iv, !dbg !2283
  %2 = load %struct.costs*, %struct.costs** %arrayidx, align 8, !dbg !2283
  %cmp2 = icmp eq %struct.costs* %2, null, !dbg !2286
  br i1 %cmp2, label %if.end6, label %if.then3, !dbg !2287

if.then3:                                         ; preds = %for.body
  %3 = bitcast %struct.costs* %2 to i8*, !dbg !2287
  tail call void @free(i8* nonnull %3) #6, !dbg !2288
  br label %if.end6, !dbg !2288

if.end6:                                          ; preds = %for.body, %if.then3
  %arrayidx8 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @this_op_costs, i64 0, i64 %indvars.iv, !dbg !2289
  %4 = load %struct.costs*, %struct.costs** %arrayidx8, align 8, !dbg !2289
  %cmp9 = icmp eq %struct.costs* %4, null, !dbg !2291
  br i1 %cmp9, label %if.end13, label %if.then10, !dbg !2292

if.then10:                                        ; preds = %if.end6
  %5 = bitcast %struct.costs* %4 to i8*, !dbg !2292
  tail call void @free(i8* nonnull %5) #6, !dbg !2293
  br label %if.end13, !dbg !2293

if.end13:                                         ; preds = %if.end6, %if.then10
  store %struct.costs* null, %struct.costs** %arrayidx8, align 8, !dbg !2294
  store %struct.costs* null, %struct.costs** %arrayidx, align 8, !dbg !2295
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i32 undef, metadata !2269, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2276
  br label %for.cond, !dbg !2297, !llvm.loop !2298

for.end:                                          ; preds = %for.cond
  %6 = load %struct.costs*, %struct.costs** @temp_costs, align 8, !dbg !2300
  %cmp18 = icmp eq %struct.costs* %6, null, !dbg !2302
  br i1 %cmp18, label %if.end20, label %if.then19, !dbg !2303

if.then19:                                        ; preds = %for.end
  %7 = bitcast %struct.costs* %6 to i8*, !dbg !2303
  tail call void @free(i8* nonnull %7) #6, !dbg !2304
  br label %if.end20, !dbg !2304

if.end20:                                         ; preds = %for.end, %if.then19
  store %struct.costs* null, %struct.costs** @temp_costs, align 8, !dbg !2305
  %8 = load i32*, i32** @cost_classes, align 8, !dbg !2306
  %cmp21 = icmp eq i32* %8, null, !dbg !2308
  br i1 %cmp21, label %if.end23, label %if.then22, !dbg !2309

if.then22:                                        ; preds = %if.end20
  %9 = bitcast i32* %8 to i8*, !dbg !2309
  tail call void @free(i8* nonnull %9) #6, !dbg !2310
  br label %if.end23, !dbg !2310

if.end23:                                         ; preds = %if.end20, %if.then22
  store i32* null, i32** @cost_classes, align 8, !dbg !2311
  ret void, !dbg !2312
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ira_finish_costs_once() local_unnamed_addr #5 !dbg !2313 {
entry:
  tail call fastcc void @free_ira_costs() #7, !dbg !2314
  ret void, !dbg !2315
}

; Function Attrs: nounwind uwtable
define dso_local void @ira_costs() local_unnamed_addr #5 !dbg !2316 {
entry:
  store i1 true, i1* @allocno_p, align 1, !dbg !2317
  %0 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2318
  store i32 %0, i32* @cost_elements_num, align 4, !dbg !2319
  tail call fastcc void @init_costs() #7, !dbg !2320
  %1 = load i32, i32* @max_struct_costs_size, align 4, !dbg !2321
  %2 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2322
  %mul = mul nsw i32 %1, %2, !dbg !2323
  %conv = sext i32 %mul to i64, !dbg !2321
  %call = tail call i8* @ira_allocate(i64 %conv) #6, !dbg !2324
  store i8* %call, i8** bitcast (%struct.costs** @total_allocno_costs to i8**), align 8, !dbg !2325
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ira_dump_file, align 8, !dbg !2326
  tail call fastcc void @find_costs_and_classes(%struct._IO_FILE* %3) #7, !dbg !2327
  tail call fastcc void @setup_allocno_cover_class_and_costs() #7, !dbg !2328
  tail call fastcc void @finish_costs() #7, !dbg !2329
  %4 = load i8*, i8** bitcast (%struct.costs** @total_allocno_costs to i8**), align 8, !dbg !2330
  tail call void @ira_free(i8* %4) #6, !dbg !2331
  ret void, !dbg !2332
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_costs() unnamed_addr #5 !dbg !2333 {
entry:
  tail call void @init_subregs_of_mode() #6, !dbg !2334
  %0 = load i32, i32* @max_struct_costs_size, align 4, !dbg !2335
  %1 = load i32, i32* @cost_elements_num, align 4, !dbg !2336
  %mul = mul nsw i32 %0, %1, !dbg !2337
  %conv = sext i32 %mul to i64, !dbg !2335
  %call = tail call i8* @ira_allocate(i64 %conv) #6, !dbg !2338
  store i8* %call, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !2339
  %2 = load i32, i32* @cost_elements_num, align 4, !dbg !2340
  %conv1 = sext i32 %2 to i64, !dbg !2340
  %mul2 = shl nsw i64 %conv1, 2, !dbg !2341
  %call3 = tail call i8* @ira_allocate(i64 %mul2) #6, !dbg !2342
  store i8* %call3, i8** bitcast (i32** @pref_buffer to i8**), align 8, !dbg !2343
  %call4 = tail call i32 @max_reg_num() #6, !dbg !2344
  %conv5 = sext i32 %call4 to i64, !dbg !2344
  %mul6 = shl nsw i64 %conv5, 2, !dbg !2345
  %call7 = tail call i8* @ira_allocate(i64 %mul6) #6, !dbg !2346
  store i8* %call7, i8** bitcast (i32** @regno_cover_class to i8**), align 8, !dbg !2347
  ret void, !dbg !2348
}

declare dso_local i8* @ira_allocate(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @find_costs_and_classes(%struct._IO_FILE* %dump_file) unnamed_addr #5 !dbg !2349 {
entry:
  %a = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %dump_file, metadata !2353, metadata !DIExpression()), !dbg !2492
  tail call void @init_recog() #6, !dbg !2493
  store i32* null, i32** @pref, align 8, !dbg !2494
  call void @llvm.dbg.value(metadata i32 0, metadata !2356, metadata !DIExpression()), !dbg !2492
  %call = tail call zeroext i8 @resize_reg_info() #6, !dbg !2495
  %tobool = icmp eq i8 %call, 0, !dbg !2495
  br i1 %tobool, label %land.lhs.true, label %if.end10, !dbg !2496

land.lhs.true:                                    ; preds = %entry
  %.b14 = load i1, i1* @allocno_p, align 1, !dbg !2497
  br i1 %.b14, label %land.lhs.true2, label %if.end10, !dbg !2498

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b15 = load i1, i1* @pseudo_classes_defined_p, align 1, !dbg !2499
  br i1 %.b15, label %if.then, label %if.end10, !dbg !2500

if.then:                                          ; preds = %land.lhs.true2
  %0 = bitcast %struct.ira_allocno** %a to i8*, !dbg !2501
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2501
  %1 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !2502
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2502
  %2 = load i64, i64* bitcast (i32** @pref_buffer to i64*), align 8, !dbg !2503
  store i64 %2, i64* bitcast (i32** @pref to i64*), align 8, !dbg !2504
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2505
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2506
  br label %for.cond, !dbg !2506

for.cond:                                         ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2359, metadata !DIExpression(DW_OP_deref)), !dbg !2505
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2505
  %call5 = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !2508
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2506
  br i1 %tobool6, label %for.end, label %for.body, !dbg !2506

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2510
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %3, metadata !2359, metadata !DIExpression()), !dbg !2505
  %regno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %3, i64 0, i32 1, !dbg !2510
  %4 = load i32, i32* %regno, align 4, !dbg !2510
  %call7 = call i32 @reg_preferred_class(i32 %4) #6, !dbg !2511
  %5 = load i32*, i32** @pref, align 8, !dbg !2512
  %6 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %6, metadata !2359, metadata !DIExpression()), !dbg !2505
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %6, i64 0, i32 0, !dbg !2513
  %7 = load i32, i32* %num, align 8, !dbg !2513
  %idxprom = sext i32 %7 to i64, !dbg !2512
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !2512
  store i32 %call7, i32* %arrayidx, align 4, !dbg !2514
  br label %for.cond, !dbg !2508, !llvm.loop !2515

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* @flag_expensive_optimizations, align 4, !dbg !2517
  %tobool8 = icmp ne i32 %8, 0, !dbg !2517
  %spec.select = zext i1 %tobool8 to i32, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2356, metadata !DIExpression()), !dbg !2492
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2520
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2520
  br label %if.end10, !dbg !2521

if.end10:                                         ; preds = %land.lhs.true2, %land.lhs.true, %entry, %for.end
  %start.1 = phi i32 [ 0, %entry ], [ %spec.select, %for.end ], [ 0, %land.lhs.true2 ], [ 0, %land.lhs.true ], !dbg !2492
  call void @llvm.dbg.value(metadata i32 %start.1, metadata !2356, metadata !DIExpression()), !dbg !2492
  %.b13 = load i1, i1* @allocno_p, align 1, !dbg !2522
  br i1 %.b13, label %if.then12, label %if.end13, !dbg !2524

if.then12:                                        ; preds = %if.end10
  store i1 false, i1* @pseudo_classes_defined_p, align 1, !dbg !2525
  br label %if.end13, !dbg !2526

if.end13:                                         ; preds = %if.end10, %if.then12
  call void @llvm.dbg.value(metadata i32 %start.1, metadata !2357, metadata !DIExpression()), !dbg !2492
  %tobool21 = icmp ne %struct._IO_FILE* %dump_file, null, !dbg !2527
  br label %for.cond14, !dbg !2529

for.cond14:                                       ; preds = %for.inc496, %if.end13
  %pass.0 = phi i32 [ %start.1, %if.end13 ], [ %inc497, %for.inc496 ], !dbg !2530
  call void @llvm.dbg.value(metadata i32 %pass.0, metadata !2357, metadata !DIExpression()), !dbg !2492
  %9 = load i32, i32* @flag_expensive_optimizations, align 4, !dbg !2531
  %cmp = icmp sgt i32 %pass.0, %9, !dbg !2532
  br i1 %cmp, label %for.end498, label %for.body16, !dbg !2533

for.body16:                                       ; preds = %for.cond14
  %.b12 = load i1, i1* @allocno_p, align 1, !dbg !2534
  %tobool17 = xor i1 %.b12, true, !dbg !2534
  %10 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2535
  %cmp18 = icmp sgt i32 %10, 0, !dbg !2536
  %or.cond = or i1 %cmp18, %tobool17, !dbg !2537
  %or.cond1 = and i1 %or.cond, %tobool21, !dbg !2537
  br i1 %or.cond1, label %if.then22, label %if.end24, !dbg !2537

if.then22:                                        ; preds = %for.body16
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %dump_file, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %pass.0) #6, !dbg !2538
  br label %if.end24, !dbg !2538

if.end24:                                         ; preds = %for.body16, %if.then22
  call void @llvm.dbg.value(metadata i32 0, metadata !2354, metadata !DIExpression()), !dbg !2492
  br label %for.cond25, !dbg !2539

for.cond25:                                       ; preds = %for.body28, %if.end24
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body28 ], [ 0, %if.end24 ], !dbg !2541
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2354, metadata !DIExpression()), !dbg !2492
  %exitcond = icmp eq i64 %indvars.iv, 27, !dbg !2542
  br i1 %exitcond, label %for.end31, label %for.body28, !dbg !2544

for.body28:                                       ; preds = %for.cond25
  %arrayidx30 = getelementptr inbounds [27 x i32], [27 x i32]* @cost_class_nums, i64 0, i64 %indvars.iv, !dbg !2545
  store i32 -1, i32* %arrayidx30, align 4, !dbg !2546
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2547
  call void @llvm.dbg.value(metadata i32 undef, metadata !2354, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2492
  br label %for.cond25, !dbg !2548, !llvm.loop !2549

for.end31:                                        ; preds = %for.cond25
  br label %for.cond32, !dbg !2551

for.cond32:                                       ; preds = %for.body35, %for.end31
  %11 = phi i32 [ 0, %for.end31 ], [ %inc45, %for.body35 ], !dbg !2553
  store i32 %11, i32* @cost_classes_num, align 4, !dbg !2553
  %12 = load i32, i32* @ira_important_classes_num, align 4, !dbg !2554
  %cmp33 = icmp slt i32 %11, %12, !dbg !2556
  br i1 %cmp33, label %for.body35, label %for.end46, !dbg !2557

for.body35:                                       ; preds = %for.cond32
  %idxprom36 = sext i32 %11 to i64, !dbg !2558
  %arrayidx37 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_important_classes, i64 0, i64 %idxprom36, !dbg !2558
  %13 = load i32, i32* %arrayidx37, align 4, !dbg !2558
  %14 = load i32*, i32** @cost_classes, align 8, !dbg !2560
  %arrayidx39 = getelementptr inbounds i32, i32* %14, i64 %idxprom36, !dbg !2560
  store i32 %13, i32* %arrayidx39, align 4, !dbg !2561
  %15 = load i32, i32* @cost_classes_num, align 4, !dbg !2562
  %16 = load i32*, i32** @cost_classes, align 8, !dbg !2563
  %idxprom40 = sext i32 %15 to i64, !dbg !2563
  %arrayidx41 = getelementptr inbounds i32, i32* %16, i64 %idxprom40, !dbg !2563
  %17 = load i32, i32* %arrayidx41, align 4, !dbg !2563
  %idxprom42 = zext i32 %17 to i64, !dbg !2564
  %arrayidx43 = getelementptr inbounds [27 x i32], [27 x i32]* @cost_class_nums, i64 0, i64 %idxprom42, !dbg !2564
  store i32 %15, i32* %arrayidx43, align 4, !dbg !2565
  %inc45 = add nsw i32 %15, 1, !dbg !2566
  br label %for.cond32, !dbg !2567, !llvm.loop !2568

for.end46:                                        ; preds = %for.cond32
  %.lcssa = phi i32 [ %11, %for.cond32 ], !dbg !2553
  %sub = shl i32 %.lcssa, 2, !dbg !2570
  %add = add i32 %sub, 4, !dbg !2571
  store i32 %add, i32* @struct_costs_size, align 4, !dbg !2572
  %18 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !2573
  %19 = load i32, i32* @cost_elements_num, align 4, !dbg !2574
  %mul49 = mul nsw i32 %19, %add, !dbg !2575
  %conv50 = sext i32 %mul49 to i64, !dbg !2574
  %call51 = call i8* @memset(i8* %18, i32 0, i64 %conv50) #6, !dbg !2576
  %.b11 = load i1, i1* @allocno_p, align 1, !dbg !2577
  br i1 %.b11, label %if.then53, label %if.else, !dbg !2578

if.then53:                                        ; preds = %for.end46
  %20 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_loop_tree_root, align 8, !dbg !2579
  call void @ira_traverse_loop_tree(i8 zeroext 1, %struct.ira_loop_tree_node* %20, void (%struct.ira_loop_tree_node*)* nonnull @process_bb_node_for_costs, void (%struct.ira_loop_tree_node*)* null) #6, !dbg !2581
  %21 = load i8*, i8** bitcast (%struct.costs** @total_allocno_costs to i8**), align 8, !dbg !2582
  %22 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !2583
  %23 = load i32, i32* @max_struct_costs_size, align 4, !dbg !2584
  %24 = load i32, i32* @ira_allocnos_num, align 4, !dbg !2585
  %mul54 = mul nsw i32 %23, %24, !dbg !2586
  %conv55 = sext i32 %mul54 to i64, !dbg !2584
  %call56 = call i8* @memcpy(i8* %21, i8* %22, i64 %conv55) #6, !dbg !2587
  br label %if.end67, !dbg !2588

if.else:                                          ; preds = %for.end46
  %25 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2589
  %cfg = getelementptr inbounds %struct.function, %struct.function* %25, i64 0, i32 1, !dbg !2589
  %26 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2589
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %26, i64 0, i32 0, !dbg !2589
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2589
  br label %for.cond58, !dbg !2589

for.cond58:                                       ; preds = %for.body63, %if.else
  %28 = phi %struct.control_flow_graph* [ %26, %if.else ], [ %.pre18, %for.body63 ], !dbg !2591
  %.pn = phi %struct.basic_block_def* [ %27, %if.else ], [ %bb57.0, %for.body63 ]
  %bb57.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2593
  %bb57.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb57.0.in, align 8, !dbg !2593
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb57.0, metadata !2473, metadata !DIExpression()), !dbg !2594
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %28, i64 0, i32 1, !dbg !2591
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2591
  %cmp61 = icmp eq %struct.basic_block_def* %bb57.0, %29, !dbg !2591
  br i1 %cmp61, label %if.end67.loopexit, label %for.body63, !dbg !2589

for.body63:                                       ; preds = %for.cond58
  call fastcc void @process_bb_for_costs(%struct.basic_block_def* %bb57.0) #7, !dbg !2595
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2591
  %cfg60.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2596
  %.pre18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg60.phi.trans.insert, align 8, !dbg !2591
  br label %for.cond58, !dbg !2591, !llvm.loop !2597

if.end67.loopexit:                                ; preds = %for.cond58
  br label %if.end67, !dbg !2599

if.end67:                                         ; preds = %if.end67.loopexit, %if.then53
  %cmp68 = icmp eq i32 %pass.0, 0, !dbg !2599
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !2601

if.then70:                                        ; preds = %if.end67
  %30 = load i64, i64* bitcast (i32** @pref_buffer to i64*), align 8, !dbg !2602
  store i64 %30, i64* bitcast (i32** @pref to i64*), align 8, !dbg !2603
  br label %if.end71, !dbg !2604

if.end71:                                         ; preds = %if.then70, %if.end67
  %call72 = call i32 @max_reg_num() #6, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %call72, metadata !2354, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2492
  %31 = sext i32 %call72 to i64, !dbg !2606
  br label %for.cond74, !dbg !2606

for.cond74:                                       ; preds = %cleanup, %if.end71
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %cleanup ], [ %31, %if.end71 ]
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, -1, !dbg !2607
  call void @llvm.dbg.value(metadata i32 undef, metadata !2354, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2492
  %cmp75 = icmp sgt i64 %indvars.iv.next30, 52, !dbg !2608
  br i1 %cmp75, label %for.body77, label %for.end484, !dbg !2609

for.body77:                                       ; preds = %for.cond74
  %.b10 = load i1, i1* @allocno_p, align 1, !dbg !2610
  br i1 %.b10, label %if.else91, label %if.then80, !dbg !2612

if.then80:                                        ; preds = %for.body77
  %32 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !2613
  %arrayidx82 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %32, i64 %indvars.iv.next30, !dbg !2613
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx82, align 8, !dbg !2613
  %cmp83 = icmp eq %struct.rtx_def* %33, null, !dbg !2616
  br i1 %cmp83, label %cleanup, label %if.end86, !dbg !2617

if.end86:                                         ; preds = %if.then80
  %34 = load i8*, i8** bitcast (%struct.costs** @temp_costs to i8**), align 8, !dbg !2618
  %35 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !2619
  %36 = load i32, i32* @struct_costs_size, align 4, !dbg !2619
  %37 = sext i32 %36 to i64, !dbg !2619
  %38 = mul nsw i64 %indvars.iv.next30, %37, !dbg !2619
  %add.ptr88 = getelementptr inbounds i8, i8* %35, i64 %38, !dbg !2619
  %conv89 = sext i32 %36 to i64, !dbg !2620
  %call90 = call i8* @memcpy(i8* %34, i8* %add.ptr88, i64 %conv89) #6, !dbg !2621
  br label %if.end181, !dbg !2622

if.else91:                                        ; preds = %for.body77
  %39 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_regno_allocno_map, align 8, !dbg !2623
  %arrayidx93 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %39, i64 %indvars.iv.next30, !dbg !2623
  %40 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx93, align 8, !dbg !2623
  %cmp94 = icmp eq %struct.ira_allocno* %40, null, !dbg !2626
  br i1 %cmp94, label %cleanup, label %if.end97, !dbg !2627

if.end97:                                         ; preds = %if.else91
  %41 = load i8*, i8** bitcast (%struct.costs** @temp_costs to i8**), align 8, !dbg !2628
  %42 = load i32, i32* @struct_costs_size, align 4, !dbg !2629
  %conv98 = sext i32 %42 to i64, !dbg !2629
  %call99 = call i8* @memset(i8* %41, i32 0, i64 %conv98) #6, !dbg !2630
  %43 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_regno_allocno_map, align 8, !dbg !2631
  %arrayidx101 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %43, i64 %indvars.iv.next30, !dbg !2631
  br label %for.cond102, !dbg !2633

for.cond102:                                      ; preds = %for.end172, %if.end97
  %a78.0.in = phi %struct.ira_allocno** [ %arrayidx101, %if.end97 ], [ %next_regno_allocno, %for.end172 ]
  %a78.0 = load %struct.ira_allocno*, %struct.ira_allocno** %a78.0.in, align 8, !dbg !2634
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a78.0, metadata !2479, metadata !DIExpression()), !dbg !2635
  %cmp103 = icmp eq %struct.ira_allocno* %a78.0, null, !dbg !2636
  br i1 %cmp103, label %if.end181.loopexit, label %for.body105, !dbg !2638

for.body105:                                      ; preds = %for.cond102
  %num106 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a78.0, i64 0, i32 0, !dbg !2639
  %44 = load i32, i32* %num106, align 8, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %44, metadata !2485, metadata !DIExpression()), !dbg !2635
  %45 = load i32, i32* @flag_ira_region, align 4, !dbg !2641
  %46 = add i32 %45, -1, !dbg !2643
  %47 = icmp ult i32 %46, 2, !dbg !2643
  br i1 %47, label %land.lhs.true112, label %if.end155, !dbg !2643

land.lhs.true112:                                 ; preds = %for.body105
  %loop_tree_node = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a78.0, i64 0, i32 6, !dbg !2644
  %48 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node, align 8, !dbg !2644
  %parent113 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %48, i64 0, i32 6, !dbg !2645
  %49 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %parent113, align 8, !dbg !2645
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %49, metadata !2487, metadata !DIExpression()), !dbg !2635
  %cmp114 = icmp eq %struct.ira_loop_tree_node* %49, null, !dbg !2646
  br i1 %cmp114, label %if.end155, label %land.lhs.true116, !dbg !2647

land.lhs.true116:                                 ; preds = %land.lhs.true112
  %regno_allocno_map = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %49, i64 0, i32 9, !dbg !2648
  %50 = load %struct.ira_allocno**, %struct.ira_allocno*** %regno_allocno_map, align 8, !dbg !2648
  %arrayidx118 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %50, i64 %indvars.iv.next30, !dbg !2649
  %51 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx118, align 8, !dbg !2649
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %51, metadata !2483, metadata !DIExpression()), !dbg !2635
  %cmp119 = icmp eq %struct.ira_allocno* %51, null, !dbg !2650
  br i1 %cmp119, label %if.end155, label %land.lhs.true121, !dbg !2651

land.lhs.true121:                                 ; preds = %land.lhs.true116
  %border_allocnos = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %48, i64 0, i32 13, !dbg !2652
  %52 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %border_allocnos, align 8, !dbg !2652
  %call124 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %52, i32 %44) #6, !dbg !2653
  %tobool125 = icmp eq i32 %call124, 0, !dbg !2653
  br i1 %tobool125, label %if.end155, label %if.then126, !dbg !2654

if.then126:                                       ; preds = %land.lhs.true121
  %num127 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %51, i64 0, i32 0, !dbg !2655
  %53 = load i32, i32* %num127, align 8, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %53, metadata !2486, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 0, metadata !2355, metadata !DIExpression()), !dbg !2492
  br label %for.cond128, !dbg !2657

for.cond128:                                      ; preds = %for.body131, %if.then126
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body131 ], [ 0, %if.then126 ], !dbg !2659
  call void @llvm.dbg.value(metadata i64 %indvars.iv21, metadata !2355, metadata !DIExpression()), !dbg !2492
  %54 = load i32, i32* @cost_classes_num, align 4, !dbg !2660
  %55 = sext i32 %54 to i64, !dbg !2662
  %cmp129 = icmp slt i64 %indvars.iv21, %55, !dbg !2662
  %56 = load i8*, i8** bitcast (%struct.costs** @total_allocno_costs to i8**), align 8, !dbg !2663
  %57 = load i32, i32* @struct_costs_size, align 4, !dbg !2663
  %mul132 = mul nsw i32 %44, %57, !dbg !2663
  %idx.ext133 = sext i32 %mul132 to i64, !dbg !2663
  %add.ptr134 = getelementptr inbounds i8, i8* %56, i64 %idx.ext133, !dbg !2663
  br i1 %cmp129, label %for.body131, label %for.end146, !dbg !2664

for.body131:                                      ; preds = %for.cond128
  %cost = getelementptr inbounds i8, i8* %add.ptr134, i64 4, !dbg !2665
  %58 = bitcast i8* %cost to [1 x i32]*, !dbg !2665
  %arrayidx136 = getelementptr inbounds [1 x i32], [1 x i32]* %58, i64 0, i64 %indvars.iv21, !dbg !2666
  %59 = load i32, i32* %arrayidx136, align 4, !dbg !2666
  %mul137 = mul nsw i32 %53, %57, !dbg !2667
  %idx.ext138 = sext i32 %mul137 to i64, !dbg !2667
  %add.ptr139 = getelementptr inbounds i8, i8* %56, i64 4, !dbg !2667
  %cost140 = getelementptr inbounds i8, i8* %add.ptr139, i64 %idx.ext138, !dbg !2668
  %60 = bitcast i8* %cost140 to [1 x i32]*, !dbg !2668
  %arrayidx142 = getelementptr inbounds [1 x i32], [1 x i32]* %60, i64 0, i64 %indvars.iv21, !dbg !2667
  %61 = load i32, i32* %arrayidx142, align 4, !dbg !2669
  %add143 = add nsw i32 %61, %59, !dbg !2669
  store i32 %add143, i32* %arrayidx142, align 4, !dbg !2669
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !2670
  call void @llvm.dbg.value(metadata i32 undef, metadata !2355, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2492
  br label %for.cond128, !dbg !2671, !llvm.loop !2672

for.end146:                                       ; preds = %for.cond128
  %.lcssa33 = phi i8* [ %56, %for.cond128 ], !dbg !2663
  %.lcssa32 = phi i32 [ %57, %for.cond128 ], !dbg !2663
  %add.ptr134.lcssa = phi i8* [ %add.ptr134, %for.cond128 ], !dbg !2663
  %mem_cost = bitcast i8* %add.ptr134.lcssa to i32*, !dbg !2674
  %62 = load i32, i32* %mem_cost, align 4, !dbg !2674
  %mul150 = mul nsw i32 %53, %.lcssa32, !dbg !2675
  %idx.ext151 = sext i32 %mul150 to i64, !dbg !2675
  %add.ptr152 = getelementptr inbounds i8, i8* %.lcssa33, i64 %idx.ext151, !dbg !2675
  %mem_cost153 = bitcast i8* %add.ptr152 to i32*, !dbg !2676
  %63 = load i32, i32* %mem_cost153, align 4, !dbg !2677
  %add154 = add nsw i32 %63, %62, !dbg !2677
  store i32 %add154, i32* %mem_cost153, align 4, !dbg !2677
  br label %if.end155, !dbg !2678

if.end155:                                        ; preds = %land.lhs.true121, %land.lhs.true116, %land.lhs.true112, %for.body105, %for.end146
  call void @llvm.dbg.value(metadata i32 0, metadata !2355, metadata !DIExpression()), !dbg !2492
  br label %for.cond156, !dbg !2679

for.cond156:                                      ; preds = %for.body159, %if.end155
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body159 ], [ 0, %if.end155 ], !dbg !2681
  call void @llvm.dbg.value(metadata i64 %indvars.iv23, metadata !2355, metadata !DIExpression()), !dbg !2492
  %64 = load i32, i32* @cost_classes_num, align 4, !dbg !2682
  %65 = sext i32 %64 to i64, !dbg !2684
  %cmp157 = icmp slt i64 %indvars.iv23, %65, !dbg !2684
  %66 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !2685
  %67 = load i32, i32* @struct_costs_size, align 4, !dbg !2685
  %mul160 = mul nsw i32 %44, %67, !dbg !2685
  %idx.ext161 = sext i32 %mul160 to i64, !dbg !2685
  %add.ptr162 = getelementptr inbounds i8, i8* %66, i64 %idx.ext161, !dbg !2685
  br i1 %cmp157, label %for.body159, label %for.end172, !dbg !2686

for.body159:                                      ; preds = %for.cond156
  %cost163 = getelementptr inbounds i8, i8* %add.ptr162, i64 4, !dbg !2687
  %68 = bitcast i8* %cost163 to [1 x i32]*, !dbg !2687
  %arrayidx165 = getelementptr inbounds [1 x i32], [1 x i32]* %68, i64 0, i64 %indvars.iv23, !dbg !2688
  %69 = load i32, i32* %arrayidx165, align 4, !dbg !2688
  %70 = load %struct.costs*, %struct.costs** @temp_costs, align 8, !dbg !2689
  %arrayidx168 = getelementptr inbounds %struct.costs, %struct.costs* %70, i64 0, i32 1, i64 %indvars.iv23, !dbg !2689
  %71 = load i32, i32* %arrayidx168, align 4, !dbg !2690
  %add169 = add nsw i32 %71, %69, !dbg !2690
  store i32 %add169, i32* %arrayidx168, align 4, !dbg !2690
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !dbg !2691
  call void @llvm.dbg.value(metadata i32 undef, metadata !2355, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2492
  br label %for.cond156, !dbg !2692, !llvm.loop !2693

for.end172:                                       ; preds = %for.cond156
  %add.ptr162.lcssa = phi i8* [ %add.ptr162, %for.cond156 ], !dbg !2685
  %mem_cost176 = bitcast i8* %add.ptr162.lcssa to i32*, !dbg !2695
  %72 = load i32, i32* %mem_cost176, align 4, !dbg !2695
  %73 = load %struct.costs*, %struct.costs** @temp_costs, align 8, !dbg !2696
  %mem_cost177 = getelementptr inbounds %struct.costs, %struct.costs* %73, i64 0, i32 0, !dbg !2697
  %74 = load i32, i32* %mem_cost177, align 4, !dbg !2698
  %add178 = add nsw i32 %74, %72, !dbg !2698
  store i32 %add178, i32* %mem_cost177, align 4, !dbg !2698
  %next_regno_allocno = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a78.0, i64 0, i32 5, !dbg !2699
  br label %for.cond102, !dbg !2700, !llvm.loop !2701

if.end181.loopexit:                               ; preds = %for.cond102
  br label %if.end181, !dbg !2703

if.end181:                                        ; preds = %if.end181.loopexit, %if.end86
  call void @llvm.dbg.value(metadata i32 1073741823, metadata !2488, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 26, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 0, metadata !2491, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 0, metadata !2355, metadata !DIExpression()), !dbg !2492
  br label %for.cond182, !dbg !2703

for.cond182:                                      ; preds = %for.inc254, %if.end181
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc254 ], [ 0, %if.end181 ], !dbg !2705
  %best_cost.0 = phi i32 [ %best_cost.2, %for.inc254 ], [ 1073741823, %if.end181 ], !dbg !2705
  %best.0 = phi i32 [ %best.3, %for.inc254 ], [ 26, %if.end181 ], !dbg !2706
  %alt_class.0 = phi i32 [ %alt_class.2, %for.inc254 ], [ 0, %if.end181 ], !dbg !2707
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !2355, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i32 %alt_class.0, metadata !2491, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best.0, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best_cost.0, metadata !2488, metadata !DIExpression()), !dbg !2635
  %75 = load i32, i32* @cost_classes_num, align 4, !dbg !2708
  %76 = sext i32 %75 to i64, !dbg !2710
  %cmp183 = icmp slt i64 %indvars.iv25, %76, !dbg !2710
  br i1 %cmp183, label %for.body185, label %for.end256, !dbg !2711

for.body185:                                      ; preds = %for.cond182
  %77 = load i32*, i32** @cost_classes, align 8, !dbg !2712
  %arrayidx187 = getelementptr inbounds i32, i32* %77, i64 %indvars.iv25, !dbg !2712
  %78 = load i32, i32* %arrayidx187, align 4, !dbg !2712
  call void @llvm.dbg.value(metadata i32 %78, metadata !2484, metadata !DIExpression()), !dbg !2635
  %idxprom188 = sext i32 %78 to i64, !dbg !2714
  %79 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !2716
  %arrayidx191 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %79, i64 %indvars.iv.next30, !dbg !2716
  %80 = bitcast %struct.rtx_def** %arrayidx191 to i32**, !dbg !2716
  %81 = load i32*, i32** %80, align 8, !dbg !2716
  %bf.load = load i32, i32* %81, align 8, !dbg !2716
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2716
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2716
  %idxprom192 = zext i32 %bf.clear to i64, !dbg !2714
  %arrayidx193 = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %idxprom188, i64 %idxprom192, !dbg !2714
  %82 = load i8, i8* %arrayidx193, align 1, !dbg !2714
  %tobool194 = icmp eq i8 %82, 0, !dbg !2714
  br i1 %tobool194, label %for.inc254, label %lor.lhs.false195, !dbg !2717

lor.lhs.false195:                                 ; preds = %for.body185
  %83 = trunc i64 %indvars.iv.next30 to i32, !dbg !2718
  %call201 = call zeroext i8 @invalid_mode_change_p(i32 %83, i32 %78, i32 %bf.clear) #6, !dbg !2718
  %tobool203 = icmp eq i8 %call201, 0, !dbg !2718
  br i1 %tobool203, label %if.end205, label %for.inc254, !dbg !2719

if.end205:                                        ; preds = %lor.lhs.false195
  %84 = load %struct.costs*, %struct.costs** @temp_costs, align 8, !dbg !2720
  %arrayidx208 = getelementptr inbounds %struct.costs, %struct.costs* %84, i64 0, i32 1, i64 %indvars.iv25, !dbg !2720
  %85 = load i32, i32* %arrayidx208, align 4, !dbg !2720
  %cmp209 = icmp slt i32 %85, %best_cost.0, !dbg !2722
  br i1 %cmp209, label %if.end227, label %if.else215, !dbg !2723

if.else215:                                       ; preds = %if.end205
  %cmp219 = icmp eq i32 %85, %best_cost.0, !dbg !2724
  br i1 %cmp219, label %if.then221, label %if.end227, !dbg !2726

if.then221:                                       ; preds = %if.else215
  %idxprom222 = zext i32 %best.0 to i64, !dbg !2727
  %arrayidx225 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_union, i64 0, i64 %idxprom222, i64 %idxprom188, !dbg !2727
  %86 = load i32, i32* %arrayidx225, align 4, !dbg !2727
  call void @llvm.dbg.value(metadata i32 %86, metadata !2490, metadata !DIExpression()), !dbg !2635
  br label %if.end227, !dbg !2728

if.end227:                                        ; preds = %if.else215, %if.then221, %if.end205
  %best_cost.1 = phi i32 [ %85, %if.end205 ], [ %best_cost.0, %if.then221 ], [ %best_cost.0, %if.else215 ], !dbg !2635
  %best.2 = phi i32 [ %78, %if.end205 ], [ %86, %if.then221 ], [ %best.0, %if.else215 ], !dbg !2729
  call void @llvm.dbg.value(metadata i32 %best.2, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best_cost.1, metadata !2488, metadata !DIExpression()), !dbg !2635
  %87 = load i32, i32* @flag_expensive_optimizations, align 4, !dbg !2730
  %cmp228 = icmp eq i32 %pass.0, %87, !dbg !2732
  br i1 %cmp228, label %land.lhs.true230, label %for.inc254, !dbg !2733

land.lhs.true230:                                 ; preds = %if.end227
  %mem_cost234 = getelementptr inbounds %struct.costs, %struct.costs* %84, i64 0, i32 0, !dbg !2734
  %88 = load i32, i32* %mem_cost234, align 4, !dbg !2734
  %cmp235 = icmp slt i32 %85, %88, !dbg !2735
  br i1 %cmp235, label %land.lhs.true237, label %for.inc254, !dbg !2736

land.lhs.true237:                                 ; preds = %land.lhs.true230
  %idxprom238 = zext i32 %alt_class.0 to i64, !dbg !2737
  %arrayidx241 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @reg_class_subunion, i64 0, i64 %idxprom238, i64 %idxprom188, !dbg !2737
  %89 = load i32, i32* %arrayidx241, align 4, !dbg !2737
  %idxprom242 = zext i32 %89 to i64, !dbg !2738
  %arrayidx243 = getelementptr inbounds [27 x i32], [27 x i32]* @reg_class_size, i64 0, i64 %idxprom242, !dbg !2738
  %90 = load i32, i32* %arrayidx243, align 4, !dbg !2738
  %arrayidx245 = getelementptr inbounds [27 x i32], [27 x i32]* @reg_class_size, i64 0, i64 %idxprom238, !dbg !2739
  %91 = load i32, i32* %arrayidx245, align 4, !dbg !2739
  %cmp246 = icmp ugt i32 %90, %91, !dbg !2740
  br i1 %cmp246, label %if.then248, label %for.inc254, !dbg !2741

if.then248:                                       ; preds = %land.lhs.true237
  call void @llvm.dbg.value(metadata i32 %89, metadata !2491, metadata !DIExpression()), !dbg !2635
  br label %for.inc254, !dbg !2742

for.inc254:                                       ; preds = %lor.lhs.false195, %for.body185, %if.end227, %land.lhs.true230, %land.lhs.true237, %if.then248
  %best_cost.2 = phi i32 [ %best_cost.0, %lor.lhs.false195 ], [ %best_cost.0, %for.body185 ], [ %best_cost.1, %if.then248 ], [ %best_cost.1, %land.lhs.true237 ], [ %best_cost.1, %land.lhs.true230 ], [ %best_cost.1, %if.end227 ], !dbg !2635
  %best.3 = phi i32 [ %best.0, %lor.lhs.false195 ], [ %best.0, %for.body185 ], [ %best.2, %if.then248 ], [ %best.2, %land.lhs.true237 ], [ %best.2, %land.lhs.true230 ], [ %best.2, %if.end227 ], !dbg !2635
  %alt_class.2 = phi i32 [ %alt_class.0, %lor.lhs.false195 ], [ %alt_class.0, %for.body185 ], [ %89, %if.then248 ], [ %alt_class.0, %land.lhs.true237 ], [ %alt_class.0, %land.lhs.true230 ], [ %alt_class.0, %if.end227 ], !dbg !2635
  call void @llvm.dbg.value(metadata i32 %alt_class.2, metadata !2491, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best.3, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best_cost.2, metadata !2488, metadata !DIExpression()), !dbg !2635
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !2743
  call void @llvm.dbg.value(metadata i32 undef, metadata !2355, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2492
  br label %for.cond182, !dbg !2744, !llvm.loop !2745

for.end256:                                       ; preds = %for.cond182
  %best_cost.0.lcssa = phi i32 [ %best_cost.0, %for.cond182 ], !dbg !2705
  %best.0.lcssa = phi i32 [ %best.0, %for.cond182 ], !dbg !2706
  %alt_class.0.lcssa = phi i32 [ %alt_class.0, %for.cond182 ], !dbg !2707
  call void @llvm.dbg.value(metadata i32 %best_cost.0.lcssa, metadata !2488, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best.0.lcssa, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %alt_class.0.lcssa, metadata !2491, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best_cost.0.lcssa, metadata !2488, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best.0.lcssa, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %alt_class.0.lcssa, metadata !2491, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best_cost.0.lcssa, metadata !2488, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best.0.lcssa, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %alt_class.0.lcssa, metadata !2491, metadata !DIExpression()), !dbg !2635
  %idxprom257 = zext i32 %alt_class.0.lcssa to i64, !dbg !2747
  %arrayidx258 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_class_translate, i64 0, i64 %idxprom257, !dbg !2747
  %92 = load i32, i32* %arrayidx258, align 4, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %92, metadata !2491, metadata !DIExpression()), !dbg !2635
  %93 = load %struct.costs*, %struct.costs** @temp_costs, align 8, !dbg !2748
  %mem_cost259 = getelementptr inbounds %struct.costs, %struct.costs* %93, i64 0, i32 0, !dbg !2750
  %94 = load i32, i32* %mem_cost259, align 4, !dbg !2750
  %cmp260 = icmp sgt i32 %best_cost.0.lcssa, %94, !dbg !2751
  br i1 %cmp260, label %if.then262, label %if.else265, !dbg !2752

if.then262:                                       ; preds = %for.end256
  %95 = load i32*, i32** @regno_cover_class, align 8, !dbg !2753
  %arrayidx264 = getelementptr inbounds i32, i32* %95, i64 %indvars.iv.next30, !dbg !2753
  store i32 0, i32* %arrayidx264, align 4, !dbg !2754
  br label %if.end279, !dbg !2753

if.else265:                                       ; preds = %for.end256
  %96 = load i32, i32* @flag_ira_algorithm, align 4, !dbg !2755
  %cmp266 = icmp eq i32 %96, 1, !dbg !2757
  br i1 %cmp266, label %if.then268, label %if.else273, !dbg !2758

if.then268:                                       ; preds = %if.else265
  %cmp269 = icmp eq i32 %92, 0, !dbg !2759
  %best.0. = select i1 %cmp269, i32 %best.0.lcssa, i32 %92, !dbg !2760
  %97 = load i32*, i32** @regno_cover_class, align 8, !dbg !2761
  %arrayidx272 = getelementptr inbounds i32, i32* %97, i64 %indvars.iv.next30, !dbg !2761
  store i32 %best.0., i32* %arrayidx272, align 4, !dbg !2762
  br label %if.end279, !dbg !2761

if.else273:                                       ; preds = %if.else265
  %idxprom274 = zext i32 %best.0.lcssa to i64, !dbg !2763
  %arrayidx275 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_class_translate, i64 0, i64 %idxprom274, !dbg !2763
  %98 = load i32, i32* %arrayidx275, align 4, !dbg !2763
  %99 = load i32*, i32** @regno_cover_class, align 8, !dbg !2764
  %arrayidx277 = getelementptr inbounds i32, i32* %99, i64 %indvars.iv.next30, !dbg !2764
  store i32 %98, i32* %arrayidx277, align 4, !dbg !2765
  br label %if.end279

if.end279:                                        ; preds = %if.then268, %if.else273, %if.then262
  %100 = load i32, i32* @flag_expensive_optimizations, align 4, !dbg !2766
  %cmp280 = icmp eq i32 %pass.0, %100, !dbg !2768
  br i1 %cmp280, label %if.then282, label %if.end313, !dbg !2769

if.then282:                                       ; preds = %if.end279
  %101 = load %struct.costs*, %struct.costs** @temp_costs, align 8, !dbg !2770
  %mem_cost283 = getelementptr inbounds %struct.costs, %struct.costs* %101, i64 0, i32 0, !dbg !2773
  %102 = load i32, i32* %mem_cost283, align 4, !dbg !2773
  %cmp284 = icmp sgt i32 %best_cost.0.lcssa, %102, !dbg !2774
  %cmp288 = icmp eq i32 %best.0.lcssa, %92, !dbg !2775
  %best.4 = select i1 %cmp284, i32 0, i32 %best.0.lcssa, !dbg !2775
  %103 = or i1 %cmp284, %cmp288, !dbg !2775
  %alt_class.4 = select i1 %103, i32 0, i32 %92, !dbg !2775
  call void @llvm.dbg.value(metadata i32 %alt_class.4, metadata !2491, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best.4, metadata !2490, metadata !DIExpression()), !dbg !2635
  %104 = load i32*, i32** @regno_cover_class, align 8, !dbg !2776
  %arrayidx294 = getelementptr inbounds i32, i32* %104, i64 %indvars.iv.next30, !dbg !2776
  %105 = load i32, i32* %arrayidx294, align 4, !dbg !2776
  %106 = trunc i64 %indvars.iv.next30 to i32, !dbg !2777
  call void @setup_reg_classes(i32 %106, i32 %best.4, i32 %alt_class.4, i32 %105) #6, !dbg !2777
  %.b9 = load i1, i1* @allocno_p, align 1, !dbg !2778
  %tobool295 = xor i1 %.b9, true, !dbg !2778
  %107 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2780
  %cmp297 = icmp sgt i32 %107, 2, !dbg !2781
  %or.cond4 = or i1 %cmp297, %tobool295, !dbg !2782
  %or.cond5 = and i1 %or.cond4, %tobool21, !dbg !2782
  br i1 %or.cond5, label %if.then302, label %if.end313, !dbg !2782

if.then302:                                       ; preds = %if.then282
  %idxprom303 = zext i32 %best.4 to i64, !dbg !2783
  %arrayidx304 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom303, !dbg !2783
  %108 = load i8*, i8** %arrayidx304, align 8, !dbg !2783
  %idxprom305 = zext i32 %alt_class.4 to i64, !dbg !2784
  %arrayidx306 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom305, !dbg !2784
  %109 = load i8*, i8** %arrayidx306, align 8, !dbg !2784
  %110 = load i32*, i32** @regno_cover_class, align 8, !dbg !2785
  %arrayidx308 = getelementptr inbounds i32, i32* %110, i64 %indvars.iv.next30, !dbg !2785
  %111 = load i32, i32* %arrayidx308, align 4, !dbg !2785
  %idxprom309 = zext i32 %111 to i64, !dbg !2786
  %arrayidx310 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom309, !dbg !2786
  %112 = load i8*, i8** %arrayidx310, align 8, !dbg !2786
  %113 = trunc i64 %indvars.iv.next30 to i32, !dbg !2787
  %call311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %dump_file, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %113, i8* %108, i8* %109, i8* %112) #6, !dbg !2787
  br label %if.end313, !dbg !2787

if.end313:                                        ; preds = %if.then302, %if.then282, %if.end279
  %best.5 = phi i32 [ %best.0.lcssa, %if.end279 ], [ %best.4, %if.then282 ], [ %best.4, %if.then302 ], !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best.5, metadata !2490, metadata !DIExpression()), !dbg !2635
  %.b8 = load i1, i1* @allocno_p, align 1, !dbg !2788
  br i1 %.b8, label %if.end325, label %if.then315, !dbg !2790

if.then315:                                       ; preds = %if.end313
  %114 = load %struct.costs*, %struct.costs** @temp_costs, align 8, !dbg !2791
  %mem_cost316 = getelementptr inbounds %struct.costs, %struct.costs* %114, i64 0, i32 0, !dbg !2793
  %115 = load i32, i32* %mem_cost316, align 4, !dbg !2793
  %cmp317 = icmp sgt i32 %best_cost.0.lcssa, %115, !dbg !2794
  %.best.5 = select i1 %cmp317, i32 0, i32 %best.5, !dbg !2795
  %116 = load i32*, i32** @pref, align 8, !dbg !2796
  %arrayidx324 = getelementptr inbounds i32, i32* %116, i64 %indvars.iv.next30, !dbg !2796
  store i32 %.best.5, i32* %arrayidx324, align 4, !dbg !2797
  br label %cleanup, !dbg !2798

if.end325:                                        ; preds = %if.end313
  %117 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_regno_allocno_map, align 8, !dbg !2799
  %arrayidx327 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %117, i64 %indvars.iv.next30, !dbg !2799
  br label %for.cond328, !dbg !2801

for.cond328:                                      ; preds = %if.end468, %if.end325
  %a78.1.in = phi %struct.ira_allocno** [ %arrayidx327, %if.end325 ], [ %next_regno_allocno472, %if.end468 ]
  %a78.1 = load %struct.ira_allocno*, %struct.ira_allocno** %a78.1.in, align 8, !dbg !2802
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a78.1, metadata !2479, metadata !DIExpression()), !dbg !2635
  %cmp329 = icmp eq %struct.ira_allocno* %a78.1, null, !dbg !2803
  br i1 %cmp329, label %cleanup.loopexit, label %for.body331, !dbg !2805

for.body331:                                      ; preds = %for.cond328
  %num332 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a78.1, i64 0, i32 0, !dbg !2806
  %118 = load i32, i32* %num332, align 8, !dbg !2806
  call void @llvm.dbg.value(metadata i32 %118, metadata !2485, metadata !DIExpression()), !dbg !2635
  %119 = load i32*, i32** @regno_cover_class, align 8, !dbg !2808
  %arrayidx334 = getelementptr inbounds i32, i32* %119, i64 %indvars.iv.next30, !dbg !2808
  %120 = load i32, i32* %arrayidx334, align 4, !dbg !2808
  %cmp335 = icmp eq i32 %120, 0, !dbg !2810
  br i1 %cmp335, label %if.end434, label %for.cond339.preheader, !dbg !2811

for.cond339.preheader:                            ; preds = %for.body331
  br label %for.cond339, !dbg !2812

for.cond339:                                      ; preds = %for.cond339.preheader, %for.inc431
  %indvars.iv27 = phi i64 [ 0, %for.cond339.preheader ], [ %indvars.iv.next28, %for.inc431 ], !dbg !2815
  %best_cost.3 = phi i32 [ 1073741823, %for.cond339.preheader ], [ %best_cost.6, %for.inc431 ], !dbg !2815
  %allocno_cost.0 = phi i32 [ 1073741823, %for.cond339.preheader ], [ %allocno_cost.4, %for.inc431 ], !dbg !2816
  %best.6 = phi i32 [ 26, %for.cond339.preheader ], [ %best.10, %for.inc431 ], !dbg !2817
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !2355, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i32 %best.6, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %allocno_cost.0, metadata !2489, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best_cost.3, metadata !2488, metadata !DIExpression()), !dbg !2635
  %121 = load i32, i32* @cost_classes_num, align 4, !dbg !2818
  %122 = sext i32 %121 to i64, !dbg !2820
  %cmp340 = icmp slt i64 %indvars.iv27, %122, !dbg !2820
  br i1 %cmp340, label %for.body342, label %for.end433, !dbg !2812

for.body342:                                      ; preds = %for.cond339
  %123 = load i32*, i32** @cost_classes, align 8, !dbg !2821
  %arrayidx344 = getelementptr inbounds i32, i32* %123, i64 %indvars.iv27, !dbg !2821
  %124 = load i32, i32* %arrayidx344, align 4, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %124, metadata !2484, metadata !DIExpression()), !dbg !2635
  %idxprom345 = sext i32 %124 to i64, !dbg !2823
  %125 = load i32*, i32** @regno_cover_class, align 8, !dbg !2825
  %arrayidx348 = getelementptr inbounds i32, i32* %125, i64 %indvars.iv.next30, !dbg !2825
  %126 = load i32, i32* %arrayidx348, align 4, !dbg !2825
  %idxprom349 = zext i32 %126 to i64, !dbg !2823
  %arrayidx350 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_class_subset_p, i64 0, i64 %idxprom345, i64 %idxprom349, !dbg !2823
  %127 = load i32, i32* %arrayidx350, align 4, !dbg !2823
  %tobool351 = icmp eq i32 %127, 0, !dbg !2823
  br i1 %tobool351, label %for.inc431, label %if.end353, !dbg !2826

if.end353:                                        ; preds = %for.body342
  %128 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !2827
  %arrayidx357 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %128, i64 %indvars.iv.next30, !dbg !2827
  %129 = bitcast %struct.rtx_def** %arrayidx357 to i32**, !dbg !2827
  %130 = load i32*, i32** %129, align 8, !dbg !2827
  %bf.load358 = load i32, i32* %130, align 8, !dbg !2827
  %bf.lshr359 = lshr i32 %bf.load358, 16, !dbg !2827
  %bf.clear360 = and i32 %bf.lshr359, 255, !dbg !2827
  %idxprom361 = zext i32 %bf.clear360 to i64, !dbg !2829
  %arrayidx362 = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %idxprom345, i64 %idxprom361, !dbg !2829
  %131 = load i8, i8* %arrayidx362, align 1, !dbg !2829
  %tobool363 = icmp eq i8 %131, 0, !dbg !2829
  br i1 %tobool363, label %for.inc431, label %lor.lhs.false364, !dbg !2830

lor.lhs.false364:                                 ; preds = %if.end353
  %132 = trunc i64 %indvars.iv.next30 to i32, !dbg !2831
  %call370 = call zeroext i8 @invalid_mode_change_p(i32 %132, i32 %124, i32 %bf.clear360) #6, !dbg !2831
  %tobool372 = icmp eq i8 %call370, 0, !dbg !2831
  br i1 %tobool372, label %if.else374, label %for.inc431, !dbg !2832

if.else374:                                       ; preds = %lor.lhs.false364
  %133 = load i8*, i8** bitcast (%struct.costs** @total_allocno_costs to i8**), align 8, !dbg !2833
  %134 = load i32, i32* @struct_costs_size, align 4, !dbg !2833
  %mul375 = mul nsw i32 %118, %134, !dbg !2833
  %idx.ext376 = sext i32 %mul375 to i64, !dbg !2833
  %add.ptr377 = getelementptr inbounds i8, i8* %133, i64 4, !dbg !2833
  %cost378 = getelementptr inbounds i8, i8* %add.ptr377, i64 %idx.ext376, !dbg !2835
  %135 = bitcast i8* %cost378 to [1 x i32]*, !dbg !2835
  %arrayidx380 = getelementptr inbounds [1 x i32], [1 x i32]* %135, i64 0, i64 %indvars.iv27, !dbg !2833
  %136 = load i32, i32* %arrayidx380, align 4, !dbg !2833
  %cmp381 = icmp slt i32 %136, %best_cost.3, !dbg !2836
  br i1 %cmp381, label %if.then383, label %if.else396, !dbg !2837

if.then383:                                       ; preds = %if.else374
  call void @llvm.dbg.value(metadata i32 %136, metadata !2488, metadata !DIExpression()), !dbg !2635
  %137 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !2838
  %add.ptr392 = getelementptr inbounds i8, i8* %137, i64 4, !dbg !2838
  %cost393 = getelementptr inbounds i8, i8* %add.ptr392, i64 %idx.ext376, !dbg !2840
  %138 = bitcast i8* %cost393 to [1 x i32]*, !dbg !2840
  %arrayidx395 = getelementptr inbounds [1 x i32], [1 x i32]* %138, i64 0, i64 %indvars.iv27, !dbg !2838
  %139 = load i32, i32* %arrayidx395, align 4, !dbg !2838
  call void @llvm.dbg.value(metadata i32 %139, metadata !2489, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %124, metadata !2490, metadata !DIExpression()), !dbg !2635
  br label %for.inc431, !dbg !2841

if.else396:                                       ; preds = %if.else374
  %cmp403 = icmp eq i32 %136, %best_cost.3, !dbg !2842
  br i1 %cmp403, label %if.then405, label %for.inc431, !dbg !2844

if.then405:                                       ; preds = %if.else396
  %idxprom406 = zext i32 %best.6 to i64, !dbg !2845
  %arrayidx409 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_union, i64 0, i64 %idxprom406, i64 %idxprom345, !dbg !2845
  %140 = load i32, i32* %arrayidx409, align 4, !dbg !2845
  call void @llvm.dbg.value(metadata i32 %140, metadata !2490, metadata !DIExpression()), !dbg !2635
  %141 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !2847
  %add.ptr412 = getelementptr inbounds i8, i8* %141, i64 4, !dbg !2847
  %cost413 = getelementptr inbounds i8, i8* %add.ptr412, i64 %idx.ext376, !dbg !2847
  %142 = bitcast i8* %cost413 to [1 x i32]*, !dbg !2847
  %arrayidx415 = getelementptr inbounds [1 x i32], [1 x i32]* %142, i64 0, i64 %indvars.iv27, !dbg !2847
  %143 = load i32, i32* %arrayidx415, align 4, !dbg !2847
  %cmp416 = icmp sgt i32 %allocno_cost.0, %143, !dbg !2847
  br i1 %cmp416, label %for.inc431, label %cond.false419, !dbg !2847

cond.false419:                                    ; preds = %if.then405
  br label %for.inc431, !dbg !2847

for.inc431:                                       ; preds = %lor.lhs.false364, %if.end353, %for.body342, %if.else396, %if.then405, %cond.false419, %if.then383
  %best_cost.6 = phi i32 [ %best_cost.3, %for.body342 ], [ %best_cost.3, %lor.lhs.false364 ], [ %best_cost.3, %if.end353 ], [ %136, %if.then383 ], [ %best_cost.3, %cond.false419 ], [ %best_cost.3, %if.then405 ], [ %best_cost.3, %if.else396 ], !dbg !2815
  %allocno_cost.4 = phi i32 [ %allocno_cost.0, %for.body342 ], [ %allocno_cost.0, %lor.lhs.false364 ], [ %allocno_cost.0, %if.end353 ], [ %139, %if.then383 ], [ %143, %cond.false419 ], [ %allocno_cost.0, %if.then405 ], [ %allocno_cost.0, %if.else396 ], !dbg !2816
  %best.10 = phi i32 [ %best.6, %for.body342 ], [ %best.6, %lor.lhs.false364 ], [ %best.6, %if.end353 ], [ %124, %if.then383 ], [ %140, %cond.false419 ], [ %140, %if.then405 ], [ %best.6, %if.else396 ], !dbg !2817
  call void @llvm.dbg.value(metadata i32 %best.10, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %allocno_cost.4, metadata !2489, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best_cost.6, metadata !2488, metadata !DIExpression()), !dbg !2635
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !2848
  call void @llvm.dbg.value(metadata i32 undef, metadata !2355, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2492
  br label %for.cond339, !dbg !2849, !llvm.loop !2850

for.end433:                                       ; preds = %for.cond339
  %allocno_cost.0.lcssa = phi i32 [ %allocno_cost.0, %for.cond339 ], !dbg !2816
  %best.6.lcssa = phi i32 [ %best.6, %for.cond339 ], !dbg !2817
  call void @llvm.dbg.value(metadata i32 %allocno_cost.0.lcssa, metadata !2489, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best.6.lcssa, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %allocno_cost.0.lcssa, metadata !2489, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best.6.lcssa, metadata !2490, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %allocno_cost.0.lcssa, metadata !2489, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %best.6.lcssa, metadata !2490, metadata !DIExpression()), !dbg !2635
  %cover_class_cost = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a78.1, i64 0, i32 10, !dbg !2852
  store i32 %allocno_cost.0.lcssa, i32* %cover_class_cost, align 4, !dbg !2853
  br label %if.end434

if.end434:                                        ; preds = %for.body331, %for.end433
  %best.11 = phi i32 [ %best.6.lcssa, %for.end433 ], [ 0, %for.body331 ], !dbg !2854
  call void @llvm.dbg.value(metadata i32 %best.11, metadata !2490, metadata !DIExpression()), !dbg !2635
  %144 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2855
  %cmp435 = icmp sgt i32 %144, 2, !dbg !2857
  %or.cond6 = and i1 %cmp435, %tobool21, !dbg !2858
  br i1 %or.cond6, label %land.lhs.true440, label %if.end468, !dbg !2858

land.lhs.true440:                                 ; preds = %if.end434
  br i1 %cmp68, label %if.then448, label %lor.lhs.false443, !dbg !2859

lor.lhs.false443:                                 ; preds = %land.lhs.true440
  %145 = load i32*, i32** @pref, align 8, !dbg !2860
  %idxprom444 = sext i32 %118 to i64, !dbg !2860
  %arrayidx445 = getelementptr inbounds i32, i32* %145, i64 %idxprom444, !dbg !2860
  %146 = load i32, i32* %arrayidx445, align 4, !dbg !2860
  %cmp446 = icmp eq i32 %146, %best.11, !dbg !2861
  br i1 %cmp446, label %if.end468, label %if.then448, !dbg !2862

if.then448:                                       ; preds = %lor.lhs.false443, %land.lhs.true440
  %147 = trunc i64 %indvars.iv.next30 to i32, !dbg !2863
  %call449 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %dump_file, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %147) #6, !dbg !2863
  %loop_tree_node450 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a78.1, i64 0, i32 6, !dbg !2865
  %148 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node450, align 8, !dbg !2865
  %bb451 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %148, i64 0, i32 0, !dbg !2867
  %149 = load %struct.basic_block_def*, %struct.basic_block_def** %bb451, align 8, !dbg !2867
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %149, metadata !2358, metadata !DIExpression()), !dbg !2492
  %cmp452 = icmp eq %struct.basic_block_def* %149, null, !dbg !2868
  br i1 %cmp452, label %if.else456, label %if.then454, !dbg !2869

if.then454:                                       ; preds = %if.then448
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %149, i64 0, i32 9, !dbg !2870
  %150 = load i32, i32* %index, align 8, !dbg !2870
  %call455 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %dump_file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %150) #6, !dbg !2871
  br label %if.end460, !dbg !2871

if.else456:                                       ; preds = %if.then448
  %loop = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %148, i64 0, i32 1, !dbg !2872
  %151 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2872
  %num458 = getelementptr inbounds %struct.loop, %struct.loop* %151, i64 0, i32 0, !dbg !2873
  %152 = load i32, i32* %num458, align 8, !dbg !2873
  %call459 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %dump_file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %152) #6, !dbg !2874
  br label %if.end460

if.end460:                                        ; preds = %if.else456, %if.then454
  %idxprom461 = zext i32 %best.11 to i64, !dbg !2875
  %arrayidx462 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom461, !dbg !2875
  %153 = load i8*, i8** %arrayidx462, align 8, !dbg !2875
  %154 = load i32*, i32** @regno_cover_class, align 8, !dbg !2876
  %arrayidx464 = getelementptr inbounds i32, i32* %154, i64 %indvars.iv.next30, !dbg !2876
  %155 = load i32, i32* %arrayidx464, align 4, !dbg !2876
  %idxprom465 = zext i32 %155 to i64, !dbg !2877
  %arrayidx466 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom465, !dbg !2877
  %156 = load i8*, i8** %arrayidx466, align 8, !dbg !2877
  %call467 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %dump_file, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %153, i8* %156) #6, !dbg !2878
  br label %if.end468, !dbg !2879

if.end468:                                        ; preds = %lor.lhs.false443, %if.end460, %if.end434
  %157 = load i32*, i32** @pref, align 8, !dbg !2880
  %idxprom469 = sext i32 %118 to i64, !dbg !2880
  %arrayidx470 = getelementptr inbounds i32, i32* %157, i64 %idxprom469, !dbg !2880
  store i32 %best.11, i32* %arrayidx470, align 4, !dbg !2881
  %next_regno_allocno472 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a78.1, i64 0, i32 5, !dbg !2882
  br label %for.cond328, !dbg !2883, !llvm.loop !2884

cleanup.loopexit:                                 ; preds = %for.cond328
  br label %cleanup, !dbg !2886

cleanup:                                          ; preds = %cleanup.loopexit, %if.else91, %if.then80, %if.then315
  call void @llvm.dbg.value(metadata i32 undef, metadata !2354, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2492
  br label %for.cond74, !dbg !2886, !llvm.loop !2887

for.end484:                                       ; preds = %for.cond74
  %158 = load i32, i32* @internal_flag_ira_verbose, align 4, !dbg !2889
  %cmp485 = icmp sgt i32 %158, 4, !dbg !2891
  %or.cond7 = and i1 %cmp485, %tobool21, !dbg !2892
  br i1 %or.cond7, label %if.then489, label %for.inc496, !dbg !2892

if.then489:                                       ; preds = %for.end484
  %.b = load i1, i1* @allocno_p, align 1, !dbg !2893
  br i1 %.b, label %if.then491, label %if.else492, !dbg !2896

if.then491:                                       ; preds = %if.then489
  call fastcc void @print_allocno_costs(%struct._IO_FILE* nonnull %dump_file) #7, !dbg !2897
  br label %if.end493, !dbg !2897

if.else492:                                       ; preds = %if.then489
  call fastcc void @print_pseudo_costs(%struct._IO_FILE* nonnull %dump_file) #7, !dbg !2898
  br label %if.end493

if.end493:                                        ; preds = %if.else492, %if.then491
  %call494 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %dump_file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2899
  br label %for.inc496, !dbg !2900

for.inc496:                                       ; preds = %for.end484, %if.end493
  %inc497 = add nuw nsw i32 %pass.0, 1, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %inc497, metadata !2357, metadata !DIExpression()), !dbg !2492
  br label %for.cond14, !dbg !2902, !llvm.loop !2903

for.end498:                                       ; preds = %for.cond14
  ret void, !dbg !2905
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setup_allocno_cover_class_and_costs() unnamed_addr #5 !dbg !2906 {
entry:
  %a = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  %0 = bitcast %struct.ira_allocno** %a to i8*, !dbg !2918
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2918
  %1 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !2919
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2919
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2917, metadata !DIExpression(DW_OP_deref)), !dbg !2920
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !2921
  br label %for.cond, !dbg !2921

for.cond:                                         ; preds = %for.cond.backedge, %entry
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !2916, metadata !DIExpression(DW_OP_deref)), !dbg !2920
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !2917, metadata !DIExpression(DW_OP_deref)), !dbg !2920
  %call = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !2923
  %tobool = icmp eq i8 %call, 0, !dbg !2921
  br i1 %tobool, label %for.end48, label %for.body, !dbg !2921

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2925
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !2916, metadata !DIExpression()), !dbg !2920
  %num1 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 0, !dbg !2925
  %3 = load i32, i32* %num1, align 8, !dbg !2925
  call void @llvm.dbg.value(metadata i32 %3, metadata !2908, metadata !DIExpression()), !dbg !2920
  %4 = load i32*, i32** @regno_cover_class, align 8, !dbg !2927
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !2916, metadata !DIExpression()), !dbg !2920
  %regno2 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 1, !dbg !2928
  %5 = load i32, i32* %regno2, align 4, !dbg !2928
  %idxprom = sext i32 %5 to i64, !dbg !2927
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !2927
  %6 = load i32, i32* %arrayidx, align 4, !dbg !2927
  call void @llvm.dbg.value(metadata i32 %6, metadata !2914, metadata !DIExpression()), !dbg !2920
  %7 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !2929
  %8 = load i32, i32* @struct_costs_size, align 4, !dbg !2929
  %mul = mul nsw i32 %3, %8, !dbg !2929
  %idx.ext = sext i32 %mul to i64, !dbg !2929
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext, !dbg !2929
  %mem_cost = bitcast i8* %add.ptr to i32*, !dbg !2930
  %9 = load i32, i32* %mem_cost, align 4, !dbg !2930
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !2916, metadata !DIExpression()), !dbg !2920
  %memory_cost = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 12, !dbg !2931
  store i32 %9, i32* %memory_cost, align 4, !dbg !2932
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !2916, metadata !DIExpression()), !dbg !2920
  call void @ira_set_allocno_cover_class(%struct.ira_allocno* %2, i32 %6) #6, !dbg !2933
  %cmp = icmp eq i32 %6, 0, !dbg !2934
  br i1 %cmp, label %for.cond.backedge, label %if.end, !dbg !2936

if.end:                                           ; preds = %for.body
  %idxprom3 = zext i32 %6 to i64, !dbg !2937
  %arrayidx4 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_available_class_regs, i64 0, i64 %idxprom3, !dbg !2937
  %10 = load i32, i32* %arrayidx4, align 4, !dbg !2937
  %11 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2938
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %11, metadata !2916, metadata !DIExpression()), !dbg !2920
  %available_regs_num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %11, i64 0, i32 38, !dbg !2938
  store i32 %10, i32* %available_regs_num, align 4, !dbg !2939
  %12 = load i32, i32* @optimize, align 4, !dbg !2940
  %tobool5 = icmp eq i32 %12, 0, !dbg !2940
  br i1 %tobool5, label %if.end47, label %land.lhs.true, !dbg !2942

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %11, metadata !2916, metadata !DIExpression()), !dbg !2920
  %cover_class6 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %11, i64 0, i32 9, !dbg !2943
  %13 = load i32, i32* %cover_class6, align 8, !dbg !2943
  %14 = load i32*, i32** @pref, align 8, !dbg !2944
  %idxprom7 = sext i32 %3 to i64, !dbg !2944
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7, !dbg !2944
  %15 = load i32, i32* %arrayidx8, align 4, !dbg !2944
  %cmp9 = icmp eq i32 %13, %15, !dbg !2945
  br i1 %cmp9, label %if.end47, label %if.then10, !dbg !2946

if.then10:                                        ; preds = %land.lhs.true
  %arrayidx12 = getelementptr inbounds [27 x i32], [27 x i32]* @ira_class_hard_regs_num, i64 0, i64 %idxprom3, !dbg !2947
  %16 = load i32, i32* %arrayidx12, align 4, !dbg !2947
  call void @llvm.dbg.value(metadata i32 %16, metadata !2910, metadata !DIExpression()), !dbg !2920
  %call13 = call i32* @ira_allocate_cost_vector(i32 %6) #6, !dbg !2949
  call void @llvm.dbg.value(metadata i32* %call13, metadata !2913, metadata !DIExpression()), !dbg !2920
  %17 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2950
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %17, metadata !2916, metadata !DIExpression()), !dbg !2920
  %hard_reg_costs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %17, i64 0, i32 33, !dbg !2950
  store i32* %call13, i32** %hard_reg_costs, align 8, !dbg !2951
  call void @llvm.dbg.value(metadata i32 %16, metadata !2909, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2920
  %arrayidx37 = getelementptr inbounds [27 x i32], [27 x i32]* @cost_class_nums, i64 0, i64 %idxprom3, !dbg !2952
  %18 = sext i32 %16 to i64, !dbg !2960
  br label %for.cond14, !dbg !2960

for.cond14:                                       ; preds = %for.inc, %if.then10
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %18, %if.then10 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2961
  call void @llvm.dbg.value(metadata i32 undef, metadata !2909, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2920
  %cmp15 = icmp sgt i64 %indvars.iv, 0, !dbg !2962
  br i1 %cmp15, label %for.body16, label %if.end47.loopexit, !dbg !2963

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds [27 x [53 x i16]], [27 x [53 x i16]]* @ira_class_hard_regs, i64 0, i64 %idxprom3, i64 %indvars.iv.next, !dbg !2964
  %19 = load i16, i16* %arrayidx20, align 2, !dbg !2964
  %conv = sext i16 %19 to i64, !dbg !2964
  %20 = load i32*, i32** @pref, align 8, !dbg !2965
  %arrayidx22 = getelementptr inbounds i32, i32* %20, i64 %idxprom7, !dbg !2965
  %21 = load i32, i32* %arrayidx22, align 4, !dbg !2965
  %idxprom23 = zext i32 %21 to i64, !dbg !2965
  %arrayidx24 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom23, !dbg !2965
  %22 = load i64, i64* %arrayidx24, align 8, !dbg !2965
  %sh_prom = and i64 %conv, 4294967295, !dbg !2965
  %shl = shl i64 1, %sh_prom, !dbg !2965
  %and = and i64 %22, %shl, !dbg !2965
  %tobool25 = icmp eq i64 %and, 0, !dbg !2965
  br i1 %tobool25, label %if.else, label %if.then26, !dbg !2966

if.then26:                                        ; preds = %for.body16
  %23 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !2967
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %23, metadata !2916, metadata !DIExpression()), !dbg !2920
  %cover_class_cost = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %23, i64 0, i32 10, !dbg !2967
  %24 = load i32, i32* %cover_class_cost, align 4, !dbg !2967
  %arrayidx28 = getelementptr inbounds i32, i32* %call13, i64 %indvars.iv.next, !dbg !2968
  store i32 %24, i32* %arrayidx28, align 4, !dbg !2969
  br label %for.inc, !dbg !2968

if.else:                                          ; preds = %for.body16
  %arrayidx30 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %conv, !dbg !2970
  %25 = load i32, i32* %arrayidx30, align 4, !dbg !2970
  call void @llvm.dbg.value(metadata i32 %25, metadata !2915, metadata !DIExpression()), !dbg !2920
  %idxprom31 = zext i32 %25 to i64, !dbg !2971
  %arrayidx32 = getelementptr inbounds [27 x i32], [27 x i32]* @cost_class_nums, i64 0, i64 %idxprom31, !dbg !2971
  %26 = load i32, i32* %arrayidx32, align 4, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %26, metadata !2912, metadata !DIExpression()), !dbg !2920
  %cmp33 = icmp slt i32 %26, 0, !dbg !2972
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !2973

if.then35:                                        ; preds = %if.else
  %27 = load i32, i32* %arrayidx37, align 4, !dbg !2974
  call void @llvm.dbg.value(metadata i32 %27, metadata !2912, metadata !DIExpression()), !dbg !2920
  br label %if.end38, !dbg !2975

if.end38:                                         ; preds = %if.then35, %if.else
  %num.0 = phi i32 [ %27, %if.then35 ], [ %26, %if.else ], !dbg !2976
  call void @llvm.dbg.value(metadata i32 %num.0, metadata !2912, metadata !DIExpression()), !dbg !2920
  %28 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !2977
  %29 = load i32, i32* @struct_costs_size, align 4, !dbg !2977
  %mul39 = mul nsw i32 %3, %29, !dbg !2977
  %idx.ext40 = sext i32 %mul39 to i64, !dbg !2977
  %add.ptr41 = getelementptr inbounds i8, i8* %28, i64 4, !dbg !2977
  %cost = getelementptr inbounds i8, i8* %add.ptr41, i64 %idx.ext40, !dbg !2978
  %30 = bitcast i8* %cost to [1 x i32]*, !dbg !2978
  %idxprom42 = sext i32 %num.0 to i64, !dbg !2977
  %arrayidx43 = getelementptr inbounds [1 x i32], [1 x i32]* %30, i64 0, i64 %idxprom42, !dbg !2977
  %31 = load i32, i32* %arrayidx43, align 4, !dbg !2977
  %arrayidx45 = getelementptr inbounds i32, i32* %call13, i64 %indvars.iv.next, !dbg !2979
  store i32 %31, i32* %arrayidx45, align 4, !dbg !2980
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %if.end38
  call void @llvm.dbg.value(metadata i32 undef, metadata !2909, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2920
  br label %for.cond14, !dbg !2981, !llvm.loop !2982

if.end47.loopexit:                                ; preds = %for.cond14
  br label %if.end47, !dbg !2923

if.end47:                                         ; preds = %if.end47.loopexit, %land.lhs.true, %if.end
  br label %for.cond.backedge, !dbg !2923

for.cond.backedge:                                ; preds = %if.end47, %for.body
  br label %for.cond, !dbg !2920, !llvm.loop !2984

for.end48:                                        ; preds = %for.cond
  %32 = load i32, i32* @optimize, align 4, !dbg !2986
  %tobool49 = icmp eq i32 %32, 0, !dbg !2986
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !2988

if.then50:                                        ; preds = %for.end48
  %33 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** @ira_loop_tree_root, align 8, !dbg !2989
  call void @ira_traverse_loop_tree(i8 zeroext 1, %struct.ira_loop_tree_node* %33, void (%struct.ira_loop_tree_node*)* nonnull @process_bb_node_for_hard_reg_moves, void (%struct.ira_loop_tree_node*)* null) #6, !dbg !2990
  br label %if.end51, !dbg !2990

if.end51:                                         ; preds = %for.end48, %if.then50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2991
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2991
  ret void, !dbg !2991
}

; Function Attrs: nounwind uwtable
define internal fastcc void @finish_costs() unnamed_addr #5 !dbg !2992 {
entry:
  %0 = load i8*, i8** bitcast (i32** @regno_cover_class to i8**), align 8, !dbg !2993
  tail call void @ira_free(i8* %0) #6, !dbg !2994
  %1 = load i8*, i8** bitcast (i32** @pref_buffer to i8**), align 8, !dbg !2995
  tail call void @ira_free(i8* %1) #6, !dbg !2996
  %2 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !2997
  tail call void @ira_free(i8* %2) #6, !dbg !2998
  ret void, !dbg !2999
}

declare dso_local void @ira_free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ira_set_pseudo_classes(%struct._IO_FILE* %dump_file) local_unnamed_addr #5 !dbg !3000 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %dump_file, metadata !3002, metadata !DIExpression()), !dbg !3003
  store i1 false, i1* @allocno_p, align 1, !dbg !3004
  %0 = load i32, i32* @flag_ira_verbose, align 4, !dbg !3005
  store i32 %0, i32* @internal_flag_ira_verbose, align 4, !dbg !3006
  %call = tail call i32 @max_reg_num() #6, !dbg !3007
  store i32 %call, i32* @cost_elements_num, align 4, !dbg !3008
  tail call fastcc void @init_costs() #7, !dbg !3009
  tail call fastcc void @find_costs_and_classes(%struct._IO_FILE* %dump_file) #7, !dbg !3010
  store i1 true, i1* @pseudo_classes_defined_p, align 1, !dbg !3011
  tail call fastcc void @finish_costs() #7, !dbg !3012
  ret void, !dbg !3013
}

declare dso_local i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ira_tune_allocno_costs_and_cover_classes() local_unnamed_addr #5 !dbg !3014 {
entry:
  %a = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  %0 = bitcast %struct.ira_allocno** %a to i8*, !dbg !3027
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3027
  %1 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !3028
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3028
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !3026, metadata !DIExpression(DW_OP_deref)), !dbg !3029
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !3030
  br label %for.cond, !dbg !3030

for.cond:                                         ; preds = %for.cond.backedge, %entry
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !3025, metadata !DIExpression(DW_OP_deref)), !dbg !3029
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !3026, metadata !DIExpression(DW_OP_deref)), !dbg !3029
  %call = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !3032
  %tobool = icmp eq i8 %call, 0, !dbg !3030
  br i1 %tobool, label %for.end49, label %for.body, !dbg !3030

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !3034
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !3025, metadata !DIExpression()), !dbg !3029
  %cover_class1 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 9, !dbg !3034
  %3 = load i32, i32* %cover_class1, align 8, !dbg !3034
  call void @llvm.dbg.value(metadata i32 %3, metadata !3022, metadata !DIExpression()), !dbg !3029
  %cmp = icmp eq i32 %3, 0, !dbg !3036
  br i1 %cmp, label %for.cond.backedge, label %if.end, !dbg !3038

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !3025, metadata !DIExpression()), !dbg !3029
  %mode2 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 2, !dbg !3039
  %4 = load i32, i32* %mode2, align 8, !dbg !3039
  call void @llvm.dbg.value(metadata i32 %4, metadata !3024, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 undef, metadata !3017, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3020, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !3025, metadata !DIExpression()), !dbg !3029
  %calls_crossed_num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 30, !dbg !3040
  %5 = load i32, i32* %calls_crossed_num, align 8, !dbg !3040
  %cmp3 = icmp eq i32 %5, 0, !dbg !3042
  br i1 %cmp3, label %if.end43, label %if.then4, !dbg !3043

if.then4:                                         ; preds = %if.end
  %idxprom = zext i32 %3 to i64, !dbg !3044
  %arrayidx = getelementptr inbounds [27 x i32], [27 x i32]* @ira_class_hard_regs_num, i64 0, i64 %idxprom, !dbg !3044
  %6 = load i32, i32* %arrayidx, align 4, !dbg !3044
  call void @llvm.dbg.value(metadata i32 %6, metadata !3017, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !3025, metadata !DIExpression()), !dbg !3029
  %hard_reg_costs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 33, !dbg !3045
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !3025, metadata !DIExpression()), !dbg !3029
  %cover_class_cost = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 10, !dbg !3047
  %7 = load i32, i32* %cover_class_cost, align 4, !dbg !3047
  call fastcc void @ira_allocate_and_set_costs(i32** nonnull %hard_reg_costs, i32 %3, i32 %7) #7, !dbg !3048
  %8 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !3049
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %8, metadata !3025, metadata !DIExpression()), !dbg !3029
  %hard_reg_costs5 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %8, i64 0, i32 33, !dbg !3049
  %9 = load i32*, i32** %hard_reg_costs5, align 8, !dbg !3049
  call void @llvm.dbg.value(metadata i32* %9, metadata !3021, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %6, metadata !3016, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3029
  %idxprom18 = zext i32 %4 to i64, !dbg !3050
  %10 = sext i32 %6 to i64, !dbg !3055
  br label %for.cond6, !dbg !3055

for.cond6:                                        ; preds = %for.inc, %if.then4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %10, %if.then4 ], !dbg !3056
  %min_cost.0 = phi i32 [ %min_cost.1, %for.inc ], [ 2147483647, %if.then4 ], !dbg !3056
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3057
  call void @llvm.dbg.value(metadata i32 undef, metadata !3016, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %min_cost.0, metadata !3020, metadata !DIExpression()), !dbg !3029
  %cmp7 = icmp sgt i64 %indvars.iv, 0, !dbg !3058
  br i1 %cmp7, label %for.body8, label %if.end43.loopexit, !dbg !3059

for.body8:                                        ; preds = %for.cond6
  %arrayidx12 = getelementptr inbounds [27 x [53 x i16]], [27 x [53 x i16]]* @ira_class_hard_regs, i64 0, i64 %idxprom, i64 %indvars.iv.next, !dbg !3060
  %11 = load i16, i16* %arrayidx12, align 2, !dbg !3060
  %conv = sext i16 %11 to i32, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3018, metadata !DIExpression()), !dbg !3029
  %idxprom13 = sext i16 %11 to i64, !dbg !3061
  %arrayidx14 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom13, !dbg !3061
  %12 = load i32, i32* %arrayidx14, align 4, !dbg !3061
  call void @llvm.dbg.value(metadata i32 %12, metadata !3023, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 0, metadata !3019, metadata !DIExpression()), !dbg !3029
  %13 = load i64, i64* @call_used_reg_set, align 8, !dbg !3062
  %call15 = call fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 %conv, i32 %4, i64 %13) #7, !dbg !3063
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3063
  br i1 %tobool16, label %if.then17, label %if.end31, !dbg !3064

if.then17:                                        ; preds = %for.body8
  %14 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !3065
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %14, metadata !3025, metadata !DIExpression()), !dbg !3029
  %call_freq = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %14, i64 0, i32 29, !dbg !3065
  %15 = load i32, i32* %call_freq, align 4, !dbg !3065
  %idxprom20 = zext i32 %12 to i64, !dbg !3066
  %arrayidx22 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom18, i64 %idxprom20, i64 0, !dbg !3066
  %16 = load i16, i16* %arrayidx22, align 4, !dbg !3066
  %conv23 = sext i16 %16 to i32, !dbg !3066
  %arrayidx28 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom18, i64 %idxprom20, i64 1, !dbg !3067
  %17 = load i16, i16* %arrayidx28, align 2, !dbg !3067
  %conv29 = sext i16 %17 to i32, !dbg !3067
  %add = add nsw i32 %conv23, %conv29, !dbg !3068
  %mul = mul nsw i32 %15, %add, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3019, metadata !DIExpression()), !dbg !3029
  br label %if.end31, !dbg !3070

if.end31:                                         ; preds = %for.body8, %if.then17
  %cost.0 = phi i32 [ 0, %for.body8 ], [ %mul, %if.then17 ], !dbg !3071
  call void @llvm.dbg.value(metadata i32 %cost.0, metadata !3019, metadata !DIExpression()), !dbg !3029
  %arrayidx33 = getelementptr inbounds i32, i32* %9, i64 %indvars.iv.next, !dbg !3072
  %18 = load i32, i32* %arrayidx33, align 4, !dbg !3073
  %add34 = add nsw i32 %18, %cost.0, !dbg !3073
  store i32 %add34, i32* %arrayidx33, align 4, !dbg !3073
  %cmp37 = icmp sgt i32 %min_cost.0, %add34, !dbg !3074
  br i1 %cmp37, label %if.then39, label %for.inc, !dbg !3076

if.then39:                                        ; preds = %if.end31
  call void @llvm.dbg.value(metadata i32 %add34, metadata !3020, metadata !DIExpression()), !dbg !3029
  br label %for.inc, !dbg !3077

for.inc:                                          ; preds = %if.end31, %if.then39
  %min_cost.1 = phi i32 [ %add34, %if.then39 ], [ %min_cost.0, %if.end31 ], !dbg !3056
  call void @llvm.dbg.value(metadata i32 %min_cost.1, metadata !3020, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 undef, metadata !3016, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3029
  br label %for.cond6, !dbg !3078, !llvm.loop !3079

if.end43.loopexit:                                ; preds = %for.cond6
  %min_cost.0.lcssa = phi i32 [ %min_cost.0, %for.cond6 ], !dbg !3056
  call void @llvm.dbg.value(metadata i32 %min_cost.0.lcssa, metadata !3020, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %min_cost.0.lcssa, metadata !3020, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %min_cost.0.lcssa, metadata !3020, metadata !DIExpression()), !dbg !3029
  br label %if.end43, !dbg !3081

if.end43:                                         ; preds = %if.end43.loopexit, %if.end
  %min_cost.2 = phi i32 [ 2147483647, %if.end ], [ %min_cost.0.lcssa, %if.end43.loopexit ], !dbg !3083
  call void @llvm.dbg.value(metadata i32 %min_cost.2, metadata !3020, metadata !DIExpression()), !dbg !3029
  %cmp44 = icmp eq i32 %min_cost.2, 2147483647, !dbg !3081
  br i1 %cmp44, label %if.end48, label %if.then46, !dbg !3084

if.then46:                                        ; preds = %if.end43
  %19 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !3085
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %19, metadata !3025, metadata !DIExpression()), !dbg !3029
  %cover_class_cost47 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %19, i64 0, i32 10, !dbg !3085
  store i32 %min_cost.2, i32* %cover_class_cost47, align 4, !dbg !3086
  br label %if.end48, !dbg !3085

if.end48:                                         ; preds = %if.end43, %if.then46
  br label %for.cond.backedge, !dbg !3032

for.cond.backedge:                                ; preds = %if.end48, %for.body
  br label %for.cond, !dbg !3029, !llvm.loop !3087

for.end49:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3089
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3089
  ret void, !dbg !3089
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* %i) unnamed_addr #0 !dbg !3090 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %i, metadata !3095, metadata !DIExpression()), !dbg !3096
  %n = getelementptr inbounds %struct.ira_allocno_iterator, %struct.ira_allocno_iterator* %i, i64 0, i32 0, !dbg !3097
  store i32 0, i32* %n, align 4, !dbg !3098
  ret void, !dbg !3099
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* %i, %struct.ira_allocno** %a) unnamed_addr #0 !dbg !3100 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %i, metadata !3104, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !3105, metadata !DIExpression()), !dbg !3107
  %n1 = getelementptr inbounds %struct.ira_allocno_iterator, %struct.ira_allocno_iterator* %i, i64 0, i32 0, !dbg !3108
  %0 = load i32, i32* %n1, align 4, !dbg !3108
  call void @llvm.dbg.value(metadata i32 %0, metadata !3106, metadata !DIExpression()), !dbg !3107
  %1 = load i32, i32* @ira_allocnos_num, align 4, !dbg !3110
  %2 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_allocnos, align 8, !dbg !3112
  %3 = sext i32 %0 to i64, !dbg !3114
  %4 = sext i32 %1 to i64, !dbg !3114
  br label %for.cond, !dbg !3114

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %3, %entry ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3106, metadata !DIExpression()), !dbg !3107
  %cmp = icmp slt i64 %indvars.iv, %4, !dbg !3116
  br i1 %cmp, label %for.body, label %cleanup.loopexit, !dbg !3117

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %2, i64 %indvars.iv, !dbg !3118
  %5 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx, align 8, !dbg !3118
  %cmp2 = icmp eq %struct.ira_allocno* %5, null, !dbg !3119
  br i1 %cmp2, label %for.inc, label %if.then, !dbg !3120

if.then:                                          ; preds = %for.body
  %.lcssa = phi %struct.ira_allocno* [ %5, %for.body ], !dbg !3118
  %indvars.iv.lcssa3 = phi i64 [ %indvars.iv, %for.body ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa3, metadata !3106, metadata !DIExpression()), !dbg !3107
  %6 = ptrtoint %struct.ira_allocno* %.lcssa to i64, !dbg !3120
  %7 = trunc i64 %indvars.iv.lcssa3 to i32, !dbg !3107
  call void @llvm.dbg.value(metadata i32 %7, metadata !3106, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i32 %7, metadata !3106, metadata !DIExpression()), !dbg !3107
  %8 = bitcast %struct.ira_allocno** %a to i64*, !dbg !3121
  store i64 %6, i64* %8, align 8, !dbg !3121
  %add = add nsw i32 %7, 1, !dbg !3123
  store i32 %add, i32* %n1, align 4, !dbg !3124
  br label %cleanup, !dbg !3125

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3126
  call void @llvm.dbg.value(metadata i32 undef, metadata !3106, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3107
  br label %for.cond, !dbg !3127, !llvm.loop !3128

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3130

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %cleanup.loopexit ], !dbg !3107
  ret i8 %retval.0, !dbg !3130
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ira_allocate_and_set_costs(i32** %vec, i32 %cover_class, i32 %val) unnamed_addr #0 !dbg !3131 {
entry:
  call void @llvm.dbg.value(metadata i32** %vec, metadata !3136, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %cover_class, metadata !3137, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %val, metadata !3138, metadata !DIExpression()), !dbg !3142
  %0 = load i32*, i32** %vec, align 8, !dbg !3143
  %cmp = icmp eq i32* %0, null, !dbg !3145
  br i1 %cmp, label %if.end, label %cleanup.cont, !dbg !3146

if.end:                                           ; preds = %entry
  %call = tail call i32* @ira_allocate_cost_vector(i32 %cover_class) #6, !dbg !3147
  call void @llvm.dbg.value(metadata i32* %call, metadata !3140, metadata !DIExpression()), !dbg !3142
  store i32* %call, i32** %vec, align 8, !dbg !3148
  %idxprom = zext i32 %cover_class to i64, !dbg !3149
  %arrayidx = getelementptr inbounds [27 x i32], [27 x i32]* @ira_class_hard_regs_num, i64 0, i64 %idxprom, !dbg !3149
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3149
  call void @llvm.dbg.value(metadata i32 %1, metadata !3141, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 0, metadata !3139, metadata !DIExpression()), !dbg !3142
  %2 = sext i32 %1 to i64, !dbg !3150
  br label %for.cond, !dbg !3150

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ], !dbg !3152
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3139, metadata !DIExpression()), !dbg !3142
  %cmp1 = icmp slt i64 %indvars.iv, %2, !dbg !3153
  br i1 %cmp1, label %for.body, label %cleanup.cont.loopexit, !dbg !3155

for.body:                                         ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds i32, i32* %call, i64 %indvars.iv, !dbg !3156
  store i32 %val, i32* %arrayidx3, align 4, !dbg !3157
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3158
  call void @llvm.dbg.value(metadata i32 undef, metadata !3139, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3142
  br label %for.cond, !dbg !3159, !llvm.loop !3160

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3162

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !3162
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ira_hard_reg_not_in_set_p(i32 %hard_regno, i32 %mode, i64 %hard_regset) unnamed_addr #0 !dbg !3163 {
entry:
  call void @llvm.dbg.value(metadata i32 %hard_regno, metadata !3167, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %hard_regset, metadata !3169, metadata !DIExpression()), !dbg !3171
  %idxprom = sext i32 %hard_regno to i64, !dbg !3172
  %idxprom1 = zext i32 %mode to i64, !dbg !3172
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !3172
  %0 = load i8, i8* %arrayidx2, align 1, !dbg !3172
  %conv = zext i8 %0 to i32, !dbg !3172
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3170, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3171
  br label %for.cond, !dbg !3174

for.cond:                                         ; preds = %for.inc, %entry
  %i.0.in = phi i32 [ %conv, %entry ], [ %i.0, %for.inc ]
  %i.0 = add nsw i32 %i.0.in, -1, !dbg !3175
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3170, metadata !DIExpression()), !dbg !3171
  %cmp = icmp sgt i32 %i.0.in, 0, !dbg !3176
  br i1 %cmp, label %for.body, label %cleanup, !dbg !3178

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %i.0, %hard_regno, !dbg !3179
  %sh_prom = zext i32 %add to i64, !dbg !3179
  %shl = shl i64 1, %sh_prom, !dbg !3179
  %and = and i64 %shl, %hard_regset, !dbg !3179
  %tobool = icmp eq i64 %and, 0, !dbg !3179
  br i1 %tobool, label %for.inc, label %cleanup, !dbg !3181

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3170, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3171
  br label %for.cond, !dbg !3182, !llvm.loop !3183

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 0, %for.body ], [ 1, %for.cond ], !dbg !3171
  ret i8 %retval.0, !dbg !3185
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @init_subregs_of_mode() local_unnamed_addr #2

declare dso_local void @init_recog() local_unnamed_addr #2

declare dso_local zeroext i8 @resize_reg_info() local_unnamed_addr #2

declare dso_local i32 @reg_preferred_class(i32) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local void @ira_traverse_loop_tree(i8 zeroext, %struct.ira_loop_tree_node*, void (%struct.ira_loop_tree_node*)*, void (%struct.ira_loop_tree_node*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @process_bb_node_for_costs(%struct.ira_loop_tree_node* %loop_tree_node) #5 !dbg !3186 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %loop_tree_node, metadata !3190, metadata !DIExpression()), !dbg !3192
  %bb1 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %loop_tree_node, i64 0, i32 0, !dbg !3193
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1, align 8, !dbg !3193
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3191, metadata !DIExpression()), !dbg !3192
  %cmp = icmp eq %struct.basic_block_def* %0, null, !dbg !3194
  br i1 %cmp, label %if.end, label %if.then, !dbg !3196

if.then:                                          ; preds = %entry
  tail call fastcc void @process_bb_for_costs(%struct.basic_block_def* nonnull %0) #7, !dbg !3197
  br label %if.end, !dbg !3197

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3198
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @process_bb_for_costs(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3199 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3203, metadata !DIExpression()), !dbg !3205
  %0 = load i32, i32* @optimize_size, align 4, !dbg !3206
  %tobool = icmp eq i32 %0, 0, !dbg !3206
  br i1 %tobool, label %lor.lhs.false, label %cond.end9, !dbg !3206

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3206
  %tobool1 = icmp eq i32 %1, 0, !dbg !3206
  br i1 %tobool1, label %cond.false, label %land.lhs.true, !dbg !3206

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3206
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3206
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3206
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !3206
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3206
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 8, !dbg !3206
  %5 = load i64, i64* %count, align 8, !dbg !3206
  %tobool2 = icmp eq i64 %5, 0, !dbg !3206
  br i1 %tobool2, label %cond.end9, label %cond.false, !dbg !3206

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3206
  %6 = load i32, i32* %frequency, align 8, !dbg !3206
  %.off = add i32 %6, 9, !dbg !3206
  %7 = icmp ugt i32 %.off, 18, !dbg !3206
  br i1 %7, label %cond.true4, label %cond.end9, !dbg !3206

cond.true4:                                       ; preds = %cond.false
  %div7 = sdiv i32 %6, 10, !dbg !3206
  br label %cond.end9, !dbg !3206

cond.end9:                                        ; preds = %land.lhs.true, %entry, %cond.true4, %cond.false
  %cond10 = phi i32 [ 1000, %land.lhs.true ], [ 1000, %entry ], [ %div7, %cond.true4 ], [ 1, %cond.false ], !dbg !3206
  %cmp = icmp eq i32 %cond10, 0, !dbg !3207
  %spec.store.select = select i1 %cmp, i32 1, i32 %cond10, !dbg !3209
  store i32 %spec.store.select, i32* @frequency, align 4, !dbg !3205
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !3210
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3210
  %8 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3210
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %8, i64 0, i32 0, !dbg !3210
  br label %for.cond, !dbg !3210

for.cond:                                         ; preds = %for.body, %cond.end9
  %insn.0.in = phi %struct.rtx_def** [ %head_, %cond.end9 ], [ %rt_rtx18, %for.body ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3212
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3204, metadata !DIExpression()), !dbg !3205
  %tobool11 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3213
  br i1 %tobool11, label %for.end, label %land.rhs, !dbg !3213

land.rhs:                                         ; preds = %for.cond
  %9 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3213
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %9, i64 0, i32 1, !dbg !3213
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3213
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3213
  %rt_rtx = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !3213
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3213
  %cmp14 = icmp eq %struct.rtx_def* %insn.0, %12, !dbg !3213
  br i1 %cmp14, label %for.end, label %for.body, !dbg !3210

for.body:                                         ; preds = %land.rhs
  %call = tail call fastcc %struct.rtx_def* @scan_one_insn(%struct.rtx_def* nonnull %insn.0) #7, !dbg !3215
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !3204, metadata !DIExpression()), !dbg !3205
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3213
  %rt_rtx18 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**, !dbg !3213
  br label %for.cond, !dbg !3213, !llvm.loop !3216

for.end:                                          ; preds = %land.rhs, %for.cond
  ret void, !dbg !3218
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @invalid_mode_change_p(i32, i32, i32) local_unnamed_addr #2

declare dso_local void @setup_reg_classes(i32, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @print_allocno_costs(%struct._IO_FILE* %f) unnamed_addr #5 !dbg !3219 {
entry:
  %a = alloca %struct.ira_allocno*, align 8
  %ai = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !3221, metadata !DIExpression()), !dbg !3232
  %0 = bitcast %struct.ira_allocno** %a to i8*, !dbg !3233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3233
  %1 = bitcast %struct.ira_allocno_iterator* %ai to i8*, !dbg !3234
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3234
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3235
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !3224, metadata !DIExpression(DW_OP_deref)), !dbg !3232
  call fastcc void @ira_allocno_iter_init(%struct.ira_allocno_iterator* nonnull %ai) #7, !dbg !3236
  br label %for.cond, !dbg !3236

for.cond:                                         ; preds = %for.end, %entry
  call void @llvm.dbg.value(metadata %struct.ira_allocno** %a, metadata !3223, metadata !DIExpression(DW_OP_deref)), !dbg !3232
  call void @llvm.dbg.value(metadata %struct.ira_allocno_iterator* %ai, metadata !3224, metadata !DIExpression(DW_OP_deref)), !dbg !3232
  %call1 = call fastcc zeroext i8 @ira_allocno_iter_cond(%struct.ira_allocno_iterator* nonnull %ai, %struct.ira_allocno** nonnull %a) #7, !dbg !3237
  %tobool = icmp eq i8 %call1, 0, !dbg !3236
  br i1 %tobool, label %for.end51, label %for.body, !dbg !3236

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !3238
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !3223, metadata !DIExpression()), !dbg !3232
  %regno2 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 1, !dbg !3238
  %3 = load i32, i32* %regno2, align 4, !dbg !3238
  call void @llvm.dbg.value(metadata i32 %3, metadata !3231, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %2, metadata !3223, metadata !DIExpression()), !dbg !3232
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %2, i64 0, i32 0, !dbg !3240
  %4 = load i32, i32* %num, align 8, !dbg !3240
  call void @llvm.dbg.value(metadata i32 %4, metadata !3225, metadata !DIExpression()), !dbg !3239
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %4, i32 %3) #6, !dbg !3241
  %5 = load %struct.ira_allocno*, %struct.ira_allocno** %a, align 8, !dbg !3242
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %5, metadata !3223, metadata !DIExpression()), !dbg !3232
  %loop_tree_node = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %5, i64 0, i32 6, !dbg !3242
  %6 = load %struct.ira_loop_tree_node*, %struct.ira_loop_tree_node** %loop_tree_node, align 8, !dbg !3242
  %bb4 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %6, i64 0, i32 0, !dbg !3244
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb4, align 8, !dbg !3244
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !3230, metadata !DIExpression()), !dbg !3239
  %cmp = icmp eq %struct.basic_block_def* %7, null, !dbg !3245
  br i1 %cmp, label %if.else, label %if.then, !dbg !3246

if.then:                                          ; preds = %for.body
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 9, !dbg !3247
  %8 = load i32, i32* %index, align 8, !dbg !3247
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %8) #6, !dbg !3248
  br label %if.end, !dbg !3248

if.else:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %5, metadata !3223, metadata !DIExpression()), !dbg !3232
  %loop = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %6, i64 0, i32 1, !dbg !3249
  %9 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !3249
  %num7 = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 0, !dbg !3250
  %10 = load i32, i32* %num7, align 8, !dbg !3250
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %10) #6, !dbg !3251
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3252
  call void @llvm.dbg.value(metadata i32 0, metadata !3222, metadata !DIExpression()), !dbg !3232
  %idxprom15 = sext i32 %3 to i64, !dbg !3253
  br label %for.cond10, !dbg !3258

for.cond10:                                       ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ], !dbg !3259
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3222, metadata !DIExpression()), !dbg !3232
  %11 = load i32, i32* @cost_classes_num, align 4, !dbg !3260
  %12 = sext i32 %11 to i64, !dbg !3261
  %cmp11 = icmp slt i64 %indvars.iv, %12, !dbg !3261
  br i1 %cmp11, label %for.body12, label %for.end, !dbg !3262

for.body12:                                       ; preds = %for.cond10
  %13 = load i32*, i32** @cost_classes, align 8, !dbg !3263
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %indvars.iv, !dbg !3263
  %14 = load i32, i32* %arrayidx, align 4, !dbg !3263
  call void @llvm.dbg.value(metadata i32 %14, metadata !3229, metadata !DIExpression()), !dbg !3239
  %idxprom13 = sext i32 %14 to i64, !dbg !3264
  %15 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !3265
  %arrayidx16 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %15, i64 %idxprom15, !dbg !3265
  %16 = bitcast %struct.rtx_def** %arrayidx16 to i32**, !dbg !3265
  %17 = load i32*, i32** %16, align 8, !dbg !3265
  %bf.load = load i32, i32* %17, align 8, !dbg !3265
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3265
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3265
  %idxprom17 = zext i32 %bf.clear to i64, !dbg !3264
  %arrayidx18 = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %idxprom13, i64 %idxprom17, !dbg !3264
  %18 = load i8, i8* %arrayidx18, align 1, !dbg !3264
  %tobool19 = icmp eq i8 %18, 0, !dbg !3264
  br i1 %tobool19, label %for.inc, label %land.lhs.true, !dbg !3266

land.lhs.true:                                    ; preds = %for.body12
  %call25 = call zeroext i8 @invalid_mode_change_p(i32 %3, i32 %14, i32 %bf.clear) #6, !dbg !3267
  %tobool26 = icmp eq i8 %call25, 0, !dbg !3267
  br i1 %tobool26, label %if.then27, label %for.inc, !dbg !3268

if.then27:                                        ; preds = %land.lhs.true
  %arrayidx29 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom13, !dbg !3269
  %19 = load i8*, i8** %arrayidx29, align 8, !dbg !3269
  %20 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !3271
  %21 = load i32, i32* @struct_costs_size, align 4, !dbg !3271
  %mul = mul nsw i32 %4, %21, !dbg !3271
  %idx.ext = sext i32 %mul to i64, !dbg !3271
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 4, !dbg !3271
  %cost = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext, !dbg !3272
  %22 = bitcast i8* %cost to [1 x i32]*, !dbg !3272
  %arrayidx31 = getelementptr inbounds [1 x i32], [1 x i32]* %22, i64 0, i64 %indvars.iv, !dbg !3271
  %23 = load i32, i32* %arrayidx31, align 4, !dbg !3271
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %19, i32 %23) #6, !dbg !3273
  %24 = load i32, i32* @flag_ira_region, align 4, !dbg !3274
  %25 = add i32 %24, -1, !dbg !3276
  %26 = icmp ult i32 %25, 2, !dbg !3276
  br i1 %26, label %if.then37, label %for.inc, !dbg !3276

if.then37:                                        ; preds = %if.then27
  %27 = load i8*, i8** bitcast (%struct.costs** @total_allocno_costs to i8**), align 8, !dbg !3277
  %28 = load i32, i32* @struct_costs_size, align 4, !dbg !3277
  %mul38 = mul nsw i32 %4, %28, !dbg !3277
  %idx.ext39 = sext i32 %mul38 to i64, !dbg !3277
  %add.ptr40 = getelementptr inbounds i8, i8* %27, i64 4, !dbg !3277
  %cost41 = getelementptr inbounds i8, i8* %add.ptr40, i64 %idx.ext39, !dbg !3278
  %29 = bitcast i8* %cost41 to [1 x i32]*, !dbg !3278
  %arrayidx43 = getelementptr inbounds [1 x i32], [1 x i32]* %29, i64 0, i64 %indvars.iv, !dbg !3277
  %30 = load i32, i32* %arrayidx43, align 4, !dbg !3277
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %30) #6, !dbg !3279
  br label %for.inc, !dbg !3279

for.inc:                                          ; preds = %land.lhs.true, %for.body12, %if.then27, %if.then37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3280
  call void @llvm.dbg.value(metadata i32 undef, metadata !3222, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3232
  br label %for.cond10, !dbg !3281, !llvm.loop !3282

for.end:                                          ; preds = %for.cond10
  %31 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !3284
  %32 = load i32, i32* @struct_costs_size, align 4, !dbg !3284
  %mul47 = mul nsw i32 %4, %32, !dbg !3284
  %idx.ext48 = sext i32 %mul47 to i64, !dbg !3284
  %add.ptr49 = getelementptr inbounds i8, i8* %31, i64 %idx.ext48, !dbg !3284
  %mem_cost = bitcast i8* %add.ptr49 to i32*, !dbg !3285
  %33 = load i32, i32* %mem_cost, align 4, !dbg !3285
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %33) #6, !dbg !3286
  br label %for.cond, !dbg !3237, !llvm.loop !3287

for.end51:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3289
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3289
  ret void, !dbg !3289
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_pseudo_costs(%struct._IO_FILE* %f) unnamed_addr #5 !dbg !3290 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !3292, metadata !DIExpression()), !dbg !3296
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3297
  %call1 = tail call i32 @max_reg_num() #6, !dbg !3298
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3293, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3296
  %0 = sext i32 %call1 to i64, !dbg !3300
  br label %for.cond, !dbg !3300

for.cond:                                         ; preds = %for.inc33, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc33 ], [ %0, %entry ]
  %indvars.iv.next2 = add nsw i64 %indvars.iv1, -1, !dbg !3301
  call void @llvm.dbg.value(metadata i32 undef, metadata !3293, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3296
  %cmp = icmp sgt i64 %indvars.iv.next2, 52, !dbg !3302
  br i1 %cmp, label %for.body, label %for.end34, !dbg !3304

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !3305
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1, i64 %indvars.iv.next2, !dbg !3305
  %2 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !3305
  %cmp2 = icmp eq %struct.rtx_def* %2, null, !dbg !3308
  br i1 %cmp2, label %for.inc33, label %if.end, !dbg !3309

if.end:                                           ; preds = %for.body
  %3 = trunc i64 %indvars.iv.next2 to i32, !dbg !3310
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %3) #6, !dbg !3310
  call void @llvm.dbg.value(metadata i32 0, metadata !3294, metadata !DIExpression()), !dbg !3296
  br label %for.cond4, !dbg !3311

for.cond4:                                        ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ], !dbg !3313
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3294, metadata !DIExpression()), !dbg !3296
  %4 = load i32, i32* @cost_classes_num, align 4, !dbg !3314
  %5 = sext i32 %4 to i64, !dbg !3316
  %cmp5 = icmp slt i64 %indvars.iv, %5, !dbg !3316
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !3317

for.body6:                                        ; preds = %for.cond4
  %6 = load i32*, i32** @cost_classes, align 8, !dbg !3318
  %arrayidx8 = getelementptr inbounds i32, i32* %6, i64 %indvars.iv, !dbg !3318
  %7 = load i32, i32* %arrayidx8, align 4, !dbg !3318
  call void @llvm.dbg.value(metadata i32 %7, metadata !3295, metadata !DIExpression()), !dbg !3296
  %idxprom9 = sext i32 %7 to i64, !dbg !3320
  %8 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !3322
  %arrayidx12 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %8, i64 %indvars.iv.next2, !dbg !3322
  %9 = bitcast %struct.rtx_def** %arrayidx12 to i32**, !dbg !3322
  %10 = load i32*, i32** %9, align 8, !dbg !3322
  %bf.load = load i32, i32* %10, align 8, !dbg !3322
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3322
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3322
  %idxprom13 = zext i32 %bf.clear to i64, !dbg !3320
  %arrayidx14 = getelementptr inbounds [27 x [87 x i8]], [27 x [87 x i8]]* @contains_reg_of_mode, i64 0, i64 %idxprom9, i64 %idxprom13, !dbg !3320
  %11 = load i8, i8* %arrayidx14, align 1, !dbg !3320
  %tobool = icmp eq i8 %11, 0, !dbg !3320
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !3323

land.lhs.true:                                    ; preds = %for.body6
  %12 = trunc i64 %indvars.iv.next2 to i32, !dbg !3324
  %call20 = tail call zeroext i8 @invalid_mode_change_p(i32 %12, i32 %7, i32 %bf.clear) #6, !dbg !3324
  %tobool21 = icmp eq i8 %call20, 0, !dbg !3324
  br i1 %tobool21, label %if.then22, label %for.inc, !dbg !3325

if.then22:                                        ; preds = %land.lhs.true
  %arrayidx24 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom9, !dbg !3326
  %13 = load i8*, i8** %arrayidx24, align 8, !dbg !3326
  %14 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !3327
  %15 = load i32, i32* @struct_costs_size, align 4, !dbg !3327
  %16 = sext i32 %15 to i64, !dbg !3327
  %17 = mul nsw i64 %indvars.iv.next2, %16, !dbg !3327
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 4, !dbg !3327
  %cost = getelementptr inbounds i8, i8* %add.ptr, i64 %17, !dbg !3328
  %18 = bitcast i8* %cost to [1 x i32]*, !dbg !3328
  %arrayidx26 = getelementptr inbounds [1 x i32], [1 x i32]* %18, i64 0, i64 %indvars.iv, !dbg !3327
  %19 = load i32, i32* %arrayidx26, align 4, !dbg !3327
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %13, i32 %19) #6, !dbg !3329
  br label %for.inc, !dbg !3329

for.inc:                                          ; preds = %land.lhs.true, %for.body6, %if.then22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3330
  call void @llvm.dbg.value(metadata i32 undef, metadata !3294, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3296
  br label %for.cond4, !dbg !3331, !llvm.loop !3332

for.end:                                          ; preds = %for.cond4
  %20 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !3334
  %21 = load i32, i32* @struct_costs_size, align 4, !dbg !3334
  %22 = sext i32 %21 to i64, !dbg !3334
  %23 = mul nsw i64 %indvars.iv.next2, %22, !dbg !3334
  %add.ptr31 = getelementptr inbounds i8, i8* %20, i64 %23, !dbg !3334
  %mem_cost = bitcast i8* %add.ptr31 to i32*, !dbg !3335
  %24 = load i32, i32* %mem_cost, align 4, !dbg !3335
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %24) #6, !dbg !3336
  br label %for.inc33, !dbg !3337

for.inc33:                                        ; preds = %for.body, %for.end
  call void @llvm.dbg.value(metadata i32 undef, metadata !3293, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3296
  br label %for.cond, !dbg !3338, !llvm.loop !3339

for.end34:                                        ; preds = %for.cond
  ret void, !dbg !3341
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @scan_one_insn(%struct.rtx_def* %insn) unnamed_addr #5 !dbg !3342 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3346, metadata !DIExpression()), !dbg !3364
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3365
  %bf.load = load i32, i32* %0, align 8, !dbg !3365
  %bf.clear = and i32 %bf.load, 65535, !dbg !3365
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3365
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3365

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !3365
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4, !dbg !3365

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !3365
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false8, !dbg !3365

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !3365
  br i1 %cmp11, label %land.lhs.true, label %cleanup, !dbg !3365

land.lhs.true:                                    ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %cmp14 = icmp eq i32 %bf.clear, 7, !dbg !3365
  br i1 %cmp14, label %cleanup, label %if.end, !dbg !3367

if.end:                                           ; preds = %land.lhs.true
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3368
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3368
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !3368
  %3 = load i32*, i32** %2, align 8, !dbg !3368
  %bf.load15 = load i32, i32* %3, align 8, !dbg !3368
  call void @llvm.dbg.value(metadata i32 %bf.load15, metadata !3347, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !3364
  %trunc = trunc i32 %bf.load15 to i16, !dbg !3369
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !3369
  switch i16 %trunc, label %if.end27 [
    i16 24, label %cleanup
    i16 25, label %cleanup
    i16 16, label %cleanup
    i16 20, label %cleanup
    i16 21, label %cleanup
  ], !dbg !3369

if.end27:                                         ; preds = %if.end
  br i1 %cmp, label %cond.true, label %lor.lhs.false31, !dbg !3371

lor.lhs.false31:                                  ; preds = %if.end27
  br i1 false, label %lor.lhs.false31.cond.true_crit_edge, label %lor.lhs.false35, !dbg !3371

lor.lhs.false31.cond.true_crit_edge:              ; preds = %lor.lhs.false31
  br label %cond.true, !dbg !3371

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %cmp38 = icmp eq i32 %bf.clear, 9, !dbg !3371
  br i1 %cmp38, label %cond.true, label %lor.lhs.false39, !dbg !3371

lor.lhs.false39:                                  ; preds = %lor.lhs.false35
  %cmp42 = icmp eq i32 %bf.clear, 10, !dbg !3371
  br i1 %cmp42, label %cond.true, label %cond.end60, !dbg !3371

cond.true:                                        ; preds = %lor.lhs.false31.cond.true_crit_edge, %lor.lhs.false39, %lor.lhs.false35, %if.end27
  %bf.clear48 = and i32 %bf.load15, 65535, !dbg !3371
  %cmp49 = icmp eq i32 %bf.clear48, 23, !dbg !3371
  br i1 %cmp49, label %cond.end60, label %cond.false, !dbg !3371

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %4) #6, !dbg !3371
  br label %cond.end60, !dbg !3371

cond.end60:                                       ; preds = %lor.lhs.false39, %cond.false, %cond.true
  %cond61 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], [ null, %lor.lhs.false39 ], !dbg !3371
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond61, metadata !3348, metadata !DIExpression()), !dbg !3364
  tail call void @extract_insn(%struct.rtx_def* %insn) #6, !dbg !3372
  %cmp62 = icmp eq %struct.rtx_def* %cond61, null, !dbg !3373
  br i1 %cmp62, label %if.end133, label %land.lhs.true63, !dbg !3374

land.lhs.true63:                                  ; preds = %cond.end60
  %arrayidx66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond61, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3375
  %5 = bitcast %union.rtunion_def* %arrayidx66 to i32**, !dbg !3375
  %6 = load i32*, i32** %5, align 8, !dbg !3375
  %bf.load68 = load i32, i32* %6, align 8, !dbg !3375
  %bf.clear69 = and i32 %bf.load68, 65535, !dbg !3375
  %cmp70 = icmp eq i32 %bf.clear69, 37, !dbg !3375
  br i1 %cmp70, label %land.lhs.true71, label %if.end133, !dbg !3376

land.lhs.true71:                                  ; preds = %land.lhs.true63
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond61, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3377
  %8 = bitcast %union.rtunion_def* %7 to i32**, !dbg !3377
  %9 = load i32*, i32** %8, align 8, !dbg !3377
  %bf.load76 = load i32, i32* %9, align 8, !dbg !3377
  %bf.clear77 = and i32 %bf.load76, 65535, !dbg !3377
  %cmp78 = icmp eq i32 %bf.clear77, 43, !dbg !3377
  br i1 %cmp78, label %land.lhs.true79, label %if.end133, !dbg !3378

land.lhs.true79:                                  ; preds = %land.lhs.true71
  %call80 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 3, %struct.rtx_def* null) #6, !dbg !3379
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call80, metadata !3349, metadata !DIExpression()), !dbg !3364
  %cmp81 = icmp eq %struct.rtx_def* %call80, null, !dbg !3380
  br i1 %cmp81, label %if.end133, label %land.lhs.true82, !dbg !3381

land.lhs.true82:                                  ; preds = %land.lhs.true79
  %arrayidx85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call80, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3382
  %10 = bitcast %union.rtunion_def* %arrayidx85 to i32**, !dbg !3382
  %11 = load i32*, i32** %10, align 8, !dbg !3382
  %bf.load87 = load i32, i32* %11, align 8, !dbg !3382
  %bf.clear88 = and i32 %bf.load87, 65535, !dbg !3382
  %cmp89 = icmp eq i32 %bf.clear88, 43, !dbg !3382
  br i1 %cmp89, label %if.then90, label %if.end133, !dbg !3383

if.then90:                                        ; preds = %land.lhs.true82
  call void @llvm.dbg.value(metadata i32 13, metadata !3352, metadata !DIExpression()), !dbg !3384
  %rt_rtx94 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**, !dbg !3385
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx94, align 8, !dbg !3385
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !3355, metadata !DIExpression()), !dbg !3384
  %.b1 = load i1, i1* @allocno_p, align 1, !dbg !3386
  br i1 %.b1, label %cond.true95, label %cond.false99, !dbg !3386

cond.true95:                                      ; preds = %if.then90
  %13 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3386
  %call96 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %12) #7, !dbg !3386
  %idxprom = zext i32 %call96 to i64, !dbg !3386
  %arrayidx97 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %13, i64 %idxprom, !dbg !3386
  %14 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx97, align 8, !dbg !3386
  %num98 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %14, i64 0, i32 0, !dbg !3386
  %15 = load i32, i32* %num98, align 8, !dbg !3386
  br label %cond.end101, !dbg !3386

cond.false99:                                     ; preds = %if.then90
  %call100 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %12) #7, !dbg !3386
  br label %cond.end101, !dbg !3386

cond.end101:                                      ; preds = %cond.false99, %cond.true95
  %cond102 = phi i32 [ %15, %cond.true95 ], [ %call100, %cond.false99 ], !dbg !3386
  call void @llvm.dbg.value(metadata i32 %cond102, metadata !3356, metadata !DIExpression()), !dbg !3384
  %16 = load i32*, i32** @pref, align 8, !dbg !3387
  %tobool103 = icmp eq i32* %16, null, !dbg !3387
  br i1 %tobool103, label %if.end107, label %if.then104, !dbg !3389

if.then104:                                       ; preds = %cond.end101
  %idxprom105 = sext i32 %cond102 to i64, !dbg !3390
  %arrayidx106 = getelementptr inbounds i32, i32* %16, i64 %idxprom105, !dbg !3390
  %17 = load i32, i32* %arrayidx106, align 4, !dbg !3390
  call void @llvm.dbg.value(metadata i32 %17, metadata !3352, metadata !DIExpression()), !dbg !3384
  %phitmp = zext i32 %17 to i64, !dbg !3391
  br label %if.end107, !dbg !3391

if.end107:                                        ; preds = %cond.end101, %if.then104
  %cl.0 = phi i64 [ %phitmp, %if.then104 ], [ 13, %cond.end101 ]
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 0, !dbg !3392
  %bf.load108 = load i32, i32* %18, align 8, !dbg !3392
  %bf.lshr = lshr i32 %bf.load108, 16, !dbg !3392
  %bf.clear109 = and i32 %bf.lshr, 255, !dbg !3392
  %idxprom110 = zext i32 %bf.clear109 to i64, !dbg !3393
  %arrayidx114 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom110, i64 %cl.0, i64 1, !dbg !3393
  %19 = load i16, i16* %arrayidx114, align 2, !dbg !3393
  %conv115 = sext i16 %19 to i32, !dbg !3393
  %20 = load i32, i32* @frequency, align 4, !dbg !3394
  %mul = mul nsw i32 %20, %conv115, !dbg !3395
  %21 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !3396
  %22 = load i32, i32* @struct_costs_size, align 4, !dbg !3396
  %mul116 = mul nsw i32 %cond102, %22, !dbg !3396
  %idx.ext = sext i32 %mul116 to i64, !dbg !3396
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext, !dbg !3396
  %mem_cost = bitcast i8* %add.ptr to i32*, !dbg !3397
  %23 = load i32, i32* %mem_cost, align 4, !dbg !3398
  %sub = sub nsw i32 %23, %mul, !dbg !3398
  store i32 %sub, i32* %mem_cost, align 4, !dbg !3398
  %24 = load i32*, i32** %8, align 8, !dbg !3399
  %bf.load121 = load i32, i32* %24, align 8, !dbg !3399
  %bf.lshr122 = lshr i32 %bf.load121, 16, !dbg !3399
  %bf.clear123 = and i32 %bf.lshr122, 255, !dbg !3399
  %u128 = getelementptr inbounds i32, i32* %24, i64 2, !dbg !3400
  %rt_rtx131 = bitcast i32* %u128 to %struct.rtx_def**, !dbg !3400
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx131, align 8, !dbg !3400
  %26 = load i32, i32* @frequency, align 4, !dbg !3401
  %mul132 = shl nsw i32 %26, 1, !dbg !3402
  tail call fastcc void @record_address_regs(i32 %bf.clear123, %struct.rtx_def* %25, i32 0, i32 43, i32 38, i32 %mul132) #7, !dbg !3403
  br label %if.end133, !dbg !3404

if.end133:                                        ; preds = %land.lhs.true79, %cond.end60, %if.end107, %land.lhs.true82, %land.lhs.true71, %land.lhs.true63
  %27 = load i32*, i32** @pref, align 8, !dbg !3405
  tail call fastcc void @record_operand_costs(%struct.rtx_def* %insn, %struct.costs** getelementptr inbounds ([30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 0), i32* %27) #7, !dbg !3406
  call void @llvm.dbg.value(metadata i32 0, metadata !3350, metadata !DIExpression()), !dbg !3364
  br label %for.cond, !dbg !3407

for.cond:                                         ; preds = %for.inc180, %if.end133
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc180 ], [ 0, %if.end133 ], !dbg !3408
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3350, metadata !DIExpression()), !dbg !3364
  %28 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3409
  %29 = sext i8 %28 to i64, !dbg !3410
  %cmp135 = icmp slt i64 %indvars.iv2, %29, !dbg !3410
  br i1 %cmp135, label %for.body, label %cleanup.loopexit, !dbg !3411

for.body:                                         ; preds = %for.cond
  %arrayidx138 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv2, !dbg !3412
  %30 = bitcast %struct.rtx_def** %arrayidx138 to i32**, !dbg !3412
  %31 = load i32*, i32** %30, align 8, !dbg !3412
  %bf.load139 = load i32, i32* %31, align 8, !dbg !3412
  %bf.clear140 = and i32 %bf.load139, 65535, !dbg !3412
  %cmp141 = icmp eq i32 %bf.clear140, 37, !dbg !3412
  br i1 %cmp141, label %land.lhs.true143, label %for.inc180, !dbg !3413

land.lhs.true143:                                 ; preds = %for.body
  %32 = bitcast i32* %31 to %struct.rtx_def*, !dbg !3413
  %call146 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %32) #7, !dbg !3414
  %cmp147 = icmp ugt i32 %call146, 52, !dbg !3415
  br i1 %cmp147, label %if.then149, label %for.inc180, !dbg !3416

if.then149:                                       ; preds = %land.lhs.true143
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx138, align 8, !dbg !3417
  %call152 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %33) #7, !dbg !3417
  call void @llvm.dbg.value(metadata i32 %call152, metadata !3357, metadata !DIExpression()), !dbg !3418
  %34 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !3419
  %.b = load i1, i1* @allocno_p, align 1, !dbg !3419
  br i1 %.b, label %cond.true155, label %cond.end160, !dbg !3419

cond.true155:                                     ; preds = %if.then149
  %35 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3419
  %idxprom156 = sext i32 %call152 to i64, !dbg !3419
  %arrayidx157 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %35, i64 %idxprom156, !dbg !3419
  %36 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx157, align 8, !dbg !3419
  %num158 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %36, i64 0, i32 0, !dbg !3419
  %37 = load i32, i32* %num158, align 8, !dbg !3419
  br label %cond.end160, !dbg !3419

cond.end160:                                      ; preds = %if.then149, %cond.true155
  %cond161 = phi i32 [ %37, %cond.true155 ], [ %call152, %if.then149 ], !dbg !3419
  %38 = load i32, i32* @struct_costs_size, align 4, !dbg !3419
  %mul162 = mul nsw i32 %cond161, %38, !dbg !3419
  %idx.ext163 = sext i32 %mul162 to i64, !dbg !3419
  %add.ptr164 = getelementptr inbounds i8, i8* %34, i64 %idx.ext163, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %add.ptr164, metadata !3362, metadata !DIExpression()), !dbg !3418
  %arrayidx166 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 %indvars.iv2, !dbg !3420
  %39 = load %struct.costs*, %struct.costs** %arrayidx166, align 8, !dbg !3420
  call void @llvm.dbg.value(metadata %struct.costs* %39, metadata !3363, metadata !DIExpression()), !dbg !3418
  %mem_cost167 = getelementptr inbounds %struct.costs, %struct.costs* %39, i64 0, i32 0, !dbg !3421
  %40 = load i32, i32* %mem_cost167, align 4, !dbg !3421
  %mem_cost168 = bitcast i8* %add.ptr164 to i32*, !dbg !3422
  %41 = load i32, i32* %mem_cost168, align 4, !dbg !3423
  %add = add nsw i32 %41, %40, !dbg !3423
  store i32 %add, i32* %mem_cost168, align 4, !dbg !3423
  call void @llvm.dbg.value(metadata i32 0, metadata !3351, metadata !DIExpression()), !dbg !3364
  %cost175 = getelementptr inbounds i8, i8* %add.ptr164, i64 4, !dbg !3424
  %42 = bitcast i8* %cost175 to [1 x i32]*, !dbg !3424
  br label %for.cond169, !dbg !3427

for.cond169:                                      ; preds = %for.body172, %cond.end160
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body172 ], [ 0, %cond.end160 ], !dbg !3428
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3351, metadata !DIExpression()), !dbg !3364
  %43 = load i32, i32* @cost_classes_num, align 4, !dbg !3429
  %44 = sext i32 %43 to i64, !dbg !3430
  %cmp170 = icmp slt i64 %indvars.iv, %44, !dbg !3430
  br i1 %cmp170, label %for.body172, label %for.inc180.loopexit, !dbg !3431

for.body172:                                      ; preds = %for.cond169
  %arrayidx174 = getelementptr inbounds %struct.costs, %struct.costs* %39, i64 0, i32 1, i64 %indvars.iv, !dbg !3432
  %45 = load i32, i32* %arrayidx174, align 4, !dbg !3432
  %arrayidx177 = getelementptr inbounds [1 x i32], [1 x i32]* %42, i64 0, i64 %indvars.iv, !dbg !3433
  %46 = load i32, i32* %arrayidx177, align 4, !dbg !3434
  %add178 = add nsw i32 %46, %45, !dbg !3434
  store i32 %add178, i32* %arrayidx177, align 4, !dbg !3434
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3435
  call void @llvm.dbg.value(metadata i32 undef, metadata !3351, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3364
  br label %for.cond169, !dbg !3436, !llvm.loop !3437

for.inc180.loopexit:                              ; preds = %for.cond169
  br label %for.inc180, !dbg !3439

for.inc180:                                       ; preds = %for.inc180.loopexit, %for.body, %land.lhs.true143
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3439
  call void @llvm.dbg.value(metadata i32 undef, metadata !3350, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3364
  br label %for.cond, !dbg !3440, !llvm.loop !3441

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3443

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %if.end, %if.end, %if.end, %if.end, %lor.lhs.false8, %land.lhs.true
  ret %struct.rtx_def* %insn, !dbg !3443
}

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @extract_insn(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3444 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3451, metadata !DIExpression()), !dbg !3452
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3453
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3453
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3453
  ret i32 %0, !dbg !3454
}

; Function Attrs: nounwind uwtable
define internal fastcc void @record_address_regs(i32 %mode, %struct.rtx_def* %x, i32 %context, i32 %outer_code, i32 %index_code, i32 %scale) unnamed_addr #5 !dbg !3455 {
entry:
  br label %tailrecurse, !dbg !3480

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %x.tr = phi %struct.rtx_def* [ %x, %entry ], [ %x.tr.be, %tailrecurse.backedge ]
  %context.tr = phi i32 [ %context, %entry ], [ %context.tr.be, %tailrecurse.backedge ]
  %outer_code.tr = phi i32 [ %outer_code, %entry ], [ %outer_code.tr.be, %tailrecurse.backedge ]
  %index_code.tr = phi i32 [ %index_code, %entry ], [ %index_code.tr.be, %tailrecurse.backedge ]
  %scale.tr = phi i32 [ %scale, %entry ], [ %scale.tr.be, %tailrecurse.backedge ]
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3459, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr, metadata !3460, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %context.tr, metadata !3461, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %outer_code.tr, metadata !3462, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %index_code.tr, metadata !3463, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %scale.tr, metadata !3464, metadata !DIExpression()), !dbg !3481
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 0, !dbg !3482
  %bf.load = load i32, i32* %0, align 8, !dbg !3482
  %bf.clear = and i32 %bf.load, 65535, !dbg !3482
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3465, metadata !DIExpression()), !dbg !3481
  %cmp = icmp eq i32 %context.tr, 1, !dbg !3483
  br i1 %cmp, label %if.end, label %if.else, !dbg !3485

if.else:                                          ; preds = %tailrecurse
  %call = tail call fastcc i32 @base_reg_class(i32 %mode, i32 %outer_code.tr, i32 %index_code.tr) #7, !dbg !3486
  call void @llvm.dbg.value(metadata i32 13, metadata !3466, metadata !DIExpression()), !dbg !3481
  br label %if.end

if.end:                                           ; preds = %tailrecurse, %if.else
  %rclass.0 = phi i32 [ 13, %if.else ], [ 11, %tailrecurse ], !dbg !3487
  call void @llvm.dbg.value(metadata i32 %rclass.0, metadata !3466, metadata !DIExpression()), !dbg !3481
  %trunc = trunc i32 %bf.load to i16, !dbg !3488
  switch i16 %trunc, label %sw.default [
    i16 30, label %cleanup.cont232.loopexit6
    i16 35, label %cleanup.cont232.loopexit6
    i16 46, label %cleanup.cont232.loopexit6
    i16 36, label %cleanup.cont232.loopexit6
    i16 45, label %cleanup.cont232.loopexit6
    i16 44, label %cleanup.cont232.loopexit6
    i16 49, label %sw.bb1
    i16 79, label %sw.bb121
    i16 78, label %sw.bb121
    i16 77, label %sw.bb159
    i16 75, label %sw.bb159
    i16 76, label %sw.bb159
    i16 74, label %sw.bb159
    i16 37, label %sw.bb165
  ], !dbg !3488

sw.bb1:                                           ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3489
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3489
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3489
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3467, metadata !DIExpression()), !dbg !3490
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3491
  %rt_rtx5 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3491
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx5, align 8, !dbg !3491
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3470, metadata !DIExpression()), !dbg !3490
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3492
  %bf.load6 = load i32, i32* %4, align 8, !dbg !3492
  %bf.clear7 = and i32 %bf.load6, 65535, !dbg !3492
  call void @llvm.dbg.value(metadata i32 %bf.clear7, metadata !3471, metadata !DIExpression()), !dbg !3490
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !3493
  %bf.load8 = load i32, i32* %5, align 8, !dbg !3493
  %bf.clear9 = and i32 %bf.load8, 65535, !dbg !3493
  call void @llvm.dbg.value(metadata i32 %bf.clear9, metadata !3472, metadata !DIExpression()), !dbg !3490
  %cmp10 = icmp eq i32 %bf.clear7, 39, !dbg !3494
  br i1 %cmp10, label %if.then11, label %if.end18, !dbg !3496

if.then11:                                        ; preds = %sw.bb1
  %arrayidx14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3497
  %rt_rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**, !dbg !3497
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx15, align 8, !dbg !3497
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3467, metadata !DIExpression()), !dbg !3490
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !3498
  %bf.load16 = load i32, i32* %7, align 8, !dbg !3498
  %bf.clear17 = and i32 %bf.load16, 65535, !dbg !3498
  call void @llvm.dbg.value(metadata i32 %bf.clear17, metadata !3471, metadata !DIExpression()), !dbg !3490
  br label %if.end18, !dbg !3499

if.end18:                                         ; preds = %if.then11, %sw.bb1
  %arg0.0 = phi %struct.rtx_def* [ %6, %if.then11 ], [ %1, %sw.bb1 ], !dbg !3490
  %code0.0 = phi i32 [ %bf.clear17, %if.then11 ], [ %bf.clear7, %sw.bb1 ], !dbg !3490
  call void @llvm.dbg.value(metadata i32 %code0.0, metadata !3471, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg0.0, metadata !3467, metadata !DIExpression()), !dbg !3490
  %cmp19 = icmp eq i32 %bf.clear9, 39, !dbg !3500
  br i1 %cmp19, label %if.then20, label %if.end27, !dbg !3502

if.then20:                                        ; preds = %if.end18
  %arrayidx23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3503
  %rt_rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**, !dbg !3503
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx24, align 8, !dbg !3503
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !3470, metadata !DIExpression()), !dbg !3490
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !3504
  %bf.load25 = load i32, i32* %9, align 8, !dbg !3504
  %bf.clear26 = and i32 %bf.load25, 65535, !dbg !3504
  call void @llvm.dbg.value(metadata i32 %bf.clear26, metadata !3472, metadata !DIExpression()), !dbg !3490
  br label %if.end27, !dbg !3505

if.end27:                                         ; preds = %if.then20, %if.end18
  %arg1.0 = phi %struct.rtx_def* [ %8, %if.then20 ], [ %3, %if.end18 ], !dbg !3490
  %code1.0 = phi i32 [ %bf.clear26, %if.then20 ], [ %bf.clear9, %if.end18 ], !dbg !3490
  call void @llvm.dbg.value(metadata i32 %code1.0, metadata !3472, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata %struct.rtx_def* %arg1.0, metadata !3470, metadata !DIExpression()), !dbg !3490
  %call28 = tail call fastcc i32 @base_reg_class(i32 0, i32 49, i32 38) #7, !dbg !3506
  %trunc4 = trunc i32 %code1.0 to i16, !dbg !3509
  switch i16 %trunc4, label %if.else48 [
    i16 30, label %if.then40
    i16 32, label %if.then40
    i16 45, label %if.then47
    i16 35, label %if.then47
    i16 44, label %if.then47
  ], !dbg !3509

if.then40:                                        ; preds = %if.end27, %if.end27
  br label %tailrecurse.backedge, !dbg !3511

if.then47:                                        ; preds = %if.end27, %if.end27, %if.end27
  br label %tailrecurse.backedge, !dbg !3512

if.else48:                                        ; preds = %if.end27
  %cmp49 = icmp eq i32 %code0.0, 37, !dbg !3514
  %cmp50 = icmp eq i32 %code1.0, 37, !dbg !3516
  %or.cond = and i1 %cmp49, %cmp50, !dbg !3517
  br i1 %or.cond, label %land.lhs.true51, label %if.else64, !dbg !3517

land.lhs.true51:                                  ; preds = %if.else48
  %call52 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %arg0.0) #7, !dbg !3518
  %cmp53 = icmp ult i32 %call52, 53, !dbg !3519
  br i1 %cmp53, label %land.lhs.true54, label %if.else64, !dbg !3520

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %call55 = tail call fastcc zeroext i8 @ok_for_base_p_nonstrict(%struct.rtx_def* %arg0.0, i32 %mode, i32 49, i32 37) #7, !dbg !3521
  %tobool = icmp eq i8 %call55, 0, !dbg !3521
  br i1 %tobool, label %lor.lhs.false56, label %if.then60, !dbg !3522

lor.lhs.false56:                                  ; preds = %land.lhs.true54
  %call57 = tail call fastcc zeroext i8 @ok_for_index_p_nonstrict(%struct.rtx_def* %arg0.0) #7, !dbg !3523
  %tobool59 = icmp eq i8 %call57, 0, !dbg !3523
  br i1 %tobool59, label %if.else64, label %if.then60, !dbg !3524

if.then60:                                        ; preds = %lor.lhs.false56, %land.lhs.true54
  %call61 = tail call fastcc zeroext i8 @ok_for_base_p_nonstrict(%struct.rtx_def* %arg0.0, i32 %mode, i32 49, i32 37) #7, !dbg !3525
  %tobool63 = icmp ne i8 %call61, 0, !dbg !3525
  %cond = zext i1 %tobool63 to i32, !dbg !3525
  br label %tailrecurse.backedge, !dbg !3526

if.else64:                                        ; preds = %lor.lhs.false56, %land.lhs.true51, %if.else48
  br i1 %or.cond, label %land.lhs.true70, label %if.else87, !dbg !3527

land.lhs.true70:                                  ; preds = %if.else64
  %call71 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %arg1.0) #7, !dbg !3529
  %cmp72 = icmp ult i32 %call71, 53, !dbg !3530
  br i1 %cmp72, label %land.lhs.true74, label %if.else87, !dbg !3531

land.lhs.true74:                                  ; preds = %land.lhs.true70
  %call75 = tail call fastcc zeroext i8 @ok_for_base_p_nonstrict(%struct.rtx_def* %arg1.0, i32 %mode, i32 49, i32 37) #7, !dbg !3532
  %tobool77 = icmp eq i8 %call75, 0, !dbg !3532
  br i1 %tobool77, label %lor.lhs.false78, label %if.then82, !dbg !3533

lor.lhs.false78:                                  ; preds = %land.lhs.true74
  %call79 = tail call fastcc zeroext i8 @ok_for_index_p_nonstrict(%struct.rtx_def* %arg1.0) #7, !dbg !3534
  %tobool81 = icmp eq i8 %call79, 0, !dbg !3534
  br i1 %tobool81, label %if.else87, label %if.then82, !dbg !3535

if.then82:                                        ; preds = %lor.lhs.false78, %land.lhs.true74
  %call83 = tail call fastcc zeroext i8 @ok_for_base_p_nonstrict(%struct.rtx_def* %arg1.0, i32 %mode, i32 49, i32 37) #7, !dbg !3536
  %tobool85 = icmp ne i8 %call83, 0, !dbg !3536
  %cond86 = zext i1 %tobool85 to i32, !dbg !3536
  br label %tailrecurse.backedge, !dbg !3537

if.else87:                                        ; preds = %lor.lhs.false78, %land.lhs.true70, %if.else64
  br i1 %cmp49, label %land.lhs.true90, label %lor.lhs.false94, !dbg !3538

land.lhs.true90:                                  ; preds = %if.else87
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %arg0.0, i64 0, i32 0, !dbg !3540
  %bf.load91 = load i32, i32* %10, align 8, !dbg !3540
  %bf.clear92 = and i32 %bf.load91, 1073741824, !dbg !3540
  %tobool93 = icmp ne i32 %bf.clear92, 0, !dbg !3540
  %cmp95 = icmp eq i32 %code1.0, 52, !dbg !3541
  %or.cond2 = or i1 %tobool93, %cmp95, !dbg !3542
  br i1 %or.cond2, label %if.then97, label %if.else98, !dbg !3542

lor.lhs.false94:                                  ; preds = %if.else87
  switch i16 %trunc4, label %lor.lhs.false106 [
    i16 52, label %if.then97
    i16 37, label %land.lhs.true101
  ], !dbg !3543

if.then97:                                        ; preds = %lor.lhs.false94, %land.lhs.true90
  tail call fastcc void @record_address_regs(i32 %mode, %struct.rtx_def* %arg0.0, i32 0, i32 49, i32 %code1.0, i32 %scale.tr) #7, !dbg !3544
  br label %tailrecurse.backedge, !dbg !3546

if.else98:                                        ; preds = %land.lhs.true90
  br i1 %cmp50, label %land.lhs.true101, label %lor.lhs.false106, !dbg !3547

land.lhs.true101:                                 ; preds = %lor.lhs.false94, %if.else98
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %arg1.0, i64 0, i32 0, !dbg !3549
  %bf.load102 = load i32, i32* %11, align 8, !dbg !3549
  %bf.clear104 = and i32 %bf.load102, 1073741824, !dbg !3549
  %tobool105 = icmp ne i32 %bf.clear104, 0, !dbg !3549
  %cmp107 = icmp eq i32 %code0.0, 52, !dbg !3550
  %or.cond3 = or i1 %tobool105, %cmp107, !dbg !3551
  br i1 %or.cond3, label %if.then109, label %if.else110, !dbg !3551

lor.lhs.false106:                                 ; preds = %lor.lhs.false94, %if.else98
  %cmp107.old = icmp eq i32 %code0.0, 52, !dbg !3550
  br i1 %cmp107.old, label %if.then109, label %if.else110, !dbg !3552

if.then109:                                       ; preds = %lor.lhs.false106, %land.lhs.true101
  tail call fastcc void @record_address_regs(i32 %mode, %struct.rtx_def* %arg0.0, i32 1, i32 49, i32 %code1.0, i32 %scale.tr) #7, !dbg !3553
  br label %tailrecurse.backedge, !dbg !3555

if.else110:                                       ; preds = %land.lhs.true101, %lor.lhs.false106
  %div = sdiv i32 %scale.tr, 2, !dbg !3556
  tail call fastcc void @record_address_regs(i32 %mode, %struct.rtx_def* %arg0.0, i32 0, i32 49, i32 %code1.0, i32 %div) #7, !dbg !3558
  tail call fastcc void @record_address_regs(i32 %mode, %struct.rtx_def* %arg0.0, i32 1, i32 49, i32 %code1.0, i32 %div) #7, !dbg !3559
  tail call fastcc void @record_address_regs(i32 %mode, %struct.rtx_def* %arg1.0, i32 0, i32 49, i32 %code0.0, i32 %div) #7, !dbg !3560
  br label %tailrecurse.backedge, !dbg !3561

sw.bb121:                                         ; preds = %if.end, %if.end
  %arrayidx124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3562
  %rt_rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**, !dbg !3562
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx125, align 8, !dbg !3562
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3563
  %rt_rtx129 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**, !dbg !3563
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx129, align 8, !dbg !3563
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3563
  %16 = bitcast %union.rtunion_def* %15 to i32**, !dbg !3563
  %17 = load i32*, i32** %16, align 8, !dbg !3563
  %bf.load134 = load i32, i32* %17, align 8, !dbg !3563
  %bf.clear135 = and i32 %bf.load134, 65535, !dbg !3563
  %mul = shl nsw i32 %scale.tr, 1, !dbg !3564
  tail call fastcc void @record_address_regs(i32 %mode, %struct.rtx_def* %12, i32 0, i32 %bf.clear, i32 %bf.clear135, i32 %mul) #7, !dbg !3565
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx129, align 8, !dbg !3566
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3566
  %20 = bitcast %union.rtunion_def* %19 to i32**, !dbg !3566
  %21 = load i32*, i32** %20, align 8, !dbg !3566
  %bf.load144 = load i32, i32* %21, align 8, !dbg !3566
  %bf.clear145 = and i32 %bf.load144, 65535, !dbg !3566
  %cmp146 = icmp eq i32 %bf.clear145, 37, !dbg !3566
  br i1 %cmp146, label %if.then148, label %cleanup.cont232.loopexit6, !dbg !3568

if.then148:                                       ; preds = %sw.bb121
  %22 = bitcast i32* %21 to %struct.rtx_def*, !dbg !3568
  br label %tailrecurse.backedge, !dbg !3569

sw.bb159:                                         ; preds = %if.end, %if.end, %if.end, %if.end
  %arrayidx162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3570
  %rt_rtx163 = bitcast %union.rtunion_def* %arrayidx162 to %struct.rtx_def**, !dbg !3570
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx163, align 8, !dbg !3570
  %mul164 = shl nsw i32 %scale.tr, 1, !dbg !3571
  br label %tailrecurse.backedge, !dbg !3480

tailrecurse.backedge:                             ; preds = %sw.bb159, %if.then40, %if.then60, %if.then97, %if.else110, %if.then109, %if.then82, %if.then47, %if.then148
  %x.tr.be = phi %struct.rtx_def* [ %23, %sw.bb159 ], [ %arg0.0, %if.then40 ], [ %arg1.0, %if.then60 ], [ %arg1.0, %if.then97 ], [ %arg1.0, %if.else110 ], [ %arg1.0, %if.then109 ], [ %arg0.0, %if.then82 ], [ %arg0.0, %if.then47 ], [ %22, %if.then148 ]
  %context.tr.be = phi i32 [ 0, %sw.bb159 ], [ %context.tr, %if.then40 ], [ %cond, %if.then60 ], [ 1, %if.then97 ], [ 1, %if.else110 ], [ 0, %if.then109 ], [ %cond86, %if.then82 ], [ 1, %if.then47 ], [ 1, %if.then148 ]
  %outer_code.tr.be = phi i32 [ %bf.clear, %sw.bb159 ], [ 49, %if.then40 ], [ 49, %if.then60 ], [ 49, %if.then97 ], [ 49, %if.else110 ], [ 49, %if.then109 ], [ 49, %if.then82 ], [ 49, %if.then47 ], [ %bf.clear, %if.then148 ]
  %index_code.tr.be = phi i32 [ 38, %sw.bb159 ], [ %code1.0, %if.then40 ], [ 37, %if.then60 ], [ %code0.0, %if.then97 ], [ %code0.0, %if.else110 ], [ %code0.0, %if.then109 ], [ 37, %if.then82 ], [ %code1.0, %if.then47 ], [ 37, %if.then148 ]
  %scale.tr.be = phi i32 [ %mul164, %sw.bb159 ], [ %scale.tr, %if.then40 ], [ %scale.tr, %if.then60 ], [ %scale.tr, %if.then97 ], [ %div, %if.else110 ], [ %scale.tr, %if.then109 ], [ %scale.tr, %if.then82 ], [ %scale.tr, %if.then47 ], [ %mul, %if.then148 ]
  br label %tailrecurse, !dbg !3481

sw.bb165:                                         ; preds = %if.end
  %rclass.0.lcssa40 = phi i32 [ %rclass.0, %if.end ], !dbg !3487
  %x.tr.lcssa38 = phi %struct.rtx_def* [ %x.tr, %if.end ]
  %scale.tr.lcssa34 = phi i32 [ %scale.tr, %if.end ]
  call void @llvm.dbg.value(metadata i32 %rclass.0.lcssa40, metadata !3466, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa38, metadata !3460, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %scale.tr.lcssa34, metadata !3464, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %rclass.0.lcssa40, metadata !3466, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa38, metadata !3460, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %scale.tr.lcssa34, metadata !3464, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %rclass.0.lcssa40, metadata !3466, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa38, metadata !3460, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %scale.tr.lcssa34, metadata !3464, metadata !DIExpression()), !dbg !3481
  %call166 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.tr.lcssa38) #7, !dbg !3572
  %cmp167 = icmp ult i32 %call166, 53, !dbg !3574
  br i1 %cmp167, label %cleanup, label %if.end170, !dbg !3575

if.end170:                                        ; preds = %sw.bb165
  %.b17 = load i1, i1* @allocno_p, align 1, !dbg !3576
  br i1 %.b17, label %if.then172, label %if.end178, !dbg !3578

if.then172:                                       ; preds = %if.end170
  %24 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3579
  %call173 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.tr.lcssa38) #7, !dbg !3579
  %idxprom174 = zext i32 %call173 to i64, !dbg !3579
  %arrayidx175 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %24, i64 %idxprom174, !dbg !3579
  %25 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx175, align 8, !dbg !3579
  %bad_spill_p = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %25, i64 0, i32 31, !dbg !3579
  %bf.load176 = load i16, i16* %bad_spill_p, align 4, !dbg !3580
  %bf.set = or i16 %bf.load176, 64, !dbg !3580
  store i16 %bf.set, i16* %bad_spill_p, align 4, !dbg !3580
  %.b.pre = load i1, i1* @allocno_p, align 1, !dbg !3581
  br label %if.end178, !dbg !3579

if.end178:                                        ; preds = %if.end170, %if.then172
  %.b = phi i1 [ false, %if.end170 ], [ %.b.pre, %if.then172 ], !dbg !3581
  %26 = load i8*, i8** bitcast (%struct.costs** @costs to i8**), align 8, !dbg !3581
  br i1 %.b, label %cond.true, label %cond.false, !dbg !3581

cond.true:                                        ; preds = %if.end178
  %27 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !3581
  %call181 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.tr.lcssa38) #7, !dbg !3581
  %idxprom182 = zext i32 %call181 to i64, !dbg !3581
  %arrayidx183 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %27, i64 %idxprom182, !dbg !3581
  %28 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx183, align 8, !dbg !3581
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %28, i64 0, i32 0, !dbg !3581
  %29 = load i32, i32* %num, align 8, !dbg !3581
  br label %cond.end, !dbg !3581

cond.false:                                       ; preds = %if.end178
  %call184 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x.tr.lcssa38) #7, !dbg !3581
  br label %cond.end, !dbg !3581

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond185 = phi i32 [ %29, %cond.true ], [ %call184, %cond.false ], !dbg !3581
  %30 = load i32, i32* @struct_costs_size, align 4, !dbg !3581
  %mul186 = mul nsw i32 %cond185, %30, !dbg !3581
  %idx.ext = sext i32 %mul186 to i64, !dbg !3581
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3473, metadata !DIExpression()), !dbg !3582
  %idxprom187 = zext i32 %rclass.0.lcssa40 to i64, !dbg !3583
  %arrayidx189 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 16, i64 %idxprom187, i64 1, !dbg !3583
  %31 = load i16, i16* %arrayidx189, align 2, !dbg !3583
  %conv190 = sext i16 %31 to i32, !dbg !3583
  %mul191 = mul nsw i32 %scale.tr.lcssa34, %conv190, !dbg !3584
  %div192 = sdiv i32 %mul191, 2, !dbg !3585
  %mem_cost = bitcast i8* %add.ptr to i32*, !dbg !3586
  %32 = load i32, i32* %mem_cost, align 4, !dbg !3587
  %add = add nsw i32 %32, %div192, !dbg !3587
  store i32 %add, i32* %mem_cost, align 4, !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3476, metadata !DIExpression()), !dbg !3582
  %cost = getelementptr inbounds i8, i8* %add.ptr, i64 4, !dbg !3588
  %33 = bitcast i8* %cost to [1 x i32]*, !dbg !3588
  br label %for.cond, !dbg !3592

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body ], [ 0, %cond.end ], !dbg !3593
  call void @llvm.dbg.value(metadata i64 %indvars.iv29, metadata !3476, metadata !DIExpression()), !dbg !3582
  %34 = load i32, i32* @cost_classes_num, align 4, !dbg !3594
  %35 = sext i32 %34 to i64, !dbg !3595
  %cmp193 = icmp slt i64 %indvars.iv29, %35, !dbg !3595
  br i1 %cmp193, label %for.body, label %cleanup.loopexit, !dbg !3596

for.body:                                         ; preds = %for.cond
  %36 = load i32*, i32** @cost_classes, align 8, !dbg !3597
  %arrayidx196 = getelementptr inbounds i32, i32* %36, i64 %indvars.iv29, !dbg !3597
  %37 = load i32, i32* %arrayidx196, align 4, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %37, metadata !3475, metadata !DIExpression()), !dbg !3582
  %call197 = tail call fastcc i32 @ira_get_may_move_cost(i32 16, i32 %37, i32 %rclass.0.lcssa40, i8 zeroext 1) #7, !dbg !3598
  %mul198 = mul nsw i32 %call197, %scale.tr.lcssa34, !dbg !3599
  %div199 = sdiv i32 %mul198, 2, !dbg !3600
  %arrayidx201 = getelementptr inbounds [1 x i32], [1 x i32]* %33, i64 0, i64 %indvars.iv29, !dbg !3601
  %38 = load i32, i32* %arrayidx201, align 4, !dbg !3602
  %add202 = add nsw i32 %38, %div199, !dbg !3602
  store i32 %add202, i32* %arrayidx201, align 4, !dbg !3602
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i32 undef, metadata !3476, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3582
  br label %for.cond, !dbg !3604, !llvm.loop !3605

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %sw.bb165
  ret void

sw.default:                                       ; preds = %if.end
  %x.tr.lcssa = phi %struct.rtx_def* [ %x.tr, %if.end ]
  %context.tr.lcssa = phi i32 [ %context.tr, %if.end ]
  %scale.tr.lcssa = phi i32 [ %scale.tr, %if.end ]
  %bf.clear.lcssa = phi i32 [ %bf.clear, %if.end ], !dbg !3482
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa, metadata !3460, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %context.tr.lcssa, metadata !3461, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %scale.tr.lcssa, metadata !3464, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa, metadata !3460, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %context.tr.lcssa, metadata !3461, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %scale.tr.lcssa, metadata !3464, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa, metadata !3460, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %context.tr.lcssa, metadata !3461, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %scale.tr.lcssa, metadata !3464, metadata !DIExpression()), !dbg !3481
  %idxprom205 = zext i32 %bf.clear.lcssa to i64, !dbg !3607
  %arrayidx206 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom205, !dbg !3607
  %39 = load i8*, i8** %arrayidx206, align 8, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %39, metadata !3477, metadata !DIExpression()), !dbg !3608
  %arrayidx209 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom205, !dbg !3609
  %40 = load i8, i8* %arrayidx209, align 1, !dbg !3609
  call void @llvm.dbg.value(metadata i8 %40, metadata !3479, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  %u221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr.lcssa, i64 0, i32 1, !dbg !3611
  %fld222 = bitcast %union.u* %u221 to [1 x %union.rtunion_def]*, !dbg !3611
  %41 = zext i8 %40 to i64, !dbg !3614
  br label %for.cond211, !dbg !3614

for.cond211:                                      ; preds = %for.inc227, %sw.default
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc227 ], [ %41, %sw.default ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3615
  call void @llvm.dbg.value(metadata i32 undef, metadata !3479, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  %cmp212 = icmp sgt i64 %indvars.iv, 0, !dbg !3616
  br i1 %cmp212, label %for.body214, label %cleanup.cont232.loopexit, !dbg !3617

for.body214:                                      ; preds = %for.cond211
  %arrayidx216 = getelementptr inbounds i8, i8* %39, i64 %indvars.iv.next, !dbg !3618
  %42 = load i8, i8* %arrayidx216, align 1, !dbg !3618
  %cmp218 = icmp eq i8 %42, 101, !dbg !3619
  br i1 %cmp218, label %if.then220, label %for.inc227, !dbg !3620

if.then220:                                       ; preds = %for.body214
  %arrayidx224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld222, i64 0, i64 %indvars.iv.next, !dbg !3621
  %rt_rtx225 = bitcast %union.rtunion_def* %arrayidx224 to %struct.rtx_def**, !dbg !3621
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx225, align 8, !dbg !3621
  tail call fastcc void @record_address_regs(i32 %mode, %struct.rtx_def* %43, i32 %context.tr.lcssa, i32 %bf.clear.lcssa, i32 38, i32 %scale.tr.lcssa) #7, !dbg !3622
  br label %for.inc227, !dbg !3622

for.inc227:                                       ; preds = %for.body214, %if.then220
  call void @llvm.dbg.value(metadata i32 undef, metadata !3479, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3608
  br label %for.cond211, !dbg !3623, !llvm.loop !3624

cleanup.cont232.loopexit:                         ; preds = %for.cond211
  br label %cleanup.cont232, !dbg !3626

cleanup.cont232.loopexit6:                        ; preds = %sw.bb121, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %cleanup.cont232, !dbg !3626

cleanup.cont232:                                  ; preds = %cleanup.cont232.loopexit6, %cleanup.cont232.loopexit
  ret void, !dbg !3626
}

; Function Attrs: nounwind uwtable
define internal fastcc void @record_operand_costs(%struct.rtx_def* %insn, %struct.costs** %op_costs, i32* %pref) unnamed_addr #5 !dbg !3627 {
entry:
  %constraints = alloca [30 x i8*], align 16
  %modes = alloca [30 x i32], align 16
  %xconstraints = alloca [30 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3632, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %struct.costs** getelementptr inbounds ([30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 0), metadata !3633, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32* %pref, metadata !3634, metadata !DIExpression()), !dbg !3646
  %0 = bitcast [30 x i8*]* %constraints to i8*, !dbg !3647
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %0) #8, !dbg !3647
  call void @llvm.dbg.declare(metadata [30 x i8*]* %constraints, metadata !3635, metadata !DIExpression()), !dbg !3648
  %1 = bitcast [30 x i32]* %modes to i8*, !dbg !3649
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %1) #8, !dbg !3649
  call void @llvm.dbg.declare(metadata [30 x i32]* %modes, metadata !3637, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 0, metadata !3639, metadata !DIExpression()), !dbg !3646
  %2 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3651
  %3 = sext i8 %2 to i64, !dbg !3654
  br label %for.cond, !dbg !3654

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.body ], [ 0, %entry ], !dbg !3655
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !3639, metadata !DIExpression()), !dbg !3646
  %cmp = icmp slt i64 %indvars.iv8, %3, !dbg !3656
  br i1 %cmp, label %for.body, label %for.cond8.preheader, !dbg !3657

for.cond8.preheader:                              ; preds = %for.cond
  br label %for.cond8, !dbg !3658

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 2, i64 %indvars.iv8, !dbg !3660
  %4 = bitcast i8** %arrayidx to i64*, !dbg !3660
  %5 = load i64, i64* %4, align 8, !dbg !3660
  %arrayidx3 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i64 0, i64 %indvars.iv8, !dbg !3662
  %6 = bitcast i8** %arrayidx3 to i64*, !dbg !3663
  store i64 %5, i64* %6, align 8, !dbg !3663
  %arrayidx5 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 3, i64 %indvars.iv8, !dbg !3664
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !3664
  %arrayidx7 = getelementptr inbounds [30 x i32], [30 x i32]* %modes, i64 0, i64 %indvars.iv8, !dbg !3665
  store i32 %7, i32* %arrayidx7, align 4, !dbg !3666
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !3667
  call void @llvm.dbg.value(metadata i32 undef, metadata !3639, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3646
  br label %for.cond, !dbg !3668, !llvm.loop !3669

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc54
  %indvars.iv6 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next7, %for.inc54 ], !dbg !3671
  %8 = phi i8 [ %2, %for.cond8.preheader ], [ %.pre, %for.inc54 ], !dbg !3671
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !3639, metadata !DIExpression()), !dbg !3646
  %9 = sext i8 %8 to i64, !dbg !3673
  %cmp10 = icmp slt i64 %indvars.iv6, %9, !dbg !3673
  br i1 %cmp10, label %for.body12, label %for.cond57.preheader, !dbg !3658

for.cond57.preheader:                             ; preds = %for.cond8
  %.lcssa = phi i8 [ %8, %for.cond8 ], !dbg !3671
  %10 = bitcast [30 x i8*]* %xconstraints to i8*, !dbg !3674
  %arraydecay = getelementptr inbounds [30 x i32], [30 x i32]* %modes, i64 0, i64 0, !dbg !3674
  %arraydecay92 = getelementptr inbounds [30 x i8*], [30 x i8*]* %xconstraints, i64 0, i64 0, !dbg !3674
  br label %for.cond57, !dbg !3675

for.body12:                                       ; preds = %for.cond8
  %arrayidx14 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 %indvars.iv6, !dbg !3676
  %11 = bitcast %struct.costs** %arrayidx14 to i8**, !dbg !3676
  %12 = load i8*, i8** %11, align 8, !dbg !3676
  %13 = load i8*, i8** bitcast (%struct.costs** @init_cost to i8**), align 8, !dbg !3678
  %14 = load i32, i32* @struct_costs_size, align 4, !dbg !3679
  %conv15 = sext i32 %14 to i64, !dbg !3679
  %call = tail call i8* @memcpy(i8* %12, i8* %13, i64 %conv15) #6, !dbg !3680
  %arrayidx17 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv6, !dbg !3681
  %15 = bitcast %struct.rtx_def** %arrayidx17 to i32**, !dbg !3681
  %16 = load i32*, i32** %15, align 8, !dbg !3681
  %bf.load = load i32, i32* %16, align 8, !dbg !3681
  %bf.clear = and i32 %bf.load, 65535, !dbg !3681
  %cmp18 = icmp eq i32 %bf.clear, 39, !dbg !3683
  %17 = bitcast i32* %16 to %struct.rtx_def*, !dbg !3684
  br i1 %cmp18, label %if.then, label %if.end, !dbg !3684

if.then:                                          ; preds = %for.body12
  %arrayidx22 = getelementptr inbounds i32, i32* %16, i64 2, !dbg !3685
  %18 = bitcast i32* %arrayidx22 to i64*, !dbg !3685
  %19 = load i64, i64* %18, align 8, !dbg !3685
  %20 = bitcast %struct.rtx_def** %arrayidx17 to i64*, !dbg !3686
  store i64 %19, i64* %20, align 8, !dbg !3686
  %21 = inttoptr i64 %19 to i32*, !dbg !3687
  %bf.load27.pre = load i32, i32* %21, align 8, !dbg !3688
  %22 = inttoptr i64 %19 to %struct.rtx_def*, !dbg !3687
  br label %if.end, !dbg !3687

if.end:                                           ; preds = %if.then, %for.body12
  %23 = phi %struct.rtx_def* [ %22, %if.then ], [ %17, %for.body12 ]
  %24 = phi %struct.rtx_def* [ %22, %if.then ], [ %17, %for.body12 ]
  %bf.load34 = phi i32 [ %bf.load27.pre, %if.then ], [ %bf.load, %for.body12 ], !dbg !3688
  %bf.clear28 = and i32 %bf.load34, 65535, !dbg !3688
  %cmp29 = icmp eq i32 %bf.clear28, 43, !dbg !3688
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !3690

if.then31:                                        ; preds = %if.end
  %bf.lshr = lshr i32 %bf.load34, 16, !dbg !3691
  %bf.clear35 = and i32 %bf.lshr, 255, !dbg !3691
  %arrayidx40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3692
  %rt_rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**, !dbg !3692
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx41, align 8, !dbg !3692
  %26 = load i32, i32* @frequency, align 4, !dbg !3693
  %mul = shl nsw i32 %26, 1, !dbg !3694
  tail call fastcc void @record_address_regs(i32 %bf.clear35, %struct.rtx_def* %25, i32 0, i32 43, i32 38, i32 %mul) #7, !dbg !3695
  br label %for.inc54, !dbg !3695

if.else:                                          ; preds = %if.end
  %arrayidx43 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i64 0, i64 %indvars.iv6, !dbg !3696
  %27 = load i8*, i8** %arrayidx43, align 8, !dbg !3696
  %28 = load i8, i8* %27, align 1, !dbg !3696
  %cmp46 = icmp eq i8 %28, 112, !dbg !3698
  br i1 %cmp46, label %if.then48, label %for.inc54, !dbg !3699

if.then48:                                        ; preds = %if.else
  %29 = load i32, i32* @frequency, align 4, !dbg !3700
  %mul51 = shl nsw i32 %29, 1, !dbg !3701
  tail call fastcc void @record_address_regs(i32 0, %struct.rtx_def* %24, i32 0, i32 6, i32 38, i32 %mul51) #7, !dbg !3702
  br label %for.inc54, !dbg !3702

for.inc54:                                        ; preds = %if.then31, %if.then48, %if.else
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !3703
  call void @llvm.dbg.value(metadata i32 undef, metadata !3639, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3646
  %.pre = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3671
  br label %for.cond8, !dbg !3704, !llvm.loop !3705

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc94
  %.pre12 = phi i8 [ %.pre1, %for.inc94 ], [ %.lcssa, %for.cond57.preheader ]
  %30 = phi i8 [ %.pre1, %for.inc94 ], [ %.lcssa, %for.cond57.preheader ], !dbg !3707
  %i.2 = phi i32 [ %inc95.pre-phi, %for.inc94 ], [ 0, %for.cond57.preheader ], !dbg !3708
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !3639, metadata !DIExpression()), !dbg !3646
  %conv58 = sext i8 %30 to i32, !dbg !3709
  %sub = add nsw i32 %conv58, -1, !dbg !3710
  %cmp59 = icmp slt i32 %i.2, %sub, !dbg !3711
  br i1 %cmp59, label %for.body61, label %for.end96, !dbg !3675

for.body61:                                       ; preds = %for.cond57
  %idxprom62 = zext i32 %i.2 to i64, !dbg !3712
  %arrayidx63 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i64 0, i64 %idxprom62, !dbg !3712
  %31 = load i8*, i8** %arrayidx63, align 8, !dbg !3712
  %32 = load i8, i8* %31, align 1, !dbg !3712
  %cmp66 = icmp eq i8 %32, 37, !dbg !3713
  %33 = ptrtoint i8* %31 to i64, !dbg !3714
  br i1 %cmp66, label %if.then68, label %for.body61.for.inc94_crit_edge, !dbg !3714

for.body61.for.inc94_crit_edge:                   ; preds = %for.body61
  %.pre5 = add nuw nsw i32 %i.2, 1, !dbg !3715
  br label %for.inc94, !dbg !3714

if.then68:                                        ; preds = %for.body61
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %10) #8, !dbg !3716
  call void @llvm.dbg.declare(metadata [30 x i8*]* %xconstraints, metadata !3640, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i32 0, metadata !3645, metadata !DIExpression()), !dbg !3674
  %34 = sext i8 %30 to i64, !dbg !3718
  br label %for.cond69, !dbg !3718

for.cond69:                                       ; preds = %for.body73, %if.then68
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body73 ], [ 0, %if.then68 ], !dbg !3720
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3645, metadata !DIExpression()), !dbg !3674
  %cmp71 = icmp slt i64 %indvars.iv, %34, !dbg !3721
  br i1 %cmp71, label %for.body73, label %for.end80, !dbg !3723

for.body73:                                       ; preds = %for.cond69
  %arrayidx75 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i64 0, i64 %indvars.iv, !dbg !3724
  %35 = bitcast i8** %arrayidx75 to i64*, !dbg !3724
  %36 = load i64, i64* %35, align 8, !dbg !3724
  %arrayidx77 = getelementptr inbounds [30 x i8*], [30 x i8*]* %xconstraints, i64 0, i64 %indvars.iv, !dbg !3725
  %37 = bitcast i8** %arrayidx77 to i64*, !dbg !3726
  store i64 %36, i64* %37, align 8, !dbg !3726
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3727
  call void @llvm.dbg.value(metadata i32 undef, metadata !3645, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3674
  br label %for.cond69, !dbg !3728, !llvm.loop !3729

for.end80:                                        ; preds = %for.cond69
  %add = add nuw nsw i32 %i.2, 1, !dbg !3731
  %idxprom81 = zext i32 %add to i64, !dbg !3732
  %arrayidx82 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i64 0, i64 %idxprom81, !dbg !3732
  %38 = bitcast i8** %arrayidx82 to i64*, !dbg !3732
  %39 = load i64, i64* %38, align 8, !dbg !3732
  %arrayidx84 = getelementptr inbounds [30 x i8*], [30 x i8*]* %xconstraints, i64 0, i64 %idxprom62, !dbg !3733
  %40 = bitcast i8** %arrayidx84 to i64*, !dbg !3734
  store i64 %39, i64* %40, align 8, !dbg !3734
  %arrayidx89 = getelementptr inbounds [30 x i8*], [30 x i8*]* %xconstraints, i64 0, i64 %idxprom81, !dbg !3735
  %41 = bitcast i8** %arrayidx89 to i64*, !dbg !3736
  store i64 %33, i64* %41, align 8, !dbg !3736
  %42 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !3737
  %conv90 = sext i8 %42 to i32, !dbg !3738
  call fastcc void @record_reg_classes(i32 %conv90, i32 %conv58, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 0), i32* nonnull %arraydecay, i8** nonnull %arraydecay92, %struct.rtx_def* %insn, %struct.costs** getelementptr inbounds ([30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 0), i32* %pref) #7, !dbg !3739
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %10) #8, !dbg !3740
  %.pre1.pre = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 7), align 2, !dbg !3707
  br label %for.inc94, !dbg !3741

for.inc94:                                        ; preds = %for.body61.for.inc94_crit_edge, %for.end80
  %inc95.pre-phi = phi i32 [ %.pre5, %for.body61.for.inc94_crit_edge ], [ %add, %for.end80 ], !dbg !3715
  %.pre1 = phi i8 [ %.pre12, %for.body61.for.inc94_crit_edge ], [ %.pre1.pre, %for.end80 ], !dbg !3707
  call void @llvm.dbg.value(metadata i32 %inc95.pre-phi, metadata !3639, metadata !DIExpression()), !dbg !3646
  br label %for.cond57, !dbg !3742, !llvm.loop !3743

for.end96:                                        ; preds = %for.cond57
  %conv58.lcssa = phi i32 [ %conv58, %for.cond57 ], !dbg !3709
  %43 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 9), align 8, !dbg !3745
  %conv97 = sext i8 %43 to i32, !dbg !3746
  %arraydecay100 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i64 0, i64 0, !dbg !3747
  call fastcc void @record_reg_classes(i32 %conv97, i32 %conv58.lcssa, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 0), i32* nonnull %arraydecay, i8** nonnull %arraydecay100, %struct.rtx_def* %insn, %struct.costs** getelementptr inbounds ([30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 0), i32* %pref) #7, !dbg !3748
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %1) #8, !dbg !3749
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %0) #8, !dbg !3749
  ret void, !dbg !3749
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @base_reg_class(i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !3750 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3755, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i32 %outer_code, metadata !3756, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i32 %index_code, metadata !3757, metadata !DIExpression()), !dbg !3758
  ret i32 undef, !dbg !3759
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ok_for_base_p_nonstrict(%struct.rtx_def* %reg, i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !3760 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3764, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3765, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 49, metadata !3766, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i32 37, metadata !3767, metadata !DIExpression()), !dbg !3769
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !3770
  call void @llvm.dbg.value(metadata i32 %call, metadata !3768, metadata !DIExpression()), !dbg !3769
  %cmp = icmp ugt i32 %call, 52, !dbg !3771
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3773

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @ok_for_base_p_1(i32 %call, i32 %mode, i32 49, i32 37) #7, !dbg !3774
  br label %cleanup, !dbg !3775

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %call1, %if.end ], [ 1, %entry ], !dbg !3769
  ret i8 %retval.0, !dbg !3776
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ok_for_index_p_nonstrict(%struct.rtx_def* %reg) unnamed_addr #0 !dbg !3777 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3781, metadata !DIExpression()), !dbg !3783
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !3784
  call void @llvm.dbg.value(metadata i32 %call, metadata !3782, metadata !DIExpression()), !dbg !3783
  %call.off = add i32 %call, -7, !dbg !3785
  %0 = icmp ugt i32 %call.off, 45, !dbg !3785
  br i1 %0, label %lor.end16, label %lor.lhs.false, !dbg !3785

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i32 %call to i64, !dbg !3786
  %sub = add nsw i64 %conv, -37, !dbg !3786
  %cmp2 = icmp ult i64 %sub, 8, !dbg !3786
  br i1 %cmp2, label %lor.end16, label %lor.lhs.false4, !dbg !3786

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %1 = load i16*, i16** @reg_renumber, align 8, !dbg !3786
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %conv, !dbg !3786
  %2 = load i16, i16* %arrayidx, align 2, !dbg !3786
  %cmp6 = icmp ult i16 %2, 7, !dbg !3786
  br i1 %cmp6, label %lor.end16, label %lor.rhs8, !dbg !3786

lor.rhs8:                                         ; preds = %lor.lhs.false4
  %conv11 = sext i16 %2 to i64, !dbg !3786
  %conv12 = and i64 %conv11, 4294967295, !dbg !3786
  %sub13 = add nsw i64 %conv12, -37, !dbg !3786
  %cmp14 = icmp ult i64 %sub13, 8, !dbg !3786
  %phitmp = zext i1 %cmp14 to i8, !dbg !3786
  br label %lor.end16, !dbg !3786

lor.end16:                                        ; preds = %lor.lhs.false, %lor.lhs.false4, %lor.rhs8, %entry
  %3 = phi i8 [ 1, %entry ], [ 1, %lor.lhs.false4 ], [ 1, %lor.lhs.false ], [ %phitmp, %lor.rhs8 ]
  ret i8 %3, !dbg !3787
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ira_get_may_move_cost(i32 %mode, i32 %from, i32 %to, i8 zeroext %in_p) unnamed_addr #0 !dbg !3788 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3792, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i32 %from, metadata !3793, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i32 %to, metadata !3794, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8 %in_p, metadata !3795, metadata !DIExpression()), !dbg !3796
  %idxprom = zext i32 %mode to i64, !dbg !3797
  %arrayidx = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @ira_register_move_cost, i64 0, i64 %idxprom, !dbg !3797
  %0 = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !3797
  %cmp = icmp eq [27 x i16]* %0, null, !dbg !3799
  br i1 %cmp, label %if.then, label %if.end, !dbg !3800

if.then:                                          ; preds = %entry
  tail call void @ira_init_register_move_cost(i32 %mode) #6, !dbg !3801
  br label %if.end, !dbg !3801

if.end:                                           ; preds = %if.then, %entry
  %tobool = icmp eq i8 %in_p, 0, !dbg !3802
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3802

cond.true:                                        ; preds = %if.end
  %arrayidx2 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @ira_may_move_in_cost, i64 0, i64 %idxprom, !dbg !3803
  %1 = load [27 x i16]*, [27 x i16]** %arrayidx2, align 8, !dbg !3803
  %idxprom3 = zext i32 %from to i64, !dbg !3803
  %idxprom5 = zext i32 %to to i64, !dbg !3803
  %arrayidx6 = getelementptr inbounds [27 x i16], [27 x i16]* %1, i64 %idxprom3, i64 %idxprom5, !dbg !3803
  br label %cond.end, !dbg !3802

cond.false:                                       ; preds = %if.end
  %arrayidx9 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @ira_may_move_out_cost, i64 0, i64 %idxprom, !dbg !3804
  %2 = load [27 x i16]*, [27 x i16]** %arrayidx9, align 8, !dbg !3804
  %idxprom10 = zext i32 %from to i64, !dbg !3804
  %idxprom12 = zext i32 %to to i64, !dbg !3804
  %arrayidx13 = getelementptr inbounds [27 x i16], [27 x i16]* %2, i64 %idxprom10, i64 %idxprom12, !dbg !3804
  br label %cond.end, !dbg !3802

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in.in = phi i16* [ %arrayidx6, %cond.true ], [ %arrayidx13, %cond.false ]
  %cond.in = load i16, i16* %cond.in.in, align 2, !dbg !3796
  %cond = zext i16 %cond.in to i32, !dbg !3802
  ret i32 %cond, !dbg !3805
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ok_for_base_p_1(i32 %regno, i32 %mode, i32 %outer_code, i32 %index_code) unnamed_addr #0 !dbg !3806 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3810, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3811, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 %outer_code, metadata !3812, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 %index_code, metadata !3813, metadata !DIExpression()), !dbg !3814
  %cmp = icmp ult i32 %regno, 8, !dbg !3815
  br i1 %cmp, label %lor.end20, label %lor.lhs.false, !dbg !3815

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i32 %regno to i64, !dbg !3815
  %sub = add nsw i64 %conv, -37, !dbg !3815
  %cmp1 = icmp ult i64 %sub, 8, !dbg !3815
  %0 = or i32 %regno, 4, !dbg !3815
  %1 = icmp eq i32 %0, 20, !dbg !3815
  %2 = or i1 %1, %cmp1, !dbg !3815
  br i1 %2, label %lor.end20, label %lor.rhs, !dbg !3815

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i16*, i16** @reg_renumber, align 8, !dbg !3815
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %conv, !dbg !3815
  %4 = load i16, i16* %arrayidx, align 2, !dbg !3815
  %cmp10 = icmp ult i16 %4, 8, !dbg !3815
  br i1 %cmp10, label %lor.end20, label %lor.rhs12, !dbg !3815

lor.rhs12:                                        ; preds = %lor.rhs
  %conv15 = sext i16 %4 to i64, !dbg !3815
  %conv16 = and i64 %conv15, 4294967295, !dbg !3815
  %sub17 = add nsw i64 %conv16, -37, !dbg !3815
  %cmp18 = icmp ult i64 %sub17, 8, !dbg !3815
  %phitmp = zext i1 %cmp18 to i8, !dbg !3815
  br label %lor.end20, !dbg !3815

lor.end20:                                        ; preds = %lor.rhs, %lor.rhs12, %lor.lhs.false, %entry
  %5 = phi i8 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %lor.rhs ], [ %phitmp, %lor.rhs12 ]
  ret i8 %5, !dbg !3816
}

declare dso_local void @ira_init_register_move_cost(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @record_reg_classes(i32 %n_alts, i32 %n_ops, %struct.rtx_def** %ops, i32* %modes, i8** %constraints, %struct.rtx_def* %insn, %struct.costs** %op_costs, i32* %pref) unnamed_addr #5 !dbg !3817 {
entry:
  %insn_allows_mem = alloca [30 x i32], align 16
  %classes = alloca [30 x i32], align 16
  %allows_mem = alloca [30 x i32], align 16
  call void @llvm.dbg.value(metadata i32 %n_alts, metadata !3824, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 %n_ops, metadata !3825, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 0), metadata !3826, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32* %modes, metadata !3827, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i8** %constraints, metadata !3828, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3829, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata %struct.costs** getelementptr inbounds ([30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 0), metadata !3830, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32* %pref, metadata !3831, metadata !DIExpression()), !dbg !3897
  %0 = bitcast [30 x i32]* %insn_allows_mem to i8*, !dbg !3898
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #8, !dbg !3898
  call void @llvm.dbg.declare(metadata [30 x i32]* %insn_allows_mem, metadata !3837, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i32 0, metadata !3833, metadata !DIExpression()), !dbg !3897
  %1 = sext i32 %n_ops to i64, !dbg !3900
  br label %for.cond, !dbg !3900

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body ], [ 0, %entry ], !dbg !3902
  call void @llvm.dbg.value(metadata i64 %indvars.iv44, metadata !3833, metadata !DIExpression()), !dbg !3897
  %cmp = icmp slt i64 %indvars.iv44, %1, !dbg !3903
  br i1 %cmp, label %for.body, label %for.cond1.preheader, !dbg !3905

for.cond1.preheader:                              ; preds = %for.cond
  %2 = bitcast [30 x i32]* %classes to i8*, !dbg !3906
  %3 = bitcast [30 x i32]* %allows_mem to i8*, !dbg !3906
  %tobool200 = icmp eq i32* %pref, null, !dbg !3907
  %4 = sext i32 %n_ops to i64, !dbg !3908
  %5 = sext i32 %n_ops to i64, !dbg !3908
  br label %for.cond1, !dbg !3908

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [30 x i32], [30 x i32]* %insn_allows_mem, i64 0, i64 %indvars.iv44, !dbg !3909
  store i32 0, i32* %arrayidx, align 4, !dbg !3910
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !dbg !3911
  call void @llvm.dbg.value(metadata i32 undef, metadata !3833, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br label %for.cond, !dbg !3912, !llvm.loop !3913

for.cond1:                                        ; preds = %for.cond1.preheader, %cleanup860
  %alt.0 = phi i32 [ %inc869, %cleanup860 ], [ 0, %for.cond1.preheader ], !dbg !3915
  call void @llvm.dbg.value(metadata i32 %alt.0, metadata !3832, metadata !DIExpression()), !dbg !3897
  %cmp2 = icmp slt i32 %alt.0, %n_alts, !dbg !3916
  br i1 %cmp2, label %for.body3, label %for.end870, !dbg !3908

for.body3:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %2) #8, !dbg !3917
  call void @llvm.dbg.declare(metadata [30 x i32]* %classes, metadata !3839, metadata !DIExpression()), !dbg !3918
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #8, !dbg !3919
  call void @llvm.dbg.declare(metadata [30 x i32]* %allows_mem, metadata !3844, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 0, metadata !3846, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 0, metadata !3847, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 0, metadata !3833, metadata !DIExpression()), !dbg !3897
  br label %for.cond4, !dbg !3921

for.cond4:                                        ; preds = %cleanup, %for.body3
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %cleanup ], [ 0, %for.body3 ], !dbg !3922
  %alt_fail.0 = phi i32 [ %alt_fail.9, %cleanup ], [ 0, %for.body3 ], !dbg !3923
  %alt_cost.0 = phi i32 [ %alt_cost.24, %cleanup ], [ 0, %for.body3 ], !dbg !3924
  call void @llvm.dbg.value(metadata i32 %alt_cost.0, metadata !3847, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_fail.0, metadata !3846, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !3833, metadata !DIExpression()), !dbg !3897
  %cmp5 = icmp slt i64 %indvars.iv37, %4, !dbg !3925
  br i1 %cmp5, label %for.body6, label %for.end777, !dbg !3926

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds i8*, i8** %constraints, i64 %indvars.iv37, !dbg !3927
  %6 = load i8*, i8** %arrayidx8, align 8, !dbg !3927
  call void @llvm.dbg.value(metadata i8* %6, metadata !3853, metadata !DIExpression()), !dbg !3928
  %arrayidx10 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv37, !dbg !3929
  %7 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx10, align 8, !dbg !3929
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3854, metadata !DIExpression()), !dbg !3928
  %arrayidx12 = getelementptr inbounds i32, i32* %modes, i64 %indvars.iv37, !dbg !3930
  %8 = load i32, i32* %arrayidx12, align 4, !dbg !3930
  call void @llvm.dbg.value(metadata i32 %8, metadata !3855, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 0, metadata !3856, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 0, metadata !3857, metadata !DIExpression()), !dbg !3928
  %arrayidx14 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i64 0, i64 %indvars.iv37, !dbg !3931
  store i32 0, i32* %arrayidx14, align 4, !dbg !3932
  %arrayidx16 = getelementptr inbounds [30 x i32], [30 x i32]* %allows_mem, i64 0, i64 %indvars.iv37, !dbg !3933
  store i32 0, i32* %arrayidx16, align 4, !dbg !3934
  %9 = load i8, i8* %6, align 1, !dbg !3935
  %cmp17 = icmp eq i8 %9, 0, !dbg !3937
  br i1 %cmp17, label %if.then, label %while.cond.preheader, !dbg !3938

while.cond.preheader:                             ; preds = %for.body6
  br label %while.cond, !dbg !3939

if.then:                                          ; preds = %for.body6
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !3940
  %bf.load = load i32, i32* %10, align 8, !dbg !3940
  %bf.clear = and i32 %bf.load, 65535, !dbg !3940
  %cmp19 = icmp eq i32 %bf.clear, 37, !dbg !3940
  br i1 %cmp19, label %land.lhs.true, label %cleanup, !dbg !3943

land.lhs.true:                                    ; preds = %if.then
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !3944
  %cmp21 = icmp ugt i32 %call, 52, !dbg !3945
  br i1 %cmp21, label %if.then23, label %cleanup, !dbg !3946

if.then23:                                        ; preds = %land.lhs.true
  %arrayidx25 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @this_op_costs, i64 0, i64 %indvars.iv37, !dbg !3947
  %11 = bitcast %struct.costs** %arrayidx25 to i8**, !dbg !3947
  %12 = load i8*, i8** %11, align 8, !dbg !3947
  %13 = load i32, i32* @struct_costs_size, align 4, !dbg !3948
  %conv26 = sext i32 %13 to i64, !dbg !3948
  %call27 = tail call i8* @memset(i8* %12, i32 0, i64 %conv26) #6, !dbg !3949
  br label %cleanup, !dbg !3949

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %14 = phi i8 [ %.pre, %while.body ], [ %9, %while.cond.preheader ], !dbg !3950
  %p.0 = phi i8* [ %incdec.ptr, %while.body ], [ %6, %while.cond.preheader ], !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !3853, metadata !DIExpression()), !dbg !3928
  %cmp30 = icmp eq i8 %14, 37, !dbg !3951
  br i1 %cmp30, label %while.body, label %lor.lhs.false, !dbg !3952

lor.lhs.false:                                    ; preds = %while.cond
  %cmp33 = icmp eq i8 %14, 61, !dbg !3953
  br i1 %cmp33, label %while.body, label %lor.lhs.false35, !dbg !3954

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %cmp37 = icmp eq i8 %14, 43, !dbg !3955
  %cmp40 = icmp eq i8 %14, 38, !dbg !3956
  %or.cond = or i1 %cmp37, %cmp40, !dbg !3957
  br i1 %or.cond, label %while.body, label %while.end, !dbg !3957

while.body:                                       ; preds = %while.cond, %lor.lhs.false, %lor.lhs.false35
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !3958
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3853, metadata !DIExpression()), !dbg !3928
  %.pre = load i8, i8* %incdec.ptr, align 1, !dbg !3950
  br label %while.cond, !dbg !3939, !llvm.loop !3959

while.end:                                        ; preds = %lor.lhs.false35
  %.lcssa47 = phi i8 [ %14, %lor.lhs.false35 ], !dbg !3950
  %p.0.lcssa = phi i8* [ %p.0, %lor.lhs.false35 ], !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3853, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3853, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !3853, metadata !DIExpression()), !dbg !3928
  %cmp44 = icmp sgt i8 %.lcssa47, 47, !dbg !3960
  br i1 %cmp44, label %land.lhs.true46, label %if.end295, !dbg !3961

land.lhs.true46:                                  ; preds = %while.end
  %conv48 = sext i8 %.lcssa47 to i32, !dbg !3962
  %15 = trunc i64 %indvars.iv37 to i32, !dbg !3963
  %16 = add i32 %15, 48, !dbg !3963
  %cmp49 = icmp slt i32 %16, %conv48, !dbg !3963
  br i1 %cmp49, label %if.end295, label %land.lhs.true51, !dbg !3964

land.lhs.true51:                                  ; preds = %land.lhs.true46
  %arrayidx52 = getelementptr inbounds i8, i8* %p.0.lcssa, i64 1, !dbg !3965
  %17 = load i8, i8* %arrayidx52, align 1, !dbg !3965
  %cmp54 = icmp eq i8 %17, 44, !dbg !3966
  br i1 %cmp54, label %if.then61, label %lor.lhs.false56, !dbg !3967

lor.lhs.false56:                                  ; preds = %land.lhs.true51
  %cmp59 = icmp eq i8 %17, 0, !dbg !3968
  br i1 %cmp59, label %if.then61, label %if.end295, !dbg !3969

if.then61:                                        ; preds = %lor.lhs.false56, %land.lhs.true51
  %sub = add nsw i32 %conv48, -48, !dbg !3970
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3834, metadata !DIExpression()), !dbg !3897
  %idxprom64 = sext i32 %sub to i64, !dbg !3971
  %arrayidx65 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i64 0, i64 %idxprom64, !dbg !3971
  %18 = load i32, i32* %arrayidx65, align 4, !dbg !3971
  store i32 %18, i32* %arrayidx14, align 4, !dbg !3972
  %arrayidx69 = getelementptr inbounds [30 x i32], [30 x i32]* %allows_mem, i64 0, i64 %idxprom64, !dbg !3973
  %19 = load i32, i32* %arrayidx69, align 4, !dbg !3973
  store i32 %19, i32* %arrayidx16, align 4, !dbg !3974
  %tobool = icmp eq i32 %19, 0, !dbg !3975
  br i1 %tobool, label %if.end77, label %if.then74, !dbg !3977

if.then74:                                        ; preds = %if.then61
  %arrayidx76 = getelementptr inbounds [30 x i32], [30 x i32]* %insn_allows_mem, i64 0, i64 %indvars.iv37, !dbg !3978
  store i32 1, i32* %arrayidx76, align 4, !dbg !3979
  br label %if.end77, !dbg !3978

if.end77:                                         ; preds = %if.then61, %if.then74
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !3980
  %bf.load78 = load i32, i32* %20, align 8, !dbg !3980
  %bf.clear79 = and i32 %bf.load78, 65535, !dbg !3980
  %cmp80 = icmp eq i32 %bf.clear79, 37, !dbg !3980
  br i1 %cmp80, label %lor.lhs.false82, label %if.then86, !dbg !3981

lor.lhs.false82:                                  ; preds = %if.end77
  %call83 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !3982
  %cmp84 = icmp ult i32 %call83, 53, !dbg !3983
  br i1 %cmp84, label %if.then86, label %if.else103, !dbg !3984

if.then86:                                        ; preds = %lor.lhs.false82, %if.end77
  %arrayidx88 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom64, !dbg !3985
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx88, align 8, !dbg !3985
  %call89 = tail call i32 @rtx_equal_p(%struct.rtx_def* %21, %struct.rtx_def* %7) #6, !dbg !3988
  %tobool90 = icmp eq i32 %call89, 0, !dbg !3988
  br i1 %tobool90, label %if.else, label %if.end295, !dbg !3989

if.else:                                          ; preds = %if.then86
  %22 = load i32, i32* %arrayidx65, align 4, !dbg !3990
  %cmp94 = icmp eq i32 %22, 0, !dbg !3992
  br i1 %cmp94, label %if.end295, label %if.then96, !dbg !3993

if.then96:                                        ; preds = %if.else
  %call99 = tail call fastcc i32 @copy_cost(%struct.rtx_def* %7, i32 %8, i32 %22, i8 zeroext 1, %struct.secondary_reload_info* null) #7, !dbg !3994
  %add100 = add nsw i32 %alt_cost.0, %call99, !dbg !3996
  call void @llvm.dbg.value(metadata i32 %add100, metadata !3847, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 1, metadata !3857, metadata !DIExpression()), !dbg !3928
  br label %if.end295, !dbg !3997

if.else103:                                       ; preds = %lor.lhs.false82
  %arrayidx105 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom64, !dbg !3998
  %23 = bitcast %struct.rtx_def** %arrayidx105 to i32**, !dbg !3998
  %24 = load i32*, i32** %23, align 8, !dbg !3998
  %bf.load106 = load i32, i32* %24, align 8, !dbg !3998
  %bf.clear107 = and i32 %bf.load106, 65535, !dbg !3998
  %cmp108 = icmp eq i32 %bf.clear107, 37, !dbg !3998
  br i1 %cmp108, label %lor.lhs.false110, label %if.then116, !dbg !3999

lor.lhs.false110:                                 ; preds = %if.else103
  %25 = bitcast i32* %24 to %struct.rtx_def*, !dbg !3999
  %call113 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %25) #7, !dbg !4000
  %cmp114 = icmp ult i32 %call113, 53, !dbg !4001
  br i1 %cmp114, label %if.then116, label %if.else130, !dbg !4002

if.then116:                                       ; preds = %lor.lhs.false110, %if.else103
  %26 = load i32, i32* %arrayidx65, align 4, !dbg !4003
  %cmp119 = icmp eq i32 %26, 0, !dbg !4006
  br i1 %cmp119, label %if.end295, label %if.else122, !dbg !4007

if.else122:                                       ; preds = %if.then116
  %27 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx105, align 8, !dbg !4008
  %call127 = tail call fastcc i32 @copy_cost(%struct.rtx_def* %27, i32 %8, i32 %26, i8 zeroext 1, %struct.secondary_reload_info* null) #7, !dbg !4009
  %add128 = add nsw i32 %alt_cost.0, %call127, !dbg !4010
  call void @llvm.dbg.value(metadata i32 %add128, metadata !3847, metadata !DIExpression()), !dbg !3906
  br label %if.end295

if.else130:                                       ; preds = %lor.lhs.false110
  %arrayidx132 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @this_op_costs, i64 0, i64 %indvars.iv37, !dbg !4011
  %28 = load %struct.costs*, %struct.costs** %arrayidx132, align 8, !dbg !4011
  call void @llvm.dbg.value(metadata %struct.costs* %28, metadata !3858, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i32 0, metadata !3835, metadata !DIExpression()), !dbg !3897
  %arrayidx140 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv37, !dbg !4013
  br label %for.cond133, !dbg !4017

for.cond133:                                      ; preds = %cond.end155, %if.else130
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %cond.end155 ], [ 0, %if.else130 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv33, metadata !3835, metadata !DIExpression()), !dbg !3897
  %29 = load i32, i32* @cost_classes_num, align 4, !dbg !4018
  %30 = sext i32 %29 to i64, !dbg !4019
  %cmp134 = icmp slt i64 %indvars.iv33, %30, !dbg !4019
  br i1 %cmp134, label %for.body136, label %for.end162, !dbg !4020

for.body136:                                      ; preds = %for.cond133
  %31 = load i32*, i32** @cost_classes, align 8, !dbg !4021
  %arrayidx138 = getelementptr inbounds i32, i32* %31, i64 %indvars.iv33, !dbg !4021
  %32 = load i32, i32* %arrayidx138, align 4, !dbg !4021
  call void @llvm.dbg.value(metadata i32 %32, metadata !3845, metadata !DIExpression()), !dbg !3906
  %33 = load i32, i32* %arrayidx140, align 4, !dbg !4022
  %cmp141 = icmp eq i32 %33, 1, !dbg !4023
  br i1 %cmp141, label %cond.end, label %cond.true, !dbg !4022

cond.true:                                        ; preds = %for.body136
  %call145 = tail call fastcc i32 @ira_get_may_move_cost(i32 %8, i32 %32, i32 %18, i8 zeroext 1) #7, !dbg !4024
  %.pre13 = load i32, i32* %arrayidx140, align 4, !dbg !4025
  br label %cond.end, !dbg !4022

cond.end:                                         ; preds = %for.body136, %cond.true
  %34 = phi i32 [ %.pre13, %cond.true ], [ 1, %for.body136 ], !dbg !4025
  %cond = phi i32 [ %call145, %cond.true ], [ 0, %for.body136 ], !dbg !4022
  %cmp148 = icmp eq i32 %34, 0, !dbg !4026
  br i1 %cmp148, label %cond.end155, label %cond.true150, !dbg !4025

cond.true150:                                     ; preds = %cond.end
  %call153 = tail call fastcc i32 @ira_get_may_move_cost(i32 %8, i32 %18, i32 %32, i8 zeroext 0) #7, !dbg !4027
  br label %cond.end155, !dbg !4025

cond.end155:                                      ; preds = %cond.end, %cond.true150
  %cond156 = phi i32 [ %call153, %cond.true150 ], [ 0, %cond.end ], !dbg !4025
  %add157 = add nsw i32 %cond, %cond156, !dbg !4028
  %35 = load i32, i32* @frequency, align 4, !dbg !4029
  %mul = mul nsw i32 %add157, %35, !dbg !4030
  %arrayidx159 = getelementptr inbounds %struct.costs, %struct.costs* %28, i64 0, i32 1, i64 %indvars.iv33, !dbg !4031
  store i32 %mul, i32* %arrayidx159, align 4, !dbg !4032
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !dbg !4033
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br label %for.cond133, !dbg !4034, !llvm.loop !4035

for.end162:                                       ; preds = %for.cond133
  %36 = load i32, i32* %arrayidx140, align 4, !dbg !4037
  %cmp165 = icmp eq i32 %36, 0, !dbg !4038
  br i1 %cmp165, label %cond.end177, label %cond.true167, !dbg !4037

cond.true167:                                     ; preds = %for.end162
  %idxprom168 = zext i32 %8 to i64, !dbg !4039
  %idxprom172 = zext i32 %18 to i64, !dbg !4039
  %arrayidx174 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom168, i64 %idxprom172, i64 0, !dbg !4039
  %37 = load i16, i16* %arrayidx174, align 4, !dbg !4039
  %conv175 = sext i16 %37 to i32, !dbg !4039
  br label %cond.end177, !dbg !4037

cond.end177:                                      ; preds = %for.end162, %cond.true167
  %cond178 = phi i32 [ %conv175, %cond.true167 ], [ 0, %for.end162 ], !dbg !4037
  %cmp181 = icmp eq i32 %36, 1, !dbg !4040
  br i1 %cmp181, label %cond.end193, label %cond.true183, !dbg !4041

cond.true183:                                     ; preds = %cond.end177
  %idxprom184 = zext i32 %8 to i64, !dbg !4042
  %idxprom188 = zext i32 %18 to i64, !dbg !4042
  %arrayidx190 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom184, i64 %idxprom188, i64 1, !dbg !4042
  %38 = load i16, i16* %arrayidx190, align 2, !dbg !4042
  %conv191 = sext i16 %38 to i32, !dbg !4042
  br label %cond.end193, !dbg !4041

cond.end193:                                      ; preds = %cond.end177, %cond.true183
  %cond194 = phi i32 [ %conv191, %cond.true183 ], [ 0, %cond.end177 ], !dbg !4041
  %add195 = add nsw i32 %cond178, %cond194, !dbg !4043
  %sub198 = sub nsw i32 %add195, %19, !dbg !4044
  %39 = load i32, i32* @frequency, align 4, !dbg !4045
  %mul199 = mul nsw i32 %sub198, %39, !dbg !4046
  %mem_cost = getelementptr inbounds %struct.costs, %struct.costs* %28, i64 0, i32 0, !dbg !4047
  store i32 %mul199, i32* %mem_cost, align 4, !dbg !4048
  br i1 %tobool200, label %if.end267, label %if.then201, !dbg !4049

if.then201:                                       ; preds = %cond.end193
  %.b10 = load i1, i1* @allocno_p, align 1, !dbg !4050
  br i1 %.b10, label %cond.true204, label %cond.false208, !dbg !4050

cond.true204:                                     ; preds = %if.then201
  %40 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !4050
  %call205 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !4050
  %idxprom206 = zext i32 %call205 to i64, !dbg !4050
  %arrayidx207 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %40, i64 %idxprom206, !dbg !4050
  %41 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx207, align 8, !dbg !4050
  %num = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %41, i64 0, i32 0, !dbg !4050
  %42 = load i32, i32* %num, align 8, !dbg !4050
  br label %cond.end210, !dbg !4050

cond.false208:                                    ; preds = %if.then201
  %call209 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !4050
  br label %cond.end210, !dbg !4050

cond.end210:                                      ; preds = %cond.false208, %cond.true204
  %cond211 = phi i32 [ %42, %cond.true204 ], [ %call209, %cond.false208 ], !dbg !4050
  %idxprom212 = sext i32 %cond211 to i64, !dbg !4051
  %arrayidx213 = getelementptr inbounds i32, i32* %pref, i64 %idxprom212, !dbg !4051
  %43 = load i32, i32* %arrayidx213, align 4, !dbg !4051
  call void @llvm.dbg.value(metadata i32 %43, metadata !3864, metadata !DIExpression()), !dbg !4052
  %cmp214 = icmp eq i32 %43, 0, !dbg !4053
  br i1 %cmp214, label %if.then216, label %if.else251, !dbg !4055

if.then216:                                       ; preds = %cond.end210
  %44 = load i32, i32* %arrayidx140, align 4, !dbg !4056
  %cmp219 = icmp eq i32 %44, 0, !dbg !4057
  br i1 %cmp219, label %cond.end231, label %cond.true221, !dbg !4056

cond.true221:                                     ; preds = %if.then216
  %idxprom222 = zext i32 %8 to i64, !dbg !4058
  %idxprom226 = zext i32 %18 to i64, !dbg !4058
  %arrayidx228 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom222, i64 %idxprom226, i64 0, !dbg !4058
  %45 = load i16, i16* %arrayidx228, align 4, !dbg !4058
  %conv229 = sext i16 %45 to i32, !dbg !4058
  br label %cond.end231, !dbg !4056

cond.end231:                                      ; preds = %if.then216, %cond.true221
  %cond232 = phi i32 [ %conv229, %cond.true221 ], [ 0, %if.then216 ], !dbg !4056
  %cmp235 = icmp eq i32 %44, 1, !dbg !4059
  br i1 %cmp235, label %cond.end247, label %cond.true237, !dbg !4060

cond.true237:                                     ; preds = %cond.end231
  %idxprom238 = zext i32 %8 to i64, !dbg !4061
  %idxprom242 = zext i32 %18 to i64, !dbg !4061
  %arrayidx244 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom238, i64 %idxprom242, i64 1, !dbg !4061
  %46 = load i16, i16* %arrayidx244, align 2, !dbg !4061
  %conv245 = sext i16 %46 to i32, !dbg !4061
  br label %cond.end247, !dbg !4060

cond.end247:                                      ; preds = %cond.end231, %cond.true237
  %cond248 = phi i32 [ %conv245, %cond.true237 ], [ 0, %cond.end231 ], !dbg !4060
  %add249 = add nsw i32 %cond232, %cond248, !dbg !4062
  %add250 = add nsw i32 %alt_cost.0, %add249, !dbg !4063
  call void @llvm.dbg.value(metadata i32 %add250, metadata !3847, metadata !DIExpression()), !dbg !3906
  br label %if.end267, !dbg !4064

if.else251:                                       ; preds = %cond.end210
  %idxprom252 = zext i32 %43 to i64, !dbg !4065
  %idxprom256 = zext i32 %18 to i64, !dbg !4065
  %arrayidx257 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_intersect, i64 0, i64 %idxprom252, i64 %idxprom256, !dbg !4065
  %47 = load i32, i32* %arrayidx257, align 4, !dbg !4065
  %cmp258 = icmp eq i32 %47, 0, !dbg !4067
  br i1 %cmp258, label %if.then260, label %if.end267, !dbg !4068

if.then260:                                       ; preds = %if.else251
  %call263 = tail call fastcc i32 @ira_get_register_move_cost(i32 %8, i32 %43, i32 %18) #7, !dbg !4069
  %add264 = add nsw i32 %alt_cost.0, %call263, !dbg !4070
  call void @llvm.dbg.value(metadata i32 %add264, metadata !3847, metadata !DIExpression()), !dbg !3906
  br label %if.end267, !dbg !4071

if.end267:                                        ; preds = %cond.end193, %cond.end247, %if.then260, %if.else251
  %alt_cost.6 = phi i32 [ %alt_cost.0, %cond.end193 ], [ %add250, %cond.end247 ], [ %add264, %if.then260 ], [ %alt_cost.0, %if.else251 ], !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_cost.6, metadata !3847, metadata !DIExpression()), !dbg !3906
  %48 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx10, align 8, !dbg !4072
  %call270 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %48) #7, !dbg !4072
  %49 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx105, align 8, !dbg !4074
  %call273 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %49) #7, !dbg !4074
  %cmp274 = icmp eq i32 %call270, %call273, !dbg !4075
  br i1 %cmp274, label %if.end281, label %land.lhs.true276, !dbg !4076

land.lhs.true276:                                 ; preds = %if.end267
  %call277 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %insn, i32 1, %struct.rtx_def* %7) #6, !dbg !4077
  %tobool278 = icmp eq %struct.rtx_def* %call277, null, !dbg !4077
  %add280 = add nsw i32 %alt_cost.6, 2, !dbg !4078
  %spec.select = select i1 %tobool278, i32 %add280, i32 %alt_cost.6, !dbg !4079
  br label %if.end281, !dbg !4079

if.end281:                                        ; preds = %if.end267, %land.lhs.true276
  %alt_cost.7 = phi i32 [ %alt_cost.6, %if.end267 ], [ %spec.select, %land.lhs.true276 ], !dbg !4012
  call void @llvm.dbg.value(metadata i32 %alt_cost.7, metadata !3847, metadata !DIExpression()), !dbg !3906
  br label %while.cond282, !dbg !4080

while.cond282:                                    ; preds = %land.end, %if.end281
  %p.1 = phi i8* [ %p.0.lcssa, %if.end281 ], [ %p.2, %land.end ], !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !3853, metadata !DIExpression()), !dbg !3928
  %50 = load i8, i8* %p.1, align 1, !dbg !4081
  %tobool284 = icmp eq i8 %50, 0, !dbg !4081
  br i1 %tobool284, label %land.end, label %land.rhs, !dbg !4082

land.rhs:                                         ; preds = %while.cond282
  %incdec.ptr285 = getelementptr inbounds i8, i8* %p.1, i64 1, !dbg !4083
  call void @llvm.dbg.value(metadata i8* %incdec.ptr285, metadata !3853, metadata !DIExpression()), !dbg !3928
  %cmp287 = icmp ne i8 %50, 44, !dbg !4084
  br label %land.end

land.end:                                         ; preds = %while.cond282, %land.rhs
  %p.2 = phi i8* [ %incdec.ptr285, %land.rhs ], [ %p.1, %while.cond282 ], !dbg !3928
  %51 = phi i1 [ %cmp287, %land.rhs ], [ false, %while.cond282 ], !dbg !4012
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !3853, metadata !DIExpression()), !dbg !3928
  br i1 %51, label %while.cond282, label %while.end290, !dbg !4080, !llvm.loop !4085

while.end290:                                     ; preds = %land.end
  %p.2.lcssa = phi i8* [ %p.2, %land.end ], !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !3853, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !3853, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !3853, metadata !DIExpression()), !dbg !3928
  store i8* %p.2.lcssa, i8** %arrayidx8, align 8, !dbg !4087
  br label %cleanup

if.end295:                                        ; preds = %if.else, %if.then86, %land.lhs.true46, %if.then96, %if.else122, %if.then116, %lor.lhs.false56, %while.end
  %52 = phi i32 [ 0, %lor.lhs.false56 ], [ 0, %land.lhs.true46 ], [ 0, %while.end ], [ %19, %if.else ], [ %19, %if.then96 ], [ %19, %if.then86 ], [ %19, %if.else122 ], [ %19, %if.then116 ]
  %53 = phi i32 [ 0, %lor.lhs.false56 ], [ 0, %land.lhs.true46 ], [ 0, %while.end ], [ %18, %if.else ], [ %18, %if.then96 ], [ %18, %if.then86 ], [ %18, %if.else122 ], [ %18, %if.then116 ]
  %alt_fail.3 = phi i32 [ %alt_fail.0, %lor.lhs.false56 ], [ %alt_fail.0, %land.lhs.true46 ], [ %alt_fail.0, %while.end ], [ %alt_fail.0, %if.else ], [ %alt_fail.0, %if.then96 ], [ %alt_fail.0, %if.then86 ], [ %alt_fail.0, %if.else122 ], [ 1, %if.then116 ], !dbg !3923
  %alt_cost.9 = phi i32 [ %alt_cost.0, %lor.lhs.false56 ], [ %alt_cost.0, %land.lhs.true46 ], [ %alt_cost.0, %while.end ], [ %alt_cost.0, %if.else ], [ %add100, %if.then96 ], [ %alt_cost.0, %if.then86 ], [ %add128, %if.else122 ], [ %alt_cost.0, %if.then116 ], !dbg !3924
  %win.3 = phi i32 [ 0, %lor.lhs.false56 ], [ 0, %land.lhs.true46 ], [ 0, %while.end ], [ 0, %if.else ], [ 1, %if.then96 ], [ 1, %if.then86 ], [ 0, %if.else122 ], [ 0, %if.then116 ], !dbg !3928
  call void @llvm.dbg.value(metadata i32 %win.3, metadata !3857, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 %alt_cost.9, metadata !3847, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_fail.3, metadata !3846, metadata !DIExpression()), !dbg !3906
  %54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !4088
  %arrayidx497 = getelementptr inbounds [30 x i32], [30 x i32]* %insn_allows_mem, i64 0, i64 %indvars.iv37, !dbg !4092
  %u465 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, !dbg !4093
  %arrayidx466 = bitcast %union.u* %u465 to i64*, !dbg !4093
  %arrayidx358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4095
  %55 = bitcast %union.rtunion_def* %arrayidx358 to i32**, !dbg !4095
  br label %while.cond296, !dbg !4097

while.cond296:                                    ; preds = %sw.epilog, %if.end295
  %56 = phi i32 [ %52, %if.end295 ], [ %72, %sw.epilog ]
  %57 = phi i32 [ %53, %if.end295 ], [ %73, %sw.epilog ]
  %alt_cost.10 = phi i32 [ %alt_cost.9, %if.end295 ], [ %alt_cost.12, %sw.epilog ], !dbg !3924
  %p.3 = phi i8* [ %p.0.lcssa, %if.end295 ], [ %add.ptr, %sw.epilog ], !dbg !3928
  %allows_addr.0 = phi i32 [ 0, %if.end295 ], [ %allows_addr.1, %sw.epilog ], !dbg !4098
  %win.4 = phi i32 [ %win.3, %if.end295 ], [ %win.17, %sw.epilog ], !dbg !4099
  call void @llvm.dbg.value(metadata i32 %win.4, metadata !3857, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 %allows_addr.0, metadata !3856, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !3853, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 %alt_cost.10, metadata !3847, metadata !DIExpression()), !dbg !3906
  %58 = load i8, i8* %p.3, align 1, !dbg !4100
  call void @llvm.dbg.value(metadata i8 %58, metadata !3849, metadata !DIExpression()), !dbg !3928
  %tobool297 = icmp eq i8 %58, 0, !dbg !4097
  br i1 %tobool297, label %while.end534, label %while.body298, !dbg !4097

while.body298:                                    ; preds = %while.cond296
  switch i8 %58, label %sw.default [
    i8 44, label %sw.epilog
    i8 42, label %sw.bb
    i8 63, label %sw.bb301
    i8 33, label %sw.epilog
    i8 35, label %sw.epilog
    i8 38, label %sw.epilog
    i8 48, label %sw.epilog
    i8 49, label %sw.epilog
    i8 50, label %sw.epilog
    i8 51, label %sw.epilog
    i8 52, label %sw.epilog
    i8 53, label %sw.epilog
    i8 54, label %sw.epilog
    i8 55, label %sw.epilog
    i8 56, label %sw.epilog
    i8 57, label %sw.epilog
    i8 112, label %sw.bb304
    i8 109, label %sw.bb317
    i8 111, label %sw.bb317
    i8 86, label %sw.bb317
    i8 60, label %sw.bb328
    i8 62, label %sw.bb350
    i8 69, label %sw.bb375
    i8 70, label %sw.bb375
    i8 71, label %sw.bb396
    i8 72, label %sw.bb396
    i8 115, label %sw.bb408
    i8 105, label %while.body298.sw.bb426_crit_edge
    i8 110, label %sw.bb441
    i8 73, label %sw.bb459
    i8 74, label %sw.bb459
    i8 75, label %sw.bb459
    i8 76, label %sw.bb459
    i8 77, label %sw.bb459
    i8 78, label %sw.bb459
    i8 79, label %sw.bb459
    i8 80, label %sw.bb459
    i8 88, label %sw.bb473
    i8 103, label %sw.bb474
    i8 114, label %sw.bb498
  ], !dbg !4101

while.body298.sw.bb426_crit_edge:                 ; preds = %while.body298
  %bf.load427.pre = load i32, i32* %54, align 8, !dbg !4102
  %.pre17 = and i32 %bf.load427.pre, 65535, !dbg !4102
  br label %sw.bb426, !dbg !4101

sw.bb:                                            ; preds = %while.body298
  %incdec.ptr300 = getelementptr inbounds i8, i8* %p.3, i64 1, !dbg !4104
  call void @llvm.dbg.value(metadata i8* %incdec.ptr300, metadata !3853, metadata !DIExpression()), !dbg !3928
  %59 = load i8, i8* %incdec.ptr300, align 1, !dbg !4105
  call void @llvm.dbg.value(metadata i8 %59, metadata !3849, metadata !DIExpression()), !dbg !3928
  br label %sw.epilog, !dbg !4106

sw.bb301:                                         ; preds = %while.body298
  %add302 = add nsw i32 %alt_cost.10, 2, !dbg !4107
  call void @llvm.dbg.value(metadata i32 %add302, metadata !3847, metadata !DIExpression()), !dbg !3906
  br label %sw.epilog, !dbg !4108

sw.bb304:                                         ; preds = %while.body298
  call void @llvm.dbg.value(metadata i32 1, metadata !3856, metadata !DIExpression()), !dbg !3928
  %bf.load305 = load i32, i32* %54, align 8, !dbg !4109
  %bf.lshr = lshr i32 %bf.load305, 16, !dbg !4109
  %bf.clear306 = and i32 %bf.lshr, 255, !dbg !4109
  %call307 = tail call i32 @address_operand(%struct.rtx_def* %7, i32 %bf.clear306) #6, !dbg !4110
  call void @llvm.dbg.value(metadata i32 %call307, metadata !3857, metadata !DIExpression()), !dbg !3928
  %idxprom310 = zext i32 %57 to i64, !dbg !4111
  %call312 = tail call fastcc i32 @base_reg_class(i32 0, i32 6, i32 38) #7, !dbg !4112
  %arrayidx314 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_union, i64 0, i64 %idxprom310, i64 13, !dbg !4111
  %60 = load i32, i32* %arrayidx314, align 4, !dbg !4111
  store i32 %60, i32* %arrayidx14, align 4, !dbg !4113
  br label %sw.epilog, !dbg !4114

sw.bb317:                                         ; preds = %while.body298, %while.body298, %while.body298
  store i32 1, i32* %arrayidx16, align 4, !dbg !4115
  store i32 1, i32* %arrayidx497, align 4, !dbg !4116
  %bf.load322 = load i32, i32* %54, align 8, !dbg !4117
  %bf.clear323 = and i32 %bf.load322, 65535, !dbg !4117
  %cmp324 = icmp eq i32 %bf.clear323, 43, !dbg !4117
  %spec.select3 = select i1 %cmp324, i32 1, i32 %win.4, !dbg !4119
  call void @llvm.dbg.value(metadata i32 %spec.select3, metadata !3857, metadata !DIExpression()), !dbg !3928
  br label %sw.epilog, !dbg !4120

sw.bb328:                                         ; preds = %while.body298
  %bf.load329 = load i32, i32* %54, align 8, !dbg !4121
  %bf.clear330 = and i32 %bf.load329, 65535, !dbg !4121
  %cmp331 = icmp eq i32 %bf.clear330, 43, !dbg !4121
  br i1 %cmp331, label %land.lhs.true333, label %sw.epilog, !dbg !4123

land.lhs.true333:                                 ; preds = %sw.bb328
  %61 = load i32*, i32** %55, align 8, !dbg !4124
  %bf.load335 = load i32, i32* %61, align 8, !dbg !4124
  %bf.clear336 = and i32 %bf.load335, 65535, !dbg !4124
  %cmp337 = icmp eq i32 %bf.clear336, 74, !dbg !4125
  br i1 %cmp337, label %if.then348, label %lor.lhs.false339, !dbg !4126

lor.lhs.false339:                                 ; preds = %land.lhs.true333
  %cmp346 = icmp eq i32 %bf.clear336, 76, !dbg !4127
  br i1 %cmp346, label %if.then348, label %sw.epilog, !dbg !4128

if.then348:                                       ; preds = %lor.lhs.false339, %land.lhs.true333
  call void @llvm.dbg.value(metadata i32 1, metadata !3857, metadata !DIExpression()), !dbg !3928
  br label %sw.epilog, !dbg !4129

sw.bb350:                                         ; preds = %while.body298
  %bf.load351 = load i32, i32* %54, align 8, !dbg !4130
  %bf.clear352 = and i32 %bf.load351, 65535, !dbg !4130
  %cmp353 = icmp eq i32 %bf.clear352, 43, !dbg !4130
  br i1 %cmp353, label %land.lhs.true355, label %sw.epilog, !dbg !4131

land.lhs.true355:                                 ; preds = %sw.bb350
  %62 = load i32*, i32** %55, align 8, !dbg !4132
  %bf.load360 = load i32, i32* %62, align 8, !dbg !4132
  %bf.clear361 = and i32 %bf.load360, 65535, !dbg !4132
  %cmp362 = icmp eq i32 %bf.clear361, 75, !dbg !4133
  br i1 %cmp362, label %if.then373, label %lor.lhs.false364, !dbg !4134

lor.lhs.false364:                                 ; preds = %land.lhs.true355
  %cmp371 = icmp eq i32 %bf.clear361, 77, !dbg !4135
  br i1 %cmp371, label %if.then373, label %sw.epilog, !dbg !4136

if.then373:                                       ; preds = %lor.lhs.false364, %land.lhs.true355
  call void @llvm.dbg.value(metadata i32 1, metadata !3857, metadata !DIExpression()), !dbg !3928
  br label %sw.epilog, !dbg !4137

sw.bb375:                                         ; preds = %while.body298, %while.body298
  %bf.load376 = load i32, i32* %54, align 8, !dbg !4138
  %bf.clear377 = and i32 %bf.load376, 65535, !dbg !4138
  %cmp378 = icmp eq i32 %bf.clear377, 32, !dbg !4140
  br i1 %cmp378, label %if.then394, label %lor.lhs.false380, !dbg !4141

lor.lhs.false380:                                 ; preds = %sw.bb375
  %cmp383 = icmp eq i32 %bf.clear377, 33, !dbg !4142
  br i1 %cmp383, label %land.lhs.true385, label %sw.epilog, !dbg !4143

land.lhs.true385:                                 ; preds = %lor.lhs.false380
  %bf.lshr387 = lshr i32 %bf.load376, 16, !dbg !4144
  %bf.clear388 = and i32 %bf.lshr387, 255, !dbg !4144
  %idxprom389 = zext i32 %bf.clear388 to i64, !dbg !4144
  %arrayidx390 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom389, !dbg !4144
  %63 = load i8, i8* %arrayidx390, align 1, !dbg !4144
  %cmp392 = icmp eq i8 %63, 17, !dbg !4145
  br i1 %cmp392, label %if.then394, label %sw.epilog, !dbg !4146

if.then394:                                       ; preds = %land.lhs.true385, %sw.bb375
  call void @llvm.dbg.value(metadata i32 1, metadata !3857, metadata !DIExpression()), !dbg !3928
  br label %sw.epilog, !dbg !4147

sw.bb396:                                         ; preds = %while.body298, %while.body298
  %bf.load397 = load i32, i32* %54, align 8, !dbg !4148
  %bf.clear398 = and i32 %bf.load397, 65535, !dbg !4148
  %cmp399 = icmp eq i32 %bf.clear398, 32, !dbg !4150
  br i1 %cmp399, label %land.lhs.true401, label %sw.epilog, !dbg !4151

land.lhs.true401:                                 ; preds = %sw.bb396
  %call402 = tail call i32 @lookup_constraint(i8* %p.3) #6, !dbg !4152
  %call403 = tail call zeroext i8 @constraint_satisfied_p(%struct.rtx_def* %7, i32 %call402) #6, !dbg !4152
  %tobool405 = icmp eq i8 %call403, 0, !dbg !4152
  %spec.select4 = select i1 %tobool405, i32 %win.4, i32 1, !dbg !4153
  br label %sw.epilog, !dbg !4153

sw.bb408:                                         ; preds = %while.body298
  %bf.load409 = load i32, i32* %54, align 8, !dbg !4154
  %bf.clear410 = and i32 %bf.load409, 65535, !dbg !4154
  %cmp411 = icmp eq i32 %bf.clear410, 30, !dbg !4154
  br i1 %cmp411, label %sw.epilog, label %lor.lhs.false413, !dbg !4156

lor.lhs.false413:                                 ; preds = %sw.bb408
  %cmp416 = icmp eq i32 %bf.clear410, 32, !dbg !4157
  br i1 %cmp416, label %land.lhs.true418, label %sw.bb426, !dbg !4158

land.lhs.true418:                                 ; preds = %lor.lhs.false413
  %bf.clear421 = and i32 %bf.load409, 16711680, !dbg !4159
  %cmp422 = icmp eq i32 %bf.clear421, 0, !dbg !4160
  br i1 %cmp422, label %sw.epilog, label %sw.bb426, !dbg !4161

sw.bb426:                                         ; preds = %while.body298.sw.bb426_crit_edge, %lor.lhs.false413, %land.lhs.true418
  %bf.clear428.pre-phi = phi i32 [ %.pre17, %while.body298.sw.bb426_crit_edge ], [ %bf.clear410, %lor.lhs.false413 ], [ 32, %land.lhs.true418 ], !dbg !4102
  %idxprom429 = zext i32 %bf.clear428.pre-phi to i64, !dbg !4102
  %arrayidx430 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom429, !dbg !4102
  %64 = load i32, i32* %arrayidx430, align 4, !dbg !4102
  %cmp431 = icmp eq i32 %64, 9, !dbg !4102
  br i1 %cmp431, label %land.lhs.true433, label %sw.epilog, !dbg !4162

land.lhs.true433:                                 ; preds = %sw.bb426
  %65 = load i32, i32* @flag_pic, align 4, !dbg !4163
  %tobool434 = icmp eq i32 %65, 0, !dbg !4163
  br i1 %tobool434, label %if.then439, label %lor.lhs.false435, !dbg !4164

lor.lhs.false435:                                 ; preds = %land.lhs.true433
  %call436 = tail call zeroext i8 @legitimate_pic_operand_p(%struct.rtx_def* %7) #6, !dbg !4165
  %tobool438 = icmp eq i8 %call436, 0, !dbg !4165
  br i1 %tobool438, label %sw.epilog, label %if.then439, !dbg !4166

if.then439:                                       ; preds = %lor.lhs.false435, %land.lhs.true433
  call void @llvm.dbg.value(metadata i32 1, metadata !3857, metadata !DIExpression()), !dbg !3928
  br label %sw.epilog, !dbg !4167

sw.bb441:                                         ; preds = %while.body298
  %bf.load442 = load i32, i32* %54, align 8, !dbg !4168
  %bf.clear443 = and i32 %bf.load442, 65535, !dbg !4168
  %cmp444 = icmp eq i32 %bf.clear443, 30, !dbg !4168
  br i1 %cmp444, label %if.then457, label %lor.lhs.false446, !dbg !4170

lor.lhs.false446:                                 ; preds = %sw.bb441
  %cmp449 = icmp eq i32 %bf.clear443, 32, !dbg !4171
  br i1 %cmp449, label %land.lhs.true451, label %sw.epilog, !dbg !4172

land.lhs.true451:                                 ; preds = %lor.lhs.false446
  %bf.clear454 = and i32 %bf.load442, 16711680, !dbg !4173
  %cmp455 = icmp eq i32 %bf.clear454, 0, !dbg !4174
  br i1 %cmp455, label %if.then457, label %sw.epilog, !dbg !4175

if.then457:                                       ; preds = %land.lhs.true451, %sw.bb441
  call void @llvm.dbg.value(metadata i32 1, metadata !3857, metadata !DIExpression()), !dbg !3928
  br label %sw.epilog, !dbg !4176

sw.bb459:                                         ; preds = %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298
  %bf.load460 = load i32, i32* %54, align 8, !dbg !4177
  %bf.clear461 = and i32 %bf.load460, 65535, !dbg !4177
  %cmp462 = icmp eq i32 %bf.clear461, 30, !dbg !4177
  br i1 %cmp462, label %land.lhs.true464, label %sw.epilog, !dbg !4178

land.lhs.true464:                                 ; preds = %sw.bb459
  %66 = load i64, i64* %arrayidx466, align 8, !dbg !4179
  %call467 = tail call i32 @lookup_constraint(i8* %p.3) #6, !dbg !4179
  %call468 = tail call zeroext i8 @insn_const_int_ok_for_constraint(i64 %66, i32 %call467) #6, !dbg !4179
  %tobool470 = icmp eq i8 %call468, 0, !dbg !4179
  %spec.select5 = select i1 %tobool470, i32 %win.4, i32 1, !dbg !4180
  br label %sw.epilog, !dbg !4180

sw.bb473:                                         ; preds = %while.body298
  call void @llvm.dbg.value(metadata i32 1, metadata !3857, metadata !DIExpression()), !dbg !3928
  br label %sw.epilog, !dbg !4181

sw.bb474:                                         ; preds = %while.body298
  %bf.load475 = load i32, i32* %54, align 8, !dbg !4182
  %bf.clear476 = and i32 %bf.load475, 65535, !dbg !4182
  %cmp477 = icmp eq i32 %bf.clear476, 43, !dbg !4182
  br i1 %cmp477, label %if.then492, label %lor.lhs.false479, !dbg !4183

lor.lhs.false479:                                 ; preds = %sw.bb474
  %idxprom482 = zext i32 %bf.clear476 to i64, !dbg !4184
  %arrayidx483 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom482, !dbg !4184
  %67 = load i32, i32* %arrayidx483, align 4, !dbg !4184
  %cmp484 = icmp eq i32 %67, 9, !dbg !4184
  br i1 %cmp484, label %land.lhs.true486, label %if.end493, !dbg !4185

land.lhs.true486:                                 ; preds = %lor.lhs.false479
  %68 = load i32, i32* @flag_pic, align 4, !dbg !4186
  %tobool487 = icmp eq i32 %68, 0, !dbg !4186
  br i1 %tobool487, label %if.then492, label %lor.lhs.false488, !dbg !4187

lor.lhs.false488:                                 ; preds = %land.lhs.true486
  %call489 = tail call zeroext i8 @legitimate_pic_operand_p(%struct.rtx_def* %7) #6, !dbg !4188
  %tobool491 = icmp eq i8 %call489, 0, !dbg !4188
  br i1 %tobool491, label %if.end493, label %if.then492, !dbg !4189

if.then492:                                       ; preds = %lor.lhs.false488, %land.lhs.true486, %sw.bb474
  call void @llvm.dbg.value(metadata i32 1, metadata !3857, metadata !DIExpression()), !dbg !3928
  br label %if.end493, !dbg !4190

if.end493:                                        ; preds = %lor.lhs.false488, %if.then492, %lor.lhs.false479
  %win.13 = phi i32 [ 1, %if.then492 ], [ %win.4, %lor.lhs.false488 ], [ %win.4, %lor.lhs.false479 ], !dbg !3928
  call void @llvm.dbg.value(metadata i32 %win.13, metadata !3857, metadata !DIExpression()), !dbg !3928
  store i32 1, i32* %arrayidx16, align 4, !dbg !4191
  store i32 1, i32* %arrayidx497, align 4, !dbg !4192
  br label %sw.bb498, !dbg !4193

sw.bb498:                                         ; preds = %while.body298, %if.end493
  %69 = phi i32 [ %56, %while.body298 ], [ 1, %if.end493 ]
  %win.14 = phi i32 [ %win.4, %while.body298 ], [ %win.13, %if.end493 ], !dbg !3928
  call void @llvm.dbg.value(metadata i32 %win.14, metadata !3857, metadata !DIExpression()), !dbg !3928
  %idxprom501 = zext i32 %57 to i64, !dbg !4194
  %arrayidx503 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_union, i64 0, i64 %idxprom501, i64 13, !dbg !4194
  %70 = load i32, i32* %arrayidx503, align 4, !dbg !4194
  store i32 %70, i32* %arrayidx14, align 4, !dbg !4195
  br label %sw.epilog, !dbg !4196

sw.default:                                       ; preds = %while.body298
  %call506 = tail call i32 @lookup_constraint(i8* %p.3) #6, !dbg !4197
  %call507 = tail call i32 @regclass_for_constraint(i32 %call506) #6, !dbg !4197
  %cmp508 = icmp eq i32 %call507, 0, !dbg !4199
  br i1 %cmp508, label %if.else521, label %if.then510, !dbg !4200

if.then510:                                       ; preds = %sw.default
  %idxprom513 = zext i32 %57 to i64, !dbg !4201
  %call515 = tail call i32 @lookup_constraint(i8* %p.3) #6, !dbg !4202
  %call516 = tail call i32 @regclass_for_constraint(i32 %call515) #6, !dbg !4202
  %idxprom517 = zext i32 %call516 to i64, !dbg !4201
  %arrayidx518 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_union, i64 0, i64 %idxprom513, i64 %idxprom517, !dbg !4201
  %71 = load i32, i32* %arrayidx518, align 4, !dbg !4201
  store i32 %71, i32* %arrayidx14, align 4, !dbg !4203
  br label %sw.epilog, !dbg !4204

if.else521:                                       ; preds = %sw.default
  %call522 = tail call i32 @lookup_constraint(i8* %p.3) #6, !dbg !4205
  %call523 = tail call zeroext i8 @constraint_satisfied_p(%struct.rtx_def* %7, i32 %call522) #6, !dbg !4205
  %tobool524 = icmp eq i8 %call523, 0, !dbg !4205
  %spec.select6 = select i1 %tobool524, i32 %win.4, i32 1, !dbg !4207
  call void @llvm.dbg.value(metadata i32 %spec.select6, metadata !3857, metadata !DIExpression()), !dbg !3928
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false435, %land.lhs.true464, %land.lhs.true401, %if.then510, %if.else521, %sw.bb459, %lor.lhs.false446, %land.lhs.true451, %if.then457, %sw.bb426, %if.then439, %sw.bb408, %land.lhs.true418, %sw.bb396, %lor.lhs.false380, %land.lhs.true385, %if.then394, %sw.bb350, %lor.lhs.false364, %if.then373, %sw.bb328, %lor.lhs.false339, %if.then348, %sw.bb301, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %while.body298, %sw.bb498, %sw.bb473, %while.body298, %sw.bb317, %sw.bb304, %sw.bb
  %72 = phi i32 [ %69, %sw.bb498 ], [ %56, %sw.bb473 ], [ 1, %sw.bb317 ], [ %56, %sw.bb304 ], [ %56, %sw.bb ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %while.body298 ], [ %56, %sw.bb301 ], [ %56, %if.then348 ], [ %56, %lor.lhs.false339 ], [ %56, %sw.bb328 ], [ %56, %if.then373 ], [ %56, %lor.lhs.false364 ], [ %56, %sw.bb350 ], [ %56, %if.then394 ], [ %56, %land.lhs.true385 ], [ %56, %lor.lhs.false380 ], [ %56, %land.lhs.true401 ], [ %56, %sw.bb396 ], [ %56, %land.lhs.true418 ], [ %56, %sw.bb408 ], [ %56, %if.then439 ], [ %56, %lor.lhs.false435 ], [ %56, %sw.bb426 ], [ %56, %if.then457 ], [ %56, %land.lhs.true451 ], [ %56, %lor.lhs.false446 ], [ %56, %land.lhs.true464 ], [ %56, %sw.bb459 ], [ %56, %if.else521 ], [ %56, %if.then510 ]
  %73 = phi i32 [ %70, %sw.bb498 ], [ %57, %sw.bb473 ], [ %57, %sw.bb317 ], [ %60, %sw.bb304 ], [ %57, %sw.bb ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %while.body298 ], [ %57, %sw.bb301 ], [ %57, %if.then348 ], [ %57, %lor.lhs.false339 ], [ %57, %sw.bb328 ], [ %57, %if.then373 ], [ %57, %lor.lhs.false364 ], [ %57, %sw.bb350 ], [ %57, %if.then394 ], [ %57, %land.lhs.true385 ], [ %57, %lor.lhs.false380 ], [ %57, %land.lhs.true401 ], [ %57, %sw.bb396 ], [ %57, %land.lhs.true418 ], [ %57, %sw.bb408 ], [ %57, %if.then439 ], [ %57, %lor.lhs.false435 ], [ %57, %sw.bb426 ], [ %57, %if.then457 ], [ %57, %land.lhs.true451 ], [ %57, %lor.lhs.false446 ], [ %57, %land.lhs.true464 ], [ %57, %sw.bb459 ], [ %57, %if.else521 ], [ %71, %if.then510 ]
  %alt_cost.12 = phi i32 [ %alt_cost.10, %sw.bb498 ], [ %alt_cost.10, %sw.bb473 ], [ %alt_cost.10, %sw.bb317 ], [ %alt_cost.10, %sw.bb304 ], [ %alt_cost.10, %sw.bb ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %alt_cost.10, %while.body298 ], [ %add302, %sw.bb301 ], [ %alt_cost.10, %if.then348 ], [ %alt_cost.10, %lor.lhs.false339 ], [ %alt_cost.10, %sw.bb328 ], [ %alt_cost.10, %if.then373 ], [ %alt_cost.10, %lor.lhs.false364 ], [ %alt_cost.10, %sw.bb350 ], [ %alt_cost.10, %if.then394 ], [ %alt_cost.10, %land.lhs.true385 ], [ %alt_cost.10, %lor.lhs.false380 ], [ %alt_cost.10, %land.lhs.true401 ], [ %alt_cost.10, %sw.bb396 ], [ %alt_cost.10, %land.lhs.true418 ], [ %alt_cost.10, %sw.bb408 ], [ %alt_cost.10, %if.then439 ], [ %alt_cost.10, %lor.lhs.false435 ], [ %alt_cost.10, %sw.bb426 ], [ %alt_cost.10, %if.then457 ], [ %alt_cost.10, %land.lhs.true451 ], [ %alt_cost.10, %lor.lhs.false446 ], [ %alt_cost.10, %land.lhs.true464 ], [ %alt_cost.10, %sw.bb459 ], [ %alt_cost.10, %if.else521 ], [ %alt_cost.10, %if.then510 ], !dbg !3924
  %c.0 = phi i8 [ %58, %sw.bb498 ], [ 88, %sw.bb473 ], [ %58, %sw.bb317 ], [ 112, %sw.bb304 ], [ %59, %sw.bb ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ %58, %while.body298 ], [ 63, %sw.bb301 ], [ 60, %if.then348 ], [ 60, %lor.lhs.false339 ], [ 60, %sw.bb328 ], [ 62, %if.then373 ], [ 62, %lor.lhs.false364 ], [ 62, %sw.bb350 ], [ %58, %if.then394 ], [ %58, %land.lhs.true385 ], [ %58, %lor.lhs.false380 ], [ %58, %land.lhs.true401 ], [ %58, %sw.bb396 ], [ 115, %land.lhs.true418 ], [ 115, %sw.bb408 ], [ %58, %if.then439 ], [ %58, %lor.lhs.false435 ], [ %58, %sw.bb426 ], [ 110, %if.then457 ], [ 110, %land.lhs.true451 ], [ 110, %lor.lhs.false446 ], [ %58, %land.lhs.true464 ], [ %58, %sw.bb459 ], [ %58, %if.else521 ], [ %58, %if.then510 ], !dbg !3928
  %p.4 = phi i8* [ %p.3, %sw.bb498 ], [ %p.3, %sw.bb473 ], [ %p.3, %sw.bb317 ], [ %p.3, %sw.bb304 ], [ %incdec.ptr300, %sw.bb ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %while.body298 ], [ %p.3, %sw.bb301 ], [ %p.3, %if.then348 ], [ %p.3, %lor.lhs.false339 ], [ %p.3, %sw.bb328 ], [ %p.3, %if.then373 ], [ %p.3, %lor.lhs.false364 ], [ %p.3, %sw.bb350 ], [ %p.3, %if.then394 ], [ %p.3, %land.lhs.true385 ], [ %p.3, %lor.lhs.false380 ], [ %p.3, %land.lhs.true401 ], [ %p.3, %sw.bb396 ], [ %p.3, %land.lhs.true418 ], [ %p.3, %sw.bb408 ], [ %p.3, %if.then439 ], [ %p.3, %lor.lhs.false435 ], [ %p.3, %sw.bb426 ], [ %p.3, %if.then457 ], [ %p.3, %land.lhs.true451 ], [ %p.3, %lor.lhs.false446 ], [ %p.3, %land.lhs.true464 ], [ %p.3, %sw.bb459 ], [ %p.3, %if.else521 ], [ %p.3, %if.then510 ], !dbg !3928
  %allows_addr.1 = phi i32 [ %allows_addr.0, %sw.bb498 ], [ %allows_addr.0, %sw.bb473 ], [ %allows_addr.0, %sw.bb317 ], [ 1, %sw.bb304 ], [ %allows_addr.0, %sw.bb ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %while.body298 ], [ %allows_addr.0, %sw.bb301 ], [ %allows_addr.0, %if.then348 ], [ %allows_addr.0, %lor.lhs.false339 ], [ %allows_addr.0, %sw.bb328 ], [ %allows_addr.0, %if.then373 ], [ %allows_addr.0, %lor.lhs.false364 ], [ %allows_addr.0, %sw.bb350 ], [ %allows_addr.0, %if.then394 ], [ %allows_addr.0, %land.lhs.true385 ], [ %allows_addr.0, %lor.lhs.false380 ], [ %allows_addr.0, %land.lhs.true401 ], [ %allows_addr.0, %sw.bb396 ], [ %allows_addr.0, %land.lhs.true418 ], [ %allows_addr.0, %sw.bb408 ], [ %allows_addr.0, %if.then439 ], [ %allows_addr.0, %lor.lhs.false435 ], [ %allows_addr.0, %sw.bb426 ], [ %allows_addr.0, %if.then457 ], [ %allows_addr.0, %land.lhs.true451 ], [ %allows_addr.0, %lor.lhs.false446 ], [ %allows_addr.0, %land.lhs.true464 ], [ %allows_addr.0, %sw.bb459 ], [ %allows_addr.0, %if.else521 ], [ %allows_addr.0, %if.then510 ], !dbg !3928
  %win.17 = phi i32 [ %win.14, %sw.bb498 ], [ 1, %sw.bb473 ], [ %spec.select3, %sw.bb317 ], [ %call307, %sw.bb304 ], [ %win.4, %sw.bb ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %while.body298 ], [ %win.4, %sw.bb301 ], [ 1, %if.then348 ], [ %win.4, %lor.lhs.false339 ], [ %win.4, %sw.bb328 ], [ 1, %if.then373 ], [ %win.4, %lor.lhs.false364 ], [ %win.4, %sw.bb350 ], [ 1, %if.then394 ], [ %win.4, %land.lhs.true385 ], [ %win.4, %lor.lhs.false380 ], [ %spec.select4, %land.lhs.true401 ], [ %win.4, %sw.bb396 ], [ %win.4, %land.lhs.true418 ], [ %win.4, %sw.bb408 ], [ 1, %if.then439 ], [ %win.4, %lor.lhs.false435 ], [ %win.4, %sw.bb426 ], [ 1, %if.then457 ], [ %win.4, %land.lhs.true451 ], [ %win.4, %lor.lhs.false446 ], [ %spec.select5, %land.lhs.true464 ], [ %win.4, %sw.bb459 ], [ %spec.select6, %if.else521 ], [ %win.4, %if.then510 ], !dbg !3928
  call void @llvm.dbg.value(metadata i32 %win.17, metadata !3857, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 %allows_addr.1, metadata !3856, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.4, metadata !3853, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8 %c.0, metadata !3849, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 %alt_cost.12, metadata !3847, metadata !DIExpression()), !dbg !3906
  %call528 = tail call fastcc i64 @insn_constraint_len(i8 signext %c.0, i8* %p.4) #7, !dbg !4208
  %add.ptr = getelementptr inbounds i8, i8* %p.4, i64 %call528, !dbg !4209
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3853, metadata !DIExpression()), !dbg !3928
  %cmp530 = icmp eq i8 %c.0, 44, !dbg !4210
  br i1 %cmp530, label %while.end534, label %while.cond296, !dbg !4212, !llvm.loop !4213

while.end534:                                     ; preds = %while.cond296, %sw.epilog
  %74 = phi i32 [ %56, %while.cond296 ], [ %72, %sw.epilog ]
  %75 = phi i32 [ %57, %while.cond296 ], [ %73, %sw.epilog ]
  %alt_cost.13 = phi i32 [ %alt_cost.10, %while.cond296 ], [ %alt_cost.12, %sw.epilog ], !dbg !3924
  %p.5 = phi i8* [ %p.3, %while.cond296 ], [ %add.ptr, %sw.epilog ], !dbg !3928
  %allows_addr.2 = phi i32 [ %allows_addr.0, %while.cond296 ], [ %allows_addr.1, %sw.epilog ], !dbg !4098
  %win.18 = phi i32 [ %win.4, %while.cond296 ], [ %win.17, %sw.epilog ], !dbg !4099
  call void @llvm.dbg.value(metadata i32 %win.18, metadata !3857, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 %allows_addr.2, metadata !3856, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i8* %p.5, metadata !3853, metadata !DIExpression()), !dbg !3928
  call void @llvm.dbg.value(metadata i32 %alt_cost.13, metadata !3847, metadata !DIExpression()), !dbg !3906
  store i8* %p.5, i8** %arrayidx8, align 8, !dbg !4215
  %bf.load537 = load i32, i32* %54, align 8, !dbg !4216
  %bf.clear538 = and i32 %bf.load537, 65535, !dbg !4216
  %cmp539 = icmp eq i32 %bf.clear538, 37, !dbg !4216
  br i1 %cmp539, label %land.lhs.true541, label %if.else700, !dbg !4217

land.lhs.true541:                                 ; preds = %while.end534
  %call542 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !4218
  %cmp543 = icmp ugt i32 %call542, 52, !dbg !4219
  br i1 %cmp543, label %if.then545, label %if.else700, !dbg !4220

if.then545:                                       ; preds = %land.lhs.true541
  %cmp548 = icmp eq i32 %75, 0, !dbg !4221
  br i1 %cmp548, label %cleanup, label %if.else551, !dbg !4222

if.else551:                                       ; preds = %if.then545
  %arrayidx554 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @this_op_costs, i64 0, i64 %indvars.iv37, !dbg !4223
  %76 = load %struct.costs*, %struct.costs** %arrayidx554, align 8, !dbg !4223
  call void @llvm.dbg.value(metadata %struct.costs* %76, metadata !3867, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 0, metadata !3835, metadata !DIExpression()), !dbg !3897
  %arrayidx562 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv37, !dbg !4225
  br label %for.cond555, !dbg !4229

for.cond555:                                      ; preds = %cond.end581, %if.else551
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %cond.end581 ], [ 0, %if.else551 ]
  %77 = phi i32 [ %86, %cond.end581 ], [ %75, %if.else551 ]
  %78 = phi i32 [ %87, %cond.end581 ], [ %75, %if.else551 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv35, metadata !3835, metadata !DIExpression()), !dbg !3897
  %79 = load i32, i32* @cost_classes_num, align 4, !dbg !4230
  %80 = sext i32 %79 to i64, !dbg !4231
  %cmp556 = icmp slt i64 %indvars.iv35, %80, !dbg !4231
  br i1 %cmp556, label %for.body558, label %for.end590, !dbg !4232

for.body558:                                      ; preds = %for.cond555
  %81 = load i32*, i32** @cost_classes, align 8, !dbg !4233
  %arrayidx560 = getelementptr inbounds i32, i32* %81, i64 %indvars.iv35, !dbg !4233
  %82 = load i32, i32* %arrayidx560, align 4, !dbg !4233
  call void @llvm.dbg.value(metadata i32 %82, metadata !3845, metadata !DIExpression()), !dbg !3906
  %83 = load i32, i32* %arrayidx562, align 4, !dbg !4234
  %cmp563 = icmp eq i32 %83, 1, !dbg !4235
  br i1 %cmp563, label %cond.end570, label %cond.true565, !dbg !4234

cond.true565:                                     ; preds = %for.body558
  %call568 = tail call fastcc i32 @ira_get_may_move_cost(i32 %8, i32 %82, i32 %77, i8 zeroext 1) #7, !dbg !4236
  %.pre16 = load i32, i32* %arrayidx562, align 4, !dbg !4237
  br label %cond.end570, !dbg !4234

cond.end570:                                      ; preds = %for.body558, %cond.true565
  %84 = phi i32 [ %.pre16, %cond.true565 ], [ 1, %for.body558 ], !dbg !4237
  %85 = phi i32 [ %77, %cond.true565 ], [ %78, %for.body558 ]
  %cond571 = phi i32 [ %call568, %cond.true565 ], [ 0, %for.body558 ], !dbg !4234
  %cmp574 = icmp eq i32 %84, 0, !dbg !4238
  br i1 %cmp574, label %cond.end581, label %cond.true576, !dbg !4237

cond.true576:                                     ; preds = %cond.end570
  %call579 = tail call fastcc i32 @ira_get_may_move_cost(i32 %8, i32 %75, i32 %82, i8 zeroext 0) #7, !dbg !4239
  br label %cond.end581, !dbg !4237

cond.end581:                                      ; preds = %cond.end570, %cond.true576
  %86 = phi i32 [ %75, %cond.true576 ], [ %77, %cond.end570 ]
  %87 = phi i32 [ %75, %cond.true576 ], [ %85, %cond.end570 ]
  %cond582 = phi i32 [ %call579, %cond.true576 ], [ 0, %cond.end570 ], !dbg !4237
  %add583 = add nsw i32 %cond571, %cond582, !dbg !4240
  %88 = load i32, i32* @frequency, align 4, !dbg !4241
  %mul584 = mul nsw i32 %add583, %88, !dbg !4242
  %arrayidx587 = getelementptr inbounds %struct.costs, %struct.costs* %76, i64 0, i32 1, i64 %indvars.iv35, !dbg !4243
  store i32 %mul584, i32* %arrayidx587, align 4, !dbg !4244
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !dbg !4245
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br label %for.cond555, !dbg !4246, !llvm.loop !4247

for.end590:                                       ; preds = %for.cond555
  %.lcssa48 = phi i32 [ %78, %for.cond555 ]
  %89 = load i32, i32* %arrayidx562, align 4, !dbg !4249
  %cmp593 = icmp eq i32 %89, 0, !dbg !4250
  br i1 %cmp593, label %cond.end605, label %cond.true595, !dbg !4249

cond.true595:                                     ; preds = %for.end590
  %idxprom596 = zext i32 %8 to i64, !dbg !4251
  %idxprom600 = zext i32 %.lcssa48 to i64, !dbg !4251
  %arrayidx602 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom596, i64 %idxprom600, i64 0, !dbg !4251
  %90 = load i16, i16* %arrayidx602, align 4, !dbg !4251
  %conv603 = sext i16 %90 to i32, !dbg !4251
  br label %cond.end605, !dbg !4249

cond.end605:                                      ; preds = %for.end590, %cond.true595
  %cond606 = phi i32 [ %conv603, %cond.true595 ], [ 0, %for.end590 ], !dbg !4249
  %cmp609 = icmp eq i32 %89, 1, !dbg !4252
  br i1 %cmp609, label %cond.end621, label %cond.true611, !dbg !4253

cond.true611:                                     ; preds = %cond.end605
  %idxprom612 = zext i32 %8 to i64, !dbg !4254
  %idxprom616 = zext i32 %.lcssa48 to i64, !dbg !4254
  %arrayidx618 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom612, i64 %idxprom616, i64 1, !dbg !4254
  %91 = load i16, i16* %arrayidx618, align 2, !dbg !4254
  %conv619 = sext i16 %91 to i32, !dbg !4254
  br label %cond.end621, !dbg !4253

cond.end621:                                      ; preds = %cond.end605, %cond.true611
  %cond622 = phi i32 [ %conv619, %cond.true611 ], [ 0, %cond.end605 ], !dbg !4253
  %add623 = add nsw i32 %cond606, %cond622, !dbg !4255
  %sub626 = sub nsw i32 %add623, %74, !dbg !4256
  %92 = load i32, i32* @frequency, align 4, !dbg !4257
  %mul627 = mul nsw i32 %sub626, %92, !dbg !4258
  %mem_cost628 = getelementptr inbounds %struct.costs, %struct.costs* %76, i64 0, i32 0, !dbg !4259
  store i32 %mul627, i32* %mem_cost628, align 4, !dbg !4260
  br i1 %tobool200, label %cleanup, label %if.then630, !dbg !4261

if.then630:                                       ; preds = %cond.end621
  %.b9 = load i1, i1* @allocno_p, align 1, !dbg !4262
  br i1 %.b9, label %cond.true634, label %cond.false639, !dbg !4262

cond.true634:                                     ; preds = %if.then630
  %93 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !4262
  %call635 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !4262
  %idxprom636 = zext i32 %call635 to i64, !dbg !4262
  %arrayidx637 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %93, i64 %idxprom636, !dbg !4262
  %94 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx637, align 8, !dbg !4262
  %num638 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %94, i64 0, i32 0, !dbg !4262
  %95 = load i32, i32* %num638, align 8, !dbg !4262
  br label %cond.end641, !dbg !4262

cond.false639:                                    ; preds = %if.then630
  %call640 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %7) #7, !dbg !4262
  br label %cond.end641, !dbg !4262

cond.end641:                                      ; preds = %cond.false639, %cond.true634
  %cond642 = phi i32 [ %95, %cond.true634 ], [ %call640, %cond.false639 ], !dbg !4262
  %idxprom643 = sext i32 %cond642 to i64, !dbg !4263
  %arrayidx644 = getelementptr inbounds i32, i32* %pref, i64 %idxprom643, !dbg !4263
  %96 = load i32, i32* %arrayidx644, align 4, !dbg !4263
  call void @llvm.dbg.value(metadata i32 %96, metadata !3872, metadata !DIExpression()), !dbg !4264
  %cmp645 = icmp eq i32 %96, 0, !dbg !4265
  br i1 %cmp645, label %if.then647, label %if.else682, !dbg !4267

if.then647:                                       ; preds = %cond.end641
  %97 = load i32, i32* %arrayidx562, align 4, !dbg !4268
  %cmp650 = icmp eq i32 %97, 0, !dbg !4269
  br i1 %cmp650, label %cond.end662, label %cond.true652, !dbg !4268

cond.true652:                                     ; preds = %if.then647
  %idxprom653 = zext i32 %8 to i64, !dbg !4270
  %idxprom657 = zext i32 %.lcssa48 to i64, !dbg !4270
  %arrayidx659 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom653, i64 %idxprom657, i64 0, !dbg !4270
  %98 = load i16, i16* %arrayidx659, align 4, !dbg !4270
  %conv660 = sext i16 %98 to i32, !dbg !4270
  br label %cond.end662, !dbg !4268

cond.end662:                                      ; preds = %if.then647, %cond.true652
  %cond663 = phi i32 [ %conv660, %cond.true652 ], [ 0, %if.then647 ], !dbg !4268
  %cmp666 = icmp eq i32 %97, 1, !dbg !4271
  br i1 %cmp666, label %cond.end678, label %cond.true668, !dbg !4272

cond.true668:                                     ; preds = %cond.end662
  %idxprom669 = zext i32 %8 to i64, !dbg !4273
  %idxprom673 = zext i32 %.lcssa48 to i64, !dbg !4273
  %arrayidx675 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom669, i64 %idxprom673, i64 1, !dbg !4273
  %99 = load i16, i16* %arrayidx675, align 2, !dbg !4273
  %conv676 = sext i16 %99 to i32, !dbg !4273
  br label %cond.end678, !dbg !4272

cond.end678:                                      ; preds = %cond.end662, %cond.true668
  %cond679 = phi i32 [ %conv676, %cond.true668 ], [ 0, %cond.end662 ], !dbg !4272
  %add680 = add nsw i32 %cond663, %cond679, !dbg !4274
  %add681 = add nsw i32 %alt_cost.13, %add680, !dbg !4275
  call void @llvm.dbg.value(metadata i32 %add681, metadata !3847, metadata !DIExpression()), !dbg !3906
  br label %cleanup, !dbg !4276

if.else682:                                       ; preds = %cond.end641
  %idxprom683 = zext i32 %96 to i64, !dbg !4277
  %idxprom687 = zext i32 %.lcssa48 to i64, !dbg !4277
  %arrayidx688 = getelementptr inbounds [27 x [27 x i32]], [27 x [27 x i32]]* @ira_reg_class_intersect, i64 0, i64 %idxprom683, i64 %idxprom687, !dbg !4277
  %100 = load i32, i32* %arrayidx688, align 4, !dbg !4277
  %cmp689 = icmp eq i32 %100, 0, !dbg !4279
  br i1 %cmp689, label %if.then691, label %cleanup, !dbg !4280

if.then691:                                       ; preds = %if.else682
  %call694 = tail call fastcc i32 @ira_get_register_move_cost(i32 %8, i32 %96, i32 %.lcssa48) #7, !dbg !4281
  %add695 = add nsw i32 %alt_cost.13, %call694, !dbg !4282
  call void @llvm.dbg.value(metadata i32 %add695, metadata !3847, metadata !DIExpression()), !dbg !3906
  br label %cleanup, !dbg !4283

if.else700:                                       ; preds = %land.lhs.true541, %while.end534
  %tobool701 = icmp eq i32 %win.18, 0, !dbg !4284
  br i1 %tobool701, label %lor.lhs.false702, label %cleanup, !dbg !4286

lor.lhs.false702:                                 ; preds = %if.else700
  %bf.load703 = load i32, i32* %54, align 8, !dbg !4287
  %bf.clear704 = and i32 %bf.load703, 65535, !dbg !4287
  %cmp705 = icmp eq i32 %bf.clear704, 37, !dbg !4287
  br i1 %cmp705, label %land.lhs.true707, label %if.else716, !dbg !4288

land.lhs.true707:                                 ; preds = %lor.lhs.false702
  %bf.lshr711 = lshr i32 %bf.load703, 16, !dbg !4289
  %bf.clear712 = and i32 %bf.lshr711, 255, !dbg !4289
  %call713 = tail call i32 @reg_fits_class_p(%struct.rtx_def* %7, i32 %75, i32 0, i32 %bf.clear712) #6, !dbg !4290
  %tobool714 = icmp eq i32 %call713, 0, !dbg !4290
  br i1 %tobool714, label %if.else716, label %cleanup, !dbg !4291

if.else716:                                       ; preds = %land.lhs.true707, %lor.lhs.false702
  %cmp719 = icmp eq i32 %75, 0, !dbg !4292
  br i1 %cmp719, label %if.else742, label %if.then721, !dbg !4294

if.then721:                                       ; preds = %if.else716
  %arrayidx723 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv37, !dbg !4295
  %101 = load i32, i32* %arrayidx723, align 4, !dbg !4295
  %cmp724 = icmp eq i32 %101, 1, !dbg !4298
  br i1 %cmp724, label %if.end731, label %if.then726, !dbg !4299

if.then726:                                       ; preds = %if.then721
  %call729 = tail call fastcc i32 @copy_cost(%struct.rtx_def* %7, i32 %8, i32 %75, i8 zeroext 1, %struct.secondary_reload_info* null) #7, !dbg !4300
  %add730 = add nsw i32 %alt_cost.13, %call729, !dbg !4301
  call void @llvm.dbg.value(metadata i32 %add730, metadata !3847, metadata !DIExpression()), !dbg !3906
  %.pre15 = load i32, i32* %arrayidx723, align 4, !dbg !4302
  br label %if.end731, !dbg !4304

if.end731:                                        ; preds = %if.then721, %if.then726
  %102 = phi i32 [ %.pre15, %if.then726 ], [ 1, %if.then721 ], !dbg !4302
  %alt_cost.18 = phi i32 [ %add730, %if.then726 ], [ %alt_cost.13, %if.then721 ], !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_cost.18, metadata !3847, metadata !DIExpression()), !dbg !3906
  %cmp734 = icmp eq i32 %102, 0, !dbg !4305
  br i1 %cmp734, label %cleanup, label %if.then736, !dbg !4306

if.then736:                                       ; preds = %if.end731
  %call739 = tail call fastcc i32 @copy_cost(%struct.rtx_def* %7, i32 %8, i32 %75, i8 zeroext 0, %struct.secondary_reload_info* null) #7, !dbg !4307
  %add740 = add nsw i32 %alt_cost.18, %call739, !dbg !4308
  call void @llvm.dbg.value(metadata i32 %add740, metadata !3847, metadata !DIExpression()), !dbg !3906
  br label %cleanup, !dbg !4309

if.else742:                                       ; preds = %if.else716
  %bf.load743 = load i32, i32* %54, align 8, !dbg !4310
  %bf.clear744 = and i32 %bf.load743, 65535, !dbg !4310
  %idxprom745 = zext i32 %bf.clear744 to i64, !dbg !4310
  %arrayidx746 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom745, !dbg !4310
  %103 = load i32, i32* %arrayidx746, align 4, !dbg !4310
  %cmp747 = icmp eq i32 %103, 9, !dbg !4310
  br i1 %cmp747, label %land.lhs.true749, label %cleanup, !dbg !4312

land.lhs.true749:                                 ; preds = %if.else742
  %tobool750 = icmp eq i32 %allows_addr.2, 0, !dbg !4313
  br i1 %tobool750, label %lor.lhs.false751, label %if.then755, !dbg !4314

lor.lhs.false751:                                 ; preds = %land.lhs.true749
  %tobool754 = icmp eq i32 %74, 0, !dbg !4315
  br i1 %tobool754, label %cleanup, label %if.then755, !dbg !4316

if.then755:                                       ; preds = %lor.lhs.false751, %land.lhs.true749
  %idxprom756 = zext i32 %8 to i64, !dbg !4317
  %arrayidx762 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom756, i64 0, i64 1, !dbg !4317
  %104 = load i16, i16* %arrayidx762, align 2, !dbg !4317
  %conv763 = sext i16 %104 to i32, !dbg !4317
  %add764 = add nsw i32 %alt_cost.13, %conv763, !dbg !4318
  call void @llvm.dbg.value(metadata i32 %add764, metadata !3847, metadata !DIExpression()), !dbg !3906
  br label %cleanup, !dbg !4319

cleanup:                                          ; preds = %cond.end621, %land.lhs.true707, %if.end731, %lor.lhs.false751, %if.else700, %if.else682, %if.then691, %cond.end678, %if.then545, %if.then736, %if.else742, %if.then755, %if.then, %land.lhs.true, %if.then23, %while.end290
  %alt_fail.9 = phi i32 [ %alt_fail.0, %while.end290 ], [ %alt_fail.0, %if.then23 ], [ %alt_fail.0, %land.lhs.true ], [ %alt_fail.0, %if.then ], [ 1, %if.then545 ], [ %alt_fail.3, %cond.end678 ], [ %alt_fail.3, %if.then691 ], [ %alt_fail.3, %if.else682 ], [ %alt_fail.3, %cond.end621 ], [ %alt_fail.3, %land.lhs.true707 ], [ %alt_fail.3, %if.else700 ], [ %alt_fail.3, %if.then736 ], [ %alt_fail.3, %if.end731 ], [ %alt_fail.3, %if.then755 ], [ 1, %lor.lhs.false751 ], [ 1, %if.else742 ], !dbg !3906
  %alt_cost.24 = phi i32 [ %alt_cost.7, %while.end290 ], [ %alt_cost.0, %if.then23 ], [ %alt_cost.0, %land.lhs.true ], [ %alt_cost.0, %if.then ], [ %alt_cost.13, %if.then545 ], [ %add681, %cond.end678 ], [ %add695, %if.then691 ], [ %alt_cost.13, %if.else682 ], [ %alt_cost.13, %cond.end621 ], [ %alt_cost.13, %land.lhs.true707 ], [ %alt_cost.13, %if.else700 ], [ %add740, %if.then736 ], [ %alt_cost.18, %if.end731 ], [ %add764, %if.then755 ], [ %alt_cost.13, %lor.lhs.false751 ], [ %alt_cost.13, %if.else742 ], !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_cost.24, metadata !3847, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_fail.9, metadata !3846, metadata !DIExpression()), !dbg !3906
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !4320
  call void @llvm.dbg.value(metadata i32 undef, metadata !3833, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br label %for.cond4, !dbg !4321, !llvm.loop !4322

for.end777:                                       ; preds = %for.cond4
  %alt_fail.0.lcssa = phi i32 [ %alt_fail.0, %for.cond4 ], !dbg !3923
  %alt_cost.0.lcssa = phi i32 [ %alt_cost.0, %for.cond4 ], !dbg !3924
  call void @llvm.dbg.value(metadata i32 %alt_fail.0.lcssa, metadata !3846, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_cost.0.lcssa, metadata !3847, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_fail.0.lcssa, metadata !3846, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_cost.0.lcssa, metadata !3847, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_fail.0.lcssa, metadata !3846, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %alt_cost.0.lcssa, metadata !3847, metadata !DIExpression()), !dbg !3906
  %tobool778 = icmp eq i32 %alt_fail.0.lcssa, 0, !dbg !4324
  br i1 %tobool778, label %if.end780, label %cleanup860, !dbg !4326

if.end780:                                        ; preds = %for.end777
  %105 = load i32, i32* @frequency, align 4, !dbg !4327
  %mul781 = mul nsw i32 %alt_cost.0.lcssa, %105, !dbg !4328
  call void @llvm.dbg.value(metadata i32 %mul781, metadata !3848, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 0, metadata !3833, metadata !DIExpression()), !dbg !3897
  br label %for.cond782, !dbg !4329

for.cond782:                                      ; preds = %for.inc857, %if.end780
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc857 ], [ 0, %if.end780 ], !dbg !4330
  call void @llvm.dbg.value(metadata i64 %indvars.iv42, metadata !3833, metadata !DIExpression()), !dbg !3897
  %cmp783 = icmp slt i64 %indvars.iv42, %5, !dbg !4331
  br i1 %cmp783, label %for.body785, label %cleanup860.loopexit, !dbg !4332

for.body785:                                      ; preds = %for.cond782
  %arrayidx787 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv42, !dbg !4333
  %106 = bitcast %struct.rtx_def** %arrayidx787 to i32**, !dbg !4333
  %107 = load i32*, i32** %106, align 8, !dbg !4333
  %bf.load788 = load i32, i32* %107, align 8, !dbg !4333
  %bf.clear789 = and i32 %bf.load788, 65535, !dbg !4333
  %cmp790 = icmp eq i32 %bf.clear789, 37, !dbg !4333
  br i1 %cmp790, label %land.lhs.true792, label %for.inc857, !dbg !4334

land.lhs.true792:                                 ; preds = %for.body785
  %108 = bitcast i32* %107 to %struct.rtx_def*, !dbg !4334
  %call795 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %108) #7, !dbg !4335
  %cmp796 = icmp ugt i32 %call795, 52, !dbg !4336
  br i1 %cmp796, label %if.then798, label %for.inc857, !dbg !4337

if.then798:                                       ; preds = %land.lhs.true792
  %arrayidx801 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 %indvars.iv42, !dbg !4338
  %109 = load %struct.costs*, %struct.costs** %arrayidx801, align 8, !dbg !4338
  call void @llvm.dbg.value(metadata %struct.costs* %109, metadata !3875, metadata !DIExpression()), !dbg !4339
  %arrayidx803 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @this_op_costs, i64 0, i64 %indvars.iv42, !dbg !4340
  %110 = load %struct.costs*, %struct.costs** %arrayidx803, align 8, !dbg !4340
  call void @llvm.dbg.value(metadata %struct.costs* %110, metadata !3880, metadata !DIExpression()), !dbg !4339
  %arrayidx805 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 4, i64 %indvars.iv42, !dbg !4341
  %111 = load i32, i32* %arrayidx805, align 4, !dbg !4341
  %cmp806 = icmp eq i32 %111, 2, !dbg !4342
  %add808 = select i1 %cmp806, i32 2, i32 1, !dbg !4343
  call void @llvm.dbg.value(metadata i32 %add808, metadata !3881, metadata !DIExpression()), !dbg !4339
  %mem_cost809 = getelementptr inbounds %struct.costs, %struct.costs* %109, i64 0, i32 0, !dbg !4344
  %112 = load i32, i32* %mem_cost809, align 4, !dbg !4344
  %mem_cost810 = getelementptr inbounds %struct.costs, %struct.costs* %110, i64 0, i32 0, !dbg !4344
  %113 = load i32, i32* %mem_cost810, align 4, !dbg !4344
  %add811 = add nsw i32 %113, %mul781, !dbg !4344
  %mul812 = mul nsw i32 %add811, %add808, !dbg !4344
  %cmp813 = icmp slt i32 %112, %mul812, !dbg !4344
  br i1 %cmp813, label %cond.true815, label %cond.false817, !dbg !4344

cond.true815:                                     ; preds = %if.then798
  br label %cond.end821, !dbg !4344

cond.false817:                                    ; preds = %if.then798
  br label %cond.end821, !dbg !4344

cond.end821:                                      ; preds = %cond.false817, %cond.true815
  %cond822 = phi i32 [ %112, %cond.true815 ], [ %mul812, %cond.false817 ], !dbg !4344
  store i32 %cond822, i32* %mem_cost809, align 4, !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !3835, metadata !DIExpression()), !dbg !3897
  br label %for.cond824, !dbg !4346

for.cond824:                                      ; preds = %cond.end848, %cond.end821
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %cond.end848 ], [ 0, %cond.end821 ], !dbg !4348
  call void @llvm.dbg.value(metadata i64 %indvars.iv40, metadata !3835, metadata !DIExpression()), !dbg !3897
  %114 = load i32, i32* @cost_classes_num, align 4, !dbg !4349
  %115 = sext i32 %114 to i64, !dbg !4351
  %cmp825 = icmp slt i64 %indvars.iv40, %115, !dbg !4351
  br i1 %cmp825, label %for.body827, label %for.inc857.loopexit, !dbg !4352

for.body827:                                      ; preds = %for.cond824
  %arrayidx830 = getelementptr inbounds %struct.costs, %struct.costs* %109, i64 0, i32 1, i64 %indvars.iv40, !dbg !4353
  %116 = load i32, i32* %arrayidx830, align 4, !dbg !4353
  %arrayidx833 = getelementptr inbounds %struct.costs, %struct.costs* %110, i64 0, i32 1, i64 %indvars.iv40, !dbg !4353
  %117 = load i32, i32* %arrayidx833, align 4, !dbg !4353
  %add834 = add nsw i32 %117, %mul781, !dbg !4353
  %mul835 = mul nsw i32 %add834, %add808, !dbg !4353
  %cmp836 = icmp slt i32 %116, %mul835, !dbg !4353
  br i1 %cmp836, label %cond.true838, label %cond.false842, !dbg !4353

cond.true838:                                     ; preds = %for.body827
  br label %cond.end848, !dbg !4353

cond.false842:                                    ; preds = %for.body827
  br label %cond.end848, !dbg !4353

cond.end848:                                      ; preds = %cond.false842, %cond.true838
  %cond849 = phi i32 [ %116, %cond.true838 ], [ %mul835, %cond.false842 ], !dbg !4353
  store i32 %cond849, i32* %arrayidx830, align 4, !dbg !4354
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1, !dbg !4355
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br label %for.cond824, !dbg !4356, !llvm.loop !4357

for.inc857.loopexit:                              ; preds = %for.cond824
  br label %for.inc857, !dbg !4359

for.inc857:                                       ; preds = %for.inc857.loopexit, %for.body785, %land.lhs.true792
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1, !dbg !4359
  call void @llvm.dbg.value(metadata i32 undef, metadata !3833, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br label %for.cond782, !dbg !4360, !llvm.loop !4361

cleanup860.loopexit:                              ; preds = %for.cond782
  br label %cleanup860, !dbg !4363

cleanup860:                                       ; preds = %cleanup860.loopexit, %for.end777
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #8, !dbg !4363
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %2) #8, !dbg !4363
  %inc869 = add nuw nsw i32 %alt.0, 1, !dbg !4364
  call void @llvm.dbg.value(metadata i32 %inc869, metadata !3832, metadata !DIExpression()), !dbg !3897
  br label %for.cond1, !dbg !4365, !llvm.loop !4366

for.end870:                                       ; preds = %for.cond1
  %.b = load i1, i1* @allocno_p, align 1, !dbg !4368
  br i1 %.b, label %for.cond873.preheader, label %if.end914, !dbg !4369

for.cond873.preheader:                            ; preds = %for.end870
  %118 = sext i32 %n_ops to i64, !dbg !4370
  br label %for.cond873, !dbg !4370

for.cond873:                                      ; preds = %for.cond873.preheader, %cleanup907
  %indvars.iv31 = phi i64 [ 0, %for.cond873.preheader ], [ %indvars.iv.next32, %cleanup907 ], !dbg !4371
  call void @llvm.dbg.value(metadata i64 %indvars.iv31, metadata !3833, metadata !DIExpression()), !dbg !3897
  %cmp874 = icmp slt i64 %indvars.iv31, %118, !dbg !4372
  br i1 %cmp874, label %for.body876, label %if.end914.loopexit, !dbg !4370

for.body876:                                      ; preds = %for.cond873
  %arrayidx879 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv31, !dbg !4373
  %119 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx879, align 8, !dbg !4373
  call void @llvm.dbg.value(metadata %struct.rtx_def* %119, metadata !3887, metadata !DIExpression()), !dbg !4374
  %120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i64 0, i32 0, !dbg !4375
  %bf.load880 = load i32, i32* %120, align 8, !dbg !4375
  %bf.clear881 = and i32 %bf.load880, 65535, !dbg !4375
  %cmp882 = icmp eq i32 %bf.clear881, 37, !dbg !4375
  br i1 %cmp882, label %lor.lhs.false884, label %cleanup907, !dbg !4377

lor.lhs.false884:                                 ; preds = %for.body876
  %call885 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %119) #7, !dbg !4378
  %cmp886 = icmp ult i32 %call885, 53, !dbg !4379
  br i1 %cmp886, label %cleanup907, label %if.end889, !dbg !4380

if.end889:                                        ; preds = %lor.lhs.false884
  %121 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !4381
  %call890 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %119) #7, !dbg !4382
  %idxprom891 = zext i32 %call890 to i64, !dbg !4381
  %arrayidx892 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %121, i64 %idxprom891, !dbg !4381
  %122 = load %struct.ira_allocno*, %struct.ira_allocno** %arrayidx892, align 8, !dbg !4381
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %122, metadata !3882, metadata !DIExpression()), !dbg !4374
  %bad_spill_p = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %122, i64 0, i32 31, !dbg !4383
  %bf.load893 = load i16, i16* %bad_spill_p, align 4, !dbg !4383
  %bf.clear895 = and i16 %bf.load893, 64, !dbg !4383
  %tobool896 = icmp eq i16 %bf.clear895, 0, !dbg !4383
  br i1 %tobool896, label %land.lhs.true897, label %cleanup907, !dbg !4385

land.lhs.true897:                                 ; preds = %if.end889
  %arrayidx899 = getelementptr inbounds [30 x i32], [30 x i32]* %insn_allows_mem, i64 0, i64 %indvars.iv31, !dbg !4386
  %123 = load i32, i32* %arrayidx899, align 4, !dbg !4386
  %cmp900 = icmp eq i32 %123, 0, !dbg !4387
  br i1 %cmp900, label %if.then902, label %cleanup907, !dbg !4388

if.then902:                                       ; preds = %land.lhs.true897
  %bf.set = or i16 %bf.load893, 64, !dbg !4389
  store i16 %bf.set, i16* %bad_spill_p, align 4, !dbg !4389
  br label %cleanup907, !dbg !4390

cleanup907:                                       ; preds = %if.end889, %land.lhs.true897, %if.then902, %for.body876, %lor.lhs.false884
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !4391
  call void @llvm.dbg.value(metadata i32 undef, metadata !3833, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br label %for.cond873, !dbg !4392, !llvm.loop !4393

if.end914.loopexit:                               ; preds = %for.cond873
  br label %if.end914, !dbg !4395

if.end914:                                        ; preds = %for.end870, %if.end914.loopexit
  %124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !4395
  %bf.load915 = load i32, i32* %124, align 8, !dbg !4395
  %bf.clear916 = and i32 %bf.load915, 65535, !dbg !4395
  %cmp917 = icmp eq i32 %bf.clear916, 8, !dbg !4395
  br i1 %cmp917, label %cond.true934, label %lor.lhs.false919, !dbg !4395

lor.lhs.false919:                                 ; preds = %if.end914
  %cmp922 = icmp eq i32 %bf.clear916, 7, !dbg !4395
  br i1 %cmp922, label %cond.true934, label %lor.lhs.false924, !dbg !4395

lor.lhs.false924:                                 ; preds = %lor.lhs.false919
  %cmp927 = icmp eq i32 %bf.clear916, 9, !dbg !4395
  br i1 %cmp927, label %cond.true934, label %lor.lhs.false929, !dbg !4395

lor.lhs.false929:                                 ; preds = %lor.lhs.false924
  %cmp932 = icmp eq i32 %bf.clear916, 10, !dbg !4395
  br i1 %cmp932, label %cond.true934, label %cond.end957, !dbg !4395

cond.true934:                                     ; preds = %lor.lhs.false929, %lor.lhs.false924, %lor.lhs.false919, %if.end914
  %u935 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !4395
  %125 = getelementptr inbounds %union.u, %union.u* %u935, i64 1, i32 0, i32 0, i64 0, !dbg !4395
  %126 = bitcast %union.rtunion_def* %125 to i32**, !dbg !4395
  %127 = load i32*, i32** %126, align 8, !dbg !4395
  %bf.load939 = load i32, i32* %127, align 8, !dbg !4395
  %bf.clear940 = and i32 %bf.load939, 65535, !dbg !4395
  %cmp941 = icmp eq i32 %bf.clear940, 23, !dbg !4395
  %128 = bitcast i32* %127 to %struct.rtx_def*, !dbg !4395
  br i1 %cmp941, label %cond.end957, label %cond.false948, !dbg !4395

cond.false948:                                    ; preds = %cond.true934
  %call953 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %128) #6, !dbg !4395
  br label %cond.end957, !dbg !4395

cond.end957:                                      ; preds = %lor.lhs.false929, %cond.false948, %cond.true934
  %cond958 = phi %struct.rtx_def* [ %call953, %cond.false948 ], [ %128, %cond.true934 ], [ null, %lor.lhs.false929 ], !dbg !4395
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond958, metadata !3836, metadata !DIExpression()), !dbg !3897
  %cmp959 = icmp eq %struct.rtx_def* %cond958, null, !dbg !4396
  br i1 %cmp959, label %if.end1126, label %land.lhs.true961, !dbg !4397

land.lhs.true961:                                 ; preds = %cond.end957
  %129 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 0), align 8, !dbg !4398
  %arrayidx965 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond958, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4399
  %rt_rtx966 = bitcast %union.rtunion_def* %arrayidx965 to %struct.rtx_def**, !dbg !4399
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx966, align 8, !dbg !4399
  %cmp967 = icmp eq %struct.rtx_def* %129, %130, !dbg !4400
  %131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i64 0, i32 0, !dbg !4401
  br i1 %cmp967, label %land.lhs.true969, label %if.end1126, !dbg !4401

land.lhs.true969:                                 ; preds = %land.lhs.true961
  %132 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 1), align 8, !dbg !4402
  %133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond958, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4403
  %rt_rtx974 = bitcast %union.rtunion_def* %133 to %struct.rtx_def**, !dbg !4403
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx974, align 8, !dbg !4403
  %cmp975 = icmp eq %struct.rtx_def* %132, %134, !dbg !4404
  %135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i64 0, i32 0, !dbg !4405
  br i1 %cmp975, label %land.lhs.true977, label %if.end1126, !dbg !4405

land.lhs.true977:                                 ; preds = %land.lhs.true969
  %bf.load979 = load i32, i32* %131, align 8, !dbg !4406
  %bf.clear980 = and i32 %bf.load979, 65535, !dbg !4406
  %cmp981 = icmp eq i32 %bf.clear980, 37, !dbg !4406
  br i1 %cmp981, label %land.lhs.true983, label %if.end1126, !dbg !4407

land.lhs.true983:                                 ; preds = %land.lhs.true977
  %bf.load985 = load i32, i32* %135, align 8, !dbg !4408
  %bf.clear986 = and i32 %bf.load985, 65535, !dbg !4408
  %cmp987 = icmp eq i32 %bf.clear986, 37, !dbg !4408
  br i1 %cmp987, label %land.lhs.true989, label %if.end1126, !dbg !4409

land.lhs.true989:                                 ; preds = %land.lhs.true983
  %call991 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %132) #7, !dbg !4410
  %call992 = tail call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %insn, i32 1, i32 %call991) #6, !dbg !4411
  %tobool993 = icmp eq %struct.rtx_def* %call992, null, !dbg !4411
  br i1 %tobool993, label %if.end1126, label %for.cond995.preheader, !dbg !4412

for.cond995.preheader:                            ; preds = %land.lhs.true989
  br label %for.cond995, !dbg !4413

for.cond995:                                      ; preds = %for.cond995.preheader, %for.inc1123
  %indvars.iv28 = phi i64 [ 0, %for.cond995.preheader ], [ %indvars.iv.next29, %for.inc1123 ], !dbg !4414
  call void @llvm.dbg.value(metadata i64 %indvars.iv28, metadata !3833, metadata !DIExpression()), !dbg !3897
  %exitcond30 = icmp eq i64 %indvars.iv28, 2, !dbg !4415
  br i1 %exitcond30, label %if.end1126.loopexit, label %for.body998, !dbg !4413

for.body998:                                      ; preds = %for.cond995
  %arrayidx1000 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %indvars.iv28, !dbg !4416
  %136 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1000, align 8, !dbg !4416
  %call1001 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %136) #7, !dbg !4416
  %cmp1002 = icmp ugt i32 %call1001, 52, !dbg !4417
  br i1 %cmp1002, label %if.then1004, label %for.inc1123, !dbg !4418

if.then1004:                                      ; preds = %for.body998
  %tobool1005 = icmp eq i64 %indvars.iv28, 0, !dbg !4419
  %idxprom1006 = zext i1 %tobool1005 to i64, !dbg !4419
  %arrayidx1007 = getelementptr inbounds %struct.recog_data, %struct.recog_data* @recog_data, i64 0, i32 0, i64 %idxprom1006, !dbg !4419
  %137 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1007, align 8, !dbg !4419
  %call1008 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %137) #7, !dbg !4419
  call void @llvm.dbg.value(metadata i32 %call1008, metadata !3888, metadata !DIExpression()), !dbg !4420
  %138 = bitcast %struct.rtx_def** %arrayidx1007 to i32**, !dbg !4421
  %139 = load i32*, i32** %138, align 8, !dbg !4421
  %bf.load1015 = load i32, i32* %139, align 8, !dbg !4421
  %bf.lshr1016 = lshr i32 %bf.load1015, 16, !dbg !4421
  %bf.clear1017 = and i32 %bf.lshr1016, 255, !dbg !4421
  call void @llvm.dbg.value(metadata i32 %bf.clear1017, metadata !3894, metadata !DIExpression()), !dbg !4420
  %cmp1019 = icmp ult i32 %call1008, 53, !dbg !4422
  br i1 %cmp1019, label %for.cond1022.preheader, label %for.inc1123, !dbg !4424

for.cond1022.preheader:                           ; preds = %if.then1004
  %sh_prom = zext i32 %call1008 to i64, !dbg !4425
  %shl = shl i64 1, %sh_prom, !dbg !4425
  %cmp1051 = icmp eq i32 %bf.clear1017, 40, !dbg !4425
  %idxprom1055 = zext i32 %bf.clear1017 to i64, !dbg !4425
  %arrayidx1056 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom1055, !dbg !4425
  %arrayidx1038 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom1055, !dbg !4425
  %arrayidx1084 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %sh_prom, i64 %idxprom1055, !dbg !4430
  %arrayidx1111 = getelementptr inbounds [30 x %struct.costs*], [30 x %struct.costs*]* @op_costs, i64 0, i64 %indvars.iv28, !dbg !4436
  br i1 %cmp1051, label %for.cond1022.preheader.split.us, label %for.cond1022.preheader.for.cond1022.preheader.split_crit_edge, !dbg !4438

for.cond1022.preheader.for.cond1022.preheader.split_crit_edge: ; preds = %for.cond1022.preheader
  br label %for.cond1022, !dbg !4438

for.cond1022.preheader.split.us:                  ; preds = %for.cond1022.preheader
  br label %for.cond1022.us, !dbg !4438

for.cond1022.us:                                  ; preds = %for.inc1118.us, %for.cond1022.preheader.split.us
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc1118.us ], [ 0, %for.cond1022.preheader.split.us ], !dbg !4439
  call void @llvm.dbg.value(metadata i64 %indvars.iv26, metadata !3835, metadata !DIExpression()), !dbg !3897
  %140 = load i32, i32* @cost_classes_num, align 4, !dbg !4440
  %141 = sext i32 %140 to i64, !dbg !4441
  %cmp1023.us = icmp slt i64 %indvars.iv26, %141, !dbg !4441
  br i1 %cmp1023.us, label %for.body1025.us, label %for.inc1123.loopexit.us-lcssa.us, !dbg !4438

for.body1025.us:                                  ; preds = %for.cond1022.us
  %142 = load i32*, i32** @cost_classes, align 8, !dbg !4442
  %arrayidx1027.us = getelementptr inbounds i32, i32* %142, i64 %indvars.iv26, !dbg !4442
  %143 = load i32, i32* %arrayidx1027.us, align 4, !dbg !4442
  call void @llvm.dbg.value(metadata i32 %143, metadata !3895, metadata !DIExpression()), !dbg !4420
  %idxprom1028.us = zext i32 %143 to i64, !dbg !4443
  %arrayidx1029.us = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom1028.us, !dbg !4443
  %144 = load i64, i64* %arrayidx1029.us, align 8, !dbg !4443
  %and.us = and i64 %144, %shl, !dbg !4443
  %tobool1030.us = icmp eq i64 %and.us, 0, !dbg !4443
  br i1 %tobool1030.us, label %for.inc1118.us, label %land.lhs.true1031.us, !dbg !4444

land.lhs.true1031.us:                             ; preds = %for.body1025.us
  %arrayidx1033.us = getelementptr inbounds [27 x i32], [27 x i32]* @reg_class_size, i64 0, i64 %idxprom1028.us, !dbg !4445
  %145 = load i32, i32* %arrayidx1033.us, align 4, !dbg !4445
  %call1034.us = tail call i32 @reg_classes_intersect_p(i32 %143, i32 13) #6, !dbg !4446
  %tobool1035.us = icmp eq i32 %call1034.us, 0, !dbg !4446
  br i1 %tobool1035.us, label %cond.true1036.us, label %cond.false1050.us, !dbg !4446

cond.false1050.us:                                ; preds = %land.lhs.true1031.us
  br label %cond.end1063.us, !dbg !4446

cond.true1036.us:                                 ; preds = %land.lhs.true1031.us
  %146 = load i8, i8* %arrayidx1038, align 1, !dbg !4446
  %cmp1040.us = icmp eq i8 %146, 10, !dbg !4446
  br i1 %cmp1040.us, label %lor.end1048.us, label %lor.rhs1042.us, !dbg !4446

lor.rhs1042.us:                                   ; preds = %cond.true1036.us
  %cmp1046.us = icmp eq i8 %146, 11, !dbg !4446
  br label %lor.end1048.us, !dbg !4446

lor.end1048.us:                                   ; preds = %lor.rhs1042.us, %cond.true1036.us
  %147 = phi i1 [ true, %cond.true1036.us ], [ %cmp1046.us, %lor.rhs1042.us ]
  %cond1049.us = select i1 %147, i32 2, i32 1, !dbg !4446
  br label %cond.end1063.us, !dbg !4446

cond.end1063.us:                                  ; preds = %lor.end1048.us, %cond.false1050.us
  %cond1064.us = phi i32 [ %cond1049.us, %lor.end1048.us ], [ 3, %cond.false1050.us ], !dbg !4446
  %cmp1065.us = icmp eq i32 %145, %cond1064.us, !dbg !4447
  br i1 %cmp1065.us, label %if.then1067.us, label %for.inc1118.us, !dbg !4448

if.then1067.us:                                   ; preds = %cond.end1063.us
  %148 = load i32, i32* %arrayidx1033.us, align 4, !dbg !4449
  %cmp1070.us = icmp eq i32 %148, 1, !dbg !4450
  br i1 %cmp1070.us, label %if.then1072.us, label %for.cond1080.preheader.us, !dbg !4451

for.cond1080.us:                                  ; preds = %for.cond1080.preheader.us, %for.inc1098.us
  %indvars.iv22 = phi i64 [ 0, %for.cond1080.preheader.us ], [ %indvars.iv.next23, %for.inc1098.us ], !dbg !4452
  call void @llvm.dbg.value(metadata i64 %indvars.iv22, metadata !3896, metadata !DIExpression()), !dbg !4420
  %149 = trunc i64 %indvars.iv22 to i32, !dbg !4453
  %exitcond25 = icmp eq i64 %indvars.iv22, %wide.trip.count24, !dbg !4454
  br i1 %exitcond25, label %for.end1100.us, label %for.body1088.us, !dbg !4453

for.body1088.us:                                  ; preds = %for.cond1080.us
  %150 = load i64, i64* %arrayidx1029.us, align 8, !dbg !4455
  %151 = trunc i64 %indvars.iv22 to i32, !dbg !4455
  %add1091.us = add i32 %call1008, %151, !dbg !4455
  %sh_prom1092.us = zext i32 %add1091.us to i64, !dbg !4455
  %shl1093.us = shl i64 1, %sh_prom1092.us, !dbg !4455
  %and1094.us = and i64 %150, %shl1093.us, !dbg !4455
  %tobool1095.us = icmp eq i64 %and1094.us, 0, !dbg !4455
  br i1 %tobool1095.us, label %for.end1100.us, label %for.inc1098.us, !dbg !4457

for.inc1098.us:                                   ; preds = %for.body1088.us
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !4458
  call void @llvm.dbg.value(metadata i32 undef, metadata !3896, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4420
  br label %for.cond1080.us, !dbg !4459, !llvm.loop !4460

for.end1100.us:                                   ; preds = %for.cond1080.us, %for.body1088.us
  %.lcssa46 = phi i32 [ %149, %for.cond1080.us ], [ %149, %for.body1088.us ], !dbg !4453
  call void @llvm.dbg.value(metadata i32 %.lcssa46, metadata !3896, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i32 %.lcssa46, metadata !3896, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i32 %.lcssa46, metadata !3896, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i32 %.lcssa46, metadata !3896, metadata !DIExpression()), !dbg !4420
  %cmp1106.us = icmp eq i32 %.lcssa46, %conv1085.us, !dbg !4462
  br i1 %cmp1106.us, label %if.then1108.us, label %for.inc1118.us, !dbg !4463

if.then1108.us:                                   ; preds = %for.end1100.us
  %152 = load i32, i32* @frequency, align 4, !dbg !4464
  %sub1109.us = sub nsw i32 0, %152, !dbg !4465
  %153 = load %struct.costs*, %struct.costs** %arrayidx1111, align 8, !dbg !4466
  %arrayidx1114.us = getelementptr inbounds %struct.costs, %struct.costs* %153, i64 0, i32 1, i64 %indvars.iv26, !dbg !4466
  store i32 %sub1109.us, i32* %arrayidx1114.us, align 4, !dbg !4467
  br label %for.inc1118.us, !dbg !4466

if.then1072.us:                                   ; preds = %if.then1067.us
  %154 = load i32, i32* @frequency, align 4, !dbg !4468
  %sub1073.us = sub nsw i32 0, %154, !dbg !4469
  %155 = load %struct.costs*, %struct.costs** %arrayidx1111, align 8, !dbg !4470
  %arrayidx1078.us = getelementptr inbounds %struct.costs, %struct.costs* %155, i64 0, i32 1, i64 %indvars.iv26, !dbg !4470
  store i32 %sub1073.us, i32* %arrayidx1078.us, align 4, !dbg !4471
  br label %for.inc1118.us, !dbg !4470

for.inc1118.us:                                   ; preds = %if.then1072.us, %if.then1108.us, %for.end1100.us, %cond.end1063.us, %for.body1025.us
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !4472
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br label %for.cond1022.us, !dbg !4473, !llvm.loop !4474

for.cond1080.preheader.us:                        ; preds = %if.then1067.us
  %156 = load i8, i8* %arrayidx1084, align 1, !dbg !4430
  %conv1085.us = zext i8 %156 to i32, !dbg !4430
  %wide.trip.count24 = zext i8 %156 to i64, !dbg !4454
  br label %for.cond1080.us, !dbg !4453

for.inc1123.loopexit.us-lcssa.us:                 ; preds = %for.cond1022.us
  br label %for.inc1123.loopexit, !dbg !4476

for.cond1022:                                     ; preds = %for.cond1022.preheader.for.cond1022.preheader.split_crit_edge, %for.inc1118
  %indvars.iv20 = phi i64 [ 0, %for.cond1022.preheader.for.cond1022.preheader.split_crit_edge ], [ %indvars.iv.next21, %for.inc1118 ], !dbg !4439
  call void @llvm.dbg.value(metadata i64 %indvars.iv20, metadata !3835, metadata !DIExpression()), !dbg !3897
  %157 = load i32, i32* @cost_classes_num, align 4, !dbg !4440
  %158 = sext i32 %157 to i64, !dbg !4441
  %cmp1023 = icmp slt i64 %indvars.iv20, %158, !dbg !4441
  br i1 %cmp1023, label %for.body1025, label %for.inc1123.loopexit.us-lcssa, !dbg !4438

for.body1025:                                     ; preds = %for.cond1022
  %159 = load i32*, i32** @cost_classes, align 8, !dbg !4442
  %arrayidx1027 = getelementptr inbounds i32, i32* %159, i64 %indvars.iv20, !dbg !4442
  %160 = load i32, i32* %arrayidx1027, align 4, !dbg !4442
  call void @llvm.dbg.value(metadata i32 %160, metadata !3895, metadata !DIExpression()), !dbg !4420
  %idxprom1028 = zext i32 %160 to i64, !dbg !4443
  %arrayidx1029 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom1028, !dbg !4443
  %161 = load i64, i64* %arrayidx1029, align 8, !dbg !4443
  %and = and i64 %161, %shl, !dbg !4443
  %tobool1030 = icmp eq i64 %and, 0, !dbg !4443
  br i1 %tobool1030, label %for.inc1118, label %land.lhs.true1031, !dbg !4444

land.lhs.true1031:                                ; preds = %for.body1025
  %arrayidx1033 = getelementptr inbounds [27 x i32], [27 x i32]* @reg_class_size, i64 0, i64 %idxprom1028, !dbg !4445
  %162 = load i32, i32* %arrayidx1033, align 4, !dbg !4445
  %call1034 = tail call i32 @reg_classes_intersect_p(i32 %160, i32 13) #6, !dbg !4446
  %tobool1035 = icmp eq i32 %call1034, 0, !dbg !4446
  br i1 %tobool1035, label %cond.true1036, label %cond.false1050, !dbg !4446

cond.true1036:                                    ; preds = %land.lhs.true1031
  %163 = load i8, i8* %arrayidx1038, align 1, !dbg !4446
  %cmp1040 = icmp eq i8 %163, 10, !dbg !4446
  br i1 %cmp1040, label %lor.end1048, label %lor.rhs1042, !dbg !4446

lor.rhs1042:                                      ; preds = %cond.true1036
  %cmp1046 = icmp eq i8 %163, 11, !dbg !4446
  br label %lor.end1048, !dbg !4446

lor.end1048:                                      ; preds = %lor.rhs1042, %cond.true1036
  %164 = phi i1 [ true, %cond.true1036 ], [ %cmp1046, %lor.rhs1042 ]
  %cond1049 = select i1 %164, i32 2, i32 1, !dbg !4446
  br label %cond.end1063, !dbg !4446

cond.false1050:                                   ; preds = %land.lhs.true1031
  %165 = load i8, i8* %arrayidx1056, align 1, !dbg !4446
  %conv1058 = zext i8 %165 to i32, !dbg !4446
  %sub1062 = add nuw nsw i32 %conv1058, 3, !dbg !4446
  %div = lshr i32 %sub1062, 2, !dbg !4446
  br label %cond.end1063, !dbg !4446

cond.end1063:                                     ; preds = %cond.false1050, %lor.end1048
  %cond1064 = phi i32 [ %cond1049, %lor.end1048 ], [ %div, %cond.false1050 ], !dbg !4446
  %cmp1065 = icmp eq i32 %162, %cond1064, !dbg !4447
  br i1 %cmp1065, label %if.then1067, label %for.inc1118, !dbg !4448

if.then1067:                                      ; preds = %cond.end1063
  %166 = load i32, i32* %arrayidx1033, align 4, !dbg !4449
  %cmp1070 = icmp eq i32 %166, 1, !dbg !4450
  br i1 %cmp1070, label %if.then1072, label %for.cond1080.preheader, !dbg !4451

for.cond1080.preheader:                           ; preds = %if.then1067
  %167 = load i8, i8* %arrayidx1084, align 1, !dbg !4430
  %conv1085 = zext i8 %167 to i32, !dbg !4430
  %wide.trip.count = zext i8 %167 to i64, !dbg !4454
  br label %for.cond1080, !dbg !4453

if.then1072:                                      ; preds = %if.then1067
  %168 = load i32, i32* @frequency, align 4, !dbg !4468
  %sub1073 = sub nsw i32 0, %168, !dbg !4469
  %169 = load %struct.costs*, %struct.costs** %arrayidx1111, align 8, !dbg !4470
  %arrayidx1078 = getelementptr inbounds %struct.costs, %struct.costs* %169, i64 0, i32 1, i64 %indvars.iv20, !dbg !4470
  store i32 %sub1073, i32* %arrayidx1078, align 4, !dbg !4471
  br label %for.inc1118, !dbg !4470

for.cond1080:                                     ; preds = %for.cond1080.preheader, %for.inc1098
  %indvars.iv = phi i64 [ 0, %for.cond1080.preheader ], [ %indvars.iv.next, %for.inc1098 ], !dbg !4452
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3896, metadata !DIExpression()), !dbg !4420
  %170 = trunc i64 %indvars.iv to i32, !dbg !4453
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !4454
  br i1 %exitcond, label %for.end1100, label %for.body1088, !dbg !4453

for.body1088:                                     ; preds = %for.cond1080
  %171 = load i64, i64* %arrayidx1029, align 8, !dbg !4455
  %172 = trunc i64 %indvars.iv to i32, !dbg !4455
  %add1091 = add i32 %call1008, %172, !dbg !4455
  %sh_prom1092 = zext i32 %add1091 to i64, !dbg !4455
  %shl1093 = shl i64 1, %sh_prom1092, !dbg !4455
  %and1094 = and i64 %171, %shl1093, !dbg !4455
  %tobool1095 = icmp eq i64 %and1094, 0, !dbg !4455
  br i1 %tobool1095, label %for.end1100, label %for.inc1098, !dbg !4457

for.inc1098:                                      ; preds = %for.body1088
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4458
  call void @llvm.dbg.value(metadata i32 undef, metadata !3896, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4420
  br label %for.cond1080, !dbg !4459, !llvm.loop !4460

for.end1100:                                      ; preds = %for.cond1080, %for.body1088
  %.lcssa = phi i32 [ %170, %for.cond1080 ], [ %170, %for.body1088 ], !dbg !4453
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3896, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3896, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3896, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3896, metadata !DIExpression()), !dbg !4420
  %cmp1106 = icmp eq i32 %.lcssa, %conv1085, !dbg !4462
  br i1 %cmp1106, label %if.then1108, label %for.inc1118, !dbg !4463

if.then1108:                                      ; preds = %for.end1100
  %173 = load i32, i32* @frequency, align 4, !dbg !4464
  %sub1109 = sub nsw i32 0, %173, !dbg !4465
  %174 = load %struct.costs*, %struct.costs** %arrayidx1111, align 8, !dbg !4466
  %arrayidx1114 = getelementptr inbounds %struct.costs, %struct.costs* %174, i64 0, i32 1, i64 %indvars.iv20, !dbg !4466
  store i32 %sub1109, i32* %arrayidx1114, align 4, !dbg !4467
  br label %for.inc1118, !dbg !4466

for.inc1118:                                      ; preds = %for.body1025, %cond.end1063, %for.end1100, %if.then1108, %if.then1072
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !4472
  call void @llvm.dbg.value(metadata i32 undef, metadata !3835, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br label %for.cond1022, !dbg !4473, !llvm.loop !4474

for.inc1123.loopexit.us-lcssa:                    ; preds = %for.cond1022
  br label %for.inc1123.loopexit, !dbg !4476

for.inc1123.loopexit:                             ; preds = %for.inc1123.loopexit.us-lcssa.us, %for.inc1123.loopexit.us-lcssa
  br label %for.inc1123, !dbg !4476

for.inc1123:                                      ; preds = %for.inc1123.loopexit, %for.body998, %if.then1004
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !4476
  call void @llvm.dbg.value(metadata i32 undef, metadata !3833, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3897
  br label %for.cond995, !dbg !4477, !llvm.loop !4478

if.end1126.loopexit:                              ; preds = %for.cond995
  br label %if.end1126, !dbg !4480

if.end1126:                                       ; preds = %if.end1126.loopexit, %land.lhs.true989, %cond.end957, %land.lhs.true983, %land.lhs.true977, %land.lhs.true969, %land.lhs.true961
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #8, !dbg !4480
  ret void, !dbg !4480
}

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @copy_cost(%struct.rtx_def* %x, i32 %mode, i32 %rclass, i8 zeroext %to_p, %struct.secondary_reload_info* %prev_sri) unnamed_addr #5 !dbg !4481 {
entry:
  %sri = alloca %struct.secondary_reload_info, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !4495, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4496, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 %rclass, metadata !4497, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i8 %to_p, metadata !4498, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata %struct.secondary_reload_info* %prev_sri, metadata !4499, metadata !DIExpression()), !dbg !4502
  %0 = bitcast %struct.secondary_reload_info* %sri to i8*, !dbg !4503
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4503
  call void @llvm.dbg.value(metadata i32 0, metadata !4501, metadata !DIExpression()), !dbg !4502
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !4504
  %bf.load = load i32, i32* %1, align 8, !dbg !4504
  %bf.clear = and i32 %bf.load, 65535, !dbg !4504
  %cmp = icmp eq i32 %bf.clear, 38, !dbg !4506
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4507

if.end:                                           ; preds = %entry
  %call = tail call i32 @ix86_preferred_reload_class(%struct.rtx_def* %x, i32 %rclass) #6, !dbg !4508
  call void @llvm.dbg.value(metadata i32 %call, metadata !4497, metadata !DIExpression()), !dbg !4502
  %prev_sri1 = getelementptr inbounds %struct.secondary_reload_info, %struct.secondary_reload_info* %sri, i64 0, i32 2, !dbg !4509
  store %struct.secondary_reload_info* %prev_sri, %struct.secondary_reload_info** %prev_sri1, align 8, !dbg !4510
  %extra_cost = getelementptr inbounds %struct.secondary_reload_info, %struct.secondary_reload_info* %sri, i64 0, i32 1, !dbg !4511
  store i32 0, i32* %extra_cost, align 4, !dbg !4512
  %2 = load i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 97), align 8, !dbg !4513
  call void @llvm.dbg.value(metadata %struct.secondary_reload_info* %sri, metadata !4500, metadata !DIExpression(DW_OP_deref)), !dbg !4502
  %call2 = call i32 %2(i8 zeroext %to_p, %struct.rtx_def* %x, i32 %call, i32 %mode, %struct.secondary_reload_info* nonnull %sri) #6, !dbg !4514
  call void @llvm.dbg.value(metadata i32 %call2, metadata !4501, metadata !DIExpression()), !dbg !4502
  %cmp3 = icmp eq i32 %call2, 0, !dbg !4515
  br i1 %cmp3, label %if.end16, label %if.then4, !dbg !4517

if.then4:                                         ; preds = %if.end
  %idxprom = zext i32 %mode to i64, !dbg !4518
  %arrayidx = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @move_cost, i64 0, i64 %idxprom, !dbg !4518
  %3 = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !4518
  %tobool = icmp eq [27 x i16]* %3, null, !dbg !4518
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !4521

if.then5:                                         ; preds = %if.then4
  call void @init_move_cost(i32 %mode) #6, !dbg !4522
  %.pre = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !4523
  br label %if.end6, !dbg !4522

if.end6:                                          ; preds = %if.then4, %if.then5
  %4 = phi [27 x i16]* [ %3, %if.then4 ], [ %.pre, %if.then5 ], !dbg !4523
  %idxprom9 = zext i32 %call2 to i64, !dbg !4523
  %idxprom11 = zext i32 %call to i64, !dbg !4523
  %arrayidx12 = getelementptr inbounds [27 x i16], [27 x i16]* %4, i64 %idxprom9, i64 %idxprom11, !dbg !4523
  %5 = load i16, i16* %arrayidx12, align 2, !dbg !4523
  %conv = zext i16 %5 to i32, !dbg !4523
  %6 = load i32, i32* %extra_cost, align 4, !dbg !4524
  %add = add nsw i32 %6, %conv, !dbg !4525
  call void @llvm.dbg.value(metadata %struct.secondary_reload_info* %sri, metadata !4500, metadata !DIExpression(DW_OP_deref)), !dbg !4502
  %call14 = call fastcc i32 @copy_cost(%struct.rtx_def* %x, i32 %mode, i32 %call2, i8 zeroext %to_p, %struct.secondary_reload_info* nonnull %sri) #7, !dbg !4526
  %add15 = add nsw i32 %add, %call14, !dbg !4527
  br label %cleanup, !dbg !4528

if.end16:                                         ; preds = %if.end
  %bf.load17 = load i32, i32* %1, align 8, !dbg !4529
  %bf.clear18 = and i32 %bf.load17, 65535, !dbg !4529
  %cmp19 = icmp eq i32 %bf.clear18, 43, !dbg !4529
  %cmp21 = icmp eq i32 %call, 0, !dbg !4531
  %or.cond = or i1 %cmp19, %cmp21, !dbg !4532
  br i1 %or.cond, label %if.then23, label %if.else, !dbg !4532

if.then23:                                        ; preds = %if.end16
  %7 = load i32, i32* %extra_cost, align 4, !dbg !4533
  %idxprom25 = zext i32 %mode to i64, !dbg !4534
  %idxprom27 = zext i32 %call to i64, !dbg !4534
  %cmp30 = icmp ne i8 %to_p, 0, !dbg !4535
  %idxprom32 = zext i1 %cmp30 to i64, !dbg !4534
  %arrayidx33 = getelementptr inbounds [87 x [27 x [2 x i16]]], [87 x [27 x [2 x i16]]]* @ira_memory_move_cost, i64 0, i64 %idxprom25, i64 %idxprom27, i64 %idxprom32, !dbg !4534
  %8 = load i16, i16* %arrayidx33, align 2, !dbg !4534
  %conv34 = sext i16 %8 to i32, !dbg !4534
  %add35 = add nsw i32 %7, %conv34, !dbg !4536
  br label %cleanup, !dbg !4537

if.else:                                          ; preds = %if.end16
  %cmp38 = icmp eq i32 %bf.clear18, 37, !dbg !4538
  br i1 %cmp38, label %if.then40, label %if.else58, !dbg !4540

if.then40:                                        ; preds = %if.else
  %idxprom41 = zext i32 %mode to i64, !dbg !4541
  %arrayidx42 = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @move_cost, i64 0, i64 %idxprom41, !dbg !4541
  %9 = load [27 x i16]*, [27 x i16]** %arrayidx42, align 8, !dbg !4541
  %tobool43 = icmp eq [27 x i16]* %9, null, !dbg !4541
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !4544

if.then44:                                        ; preds = %if.then40
  call void @init_move_cost(i32 %mode) #6, !dbg !4545
  %.pre1 = load [27 x i16]*, [27 x i16]** %arrayidx42, align 8, !dbg !4546
  br label %if.end45, !dbg !4545

if.end45:                                         ; preds = %if.then40, %if.then44
  %10 = phi [27 x i16]* [ %9, %if.then40 ], [ %.pre1, %if.then44 ], !dbg !4546
  %11 = load i32, i32* %extra_cost, align 4, !dbg !4547
  %call49 = call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #7, !dbg !4548
  %idxprom50 = zext i32 %call49 to i64, !dbg !4548
  %arrayidx51 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom50, !dbg !4548
  %12 = load i32, i32* %arrayidx51, align 4, !dbg !4548
  %idxprom52 = zext i32 %12 to i64, !dbg !4546
  %idxprom54 = zext i32 %call to i64, !dbg !4546
  %arrayidx55 = getelementptr inbounds [27 x i16], [27 x i16]* %10, i64 %idxprom52, i64 %idxprom54, !dbg !4546
  %13 = load i16, i16* %arrayidx55, align 2, !dbg !4546
  %conv56 = zext i16 %13 to i32, !dbg !4546
  %add57 = add nsw i32 %11, %conv56, !dbg !4549
  br label %cleanup, !dbg !4550

if.else58:                                        ; preds = %if.else
  %14 = load i32, i32* %extra_cost, align 4, !dbg !4551
  %add60 = add nsw i32 %14, 4, !dbg !4552
  br label %cleanup, !dbg !4553

cleanup:                                          ; preds = %entry, %if.else58, %if.end45, %if.then23, %if.end6
  %retval.0 = phi i32 [ %add15, %if.end6 ], [ %add35, %if.then23 ], [ %add57, %if.end45 ], [ %add60, %if.else58 ], [ 0, %entry ], !dbg !4502
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4554
  ret i32 %retval.0, !dbg !4554
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 %mode, i32 %from, i32 %to) unnamed_addr #0 !dbg !4555 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !4559, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 %from, metadata !4560, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i32 %to, metadata !4561, metadata !DIExpression()), !dbg !4562
  %idxprom = zext i32 %mode to i64, !dbg !4563
  %arrayidx = getelementptr inbounds [87 x [27 x i16]*], [87 x [27 x i16]*]* @ira_register_move_cost, i64 0, i64 %idxprom, !dbg !4563
  %0 = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !4563
  %cmp = icmp eq [27 x i16]* %0, null, !dbg !4565
  br i1 %cmp, label %if.then, label %if.end, !dbg !4566

if.then:                                          ; preds = %entry
  tail call void @ira_init_register_move_cost(i32 %mode) #6, !dbg !4567
  %.pre = load [27 x i16]*, [27 x i16]** %arrayidx, align 8, !dbg !4568
  br label %if.end, !dbg !4567

if.end:                                           ; preds = %if.then, %entry
  %1 = phi [27 x i16]* [ %.pre, %if.then ], [ %0, %entry ], !dbg !4568
  %idxprom3 = zext i32 %from to i64, !dbg !4568
  %idxprom5 = zext i32 %to to i64, !dbg !4568
  %arrayidx6 = getelementptr inbounds [27 x i16], [27 x i16]* %1, i64 %idxprom3, i64 %idxprom5, !dbg !4568
  %2 = load i16, i16* %arrayidx6, align 2, !dbg !4568
  %conv = zext i16 %2 to i32, !dbg !4568
  ret i32 %conv, !dbg !4569
}

declare dso_local i32 @address_operand(%struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @constraint_satisfied_p(%struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local i32 @lookup_constraint(i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @legitimate_pic_operand_p(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @insn_const_int_ok_for_constraint(i64, i32) local_unnamed_addr #2

declare dso_local i32 @regclass_for_constraint(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @insn_constraint_len(i8 signext %fc, i8* %str) unnamed_addr #0 !dbg !4570 {
entry:
  call void @llvm.dbg.value(metadata i8 %fc, metadata !4575, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i8* %str, metadata !4576, metadata !DIExpression()), !dbg !4577
  %cond = icmp eq i8 %fc, 89, !dbg !4578
  %retval.0 = select i1 %cond, i64 2, i64 1, !dbg !4578
  ret i64 %retval.0, !dbg !4579
}

declare dso_local i32 @reg_fits_class_p(%struct.rtx_def*, i32, i32, i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) local_unnamed_addr #2

declare dso_local i32 @reg_classes_intersect_p(i32, i32) local_unnamed_addr #2

declare dso_local i32 @ix86_preferred_reload_class(%struct.rtx_def*, i32) local_unnamed_addr #2

declare dso_local void @init_move_cost(i32) local_unnamed_addr #2

declare dso_local void @ira_set_allocno_cover_class(%struct.ira_allocno*, i32) local_unnamed_addr #2

declare dso_local i32* @ira_allocate_cost_vector(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @process_bb_node_for_hard_reg_moves(%struct.ira_loop_tree_node* %loop_tree_node) #5 !dbg !4580 {
entry:
  call void @llvm.dbg.value(metadata %struct.ira_loop_tree_node* %loop_tree_node, metadata !4582, metadata !DIExpression()), !dbg !4599
  %bb1 = getelementptr inbounds %struct.ira_loop_tree_node, %struct.ira_loop_tree_node* %loop_tree_node, i64 0, i32 0, !dbg !4600
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1, align 8, !dbg !4600
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !4594, metadata !DIExpression()), !dbg !4599
  %cmp = icmp eq %struct.basic_block_def* %0, null, !dbg !4601
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !4603

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @optimize_size, align 4, !dbg !4604
  %tobool = icmp eq i32 %1, 0, !dbg !4604
  br i1 %tobool, label %lor.lhs.false, label %cond.end10, !dbg !4604

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !4604
  %tobool2 = icmp eq i32 %2, 0, !dbg !4604
  br i1 %tobool2, label %cond.false, label %land.lhs.true, !dbg !4604

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4604
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !4604
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4604
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !4604
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4604
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 8, !dbg !4604
  %6 = load i64, i64* %count, align 8, !dbg !4604
  %tobool3 = icmp eq i64 %6, 0, !dbg !4604
  br i1 %tobool3, label %cond.end10, label %cond.false, !dbg !4604

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 11, !dbg !4604
  %7 = load i32, i32* %frequency, align 8, !dbg !4604
  %.off = add i32 %7, 9, !dbg !4604
  %8 = icmp ugt i32 %.off, 18, !dbg !4604
  br i1 %8, label %cond.true5, label %cond.end10, !dbg !4604

cond.true5:                                       ; preds = %cond.false
  %div8 = sdiv i32 %7, 10, !dbg !4604
  br label %cond.end10, !dbg !4604

cond.end10:                                       ; preds = %land.lhs.true, %if.end, %cond.true5, %cond.false
  %cond11 = phi i32 [ 1000, %land.lhs.true ], [ 1000, %if.end ], [ %div8, %cond.true5 ], [ 1, %cond.false ], !dbg !4604
  call void @llvm.dbg.value(metadata i32 %cond11, metadata !4584, metadata !DIExpression()), !dbg !4599
  %cmp12 = icmp eq i32 %cond11, 0, !dbg !4605
  %spec.select = select i1 %cmp12, i32 1, i32 %cond11, !dbg !4607
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4584, metadata !DIExpression()), !dbg !4599
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 7, !dbg !4608
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4608
  %9 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4608
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %9, i64 0, i32 0, !dbg !4608
  br label %for.cond, !dbg !4608

for.cond:                                         ; preds = %for.inc, %cond.end10
  %insn.0.in = phi %struct.rtx_def** [ %head_, %cond.end10 ], [ %rt_rtx162, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !4610
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4595, metadata !DIExpression()), !dbg !4599
  %tobool15 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !4611
  br i1 %tobool15, label %cleanup.cont.loopexit, label %land.rhs, !dbg !4611

land.rhs:                                         ; preds = %for.cond
  %10 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4611
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %10, i64 0, i32 1, !dbg !4611
  %11 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4611
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4611
  %rt_rtx = bitcast %union.rtunion_def* %12 to %struct.rtx_def**, !dbg !4611
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4611
  %cmp18 = icmp eq %struct.rtx_def* %insn.0, %13, !dbg !4611
  br i1 %cmp18, label %cleanup.cont.loopexit, label %for.body, !dbg !4608

for.body:                                         ; preds = %land.rhs
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !4613
  %bf.load = load i32, i32* %14, align 8, !dbg !4613
  %bf.clear = and i32 %bf.load, 65535, !dbg !4613
  %cmp19 = icmp eq i32 %bf.clear, 8, !dbg !4613
  br i1 %cmp19, label %land.lhs.true32, label %lor.lhs.false20, !dbg !4613

lor.lhs.false20:                                  ; preds = %for.body
  %cmp23 = icmp eq i32 %bf.clear, 7, !dbg !4613
  br i1 %cmp23, label %land.lhs.true32, label %lor.lhs.false24, !dbg !4613

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %cmp27 = icmp eq i32 %bf.clear, 9, !dbg !4613
  br i1 %cmp27, label %land.lhs.true32, label %lor.lhs.false28, !dbg !4613

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %cmp31 = icmp eq i32 %bf.clear, 10, !dbg !4613
  br i1 %cmp31, label %land.lhs.true32, label %for.inc, !dbg !4613

land.lhs.true32:                                  ; preds = %lor.lhs.false28, %lor.lhs.false24, %lor.lhs.false20, %for.body
  %cmp35 = icmp eq i32 %bf.clear, 7, !dbg !4613
  br i1 %cmp35, label %for.inc, label %if.end37, !dbg !4616

if.end37:                                         ; preds = %land.lhs.true32
  br i1 %cmp19, label %cond.true53, label %lor.lhs.false41, !dbg !4617

lor.lhs.false41:                                  ; preds = %if.end37
  br i1 false, label %lor.lhs.false41.cond.true53_crit_edge, label %lor.lhs.false45, !dbg !4617

lor.lhs.false41.cond.true53_crit_edge:            ; preds = %lor.lhs.false41
  br label %cond.true53, !dbg !4617

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %cmp48 = icmp eq i32 %bf.clear, 9, !dbg !4617
  br i1 %cmp48, label %cond.true53, label %lor.lhs.false49, !dbg !4617

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %cmp52 = icmp eq i32 %bf.clear, 10, !dbg !4617
  br i1 %cmp52, label %cond.true53, label %cond.end74, !dbg !4617

cond.true53:                                      ; preds = %lor.lhs.false41.cond.true53_crit_edge, %lor.lhs.false49, %lor.lhs.false45, %if.end37
  %u54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !4617
  %15 = getelementptr inbounds %union.u, %union.u* %u54, i64 1, i32 0, i32 0, i64 0, !dbg !4617
  %16 = bitcast %union.rtunion_def* %15 to i32**, !dbg !4617
  %17 = load i32*, i32** %16, align 8, !dbg !4617
  %bf.load58 = load i32, i32* %17, align 8, !dbg !4617
  %bf.clear59 = and i32 %bf.load58, 65535, !dbg !4617
  %cmp60 = icmp eq i32 %bf.clear59, 23, !dbg !4617
  %18 = bitcast i32* %17 to %struct.rtx_def*, !dbg !4617
  br i1 %cmp60, label %cond.end74, label %cond.false66, !dbg !4617

cond.false66:                                     ; preds = %cond.true53
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def* %18) #6, !dbg !4617
  br label %cond.end74, !dbg !4617

cond.end74:                                       ; preds = %lor.lhs.false49, %cond.false66, %cond.true53
  %cond75 = phi %struct.rtx_def* [ %call, %cond.false66 ], [ %18, %cond.true53 ], [ null, %lor.lhs.false49 ], !dbg !4617
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond75, metadata !4596, metadata !DIExpression()), !dbg !4599
  %cmp76 = icmp eq %struct.rtx_def* %cond75, null, !dbg !4618
  br i1 %cmp76, label %for.inc, label %if.end78, !dbg !4620

if.end78:                                         ; preds = %cond.end74
  %arrayidx81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond75, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4621
  %rt_rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**, !dbg !4621
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx82, align 8, !dbg !4621
  call void @llvm.dbg.value(metadata %struct.rtx_def* %19, metadata !4598, metadata !DIExpression()), !dbg !4599
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond75, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4622
  %rt_rtx86 = bitcast %union.rtunion_def* %20 to %struct.rtx_def**, !dbg !4622
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx86, align 8, !dbg !4622
  call void @llvm.dbg.value(metadata %struct.rtx_def* %21, metadata !4597, metadata !DIExpression()), !dbg !4599
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i64 0, i32 0, !dbg !4623
  %bf.load87 = load i32, i32* %22, align 8, !dbg !4623
  %bf.clear88 = and i32 %bf.load87, 65535, !dbg !4623
  %cmp89 = icmp eq i32 %bf.clear88, 37, !dbg !4623
  br i1 %cmp89, label %lor.lhs.false90, label %for.inc, !dbg !4625

lor.lhs.false90:                                  ; preds = %if.end78
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 0, !dbg !4626
  %bf.load91 = load i32, i32* %23, align 8, !dbg !4626
  %bf.clear92 = and i32 %bf.load91, 65535, !dbg !4626
  %cmp93 = icmp eq i32 %bf.clear92, 37, !dbg !4626
  br i1 %cmp93, label %if.end95, label %for.inc, !dbg !4627

if.end95:                                         ; preds = %lor.lhs.false90
  %call96 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %19) #7, !dbg !4628
  call void @llvm.dbg.value(metadata i32 %call96, metadata !4587, metadata !DIExpression()), !dbg !4599
  %call97 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %21) #7, !dbg !4629
  call void @llvm.dbg.value(metadata i32 %call97, metadata !4586, metadata !DIExpression()), !dbg !4599
  %cmp98 = icmp sgt i32 %call96, 52, !dbg !4630
  %cmp100 = icmp slt i32 %call97, 53, !dbg !4632
  %or.cond = and i1 %cmp98, %cmp100, !dbg !4633
  br i1 %or.cond, label %if.then101, label %if.else, !dbg !4633

if.then101:                                       ; preds = %if.end95
  call void @llvm.dbg.value(metadata i32 %call97, metadata !4588, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i8 1, metadata !4589, metadata !DIExpression()), !dbg !4599
  %24 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !4634
  %idxprom = sext i32 %call96 to i64, !dbg !4634
  %arrayidx102 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %24, i64 %idxprom, !dbg !4634
  br label %if.end111, !dbg !4636

if.else:                                          ; preds = %if.end95
  %cmp103 = icmp sgt i32 %call97, 52, !dbg !4637
  %cmp105 = icmp slt i32 %call96, 53, !dbg !4639
  %or.cond1 = and i1 %cmp103, %cmp105, !dbg !4640
  br i1 %or.cond1, label %if.then106, label %for.inc, !dbg !4640

if.then106:                                       ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 %call96, metadata !4588, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i8 0, metadata !4589, metadata !DIExpression()), !dbg !4599
  %25 = load %struct.ira_allocno**, %struct.ira_allocno*** @ira_curr_regno_allocno_map, align 8, !dbg !4641
  %idxprom107 = sext i32 %call97 to i64, !dbg !4641
  %arrayidx108 = getelementptr inbounds %struct.ira_allocno*, %struct.ira_allocno** %25, i64 %idxprom107, !dbg !4641
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.then101
  %hard_regno.0 = phi i32 [ %call97, %if.then101 ], [ %call96, %if.then106 ], !dbg !4643
  %to_p.0 = phi i32 [ 1, %if.then101 ], [ 0, %if.then106 ]
  %a.0.in = phi %struct.ira_allocno** [ %arrayidx102, %if.then101 ], [ %arrayidx108, %if.then106 ]
  %a.0 = load %struct.ira_allocno*, %struct.ira_allocno** %a.0.in, align 8, !dbg !4643
  call void @llvm.dbg.value(metadata %struct.ira_allocno* %a.0, metadata !4590, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 %hard_regno.0, metadata !4588, metadata !DIExpression()), !dbg !4599
  %cover_class = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 9, !dbg !4644
  %26 = load i32, i32* %cover_class, align 8, !dbg !4644
  call void @llvm.dbg.value(metadata i32 %26, metadata !4591, metadata !DIExpression()), !dbg !4599
  %idxprom112 = zext i32 %26 to i64, !dbg !4645
  %arrayidx113 = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom112, !dbg !4645
  %27 = load i64, i64* %arrayidx113, align 8, !dbg !4645
  %sh_prom = zext i32 %hard_regno.0 to i64, !dbg !4645
  %shl = shl i64 1, %sh_prom, !dbg !4645
  %and = and i64 %27, %shl, !dbg !4645
  %tobool114 = icmp eq i64 %and, 0, !dbg !4645
  br i1 %tobool114, label %for.inc, label %if.end116, !dbg !4647

if.end116:                                        ; preds = %if.end111
  %idxprom119 = sext i32 %hard_regno.0 to i64, !dbg !4648
  %arrayidx120 = getelementptr inbounds [27 x [53 x i16]], [27 x [53 x i16]]* @ira_class_hard_reg_index, i64 0, i64 %idxprom112, i64 %idxprom119, !dbg !4648
  %28 = load i16, i16* %arrayidx120, align 2, !dbg !4648
  %cmp121 = icmp slt i16 %28, 0, !dbg !4649
  br i1 %cmp121, label %for.inc, label %if.end124, !dbg !4651

if.end124:                                        ; preds = %if.end116
  %mode125 = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 2, !dbg !4652
  %29 = load i32, i32* %mode125, align 8, !dbg !4652
  call void @llvm.dbg.value(metadata i32 %29, metadata !4593, metadata !DIExpression()), !dbg !4599
  %arrayidx127 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %idxprom119, !dbg !4653
  %30 = load i32, i32* %arrayidx127, align 4, !dbg !4653
  call void @llvm.dbg.value(metadata i32 %30, metadata !4592, metadata !DIExpression()), !dbg !4599
  %tobool129 = icmp eq i32 %to_p.0, 0, !dbg !4654
  br i1 %tobool129, label %cond.false132, label %cond.true130, !dbg !4654

cond.true130:                                     ; preds = %if.end124
  %call131 = tail call fastcc i32 @ira_get_register_move_cost(i32 %29, i32 %30, i32 %26) #7, !dbg !4655
  br label %cond.end134, !dbg !4654

cond.false132:                                    ; preds = %if.end124
  %call133 = tail call fastcc i32 @ira_get_register_move_cost(i32 %29, i32 %26, i32 %30) #7, !dbg !4656
  br label %cond.end134, !dbg !4654

cond.end134:                                      ; preds = %cond.false132, %cond.true130
  %cond135 = phi i32 [ %call131, %cond.true130 ], [ %call133, %cond.false132 ], !dbg !4654
  %mul136 = mul nsw i32 %cond135, %spec.select, !dbg !4657
  call void @llvm.dbg.value(metadata i32 %mul136, metadata !4585, metadata !DIExpression()), !dbg !4599
  %hard_reg_costs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 33, !dbg !4658
  %cover_class_cost = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 10, !dbg !4659
  %31 = load i32, i32* %cover_class_cost, align 4, !dbg !4659
  tail call fastcc void @ira_allocate_and_set_costs(i32** nonnull %hard_reg_costs, i32 %26, i32 %31) #7, !dbg !4660
  %conflict_hard_reg_costs = getelementptr inbounds %struct.ira_allocno, %struct.ira_allocno* %a.0, i64 0, i32 35, !dbg !4661
  tail call fastcc void @ira_allocate_and_set_costs(i32** nonnull %conflict_hard_reg_costs, i32 %26, i32 0) #7, !dbg !4662
  %32 = load i32*, i32** %hard_reg_costs, align 8, !dbg !4663
  %idxprom138 = sext i16 %28 to i64, !dbg !4663
  %arrayidx139 = getelementptr inbounds i32, i32* %32, i64 %idxprom138, !dbg !4663
  %33 = load i32, i32* %arrayidx139, align 4, !dbg !4664
  %sub = sub nsw i32 %33, %mul136, !dbg !4664
  store i32 %sub, i32* %arrayidx139, align 4, !dbg !4664
  %34 = load i32*, i32** %conflict_hard_reg_costs, align 8, !dbg !4665
  %arrayidx142 = getelementptr inbounds i32, i32* %34, i64 %idxprom138, !dbg !4665
  %35 = load i32, i32* %arrayidx142, align 4, !dbg !4666
  %sub143 = sub nsw i32 %35, %mul136, !dbg !4666
  store i32 %sub143, i32* %arrayidx142, align 4, !dbg !4666
  %36 = load i32, i32* %cover_class_cost, align 4, !dbg !4667
  %37 = load i32*, i32** %hard_reg_costs, align 8, !dbg !4667
  %arrayidx147 = getelementptr inbounds i32, i32* %37, i64 %idxprom138, !dbg !4667
  %38 = load i32, i32* %arrayidx147, align 4, !dbg !4667
  %cmp148 = icmp slt i32 %36, %38, !dbg !4667
  br i1 %cmp148, label %cond.true150, label %cond.false152, !dbg !4667

cond.true150:                                     ; preds = %cond.end134
  br label %cond.end156, !dbg !4667

cond.false152:                                    ; preds = %cond.end134
  br label %cond.end156, !dbg !4667

cond.end156:                                      ; preds = %cond.false152, %cond.true150
  %cond157 = phi i32 [ %36, %cond.true150 ], [ %38, %cond.false152 ], !dbg !4667
  store i32 %cond157, i32* %cover_class_cost, align 4, !dbg !4668
  br label %for.inc, !dbg !4669

for.inc:                                          ; preds = %if.end111, %if.end116, %if.else, %if.end78, %lor.lhs.false90, %cond.end74, %lor.lhs.false28, %land.lhs.true32, %cond.end156
  %39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4611
  %rt_rtx162 = bitcast %union.rtunion_def* %39 to %struct.rtx_def**, !dbg !4611
  br label %for.cond, !dbg !4611, !llvm.loop !4670

cleanup.cont.loopexit:                            ; preds = %for.cond, %land.rhs
  br label %cleanup.cont, !dbg !4672

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !4672
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
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1744, !1745, !1746}
!llvm.ident = !{!1747}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "init_cost", scope: !2, file: !3, line: 75, type: !595, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !585, globals: !1701, nameTableKind: None)
!3 = !DIFile(filename: "ira-costs.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !37, !165, !174, !178, !184, !189, !193, !212, !219, !226, !420, !563}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !6, line: 1188, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!9 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
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
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !166, line: 31, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!167 = !{!168, !169, !170, !171, !172, !173}
!168 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!169 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!170 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!171 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!172 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!173 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !166, line: 91, baseType: !7, size: 32, elements: !175)
!175 = !{!176, !177}
!176 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !179, line: 363, baseType: !7, size: 32, elements: !180)
!179 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!180 = !{!181, !182, !183}
!181 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!182 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!183 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !179, line: 355, baseType: !7, size: 32, elements: !185)
!185 = !{!186, !187, !188}
!186 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!187 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!188 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !6, line: 474, baseType: !7, size: 32, elements: !190)
!190 = !{!191, !192}
!191 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !194, line: 280, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!196 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!197 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!198 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!199 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!200 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!201 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!202 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!203 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!204 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!205 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!206 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!207 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!208 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !194, line: 1817, baseType: !7, size: 32, elements: !213)
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!215 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!216 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!217 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !194, line: 1805, baseType: !7, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!224 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!225 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !194, line: 39, baseType: !7, size: 32, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!228 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!229 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!230 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!231 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!232 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!233 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!234 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!235 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!236 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!237 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!238 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!239 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!240 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!241 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!242 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!243 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!244 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!245 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!246 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!247 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!248 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!249 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!250 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!251 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!252 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!253 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!254 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!255 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!256 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!257 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!258 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!259 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!260 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!261 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!262 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!263 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!264 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!265 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!266 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!267 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!268 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!269 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!270 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!271 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!272 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!273 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!274 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!275 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!276 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!277 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!278 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!279 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!280 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!281 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!282 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!283 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!284 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!285 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!286 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!287 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!288 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!289 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!290 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!291 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!292 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!293 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!294 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!295 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!296 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!297 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!298 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!299 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!300 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!301 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!302 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!303 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!304 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!305 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!306 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!307 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!308 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!309 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!310 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!311 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!312 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!313 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!314 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!315 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!316 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!317 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!318 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!319 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!320 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!321 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!322 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!323 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!324 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!325 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!326 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!327 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!328 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!329 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!330 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!331 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!332 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!333 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!334 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!335 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!336 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!337 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!338 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!339 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!340 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!341 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!342 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!343 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!344 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!345 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!346 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!347 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!348 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!349 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!350 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!351 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!352 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!353 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!354 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!355 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!356 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!357 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!358 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!359 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!360 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!361 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!362 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!363 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!364 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!365 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!366 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!367 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!368 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!369 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!370 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!371 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!372 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!373 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!374 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!375 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!376 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!377 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!378 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!379 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!380 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!381 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!383 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!384 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!385 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!386 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!387 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!388 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!389 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!390 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!391 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!392 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!393 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!394 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!395 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!396 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!397 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!398 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!399 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!400 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!401 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!402 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!403 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!404 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!405 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!406 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!407 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!408 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!409 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!410 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!411 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!412 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!413 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!414 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!415 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!416 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!417 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!418 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!419 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!420 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !421, line: 45, baseType: !7, size: 32, elements: !422)
!421 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!423 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!424 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!425 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!426 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!427 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!428 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!429 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!430 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!431 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!432 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!433 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!434 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!435 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!436 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!437 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!438 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!439 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!440 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!441 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!442 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!443 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!444 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!445 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!446 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!447 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!448 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!449 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!450 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!451 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!452 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!453 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!454 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!455 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!456 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!457 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!458 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!459 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!460 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!461 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!462 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!463 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!464 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!465 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!466 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!467 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!468 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!469 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!470 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!471 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!472 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!473 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!474 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!475 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!476 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!477 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!478 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!479 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!480 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!481 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!482 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!483 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!484 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!485 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!486 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!487 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!488 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!489 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!490 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!491 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!492 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!493 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!494 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!495 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!496 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!497 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!498 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!499 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!500 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!501 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!502 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!503 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!504 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!505 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!506 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!507 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!508 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!509 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!510 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!511 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!512 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!513 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!514 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!515 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!516 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!517 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!518 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!519 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!520 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!521 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!522 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!523 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!524 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!525 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!526 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!527 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!528 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!529 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!530 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!531 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!532 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!533 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!534 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!535 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!536 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!537 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!538 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!539 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!540 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!541 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!542 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!543 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!544 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!545 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!550 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!551 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!552 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!553 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!554 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!555 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!556 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!557 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!558 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!559 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!560 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!561 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!562 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!563 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !564, line: 36, baseType: !7, size: 32, elements: !565)
!564 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!565 = !{!566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!566 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!567 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!568 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!569 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!570 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!571 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!572 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!573 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!574 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!575 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!576 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!577 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!578 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!579 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!580 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!581 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!582 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!583 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!584 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!585 = !{!586, !587, !588, !589, !592, !593, !595, !603, !604, !590, !37, !5, !420, !672, !7, !563, !1698, !1700}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!588 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "costs", file: !3, line: 60, size: 64, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mem_cost", scope: !596, file: !3, line: 62, baseType: !588, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !596, file: !3, line: 66, baseType: !600, size: 32, offset: 32)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 32, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 1)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !605, line: 50, baseType: !606)
!605 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !421, line: 240, size: 384, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !607, file: !421, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !607, file: !421, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !607, file: !421, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !607, file: !421, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !607, file: !421, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !607, file: !421, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !607, file: !421, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !607, file: !421, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !607, file: !421, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !607, file: !421, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !607, file: !421, line: 321, baseType: !620, size: 320, offset: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !421, line: 315, size: 320, elements: !621)
!621 = !{!622, !1665, !1667, !1696, !1697}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !620, file: !421, line: 316, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 64, elements: !601)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !421, line: 183, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !421, line: 166, size: 64, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !639, !640, !652, !655, !717, !1643, !1644, !1655, !1662}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !625, file: !421, line: 168, baseType: !588, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !625, file: !421, line: 169, baseType: !7, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !625, file: !421, line: 170, baseType: !593, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !625, file: !421, line: 171, baseType: !604, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !625, file: !421, line: 172, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !605, line: 53, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !421, line: 359, size: 128, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !634, file: !421, line: 360, baseType: !588, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !634, file: !421, line: 361, baseType: !638, size: 64, offset: 64)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 64, elements: !601)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !625, file: !421, line: 173, baseType: !37, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !625, file: !421, line: 174, baseType: !641, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !421, line: 133, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 115, size: 32, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !642, file: !421, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !642, file: !421, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !642, file: !421, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !642, file: !421, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !642, file: !421, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !642, file: !421, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !642, file: !421, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !642, file: !421, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !625, file: !421, line: 175, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !421, line: 175, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !625, file: !421, line: 176, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !658, line: 75, size: 256, elements: !659)
!658 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!659 = !{!660, !675, !676, !677}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !657, file: !658, line: 76, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !658, line: 68, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !658, line: 63, size: 320, elements: !664)
!664 = !{!665, !667, !668, !669}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !658, line: 64, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !663, file: !658, line: 65, baseType: !666, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !663, file: !658, line: 66, baseType: !7, size: 32, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !663, file: !658, line: 67, baseType: !670, size: 128, offset: 192)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 128, elements: !673)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !658, line: 29, baseType: !672)
!672 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!673 = !{!674}
!674 = !DISubrange(count: 2)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !657, file: !658, line: 77, baseType: !661, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !657, file: !658, line: 78, baseType: !7, size: 32, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !657, file: !658, line: 79, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !658, line: 49, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !658, line: 45, size: 832, elements: !681)
!681 = !{!682, !683, !684}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !680, file: !658, line: 46, baseType: !666, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !680, file: !658, line: 47, baseType: !656, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !680, file: !658, line: 48, baseType: !685, size: 704, offset: 128)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !686, line: 164, size: 704, elements: !687)
!686 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!687 = !{!688, !690, !700, !701, !702, !703, !704, !705, !709, !713, !714, !715, !716}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !685, file: !686, line: 166, baseType: !689, size: 64)
!689 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !685, file: !686, line: 167, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !686, line: 157, size: 192, elements: !693)
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !692, file: !686, line: 159, baseType: !590, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !692, file: !686, line: 160, baseType: !691, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !692, file: !686, line: 161, baseType: !697, size: 32, offset: 128)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 32, elements: !698)
!698 = !{!699}
!699 = !DISubrange(count: 4)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !685, file: !686, line: 168, baseType: !590, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !685, file: !686, line: 169, baseType: !590, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !685, file: !686, line: 170, baseType: !590, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !685, file: !686, line: 171, baseType: !689, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !685, file: !686, line: 172, baseType: !588, size: 32, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !685, file: !686, line: 176, baseType: !706, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!691, !592, !689}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !685, file: !686, line: 177, baseType: !710, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !592, !691}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !685, file: !686, line: 178, baseType: !592, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !685, file: !686, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !685, file: !686, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !685, file: !686, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !625, file: !421, line: 177, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !605, line: 56, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !194, line: 3371, size: 1792, elements: !721)
!721 = !{!722, !755, !761, !772, !791, !802, !807, !814, !820, !833, !845, !883, !888, !916, !924, !925, !930, !939, !945, !950, !954, !958, !1270, !1319, !1325, !1332, !1339, !1362, !1387, !1404, !1416, !1438, !1453, !1625}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !720, file: !194, line: 3372, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !194, line: 360, size: 64, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !723, file: !194, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !723, file: !194, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !723, file: !194, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !723, file: !194, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !723, file: !194, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !723, file: !194, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !723, file: !194, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !723, file: !194, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !723, file: !194, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !723, file: !194, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !723, file: !194, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !723, file: !194, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !723, file: !194, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !723, file: !194, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !723, file: !194, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !723, file: !194, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !723, file: !194, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !723, file: !194, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !723, file: !194, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !723, file: !194, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !723, file: !194, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !723, file: !194, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !723, file: !194, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !723, file: !194, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !723, file: !194, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !723, file: !194, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !723, file: !194, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !723, file: !194, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !723, file: !194, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !723, file: !194, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !720, file: !194, line: 3373, baseType: !756, size: 192)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !194, line: 402, size: 192, elements: !757)
!757 = !{!758, !759, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !756, file: !194, line: 403, baseType: !723, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !756, file: !194, line: 404, baseType: !718, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !194, line: 405, baseType: !718, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !720, file: !194, line: 3374, baseType: !762, size: 320)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !194, line: 1384, size: 320, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !762, file: !194, line: 1385, baseType: !756, size: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !762, file: !194, line: 1386, baseType: !766, size: 128, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !767, line: 58, baseType: !768)
!767 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 54, size: 128, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !768, file: !767, line: 56, baseType: !672, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !768, file: !767, line: 57, baseType: !689, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !720, file: !194, line: 3375, baseType: !773, size: 256)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !194, line: 1397, size: 256, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !773, file: !194, line: 1398, baseType: !756, size: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !773, file: !194, line: 1399, baseType: !777, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !779, line: 52, size: 256, elements: !780)
!779 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!780 = !{!781, !782, !783, !784, !785, !786, !787}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !778, file: !779, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !778, file: !779, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !778, file: !779, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !778, file: !779, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !778, file: !779, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !778, file: !779, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !778, file: !779, line: 62, baseType: !788, size: 192, offset: 64)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 192, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 3)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !720, file: !194, line: 3376, baseType: !792, size: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !194, line: 1408, size: 256, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !792, file: !194, line: 1409, baseType: !756, size: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !792, file: !194, line: 1410, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !798, line: 27, size: 192, elements: !799)
!798 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !797, file: !798, line: 29, baseType: !766, size: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !797, file: !798, line: 30, baseType: !37, size: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !720, file: !194, line: 3377, baseType: !803, size: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !194, line: 1437, size: 256, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !803, file: !194, line: 1438, baseType: !756, size: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !803, file: !194, line: 1439, baseType: !718, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !720, file: !194, line: 3378, baseType: !808, size: 256)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !194, line: 1418, size: 256, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !808, file: !194, line: 1419, baseType: !756, size: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !808, file: !194, line: 1420, baseType: !588, size: 32, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !808, file: !194, line: 1421, baseType: !813, size: 8, offset: 224)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 8, elements: !601)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !720, file: !194, line: 3379, baseType: !815, size: 320)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !194, line: 1428, size: 320, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !815, file: !194, line: 1429, baseType: !756, size: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !815, file: !194, line: 1430, baseType: !718, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !815, file: !194, line: 1431, baseType: !718, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !720, file: !194, line: 3380, baseType: !821, size: 320)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !194, line: 1460, size: 320, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !821, file: !194, line: 1461, baseType: !756, size: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !821, file: !194, line: 1462, baseType: !825, size: 128, offset: 192)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !826, line: 31, size: 128, elements: !827)
!826 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!827 = !{!828, !831, !832}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !825, file: !826, line: 32, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !825, file: !826, line: 33, baseType: !7, size: 32, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !825, file: !826, line: 34, baseType: !7, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !720, file: !194, line: 3381, baseType: !834, size: 384)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !194, line: 2507, size: 384, elements: !835)
!835 = !{!836, !837, !842, !843, !844}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !834, file: !194, line: 2508, baseType: !756, size: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !834, file: !194, line: 2509, baseType: !838, size: 32, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !839, line: 58, baseType: !840)
!839 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !841, line: 44, baseType: !7)
!841 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!842 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !834, file: !194, line: 2510, baseType: !7, size: 32, offset: 224)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !834, file: !194, line: 2511, baseType: !718, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !834, file: !194, line: 2512, baseType: !718, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !720, file: !194, line: 3382, baseType: !846, size: 896)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !194, line: 2652, size: 896, elements: !847)
!847 = !{!848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !846, file: !194, line: 2653, baseType: !834, size: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !846, file: !194, line: 2654, baseType: !718, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !846, file: !194, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !846, file: !194, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !846, file: !194, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !846, file: !194, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !846, file: !194, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !846, file: !194, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !846, file: !194, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !846, file: !194, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !846, file: !194, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !846, file: !194, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !846, file: !194, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !846, file: !194, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !846, file: !194, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !846, file: !194, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !846, file: !194, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !846, file: !194, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !846, file: !194, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !846, file: !194, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !846, file: !194, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !846, file: !194, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !846, file: !194, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !846, file: !194, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !846, file: !194, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !846, file: !194, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !846, file: !194, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !846, file: !194, line: 2703, baseType: !7, size: 32, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !846, file: !194, line: 2705, baseType: !718, size: 64, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !846, file: !194, line: 2706, baseType: !718, size: 64, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !846, file: !194, line: 2707, baseType: !718, size: 64, offset: 704)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !846, file: !194, line: 2708, baseType: !718, size: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !846, file: !194, line: 2711, baseType: !881, size: 64, offset: 832)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !194, line: 2711, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !720, file: !194, line: 3383, baseType: !884, size: 960)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !194, line: 2756, size: 960, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !884, file: !194, line: 2757, baseType: !846, size: 896)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !884, file: !194, line: 2758, baseType: !604, size: 64, offset: 896)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !720, file: !194, line: 3384, baseType: !889, size: 1472)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !194, line: 3114, size: 1472, elements: !890)
!890 = !{!891, !912, !913, !914, !915}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !889, file: !194, line: 3115, baseType: !892, size: 1216)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !194, line: 2984, size: 1216, elements: !893)
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !892, file: !194, line: 2985, baseType: !884, size: 960)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !892, file: !194, line: 2986, baseType: !718, size: 64, offset: 960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !892, file: !194, line: 2987, baseType: !718, size: 64, offset: 1024)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !892, file: !194, line: 2988, baseType: !718, size: 64, offset: 1088)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !892, file: !194, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !892, file: !194, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !892, file: !194, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !892, file: !194, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !892, file: !194, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !892, file: !194, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !892, file: !194, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !892, file: !194, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !892, file: !194, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !892, file: !194, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !892, file: !194, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !892, file: !194, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !892, file: !194, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !892, file: !194, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !889, file: !194, line: 3117, baseType: !718, size: 64, offset: 1216)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !889, file: !194, line: 3119, baseType: !718, size: 64, offset: 1280)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !889, file: !194, line: 3121, baseType: !718, size: 64, offset: 1344)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !889, file: !194, line: 3123, baseType: !718, size: 64, offset: 1408)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !720, file: !194, line: 3385, baseType: !917, size: 1088)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !194, line: 2874, size: 1088, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !917, file: !194, line: 2875, baseType: !884, size: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !917, file: !194, line: 2876, baseType: !604, size: 64, offset: 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !917, file: !194, line: 2877, baseType: !922, size: 64, offset: 1024)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !194, line: 2856, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !720, file: !194, line: 3386, baseType: !892, size: 1216)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !720, file: !194, line: 3387, baseType: !926, size: 1280)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !194, line: 3093, size: 1280, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !926, file: !194, line: 3094, baseType: !892, size: 1216)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !926, file: !194, line: 3095, baseType: !922, size: 64, offset: 1216)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !720, file: !194, line: 3388, baseType: !931, size: 1216)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !194, line: 2824, size: 1216, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !931, file: !194, line: 2825, baseType: !846, size: 896)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !931, file: !194, line: 2827, baseType: !718, size: 64, offset: 896)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !931, file: !194, line: 2828, baseType: !718, size: 64, offset: 960)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !931, file: !194, line: 2829, baseType: !718, size: 64, offset: 1024)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !931, file: !194, line: 2830, baseType: !718, size: 64, offset: 1088)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !931, file: !194, line: 2831, baseType: !718, size: 64, offset: 1152)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !720, file: !194, line: 3389, baseType: !940, size: 1024)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !194, line: 2850, size: 1024, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !940, file: !194, line: 2851, baseType: !884, size: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !940, file: !194, line: 2852, baseType: !588, size: 32, offset: 960)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !940, file: !194, line: 2853, baseType: !588, size: 32, offset: 992)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !720, file: !194, line: 3390, baseType: !946, size: 1024)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !194, line: 2857, size: 1024, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !946, file: !194, line: 2858, baseType: !884, size: 960)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !946, file: !194, line: 2859, baseType: !922, size: 64, offset: 960)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !720, file: !194, line: 3391, baseType: !951, size: 960)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !194, line: 2862, size: 960, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !951, file: !194, line: 2863, baseType: !884, size: 960)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !720, file: !194, line: 3392, baseType: !955, size: 1472)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !194, line: 3304, size: 1472, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !955, file: !194, line: 3305, baseType: !889, size: 1472)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !720, file: !194, line: 3393, baseType: !959, size: 1792)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !194, line: 3248, size: 1792, elements: !960)
!960 = !{!961, !962, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !959, file: !194, line: 3249, baseType: !889, size: 1472)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !959, file: !194, line: 3251, baseType: !963, size: 64, offset: 1472)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !965, line: 463, size: 1152, elements: !966)
!965 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!966 = !{!967, !970, !1130, !1131, !1134, !1193, !1194, !1195, !1196, !1197, !1198, !1222, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !964, file: !965, line: 464, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !965, line: 464, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !964, file: !965, line: 467, baseType: !971, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !179, line: 374, size: 640, elements: !973)
!973 = !{!974, !1105, !1106, !1119, !1120, !1121, !1122, !1123, !1124, !1126, !1128, !1129}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !972, file: !179, line: 377, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !605, line: 111, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !179, line: 217, size: 832, elements: !978)
!978 = !{!979, !1014, !1015, !1016, !1075, !1079, !1080, !1081, !1099, !1100, !1101, !1102, !1103, !1104}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !977, file: !179, line: 219, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !179, line: 151, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !179, line: 151, size: 128, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !982, file: !179, line: 151, baseType: !985, size: 128)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !179, line: 150, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !179, line: 150, size: 128, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !986, file: !179, line: 150, baseType: !7, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !986, file: !179, line: 150, baseType: !7, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !986, file: !179, line: 150, baseType: !991, size: 64, offset: 64)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 64, elements: !601)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !605, line: 108, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !179, line: 122, size: 512, elements: !995)
!995 = !{!996, !997, !998, !1006, !1007, !1008, !1009, !1010, !1011, !1012}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !994, file: !179, line: 124, baseType: !976, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !994, file: !179, line: 125, baseType: !976, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !994, file: !179, line: 131, baseType: !999, size: 64, offset: 128)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !179, line: 128, size: 64, elements: !1000)
!1000 = !{!1001, !1005}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !999, file: !179, line: 129, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !605, line: 66, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !605, line: 65, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !999, file: !179, line: 130, baseType: !604, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !994, file: !179, line: 134, baseType: !592, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !994, file: !179, line: 137, baseType: !718, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !994, file: !179, line: 138, baseType: !838, size: 32, offset: 320)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !994, file: !179, line: 142, baseType: !7, size: 32, offset: 352)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !179, line: 144, baseType: !588, size: 32, offset: 384)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !994, file: !179, line: 145, baseType: !588, size: 32, offset: 416)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !994, file: !179, line: 146, baseType: !1013, size: 64, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !179, line: 119, baseType: !689)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !977, file: !179, line: 220, baseType: !980, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !977, file: !179, line: 223, baseType: !592, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !977, file: !179, line: 226, baseType: !1017, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !166, line: 100, size: 1216, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1029, !1030, !1031, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1065, !1073, !1074}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1018, file: !166, line: 102, baseType: !588, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1018, file: !166, line: 105, baseType: !7, size: 32, offset: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1018, file: !166, line: 108, baseType: !976, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1018, file: !166, line: 111, baseType: !976, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1018, file: !166, line: 114, baseType: !1025, size: 64, offset: 192)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !166, line: 41, size: 64, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1025, file: !166, line: 42, baseType: !165, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1025, file: !166, line: 43, baseType: !7, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1018, file: !166, line: 117, baseType: !7, size: 32, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1018, file: !166, line: 120, baseType: !7, size: 32, offset: 288)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1018, file: !166, line: 123, baseType: !1032, size: 64, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !166, line: 87, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !166, line: 87, size: 128, elements: !1035)
!1035 = !{!1036}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1034, file: !166, line: 87, baseType: !1037, size: 128)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !166, line: 85, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !166, line: 85, size: 128, elements: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1038, file: !166, line: 85, baseType: !7, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1038, file: !166, line: 85, baseType: !7, size: 32, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1038, file: !166, line: 85, baseType: !1043, size: 64, offset: 64)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1044, size: 64, elements: !601)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !166, line: 84, baseType: !1017)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1018, file: !166, line: 126, baseType: !1017, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1018, file: !166, line: 129, baseType: !1017, size: 64, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1018, file: !166, line: 132, baseType: !592, size: 64, offset: 512)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1018, file: !166, line: 139, baseType: !718, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1018, file: !166, line: 143, baseType: !766, size: 128, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1018, file: !166, line: 146, baseType: !766, size: 128, offset: 768)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1018, file: !166, line: 148, baseType: !587, size: 8, offset: 896)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1018, file: !166, line: 149, baseType: !587, size: 8, offset: 904)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1018, file: !166, line: 153, baseType: !174, size: 32, offset: 928)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1018, file: !166, line: 156, baseType: !1055, size: 64, offset: 960)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !166, line: 48, size: 320, elements: !1057)
!1057 = !{!1058, !1062, !1063, !1064}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1056, file: !166, line: 50, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !605, line: 58, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !605, line: 57, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1056, file: !166, line: 59, baseType: !766, size: 128, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1056, file: !166, line: 64, baseType: !587, size: 8, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1056, file: !166, line: 67, baseType: !1055, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1018, file: !166, line: 159, baseType: !1066, size: 64, offset: 1024)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !166, line: 72, size: 256, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1067, file: !166, line: 74, baseType: !993, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1067, file: !166, line: 77, baseType: !1066, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1067, file: !166, line: 78, baseType: !1066, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1067, file: !166, line: 81, baseType: !1066, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1018, file: !166, line: 162, baseType: !587, size: 8, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1018, file: !166, line: 166, baseType: !718, size: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !977, file: !179, line: 229, baseType: !1076, size: 128, offset: 256)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 128, elements: !673)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !179, line: 229, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !977, file: !179, line: 232, baseType: !976, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !977, file: !179, line: 233, baseType: !976, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !977, file: !179, line: 238, baseType: !1082, size: 64, offset: 512)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !179, line: 235, size: 64, elements: !1083)
!1083 = !{!1084, !1090}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1082, file: !179, line: 236, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !179, line: 273, size: 128, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1086, file: !179, line: 275, baseType: !1002, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1086, file: !179, line: 278, baseType: !1002, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1082, file: !179, line: 237, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !179, line: 259, size: 320, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1092, file: !179, line: 261, baseType: !604, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1092, file: !179, line: 262, baseType: !604, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1092, file: !179, line: 266, baseType: !604, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1092, file: !179, line: 267, baseType: !604, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1092, file: !179, line: 270, baseType: !588, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !977, file: !179, line: 241, baseType: !1013, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !977, file: !179, line: 244, baseType: !588, size: 32, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !977, file: !179, line: 247, baseType: !588, size: 32, offset: 672)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !977, file: !179, line: 250, baseType: !588, size: 32, offset: 704)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !977, file: !179, line: 253, baseType: !588, size: 32, offset: 736)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !179, line: 256, baseType: !588, size: 32, offset: 768)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !972, file: !179, line: 378, baseType: !975, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !972, file: !179, line: 381, baseType: !1107, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !179, line: 282, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !179, line: 282, size: 128, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1109, file: !179, line: 282, baseType: !1112, size: 128)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !179, line: 281, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !179, line: 281, size: 128, elements: !1114)
!1114 = !{!1115, !1116, !1117}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1113, file: !179, line: 281, baseType: !7, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1113, file: !179, line: 281, baseType: !7, size: 32, offset: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1113, file: !179, line: 281, baseType: !1118, size: 64, offset: 64)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 64, elements: !601)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !972, file: !179, line: 384, baseType: !588, size: 32, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !972, file: !179, line: 387, baseType: !588, size: 32, offset: 224)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !972, file: !179, line: 390, baseType: !588, size: 32, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !972, file: !179, line: 394, baseType: !1107, size: 64, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !972, file: !179, line: 396, baseType: !178, size: 32, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !972, file: !179, line: 399, baseType: !1125, size: 64, offset: 416)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !673)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !972, file: !179, line: 402, baseType: !1127, size: 64, offset: 480)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !673)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !972, file: !179, line: 406, baseType: !588, size: 32, offset: 544)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !972, file: !179, line: 409, baseType: !588, size: 32, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !964, file: !965, line: 470, baseType: !1003, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !964, file: !965, line: 473, baseType: !1132, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !965, line: 166, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !964, file: !965, line: 476, baseType: !1135, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !166, line: 187, size: 256, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1192}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1136, file: !166, line: 189, baseType: !588, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1136, file: !166, line: 192, baseType: !1032, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1136, file: !166, line: 197, baseType: !1141, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1142, line: 144, baseType: !1143)
!1142 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1142, line: 100, size: 896, elements: !1145)
!1145 = !{!1146, !1154, !1159, !1164, !1166, !1169, !1170, !1171, !1172, !1173, !1178, !1180, !1181, !1186, !1191}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1144, file: !1142, line: 102, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1142, line: 52, baseType: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1142, line: 47, baseType: !7)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1144, file: !1142, line: 105, baseType: !1155, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1142, line: 59, baseType: !1156)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!588, !1152, !1152}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1144, file: !1142, line: 108, baseType: !1160, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1142, line: 63, baseType: !1161)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !592}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1144, file: !1142, line: 111, baseType: !1165, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1144, file: !1142, line: 114, baseType: !1167, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1168, line: 46, baseType: !672)
!1168 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1144, file: !1142, line: 117, baseType: !1167, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1144, file: !1142, line: 120, baseType: !1167, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1144, file: !1142, line: 124, baseType: !7, size: 32, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1144, file: !1142, line: 128, baseType: !7, size: 32, offset: 480)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1144, file: !1142, line: 131, baseType: !1174, size: 64, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1142, line: 75, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!592, !1167, !1167}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1144, file: !1142, line: 132, baseType: !1179, size: 64, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1142, line: 78, baseType: !1161)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1144, file: !1142, line: 135, baseType: !592, size: 64, offset: 640)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1144, file: !1142, line: 136, baseType: !1182, size: 64, offset: 704)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1142, line: 82, baseType: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!592, !592, !1167, !1167}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1144, file: !1142, line: 137, baseType: !1187, size: 64, offset: 768)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1142, line: 83, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !592, !592}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1144, file: !1142, line: 141, baseType: !7, size: 32, offset: 832)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1136, file: !166, line: 200, baseType: !1017, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !964, file: !965, line: 479, baseType: !1141, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !964, file: !965, line: 484, baseType: !718, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !964, file: !965, line: 488, baseType: !718, size: 64, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !964, file: !965, line: 493, baseType: !718, size: 64, offset: 512)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !964, file: !965, line: 496, baseType: !718, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !964, file: !965, line: 501, baseType: !1199, size: 64, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !6, line: 2355, size: 576, elements: !1201)
!1201 = !{!1202, !1205, !1206, !1207, !1208, !1210, !1211, !1216, !1217, !1218, !1219, !1220, !1221}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1200, file: !6, line: 2356, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !6, line: 2356, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1200, file: !6, line: 2357, baseType: !593, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1200, file: !6, line: 2358, baseType: !588, size: 32, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1200, file: !6, line: 2359, baseType: !588, size: 32, offset: 160)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1200, file: !6, line: 2360, baseType: !1209, size: 128, offset: 192)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 128, elements: !698)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1200, file: !6, line: 2364, baseType: !588, size: 32, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1200, file: !6, line: 2367, baseType: !1212, size: 128, offset: 384)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !6, line: 2349, size: 128, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1212, file: !6, line: 2351, baseType: !604, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1212, file: !6, line: 2352, baseType: !689, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1200, file: !6, line: 2371, baseType: !189, size: 32, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1200, file: !6, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1200, file: !6, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1200, file: !6, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1200, file: !6, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1200, file: !6, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !964, file: !965, line: 504, baseType: !1223, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !965, line: 504, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !964, file: !965, line: 507, baseType: !1141, size: 64, offset: 768)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !964, file: !965, line: 510, baseType: !588, size: 32, offset: 832)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !964, file: !965, line: 513, baseType: !588, size: 32, offset: 864)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !964, file: !965, line: 516, baseType: !838, size: 32, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !964, file: !965, line: 519, baseType: !838, size: 32, offset: 928)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !964, file: !965, line: 522, baseType: !7, size: 32, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !964, file: !965, line: 523, baseType: !7, size: 32, offset: 992)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !964, file: !965, line: 528, baseType: !593, size: 64, offset: 1024)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !964, file: !965, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !964, file: !965, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !964, file: !965, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !964, file: !965, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !964, file: !965, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !964, file: !965, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !964, file: !965, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !964, file: !965, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !964, file: !965, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !964, file: !965, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !964, file: !965, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !964, file: !965, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !964, file: !965, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !964, file: !965, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !964, file: !965, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !964, file: !965, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !959, file: !194, line: 3254, baseType: !718, size: 64, offset: 1536)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !959, file: !194, line: 3257, baseType: !718, size: 64, offset: 1600)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !959, file: !194, line: 3258, baseType: !718, size: 64, offset: 1664)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !959, file: !194, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !959, file: !194, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !959, file: !194, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !959, file: !194, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !959, file: !194, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !959, file: !194, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !959, file: !194, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !959, file: !194, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !959, file: !194, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !959, file: !194, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !959, file: !194, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !959, file: !194, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !959, file: !194, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !959, file: !194, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !959, file: !194, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !959, file: !194, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !959, file: !194, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !959, file: !194, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !194, line: 3394, baseType: !1271, size: 1344)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !194, line: 2279, size: 1344, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1298, !1299, !1300, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1271, file: !194, line: 2280, baseType: !756, size: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1271, file: !194, line: 2281, baseType: !718, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1271, file: !194, line: 2282, baseType: !718, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1271, file: !194, line: 2283, baseType: !718, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1271, file: !194, line: 2284, baseType: !718, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1271, file: !194, line: 2285, baseType: !7, size: 32, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1271, file: !194, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1271, file: !194, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1271, file: !194, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1271, file: !194, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1271, file: !194, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1271, file: !194, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1271, file: !194, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1271, file: !194, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1271, file: !194, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1271, file: !194, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1271, file: !194, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1271, file: !194, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1271, file: !194, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1271, file: !194, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1271, file: !194, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1271, file: !194, line: 2305, baseType: !7, size: 32, offset: 512)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1271, file: !194, line: 2306, baseType: !1296, size: 32, offset: 544)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1297, line: 31, baseType: !588)
!1297 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1271, file: !194, line: 2307, baseType: !718, size: 64, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1271, file: !194, line: 2308, baseType: !718, size: 64, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1271, file: !194, line: 2314, baseType: !1301, size: 64, offset: 704)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !194, line: 2309, size: 64, elements: !1302)
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1301, file: !194, line: 2310, baseType: !588, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1301, file: !194, line: 2311, baseType: !593, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1301, file: !194, line: 2312, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !194, line: 2277, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1271, file: !194, line: 2315, baseType: !718, size: 64, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1271, file: !194, line: 2316, baseType: !718, size: 64, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1271, file: !194, line: 2317, baseType: !718, size: 64, offset: 896)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1271, file: !194, line: 2318, baseType: !718, size: 64, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1271, file: !194, line: 2319, baseType: !718, size: 64, offset: 1024)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1271, file: !194, line: 2320, baseType: !718, size: 64, offset: 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1271, file: !194, line: 2321, baseType: !718, size: 64, offset: 1152)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1271, file: !194, line: 2322, baseType: !718, size: 64, offset: 1216)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1271, file: !194, line: 2324, baseType: !1317, size: 64, offset: 1280)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !194, line: 2324, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !720, file: !194, line: 3395, baseType: !1320, size: 320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !194, line: 1469, size: 320, elements: !1321)
!1321 = !{!1322, !1323, !1324}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1320, file: !194, line: 1470, baseType: !756, size: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1320, file: !194, line: 1471, baseType: !718, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1320, file: !194, line: 1472, baseType: !718, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !720, file: !194, line: 3396, baseType: !1326, size: 320)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !194, line: 1482, size: 320, elements: !1327)
!1327 = !{!1328, !1329, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1326, file: !194, line: 1483, baseType: !756, size: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1326, file: !194, line: 1484, baseType: !588, size: 32, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1326, file: !194, line: 1485, baseType: !1331, size: 64, offset: 256)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 64, elements: !601)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !720, file: !194, line: 3397, baseType: !1333, size: 384)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !194, line: 1829, size: 384, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1333, file: !194, line: 1830, baseType: !756, size: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1333, file: !194, line: 1831, baseType: !838, size: 32, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1333, file: !194, line: 1832, baseType: !718, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1333, file: !194, line: 1835, baseType: !1331, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !720, file: !194, line: 3398, baseType: !1340, size: 704)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !194, line: 1898, size: 704, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1349}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1340, file: !194, line: 1899, baseType: !756, size: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1340, file: !194, line: 1902, baseType: !718, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1340, file: !194, line: 1905, baseType: !1059, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1340, file: !194, line: 1908, baseType: !7, size: 32, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1340, file: !194, line: 1911, baseType: !1347, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !194, line: 1876, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1340, file: !194, line: 1914, baseType: !1350, size: 256, offset: 448)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !194, line: 1883, size: 256, elements: !1351)
!1351 = !{!1352, !1354, !1355, !1360}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1350, file: !194, line: 1884, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1350, file: !194, line: 1885, baseType: !1353, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1350, file: !194, line: 1891, baseType: !1356, size: 64, offset: 128)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1350, file: !194, line: 1891, size: 64, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1356, file: !194, line: 1891, baseType: !1059, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1356, file: !194, line: 1891, baseType: !718, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1350, file: !194, line: 1892, baseType: !1361, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !720, file: !194, line: 3399, baseType: !1363, size: 704)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !194, line: 2008, size: 704, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1382, !1383, !1384, !1385, !1386}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1363, file: !194, line: 2009, baseType: !756, size: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1363, file: !194, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1363, file: !194, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1363, file: !194, line: 2014, baseType: !838, size: 32, offset: 224)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1363, file: !194, line: 2016, baseType: !718, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1363, file: !194, line: 2017, baseType: !1371, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !194, line: 183, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !194, line: 183, size: 128, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1373, file: !194, line: 183, baseType: !1376, size: 128)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !194, line: 182, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !194, line: 182, size: 128, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1377, file: !194, line: 182, baseType: !7, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1377, file: !194, line: 182, baseType: !7, size: 32, offset: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1377, file: !194, line: 182, baseType: !1331, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1363, file: !194, line: 2019, baseType: !718, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1363, file: !194, line: 2020, baseType: !718, size: 64, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1363, file: !194, line: 2021, baseType: !718, size: 64, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1363, file: !194, line: 2022, baseType: !718, size: 64, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1363, file: !194, line: 2023, baseType: !718, size: 64, offset: 640)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !720, file: !194, line: 3400, baseType: !1388, size: 832)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !194, line: 2430, size: 832, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1388, file: !194, line: 2431, baseType: !756, size: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1388, file: !194, line: 2433, baseType: !718, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1388, file: !194, line: 2434, baseType: !718, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1388, file: !194, line: 2435, baseType: !718, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1388, file: !194, line: 2436, baseType: !718, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1388, file: !194, line: 2437, baseType: !1371, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1388, file: !194, line: 2438, baseType: !718, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1388, file: !194, line: 2440, baseType: !718, size: 64, offset: 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1388, file: !194, line: 2441, baseType: !718, size: 64, offset: 640)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1388, file: !194, line: 2443, baseType: !1400, size: 128, offset: 704)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !194, line: 182, baseType: !1401)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !194, line: 182, size: 128, elements: !1402)
!1402 = !{!1403}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1401, file: !194, line: 182, baseType: !1376, size: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !720, file: !194, line: 3401, baseType: !1405, size: 320)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !194, line: 3327, size: 320, elements: !1406)
!1406 = !{!1407, !1408, !1415}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1405, file: !194, line: 3329, baseType: !756, size: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1405, file: !194, line: 3330, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !194, line: 3320, size: 192, elements: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1410, file: !194, line: 3322, baseType: !1409, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1410, file: !194, line: 3323, baseType: !1409, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1410, file: !194, line: 3324, baseType: !718, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1405, file: !194, line: 3331, baseType: !1409, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !720, file: !194, line: 3402, baseType: !1417, size: 256)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !194, line: 1540, size: 256, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1417, file: !194, line: 1541, baseType: !756, size: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1417, file: !194, line: 1542, baseType: !1421, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !194, line: 1538, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !194, line: 1538, size: 192, elements: !1424)
!1424 = !{!1425}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1423, file: !194, line: 1538, baseType: !1426, size: 192)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !194, line: 1537, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !194, line: 1537, size: 192, elements: !1428)
!1428 = !{!1429, !1430, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1427, file: !194, line: 1537, baseType: !7, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1427, file: !194, line: 1537, baseType: !7, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1427, file: !194, line: 1537, baseType: !1432, size: 128, offset: 64)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1433, size: 128, elements: !601)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !194, line: 1535, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !194, line: 1532, size: 128, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1434, file: !194, line: 1533, baseType: !718, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1434, file: !194, line: 1534, baseType: !718, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !720, file: !194, line: 3403, baseType: !1439, size: 512)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !194, line: 1938, size: 512, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1450, !1451, !1452}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1439, file: !194, line: 1939, baseType: !756, size: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1439, file: !194, line: 1940, baseType: !838, size: 32, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1439, file: !194, line: 1941, baseType: !193, size: 32, offset: 224)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1439, file: !194, line: 1946, baseType: !1445, size: 32, offset: 256)
!1445 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !194, line: 1942, size: 32, elements: !1446)
!1446 = !{!1447, !1448, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1445, file: !194, line: 1943, baseType: !212, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1445, file: !194, line: 1944, baseType: !219, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1445, file: !194, line: 1945, baseType: !226, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1439, file: !194, line: 1950, baseType: !1002, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1439, file: !194, line: 1951, baseType: !1002, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1439, file: !194, line: 1953, baseType: !1331, size: 64, offset: 448)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !720, file: !194, line: 3404, baseType: !1454, size: 1664)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !194, line: 3337, size: 1664, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1454, file: !194, line: 3338, baseType: !756, size: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1454, file: !194, line: 3341, baseType: !1458, size: 1472, offset: 192)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1459, line: 410, size: 1472, elements: !1460)
!1459 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1458, file: !1459, line: 412, baseType: !588, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1458, file: !1459, line: 413, baseType: !588, size: 32, offset: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1458, file: !1459, line: 414, baseType: !588, size: 32, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1458, file: !1459, line: 415, baseType: !588, size: 32, offset: 96)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1458, file: !1459, line: 416, baseType: !588, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1458, file: !1459, line: 417, baseType: !588, size: 32, offset: 160)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1458, file: !1459, line: 418, baseType: !587, size: 8, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1458, file: !1459, line: 419, baseType: !587, size: 8, offset: 200)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1458, file: !1459, line: 420, baseType: !1470, size: 8, offset: 208)
!1470 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1458, file: !1459, line: 421, baseType: !1470, size: 8, offset: 216)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1458, file: !1459, line: 422, baseType: !1470, size: 8, offset: 224)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1458, file: !1459, line: 423, baseType: !1470, size: 8, offset: 232)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1458, file: !1459, line: 424, baseType: !1470, size: 8, offset: 240)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1458, file: !1459, line: 425, baseType: !1470, size: 8, offset: 248)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1458, file: !1459, line: 426, baseType: !1470, size: 8, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1458, file: !1459, line: 427, baseType: !1470, size: 8, offset: 264)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1458, file: !1459, line: 428, baseType: !1470, size: 8, offset: 272)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1458, file: !1459, line: 429, baseType: !1470, size: 8, offset: 280)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1458, file: !1459, line: 430, baseType: !1470, size: 8, offset: 288)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1458, file: !1459, line: 431, baseType: !1470, size: 8, offset: 296)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1458, file: !1459, line: 432, baseType: !1470, size: 8, offset: 304)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1458, file: !1459, line: 433, baseType: !1470, size: 8, offset: 312)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1458, file: !1459, line: 434, baseType: !1470, size: 8, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1458, file: !1459, line: 435, baseType: !1470, size: 8, offset: 328)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1458, file: !1459, line: 436, baseType: !1470, size: 8, offset: 336)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1458, file: !1459, line: 437, baseType: !1470, size: 8, offset: 344)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1458, file: !1459, line: 438, baseType: !1470, size: 8, offset: 352)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1458, file: !1459, line: 439, baseType: !1470, size: 8, offset: 360)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1458, file: !1459, line: 440, baseType: !1470, size: 8, offset: 368)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1458, file: !1459, line: 441, baseType: !1470, size: 8, offset: 376)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1458, file: !1459, line: 442, baseType: !1470, size: 8, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1458, file: !1459, line: 443, baseType: !1470, size: 8, offset: 392)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1458, file: !1459, line: 444, baseType: !1470, size: 8, offset: 400)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1458, file: !1459, line: 445, baseType: !1470, size: 8, offset: 408)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1458, file: !1459, line: 446, baseType: !1470, size: 8, offset: 416)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1458, file: !1459, line: 447, baseType: !1470, size: 8, offset: 424)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1458, file: !1459, line: 448, baseType: !1470, size: 8, offset: 432)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1458, file: !1459, line: 449, baseType: !1470, size: 8, offset: 440)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1458, file: !1459, line: 450, baseType: !1470, size: 8, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1458, file: !1459, line: 451, baseType: !1470, size: 8, offset: 456)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1458, file: !1459, line: 452, baseType: !1470, size: 8, offset: 464)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1458, file: !1459, line: 453, baseType: !1470, size: 8, offset: 472)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1458, file: !1459, line: 454, baseType: !1470, size: 8, offset: 480)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1458, file: !1459, line: 455, baseType: !1470, size: 8, offset: 488)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1458, file: !1459, line: 456, baseType: !1470, size: 8, offset: 496)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1458, file: !1459, line: 457, baseType: !1470, size: 8, offset: 504)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1458, file: !1459, line: 458, baseType: !1470, size: 8, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1458, file: !1459, line: 459, baseType: !1470, size: 8, offset: 520)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1458, file: !1459, line: 460, baseType: !1470, size: 8, offset: 528)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1458, file: !1459, line: 461, baseType: !1470, size: 8, offset: 536)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1458, file: !1459, line: 462, baseType: !1470, size: 8, offset: 544)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1458, file: !1459, line: 463, baseType: !1470, size: 8, offset: 552)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1458, file: !1459, line: 464, baseType: !1470, size: 8, offset: 560)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1458, file: !1459, line: 465, baseType: !1470, size: 8, offset: 568)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1458, file: !1459, line: 466, baseType: !1470, size: 8, offset: 576)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1458, file: !1459, line: 467, baseType: !1470, size: 8, offset: 584)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1458, file: !1459, line: 468, baseType: !1470, size: 8, offset: 592)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1458, file: !1459, line: 469, baseType: !1470, size: 8, offset: 600)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1458, file: !1459, line: 470, baseType: !1470, size: 8, offset: 608)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1458, file: !1459, line: 471, baseType: !1470, size: 8, offset: 616)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1458, file: !1459, line: 472, baseType: !1470, size: 8, offset: 624)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1458, file: !1459, line: 473, baseType: !1470, size: 8, offset: 632)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1458, file: !1459, line: 474, baseType: !1470, size: 8, offset: 640)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1458, file: !1459, line: 475, baseType: !1470, size: 8, offset: 648)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1458, file: !1459, line: 476, baseType: !1470, size: 8, offset: 656)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1458, file: !1459, line: 477, baseType: !1470, size: 8, offset: 664)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1458, file: !1459, line: 478, baseType: !1470, size: 8, offset: 672)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1458, file: !1459, line: 479, baseType: !1470, size: 8, offset: 680)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1458, file: !1459, line: 480, baseType: !1470, size: 8, offset: 688)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1458, file: !1459, line: 481, baseType: !1470, size: 8, offset: 696)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1458, file: !1459, line: 482, baseType: !1470, size: 8, offset: 704)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1458, file: !1459, line: 483, baseType: !1470, size: 8, offset: 712)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1458, file: !1459, line: 484, baseType: !1470, size: 8, offset: 720)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1458, file: !1459, line: 485, baseType: !1470, size: 8, offset: 728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1458, file: !1459, line: 486, baseType: !1470, size: 8, offset: 736)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1458, file: !1459, line: 487, baseType: !1470, size: 8, offset: 744)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1458, file: !1459, line: 488, baseType: !1470, size: 8, offset: 752)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1458, file: !1459, line: 489, baseType: !1470, size: 8, offset: 760)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1458, file: !1459, line: 490, baseType: !1470, size: 8, offset: 768)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1458, file: !1459, line: 491, baseType: !1470, size: 8, offset: 776)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1458, file: !1459, line: 492, baseType: !1470, size: 8, offset: 784)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1458, file: !1459, line: 493, baseType: !1470, size: 8, offset: 792)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1458, file: !1459, line: 494, baseType: !1470, size: 8, offset: 800)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1458, file: !1459, line: 495, baseType: !1470, size: 8, offset: 808)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1458, file: !1459, line: 496, baseType: !1470, size: 8, offset: 816)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1458, file: !1459, line: 497, baseType: !1470, size: 8, offset: 824)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1458, file: !1459, line: 498, baseType: !1470, size: 8, offset: 832)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1458, file: !1459, line: 499, baseType: !1470, size: 8, offset: 840)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1458, file: !1459, line: 500, baseType: !1470, size: 8, offset: 848)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1458, file: !1459, line: 501, baseType: !1470, size: 8, offset: 856)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1458, file: !1459, line: 502, baseType: !1470, size: 8, offset: 864)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1458, file: !1459, line: 503, baseType: !1470, size: 8, offset: 872)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1458, file: !1459, line: 504, baseType: !1470, size: 8, offset: 880)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1458, file: !1459, line: 505, baseType: !1470, size: 8, offset: 888)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1458, file: !1459, line: 506, baseType: !1470, size: 8, offset: 896)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1458, file: !1459, line: 507, baseType: !1470, size: 8, offset: 904)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1458, file: !1459, line: 508, baseType: !1470, size: 8, offset: 912)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1458, file: !1459, line: 509, baseType: !1470, size: 8, offset: 920)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1458, file: !1459, line: 510, baseType: !1470, size: 8, offset: 928)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1458, file: !1459, line: 511, baseType: !1470, size: 8, offset: 936)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1458, file: !1459, line: 512, baseType: !1470, size: 8, offset: 944)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1458, file: !1459, line: 513, baseType: !1470, size: 8, offset: 952)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1458, file: !1459, line: 514, baseType: !1470, size: 8, offset: 960)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1458, file: !1459, line: 515, baseType: !1470, size: 8, offset: 968)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1458, file: !1459, line: 516, baseType: !1470, size: 8, offset: 976)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1458, file: !1459, line: 517, baseType: !1470, size: 8, offset: 984)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1458, file: !1459, line: 518, baseType: !1470, size: 8, offset: 992)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1458, file: !1459, line: 519, baseType: !1470, size: 8, offset: 1000)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1458, file: !1459, line: 520, baseType: !1470, size: 8, offset: 1008)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1458, file: !1459, line: 521, baseType: !1470, size: 8, offset: 1016)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1458, file: !1459, line: 522, baseType: !1470, size: 8, offset: 1024)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1458, file: !1459, line: 523, baseType: !1470, size: 8, offset: 1032)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1458, file: !1459, line: 524, baseType: !1470, size: 8, offset: 1040)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1458, file: !1459, line: 525, baseType: !1470, size: 8, offset: 1048)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1458, file: !1459, line: 526, baseType: !1470, size: 8, offset: 1056)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1458, file: !1459, line: 527, baseType: !1470, size: 8, offset: 1064)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1458, file: !1459, line: 528, baseType: !1470, size: 8, offset: 1072)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1458, file: !1459, line: 529, baseType: !1470, size: 8, offset: 1080)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1458, file: !1459, line: 530, baseType: !1470, size: 8, offset: 1088)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1458, file: !1459, line: 531, baseType: !1470, size: 8, offset: 1096)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1458, file: !1459, line: 532, baseType: !1470, size: 8, offset: 1104)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1458, file: !1459, line: 533, baseType: !1470, size: 8, offset: 1112)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1458, file: !1459, line: 534, baseType: !1470, size: 8, offset: 1120)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1458, file: !1459, line: 535, baseType: !1470, size: 8, offset: 1128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1458, file: !1459, line: 536, baseType: !1470, size: 8, offset: 1136)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1458, file: !1459, line: 537, baseType: !1470, size: 8, offset: 1144)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1458, file: !1459, line: 538, baseType: !1470, size: 8, offset: 1152)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1458, file: !1459, line: 539, baseType: !1470, size: 8, offset: 1160)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1458, file: !1459, line: 540, baseType: !1470, size: 8, offset: 1168)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1458, file: !1459, line: 541, baseType: !1470, size: 8, offset: 1176)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1458, file: !1459, line: 542, baseType: !1470, size: 8, offset: 1184)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1458, file: !1459, line: 543, baseType: !1470, size: 8, offset: 1192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1458, file: !1459, line: 544, baseType: !1470, size: 8, offset: 1200)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1458, file: !1459, line: 545, baseType: !1470, size: 8, offset: 1208)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1458, file: !1459, line: 546, baseType: !1470, size: 8, offset: 1216)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1458, file: !1459, line: 547, baseType: !1470, size: 8, offset: 1224)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1458, file: !1459, line: 548, baseType: !1470, size: 8, offset: 1232)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1458, file: !1459, line: 549, baseType: !1470, size: 8, offset: 1240)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1458, file: !1459, line: 550, baseType: !1470, size: 8, offset: 1248)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1458, file: !1459, line: 551, baseType: !1470, size: 8, offset: 1256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1458, file: !1459, line: 552, baseType: !1470, size: 8, offset: 1264)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1458, file: !1459, line: 553, baseType: !1470, size: 8, offset: 1272)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1458, file: !1459, line: 554, baseType: !1470, size: 8, offset: 1280)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1458, file: !1459, line: 555, baseType: !1470, size: 8, offset: 1288)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1458, file: !1459, line: 556, baseType: !1470, size: 8, offset: 1296)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1458, file: !1459, line: 557, baseType: !1470, size: 8, offset: 1304)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1458, file: !1459, line: 558, baseType: !1470, size: 8, offset: 1312)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1458, file: !1459, line: 559, baseType: !1470, size: 8, offset: 1320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1458, file: !1459, line: 560, baseType: !1470, size: 8, offset: 1328)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1458, file: !1459, line: 561, baseType: !1470, size: 8, offset: 1336)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1458, file: !1459, line: 562, baseType: !1470, size: 8, offset: 1344)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1458, file: !1459, line: 563, baseType: !1470, size: 8, offset: 1352)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1458, file: !1459, line: 564, baseType: !1470, size: 8, offset: 1360)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1458, file: !1459, line: 565, baseType: !1470, size: 8, offset: 1368)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1458, file: !1459, line: 566, baseType: !1470, size: 8, offset: 1376)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1458, file: !1459, line: 567, baseType: !1470, size: 8, offset: 1384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1458, file: !1459, line: 568, baseType: !1470, size: 8, offset: 1392)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1458, file: !1459, line: 569, baseType: !1470, size: 8, offset: 1400)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1458, file: !1459, line: 570, baseType: !1470, size: 8, offset: 1408)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1458, file: !1459, line: 571, baseType: !1470, size: 8, offset: 1416)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1458, file: !1459, line: 572, baseType: !1470, size: 8, offset: 1424)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1458, file: !1459, line: 573, baseType: !1470, size: 8, offset: 1432)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1458, file: !1459, line: 574, baseType: !1470, size: 8, offset: 1440)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !720, file: !194, line: 3405, baseType: !1626, size: 384)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !194, line: 3352, size: 384, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1626, file: !194, line: 3353, baseType: !756, size: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1626, file: !194, line: 3356, baseType: !1630, size: 192, offset: 192)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1459, line: 578, size: 192, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1630, file: !1459, line: 580, baseType: !588, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1630, file: !1459, line: 581, baseType: !588, size: 32, offset: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1630, file: !1459, line: 582, baseType: !588, size: 32, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1630, file: !1459, line: 583, baseType: !588, size: 32, offset: 96)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1630, file: !1459, line: 584, baseType: !587, size: 8, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1630, file: !1459, line: 585, baseType: !587, size: 8, offset: 136)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1630, file: !1459, line: 586, baseType: !587, size: 8, offset: 144)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1630, file: !1459, line: 587, baseType: !587, size: 8, offset: 152)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1630, file: !1459, line: 588, baseType: !587, size: 8, offset: 160)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1630, file: !1459, line: 589, baseType: !587, size: 8, offset: 168)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1630, file: !1459, line: 590, baseType: !587, size: 8, offset: 176)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !625, file: !421, line: 178, baseType: !976, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !625, file: !421, line: 179, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !421, line: 150, baseType: !1647)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !421, line: 142, size: 320, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1647, file: !421, line: 144, baseType: !718, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1647, file: !421, line: 145, baseType: !604, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1647, file: !421, line: 146, baseType: !604, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1647, file: !421, line: 147, baseType: !1296, size: 32, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1647, file: !421, line: 148, baseType: !7, size: 32, offset: 224)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1647, file: !421, line: 149, baseType: !587, size: 8, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !625, file: !421, line: 180, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !421, line: 162, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !421, line: 159, size: 128, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1658, file: !421, line: 160, baseType: !718, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1658, file: !421, line: 161, baseType: !689, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !625, file: !421, line: 181, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !421, line: 181, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !620, file: !421, line: 317, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 64, elements: !601)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !620, file: !421, line: 318, baseType: !1668, size: 320)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !421, line: 188, size: 320, elements: !1669)
!1669 = !{!1670, !1672, !1695}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1668, file: !421, line: 190, baseType: !1671, size: 192)
!1671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 192, elements: !789)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1668, file: !421, line: 193, baseType: !1673, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !421, line: 206, size: 320, elements: !1675)
!1675 = !{!1676, !1680, !1681, !1682, !1694}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1674, file: !421, line: 208, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !605, line: 62, baseType: !1679)
!1679 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !605, line: 61, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1674, file: !421, line: 211, baseType: !7, size: 32, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1674, file: !421, line: 214, baseType: !689, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1674, file: !421, line: 224, baseType: !1683, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !421, line: 202, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !421, line: 202, size: 128, elements: !1686)
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1685, file: !421, line: 202, baseType: !1688, size: 128)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !421, line: 200, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !421, line: 200, size: 128, elements: !1690)
!1690 = !{!1691, !1692, !1693}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1689, file: !421, line: 200, baseType: !7, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1689, file: !421, line: 200, baseType: !7, size: 32, offset: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1689, file: !421, line: 200, baseType: !638, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1674, file: !421, line: 234, baseType: !1683, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1668, file: !421, line: 197, baseType: !689, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !620, file: !421, line: 319, baseType: !778, size: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !620, file: !421, line: 320, baseType: !797, size: 192)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !1699, line: 42, baseType: !672)
!1699 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1700 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1701 = !{!1702, !1704, !1706, !0, !1708, !1710, !1715, !1717, !1719, !1721, !1723, !1725, !1727, !1729, !1734, !1736, !1738, !1740}
!1702 = !DIGlobalVariableExpression(var: !1703, expr: !DIExpression())
!1703 = distinct !DIGlobalVariable(name: "allocno_p", scope: !2, file: !3, line: 46, type: !587, isLocal: true, isDefinition: true)
!1704 = !DIGlobalVariableExpression(var: !1705, expr: !DIExpression())
!1705 = distinct !DIGlobalVariable(name: "cost_elements_num", scope: !2, file: !3, line: 49, type: !588, isLocal: true, isDefinition: true)
!1706 = !DIGlobalVariableExpression(var: !1707, expr: !DIExpression())
!1707 = distinct !DIGlobalVariable(name: "max_struct_costs_size", scope: !2, file: !3, line: 71, type: !588, isLocal: true, isDefinition: true)
!1708 = !DIGlobalVariableExpression(var: !1709, expr: !DIExpression())
!1709 = distinct !DIGlobalVariable(name: "temp_costs", scope: !2, file: !3, line: 78, type: !595, isLocal: true, isDefinition: true)
!1710 = !DIGlobalVariableExpression(var: !1711, expr: !DIExpression())
!1711 = distinct !DIGlobalVariable(name: "op_costs", scope: !2, file: !3, line: 81, type: !1712, isLocal: true, isDefinition: true)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 1920, elements: !1713)
!1713 = !{!1714}
!1714 = !DISubrange(count: 30)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "this_op_costs", scope: !2, file: !3, line: 82, type: !1712, isLocal: true, isDefinition: true)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "total_allocno_costs", scope: !2, file: !3, line: 88, type: !595, isLocal: true, isDefinition: true)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "cost_classes", scope: !2, file: !3, line: 93, type: !603, isLocal: true, isDefinition: true)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "costs", scope: !2, file: !3, line: 85, type: !595, isLocal: true, isDefinition: true)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(name: "pref_buffer", scope: !2, file: !3, line: 121, type: !603, isLocal: true, isDefinition: true)
!1725 = !DIGlobalVariableExpression(var: !1726, expr: !DIExpression())
!1726 = distinct !DIGlobalVariable(name: "regno_cover_class", scope: !2, file: !3, line: 124, type: !603, isLocal: true, isDefinition: true)
!1727 = !DIGlobalVariableExpression(var: !1728, expr: !DIExpression())
!1728 = distinct !DIGlobalVariable(name: "pref", scope: !2, file: !3, line: 118, type: !603, isLocal: true, isDefinition: true)
!1729 = !DIGlobalVariableExpression(var: !1730, expr: !DIExpression())
!1730 = distinct !DIGlobalVariable(name: "cost_class_nums", scope: !2, file: !3, line: 100, type: !1731, isLocal: true, isDefinition: true)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 864, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 27)
!1734 = !DIGlobalVariableExpression(var: !1735, expr: !DIExpression())
!1735 = distinct !DIGlobalVariable(name: "cost_classes_num", scope: !2, file: !3, line: 96, type: !588, isLocal: true, isDefinition: true)
!1736 = !DIGlobalVariableExpression(var: !1737, expr: !DIExpression())
!1737 = distinct !DIGlobalVariable(name: "struct_costs_size", scope: !2, file: !3, line: 103, type: !588, isLocal: true, isDefinition: true)
!1738 = !DIGlobalVariableExpression(var: !1739, expr: !DIExpression())
!1739 = distinct !DIGlobalVariable(name: "frequency", scope: !2, file: !3, line: 127, type: !588, isLocal: true, isDefinition: true)
!1740 = !DIGlobalVariableExpression(var: !1741, expr: !DIExpression())
!1741 = distinct !DIGlobalVariable(name: "pseudo_classes_defined_p", scope: !2, file: !3, line: 43, type: !587, isLocal: true, isDefinition: true)
!1742 = !DIGlobalVariableExpression(var: !1703, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1743 = !DIGlobalVariableExpression(var: !1741, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1744 = !{i32 2, !"Dwarf Version", i32 4}
!1745 = !{i32 2, !"Debug Info Version", i32 3}
!1746 = !{i32 1, !"wchar_size", i32 4}
!1747 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1748 = distinct !DISubprogram(name: "vprintf", scope: !1749, file: !1749, line: 39, type: !1750, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1760)
!1749 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!588, !1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !593)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1754, file: !3, baseType: !7, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1754, file: !3, baseType: !7, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1754, file: !3, baseType: !592, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1754, file: !3, baseType: !592, size: 64, offset: 128)
!1760 = !{!1761, !1762}
!1761 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1748, file: !1749, line: 39, type: !1752)
!1762 = !DILocalVariable(name: "__arg", arg: 2, scope: !1748, file: !1749, line: 39, type: !1753)
!1763 = !DILocation(line: 0, scope: !1748)
!1764 = !DILocation(line: 41, column: 20, scope: !1748)
!1765 = !DILocation(line: 41, column: 10, scope: !1748)
!1766 = !DILocation(line: 41, column: 3, scope: !1748)
!1767 = distinct !DISubprogram(name: "getchar", scope: !1749, file: !1749, line: 47, type: !1768, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1770)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!588}
!1770 = !{}
!1771 = !DILocation(line: 49, column: 16, scope: !1767)
!1772 = !DILocation(line: 49, column: 10, scope: !1767)
!1773 = !DILocation(line: 49, column: 3, scope: !1767)
!1774 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1749, file: !1749, line: 56, type: !1775, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!588, !1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1779, line: 7, baseType: !1780)
!1779 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1781, line: 49, size: 1728, elements: !1782)
!1781 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1798, !1800, !1801, !1802, !1805, !1806, !1807, !1808, !1811, !1813, !1816, !1819, !1820, !1821, !1822, !1823}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1780, file: !1781, line: 51, baseType: !588, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1780, file: !1781, line: 54, baseType: !590, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1780, file: !1781, line: 55, baseType: !590, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1780, file: !1781, line: 56, baseType: !590, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1780, file: !1781, line: 57, baseType: !590, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1780, file: !1781, line: 58, baseType: !590, size: 64, offset: 320)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1780, file: !1781, line: 59, baseType: !590, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1780, file: !1781, line: 60, baseType: !590, size: 64, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1780, file: !1781, line: 61, baseType: !590, size: 64, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1780, file: !1781, line: 64, baseType: !590, size: 64, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1780, file: !1781, line: 65, baseType: !590, size: 64, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1780, file: !1781, line: 66, baseType: !590, size: 64, offset: 704)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1780, file: !1781, line: 68, baseType: !1796, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1781, line: 36, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1780, file: !1781, line: 70, baseType: !1799, size: 64, offset: 832)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1780, file: !1781, line: 72, baseType: !588, size: 32, offset: 896)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1780, file: !1781, line: 73, baseType: !588, size: 32, offset: 928)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1780, file: !1781, line: 74, baseType: !1803, size: 64, offset: 960)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1804, line: 152, baseType: !689)
!1804 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1780, file: !1781, line: 77, baseType: !1700, size: 16, offset: 1024)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1780, file: !1781, line: 78, baseType: !1470, size: 8, offset: 1040)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1780, file: !1781, line: 79, baseType: !813, size: 8, offset: 1048)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1780, file: !1781, line: 81, baseType: !1809, size: 64, offset: 1088)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1781, line: 43, baseType: null)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1780, file: !1781, line: 89, baseType: !1812, size: 64, offset: 1152)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1804, line: 153, baseType: !689)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1780, file: !1781, line: 91, baseType: !1814, size: 64, offset: 1216)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1781, line: 37, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1780, file: !1781, line: 92, baseType: !1817, size: 64, offset: 1280)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1781, line: 38, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1780, file: !1781, line: 93, baseType: !1799, size: 64, offset: 1344)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1780, file: !1781, line: 94, baseType: !592, size: 64, offset: 1408)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1780, file: !1781, line: 95, baseType: !1167, size: 64, offset: 1472)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1780, file: !1781, line: 96, baseType: !588, size: 32, offset: 1536)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1780, file: !1781, line: 98, baseType: !1824, size: 160, offset: 1568)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 160, elements: !1825)
!1825 = !{!1826}
!1826 = !DISubrange(count: 20)
!1827 = !{!1828}
!1828 = !DILocalVariable(name: "__fp", arg: 1, scope: !1774, file: !1749, line: 56, type: !1777)
!1829 = !DILocation(line: 0, scope: !1774)
!1830 = !DILocation(line: 58, column: 10, scope: !1774)
!1831 = !DILocation(line: 58, column: 3, scope: !1774)
!1832 = distinct !DISubprogram(name: "getc_unlocked", scope: !1749, file: !1749, line: 66, type: !1775, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1833)
!1833 = !{!1834}
!1834 = !DILocalVariable(name: "__fp", arg: 1, scope: !1832, file: !1749, line: 66, type: !1777)
!1835 = !DILocation(line: 0, scope: !1832)
!1836 = !DILocation(line: 68, column: 10, scope: !1832)
!1837 = !DILocation(line: 68, column: 3, scope: !1832)
!1838 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1749, file: !1749, line: 73, type: !1768, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1770)
!1839 = !DILocation(line: 75, column: 10, scope: !1838)
!1840 = !DILocation(line: 75, column: 3, scope: !1838)
!1841 = distinct !DISubprogram(name: "putchar", scope: !1749, file: !1749, line: 82, type: !1842, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1844)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!588, !588}
!1844 = !{!1845}
!1845 = !DILocalVariable(name: "__c", arg: 1, scope: !1841, file: !1749, line: 82, type: !588)
!1846 = !DILocation(line: 0, scope: !1841)
!1847 = !DILocation(line: 84, column: 21, scope: !1841)
!1848 = !DILocation(line: 84, column: 10, scope: !1841)
!1849 = !DILocation(line: 84, column: 3, scope: !1841)
!1850 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1749, file: !1749, line: 91, type: !1851, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!588, !588, !1777}
!1853 = !{!1854, !1855}
!1854 = !DILocalVariable(name: "__c", arg: 1, scope: !1850, file: !1749, line: 91, type: !588)
!1855 = !DILocalVariable(name: "__stream", arg: 2, scope: !1850, file: !1749, line: 91, type: !1777)
!1856 = !DILocation(line: 0, scope: !1850)
!1857 = !DILocation(line: 93, column: 10, scope: !1850)
!1858 = !DILocation(line: 93, column: 3, scope: !1850)
!1859 = distinct !DISubprogram(name: "putc_unlocked", scope: !1749, file: !1749, line: 101, type: !1851, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1860)
!1860 = !{!1861, !1862}
!1861 = !DILocalVariable(name: "__c", arg: 1, scope: !1859, file: !1749, line: 101, type: !588)
!1862 = !DILocalVariable(name: "__stream", arg: 2, scope: !1859, file: !1749, line: 101, type: !1777)
!1863 = !DILocation(line: 0, scope: !1859)
!1864 = !DILocation(line: 103, column: 10, scope: !1859)
!1865 = !DILocation(line: 103, column: 3, scope: !1859)
!1866 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1749, file: !1749, line: 108, type: !1842, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1867)
!1867 = !{!1868}
!1868 = !DILocalVariable(name: "__c", arg: 1, scope: !1866, file: !1749, line: 108, type: !588)
!1869 = !DILocation(line: 0, scope: !1866)
!1870 = !DILocation(line: 110, column: 10, scope: !1866)
!1871 = !DILocation(line: 110, column: 3, scope: !1866)
!1872 = distinct !DISubprogram(name: "getline", scope: !1749, file: !1749, line: 118, type: !1873, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1877)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!1875, !589, !1876, !1777}
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1804, line: 193, baseType: !689)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1877 = !{!1878, !1879, !1880}
!1878 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1872, file: !1749, line: 118, type: !589)
!1879 = !DILocalVariable(name: "__n", arg: 2, scope: !1872, file: !1749, line: 118, type: !1876)
!1880 = !DILocalVariable(name: "__stream", arg: 3, scope: !1872, file: !1749, line: 118, type: !1777)
!1881 = !DILocation(line: 0, scope: !1872)
!1882 = !DILocation(line: 120, column: 10, scope: !1872)
!1883 = !DILocation(line: 120, column: 3, scope: !1872)
!1884 = distinct !DISubprogram(name: "feof_unlocked", scope: !1749, file: !1749, line: 128, type: !1775, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1885)
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "__stream", arg: 1, scope: !1884, file: !1749, line: 128, type: !1777)
!1887 = !DILocation(line: 0, scope: !1884)
!1888 = !DILocation(line: 130, column: 10, scope: !1884)
!1889 = !DILocation(line: 130, column: 3, scope: !1884)
!1890 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1749, file: !1749, line: 135, type: !1775, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1891)
!1891 = !{!1892}
!1892 = !DILocalVariable(name: "__stream", arg: 1, scope: !1890, file: !1749, line: 135, type: !1777)
!1893 = !DILocation(line: 0, scope: !1890)
!1894 = !DILocation(line: 137, column: 10, scope: !1890)
!1895 = !DILocation(line: 137, column: 3, scope: !1890)
!1896 = distinct !DISubprogram(name: "tolower", scope: !1897, file: !1897, line: 207, type: !1842, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1898)
!1897 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1898 = !{!1899}
!1899 = !DILocalVariable(name: "__c", arg: 1, scope: !1896, file: !1897, line: 207, type: !588)
!1900 = !DILocation(line: 0, scope: !1896)
!1901 = !DILocation(line: 209, column: 22, scope: !1896)
!1902 = !DILocation(line: 209, column: 39, scope: !1896)
!1903 = !DILocation(line: 209, column: 38, scope: !1896)
!1904 = !DILocation(line: 209, column: 37, scope: !1896)
!1905 = !DILocation(line: 209, column: 10, scope: !1896)
!1906 = !DILocation(line: 209, column: 3, scope: !1896)
!1907 = distinct !DISubprogram(name: "toupper", scope: !1897, file: !1897, line: 213, type: !1842, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1908)
!1908 = !{!1909}
!1909 = !DILocalVariable(name: "__c", arg: 1, scope: !1907, file: !1897, line: 213, type: !588)
!1910 = !DILocation(line: 0, scope: !1907)
!1911 = !DILocation(line: 215, column: 22, scope: !1907)
!1912 = !DILocation(line: 215, column: 39, scope: !1907)
!1913 = !DILocation(line: 215, column: 38, scope: !1907)
!1914 = !DILocation(line: 215, column: 37, scope: !1907)
!1915 = !DILocation(line: 215, column: 10, scope: !1907)
!1916 = !DILocation(line: 215, column: 3, scope: !1907)
!1917 = distinct !DISubprogram(name: "atoi", scope: !1918, file: !1918, line: 361, type: !1919, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1921)
!1918 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!588, !593}
!1921 = !{!1922}
!1922 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1917, file: !1918, line: 361, type: !593)
!1923 = !DILocation(line: 0, scope: !1917)
!1924 = !DILocation(line: 363, column: 16, scope: !1917)
!1925 = !DILocation(line: 363, column: 10, scope: !1917)
!1926 = !DILocation(line: 363, column: 3, scope: !1917)
!1927 = distinct !DISubprogram(name: "atol", scope: !1918, file: !1918, line: 366, type: !1928, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!689, !593}
!1930 = !{!1931}
!1931 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1927, file: !1918, line: 366, type: !593)
!1932 = !DILocation(line: 0, scope: !1927)
!1933 = !DILocation(line: 368, column: 10, scope: !1927)
!1934 = !DILocation(line: 368, column: 3, scope: !1927)
!1935 = distinct !DISubprogram(name: "atoll", scope: !1918, file: !1918, line: 373, type: !1936, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1939)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1938, !593}
!1938 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1939 = !{!1940}
!1940 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1935, file: !1918, line: 373, type: !593)
!1941 = !DILocation(line: 0, scope: !1935)
!1942 = !DILocation(line: 375, column: 10, scope: !1935)
!1943 = !DILocation(line: 375, column: 3, scope: !1935)
!1944 = distinct !DISubprogram(name: "bsearch", scope: !1945, file: !1945, line: 20, type: !1946, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1949)
!1945 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!592, !1152, !1152, !1167, !1167, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1918, line: 808, baseType: !1156)
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959}
!1950 = !DILocalVariable(name: "__key", arg: 1, scope: !1944, file: !1945, line: 20, type: !1152)
!1951 = !DILocalVariable(name: "__base", arg: 2, scope: !1944, file: !1945, line: 20, type: !1152)
!1952 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1944, file: !1945, line: 20, type: !1167)
!1953 = !DILocalVariable(name: "__size", arg: 4, scope: !1944, file: !1945, line: 20, type: !1167)
!1954 = !DILocalVariable(name: "__compar", arg: 5, scope: !1944, file: !1945, line: 21, type: !1948)
!1955 = !DILocalVariable(name: "__l", scope: !1944, file: !1945, line: 23, type: !1167)
!1956 = !DILocalVariable(name: "__u", scope: !1944, file: !1945, line: 23, type: !1167)
!1957 = !DILocalVariable(name: "__idx", scope: !1944, file: !1945, line: 23, type: !1167)
!1958 = !DILocalVariable(name: "__p", scope: !1944, file: !1945, line: 24, type: !1152)
!1959 = !DILocalVariable(name: "__comparison", scope: !1944, file: !1945, line: 25, type: !588)
!1960 = !DILocation(line: 0, scope: !1944)
!1961 = !DILocation(line: 29, column: 3, scope: !1944)
!1962 = !DILocation(line: 27, column: 7, scope: !1944)
!1963 = !DILocation(line: 29, column: 14, scope: !1944)
!1964 = !DILocation(line: 31, column: 20, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1944, file: !1945, line: 30, column: 5)
!1966 = !DILocation(line: 31, column: 27, scope: !1965)
!1967 = !DILocation(line: 32, column: 56, scope: !1965)
!1968 = !DILocation(line: 32, column: 47, scope: !1965)
!1969 = !DILocation(line: 33, column: 22, scope: !1965)
!1970 = !DILocation(line: 34, column: 24, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1965, file: !1945, line: 34, column: 11)
!1972 = !DILocation(line: 34, column: 11, scope: !1965)
!1973 = !DILocation(line: 36, column: 29, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !1945, line: 36, column: 16)
!1975 = !DILocation(line: 36, column: 16, scope: !1971)
!1976 = !DILocation(line: 37, column: 14, scope: !1974)
!1977 = distinct !{!1977, !1961, !1978}
!1978 = !DILocation(line: 40, column: 5, scope: !1944)
!1979 = !DILocation(line: 43, column: 1, scope: !1944)
!1980 = distinct !DISubprogram(name: "atof", scope: !1981, file: !1981, line: 25, type: !1982, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!1981 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!1984, !593}
!1984 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1985 = !{!1986}
!1986 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1980, file: !1981, line: 25, type: !593)
!1987 = !DILocation(line: 0, scope: !1980)
!1988 = !DILocation(line: 27, column: 10, scope: !1980)
!1989 = !DILocation(line: 27, column: 3, scope: !1980)
!1990 = distinct !DISubprogram(name: "strtoimax", scope: !1991, file: !1991, line: 324, type: !1992, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!1991 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1994, !1752, !1997, !588}
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1995, line: 101, baseType: !1996)
!1995 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1804, line: 72, baseType: !689)
!1997 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !589)
!1998 = !{!1999, !2000, !2001}
!1999 = !DILocalVariable(name: "nptr", arg: 1, scope: !1990, file: !1991, line: 324, type: !1752)
!2000 = !DILocalVariable(name: "endptr", arg: 2, scope: !1990, file: !1991, line: 324, type: !1997)
!2001 = !DILocalVariable(name: "base", arg: 3, scope: !1990, file: !1991, line: 324, type: !588)
!2002 = !DILocation(line: 0, scope: !1990)
!2003 = !DILocation(line: 327, column: 10, scope: !1990)
!2004 = !DILocation(line: 327, column: 3, scope: !1990)
!2005 = distinct !DISubprogram(name: "strtoumax", scope: !1991, file: !1991, line: 336, type: !2006, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2010)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!2008, !1752, !1997, !588}
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1995, line: 102, baseType: !2009)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1804, line: 73, baseType: !672)
!2010 = !{!2011, !2012, !2013}
!2011 = !DILocalVariable(name: "nptr", arg: 1, scope: !2005, file: !1991, line: 336, type: !1752)
!2012 = !DILocalVariable(name: "endptr", arg: 2, scope: !2005, file: !1991, line: 336, type: !1997)
!2013 = !DILocalVariable(name: "base", arg: 3, scope: !2005, file: !1991, line: 336, type: !588)
!2014 = !DILocation(line: 0, scope: !2005)
!2015 = !DILocation(line: 339, column: 10, scope: !2005)
!2016 = !DILocation(line: 339, column: 3, scope: !2005)
!2017 = distinct !DISubprogram(name: "wcstoimax", scope: !1991, file: !1991, line: 348, type: !2018, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2027)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!1994, !2020, !2024, !588}
!2020 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1991, line: 34, baseType: !588)
!2024 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2027 = !{!2028, !2029, !2030}
!2028 = !DILocalVariable(name: "nptr", arg: 1, scope: !2017, file: !1991, line: 348, type: !2020)
!2029 = !DILocalVariable(name: "endptr", arg: 2, scope: !2017, file: !1991, line: 348, type: !2024)
!2030 = !DILocalVariable(name: "base", arg: 3, scope: !2017, file: !1991, line: 348, type: !588)
!2031 = !DILocation(line: 0, scope: !2017)
!2032 = !DILocation(line: 351, column: 10, scope: !2017)
!2033 = !DILocation(line: 351, column: 3, scope: !2017)
!2034 = distinct !DISubprogram(name: "wcstoumax", scope: !1991, file: !1991, line: 362, type: !2035, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!2008, !2020, !2024, !588}
!2037 = !{!2038, !2039, !2040}
!2038 = !DILocalVariable(name: "nptr", arg: 1, scope: !2034, file: !1991, line: 362, type: !2020)
!2039 = !DILocalVariable(name: "endptr", arg: 2, scope: !2034, file: !1991, line: 362, type: !2024)
!2040 = !DILocalVariable(name: "base", arg: 3, scope: !2034, file: !1991, line: 362, type: !588)
!2041 = !DILocation(line: 0, scope: !2034)
!2042 = !DILocation(line: 365, column: 10, scope: !2034)
!2043 = !DILocation(line: 365, column: 3, scope: !2034)
!2044 = distinct !DISubprogram(name: "stat", scope: !2045, file: !2045, line: 453, type: !2046, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2045 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!588, !593, !2048}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2050, line: 46, size: 1152, elements: !2051)
!2050 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2051 = !{!2052, !2054, !2056, !2058, !2060, !2062, !2064, !2065, !2066, !2067, !2069, !2071, !2079, !2080, !2081}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2049, file: !2050, line: 48, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1804, line: 145, baseType: !672)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2049, file: !2050, line: 53, baseType: !2055, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1804, line: 148, baseType: !672)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2049, file: !2050, line: 61, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1804, line: 151, baseType: !672)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2049, file: !2050, line: 62, baseType: !2059, size: 32, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1804, line: 150, baseType: !7)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2049, file: !2050, line: 64, baseType: !2061, size: 32, offset: 224)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1804, line: 146, baseType: !7)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2049, file: !2050, line: 65, baseType: !2063, size: 32, offset: 256)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1804, line: 147, baseType: !7)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2049, file: !2050, line: 67, baseType: !588, size: 32, offset: 288)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2049, file: !2050, line: 69, baseType: !2053, size: 64, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2049, file: !2050, line: 74, baseType: !1803, size: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2049, file: !2050, line: 78, baseType: !2068, size: 64, offset: 448)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1804, line: 174, baseType: !689)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2049, file: !2050, line: 80, baseType: !2070, size: 64, offset: 512)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1804, line: 179, baseType: !689)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2049, file: !2050, line: 91, baseType: !2072, size: 128, offset: 576)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2073, line: 10, size: 128, elements: !2074)
!2073 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2074 = !{!2075, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2072, file: !2073, line: 12, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1804, line: 160, baseType: !689)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2072, file: !2073, line: 16, baseType: !2078, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1804, line: 196, baseType: !689)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2049, file: !2050, line: 92, baseType: !2072, size: 128, offset: 704)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2049, file: !2050, line: 93, baseType: !2072, size: 128, offset: 832)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2049, file: !2050, line: 106, baseType: !2082, size: 192, offset: 960)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2078, size: 192, elements: !789)
!2083 = !{!2084, !2085}
!2084 = !DILocalVariable(name: "__path", arg: 1, scope: !2044, file: !2045, line: 453, type: !593)
!2085 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2044, file: !2045, line: 453, type: !2048)
!2086 = !DILocation(line: 0, scope: !2044)
!2087 = !DILocation(line: 455, column: 10, scope: !2044)
!2088 = !DILocation(line: 455, column: 3, scope: !2044)
!2089 = distinct !DISubprogram(name: "lstat", scope: !2045, file: !2045, line: 460, type: !2046, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2090 = !{!2091, !2092}
!2091 = !DILocalVariable(name: "__path", arg: 1, scope: !2089, file: !2045, line: 460, type: !593)
!2092 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2089, file: !2045, line: 460, type: !2048)
!2093 = !DILocation(line: 0, scope: !2089)
!2094 = !DILocation(line: 462, column: 10, scope: !2089)
!2095 = !DILocation(line: 462, column: 3, scope: !2089)
!2096 = distinct !DISubprogram(name: "fstat", scope: !2045, file: !2045, line: 467, type: !2097, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!588, !588, !2048}
!2099 = !{!2100, !2101}
!2100 = !DILocalVariable(name: "__fd", arg: 1, scope: !2096, file: !2045, line: 467, type: !588)
!2101 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2096, file: !2045, line: 467, type: !2048)
!2102 = !DILocation(line: 0, scope: !2096)
!2103 = !DILocation(line: 469, column: 10, scope: !2096)
!2104 = !DILocation(line: 469, column: 3, scope: !2096)
!2105 = distinct !DISubprogram(name: "fstatat", scope: !2045, file: !2045, line: 474, type: !2106, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!588, !588, !593, !2048, !588}
!2108 = !{!2109, !2110, !2111, !2112}
!2109 = !DILocalVariable(name: "__fd", arg: 1, scope: !2105, file: !2045, line: 474, type: !588)
!2110 = !DILocalVariable(name: "__filename", arg: 2, scope: !2105, file: !2045, line: 474, type: !593)
!2111 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2105, file: !2045, line: 474, type: !2048)
!2112 = !DILocalVariable(name: "__flag", arg: 4, scope: !2105, file: !2045, line: 474, type: !588)
!2113 = !DILocation(line: 0, scope: !2105)
!2114 = !DILocation(line: 477, column: 10, scope: !2105)
!2115 = !DILocation(line: 477, column: 3, scope: !2105)
!2116 = distinct !DISubprogram(name: "mknod", scope: !2045, file: !2045, line: 483, type: !2117, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!588, !593, !2059, !2053}
!2119 = !{!2120, !2121, !2122}
!2120 = !DILocalVariable(name: "__path", arg: 1, scope: !2116, file: !2045, line: 483, type: !593)
!2121 = !DILocalVariable(name: "__mode", arg: 2, scope: !2116, file: !2045, line: 483, type: !2059)
!2122 = !DILocalVariable(name: "__dev", arg: 3, scope: !2116, file: !2045, line: 483, type: !2053)
!2123 = !DILocation(line: 0, scope: !2116)
!2124 = !DILocation(line: 485, column: 10, scope: !2116)
!2125 = !DILocation(line: 485, column: 3, scope: !2116)
!2126 = distinct !DISubprogram(name: "mknodat", scope: !2045, file: !2045, line: 491, type: !2127, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!588, !588, !593, !2059, !2053}
!2129 = !{!2130, !2131, !2132, !2133}
!2130 = !DILocalVariable(name: "__fd", arg: 1, scope: !2126, file: !2045, line: 491, type: !588)
!2131 = !DILocalVariable(name: "__path", arg: 2, scope: !2126, file: !2045, line: 491, type: !593)
!2132 = !DILocalVariable(name: "__mode", arg: 3, scope: !2126, file: !2045, line: 491, type: !2059)
!2133 = !DILocalVariable(name: "__dev", arg: 4, scope: !2126, file: !2045, line: 491, type: !2053)
!2134 = !DILocation(line: 0, scope: !2126)
!2135 = !DILocation(line: 494, column: 10, scope: !2126)
!2136 = !DILocation(line: 494, column: 3, scope: !2126)
!2137 = distinct !DISubprogram(name: "stat64", scope: !2045, file: !2045, line: 502, type: !2138, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2160)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!588, !593, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2050, line: 119, size: 1152, elements: !2142)
!2142 = !{!2143, !2144, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2156, !2157, !2158, !2159}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2141, file: !2050, line: 121, baseType: !2053, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2141, file: !2050, line: 123, baseType: !2145, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1804, line: 149, baseType: !672)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2141, file: !2050, line: 124, baseType: !2057, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2141, file: !2050, line: 125, baseType: !2059, size: 32, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2141, file: !2050, line: 132, baseType: !2061, size: 32, offset: 224)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2141, file: !2050, line: 133, baseType: !2063, size: 32, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2141, file: !2050, line: 135, baseType: !588, size: 32, offset: 288)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2141, file: !2050, line: 136, baseType: !2053, size: 64, offset: 320)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2141, file: !2050, line: 137, baseType: !1803, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2141, file: !2050, line: 143, baseType: !2068, size: 64, offset: 448)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2141, file: !2050, line: 144, baseType: !2155, size: 64, offset: 512)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1804, line: 180, baseType: !689)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2141, file: !2050, line: 152, baseType: !2072, size: 128, offset: 576)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2141, file: !2050, line: 153, baseType: !2072, size: 128, offset: 704)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2141, file: !2050, line: 154, baseType: !2072, size: 128, offset: 832)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2141, file: !2050, line: 164, baseType: !2082, size: 192, offset: 960)
!2160 = !{!2161, !2162}
!2161 = !DILocalVariable(name: "__path", arg: 1, scope: !2137, file: !2045, line: 502, type: !593)
!2162 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2137, file: !2045, line: 502, type: !2140)
!2163 = !DILocation(line: 0, scope: !2137)
!2164 = !DILocation(line: 504, column: 10, scope: !2137)
!2165 = !DILocation(line: 504, column: 3, scope: !2137)
!2166 = distinct !DISubprogram(name: "lstat64", scope: !2045, file: !2045, line: 509, type: !2138, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2167)
!2167 = !{!2168, !2169}
!2168 = !DILocalVariable(name: "__path", arg: 1, scope: !2166, file: !2045, line: 509, type: !593)
!2169 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2166, file: !2045, line: 509, type: !2140)
!2170 = !DILocation(line: 0, scope: !2166)
!2171 = !DILocation(line: 511, column: 10, scope: !2166)
!2172 = !DILocation(line: 511, column: 3, scope: !2166)
!2173 = distinct !DISubprogram(name: "fstat64", scope: !2045, file: !2045, line: 516, type: !2174, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2176)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!588, !588, !2140}
!2176 = !{!2177, !2178}
!2177 = !DILocalVariable(name: "__fd", arg: 1, scope: !2173, file: !2045, line: 516, type: !588)
!2178 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2173, file: !2045, line: 516, type: !2140)
!2179 = !DILocation(line: 0, scope: !2173)
!2180 = !DILocation(line: 518, column: 10, scope: !2173)
!2181 = !DILocation(line: 518, column: 3, scope: !2173)
!2182 = distinct !DISubprogram(name: "fstatat64", scope: !2045, file: !2045, line: 523, type: !2183, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!588, !588, !593, !2140, !588}
!2185 = !{!2186, !2187, !2188, !2189}
!2186 = !DILocalVariable(name: "__fd", arg: 1, scope: !2182, file: !2045, line: 523, type: !588)
!2187 = !DILocalVariable(name: "__filename", arg: 2, scope: !2182, file: !2045, line: 523, type: !593)
!2188 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2182, file: !2045, line: 523, type: !2140)
!2189 = !DILocalVariable(name: "__flag", arg: 4, scope: !2182, file: !2045, line: 523, type: !588)
!2190 = !DILocation(line: 0, scope: !2182)
!2191 = !DILocation(line: 526, column: 10, scope: !2182)
!2192 = !DILocation(line: 526, column: 3, scope: !2182)
!2193 = distinct !DISubprogram(name: "ira_init_costs_once", scope: !3, file: !3, line: 1588, type: !2194, scopeLine: 1589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null}
!2196 = !{!2197}
!2197 = !DILocalVariable(name: "i", scope: !2193, file: !3, line: 1590, type: !588)
!2198 = !DILocation(line: 1592, column: 13, scope: !2193)
!2199 = !DILocation(line: 0, scope: !2193)
!2200 = !DILocation(line: 1593, column: 8, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 1593, column: 3)
!2202 = !DILocation(line: 0, scope: !2201)
!2203 = !DILocation(line: 1593, column: 17, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 1593, column: 3)
!2205 = !DILocation(line: 1593, column: 3, scope: !2201)
!2206 = !DILocation(line: 1595, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 1594, column: 5)
!2208 = !DILocation(line: 1595, column: 19, scope: !2207)
!2209 = !DILocation(line: 1596, column: 7, scope: !2207)
!2210 = !DILocation(line: 1596, column: 24, scope: !2207)
!2211 = !DILocation(line: 1593, column: 40, scope: !2204)
!2212 = !DILocation(line: 1593, column: 3, scope: !2204)
!2213 = distinct !{!2213, !2205, !2214}
!2214 = !DILocation(line: 1597, column: 5, scope: !2201)
!2215 = !DILocation(line: 1598, column: 14, scope: !2193)
!2216 = !DILocation(line: 1599, column: 16, scope: !2193)
!2217 = !DILocation(line: 1600, column: 1, scope: !2193)
!2218 = distinct !DISubprogram(name: "ira_init_costs", scope: !3, file: !3, line: 1630, type: !2194, scopeLine: 1631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2219 = !{!2220}
!2220 = !DILocalVariable(name: "i", scope: !2218, file: !3, line: 1632, type: !588)
!2221 = !DILocation(line: 1634, column: 3, scope: !2218)
!2222 = !DILocation(line: 1636, column: 47, scope: !2218)
!2223 = !DILocation(line: 1636, column: 44, scope: !2218)
!2224 = !DILocation(line: 1636, column: 29, scope: !2218)
!2225 = !DILocation(line: 1636, column: 5, scope: !2218)
!2226 = !DILocation(line: 1638, column: 41, scope: !2218)
!2227 = !DILocation(line: 1638, column: 32, scope: !2218)
!2228 = !DILocation(line: 1638, column: 13, scope: !2218)
!2229 = !DILocation(line: 1639, column: 14, scope: !2218)
!2230 = !DILocation(line: 1639, column: 23, scope: !2218)
!2231 = !DILocation(line: 0, scope: !2218)
!2232 = !DILocation(line: 1640, column: 8, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1640, column: 3)
!2234 = !DILocation(line: 0, scope: !2233)
!2235 = !DILocation(line: 1640, column: 19, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 1640, column: 3)
!2237 = !DILocation(line: 1640, column: 17, scope: !2236)
!2238 = !DILocation(line: 1640, column: 3, scope: !2233)
!2239 = !DILocation(line: 1642, column: 3, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1642, column: 3)
!2241 = !DILocation(line: 1641, column: 5, scope: !2236)
!2242 = !DILocation(line: 1641, column: 24, scope: !2236)
!2243 = !DILocation(line: 1640, column: 47, scope: !2236)
!2244 = !DILocation(line: 1640, column: 3, scope: !2236)
!2245 = distinct !{!2245, !2238, !2246}
!2246 = !DILocation(line: 1641, column: 26, scope: !2233)
!2247 = !DILocation(line: 0, scope: !2240)
!2248 = !DILocation(line: 1642, column: 17, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 1642, column: 3)
!2250 = !DILocation(line: 1644, column: 7, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1643, column: 5)
!2252 = !DILocation(line: 1644, column: 19, scope: !2251)
!2253 = !DILocation(line: 1645, column: 52, scope: !2251)
!2254 = !DILocation(line: 1645, column: 43, scope: !2251)
!2255 = !DILocation(line: 1645, column: 7, scope: !2251)
!2256 = !DILocation(line: 1645, column: 24, scope: !2251)
!2257 = !DILocation(line: 1642, column: 40, scope: !2249)
!2258 = !DILocation(line: 1642, column: 3, scope: !2249)
!2259 = distinct !{!2259, !2239, !2260}
!2260 = !DILocation(line: 1646, column: 5, scope: !2240)
!2261 = !DILocation(line: 1647, column: 14, scope: !2218)
!2262 = !DILocation(line: 1649, column: 13, scope: !2218)
!2263 = !DILocation(line: 1649, column: 11, scope: !2218)
!2264 = !DILocation(line: 1648, column: 37, scope: !2218)
!2265 = !DILocation(line: 1648, column: 16, scope: !2218)
!2266 = !DILocation(line: 1650, column: 1, scope: !2218)
!2267 = distinct !DISubprogram(name: "free_ira_costs", scope: !3, file: !3, line: 1604, type: !2194, scopeLine: 1605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2268)
!2268 = !{!2269}
!2269 = !DILocalVariable(name: "i", scope: !2267, file: !3, line: 1606, type: !588)
!2270 = !DILocation(line: 1608, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1608, column: 7)
!2272 = !DILocation(line: 1608, column: 17, scope: !2271)
!2273 = !DILocation(line: 1608, column: 7, scope: !2267)
!2274 = !DILocation(line: 1609, column: 5, scope: !2271)
!2275 = !DILocation(line: 1610, column: 13, scope: !2267)
!2276 = !DILocation(line: 0, scope: !2267)
!2277 = !DILocation(line: 1611, column: 8, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1611, column: 3)
!2279 = !DILocation(line: 0, scope: !2278)
!2280 = !DILocation(line: 1611, column: 17, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1611, column: 3)
!2282 = !DILocation(line: 1611, column: 3, scope: !2278)
!2283 = !DILocation(line: 1613, column: 11, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 1613, column: 11)
!2285 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 1612, column: 5)
!2286 = !DILocation(line: 1613, column: 23, scope: !2284)
!2287 = !DILocation(line: 1613, column: 11, scope: !2285)
!2288 = !DILocation(line: 1614, column: 2, scope: !2284)
!2289 = !DILocation(line: 1615, column: 11, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 1615, column: 11)
!2291 = !DILocation(line: 1615, column: 28, scope: !2290)
!2292 = !DILocation(line: 1615, column: 11, scope: !2285)
!2293 = !DILocation(line: 1616, column: 2, scope: !2290)
!2294 = !DILocation(line: 1617, column: 38, scope: !2285)
!2295 = !DILocation(line: 1617, column: 19, scope: !2285)
!2296 = !DILocation(line: 1611, column: 40, scope: !2281)
!2297 = !DILocation(line: 1611, column: 3, scope: !2281)
!2298 = distinct !{!2298, !2282, !2299}
!2299 = !DILocation(line: 1618, column: 5, scope: !2278)
!2300 = !DILocation(line: 1619, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1619, column: 7)
!2302 = !DILocation(line: 1619, column: 18, scope: !2301)
!2303 = !DILocation(line: 1619, column: 7, scope: !2267)
!2304 = !DILocation(line: 1620, column: 5, scope: !2301)
!2305 = !DILocation(line: 1621, column: 14, scope: !2267)
!2306 = !DILocation(line: 1622, column: 7, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1622, column: 7)
!2308 = !DILocation(line: 1622, column: 20, scope: !2307)
!2309 = !DILocation(line: 1622, column: 7, scope: !2267)
!2310 = !DILocation(line: 1623, column: 5, scope: !2307)
!2311 = !DILocation(line: 1624, column: 16, scope: !2267)
!2312 = !DILocation(line: 1625, column: 1, scope: !2267)
!2313 = distinct !DISubprogram(name: "ira_finish_costs_once", scope: !3, file: !3, line: 1654, type: !2194, scopeLine: 1655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1770)
!2314 = !DILocation(line: 1656, column: 3, scope: !2313)
!2315 = !DILocation(line: 1657, column: 1, scope: !2313)
!2316 = distinct !DISubprogram(name: "ira_costs", scope: !3, file: !3, line: 1690, type: !2194, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1770)
!2317 = !DILocation(line: 1692, column: 13, scope: !2316)
!2318 = !DILocation(line: 1693, column: 23, scope: !2316)
!2319 = !DILocation(line: 1693, column: 21, scope: !2316)
!2320 = !DILocation(line: 1694, column: 3, scope: !2316)
!2321 = !DILocation(line: 1695, column: 56, scope: !2316)
!2322 = !DILocation(line: 1696, column: 16, scope: !2316)
!2323 = !DILocation(line: 1696, column: 14, scope: !2316)
!2324 = !DILocation(line: 1695, column: 42, scope: !2316)
!2325 = !DILocation(line: 1695, column: 23, scope: !2316)
!2326 = !DILocation(line: 1697, column: 27, scope: !2316)
!2327 = !DILocation(line: 1697, column: 3, scope: !2316)
!2328 = !DILocation(line: 1698, column: 3, scope: !2316)
!2329 = !DILocation(line: 1699, column: 3, scope: !2316)
!2330 = !DILocation(line: 1700, column: 13, scope: !2316)
!2331 = !DILocation(line: 1700, column: 3, scope: !2316)
!2332 = !DILocation(line: 1701, column: 1, scope: !2316)
!2333 = distinct !DISubprogram(name: "init_costs", scope: !3, file: !3, line: 1664, type: !2194, scopeLine: 1665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1770)
!2334 = !DILocation(line: 1666, column: 3, scope: !2333)
!2335 = !DILocation(line: 1667, column: 42, scope: !2333)
!2336 = !DILocation(line: 1668, column: 9, scope: !2333)
!2337 = !DILocation(line: 1668, column: 7, scope: !2333)
!2338 = !DILocation(line: 1667, column: 28, scope: !2333)
!2339 = !DILocation(line: 1667, column: 9, scope: !2333)
!2340 = !DILocation(line: 1671, column: 14, scope: !2333)
!2341 = !DILocation(line: 1671, column: 12, scope: !2333)
!2342 = !DILocation(line: 1670, column: 26, scope: !2333)
!2343 = !DILocation(line: 1670, column: 5, scope: !2333)
!2344 = !DILocation(line: 1674, column: 14, scope: !2333)
!2345 = !DILocation(line: 1674, column: 12, scope: !2333)
!2346 = !DILocation(line: 1673, column: 26, scope: !2333)
!2347 = !DILocation(line: 1673, column: 5, scope: !2333)
!2348 = !DILocation(line: 1675, column: 1, scope: !2333)
!2349 = distinct !DISubprogram(name: "find_costs_and_classes", scope: !3, file: !3, line: 1167, type: !2350, scopeLine: 1168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !1777}
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359, !2468, !2473, !2479, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2353 = !DILocalVariable(name: "dump_file", arg: 1, scope: !2349, file: !3, line: 1167, type: !1777)
!2354 = !DILocalVariable(name: "i", scope: !2349, file: !3, line: 1169, type: !588)
!2355 = !DILocalVariable(name: "k", scope: !2349, file: !3, line: 1169, type: !588)
!2356 = !DILocalVariable(name: "start", scope: !2349, file: !3, line: 1169, type: !588)
!2357 = !DILocalVariable(name: "pass", scope: !2349, file: !3, line: 1170, type: !588)
!2358 = !DILocalVariable(name: "bb", scope: !2349, file: !3, line: 1171, type: !975)
!2359 = !DILocalVariable(name: "a", scope: !2360, file: !3, line: 1181, type: !2362)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 1180, column: 5)
!2361 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1179, column: 7)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_allocno_t", file: !2363, line: 63, baseType: !2364)
!2363 = !DIFile(filename: "./ira-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno", file: !2363, line: 232, size: 1984, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2420, !2421, !2422, !2423, !2424, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2365, file: !2363, line: 237, baseType: !588, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !2365, file: !2363, line: 239, baseType: !588, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2365, file: !2363, line: 242, baseType: !37, size: 32, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "hard_regno", scope: !2365, file: !2363, line: 249, baseType: !588, size: 32, offset: 96)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2365, file: !2363, line: 251, baseType: !604, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "next_regno_allocno", scope: !2365, file: !2363, line: 255, baseType: !2362, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "loop_tree_node", scope: !2365, file: !2363, line: 260, baseType: !2374, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_loop_tree_node_t", file: !2363, line: 73, baseType: !2375)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_loop_tree_node", file: !2363, line: 83, size: 1728, elements: !2377)
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2389, !2390, !2391, !2393, !2394, !2395}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2376, file: !2363, line: 86, baseType: !975, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !2376, file: !2363, line: 87, baseType: !1017, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "subloop_next", scope: !2376, file: !2363, line: 90, baseType: !2374, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2376, file: !2363, line: 90, baseType: !2374, size: 64, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "subloops", scope: !2376, file: !2363, line: 93, baseType: !2374, size: 64, offset: 256)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2376, file: !2363, line: 93, baseType: !2374, size: 64, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2376, file: !2363, line: 95, baseType: !2374, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2376, file: !2363, line: 98, baseType: !588, size: 32, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "to_remove_p", scope: !2376, file: !2363, line: 105, baseType: !587, size: 8, offset: 480)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "regno_allocno_map", scope: !2376, file: !2363, line: 114, baseType: !2388, size: 64, offset: 512)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "entered_from_non_parent_p", scope: !2376, file: !2363, line: 119, baseType: !587, size: 8, offset: 576)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "reg_pressure", scope: !2376, file: !2363, line: 123, baseType: !1731, size: 864, offset: 608)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "all_allocnos", scope: !2376, file: !2363, line: 127, baseType: !2392, size: 64, offset: 1472)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !605, line: 47, baseType: !656)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "border_allocnos", scope: !2376, file: !2363, line: 130, baseType: !2392, size: 64, offset: 1536)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "modified_regnos", scope: !2376, file: !2363, line: 134, baseType: !2392, size: 64, offset: 1600)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "local_copies", scope: !2376, file: !2363, line: 137, baseType: !2392, size: 64, offset: 1664)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "nrefs", scope: !2365, file: !2363, line: 266, baseType: !588, size: 32, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2365, file: !2363, line: 268, baseType: !588, size: 32, offset: 352)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "cover_class", scope: !2365, file: !2363, line: 271, baseType: !5, size: 32, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "cover_class_cost", scope: !2365, file: !2363, line: 274, baseType: !588, size: 32, offset: 416)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "updated_cover_class_cost", scope: !2365, file: !2363, line: 274, baseType: !588, size: 32, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "memory_cost", scope: !2365, file: !2363, line: 282, baseType: !588, size: 32, offset: 480)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "updated_memory_cost", scope: !2365, file: !2363, line: 282, baseType: !588, size: 32, offset: 512)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "excess_pressure_points_num", scope: !2365, file: !2363, line: 288, baseType: !588, size: 32, offset: 544)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "allocno_copies", scope: !2365, file: !2363, line: 292, baseType: !2405, size: 64, offset: 576)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_copy_t", file: !2363, line: 64, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno_copy", file: !2363, line: 506, size: 640, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2407, file: !2363, line: 509, baseType: !588, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2407, file: !2363, line: 512, baseType: !2362, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !2407, file: !2363, line: 512, baseType: !2362, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2407, file: !2363, line: 514, baseType: !588, size: 32, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "constraint_p", scope: !2407, file: !2363, line: 515, baseType: !587, size: 8, offset: 224)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2407, file: !2363, line: 521, baseType: !604, size: 64, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "prev_first_allocno_copy", scope: !2407, file: !2363, line: 524, baseType: !2405, size: 64, offset: 320)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "next_first_allocno_copy", scope: !2407, file: !2363, line: 524, baseType: !2405, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "prev_second_allocno_copy", scope: !2407, file: !2363, line: 527, baseType: !2405, size: 64, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "next_second_allocno_copy", scope: !2407, file: !2363, line: 527, baseType: !2405, size: 64, offset: 512)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "loop_tree_node", scope: !2407, file: !2363, line: 529, baseType: !2374, size: 64, offset: 576)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2365, file: !2363, line: 295, baseType: !2362, size: 64, offset: 640)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "cap_member", scope: !2365, file: !2363, line: 298, baseType: !2362, size: 64, offset: 704)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "first_coalesced_allocno", scope: !2365, file: !2363, line: 302, baseType: !2362, size: 64, offset: 768)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "next_coalesced_allocno", scope: !2365, file: !2363, line: 303, baseType: !2362, size: 64, offset: 832)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "live_ranges", scope: !2365, file: !2363, line: 308, baseType: !2425, size: 64, offset: 896)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocno_live_range_t", file: !2363, line: 62, baseType: !2426)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ira_allocno_live_range", file: !2363, line: 199, size: 320, elements: !2428)
!2428 = !{!2429, !2430, !2431, !2432, !2433, !2434}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "allocno", scope: !2427, file: !2363, line: 202, baseType: !2362, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2427, file: !2363, line: 204, baseType: !588, size: 32, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !2427, file: !2363, line: 204, baseType: !588, size: 32, offset: 96)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2427, file: !2363, line: 207, baseType: !2425, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "start_next", scope: !2427, file: !2363, line: 209, baseType: !2425, size: 64, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "finish_next", scope: !2427, file: !2363, line: 209, baseType: !2425, size: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2365, file: !2363, line: 314, baseType: !588, size: 32, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2365, file: !2363, line: 314, baseType: !588, size: 32, offset: 992)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocno_array", scope: !2365, file: !2363, line: 319, baseType: !592, size: 64, offset: 1024)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_id", scope: !2365, file: !2363, line: 322, baseType: !588, size: 32, offset: 1088)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocno_array_size", scope: !2365, file: !2363, line: 324, baseType: !7, size: 32, offset: 1120)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_hard_regs", scope: !2365, file: !2363, line: 329, baseType: !1698, size: 64, offset: 1152)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "total_conflict_hard_regs", scope: !2365, file: !2363, line: 329, baseType: !1698, size: 64, offset: 1216)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_allocnos_num", scope: !2365, file: !2363, line: 332, baseType: !588, size: 32, offset: 1280)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "call_freq", scope: !2365, file: !2363, line: 335, baseType: !588, size: 32, offset: 1312)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "calls_crossed_num", scope: !2365, file: !2363, line: 337, baseType: !588, size: 32, offset: 1344)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "mem_optimized_dest_p", scope: !2365, file: !2363, line: 342, baseType: !7, size: 1, offset: 1376, flags: DIFlagBitField, extraData: i64 1376)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "somewhere_renamed_p", scope: !2365, file: !2363, line: 346, baseType: !7, size: 1, offset: 1377, flags: DIFlagBitField, extraData: i64 1376)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "child_renamed_p", scope: !2365, file: !2363, line: 349, baseType: !7, size: 1, offset: 1378, flags: DIFlagBitField, extraData: i64 1376)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dont_reassign_p", scope: !2365, file: !2363, line: 354, baseType: !7, size: 1, offset: 1379, flags: DIFlagBitField, extraData: i64 1376)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "no_stack_reg_p", scope: !2365, file: !2363, line: 359, baseType: !7, size: 1, offset: 1380, flags: DIFlagBitField, extraData: i64 1376)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "total_no_stack_reg_p", scope: !2365, file: !2363, line: 359, baseType: !7, size: 1, offset: 1381, flags: DIFlagBitField, extraData: i64 1376)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "bad_spill_p", scope: !2365, file: !2363, line: 364, baseType: !7, size: 1, offset: 1382, flags: DIFlagBitField, extraData: i64 1376)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "in_graph_p", scope: !2365, file: !2363, line: 367, baseType: !7, size: 1, offset: 1383, flags: DIFlagBitField, extraData: i64 1376)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "assigned_p", scope: !2365, file: !2363, line: 370, baseType: !7, size: 1, offset: 1384, flags: DIFlagBitField, extraData: i64 1376)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "may_be_spilled_p", scope: !2365, file: !2363, line: 373, baseType: !7, size: 1, offset: 1385, flags: DIFlagBitField, extraData: i64 1376)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "splay_removed_p", scope: !2365, file: !2363, line: 376, baseType: !7, size: 1, offset: 1386, flags: DIFlagBitField, extraData: i64 1376)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_vec_p", scope: !2365, file: !2363, line: 381, baseType: !7, size: 1, offset: 1387, flags: DIFlagBitField, extraData: i64 1376)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "mem_optimized_dest", scope: !2365, file: !2363, line: 385, baseType: !2362, size: 64, offset: 1408)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "hard_reg_costs", scope: !2365, file: !2363, line: 400, baseType: !2459, size: 64, offset: 1472)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "updated_hard_reg_costs", scope: !2365, file: !2363, line: 400, baseType: !2459, size: 64, offset: 1536)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "conflict_hard_reg_costs", scope: !2365, file: !2363, line: 407, baseType: !2459, size: 64, offset: 1600)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "updated_conflict_hard_reg_costs", scope: !2365, file: !2363, line: 407, baseType: !2459, size: 64, offset: 1664)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "left_conflicts_size", scope: !2365, file: !2363, line: 411, baseType: !588, size: 32, offset: 1728)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "available_regs_num", scope: !2365, file: !2363, line: 414, baseType: !588, size: 32, offset: 1760)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "next_bucket_allocno", scope: !2365, file: !2363, line: 417, baseType: !2362, size: 64, offset: 1792)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bucket_allocno", scope: !2365, file: !2363, line: 418, baseType: !2362, size: 64, offset: 1856)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2365, file: !2363, line: 420, baseType: !588, size: 32, offset: 1920)
!2468 = !DILocalVariable(name: "ai", scope: !2360, file: !3, line: 1182, type: !2469)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ira_allocno_iterator", file: !2363, line: 935, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2363, line: 932, size: 32, elements: !2471)
!2471 = !{!2472}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2470, file: !2363, line: 934, baseType: !588, size: 32)
!2473 = !DILocalVariable(name: "bb", scope: !2474, file: !3, line: 1237, type: !975)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1236, column: 2)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1225, column: 11)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1198, column: 5)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1197, column: 3)
!2478 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1197, column: 3)
!2479 = !DILocalVariable(name: "a", scope: !2480, file: !3, line: 1250, type: !2362)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1249, column: 2)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1248, column: 7)
!2482 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1248, column: 7)
!2483 = !DILocalVariable(name: "parent_a", scope: !2480, file: !3, line: 1250, type: !2362)
!2484 = !DILocalVariable(name: "rclass", scope: !2480, file: !3, line: 1251, type: !588)
!2485 = !DILocalVariable(name: "a_num", scope: !2480, file: !3, line: 1251, type: !588)
!2486 = !DILocalVariable(name: "parent_a_num", scope: !2480, file: !3, line: 1251, type: !588)
!2487 = !DILocalVariable(name: "parent", scope: !2480, file: !3, line: 1252, type: !2374)
!2488 = !DILocalVariable(name: "best_cost", scope: !2480, file: !3, line: 1253, type: !588)
!2489 = !DILocalVariable(name: "allocno_cost", scope: !2480, file: !3, line: 1253, type: !588)
!2490 = !DILocalVariable(name: "best", scope: !2480, file: !3, line: 1254, type: !5)
!2491 = !DILocalVariable(name: "alt_class", scope: !2480, file: !3, line: 1254, type: !5)
!2492 = !DILocation(line: 0, scope: !2349)
!2493 = !DILocation(line: 1173, column: 3, scope: !2349)
!2494 = !DILocation(line: 1177, column: 8, scope: !2349)
!2495 = !DILocation(line: 1179, column: 8, scope: !2361)
!2496 = !DILocation(line: 1179, column: 27, scope: !2361)
!2497 = !DILocation(line: 1179, column: 30, scope: !2361)
!2498 = !DILocation(line: 1179, column: 40, scope: !2361)
!2499 = !DILocation(line: 1179, column: 43, scope: !2361)
!2500 = !DILocation(line: 1179, column: 7, scope: !2349)
!2501 = !DILocation(line: 1181, column: 7, scope: !2360)
!2502 = !DILocation(line: 1182, column: 7, scope: !2360)
!2503 = !DILocation(line: 1184, column: 14, scope: !2360)
!2504 = !DILocation(line: 1184, column: 12, scope: !2360)
!2505 = !DILocation(line: 0, scope: !2360)
!2506 = !DILocation(line: 1185, column: 7, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 1185, column: 7)
!2508 = !DILocation(line: 1185, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 1185, column: 7)
!2510 = !DILocation(line: 1186, column: 47, scope: !2509)
!2511 = !DILocation(line: 1186, column: 26, scope: !2509)
!2512 = !DILocation(line: 1186, column: 2, scope: !2509)
!2513 = !DILocation(line: 1186, column: 7, scope: !2509)
!2514 = !DILocation(line: 1186, column: 24, scope: !2509)
!2515 = distinct !{!2515, !2506, !2516}
!2516 = !DILocation(line: 1186, column: 64, scope: !2507)
!2517 = !DILocation(line: 1187, column: 11, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 1187, column: 11)
!2519 = !DILocation(line: 1187, column: 11, scope: !2360)
!2520 = !DILocation(line: 1189, column: 5, scope: !2361)
!2521 = !DILocation(line: 1189, column: 5, scope: !2360)
!2522 = !DILocation(line: 1190, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1190, column: 7)
!2524 = !DILocation(line: 1190, column: 7, scope: !2349)
!2525 = !DILocation(line: 1192, column: 30, scope: !2523)
!2526 = !DILocation(line: 1192, column: 5, scope: !2523)
!2527 = !DILocation(line: 0, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1199, column: 11)
!2529 = !DILocation(line: 1197, column: 8, scope: !2478)
!2530 = !DILocation(line: 0, scope: !2478)
!2531 = !DILocation(line: 1197, column: 30, scope: !2477)
!2532 = !DILocation(line: 1197, column: 27, scope: !2477)
!2533 = !DILocation(line: 1197, column: 3, scope: !2478)
!2534 = !DILocation(line: 1199, column: 13, scope: !2528)
!2535 = !DILocation(line: 1199, column: 26, scope: !2528)
!2536 = !DILocation(line: 1199, column: 52, scope: !2528)
!2537 = !DILocation(line: 1199, column: 23, scope: !2528)
!2538 = !DILocation(line: 1200, column: 2, scope: !2528)
!2539 = !DILocation(line: 1205, column: 12, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1205, column: 7)
!2541 = !DILocation(line: 0, scope: !2540)
!2542 = !DILocation(line: 1205, column: 21, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 1205, column: 7)
!2544 = !DILocation(line: 1205, column: 7, scope: !2540)
!2545 = !DILocation(line: 1206, column: 2, scope: !2543)
!2546 = !DILocation(line: 1206, column: 21, scope: !2543)
!2547 = !DILocation(line: 1205, column: 39, scope: !2543)
!2548 = !DILocation(line: 1205, column: 7, scope: !2543)
!2549 = distinct !{!2549, !2544, !2550}
!2550 = !DILocation(line: 1206, column: 24, scope: !2540)
!2551 = !DILocation(line: 1207, column: 12, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1207, column: 7)
!2553 = !DILocation(line: 0, scope: !2552)
!2554 = !DILocation(line: 1208, column: 24, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1207, column: 7)
!2556 = !DILocation(line: 1208, column: 22, scope: !2555)
!2557 = !DILocation(line: 1207, column: 7, scope: !2552)
!2558 = !DILocation(line: 1212, column: 8, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 1210, column: 2)
!2560 = !DILocation(line: 1211, column: 4, scope: !2559)
!2561 = !DILocation(line: 1212, column: 6, scope: !2559)
!2562 = !DILocation(line: 1214, column: 8, scope: !2559)
!2563 = !DILocation(line: 1213, column: 20, scope: !2559)
!2564 = !DILocation(line: 1213, column: 4, scope: !2559)
!2565 = !DILocation(line: 1214, column: 6, scope: !2559)
!2566 = !DILocation(line: 1209, column: 21, scope: !2555)
!2567 = !DILocation(line: 1207, column: 7, scope: !2555)
!2568 = distinct !{!2568, !2557, !2569}
!2569 = !DILocation(line: 1215, column: 2, scope: !2552)
!2570 = !DILocation(line: 1217, column: 41, scope: !2476)
!2571 = !DILocation(line: 1217, column: 26, scope: !2476)
!2572 = !DILocation(line: 1217, column: 2, scope: !2476)
!2573 = !DILocation(line: 1220, column: 15, scope: !2476)
!2574 = !DILocation(line: 1220, column: 25, scope: !2476)
!2575 = !DILocation(line: 1220, column: 43, scope: !2476)
!2576 = !DILocation(line: 1220, column: 7, scope: !2476)
!2577 = !DILocation(line: 1225, column: 11, scope: !2475)
!2578 = !DILocation(line: 1225, column: 11, scope: !2476)
!2579 = !DILocation(line: 1229, column: 34, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1226, column: 2)
!2581 = !DILocation(line: 1229, column: 4, scope: !2580)
!2582 = !DILocation(line: 1232, column: 12, scope: !2580)
!2583 = !DILocation(line: 1232, column: 33, scope: !2580)
!2584 = !DILocation(line: 1233, column: 5, scope: !2580)
!2585 = !DILocation(line: 1233, column: 29, scope: !2580)
!2586 = !DILocation(line: 1233, column: 27, scope: !2580)
!2587 = !DILocation(line: 1232, column: 4, scope: !2580)
!2588 = !DILocation(line: 1234, column: 2, scope: !2580)
!2589 = !DILocation(line: 1239, column: 4, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1239, column: 4)
!2591 = !DILocation(line: 1239, column: 4, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1239, column: 4)
!2593 = !DILocation(line: 0, scope: !2590)
!2594 = !DILocation(line: 0, scope: !2474)
!2595 = !DILocation(line: 1240, column: 6, scope: !2592)
!2596 = !DILocation(line: 0, scope: !2592)
!2597 = distinct !{!2597, !2589, !2598}
!2598 = !DILocation(line: 1240, column: 30, scope: !2590)
!2599 = !DILocation(line: 1243, column: 16, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1243, column: 11)
!2601 = !DILocation(line: 1243, column: 11, scope: !2476)
!2602 = !DILocation(line: 1244, column: 9, scope: !2600)
!2603 = !DILocation(line: 1244, column: 7, scope: !2600)
!2604 = !DILocation(line: 1244, column: 2, scope: !2600)
!2605 = !DILocation(line: 1248, column: 16, scope: !2482)
!2606 = !DILocation(line: 1248, column: 12, scope: !2482)
!2607 = !DILocation(line: 0, scope: !2482)
!2608 = !DILocation(line: 1248, column: 38, scope: !2481)
!2609 = !DILocation(line: 1248, column: 7, scope: !2482)
!2610 = !DILocation(line: 1259, column: 10, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1259, column: 8)
!2612 = !DILocation(line: 1259, column: 8, scope: !2480)
!2613 = !DILocation(line: 1261, column: 12, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 1261, column: 12)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 1260, column: 6)
!2616 = !DILocation(line: 1261, column: 29, scope: !2614)
!2617 = !DILocation(line: 1261, column: 12, scope: !2615)
!2618 = !DILocation(line: 1266, column: 16, scope: !2615)
!2619 = !DILocation(line: 1266, column: 28, scope: !2615)
!2620 = !DILocation(line: 1266, column: 46, scope: !2615)
!2621 = !DILocation(line: 1266, column: 8, scope: !2615)
!2622 = !DILocation(line: 1267, column: 6, scope: !2615)
!2623 = !DILocation(line: 1270, column: 12, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1270, column: 12)
!2625 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 1269, column: 6)
!2626 = !DILocation(line: 1270, column: 37, scope: !2624)
!2627 = !DILocation(line: 1270, column: 12, scope: !2625)
!2628 = !DILocation(line: 1272, column: 16, scope: !2625)
!2629 = !DILocation(line: 1272, column: 31, scope: !2625)
!2630 = !DILocation(line: 1272, column: 8, scope: !2625)
!2631 = !DILocation(line: 1274, column: 17, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1274, column: 8)
!2633 = !DILocation(line: 1274, column: 13, scope: !2632)
!2634 = !DILocation(line: 0, scope: !2632)
!2635 = !DILocation(line: 0, scope: !2480)
!2636 = !DILocation(line: 1275, column: 8, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1274, column: 8)
!2638 = !DILocation(line: 1274, column: 8, scope: !2632)
!2639 = !DILocation(line: 1278, column: 13, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 1277, column: 3)
!2641 = !DILocation(line: 1279, column: 10, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 1279, column: 9)
!2643 = !DILocation(line: 1280, column: 10, scope: !2642)
!2644 = !DILocation(line: 1281, column: 22, scope: !2642)
!2645 = !DILocation(line: 1281, column: 50, scope: !2642)
!2646 = !DILocation(line: 1281, column: 58, scope: !2642)
!2647 = !DILocation(line: 1282, column: 9, scope: !2642)
!2648 = !DILocation(line: 1282, column: 32, scope: !2642)
!2649 = !DILocation(line: 1282, column: 24, scope: !2642)
!2650 = !DILocation(line: 1282, column: 54, scope: !2642)
!2651 = !DILocation(line: 1284, column: 9, scope: !2642)
!2652 = !DILocation(line: 1285, column: 17, scope: !2642)
!2653 = !DILocation(line: 1284, column: 12, scope: !2642)
!2654 = !DILocation(line: 1279, column: 9, scope: !2640)
!2655 = !DILocation(line: 1290, column: 24, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 1287, column: 7)
!2657 = !DILocation(line: 1291, column: 14, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 1291, column: 9)
!2659 = !DILocation(line: 0, scope: !2658)
!2660 = !DILocation(line: 1291, column: 25, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 1291, column: 9)
!2662 = !DILocation(line: 1291, column: 23, scope: !2661)
!2663 = !DILocation(line: 0, scope: !2656)
!2664 = !DILocation(line: 1291, column: 9, scope: !2658)
!2665 = !DILocation(line: 1293, column: 45, scope: !2661)
!2666 = !DILocation(line: 1293, column: 9, scope: !2661)
!2667 = !DILocation(line: 1292, column: 4, scope: !2661)
!2668 = !DILocation(line: 1292, column: 47, scope: !2661)
!2669 = !DILocation(line: 1293, column: 6, scope: !2661)
!2670 = !DILocation(line: 1291, column: 44, scope: !2661)
!2671 = !DILocation(line: 1291, column: 9, scope: !2661)
!2672 = distinct !{!2672, !2664, !2673}
!2673 = !DILocation(line: 1293, column: 51, scope: !2658)
!2674 = !DILocation(line: 1295, column: 43, scope: !2656)
!2675 = !DILocation(line: 1294, column: 9, scope: !2656)
!2676 = !DILocation(line: 1294, column: 52, scope: !2656)
!2677 = !DILocation(line: 1295, column: 4, scope: !2656)
!2678 = !DILocation(line: 1296, column: 7, scope: !2656)
!2679 = !DILocation(line: 1297, column: 10, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 1297, column: 5)
!2681 = !DILocation(line: 0, scope: !2680)
!2682 = !DILocation(line: 1297, column: 21, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 1297, column: 5)
!2684 = !DILocation(line: 1297, column: 19, scope: !2683)
!2685 = !DILocation(line: 0, scope: !2640)
!2686 = !DILocation(line: 1297, column: 5, scope: !2680)
!2687 = !DILocation(line: 1298, column: 52, scope: !2683)
!2688 = !DILocation(line: 1298, column: 30, scope: !2683)
!2689 = !DILocation(line: 1298, column: 7, scope: !2683)
!2690 = !DILocation(line: 1298, column: 27, scope: !2683)
!2691 = !DILocation(line: 1297, column: 40, scope: !2683)
!2692 = !DILocation(line: 1297, column: 5, scope: !2683)
!2693 = distinct !{!2693, !2686, !2694}
!2694 = !DILocation(line: 1298, column: 58, scope: !2680)
!2695 = !DILocation(line: 1299, column: 51, scope: !2640)
!2696 = !DILocation(line: 1299, column: 5, scope: !2640)
!2697 = !DILocation(line: 1299, column: 17, scope: !2640)
!2698 = !DILocation(line: 1299, column: 26, scope: !2640)
!2699 = !DILocation(line: 1276, column: 10, scope: !2637)
!2700 = !DILocation(line: 1274, column: 8, scope: !2637)
!2701 = distinct !{!2701, !2638, !2702}
!2702 = !DILocation(line: 1304, column: 3, scope: !2632)
!2703 = !DILocation(line: 1311, column: 9, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1311, column: 4)
!2705 = !DILocation(line: 1306, column: 14, scope: !2480)
!2706 = !DILocation(line: 1307, column: 9, scope: !2480)
!2707 = !DILocation(line: 1308, column: 14, scope: !2480)
!2708 = !DILocation(line: 1311, column: 20, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 1311, column: 4)
!2710 = !DILocation(line: 1311, column: 18, scope: !2709)
!2711 = !DILocation(line: 1311, column: 4, scope: !2704)
!2712 = !DILocation(line: 1313, column: 17, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 1312, column: 6)
!2714 = !DILocation(line: 1316, column: 14, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1316, column: 12)
!2716 = !DILocation(line: 1316, column: 43, scope: !2715)
!2717 = !DILocation(line: 1321, column: 5, scope: !2715)
!2718 = !DILocation(line: 1321, column: 8, scope: !2715)
!2719 = !DILocation(line: 1316, column: 12, scope: !2713)
!2720 = !DILocation(line: 1326, column: 12, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1326, column: 12)
!2722 = !DILocation(line: 1326, column: 32, scope: !2721)
!2723 = !DILocation(line: 1326, column: 12, scope: !2713)
!2724 = !DILocation(line: 1331, column: 37, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 1331, column: 17)
!2726 = !DILocation(line: 1331, column: 17, scope: !2721)
!2727 = !DILocation(line: 1332, column: 10, scope: !2725)
!2728 = !DILocation(line: 1332, column: 3, scope: !2725)
!2729 = !DILocation(line: 0, scope: !2721)
!2730 = !DILocation(line: 1333, column: 20, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1333, column: 12)
!2732 = !DILocation(line: 1333, column: 17, scope: !2731)
!2733 = !DILocation(line: 1334, column: 5, scope: !2731)
!2734 = !DILocation(line: 1334, column: 42, scope: !2731)
!2735 = !DILocation(line: 1334, column: 28, scope: !2731)
!2736 = !DILocation(line: 1335, column: 5, scope: !2731)
!2737 = !DILocation(line: 1335, column: 24, scope: !2731)
!2738 = !DILocation(line: 1335, column: 9, scope: !2731)
!2739 = !DILocation(line: 1336, column: 11, scope: !2731)
!2740 = !DILocation(line: 1336, column: 9, scope: !2731)
!2741 = !DILocation(line: 1333, column: 12, scope: !2713)
!2742 = !DILocation(line: 1337, column: 3, scope: !2731)
!2743 = !DILocation(line: 1311, column: 39, scope: !2709)
!2744 = !DILocation(line: 1311, column: 4, scope: !2709)
!2745 = distinct !{!2745, !2711, !2746}
!2746 = !DILocation(line: 1338, column: 6, scope: !2704)
!2747 = !DILocation(line: 1339, column: 16, scope: !2480)
!2748 = !DILocation(line: 1340, column: 20, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1340, column: 8)
!2750 = !DILocation(line: 1340, column: 32, scope: !2749)
!2751 = !DILocation(line: 1340, column: 18, scope: !2749)
!2752 = !DILocation(line: 1340, column: 8, scope: !2480)
!2753 = !DILocation(line: 1341, column: 6, scope: !2749)
!2754 = !DILocation(line: 1341, column: 27, scope: !2749)
!2755 = !DILocation(line: 1342, column: 13, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1342, column: 13)
!2757 = !DILocation(line: 1342, column: 32, scope: !2756)
!2758 = !DILocation(line: 1342, column: 13, scope: !2749)
!2759 = !DILocation(line: 1345, column: 39, scope: !2756)
!2760 = !DILocation(line: 1345, column: 29, scope: !2756)
!2761 = !DILocation(line: 1345, column: 6, scope: !2756)
!2762 = !DILocation(line: 1345, column: 27, scope: !2756)
!2763 = !DILocation(line: 1350, column: 29, scope: !2756)
!2764 = !DILocation(line: 1350, column: 6, scope: !2756)
!2765 = !DILocation(line: 1350, column: 27, scope: !2756)
!2766 = !DILocation(line: 1351, column: 16, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1351, column: 8)
!2768 = !DILocation(line: 1351, column: 13, scope: !2767)
!2769 = !DILocation(line: 1351, column: 8, scope: !2480)
!2770 = !DILocation(line: 1353, column: 24, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 1353, column: 12)
!2772 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 1352, column: 6)
!2773 = !DILocation(line: 1353, column: 36, scope: !2771)
!2774 = !DILocation(line: 1353, column: 22, scope: !2771)
!2775 = !DILocation(line: 1353, column: 12, scope: !2772)
!2776 = !DILocation(line: 1357, column: 47, scope: !2772)
!2777 = !DILocation(line: 1357, column: 8, scope: !2772)
!2778 = !DILocation(line: 1358, column: 14, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 1358, column: 12)
!2780 = !DILocation(line: 1358, column: 27, scope: !2779)
!2781 = !DILocation(line: 1358, column: 53, scope: !2779)
!2782 = !DILocation(line: 1358, column: 24, scope: !2779)
!2783 = !DILocation(line: 1362, column: 8, scope: !2779)
!2784 = !DILocation(line: 1362, column: 31, scope: !2779)
!2785 = !DILocation(line: 1363, column: 21, scope: !2779)
!2786 = !DILocation(line: 1363, column: 5, scope: !2779)
!2787 = !DILocation(line: 1360, column: 3, scope: !2779)
!2788 = !DILocation(line: 1365, column: 10, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1365, column: 8)
!2790 = !DILocation(line: 1365, column: 8, scope: !2480)
!2791 = !DILocation(line: 1367, column: 30, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 1366, column: 6)
!2793 = !DILocation(line: 1367, column: 42, scope: !2792)
!2794 = !DILocation(line: 1367, column: 28, scope: !2792)
!2795 = !DILocation(line: 1367, column: 18, scope: !2792)
!2796 = !DILocation(line: 1367, column: 8, scope: !2792)
!2797 = !DILocation(line: 1367, column: 16, scope: !2792)
!2798 = !DILocation(line: 1368, column: 8, scope: !2792)
!2799 = !DILocation(line: 1370, column: 13, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1370, column: 4)
!2801 = !DILocation(line: 1370, column: 9, scope: !2800)
!2802 = !DILocation(line: 0, scope: !2800)
!2803 = !DILocation(line: 1371, column: 11, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1370, column: 4)
!2805 = !DILocation(line: 1370, column: 4, scope: !2800)
!2806 = !DILocation(line: 1374, column: 16, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 1373, column: 6)
!2808 = !DILocation(line: 1375, column: 12, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 1375, column: 12)
!2810 = !DILocation(line: 1375, column: 33, scope: !2809)
!2811 = !DILocation(line: 1375, column: 12, scope: !2807)
!2812 = !DILocation(line: 1384, column: 5, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1384, column: 5)
!2814 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1378, column: 3)
!2815 = !DILocation(line: 1381, column: 15, scope: !2814)
!2816 = !DILocation(line: 1382, column: 18, scope: !2814)
!2817 = !DILocation(line: 1383, column: 10, scope: !2814)
!2818 = !DILocation(line: 1384, column: 21, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1384, column: 5)
!2820 = !DILocation(line: 1384, column: 19, scope: !2819)
!2821 = !DILocation(line: 1386, column: 18, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 1385, column: 7)
!2823 = !DILocation(line: 1387, column: 15, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 1387, column: 13)
!2825 = !DILocation(line: 1387, column: 42, scope: !2824)
!2826 = !DILocation(line: 1387, column: 13, scope: !2822)
!2827 = !DILocation(line: 1392, column: 44, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 1392, column: 13)
!2829 = !DILocation(line: 1392, column: 15, scope: !2828)
!2830 = !DILocation(line: 1397, column: 6, scope: !2828)
!2831 = !DILocation(line: 1397, column: 9, scope: !2828)
!2832 = !DILocation(line: 1392, column: 13, scope: !2822)
!2833 = !DILocation(line: 1402, column: 18, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 1402, column: 18)
!2835 = !DILocation(line: 1402, column: 54, scope: !2834)
!2836 = !DILocation(line: 1403, column: 11, scope: !2834)
!2837 = !DILocation(line: 1402, column: 18, scope: !2828)
!2838 = !DILocation(line: 1407, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 1404, column: 4)
!2840 = !DILocation(line: 1407, column: 43, scope: !2839)
!2841 = !DILocation(line: 1409, column: 4, scope: !2839)
!2842 = !DILocation(line: 1411, column: 11, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 1410, column: 18)
!2844 = !DILocation(line: 1410, column: 18, scope: !2834)
!2845 = !DILocation(line: 1413, column: 13, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 1412, column: 4)
!2847 = !DILocation(line: 1415, column: 10, scope: !2846)
!2848 = !DILocation(line: 1384, column: 40, scope: !2819)
!2849 = !DILocation(line: 1384, column: 5, scope: !2819)
!2850 = distinct !{!2850, !2812, !2851}
!2851 = !DILocation(line: 1417, column: 7, scope: !2813)
!2852 = !DILocation(line: 1418, column: 5, scope: !2814)
!2853 = !DILocation(line: 1418, column: 34, scope: !2814)
!2854 = !DILocation(line: 0, scope: !2809)
!2855 = !DILocation(line: 1422, column: 12, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 1422, column: 12)
!2857 = !DILocation(line: 1422, column: 38, scope: !2856)
!2858 = !DILocation(line: 1422, column: 42, scope: !2856)
!2859 = !DILocation(line: 1423, column: 19, scope: !2856)
!2860 = !DILocation(line: 1423, column: 22, scope: !2856)
!2861 = !DILocation(line: 1423, column: 34, scope: !2856)
!2862 = !DILocation(line: 1422, column: 12, scope: !2807)
!2863 = !DILocation(line: 1425, column: 5, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1424, column: 3)
!2865 = !DILocation(line: 1426, column: 15, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 1426, column: 9)
!2867 = !DILocation(line: 1426, column: 43, scope: !2866)
!2868 = !DILocation(line: 1426, column: 47, scope: !2866)
!2869 = !DILocation(line: 1426, column: 9, scope: !2864)
!2870 = !DILocation(line: 1427, column: 38, scope: !2866)
!2871 = !DILocation(line: 1427, column: 7, scope: !2866)
!2872 = !DILocation(line: 1430, column: 37, scope: !2866)
!2873 = !DILocation(line: 1430, column: 43, scope: !2866)
!2874 = !DILocation(line: 1429, column: 7, scope: !2866)
!2875 = !DILocation(line: 1432, column: 7, scope: !2864)
!2876 = !DILocation(line: 1433, column: 23, scope: !2864)
!2877 = !DILocation(line: 1433, column: 7, scope: !2864)
!2878 = !DILocation(line: 1431, column: 5, scope: !2864)
!2879 = !DILocation(line: 1434, column: 3, scope: !2864)
!2880 = !DILocation(line: 1435, column: 8, scope: !2807)
!2881 = !DILocation(line: 1435, column: 20, scope: !2807)
!2882 = !DILocation(line: 1372, column: 13, scope: !2804)
!2883 = !DILocation(line: 1370, column: 4, scope: !2804)
!2884 = distinct !{!2884, !2805, !2885}
!2885 = !DILocation(line: 1436, column: 6, scope: !2800)
!2886 = !DILocation(line: 1248, column: 7, scope: !2481)
!2887 = distinct !{!2887, !2609, !2888}
!2888 = !DILocation(line: 1437, column: 2, scope: !2482)
!2889 = !DILocation(line: 1439, column: 11, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1439, column: 11)
!2891 = !DILocation(line: 1439, column: 37, scope: !2890)
!2892 = !DILocation(line: 1439, column: 41, scope: !2890)
!2893 = !DILocation(line: 1441, column: 8, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 1441, column: 8)
!2895 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1440, column: 2)
!2896 = !DILocation(line: 1441, column: 8, scope: !2895)
!2897 = !DILocation(line: 1442, column: 6, scope: !2894)
!2898 = !DILocation(line: 1444, column: 6, scope: !2894)
!2899 = !DILocation(line: 1445, column: 4, scope: !2895)
!2900 = !DILocation(line: 1446, column: 2, scope: !2895)
!2901 = !DILocation(line: 1197, column: 64, scope: !2477)
!2902 = !DILocation(line: 1197, column: 3, scope: !2477)
!2903 = distinct !{!2903, !2533, !2904}
!2904 = !DILocation(line: 1447, column: 5, scope: !2478)
!2905 = !DILocation(line: 1451, column: 1, scope: !2349)
!2906 = distinct !DISubprogram(name: "setup_allocno_cover_class_and_costs", scope: !3, file: !3, line: 1532, type: !2194, scopeLine: 1533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2907)
!2907 = !{!2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917}
!2908 = !DILocalVariable(name: "i", scope: !2906, file: !3, line: 1534, type: !588)
!2909 = !DILocalVariable(name: "j", scope: !2906, file: !3, line: 1534, type: !588)
!2910 = !DILocalVariable(name: "n", scope: !2906, file: !3, line: 1534, type: !588)
!2911 = !DILocalVariable(name: "regno", scope: !2906, file: !3, line: 1534, type: !588)
!2912 = !DILocalVariable(name: "num", scope: !2906, file: !3, line: 1534, type: !588)
!2913 = !DILocalVariable(name: "reg_costs", scope: !2906, file: !3, line: 1535, type: !2459)
!2914 = !DILocalVariable(name: "cover_class", scope: !2906, file: !3, line: 1536, type: !5)
!2915 = !DILocalVariable(name: "rclass", scope: !2906, file: !3, line: 1536, type: !5)
!2916 = !DILocalVariable(name: "a", scope: !2906, file: !3, line: 1537, type: !2362)
!2917 = !DILocalVariable(name: "ai", scope: !2906, file: !3, line: 1538, type: !2469)
!2918 = !DILocation(line: 1537, column: 3, scope: !2906)
!2919 = !DILocation(line: 1538, column: 3, scope: !2906)
!2920 = !DILocation(line: 0, scope: !2906)
!2921 = !DILocation(line: 1541, column: 3, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 1541, column: 3)
!2923 = !DILocation(line: 1541, column: 3, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 1541, column: 3)
!2925 = !DILocation(line: 1543, column: 11, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 1542, column: 5)
!2927 = !DILocation(line: 1544, column: 21, scope: !2926)
!2928 = !DILocation(line: 1544, column: 39, scope: !2926)
!2929 = !DILocation(line: 1546, column: 33, scope: !2926)
!2930 = !DILocation(line: 1546, column: 51, scope: !2926)
!2931 = !DILocation(line: 1546, column: 7, scope: !2926)
!2932 = !DILocation(line: 1546, column: 31, scope: !2926)
!2933 = !DILocation(line: 1547, column: 7, scope: !2926)
!2934 = !DILocation(line: 1548, column: 23, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 1548, column: 11)
!2936 = !DILocation(line: 1548, column: 11, scope: !2926)
!2937 = !DILocation(line: 1550, column: 40, scope: !2926)
!2938 = !DILocation(line: 1550, column: 7, scope: !2926)
!2939 = !DILocation(line: 1550, column: 38, scope: !2926)
!2940 = !DILocation(line: 1551, column: 11, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 1551, column: 11)
!2942 = !DILocation(line: 1551, column: 20, scope: !2941)
!2943 = !DILocation(line: 1551, column: 23, scope: !2941)
!2944 = !DILocation(line: 1551, column: 50, scope: !2941)
!2945 = !DILocation(line: 1551, column: 47, scope: !2941)
!2946 = !DILocation(line: 1551, column: 11, scope: !2926)
!2947 = !DILocation(line: 1553, column: 8, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1552, column: 2)
!2949 = !DILocation(line: 1555, column: 20, scope: !2948)
!2950 = !DILocation(line: 1554, column: 4, scope: !2948)
!2951 = !DILocation(line: 1555, column: 6, scope: !2948)
!2952 = !DILocation(line: 0, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1566, column: 7)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 1565, column: 9)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1562, column: 3)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 1559, column: 12)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 1557, column: 6)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1556, column: 4)
!2959 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 1556, column: 4)
!2960 = !DILocation(line: 1556, column: 9, scope: !2959)
!2961 = !DILocation(line: 0, scope: !2959)
!2962 = !DILocation(line: 1556, column: 22, scope: !2958)
!2963 = !DILocation(line: 1556, column: 4, scope: !2959)
!2964 = !DILocation(line: 1558, column: 16, scope: !2957)
!2965 = !DILocation(line: 1559, column: 12, scope: !2956)
!2966 = !DILocation(line: 1559, column: 12, scope: !2957)
!2967 = !DILocation(line: 1560, column: 18, scope: !2956)
!2968 = !DILocation(line: 1560, column: 3, scope: !2956)
!2969 = !DILocation(line: 1560, column: 16, scope: !2956)
!2970 = !DILocation(line: 1563, column: 14, scope: !2955)
!2971 = !DILocation(line: 1564, column: 11, scope: !2955)
!2972 = !DILocation(line: 1565, column: 13, scope: !2954)
!2973 = !DILocation(line: 1565, column: 9, scope: !2955)
!2974 = !DILocation(line: 1572, column: 15, scope: !2953)
!2975 = !DILocation(line: 1573, column: 7, scope: !2953)
!2976 = !DILocation(line: 0, scope: !2955)
!2977 = !DILocation(line: 1574, column: 20, scope: !2955)
!2978 = !DILocation(line: 1574, column: 38, scope: !2955)
!2979 = !DILocation(line: 1574, column: 5, scope: !2955)
!2980 = !DILocation(line: 1574, column: 18, scope: !2955)
!2981 = !DILocation(line: 1556, column: 4, scope: !2958)
!2982 = distinct !{!2982, !2963, !2983}
!2983 = !DILocation(line: 1576, column: 6, scope: !2959)
!2984 = distinct !{!2984, !2921, !2985}
!2985 = !DILocation(line: 1578, column: 5, scope: !2922)
!2986 = !DILocation(line: 1579, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 1579, column: 7)
!2988 = !DILocation(line: 1579, column: 7, scope: !2906)
!2989 = !DILocation(line: 1580, column: 35, scope: !2987)
!2990 = !DILocation(line: 1580, column: 5, scope: !2987)
!2991 = !DILocation(line: 1582, column: 1, scope: !2906)
!2992 = distinct !DISubprogram(name: "finish_costs", scope: !3, file: !3, line: 1680, type: !2194, scopeLine: 1681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1770)
!2993 = !DILocation(line: 1682, column: 13, scope: !2992)
!2994 = !DILocation(line: 1682, column: 3, scope: !2992)
!2995 = !DILocation(line: 1683, column: 13, scope: !2992)
!2996 = !DILocation(line: 1683, column: 3, scope: !2992)
!2997 = !DILocation(line: 1684, column: 13, scope: !2992)
!2998 = !DILocation(line: 1684, column: 3, scope: !2992)
!2999 = !DILocation(line: 1685, column: 1, scope: !2992)
!3000 = distinct !DISubprogram(name: "ira_set_pseudo_classes", scope: !3, file: !3, line: 1705, type: !2350, scopeLine: 1706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3001)
!3001 = !{!3002}
!3002 = !DILocalVariable(name: "dump_file", arg: 1, scope: !3000, file: !3, line: 1705, type: !1777)
!3003 = !DILocation(line: 0, scope: !3000)
!3004 = !DILocation(line: 1707, column: 13, scope: !3000)
!3005 = !DILocation(line: 1708, column: 31, scope: !3000)
!3006 = !DILocation(line: 1708, column: 29, scope: !3000)
!3007 = !DILocation(line: 1709, column: 23, scope: !3000)
!3008 = !DILocation(line: 1709, column: 21, scope: !3000)
!3009 = !DILocation(line: 1710, column: 3, scope: !3000)
!3010 = !DILocation(line: 1711, column: 3, scope: !3000)
!3011 = !DILocation(line: 1712, column: 28, scope: !3000)
!3012 = !DILocation(line: 1713, column: 3, scope: !3000)
!3013 = !DILocation(line: 1714, column: 1, scope: !3000)
!3014 = distinct !DISubprogram(name: "ira_tune_allocno_costs_and_cover_classes", scope: !3, file: !3, line: 1722, type: !2194, scopeLine: 1723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026}
!3016 = !DILocalVariable(name: "j", scope: !3014, file: !3, line: 1724, type: !588)
!3017 = !DILocalVariable(name: "n", scope: !3014, file: !3, line: 1724, type: !588)
!3018 = !DILocalVariable(name: "regno", scope: !3014, file: !3, line: 1724, type: !588)
!3019 = !DILocalVariable(name: "cost", scope: !3014, file: !3, line: 1725, type: !588)
!3020 = !DILocalVariable(name: "min_cost", scope: !3014, file: !3, line: 1725, type: !588)
!3021 = !DILocalVariable(name: "reg_costs", scope: !3014, file: !3, line: 1725, type: !2459)
!3022 = !DILocalVariable(name: "cover_class", scope: !3014, file: !3, line: 1726, type: !5)
!3023 = !DILocalVariable(name: "rclass", scope: !3014, file: !3, line: 1726, type: !5)
!3024 = !DILocalVariable(name: "mode", scope: !3014, file: !3, line: 1727, type: !37)
!3025 = !DILocalVariable(name: "a", scope: !3014, file: !3, line: 1728, type: !2362)
!3026 = !DILocalVariable(name: "ai", scope: !3014, file: !3, line: 1729, type: !2469)
!3027 = !DILocation(line: 1728, column: 3, scope: !3014)
!3028 = !DILocation(line: 1729, column: 3, scope: !3014)
!3029 = !DILocation(line: 0, scope: !3014)
!3030 = !DILocation(line: 1731, column: 3, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1731, column: 3)
!3032 = !DILocation(line: 1731, column: 3, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 1731, column: 3)
!3034 = !DILocation(line: 1733, column: 21, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 1732, column: 5)
!3036 = !DILocation(line: 1734, column: 23, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1734, column: 11)
!3038 = !DILocation(line: 1734, column: 11, scope: !3035)
!3039 = !DILocation(line: 1736, column: 14, scope: !3035)
!3040 = !DILocation(line: 1739, column: 11, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1739, column: 11)
!3042 = !DILocation(line: 1739, column: 41, scope: !3041)
!3043 = !DILocation(line: 1739, column: 11, scope: !3035)
!3044 = !DILocation(line: 1737, column: 11, scope: !3035)
!3045 = !DILocation(line: 1742, column: 8, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 1740, column: 2)
!3047 = !DILocation(line: 1743, column: 7, scope: !3046)
!3048 = !DILocation(line: 1741, column: 4, scope: !3046)
!3049 = !DILocation(line: 1744, column: 16, scope: !3046)
!3050 = !DILocation(line: 0, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1750, column: 12)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 1746, column: 6)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 1745, column: 4)
!3054 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 1745, column: 4)
!3055 = !DILocation(line: 1745, column: 9, scope: !3054)
!3056 = !DILocation(line: 0, scope: !3035)
!3057 = !DILocation(line: 0, scope: !3054)
!3058 = !DILocation(line: 1745, column: 22, scope: !3053)
!3059 = !DILocation(line: 1745, column: 4, scope: !3054)
!3060 = !DILocation(line: 1747, column: 16, scope: !3052)
!3061 = !DILocation(line: 1748, column: 17, scope: !3052)
!3062 = !DILocation(line: 1750, column: 54, scope: !3051)
!3063 = !DILocation(line: 1750, column: 14, scope: !3051)
!3064 = !DILocation(line: 1750, column: 12, scope: !3052)
!3065 = !DILocation(line: 1752, column: 12, scope: !3051)
!3066 = !DILocation(line: 1753, column: 8, scope: !3051)
!3067 = !DILocation(line: 1754, column: 10, scope: !3051)
!3068 = !DILocation(line: 1754, column: 8, scope: !3051)
!3069 = !DILocation(line: 1753, column: 5, scope: !3051)
!3070 = !DILocation(line: 1752, column: 3, scope: !3051)
!3071 = !DILocation(line: 0, scope: !3052)
!3072 = !DILocation(line: 1761, column: 8, scope: !3052)
!3073 = !DILocation(line: 1761, column: 21, scope: !3052)
!3074 = !DILocation(line: 1762, column: 21, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1762, column: 12)
!3076 = !DILocation(line: 1762, column: 12, scope: !3052)
!3077 = !DILocation(line: 1763, column: 3, scope: !3075)
!3078 = !DILocation(line: 1745, column: 4, scope: !3053)
!3079 = distinct !{!3079, !3059, !3080}
!3080 = !DILocation(line: 1764, column: 6, scope: !3054)
!3081 = !DILocation(line: 1766, column: 20, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1766, column: 11)
!3083 = !DILocation(line: 1738, column: 16, scope: !3035)
!3084 = !DILocation(line: 1766, column: 11, scope: !3035)
!3085 = !DILocation(line: 1767, column: 2, scope: !3082)
!3086 = !DILocation(line: 1767, column: 31, scope: !3082)
!3087 = distinct !{!3087, !3030, !3088}
!3088 = !DILocation(line: 1768, column: 5, scope: !3031)
!3089 = !DILocation(line: 1769, column: 1, scope: !3014)
!3090 = distinct !DISubprogram(name: "ira_allocno_iter_init", scope: !2363, file: !2363, line: 939, type: !3091, scopeLine: 940, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{null, !3093}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "i", arg: 1, scope: !3090, file: !2363, line: 939, type: !3093)
!3096 = !DILocation(line: 0, scope: !3090)
!3097 = !DILocation(line: 941, column: 6, scope: !3090)
!3098 = !DILocation(line: 941, column: 8, scope: !3090)
!3099 = !DILocation(line: 942, column: 1, scope: !3090)
!3100 = distinct !DISubprogram(name: "ira_allocno_iter_cond", scope: !2363, file: !2363, line: 947, type: !3101, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!587, !3093, !2388}
!3103 = !{!3104, !3105, !3106}
!3104 = !DILocalVariable(name: "i", arg: 1, scope: !3100, file: !2363, line: 947, type: !3093)
!3105 = !DILocalVariable(name: "a", arg: 2, scope: !3100, file: !2363, line: 947, type: !2388)
!3106 = !DILocalVariable(name: "n", scope: !3100, file: !2363, line: 949, type: !588)
!3107 = !DILocation(line: 0, scope: !3100)
!3108 = !DILocation(line: 951, column: 15, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3100, file: !2363, line: 951, column: 3)
!3110 = !DILocation(line: 0, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3109, file: !2363, line: 951, column: 3)
!3112 = !DILocation(line: 0, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3111, file: !2363, line: 952, column: 9)
!3114 = !DILocation(line: 951, column: 8, scope: !3109)
!3115 = !DILocation(line: 0, scope: !3109)
!3116 = !DILocation(line: 951, column: 20, scope: !3111)
!3117 = !DILocation(line: 951, column: 3, scope: !3109)
!3118 = !DILocation(line: 952, column: 9, scope: !3113)
!3119 = !DILocation(line: 952, column: 25, scope: !3113)
!3120 = !DILocation(line: 952, column: 9, scope: !3111)
!3121 = !DILocation(line: 954, column: 5, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3113, file: !2363, line: 953, column: 7)
!3123 = !DILocation(line: 955, column: 11, scope: !3122)
!3124 = !DILocation(line: 955, column: 7, scope: !3122)
!3125 = !DILocation(line: 956, column: 2, scope: !3122)
!3126 = !DILocation(line: 951, column: 41, scope: !3111)
!3127 = !DILocation(line: 951, column: 3, scope: !3111)
!3128 = distinct !{!3128, !3117, !3129}
!3129 = !DILocation(line: 957, column: 7, scope: !3109)
!3130 = !DILocation(line: 959, column: 1, scope: !3100)
!3131 = distinct !DISubprogram(name: "ira_allocate_and_set_costs", scope: !2363, file: !2363, line: 1156, type: !3132, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3135)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !3134, !5, !588}
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141}
!3136 = !DILocalVariable(name: "vec", arg: 1, scope: !3131, file: !2363, line: 1156, type: !3134)
!3137 = !DILocalVariable(name: "cover_class", arg: 2, scope: !3131, file: !2363, line: 1156, type: !5)
!3138 = !DILocalVariable(name: "val", arg: 3, scope: !3131, file: !2363, line: 1156, type: !588)
!3139 = !DILocalVariable(name: "i", scope: !3131, file: !2363, line: 1158, type: !588)
!3140 = !DILocalVariable(name: "reg_costs", scope: !3131, file: !2363, line: 1158, type: !2459)
!3141 = !DILocalVariable(name: "len", scope: !3131, file: !2363, line: 1159, type: !588)
!3142 = !DILocation(line: 0, scope: !3131)
!3143 = !DILocation(line: 1161, column: 7, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3131, file: !2363, line: 1161, column: 7)
!3145 = !DILocation(line: 1161, column: 12, scope: !3144)
!3146 = !DILocation(line: 1161, column: 7, scope: !3131)
!3147 = !DILocation(line: 1163, column: 22, scope: !3131)
!3148 = !DILocation(line: 1163, column: 8, scope: !3131)
!3149 = !DILocation(line: 1164, column: 9, scope: !3131)
!3150 = !DILocation(line: 1165, column: 8, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3131, file: !2363, line: 1165, column: 3)
!3152 = !DILocation(line: 0, scope: !3151)
!3153 = !DILocation(line: 1165, column: 17, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3151, file: !2363, line: 1165, column: 3)
!3155 = !DILocation(line: 1165, column: 3, scope: !3151)
!3156 = !DILocation(line: 1166, column: 5, scope: !3154)
!3157 = !DILocation(line: 1166, column: 18, scope: !3154)
!3158 = !DILocation(line: 1165, column: 25, scope: !3154)
!3159 = !DILocation(line: 1165, column: 3, scope: !3154)
!3160 = distinct !{!3160, !3155, !3161}
!3161 = !DILocation(line: 1166, column: 20, scope: !3151)
!3162 = !DILocation(line: 1167, column: 1, scope: !3131)
!3163 = distinct !DISubprogram(name: "ira_hard_reg_not_in_set_p", scope: !2363, file: !2363, line: 1135, type: !3164, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!587, !588, !37, !1698}
!3166 = !{!3167, !3168, !3169, !3170}
!3167 = !DILocalVariable(name: "hard_regno", arg: 1, scope: !3163, file: !2363, line: 1135, type: !588)
!3168 = !DILocalVariable(name: "mode", arg: 2, scope: !3163, file: !2363, line: 1135, type: !37)
!3169 = !DILocalVariable(name: "hard_regset", arg: 3, scope: !3163, file: !2363, line: 1136, type: !1698)
!3170 = !DILocalVariable(name: "i", scope: !3163, file: !2363, line: 1138, type: !588)
!3171 = !DILocation(line: 0, scope: !3163)
!3172 = !DILocation(line: 1141, column: 12, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3163, file: !2363, line: 1141, column: 3)
!3174 = !DILocation(line: 1141, column: 8, scope: !3173)
!3175 = !DILocation(line: 0, scope: !3173)
!3176 = !DILocation(line: 1141, column: 54, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3173, file: !2363, line: 1141, column: 3)
!3178 = !DILocation(line: 1141, column: 3, scope: !3173)
!3179 = !DILocation(line: 1142, column: 9, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3177, file: !2363, line: 1142, column: 9)
!3181 = !DILocation(line: 1142, column: 9, scope: !3177)
!3182 = !DILocation(line: 1141, column: 3, scope: !3177)
!3183 = distinct !{!3183, !3178, !3184}
!3184 = !DILocation(line: 1143, column: 14, scope: !3173)
!3185 = !DILocation(line: 1145, column: 1, scope: !3163)
!3186 = distinct !DISubprogram(name: "process_bb_node_for_costs", scope: !3, file: !3, line: 1154, type: !3187, scopeLine: 1155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !2374}
!3189 = !{!3190, !3191}
!3190 = !DILocalVariable(name: "loop_tree_node", arg: 1, scope: !3186, file: !3, line: 1154, type: !2374)
!3191 = !DILocalVariable(name: "bb", scope: !3186, file: !3, line: 1156, type: !975)
!3192 = !DILocation(line: 0, scope: !3186)
!3193 = !DILocation(line: 1158, column: 24, scope: !3186)
!3194 = !DILocation(line: 1159, column: 10, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 1159, column: 7)
!3196 = !DILocation(line: 1159, column: 7, scope: !3186)
!3197 = !DILocation(line: 1160, column: 5, scope: !3195)
!3198 = !DILocation(line: 1161, column: 1, scope: !3186)
!3199 = distinct !DISubprogram(name: "process_bb_for_costs", scope: !3, file: !3, line: 1140, type: !3200, scopeLine: 1141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{null, !975}
!3202 = !{!3203, !3204}
!3203 = !DILocalVariable(name: "bb", arg: 1, scope: !3199, file: !3, line: 1140, type: !975)
!3204 = !DILocalVariable(name: "insn", scope: !3199, file: !3, line: 1142, type: !604)
!3205 = !DILocation(line: 0, scope: !3199)
!3206 = !DILocation(line: 1144, column: 15, scope: !3199)
!3207 = !DILocation(line: 1145, column: 17, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 1145, column: 7)
!3209 = !DILocation(line: 1145, column: 7, scope: !3199)
!3210 = !DILocation(line: 1147, column: 3, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 1147, column: 3)
!3212 = !DILocation(line: 0, scope: !3211)
!3213 = !DILocation(line: 1147, column: 3, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 1147, column: 3)
!3215 = !DILocation(line: 1148, column: 12, scope: !3214)
!3216 = distinct !{!3216, !3210, !3217}
!3217 = !DILocation(line: 1148, column: 31, scope: !3211)
!3218 = !DILocation(line: 1149, column: 1, scope: !3199)
!3219 = distinct !DISubprogram(name: "print_allocno_costs", scope: !3, file: !3, line: 1059, type: !2350, scopeLine: 1060, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3220)
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3229, !3230, !3231}
!3221 = !DILocalVariable(name: "f", arg: 1, scope: !3219, file: !3, line: 1059, type: !1777)
!3222 = !DILocalVariable(name: "k", scope: !3219, file: !3, line: 1061, type: !588)
!3223 = !DILocalVariable(name: "a", scope: !3219, file: !3, line: 1062, type: !2362)
!3224 = !DILocalVariable(name: "ai", scope: !3219, file: !3, line: 1063, type: !2469)
!3225 = !DILocalVariable(name: "i", scope: !3226, file: !3, line: 1069, type: !588)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 1068, column: 5)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 1067, column: 3)
!3228 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 1067, column: 3)
!3229 = !DILocalVariable(name: "rclass", scope: !3226, file: !3, line: 1069, type: !588)
!3230 = !DILocalVariable(name: "bb", scope: !3226, file: !3, line: 1070, type: !975)
!3231 = !DILocalVariable(name: "regno", scope: !3226, file: !3, line: 1071, type: !588)
!3232 = !DILocation(line: 0, scope: !3219)
!3233 = !DILocation(line: 1062, column: 3, scope: !3219)
!3234 = !DILocation(line: 1063, column: 3, scope: !3219)
!3235 = !DILocation(line: 1066, column: 3, scope: !3219)
!3236 = !DILocation(line: 1067, column: 3, scope: !3228)
!3237 = !DILocation(line: 1067, column: 3, scope: !3227)
!3238 = !DILocation(line: 1071, column: 19, scope: !3226)
!3239 = !DILocation(line: 0, scope: !3226)
!3240 = !DILocation(line: 1073, column: 11, scope: !3226)
!3241 = !DILocation(line: 1074, column: 7, scope: !3226)
!3242 = !DILocation(line: 1075, column: 17, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 1075, column: 11)
!3244 = !DILocation(line: 1075, column: 45, scope: !3243)
!3245 = !DILocation(line: 1075, column: 49, scope: !3243)
!3246 = !DILocation(line: 1075, column: 11, scope: !3226)
!3247 = !DILocation(line: 1076, column: 25, scope: !3243)
!3248 = !DILocation(line: 1076, column: 2, scope: !3243)
!3249 = !DILocation(line: 1078, column: 49, scope: !3243)
!3250 = !DILocation(line: 1078, column: 55, scope: !3243)
!3251 = !DILocation(line: 1078, column: 2, scope: !3243)
!3252 = !DILocation(line: 1079, column: 7, scope: !3226)
!3253 = !DILocation(line: 0, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1083, column: 8)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 1081, column: 2)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 1080, column: 7)
!3257 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 1080, column: 7)
!3258 = !DILocation(line: 1080, column: 12, scope: !3257)
!3259 = !DILocation(line: 0, scope: !3257)
!3260 = !DILocation(line: 1080, column: 23, scope: !3256)
!3261 = !DILocation(line: 1080, column: 21, scope: !3256)
!3262 = !DILocation(line: 1080, column: 7, scope: !3257)
!3263 = !DILocation(line: 1082, column: 13, scope: !3255)
!3264 = !DILocation(line: 1083, column: 8, scope: !3254)
!3265 = !DILocation(line: 1083, column: 37, scope: !3254)
!3266 = !DILocation(line: 1088, column: 8, scope: !3254)
!3267 = !DILocation(line: 1088, column: 13, scope: !3254)
!3268 = !DILocation(line: 1083, column: 8, scope: !3255)
!3269 = !DILocation(line: 1093, column: 30, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 1092, column: 6)
!3271 = !DILocation(line: 1094, column: 10, scope: !3270)
!3272 = !DILocation(line: 1094, column: 28, scope: !3270)
!3273 = !DILocation(line: 1093, column: 8, scope: !3270)
!3274 = !DILocation(line: 1095, column: 12, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 1095, column: 12)
!3276 = !DILocation(line: 1096, column: 5, scope: !3275)
!3277 = !DILocation(line: 1097, column: 22, scope: !3275)
!3278 = !DILocation(line: 1097, column: 54, scope: !3275)
!3279 = !DILocation(line: 1097, column: 3, scope: !3275)
!3280 = !DILocation(line: 1080, column: 42, scope: !3256)
!3281 = !DILocation(line: 1080, column: 7, scope: !3256)
!3282 = distinct !{!3282, !3262, !3283}
!3283 = !DILocation(line: 1099, column: 2, scope: !3257)
!3284 = !DILocation(line: 1100, column: 32, scope: !3226)
!3285 = !DILocation(line: 1100, column: 50, scope: !3226)
!3286 = !DILocation(line: 1100, column: 7, scope: !3226)
!3287 = distinct !{!3287, !3236, !3288}
!3288 = !DILocation(line: 1101, column: 5, scope: !3228)
!3289 = !DILocation(line: 1102, column: 1, scope: !3219)
!3290 = distinct !DISubprogram(name: "print_pseudo_costs", scope: !3, file: !3, line: 1106, type: !2350, scopeLine: 1107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3291)
!3291 = !{!3292, !3293, !3294, !3295}
!3292 = !DILocalVariable(name: "f", arg: 1, scope: !3290, file: !3, line: 1106, type: !1777)
!3293 = !DILocalVariable(name: "regno", scope: !3290, file: !3, line: 1108, type: !588)
!3294 = !DILocalVariable(name: "k", scope: !3290, file: !3, line: 1108, type: !588)
!3295 = !DILocalVariable(name: "rclass", scope: !3290, file: !3, line: 1109, type: !588)
!3296 = !DILocation(line: 0, scope: !3290)
!3297 = !DILocation(line: 1112, column: 3, scope: !3290)
!3298 = !DILocation(line: 1113, column: 16, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 1113, column: 3)
!3300 = !DILocation(line: 1113, column: 8, scope: !3299)
!3301 = !DILocation(line: 0, scope: !3299)
!3302 = !DILocation(line: 1113, column: 42, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 1113, column: 3)
!3304 = !DILocation(line: 1113, column: 3, scope: !3299)
!3305 = !DILocation(line: 1115, column: 11, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 1115, column: 11)
!3307 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 1114, column: 5)
!3308 = !DILocation(line: 1115, column: 32, scope: !3306)
!3309 = !DILocation(line: 1115, column: 11, scope: !3307)
!3310 = !DILocation(line: 1117, column: 7, scope: !3307)
!3311 = !DILocation(line: 1118, column: 12, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 1118, column: 7)
!3313 = !DILocation(line: 0, scope: !3312)
!3314 = !DILocation(line: 1118, column: 23, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 1118, column: 7)
!3316 = !DILocation(line: 1118, column: 21, scope: !3315)
!3317 = !DILocation(line: 1118, column: 7, scope: !3312)
!3318 = !DILocation(line: 1120, column: 13, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 1119, column: 2)
!3320 = !DILocation(line: 1121, column: 8, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 1121, column: 8)
!3322 = !DILocation(line: 1121, column: 37, scope: !3321)
!3323 = !DILocation(line: 1126, column: 8, scope: !3321)
!3324 = !DILocation(line: 1126, column: 13, scope: !3321)
!3325 = !DILocation(line: 1121, column: 8, scope: !3319)
!3326 = !DILocation(line: 1130, column: 28, scope: !3321)
!3327 = !DILocation(line: 1131, column: 8, scope: !3321)
!3328 = !DILocation(line: 1131, column: 30, scope: !3321)
!3329 = !DILocation(line: 1130, column: 6, scope: !3321)
!3330 = !DILocation(line: 1118, column: 42, scope: !3315)
!3331 = !DILocation(line: 1118, column: 7, scope: !3315)
!3332 = distinct !{!3332, !3317, !3333}
!3333 = !DILocation(line: 1132, column: 2, scope: !3312)
!3334 = !DILocation(line: 1133, column: 32, scope: !3307)
!3335 = !DILocation(line: 1133, column: 54, scope: !3307)
!3336 = !DILocation(line: 1133, column: 7, scope: !3307)
!3337 = !DILocation(line: 1134, column: 5, scope: !3307)
!3338 = !DILocation(line: 1113, column: 3, scope: !3303)
!3339 = distinct !{!3339, !3304, !3340}
!3340 = !DILocation(line: 1134, column: 5, scope: !3299)
!3341 = !DILocation(line: 1135, column: 1, scope: !3290)
!3342 = distinct !DISubprogram(name: "scan_one_insn", scope: !3, file: !3, line: 999, type: !3343, scopeLine: 1000, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!604, !604}
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3355, !3356, !3357, !3362, !3363}
!3346 = !DILocalVariable(name: "insn", arg: 1, scope: !3342, file: !3, line: 999, type: !604)
!3347 = !DILocalVariable(name: "pat_code", scope: !3342, file: !3, line: 1001, type: !420)
!3348 = !DILocalVariable(name: "set", scope: !3342, file: !3, line: 1002, type: !604)
!3349 = !DILocalVariable(name: "note", scope: !3342, file: !3, line: 1002, type: !604)
!3350 = !DILocalVariable(name: "i", scope: !3342, file: !3, line: 1003, type: !588)
!3351 = !DILocalVariable(name: "k", scope: !3342, file: !3, line: 1003, type: !588)
!3352 = !DILocalVariable(name: "cl", scope: !3353, file: !3, line: 1023, type: !5)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 1022, column: 5)
!3354 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 1019, column: 7)
!3355 = !DILocalVariable(name: "reg", scope: !3353, file: !3, line: 1024, type: !604)
!3356 = !DILocalVariable(name: "num", scope: !3353, file: !3, line: 1025, type: !588)
!3357 = !DILocalVariable(name: "regno", scope: !3358, file: !3, line: 1043, type: !588)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 1042, column: 7)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 1040, column: 9)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 1039, column: 3)
!3361 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 1039, column: 3)
!3362 = !DILocalVariable(name: "p", scope: !3358, file: !3, line: 1044, type: !595)
!3363 = !DILocalVariable(name: "q", scope: !3358, file: !3, line: 1045, type: !595)
!3364 = !DILocation(line: 0, scope: !3342)
!3365 = !DILocation(line: 1005, column: 8, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 1005, column: 7)
!3367 = !DILocation(line: 1005, column: 7, scope: !3342)
!3368 = !DILocation(line: 1008, column: 14, scope: !3342)
!3369 = !DILocation(line: 1009, column: 23, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 1009, column: 7)
!3371 = !DILocation(line: 1013, column: 9, scope: !3342)
!3372 = !DILocation(line: 1014, column: 3, scope: !3342)
!3373 = !DILocation(line: 1019, column: 11, scope: !3354)
!3374 = !DILocation(line: 1019, column: 16, scope: !3354)
!3375 = !DILocation(line: 1019, column: 19, scope: !3354)
!3376 = !DILocation(line: 1019, column: 42, scope: !3354)
!3377 = !DILocation(line: 1019, column: 45, scope: !3354)
!3378 = !DILocation(line: 1020, column: 7, scope: !3354)
!3379 = !DILocation(line: 1020, column: 18, scope: !3354)
!3380 = !DILocation(line: 1020, column: 61, scope: !3354)
!3381 = !DILocation(line: 1021, column: 7, scope: !3354)
!3382 = !DILocation(line: 1021, column: 10, scope: !3354)
!3383 = !DILocation(line: 1019, column: 7, scope: !3342)
!3384 = !DILocation(line: 0, scope: !3353)
!3385 = !DILocation(line: 1024, column: 17, scope: !3353)
!3386 = !DILocation(line: 1025, column: 17, scope: !3353)
!3387 = !DILocation(line: 1027, column: 11, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 1027, column: 11)
!3389 = !DILocation(line: 1027, column: 11, scope: !3353)
!3390 = !DILocation(line: 1028, column: 7, scope: !3388)
!3391 = !DILocation(line: 1028, column: 2, scope: !3388)
!3392 = !DILocation(line: 1030, column: 26, scope: !3353)
!3393 = !DILocation(line: 1030, column: 5, scope: !3353)
!3394 = !DILocation(line: 1030, column: 51, scope: !3353)
!3395 = !DILocation(line: 1030, column: 49, scope: !3353)
!3396 = !DILocation(line: 1029, column: 7, scope: !3353)
!3397 = !DILocation(line: 1029, column: 27, scope: !3353)
!3398 = !DILocation(line: 1030, column: 2, scope: !3353)
!3399 = !DILocation(line: 1031, column: 28, scope: !3353)
!3400 = !DILocation(line: 1031, column: 54, scope: !3353)
!3401 = !DILocation(line: 1032, column: 24, scope: !3353)
!3402 = !DILocation(line: 1032, column: 34, scope: !3353)
!3403 = !DILocation(line: 1031, column: 7, scope: !3353)
!3404 = !DILocation(line: 1033, column: 5, scope: !3353)
!3405 = !DILocation(line: 1035, column: 41, scope: !3342)
!3406 = !DILocation(line: 1035, column: 3, scope: !3342)
!3407 = !DILocation(line: 1039, column: 8, scope: !3361)
!3408 = !DILocation(line: 0, scope: !3361)
!3409 = !DILocation(line: 1039, column: 30, scope: !3360)
!3410 = !DILocation(line: 1039, column: 17, scope: !3360)
!3411 = !DILocation(line: 1039, column: 3, scope: !3361)
!3412 = !DILocation(line: 1040, column: 9, scope: !3359)
!3413 = !DILocation(line: 1041, column: 2, scope: !3359)
!3414 = !DILocation(line: 1041, column: 5, scope: !3359)
!3415 = !DILocation(line: 1041, column: 35, scope: !3359)
!3416 = !DILocation(line: 1040, column: 9, scope: !3360)
!3417 = !DILocation(line: 1043, column: 14, scope: !3358)
!3418 = !DILocation(line: 0, scope: !3358)
!3419 = !DILocation(line: 1044, column: 20, scope: !3358)
!3420 = !DILocation(line: 1045, column: 20, scope: !3358)
!3421 = !DILocation(line: 1047, column: 20, scope: !3358)
!3422 = !DILocation(line: 1047, column: 5, scope: !3358)
!3423 = !DILocation(line: 1047, column: 14, scope: !3358)
!3424 = !DILocation(line: 0, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1048, column: 2)
!3426 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 1048, column: 2)
!3427 = !DILocation(line: 1048, column: 7, scope: !3426)
!3428 = !DILocation(line: 0, scope: !3426)
!3429 = !DILocation(line: 1048, column: 18, scope: !3425)
!3430 = !DILocation(line: 1048, column: 16, scope: !3425)
!3431 = !DILocation(line: 1048, column: 2, scope: !3426)
!3432 = !DILocation(line: 1049, column: 18, scope: !3425)
!3433 = !DILocation(line: 1049, column: 4, scope: !3425)
!3434 = !DILocation(line: 1049, column: 15, scope: !3425)
!3435 = !DILocation(line: 1048, column: 37, scope: !3425)
!3436 = !DILocation(line: 1048, column: 2, scope: !3425)
!3437 = distinct !{!3437, !3431, !3438}
!3438 = !DILocation(line: 1049, column: 27, scope: !3426)
!3439 = !DILocation(line: 1039, column: 43, scope: !3360)
!3440 = !DILocation(line: 1039, column: 3, scope: !3360)
!3441 = distinct !{!3441, !3411, !3442}
!3442 = !DILocation(line: 1050, column: 7, scope: !3361)
!3443 = !DILocation(line: 1053, column: 1, scope: !3342)
!3444 = distinct !DISubprogram(name: "rhs_regno", scope: !421, file: !421, line: 1051, type: !3445, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3450)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!7, !3447}
!3447 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !605, line: 51, baseType: !3448)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!3450 = !{!3451}
!3451 = !DILocalVariable(name: "x", arg: 1, scope: !3444, file: !421, line: 1051, type: !3447)
!3452 = !DILocation(line: 0, scope: !3444)
!3453 = !DILocation(line: 1053, column: 10, scope: !3444)
!3454 = !DILocation(line: 1053, column: 3, scope: !3444)
!3455 = distinct !DISubprogram(name: "record_address_regs", scope: !3, file: !3, line: 753, type: !3456, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{null, !37, !604, !588, !420, !420, !588}
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3470, !3471, !3472, !3473, !3475, !3476, !3477, !3479}
!3459 = !DILocalVariable(name: "mode", arg: 1, scope: !3455, file: !3, line: 753, type: !37)
!3460 = !DILocalVariable(name: "x", arg: 2, scope: !3455, file: !3, line: 753, type: !604)
!3461 = !DILocalVariable(name: "context", arg: 3, scope: !3455, file: !3, line: 753, type: !588)
!3462 = !DILocalVariable(name: "outer_code", arg: 4, scope: !3455, file: !3, line: 754, type: !420)
!3463 = !DILocalVariable(name: "index_code", arg: 5, scope: !3455, file: !3, line: 754, type: !420)
!3464 = !DILocalVariable(name: "scale", arg: 6, scope: !3455, file: !3, line: 755, type: !588)
!3465 = !DILocalVariable(name: "code", scope: !3455, file: !3, line: 757, type: !420)
!3466 = !DILocalVariable(name: "rclass", scope: !3455, file: !3, line: 758, type: !5)
!3467 = !DILocalVariable(name: "arg0", scope: !3468, file: !3, line: 788, type: !604)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 787, column: 7)
!3469 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 766, column: 5)
!3470 = !DILocalVariable(name: "arg1", scope: !3468, file: !3, line: 789, type: !604)
!3471 = !DILocalVariable(name: "code0", scope: !3468, file: !3, line: 790, type: !420)
!3472 = !DILocalVariable(name: "code1", scope: !3468, file: !3, line: 791, type: !420)
!3473 = !DILocalVariable(name: "pp", scope: !3474, file: !3, line: 897, type: !595)
!3474 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 896, column: 7)
!3475 = !DILocalVariable(name: "i", scope: !3474, file: !3, line: 898, type: !5)
!3476 = !DILocalVariable(name: "k", scope: !3474, file: !3, line: 899, type: !588)
!3477 = !DILocalVariable(name: "fmt", scope: !3478, file: !3, line: 919, type: !593)
!3478 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 918, column: 7)
!3479 = !DILocalVariable(name: "i", scope: !3478, file: !3, line: 920, type: !588)
!3480 = !DILocation(line: 892, column: 7, scope: !3469)
!3481 = !DILocation(line: 0, scope: !3455)
!3482 = !DILocation(line: 757, column: 24, scope: !3455)
!3483 = !DILocation(line: 760, column: 15, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 760, column: 7)
!3485 = !DILocation(line: 760, column: 7, scope: !3455)
!3486 = !DILocation(line: 763, column: 14, scope: !3484)
!3487 = !DILocation(line: 0, scope: !3484)
!3488 = !DILocation(line: 765, column: 3, scope: !3455)
!3489 = !DILocation(line: 788, column: 13, scope: !3468)
!3490 = !DILocation(line: 0, scope: !3468)
!3491 = !DILocation(line: 789, column: 13, scope: !3468)
!3492 = !DILocation(line: 790, column: 24, scope: !3468)
!3493 = !DILocation(line: 791, column: 24, scope: !3468)
!3494 = !DILocation(line: 794, column: 12, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 794, column: 6)
!3496 = !DILocation(line: 794, column: 6, scope: !3468)
!3497 = !DILocation(line: 795, column: 11, scope: !3495)
!3498 = !DILocation(line: 795, column: 38, scope: !3495)
!3499 = !DILocation(line: 795, column: 4, scope: !3495)
!3500 = !DILocation(line: 796, column: 12, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 796, column: 6)
!3502 = !DILocation(line: 796, column: 6, scope: !3468)
!3503 = !DILocation(line: 797, column: 11, scope: !3501)
!3504 = !DILocation(line: 797, column: 38, scope: !3501)
!3505 = !DILocation(line: 797, column: 4, scope: !3501)
!3506 = !DILocation(line: 808, column: 30, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 808, column: 11)
!3508 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 801, column: 6)
!3509 = !DILocation(line: 817, column: 30, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 817, column: 11)
!3511 = !DILocation(line: 818, column: 4, scope: !3510)
!3512 = !DILocation(line: 822, column: 4, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 821, column: 11)
!3514 = !DILocation(line: 826, column: 17, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 826, column: 11)
!3516 = !DILocation(line: 826, column: 33, scope: !3515)
!3517 = !DILocation(line: 826, column: 24, scope: !3515)
!3518 = !DILocation(line: 827, column: 7, scope: !3515)
!3519 = !DILocation(line: 827, column: 20, scope: !3515)
!3520 = !DILocation(line: 828, column: 4, scope: !3515)
!3521 = !DILocation(line: 828, column: 8, scope: !3515)
!3522 = !DILocation(line: 829, column: 8, scope: !3515)
!3523 = !DILocation(line: 829, column: 11, scope: !3515)
!3524 = !DILocation(line: 826, column: 11, scope: !3513)
!3525 = !DILocation(line: 831, column: 11, scope: !3515)
!3526 = !DILocation(line: 830, column: 4, scope: !3515)
!3527 = !DILocation(line: 834, column: 24, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 834, column: 11)
!3529 = !DILocation(line: 835, column: 7, scope: !3528)
!3530 = !DILocation(line: 835, column: 20, scope: !3528)
!3531 = !DILocation(line: 836, column: 4, scope: !3528)
!3532 = !DILocation(line: 836, column: 8, scope: !3528)
!3533 = !DILocation(line: 837, column: 8, scope: !3528)
!3534 = !DILocation(line: 837, column: 11, scope: !3528)
!3535 = !DILocation(line: 834, column: 11, scope: !3515)
!3536 = !DILocation(line: 839, column: 11, scope: !3528)
!3537 = !DILocation(line: 838, column: 4, scope: !3528)
!3538 = !DILocation(line: 845, column: 25, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 845, column: 11)
!3540 = !DILocation(line: 845, column: 28, scope: !3539)
!3541 = !DILocation(line: 845, column: 57, scope: !3539)
!3542 = !DILocation(line: 845, column: 48, scope: !3539)
!3543 = !DILocation(line: 845, column: 11, scope: !3528)
!3544 = !DILocation(line: 847, column: 6, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 846, column: 4)
!3546 = !DILocation(line: 848, column: 6, scope: !3545)
!3547 = !DILocation(line: 850, column: 25, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 850, column: 11)
!3549 = !DILocation(line: 850, column: 28, scope: !3548)
!3550 = !DILocation(line: 850, column: 57, scope: !3548)
!3551 = !DILocation(line: 850, column: 48, scope: !3548)
!3552 = !DILocation(line: 850, column: 11, scope: !3539)
!3553 = !DILocation(line: 852, column: 6, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 851, column: 4)
!3555 = !DILocation(line: 853, column: 6, scope: !3554)
!3556 = !DILocation(line: 859, column: 61, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 858, column: 4)
!3558 = !DILocation(line: 859, column: 6, scope: !3557)
!3559 = !DILocation(line: 860, column: 6, scope: !3557)
!3560 = !DILocation(line: 861, column: 6, scope: !3557)
!3561 = !DILocation(line: 862, column: 6, scope: !3557)
!3562 = !DILocation(line: 872, column: 34, scope: !3469)
!3563 = !DILocation(line: 873, column: 7, scope: !3469)
!3564 = !DILocation(line: 873, column: 43, scope: !3469)
!3565 = !DILocation(line: 872, column: 7, scope: !3469)
!3566 = !DILocation(line: 874, column: 11, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 874, column: 11)
!3568 = !DILocation(line: 874, column: 11, scope: !3469)
!3569 = !DILocation(line: 875, column: 2, scope: !3567)
!3570 = !DILocation(line: 892, column: 34, scope: !3469)
!3571 = !DILocation(line: 892, column: 67, scope: !3469)
!3572 = !DILocation(line: 901, column: 6, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 901, column: 6)
!3574 = !DILocation(line: 901, column: 16, scope: !3573)
!3575 = !DILocation(line: 901, column: 6, scope: !3474)
!3576 = !DILocation(line: 904, column: 6, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 904, column: 6)
!3578 = !DILocation(line: 904, column: 6, scope: !3474)
!3579 = !DILocation(line: 905, column: 4, scope: !3577)
!3580 = !DILocation(line: 905, column: 64, scope: !3577)
!3581 = !DILocation(line: 906, column: 7, scope: !3474)
!3582 = !DILocation(line: 0, scope: !3474)
!3583 = !DILocation(line: 907, column: 19, scope: !3474)
!3584 = !DILocation(line: 907, column: 58, scope: !3474)
!3585 = !DILocation(line: 907, column: 67, scope: !3474)
!3586 = !DILocation(line: 907, column: 6, scope: !3474)
!3587 = !DILocation(line: 907, column: 15, scope: !3474)
!3588 = !DILocation(line: 0, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 909, column: 4)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 908, column: 2)
!3591 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 908, column: 2)
!3592 = !DILocation(line: 908, column: 7, scope: !3591)
!3593 = !DILocation(line: 0, scope: !3591)
!3594 = !DILocation(line: 908, column: 18, scope: !3590)
!3595 = !DILocation(line: 908, column: 16, scope: !3590)
!3596 = !DILocation(line: 908, column: 2, scope: !3591)
!3597 = !DILocation(line: 910, column: 10, scope: !3589)
!3598 = !DILocation(line: 912, column: 12, scope: !3589)
!3599 = !DILocation(line: 912, column: 59, scope: !3589)
!3600 = !DILocation(line: 912, column: 68, scope: !3589)
!3601 = !DILocation(line: 911, column: 6, scope: !3589)
!3602 = !DILocation(line: 912, column: 8, scope: !3589)
!3603 = !DILocation(line: 908, column: 37, scope: !3590)
!3604 = !DILocation(line: 908, column: 2, scope: !3590)
!3605 = distinct !{!3605, !3596, !3606}
!3606 = !DILocation(line: 913, column: 4, scope: !3591)
!3607 = !DILocation(line: 919, column: 20, scope: !3478)
!3608 = !DILocation(line: 0, scope: !3478)
!3609 = !DILocation(line: 921, column: 11, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 921, column: 2)
!3611 = !DILocation(line: 0, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 922, column: 8)
!3613 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 921, column: 2)
!3614 = !DILocation(line: 921, column: 7, scope: !3610)
!3615 = !DILocation(line: 0, scope: !3610)
!3616 = !DILocation(line: 921, column: 40, scope: !3613)
!3617 = !DILocation(line: 921, column: 2, scope: !3610)
!3618 = !DILocation(line: 922, column: 8, scope: !3612)
!3619 = !DILocation(line: 922, column: 15, scope: !3612)
!3620 = !DILocation(line: 922, column: 8, scope: !3613)
!3621 = !DILocation(line: 923, column: 33, scope: !3612)
!3622 = !DILocation(line: 923, column: 6, scope: !3612)
!3623 = !DILocation(line: 921, column: 2, scope: !3613)
!3624 = distinct !{!3624, !3617, !3625}
!3625 = !DILocation(line: 924, column: 11, scope: !3610)
!3626 = !DILocation(line: 927, column: 1, scope: !3455)
!3627 = distinct !DISubprogram(name: "record_operand_costs", scope: !3, file: !3, line: 933, type: !3628, scopeLine: 934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3631)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !604, !3630, !603}
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!3631 = !{!3632, !3633, !3634, !3635, !3637, !3639, !3640, !3645}
!3632 = !DILocalVariable(name: "insn", arg: 1, scope: !3627, file: !3, line: 933, type: !604)
!3633 = !DILocalVariable(name: "op_costs", arg: 2, scope: !3627, file: !3, line: 933, type: !3630)
!3634 = !DILocalVariable(name: "pref", arg: 3, scope: !3627, file: !3, line: 933, type: !603)
!3635 = !DILocalVariable(name: "constraints", scope: !3627, file: !3, line: 935, type: !3636)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 1920, elements: !1713)
!3637 = !DILocalVariable(name: "modes", scope: !3627, file: !3, line: 936, type: !3638)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 960, elements: !1713)
!3639 = !DILocalVariable(name: "i", scope: !3627, file: !3, line: 937, type: !588)
!3640 = !DILocalVariable(name: "xconstraints", scope: !3641, file: !3, line: 974, type: !3636)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 973, column: 7)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 972, column: 9)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 971, column: 3)
!3644 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 971, column: 3)
!3645 = !DILocalVariable(name: "j", scope: !3641, file: !3, line: 975, type: !588)
!3646 = !DILocation(line: 0, scope: !3627)
!3647 = !DILocation(line: 935, column: 3, scope: !3627)
!3648 = !DILocation(line: 935, column: 15, scope: !3627)
!3649 = !DILocation(line: 936, column: 3, scope: !3627)
!3650 = !DILocation(line: 936, column: 21, scope: !3627)
!3651 = !DILocation(line: 0, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 939, column: 3)
!3653 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 939, column: 3)
!3654 = !DILocation(line: 939, column: 8, scope: !3653)
!3655 = !DILocation(line: 0, scope: !3653)
!3656 = !DILocation(line: 939, column: 17, scope: !3652)
!3657 = !DILocation(line: 939, column: 3, scope: !3653)
!3658 = !DILocation(line: 950, column: 3, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 950, column: 3)
!3660 = !DILocation(line: 941, column: 24, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 940, column: 5)
!3662 = !DILocation(line: 941, column: 7, scope: !3661)
!3663 = !DILocation(line: 941, column: 22, scope: !3661)
!3664 = !DILocation(line: 942, column: 18, scope: !3661)
!3665 = !DILocation(line: 942, column: 7, scope: !3661)
!3666 = !DILocation(line: 942, column: 16, scope: !3661)
!3667 = !DILocation(line: 939, column: 43, scope: !3652)
!3668 = !DILocation(line: 939, column: 3, scope: !3652)
!3669 = distinct !{!3669, !3657, !3670}
!3670 = !DILocation(line: 943, column: 5, scope: !3653)
!3671 = !DILocation(line: 950, column: 30, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 950, column: 3)
!3673 = !DILocation(line: 950, column: 17, scope: !3672)
!3674 = !DILocation(line: 0, scope: !3641)
!3675 = !DILocation(line: 971, column: 3, scope: !3644)
!3676 = !DILocation(line: 952, column: 15, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 951, column: 5)
!3678 = !DILocation(line: 952, column: 28, scope: !3677)
!3679 = !DILocation(line: 952, column: 39, scope: !3677)
!3680 = !DILocation(line: 952, column: 7, scope: !3677)
!3681 = !DILocation(line: 954, column: 11, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 954, column: 11)
!3683 = !DILocation(line: 954, column: 44, scope: !3682)
!3684 = !DILocation(line: 954, column: 11, scope: !3677)
!3685 = !DILocation(line: 955, column: 26, scope: !3682)
!3686 = !DILocation(line: 955, column: 24, scope: !3682)
!3687 = !DILocation(line: 955, column: 2, scope: !3682)
!3688 = !DILocation(line: 957, column: 11, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 957, column: 11)
!3690 = !DILocation(line: 957, column: 11, scope: !3677)
!3691 = !DILocation(line: 958, column: 23, scope: !3689)
!3692 = !DILocation(line: 959, column: 9, scope: !3689)
!3693 = !DILocation(line: 960, column: 26, scope: !3689)
!3694 = !DILocation(line: 960, column: 36, scope: !3689)
!3695 = !DILocation(line: 958, column: 2, scope: !3689)
!3696 = !DILocation(line: 961, column: 16, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 961, column: 16)
!3698 = !DILocation(line: 961, column: 34, scope: !3697)
!3699 = !DILocation(line: 961, column: 16, scope: !3689)
!3700 = !DILocation(line: 965, column: 18, scope: !3697)
!3701 = !DILocation(line: 965, column: 28, scope: !3697)
!3702 = !DILocation(line: 964, column: 2, scope: !3697)
!3703 = !DILocation(line: 950, column: 43, scope: !3672)
!3704 = !DILocation(line: 950, column: 3, scope: !3672)
!3705 = distinct !{!3705, !3658, !3706}
!3706 = !DILocation(line: 966, column: 5, scope: !3659)
!3707 = !DILocation(line: 971, column: 36, scope: !3643)
!3708 = !DILocation(line: 0, scope: !3644)
!3709 = !DILocation(line: 971, column: 19, scope: !3643)
!3710 = !DILocation(line: 971, column: 47, scope: !3643)
!3711 = !DILocation(line: 971, column: 17, scope: !3643)
!3712 = !DILocation(line: 972, column: 9, scope: !3642)
!3713 = !DILocation(line: 972, column: 27, scope: !3642)
!3714 = !DILocation(line: 972, column: 9, scope: !3643)
!3715 = !DILocation(line: 971, column: 53, scope: !3643)
!3716 = !DILocation(line: 974, column: 2, scope: !3641)
!3717 = !DILocation(line: 974, column: 14, scope: !3641)
!3718 = !DILocation(line: 979, column: 7, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 979, column: 2)
!3720 = !DILocation(line: 0, scope: !3719)
!3721 = !DILocation(line: 979, column: 16, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 979, column: 2)
!3723 = !DILocation(line: 979, column: 2, scope: !3719)
!3724 = !DILocation(line: 980, column: 22, scope: !3722)
!3725 = !DILocation(line: 980, column: 4, scope: !3722)
!3726 = !DILocation(line: 980, column: 20, scope: !3722)
!3727 = !DILocation(line: 979, column: 42, scope: !3722)
!3728 = !DILocation(line: 979, column: 2, scope: !3722)
!3729 = distinct !{!3729, !3723, !3730}
!3730 = !DILocation(line: 980, column: 35, scope: !3719)
!3731 = !DILocation(line: 982, column: 33, scope: !3641)
!3732 = !DILocation(line: 982, column: 20, scope: !3641)
!3733 = !DILocation(line: 982, column: 2, scope: !3641)
!3734 = !DILocation(line: 982, column: 18, scope: !3641)
!3735 = !DILocation(line: 983, column: 2, scope: !3641)
!3736 = !DILocation(line: 983, column: 20, scope: !3641)
!3737 = !DILocation(line: 984, column: 33, scope: !3641)
!3738 = !DILocation(line: 984, column: 22, scope: !3641)
!3739 = !DILocation(line: 984, column: 2, scope: !3641)
!3740 = !DILocation(line: 987, column: 7, scope: !3642)
!3741 = !DILocation(line: 987, column: 7, scope: !3641)
!3742 = !DILocation(line: 971, column: 3, scope: !3643)
!3743 = distinct !{!3743, !3675, !3744}
!3744 = !DILocation(line: 987, column: 7, scope: !3644)
!3745 = !DILocation(line: 988, column: 34, scope: !3627)
!3746 = !DILocation(line: 988, column: 23, scope: !3627)
!3747 = !DILocation(line: 990, column: 9, scope: !3627)
!3748 = !DILocation(line: 988, column: 3, scope: !3627)
!3749 = !DILocation(line: 991, column: 1, scope: !3627)
!3750 = distinct !DISubprogram(name: "base_reg_class", scope: !3751, file: !3751, line: 25, type: !3752, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3754)
!3751 = !DIFile(filename: "./addresses.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!5, !37, !420, !420}
!3754 = !{!3755, !3756, !3757}
!3755 = !DILocalVariable(name: "mode", arg: 1, scope: !3750, file: !3751, line: 25, type: !37)
!3756 = !DILocalVariable(name: "outer_code", arg: 2, scope: !3750, file: !3751, line: 26, type: !420)
!3757 = !DILocalVariable(name: "index_code", arg: 3, scope: !3750, file: !3751, line: 27, type: !420)
!3758 = !DILocation(line: 0, scope: !3750)
!3759 = !DILocation(line: 39, column: 3, scope: !3750)
!3760 = distinct !DISubprogram(name: "ok_for_base_p_nonstrict", scope: !3, file: !3, line: 730, type: !3761, scopeLine: 732, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!587, !604, !37, !420, !420}
!3763 = !{!3764, !3765, !3766, !3767, !3768}
!3764 = !DILocalVariable(name: "reg", arg: 1, scope: !3760, file: !3, line: 730, type: !604)
!3765 = !DILocalVariable(name: "mode", arg: 2, scope: !3760, file: !3, line: 730, type: !37)
!3766 = !DILocalVariable(name: "outer_code", arg: 3, scope: !3760, file: !3, line: 731, type: !420)
!3767 = !DILocalVariable(name: "index_code", arg: 4, scope: !3760, file: !3, line: 731, type: !420)
!3768 = !DILocalVariable(name: "regno", scope: !3760, file: !3, line: 733, type: !7)
!3769 = !DILocation(line: 0, scope: !3760)
!3770 = !DILocation(line: 733, column: 20, scope: !3760)
!3771 = !DILocation(line: 735, column: 13, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 735, column: 7)
!3773 = !DILocation(line: 735, column: 7, scope: !3760)
!3774 = !DILocation(line: 737, column: 10, scope: !3760)
!3775 = !DILocation(line: 737, column: 3, scope: !3760)
!3776 = !DILocation(line: 738, column: 1, scope: !3760)
!3777 = distinct !DISubprogram(name: "ok_for_index_p_nonstrict", scope: !3, file: !3, line: 719, type: !3778, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!587, !604}
!3780 = !{!3781, !3782}
!3781 = !DILocalVariable(name: "reg", arg: 1, scope: !3777, file: !3, line: 719, type: !604)
!3782 = !DILocalVariable(name: "regno", scope: !3777, file: !3, line: 721, type: !7)
!3783 = !DILocation(line: 0, scope: !3777)
!3784 = !DILocation(line: 721, column: 20, scope: !3777)
!3785 = !DILocation(line: 723, column: 41, scope: !3777)
!3786 = !DILocation(line: 723, column: 44, scope: !3777)
!3787 = !DILocation(line: 723, column: 3, scope: !3777)
!3788 = distinct !DISubprogram(name: "ira_get_may_move_cost", scope: !2363, file: !2363, line: 918, type: !3789, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!588, !37, !5, !5, !587}
!3791 = !{!3792, !3793, !3794, !3795}
!3792 = !DILocalVariable(name: "mode", arg: 1, scope: !3788, file: !2363, line: 918, type: !37)
!3793 = !DILocalVariable(name: "from", arg: 2, scope: !3788, file: !2363, line: 919, type: !5)
!3794 = !DILocalVariable(name: "to", arg: 3, scope: !3788, file: !2363, line: 919, type: !5)
!3795 = !DILocalVariable(name: "in_p", arg: 4, scope: !3788, file: !2363, line: 920, type: !587)
!3796 = !DILocation(line: 0, scope: !3788)
!3797 = !DILocation(line: 922, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3788, file: !2363, line: 922, column: 7)
!3799 = !DILocation(line: 922, column: 36, scope: !3798)
!3800 = !DILocation(line: 922, column: 7, scope: !3788)
!3801 = !DILocation(line: 923, column: 5, scope: !3798)
!3802 = !DILocation(line: 924, column: 11, scope: !3788)
!3803 = !DILocation(line: 925, column: 6, scope: !3788)
!3804 = !DILocation(line: 926, column: 6, scope: !3788)
!3805 = !DILocation(line: 924, column: 3, scope: !3788)
!3806 = distinct !DISubprogram(name: "ok_for_base_p_1", scope: !3751, file: !3751, line: 50, type: !3807, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!587, !7, !37, !420, !420}
!3809 = !{!3810, !3811, !3812, !3813}
!3810 = !DILocalVariable(name: "regno", arg: 1, scope: !3806, file: !3751, line: 50, type: !7)
!3811 = !DILocalVariable(name: "mode", arg: 2, scope: !3806, file: !3751, line: 50, type: !37)
!3812 = !DILocalVariable(name: "outer_code", arg: 3, scope: !3806, file: !3751, line: 51, type: !420)
!3813 = !DILocalVariable(name: "index_code", arg: 4, scope: !3806, file: !3751, line: 52, type: !420)
!3814 = !DILocation(line: 0, scope: !3806)
!3815 = !DILocation(line: 64, column: 10, scope: !3806)
!3816 = !DILocation(line: 64, column: 3, scope: !3806)
!3817 = distinct !DISubprogram(name: "record_reg_classes", scope: !3, file: !3, line: 204, type: !3818, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3823)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !588, !588, !3820, !3821, !3822, !604, !3630, !603}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!3823 = !{!3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3839, !3844, !3845, !3846, !3847, !3848, !3849, !3853, !3854, !3855, !3856, !3857, !3858, !3864, !3867, !3872, !3875, !3880, !3881, !3882, !3887, !3888, !3894, !3895, !3896}
!3824 = !DILocalVariable(name: "n_alts", arg: 1, scope: !3817, file: !3, line: 204, type: !588)
!3825 = !DILocalVariable(name: "n_ops", arg: 2, scope: !3817, file: !3, line: 204, type: !588)
!3826 = !DILocalVariable(name: "ops", arg: 3, scope: !3817, file: !3, line: 204, type: !3820)
!3827 = !DILocalVariable(name: "modes", arg: 4, scope: !3817, file: !3, line: 205, type: !3821)
!3828 = !DILocalVariable(name: "constraints", arg: 5, scope: !3817, file: !3, line: 205, type: !3822)
!3829 = !DILocalVariable(name: "insn", arg: 6, scope: !3817, file: !3, line: 206, type: !604)
!3830 = !DILocalVariable(name: "op_costs", arg: 7, scope: !3817, file: !3, line: 206, type: !3630)
!3831 = !DILocalVariable(name: "pref", arg: 8, scope: !3817, file: !3, line: 207, type: !603)
!3832 = !DILocalVariable(name: "alt", scope: !3817, file: !3, line: 209, type: !588)
!3833 = !DILocalVariable(name: "i", scope: !3817, file: !3, line: 210, type: !588)
!3834 = !DILocalVariable(name: "j", scope: !3817, file: !3, line: 210, type: !588)
!3835 = !DILocalVariable(name: "k", scope: !3817, file: !3, line: 210, type: !588)
!3836 = !DILocalVariable(name: "set", scope: !3817, file: !3, line: 211, type: !604)
!3837 = !DILocalVariable(name: "insn_allows_mem", scope: !3817, file: !3, line: 212, type: !3838)
!3838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 960, elements: !1713)
!3839 = !DILocalVariable(name: "classes", scope: !3840, file: !3, line: 221, type: !3843)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 220, column: 5)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 219, column: 3)
!3842 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 219, column: 3)
!3843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 960, elements: !1713)
!3844 = !DILocalVariable(name: "allows_mem", scope: !3840, file: !3, line: 222, type: !3838)
!3845 = !DILocalVariable(name: "rclass", scope: !3840, file: !3, line: 223, type: !5)
!3846 = !DILocalVariable(name: "alt_fail", scope: !3840, file: !3, line: 224, type: !588)
!3847 = !DILocalVariable(name: "alt_cost", scope: !3840, file: !3, line: 225, type: !588)
!3848 = !DILocalVariable(name: "op_cost_add", scope: !3840, file: !3, line: 225, type: !588)
!3849 = !DILocalVariable(name: "c", scope: !3850, file: !3, line: 229, type: !587)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 228, column: 2)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 227, column: 7)
!3852 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 227, column: 7)
!3853 = !DILocalVariable(name: "p", scope: !3850, file: !3, line: 230, type: !593)
!3854 = !DILocalVariable(name: "op", scope: !3850, file: !3, line: 231, type: !604)
!3855 = !DILocalVariable(name: "mode", scope: !3850, file: !3, line: 232, type: !37)
!3856 = !DILocalVariable(name: "allows_addr", scope: !3850, file: !3, line: 233, type: !588)
!3857 = !DILocalVariable(name: "win", scope: !3850, file: !3, line: 234, type: !588)
!3858 = !DILocalVariable(name: "pp", scope: !3859, file: !3, line: 307, type: !595)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 302, column: 3)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 284, column: 17)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 268, column: 12)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 258, column: 6)
!3863 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 257, column: 8)
!3864 = !DILocalVariable(name: "pref_class", scope: !3865, file: !3, line: 340, type: !5)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 339, column: 7)
!3866 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 338, column: 9)
!3867 = !DILocalVariable(name: "pp", scope: !3868, file: !3, line: 549, type: !595)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 548, column: 3)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 537, column: 12)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 536, column: 6)
!3871 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 535, column: 8)
!3872 = !DILocalVariable(name: "pref_class", scope: !3873, file: !3, line: 581, type: !5)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !3, line: 580, column: 7)
!3874 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 579, column: 9)
!3875 = !DILocalVariable(name: "pp", scope: !3876, file: !3, line: 637, type: !595)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 636, column: 4)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 635, column: 6)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 634, column: 7)
!3879 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 634, column: 7)
!3880 = !DILocalVariable(name: "qq", scope: !3876, file: !3, line: 637, type: !595)
!3881 = !DILocalVariable(name: "scale", scope: !3876, file: !3, line: 638, type: !588)
!3882 = !DILocalVariable(name: "a", scope: !3883, file: !3, line: 652, type: !2362)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 651, column: 7)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 650, column: 5)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 650, column: 5)
!3886 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 649, column: 7)
!3887 = !DILocalVariable(name: "op", scope: !3883, file: !3, line: 653, type: !604)
!3888 = !DILocalVariable(name: "regno", scope: !3889, file: !3, line: 683, type: !7)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 682, column: 2)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 681, column: 11)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 680, column: 5)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 680, column: 5)
!3893 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 676, column: 7)
!3894 = !DILocalVariable(name: "mode", scope: !3889, file: !3, line: 684, type: !37)
!3895 = !DILocalVariable(name: "rclass", scope: !3889, file: !3, line: 685, type: !5)
!3896 = !DILocalVariable(name: "nr", scope: !3889, file: !3, line: 686, type: !7)
!3897 = !DILocation(line: 0, scope: !3817)
!3898 = !DILocation(line: 212, column: 3, scope: !3817)
!3899 = !DILocation(line: 212, column: 7, scope: !3817)
!3900 = !DILocation(line: 214, column: 8, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 214, column: 3)
!3902 = !DILocation(line: 0, scope: !3901)
!3903 = !DILocation(line: 214, column: 17, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 214, column: 3)
!3905 = !DILocation(line: 214, column: 3, scope: !3901)
!3906 = !DILocation(line: 0, scope: !3840)
!3907 = !DILocation(line: 0, scope: !3866)
!3908 = !DILocation(line: 219, column: 3, scope: !3842)
!3909 = !DILocation(line: 215, column: 5, scope: !3904)
!3910 = !DILocation(line: 215, column: 24, scope: !3904)
!3911 = !DILocation(line: 214, column: 27, scope: !3904)
!3912 = !DILocation(line: 214, column: 3, scope: !3904)
!3913 = distinct !{!3913, !3905, !3914}
!3914 = !DILocation(line: 215, column: 26, scope: !3901)
!3915 = !DILocation(line: 0, scope: !3842)
!3916 = !DILocation(line: 219, column: 21, scope: !3841)
!3917 = !DILocation(line: 221, column: 7, scope: !3840)
!3918 = !DILocation(line: 221, column: 22, scope: !3840)
!3919 = !DILocation(line: 222, column: 7, scope: !3840)
!3920 = !DILocation(line: 222, column: 11, scope: !3840)
!3921 = !DILocation(line: 227, column: 12, scope: !3852)
!3922 = !DILocation(line: 0, scope: !3852)
!3923 = !DILocation(line: 224, column: 11, scope: !3840)
!3924 = !DILocation(line: 225, column: 11, scope: !3840)
!3925 = !DILocation(line: 227, column: 21, scope: !3851)
!3926 = !DILocation(line: 227, column: 7, scope: !3852)
!3927 = !DILocation(line: 230, column: 20, scope: !3850)
!3928 = !DILocation(line: 0, scope: !3850)
!3929 = !DILocation(line: 231, column: 13, scope: !3850)
!3930 = !DILocation(line: 232, column: 29, scope: !3850)
!3931 = !DILocation(line: 237, column: 4, scope: !3850)
!3932 = !DILocation(line: 237, column: 15, scope: !3850)
!3933 = !DILocation(line: 238, column: 4, scope: !3850)
!3934 = !DILocation(line: 238, column: 18, scope: !3850)
!3935 = !DILocation(line: 242, column: 8, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 242, column: 8)
!3937 = !DILocation(line: 242, column: 11, scope: !3936)
!3938 = !DILocation(line: 242, column: 8, scope: !3850)
!3939 = !DILocation(line: 254, column: 4, scope: !3850)
!3940 = !DILocation(line: 244, column: 12, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 244, column: 12)
!3942 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 243, column: 6)
!3943 = !DILocation(line: 244, column: 23, scope: !3941)
!3944 = !DILocation(line: 244, column: 26, scope: !3941)
!3945 = !DILocation(line: 244, column: 37, scope: !3941)
!3946 = !DILocation(line: 244, column: 12, scope: !3942)
!3947 = !DILocation(line: 245, column: 11, scope: !3941)
!3948 = !DILocation(line: 245, column: 32, scope: !3941)
!3949 = !DILocation(line: 245, column: 3, scope: !3941)
!3950 = !DILocation(line: 254, column: 11, scope: !3850)
!3951 = !DILocation(line: 254, column: 14, scope: !3850)
!3952 = !DILocation(line: 254, column: 21, scope: !3850)
!3953 = !DILocation(line: 254, column: 27, scope: !3850)
!3954 = !DILocation(line: 254, column: 34, scope: !3850)
!3955 = !DILocation(line: 254, column: 40, scope: !3850)
!3956 = !DILocation(line: 254, column: 53, scope: !3850)
!3957 = !DILocation(line: 254, column: 47, scope: !3850)
!3958 = !DILocation(line: 255, column: 7, scope: !3850)
!3959 = distinct !{!3959, !3939, !3958}
!3960 = !DILocation(line: 257, column: 13, scope: !3863)
!3961 = !DILocation(line: 257, column: 20, scope: !3863)
!3962 = !DILocation(line: 257, column: 23, scope: !3863)
!3963 = !DILocation(line: 257, column: 28, scope: !3863)
!3964 = !DILocation(line: 257, column: 39, scope: !3863)
!3965 = !DILocation(line: 257, column: 43, scope: !3863)
!3966 = !DILocation(line: 257, column: 48, scope: !3863)
!3967 = !DILocation(line: 257, column: 55, scope: !3863)
!3968 = !DILocation(line: 257, column: 63, scope: !3863)
!3969 = !DILocation(line: 257, column: 8, scope: !3850)
!3970 = !DILocation(line: 262, column: 17, scope: !3862)
!3971 = !DILocation(line: 263, column: 21, scope: !3862)
!3972 = !DILocation(line: 263, column: 19, scope: !3862)
!3973 = !DILocation(line: 264, column: 24, scope: !3862)
!3974 = !DILocation(line: 264, column: 22, scope: !3862)
!3975 = !DILocation(line: 265, column: 12, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 265, column: 12)
!3977 = !DILocation(line: 265, column: 12, scope: !3862)
!3978 = !DILocation(line: 266, column: 3, scope: !3976)
!3979 = !DILocation(line: 266, column: 22, scope: !3976)
!3980 = !DILocation(line: 268, column: 14, scope: !3861)
!3981 = !DILocation(line: 268, column: 25, scope: !3861)
!3982 = !DILocation(line: 268, column: 28, scope: !3861)
!3983 = !DILocation(line: 268, column: 39, scope: !3861)
!3984 = !DILocation(line: 268, column: 12, scope: !3862)
!3985 = !DILocation(line: 272, column: 22, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 272, column: 9)
!3987 = distinct !DILexicalBlock(scope: !3861, file: !3, line: 269, column: 3)
!3988 = !DILocation(line: 272, column: 9, scope: !3986)
!3989 = !DILocation(line: 272, column: 9, scope: !3987)
!3990 = !DILocation(line: 278, column: 14, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 278, column: 14)
!3992 = !DILocation(line: 278, column: 25, scope: !3991)
!3993 = !DILocation(line: 278, column: 14, scope: !3986)
!3994 = !DILocation(line: 280, column: 21, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 279, column: 7)
!3996 = !DILocation(line: 280, column: 18, scope: !3995)
!3997 = !DILocation(line: 282, column: 7, scope: !3995)
!3998 = !DILocation(line: 284, column: 19, scope: !3860)
!3999 = !DILocation(line: 285, column: 10, scope: !3860)
!4000 = !DILocation(line: 285, column: 13, scope: !3860)
!4001 = !DILocation(line: 285, column: 28, scope: !3860)
!4002 = !DILocation(line: 284, column: 17, scope: !3861)
!4003 = !DILocation(line: 293, column: 9, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 293, column: 9)
!4005 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 286, column: 3)
!4006 = !DILocation(line: 293, column: 20, scope: !4004)
!4007 = !DILocation(line: 293, column: 9, scope: !4005)
!4008 = !DILocation(line: 299, column: 30, scope: !4004)
!4009 = !DILocation(line: 299, column: 19, scope: !4004)
!4010 = !DILocation(line: 299, column: 16, scope: !4004)
!4011 = !DILocation(line: 307, column: 24, scope: !3859)
!4012 = !DILocation(line: 0, scope: !3859)
!4013 = !DILocation(line: 0, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 310, column: 7)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 309, column: 5)
!4016 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 309, column: 5)
!4017 = !DILocation(line: 309, column: 10, scope: !4016)
!4018 = !DILocation(line: 309, column: 21, scope: !4015)
!4019 = !DILocation(line: 309, column: 19, scope: !4015)
!4020 = !DILocation(line: 309, column: 5, scope: !4016)
!4021 = !DILocation(line: 311, column: 18, scope: !4014)
!4022 = !DILocation(line: 313, column: 9, scope: !4014)
!4023 = !DILocation(line: 313, column: 36, scope: !4014)
!4024 = !DILocation(line: 314, column: 11, scope: !4014)
!4025 = !DILocation(line: 316, column: 11, scope: !4014)
!4026 = !DILocation(line: 316, column: 38, scope: !4014)
!4027 = !DILocation(line: 317, column: 13, scope: !4014)
!4028 = !DILocation(line: 316, column: 8, scope: !4014)
!4029 = !DILocation(line: 319, column: 9, scope: !4014)
!4030 = !DILocation(line: 319, column: 7, scope: !4014)
!4031 = !DILocation(line: 312, column: 9, scope: !4014)
!4032 = !DILocation(line: 313, column: 4, scope: !4014)
!4033 = !DILocation(line: 309, column: 40, scope: !4015)
!4034 = !DILocation(line: 309, column: 5, scope: !4015)
!4035 = distinct !{!4035, !4020, !4036}
!4036 = !DILocation(line: 320, column: 7, scope: !4016)
!4037 = !DILocation(line: 326, column: 11, scope: !3859)
!4038 = !DILocation(line: 326, column: 38, scope: !3859)
!4039 = !DILocation(line: 327, column: 6, scope: !3859)
!4040 = !DILocation(line: 328, column: 40, scope: !3859)
!4041 = !DILocation(line: 328, column: 13, scope: !3859)
!4042 = !DILocation(line: 329, column: 8, scope: !3859)
!4043 = !DILocation(line: 328, column: 10, scope: !3859)
!4044 = !DILocation(line: 330, column: 10, scope: !3859)
!4045 = !DILocation(line: 330, column: 29, scope: !3859)
!4046 = !DILocation(line: 330, column: 27, scope: !3859)
!4047 = !DILocation(line: 325, column: 9, scope: !3859)
!4048 = !DILocation(line: 326, column: 7, scope: !3859)
!4049 = !DILocation(line: 338, column: 9, scope: !3859)
!4050 = !DILocation(line: 340, column: 42, scope: !3865)
!4051 = !DILocation(line: 340, column: 37, scope: !3865)
!4052 = !DILocation(line: 0, scope: !3865)
!4053 = !DILocation(line: 342, column: 24, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 342, column: 13)
!4055 = !DILocation(line: 342, column: 13, scope: !3865)
!4056 = !DILocation(line: 344, column: 11, scope: !4054)
!4057 = !DILocation(line: 344, column: 38, scope: !4054)
!4058 = !DILocation(line: 345, column: 13, scope: !4054)
!4059 = !DILocation(line: 347, column: 40, scope: !4054)
!4060 = !DILocation(line: 347, column: 13, scope: !4054)
!4061 = !DILocation(line: 348, column: 8, scope: !4054)
!4062 = !DILocation(line: 347, column: 10, scope: !4054)
!4063 = !DILocation(line: 344, column: 6, scope: !4054)
!4064 = !DILocation(line: 343, column: 4, scope: !4054)
!4065 = !DILocation(line: 350, column: 18, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 350, column: 18)
!4067 = !DILocation(line: 351, column: 36, scope: !4066)
!4068 = !DILocation(line: 350, column: 18, scope: !4054)
!4069 = !DILocation(line: 352, column: 16, scope: !4066)
!4070 = !DILocation(line: 352, column: 13, scope: !4066)
!4071 = !DILocation(line: 352, column: 4, scope: !4066)
!4072 = !DILocation(line: 356, column: 9, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 356, column: 9)
!4074 = !DILocation(line: 356, column: 27, scope: !4073)
!4075 = !DILocation(line: 356, column: 24, scope: !4073)
!4076 = !DILocation(line: 357, column: 9, scope: !4073)
!4077 = !DILocation(line: 357, column: 14, scope: !4073)
!4078 = !DILocation(line: 358, column: 16, scope: !4073)
!4079 = !DILocation(line: 356, column: 9, scope: !3859)
!4080 = !DILocation(line: 363, column: 5, scope: !3859)
!4081 = !DILocation(line: 363, column: 12, scope: !3859)
!4082 = !DILocation(line: 363, column: 15, scope: !3859)
!4083 = !DILocation(line: 363, column: 20, scope: !3859)
!4084 = !DILocation(line: 363, column: 23, scope: !3859)
!4085 = distinct !{!4085, !4080, !4086}
!4086 = !DILocation(line: 364, column: 7, scope: !3859)
!4087 = !DILocation(line: 366, column: 20, scope: !3859)
!4088 = !DILocation(line: 0, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 480, column: 9)
!4090 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 378, column: 3)
!4091 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 376, column: 6)
!4092 = !DILocation(line: 0, scope: !4090)
!4093 = !DILocation(line: 0, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 470, column: 9)
!4095 = !DILocation(line: 0, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 421, column: 9)
!4097 = !DILocation(line: 375, column: 4, scope: !3850)
!4098 = !DILocation(line: 233, column: 8, scope: !3850)
!4099 = !DILocation(line: 273, column: 11, scope: !3986)
!4100 = !DILocation(line: 375, column: 16, scope: !3850)
!4101 = !DILocation(line: 377, column: 8, scope: !4091)
!4102 = !DILocation(line: 450, column: 9, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 450, column: 9)
!4104 = !DILocation(line: 383, column: 10, scope: !4090)
!4105 = !DILocation(line: 383, column: 9, scope: !4090)
!4106 = !DILocation(line: 384, column: 5, scope: !4090)
!4107 = !DILocation(line: 387, column: 14, scope: !4090)
!4108 = !DILocation(line: 387, column: 5, scope: !4090)
!4109 = !DILocation(line: 395, column: 32, scope: !4090)
!4110 = !DILocation(line: 395, column: 11, scope: !4090)
!4111 = !DILocation(line: 400, column: 9, scope: !4090)
!4112 = !DILocation(line: 401, column: 10, scope: !4090)
!4113 = !DILocation(line: 400, column: 7, scope: !4090)
!4114 = !DILocation(line: 402, column: 5, scope: !4090)
!4115 = !DILocation(line: 408, column: 40, scope: !4090)
!4116 = !DILocation(line: 408, column: 24, scope: !4090)
!4117 = !DILocation(line: 409, column: 9, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 409, column: 9)
!4119 = !DILocation(line: 409, column: 9, scope: !4090)
!4120 = !DILocation(line: 411, column: 5, scope: !4090)
!4121 = !DILocation(line: 414, column: 9, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 414, column: 9)
!4123 = !DILocation(line: 415, column: 9, scope: !4122)
!4124 = !DILocation(line: 415, column: 13, scope: !4122)
!4125 = !DILocation(line: 415, column: 37, scope: !4122)
!4126 = !DILocation(line: 416, column: 6, scope: !4122)
!4127 = !DILocation(line: 416, column: 33, scope: !4122)
!4128 = !DILocation(line: 414, column: 9, scope: !4090)
!4129 = !DILocation(line: 417, column: 7, scope: !4122)
!4130 = !DILocation(line: 421, column: 9, scope: !4096)
!4131 = !DILocation(line: 422, column: 9, scope: !4096)
!4132 = !DILocation(line: 422, column: 13, scope: !4096)
!4133 = !DILocation(line: 422, column: 37, scope: !4096)
!4134 = !DILocation(line: 423, column: 6, scope: !4096)
!4135 = !DILocation(line: 423, column: 33, scope: !4096)
!4136 = !DILocation(line: 421, column: 9, scope: !4090)
!4137 = !DILocation(line: 424, column: 7, scope: !4096)
!4138 = !DILocation(line: 429, column: 9, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 429, column: 9)
!4140 = !DILocation(line: 429, column: 23, scope: !4139)
!4141 = !DILocation(line: 430, column: 9, scope: !4139)
!4142 = !DILocation(line: 430, column: 27, scope: !4139)
!4143 = !DILocation(line: 431, column: 6, scope: !4139)
!4144 = !DILocation(line: 431, column: 10, scope: !4139)
!4145 = !DILocation(line: 432, column: 10, scope: !4139)
!4146 = !DILocation(line: 429, column: 9, scope: !4090)
!4147 = !DILocation(line: 433, column: 7, scope: !4139)
!4148 = !DILocation(line: 438, column: 9, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 438, column: 9)
!4150 = !DILocation(line: 438, column: 23, scope: !4149)
!4151 = !DILocation(line: 439, column: 9, scope: !4149)
!4152 = !DILocation(line: 439, column: 12, scope: !4149)
!4153 = !DILocation(line: 438, column: 9, scope: !4090)
!4154 = !DILocation(line: 444, column: 9, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 444, column: 9)
!4156 = !DILocation(line: 445, column: 9, scope: !4155)
!4157 = !DILocation(line: 445, column: 27, scope: !4155)
!4158 = !DILocation(line: 446, column: 6, scope: !4155)
!4159 = !DILocation(line: 446, column: 9, scope: !4155)
!4160 = !DILocation(line: 446, column: 23, scope: !4155)
!4161 = !DILocation(line: 444, column: 9, scope: !4090)
!4162 = !DILocation(line: 451, column: 9, scope: !4103)
!4163 = !DILocation(line: 451, column: 15, scope: !4103)
!4164 = !DILocation(line: 451, column: 24, scope: !4103)
!4165 = !DILocation(line: 451, column: 27, scope: !4103)
!4166 = !DILocation(line: 450, column: 9, scope: !4090)
!4167 = !DILocation(line: 452, column: 7, scope: !4103)
!4168 = !DILocation(line: 456, column: 9, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 456, column: 9)
!4170 = !DILocation(line: 457, column: 9, scope: !4169)
!4171 = !DILocation(line: 457, column: 27, scope: !4169)
!4172 = !DILocation(line: 458, column: 6, scope: !4169)
!4173 = !DILocation(line: 458, column: 9, scope: !4169)
!4174 = !DILocation(line: 458, column: 23, scope: !4169)
!4175 = !DILocation(line: 456, column: 9, scope: !4090)
!4176 = !DILocation(line: 459, column: 7, scope: !4169)
!4177 = !DILocation(line: 470, column: 9, scope: !4094)
!4178 = !DILocation(line: 471, column: 9, scope: !4094)
!4179 = !DILocation(line: 471, column: 12, scope: !4094)
!4180 = !DILocation(line: 470, column: 9, scope: !4090)
!4181 = !DILocation(line: 477, column: 5, scope: !4090)
!4182 = !DILocation(line: 480, column: 9, scope: !4089)
!4183 = !DILocation(line: 481, column: 9, scope: !4089)
!4184 = !DILocation(line: 481, column: 13, scope: !4089)
!4185 = !DILocation(line: 482, column: 6, scope: !4089)
!4186 = !DILocation(line: 482, column: 12, scope: !4089)
!4187 = !DILocation(line: 482, column: 21, scope: !4089)
!4188 = !DILocation(line: 482, column: 24, scope: !4089)
!4189 = !DILocation(line: 480, column: 9, scope: !4090)
!4190 = !DILocation(line: 483, column: 7, scope: !4089)
!4191 = !DILocation(line: 484, column: 40, scope: !4090)
!4192 = !DILocation(line: 484, column: 24, scope: !4090)
!4193 = !DILocation(line: 484, column: 5, scope: !4090)
!4194 = !DILocation(line: 486, column: 18, scope: !4090)
!4195 = !DILocation(line: 486, column: 16, scope: !4090)
!4196 = !DILocation(line: 487, column: 5, scope: !4090)
!4197 = !DILocation(line: 490, column: 9, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 490, column: 9)
!4199 = !DILocation(line: 490, column: 42, scope: !4198)
!4200 = !DILocation(line: 490, column: 9, scope: !4090)
!4201 = !DILocation(line: 491, column: 20, scope: !4198)
!4202 = !DILocation(line: 492, column: 21, scope: !4198)
!4203 = !DILocation(line: 491, column: 18, scope: !4198)
!4204 = !DILocation(line: 491, column: 7, scope: !4198)
!4205 = !DILocation(line: 494, column: 14, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 494, column: 14)
!4207 = !DILocation(line: 494, column: 14, scope: !4198)
!4208 = !DILocation(line: 521, column: 13, scope: !4091)
!4209 = !DILocation(line: 521, column: 10, scope: !4091)
!4210 = !DILocation(line: 522, column: 14, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4091, file: !3, line: 522, column: 12)
!4212 = !DILocation(line: 522, column: 12, scope: !4091)
!4213 = distinct !{!4213, !4097, !4214}
!4214 = !DILocation(line: 524, column: 6, scope: !3850)
!4215 = !DILocation(line: 526, column: 19, scope: !3850)
!4216 = !DILocation(line: 535, column: 8, scope: !3871)
!4217 = !DILocation(line: 535, column: 19, scope: !3871)
!4218 = !DILocation(line: 535, column: 22, scope: !3871)
!4219 = !DILocation(line: 535, column: 33, scope: !3871)
!4220 = !DILocation(line: 535, column: 8, scope: !3850)
!4221 = !DILocation(line: 537, column: 23, scope: !3869)
!4222 = !DILocation(line: 537, column: 12, scope: !3870)
!4223 = !DILocation(line: 549, column: 24, scope: !3868)
!4224 = !DILocation(line: 0, scope: !3868)
!4225 = !DILocation(line: 0, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 552, column: 7)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 551, column: 5)
!4228 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 551, column: 5)
!4229 = !DILocation(line: 551, column: 10, scope: !4228)
!4230 = !DILocation(line: 551, column: 21, scope: !4227)
!4231 = !DILocation(line: 551, column: 19, scope: !4227)
!4232 = !DILocation(line: 551, column: 5, scope: !4228)
!4233 = !DILocation(line: 553, column: 18, scope: !4226)
!4234 = !DILocation(line: 555, column: 9, scope: !4226)
!4235 = !DILocation(line: 555, column: 36, scope: !4226)
!4236 = !DILocation(line: 556, column: 11, scope: !4226)
!4237 = !DILocation(line: 558, column: 11, scope: !4226)
!4238 = !DILocation(line: 558, column: 38, scope: !4226)
!4239 = !DILocation(line: 559, column: 13, scope: !4226)
!4240 = !DILocation(line: 558, column: 8, scope: !4226)
!4241 = !DILocation(line: 561, column: 9, scope: !4226)
!4242 = !DILocation(line: 561, column: 7, scope: !4226)
!4243 = !DILocation(line: 554, column: 9, scope: !4226)
!4244 = !DILocation(line: 555, column: 4, scope: !4226)
!4245 = !DILocation(line: 551, column: 40, scope: !4227)
!4246 = !DILocation(line: 551, column: 5, scope: !4227)
!4247 = distinct !{!4247, !4232, !4248}
!4248 = !DILocation(line: 562, column: 7, scope: !4228)
!4249 = !DILocation(line: 568, column: 11, scope: !3868)
!4250 = !DILocation(line: 568, column: 38, scope: !3868)
!4251 = !DILocation(line: 569, column: 6, scope: !3868)
!4252 = !DILocation(line: 570, column: 40, scope: !3868)
!4253 = !DILocation(line: 570, column: 13, scope: !3868)
!4254 = !DILocation(line: 571, column: 8, scope: !3868)
!4255 = !DILocation(line: 570, column: 10, scope: !3868)
!4256 = !DILocation(line: 572, column: 10, scope: !3868)
!4257 = !DILocation(line: 572, column: 29, scope: !3868)
!4258 = !DILocation(line: 572, column: 27, scope: !3868)
!4259 = !DILocation(line: 567, column: 9, scope: !3868)
!4260 = !DILocation(line: 568, column: 7, scope: !3868)
!4261 = !DILocation(line: 579, column: 9, scope: !3868)
!4262 = !DILocation(line: 581, column: 42, scope: !3873)
!4263 = !DILocation(line: 581, column: 37, scope: !3873)
!4264 = !DILocation(line: 0, scope: !3873)
!4265 = !DILocation(line: 583, column: 24, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 583, column: 13)
!4267 = !DILocation(line: 583, column: 13, scope: !3873)
!4268 = !DILocation(line: 585, column: 11, scope: !4266)
!4269 = !DILocation(line: 585, column: 38, scope: !4266)
!4270 = !DILocation(line: 586, column: 13, scope: !4266)
!4271 = !DILocation(line: 588, column: 40, scope: !4266)
!4272 = !DILocation(line: 588, column: 13, scope: !4266)
!4273 = !DILocation(line: 589, column: 8, scope: !4266)
!4274 = !DILocation(line: 588, column: 10, scope: !4266)
!4275 = !DILocation(line: 585, column: 6, scope: !4266)
!4276 = !DILocation(line: 584, column: 4, scope: !4266)
!4277 = !DILocation(line: 591, column: 18, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 591, column: 18)
!4279 = !DILocation(line: 592, column: 11, scope: !4278)
!4280 = !DILocation(line: 591, column: 18, scope: !4266)
!4281 = !DILocation(line: 593, column: 16, scope: !4278)
!4282 = !DILocation(line: 593, column: 13, scope: !4278)
!4283 = !DILocation(line: 593, column: 4, scope: !4278)
!4284 = !DILocation(line: 604, column: 13, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 604, column: 13)
!4286 = !DILocation(line: 604, column: 17, scope: !4285)
!4287 = !DILocation(line: 604, column: 21, scope: !4285)
!4288 = !DILocation(line: 605, column: 7, scope: !4285)
!4289 = !DILocation(line: 606, column: 10, scope: !4285)
!4290 = !DILocation(line: 605, column: 10, scope: !4285)
!4291 = !DILocation(line: 604, column: 13, scope: !3871)
!4292 = !DILocation(line: 612, column: 24, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 612, column: 13)
!4294 = !DILocation(line: 612, column: 13, scope: !4285)
!4295 = !DILocation(line: 614, column: 12, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 614, column: 12)
!4297 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 613, column: 6)
!4298 = !DILocation(line: 614, column: 39, scope: !4296)
!4299 = !DILocation(line: 614, column: 12, scope: !4297)
!4300 = !DILocation(line: 615, column: 15, scope: !4296)
!4301 = !DILocation(line: 615, column: 12, scope: !4296)
!4302 = !DILocation(line: 617, column: 12, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 617, column: 12)
!4304 = !DILocation(line: 615, column: 3, scope: !4296)
!4305 = !DILocation(line: 617, column: 39, scope: !4303)
!4306 = !DILocation(line: 617, column: 12, scope: !4297)
!4307 = !DILocation(line: 618, column: 15, scope: !4303)
!4308 = !DILocation(line: 618, column: 12, scope: !4303)
!4309 = !DILocation(line: 618, column: 3, scope: !4303)
!4310 = !DILocation(line: 622, column: 13, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 622, column: 13)
!4312 = !DILocation(line: 622, column: 29, scope: !4311)
!4313 = !DILocation(line: 622, column: 33, scope: !4311)
!4314 = !DILocation(line: 622, column: 45, scope: !4311)
!4315 = !DILocation(line: 622, column: 48, scope: !4311)
!4316 = !DILocation(line: 622, column: 13, scope: !4293)
!4317 = !DILocation(line: 623, column: 18, scope: !4311)
!4318 = !DILocation(line: 623, column: 15, scope: !4311)
!4319 = !DILocation(line: 623, column: 6, scope: !4311)
!4320 = !DILocation(line: 227, column: 31, scope: !3851)
!4321 = !DILocation(line: 227, column: 7, scope: !3851)
!4322 = distinct !{!4322, !3926, !4323}
!4323 = !DILocation(line: 626, column: 2, scope: !3852)
!4324 = !DILocation(line: 628, column: 11, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 628, column: 11)
!4326 = !DILocation(line: 628, column: 11, scope: !3840)
!4327 = !DILocation(line: 631, column: 32, scope: !3840)
!4328 = !DILocation(line: 631, column: 30, scope: !3840)
!4329 = !DILocation(line: 634, column: 12, scope: !3879)
!4330 = !DILocation(line: 0, scope: !3879)
!4331 = !DILocation(line: 634, column: 21, scope: !3878)
!4332 = !DILocation(line: 634, column: 7, scope: !3879)
!4333 = !DILocation(line: 635, column: 6, scope: !3877)
!4334 = !DILocation(line: 635, column: 21, scope: !3877)
!4335 = !DILocation(line: 635, column: 24, scope: !3877)
!4336 = !DILocation(line: 635, column: 39, scope: !3877)
!4337 = !DILocation(line: 635, column: 6, scope: !3878)
!4338 = !DILocation(line: 637, column: 25, scope: !3876)
!4339 = !DILocation(line: 0, scope: !3876)
!4340 = !DILocation(line: 637, column: 44, scope: !3876)
!4341 = !DILocation(line: 638, column: 23, scope: !3876)
!4342 = !DILocation(line: 638, column: 50, scope: !3876)
!4343 = !DILocation(line: 638, column: 20, scope: !3876)
!4344 = !DILocation(line: 640, column: 21, scope: !3876)
!4345 = !DILocation(line: 640, column: 19, scope: !3876)
!4346 = !DILocation(line: 643, column: 11, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 643, column: 6)
!4348 = !DILocation(line: 0, scope: !4347)
!4349 = !DILocation(line: 643, column: 22, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 643, column: 6)
!4351 = !DILocation(line: 643, column: 20, scope: !4350)
!4352 = !DILocation(line: 643, column: 6, scope: !4347)
!4353 = !DILocation(line: 645, column: 5, scope: !4350)
!4354 = !DILocation(line: 645, column: 3, scope: !4350)
!4355 = !DILocation(line: 643, column: 41, scope: !4350)
!4356 = !DILocation(line: 643, column: 6, scope: !4350)
!4357 = distinct !{!4357, !4352, !4358}
!4358 = !DILocation(line: 645, column: 5, scope: !4347)
!4359 = !DILocation(line: 634, column: 31, scope: !3878)
!4360 = !DILocation(line: 634, column: 7, scope: !3878)
!4361 = distinct !{!4361, !4332, !4362}
!4362 = !DILocation(line: 646, column: 4, scope: !3879)
!4363 = !DILocation(line: 647, column: 5, scope: !3841)
!4364 = !DILocation(line: 219, column: 34, scope: !3841)
!4365 = !DILocation(line: 219, column: 3, scope: !3841)
!4366 = distinct !{!4366, !3908, !4367}
!4367 = !DILocation(line: 647, column: 5, scope: !3842)
!4368 = !DILocation(line: 649, column: 7, scope: !3886)
!4369 = !DILocation(line: 649, column: 7, scope: !3817)
!4370 = !DILocation(line: 650, column: 5, scope: !3885)
!4371 = !DILocation(line: 0, scope: !3885)
!4372 = !DILocation(line: 650, column: 19, scope: !3884)
!4373 = !DILocation(line: 653, column: 11, scope: !3883)
!4374 = !DILocation(line: 0, scope: !3883)
!4375 = !DILocation(line: 655, column: 8, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 655, column: 6)
!4377 = !DILocation(line: 655, column: 19, scope: !4376)
!4378 = !DILocation(line: 655, column: 22, scope: !4376)
!4379 = !DILocation(line: 655, column: 33, scope: !4376)
!4380 = !DILocation(line: 655, column: 6, scope: !3883)
!4381 = !DILocation(line: 657, column: 6, scope: !3883)
!4382 = !DILocation(line: 657, column: 34, scope: !3883)
!4383 = !DILocation(line: 658, column: 8, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 658, column: 6)
!4385 = !DILocation(line: 658, column: 32, scope: !4384)
!4386 = !DILocation(line: 658, column: 35, scope: !4384)
!4387 = !DILocation(line: 658, column: 54, scope: !4384)
!4388 = !DILocation(line: 658, column: 6, scope: !3883)
!4389 = !DILocation(line: 659, column: 28, scope: !4384)
!4390 = !DILocation(line: 659, column: 4, scope: !4384)
!4391 = !DILocation(line: 650, column: 29, scope: !3884)
!4392 = !DILocation(line: 650, column: 5, scope: !3884)
!4393 = distinct !{!4393, !4370, !4394}
!4394 = !DILocation(line: 660, column: 7, scope: !3885)
!4395 = !DILocation(line: 676, column: 14, scope: !3893)
!4396 = !DILocation(line: 676, column: 33, scope: !3893)
!4397 = !DILocation(line: 677, column: 7, scope: !3893)
!4398 = !DILocation(line: 677, column: 10, scope: !3893)
!4399 = !DILocation(line: 677, column: 20, scope: !3893)
!4400 = !DILocation(line: 677, column: 17, scope: !3893)
!4401 = !DILocation(line: 677, column: 35, scope: !3893)
!4402 = !DILocation(line: 677, column: 38, scope: !3893)
!4403 = !DILocation(line: 677, column: 48, scope: !3893)
!4404 = !DILocation(line: 677, column: 45, scope: !3893)
!4405 = !DILocation(line: 678, column: 7, scope: !3893)
!4406 = !DILocation(line: 678, column: 10, scope: !3893)
!4407 = !DILocation(line: 678, column: 25, scope: !3893)
!4408 = !DILocation(line: 678, column: 28, scope: !3893)
!4409 = !DILocation(line: 679, column: 7, scope: !3893)
!4410 = !DILocation(line: 679, column: 43, scope: !3893)
!4411 = !DILocation(line: 679, column: 10, scope: !3893)
!4412 = !DILocation(line: 676, column: 7, scope: !3817)
!4413 = !DILocation(line: 680, column: 5, scope: !3892)
!4414 = !DILocation(line: 0, scope: !3892)
!4415 = !DILocation(line: 680, column: 19, scope: !3891)
!4416 = !DILocation(line: 681, column: 11, scope: !3890)
!4417 = !DILocation(line: 681, column: 26, scope: !3890)
!4418 = !DILocation(line: 681, column: 11, scope: !3891)
!4419 = !DILocation(line: 683, column: 25, scope: !3889)
!4420 = !DILocation(line: 0, scope: !3889)
!4421 = !DILocation(line: 684, column: 29, scope: !3889)
!4422 = !DILocation(line: 688, column: 14, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 688, column: 8)
!4424 = !DILocation(line: 688, column: 8, scope: !3889)
!4425 = !DILocation(line: 0, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 692, column: 7)
!4427 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 690, column: 8)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 689, column: 6)
!4429 = distinct !DILexicalBlock(scope: !4423, file: !3, line: 689, column: 6)
!4430 = !DILocation(line: 0, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 700, column: 4)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 700, column: 4)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 699, column: 9)
!4434 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 696, column: 11)
!4435 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 695, column: 5)
!4436 = !DILocation(line: 0, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 707, column: 8)
!4438 = !DILocation(line: 689, column: 6, scope: !4429)
!4439 = !DILocation(line: 0, scope: !4429)
!4440 = !DILocation(line: 689, column: 22, scope: !4428)
!4441 = !DILocation(line: 689, column: 20, scope: !4428)
!4442 = !DILocation(line: 691, column: 12, scope: !4427)
!4443 = !DILocation(line: 692, column: 7, scope: !4426)
!4444 = !DILocation(line: 693, column: 7, scope: !4426)
!4445 = !DILocation(line: 693, column: 11, scope: !4426)
!4446 = !DILocation(line: 694, column: 18, scope: !4426)
!4447 = !DILocation(line: 694, column: 4, scope: !4426)
!4448 = !DILocation(line: 692, column: 7, scope: !4427)
!4449 = !DILocation(line: 696, column: 11, scope: !4434)
!4450 = !DILocation(line: 696, column: 34, scope: !4434)
!4451 = !DILocation(line: 696, column: 11, scope: !4435)
!4452 = !DILocation(line: 0, scope: !4432)
!4453 = !DILocation(line: 700, column: 4, scope: !4432)
!4454 = !DILocation(line: 701, column: 12, scope: !4431)
!4455 = !DILocation(line: 703, column: 12, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 703, column: 10)
!4457 = !DILocation(line: 703, column: 10, scope: !4431)
!4458 = !DILocation(line: 702, column: 11, scope: !4431)
!4459 = !DILocation(line: 700, column: 4, scope: !4431)
!4460 = distinct !{!4460, !4453, !4461}
!4461 = !DILocation(line: 705, column: 8, scope: !4432)
!4462 = !DILocation(line: 707, column: 11, scope: !4437)
!4463 = !DILocation(line: 707, column: 8, scope: !4433)
!4464 = !DILocation(line: 708, column: 30, scope: !4437)
!4465 = !DILocation(line: 708, column: 29, scope: !4437)
!4466 = !DILocation(line: 708, column: 6, scope: !4437)
!4467 = !DILocation(line: 708, column: 27, scope: !4437)
!4468 = !DILocation(line: 697, column: 33, scope: !4434)
!4469 = !DILocation(line: 697, column: 32, scope: !4434)
!4470 = !DILocation(line: 697, column: 9, scope: !4434)
!4471 = !DILocation(line: 697, column: 30, scope: !4434)
!4472 = !DILocation(line: 689, column: 41, scope: !4428)
!4473 = !DILocation(line: 689, column: 6, scope: !4428)
!4474 = distinct !{!4474, !4438, !4475}
!4475 = !DILocation(line: 711, column: 8, scope: !4429)
!4476 = !DILocation(line: 680, column: 26, scope: !3891)
!4477 = !DILocation(line: 680, column: 5, scope: !3891)
!4478 = distinct !{!4478, !4413, !4479}
!4479 = !DILocation(line: 712, column: 2, scope: !3892)
!4480 = !DILocation(line: 713, column: 1, scope: !3817)
!4481 = distinct !DISubprogram(name: "copy_cost", scope: !3, file: !3, line: 135, type: !4482, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4494)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!588, !604, !37, !5, !587, !4484}
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_typedef, name: "secondary_reload_info", file: !4486, line: 92, baseType: !4487)
!4486 = !DIFile(filename: "./target.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "secondary_reload_info", file: !4486, line: 81, size: 192, elements: !4488)
!4488 = !{!4489, !4490, !4491, !4493}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "icode", scope: !4487, file: !4486, line: 85, baseType: !588, size: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "extra_cost", scope: !4487, file: !4486, line: 86, baseType: !588, size: 32, offset: 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sri", scope: !4487, file: !4486, line: 90, baseType: !4492, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "t_icode", scope: !4487, file: !4486, line: 91, baseType: !588, size: 32, offset: 128)
!4494 = !{!4495, !4496, !4497, !4498, !4499, !4500, !4501}
!4495 = !DILocalVariable(name: "x", arg: 1, scope: !4481, file: !3, line: 135, type: !604)
!4496 = !DILocalVariable(name: "mode", arg: 2, scope: !4481, file: !3, line: 135, type: !37)
!4497 = !DILocalVariable(name: "rclass", arg: 3, scope: !4481, file: !3, line: 135, type: !5)
!4498 = !DILocalVariable(name: "to_p", arg: 4, scope: !4481, file: !3, line: 135, type: !587)
!4499 = !DILocalVariable(name: "prev_sri", arg: 5, scope: !4481, file: !3, line: 136, type: !4484)
!4500 = !DILocalVariable(name: "sri", scope: !4481, file: !3, line: 138, type: !4485)
!4501 = !DILocalVariable(name: "secondary_class", scope: !4481, file: !3, line: 139, type: !5)
!4502 = !DILocation(line: 0, scope: !4481)
!4503 = !DILocation(line: 138, column: 3, scope: !4481)
!4504 = !DILocation(line: 143, column: 7, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 143, column: 7)
!4506 = !DILocation(line: 143, column: 20, scope: !4505)
!4507 = !DILocation(line: 143, column: 7, scope: !4481)
!4508 = !DILocation(line: 147, column: 12, scope: !4481)
!4509 = !DILocation(line: 152, column: 7, scope: !4481)
!4510 = !DILocation(line: 152, column: 16, scope: !4481)
!4511 = !DILocation(line: 153, column: 7, scope: !4481)
!4512 = !DILocation(line: 153, column: 18, scope: !4481)
!4513 = !DILocation(line: 154, column: 29, scope: !4481)
!4514 = !DILocation(line: 154, column: 21, scope: !4481)
!4515 = !DILocation(line: 156, column: 23, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 156, column: 7)
!4517 = !DILocation(line: 156, column: 7, scope: !4481)
!4518 = !DILocation(line: 158, column: 12, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 158, column: 11)
!4520 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 157, column: 5)
!4521 = !DILocation(line: 158, column: 11, scope: !4520)
!4522 = !DILocation(line: 159, column: 9, scope: !4519)
!4523 = !DILocation(line: 160, column: 15, scope: !4520)
!4524 = !DILocation(line: 160, column: 62, scope: !4520)
!4525 = !DILocation(line: 160, column: 56, scope: !4520)
!4526 = !DILocation(line: 161, column: 10, scope: !4520)
!4527 = !DILocation(line: 161, column: 8, scope: !4520)
!4528 = !DILocation(line: 160, column: 7, scope: !4520)
!4529 = !DILocation(line: 167, column: 7, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 167, column: 7)
!4531 = !DILocation(line: 167, column: 27, scope: !4530)
!4532 = !DILocation(line: 167, column: 17, scope: !4530)
!4533 = !DILocation(line: 168, column: 16, scope: !4530)
!4534 = !DILocation(line: 168, column: 29, scope: !4530)
!4535 = !DILocation(line: 168, column: 69, scope: !4530)
!4536 = !DILocation(line: 168, column: 27, scope: !4530)
!4537 = !DILocation(line: 168, column: 5, scope: !4530)
!4538 = !DILocation(line: 169, column: 12, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 169, column: 12)
!4540 = !DILocation(line: 169, column: 12, scope: !4530)
!4541 = !DILocation(line: 171, column: 12, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 171, column: 11)
!4543 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 170, column: 5)
!4544 = !DILocation(line: 171, column: 11, scope: !4543)
!4545 = !DILocation(line: 172, column: 9, scope: !4542)
!4546 = !DILocation(line: 173, column: 32, scope: !4543)
!4547 = !DILocation(line: 173, column: 19, scope: !4543)
!4548 = !DILocation(line: 173, column: 48, scope: !4543)
!4549 = !DILocation(line: 173, column: 30, scope: !4543)
!4550 = !DILocation(line: 173, column: 7, scope: !4543)
!4551 = !DILocation(line: 178, column: 16, scope: !4539)
!4552 = !DILocation(line: 178, column: 27, scope: !4539)
!4553 = !DILocation(line: 178, column: 5, scope: !4539)
!4554 = !DILocation(line: 179, column: 1, scope: !4481)
!4555 = distinct !DISubprogram(name: "ira_get_register_move_cost", scope: !2363, file: !2363, line: 906, type: !4556, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4558)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!588, !37, !5, !5}
!4558 = !{!4559, !4560, !4561}
!4559 = !DILocalVariable(name: "mode", arg: 1, scope: !4555, file: !2363, line: 906, type: !37)
!4560 = !DILocalVariable(name: "from", arg: 2, scope: !4555, file: !2363, line: 907, type: !5)
!4561 = !DILocalVariable(name: "to", arg: 3, scope: !4555, file: !2363, line: 907, type: !5)
!4562 = !DILocation(line: 0, scope: !4555)
!4563 = !DILocation(line: 909, column: 7, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4555, file: !2363, line: 909, column: 7)
!4565 = !DILocation(line: 909, column: 36, scope: !4564)
!4566 = !DILocation(line: 909, column: 7, scope: !4555)
!4567 = !DILocation(line: 910, column: 5, scope: !4564)
!4568 = !DILocation(line: 911, column: 10, scope: !4555)
!4569 = !DILocation(line: 911, column: 3, scope: !4555)
!4570 = distinct !DISubprogram(name: "insn_constraint_len", scope: !4571, file: !4571, line: 177, type: !4572, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4574)
!4571 = !DIFile(filename: "./tm-preds.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!1167, !591, !593}
!4574 = !{!4575, !4576}
!4575 = !DILocalVariable(name: "fc", arg: 1, scope: !4570, file: !4571, line: 177, type: !591)
!4576 = !DILocalVariable(name: "str", arg: 2, scope: !4570, file: !4571, line: 177, type: !593)
!4577 = !DILocation(line: 0, scope: !4570)
!4578 = !DILocation(line: 179, column: 3, scope: !4570)
!4579 = !DILocation(line: 185, column: 1, scope: !4570)
!4580 = distinct !DISubprogram(name: "process_bb_node_for_hard_reg_moves", scope: !3, file: !3, line: 1461, type: !3187, scopeLine: 1462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4581)
!4581 = !{!4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598}
!4582 = !DILocalVariable(name: "loop_tree_node", arg: 1, scope: !4580, file: !3, line: 1461, type: !2374)
!4583 = !DILocalVariable(name: "i", scope: !4580, file: !3, line: 1463, type: !588)
!4584 = !DILocalVariable(name: "freq", scope: !4580, file: !3, line: 1463, type: !588)
!4585 = !DILocalVariable(name: "cost", scope: !4580, file: !3, line: 1463, type: !588)
!4586 = !DILocalVariable(name: "src_regno", scope: !4580, file: !3, line: 1463, type: !588)
!4587 = !DILocalVariable(name: "dst_regno", scope: !4580, file: !3, line: 1463, type: !588)
!4588 = !DILocalVariable(name: "hard_regno", scope: !4580, file: !3, line: 1463, type: !588)
!4589 = !DILocalVariable(name: "to_p", scope: !4580, file: !3, line: 1464, type: !587)
!4590 = !DILocalVariable(name: "a", scope: !4580, file: !3, line: 1465, type: !2362)
!4591 = !DILocalVariable(name: "rclass", scope: !4580, file: !3, line: 1466, type: !5)
!4592 = !DILocalVariable(name: "hard_reg_class", scope: !4580, file: !3, line: 1466, type: !5)
!4593 = !DILocalVariable(name: "mode", scope: !4580, file: !3, line: 1467, type: !37)
!4594 = !DILocalVariable(name: "bb", scope: !4580, file: !3, line: 1468, type: !975)
!4595 = !DILocalVariable(name: "insn", scope: !4580, file: !3, line: 1469, type: !604)
!4596 = !DILocalVariable(name: "set", scope: !4580, file: !3, line: 1469, type: !604)
!4597 = !DILocalVariable(name: "src", scope: !4580, file: !3, line: 1469, type: !604)
!4598 = !DILocalVariable(name: "dst", scope: !4580, file: !3, line: 1469, type: !604)
!4599 = !DILocation(line: 0, scope: !4580)
!4600 = !DILocation(line: 1471, column: 24, scope: !4580)
!4601 = !DILocation(line: 1472, column: 10, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 1472, column: 7)
!4603 = !DILocation(line: 1472, column: 7, scope: !4580)
!4604 = !DILocation(line: 1474, column: 10, scope: !4580)
!4605 = !DILocation(line: 1475, column: 12, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 1475, column: 7)
!4607 = !DILocation(line: 1475, column: 7, scope: !4580)
!4608 = !DILocation(line: 1477, column: 3, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 1477, column: 3)
!4610 = !DILocation(line: 0, scope: !4609)
!4611 = !DILocation(line: 1477, column: 3, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 1477, column: 3)
!4613 = !DILocation(line: 1479, column: 12, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1479, column: 11)
!4615 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 1478, column: 5)
!4616 = !DILocation(line: 1479, column: 11, scope: !4615)
!4617 = !DILocation(line: 1481, column: 13, scope: !4615)
!4618 = !DILocation(line: 1482, column: 15, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1482, column: 11)
!4620 = !DILocation(line: 1482, column: 11, scope: !4615)
!4621 = !DILocation(line: 1484, column: 13, scope: !4615)
!4622 = !DILocation(line: 1485, column: 13, scope: !4615)
!4623 = !DILocation(line: 1486, column: 13, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1486, column: 11)
!4625 = !DILocation(line: 1486, column: 25, scope: !4624)
!4626 = !DILocation(line: 1486, column: 30, scope: !4624)
!4627 = !DILocation(line: 1486, column: 11, scope: !4615)
!4628 = !DILocation(line: 1488, column: 19, scope: !4615)
!4629 = !DILocation(line: 1489, column: 19, scope: !4615)
!4630 = !DILocation(line: 1490, column: 21, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1490, column: 11)
!4632 = !DILocation(line: 1491, column: 17, scope: !4631)
!4633 = !DILocation(line: 1491, column: 4, scope: !4631)
!4634 = !DILocation(line: 1495, column: 8, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 1492, column: 2)
!4636 = !DILocation(line: 1496, column: 2, scope: !4635)
!4637 = !DILocation(line: 1497, column: 26, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 1497, column: 16)
!4639 = !DILocation(line: 1498, column: 22, scope: !4638)
!4640 = !DILocation(line: 1498, column: 9, scope: !4638)
!4641 = !DILocation(line: 1502, column: 8, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 1499, column: 2)
!4643 = !DILocation(line: 0, scope: !4631)
!4644 = !DILocation(line: 1506, column: 16, scope: !4615)
!4645 = !DILocation(line: 1507, column: 13, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1507, column: 11)
!4647 = !DILocation(line: 1507, column: 11, scope: !4615)
!4648 = !DILocation(line: 1509, column: 11, scope: !4615)
!4649 = !DILocation(line: 1510, column: 13, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1510, column: 11)
!4651 = !DILocation(line: 1510, column: 11, scope: !4615)
!4652 = !DILocation(line: 1512, column: 14, scope: !4615)
!4653 = !DILocation(line: 1513, column: 24, scope: !4615)
!4654 = !DILocation(line: 1515, column: 5, scope: !4615)
!4655 = !DILocation(line: 1515, column: 12, scope: !4615)
!4656 = !DILocation(line: 1516, column: 7, scope: !4615)
!4657 = !DILocation(line: 1516, column: 66, scope: !4615)
!4658 = !DILocation(line: 1517, column: 36, scope: !4615)
!4659 = !DILocation(line: 1518, column: 7, scope: !4615)
!4660 = !DILocation(line: 1517, column: 7, scope: !4615)
!4661 = !DILocation(line: 1519, column: 36, scope: !4615)
!4662 = !DILocation(line: 1519, column: 7, scope: !4615)
!4663 = !DILocation(line: 1521, column: 7, scope: !4615)
!4664 = !DILocation(line: 1521, column: 37, scope: !4615)
!4665 = !DILocation(line: 1522, column: 7, scope: !4615)
!4666 = !DILocation(line: 1522, column: 46, scope: !4615)
!4667 = !DILocation(line: 1523, column: 38, scope: !4615)
!4668 = !DILocation(line: 1523, column: 36, scope: !4615)
!4669 = !DILocation(line: 1525, column: 5, scope: !4615)
!4670 = distinct !{!4670, !4608, !4671}
!4671 = !DILocation(line: 1525, column: 5, scope: !4609)
!4672 = !DILocation(line: 1526, column: 1, scope: !4580)
