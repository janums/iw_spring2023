; ModuleID = 'bt-load.bc'
source_filename = "bt-load.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.gimple_seq_d = type opaque
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
%union.gimple_statement_d = type opaque
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.fibheap = type { i64, %struct.fibnode*, %struct.fibnode* }
%struct.fibnode = type { %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, i64, i8*, i32 }
%struct.btr_def_s = type { %struct.btr_def_s*, %struct.btr_def_s*, %struct.basic_block_def*, i32, %struct.rtx_def*, i32, i32, %struct.btr_def_group_s*, %struct.btr_user_s*, i8, i8, i8, i8, %struct.bitmap_head_def* }
%struct.btr_def_group_s = type { %struct.btr_def_group_s*, %struct.rtx_def*, %struct.btr_def_s* }
%struct.btr_user_s = type { %struct.btr_user_s*, %struct.basic_block_def*, i32, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.defs_uses_info = type { %struct.btr_user_s*, i64, i64, %struct.simple_bitmap_def*, %struct.simple_bitmap_def** }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.sbitmap_iterator = type { i64*, i32, i32, i32, i64 }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"btl1\00", align 1
@pass_branch_target_load_optimize1 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_handle_branch_target_load_optimize1, i32 ()* @rest_of_handle_branch_target_load_optimize1, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1027 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"btl2\00", align 1
@pass_branch_target_load_optimize2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8 ()* @gate_handle_branch_target_load_optimize2, i32 ()* @rest_of_handle_branch_target_load_optimize2, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3 } }, align 8, !dbg !1987
@flag_branch_target_load_optimize = external dso_local local_unnamed_addr global i32, align 4
@epilogue_completed = external dso_local local_unnamed_addr global i32, align 4
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@issue_rate = internal unnamed_addr global i32 0, align 4, !dbg !2015
@optimize = external dso_local local_unnamed_addr global i32, align 4
@migrate_btrl_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !2017
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Basic block %d: count = %ld loop-depth = %d idom = %d\0A\00", align 1
@all_btrs = internal unnamed_addr global i64 0, align 8, !dbg !2019
@first_btr = internal unnamed_addr global i32 0, align 4, !dbg !2021
@reg_class_contents = external dso_local local_unnamed_addr global [27 x i64], align 16
@call_used_regs = external dso_local local_unnamed_addr global [53 x i8], align 16
@last_btr = internal unnamed_addr global i32 0, align 4, !dbg !2023
@btrs_live = internal unnamed_addr global i64* null, align 8, !dbg !2025
@btrs_live_at_end = internal unnamed_addr global i64* null, align 8, !dbg !2027
@.str.3 = private unnamed_addr constant [48 x i8] c"Putting insn %d back on queue with priority %d\0A\00", align 1
@call_used_reg_set = external dso_local local_unnamed_addr global i64, align 8
@regno_reg_rtx = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"bt-load.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@rtx_class = external dso_local local_unnamed_addr constant [139 x i32], align 16
@.str.6 = private unnamed_addr constant [71 x i8] c"Found target reg definition: sets %u { bb %d, insn %d }%s priority %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [11 x i8] c":not const\00", align 1
@btr_reference_found = internal unnamed_addr global %struct.rtx_def** null, align 8, !dbg !2029
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@.str.9 = private unnamed_addr constant [36 x i8] c"Uses target reg: { bb %d, insn %d }\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c": unambiguous use of reg %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"BB%d live:\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Def in insn %d reaches use in insn %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"(use %d has multiple reaching defs)\0A\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"Attempting to migrate pt from insn %d (cost = %d, min_cost = %d) ... \00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"it's not migratable\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"it's already combined with another pt\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"trying block %d ...\00", align 1
@flag_btr_bb_exclusive = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"Now btrs live in range are: \00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"giving up because there are no free target registers\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"failed to move\0A\00", align 1
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@.str.23 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"Adding end of block %d and rest of %d to live range\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Now live btrs are \00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Adding block %d to live range\0A\00", align 1
@reg_alloc_order = external dso_local local_unnamed_addr global [53 x i32], align 16
@.str.27 = private unnamed_addr constant [43 x i8] c"migrating to basic block %d, using reg %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"New pt is insn %d, inserted after insn %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"Combining def in insn %d with def in insn %d\0A\00", align 1
@flag_branch_target_load_optimize2 = external dso_local local_unnamed_addr global i32, align 4
@rest_of_handle_branch_target_load_optimize2.warned = internal unnamed_addr global i1 false, align 4, !dbg !2036
@.str.30 = private unnamed_addr constant [73 x i8] c"branch target register load optimization is not intended to be run twice\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2041 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2054, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2055, metadata !DIExpression()), !dbg !2056
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2057
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2058
  ret i32 %call, !dbg !2059
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2060 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2063
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2064
  ret i32 %call, !dbg !2065
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2066 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2121, metadata !DIExpression()), !dbg !2122
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2123
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2123
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2123
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2123
  %cmp = icmp uge i8* %0, %1, !dbg !2123
  %conv1 = zext i1 %cmp to i64, !dbg !2123
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2123
  %tobool = icmp eq i64 %expval, 0, !dbg !2123
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2123

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2123
  br label %cond.end, !dbg !2123

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2123
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2123
  %2 = load i8, i8* %0, align 1, !dbg !2123
  %conv3 = zext i8 %2 to i32, !dbg !2123
  br label %cond.end, !dbg !2123

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2123
  ret i32 %cond, !dbg !2124
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2125 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2127, metadata !DIExpression()), !dbg !2128
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2129
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2129
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2129
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2129
  %cmp = icmp uge i8* %0, %1, !dbg !2129
  %conv1 = zext i1 %cmp to i64, !dbg !2129
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2129
  %tobool = icmp eq i64 %expval, 0, !dbg !2129
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2129

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2129
  br label %cond.end, !dbg !2129

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2129
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2129
  %2 = load i8, i8* %0, align 1, !dbg !2129
  %conv3 = zext i8 %2 to i32, !dbg !2129
  br label %cond.end, !dbg !2129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2129
  ret i32 %cond, !dbg !2130
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2131 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2132
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2132
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2132
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2132
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2132
  %cmp = icmp uge i8* %1, %2, !dbg !2132
  %conv1 = zext i1 %cmp to i64, !dbg !2132
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2132
  %tobool = icmp eq i64 %expval, 0, !dbg !2132
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2132

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2132
  br label %cond.end, !dbg !2132

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2132
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2132
  %3 = load i8, i8* %1, align 1, !dbg !2132
  %conv3 = zext i8 %3 to i32, !dbg !2132
  br label %cond.end, !dbg !2132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2132
  ret i32 %cond, !dbg !2133
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2134 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2138, metadata !DIExpression()), !dbg !2139
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2140
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2141
  ret i32 %call, !dbg !2142
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2143 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2147, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2148, metadata !DIExpression()), !dbg !2149
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2150
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2150
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2150
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2150
  %cmp = icmp uge i8* %0, %1, !dbg !2150
  %conv1 = zext i1 %cmp to i64, !dbg !2150
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2150
  %tobool = icmp eq i64 %expval, 0, !dbg !2150
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2150

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2150
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2150
  br label %cond.end, !dbg !2150

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2150
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2150
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2150
  store i8 %conv2, i8* %0, align 1, !dbg !2150
  %conv6 = and i32 %__c, 255, !dbg !2150
  br label %cond.end, !dbg !2150

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2150
  ret i32 %cond, !dbg !2151
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2152 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2154, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2155, metadata !DIExpression()), !dbg !2156
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2157
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2157
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2157
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2157
  %cmp = icmp uge i8* %0, %1, !dbg !2157
  %conv1 = zext i1 %cmp to i64, !dbg !2157
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2157
  %tobool = icmp eq i64 %expval, 0, !dbg !2157
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2157

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2157
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2157
  br label %cond.end, !dbg !2157

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2157
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2157
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2157
  store i8 %conv2, i8* %0, align 1, !dbg !2157
  %conv6 = and i32 %__c, 255, !dbg !2157
  br label %cond.end, !dbg !2157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2157
  ret i32 %cond, !dbg !2158
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2159 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2161, metadata !DIExpression()), !dbg !2162
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2163
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2163
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2163
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2163
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2163
  %cmp = icmp uge i8* %1, %2, !dbg !2163
  %conv1 = zext i1 %cmp to i64, !dbg !2163
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2163
  %tobool = icmp eq i64 %expval, 0, !dbg !2163
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2163

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2163
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2163
  br label %cond.end, !dbg !2163

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2163
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2163
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2163
  store i8 %conv4, i8* %1, align 1, !dbg !2163
  %conv6 = and i32 %__c, 255, !dbg !2163
  br label %cond.end, !dbg !2163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2163
  ret i32 %cond, !dbg !2164
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2165 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2171, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2172, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2173, metadata !DIExpression()), !dbg !2174
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2175
  ret i64 %call, !dbg !2176
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2177 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2179, metadata !DIExpression()), !dbg !2180
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2181
  %0 = load i32, i32* %_flags, align 8, !dbg !2181
  %and = lshr i32 %0, 4, !dbg !2181
  %and.lobit = and i32 %and, 1, !dbg !2181
  ret i32 %and.lobit, !dbg !2182
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2183 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2185, metadata !DIExpression()), !dbg !2186
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2187
  %0 = load i32, i32* %_flags, align 8, !dbg !2187
  %and = lshr i32 %0, 5, !dbg !2187
  %and.lobit = and i32 %and, 1, !dbg !2187
  ret i32 %and.lobit, !dbg !2188
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2189 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2192, metadata !DIExpression()), !dbg !2193
  %__c.off = add i32 %__c, 128, !dbg !2194
  %0 = icmp ult i32 %__c.off, 384, !dbg !2194
  br i1 %0, label %cond.true, label %cond.end, !dbg !2194

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2195
  %1 = load i32*, i32** %call, align 8, !dbg !2196
  %idxprom = sext i32 %__c to i64, !dbg !2197
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2197
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2197
  br label %cond.end, !dbg !2198

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2198
  ret i32 %cond, !dbg !2199
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2200 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2202, metadata !DIExpression()), !dbg !2203
  %__c.off = add i32 %__c, 128, !dbg !2204
  %0 = icmp ult i32 %__c.off, 384, !dbg !2204
  br i1 %0, label %cond.true, label %cond.end, !dbg !2204

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2205
  %1 = load i32*, i32** %call, align 8, !dbg !2206
  %idxprom = sext i32 %__c to i64, !dbg !2207
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2207
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2207
  br label %cond.end, !dbg !2208

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2208
  ret i32 %cond, !dbg !2209
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2210 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2215, metadata !DIExpression()), !dbg !2216
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2217
  %conv = trunc i64 %call to i32, !dbg !2218
  ret i32 %conv, !dbg !2219
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2220 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2224, metadata !DIExpression()), !dbg !2225
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2226
  ret i64 %call, !dbg !2227
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2228 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2233, metadata !DIExpression()), !dbg !2234
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2235
  ret i64 %call, !dbg !2236
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2237 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2243, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2244, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2245, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2246, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2247, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i64 0, metadata !2248, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2249, metadata !DIExpression()), !dbg !2253
  br label %while.cond, !dbg !2254

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2255
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2253
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2249, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2248, metadata !DIExpression()), !dbg !2253
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2256
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2254

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2257
  %div = lshr i64 %add, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %div, metadata !2250, metadata !DIExpression()), !dbg !2253
  %mul = mul i64 %div, %__size, !dbg !2260
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2261
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2251, metadata !DIExpression()), !dbg !2253
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2262
  call void @llvm.dbg.value(metadata i32 %call, metadata !2252, metadata !DIExpression()), !dbg !2253
  %cmp1 = icmp slt i32 %call, 0, !dbg !2263
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2265

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2266
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2268

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2248, metadata !DIExpression()), !dbg !2253
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2253
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2253
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2249, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2248, metadata !DIExpression()), !dbg !2253
  br label %while.cond, !dbg !2254, !llvm.loop !2270

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2253
  ret i8* %retval.0, !dbg !2272
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2273 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2279, metadata !DIExpression()), !dbg !2280
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2281
  ret double %call, !dbg !2282
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2283 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2292, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2293, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 %base, metadata !2294, metadata !DIExpression()), !dbg !2295
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2296
  ret i64 %call, !dbg !2297
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2298 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2304, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 %base, metadata !2306, metadata !DIExpression()), !dbg !2307
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2308
  ret i64 %call, !dbg !2309
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2310 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2321, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2322, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i32 %base, metadata !2323, metadata !DIExpression()), !dbg !2324
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2325
  ret i64 %call, !dbg !2326
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2327 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2331, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32 %base, metadata !2333, metadata !DIExpression()), !dbg !2334
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2335
  ret i64 %call, !dbg !2336
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2337 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2377, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2378, metadata !DIExpression()), !dbg !2379
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2380
  ret i32 %call, !dbg !2381
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2382 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2385, metadata !DIExpression()), !dbg !2386
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2387
  ret i32 %call, !dbg !2388
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2389 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2394, metadata !DIExpression()), !dbg !2395
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2396
  ret i32 %call, !dbg !2397
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2398 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2402, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2403, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2405, metadata !DIExpression()), !dbg !2406
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2407
  ret i32 %call, !dbg !2408
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2409 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2413, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2414, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2415, metadata !DIExpression()), !dbg !2416
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2415, metadata !DIExpression(DW_OP_deref)), !dbg !2416
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2417
  ret i32 %call, !dbg !2418
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2419 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2423, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2424, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2426, metadata !DIExpression()), !dbg !2427
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2426, metadata !DIExpression(DW_OP_deref)), !dbg !2427
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2428
  ret i32 %call, !dbg !2429
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2430 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2454, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2455, metadata !DIExpression()), !dbg !2456
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2457
  ret i32 %call, !dbg !2458
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2459 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2462, metadata !DIExpression()), !dbg !2463
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2464
  ret i32 %call, !dbg !2465
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2466 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2470, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2471, metadata !DIExpression()), !dbg !2472
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2473
  ret i32 %call, !dbg !2474
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2475 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2479, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2480, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2481, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2482, metadata !DIExpression()), !dbg !2483
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2484
  ret i32 %call, !dbg !2485
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_branch_target_load_optimize1() #4 !dbg !2486 {
entry:
  %0 = load i32, i32* @flag_branch_target_load_optimize, align 4, !dbg !2487
  %conv = trunc i32 %0 to i8, !dbg !2487
  ret i8 %conv, !dbg !2488
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_branch_target_load_optimize1() #4 !dbg !2489 {
entry:
  %0 = load i32, i32* @epilogue_completed, align 4, !dbg !2490
  %conv = trunc i32 %0 to i8, !dbg !2490
  tail call fastcc void @branch_target_load_optimize(i8 zeroext %conv) #7, !dbg !2491
  ret i32 0, !dbg !2492
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_branch_target_load_optimize2() #4 !dbg !2493 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2494
  %cmp = icmp sgt i32 %0, 0, !dbg !2495
  %1 = load i32, i32* @flag_branch_target_load_optimize2, align 4, !dbg !2496
  %tobool = icmp ne i32 %1, 0, !dbg !2496
  %2 = and i1 %cmp, %tobool, !dbg !2496
  %conv = zext i1 %2 to i8, !dbg !2497
  ret i8 %conv, !dbg !2498
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_branch_target_load_optimize2() #4 !dbg !2034 {
entry:
  %0 = load i32, i32* @flag_branch_target_load_optimize, align 4, !dbg !2499
  %tobool = icmp eq i32 %0, 0, !dbg !2499
  %1 = load i32, i32* @flag_branch_target_load_optimize2, align 4, !dbg !2501
  %tobool1 = icmp eq i32 %1, 0, !dbg !2501
  %or.cond.not = or i1 %tobool1, %tobool, !dbg !2502
  %.b = load i1, i1* @rest_of_handle_branch_target_load_optimize2.warned, align 4, !dbg !2503
  %or.cond1 = or i1 %or.cond.not, %.b, !dbg !2502
  br i1 %or.cond1, label %if.end, label %if.then, !dbg !2502

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !2504
  store i1 true, i1* @rest_of_handle_branch_target_load_optimize2.warned, align 4, !dbg !2506
  br label %if.end, !dbg !2507

if.end:                                           ; preds = %entry, %if.then
  %2 = load i32, i32* @epilogue_completed, align 4, !dbg !2508
  %conv = trunc i32 %2 to i8, !dbg !2508
  tail call fastcc void @branch_target_load_optimize(i8 zeroext %conv) #7, !dbg !2509
  ret i32 0, !dbg !2510
}

; Function Attrs: nounwind uwtable
define internal fastcc void @branch_target_load_optimize(i8 zeroext %after_prologue_epilogue_gen) unnamed_addr #4 !dbg !2511 {
entry:
  call void @llvm.dbg.value(metadata i8 %after_prologue_epilogue_gen, metadata !2515, metadata !DIExpression()), !dbg !2517
  %0 = load i32 ()*, i32 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 33), align 8, !dbg !2518
  %call = tail call i32 %0() #6, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %call, metadata !2516, metadata !DIExpression()), !dbg !2517
  %cmp = icmp eq i32 %call, 0, !dbg !2520
  br i1 %cmp, label %if.end9, label %if.then, !dbg !2522

if.then:                                          ; preds = %entry
  %1 = load i32 ()*, i32 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 1, i32 2), align 8, !dbg !2523
  %tobool = icmp eq i32 ()* %1, null, !dbg !2526
  br i1 %tobool, label %if.else, label %if.then1, !dbg !2527

if.then1:                                         ; preds = %if.then
  %call2 = tail call i32 %1() #6, !dbg !2528
  br label %if.end, !dbg !2529

if.else:                                          ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %storemerge = phi i32 [ 1, %if.else ], [ %call2, %if.then1 ], !dbg !2530
  store i32 %storemerge, i32* @issue_rate, align 4, !dbg !2530
  %tobool3 = icmp eq i8 %after_prologue_epilogue_gen, 0, !dbg !2531
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !2533

if.then4:                                         ; preds = %if.end
  %2 = load i32, i32* @optimize, align 4, !dbg !2534
  %tobool5 = icmp ne i32 %2, 0, !dbg !2534
  %cond = zext i1 %tobool5 to i32, !dbg !2534
  %call6 = tail call zeroext i8 @cleanup_cfg(i32 %cond) #6, !dbg !2536
  br label %if.end7, !dbg !2537

if.end7:                                          ; preds = %if.end, %if.then4
  tail call void @df_analyze() #6, !dbg !2538
  tail call void @calculate_dominance_info(i32 1) #6, !dbg !2539
  %3 = load i8 (i8)*, i8 (i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 34), align 8, !dbg !2540
  %call8 = tail call zeroext i8 %3(i8 zeroext %after_prologue_epilogue_gen) #6, !dbg !2541
  %conv = zext i8 %call8 to i32, !dbg !2542
  tail call fastcc void @migrate_btr_defs(i32 %call, i32 %conv) #7, !dbg !2543
  tail call void @free_dominance_info(i32 1) #6, !dbg !2544
  br label %if.end9, !dbg !2545

if.end9:                                          ; preds = %entry, %if.end7
  ret void, !dbg !2546
}

declare dso_local zeroext i8 @cleanup_cfg(i32) local_unnamed_addr #1

declare dso_local void @df_analyze() local_unnamed_addr #1

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @migrate_btr_defs(i32 %btr_class, i32 %allow_callee_save) unnamed_addr #4 !dbg !2547 {
entry:
  call void @llvm.dbg.value(metadata i32 %btr_class, metadata !2551, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 %allow_callee_save, metadata !2552, metadata !DIExpression()), !dbg !2585
  %call = tail call %struct.fibheap* @fibheap_new() #6, !dbg !2586
  call void @llvm.dbg.value(metadata %struct.fibheap* %call, metadata !2553, metadata !DIExpression()), !dbg !2585
  %call1 = tail call i32 @_obstack_begin(%struct.obstack* nonnull @migrate_btrl_obstack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !2587
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2588
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2588
  br i1 %tobool, label %if.end, label %for.cond.preheader, !dbg !2589

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !2590

for.cond:                                         ; preds = %for.cond.preheader, %cond.end
  %i.0 = phi i32 [ %inc, %cond.end ], [ 2, %for.cond.preheader ], !dbg !2591
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2575, metadata !DIExpression()), !dbg !2592
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2593
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2593
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2593
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 5, !dbg !2593
  %3 = load i32, i32* %x_last_basic_block, align 8, !dbg !2593
  %cmp = icmp slt i32 %i.0, %3, !dbg !2594
  br i1 %cmp, label %for.body, label %if.end.loopexit, !dbg !2590

for.body:                                         ; preds = %for.cond
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 2, !dbg !2595
  %4 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2595
  %tobool4 = icmp eq %struct.VEC_basic_block_gc* %4, null, !dbg !2595
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !2595

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %4, i64 0, i32 0, !dbg !2595
  br label %cond.end, !dbg !2595

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !2595
  %call8 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %i.0) #7, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call8, metadata !2578, metadata !DIExpression()), !dbg !2596
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2597
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call8, i64 0, i32 8, !dbg !2598
  %6 = load i64, i64* %count, align 8, !dbg !2598
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call8, i64 0, i32 10, !dbg !2599
  %7 = load i32, i32* %loop_depth, align 4, !dbg !2599
  %call9 = tail call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %call8) #6, !dbg !2600
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call9, i64 0, i32 9, !dbg !2601
  %8 = load i32, i32* %index, align 8, !dbg !2601
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %i.0, i64 %6, i32 %7, i32 %8) #6, !dbg !2602
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2575, metadata !DIExpression()), !dbg !2592
  br label %for.cond, !dbg !2604, !llvm.loop !2605

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !2607

if.end:                                           ; preds = %if.end.loopexit, %entry
  store i64 0, i64* @all_btrs, align 8, !dbg !2607
  store i32 -1, i32* @first_btr, align 4, !dbg !2608
  call void @llvm.dbg.value(metadata i32 0, metadata !2574, metadata !DIExpression()), !dbg !2585
  %idxprom = sext i32 %btr_class to i64, !dbg !2610
  %arrayidx = getelementptr inbounds [27 x i64], [27 x i64]* @reg_class_contents, i64 0, i64 %idxprom, !dbg !2610
  %tobool15 = icmp eq i32 %allow_callee_save, 0, !dbg !2610
  br i1 %tobool15, label %if.end.split.us, label %if.end.if.end.split_crit_edge, !dbg !2613

if.end.if.end.split_crit_edge:                    ; preds = %if.end
  br label %for.cond11, !dbg !2613

if.end.split.us:                                  ; preds = %if.end
  br label %for.cond11.us, !dbg !2613

for.cond11.us:                                    ; preds = %for.inc31.us, %if.end.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc31.us ], [ 0, %if.end.split.us ], !dbg !2614
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2574, metadata !DIExpression()), !dbg !2585
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2615
  br i1 %exitcond, label %for.end33.us-lcssa.us, label %for.body13.us, !dbg !2616

for.body13.us:                                    ; preds = %for.cond11.us
  %9 = load i64, i64* %arrayidx, align 8, !dbg !2617
  %shl.us = shl i64 1, %indvars.iv, !dbg !2617
  %and.us = and i64 %9, %shl.us, !dbg !2617
  %tobool14.us = icmp eq i64 %and.us, 0, !dbg !2617
  br i1 %tobool14.us, label %for.inc31.us, label %land.lhs.true.us, !dbg !2618

land.lhs.true.us:                                 ; preds = %for.body13.us
  %arrayidx17.us = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %indvars.iv, !dbg !2619
  %10 = load i8, i8* %arrayidx17.us, align 1, !dbg !2619
  %tobool18.us = icmp eq i8 %10, 0, !dbg !2619
  br i1 %tobool18.us, label %lor.lhs.false19.us, label %if.then23.us, !dbg !2620

lor.lhs.false19.us:                               ; preds = %land.lhs.true.us
  %11 = trunc i64 %indvars.iv to i32, !dbg !2621
  %call20.us = tail call zeroext i8 @df_regs_ever_live_p(i32 %11) #6, !dbg !2621
  %tobool22.us = icmp eq i8 %call20.us, 0, !dbg !2621
  br i1 %tobool22.us, label %for.inc31.us, label %if.then23.us, !dbg !2622

if.then23.us:                                     ; preds = %lor.lhs.false19.us, %land.lhs.true.us
  %12 = load i64, i64* @all_btrs, align 8, !dbg !2623
  %or.us = or i64 %12, %shl.us, !dbg !2623
  store i64 %or.us, i64* @all_btrs, align 8, !dbg !2623
  %13 = trunc i64 %indvars.iv to i32, !dbg !2625
  store i32 %13, i32* @last_btr, align 4, !dbg !2625
  %14 = load i32, i32* @first_btr, align 4, !dbg !2626
  %cmp26.us = icmp slt i32 %14, 0, !dbg !2628
  br i1 %cmp26.us, label %if.then28.us, label %for.inc31.us, !dbg !2629

if.then28.us:                                     ; preds = %if.then23.us
  %15 = trunc i64 %indvars.iv to i32, !dbg !2630
  store i32 %15, i32* @first_btr, align 4, !dbg !2630
  br label %for.inc31.us, !dbg !2631

for.inc31.us:                                     ; preds = %if.then28.us, %if.then23.us, %lor.lhs.false19.us, %for.body13.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i32 undef, metadata !2574, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2585
  br label %for.cond11.us, !dbg !2633, !llvm.loop !2634

for.end33.us-lcssa.us:                            ; preds = %for.cond11.us
  br label %for.end33, !dbg !2636

for.cond11:                                       ; preds = %for.inc31, %if.end.if.end.split_crit_edge
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc31 ], [ 0, %if.end.if.end.split_crit_edge ]
  %16 = phi i32 [ %22, %for.inc31 ], [ -1, %if.end.if.end.split_crit_edge ]
  %17 = phi i64 [ %23, %for.inc31 ], [ 0, %if.end.if.end.split_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2574, metadata !DIExpression()), !dbg !2585
  %exitcond3 = icmp eq i64 %indvars.iv1, 53, !dbg !2615
  br i1 %exitcond3, label %for.end33.us-lcssa, label %for.body13, !dbg !2616

for.body13:                                       ; preds = %for.cond11
  %18 = load i64, i64* %arrayidx, align 8, !dbg !2617
  %shl = shl i64 1, %indvars.iv1, !dbg !2617
  %and = and i64 %18, %shl, !dbg !2617
  %tobool14 = icmp eq i64 %and, 0, !dbg !2617
  br i1 %tobool14, label %for.inc31, label %land.lhs.true, !dbg !2618

land.lhs.true:                                    ; preds = %for.body13
  %or = or i64 %17, %shl, !dbg !2623
  store i64 %or, i64* @all_btrs, align 8, !dbg !2623
  %19 = trunc i64 %indvars.iv1 to i32, !dbg !2625
  store i32 %19, i32* @last_btr, align 4, !dbg !2625
  %cmp26 = icmp slt i32 %16, 0, !dbg !2628
  br i1 %cmp26, label %if.then28, label %for.inc31, !dbg !2629

if.then28:                                        ; preds = %land.lhs.true
  %20 = trunc i64 %indvars.iv1 to i32, !dbg !2630
  store i32 %20, i32* @first_btr, align 4, !dbg !2630
  %21 = trunc i64 %indvars.iv1 to i32, !dbg !2631
  br label %for.inc31, !dbg !2631

for.inc31:                                        ; preds = %for.body13, %if.then28, %land.lhs.true
  %22 = phi i32 [ %16, %for.body13 ], [ %21, %if.then28 ], [ %16, %land.lhs.true ]
  %23 = phi i64 [ %17, %for.body13 ], [ %or, %if.then28 ], [ %or, %land.lhs.true ]
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i32 undef, metadata !2574, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2585
  br label %for.cond11, !dbg !2633, !llvm.loop !2634

for.end33.us-lcssa:                               ; preds = %for.cond11
  br label %for.end33, !dbg !2636

for.end33:                                        ; preds = %for.end33.us-lcssa.us, %for.end33.us-lcssa
  %24 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2636
  %cfg35 = getelementptr inbounds %struct.function, %struct.function* %24, i64 0, i32 1, !dbg !2636
  %25 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg35, align 8, !dbg !2636
  %x_last_basic_block36 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %25, i64 0, i32 5, !dbg !2636
  %26 = load i32, i32* %x_last_basic_block36, align 8, !dbg !2636
  %conv37 = sext i32 %26 to i64, !dbg !2636
  %call38 = tail call i8* @xcalloc(i64 %conv37, i64 8) #6, !dbg !2636
  store i8* %call38, i8** bitcast (i64** @btrs_live to i8**), align 8, !dbg !2637
  %27 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2638
  %cfg40 = getelementptr inbounds %struct.function, %struct.function* %27, i64 0, i32 1, !dbg !2638
  %28 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg40, align 8, !dbg !2638
  %x_last_basic_block41 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %28, i64 0, i32 5, !dbg !2638
  %29 = load i32, i32* %x_last_basic_block41, align 8, !dbg !2638
  %conv42 = sext i32 %29 to i64, !dbg !2638
  %call43 = tail call i8* @xcalloc(i64 %conv42, i64 8) #6, !dbg !2638
  store i8* %call43, i8** bitcast (i64** @btrs_live_at_end to i8**), align 8, !dbg !2639
  tail call fastcc void @build_btr_def_use_webs(%struct.fibheap* %call) #7, !dbg !2640
  br label %while.cond, !dbg !2641

while.cond:                                       ; preds = %if.end62, %for.end33
  %call44 = tail call i32 @fibheap_empty(%struct.fibheap* %call) #6, !dbg !2642
  %tobool45 = icmp eq i32 %call44, 0, !dbg !2643
  br i1 %tobool45, label %while.body, label %while.end, !dbg !2641

while.body:                                       ; preds = %while.cond
  %call46 = tail call i8* @fibheap_extract_min(%struct.fibheap* %call) #6, !dbg !2644
  %30 = bitcast i8* %call46 to %struct.btr_def_s*, !dbg !2645
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %30, metadata !2582, metadata !DIExpression()), !dbg !2646
  %call47 = tail call i64 @fibheap_min_key(%struct.fibheap* %call) #6, !dbg !2647
  %31 = trunc i64 %call47 to i32, !dbg !2648
  %conv48 = sub i32 0, %31, !dbg !2648
  call void @llvm.dbg.value(metadata i32 %conv48, metadata !2584, metadata !DIExpression()), !dbg !2646
  %call49 = tail call fastcc i32 @migrate_btr_def(%struct.btr_def_s* %30, i32 %conv48) #7, !dbg !2649
  %tobool50 = icmp eq i32 %call49, 0, !dbg !2649
  br i1 %tobool50, label %if.else, label %if.then51, !dbg !2651

if.then51:                                        ; preds = %while.body
  %cost = getelementptr inbounds i8, i8* %call46, i64 44, !dbg !2652
  %32 = bitcast i8* %cost to i32*, !dbg !2652
  %33 = load i32, i32* %32, align 4, !dbg !2652
  %sub52 = sub nsw i32 0, %33, !dbg !2654
  %conv53 = sext i32 %sub52 to i64, !dbg !2654
  %call54 = tail call %struct.fibnode* @fibheap_insert(%struct.fibheap* %call, i64 %conv53, i8* %call46) #6, !dbg !2655
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2656
  %tobool55 = icmp eq %struct._IO_FILE* %34, null, !dbg !2656
  br i1 %tobool55, label %if.end62, label %if.then56, !dbg !2658

if.then56:                                        ; preds = %if.then51
  %insn = getelementptr inbounds i8, i8* %call46, i64 32, !dbg !2659
  %35 = bitcast i8* %insn to %struct.rtx_def**, !dbg !2659
  %36 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8, !dbg !2659
  %arrayidx57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2659
  %rt_int = bitcast %union.rtunion_def* %arrayidx57 to i32*, !dbg !2659
  %37 = load i32, i32* %rt_int, align 8, !dbg !2659
  %38 = load i32, i32* %32, align 4, !dbg !2661
  %call59 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38) #6, !dbg !2662
  br label %if.end62, !dbg !2663

if.else:                                          ; preds = %while.body
  %live_range = getelementptr inbounds i8, i8* %call46, i64 72, !dbg !2664
  %39 = bitcast i8* %live_range to %struct.bitmap_head_def**, !dbg !2664
  %40 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %39, align 8, !dbg !2664
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %40) #6, !dbg !2664
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %39, align 8, !dbg !2664
  br label %if.end62

if.end62:                                         ; preds = %if.then51, %if.then56, %if.else
  br label %while.cond, !dbg !2641, !llvm.loop !2665

while.end:                                        ; preds = %while.cond
  %41 = load i8*, i8** bitcast (i64** @btrs_live to i8**), align 8, !dbg !2667
  tail call void @free(i8* %41) #6, !dbg !2668
  %42 = load i8*, i8** bitcast (i64** @btrs_live_at_end to i8**), align 8, !dbg !2669
  tail call void @free(i8* %42) #6, !dbg !2670
  %43 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 1) to i64*), align 8, !dbg !2671
  %sub.ptr.sub = sub i64 0, %43, !dbg !2671
  store i64 %sub.ptr.sub, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 5), align 8, !dbg !2671
  %cmp63 = icmp sgt i64 %sub.ptr.sub, 0, !dbg !2671
  %44 = inttoptr i64 %43 to i8*, !dbg !2671
  br i1 %cmp63, label %land.lhs.true65, label %cond.false72, !dbg !2671

land.lhs.true65:                                  ; preds = %while.end
  %45 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2671
  %sub.ptr.sub67 = sub i64 %45, %43, !dbg !2671
  %cmp68 = icmp sgt i64 %sub.ptr.sub67, %sub.ptr.sub, !dbg !2671
  br i1 %cmp68, label %cond.true70, label %cond.false72, !dbg !2671

cond.true70:                                      ; preds = %land.lhs.true65
  %add.ptr71 = getelementptr inbounds i8, i8* %44, i64 %sub.ptr.sub, !dbg !2671
  store i8* %add.ptr71, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 2), align 8, !dbg !2671
  store i8* %add.ptr71, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3), align 8, !dbg !2671
  br label %cond.end74, !dbg !2671

cond.false72:                                     ; preds = %land.lhs.true65, %while.end
  %add.ptr73 = getelementptr inbounds i8, i8* %44, i64 %sub.ptr.sub, !dbg !2671
  tail call void @obstack_free(%struct.obstack* nonnull @migrate_btrl_obstack, i8* %add.ptr73) #6, !dbg !2671
  br label %cond.end74, !dbg !2671

cond.end74:                                       ; preds = %cond.false72, %cond.true70
  tail call void @fibheap_delete(%struct.fibheap* %call) #6, !dbg !2672
  ret void, !dbg !2673
}

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #1

declare dso_local %struct.fibheap* @fibheap_new() local_unnamed_addr #1

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local void @free(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2674 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !2680, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2681, metadata !DIExpression()), !dbg !2682
  br label %land.end, !dbg !2683

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2683
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2683
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2683
  ret %struct.basic_block_def* %0, !dbg !2683
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @get_immediate_dominator(i32, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @df_regs_ever_live_p(i32) local_unnamed_addr #1

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @build_btr_def_use_webs(%struct.fibheap* %all_btr_defs) unnamed_addr #4 !dbg !2684 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %all_btr_defs, metadata !2688, metadata !DIExpression()), !dbg !2698
  %call = tail call i32 @get_max_uid() #6, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %call, metadata !2689, metadata !DIExpression()), !dbg !2698
  %conv = sext i32 %call to i64, !dbg !2700
  %call1 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2700
  %0 = bitcast i8* %call1 to %struct.btr_def_s**, !dbg !2700
  call void @llvm.dbg.value(metadata %struct.btr_def_s** %0, metadata !2691, metadata !DIExpression()), !dbg !2698
  %call3 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2701
  %1 = bitcast i8* %call3 to %struct.btr_user_s**, !dbg !2701
  call void @llvm.dbg.value(metadata %struct.btr_user_s** %1, metadata !2692, metadata !DIExpression()), !dbg !2698
  %2 = load i32, i32* @last_btr, align 4, !dbg !2702
  %3 = load i32, i32* @first_btr, align 4, !dbg !2703
  %sub = sub nsw i32 %2, %3, !dbg !2704
  %add = add nsw i32 %sub, 1, !dbg !2705
  %call4 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %add, i32 %call) #6, !dbg !2706
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call4, metadata !2693, metadata !DIExpression()), !dbg !2698
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2707
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2707
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2707
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !2707
  %6 = load i32, i32* %x_last_basic_block, align 8, !dbg !2707
  %call5 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %6, i32 %call) #6, !dbg !2708
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call5, metadata !2694, metadata !DIExpression()), !dbg !2698
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2709
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2709
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !2709
  %x_last_basic_block8 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 5, !dbg !2709
  %9 = load i32, i32* %x_last_basic_block8, align 8, !dbg !2709
  %conv9 = sext i32 %9 to i64, !dbg !2709
  %call10 = tail call i8* @xcalloc(i64 %conv9, i64 8) #6, !dbg !2709
  %10 = bitcast i8* %call10 to i64*, !dbg !2709
  call void @llvm.dbg.value(metadata i64* %10, metadata !2695, metadata !DIExpression()), !dbg !2698
  %11 = load i32, i32* @last_btr, align 4, !dbg !2710
  %12 = load i32, i32* @first_btr, align 4, !dbg !2711
  %sub11 = sub nsw i32 %11, %12, !dbg !2712
  %add12 = add nsw i32 %sub11, 1, !dbg !2713
  tail call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %call4, i32 %add12) #6, !dbg !2714
  tail call fastcc void @compute_defs_uses_and_gen(%struct.fibheap* %all_btr_defs, %struct.btr_def_s** %0, %struct.btr_user_s** %1, %struct.simple_bitmap_def** %call4, %struct.simple_bitmap_def** %call5, i64* %10) #7, !dbg !2715
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2716
  %cfg14 = getelementptr inbounds %struct.function, %struct.function* %13, i64 0, i32 1, !dbg !2716
  %14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg14, align 8, !dbg !2716
  %x_last_basic_block15 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 5, !dbg !2716
  %15 = load i32, i32* %x_last_basic_block15, align 8, !dbg !2716
  %call16 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %15, i32 %call) #6, !dbg !2717
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call16, metadata !2696, metadata !DIExpression()), !dbg !2698
  tail call fastcc void @compute_kill(%struct.simple_bitmap_def** %call16, %struct.simple_bitmap_def** %call4, i64* %10) #7, !dbg !2718
  tail call void @free(i8* %call10) #6, !dbg !2719
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2720
  %cfg18 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2720
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg18, align 8, !dbg !2720
  %x_last_basic_block19 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 5, !dbg !2720
  %18 = load i32, i32* %x_last_basic_block19, align 8, !dbg !2720
  %call20 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %18, i32 %call) #6, !dbg !2721
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call20, metadata !2697, metadata !DIExpression()), !dbg !2698
  tail call fastcc void @compute_out(%struct.simple_bitmap_def** %call20, %struct.simple_bitmap_def** %call5, %struct.simple_bitmap_def** %call16, i32 %call) #7, !dbg !2722
  %19 = bitcast %struct.simple_bitmap_def** %call5 to i8*, !dbg !2723
  tail call void @free(i8* %19) #6, !dbg !2723
  %20 = bitcast %struct.simple_bitmap_def** %call16 to i8*, !dbg !2724
  tail call void @free(i8* %20) #6, !dbg !2724
  tail call fastcc void @link_btr_uses(%struct.btr_def_s** %0, %struct.btr_user_s** %1, %struct.simple_bitmap_def** %call20, %struct.simple_bitmap_def** %call4, i32 %call) #7, !dbg !2725
  %21 = bitcast %struct.simple_bitmap_def** %call20 to i8*, !dbg !2726
  tail call void @free(i8* %21) #6, !dbg !2726
  %22 = bitcast %struct.simple_bitmap_def** %call4 to i8*, !dbg !2727
  tail call void @free(i8* %22) #6, !dbg !2727
  tail call void @free(i8* %call3) #6, !dbg !2728
  tail call void @free(i8* %call1) #6, !dbg !2729
  ret void, !dbg !2730
}

declare dso_local i32 @fibheap_empty(%struct.fibheap*) local_unnamed_addr #1

declare dso_local i8* @fibheap_extract_min(%struct.fibheap*) local_unnamed_addr #1

declare dso_local i64 @fibheap_min_key(%struct.fibheap*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @migrate_btr_def(%struct.btr_def_s* %def, i32 %min_cost) unnamed_addr #4 !dbg !2731 {
entry:
  %btrs_live_in_range = alloca i64, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %def, metadata !2735, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %min_cost, metadata !2736, metadata !DIExpression()), !dbg !2761
  %0 = bitcast i64* %btrs_live_in_range to i8*, !dbg !2762
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2762
  call void @llvm.dbg.value(metadata i32 0, metadata !2739, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 0, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 0, metadata !2743, metadata !DIExpression()), !dbg !2761
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2763
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !2763
  br i1 %tobool, label %if.end, label %if.then, !dbg !2765

if.then:                                          ; preds = %entry
  %insn = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 4, !dbg !2766
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2766
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2766
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2766
  %3 = load i32, i32* %rt_int, align 8, !dbg !2766
  %cost = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 6, !dbg !2767
  %4 = load i32, i32* %cost, align 4, !dbg !2767
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.16, i64 0, i64 0), i32 %3, i32 %4, i32 %min_cost) #6, !dbg !2768
  br label %if.end, !dbg !2768

if.end:                                           ; preds = %entry, %if.then
  %group = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 7, !dbg !2769
  %5 = load %struct.btr_def_group_s*, %struct.btr_def_group_s** %group, align 8, !dbg !2769
  %tobool1 = icmp eq %struct.btr_def_group_s* %5, null, !dbg !2771
  br i1 %tobool1, label %if.then3, label %lor.lhs.false, !dbg !2772

lor.lhs.false:                                    ; preds = %if.end
  %has_ambiguous_use = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 9, !dbg !2773
  %6 = load i8, i8* %has_ambiguous_use, align 8, !dbg !2773
  %tobool2 = icmp eq i8 %6, 0, !dbg !2774
  br i1 %tobool2, label %if.end8, label %if.then3, !dbg !2775

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2776
  %tobool4 = icmp eq %struct._IO_FILE* %7, null, !dbg !2776
  br i1 %tobool4, label %cleanup116, label %if.then5, !dbg !2779

if.then5:                                         ; preds = %if.then3
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2780
  br label %cleanup116, !dbg !2780

if.end8:                                          ; preds = %lor.lhs.false
  %uses = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 8, !dbg !2781
  %8 = load %struct.btr_user_s*, %struct.btr_user_s** %uses, align 8, !dbg !2781
  %tobool9 = icmp eq %struct.btr_user_s* %8, null, !dbg !2783
  br i1 %tobool9, label %if.then10, label %if.end15, !dbg !2784

if.then10:                                        ; preds = %if.end8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2785
  %tobool11 = icmp eq %struct._IO_FILE* %9, null, !dbg !2785
  br i1 %tobool11, label %cleanup116, label %if.then12, !dbg !2788

if.then12:                                        ; preds = %if.then10
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2789
  br label %cleanup116, !dbg !2789

if.end15:                                         ; preds = %if.end8
  call void @llvm.dbg.value(metadata i64* %btrs_live_in_range, metadata !2738, metadata !DIExpression(DW_OP_deref)), !dbg !2761
  call fastcc void @btr_def_live_range(%struct.btr_def_s* %def, i64* nonnull %btrs_live_in_range) #7, !dbg !2790
  %call16 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2791
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call16, metadata !2737, metadata !DIExpression()), !dbg !2761
  %live_range17 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 13, !dbg !2792
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range17, align 8, !dbg !2792
  call void @bitmap_copy(%struct.bitmap_head_def* %call16, %struct.bitmap_head_def* %10) #6, !dbg !2793
  %insn18 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 4, !dbg !2794
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn18, align 8, !dbg !2794
  %call19 = call i32 @insn_default_latency(%struct.rtx_def* %11) #6, !dbg !2795
  %12 = load i32, i32* @issue_rate, align 4, !dbg !2796
  %mul = mul nsw i32 %call19, %12, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2745, metadata !DIExpression()), !dbg !2761
  %bb34 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 2, !dbg !2798
  %luid25 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 3, !dbg !2803
  br label %for.cond, !dbg !2804

for.cond:                                         ; preds = %for.inc, %if.end15
  %user.0.in = phi %struct.btr_user_s** [ %uses, %if.end15 ], [ %next, %for.inc ]
  %user.0 = load %struct.btr_user_s*, %struct.btr_user_s** %user.0.in, align 8, !dbg !2805
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %user.0, metadata !2744, metadata !DIExpression()), !dbg !2761
  %cmp = icmp eq %struct.btr_user_s* %user.0, null, !dbg !2806
  br i1 %cmp, label %for.end, label %for.body, !dbg !2807

for.body:                                         ; preds = %for.cond
  %bb = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 1, !dbg !2808
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2808
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %bb34, align 8, !dbg !2809
  %cmp23 = icmp eq %struct.basic_block_def* %13, %14, !dbg !2810
  br i1 %cmp23, label %land.lhs.true, label %for.inc, !dbg !2811

land.lhs.true:                                    ; preds = %for.body
  %luid = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 2, !dbg !2812
  %15 = load i32, i32* %luid, align 8, !dbg !2812
  %16 = load i32, i32* %luid25, align 8, !dbg !2813
  %cmp26 = icmp sgt i32 %15, %16, !dbg !2814
  br i1 %cmp26, label %land.lhs.true28, label %for.inc, !dbg !2815

land.lhs.true28:                                  ; preds = %land.lhs.true
  %add = add nsw i32 %16, %mul, !dbg !2816
  %cmp31 = icmp sgt i32 %add, %15, !dbg !2817
  br i1 %cmp31, label %land.lhs.true33, label %for.inc, !dbg !2818

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn18, align 8, !dbg !2819
  %sub = sub nsw i32 %add, %15, !dbg !2820
  %call39 = call fastcc i32 @can_move_up(%struct.basic_block_def* %13, %struct.rtx_def* %17, i32 %sub) #7, !dbg !2821
  %tobool40 = icmp eq i32 %call39, 0, !dbg !2821
  br i1 %tobool40, label %for.end, label %for.inc, !dbg !2822

for.inc:                                          ; preds = %land.lhs.true33, %for.body, %land.lhs.true, %land.lhs.true28
  %next = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 0, !dbg !2823
  br label %for.cond, !dbg !2824, !llvm.loop !2825

for.end:                                          ; preds = %land.lhs.true33, %for.cond
  %btr_used_near_def.0 = phi i32 [ 0, %for.cond ], [ 1, %land.lhs.true33 ], !dbg !2761
  call void @llvm.dbg.value(metadata i32 %btr_used_near_def.0, metadata !2739, metadata !DIExpression()), !dbg !2761
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb34, align 8, !dbg !2827
  %call44 = call fastcc i32 @basic_block_freq(%struct.basic_block_def* %18) #7, !dbg !2828
  call void @llvm.dbg.value(metadata i32 %call44, metadata !2740, metadata !DIExpression()), !dbg !2761
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb34, align 8, !dbg !2829
  %call46 = call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %19) #6, !dbg !2830
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call46, metadata !2741, metadata !DIExpression()), !dbg !2761
  %cost54 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 6, !dbg !2831
  %20 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2832
  %21 = bitcast %struct.edge_def** %e to i8*, !dbg !2832
  %22 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2833
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2833
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2833
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2835
  %26 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2835
  br label %for.cond47, !dbg !2837

for.cond47:                                       ; preds = %cleanup, %for.end
  %def_moved.0 = phi i32 [ 0, %for.end ], [ %def_moved.3, %cleanup ], !dbg !2838
  %give_up.0 = phi i32 [ 0, %for.end ], [ %give_up.3, %cleanup ], !dbg !2839
  %attempt.0 = phi %struct.basic_block_def* [ %call46, %for.end ], [ %call106, %cleanup ], !dbg !2840
  %def_basic_block_freq.0 = phi i32 [ %call44, %for.end ], [ %def_basic_block_freq.3, %cleanup ], !dbg !2841
  %btr_used_near_def.1 = phi i32 [ %btr_used_near_def.0, %for.end ], [ %btr_used_near_def.4, %cleanup ], !dbg !2842
  call void @llvm.dbg.value(metadata i32 %btr_used_near_def.1, metadata !2739, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_basic_block_freq.0, metadata !2740, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %attempt.0, metadata !2741, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.0, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_moved.0, metadata !2743, metadata !DIExpression()), !dbg !2761
  %tobool48 = icmp eq i32 %give_up.0, 0, !dbg !2844
  %tobool50 = icmp ne %struct.basic_block_def* %attempt.0, null, !dbg !2845
  %or.cond = and i1 %tobool48, %tobool50, !dbg !2846
  br i1 %or.cond, label %land.lhs.true51, label %for.end107, !dbg !2846

land.lhs.true51:                                  ; preds = %for.cond47
  %27 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2847
  %cfg = getelementptr inbounds %struct.function, %struct.function* %27, i64 0, i32 1, !dbg !2847
  %28 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2847
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %28, i64 0, i32 0, !dbg !2847
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2847
  %cmp52 = icmp eq %struct.basic_block_def* %attempt.0, %29, !dbg !2848
  br i1 %cmp52, label %for.end107, label %land.rhs, !dbg !2849

land.rhs:                                         ; preds = %land.lhs.true51
  %30 = load i32, i32* %cost54, align 4, !dbg !2831
  %cmp55 = icmp slt i32 %30, %min_cost, !dbg !2850
  br i1 %cmp55, label %for.end107, label %for.body57, !dbg !2851

for.body57:                                       ; preds = %land.rhs
  %call58 = call fastcc i32 @basic_block_freq(%struct.basic_block_def* nonnull %attempt.0) #7, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %call58, metadata !2746, metadata !DIExpression()), !dbg !2832
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #8, !dbg !2853
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #8, !dbg !2854
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #8, !dbg !2855
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %attempt.0, i64 0, i32 1, !dbg !2855
  %call59 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2855
  %31 = extractvalue { i32, %struct.VEC_edge_gc** } %call59, 0, !dbg !2855
  store i32 %31, i32* %23, align 8, !dbg !2855
  %32 = extractvalue { i32, %struct.VEC_edge_gc** } %call59, 1, !dbg !2855
  store %struct.VEC_edge_gc** %32, %struct.VEC_edge_gc*** %24, align 8, !dbg !2855
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %20, i8* nonnull align 8 %22, i64 16, i1 false), !dbg !2855
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #8, !dbg !2855
  br label %for.cond60, !dbg !2855

for.cond60:                                       ; preds = %for.inc67, %for.body57
  %33 = load i32, i32* %25, align 8, !dbg !2856
  %34 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %26, align 8, !dbg !2856
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2757, metadata !DIExpression(DW_OP_deref)), !dbg !2832
  %call61 = call fastcc zeroext i8 @ei_cond(i32 %33, %struct.VEC_edge_gc** %34, %struct.edge_def** nonnull %e) #7, !dbg !2856
  %tobool62 = icmp eq i8 %call61, 0, !dbg !2855
  br i1 %tobool62, label %for.cond60.for.end68_crit_edge, label %for.body63, !dbg !2855

for.cond60.for.end68_crit_edge:                   ; preds = %for.cond60
  %.pre = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2857
  br label %for.end68, !dbg !2855

for.body63:                                       ; preds = %for.cond60
  %35 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2859
  call void @llvm.dbg.value(metadata %struct.edge_def* %35, metadata !2757, metadata !DIExpression()), !dbg !2832
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %35, i64 0, i32 7, !dbg !2861
  %36 = load i32, i32* %flags, align 8, !dbg !2861
  %and = and i32 %36, 14, !dbg !2862
  %tobool64 = icmp eq i32 %and, 0, !dbg !2862
  br i1 %tobool64, label %for.inc67, label %for.end68.loopexit, !dbg !2863

for.inc67:                                        ; preds = %for.body63
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2750, metadata !DIExpression(DW_OP_deref)), !dbg !2832
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2856
  br label %for.cond60, !dbg !2856, !llvm.loop !2864

for.end68.loopexit:                               ; preds = %for.body63
  %.lcssa = phi %struct.edge_def* [ %35, %for.body63 ], !dbg !2859
  br label %for.end68, !dbg !2857

for.end68:                                        ; preds = %for.end68.loopexit, %for.cond60.for.end68_crit_edge
  %37 = phi %struct.edge_def* [ %.pre, %for.cond60.for.end68_crit_edge ], [ %.lcssa, %for.end68.loopexit ], !dbg !2857
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !2757, metadata !DIExpression()), !dbg !2832
  %tobool69 = icmp eq %struct.edge_def* %37, null, !dbg !2857
  br i1 %tobool69, label %if.end71, label %cleanup, !dbg !2866

if.end71:                                         ; preds = %for.end68
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2867
  %tobool72 = icmp eq %struct._IO_FILE* %38, null, !dbg !2867
  br i1 %tobool72, label %if.end75, label %if.then73, !dbg !2869

if.then73:                                        ; preds = %if.end71
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %attempt.0, i64 0, i32 9, !dbg !2870
  %39 = load i32, i32* %index, align 8, !dbg !2870
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %39) #6, !dbg !2871
  br label %if.end75, !dbg !2871

if.end75:                                         ; preds = %if.end71, %if.then73
  %cmp76 = icmp slt i32 %call58, %def_basic_block_freq.0, !dbg !2872
  br i1 %cmp76, label %if.then83, label %lor.lhs.false78, !dbg !2873

lor.lhs.false78:                                  ; preds = %if.end75
  %cmp79 = icmp eq i32 %call58, %def_basic_block_freq.0, !dbg !2874
  %tobool82 = icmp ne i32 %btr_used_near_def.1, 0, !dbg !2875
  %or.cond2 = and i1 %cmp79, %tobool82, !dbg !2876
  br i1 %or.cond2, label %if.then83, label %cleanup, !dbg !2876

if.then83:                                        ; preds = %lor.lhs.false78, %if.end75
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %bb34, align 8, !dbg !2877
  %41 = load i32, i32* @flag_btr_bb_exclusive, align 4, !dbg !2878
  call void @llvm.dbg.value(metadata i64* %btrs_live_in_range, metadata !2738, metadata !DIExpression(DW_OP_deref)), !dbg !2761
  call fastcc void @augment_live_range(%struct.bitmap_head_def* %call16, i64* nonnull %btrs_live_in_range, %struct.basic_block_def* %40, %struct.basic_block_def* nonnull %attempt.0, i32 %41) #7, !dbg !2879
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2880
  %tobool85 = icmp eq %struct._IO_FILE* %42, null, !dbg !2880
  br i1 %tobool85, label %if.end89, label %if.then86, !dbg !2882

if.then86:                                        ; preds = %if.then83
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !2883
  %43 = load i64, i64* %btrs_live_in_range, align 8, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %43, metadata !2738, metadata !DIExpression()), !dbg !2761
  call fastcc void @dump_hard_reg_set(i64 %43) #7, !dbg !2886
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2887
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2888
  br label %if.end89, !dbg !2889

if.end89:                                         ; preds = %if.then83, %if.then86
  %45 = load i64, i64* %btrs_live_in_range, align 8, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %45, metadata !2738, metadata !DIExpression()), !dbg !2761
  %call90 = call fastcc i32 @choose_btr(i64 %45) #7, !dbg !2891
  call void @llvm.dbg.value(metadata i32 %call90, metadata !2758, metadata !DIExpression()), !dbg !2892
  %cmp91 = icmp eq i32 %call90, -1, !dbg !2893
  br i1 %cmp91, label %if.else, label %if.then93, !dbg !2895

if.then93:                                        ; preds = %if.end89
  call void @llvm.dbg.value(metadata i64* %btrs_live_in_range, metadata !2738, metadata !DIExpression(DW_OP_deref)), !dbg !2761
  call fastcc void @move_btr_def(%struct.basic_block_def* nonnull %attempt.0, i32 %call90, %struct.btr_def_s* %def, %struct.bitmap_head_def* %call16, i64* nonnull %btrs_live_in_range) #7, !dbg !2896
  %46 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range17, align 8, !dbg !2898
  call void @bitmap_copy(%struct.bitmap_head_def* %call16, %struct.bitmap_head_def* %46) #6, !dbg !2899
  call void @llvm.dbg.value(metadata i32 0, metadata !2739, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 1, metadata !2743, metadata !DIExpression()), !dbg !2761
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %bb34, align 8, !dbg !2900
  %call96 = call fastcc i32 @basic_block_freq(%struct.basic_block_def* %47) #7, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %call96, metadata !2740, metadata !DIExpression()), !dbg !2761
  br label %cleanup, !dbg !2902

if.else:                                          ; preds = %if.end89
  call void @llvm.dbg.value(metadata i32 1, metadata !2742, metadata !DIExpression()), !dbg !2761
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2903
  %tobool97 = icmp eq %struct._IO_FILE* %48, null, !dbg !2903
  br i1 %tobool97, label %cleanup, label %if.then98, !dbg !2906

if.then98:                                        ; preds = %if.else
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !2907
  br label %cleanup, !dbg !2907

cleanup:                                          ; preds = %if.else, %for.end68, %lor.lhs.false78, %if.then98, %if.then93
  %def_moved.3 = phi i32 [ %def_moved.0, %for.end68 ], [ %def_moved.0, %lor.lhs.false78 ], [ 1, %if.then93 ], [ %def_moved.0, %if.then98 ], [ %def_moved.0, %if.else ], !dbg !2761
  %give_up.3 = phi i32 [ 0, %for.end68 ], [ 0, %lor.lhs.false78 ], [ 0, %if.then93 ], [ 1, %if.then98 ], [ 1, %if.else ], !dbg !2839
  %def_basic_block_freq.3 = phi i32 [ %def_basic_block_freq.0, %for.end68 ], [ %def_basic_block_freq.0, %lor.lhs.false78 ], [ %call96, %if.then93 ], [ %def_basic_block_freq.0, %if.then98 ], [ %def_basic_block_freq.0, %if.else ], !dbg !2761
  %btr_used_near_def.4 = phi i32 [ %btr_used_near_def.1, %for.end68 ], [ %btr_used_near_def.1, %lor.lhs.false78 ], [ 0, %if.then93 ], [ %btr_used_near_def.1, %if.then98 ], [ %btr_used_near_def.1, %if.else ], !dbg !2761
  call void @llvm.dbg.value(metadata i32 %btr_used_near_def.4, metadata !2739, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_basic_block_freq.3, metadata !2740, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.3, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_moved.3, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #8, !dbg !2908
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #8, !dbg !2908
  %call106 = call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* nonnull %attempt.0) #6, !dbg !2909
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call106, metadata !2741, metadata !DIExpression()), !dbg !2761
  br label %for.cond47, !dbg !2910, !llvm.loop !2911

for.end107:                                       ; preds = %land.rhs, %land.lhs.true51, %for.cond47
  %def_moved.0.lcssa = phi i32 [ %def_moved.0, %land.rhs ], [ %def_moved.0, %land.lhs.true51 ], [ %def_moved.0, %for.cond47 ], !dbg !2838
  %give_up.0.lcssa = phi i32 [ %give_up.0, %land.rhs ], [ %give_up.0, %land.lhs.true51 ], [ %give_up.0, %for.cond47 ], !dbg !2839
  call void @llvm.dbg.value(metadata i32 %def_moved.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_moved.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_moved.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.0.lcssa, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.0.lcssa, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.0.lcssa, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_moved.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_moved.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_moved.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.0.lcssa, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.0.lcssa, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.0.lcssa, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_moved.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_moved.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %def_moved.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.0.lcssa, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.0.lcssa, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.0.lcssa, metadata !2742, metadata !DIExpression()), !dbg !2761
  %tobool108 = icmp eq i32 %def_moved.0.lcssa, 0, !dbg !2913
  br i1 %tobool108, label %if.then109, label %if.end114, !dbg !2915

if.then109:                                       ; preds = %for.end107
  call void @llvm.dbg.value(metadata i32 1, metadata !2742, metadata !DIExpression()), !dbg !2761
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2916
  %tobool110 = icmp eq %struct._IO_FILE* %49, null, !dbg !2916
  br i1 %tobool110, label %if.end114, label %if.then111, !dbg !2919

if.then111:                                       ; preds = %if.then109
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2920
  br label %if.end114, !dbg !2920

if.end114:                                        ; preds = %if.then109, %for.end107, %if.then111
  %give_up.4 = phi i32 [ %give_up.0.lcssa, %for.end107 ], [ 1, %if.then111 ], [ 1, %if.then109 ], !dbg !2761
  call void @llvm.dbg.value(metadata i32 %give_up.4, metadata !2742, metadata !DIExpression()), !dbg !2761
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call16) #6, !dbg !2921
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2737, metadata !DIExpression()), !dbg !2761
  %tobool115 = icmp eq i32 %give_up.4, 0, !dbg !2922
  %lnot.ext = zext i1 %tobool115 to i32, !dbg !2922
  br label %cleanup116, !dbg !2923

cleanup116:                                       ; preds = %if.then10, %if.then3, %if.then12, %if.then5, %if.end114
  %retval.0 = phi i32 [ %lnot.ext, %if.end114 ], [ 0, %if.then5 ], [ 0, %if.then3 ], [ 0, %if.then12 ], [ 0, %if.then10 ], !dbg !2761
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2924
  ret i32 %retval.0, !dbg !2924
}

declare dso_local %struct.fibnode* @fibheap_insert(%struct.fibheap*, i64, i8*) local_unnamed_addr #1

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #1

declare dso_local void @fibheap_delete(%struct.fibheap*) local_unnamed_addr #1

declare dso_local i32 @get_max_uid() local_unnamed_addr #1

declare dso_local %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) local_unnamed_addr #1

declare dso_local void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_defs_uses_and_gen(%struct.fibheap* %all_btr_defs, %struct.btr_def_s** %def_array, %struct.btr_user_s** %use_array, %struct.simple_bitmap_def** %btr_defset, %struct.simple_bitmap_def** %bb_gen, i64* %btrs_written) unnamed_addr #4 !dbg !2925 {
entry:
  %all_btr_def_groups = alloca %struct.btr_def_group_s*, align 8
  %info = alloca %struct.defs_uses_info, align 8
  %regno = alloca i32, align 4
  %call_saved = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.fibheap* %all_btr_defs, metadata !2929, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata %struct.btr_def_s** %def_array, metadata !2930, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata %struct.btr_user_s** %use_array, metadata !2931, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %btr_defset, metadata !2932, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %bb_gen, metadata !2933, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64* %btrs_written, metadata !2934, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i32 0, metadata !2936, metadata !DIExpression()), !dbg !2980
  %0 = bitcast %struct.btr_def_group_s** %all_btr_def_groups to i8*, !dbg !2981
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2981
  call void @llvm.dbg.value(metadata %struct.btr_def_group_s* null, metadata !2937, metadata !DIExpression()), !dbg !2980
  store %struct.btr_def_group_s* null, %struct.btr_def_group_s** %all_btr_def_groups, align 8, !dbg !2982
  %1 = bitcast %struct.defs_uses_info* %info to i8*, !dbg !2983
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #8, !dbg !2983
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2984
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2984
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2984
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 5, !dbg !2984
  %4 = load i32, i32* %x_last_basic_block, align 8, !dbg !2984
  tail call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %bb_gen, i32 %4) #6, !dbg !2985
  call void @llvm.dbg.value(metadata i32 2, metadata !2935, metadata !DIExpression()), !dbg !2980
  %users_this_bb = getelementptr inbounds %struct.defs_uses_info, %struct.defs_uses_info* %info, i64 0, i32 0, !dbg !2986
  %bb_gen9 = getelementptr inbounds %struct.defs_uses_info, %struct.defs_uses_info* %info, i64 0, i32 3, !dbg !2986
  %5 = bitcast %struct.simple_bitmap_def** %bb_gen9 to i64*, !dbg !2986
  %btr_defset10 = getelementptr inbounds %struct.defs_uses_info, %struct.defs_uses_info* %info, i64 0, i32 4, !dbg !2986
  %btrs_live_in_block = getelementptr inbounds %struct.defs_uses_info, %struct.defs_uses_info* %info, i64 0, i32 2, !dbg !2986
  %btrs_written_in_block = getelementptr inbounds %struct.defs_uses_info, %struct.defs_uses_info* %info, i64 0, i32 1, !dbg !2986
  %6 = bitcast i32* %regno to i8*, !dbg !2987
  %7 = bitcast %struct.defs_uses_info* %info to i64*, !dbg !2988
  %8 = bitcast i64* %call_saved to i8*, !dbg !2989
  br label %for.cond, !dbg !2990

for.cond:                                         ; preds = %for.inc290, %entry
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc290 ], [ 2, %entry ], !dbg !2991
  %insn_luid.0 = phi i32 [ %insn_luid.1.lcssa, %for.inc290 ], [ 0, %entry ], !dbg !2991
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !2935, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i32 %insn_luid.0, metadata !2936, metadata !DIExpression()), !dbg !2980
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2992
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !2992
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2992
  %x_last_basic_block3 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 5, !dbg !2992
  %11 = load i32, i32* %x_last_basic_block3, align 8, !dbg !2992
  %12 = sext i32 %11 to i64, !dbg !2993
  %cmp = icmp slt i64 %indvars.iv4, %12, !dbg !2993
  br i1 %cmp, label %for.body, label %for.end292, !dbg !2994

for.body:                                         ; preds = %for.cond
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 2, !dbg !2995
  %13 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2995
  %tobool = icmp eq %struct.VEC_basic_block_gc* %13, null, !dbg !2995
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2995

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %13, i64 0, i32 0, !dbg !2995
  br label %cond.end, !dbg !2995

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !2995
  %14 = trunc i64 %indvars.iv4 to i32, !dbg !2995
  %call = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %14) #7, !dbg !2995
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2939, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata %struct.btr_def_s* null, metadata !2944, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 0, metadata !2947, metadata !DIExpression()), !dbg !2986
  store %struct.btr_user_s* null, %struct.btr_user_s** %users_this_bb, align 8, !dbg !2996
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bb_gen, i64 %indvars.iv4, !dbg !2997
  %15 = bitcast %struct.simple_bitmap_def** %arrayidx to i64*, !dbg !2997
  %16 = load i64, i64* %15, align 8, !dbg !2997
  store i64 %16, i64* %5, align 8, !dbg !2998
  store %struct.simple_bitmap_def** %btr_defset, %struct.simple_bitmap_def*** %btr_defset10, align 8, !dbg !2999
  store i64 0, i64* %btrs_live_in_block, align 8, !dbg !3000
  store i64 0, i64* %btrs_written_in_block, align 8, !dbg !3001
  %17 = load i32, i32* @first_btr, align 4, !dbg !3002
  call void @llvm.dbg.value(metadata i32 %17, metadata !2943, metadata !DIExpression()), !dbg !2986
  br label %for.cond11, !dbg !3004

for.cond11:                                       ; preds = %for.inc, %cond.end
  %reg.0 = phi i32 [ %17, %cond.end ], [ %inc, %for.inc ], !dbg !3005
  call void @llvm.dbg.value(metadata i32 %reg.0, metadata !2943, metadata !DIExpression()), !dbg !2986
  %18 = load i32, i32* @last_btr, align 4, !dbg !3006
  %cmp12 = icmp sgt i32 %reg.0, %18, !dbg !3008
  br i1 %cmp12, label %for.end, label %for.body13, !dbg !3009

for.body13:                                       ; preds = %for.cond11
  %19 = load i64, i64* @all_btrs, align 8, !dbg !3010
  %sh_prom = zext i32 %reg.0 to i64, !dbg !3010
  %shl = shl i64 1, %sh_prom, !dbg !3010
  %and = and i64 %19, %shl, !dbg !3010
  %tobool14 = icmp eq i64 %and, 0, !dbg !3010
  br i1 %tobool14, label %for.inc, label %land.lhs.true, !dbg !3012

land.lhs.true:                                    ; preds = %for.body13
  %call15 = call %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def* %call) #6, !dbg !3013
  %call16 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call15, i32 %reg.0) #6, !dbg !3013
  %tobool17 = icmp eq i32 %call16, 0, !dbg !3013
  br i1 %tobool17, label %for.inc, label %if.then, !dbg !3014

if.then:                                          ; preds = %land.lhs.true
  %20 = load i64, i64* %btrs_live_in_block, align 8, !dbg !3015
  %or = or i64 %20, %shl, !dbg !3015
  store i64 %or, i64* %btrs_live_in_block, align 8, !dbg !3015
  br label %for.inc, !dbg !3015

for.inc:                                          ; preds = %land.lhs.true, %for.body13, %if.then
  %inc = add nsw i32 %reg.0, 1, !dbg !3016
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2943, metadata !DIExpression()), !dbg !2986
  br label %for.cond11, !dbg !3017, !llvm.loop !3018

for.end:                                          ; preds = %for.cond11
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 7, !dbg !3020
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3020
  %21 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3020
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %21, i64 0, i32 0, !dbg !3020
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %21, i64 0, i32 1, !dbg !3021
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3021
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3021
  %rt_rtx = bitcast %union.rtunion_def* %23 to %struct.rtx_def**, !dbg !3021
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3021
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !2946, metadata !DIExpression()), !dbg !2986
  br label %for.cond24, !dbg !3022

for.cond24:                                       ; preds = %for.inc207, %for.end
  %defs_this_bb.0 = phi %struct.btr_def_s* [ null, %for.end ], [ %defs_this_bb.2, %for.inc207 ], !dbg !2986
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.end ], [ %rt_rtx211, %for.inc207 ]
  %insn_luid.1 = phi i32 [ %insn_luid.0, %for.end ], [ %inc212, %for.inc207 ], !dbg !2980
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3023
  call void @llvm.dbg.value(metadata i32 %insn_luid.1, metadata !2936, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2945, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %defs_this_bb.0, metadata !2944, metadata !DIExpression()), !dbg !2986
  %cmp25 = icmp eq %struct.rtx_def* %insn.0, %24, !dbg !3024
  br i1 %cmp25, label %for.end213, label %for.body26, !dbg !3025

for.body26:                                       ; preds = %for.cond24
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3026
  %bf.load = load i32, i32* %25, align 8, !dbg !3026
  %bf.clear = and i32 %bf.load, 65535, !dbg !3026
  %cmp27 = icmp eq i32 %bf.clear, 8, !dbg !3026
  br i1 %cmp27, label %if.then39, label %lor.lhs.false, !dbg !3026

lor.lhs.false:                                    ; preds = %for.body26
  %cmp30 = icmp eq i32 %bf.clear, 7, !dbg !3026
  br i1 %cmp30, label %if.then39, label %lor.lhs.false31, !dbg !3026

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %cmp34 = icmp eq i32 %bf.clear, 9, !dbg !3026
  br i1 %cmp34, label %if.then39, label %lor.lhs.false35, !dbg !3026

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %cmp38 = icmp eq i32 %bf.clear, 10, !dbg !3026
  br i1 %cmp38, label %if.then39, label %for.inc207, !dbg !3027

if.then39:                                        ; preds = %lor.lhs.false35, %lor.lhs.false31, %lor.lhs.false, %for.body26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8, !dbg !3028
  %arrayidx42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3029
  %rt_int = bitcast %union.rtunion_def* %arrayidx42 to i32*, !dbg !3029
  %26 = load i32, i32* %rt_int, align 8, !dbg !3029
  call void @llvm.dbg.value(metadata i32 %26, metadata !2954, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i32* %regno, metadata !2948, metadata !DIExpression(DW_OP_deref)), !dbg !2987
  %call43 = call fastcc i32 @insn_sets_btr_p(%struct.rtx_def* %insn.0, i32 0, i32* nonnull %regno) #7, !dbg !3030
  %tobool44 = icmp eq i32 %call43, 0, !dbg !3030
  br i1 %tobool44, label %if.else, label %if.then45, !dbg !3031

if.then45:                                        ; preds = %if.then39
  %27 = load i32, i32* %regno, align 4, !dbg !3032
  call void @llvm.dbg.value(metadata i32 %27, metadata !2948, metadata !DIExpression()), !dbg !2987
  %28 = load i64, i64* %btrs_live_in_block, align 8, !dbg !3033
  call void @llvm.dbg.value(metadata i32 %27, metadata !2948, metadata !DIExpression()), !dbg !2987
  %sh_prom47 = zext i32 %27 to i64, !dbg !3033
  %shl48 = shl i64 1, %sh_prom47, !dbg !3033
  %and49 = and i64 %28, %shl48, !dbg !3033
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3033
  %lnot.ext = zext i1 %tobool50 to i32, !dbg !3033
  call void @llvm.dbg.value(metadata %struct.btr_def_group_s** %all_btr_def_groups, metadata !2937, metadata !DIExpression(DW_OP_deref)), !dbg !2980
  %call52 = call fastcc %struct.btr_def_s* @add_btr_def(%struct.fibheap* %all_btr_defs, %struct.basic_block_def* %call, i32 %insn_luid.1, %struct.rtx_def* %insn.0, i32 %27, i32 %lnot.ext, %struct.btr_def_group_s** nonnull %all_btr_def_groups) #7, !dbg !3034
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %call52, metadata !2955, metadata !DIExpression()), !dbg !3035
  %idxprom53 = sext i32 %26 to i64, !dbg !3036
  %arrayidx54 = getelementptr inbounds %struct.btr_def_s*, %struct.btr_def_s** %def_array, i64 %idxprom53, !dbg !3036
  store %struct.btr_def_s* %call52, %struct.btr_def_s** %arrayidx54, align 8, !dbg !3037
  %29 = load i32, i32* %regno, align 4, !dbg !3038
  call void @llvm.dbg.value(metadata i32 %29, metadata !2948, metadata !DIExpression()), !dbg !2987
  %sh_prom55 = zext i32 %29 to i64, !dbg !3038
  %shl56 = shl i64 1, %sh_prom55, !dbg !3038
  %30 = load i64, i64* %btrs_written_in_block, align 8, !dbg !3038
  %or58 = or i64 %30, %shl56, !dbg !3038
  store i64 %or58, i64* %btrs_written_in_block, align 8, !dbg !3038
  call void @llvm.dbg.value(metadata i32 %29, metadata !2948, metadata !DIExpression()), !dbg !2987
  %31 = load i64, i64* %btrs_live_in_block, align 8, !dbg !3039
  %or62 = or i64 %31, %shl56, !dbg !3039
  store i64 %or62, i64* %btrs_live_in_block, align 8, !dbg !3039
  %32 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3040
  call void @llvm.dbg.value(metadata i32 %29, metadata !2948, metadata !DIExpression()), !dbg !2987
  %33 = load i32, i32* @first_btr, align 4, !dbg !3041
  %sub = sub nsw i32 %29, %33, !dbg !3042
  %idxprom67 = sext i32 %sub to i64, !dbg !3043
  %arrayidx68 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %btr_defset, i64 %idxprom67, !dbg !3043
  %34 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx68, align 8, !dbg !3043
  call void @sbitmap_difference(%struct.simple_bitmap_def* %32, %struct.simple_bitmap_def* %32, %struct.simple_bitmap_def* %34) #6, !dbg !3044
  %35 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3045
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %35, i32 %26) #7, !dbg !3046
  %next_this_bb = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %call52, i64 0, i32 0, !dbg !3047
  store %struct.btr_def_s* %defs_this_bb.0, %struct.btr_def_s** %next_this_bb, align 8, !dbg !3048
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %call52, metadata !2944, metadata !DIExpression()), !dbg !2986
  %36 = load i32, i32* %regno, align 4, !dbg !3049
  call void @llvm.dbg.value(metadata i32 %36, metadata !2948, metadata !DIExpression()), !dbg !2987
  %37 = load i32, i32* @first_btr, align 4, !dbg !3050
  %sub71 = sub nsw i32 %36, %37, !dbg !3051
  %idxprom72 = sext i32 %sub71 to i64, !dbg !3052
  %arrayidx73 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %btr_defset, i64 %idxprom72, !dbg !3052
  %38 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx73, align 8, !dbg !3052
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %38, i32 %26) #7, !dbg !3053
  %39 = load i32, i32* %regno, align 4, !dbg !3054
  call void @llvm.dbg.value(metadata i32 %39, metadata !2948, metadata !DIExpression()), !dbg !2987
  %40 = load %struct.btr_user_s*, %struct.btr_user_s** %users_this_bb, align 8, !dbg !3055
  call fastcc void @note_other_use_this_block(i32 %39, %struct.btr_user_s* %40) #7, !dbg !3056
  br label %if.end205, !dbg !3057

if.else:                                          ; preds = %if.then39
  %41 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3058
  %has_nonlocal_label = getelementptr inbounds %struct.function, %struct.function* %41, i64 0, i32 20, !dbg !3059
  %bf.load76 = load i32, i32* %has_nonlocal_label, align 8, !dbg !3059
  %bf.clear77 = and i32 %bf.load76, 1048576, !dbg !3059
  %tobool78 = icmp eq i32 %bf.clear77, 0, !dbg !3058
  br i1 %tobool78, label %if.else.if.else102_crit_edge, label %land.lhs.true79, !dbg !3060

if.else.if.else102_crit_edge:                     ; preds = %if.else
  %u103.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3061
  %.phi.trans.insert = getelementptr inbounds %union.u, %union.u* %u103.phi.trans.insert, i64 1, i32 0, i32 0, i64 0, !dbg !3061
  %rt_rtx106.phi.trans.insert = bitcast %union.rtunion_def* %.phi.trans.insert to %struct.rtx_def**, !dbg !3061
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx106.phi.trans.insert, align 8, !dbg !3062
  br label %if.else102, !dbg !3060

land.lhs.true79:                                  ; preds = %if.else
  %u80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3063
  %42 = getelementptr inbounds %union.u, %union.u* %u80, i64 1, i32 0, i32 0, i64 0, !dbg !3063
  %43 = bitcast %union.rtunion_def* %42 to i32**, !dbg !3063
  %44 = load i32*, i32** %43, align 8, !dbg !3063
  %bf.load84 = load i32, i32* %44, align 8, !dbg !3063
  %bf.clear85 = and i32 %bf.load84, 65535, !dbg !3063
  %cmp86 = icmp eq i32 %bf.clear85, 19, !dbg !3064
  br i1 %cmp86, label %if.then87, label %land.lhs.true79.if.else102_crit_edge, !dbg !3065

land.lhs.true79.if.else102_crit_edge:             ; preds = %land.lhs.true79
  %45 = bitcast i32* %44 to %struct.rtx_def*, !dbg !3065
  %.pre2 = bitcast %union.rtunion_def* %42 to %struct.rtx_def**, !dbg !3062
  br label %if.else102, !dbg !3065

if.then87:                                        ; preds = %land.lhs.true79
  %46 = load %struct.btr_user_s*, %struct.btr_user_s** %users_this_bb, align 8, !dbg !3066
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %46, metadata !2958, metadata !DIExpression()), !dbg !3068
  br label %for.cond89, !dbg !3069

for.cond89:                                       ; preds = %for.inc95, %if.then87
  %user.0 = phi %struct.btr_user_s* [ %46, %if.then87 ], [ %48, %for.inc95 ], !dbg !3070
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %user.0, metadata !2958, metadata !DIExpression()), !dbg !3068
  %cmp90 = icmp eq %struct.btr_user_s* %user.0, null, !dbg !3071
  br i1 %cmp90, label %for.end96, label %for.body91, !dbg !3073

for.body91:                                       ; preds = %for.cond89
  %use = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 4, !dbg !3074
  %47 = load %struct.rtx_def*, %struct.rtx_def** %use, align 8, !dbg !3074
  %tobool92 = icmp eq %struct.rtx_def* %47, null, !dbg !3076
  br i1 %tobool92, label %for.inc95, label %if.then93, !dbg !3077

if.then93:                                        ; preds = %for.body91
  %other_use_this_block = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 7, !dbg !3078
  store i8 1, i8* %other_use_this_block, align 8, !dbg !3079
  br label %for.inc95, !dbg !3080

for.inc95:                                        ; preds = %for.body91, %if.then93
  %next = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 0, !dbg !3081
  %48 = load %struct.btr_user_s*, %struct.btr_user_s** %next, align 8, !dbg !3081
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %48, metadata !2958, metadata !DIExpression()), !dbg !3068
  br label %for.cond89, !dbg !3082, !llvm.loop !3083

for.end96:                                        ; preds = %for.cond89
  %49 = load i64, i64* @all_btrs, align 8, !dbg !3085
  %50 = load i64, i64* %btrs_written_in_block, align 8, !dbg !3085
  %or98 = or i64 %50, %49, !dbg !3085
  store i64 %or98, i64* %btrs_written_in_block, align 8, !dbg !3085
  %51 = load i64, i64* %btrs_live_in_block, align 8, !dbg !3086
  %or100 = or i64 %51, %49, !dbg !3086
  store i64 %or100, i64* %btrs_live_in_block, align 8, !dbg !3086
  %52 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bb_gen9, align 8, !dbg !3087
  call void @sbitmap_zero(%struct.simple_bitmap_def* %52) #6, !dbg !3088
  br label %if.end205, !dbg !3089

if.else102:                                       ; preds = %land.lhs.true79.if.else102_crit_edge, %if.else.if.else102_crit_edge
  %rt_rtx106.pre-phi = phi %struct.rtx_def** [ %.pre2, %land.lhs.true79.if.else102_crit_edge ], [ %rt_rtx106.phi.trans.insert, %if.else.if.else102_crit_edge ], !dbg !3062
  %53 = phi %struct.rtx_def* [ %45, %land.lhs.true79.if.else102_crit_edge ], [ %.pre, %if.else.if.else102_crit_edge ], !dbg !3062
  %call107 = call fastcc i32 @btr_referenced_p(%struct.rtx_def* %53, %struct.rtx_def** null) #7, !dbg !3090
  %tobool108 = icmp eq i32 %call107, 0, !dbg !3090
  br i1 %tobool108, label %if.end154, label %if.then109, !dbg !3091

if.then109:                                       ; preds = %if.else102
  %call111 = call fastcc %struct.btr_user_s* @new_btr_user(%struct.basic_block_def* %call, i32 %insn_luid.1, %struct.rtx_def* %insn.0) #7, !dbg !3092
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %call111, metadata !2961, metadata !DIExpression()), !dbg !2988
  %idxprom112 = sext i32 %26 to i64, !dbg !3093
  %arrayidx113 = getelementptr inbounds %struct.btr_user_s*, %struct.btr_user_s** %use_array, i64 %idxprom112, !dbg !3093
  store %struct.btr_user_s* %call111, %struct.btr_user_s** %arrayidx113, align 8, !dbg !3094
  %use114 = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %call111, i64 0, i32 4, !dbg !3095
  %54 = load %struct.rtx_def*, %struct.rtx_def** %use114, align 8, !dbg !3095
  %tobool115 = icmp eq %struct.rtx_def* %54, null, !dbg !3096
  br i1 %tobool115, label %if.else123, label %if.then116, !dbg !3097

if.then116:                                       ; preds = %if.then109
  %call118 = call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %54) #7, !dbg !3098
  %sh_prom119 = zext i32 %call118 to i64, !dbg !3098
  %shl120 = shl i64 1, %sh_prom119, !dbg !3098
  %55 = load i64, i64* %btrs_live_in_block, align 8, !dbg !3098
  %or122 = or i64 %55, %shl120, !dbg !3098
  store i64 %or122, i64* %btrs_live_in_block, align 8, !dbg !3098
  br label %if.end150, !dbg !3098

if.else123:                                       ; preds = %if.then109
  %56 = load i32, i32* @first_btr, align 4, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %56, metadata !2965, metadata !DIExpression()), !dbg !3101
  %insn133 = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %call111, i64 0, i32 3, !dbg !3102
  br label %for.cond125, !dbg !3105

for.cond125:                                      ; preds = %for.inc143, %if.else123
  %reg124.0 = phi i32 [ %56, %if.else123 ], [ %inc144.pre-phi, %for.inc143 ], !dbg !3106
  call void @llvm.dbg.value(metadata i32 %reg124.0, metadata !2965, metadata !DIExpression()), !dbg !3101
  %57 = load i32, i32* @last_btr, align 4, !dbg !3107
  %cmp126 = icmp sgt i32 %reg124.0, %57, !dbg !3108
  br i1 %cmp126, label %for.end145, label %for.body127, !dbg !3109

for.body127:                                      ; preds = %for.cond125
  %58 = load i64, i64* @all_btrs, align 8, !dbg !3110
  %sh_prom128 = zext i32 %reg124.0 to i64, !dbg !3110
  %shl129 = shl i64 1, %sh_prom128, !dbg !3110
  %and130 = and i64 %58, %shl129, !dbg !3110
  %tobool131 = icmp eq i64 %and130, 0, !dbg !3110
  br i1 %tobool131, label %for.body127.for.inc143_crit_edge, label %land.lhs.true132, !dbg !3111

for.body127.for.inc143_crit_edge:                 ; preds = %for.body127
  %.pre3 = add nsw i32 %reg124.0, 1, !dbg !3112
  br label %for.inc143, !dbg !3111

land.lhs.true132:                                 ; preds = %for.body127
  %add = add nsw i32 %reg124.0, 1, !dbg !3113
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn133, align 8, !dbg !3114
  %call134 = call i32 @refers_to_regno_p(i32 %reg124.0, i32 %add, %struct.rtx_def* %59, %struct.rtx_def** null) #6, !dbg !3115
  %tobool135 = icmp eq i32 %call134, 0, !dbg !3115
  br i1 %tobool135, label %for.inc143, label %if.then136, !dbg !3116

if.then136:                                       ; preds = %land.lhs.true132
  %60 = load %struct.btr_user_s*, %struct.btr_user_s** %users_this_bb, align 8, !dbg !3117
  call fastcc void @note_other_use_this_block(i32 %reg124.0, %struct.btr_user_s* %60) #7, !dbg !3119
  %61 = load i64, i64* %btrs_live_in_block, align 8, !dbg !3120
  %or141 = or i64 %61, %shl129, !dbg !3120
  store i64 %or141, i64* %btrs_live_in_block, align 8, !dbg !3120
  br label %for.inc143, !dbg !3121

for.inc143:                                       ; preds = %for.body127.for.inc143_crit_edge, %land.lhs.true132, %if.then136
  %inc144.pre-phi = phi i32 [ %.pre3, %for.body127.for.inc143_crit_edge ], [ %add, %land.lhs.true132 ], [ %add, %if.then136 ], !dbg !3112
  call void @llvm.dbg.value(metadata i32 %inc144.pre-phi, metadata !2965, metadata !DIExpression()), !dbg !3101
  br label %for.cond125, !dbg !3122, !llvm.loop !3123

for.end145:                                       ; preds = %for.cond125
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx106.pre-phi, align 8, !dbg !3125
  call void @note_stores(%struct.rtx_def* %62, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @note_btr_set, i8* nonnull %1) #6, !dbg !3126
  br label %if.end150

if.end150:                                        ; preds = %for.end145, %if.then116
  %63 = load i64, i64* %7, align 8, !dbg !3127
  %64 = bitcast %struct.btr_user_s* %call111 to i64*, !dbg !3128
  store i64 %63, i64* %64, align 8, !dbg !3128
  store %struct.btr_user_s* %call111, %struct.btr_user_s** %users_this_bb, align 8, !dbg !3129
  br label %if.end154, !dbg !3130

if.end154:                                        ; preds = %if.else102, %if.end150
  %bf.load155 = load i32, i32* %25, align 8, !dbg !3131
  %bf.clear156 = and i32 %bf.load155, 65535, !dbg !3131
  %cmp157 = icmp eq i32 %bf.clear156, 10, !dbg !3131
  br i1 %cmp157, label %if.then158, label %if.end205, !dbg !3132

if.then158:                                       ; preds = %if.end154
  call void @llvm.dbg.value(metadata i64* @call_used_reg_set, metadata !2968, metadata !DIExpression()), !dbg !2989
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !3133
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx106.pre-phi, align 8, !dbg !3134
  call void @llvm.dbg.value(metadata %struct.rtx_def* %65, metadata !2972, metadata !DIExpression()), !dbg !2989
  %66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i64 0, i32 0, !dbg !3135
  %bf.load164 = load i32, i32* %66, align 8, !dbg !3135
  %bf.clear165 = and i32 %bf.load164, 65535, !dbg !3135
  %cmp166 = icmp eq i32 %bf.clear165, 15, !dbg !3137
  br i1 %cmp166, label %if.then167, label %if.end188, !dbg !3138

if.then167:                                       ; preds = %if.then158
  %arrayidx170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3139
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx170 to %struct.rtvec_def**, !dbg !3139
  %67 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3139
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %67, i64 0, i32 0, !dbg !3139
  %68 = load i32, i32* %num_elem, align 8, !dbg !3139
  call void @llvm.dbg.value(metadata i32 %68, metadata !2973, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2989
  %69 = load i64, i64* @call_used_reg_set, align 8, !dbg !3141
  %neg = xor i64 %69, -1, !dbg !3141
  %70 = sext i32 %68 to i64, !dbg !3145
  br label %for.cond172, !dbg !3145

for.cond172:                                      ; preds = %for.inc186, %if.then167
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc186 ], [ %70, %if.then167 ], !dbg !2989
  %clobbered.0 = phi i64* [ %clobbered.1, %for.inc186 ], [ @call_used_reg_set, %if.then167 ], !dbg !2989
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3146
  call void @llvm.dbg.value(metadata i32 undef, metadata !2973, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2989
  call void @llvm.dbg.value(metadata i64* %clobbered.0, metadata !2968, metadata !DIExpression()), !dbg !2989
  %cmp173 = icmp sgt i64 %indvars.iv, 0, !dbg !3147
  br i1 %cmp173, label %for.body174, label %if.end188.loopexit, !dbg !3148

for.body174:                                      ; preds = %for.cond172
  %arrayidx180 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %67, i64 0, i32 1, i64 %indvars.iv.next, !dbg !3149
  %71 = bitcast %struct.rtx_def** %arrayidx180 to i32**, !dbg !3149
  %72 = load i32*, i32** %71, align 8, !dbg !3149
  %bf.load181 = load i32, i32* %72, align 8, !dbg !3149
  %bf.clear182 = and i32 %bf.load181, 65535, !dbg !3149
  %cmp183 = icmp eq i32 %bf.clear182, 27, !dbg !3150
  br i1 %cmp183, label %if.then184, label %for.inc186, !dbg !3151

if.then184:                                       ; preds = %for.body174
  call void @llvm.dbg.value(metadata i64 %neg, metadata !2971, metadata !DIExpression()), !dbg !2989
  store i64 %neg, i64* %call_saved, align 8, !dbg !3152
  call void @llvm.dbg.value(metadata i64* %call_saved, metadata !2968, metadata !DIExpression()), !dbg !2989
  br label %for.inc186, !dbg !3153

for.inc186:                                       ; preds = %for.body174, %if.then184
  %clobbered.1 = phi i64* [ %call_saved, %if.then184 ], [ %clobbered.0, %for.body174 ], !dbg !2989
  call void @llvm.dbg.value(metadata i64* %clobbered.1, metadata !2968, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i32 undef, metadata !2973, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2989
  br label %for.cond172, !dbg !3154, !llvm.loop !3155

if.end188.loopexit:                               ; preds = %for.cond172
  %clobbered.0.lcssa = phi i64* [ %clobbered.0, %for.cond172 ], !dbg !2989
  call void @llvm.dbg.value(metadata i64* %clobbered.0.lcssa, metadata !2968, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64* %clobbered.0.lcssa, metadata !2968, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64* %clobbered.0.lcssa, metadata !2968, metadata !DIExpression()), !dbg !2989
  br label %if.end188, !dbg !3157

if.end188:                                        ; preds = %if.end188.loopexit, %if.then158
  %clobbered.2 = phi i64* [ @call_used_reg_set, %if.then158 ], [ %clobbered.0.lcssa, %if.end188.loopexit ], !dbg !3159
  call void @llvm.dbg.value(metadata i64* %clobbered.2, metadata !2968, metadata !DIExpression()), !dbg !2989
  %73 = load i32, i32* @first_btr, align 4, !dbg !3157
  call void @llvm.dbg.value(metadata i32 %73, metadata !2948, metadata !DIExpression()), !dbg !2987
  br label %for.cond189, !dbg !3160

for.cond189:                                      ; preds = %for.inc200, %if.end188
  %74 = phi i32 [ %73, %if.end188 ], [ %inc201, %for.inc200 ], !dbg !3161
  store i32 %74, i32* %regno, align 4, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %74, metadata !2948, metadata !DIExpression()), !dbg !2987
  %75 = load i32, i32* @last_btr, align 4, !dbg !3162
  %cmp190 = icmp sgt i32 %74, %75, !dbg !3164
  br i1 %cmp190, label %for.end202, label %for.body191, !dbg !3165

for.body191:                                      ; preds = %for.cond189
  %76 = load i64, i64* %clobbered.2, align 8, !dbg !3166
  call void @llvm.dbg.value(metadata i32 %74, metadata !2948, metadata !DIExpression()), !dbg !2987
  %sh_prom192 = zext i32 %74 to i64, !dbg !3166
  %shl193 = shl i64 1, %sh_prom192, !dbg !3166
  %and194 = and i64 %76, %shl193, !dbg !3166
  %tobool195 = icmp eq i64 %and194, 0, !dbg !3166
  br i1 %tobool195, label %for.inc200, label %if.then196, !dbg !3168

if.then196:                                       ; preds = %for.body191
  %77 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !3169
  call void @llvm.dbg.value(metadata i32 %74, metadata !2948, metadata !DIExpression()), !dbg !2987
  %idxprom197 = sext i32 %74 to i64, !dbg !3169
  %arrayidx198 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %77, i64 %idxprom197, !dbg !3169
  %78 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx198, align 8, !dbg !3169
  call void @note_btr_set(%struct.rtx_def* %78, %struct.rtx_def* null, i8* nonnull %1) #7, !dbg !3170
  %.pre1 = load i32, i32* %regno, align 4, !dbg !3171
  br label %for.inc200, !dbg !3170

for.inc200:                                       ; preds = %for.body191, %if.then196
  %79 = phi i32 [ %74, %for.body191 ], [ %.pre1, %if.then196 ], !dbg !3171
  call void @llvm.dbg.value(metadata i32 %79, metadata !2948, metadata !DIExpression()), !dbg !2987
  %inc201 = add nsw i32 %79, 1, !dbg !3171
  call void @llvm.dbg.value(metadata i32 %inc201, metadata !2948, metadata !DIExpression()), !dbg !2987
  br label %for.cond189, !dbg !3172, !llvm.loop !3173

for.end202:                                       ; preds = %for.cond189
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !3175
  br label %if.end205, !dbg !3176

if.end205:                                        ; preds = %for.end96, %for.end202, %if.end154, %if.then45
  %defs_this_bb.1 = phi %struct.btr_def_s* [ %call52, %if.then45 ], [ %defs_this_bb.0, %if.end154 ], [ %defs_this_bb.0, %for.end202 ], [ %defs_this_bb.0, %for.end96 ], !dbg !2986
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %defs_this_bb.1, metadata !2944, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8, !dbg !3177
  br label %for.inc207, !dbg !3178

for.inc207:                                       ; preds = %lor.lhs.false35, %if.end205
  %defs_this_bb.2 = phi %struct.btr_def_s* [ %defs_this_bb.1, %if.end205 ], [ %defs_this_bb.0, %lor.lhs.false35 ], !dbg !2986
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %defs_this_bb.2, metadata !2944, metadata !DIExpression()), !dbg !2986
  %80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3179
  %rt_rtx211 = bitcast %union.rtunion_def* %80 to %struct.rtx_def**, !dbg !3179
  %inc212 = add nsw i32 %insn_luid.1, 1, !dbg !3180
  call void @llvm.dbg.value(metadata i32 %inc212, metadata !2936, metadata !DIExpression()), !dbg !2980
  br label %for.cond24, !dbg !3181, !llvm.loop !3182

for.end213:                                       ; preds = %for.cond24
  %insn_luid.1.lcssa = phi i32 [ %insn_luid.1, %for.cond24 ], !dbg !2980
  call void @llvm.dbg.value(metadata i32 %insn_luid.1.lcssa, metadata !2936, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i32 %insn_luid.1.lcssa, metadata !2936, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i32 %insn_luid.1.lcssa, metadata !2936, metadata !DIExpression()), !dbg !2980
  %81 = load i64, i64* %btrs_live_in_block, align 8, !dbg !3184
  %82 = load i64*, i64** @btrs_live, align 8, !dbg !3184
  %arrayidx216 = getelementptr inbounds i64, i64* %82, i64 %indvars.iv4, !dbg !3184
  store i64 %81, i64* %arrayidx216, align 8, !dbg !3184
  %83 = load i64, i64* %btrs_written_in_block, align 8, !dbg !3185
  %arrayidx219 = getelementptr inbounds i64, i64* %btrs_written, i64 %indvars.iv4, !dbg !3185
  store i64 %83, i64* %arrayidx219, align 8, !dbg !3185
  %84 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !3186
  %arrayidx221 = getelementptr inbounds i64, i64* %84, i64 %indvars.iv4, !dbg !3186
  store i64 0, i64* %arrayidx221, align 8, !dbg !3186
  %85 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !3186
  %arrayidx223 = getelementptr inbounds i64, i64* %85, i64 %indvars.iv4, !dbg !3186
  %call224 = call %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def* %call) #6, !dbg !3186
  call void @reg_set_to_hard_reg_set(i64* nonnull %arrayidx223, %struct.bitmap_head_def* %call224) #6, !dbg !3186
  %86 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3188
  %end_227 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %86, i64 0, i32 1, !dbg !3188
  %head_231 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %86, i64 0, i32 0, !dbg !3190
  %87 = load %struct.rtx_def*, %struct.rtx_def** %head_231, align 8, !dbg !3190
  br label %for.cond228, !dbg !3192

for.cond228:                                      ; preds = %for.body249, %for.end213
  %insn.1.in = phi %struct.rtx_def** [ %end_227, %for.end213 ], [ %rt_rtx253, %for.body249 ]
  %insn.1 = load %struct.rtx_def*, %struct.rtx_def** %insn.1.in, align 8, !dbg !3193
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !2945, metadata !DIExpression()), !dbg !2986
  %cmp232 = icmp eq %struct.rtx_def* %insn.1, %87, !dbg !3194
  br i1 %cmp232, label %for.end254, label %land.rhs, !dbg !3195

land.rhs:                                         ; preds = %for.cond228
  %88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 0, !dbg !3196
  %bf.load233 = load i32, i32* %88, align 8, !dbg !3196
  %bf.clear234 = and i32 %bf.load233, 65535, !dbg !3196
  %cmp235 = icmp eq i32 %bf.clear234, 8, !dbg !3196
  br i1 %cmp235, label %lor.end, label %lor.lhs.false236, !dbg !3196

lor.lhs.false236:                                 ; preds = %land.rhs
  %cmp239 = icmp eq i32 %bf.clear234, 7, !dbg !3196
  br i1 %cmp239, label %lor.end, label %lor.lhs.false240, !dbg !3196

lor.lhs.false240:                                 ; preds = %lor.lhs.false236
  %cmp243 = icmp eq i32 %bf.clear234, 9, !dbg !3196
  br i1 %cmp243, label %lor.end, label %lor.rhs, !dbg !3196

lor.rhs:                                          ; preds = %lor.lhs.false240
  %cmp246 = icmp eq i32 %bf.clear234, 10, !dbg !3196
  br label %lor.end, !dbg !3196

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false240, %lor.lhs.false236, %land.rhs
  %89 = phi i1 [ true, %lor.lhs.false240 ], [ true, %lor.lhs.false236 ], [ true, %land.rhs ], [ %cmp246, %lor.rhs ]
  br i1 %89, label %for.end254, label %for.body249, !dbg !3197

for.body249:                                      ; preds = %lor.end
  %90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3198
  %rt_rtx253 = bitcast %union.rtunion_def* %90 to %struct.rtx_def**, !dbg !3198
  br label %for.cond228, !dbg !3199, !llvm.loop !3200

for.end254:                                       ; preds = %lor.end, %for.cond228
  %insn.1.lcssa = phi %struct.rtx_def* [ %insn.1, %lor.end ], [ %insn.1, %for.cond228 ], !dbg !3193
  %call255 = call zeroext i8 @can_throw_internal(%struct.rtx_def* %insn.1.lcssa) #6, !dbg !3202
  %tobool256 = icmp eq i8 %call255, 0, !dbg !3202
  br i1 %tobool256, label %if.end262, label %if.then257, !dbg !3203

if.then257:                                       ; preds = %for.end254
  %91 = load i64, i64* @call_used_reg_set, align 8, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %91, metadata !2974, metadata !DIExpression()), !dbg !3205
  %92 = load i64, i64* @all_btrs, align 8, !dbg !3206
  %and258 = and i64 %91, %92, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %and258, metadata !2974, metadata !DIExpression()), !dbg !3205
  %93 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !3207
  %arrayidx260 = getelementptr inbounds i64, i64* %93, i64 %indvars.iv4, !dbg !3207
  %94 = load i64, i64* %arrayidx260, align 8, !dbg !3207
  %or261 = or i64 %94, %and258, !dbg !3207
  store i64 %or261, i64* %arrayidx260, align 8, !dbg !3207
  call void @llvm.dbg.value(metadata i32 1, metadata !2947, metadata !DIExpression()), !dbg !2986
  br label %if.end262, !dbg !3208

if.end262:                                        ; preds = %for.end254, %if.then257
  %can_throw.0 = phi i1 [ true, %if.then257 ], [ false, %for.end254 ]
  br i1 %can_throw.0, label %if.then268, label %lor.lhs.false264, !dbg !3209

lor.lhs.false264:                                 ; preds = %if.end262
  %95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1.lcssa, i64 0, i32 0, !dbg !3210
  %bf.load265 = load i32, i32* %95, align 8, !dbg !3210
  %bf.clear266 = and i32 %bf.load265, 65535, !dbg !3210
  %cmp267 = icmp eq i32 %bf.clear266, 9, !dbg !3210
  br i1 %cmp267, label %if.then268, label %if.end286, !dbg !3211

if.then268:                                       ; preds = %lor.lhs.false264, %if.end262
  %96 = load i32, i32* @first_btr, align 4, !dbg !3212
  call void @llvm.dbg.value(metadata i32 %96, metadata !2977, metadata !DIExpression()), !dbg !3214
  br label %for.cond270, !dbg !3215

for.cond270:                                      ; preds = %for.inc283, %if.then268
  %regno269.0 = phi i32 [ %96, %if.then268 ], [ %add273, %for.inc283 ], !dbg !3216
  call void @llvm.dbg.value(metadata i32 %regno269.0, metadata !2977, metadata !DIExpression()), !dbg !3214
  %97 = load i32, i32* @last_btr, align 4, !dbg !3217
  %cmp271 = icmp sgt i32 %regno269.0, %97, !dbg !3219
  br i1 %cmp271, label %if.end286.loopexit, label %for.body272, !dbg !3220

for.body272:                                      ; preds = %for.cond270
  %add273 = add nsw i32 %regno269.0, 1, !dbg !3221
  %call274 = call i32 @refers_to_regno_p(i32 %regno269.0, i32 %add273, %struct.rtx_def* %insn.1.lcssa, %struct.rtx_def** null) #6, !dbg !3223
  %tobool275 = icmp eq i32 %call274, 0, !dbg !3223
  br i1 %tobool275, label %for.inc283, label %if.then276, !dbg !3224

if.then276:                                       ; preds = %for.body272
  %sh_prom277 = zext i32 %regno269.0 to i64, !dbg !3225
  %shl278 = shl i64 1, %sh_prom277, !dbg !3225
  %98 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !3225
  %arrayidx280 = getelementptr inbounds i64, i64* %98, i64 %indvars.iv4, !dbg !3225
  %99 = load i64, i64* %arrayidx280, align 8, !dbg !3225
  %or281 = or i64 %99, %shl278, !dbg !3225
  store i64 %or281, i64* %arrayidx280, align 8, !dbg !3225
  br label %for.inc283, !dbg !3225

for.inc283:                                       ; preds = %for.body272, %if.then276
  call void @llvm.dbg.value(metadata i32 %add273, metadata !2977, metadata !DIExpression()), !dbg !3214
  br label %for.cond270, !dbg !3226, !llvm.loop !3227

if.end286.loopexit:                               ; preds = %for.cond270
  br label %if.end286, !dbg !3229

if.end286:                                        ; preds = %if.end286.loopexit, %lor.lhs.false264
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3229
  %tobool287 = icmp eq %struct._IO_FILE* %100, null, !dbg !3229
  br i1 %tobool287, label %for.inc290, label %if.then288, !dbg !3231

if.then288:                                       ; preds = %if.end286
  %101 = trunc i64 %indvars.iv4 to i32, !dbg !3232
  call fastcc void @dump_btrs_live(i32 %101) #7, !dbg !3232
  br label %for.inc290, !dbg !3232

for.inc290:                                       ; preds = %if.end286, %if.then288
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !3233
  call void @llvm.dbg.value(metadata i32 undef, metadata !2935, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2980
  br label %for.cond, !dbg !3234, !llvm.loop !3235

for.end292:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #8, !dbg !3237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3237
  ret void, !dbg !3237
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_kill(%struct.simple_bitmap_def** %bb_kill, %struct.simple_bitmap_def** %btr_defset, i64* %btrs_written) unnamed_addr #4 !dbg !3238 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %bb_kill, metadata !3242, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %btr_defset, metadata !3243, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64* %btrs_written, metadata !3244, metadata !DIExpression()), !dbg !3247
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3248
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3248
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3248
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3248
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3248
  tail call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %bb_kill, i32 %2) #6, !dbg !3249
  call void @llvm.dbg.value(metadata i32 2, metadata !3245, metadata !DIExpression()), !dbg !3247
  br label %for.cond, !dbg !3250

for.cond:                                         ; preds = %for.inc17, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc17 ], [ 2, %entry ], !dbg !3252
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3245, metadata !DIExpression()), !dbg !3247
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3253
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3253
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !3253
  %x_last_basic_block3 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 5, !dbg !3253
  %5 = load i32, i32* %x_last_basic_block3, align 8, !dbg !3253
  %6 = sext i32 %5 to i64, !dbg !3255
  %cmp = icmp slt i64 %indvars.iv, %6, !dbg !3255
  br i1 %cmp, label %for.body, label %for.end19, !dbg !3256

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* @first_btr, align 4, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %7, metadata !3246, metadata !DIExpression()), !dbg !3247
  %arrayidx = getelementptr inbounds i64, i64* %btrs_written, i64 %indvars.iv, !dbg !3260
  %arrayidx12 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bb_kill, i64 %indvars.iv, !dbg !3260
  br label %for.cond4, !dbg !3263

for.cond4:                                        ; preds = %for.inc, %for.body
  %regno.0 = phi i32 [ %7, %for.body ], [ %inc, %for.inc ], !dbg !3264
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !3246, metadata !DIExpression()), !dbg !3247
  %8 = load i32, i32* @last_btr, align 4, !dbg !3265
  %cmp5 = icmp sgt i32 %regno.0, %8, !dbg !3266
  br i1 %cmp5, label %for.inc17, label %for.body6, !dbg !3267

for.body6:                                        ; preds = %for.cond4
  %9 = load i64, i64* @all_btrs, align 8, !dbg !3268
  %sh_prom = zext i32 %regno.0 to i64, !dbg !3268
  %shl = shl i64 1, %sh_prom, !dbg !3268
  %and = and i64 %9, %shl, !dbg !3268
  %tobool = icmp eq i64 %and, 0, !dbg !3268
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !3269

land.lhs.true:                                    ; preds = %for.body6
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3270
  %and9 = and i64 %10, %shl, !dbg !3270
  %tobool10 = icmp eq i64 %and9, 0, !dbg !3270
  br i1 %tobool10, label %for.inc, label %if.then, !dbg !3271

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx12, align 8, !dbg !3272
  %12 = load i32, i32* @first_btr, align 4, !dbg !3273
  %sub = sub nsw i32 %regno.0, %12, !dbg !3274
  %idxprom15 = sext i32 %sub to i64, !dbg !3275
  %arrayidx16 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %btr_defset, i64 %idxprom15, !dbg !3275
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx16, align 8, !dbg !3275
  tail call void @sbitmap_a_or_b(%struct.simple_bitmap_def* %11, %struct.simple_bitmap_def* %11, %struct.simple_bitmap_def* %13) #6, !dbg !3276
  br label %for.inc, !dbg !3276

for.inc:                                          ; preds = %land.lhs.true, %for.body6, %if.then
  %inc = add nsw i32 %regno.0, 1, !dbg !3277
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3246, metadata !DIExpression()), !dbg !3247
  br label %for.cond4, !dbg !3278, !llvm.loop !3279

for.inc17:                                        ; preds = %for.cond4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3281
  call void @llvm.dbg.value(metadata i32 undef, metadata !3245, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3247
  br label %for.cond, !dbg !3282, !llvm.loop !3283

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !3285
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_out(%struct.simple_bitmap_def** %bb_out, %struct.simple_bitmap_def** %bb_gen, %struct.simple_bitmap_def** %bb_kill, i32 %max_uid) unnamed_addr #4 !dbg !3286 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %bb_out, metadata !3290, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %bb_gen, metadata !3291, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %bb_kill, metadata !3292, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i32 %max_uid, metadata !3293, metadata !DIExpression()), !dbg !3297
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %max_uid) #6, !dbg !3298
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3296, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i32 2, metadata !3294, metadata !DIExpression()), !dbg !3297
  br label %for.cond, !dbg !3299

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.body ], [ 2, %entry ], !dbg !3301
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3294, metadata !DIExpression()), !dbg !3297
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3302
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3302
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3302
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3302
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3302
  %3 = sext i32 %2 to i64, !dbg !3304
  %cmp = icmp slt i64 %indvars.iv2, %3, !dbg !3304
  br i1 %cmp, label %for.body, label %while.cond.preheader, !dbg !3305

while.cond.preheader:                             ; preds = %for.cond
  %.lcssa4 = phi %struct.function* [ %0, %for.cond ], !dbg !3302
  br label %while.cond, !dbg !3306

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bb_out, i64 %indvars.iv2, !dbg !3307
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3307
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bb_gen, i64 %indvars.iv2, !dbg !3308
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8, !dbg !3308
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %4, %struct.simple_bitmap_def* %5) #6, !dbg !3309
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3310
  call void @llvm.dbg.value(metadata i32 undef, metadata !3294, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3297
  br label %for.cond, !dbg !3311, !llvm.loop !3312

while.cond.loopexit:                              ; preds = %for.cond3
  %.lcssa = phi %struct.function* [ %7, %for.cond3 ], !dbg !3314
  %changed.1.lcssa = phi i32 [ %changed.1, %for.cond3 ], !dbg !3318
  call void @llvm.dbg.value(metadata i32 %changed.1.lcssa, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i32 %changed.1.lcssa, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i32 %changed.1.lcssa, metadata !3295, metadata !DIExpression()), !dbg !3297
  br label %while.cond, !dbg !3306

while.cond:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %6 = phi %struct.function* [ %.lcssa, %while.cond.loopexit ], [ %.lcssa4, %while.cond.preheader ]
  %changed.0 = phi i32 [ %changed.1.lcssa, %while.cond.loopexit ], [ 1, %while.cond.preheader ], !dbg !3297
  call void @llvm.dbg.value(metadata i32 %changed.0, metadata !3295, metadata !DIExpression()), !dbg !3297
  %tobool = icmp eq i32 %changed.0, 0, !dbg !3306
  br i1 %tobool, label %while.end, label %for.cond3.preheader, !dbg !3306

for.cond3.preheader:                              ; preds = %while.cond
  br label %for.cond3, !dbg !3319

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body8
  %indvars.iv = phi i64 [ 2, %for.cond3.preheader ], [ %indvars.iv.next, %for.body8 ], !dbg !3314
  %7 = phi %struct.function* [ %6, %for.cond3.preheader ], [ %.pre, %for.body8 ], !dbg !3314
  %changed.1 = phi i32 [ 0, %for.cond3.preheader ], [ %or, %for.body8 ], !dbg !3318
  call void @llvm.dbg.value(metadata i32 %changed.1, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3294, metadata !DIExpression()), !dbg !3297
  %cfg5 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !3314
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5, align 8, !dbg !3314
  %x_last_basic_block6 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 5, !dbg !3314
  %9 = load i32, i32* %x_last_basic_block6, align 8, !dbg !3314
  %10 = sext i32 %9 to i64, !dbg !3320
  %cmp7 = icmp slt i64 %indvars.iv, %10, !dbg !3320
  br i1 %cmp7, label %for.body8, label %while.cond.loopexit, !dbg !3319, !llvm.loop !3321

for.body8:                                        ; preds = %for.cond3
  %11 = trunc i64 %indvars.iv to i32, !dbg !3323
  tail call void @sbitmap_union_of_preds(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %bb_out, i32 %11) #6, !dbg !3323
  %arrayidx10 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bb_out, i64 %indvars.iv, !dbg !3325
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx10, align 8, !dbg !3325
  %arrayidx12 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bb_gen, i64 %indvars.iv, !dbg !3326
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx12, align 8, !dbg !3326
  %arrayidx14 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bb_kill, i64 %indvars.iv, !dbg !3327
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx14, align 8, !dbg !3327
  %call15 = tail call zeroext i8 @sbitmap_union_of_diff_cg(%struct.simple_bitmap_def* %12, %struct.simple_bitmap_def* %13, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %14) #6, !dbg !3328
  %conv = zext i8 %call15 to i32, !dbg !3328
  %or = or i32 %changed.1, %conv, !dbg !3329
  call void @llvm.dbg.value(metadata i32 %or, metadata !3295, metadata !DIExpression()), !dbg !3297
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3330
  call void @llvm.dbg.value(metadata i32 undef, metadata !3294, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3297
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3314
  br label %for.cond3, !dbg !3331, !llvm.loop !3332

while.end:                                        ; preds = %while.cond
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !3334
  %15 = load i8*, i8** %popcount, align 8, !dbg !3334
  tail call void @free(i8* %15) #6, !dbg !3334
  %16 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3334
  tail call void @free(i8* %16) #6, !dbg !3334
  ret void, !dbg !3335
}

; Function Attrs: nounwind uwtable
define internal fastcc void @link_btr_uses(%struct.btr_def_s** %def_array, %struct.btr_user_s** %use_array, %struct.simple_bitmap_def** %bb_out, %struct.simple_bitmap_def** %btr_defset, i32 %max_uid) unnamed_addr #4 !dbg !3336 {
entry:
  %uid = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.btr_def_s** %def_array, metadata !3340, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata %struct.btr_user_s** %use_array, metadata !3341, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %bb_out, metadata !3342, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %btr_defset, metadata !3343, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 %max_uid, metadata !3344, metadata !DIExpression()), !dbg !3386
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %max_uid) #6, !dbg !3387
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3346, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 2, metadata !3345, metadata !DIExpression()), !dbg !3386
  %0 = bitcast i32* %uid to i8*, !dbg !3388
  %1 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !3388
  br label %for.cond, !dbg !3389

for.cond:                                         ; preds = %for.inc126, %entry
  %i.0 = phi i32 [ 2, %entry ], [ %inc127, %for.inc126 ], !dbg !3390
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3345, metadata !DIExpression()), !dbg !3386
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3391
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3391
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3391
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 5, !dbg !3391
  %4 = load i32, i32* %x_last_basic_block, align 8, !dbg !3391
  %cmp = icmp slt i32 %i.0, %4, !dbg !3392
  br i1 %cmp, label %for.body, label %for.end128, !dbg !3393

for.body:                                         ; preds = %for.cond
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 2, !dbg !3394
  %5 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3394
  %tobool = icmp eq %struct.VEC_basic_block_gc* %5, null, !dbg !3394
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3394

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %5, i64 0, i32 0, !dbg !3394
  br label %cond.end, !dbg !3394

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !3394
  %call6 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %i.0) #7, !dbg !3394
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call6, metadata !3347, metadata !DIExpression()), !dbg !3395
  call void @sbitmap_union_of_preds(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %bb_out, i32 %i.0) #6, !dbg !3396
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call6, i64 0, i32 7, !dbg !3397
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3397
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3397
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 0, !dbg !3397
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 1, !dbg !3398
  %7 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3398
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3398
  %rt_rtx = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !3398
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3398
  call void @llvm.dbg.value(metadata %struct.rtx_def* %9, metadata !3352, metadata !DIExpression()), !dbg !3395
  br label %for.cond9, !dbg !3399

for.cond9:                                        ; preds = %for.inc120, %cond.end
  %insn.0.in = phi %struct.rtx_def** [ %head_, %cond.end ], [ %rt_rtx124, %for.inc120 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3400
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3351, metadata !DIExpression()), !dbg !3395
  %cmp10 = icmp eq %struct.rtx_def* %insn.0, %9, !dbg !3401
  br i1 %cmp10, label %for.inc126, label %for.body11, !dbg !3402

for.body11:                                       ; preds = %for.cond9
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3403
  %bf.load = load i32, i32* %10, align 8, !dbg !3403
  %bf.clear = and i32 %bf.load, 65535, !dbg !3403
  %cmp12 = icmp eq i32 %bf.clear, 8, !dbg !3403
  br i1 %cmp12, label %if.then, label %lor.lhs.false, !dbg !3403

lor.lhs.false:                                    ; preds = %for.body11
  %cmp15 = icmp eq i32 %bf.clear, 7, !dbg !3403
  br i1 %cmp15, label %if.then, label %lor.lhs.false16, !dbg !3403

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %cmp19 = icmp eq i32 %bf.clear, 9, !dbg !3403
  br i1 %cmp19, label %if.then, label %lor.lhs.false20, !dbg !3403

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %cmp23 = icmp eq i32 %bf.clear, 10, !dbg !3403
  br i1 %cmp23, label %if.then, label %for.inc120, !dbg !3404

if.then:                                          ; preds = %lor.lhs.false20, %lor.lhs.false16, %lor.lhs.false, %for.body11
  %arrayidx26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3405
  %rt_int = bitcast %union.rtunion_def* %arrayidx26 to i32*, !dbg !3405
  %11 = load i32, i32* %rt_int, align 8, !dbg !3405
  call void @llvm.dbg.value(metadata i32 %11, metadata !3353, metadata !DIExpression()), !dbg !3406
  %idxprom = sext i32 %11 to i64, !dbg !3407
  %arrayidx27 = getelementptr inbounds %struct.btr_def_s*, %struct.btr_def_s** %def_array, i64 %idxprom, !dbg !3407
  %12 = load %struct.btr_def_s*, %struct.btr_def_s** %arrayidx27, align 8, !dbg !3407
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %12, metadata !3359, metadata !DIExpression()), !dbg !3406
  %arrayidx29 = getelementptr inbounds %struct.btr_user_s*, %struct.btr_user_s** %use_array, i64 %idxprom, !dbg !3408
  %13 = load %struct.btr_user_s*, %struct.btr_user_s** %arrayidx29, align 8, !dbg !3408
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %13, metadata !3360, metadata !DIExpression()), !dbg !3406
  %cmp30 = icmp eq %struct.btr_def_s* %12, null, !dbg !3409
  br i1 %cmp30, label %if.end, label %if.then31, !dbg !3411

if.then31:                                        ; preds = %if.then
  %btr = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %12, i64 0, i32 5, !dbg !3412
  %14 = load i32, i32* %btr, align 8, !dbg !3412
  %15 = load i32, i32* @first_btr, align 4, !dbg !3414
  %sub = sub nsw i32 %14, %15, !dbg !3415
  %idxprom32 = sext i32 %sub to i64, !dbg !3416
  %arrayidx33 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %btr_defset, i64 %idxprom32, !dbg !3416
  %16 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx33, align 8, !dbg !3416
  call void @sbitmap_difference(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %16) #6, !dbg !3417
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %11) #7, !dbg !3418
  br label %if.end, !dbg !3419

if.end:                                           ; preds = %if.then, %if.then31
  %cmp34 = icmp eq %struct.btr_user_s* %13, null, !dbg !3420
  br i1 %cmp34, label %if.end93, label %if.then35, !dbg !3421

if.then35:                                        ; preds = %if.end
  %call36 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %max_uid) #6, !dbg !3422
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call36, metadata !3361, metadata !DIExpression()), !dbg !3388
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3423
  call void @llvm.dbg.value(metadata i32 0, metadata !3364, metadata !DIExpression()), !dbg !3388
  store i32 0, i32* %uid, align 4, !dbg !3424
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3425
  %use = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %13, i64 0, i32 4, !dbg !3426
  %17 = load %struct.rtx_def*, %struct.rtx_def** %use, align 8, !dbg !3426
  %tobool37 = icmp eq %struct.rtx_def* %17, null, !dbg !3427
  br i1 %tobool37, label %if.else, label %if.then38, !dbg !3428

if.then38:                                        ; preds = %if.then35
  %call40 = call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %17) #7, !dbg !3429
  %18 = load i32, i32* @first_btr, align 4, !dbg !3430
  %sub41 = sub i32 %call40, %18, !dbg !3431
  %idxprom42 = zext i32 %sub41 to i64, !dbg !3432
  %arrayidx43 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %btr_defset, i64 %idxprom42, !dbg !3432
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx43, align 8, !dbg !3432
  call void @sbitmap_a_and_b(%struct.simple_bitmap_def* %call36, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %19) #6, !dbg !3433
  br label %if.end56, !dbg !3433

if.else:                                          ; preds = %if.then35
  call void @sbitmap_zero(%struct.simple_bitmap_def* %call36) #6, !dbg !3434
  %20 = load i32, i32* @first_btr, align 4, !dbg !3435
  call void @llvm.dbg.value(metadata i32 %20, metadata !3376, metadata !DIExpression()), !dbg !3437
  %insn48 = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %13, i64 0, i32 3, !dbg !3438
  br label %for.cond44, !dbg !3441

for.cond44:                                       ; preds = %for.inc, %if.else
  %reg.0 = phi i32 [ %20, %if.else ], [ %inc.pre-phi, %for.inc ], !dbg !3442
  call void @llvm.dbg.value(metadata i32 %reg.0, metadata !3376, metadata !DIExpression()), !dbg !3437
  %21 = load i32, i32* @last_btr, align 4, !dbg !3443
  %cmp45 = icmp sgt i32 %reg.0, %21, !dbg !3444
  br i1 %cmp45, label %if.end56.loopexit, label %for.body46, !dbg !3445

for.body46:                                       ; preds = %for.cond44
  %22 = load i64, i64* @all_btrs, align 8, !dbg !3446
  %sh_prom = zext i32 %reg.0 to i64, !dbg !3446
  %shl = shl i64 1, %sh_prom, !dbg !3446
  %and = and i64 %22, %shl, !dbg !3446
  %tobool47 = icmp eq i64 %and, 0, !dbg !3446
  br i1 %tobool47, label %for.body46.for.inc_crit_edge, label %land.lhs.true, !dbg !3447

for.body46.for.inc_crit_edge:                     ; preds = %for.body46
  %.pre = add nsw i32 %reg.0, 1, !dbg !3448
  br label %for.inc, !dbg !3447

land.lhs.true:                                    ; preds = %for.body46
  %add = add nsw i32 %reg.0, 1, !dbg !3449
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn48, align 8, !dbg !3450
  %call49 = call i32 @refers_to_regno_p(i32 %reg.0, i32 %add, %struct.rtx_def* %23, %struct.rtx_def** null) #6, !dbg !3451
  %tobool50 = icmp eq i32 %call49, 0, !dbg !3451
  br i1 %tobool50, label %for.inc, label %if.then51, !dbg !3452

if.then51:                                        ; preds = %land.lhs.true
  %24 = load i32, i32* @first_btr, align 4, !dbg !3453
  %sub52 = sub nsw i32 %reg.0, %24, !dbg !3454
  %idxprom53 = sext i32 %sub52 to i64, !dbg !3455
  %arrayidx54 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %btr_defset, i64 %idxprom53, !dbg !3455
  %25 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx54, align 8, !dbg !3455
  call void @sbitmap_a_or_b_and_c(%struct.simple_bitmap_def* %call36, %struct.simple_bitmap_def* %call36, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %25) #6, !dbg !3456
  br label %for.inc, !dbg !3456

for.inc:                                          ; preds = %for.body46.for.inc_crit_edge, %land.lhs.true, %if.then51
  %inc.pre-phi = phi i32 [ %.pre, %for.body46.for.inc_crit_edge ], [ %add, %land.lhs.true ], [ %add, %if.then51 ], !dbg !3448
  call void @llvm.dbg.value(metadata i32 %inc.pre-phi, metadata !3376, metadata !DIExpression()), !dbg !3437
  br label %for.cond44, !dbg !3457, !llvm.loop !3458

if.end56.loopexit:                                ; preds = %for.cond44
  br label %if.end56, !dbg !3460

if.end56:                                         ; preds = %if.end56.loopexit, %if.then38
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3365, metadata !DIExpression(DW_OP_deref)), !dbg !3388
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %call36, i32 0) #7, !dbg !3460
  %n_reaching_defs = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %13, i64 0, i32 5, !dbg !3461
  %first_reaching_def = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %13, i64 0, i32 6, !dbg !3462
  %other_use_this_block = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %13, i64 0, i32 7, !dbg !3464
  %26 = bitcast %struct.btr_user_s* %13 to i64*, !dbg !3461
  br label %for.cond57, !dbg !3460

for.cond57:                                       ; preds = %if.end89, %if.end56
  call void @llvm.dbg.value(metadata i32* %uid, metadata !3364, metadata !DIExpression(DW_OP_deref)), !dbg !3388
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3365, metadata !DIExpression(DW_OP_deref)), !dbg !3388
  %call58 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %uid) #7, !dbg !3466
  %tobool59 = icmp eq i8 %call58, 0, !dbg !3460
  br i1 %tobool59, label %for.end92, label %for.body60, !dbg !3460

for.body60:                                       ; preds = %for.cond57
  %27 = load i32, i32* %uid, align 4, !dbg !3467
  call void @llvm.dbg.value(metadata i32 %27, metadata !3364, metadata !DIExpression()), !dbg !3388
  %idxprom62 = zext i32 %27 to i64, !dbg !3468
  %arrayidx63 = getelementptr inbounds %struct.btr_def_s*, %struct.btr_def_s** %def_array, i64 %idxprom62, !dbg !3468
  %28 = load %struct.btr_def_s*, %struct.btr_def_s** %arrayidx63, align 8, !dbg !3468
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %28, metadata !3379, metadata !DIExpression()), !dbg !3461
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3469
  %tobool64 = icmp eq %struct._IO_FILE* %29, null, !dbg !3469
  br i1 %tobool64, label %if.end67, label %if.then65, !dbg !3471

if.then65:                                        ; preds = %for.body60
  call void @llvm.dbg.value(metadata i32 %27, metadata !3364, metadata !DIExpression()), !dbg !3388
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %27, i32 %11) #6, !dbg !3472
  br label %if.end67, !dbg !3472

if.end67:                                         ; preds = %for.body60, %if.then65
  %30 = load i32, i32* %n_reaching_defs, align 8, !dbg !3473
  %inc68 = add nsw i32 %30, 1, !dbg !3473
  store i32 %inc68, i32* %n_reaching_defs, align 8, !dbg !3473
  %31 = load %struct.rtx_def*, %struct.rtx_def** %use, align 8, !dbg !3474
  %tobool70 = icmp eq %struct.rtx_def* %31, null, !dbg !3476
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !3477

if.then71:                                        ; preds = %if.end67
  %has_ambiguous_use = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %28, i64 0, i32 9, !dbg !3478
  store i8 1, i8* %has_ambiguous_use, align 8, !dbg !3479
  br label %if.end72, !dbg !3480

if.end72:                                         ; preds = %if.end67, %if.then71
  %32 = load i32, i32* %first_reaching_def, align 4, !dbg !3481
  %cmp73 = icmp eq i32 %32, -1, !dbg !3482
  br i1 %cmp73, label %if.else84, label %if.then74, !dbg !3483

if.then74:                                        ; preds = %if.end72
  %has_ambiguous_use75 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %28, i64 0, i32 9, !dbg !3484
  store i8 1, i8* %has_ambiguous_use75, align 8, !dbg !3486
  %33 = load i32, i32* %first_reaching_def, align 4, !dbg !3487
  %idxprom77 = sext i32 %33 to i64, !dbg !3488
  %arrayidx78 = getelementptr inbounds %struct.btr_def_s*, %struct.btr_def_s** %def_array, i64 %idxprom77, !dbg !3488
  %34 = load %struct.btr_def_s*, %struct.btr_def_s** %arrayidx78, align 8, !dbg !3488
  %has_ambiguous_use79 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %34, i64 0, i32 9, !dbg !3489
  store i8 1, i8* %has_ambiguous_use79, align 8, !dbg !3490
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3491
  %tobool80 = icmp eq %struct._IO_FILE* %35, null, !dbg !3491
  br i1 %tobool80, label %if.end86, label %if.then81, !dbg !3493

if.then81:                                        ; preds = %if.then74
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %11) #6, !dbg !3494
  br label %if.end86, !dbg !3494

if.else84:                                        ; preds = %if.end72
  %36 = load i32, i32* %uid, align 4, !dbg !3495
  call void @llvm.dbg.value(metadata i32 %36, metadata !3364, metadata !DIExpression()), !dbg !3388
  store i32 %36, i32* %first_reaching_def, align 4, !dbg !3496
  br label %if.end86

if.end86:                                         ; preds = %if.then74, %if.then81, %if.else84
  %37 = load i8, i8* %other_use_this_block, align 8, !dbg !3497
  %tobool87 = icmp eq i8 %37, 0, !dbg !3498
  br i1 %tobool87, label %if.end89, label %if.then88, !dbg !3499

if.then88:                                        ; preds = %if.end86
  %other_btr_uses_after_use = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %28, i64 0, i32 11, !dbg !3500
  store i8 1, i8* %other_btr_uses_after_use, align 2, !dbg !3501
  br label %if.end89, !dbg !3502

if.end89:                                         ; preds = %if.end86, %if.then88
  %uses = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %28, i64 0, i32 8, !dbg !3503
  %38 = bitcast %struct.btr_user_s** %uses to i64*, !dbg !3503
  %39 = load i64, i64* %38, align 8, !dbg !3503
  store i64 %39, i64* %26, align 8, !dbg !3504
  store %struct.btr_user_s* %13, %struct.btr_user_s** %uses, align 8, !dbg !3505
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3365, metadata !DIExpression(DW_OP_deref)), !dbg !3388
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #7, !dbg !3466
  br label %for.cond57, !dbg !3466, !llvm.loop !3506

for.end92:                                        ; preds = %for.cond57
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call36, i64 0, i32 0, !dbg !3508
  %40 = load i8*, i8** %popcount, align 8, !dbg !3508
  call void @free(i8* %40) #6, !dbg !3508
  %41 = bitcast %struct.simple_bitmap_def* %call36 to i8*, !dbg !3508
  call void @free(i8* %41) #6, !dbg !3508
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3509
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3509
  br label %if.end93, !dbg !3510

if.end93:                                         ; preds = %if.end, %for.end92
  %bf.load94 = load i32, i32* %10, align 8, !dbg !3511
  %bf.clear95 = and i32 %bf.load94, 65535, !dbg !3511
  %cmp96 = icmp eq i32 %bf.clear95, 10, !dbg !3511
  br i1 %cmp96, label %if.then97, label %for.inc120, !dbg !3512

if.then97:                                        ; preds = %if.end93
  %42 = load i32, i32* @first_btr, align 4, !dbg !3513
  call void @llvm.dbg.value(metadata i32 %42, metadata !3383, metadata !DIExpression()), !dbg !3515
  br label %for.cond98, !dbg !3516

for.cond98:                                       ; preds = %for.inc115, %if.then97
  %regno.0 = phi i32 [ %42, %if.then97 ], [ %inc116, %for.inc115 ], !dbg !3517
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !3383, metadata !DIExpression()), !dbg !3515
  %43 = load i32, i32* @last_btr, align 4, !dbg !3518
  %cmp99 = icmp sgt i32 %regno.0, %43, !dbg !3520
  br i1 %cmp99, label %for.inc120.loopexit, label %for.body100, !dbg !3521

for.body100:                                      ; preds = %for.cond98
  %44 = load i64, i64* @all_btrs, align 8, !dbg !3522
  %sh_prom101 = zext i32 %regno.0 to i64, !dbg !3522
  %shl102 = shl i64 1, %sh_prom101, !dbg !3522
  %and103 = and i64 %44, %shl102, !dbg !3522
  %tobool104 = icmp eq i64 %and103, 0, !dbg !3522
  br i1 %tobool104, label %for.inc115, label %land.lhs.true105, !dbg !3524

land.lhs.true105:                                 ; preds = %for.body100
  %45 = load i64, i64* @call_used_reg_set, align 8, !dbg !3525
  %and108 = and i64 %45, %shl102, !dbg !3525
  %tobool109 = icmp eq i64 %and108, 0, !dbg !3525
  br i1 %tobool109, label %for.inc115, label %if.then110, !dbg !3526

if.then110:                                       ; preds = %land.lhs.true105
  %46 = load i32, i32* @first_btr, align 4, !dbg !3527
  %sub111 = sub nsw i32 %regno.0, %46, !dbg !3528
  %idxprom112 = sext i32 %sub111 to i64, !dbg !3529
  %arrayidx113 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %btr_defset, i64 %idxprom112, !dbg !3529
  %47 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx113, align 8, !dbg !3529
  call void @sbitmap_difference(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %47) #6, !dbg !3530
  br label %for.inc115, !dbg !3530

for.inc115:                                       ; preds = %land.lhs.true105, %for.body100, %if.then110
  %inc116 = add nsw i32 %regno.0, 1, !dbg !3531
  call void @llvm.dbg.value(metadata i32 %inc116, metadata !3383, metadata !DIExpression()), !dbg !3515
  br label %for.cond98, !dbg !3532, !llvm.loop !3533

for.inc120.loopexit:                              ; preds = %for.cond98
  br label %for.inc120, !dbg !3535

for.inc120:                                       ; preds = %for.inc120.loopexit, %lor.lhs.false20, %if.end93
  %48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3535
  %rt_rtx124 = bitcast %union.rtunion_def* %48 to %struct.rtx_def**, !dbg !3535
  br label %for.cond9, !dbg !3536, !llvm.loop !3537

for.inc126:                                       ; preds = %for.cond9
  %inc127 = add nuw nsw i32 %i.0, 1, !dbg !3539
  call void @llvm.dbg.value(metadata i32 %inc127, metadata !3345, metadata !DIExpression()), !dbg !3386
  br label %for.cond, !dbg !3540, !llvm.loop !3541

for.end128:                                       ; preds = %for.cond
  %popcount129 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !3543
  %49 = load i8*, i8** %popcount129, align 8, !dbg !3543
  call void @free(i8* %49) #6, !dbg !3543
  %50 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3543
  call void @free(i8* %50) #6, !dbg !3543
  ret void, !dbg !3544
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @insn_sets_btr_p(%struct.rtx_def* %insn, i32 %check_const, i32* %regno) unnamed_addr #4 !dbg !3545 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3553, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 %check_const, metadata !3554, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32* %regno, metadata !3555, metadata !DIExpression()), !dbg !3561
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3562
  %bf.load = load i32, i32* %0, align 8, !dbg !3562
  %bf.clear = and i32 %bf.load, 65535, !dbg !3562
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3562
  br i1 %cmp, label %land.lhs.true, label %if.end73, !dbg !3563

land.lhs.true:                                    ; preds = %entry
  br i1 true, label %cond.true, label %lor.lhs.false, !dbg !3564

lor.lhs.false:                                    ; preds = %land.lhs.true
  br i1 undef, label %lor.lhs.false.cond.true_crit_edge, label %lor.lhs.false7, !dbg !3564

lor.lhs.false.cond.true_crit_edge:                ; preds = %lor.lhs.false
  br label %cond.true, !dbg !3564

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  br i1 undef, label %lor.lhs.false7.cond.true_crit_edge, label %lor.lhs.false11, !dbg !3564

lor.lhs.false7.cond.true_crit_edge:               ; preds = %lor.lhs.false7
  br label %cond.true, !dbg !3564

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  br i1 undef, label %lor.lhs.false11.cond.true_crit_edge, label %lor.lhs.false11.cond.end28_crit_edge, !dbg !3564

lor.lhs.false11.cond.end28_crit_edge:             ; preds = %lor.lhs.false11
  br label %cond.end28, !dbg !3564

lor.lhs.false11.cond.true_crit_edge:              ; preds = %lor.lhs.false11
  br label %cond.true, !dbg !3564

cond.true:                                        ; preds = %lor.lhs.false.cond.true_crit_edge, %lor.lhs.false7.cond.true_crit_edge, %lor.lhs.false11.cond.true_crit_edge, %land.lhs.true
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3564
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3564
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !3564
  %3 = load i32*, i32** %2, align 8, !dbg !3564
  %bf.load15 = load i32, i32* %3, align 8, !dbg !3564
  %bf.clear16 = and i32 %bf.load15, 65535, !dbg !3564
  %cmp17 = icmp eq i32 %bf.clear16, 23, !dbg !3564
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !3564
  br i1 %cmp17, label %cond.end28, label %cond.false, !dbg !3564

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %4) #6, !dbg !3564
  br label %cond.end28, !dbg !3564

cond.end28:                                       ; preds = %lor.lhs.false11.cond.end28_crit_edge, %cond.false, %cond.true
  %cond29 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], [ undef, %lor.lhs.false11.cond.end28_crit_edge ], !dbg !3564
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond29, metadata !3556, metadata !DIExpression()), !dbg !3561
  %tobool = icmp eq %struct.rtx_def* %cond29, null, !dbg !3565
  br i1 %tobool, label %if.end73, label %if.then, !dbg !3566

if.then:                                          ; preds = %cond.end28
  %arrayidx32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond29, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3567
  %rt_rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**, !dbg !3567
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx33, align 8, !dbg !3567
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3557, metadata !DIExpression()), !dbg !3568
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond29, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3569
  %rt_rtx37 = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !3569
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx37, align 8, !dbg !3569
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3560, metadata !DIExpression()), !dbg !3568
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !3570
  %bf.load38 = load i32, i32* %8, align 8, !dbg !3570
  %bf.clear39 = and i32 %bf.load38, 65535, !dbg !3570
  %cmp40 = icmp eq i32 %bf.clear39, 39, !dbg !3572
  br i1 %cmp40, label %if.then41, label %if.end, !dbg !3573

if.then41:                                        ; preds = %if.then
  %arrayidx44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3574
  %rt_rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**, !dbg !3574
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx45, align 8, !dbg !3574
  call void @llvm.dbg.value(metadata %struct.rtx_def* %9, metadata !3557, metadata !DIExpression()), !dbg !3568
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i64 0, i32 0, !dbg !3575
  %bf.load46.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !3577
  br label %if.end, !dbg !3578

if.end:                                           ; preds = %if.then41, %if.then
  %bf.load46 = phi i32 [ %bf.load46.pre, %if.then41 ], [ %bf.load38, %if.then ], !dbg !3577
  %dest.0 = phi %struct.rtx_def* [ %9, %if.then41 ], [ %5, %if.then ], !dbg !3568
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.0, metadata !3557, metadata !DIExpression()), !dbg !3568
  %bf.clear47 = and i32 %bf.load46, 65535, !dbg !3577
  %cmp48 = icmp eq i32 %bf.clear47, 37, !dbg !3577
  br i1 %cmp48, label %land.lhs.true49, label %cleanup, !dbg !3579

land.lhs.true49:                                  ; preds = %if.end
  %10 = load i64, i64* @all_btrs, align 8, !dbg !3580
  %call50 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest.0) #7, !dbg !3580
  %sh_prom = zext i32 %call50 to i64, !dbg !3580
  %shl = shl i64 1, %sh_prom, !dbg !3580
  %and = and i64 %10, %shl, !dbg !3580
  %tobool51 = icmp eq i64 %and, 0, !dbg !3580
  br i1 %tobool51, label %cleanup, label %if.then52, !dbg !3581

if.then52:                                        ; preds = %land.lhs.true49
  %call53 = tail call fastcc i32 @btr_referenced_p(%struct.rtx_def* %7, %struct.rtx_def** null) #7, !dbg !3582
  %tobool54 = icmp eq i32 %call53, 0, !dbg !3582
  br i1 %tobool54, label %cond.end57, label %cond.true55, !dbg !3582

cond.true55:                                      ; preds = %if.then52
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3582
  br label %cond.end57, !dbg !3582

cond.end57:                                       ; preds = %if.then52, %cond.true55
  %tobool59 = icmp eq i32 %check_const, 0, !dbg !3584
  br i1 %tobool59, label %if.then65, label %lor.lhs.false60, !dbg !3586

lor.lhs.false60:                                  ; preds = %cond.end57
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !3587
  %bf.load61 = load i32, i32* %11, align 8, !dbg !3587
  %bf.clear62 = and i32 %bf.load61, 65535, !dbg !3587
  %idxprom = zext i32 %bf.clear62 to i64, !dbg !3587
  %arrayidx63 = getelementptr inbounds [139 x i32], [139 x i32]* @rtx_class, i64 0, i64 %idxprom, !dbg !3587
  %12 = load i32, i32* %arrayidx63, align 4, !dbg !3587
  %cmp64 = icmp eq i32 %12, 9, !dbg !3587
  br i1 %cmp64, label %if.then65, label %cleanup, !dbg !3588

if.then65:                                        ; preds = %cond.end57, %lor.lhs.false60
  %tobool66 = icmp eq i32* %regno, null, !dbg !3589
  br i1 %tobool66, label %cleanup, label %if.then67, !dbg !3592

if.then67:                                        ; preds = %if.then65
  %call68 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest.0) #7, !dbg !3593
  store i32 %call68, i32* %regno, align 4, !dbg !3594
  br label %cleanup, !dbg !3595

cleanup:                                          ; preds = %if.then65, %land.lhs.true49, %if.end, %lor.lhs.false60, %if.then67
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then67 ], [ false, %if.then65 ], [ true, %lor.lhs.false60 ], [ true, %land.lhs.true49 ], [ true, %if.end ]
  br i1 %cleanup.dest.slot.0, label %if.end73, label %cleanup74

if.end73:                                         ; preds = %cond.end28, %cleanup, %entry
  br label %cleanup74, !dbg !3596

cleanup74:                                        ; preds = %cleanup, %if.end73
  %retval.1 = phi i32 [ 1, %cleanup ], [ 0, %if.end73 ], !dbg !3561
  ret i32 %retval.1, !dbg !3597
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.btr_def_s* @add_btr_def(%struct.fibheap* %all_btr_defs, %struct.basic_block_def* %bb, i32 %insn_luid, %struct.rtx_def* %insn, i32 %dest_reg, i32 %other_btr_uses_before_def, %struct.btr_def_group_s** %all_btr_def_groups) unnamed_addr #4 !dbg !3598 {
entry:
  call void @llvm.dbg.value(metadata %struct.fibheap* %all_btr_defs, metadata !3603, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3604, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 %insn_luid, metadata !3605, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3606, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 %dest_reg, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 %other_btr_uses_before_def, metadata !3608, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata %struct.btr_def_group_s** %all_btr_def_groups, metadata !3609, metadata !DIExpression()), !dbg !3611
  store i64 80, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 5), align 8, !dbg !3612
  %0 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3612
  %1 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3612
  %sub.ptr.sub = sub i64 %0, %1, !dbg !3612
  %cmp = icmp slt i64 %sub.ptr.sub, 80, !dbg !3612
  %2 = inttoptr i64 %1 to i8*, !dbg !3612
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3612

cond.true:                                        ; preds = %entry
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @migrate_btrl_obstack, i32 80) #6, !dbg !3612
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 5), align 8, !dbg !3612
  %.pre1 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3), align 8, !dbg !3612
  br label %cond.end, !dbg !3612

cond.end:                                         ; preds = %entry, %cond.true
  %3 = phi i8* [ %2, %entry ], [ %.pre1, %cond.true ], !dbg !3612
  %4 = phi i64 [ 80, %entry ], [ %.pre, %cond.true ], !dbg !3612
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !3612
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3), align 8, !dbg !3612
  %5 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 2), align 8, !dbg !3612
  %cmp1 = icmp eq i8* %add.ptr, %5, !dbg !3612
  %6 = ptrtoint i8* %5 to i64, !dbg !3612
  %7 = ptrtoint i8* %add.ptr to i64, !dbg !3612
  br i1 %cmp1, label %cond.true3, label %cond.end5, !dbg !3612

cond.true3:                                       ; preds = %cond.end
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 10), align 8, !dbg !3612
  %bf.set = or i8 %bf.load, 2, !dbg !3612
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 10), align 8, !dbg !3612
  br label %cond.end5, !dbg !3612

cond.end5:                                        ; preds = %cond.end, %cond.true3
  store i64 %6, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 5), align 8, !dbg !3612
  %8 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 6), align 8, !dbg !3612
  %conv11 = sext i32 %8 to i64, !dbg !3612
  %add = add nsw i64 %7, %conv11, !dbg !3612
  %neg = xor i32 %8, -1, !dbg !3612
  %conv12 = sext i32 %neg to i64, !dbg !3612
  %and = and i64 %add, %conv12, !dbg !3612
  %9 = inttoptr i64 %and to i8*, !dbg !3612
  store i8* %9, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3), align 8, !dbg !3612
  %10 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3612
  %sub.ptr.sub15 = sub i64 %and, %10, !dbg !3612
  %11 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3612
  %sub.ptr.sub18 = sub i64 %11, %10, !dbg !3612
  %cmp19 = icmp sgt i64 %sub.ptr.sub15, %sub.ptr.sub18, !dbg !3612
  %12 = bitcast i8* %5 to %struct.btr_def_s*, !dbg !3612
  br i1 %cmp19, label %cond.true21, label %cond.end23, !dbg !3612

cond.true21:                                      ; preds = %cond.end5
  store i64 %11, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3612
  br label %cond.end23, !dbg !3612

cond.end23:                                       ; preds = %cond.end5, %cond.true21
  %13 = phi i64 [ %and, %cond.end5 ], [ %11, %cond.true21 ], !dbg !3612
  store i64 %13, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3612
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %12, metadata !3610, metadata !DIExpression()), !dbg !3611
  %bb25 = getelementptr inbounds i8, i8* %5, i64 16, !dbg !3613
  %14 = bitcast i8* %bb25 to %struct.basic_block_def**, !dbg !3613
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %14, align 8, !dbg !3614
  %luid = getelementptr inbounds i8, i8* %5, i64 24, !dbg !3615
  %15 = bitcast i8* %luid to i32*, !dbg !3615
  store i32 %insn_luid, i32* %15, align 8, !dbg !3616
  %insn26 = getelementptr inbounds i8, i8* %5, i64 32, !dbg !3617
  %16 = bitcast i8* %insn26 to %struct.rtx_def**, !dbg !3617
  store %struct.rtx_def* %insn, %struct.rtx_def** %16, align 8, !dbg !3618
  %btr = getelementptr inbounds i8, i8* %5, i64 40, !dbg !3619
  %17 = bitcast i8* %btr to i32*, !dbg !3619
  store i32 %dest_reg, i32* %17, align 8, !dbg !3620
  %call = tail call fastcc i32 @basic_block_freq(%struct.basic_block_def* %bb) #7, !dbg !3621
  %cost = getelementptr inbounds i8, i8* %5, i64 44, !dbg !3622
  %18 = bitcast i8* %cost to i32*, !dbg !3622
  store i32 %call, i32* %18, align 4, !dbg !3623
  %19 = getelementptr inbounds i8, i8* %5, i64 64, !dbg !3624
  store i8 0, i8* %19, align 8, !dbg !3625
  %conv27 = trunc i32 %other_btr_uses_before_def to i8, !dbg !3626
  %20 = getelementptr inbounds i8, i8* %5, i64 65, !dbg !3627
  store i8 %conv27, i8* %20, align 1, !dbg !3628
  %21 = getelementptr inbounds i8, i8* %5, i64 66, !dbg !3629
  store i8 0, i8* %21, align 2, !dbg !3630
  %next_this_bb = bitcast i8* %5 to %struct.btr_def_s**, !dbg !3631
  store %struct.btr_def_s* null, %struct.btr_def_s** %next_this_bb, align 8, !dbg !3632
  %next_this_group = getelementptr inbounds i8, i8* %5, i64 8, !dbg !3633
  %22 = bitcast i8* %next_this_group to %struct.btr_def_s**, !dbg !3633
  store %struct.btr_def_s* null, %struct.btr_def_s** %22, align 8, !dbg !3634
  %uses = getelementptr inbounds i8, i8* %5, i64 56, !dbg !3635
  %23 = bitcast i8* %uses to %struct.btr_user_s**, !dbg !3635
  store %struct.btr_user_s* null, %struct.btr_user_s** %23, align 8, !dbg !3636
  %live_range = getelementptr inbounds i8, i8* %5, i64 72, !dbg !3637
  %24 = bitcast i8* %live_range to %struct.bitmap_head_def**, !dbg !3637
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %24, align 8, !dbg !3638
  tail call fastcc void @find_btr_def_group(%struct.btr_def_group_s** %all_btr_def_groups, %struct.btr_def_s* %12) #7, !dbg !3639
  %25 = load i32, i32* %18, align 4, !dbg !3640
  %sub = sub nsw i32 0, %25, !dbg !3641
  %conv30 = sext i32 %sub to i64, !dbg !3641
  %call31 = tail call %struct.fibnode* @fibheap_insert(%struct.fibheap* %all_btr_defs, i64 %conv30, i8* %5) #6, !dbg !3642
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3643
  %tobool = icmp eq %struct._IO_FILE* %26, null, !dbg !3643
  br i1 %tobool, label %if.end, label %if.then, !dbg !3645

if.then:                                          ; preds = %cond.end23
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3646
  %27 = load i32, i32* %index, align 8, !dbg !3646
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3647
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3647
  %28 = load i32, i32* %rt_int, align 8, !dbg !3647
  %group = getelementptr inbounds i8, i8* %5, i64 48, !dbg !3648
  %29 = bitcast i8* %group to %struct.btr_def_group_s**, !dbg !3648
  %30 = load %struct.btr_def_group_s*, %struct.btr_def_group_s** %29, align 8, !dbg !3648
  %tobool32 = icmp eq %struct.btr_def_group_s* %30, null, !dbg !3649
  %cond33 = select i1 %tobool32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !3649
  %31 = load i32, i32* %18, align 4, !dbg !3650
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %26, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 %dest_reg, i32 %27, i32 %28, i8* %cond33, i32 %31) #6, !dbg !3651
  br label %if.end, !dbg !3651

if.end:                                           ; preds = %cond.end23, %if.then
  ret %struct.btr_def_s* %12, !dbg !3652
}

declare dso_local void @sbitmap_difference(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3653 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3657, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3658, metadata !DIExpression()), !dbg !3662
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3663
  %0 = load i8*, i8** %popcount, align 8, !dbg !3663
  %tobool = icmp eq i8* %0, null, !dbg !3664
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3665

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3666
  %.pre2 = zext i32 %.pre to i64, !dbg !3667
  %.pre3 = shl i64 1, %.pre2, !dbg !3667
  %.pre4 = lshr i32 %bitno, 6, !dbg !3668
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3669
  br label %if.end7, !dbg !3665

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3670
  %idxprom = zext i32 %div to i64, !dbg !3670
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3670
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3670
  %rem = and i32 %bitno, 63, !dbg !3670
  %sh_prom = zext i32 %rem to i64, !dbg !3670
  %2 = shl i64 1, %sh_prom, !dbg !3671
  %3 = and i64 %1, %2, !dbg !3671
  %tobool1 = icmp eq i64 %3, 0, !dbg !3671
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3673

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3674
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3675
  %inc = add i8 %4, 1, !dbg !3675
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3675
  br label %if.end7, !dbg !3674

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3669
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3667
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3669
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3676
  %or = or i64 %5, %shl.pre-phi, !dbg !3676
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3676
  ret void, !dbg !3677
}

; Function Attrs: nounwind uwtable
define internal fastcc void @note_other_use_this_block(i32 %regno, %struct.btr_user_s* %users_this_bb) unnamed_addr #4 !dbg !3678 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3682, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %users_this_bb, metadata !3683, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %users_this_bb, metadata !3684, metadata !DIExpression()), !dbg !3685
  br label %for.cond, !dbg !3686

for.cond:                                         ; preds = %for.inc, %entry
  %user.0 = phi %struct.btr_user_s* [ %users_this_bb, %entry ], [ %1, %for.inc ], !dbg !3688
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %user.0, metadata !3684, metadata !DIExpression()), !dbg !3685
  %cmp = icmp eq %struct.btr_user_s* %user.0, null, !dbg !3689
  br i1 %cmp, label %for.end, label %for.body, !dbg !3691

for.body:                                         ; preds = %for.cond
  %use = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 4, !dbg !3692
  %0 = load %struct.rtx_def*, %struct.rtx_def** %use, align 8, !dbg !3692
  %tobool = icmp eq %struct.rtx_def* %0, null, !dbg !3694
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !3695

land.lhs.true:                                    ; preds = %for.body
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %0) #7, !dbg !3696
  %cmp2 = icmp eq i32 %call, %regno, !dbg !3697
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !3698

if.then:                                          ; preds = %land.lhs.true
  %other_use_this_block = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 7, !dbg !3699
  store i8 1, i8* %other_use_this_block, align 8, !dbg !3700
  br label %for.inc, !dbg !3701

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %next = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 0, !dbg !3702
  %1 = load %struct.btr_user_s*, %struct.btr_user_s** %next, align 8, !dbg !3702
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %1, metadata !3684, metadata !DIExpression()), !dbg !3685
  br label %for.cond, !dbg !3703, !llvm.loop !3704

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3706
}

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @btr_referenced_p(%struct.rtx_def* %x, %struct.rtx_def** %excludep) unnamed_addr #4 !dbg !3707 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3711, metadata !DIExpression()), !dbg !3713
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def** %excludep, metadata !3712, metadata !DIExpression()), !dbg !3713
  %0 = bitcast %struct.rtx_def** %excludep to i8*, !dbg !3714
  call void @llvm.dbg.value(metadata %struct.rtx_def** %x.addr, metadata !3711, metadata !DIExpression(DW_OP_deref)), !dbg !3713
  %call = call i32 @for_each_rtx(%struct.rtx_def** nonnull %x.addr, i32 (%struct.rtx_def**, i8*)* nonnull @find_btr_reference, i8* %0) #6, !dbg !3715
  ret i32 %call, !dbg !3716
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.btr_user_s* @new_btr_user(%struct.basic_block_def* %bb, i32 %insn_luid, %struct.rtx_def* %insn) unnamed_addr #4 !dbg !3717 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3721, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 %insn_luid, metadata !3722, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3723, metadata !DIExpression()), !dbg !3730
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3731
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3731
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !3731
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3731
  %call = tail call fastcc %struct.rtx_def** @find_btr_use(%struct.rtx_def* %1) #7, !dbg !3732
  call void @llvm.dbg.value(metadata %struct.rtx_def** %call, metadata !3724, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata %struct.btr_user_s* null, metadata !3726, metadata !DIExpression()), !dbg !3730
  %tobool = icmp eq %struct.rtx_def** %call, null, !dbg !3733
  br i1 %tobool, label %if.end9, label %if.then, !dbg !3734

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3735
  %call5 = tail call fastcc i32 @btr_referenced_p(%struct.rtx_def* %2, %struct.rtx_def** nonnull %call) #7, !dbg !3736
  %tobool6 = icmp eq i32 %call5, 0, !dbg !3737
  call void @llvm.dbg.value(metadata i1 %tobool6, metadata !3727, metadata !DIExpression()), !dbg !3738
  %spec.select = select i1 %tobool6, %struct.rtx_def** %call, %struct.rtx_def** null, !dbg !3739
  call void @llvm.dbg.value(metadata %struct.rtx_def** %spec.select, metadata !3724, metadata !DIExpression()), !dbg !3730
  br label %if.end9, !dbg !3740

if.end9:                                          ; preds = %entry, %if.then
  %usep.1 = phi %struct.rtx_def** [ %spec.select, %if.then ], [ null, %entry ], !dbg !3741
  call void @llvm.dbg.value(metadata %struct.rtx_def** %usep.1, metadata !3724, metadata !DIExpression()), !dbg !3730
  %tobool10 = icmp eq %struct.rtx_def** %usep.1, null, !dbg !3742
  br i1 %tobool10, label %cond.end, label %cond.true, !dbg !3742

cond.true:                                        ; preds = %if.end9
  %3 = load %struct.rtx_def*, %struct.rtx_def** %usep.1, align 8, !dbg !3743
  br label %cond.end, !dbg !3742

cond.end:                                         ; preds = %if.end9, %cond.true
  %cond = phi %struct.rtx_def* [ %3, %cond.true ], [ null, %if.end9 ], !dbg !3742
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond, metadata !3725, metadata !DIExpression()), !dbg !3730
  store i64 56, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 5), align 8, !dbg !3744
  %4 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3744
  %5 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3744
  %sub.ptr.sub = sub i64 %4, %5, !dbg !3744
  %cmp = icmp slt i64 %sub.ptr.sub, 56, !dbg !3744
  %6 = inttoptr i64 %5 to i8*, !dbg !3744
  br i1 %cmp, label %cond.true11, label %cond.end13, !dbg !3744

cond.true11:                                      ; preds = %cond.end
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @migrate_btrl_obstack, i32 56) #6, !dbg !3744
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 5), align 8, !dbg !3744
  %.pre1 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3), align 8, !dbg !3744
  br label %cond.end13, !dbg !3744

cond.end13:                                       ; preds = %cond.end, %cond.true11
  %7 = phi i8* [ %6, %cond.end ], [ %.pre1, %cond.true11 ], !dbg !3744
  %8 = phi i64 [ 56, %cond.end ], [ %.pre, %cond.true11 ], !dbg !3744
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !3744
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3), align 8, !dbg !3744
  %9 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 2), align 8, !dbg !3744
  %cmp15 = icmp eq i8* %add.ptr, %9, !dbg !3744
  %10 = ptrtoint i8* %9 to i64, !dbg !3744
  %11 = ptrtoint i8* %add.ptr to i64, !dbg !3744
  br i1 %cmp15, label %cond.true17, label %cond.end19, !dbg !3744

cond.true17:                                      ; preds = %cond.end13
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 10), align 8, !dbg !3744
  %bf.set = or i8 %bf.load, 2, !dbg !3744
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 10), align 8, !dbg !3744
  br label %cond.end19, !dbg !3744

cond.end19:                                       ; preds = %cond.end13, %cond.true17
  store i64 %10, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 5), align 8, !dbg !3744
  %12 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 6), align 8, !dbg !3744
  %conv25 = sext i32 %12 to i64, !dbg !3744
  %add = add nsw i64 %11, %conv25, !dbg !3744
  %neg = xor i32 %12, -1, !dbg !3744
  %conv26 = sext i32 %neg to i64, !dbg !3744
  %and = and i64 %add, %conv26, !dbg !3744
  %13 = inttoptr i64 %and to i8*, !dbg !3744
  store i8* %13, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3), align 8, !dbg !3744
  %14 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3744
  %sub.ptr.sub29 = sub i64 %and, %14, !dbg !3744
  %15 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3744
  %sub.ptr.sub32 = sub i64 %15, %14, !dbg !3744
  %cmp33 = icmp sgt i64 %sub.ptr.sub29, %sub.ptr.sub32, !dbg !3744
  %16 = bitcast i8* %9 to %struct.btr_user_s*, !dbg !3744
  br i1 %cmp33, label %cond.true35, label %cond.end37, !dbg !3744

cond.true35:                                      ; preds = %cond.end19
  store i64 %15, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3744
  br label %cond.end37, !dbg !3744

cond.end37:                                       ; preds = %cond.end19, %cond.true35
  %17 = phi i64 [ %and, %cond.end19 ], [ %15, %cond.true35 ], !dbg !3744
  store i64 %17, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3744
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %16, metadata !3726, metadata !DIExpression()), !dbg !3730
  %bb39 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !3745
  %18 = bitcast i8* %bb39 to %struct.basic_block_def**, !dbg !3745
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %18, align 8, !dbg !3746
  %luid = getelementptr inbounds i8, i8* %9, i64 16, !dbg !3747
  %19 = bitcast i8* %luid to i32*, !dbg !3747
  store i32 %insn_luid, i32* %19, align 8, !dbg !3748
  %insn40 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !3749
  %20 = bitcast i8* %insn40 to %struct.rtx_def**, !dbg !3749
  store %struct.rtx_def* %insn, %struct.rtx_def** %20, align 8, !dbg !3750
  %use41 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !3751
  %21 = bitcast i8* %use41 to %struct.rtx_def**, !dbg !3751
  store %struct.rtx_def* %cond, %struct.rtx_def** %21, align 8, !dbg !3752
  %22 = getelementptr inbounds i8, i8* %9, i64 48, !dbg !3753
  store i8 0, i8* %22, align 8, !dbg !3754
  %next = bitcast i8* %9 to %struct.btr_user_s**, !dbg !3755
  store %struct.btr_user_s* null, %struct.btr_user_s** %next, align 8, !dbg !3756
  %n_reaching_defs = getelementptr inbounds i8, i8* %9, i64 40, !dbg !3757
  %23 = bitcast i8* %n_reaching_defs to i32*, !dbg !3757
  store i32 0, i32* %23, align 8, !dbg !3758
  %first_reaching_def = getelementptr inbounds i8, i8* %9, i64 44, !dbg !3759
  %24 = bitcast i8* %first_reaching_def to i32*, !dbg !3759
  store i32 -1, i32* %24, align 4, !dbg !3760
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3761
  %tobool42 = icmp eq %struct._IO_FILE* %25, null, !dbg !3761
  br i1 %tobool42, label %if.end55, label %if.then43, !dbg !3763

if.then43:                                        ; preds = %cond.end37
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3764
  %26 = load i32, i32* %index, align 8, !dbg !3764
  %arrayidx46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3766
  %rt_int = bitcast %union.rtunion_def* %arrayidx46 to i32*, !dbg !3766
  %27 = load i32, i32* %rt_int, align 8, !dbg !3766
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %26, i32 %27) #6, !dbg !3767
  %28 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8, !dbg !3768
  %tobool49 = icmp eq %struct.rtx_def* %28, null, !dbg !3770
  br i1 %tobool49, label %if.end55, label %if.then50, !dbg !3771

if.then50:                                        ; preds = %if.then43
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3772
  %call52 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %28) #7, !dbg !3773
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %call52) #6, !dbg !3774
  br label %if.end55, !dbg !3774

if.end55:                                         ; preds = %if.then43, %cond.end37, %if.then50
  ret %struct.btr_user_s* %16, !dbg !3775
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3776 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3780, metadata !DIExpression()), !dbg !3781
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3782
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3782
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3782
  ret i32 %0, !dbg !3783
}

declare dso_local i32 @refers_to_regno_p(i32, i32, %struct.rtx_def*, %struct.rtx_def**) local_unnamed_addr #1

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @note_btr_set(%struct.rtx_def* %dest, %struct.rtx_def* %set, i8* %data) #4 !dbg !3784 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !3788, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata %struct.rtx_def* %set, metadata !3789, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8* %data, metadata !3790, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i8* %data, metadata !3791, metadata !DIExpression()), !dbg !3794
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !3795
  %bf.load = load i32, i32* %0, align 8, !dbg !3795
  %bf.clear = and i32 %bf.load, 65535, !dbg !3795
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3795
  br i1 %cmp, label %if.end, label %cleanup.cont, !dbg !3797

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !3798
  call void @llvm.dbg.value(metadata i32 %call, metadata !3792, metadata !DIExpression()), !dbg !3794
  %bf.load1 = load i32, i32* %0, align 8, !dbg !3799
  %bf.lshr = lshr i32 %bf.load1, 16, !dbg !3799
  %bf.clear2 = and i32 %bf.lshr, 255, !dbg !3799
  %call3 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %dest) #7, !dbg !3799
  %call4 = tail call fastcc i32 @end_hard_regno(i32 %bf.clear2, i32 %call3) #7, !dbg !3799
  call void @llvm.dbg.value(metadata i32 %call4, metadata !3793, metadata !DIExpression()), !dbg !3794
  %users_this_bb = bitcast i8* %data to %struct.btr_user_s**, !dbg !3800
  %btrs_written_in_block = getelementptr inbounds i8, i8* %data, i64 8, !dbg !3800
  %1 = bitcast i8* %btrs_written_in_block to i64*, !dbg !3800
  %btrs_live_in_block = getelementptr inbounds i8, i8* %data, i64 16, !dbg !3800
  %2 = bitcast i8* %btrs_live_in_block to i64*, !dbg !3800
  %bb_gen = getelementptr inbounds i8, i8* %data, i64 24, !dbg !3800
  %3 = bitcast i8* %bb_gen to %struct.simple_bitmap_def**, !dbg !3800
  %btr_defset = getelementptr inbounds i8, i8* %data, i64 32, !dbg !3800
  %4 = bitcast i8* %btr_defset to %struct.simple_bitmap_def***, !dbg !3800
  br label %for.cond, !dbg !3805

for.cond:                                         ; preds = %for.inc, %if.end
  %regno.0 = phi i32 [ %call, %if.end ], [ %inc, %for.inc ], !dbg !3794
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !3792, metadata !DIExpression()), !dbg !3794
  %cmp5 = icmp slt i32 %regno.0, %call4, !dbg !3806
  br i1 %cmp5, label %for.body, label %cleanup.cont.loopexit, !dbg !3807

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* @all_btrs, align 8, !dbg !3808
  %sh_prom = zext i32 %regno.0 to i64, !dbg !3808
  %shl = shl i64 1, %sh_prom, !dbg !3808
  %and = and i64 %5, %shl, !dbg !3808
  %tobool = icmp eq i64 %and, 0, !dbg !3808
  br i1 %tobool, label %for.inc, label %if.then6, !dbg !3809

if.then6:                                         ; preds = %for.body
  %6 = load %struct.btr_user_s*, %struct.btr_user_s** %users_this_bb, align 8, !dbg !3810
  tail call fastcc void @note_other_use_this_block(i32 %regno.0, %struct.btr_user_s* %6) #7, !dbg !3811
  %7 = load i64, i64* %1, align 8, !dbg !3812
  %or = or i64 %7, %shl, !dbg !3812
  store i64 %or, i64* %1, align 8, !dbg !3812
  %8 = load i64, i64* %2, align 8, !dbg !3813
  %or11 = or i64 %8, %shl, !dbg !3813
  store i64 %or11, i64* %2, align 8, !dbg !3813
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %3, align 8, !dbg !3814
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %4, align 8, !dbg !3815
  %11 = load i32, i32* @first_btr, align 4, !dbg !3816
  %sub = sub nsw i32 %regno.0, %11, !dbg !3817
  %idxprom = sext i32 %sub to i64, !dbg !3818
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %10, i64 %idxprom, !dbg !3818
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3818
  tail call void @sbitmap_difference(%struct.simple_bitmap_def* %9, %struct.simple_bitmap_def* %9, %struct.simple_bitmap_def* %12) #6, !dbg !3819
  br label %for.inc, !dbg !3820

for.inc:                                          ; preds = %for.body, %if.then6
  %inc = add nsw i32 %regno.0, 1, !dbg !3821
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3792, metadata !DIExpression()), !dbg !3794
  br label %for.cond, !dbg !3822, !llvm.loop !3823

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3825

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !3825
}

declare dso_local void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @can_throw_internal(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_btrs_live(i32 %bb) unnamed_addr #4 !dbg !3826 {
entry:
  call void @llvm.dbg.value(metadata i32 %bb, metadata !3830, metadata !DIExpression()), !dbg !3831
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3832
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %bb) #6, !dbg !3833
  %1 = load i64*, i64** @btrs_live, align 8, !dbg !3834
  %idxprom = sext i32 %bb to i64, !dbg !3834
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom, !dbg !3834
  %2 = load i64, i64* %arrayidx, align 8, !dbg !3834
  tail call fastcc void @dump_hard_reg_set(i64 %2) #7, !dbg !3835
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3836
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3837
  ret void, !dbg !3838
}

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @basic_block_freq(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !3839 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3846, metadata !DIExpression()), !dbg !3847
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3848
  %0 = load i32, i32* %frequency, align 8, !dbg !3848
  ret i32 %0, !dbg !3849
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_btr_def_group(%struct.btr_def_group_s** %all_btr_def_groups, %struct.btr_def_s* %def) unnamed_addr #4 !dbg !3850 {
entry:
  call void @llvm.dbg.value(metadata %struct.btr_def_group_s** %all_btr_def_groups, metadata !3854, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %def, metadata !3855, metadata !DIExpression()), !dbg !3860
  %insn = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 4, !dbg !3861
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3861
  %call = tail call fastcc i32 @insn_sets_btr_p(%struct.rtx_def* %0, i32 1, i32* null) #7, !dbg !3862
  %tobool = icmp eq i32 %call, 0, !dbg !3862
  br i1 %tobool, label %if.else, label %if.then, !dbg !3863

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3864
  br label %cond.true, !dbg !3864

lor.lhs.false:                                    ; No predecessors!
  br label %cond.true, !dbg !3864

lor.lhs.false6:                                   ; No predecessors!
  br label %cond.true, !dbg !3864

lor.lhs.false11:                                  ; No predecessors!
  br label %cond.true, !dbg !3864

cond.true:                                        ; preds = %lor.lhs.false6, %lor.lhs.false, %if.then, %lor.lhs.false11
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, !dbg !3864
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3864
  %3 = bitcast %union.rtunion_def* %2 to i32**, !dbg !3864
  %4 = load i32*, i32** %3, align 8, !dbg !3864
  %bf.load17 = load i32, i32* %4, align 8, !dbg !3864
  %bf.clear18 = and i32 %bf.load17, 65535, !dbg !3864
  %cmp19 = icmp eq i32 %bf.clear18, 23, !dbg !3864
  %5 = bitcast i32* %4 to %struct.rtx_def*, !dbg !3864
  br i1 %cmp19, label %cond.true20, label %cond.false, !dbg !3864

cond.true20:                                      ; preds = %cond.true
  br label %cond.end34, !dbg !3864

cond.false:                                       ; preds = %cond.true
  %call32 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %1, %struct.rtx_def* %5) #6, !dbg !3864
  br label %cond.end34, !dbg !3864

cond.end34:                                       ; preds = %cond.true20, %cond.false
  %cond35 = phi %struct.rtx_def* [ %5, %cond.true20 ], [ %call32, %cond.false ], !dbg !3864
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond35, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3864
  %rt_rtx39 = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !3864
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx39, align 8, !dbg !3864
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !3859, metadata !DIExpression()), !dbg !3865
  br label %for.cond, !dbg !3866

for.cond:                                         ; preds = %for.inc, %cond.end34
  %this_group.0.in = phi %struct.btr_def_group_s** [ %all_btr_def_groups, %cond.end34 ], [ %next, %for.inc ]
  %this_group.0 = load %struct.btr_def_group_s*, %struct.btr_def_group_s** %this_group.0.in, align 8, !dbg !3868
  call void @llvm.dbg.value(metadata %struct.btr_def_group_s* %this_group.0, metadata !3856, metadata !DIExpression()), !dbg !3865
  %cond = icmp eq %struct.btr_def_group_s* %this_group.0, null, !dbg !3869
  br i1 %cond, label %if.then45.loopexit, label %for.body, !dbg !3869

for.body:                                         ; preds = %for.cond
  %src = getelementptr inbounds %struct.btr_def_group_s, %struct.btr_def_group_s* %this_group.0, i64 0, i32 1, !dbg !3870
  %8 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8, !dbg !3870
  %call41 = tail call i32 @rtx_equal_p(%struct.rtx_def* %7, %struct.rtx_def* %8) #6, !dbg !3873
  %tobool42 = icmp eq i32 %call41, 0, !dbg !3873
  br i1 %tobool42, label %for.inc, label %for.end, !dbg !3874

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.btr_def_group_s, %struct.btr_def_group_s* %this_group.0, i64 0, i32 0, !dbg !3875
  br label %for.cond, !dbg !3876, !llvm.loop !3877

for.end:                                          ; preds = %for.body
  %this_group.0.lcssa4 = phi %struct.btr_def_group_s* [ %this_group.0, %for.body ], !dbg !3868
  br label %if.end79, !dbg !3879

if.then45.loopexit:                               ; preds = %for.cond
  store i64 24, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 5), align 8, !dbg !3880
  %9 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3880
  %10 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3880
  %sub.ptr.sub = sub i64 %9, %10, !dbg !3880
  %cmp46 = icmp slt i64 %sub.ptr.sub, 24, !dbg !3880
  %11 = inttoptr i64 %10 to i8*, !dbg !3880
  br i1 %cmp46, label %cond.true47, label %cond.end49, !dbg !3880

cond.true47:                                      ; preds = %if.then45.loopexit
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @migrate_btrl_obstack, i32 24) #6, !dbg !3880
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 5), align 8, !dbg !3880
  %.pre2 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3), align 8, !dbg !3880
  br label %cond.end49, !dbg !3880

cond.end49:                                       ; preds = %if.then45.loopexit, %cond.true47
  %12 = phi i8* [ %11, %if.then45.loopexit ], [ %.pre2, %cond.true47 ], !dbg !3880
  %13 = phi i64 [ 24, %if.then45.loopexit ], [ %.pre, %cond.true47 ], !dbg !3880
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !3880
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3), align 8, !dbg !3880
  %14 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 2), align 8, !dbg !3880
  %cmp51 = icmp eq i8* %add.ptr, %14, !dbg !3880
  %15 = ptrtoint i8* %14 to i64, !dbg !3880
  %16 = ptrtoint i8* %add.ptr to i64, !dbg !3880
  br i1 %cmp51, label %cond.true53, label %cond.end57, !dbg !3880

cond.true53:                                      ; preds = %cond.end49
  %bf.load54 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 10), align 8, !dbg !3880
  %bf.set = or i8 %bf.load54, 2, !dbg !3880
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 10), align 8, !dbg !3880
  br label %cond.end57, !dbg !3880

cond.end57:                                       ; preds = %cond.end49, %cond.true53
  store i64 %15, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 5), align 8, !dbg !3880
  %17 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 6), align 8, !dbg !3880
  %conv63 = sext i32 %17 to i64, !dbg !3880
  %add = add nsw i64 %16, %conv63, !dbg !3880
  %neg = xor i32 %17, -1, !dbg !3880
  %conv64 = sext i32 %neg to i64, !dbg !3880
  %and = and i64 %add, %conv64, !dbg !3880
  %18 = inttoptr i64 %and to i8*, !dbg !3880
  store i8* %18, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3), align 8, !dbg !3880
  %19 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3880
  %sub.ptr.sub67 = sub i64 %and, %19, !dbg !3880
  %20 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3880
  %sub.ptr.sub70 = sub i64 %20, %19, !dbg !3880
  %cmp71 = icmp sgt i64 %sub.ptr.sub67, %sub.ptr.sub70, !dbg !3880
  %21 = bitcast i8* %14 to %struct.btr_def_group_s*, !dbg !3880
  br i1 %cmp71, label %cond.true73, label %cond.end75, !dbg !3880

cond.true73:                                      ; preds = %cond.end57
  store i64 %20, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3880
  br label %cond.end75, !dbg !3880

cond.end75:                                       ; preds = %cond.end57, %cond.true73
  %22 = phi i64 [ %and, %cond.end57 ], [ %20, %cond.true73 ], !dbg !3880
  store i64 %22, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @migrate_btrl_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3880
  call void @llvm.dbg.value(metadata %struct.btr_def_group_s* %21, metadata !3856, metadata !DIExpression()), !dbg !3865
  %src77 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !3883
  %23 = bitcast i8* %src77 to %struct.rtx_def**, !dbg !3883
  store %struct.rtx_def* %7, %struct.rtx_def** %23, align 8, !dbg !3884
  %members = getelementptr inbounds i8, i8* %14, i64 16, !dbg !3885
  %24 = bitcast i8* %members to %struct.btr_def_s**, !dbg !3885
  store %struct.btr_def_s* null, %struct.btr_def_s** %24, align 8, !dbg !3886
  %25 = bitcast %struct.btr_def_group_s** %all_btr_def_groups to i64*, !dbg !3887
  %26 = load i64, i64* %25, align 8, !dbg !3887
  %27 = bitcast i8* %14 to i64*, !dbg !3888
  store i64 %26, i64* %27, align 8, !dbg !3888
  %28 = bitcast %struct.btr_def_group_s** %all_btr_def_groups to i8**, !dbg !3889
  store i8* %14, i8** %28, align 8, !dbg !3889
  br label %if.end79, !dbg !3890

if.end79:                                         ; preds = %for.end, %cond.end75
  %this_group.1 = phi %struct.btr_def_group_s* [ %this_group.0.lcssa4, %for.end ], [ %21, %cond.end75 ], !dbg !3865
  call void @llvm.dbg.value(metadata %struct.btr_def_group_s* %this_group.1, metadata !3856, metadata !DIExpression()), !dbg !3865
  %group = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 7, !dbg !3891
  store %struct.btr_def_group_s* %this_group.1, %struct.btr_def_group_s** %group, align 8, !dbg !3892
  %members80 = getelementptr inbounds %struct.btr_def_group_s, %struct.btr_def_group_s* %this_group.1, i64 0, i32 2, !dbg !3893
  %29 = bitcast %struct.btr_def_s** %members80 to i64*, !dbg !3893
  %30 = load i64, i64* %29, align 8, !dbg !3893
  %next_this_group = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 1, !dbg !3894
  %31 = bitcast %struct.btr_def_s** %next_this_group to i64*, !dbg !3895
  store i64 %30, i64* %31, align 8, !dbg !3895
  store %struct.btr_def_s* %def, %struct.btr_def_s** %members80, align 8, !dbg !3896
  br label %if.end83, !dbg !3897

if.else:                                          ; preds = %entry
  %group82 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 7, !dbg !3898
  store %struct.btr_def_group_s* null, %struct.btr_def_group_s** %group82, align 8, !dbg !3899
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.end79
  ret void, !dbg !3900
}

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @find_btr_reference(%struct.rtx_def** %px, i8* %preg) #4 !dbg !3901 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %px, metadata !3905, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i8* %preg, metadata !3906, metadata !DIExpression()), !dbg !3908
  %0 = bitcast i8* %preg to %struct.rtx_def**, !dbg !3909
  %cmp = icmp eq %struct.rtx_def** %0, %px, !dbg !3911
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3912

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %px, align 8, !dbg !3913
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3907, metadata !DIExpression()), !dbg !3908
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !3914
  %bf.load = load i32, i32* %2, align 8, !dbg !3914
  %bf.clear = and i32 %bf.load, 65535, !dbg !3914
  %cmp1 = icmp eq i32 %bf.clear, 37, !dbg !3914
  br i1 %cmp1, label %if.end3, label %cleanup, !dbg !3916

if.end3:                                          ; preds = %if.end
  %3 = load i64, i64* @all_btrs, align 8, !dbg !3917
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3919
  %bf.clear5 = and i32 %bf.lshr, 255, !dbg !3919
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %1) #7, !dbg !3920
  %call6 = tail call fastcc zeroext i8 @overlaps_hard_reg_set_p(i64 %3, i32 %bf.clear5, i32 %call) #7, !dbg !3921
  %tobool = icmp eq i8 %call6, 0, !dbg !3921
  br i1 %tobool, label %cleanup, label %if.then7, !dbg !3922

if.then7:                                         ; preds = %if.end3
  store %struct.rtx_def** %px, %struct.rtx_def*** @btr_reference_found, align 8, !dbg !3923
  br label %cleanup, !dbg !3925

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.then7
  %retval.0 = phi i32 [ 1, %if.then7 ], [ -1, %entry ], [ 0, %if.end ], [ -1, %if.end3 ], !dbg !3908
  ret i32 %retval.0, !dbg !3926
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @overlaps_hard_reg_set_p(i64 %regs, i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3927 {
entry:
  call void @llvm.dbg.value(metadata i64 %regs, metadata !3933, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3934, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3935, metadata !DIExpression()), !dbg !3937
  %sh_prom = zext i32 %regno to i64, !dbg !3938
  %shl = shl i64 1, %sh_prom, !dbg !3938
  %and = and i64 %shl, %regs, !dbg !3938
  %tobool = icmp eq i64 %and, 0, !dbg !3938
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3940

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) #7, !dbg !3941
  call void @llvm.dbg.value(metadata i32 %call, metadata !3936, metadata !DIExpression()), !dbg !3937
  br label %while.cond, !dbg !3942

while.cond:                                       ; preds = %while.body, %if.end
  %regno.addr.0 = phi i32 [ %regno, %if.end ], [ %inc, %while.body ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !3935, metadata !DIExpression()), !dbg !3937
  %inc = add i32 %regno.addr.0, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3935, metadata !DIExpression()), !dbg !3937
  %cmp = icmp ult i32 %inc, %call, !dbg !3944
  br i1 %cmp, label %while.body, label %cleanup.loopexit, !dbg !3942

while.body:                                       ; preds = %while.cond
  %sh_prom1 = zext i32 %inc to i64, !dbg !3945
  %shl2 = shl i64 1, %sh_prom1, !dbg !3945
  %and3 = and i64 %shl2, %regs, !dbg !3945
  %tobool4 = icmp eq i64 %and3, 0, !dbg !3945
  br i1 %tobool4, label %while.cond, label %cleanup.loopexit, !dbg !3947, !llvm.loop !3948

cleanup.loopexit:                                 ; preds = %while.cond, %while.body
  %retval.0.ph = phi i8 [ 0, %while.cond ], [ 1, %while.body ]
  br label %cleanup, !dbg !3950

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !3937
  ret i8 %retval.0, !dbg !3950
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3951 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3955, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3956, metadata !DIExpression()), !dbg !3957
  %idxprom = zext i32 %regno to i64, !dbg !3958
  %idxprom1 = sext i32 %mode to i64, !dbg !3958
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !3958
  %0 = load i8, i8* %arrayidx2, align 1, !dbg !3958
  %conv = zext i8 %0 to i32, !dbg !3958
  %add = add i32 %conv, %regno, !dbg !3959
  ret i32 %add, !dbg !3960
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def** @find_btr_use(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !3961 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3965, metadata !DIExpression()), !dbg !3966
  %call = tail call fastcc i32 @btr_referenced_p(%struct.rtx_def* %insn, %struct.rtx_def** null) #7, !dbg !3967
  %tobool = icmp eq i32 %call, 0, !dbg !3967
  %0 = load %struct.rtx_def**, %struct.rtx_def*** @btr_reference_found, align 8, !dbg !3967
  %cond = select i1 %tobool, %struct.rtx_def** null, %struct.rtx_def** %0, !dbg !3967
  ret %struct.rtx_def** %cond, !dbg !3968
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_hard_reg_set(i64 %s) unnamed_addr #4 !dbg !3969 {
entry:
  call void @llvm.dbg.value(metadata i64 %s, metadata !3973, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i32 0, metadata !3974, metadata !DIExpression()), !dbg !3975
  br label %for.cond, !dbg !3976

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3978
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3974, metadata !DIExpression()), !dbg !3975
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !3979
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3981

for.body:                                         ; preds = %for.cond
  %shl = shl i64 1, %indvars.iv, !dbg !3982
  %and = and i64 %shl, %s, !dbg !3982
  %tobool = icmp eq i64 %and, 0, !dbg !3982
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3984

if.then:                                          ; preds = %for.body
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3985
  %1 = trunc i64 %indvars.iv to i32, !dbg !3986
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %1) #6, !dbg !3986
  br label %for.inc, !dbg !3986

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3987
  call void @llvm.dbg.value(metadata i32 undef, metadata !3974, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3975
  br label %for.cond, !dbg !3988, !llvm.loop !3989

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3991
}

declare dso_local void @sbitmap_a_or_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

declare dso_local void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_union_of_preds(%struct.simple_bitmap_def*, %struct.simple_bitmap_def**, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @sbitmap_union_of_diff_cg(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_a_and_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_a_or_b_and_c(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* %i, %struct.simple_bitmap_def* %bmp, i32 %min) unnamed_addr #0 !dbg !3992 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !4000, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmp, metadata !4001, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i32 0, metadata !4002, metadata !DIExpression()), !dbg !4003
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !4004
  store i32 0, i32* %word_num, align 4, !dbg !4005
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !4006
  store i32 0, i32* %bit_num, align 8, !dbg !4007
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 2, !dbg !4008
  %0 = load i32, i32* %size, align 4, !dbg !4008
  %size1 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !4009
  store i32 %0, i32* %size1, align 8, !dbg !4010
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 3, i64 0, !dbg !4011
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !4012
  store i64* %arraydecay, i64** %ptr, align 8, !dbg !4013
  %cmp = icmp eq i32 %0, 0, !dbg !4014
  br i1 %cmp, label %if.then, label %if.else, !dbg !4016

if.then:                                          ; preds = %entry
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !4017
  store i64 0, i64* %word, align 8, !dbg !4018
  br label %if.end, !dbg !4019

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %arraydecay, align 8, !dbg !4020
  %word7 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !4021
  store i64 %1, i64* %word7, align 8, !dbg !4022
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4023
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* %i, i32* %n) unnamed_addr #0 !dbg !4024 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !4029, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i32* %n, metadata !4030, metadata !DIExpression()), !dbg !4031
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !4032
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !4035
  %size = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !4037
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !4035
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !4032
  %.pre = load i64, i64* %word, align 8, !dbg !4039
  br label %for.cond, !dbg !4040

for.cond:                                         ; preds = %if.end, %entry
  %0 = phi i64 [ %4, %if.end ], [ %.pre, %entry ], !dbg !4039
  %cmp = icmp eq i64 %0, 0, !dbg !4041
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !dbg !4042

for.cond6.preheader:                              ; preds = %for.cond
  %.lcssa4 = phi i64 [ %0, %for.cond ], !dbg !4039
  %.pre1 = load i32, i32* %bit_num, align 8, !dbg !4031
  br label %for.cond6, !dbg !4043

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %word_num, align 4, !dbg !4045
  %inc = add i32 %1, 1, !dbg !4045
  store i32 %inc, i32* %word_num, align 4, !dbg !4045
  %2 = load i32, i32* %size, align 8, !dbg !4046
  %cmp2 = icmp ult i32 %inc, %2, !dbg !4047
  br i1 %cmp2, label %if.end, label %return.loopexit, !dbg !4048

if.end:                                           ; preds = %for.body
  %mul = shl i32 %inc, 6, !dbg !4049
  store i32 %mul, i32* %bit_num, align 8, !dbg !4050
  %3 = load i64*, i64** %ptr, align 8, !dbg !4051
  %idxprom = zext i32 %inc to i64, !dbg !4052
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom, !dbg !4052
  %4 = load i64, i64* %arrayidx, align 8, !dbg !4052
  store i64 %4, i64* %word, align 8, !dbg !4053
  br label %for.cond, !dbg !4054, !llvm.loop !4055

for.cond6:                                        ; preds = %for.cond6.preheader, %for.body9
  %5 = phi i32 [ %.pre1, %for.cond6.preheader ], [ %inc11, %for.body9 ], !dbg !4031
  %6 = phi i64 [ %.lcssa4, %for.cond6.preheader ], [ %shr, %for.body9 ], !dbg !4057
  %and = and i64 %6, 1, !dbg !4059
  %cmp8 = icmp eq i64 %and, 0, !dbg !4060
  br i1 %cmp8, label %for.body9, label %for.end14, !dbg !4043

for.body9:                                        ; preds = %for.cond6
  %inc11 = add i32 %5, 1, !dbg !4061
  store i32 %inc11, i32* %bit_num, align 8, !dbg !4061
  %shr = lshr i64 %6, 1, !dbg !4062
  store i64 %shr, i64* %word, align 8, !dbg !4062
  br label %for.cond6, !dbg !4063, !llvm.loop !4064

for.end14:                                        ; preds = %for.cond6
  %.lcssa = phi i32 [ %5, %for.cond6 ], !dbg !4031
  store i32 %.lcssa, i32* %n, align 4, !dbg !4066
  br label %return, !dbg !4067

return.loopexit:                                  ; preds = %for.body
  br label %return, !dbg !4068

return:                                           ; preds = %return.loopexit, %for.end14
  %retval.0 = phi i8 [ 1, %for.end14 ], [ 0, %return.loopexit ], !dbg !4031
  ret i8 %retval.0, !dbg !4068
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* %i) unnamed_addr #0 !dbg !4069 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !4073, metadata !DIExpression()), !dbg !4074
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !4075
  %0 = load i64, i64* %word, align 8, !dbg !4076
  %shr = lshr i64 %0, 1, !dbg !4076
  store i64 %shr, i64* %word, align 8, !dbg !4076
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !4077
  %1 = load i32, i32* %bit_num, align 8, !dbg !4078
  %inc = add i32 %1, 1, !dbg !4078
  store i32 %inc, i32* %bit_num, align 8, !dbg !4078
  ret void, !dbg !4079
}

; Function Attrs: nounwind uwtable
define internal fastcc void @btr_def_live_range(%struct.btr_def_s* %def, i64* %btrs_live_in_range) unnamed_addr #4 !dbg !4080 {
entry:
  %bb15 = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %def, metadata !4084, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i64* %btrs_live_in_range, metadata !4085, metadata !DIExpression()), !dbg !4100
  %live_range = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 13, !dbg !4101
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range, align 8, !dbg !4101
  %tobool = icmp eq %struct.bitmap_head_def* %0, null, !dbg !4102
  br i1 %tobool, label %if.then, label %if.else, !dbg !4103

if.then:                                          ; preds = %entry
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !4104
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %live_range, align 8, !dbg !4105
  %bb = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 2, !dbg !4106
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4106
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 9, !dbg !4107
  %2 = load i32, i32* %index, align 8, !dbg !4107
  %call3 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %2) #6, !dbg !4108
  %3 = load i32, i32* @flag_btr_bb_exclusive, align 4, !dbg !4109
  %tobool4 = icmp eq i32 %3, 0, !dbg !4109
  %4 = load i64*, i64** @btrs_live, align 8, !dbg !4109
  %5 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !4109
  %cond = select i1 %tobool4, i64* %5, i64* %4, !dbg !4109
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4109
  %index6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 9, !dbg !4109
  %7 = load i32, i32* %index6, align 8, !dbg !4109
  %idxprom = sext i32 %7 to i64, !dbg !4109
  %arrayidx = getelementptr inbounds i64, i64* %cond, i64 %idxprom, !dbg !4109
  %8 = load i64, i64* %arrayidx, align 8, !dbg !4109
  store i64 %8, i64* %btrs_live_in_range, align 8, !dbg !4109
  %uses = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 8, !dbg !4110
  br label %for.cond, !dbg !4112

for.cond:                                         ; preds = %lor.end, %if.then
  %user.0.in = phi %struct.btr_user_s** [ %uses, %if.then ], [ %next, %lor.end ]
  %user.0 = load %struct.btr_user_s*, %struct.btr_user_s** %user.0.in, align 8, !dbg !4113
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %user.0, metadata !4086, metadata !DIExpression()), !dbg !4114
  %cmp = icmp eq %struct.btr_user_s* %user.0, null, !dbg !4115
  br i1 %cmp, label %if.end.loopexit, label %for.body, !dbg !4117

for.body:                                         ; preds = %for.cond
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range, align 8, !dbg !4118
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4119
  %bb9 = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 1, !dbg !4120
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb9, align 8, !dbg !4120
  %12 = load i32, i32* @flag_btr_bb_exclusive, align 4, !dbg !4121
  %tobool10 = icmp eq i32 %12, 0, !dbg !4121
  br i1 %tobool10, label %lor.lhs.false, label %lor.end, !dbg !4122

lor.lhs.false:                                    ; preds = %for.body
  %insn = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 3, !dbg !4123
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4123
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 7, !dbg !4124
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4124
  %14 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4124
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %14, i64 0, i32 1, !dbg !4124
  %15 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4124
  %cmp12 = icmp eq %struct.rtx_def* %13, %15, !dbg !4125
  br i1 %cmp12, label %lor.rhs, label %lor.end, !dbg !4126

lor.rhs:                                          ; preds = %lor.lhs.false
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i64 0, i32 0, !dbg !4126
  %bf.load = load i32, i32* %16, align 8, !dbg !4127
  %bf.clear = and i32 %bf.load, 65535, !dbg !4127
  %cmp14 = icmp ne i32 %bf.clear, 9, !dbg !4127
  br label %lor.end, !dbg !4126

lor.end:                                          ; preds = %lor.lhs.false, %for.body, %lor.rhs
  %17 = phi i1 [ true, %lor.lhs.false ], [ true, %for.body ], [ %cmp14, %lor.rhs ]
  %lor.ext = zext i1 %17 to i32, !dbg !4126
  tail call fastcc void @augment_live_range(%struct.bitmap_head_def* %9, i64* %btrs_live_in_range, %struct.basic_block_def* %10, %struct.basic_block_def* %11, i32 %lor.ext) #7, !dbg !4128
  %next = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 0, !dbg !4129
  br label %for.cond, !dbg !4130, !llvm.loop !4131

if.else:                                          ; preds = %entry
  %18 = bitcast i32* %bb15 to i8*, !dbg !4133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !4133
  %19 = load i32, i32* @flag_btr_bb_exclusive, align 4, !dbg !4134
  %tobool16 = icmp eq i32 %19, 0, !dbg !4134
  br i1 %tobool16, label %cond.false18, label %cond.end21, !dbg !4134

cond.false18:                                     ; preds = %if.else
  %bb19 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 2, !dbg !4135
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb19, align 8, !dbg !4135
  %index20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 9, !dbg !4136
  %21 = load i32, i32* %index20, align 8, !dbg !4136
  br label %cond.end21, !dbg !4134

cond.end21:                                       ; preds = %if.else, %cond.false18
  %cond22 = phi i32 [ %21, %cond.false18 ], [ -1, %if.else ], !dbg !4134
  call void @llvm.dbg.value(metadata i32 %cond22, metadata !4091, metadata !DIExpression()), !dbg !4137
  %22 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4138
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %22) #8, !dbg !4138
  store i64 0, i64* %btrs_live_in_range, align 8, !dbg !4139
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range, align 8, !dbg !4140
  call void @llvm.dbg.value(metadata i32* %bb15, metadata !4089, metadata !DIExpression(DW_OP_deref)), !dbg !4137
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4092, metadata !DIExpression(DW_OP_deref)), !dbg !4137
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %23, i32 0, i32* nonnull %bb15) #7, !dbg !4140
  br label %for.cond24, !dbg !4140

for.cond24:                                       ; preds = %for.body27, %cond.end21
  call void @llvm.dbg.value(metadata i32* %bb15, metadata !4089, metadata !DIExpression(DW_OP_deref)), !dbg !4137
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4092, metadata !DIExpression(DW_OP_deref)), !dbg !4137
  %call25 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb15) #7, !dbg !4142
  %tobool26 = icmp eq i8 %call25, 0, !dbg !4140
  br i1 %tobool26, label %for.end36, label %for.body27, !dbg !4140

for.body27:                                       ; preds = %for.cond24
  %24 = load i32, i32* %bb15, align 4, !dbg !4144
  call void @llvm.dbg.value(metadata i32 %24, metadata !4089, metadata !DIExpression()), !dbg !4137
  %cmp28 = icmp eq i32 %cond22, %24, !dbg !4144
  %25 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !4144
  %26 = load i64*, i64** @btrs_live, align 8, !dbg !4144
  %cond32 = select i1 %cmp28, i64* %25, i64* %26, !dbg !4144
  call void @llvm.dbg.value(metadata i32 %24, metadata !4089, metadata !DIExpression()), !dbg !4137
  %idxprom33 = zext i32 %24 to i64, !dbg !4144
  %arrayidx34 = getelementptr inbounds i64, i64* %cond32, i64 %idxprom33, !dbg !4144
  %27 = load i64, i64* %arrayidx34, align 8, !dbg !4144
  %28 = load i64, i64* %btrs_live_in_range, align 8, !dbg !4144
  %or = or i64 %28, %27, !dbg !4144
  store i64 %or, i64* %btrs_live_in_range, align 8, !dbg !4144
  call void @llvm.dbg.value(metadata i32* %bb15, metadata !4089, metadata !DIExpression(DW_OP_deref)), !dbg !4137
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4092, metadata !DIExpression(DW_OP_deref)), !dbg !4137
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb15) #7, !dbg !4142
  br label %for.cond24, !dbg !4142, !llvm.loop !4146

for.end36:                                        ; preds = %for.cond24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %22) #8, !dbg !4148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !4148
  br label %if.end

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4149

if.end:                                           ; preds = %if.end.loopexit, %for.end36
  %other_btr_uses_before_def = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 10, !dbg !4149
  %29 = load i8, i8* %other_btr_uses_before_def, align 1, !dbg !4149
  %tobool37 = icmp eq i8 %29, 0, !dbg !4151
  br i1 %tobool37, label %land.lhs.true, label %if.end40, !dbg !4152

land.lhs.true:                                    ; preds = %if.end
  %other_btr_uses_after_use = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 11, !dbg !4153
  %30 = load i8, i8* %other_btr_uses_after_use, align 2, !dbg !4153
  %tobool38 = icmp eq i8 %30, 0, !dbg !4154
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !4155

if.then39:                                        ; preds = %land.lhs.true
  %btr = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 5, !dbg !4156
  %31 = load i32, i32* %btr, align 8, !dbg !4156
  %sh_prom = zext i32 %31 to i64, !dbg !4156
  %shl = shl i64 1, %sh_prom, !dbg !4156
  %neg = xor i64 %shl, -1, !dbg !4156
  %32 = load i64, i64* %btrs_live_in_range, align 8, !dbg !4156
  %and = and i64 %32, %neg, !dbg !4156
  store i64 %and, i64* %btrs_live_in_range, align 8, !dbg !4156
  br label %if.end40, !dbg !4156

if.end40:                                         ; preds = %land.lhs.true, %if.end, %if.then39
  ret void, !dbg !4157
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local i32 @insn_default_latency(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @can_move_up(%struct.basic_block_def* %bb, %struct.rtx_def* %insn, i32 %n_insns) unnamed_addr #4 !dbg !4158 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4163, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i32 %n_insns, metadata !4164, metadata !DIExpression()), !dbg !4165
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !4165
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4165
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4165
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !4165
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !4165
  br label %while.cond, !dbg !4166

while.cond:                                       ; preds = %if.end, %entry
  %insn.addr.0 = phi %struct.rtx_def* [ %insn, %entry ], [ %3, %if.end ]
  %n_insns.addr.0 = phi i32 [ %n_insns, %entry ], [ %n_insns.addr.1, %if.end ]
  call void @llvm.dbg.value(metadata i32 %n_insns.addr.0, metadata !4164, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.addr.0, metadata !4163, metadata !DIExpression()), !dbg !4165
  %cmp = icmp ne %struct.rtx_def* %insn.addr.0, %1, !dbg !4167
  %cmp1 = icmp sgt i32 %n_insns.addr.0, 0, !dbg !4168
  %spec.select = and i1 %cmp1, %cmp, !dbg !4169
  br i1 %spec.select, label %while.body, label %while.end, !dbg !4166

while.body:                                       ; preds = %while.cond
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.addr.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4170
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !4170
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4170
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !4163, metadata !DIExpression()), !dbg !4165
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !4172
  %bf.load = load i32, i32* %4, align 8, !dbg !4172
  %bf.clear = and i32 %bf.load, 65535, !dbg !4172
  %cmp2 = icmp eq i32 %bf.clear, 8, !dbg !4172
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !4172

lor.lhs.false:                                    ; preds = %while.body
  %cmp5 = icmp eq i32 %bf.clear, 7, !dbg !4172
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !4172

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %cmp9 = icmp eq i32 %bf.clear, 9, !dbg !4172
  br i1 %cmp9, label %if.then, label %lor.lhs.false10, !dbg !4172

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %cmp13 = icmp eq i32 %bf.clear, 10, !dbg !4172
  br i1 %cmp13, label %if.then, label %if.end, !dbg !4174

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false, %while.body
  %dec = add nsw i32 %n_insns.addr.0, -1, !dbg !4175
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4164, metadata !DIExpression()), !dbg !4165
  br label %if.end, !dbg !4176

if.end:                                           ; preds = %if.then, %lor.lhs.false10
  %n_insns.addr.1 = phi i32 [ %dec, %if.then ], [ %n_insns.addr.0, %lor.lhs.false10 ]
  call void @llvm.dbg.value(metadata i32 %n_insns.addr.1, metadata !4164, metadata !DIExpression()), !dbg !4165
  br label %while.cond, !dbg !4166, !llvm.loop !4177

while.end:                                        ; preds = %while.cond
  %n_insns.addr.0.lcssa = phi i32 [ %n_insns.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata i32 %n_insns.addr.0.lcssa, metadata !4164, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i32 %n_insns.addr.0.lcssa, metadata !4164, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i32 %n_insns.addr.0.lcssa, metadata !4164, metadata !DIExpression()), !dbg !4165
  %cmp14 = icmp slt i32 %n_insns.addr.0.lcssa, 1, !dbg !4179
  %conv = zext i1 %cmp14 to i32, !dbg !4179
  ret i32 %conv, !dbg !4180
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !4181 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !4185, metadata !DIExpression()), !dbg !4187
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !4188
  store i32 0, i32* %index, align 8, !dbg !4189
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !4190
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !4191
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !4192
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !4192
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !4192
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !4193 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !4199, metadata !DIExpression()), !dbg !4200
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !4201
  %tobool = icmp eq i8 %call, 0, !dbg !4201
  br i1 %tobool, label %if.then, label %if.else, !dbg !4203

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !4204
  br label %return, !dbg !4206

if.else:                                          ; preds = %entry
  br label %return, !dbg !4207

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !4209
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !4209
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !4209
  ret i8 %retval.0, !dbg !4210
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !4211 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !4216, metadata !DIExpression()), !dbg !4217
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !4218
  %0 = load i32, i32* %index, align 8, !dbg !4218
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !4218
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4218
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !4218
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4218
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4218

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !4218
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !4218
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !4218
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4218
  br label %cond.end, !dbg !4218

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4218
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4218
  %cmp = icmp ult i32 %0, %call2, !dbg !4218
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !4218

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4218
  br label %cond.end5, !dbg !4218

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !4219
  %inc = add i32 %5, 1, !dbg !4219
  store i32 %inc, i32* %index, align 8, !dbg !4219
  ret void, !dbg !4220
}

; Function Attrs: nounwind uwtable
define internal fastcc void @augment_live_range(%struct.bitmap_head_def* %live_range, i64* %btrs_live_in_range, %struct.basic_block_def* %head_bb, %struct.basic_block_def* %new_bb, i32 %full_range) unnamed_addr #4 !dbg !4221 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %e43 = alloca %struct.edge_def*, align 8
  %ei44 = alloca %struct.edge_iterator, align 8
  %tmp62 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %live_range, metadata !4225, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i64* %btrs_live_in_range, metadata !4226, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %head_bb, metadata !4227, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %new_bb, metadata !4228, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i32 %full_range, metadata !4229, metadata !DIExpression()), !dbg !4247
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4248
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4248
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4248
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !4248
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !4248
  %add = add nsw i32 %2, 1, !dbg !4248
  %conv = sext i32 %add to i64, !dbg !4248
  %mul = shl nsw i64 %conv, 3, !dbg !4248
  %call = tail call i8* @xmalloc(i64 %mul) #6, !dbg !4248
  %3 = bitcast i8* %call to %struct.basic_block_def**, !dbg !4248
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %3, metadata !4230, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %3, metadata !4231, metadata !DIExpression()), !dbg !4247
  %call1 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %new_bb, %struct.basic_block_def* %head_bb) #6, !dbg !4249
  %tobool = icmp eq i8 %call1, 0, !dbg !4249
  br i1 %tobool, label %if.else, label %if.then, !dbg !4250

if.then:                                          ; preds = %entry
  %cmp = icmp eq %struct.basic_block_def* %new_bb, %head_bb, !dbg !4251
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !4254

if.then3:                                         ; preds = %if.then
  %tobool4 = icmp eq i32 %full_range, 0, !dbg !4255
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !4258

if.then5:                                         ; preds = %if.then3
  %4 = load i64*, i64** @btrs_live, align 8, !dbg !4259
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %new_bb, i64 0, i32 9, !dbg !4259
  %5 = load i32, i32* %index, align 8, !dbg !4259
  %idxprom = sext i32 %5 to i64, !dbg !4259
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %idxprom, !dbg !4259
  %6 = load i64, i64* %arrayidx, align 8, !dbg !4259
  %7 = load i64, i64* %btrs_live_in_range, align 8, !dbg !4259
  %or = or i64 %7, %6, !dbg !4259
  store i64 %or, i64* %btrs_live_in_range, align 8, !dbg !4259
  br label %if.end, !dbg !4259

if.end:                                           ; preds = %if.then3, %if.then5
  tail call void @free(i8* %call) #6, !dbg !4260
  br label %cleanup.cont, !dbg !4261

if.end6:                                          ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 8, !dbg !4262
  %8 = bitcast i8* %incdec.ptr to %struct.basic_block_def**, !dbg !4262
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %8, metadata !4231, metadata !DIExpression()), !dbg !4247
  store %struct.basic_block_def* %new_bb, %struct.basic_block_def** %3, align 8, !dbg !4263
  br label %if.end35, !dbg !4264

if.else:                                          ; preds = %entry
  %9 = bitcast %struct.edge_def** %e to i8*, !dbg !4265
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #8, !dbg !4265
  %10 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4266
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !4266
  %index7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %new_bb, i64 0, i32 9, !dbg !4267
  %11 = load i32, i32* %index7, align 8, !dbg !4267
  call void @llvm.dbg.value(metadata i32 %11, metadata !4236, metadata !DIExpression()), !dbg !4268
  %call8 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %head_bb, %struct.basic_block_def* %new_bb) #6, !dbg !4269
  %tobool9 = icmp eq i8 %call8, 0, !dbg !4269
  br i1 %tobool9, label %cond.true, label %cond.end, !dbg !4269

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 922, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4269
  br label %cond.end, !dbg !4269

cond.end:                                         ; preds = %if.else, %cond.true
  %12 = load i64*, i64** @btrs_live, align 8, !dbg !4270
  %index10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %head_bb, i64 0, i32 9, !dbg !4270
  %13 = load i32, i32* %index10, align 8, !dbg !4270
  %idxprom11 = sext i32 %13 to i64, !dbg !4270
  %arrayidx12 = getelementptr inbounds i64, i64* %12, i64 %idxprom11, !dbg !4270
  %14 = load i64, i64* %arrayidx12, align 8, !dbg !4270
  %15 = load i64, i64* %btrs_live_in_range, align 8, !dbg !4270
  %or13 = or i64 %15, %14, !dbg !4270
  store i64 %or13, i64* %btrs_live_in_range, align 8, !dbg !4270
  %call14 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %live_range, i32 %11) #6, !dbg !4271
  %16 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !4272
  %idxprom15 = sext i32 %11 to i64, !dbg !4272
  %arrayidx16 = getelementptr inbounds i64, i64* %16, i64 %idxprom15, !dbg !4272
  %17 = load i64, i64* %arrayidx16, align 8, !dbg !4272
  %18 = load i64, i64* %btrs_live_in_range, align 8, !dbg !4272
  %or17 = or i64 %18, %17, !dbg !4272
  store i64 %or17, i64* %btrs_live_in_range, align 8, !dbg !4272
  %tobool18 = icmp eq i32 %full_range, 0, !dbg !4273
  br i1 %tobool18, label %if.end23, label %if.then19, !dbg !4275

if.then19:                                        ; preds = %cond.end
  %19 = load i64*, i64** @btrs_live, align 8, !dbg !4276
  %arrayidx21 = getelementptr inbounds i64, i64* %19, i64 %idxprom15, !dbg !4276
  %20 = load i64, i64* %arrayidx21, align 8, !dbg !4276
  %or22 = or i64 %or17, %20, !dbg !4276
  store i64 %or22, i64* %btrs_live_in_range, align 8, !dbg !4276
  br label %if.end23, !dbg !4276

if.end23:                                         ; preds = %cond.end, %if.then19
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4277
  %tobool24 = icmp eq %struct._IO_FILE* %21, null, !dbg !4277
  br i1 %tobool24, label %if.end30, label %if.then25, !dbg !4279

if.then25:                                        ; preds = %if.end23
  %22 = load i32, i32* %index10, align 8, !dbg !4280
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i64 0, i64 0), i32 %11, i32 %22) #6, !dbg !4282
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4283
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !4284
  %24 = load i64, i64* %btrs_live_in_range, align 8, !dbg !4285
  tail call fastcc void @dump_hard_reg_set(i64 %24) #7, !dbg !4286
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4287
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !4288
  br label %if.end30, !dbg !4289

if.end30:                                         ; preds = %if.end23, %if.then25
  %26 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4290
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #8, !dbg !4290
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %head_bb, i64 0, i32 0, !dbg !4290
  %call31 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !4290
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4290
  %28 = extractvalue { i32, %struct.VEC_edge_gc** } %call31, 0, !dbg !4290
  store i32 %28, i32* %27, align 8, !dbg !4290
  %29 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4290
  %30 = extractvalue { i32, %struct.VEC_edge_gc** } %call31, 1, !dbg !4290
  store %struct.VEC_edge_gc** %30, %struct.VEC_edge_gc*** %29, align 8, !dbg !4290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 8 %26, i64 16, i1 false), !dbg !4290
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #8, !dbg !4290
  %31 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4292
  %32 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4292
  %33 = bitcast %struct.edge_def** %e to i64**, !dbg !4292
  br label %for.cond, !dbg !4290

for.cond:                                         ; preds = %for.body, %if.end30
  %tos.0 = phi %struct.basic_block_def** [ %3, %if.end30 ], [ %incdec.ptr34, %for.body ], !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0, metadata !4231, metadata !DIExpression()), !dbg !4247
  %34 = load i32, i32* %31, align 8, !dbg !4294
  %35 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %32, align 8, !dbg !4294
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4232, metadata !DIExpression(DW_OP_deref)), !dbg !4268
  %call32 = call fastcc zeroext i8 @ei_cond(i32 %34, %struct.VEC_edge_gc** %35, %struct.edge_def** nonnull %e) #7, !dbg !4294
  %tobool33 = icmp eq i8 %call32, 0, !dbg !4290
  br i1 %tobool33, label %for.end, label %for.body, !dbg !4290

for.body:                                         ; preds = %for.cond
  %36 = load i64*, i64** %33, align 8, !dbg !4295
  %37 = load i64, i64* %36, align 8, !dbg !4296
  %incdec.ptr34 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %tos.0, i64 1, !dbg !4297
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr34, metadata !4231, metadata !DIExpression()), !dbg !4247
  %38 = bitcast %struct.basic_block_def** %tos.0 to i64*, !dbg !4298
  store i64 %37, i64* %38, align 8, !dbg !4298
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4235, metadata !DIExpression(DW_OP_deref)), !dbg !4268
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4294
  br label %for.cond, !dbg !4294, !llvm.loop !4299

for.end:                                          ; preds = %for.cond
  %tos.0.lcssa = phi %struct.basic_block_def** [ %tos.0, %for.cond ], !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0.lcssa, metadata !4231, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0.lcssa, metadata !4231, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.0.lcssa, metadata !4231, metadata !DIExpression()), !dbg !4247
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !4301
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #8, !dbg !4301
  br label %if.end35

if.end35:                                         ; preds = %for.end, %if.end6
  %tos.1 = phi %struct.basic_block_def** [ %8, %if.end6 ], [ %tos.0.lcssa, %for.end ], !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.1, metadata !4231, metadata !DIExpression()), !dbg !4247
  %39 = bitcast %struct.edge_def** %e43 to i8*, !dbg !4302
  %40 = bitcast %struct.edge_iterator* %ei44 to i8*, !dbg !4302
  %41 = bitcast %struct.edge_iterator* %tmp62 to i8*, !dbg !4303
  %42 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp62, i64 0, i32 0, !dbg !4303
  %43 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp62, i64 0, i32 1, !dbg !4303
  %44 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei44, i64 0, i32 0, !dbg !4304
  %45 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei44, i64 0, i32 1, !dbg !4304
  br label %while.cond, !dbg !4305

while.cond:                                       ; preds = %if.end78, %if.end35
  %tos.2 = phi %struct.basic_block_def** [ %tos.1, %if.end35 ], [ %tos.5, %if.end78 ], !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.2, metadata !4231, metadata !DIExpression()), !dbg !4247
  %cmp36 = icmp eq %struct.basic_block_def** %tos.2, %3, !dbg !4306
  br i1 %cmp36, label %while.end, label %while.body, !dbg !4305

while.body:                                       ; preds = %while.cond
  %incdec.ptr38 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %tos.2, i64 -1, !dbg !4307
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr38, metadata !4231, metadata !DIExpression()), !dbg !4247
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %incdec.ptr38, align 8, !dbg !4308
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %46, metadata !4237, metadata !DIExpression()), !dbg !4309
  %index39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i64 0, i32 9, !dbg !4310
  %47 = load i32, i32* %index39, align 8, !dbg !4310
  %call40 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %live_range, i32 %47) #6, !dbg !4311
  %tobool41 = icmp eq i32 %call40, 0, !dbg !4311
  br i1 %tobool41, label %if.then42, label %if.end78, !dbg !4312

if.then42:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #8, !dbg !4313
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #8, !dbg !4314
  %48 = load i32, i32* %index39, align 8, !dbg !4315
  %call46 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %live_range, i32 %48) #6, !dbg !4316
  %49 = load i64*, i64** @btrs_live, align 8, !dbg !4317
  %50 = load i32, i32* %index39, align 8, !dbg !4317
  %idxprom48 = sext i32 %50 to i64, !dbg !4317
  %arrayidx49 = getelementptr inbounds i64, i64* %49, i64 %idxprom48, !dbg !4317
  %51 = load i64, i64* %arrayidx49, align 8, !dbg !4317
  %52 = load i64, i64* %btrs_live_in_range, align 8, !dbg !4317
  %or50 = or i64 %52, %51, !dbg !4317
  store i64 %or50, i64* %btrs_live_in_range, align 8, !dbg !4317
  %53 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !4318
  %54 = load i32, i32* %index39, align 8, !dbg !4318
  %idxprom52 = sext i32 %54 to i64, !dbg !4318
  %arrayidx53 = getelementptr inbounds i64, i64* %53, i64 %idxprom52, !dbg !4318
  %55 = load i64, i64* %arrayidx53, align 8, !dbg !4318
  %or54 = or i64 %or50, %55, !dbg !4318
  store i64 %or54, i64* %btrs_live_in_range, align 8, !dbg !4318
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4319
  %tobool55 = icmp eq %struct._IO_FILE* %56, null, !dbg !4319
  br i1 %tobool55, label %if.end61, label %if.then56, !dbg !4321

if.then56:                                        ; preds = %if.then42
  %57 = load i32, i32* %index39, align 8, !dbg !4322
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 %57) #6, !dbg !4324
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4325
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !4326
  %59 = load i64, i64* %btrs_live_in_range, align 8, !dbg !4327
  call fastcc void @dump_hard_reg_set(i64 %59) #7, !dbg !4328
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4329
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !4330
  br label %if.end61, !dbg !4331

if.end61:                                         ; preds = %if.then42, %if.then56
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %41) #8, !dbg !4332
  %preds63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i64 0, i32 0, !dbg !4332
  %call64 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds63) #7, !dbg !4332
  %61 = extractvalue { i32, %struct.VEC_edge_gc** } %call64, 0, !dbg !4332
  store i32 %61, i32* %42, align 8, !dbg !4332
  %62 = extractvalue { i32, %struct.VEC_edge_gc** } %call64, 1, !dbg !4332
  store %struct.VEC_edge_gc** %62, %struct.VEC_edge_gc*** %43, align 8, !dbg !4332
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %40, i8* nonnull align 8 %41, i64 16, i1 false), !dbg !4332
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %41) #8, !dbg !4332
  br label %for.cond65, !dbg !4332

for.cond65:                                       ; preds = %for.inc76, %if.end61
  %tos.3 = phi %struct.basic_block_def** [ %incdec.ptr38, %if.end61 ], [ %tos.4, %for.inc76 ], !dbg !4307
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.3, metadata !4231, metadata !DIExpression()), !dbg !4247
  %63 = load i32, i32* %44, align 8, !dbg !4333
  %64 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %45, align 8, !dbg !4333
  call void @llvm.dbg.value(metadata %struct.edge_def** %e43, metadata !4239, metadata !DIExpression(DW_OP_deref)), !dbg !4302
  %call66 = call fastcc zeroext i8 @ei_cond(i32 %63, %struct.VEC_edge_gc** %64, %struct.edge_def** nonnull %e43) #7, !dbg !4333
  %tobool67 = icmp eq i8 %call66, 0, !dbg !4332
  br i1 %tobool67, label %for.end77, label %for.body68, !dbg !4332

for.body68:                                       ; preds = %for.cond65
  %65 = load %struct.edge_def*, %struct.edge_def** %e43, align 8, !dbg !4334
  call void @llvm.dbg.value(metadata %struct.edge_def* %65, metadata !4239, metadata !DIExpression()), !dbg !4302
  %src69 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %65, i64 0, i32 0, !dbg !4335
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %src69, align 8, !dbg !4335
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %66, metadata !4243, metadata !DIExpression()), !dbg !4336
  %index70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %66, i64 0, i32 9, !dbg !4337
  %67 = load i32, i32* %index70, align 8, !dbg !4337
  %call71 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %live_range, i32 %67) #6, !dbg !4339
  %tobool72 = icmp eq i32 %call71, 0, !dbg !4339
  br i1 %tobool72, label %if.then73, label %for.inc76, !dbg !4340

if.then73:                                        ; preds = %for.body68
  %incdec.ptr74 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %tos.3, i64 1, !dbg !4341
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %incdec.ptr74, metadata !4231, metadata !DIExpression()), !dbg !4247
  store %struct.basic_block_def* %66, %struct.basic_block_def** %tos.3, align 8, !dbg !4342
  br label %for.inc76, !dbg !4343

for.inc76:                                        ; preds = %for.body68, %if.then73
  %tos.4 = phi %struct.basic_block_def** [ %tos.3, %for.body68 ], [ %incdec.ptr74, %if.then73 ], !dbg !4309
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.4, metadata !4231, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei44, metadata !4242, metadata !DIExpression(DW_OP_deref)), !dbg !4302
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei44) #7, !dbg !4333
  br label %for.cond65, !dbg !4333, !llvm.loop !4344

for.end77:                                        ; preds = %for.cond65
  %tos.3.lcssa = phi %struct.basic_block_def** [ %tos.3, %for.cond65 ], !dbg !4307
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.3.lcssa, metadata !4231, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.3.lcssa, metadata !4231, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.3.lcssa, metadata !4231, metadata !DIExpression()), !dbg !4247
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #8, !dbg !4346
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #8, !dbg !4346
  br label %if.end78, !dbg !4347

if.end78:                                         ; preds = %while.body, %for.end77
  %tos.5 = phi %struct.basic_block_def** [ %incdec.ptr38, %while.body ], [ %tos.3.lcssa, %for.end77 ], !dbg !4307
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %tos.5, metadata !4231, metadata !DIExpression()), !dbg !4247
  br label %while.cond, !dbg !4305, !llvm.loop !4348

while.end:                                        ; preds = %while.cond
  call void @free(i8* %call) #6, !dbg !4350
  br label %cleanup.cont, !dbg !4351

cleanup.cont:                                     ; preds = %if.end, %while.end
  ret void, !dbg !4351
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @choose_btr(i64 %used_btrs) unnamed_addr #4 !dbg !4352 {
entry:
  call void @llvm.dbg.value(metadata i64 %used_btrs, metadata !4356, metadata !DIExpression()), !dbg !4363
  %0 = load i64, i64* @all_btrs, align 8, !dbg !4364
  %call = tail call fastcc zeroext i8 @hard_reg_set_subset_p(i64 %0, i64 %used_btrs) #7, !dbg !4365
  %tobool = icmp eq i8 %call, 0, !dbg !4365
  br i1 %tobool, label %for.cond.preheader, label %cleanup8, !dbg !4366

for.cond.preheader:                               ; preds = %entry
  %1 = load i64, i64* @all_btrs, align 8, !dbg !4367
  br label %for.cond, !dbg !4369

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !4370
  %retval.0 = phi i32 [ undef, %for.cond.preheader ], [ %retval.1, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4357, metadata !DIExpression()), !dbg !4363
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !4371
  br i1 %exitcond, label %cleanup8.loopexit, label %for.body, !dbg !4369

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @reg_alloc_order, i64 0, i64 %indvars.iv, !dbg !4372
  %2 = load i32, i32* %arrayidx, align 4, !dbg !4372
  call void @llvm.dbg.value(metadata i32 %2, metadata !4358, metadata !DIExpression()), !dbg !4373
  %sh_prom = zext i32 %2 to i64, !dbg !4374
  %shl = shl i64 1, %sh_prom, !dbg !4374
  %and = and i64 %1, %shl, !dbg !4374
  %tobool1 = icmp eq i64 %and, 0, !dbg !4374
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !4375

land.lhs.true:                                    ; preds = %for.body
  %and4 = and i64 %shl, %used_btrs, !dbg !4376
  %tobool5 = icmp eq i64 %and4, 0, !dbg !4376
  br i1 %tobool5, label %cleanup, label %if.end, !dbg !4377

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %cleanup, !dbg !4378

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true ]
  %retval.1 = phi i32 [ %retval.0, %if.end ], [ %2, %land.lhs.true ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup8.loopexit

for.inc:                                          ; preds = %cleanup
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4379
  call void @llvm.dbg.value(metadata i32 undef, metadata !4357, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4363
  br label %for.cond, !dbg !4380, !llvm.loop !4381

cleanup8.loopexit:                                ; preds = %for.cond, %cleanup
  %retval.2.ph = phi i32 [ -1, %for.cond ], [ %retval.1, %cleanup ]
  br label %cleanup8, !dbg !4383

cleanup8:                                         ; preds = %cleanup8.loopexit, %entry
  %retval.2 = phi i32 [ -1, %entry ], [ %retval.2.ph, %cleanup8.loopexit ]
  ret i32 %retval.2, !dbg !4383
}

; Function Attrs: nounwind uwtable
define internal fastcc void @move_btr_def(%struct.basic_block_def* %new_def_bb, i32 %btr, %struct.btr_def_s* %def, %struct.bitmap_head_def* %live_range, i64* %btrs_live_in_range) unnamed_addr #4 !dbg !4384 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %new_def_bb, metadata !4388, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i32 %btr, metadata !4389, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %def, metadata !4390, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %live_range, metadata !4391, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i64* %btrs_live_in_range, metadata !4392, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %new_def_bb, metadata !4393, metadata !DIExpression()), !dbg !4406
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %new_def_bb, i64 0, i32 7, !dbg !4407
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4407
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4407
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 0, !dbg !4407
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !4407
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !4394, metadata !DIExpression()), !dbg !4406
  %insn = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 4, !dbg !4408
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4408
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !4395, metadata !DIExpression()), !dbg !4406
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4409
  %tobool = icmp eq %struct._IO_FILE* %3, null, !dbg !4409
  br i1 %tobool, label %if.end, label %if.then, !dbg !4411

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %new_def_bb, i64 0, i32 9, !dbg !4412
  %4 = load i32, i32* %index, align 8, !dbg !4412
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 %4, i32 %btr) #6, !dbg !4413
  br label %if.end, !dbg !4413

if.end:                                           ; preds = %entry, %if.then
  tail call fastcc void @clear_btr_from_live_range(%struct.btr_def_s* %def) #7, !dbg !4414
  %btr1 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 5, !dbg !4415
  store i32 %btr, i32* %btr1, align 8, !dbg !4416
  %bb = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 2, !dbg !4417
  store %struct.basic_block_def* %new_def_bb, %struct.basic_block_def** %bb, align 8, !dbg !4418
  %luid = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 3, !dbg !4419
  store i32 0, i32* %luid, align 8, !dbg !4420
  %call2 = tail call fastcc i32 @basic_block_freq(%struct.basic_block_def* %new_def_bb) #7, !dbg !4421
  %cost = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 6, !dbg !4422
  store i32 %call2, i32* %cost, align 4, !dbg !4423
  %live_range3 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 13, !dbg !4424
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range3, align 8, !dbg !4424
  tail call void @bitmap_copy(%struct.bitmap_head_def* %5, %struct.bitmap_head_def* %live_range) #6, !dbg !4425
  tail call fastcc void @combine_btr_defs(%struct.btr_def_s* %def, i64* %btrs_live_in_range) #7, !dbg !4426
  %6 = load i32, i32* %btr1, align 8, !dbg !4427
  call void @llvm.dbg.value(metadata i32 %6, metadata !4389, metadata !DIExpression()), !dbg !4406
  %7 = load i64*, i64** @btrs_live, align 8, !dbg !4428
  %index5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %new_def_bb, i64 0, i32 9, !dbg !4428
  %8 = load i32, i32* %index5, align 8, !dbg !4428
  %idxprom = sext i32 %8 to i64, !dbg !4428
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %idxprom, !dbg !4428
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4428
  %sh_prom = zext i32 %6 to i64, !dbg !4428
  %shl = shl i64 1, %sh_prom, !dbg !4428
  %and = and i64 %9, %shl, !dbg !4428
  %tobool6 = icmp ne i64 %and, 0, !dbg !4428
  %conv = zext i1 %tobool6 to i8, !dbg !4428
  %other_btr_uses_before_def = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 10, !dbg !4429
  store i8 %conv, i8* %other_btr_uses_before_def, align 1, !dbg !4430
  tail call fastcc void @add_btr_to_live_range(%struct.btr_def_s* %def, i32 1) #7, !dbg !4431
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !4432
  %bf.load = load i32, i32* %10, align 8, !dbg !4432
  %bf.clear = and i32 %bf.load, 65535, !dbg !4432
  %cmp = icmp eq i32 %bf.clear, 12, !dbg !4432
  br i1 %cmp, label %if.then9, label %if.end11, !dbg !4434

if.then9:                                         ; preds = %if.end
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4435
  %rt_rtx = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !4435
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4435
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !4394, metadata !DIExpression()), !dbg !4406
  br label %if.end11, !dbg !4436

if.end11:                                         ; preds = %if.then9, %if.end
  %insp.0 = phi %struct.rtx_def* [ %12, %if.then9 ], [ %1, %if.end ], !dbg !4406
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insp.0, metadata !4394, metadata !DIExpression()), !dbg !4406
  %13 = load i8, i8* %other_btr_uses_before_def, align 1, !dbg !4437
  %tobool13 = icmp eq i8 %13, 0, !dbg !4439
  br i1 %tobool13, label %if.end62, label %if.then14, !dbg !4440

if.then14:                                        ; preds = %if.end11
  call void @llvm.dbg.value(metadata %struct.rtx_def* undef, metadata !4394, metadata !DIExpression()), !dbg !4406
  %14 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4441
  %end_19 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %14, i64 0, i32 1, !dbg !4441
  br label %for.cond, !dbg !4444

for.cond:                                         ; preds = %for.inc, %if.then14
  %insp.1.in = phi %struct.rtx_def** [ %end_19, %if.then14 ], [ %rt_rtx47, %for.inc ]
  %insp.1 = load %struct.rtx_def*, %struct.rtx_def** %insp.1.in, align 8, !dbg !4445
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insp.1, metadata !4394, metadata !DIExpression()), !dbg !4406
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insp.1, i64 0, i32 0, !dbg !4446
  %bf.load20 = load i32, i32* %15, align 8, !dbg !4446
  %bf.clear21 = and i32 %bf.load20, 65535, !dbg !4446
  %cmp22 = icmp eq i32 %bf.clear21, 8, !dbg !4446
  br i1 %cmp22, label %lor.end, label %lor.lhs.false, !dbg !4446

lor.lhs.false:                                    ; preds = %for.cond
  %cmp26 = icmp eq i32 %bf.clear21, 7, !dbg !4446
  br i1 %cmp26, label %lor.end, label %lor.lhs.false28, !dbg !4446

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %cmp31 = icmp eq i32 %bf.clear21, 9, !dbg !4446
  br i1 %cmp31, label %lor.end, label %lor.rhs, !dbg !4446

lor.rhs:                                          ; preds = %lor.lhs.false28
  %cmp35 = icmp eq i32 %bf.clear21, 10, !dbg !4446
  br label %lor.end, !dbg !4446

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false28, %lor.lhs.false, %for.cond
  %16 = phi i1 [ true, %lor.lhs.false28 ], [ true, %lor.lhs.false ], [ true, %for.cond ], [ %cmp35, %lor.rhs ]
  br i1 %16, label %for.end, label %for.body, !dbg !4448

for.body:                                         ; preds = %lor.end
  %17 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4449
  %head_40 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %17, i64 0, i32 0, !dbg !4449
  %18 = load %struct.rtx_def*, %struct.rtx_def** %head_40, align 8, !dbg !4449
  %cmp41 = icmp eq %struct.rtx_def* %insp.1, %18, !dbg !4449
  br i1 %cmp41, label %cond.true, label %for.inc, !dbg !4449

cond.true:                                        ; preds = %for.body
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4449
  br label %for.inc, !dbg !4449

for.inc:                                          ; preds = %for.body, %cond.true
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insp.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4450
  %rt_rtx47 = bitcast %union.rtunion_def* %19 to %struct.rtx_def**, !dbg !4450
  br label %for.cond, !dbg !4451, !llvm.loop !4452

for.end:                                          ; preds = %lor.end
  %insp.1.lcssa = phi %struct.rtx_def* [ %insp.1, %lor.end ], !dbg !4445
  %bf.clear21.lcssa = phi i32 [ %bf.clear21, %lor.end ], !dbg !4446
  %cmp50 = icmp eq i32 %bf.clear21.lcssa, 9, !dbg !4454
  br i1 %cmp50, label %if.then56, label %lor.lhs.false52, !dbg !4456

lor.lhs.false52:                                  ; preds = %for.end
  %call53 = tail call zeroext i8 @can_throw_internal(%struct.rtx_def* %insp.1.lcssa) #6, !dbg !4457
  %tobool55 = icmp eq i8 %call53, 0, !dbg !4457
  br i1 %tobool55, label %if.end62, label %if.then56, !dbg !4458

if.then56:                                        ; preds = %lor.lhs.false52, %for.end
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insp.1.lcssa, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4459
  %rt_rtx60 = bitcast %union.rtunion_def* %20 to %struct.rtx_def**, !dbg !4459
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx60, align 8, !dbg !4459
  call void @llvm.dbg.value(metadata %struct.rtx_def* %21, metadata !4394, metadata !DIExpression()), !dbg !4406
  br label %if.end62, !dbg !4460

if.end62:                                         ; preds = %lor.lhs.false52, %if.end11, %if.then56
  %insp.3 = phi %struct.rtx_def* [ %insp.0, %if.end11 ], [ %21, %if.then56 ], [ %insp.1.lcssa, %lor.lhs.false52 ], !dbg !4406
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insp.3, metadata !4394, metadata !DIExpression()), !dbg !4406
  br label %cond.true82, !dbg !4461

lor.lhs.false67:                                  ; No predecessors!
  br label %cond.true82, !dbg !4461

lor.lhs.false72:                                  ; No predecessors!
  br label %cond.true82, !dbg !4461

lor.lhs.false77:                                  ; No predecessors!
  br label %cond.true82, !dbg !4461

cond.true82:                                      ; preds = %lor.lhs.false72, %lor.lhs.false67, %if.end62, %lor.lhs.false77
  %u83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, !dbg !4461
  %22 = getelementptr inbounds %union.u, %union.u* %u83, i64 1, i32 0, i32 0, i64 0, !dbg !4461
  %23 = bitcast %union.rtunion_def* %22 to i32**, !dbg !4461
  %24 = load i32*, i32** %23, align 8, !dbg !4461
  %bf.load87 = load i32, i32* %24, align 8, !dbg !4461
  %bf.clear88 = and i32 %bf.load87, 65535, !dbg !4461
  %cmp89 = icmp eq i32 %bf.clear88, 23, !dbg !4461
  %25 = bitcast i32* %24 to %struct.rtx_def*, !dbg !4461
  br i1 %cmp89, label %cond.end105, label %cond.false96, !dbg !4461

cond.false96:                                     ; preds = %cond.true82
  %call101 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %2, %struct.rtx_def* %25) #6, !dbg !4461
  br label %cond.end105, !dbg !4461

cond.end105:                                      ; preds = %cond.false96, %cond.true82
  %cond106 = phi %struct.rtx_def* [ %call101, %cond.false96 ], [ %25, %cond.true82 ], !dbg !4461
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond106, metadata !4401, metadata !DIExpression()), !dbg !4406
  %26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond106, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4462
  %rt_rtx110 = bitcast %union.rtunion_def* %26 to %struct.rtx_def**, !dbg !4462
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx110, align 8, !dbg !4462
  call void @llvm.dbg.value(metadata %struct.rtx_def* %27, metadata !4396, metadata !DIExpression()), !dbg !4406
  %arrayidx113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond106, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4463
  %28 = bitcast %union.rtunion_def* %arrayidx113 to i32**, !dbg !4463
  %29 = load i32*, i32** %28, align 8, !dbg !4463
  %bf.load115 = load i32, i32* %29, align 8, !dbg !4463
  %bf.lshr = lshr i32 %bf.load115, 16, !dbg !4463
  %bf.clear116 = and i32 %bf.lshr, 255, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %bf.clear116, metadata !4399, metadata !DIExpression()), !dbg !4406
  %call117 = tail call %struct.rtx_def* @gen_rtx_REG(i32 %bf.clear116, i32 %6) #6, !dbg !4464
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call117, metadata !4397, metadata !DIExpression()), !dbg !4406
  %call118 = tail call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %call117, %struct.rtx_def* %27) #6, !dbg !4465
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call118, metadata !4398, metadata !DIExpression()), !dbg !4406
  %call119 = tail call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call118, %struct.rtx_def* %insp.3) #6, !dbg !4466
  store %struct.rtx_def* %call119, %struct.rtx_def** %insn, align 8, !dbg !4467
  tail call void @df_set_regs_ever_live(i32 %6, i8 zeroext 1) #6, !dbg !4468
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4469
  %tobool121 = icmp eq %struct._IO_FILE* %30, null, !dbg !4469
  br i1 %tobool121, label %if.end132, label %if.then122, !dbg !4471

if.then122:                                       ; preds = %cond.end105
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4472
  %arrayidx126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4472
  %rt_int = bitcast %union.rtunion_def* %arrayidx126 to i32*, !dbg !4472
  %32 = load i32, i32* %rt_int, align 8, !dbg !4472
  %arrayidx129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insp.3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4473
  %rt_int130 = bitcast %union.rtunion_def* %arrayidx129 to i32*, !dbg !4473
  %33 = load i32, i32* %rt_int130, align 8, !dbg !4473
  %call131 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i32 %32, i32 %33) #6, !dbg !4474
  br label %if.end132, !dbg !4474

if.end132:                                        ; preds = %cond.end105, %if.then122
  %call133 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %2) #6, !dbg !4475
  %uses = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 8, !dbg !4476
  %34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call117, i64 0, i32 0, !dbg !4477
  br label %for.cond134, !dbg !4479

for.cond134:                                      ; preds = %if.end159, %if.end132
  %user.0.in = phi %struct.btr_user_s** [ %uses, %if.end132 ], [ %next, %if.end159 ]
  %user.0 = load %struct.btr_user_s*, %struct.btr_user_s** %user.0.in, align 8, !dbg !4480
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %user.0, metadata !4400, metadata !DIExpression()), !dbg !4406
  %cmp135 = icmp eq %struct.btr_user_s* %user.0, null, !dbg !4481
  br i1 %cmp135, label %for.end165, label %for.body137, !dbg !4482

for.body137:                                      ; preds = %for.cond134
  %use = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 4, !dbg !4483
  %35 = bitcast %struct.rtx_def** %use to i32**, !dbg !4483
  %36 = load i32*, i32** %35, align 8, !dbg !4483
  %bf.load138 = load i32, i32* %36, align 8, !dbg !4483
  %bf.load141 = load i32, i32* %34, align 8, !dbg !4484
  %bf.lshr1391 = xor i32 %bf.load138, %bf.load141, !dbg !4485
  %37 = and i32 %bf.lshr1391, 16711680, !dbg !4485
  %cmp144 = icmp eq i32 %37, 0, !dbg !4485
  %38 = bitcast i32* %36 to %struct.rtx_def*, !dbg !4486
  br i1 %cmp144, label %if.end159, label %lor.lhs.false146, !dbg !4486

lor.lhs.false146:                                 ; preds = %for.body137
  %bf.clear150 = and i32 %bf.load138, 16711680, !dbg !4487
  %cmp151 = icmp eq i32 %bf.clear150, 0, !dbg !4488
  br i1 %cmp151, label %if.end159, label %if.else, !dbg !4489

if.else:                                          ; preds = %lor.lhs.false146
  %bf.lshr156 = lshr i32 %bf.load138, 16, !dbg !4490
  %bf.clear157 = and i32 %bf.lshr156, 255, !dbg !4490
  %call158 = tail call %struct.rtx_def* @gen_rtx_REG(i32 %bf.clear157, i32 %6) #6, !dbg !4491
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call158, metadata !4402, metadata !DIExpression()), !dbg !4492
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %use, align 8, !dbg !4493
  br label %if.end159

if.end159:                                        ; preds = %for.body137, %lor.lhs.false146, %if.else
  %39 = phi %struct.rtx_def* [ %.pre, %if.else ], [ %38, %lor.lhs.false146 ], [ %38, %for.body137 ], !dbg !4493
  %replacement_rtx.0 = phi %struct.rtx_def* [ %call158, %if.else ], [ %call117, %lor.lhs.false146 ], [ %call117, %for.body137 ], !dbg !4477
  call void @llvm.dbg.value(metadata %struct.rtx_def* %replacement_rtx.0, metadata !4402, metadata !DIExpression()), !dbg !4492
  %insn161 = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 3, !dbg !4494
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn161, align 8, !dbg !4494
  %call162 = tail call i32 @validate_replace_rtx(%struct.rtx_def* %39, %struct.rtx_def* %replacement_rtx.0, %struct.rtx_def* %40) #6, !dbg !4495
  store %struct.rtx_def* %replacement_rtx.0, %struct.rtx_def** %use, align 8, !dbg !4496
  %next = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 0, !dbg !4497
  br label %for.cond134, !dbg !4498, !llvm.loop !4499

for.end165:                                       ; preds = %for.cond134
  ret void, !dbg !4501
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !4502 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4510, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !4511, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32 0, metadata !4512, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4513, metadata !DIExpression()), !dbg !4514
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !4515
  %1 = load i64, i64* %0, align 8, !dbg !4515
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4516
  store i64 %1, i64* %2, align 8, !dbg !4516
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4517
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !4518
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4519
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !4522
  br label %while.body, !dbg !4522

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !4523
  br i1 %tobool, label %if.then, label %if.end, !dbg !4524

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !4525
  br label %while.end, !dbg !4527

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !4528

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !4522, !llvm.loop !4529

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !4531

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !4531
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !4533
  %7 = load i32, i32* %indx9, align 8, !dbg !4533
  %cmp11 = icmp eq i32 %7, 0, !dbg !4534
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !4535

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !4536
  %8 = load i32, i32* %indx14, align 8, !dbg !4536
  %mul = shl i32 %8, 7, !dbg !4537
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4512, metadata !DIExpression()), !dbg !4514
  br label %if.end15, !dbg !4538

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !4512, metadata !DIExpression()), !dbg !4514
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4539
  store i32 0, i32* %word_no, align 8, !dbg !4540
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !4541
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4541
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4542
  store i64 %9, i64* %bits21, align 8, !dbg !4543
  %tobool23 = icmp eq i64 %9, 0, !dbg !4544
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !4544
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !4545
  call void @llvm.dbg.value(metadata i32 %add, metadata !4512, metadata !DIExpression()), !dbg !4514
  store i32 %add, i32* %bit_no, align 4, !dbg !4546
  ret void, !dbg !4547
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4548 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4552, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4553, metadata !DIExpression()), !dbg !4557
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4558
  %0 = load i64, i64* %bits, align 8, !dbg !4558
  %tobool = icmp eq i64 %0, 0, !dbg !4559
  br i1 %tobool, label %if.end, label %next_bit, !dbg !4560

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !4561
  br label %next_bit, !dbg !4564

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !4554), !dbg !4565
  br label %while.cond, !dbg !4564

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !4566
  %and = and i64 %2, 1, !dbg !4567
  %tobool2 = icmp eq i64 %and, 0, !dbg !4568
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !4564

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4569
  store i64 %shr, i64* %bits, align 8, !dbg !4569
  %3 = load i32, i32* %bit_no, align 4, !dbg !4571
  %add = add i32 %3, 1, !dbg !4571
  store i32 %add, i32* %bit_no, align 4, !dbg !4571
  %.pre = load i64, i64* %bits, align 8, !dbg !4566
  br label %while.cond, !dbg !4564, !llvm.loop !4572

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4574
  %sub = add i32 %4, 63, !dbg !4575
  %div = and i32 %sub, -64, !dbg !4576
  store i32 %div, i32* %bit_no, align 4, !dbg !4577
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4578
  %5 = load i32, i32* %word_no, align 8, !dbg !4579
  %inc = add i32 %5, 1, !dbg !4579
  store i32 %inc, i32* %word_no, align 8, !dbg !4579
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4580
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4580
  br label %while.body6, !dbg !4581

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !4582

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !4583
  %cmp = icmp eq i32 %8, 2, !dbg !4584
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4580
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !4582

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !4561
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !4561
  %10 = load i64, i64* %arrayidx, align 8, !dbg !4561
  store i64 %10, i64* %bits, align 8, !dbg !4585
  %tobool14 = icmp eq i64 %10, 0, !dbg !4586
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !4588

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !4589
  %add17 = add i32 %11, 64, !dbg !4589
  store i32 %add17, i32* %bit_no, align 4, !dbg !4589
  %12 = load i32, i32* %word_no, align 8, !dbg !4590
  %inc19 = add i32 %12, 1, !dbg !4590
  store i32 %inc19, i32* %word_no, align 8, !dbg !4590
  br label %while.cond7, !dbg !4582, !llvm.loop !4591

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !4580
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4593
  %14 = load i64, i64* %13, align 8, !dbg !4593
  store i64 %14, i64* %6, align 8, !dbg !4594
  %tobool24 = icmp eq i64 %14, 0, !dbg !4595
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !4597

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !4597
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !4598
  %16 = load i32, i32* %indx, align 8, !dbg !4598
  %mul28 = shl i32 %16, 7, !dbg !4599
  store i32 %mul28, i32* %bit_no, align 4, !dbg !4600
  store i32 0, i32* %word_no, align 8, !dbg !4601
  br label %while.body6, !dbg !4581, !llvm.loop !4602

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4604

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !4604

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !4557
  ret i8 %retval.0, !dbg !4604
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4605 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4609, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4610, metadata !DIExpression()), !dbg !4611
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4612
  %0 = load i64, i64* %bits, align 8, !dbg !4613
  %shr = lshr i64 %0, 1, !dbg !4613
  store i64 %shr, i64* %bits, align 8, !dbg !4613
  %1 = load i32, i32* %bit_no, align 4, !dbg !4614
  %add = add i32 %1, 1, !dbg !4614
  store i32 %add, i32* %bit_no, align 4, !dbg !4614
  ret void, !dbg !4615
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4616 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4621
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4621
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4621

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4621
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4621
  br label %cond.end, !dbg !4621

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4621
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4621
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4622
  %conv3 = zext i1 %cmp to i8, !dbg !4623
  ret i8 %conv3, !dbg !4624
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4625 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4630
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4630
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4630

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4630
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4630
  br label %cond.end, !dbg !4630

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4630
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !4630
  ret %struct.edge_def* %call2, !dbg !4631
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4632 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4638, metadata !DIExpression()), !dbg !4639
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4640
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4640

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4640
  %0 = load i32, i32* %num, align 8, !dbg !4640
  br label %cond.end, !dbg !4640

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4640
  ret i32 %cond, !dbg !4640
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4641 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4646
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4646

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4646
  br label %cond.end, !dbg !4646

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4647
  ret %struct.VEC_edge_gc* %0, !dbg !4648
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4649 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4653, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4654, metadata !DIExpression()), !dbg !4655
  br label %land.end, !dbg !4656

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4656
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4656
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4656
  ret %struct.edge_def* %0, !dbg !4656
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @hard_reg_set_subset_p(i64 %x, i64 %y) unnamed_addr #0 !dbg !4657 {
entry:
  call void @llvm.dbg.value(metadata i64 %x, metadata !4661, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i64 %y, metadata !4662, metadata !DIExpression()), !dbg !4663
  %neg = xor i64 %y, -1, !dbg !4664
  %and = and i64 %neg, %x, !dbg !4665
  %cmp = icmp eq i64 %and, 0, !dbg !4666
  %conv1 = zext i1 %cmp to i8, !dbg !4667
  ret i8 %conv1, !dbg !4668
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clear_btr_from_live_range(%struct.btr_def_s* %def) unnamed_addr #4 !dbg !4669 {
entry:
  %bb = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %def, metadata !4673, metadata !DIExpression()), !dbg !4676
  %0 = bitcast i32* %bb to i8*, !dbg !4677
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4677
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4678
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4678
  %live_range = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 13, !dbg !4679
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range, align 8, !dbg !4679
  call void @llvm.dbg.value(metadata i32* %bb, metadata !4674, metadata !DIExpression(DW_OP_deref)), !dbg !4676
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4675, metadata !DIExpression(DW_OP_deref)), !dbg !4676
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %2, i32 0, i32* nonnull %bb) #7, !dbg !4679
  %other_btr_uses_before_def = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 10, !dbg !4681
  %other_btr_uses_after_use = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 11, !dbg !4681
  %btr = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 5, !dbg !4685
  br label %for.cond, !dbg !4679

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata i32* %bb, metadata !4674, metadata !DIExpression(DW_OP_deref)), !dbg !4676
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4675, metadata !DIExpression(DW_OP_deref)), !dbg !4676
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb) #7, !dbg !4687
  %tobool = icmp eq i8 %call, 0, !dbg !4679
  br i1 %tobool, label %for.end, label %for.body, !dbg !4679

for.body:                                         ; preds = %for.cond
  %3 = load i8, i8* %other_btr_uses_before_def, align 1, !dbg !4688
  %tobool1 = icmp eq i8 %3, 0, !dbg !4689
  br i1 %tobool1, label %land.lhs.true, label %lor.lhs.false, !dbg !4690

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8, i8* %other_btr_uses_after_use, align 2, !dbg !4691
  %tobool2 = icmp eq i8 %4, 0, !dbg !4692
  br i1 %tobool2, label %if.then, label %lor.lhs.false, !dbg !4693

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %5 = load i32, i32* %bb, align 4, !dbg !4694
  call void @llvm.dbg.value(metadata i32 %5, metadata !4674, metadata !DIExpression()), !dbg !4676
  %call3 = call fastcc i32 @block_at_edge_of_live_range_p(i32 %5, %struct.btr_def_s* %def) #7, !dbg !4695
  %tobool4 = icmp eq i32 %call3, 0, !dbg !4695
  br i1 %tobool4, label %if.then, label %for.inc, !dbg !4696

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i32, i32* %btr, align 8, !dbg !4697
  %sh_prom = zext i32 %6 to i64, !dbg !4697
  %shl = shl i64 1, %sh_prom, !dbg !4697
  %neg = xor i64 %shl, -1, !dbg !4697
  %7 = load i64*, i64** @btrs_live, align 8, !dbg !4697
  %8 = load i32, i32* %bb, align 4, !dbg !4697
  call void @llvm.dbg.value(metadata i32 %8, metadata !4674, metadata !DIExpression()), !dbg !4676
  %idxprom = zext i32 %8 to i64, !dbg !4697
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %idxprom, !dbg !4697
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4697
  %and = and i64 %9, %neg, !dbg !4697
  store i64 %and, i64* %arrayidx, align 8, !dbg !4697
  %10 = load i32, i32* %btr, align 8, !dbg !4698
  %sh_prom6 = zext i32 %10 to i64, !dbg !4698
  %shl7 = shl i64 1, %sh_prom6, !dbg !4698
  %neg8 = xor i64 %shl7, -1, !dbg !4698
  %11 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !4698
  call void @llvm.dbg.value(metadata i32 %8, metadata !4674, metadata !DIExpression()), !dbg !4676
  %arrayidx10 = getelementptr inbounds i64, i64* %11, i64 %idxprom, !dbg !4698
  %12 = load i64, i64* %arrayidx10, align 8, !dbg !4698
  %and11 = and i64 %12, %neg8, !dbg !4698
  store i64 %and11, i64* %arrayidx10, align 8, !dbg !4698
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4699
  %tobool12 = icmp eq %struct._IO_FILE* %13, null, !dbg !4699
  br i1 %tobool12, label %for.inc, label %if.then13, !dbg !4701

if.then13:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 %8, metadata !4674, metadata !DIExpression()), !dbg !4676
  call fastcc void @dump_btrs_live(i32 %8) #7, !dbg !4702
  br label %for.inc, !dbg !4702

for.inc:                                          ; preds = %lor.lhs.false, %if.then, %if.then13
  call void @llvm.dbg.value(metadata i32* %bb, metadata !4674, metadata !DIExpression(DW_OP_deref)), !dbg !4676
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4675, metadata !DIExpression(DW_OP_deref)), !dbg !4676
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb) #7, !dbg !4687
  br label %for.cond, !dbg !4687, !llvm.loop !4703

for.end:                                          ; preds = %for.cond
  %own_end = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 12, !dbg !4705
  %14 = load i8, i8* %own_end, align 1, !dbg !4705
  %tobool15 = icmp eq i8 %14, 0, !dbg !4707
  br i1 %tobool15, label %if.end25, label %if.then16, !dbg !4708

if.then16:                                        ; preds = %for.end
  %15 = load i32, i32* %btr, align 8, !dbg !4709
  %sh_prom18 = zext i32 %15 to i64, !dbg !4709
  %shl19 = shl i64 1, %sh_prom18, !dbg !4709
  %neg20 = xor i64 %shl19, -1, !dbg !4709
  %16 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !4709
  %bb21 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 2, !dbg !4709
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb21, align 8, !dbg !4709
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 9, !dbg !4709
  %18 = load i32, i32* %index, align 8, !dbg !4709
  %idxprom22 = sext i32 %18 to i64, !dbg !4709
  %arrayidx23 = getelementptr inbounds i64, i64* %16, i64 %idxprom22, !dbg !4709
  %19 = load i64, i64* %arrayidx23, align 8, !dbg !4709
  %and24 = and i64 %19, %neg20, !dbg !4709
  store i64 %and24, i64* %arrayidx23, align 8, !dbg !4709
  br label %if.end25, !dbg !4709

if.end25:                                         ; preds = %for.end, %if.then16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4710
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4710
  ret void, !dbg !4710
}

; Function Attrs: nounwind uwtable
define internal fastcc void @combine_btr_defs(%struct.btr_def_s* %def, i64* %btrs_live_in_range) unnamed_addr #4 !dbg !4711 {
entry:
  %combined_btrs_live = alloca i64, align 8
  %dummy_btrs_live_in_range = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %def, metadata !4713, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i64* %btrs_live_in_range, metadata !4714, metadata !DIExpression()), !dbg !4732
  %group = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 7, !dbg !4733
  %0 = load %struct.btr_def_group_s*, %struct.btr_def_group_s** %group, align 8, !dbg !4733
  %members = getelementptr inbounds %struct.btr_def_group_s, %struct.btr_def_group_s* %0, i64 0, i32 2, !dbg !4734
  %bb5 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 2, !dbg !4735
  %1 = bitcast i64* %combined_btrs_live to i8*, !dbg !4736
  %2 = bitcast i64* %dummy_btrs_live_in_range to i8*, !dbg !4737
  %live_range11 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 13, !dbg !4736
  %insn33 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 4, !dbg !4738
  %btr40 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 5, !dbg !4740
  %uses46 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 8, !dbg !4741
  %3 = bitcast %struct.btr_user_s** %uses46 to i64*, !dbg !4741
  %other_btr_uses_after_use70 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 11, !dbg !4742
  br label %for.cond, !dbg !4744

for.cond:                                         ; preds = %for.inc76, %entry
  %other_def.0.in = phi %struct.btr_def_s** [ %members, %entry ], [ %next_this_group, %for.inc76 ]
  %other_def.0 = load %struct.btr_def_s*, %struct.btr_def_s** %other_def.0.in, align 8, !dbg !4745
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %other_def.0, metadata !4715, metadata !DIExpression()), !dbg !4732
  %cmp = icmp eq %struct.btr_def_s* %other_def.0, null, !dbg !4746
  br i1 %cmp, label %for.end77, label %for.body, !dbg !4747

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp eq %struct.btr_def_s* %other_def.0, %def, !dbg !4748
  br i1 %cmp1, label %for.inc76, label %land.lhs.true, !dbg !4749

land.lhs.true:                                    ; preds = %for.body
  %uses = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %other_def.0, i64 0, i32 8, !dbg !4750
  %4 = load %struct.btr_user_s*, %struct.btr_user_s** %uses, align 8, !dbg !4750
  %cmp2 = icmp eq %struct.btr_user_s* %4, null, !dbg !4751
  br i1 %cmp2, label %for.inc76, label %land.lhs.true3, !dbg !4752

land.lhs.true3:                                   ; preds = %land.lhs.true
  %has_ambiguous_use = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %other_def.0, i64 0, i32 9, !dbg !4753
  %5 = load i8, i8* %has_ambiguous_use, align 8, !dbg !4753
  %tobool = icmp eq i8 %5, 0, !dbg !4754
  br i1 %tobool, label %land.lhs.true4, label %for.inc76, !dbg !4755

land.lhs.true4:                                   ; preds = %land.lhs.true3
  %bb = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %other_def.0, i64 0, i32 2, !dbg !4756
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4756
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb5, align 8, !dbg !4757
  %call = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %6, %struct.basic_block_def* %7) #6, !dbg !4758
  %tobool6 = icmp eq i8 %call, 0, !dbg !4758
  br i1 %tobool6, label %for.inc76, label %if.then, !dbg !4759

if.then:                                          ; preds = %land.lhs.true4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4760
  %call7 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !4761
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call7, metadata !4723, metadata !DIExpression()), !dbg !4736
  %live_range = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %other_def.0, i64 0, i32 13, !dbg !4762
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range, align 8, !dbg !4762
  %cmp8 = icmp eq %struct.bitmap_head_def* %8, null, !dbg !4763
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !4764

if.then10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !4765
  call void @llvm.dbg.value(metadata i64* %dummy_btrs_live_in_range, metadata !4725, metadata !DIExpression(DW_OP_deref)), !dbg !4737
  call fastcc void @btr_def_live_range(%struct.btr_def_s* nonnull %other_def.0, i64* nonnull %dummy_btrs_live_in_range) #7, !dbg !4766
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !4767
  br label %if.end, !dbg !4768

if.end:                                           ; preds = %if.then10, %if.then
  %9 = load i64, i64* %btrs_live_in_range, align 8, !dbg !4769
  call void @llvm.dbg.value(metadata i64 %9, metadata !4722, metadata !DIExpression()), !dbg !4736
  store i64 %9, i64* %combined_btrs_live, align 8, !dbg !4769
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range11, align 8, !dbg !4770
  call void @bitmap_copy(%struct.bitmap_head_def* %call7, %struct.bitmap_head_def* %10) #6, !dbg !4771
  br label %for.cond13, !dbg !4772

for.cond13:                                       ; preds = %lor.end, %if.end
  %user.0.in = phi %struct.btr_user_s** [ %uses, %if.end ], [ %next, %lor.end ]
  %user.0 = load %struct.btr_user_s*, %struct.btr_user_s** %user.0.in, align 8, !dbg !4774
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %user.0, metadata !4724, metadata !DIExpression()), !dbg !4736
  %cmp14 = icmp eq %struct.btr_user_s* %user.0, null, !dbg !4775
  br i1 %cmp14, label %for.end, label %for.body16, !dbg !4777

for.body16:                                       ; preds = %for.cond13
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb5, align 8, !dbg !4778
  %bb18 = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 1, !dbg !4779
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb18, align 8, !dbg !4779
  %13 = load i32, i32* @flag_btr_bb_exclusive, align 4, !dbg !4780
  %tobool19 = icmp eq i32 %13, 0, !dbg !4780
  br i1 %tobool19, label %lor.lhs.false, label %lor.end, !dbg !4781

lor.lhs.false:                                    ; preds = %for.body16
  %insn = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 3, !dbg !4782
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4782
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i64 0, i32 7, !dbg !4783
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4783
  %15 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4783
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %15, i64 0, i32 1, !dbg !4783
  %16 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4783
  %cmp21 = icmp eq %struct.rtx_def* %14, %16, !dbg !4784
  br i1 %cmp21, label %lor.rhs, label %lor.end, !dbg !4785

lor.rhs:                                          ; preds = %lor.lhs.false
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 0, !dbg !4785
  %bf.load = load i32, i32* %17, align 8, !dbg !4786
  %bf.clear = and i32 %bf.load, 65535, !dbg !4786
  %cmp24 = icmp ne i32 %bf.clear, 9, !dbg !4786
  br label %lor.end, !dbg !4785

lor.end:                                          ; preds = %lor.lhs.false, %for.body16, %lor.rhs
  %18 = phi i1 [ true, %lor.lhs.false ], [ true, %for.body16 ], [ %cmp24, %lor.rhs ]
  %lor.ext = zext i1 %18 to i32, !dbg !4785
  call void @llvm.dbg.value(metadata i64* %combined_btrs_live, metadata !4722, metadata !DIExpression(DW_OP_deref)), !dbg !4736
  call fastcc void @augment_live_range(%struct.bitmap_head_def* %call7, i64* nonnull %combined_btrs_live, %struct.basic_block_def* %11, %struct.basic_block_def* %12, i32 %lor.ext) #7, !dbg !4787
  %next = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 0, !dbg !4788
  br label %for.cond13, !dbg !4789, !llvm.loop !4790

for.end:                                          ; preds = %for.cond13
  %19 = load i64, i64* %combined_btrs_live, align 8, !dbg !4792
  call void @llvm.dbg.value(metadata i64 %19, metadata !4722, metadata !DIExpression()), !dbg !4736
  %call26 = call fastcc i32 @choose_btr(i64 %19) #7, !dbg !4793
  call void @llvm.dbg.value(metadata i32 %call26, metadata !4716, metadata !DIExpression()), !dbg !4736
  %cmp27 = icmp eq i32 %call26, -1, !dbg !4794
  br i1 %cmp27, label %if.end74, label %if.then29, !dbg !4795

if.then29:                                        ; preds = %for.end
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4796
  %tobool30 = icmp eq %struct._IO_FILE* %20, null, !dbg !4796
  br i1 %tobool30, label %if.end39, label %if.then31, !dbg !4797

if.then31:                                        ; preds = %if.then29
  %insn32 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %other_def.0, i64 0, i32 4, !dbg !4798
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn32, align 8, !dbg !4798
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4798
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !4798
  %22 = load i32, i32* %rt_int, align 8, !dbg !4798
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn33, align 8, !dbg !4799
  %arrayidx36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4799
  %rt_int37 = bitcast %union.rtunion_def* %arrayidx36 to i32*, !dbg !4799
  %24 = load i32, i32* %rt_int37, align 8, !dbg !4799
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0), i32 %22, i32 %24) #6, !dbg !4800
  br label %if.end39, !dbg !4800

if.end39:                                         ; preds = %if.then29, %if.then31
  store i32 %call26, i32* %btr40, align 8, !dbg !4801
  %25 = load %struct.btr_user_s*, %struct.btr_user_s** %uses, align 8, !dbg !4802
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %25, metadata !4724, metadata !DIExpression()), !dbg !4736
  br label %while.cond, !dbg !4803

while.cond:                                       ; preds = %while.body, %if.end39
  %user.1 = phi %struct.btr_user_s* [ %25, %if.end39 ], [ %26, %while.body ], !dbg !4740
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %user.1, metadata !4724, metadata !DIExpression()), !dbg !4736
  %cmp42 = icmp eq %struct.btr_user_s* %user.1, null, !dbg !4804
  br i1 %cmp42, label %while.end, label %while.body, !dbg !4803

while.body:                                       ; preds = %while.cond
  %next45 = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.1, i64 0, i32 0, !dbg !4805
  %26 = load %struct.btr_user_s*, %struct.btr_user_s** %next45, align 8, !dbg !4805
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %26, metadata !4728, metadata !DIExpression()), !dbg !4741
  %27 = load i64, i64* %3, align 8, !dbg !4806
  %28 = bitcast %struct.btr_user_s* %user.1 to i64*, !dbg !4807
  store i64 %27, i64* %28, align 8, !dbg !4807
  store %struct.btr_user_s* %user.1, %struct.btr_user_s** %uses46, align 8, !dbg !4808
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %26, metadata !4724, metadata !DIExpression()), !dbg !4736
  br label %while.cond, !dbg !4803, !llvm.loop !4809

while.end:                                        ; preds = %while.cond
  br label %for.cond50, !dbg !4811

for.cond50:                                       ; preds = %for.body53, %while.end
  %user.2.in = phi %struct.btr_user_s** [ %uses46, %while.end ], [ %next59, %for.body53 ]
  %user.2 = load %struct.btr_user_s*, %struct.btr_user_s** %user.2.in, align 8, !dbg !4813
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %user.2, metadata !4724, metadata !DIExpression()), !dbg !4736
  %cmp51 = icmp eq %struct.btr_user_s* %user.2, null, !dbg !4814
  br i1 %cmp51, label %for.end60, label %for.body53, !dbg !4816

for.body53:                                       ; preds = %for.cond50
  %insn54 = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.2, i64 0, i32 3, !dbg !4817
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn54, align 8, !dbg !4817
  %use = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.2, i64 0, i32 4, !dbg !4818
  %30 = load %struct.rtx_def*, %struct.rtx_def** %use, align 8, !dbg !4818
  %call56 = call fastcc i32 @rhs_regno(%struct.rtx_def* %30) #7, !dbg !4818
  %call57 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %29, i32 1, i32 %call56) #6, !dbg !4819
  call void @remove_note(%struct.rtx_def* %29, %struct.rtx_def* %call57) #6, !dbg !4820
  %next59 = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.2, i64 0, i32 0, !dbg !4821
  br label %for.cond50, !dbg !4822, !llvm.loop !4823

for.end60:                                        ; preds = %for.cond50
  call fastcc void @clear_btr_from_live_range(%struct.btr_def_s* nonnull %other_def.0) #7, !dbg !4825
  store %struct.btr_user_s* null, %struct.btr_user_s** %uses, align 8, !dbg !4826
  %31 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range11, align 8, !dbg !4827
  call void @bitmap_copy(%struct.bitmap_head_def* %31, %struct.bitmap_head_def* %call7) #6, !dbg !4828
  %btr63 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %other_def.0, i64 0, i32 5, !dbg !4829
  %32 = load i32, i32* %btr63, align 8, !dbg !4829
  %cmp64 = icmp eq i32 %32, %call26, !dbg !4830
  br i1 %cmp64, label %land.lhs.true66, label %if.end71, !dbg !4831

land.lhs.true66:                                  ; preds = %for.end60
  %other_btr_uses_after_use = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %other_def.0, i64 0, i32 11, !dbg !4832
  %33 = load i8, i8* %other_btr_uses_after_use, align 2, !dbg !4832
  %tobool68 = icmp eq i8 %33, 0, !dbg !4833
  br i1 %tobool68, label %if.end71, label %if.then69, !dbg !4834

if.then69:                                        ; preds = %land.lhs.true66
  store i8 1, i8* %other_btr_uses_after_use70, align 2, !dbg !4835
  br label %if.end71, !dbg !4836

if.end71:                                         ; preds = %land.lhs.true66, %if.then69, %for.end60
  %34 = load i64, i64* %combined_btrs_live, align 8, !dbg !4837
  call void @llvm.dbg.value(metadata i64 %34, metadata !4722, metadata !DIExpression()), !dbg !4736
  store i64 %34, i64* %btrs_live_in_range, align 8, !dbg !4837
  %insn72 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %other_def.0, i64 0, i32 4, !dbg !4838
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn72, align 8, !dbg !4838
  %call73 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %35) #6, !dbg !4839
  br label %if.end74, !dbg !4840

if.end74:                                         ; preds = %for.end, %if.end71
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call7) #6, !dbg !4841
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !4723, metadata !DIExpression()), !dbg !4736
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4842
  br label %for.inc76, !dbg !4843

for.inc76:                                        ; preds = %land.lhs.true4, %land.lhs.true3, %land.lhs.true, %for.body, %if.end74
  %next_this_group = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %other_def.0, i64 0, i32 1, !dbg !4844
  br label %for.cond, !dbg !4845, !llvm.loop !4846

for.end77:                                        ; preds = %for.cond
  ret void, !dbg !4848
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_btr_to_live_range(%struct.btr_def_s* %def, i32 %own_end) unnamed_addr #4 !dbg !4849 {
entry:
  %bb = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %def, metadata !4853, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i32 1, metadata !4854, metadata !DIExpression()), !dbg !4857
  %0 = bitcast i32* %bb to i8*, !dbg !4858
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4858
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !4859
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4859
  %live_range = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 13, !dbg !4860
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_range, align 8, !dbg !4860
  call void @llvm.dbg.value(metadata i32* %bb, metadata !4855, metadata !DIExpression(DW_OP_deref)), !dbg !4857
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4856, metadata !DIExpression(DW_OP_deref)), !dbg !4857
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %2, i32 0, i32* nonnull %bb) #7, !dbg !4860
  %btr = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 5, !dbg !4862
  br label %for.cond, !dbg !4860

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata i32* %bb, metadata !4855, metadata !DIExpression(DW_OP_deref)), !dbg !4857
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4856, metadata !DIExpression(DW_OP_deref)), !dbg !4857
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb) #7, !dbg !4865
  %tobool = icmp eq i8 %call, 0, !dbg !4860
  br i1 %tobool, label %for.end, label %for.body, !dbg !4860

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %btr, align 8, !dbg !4866
  %sh_prom = zext i32 %3 to i64, !dbg !4866
  %shl = shl i64 1, %sh_prom, !dbg !4866
  %4 = load i64*, i64** @btrs_live, align 8, !dbg !4866
  %5 = load i32, i32* %bb, align 4, !dbg !4866
  call void @llvm.dbg.value(metadata i32 %5, metadata !4855, metadata !DIExpression()), !dbg !4857
  %idxprom = zext i32 %5 to i64, !dbg !4866
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %idxprom, !dbg !4866
  %6 = load i64, i64* %arrayidx, align 8, !dbg !4866
  %or = or i64 %6, %shl, !dbg !4866
  store i64 %or, i64* %arrayidx, align 8, !dbg !4866
  %7 = load i32, i32* %btr, align 8, !dbg !4867
  %sh_prom2 = zext i32 %7 to i64, !dbg !4867
  %shl3 = shl i64 1, %sh_prom2, !dbg !4867
  %8 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !4867
  call void @llvm.dbg.value(metadata i32 %5, metadata !4855, metadata !DIExpression()), !dbg !4857
  %arrayidx5 = getelementptr inbounds i64, i64* %8, i64 %idxprom, !dbg !4867
  %9 = load i64, i64* %arrayidx5, align 8, !dbg !4867
  %or6 = or i64 %9, %shl3, !dbg !4867
  store i64 %or6, i64* %arrayidx5, align 8, !dbg !4867
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4868
  %tobool7 = icmp eq %struct._IO_FILE* %10, null, !dbg !4868
  br i1 %tobool7, label %for.inc, label %if.then, !dbg !4870

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %5, metadata !4855, metadata !DIExpression()), !dbg !4857
  call fastcc void @dump_btrs_live(i32 %5) #7, !dbg !4871
  br label %for.inc, !dbg !4871

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata i32* %bb, metadata !4855, metadata !DIExpression(DW_OP_deref)), !dbg !4857
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4856, metadata !DIExpression(DW_OP_deref)), !dbg !4857
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %bb) #7, !dbg !4865
  br label %for.cond, !dbg !4865, !llvm.loop !4872

for.end:                                          ; preds = %for.cond
  br i1 false, label %for.end.if.end18_crit_edge, label %if.then9, !dbg !4874

for.end.if.end18_crit_edge:                       ; preds = %for.end
  br label %if.end18, !dbg !4874

if.then9:                                         ; preds = %for.end
  %11 = load i32, i32* %btr, align 8, !dbg !4875
  %sh_prom11 = zext i32 %11 to i64, !dbg !4875
  %shl12 = shl i64 1, %sh_prom11, !dbg !4875
  %12 = load i64*, i64** @btrs_live_at_end, align 8, !dbg !4875
  %bb13 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 2, !dbg !4875
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb13, align 8, !dbg !4875
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !4875
  %14 = load i32, i32* %index, align 8, !dbg !4875
  %idxprom14 = sext i32 %14 to i64, !dbg !4875
  %arrayidx15 = getelementptr inbounds i64, i64* %12, i64 %idxprom14, !dbg !4875
  %15 = load i64, i64* %arrayidx15, align 8, !dbg !4875
  %or16 = or i64 %15, %shl12, !dbg !4875
  store i64 %or16, i64* %arrayidx15, align 8, !dbg !4875
  %own_end17 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 12, !dbg !4878
  store i8 1, i8* %own_end17, align 1, !dbg !4879
  br label %if.end18, !dbg !4880

if.end18:                                         ; preds = %for.end.if.end18_crit_edge, %if.then9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !4881
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4881
  ret void, !dbg !4881
}

declare dso_local %struct.rtx_def* @gen_rtx_REG(i32, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @df_set_regs_ever_live(i32, i8 zeroext) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @delete_insn(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @validate_replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_at_edge_of_live_range_p(i32 %bb, %struct.btr_def_s* %def) unnamed_addr #4 !dbg !4882 {
entry:
  call void @llvm.dbg.value(metadata i32 %bb, metadata !4886, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata %struct.btr_def_s* %def, metadata !4887, metadata !DIExpression()), !dbg !4892
  %other_btr_uses_before_def = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 10, !dbg !4893
  %0 = load i8, i8* %other_btr_uses_before_def, align 1, !dbg !4893
  %tobool = icmp eq i8 %0, 0, !dbg !4894
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4895

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4896
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !4896
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4896
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 2, !dbg !4896
  %3 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !4896
  %tobool1 = icmp eq %struct.VEC_basic_block_gc* %3, null, !dbg !4896
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4896

cond.true:                                        ; preds = %land.lhs.true
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %3, i64 0, i32 0, !dbg !4896
  br label %cond.end, !dbg !4896

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %land.lhs.true ], !dbg !4896
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %bb) #7, !dbg !4896
  %bb5 = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 2, !dbg !4897
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb5, align 8, !dbg !4897
  %cmp = icmp eq %struct.basic_block_def* %call, %4, !dbg !4898
  br i1 %cmp, label %return, label %if.else, !dbg !4899

if.else:                                          ; preds = %entry, %cond.end
  %other_btr_uses_after_use = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 11, !dbg !4900
  %5 = load i8, i8* %other_btr_uses_after_use, align 2, !dbg !4900
  %tobool7 = icmp eq i8 %5, 0, !dbg !4901
  br i1 %tobool7, label %if.end29, label %if.then8, !dbg !4902

if.then8:                                         ; preds = %if.else
  %uses = getelementptr inbounds %struct.btr_def_s, %struct.btr_def_s* %def, i64 0, i32 8, !dbg !4903
  br label %for.cond, !dbg !4905

for.cond:                                         ; preds = %for.inc, %if.then8
  %user.0.in = phi %struct.btr_user_s** [ %uses, %if.then8 ], [ %next, %for.inc ]
  %user.0 = load %struct.btr_user_s*, %struct.btr_user_s** %user.0.in, align 8, !dbg !4906
  call void @llvm.dbg.value(metadata %struct.btr_user_s* %user.0, metadata !4888, metadata !DIExpression()), !dbg !4907
  %cmp9 = icmp eq %struct.btr_user_s* %user.0, null, !dbg !4908
  br i1 %cmp9, label %cleanup, label %for.body, !dbg !4910

for.body:                                         ; preds = %for.cond
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4911
  %cfg12 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !4911
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg12, align 8, !dbg !4911
  %x_basic_block_info13 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 2, !dbg !4911
  %8 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info13, align 8, !dbg !4911
  %tobool14 = icmp eq %struct.VEC_basic_block_gc* %8, null, !dbg !4911
  br i1 %tobool14, label %cond.end21, label %cond.true15, !dbg !4911

cond.true15:                                      ; preds = %for.body
  %base19 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %8, i64 0, i32 0, !dbg !4911
  br label %cond.end21, !dbg !4911

cond.end21:                                       ; preds = %for.body, %cond.true15
  %cond22 = phi %struct.VEC_basic_block_base* [ %base19, %cond.true15 ], [ null, %for.body ], !dbg !4911
  %call23 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond22, i32 %bb) #7, !dbg !4911
  %bb24 = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 1, !dbg !4913
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb24, align 8, !dbg !4913
  %cmp25 = icmp eq %struct.basic_block_def* %call23, %9, !dbg !4914
  br i1 %cmp25, label %cleanup, label %for.inc, !dbg !4915

for.inc:                                          ; preds = %cond.end21
  %next = getelementptr inbounds %struct.btr_user_s, %struct.btr_user_s* %user.0, i64 0, i32 0, !dbg !4916
  br label %for.cond, !dbg !4917, !llvm.loop !4918

cleanup:                                          ; preds = %for.cond, %cond.end21
  %cleanup.dest.slot.0 = phi i1 [ false, %cond.end21 ], [ true, %for.cond ]
  br i1 %cleanup.dest.slot.0, label %if.end29, label %return

if.end29:                                         ; preds = %if.else, %cleanup
  br label %return, !dbg !4920

return:                                           ; preds = %cleanup, %cond.end, %if.end29
  %retval.1 = phi i32 [ 1, %cleanup ], [ 0, %if.end29 ], [ 1, %cond.end ], !dbg !4892
  ret i32 %retval.1, !dbg !4921
}

declare dso_local void @remove_note(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #1

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
!llvm.module.flags = !{!2037, !2038, !2039}
!llvm.ident = !{!2040}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_branch_target_load_optimize1", scope: !2, file: !3, line: 1506, type: !1989, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !740, globals: !1986, nameTableKind: None)
!3 = !DIFile(filename: "bt-load.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !220, !348, !355, !361, !366, !370, !389, !396, !403, !597}
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
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !190, line: 1188, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!192 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!201 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!202 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!203 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!204 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!205 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!206 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!207 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!208 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!209 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!210 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!211 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!212 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!213 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!214 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!215 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!216 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!217 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!218 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!219 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !221, line: 7, baseType: !7, size: 32, elements: !222)
!221 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!223 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!224 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!225 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!226 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!227 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!228 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!229 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!230 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!231 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!232 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!233 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!234 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!235 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!236 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!237 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!238 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!239 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!240 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!241 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!242 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!243 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!244 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!245 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!246 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!247 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!248 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!249 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!250 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!251 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!252 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!253 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!254 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!255 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!256 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!257 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!258 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!259 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!260 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!261 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!262 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!263 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!264 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!265 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!266 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!267 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!268 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!269 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!270 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!271 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!272 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!273 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!274 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!275 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!276 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!277 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!278 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!279 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!280 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!281 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!282 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!283 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!284 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!285 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!286 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!287 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!288 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!289 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!290 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!291 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!292 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!293 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!294 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!295 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!296 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!297 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!298 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!299 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!300 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!301 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!302 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!303 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!304 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!305 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!306 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!307 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!308 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!309 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!310 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!311 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!312 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!313 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!314 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!315 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!316 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!317 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!318 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!319 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!320 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!321 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!322 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!323 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!324 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!325 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!326 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!327 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!328 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!329 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!330 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!331 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!332 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!333 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!334 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!335 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!336 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!337 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!338 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!340 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!341 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!342 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!343 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!345 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!346 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!347 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !349, line: 30, baseType: !7, size: 32, elements: !350)
!349 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!350 = !{!351, !352, !353, !354}
!351 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!352 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!353 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!354 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!355 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !356, line: 363, baseType: !7, size: 32, elements: !357)
!356 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!357 = !{!358, !359, !360}
!358 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!359 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!360 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!361 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !356, line: 355, baseType: !7, size: 32, elements: !362)
!362 = !{!363, !364, !365}
!363 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!364 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!365 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !190, line: 474, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369}
!368 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !371, line: 280, baseType: !7, size: 32, elements: !372)
!371 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!373 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!377 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!378 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!379 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!380 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!381 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!382 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!383 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!384 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!385 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!386 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!387 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!388 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!389 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !371, line: 1817, baseType: !7, size: 32, elements: !390)
!390 = !{!391, !392, !393, !394, !395}
!391 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!392 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!393 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!394 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!395 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!396 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !371, line: 1805, baseType: !7, size: 32, elements: !397)
!397 = !{!398, !399, !400, !401, !402}
!398 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!399 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!400 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!401 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!402 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!403 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !371, line: 39, baseType: !7, size: 32, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!405 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!406 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!407 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!408 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!409 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!410 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!411 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!412 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!413 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!414 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!415 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!416 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!417 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!418 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!419 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!420 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!421 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!422 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!423 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!424 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!425 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!426 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!427 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!428 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!429 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!430 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!431 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!432 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!433 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!434 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!435 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!436 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!437 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!438 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!439 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!440 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!441 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!442 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!443 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!444 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!445 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!446 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!447 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!448 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!449 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!450 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!451 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!452 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!453 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!454 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!455 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!456 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!457 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!458 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!459 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!460 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!461 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!462 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!463 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!464 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!465 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!466 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!467 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!468 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!469 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!470 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!471 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!472 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!473 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!474 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!475 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!476 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!477 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!478 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!479 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!480 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!481 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!482 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!483 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!484 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!485 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!486 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!487 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!488 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!489 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!490 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!491 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!492 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!493 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!494 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!495 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!496 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!497 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!498 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!499 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!500 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!501 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!502 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!503 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!504 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!505 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!506 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!507 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!508 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!509 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!510 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!511 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!512 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!513 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!514 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!515 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!516 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!517 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!518 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!519 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!520 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!521 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!522 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!523 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!524 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!525 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!526 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!527 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!528 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!529 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!530 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!531 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!532 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!533 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!534 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!535 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!536 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!537 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!538 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!539 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!540 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!541 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!542 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!543 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!544 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!545 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!546 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!547 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!548 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!549 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!550 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!551 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!552 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!553 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!554 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!555 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!556 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!557 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!558 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!559 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!560 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!561 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!562 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!563 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!564 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!565 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!566 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!567 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!568 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!569 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!570 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!571 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!572 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!573 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!574 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!575 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!576 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!577 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!578 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!579 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!580 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!581 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!582 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!583 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!584 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!585 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!586 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!587 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!588 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!589 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!590 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!591 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!592 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!593 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!594 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!595 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!596 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!597 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !598, line: 45, baseType: !7, size: 32, elements: !599)
!598 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739}
!600 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!601 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!602 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!603 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!604 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!605 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!606 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!607 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!608 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!609 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!610 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!611 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!612 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!613 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!614 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!615 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!616 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!617 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!618 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!619 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!620 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!621 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!622 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!623 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!624 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!625 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!626 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!627 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!628 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!629 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!630 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!631 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!632 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!633 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!634 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!635 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!636 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!637 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!638 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!639 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!640 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!641 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!642 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!643 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!644 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!645 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!646 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!647 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!648 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!649 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!650 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!651 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!652 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!653 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!654 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!655 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!656 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!657 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!658 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!659 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!660 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!661 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!662 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!663 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!664 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!665 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!666 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!667 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!668 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!669 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!670 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!671 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!672 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!673 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!674 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!675 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!676 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!677 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!678 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!679 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!680 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!681 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!682 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!683 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!684 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!685 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!686 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!687 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!688 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!689 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!690 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!691 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!692 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!693 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!694 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!695 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!696 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!697 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!698 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!699 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!700 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!701 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!702 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!703 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!704 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!705 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!706 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!707 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!708 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!709 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!710 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!711 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!712 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!713 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!714 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!715 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!716 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!717 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!718 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!719 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!720 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!721 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!722 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!723 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!724 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!725 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!726 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!727 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!728 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!729 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!730 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!731 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!732 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!733 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!734 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!735 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!736 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!737 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!738 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!739 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!740 = !{!741, !742, !743, !744, !747, !748, !750, !754, !753, !757, !760, !761, !1961, !745, !1962, !1963, !1964, !597, !800, !762, !1937, !7, !759, !220, !1945, !1965, !1985}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!743 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !746)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!747, !753}
!753 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !747}
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !758, line: 42, baseType: !759)
!758 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!759 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "btr_def", file: !3, line: 110, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btr_def_s", file: !3, line: 76, size: 640, elements: !764)
!764 = !{!765, !766, !767, !1931, !1932, !1933, !1934, !1935, !1943, !1956, !1957, !1958, !1959, !1960}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next_this_bb", scope: !763, file: !3, line: 78, baseType: !762, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_this_group", scope: !763, file: !3, line: 79, baseType: !762, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !763, file: !3, line: 80, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !769, line: 111, baseType: !770)
!769 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !356, line: 217, size: 832, elements: !772)
!772 = !{!773, !1896, !1897, !1898, !1901, !1905, !1906, !1907, !1925, !1926, !1927, !1928, !1929, !1930}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !771, file: !356, line: 219, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !356, line: 151, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !356, line: 151, size: 128, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !776, file: !356, line: 151, baseType: !779, size: 128)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !356, line: 150, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !356, line: 150, size: 128, elements: !781)
!781 = !{!782, !783, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !780, file: !356, line: 150, baseType: !7, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !780, file: !356, line: 150, baseType: !7, size: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !780, file: !356, line: 150, baseType: !785, size: 64, offset: 64)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 64, elements: !834)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !769, line: 108, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !356, line: 122, size: 512, elements: !789)
!789 = !{!790, !791, !792, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !788, file: !356, line: 124, baseType: !770, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !788, file: !356, line: 125, baseType: !770, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !788, file: !356, line: 131, baseType: !793, size: 64, offset: 128)
!793 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !356, line: 128, size: 64, elements: !794)
!794 = !{!795, !799}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !793, file: !356, line: 129, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !769, line: 66, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !769, line: 65, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !793, file: !356, line: 130, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !769, line: 50, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !598, line: 240, size: 384, elements: !803)
!803 = !{!804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !802, file: !598, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !802, file: !598, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !802, file: !598, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !802, file: !598, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !802, file: !598, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !802, file: !598, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !802, file: !598, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !802, file: !598, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !802, file: !598, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !802, file: !598, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !802, file: !598, line: 321, baseType: !815, size: 320, offset: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !598, line: 315, size: 320, elements: !816)
!816 = !{!817, !1823, !1825, !1886, !1887}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !815, file: !598, line: 316, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 64, elements: !834)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !598, line: 183, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !598, line: 166, size: 64, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !836, !837, !849, !852, !912, !1801, !1802, !1813, !1820}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !820, file: !598, line: 168, baseType: !743, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !820, file: !598, line: 169, baseType: !7, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !820, file: !598, line: 170, baseType: !748, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !820, file: !598, line: 171, baseType: !800, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !820, file: !598, line: 172, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !769, line: 53, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !598, line: 359, size: 128, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !829, file: !598, line: 360, baseType: !743, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !829, file: !598, line: 361, baseType: !833, size: 64, offset: 64)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 64, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 1)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !820, file: !598, line: 173, baseType: !220, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !820, file: !598, line: 174, baseType: !838, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !598, line: 133, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !598, line: 115, size: 32, elements: !840)
!840 = !{!841, !842, !843, !844, !845, !846, !847, !848}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !839, file: !598, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !839, file: !598, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !839, file: !598, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !839, file: !598, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !839, file: !598, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !839, file: !598, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !839, file: !598, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !839, file: !598, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !820, file: !598, line: 175, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !598, line: 175, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !820, file: !598, line: 176, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !855, line: 75, size: 256, elements: !856)
!855 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!856 = !{!857, !871, !872, !873}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !854, file: !855, line: 76, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !855, line: 68, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !855, line: 63, size: 320, elements: !861)
!861 = !{!862, !864, !865, !866}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !860, file: !855, line: 64, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !860, file: !855, line: 65, baseType: !863, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !860, file: !855, line: 66, baseType: !7, size: 32, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !860, file: !855, line: 67, baseType: !867, size: 128, offset: 192)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, size: 128, elements: !869)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !855, line: 29, baseType: !759)
!869 = !{!870}
!870 = !DISubrange(count: 2)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !854, file: !855, line: 77, baseType: !858, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !854, file: !855, line: 78, baseType: !7, size: 32, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !854, file: !855, line: 79, baseType: !874, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !855, line: 49, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !855, line: 45, size: 832, elements: !877)
!877 = !{!878, !879, !880}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !876, file: !855, line: 46, baseType: !863, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !876, file: !855, line: 47, baseType: !853, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !876, file: !855, line: 48, baseType: !881, size: 704, offset: 128)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !882, line: 164, size: 704, elements: !883)
!882 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!883 = !{!884, !885, !895, !896, !897, !898, !899, !900, !904, !908, !909, !910, !911}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !881, file: !882, line: 166, baseType: !753, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !881, file: !882, line: 167, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !882, line: 157, size: 192, elements: !888)
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !887, file: !882, line: 159, baseType: !745, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !887, file: !882, line: 160, baseType: !886, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !887, file: !882, line: 161, baseType: !892, size: 32, offset: 128)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 32, elements: !893)
!893 = !{!894}
!894 = !DISubrange(count: 4)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !881, file: !882, line: 168, baseType: !745, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !881, file: !882, line: 169, baseType: !745, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !881, file: !882, line: 170, baseType: !745, size: 64, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !881, file: !882, line: 171, baseType: !753, size: 64, offset: 320)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !881, file: !882, line: 172, baseType: !743, size: 32, offset: 384)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !881, file: !882, line: 176, baseType: !901, size: 64, offset: 448)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!886, !747, !753}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !881, file: !882, line: 177, baseType: !905, size: 64, offset: 512)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !747, !886}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !881, file: !882, line: 178, baseType: !747, size: 64, offset: 576)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !881, file: !882, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !881, file: !882, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !881, file: !882, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !820, file: !598, line: 177, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !769, line: 56, baseType: !914)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !371, line: 3371, size: 1792, elements: !916)
!916 = !{!917, !950, !956, !967, !986, !997, !1002, !1009, !1015, !1028, !1040, !1078, !1083, !1111, !1119, !1120, !1125, !1134, !1140, !1145, !1149, !1153, !1437, !1486, !1492, !1498, !1505, !1531, !1545, !1562, !1574, !1596, !1611, !1783}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !915, file: !371, line: 3372, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !371, line: 360, size: 64, elements: !919)
!919 = !{!920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !918, file: !371, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !918, file: !371, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !918, file: !371, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !918, file: !371, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !918, file: !371, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !918, file: !371, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !918, file: !371, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !918, file: !371, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !918, file: !371, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !918, file: !371, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !918, file: !371, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !918, file: !371, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !918, file: !371, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !918, file: !371, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !918, file: !371, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !918, file: !371, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !918, file: !371, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !918, file: !371, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !918, file: !371, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !918, file: !371, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !918, file: !371, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !918, file: !371, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !918, file: !371, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !918, file: !371, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !918, file: !371, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !918, file: !371, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !918, file: !371, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !918, file: !371, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !918, file: !371, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !918, file: !371, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !915, file: !371, line: 3373, baseType: !951, size: 192)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !371, line: 402, size: 192, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !951, file: !371, line: 403, baseType: !918, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !951, file: !371, line: 404, baseType: !913, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !951, file: !371, line: 405, baseType: !913, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !915, file: !371, line: 3374, baseType: !957, size: 320)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !371, line: 1384, size: 320, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !957, file: !371, line: 1385, baseType: !951, size: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !957, file: !371, line: 1386, baseType: !961, size: 128, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !962, line: 58, baseType: !963)
!962 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !962, line: 54, size: 128, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !963, file: !962, line: 56, baseType: !759, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !963, file: !962, line: 57, baseType: !753, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !915, file: !371, line: 3375, baseType: !968, size: 256)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !371, line: 1397, size: 256, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !968, file: !371, line: 1398, baseType: !951, size: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !968, file: !371, line: 1399, baseType: !972, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !974, line: 52, size: 256, elements: !975)
!974 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!975 = !{!976, !977, !978, !979, !980, !981, !982}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !973, file: !974, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !973, file: !974, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !973, file: !974, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !973, file: !974, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !973, file: !974, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !973, file: !974, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !973, file: !974, line: 62, baseType: !983, size: 192, offset: 64)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 192, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 3)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !915, file: !371, line: 3376, baseType: !987, size: 256)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !371, line: 1408, size: 256, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !987, file: !371, line: 1409, baseType: !951, size: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !987, file: !371, line: 1410, baseType: !991, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !993, line: 27, size: 192, elements: !994)
!993 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !992, file: !993, line: 29, baseType: !961, size: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !992, file: !993, line: 30, baseType: !220, size: 32, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !915, file: !371, line: 3377, baseType: !998, size: 256)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !371, line: 1437, size: 256, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !998, file: !371, line: 1438, baseType: !951, size: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !998, file: !371, line: 1439, baseType: !913, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !915, file: !371, line: 3378, baseType: !1003, size: 256)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !371, line: 1418, size: 256, elements: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1003, file: !371, line: 1419, baseType: !951, size: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1003, file: !371, line: 1420, baseType: !743, size: 32, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1003, file: !371, line: 1421, baseType: !1008, size: 8, offset: 224)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 8, elements: !834)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !915, file: !371, line: 3379, baseType: !1010, size: 320)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !371, line: 1428, size: 320, elements: !1011)
!1011 = !{!1012, !1013, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1010, file: !371, line: 1429, baseType: !951, size: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1010, file: !371, line: 1430, baseType: !913, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1010, file: !371, line: 1431, baseType: !913, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !915, file: !371, line: 3380, baseType: !1016, size: 320)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !371, line: 1460, size: 320, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1016, file: !371, line: 1461, baseType: !951, size: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1016, file: !371, line: 1462, baseType: !1020, size: 128, offset: 192)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1021, line: 31, size: 128, elements: !1022)
!1021 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1022 = !{!1023, !1026, !1027}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1020, file: !1021, line: 32, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1020, file: !1021, line: 33, baseType: !7, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1020, file: !1021, line: 34, baseType: !7, size: 32, offset: 96)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !915, file: !371, line: 3381, baseType: !1029, size: 384)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !371, line: 2507, size: 384, elements: !1030)
!1030 = !{!1031, !1032, !1037, !1038, !1039}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1029, file: !371, line: 2508, baseType: !951, size: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1029, file: !371, line: 2509, baseType: !1033, size: 32, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1034, line: 58, baseType: !1035)
!1034 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1036, line: 44, baseType: !7)
!1036 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1029, file: !371, line: 2510, baseType: !7, size: 32, offset: 224)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1029, file: !371, line: 2511, baseType: !913, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1029, file: !371, line: 2512, baseType: !913, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !915, file: !371, line: 3382, baseType: !1041, size: 896)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !371, line: 2652, size: 896, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1041, file: !371, line: 2653, baseType: !1029, size: 384)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1041, file: !371, line: 2654, baseType: !913, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1041, file: !371, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1041, file: !371, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1041, file: !371, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1041, file: !371, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1041, file: !371, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1041, file: !371, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1041, file: !371, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1041, file: !371, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1041, file: !371, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1041, file: !371, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1041, file: !371, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1041, file: !371, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1041, file: !371, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1041, file: !371, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1041, file: !371, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1041, file: !371, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1041, file: !371, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1041, file: !371, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1041, file: !371, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1041, file: !371, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1041, file: !371, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1041, file: !371, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1041, file: !371, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1041, file: !371, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1041, file: !371, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1041, file: !371, line: 2703, baseType: !7, size: 32, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1041, file: !371, line: 2705, baseType: !913, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1041, file: !371, line: 2706, baseType: !913, size: 64, offset: 640)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1041, file: !371, line: 2707, baseType: !913, size: 64, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1041, file: !371, line: 2708, baseType: !913, size: 64, offset: 768)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1041, file: !371, line: 2711, baseType: !1076, size: 64, offset: 832)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !371, line: 2711, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !915, file: !371, line: 3383, baseType: !1079, size: 960)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !371, line: 2756, size: 960, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1079, file: !371, line: 2757, baseType: !1041, size: 896)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1079, file: !371, line: 2758, baseType: !800, size: 64, offset: 896)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !915, file: !371, line: 3384, baseType: !1084, size: 1472)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !371, line: 3114, size: 1472, elements: !1085)
!1085 = !{!1086, !1107, !1108, !1109, !1110}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1084, file: !371, line: 3115, baseType: !1087, size: 1216)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !371, line: 2984, size: 1216, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1087, file: !371, line: 2985, baseType: !1079, size: 960)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1087, file: !371, line: 2986, baseType: !913, size: 64, offset: 960)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1087, file: !371, line: 2987, baseType: !913, size: 64, offset: 1024)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1087, file: !371, line: 2988, baseType: !913, size: 64, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1087, file: !371, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1087, file: !371, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1087, file: !371, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1087, file: !371, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1087, file: !371, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1087, file: !371, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1087, file: !371, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1087, file: !371, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1087, file: !371, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1087, file: !371, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1087, file: !371, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1087, file: !371, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1087, file: !371, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1087, file: !371, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1084, file: !371, line: 3117, baseType: !913, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1084, file: !371, line: 3119, baseType: !913, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1084, file: !371, line: 3121, baseType: !913, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1084, file: !371, line: 3123, baseType: !913, size: 64, offset: 1408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !915, file: !371, line: 3385, baseType: !1112, size: 1088)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !371, line: 2874, size: 1088, elements: !1113)
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1112, file: !371, line: 2875, baseType: !1079, size: 960)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1112, file: !371, line: 2876, baseType: !800, size: 64, offset: 960)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1112, file: !371, line: 2877, baseType: !1117, size: 64, offset: 1024)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !371, line: 2856, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !915, file: !371, line: 3386, baseType: !1087, size: 1216)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !915, file: !371, line: 3387, baseType: !1121, size: 1280)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !371, line: 3093, size: 1280, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1121, file: !371, line: 3094, baseType: !1087, size: 1216)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1121, file: !371, line: 3095, baseType: !1117, size: 64, offset: 1216)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !915, file: !371, line: 3388, baseType: !1126, size: 1216)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !371, line: 2824, size: 1216, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1126, file: !371, line: 2825, baseType: !1041, size: 896)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1126, file: !371, line: 2827, baseType: !913, size: 64, offset: 896)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1126, file: !371, line: 2828, baseType: !913, size: 64, offset: 960)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1126, file: !371, line: 2829, baseType: !913, size: 64, offset: 1024)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1126, file: !371, line: 2830, baseType: !913, size: 64, offset: 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1126, file: !371, line: 2831, baseType: !913, size: 64, offset: 1152)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !915, file: !371, line: 3389, baseType: !1135, size: 1024)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !371, line: 2850, size: 1024, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1135, file: !371, line: 2851, baseType: !1079, size: 960)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1135, file: !371, line: 2852, baseType: !743, size: 32, offset: 960)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1135, file: !371, line: 2853, baseType: !743, size: 32, offset: 992)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !915, file: !371, line: 3390, baseType: !1141, size: 1024)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !371, line: 2857, size: 1024, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1141, file: !371, line: 2858, baseType: !1079, size: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1141, file: !371, line: 2859, baseType: !1117, size: 64, offset: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !915, file: !371, line: 3391, baseType: !1146, size: 960)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !371, line: 2862, size: 960, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1146, file: !371, line: 2863, baseType: !1079, size: 960)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !915, file: !371, line: 3392, baseType: !1150, size: 1472)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !371, line: 3304, size: 1472, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1150, file: !371, line: 3305, baseType: !1084, size: 1472)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !915, file: !371, line: 3393, baseType: !1154, size: 1792)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !371, line: 3248, size: 1792, elements: !1155)
!1155 = !{!1156, !1157, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1154, file: !371, line: 3249, baseType: !1084, size: 1472)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1154, file: !371, line: 3251, baseType: !1158, size: 64, offset: 1472)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1160, line: 463, size: 1152, elements: !1161)
!1160 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1161 = !{!1162, !1323, !1353, !1354, !1357, !1360, !1361, !1362, !1363, !1364, !1365, !1389, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1159, file: !1160, line: 464, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !349, line: 194, size: 384, elements: !1165)
!1165 = !{!1166, !1215, !1228, !1242, !1291, !1304}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1164, file: !349, line: 197, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !349, line: 182, baseType: !1168)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !349, line: 116, size: 704, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1203, !1212, !1213, !1214}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1169, file: !349, line: 119, baseType: !1168, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1169, file: !349, line: 122, baseType: !1168, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1169, file: !349, line: 123, baseType: !1168, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1169, file: !349, line: 126, baseType: !743, size: 32, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1169, file: !349, line: 129, baseType: !348, size: 32, offset: 224)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1169, file: !349, line: 165, baseType: !1177, size: 192, offset: 256)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !349, line: 132, size: 192, elements: !1178)
!1178 = !{!1179, !1192, !1198}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1177, file: !349, line: 137, baseType: !1180, size: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !349, line: 133, size: 128, elements: !1181)
!1181 = !{!1182, !1191}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1180, file: !349, line: 135, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !349, line: 93, size: 320, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1184, file: !349, line: 96, baseType: !1183, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1184, file: !349, line: 97, baseType: !1183, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1184, file: !349, line: 101, baseType: !913, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1184, file: !349, line: 106, baseType: !913, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1184, file: !349, line: 111, baseType: !913, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1180, file: !349, line: 136, baseType: !1183, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1177, file: !349, line: 151, baseType: !1193, size: 192)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !349, line: 139, size: 192, elements: !1194)
!1194 = !{!1195, !1196, !1197}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1193, file: !349, line: 141, baseType: !913, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1193, file: !349, line: 145, baseType: !913, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1193, file: !349, line: 150, baseType: !743, size: 32, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1177, file: !349, line: 164, baseType: !1199, size: 128)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !349, line: 153, size: 128, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1199, file: !349, line: 161, baseType: !913, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1199, file: !349, line: 163, baseType: !1033, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1169, file: !349, line: 168, baseType: !1204, size: 64, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !349, line: 67, size: 320, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1205, file: !349, line: 70, baseType: !1204, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1205, file: !349, line: 73, baseType: !1168, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1205, file: !349, line: 78, baseType: !913, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1205, file: !349, line: 85, baseType: !800, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1205, file: !349, line: 88, baseType: !743, size: 32, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1169, file: !349, line: 173, baseType: !800, size: 64, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1169, file: !349, line: 173, baseType: !800, size: 64, offset: 576)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1169, file: !349, line: 177, baseType: !742, size: 8, offset: 640)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1164, file: !349, line: 200, baseType: !1216, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !349, line: 185, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !349, line: 185, size: 128, elements: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1218, file: !349, line: 185, baseType: !1221, size: 128)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !349, line: 184, baseType: !1222)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !349, line: 184, size: 128, elements: !1223)
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1222, file: !349, line: 184, baseType: !7, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1222, file: !349, line: 184, baseType: !7, size: 32, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1222, file: !349, line: 184, baseType: !1227, size: 64, offset: 64)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1167, size: 64, elements: !834)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1164, file: !349, line: 203, baseType: !1229, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !349, line: 189, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !349, line: 189, size: 128, elements: !1232)
!1232 = !{!1233}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1231, file: !349, line: 189, baseType: !1234, size: 128)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !349, line: 188, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !349, line: 188, size: 128, elements: !1236)
!1236 = !{!1237, !1238, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1235, file: !349, line: 188, baseType: !7, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1235, file: !349, line: 188, baseType: !7, size: 32, offset: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1235, file: !349, line: 188, baseType: !1240, size: 64, offset: 64)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1241, size: 64, elements: !834)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !349, line: 180, baseType: !1204)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1164, file: !349, line: 207, baseType: !1243, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1244, line: 144, baseType: !1245)
!1244 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1244, line: 100, size: 896, elements: !1247)
!1247 = !{!1248, !1256, !1261, !1263, !1265, !1268, !1269, !1270, !1271, !1272, !1277, !1279, !1280, !1285, !1290}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1246, file: !1244, line: 102, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1244, line: 52, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1244, line: 47, baseType: !7)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1246, file: !1244, line: 105, baseType: !1257, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1244, line: 59, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!743, !1254, !1254}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1246, file: !1244, line: 108, baseType: !1262, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1244, line: 63, baseType: !754)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1246, file: !1244, line: 111, baseType: !1264, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1246, file: !1244, line: 114, baseType: !1266, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1267, line: 46, baseType: !759)
!1267 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1246, file: !1244, line: 117, baseType: !1266, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1246, file: !1244, line: 120, baseType: !1266, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1246, file: !1244, line: 124, baseType: !7, size: 32, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1246, file: !1244, line: 128, baseType: !7, size: 32, offset: 480)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1246, file: !1244, line: 131, baseType: !1273, size: 64, offset: 512)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1244, line: 75, baseType: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!747, !1266, !1266}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1246, file: !1244, line: 132, baseType: !1278, size: 64, offset: 576)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1244, line: 78, baseType: !754)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1246, file: !1244, line: 135, baseType: !747, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1246, file: !1244, line: 136, baseType: !1281, size: 64, offset: 704)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1244, line: 82, baseType: !1282)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!747, !747, !1266, !1266}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1246, file: !1244, line: 137, baseType: !1286, size: 64, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1244, line: 83, baseType: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !747, !747}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1246, file: !1244, line: 141, baseType: !7, size: 32, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1164, file: !349, line: 211, baseType: !1292, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !371, line: 183, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !371, line: 183, size: 128, elements: !1295)
!1295 = !{!1296}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1294, file: !371, line: 183, baseType: !1297, size: 128)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !371, line: 182, baseType: !1298)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !371, line: 182, size: 128, elements: !1299)
!1299 = !{!1300, !1301, !1302}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1298, file: !371, line: 182, baseType: !7, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1298, file: !371, line: 182, baseType: !7, size: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1298, file: !371, line: 182, baseType: !1303, size: 64, offset: 64)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !913, size: 64, elements: !834)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1164, file: !349, line: 220, baseType: !1305, size: 64, offset: 320)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !349, line: 217, size: 64, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1305, file: !349, line: 218, baseType: !1292, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1305, file: !349, line: 219, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1311, line: 29, baseType: !1312)
!1311 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1311, line: 29, size: 96, elements: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1312, file: !1311, line: 29, baseType: !1315, size: 96)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1311, line: 27, baseType: !1316)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1311, line: 27, size: 96, elements: !1317)
!1317 = !{!1318, !1319, !1320}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1316, file: !1311, line: 27, baseType: !7, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1316, file: !1311, line: 27, baseType: !7, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1316, file: !1311, line: 27, baseType: !1321, size: 8, offset: 64)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 8, elements: !834)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1311, line: 26, baseType: !742)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1159, file: !1160, line: 467, baseType: !1324, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !356, line: 374, size: 640, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1342, !1343, !1344, !1345, !1346, !1347, !1349, !1351, !1352}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1325, file: !356, line: 377, baseType: !768, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1325, file: !356, line: 378, baseType: !768, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1325, file: !356, line: 381, baseType: !1330, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !356, line: 282, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !356, line: 282, size: 128, elements: !1333)
!1333 = !{!1334}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1332, file: !356, line: 282, baseType: !1335, size: 128)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !356, line: 281, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !356, line: 281, size: 128, elements: !1337)
!1337 = !{!1338, !1339, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1336, file: !356, line: 281, baseType: !7, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1336, file: !356, line: 281, baseType: !7, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1336, file: !356, line: 281, baseType: !1341, size: 64, offset: 64)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 64, elements: !834)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1325, file: !356, line: 384, baseType: !743, size: 32, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1325, file: !356, line: 387, baseType: !743, size: 32, offset: 224)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1325, file: !356, line: 390, baseType: !743, size: 32, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1325, file: !356, line: 394, baseType: !1330, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1325, file: !356, line: 396, baseType: !355, size: 32, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1325, file: !356, line: 399, baseType: !1348, size: 64, offset: 416)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 64, elements: !869)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1325, file: !356, line: 402, baseType: !1350, size: 64, offset: 480)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !869)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1325, file: !356, line: 406, baseType: !743, size: 32, offset: 544)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1325, file: !356, line: 409, baseType: !743, size: 32, offset: 576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1159, file: !1160, line: 470, baseType: !797, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1159, file: !1160, line: 473, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1160, line: 166, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1159, file: !1160, line: 476, baseType: !1358, size: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1160, line: 476, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1159, file: !1160, line: 479, baseType: !1243, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1159, file: !1160, line: 484, baseType: !913, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1159, file: !1160, line: 488, baseType: !913, size: 64, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1159, file: !1160, line: 493, baseType: !913, size: 64, offset: 512)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1159, file: !1160, line: 496, baseType: !913, size: 64, offset: 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1159, file: !1160, line: 501, baseType: !1366, size: 64, offset: 640)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !190, line: 2355, size: 576, elements: !1368)
!1368 = !{!1369, !1372, !1373, !1374, !1375, !1377, !1378, !1383, !1384, !1385, !1386, !1387, !1388}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1367, file: !190, line: 2356, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !190, line: 2356, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1367, file: !190, line: 2357, baseType: !748, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1367, file: !190, line: 2358, baseType: !743, size: 32, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1367, file: !190, line: 2359, baseType: !743, size: 32, offset: 160)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1367, file: !190, line: 2360, baseType: !1376, size: 128, offset: 192)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 128, elements: !893)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1367, file: !190, line: 2364, baseType: !743, size: 32, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1367, file: !190, line: 2367, baseType: !1379, size: 128, offset: 384)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !190, line: 2349, size: 128, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1379, file: !190, line: 2351, baseType: !800, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1379, file: !190, line: 2352, baseType: !753, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1367, file: !190, line: 2371, baseType: !366, size: 32, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1367, file: !190, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1367, file: !190, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1367, file: !190, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1367, file: !190, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1367, file: !190, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1159, file: !1160, line: 504, baseType: !1390, size: 64, offset: 704)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1160, line: 504, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1159, file: !1160, line: 507, baseType: !1243, size: 64, offset: 768)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1159, file: !1160, line: 510, baseType: !743, size: 32, offset: 832)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1159, file: !1160, line: 513, baseType: !743, size: 32, offset: 864)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1159, file: !1160, line: 516, baseType: !1033, size: 32, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1159, file: !1160, line: 519, baseType: !1033, size: 32, offset: 928)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1159, file: !1160, line: 522, baseType: !7, size: 32, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1159, file: !1160, line: 523, baseType: !7, size: 32, offset: 992)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1159, file: !1160, line: 528, baseType: !748, size: 64, offset: 1024)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1159, file: !1160, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1159, file: !1160, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1159, file: !1160, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1159, file: !1160, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1159, file: !1160, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1159, file: !1160, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1159, file: !1160, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1159, file: !1160, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1159, file: !1160, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1159, file: !1160, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1159, file: !1160, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1159, file: !1160, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1159, file: !1160, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1159, file: !1160, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1159, file: !1160, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1159, file: !1160, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1154, file: !371, line: 3254, baseType: !913, size: 64, offset: 1536)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1154, file: !371, line: 3257, baseType: !913, size: 64, offset: 1600)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1154, file: !371, line: 3258, baseType: !913, size: 64, offset: 1664)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1154, file: !371, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1154, file: !371, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1154, file: !371, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1154, file: !371, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1154, file: !371, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1154, file: !371, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1154, file: !371, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1154, file: !371, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1154, file: !371, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1154, file: !371, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1154, file: !371, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1154, file: !371, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1154, file: !371, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1154, file: !371, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1154, file: !371, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1154, file: !371, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1154, file: !371, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1154, file: !371, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !915, file: !371, line: 3394, baseType: !1438, size: 1344)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !371, line: 2279, size: 1344, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1465, !1466, !1467, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1438, file: !371, line: 2280, baseType: !951, size: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1438, file: !371, line: 2281, baseType: !913, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1438, file: !371, line: 2282, baseType: !913, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1438, file: !371, line: 2283, baseType: !913, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1438, file: !371, line: 2284, baseType: !913, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1438, file: !371, line: 2285, baseType: !7, size: 32, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1438, file: !371, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1438, file: !371, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1438, file: !371, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1438, file: !371, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1438, file: !371, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1438, file: !371, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1438, file: !371, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1438, file: !371, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1438, file: !371, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1438, file: !371, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1438, file: !371, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1438, file: !371, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1438, file: !371, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1438, file: !371, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1438, file: !371, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1438, file: !371, line: 2305, baseType: !7, size: 32, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1438, file: !371, line: 2306, baseType: !1463, size: 32, offset: 544)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1464, line: 31, baseType: !743)
!1464 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1438, file: !371, line: 2307, baseType: !913, size: 64, offset: 576)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1438, file: !371, line: 2308, baseType: !913, size: 64, offset: 640)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1438, file: !371, line: 2314, baseType: !1468, size: 64, offset: 704)
!1468 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !371, line: 2309, size: 64, elements: !1469)
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1468, file: !371, line: 2310, baseType: !743, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1468, file: !371, line: 2311, baseType: !748, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1468, file: !371, line: 2312, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !371, line: 2277, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1438, file: !371, line: 2315, baseType: !913, size: 64, offset: 768)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1438, file: !371, line: 2316, baseType: !913, size: 64, offset: 832)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1438, file: !371, line: 2317, baseType: !913, size: 64, offset: 896)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1438, file: !371, line: 2318, baseType: !913, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1438, file: !371, line: 2319, baseType: !913, size: 64, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1438, file: !371, line: 2320, baseType: !913, size: 64, offset: 1088)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1438, file: !371, line: 2321, baseType: !913, size: 64, offset: 1152)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1438, file: !371, line: 2322, baseType: !913, size: 64, offset: 1216)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1438, file: !371, line: 2324, baseType: !1484, size: 64, offset: 1280)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !371, line: 2324, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !915, file: !371, line: 3395, baseType: !1487, size: 320)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !371, line: 1469, size: 320, elements: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1487, file: !371, line: 1470, baseType: !951, size: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1487, file: !371, line: 1471, baseType: !913, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1487, file: !371, line: 1472, baseType: !913, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !915, file: !371, line: 3396, baseType: !1493, size: 320)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !371, line: 1482, size: 320, elements: !1494)
!1494 = !{!1495, !1496, !1497}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1493, file: !371, line: 1483, baseType: !951, size: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1493, file: !371, line: 1484, baseType: !743, size: 32, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1493, file: !371, line: 1485, baseType: !1303, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !915, file: !371, line: 3397, baseType: !1499, size: 384)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !371, line: 1829, size: 384, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1499, file: !371, line: 1830, baseType: !951, size: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1499, file: !371, line: 1831, baseType: !1033, size: 32, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1499, file: !371, line: 1832, baseType: !913, size: 64, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1499, file: !371, line: 1835, baseType: !1303, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !915, file: !371, line: 3398, baseType: !1506, size: 704)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !371, line: 1898, size: 704, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1514, !1515, !1518}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1506, file: !371, line: 1899, baseType: !951, size: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1506, file: !371, line: 1902, baseType: !913, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1506, file: !371, line: 1905, baseType: !1511, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !769, line: 58, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !769, line: 57, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1506, file: !371, line: 1908, baseType: !7, size: 32, offset: 320)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1506, file: !371, line: 1911, baseType: !1516, size: 64, offset: 384)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !371, line: 1876, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1506, file: !371, line: 1914, baseType: !1519, size: 256, offset: 448)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !371, line: 1883, size: 256, elements: !1520)
!1520 = !{!1521, !1523, !1524, !1529}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1519, file: !371, line: 1884, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1519, file: !371, line: 1885, baseType: !1522, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1519, file: !371, line: 1891, baseType: !1525, size: 64, offset: 128)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1519, file: !371, line: 1891, size: 64, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1525, file: !371, line: 1891, baseType: !1511, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1525, file: !371, line: 1891, baseType: !913, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1519, file: !371, line: 1892, baseType: !1530, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !915, file: !371, line: 3399, baseType: !1532, size: 704)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !371, line: 2008, size: 704, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1532, file: !371, line: 2009, baseType: !951, size: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1532, file: !371, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1532, file: !371, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1532, file: !371, line: 2014, baseType: !1033, size: 32, offset: 224)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1532, file: !371, line: 2016, baseType: !913, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1532, file: !371, line: 2017, baseType: !1292, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1532, file: !371, line: 2019, baseType: !913, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1532, file: !371, line: 2020, baseType: !913, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1532, file: !371, line: 2021, baseType: !913, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1532, file: !371, line: 2022, baseType: !913, size: 64, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1532, file: !371, line: 2023, baseType: !913, size: 64, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !915, file: !371, line: 3400, baseType: !1546, size: 832)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !371, line: 2430, size: 832, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1546, file: !371, line: 2431, baseType: !951, size: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1546, file: !371, line: 2433, baseType: !913, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1546, file: !371, line: 2434, baseType: !913, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1546, file: !371, line: 2435, baseType: !913, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1546, file: !371, line: 2436, baseType: !913, size: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1546, file: !371, line: 2437, baseType: !1292, size: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1546, file: !371, line: 2438, baseType: !913, size: 64, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1546, file: !371, line: 2440, baseType: !913, size: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1546, file: !371, line: 2441, baseType: !913, size: 64, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1546, file: !371, line: 2443, baseType: !1558, size: 128, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !371, line: 182, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !371, line: 182, size: 128, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1559, file: !371, line: 182, baseType: !1297, size: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !915, file: !371, line: 3401, baseType: !1563, size: 320)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !371, line: 3327, size: 320, elements: !1564)
!1564 = !{!1565, !1566, !1573}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1563, file: !371, line: 3329, baseType: !951, size: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1563, file: !371, line: 3330, baseType: !1567, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !371, line: 3320, size: 192, elements: !1569)
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1568, file: !371, line: 3322, baseType: !1567, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1568, file: !371, line: 3323, baseType: !1567, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1568, file: !371, line: 3324, baseType: !913, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1563, file: !371, line: 3331, baseType: !1567, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !915, file: !371, line: 3402, baseType: !1575, size: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !371, line: 1540, size: 256, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1575, file: !371, line: 1541, baseType: !951, size: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1575, file: !371, line: 1542, baseType: !1579, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !371, line: 1538, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !371, line: 1538, size: 192, elements: !1582)
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1581, file: !371, line: 1538, baseType: !1584, size: 192)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !371, line: 1537, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !371, line: 1537, size: 192, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1585, file: !371, line: 1537, baseType: !7, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1585, file: !371, line: 1537, baseType: !7, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1585, file: !371, line: 1537, baseType: !1590, size: 128, offset: 64)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1591, size: 128, elements: !834)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !371, line: 1535, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !371, line: 1532, size: 128, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1592, file: !371, line: 1533, baseType: !913, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1592, file: !371, line: 1534, baseType: !913, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !915, file: !371, line: 3403, baseType: !1597, size: 512)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !371, line: 1938, size: 512, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1608, !1609, !1610}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1597, file: !371, line: 1939, baseType: !951, size: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1597, file: !371, line: 1940, baseType: !1033, size: 32, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1597, file: !371, line: 1941, baseType: !370, size: 32, offset: 224)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1597, file: !371, line: 1946, baseType: !1603, size: 32, offset: 256)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !371, line: 1942, size: 32, elements: !1604)
!1604 = !{!1605, !1606, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1603, file: !371, line: 1943, baseType: !389, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1603, file: !371, line: 1944, baseType: !396, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1603, file: !371, line: 1945, baseType: !403, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1597, file: !371, line: 1950, baseType: !796, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1597, file: !371, line: 1951, baseType: !796, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1597, file: !371, line: 1953, baseType: !1303, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !915, file: !371, line: 3404, baseType: !1612, size: 1664)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !371, line: 3337, size: 1664, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1612, file: !371, line: 3338, baseType: !951, size: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1612, file: !371, line: 3341, baseType: !1616, size: 1472, offset: 192)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1617, line: 410, size: 1472, elements: !1618)
!1617 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1616, file: !1617, line: 412, baseType: !743, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1616, file: !1617, line: 413, baseType: !743, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1616, file: !1617, line: 414, baseType: !743, size: 32, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1616, file: !1617, line: 415, baseType: !743, size: 32, offset: 96)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1616, file: !1617, line: 416, baseType: !743, size: 32, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1616, file: !1617, line: 417, baseType: !743, size: 32, offset: 160)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1616, file: !1617, line: 418, baseType: !742, size: 8, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1616, file: !1617, line: 419, baseType: !742, size: 8, offset: 200)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1616, file: !1617, line: 420, baseType: !1628, size: 8, offset: 208)
!1628 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1616, file: !1617, line: 421, baseType: !1628, size: 8, offset: 216)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1616, file: !1617, line: 422, baseType: !1628, size: 8, offset: 224)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1616, file: !1617, line: 423, baseType: !1628, size: 8, offset: 232)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1616, file: !1617, line: 424, baseType: !1628, size: 8, offset: 240)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1616, file: !1617, line: 425, baseType: !1628, size: 8, offset: 248)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1616, file: !1617, line: 426, baseType: !1628, size: 8, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1616, file: !1617, line: 427, baseType: !1628, size: 8, offset: 264)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1616, file: !1617, line: 428, baseType: !1628, size: 8, offset: 272)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1616, file: !1617, line: 429, baseType: !1628, size: 8, offset: 280)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1616, file: !1617, line: 430, baseType: !1628, size: 8, offset: 288)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1616, file: !1617, line: 431, baseType: !1628, size: 8, offset: 296)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1616, file: !1617, line: 432, baseType: !1628, size: 8, offset: 304)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1616, file: !1617, line: 433, baseType: !1628, size: 8, offset: 312)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1616, file: !1617, line: 434, baseType: !1628, size: 8, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1616, file: !1617, line: 435, baseType: !1628, size: 8, offset: 328)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1616, file: !1617, line: 436, baseType: !1628, size: 8, offset: 336)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1616, file: !1617, line: 437, baseType: !1628, size: 8, offset: 344)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1616, file: !1617, line: 438, baseType: !1628, size: 8, offset: 352)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1616, file: !1617, line: 439, baseType: !1628, size: 8, offset: 360)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1616, file: !1617, line: 440, baseType: !1628, size: 8, offset: 368)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1616, file: !1617, line: 441, baseType: !1628, size: 8, offset: 376)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1616, file: !1617, line: 442, baseType: !1628, size: 8, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1616, file: !1617, line: 443, baseType: !1628, size: 8, offset: 392)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1616, file: !1617, line: 444, baseType: !1628, size: 8, offset: 400)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1616, file: !1617, line: 445, baseType: !1628, size: 8, offset: 408)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1616, file: !1617, line: 446, baseType: !1628, size: 8, offset: 416)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1616, file: !1617, line: 447, baseType: !1628, size: 8, offset: 424)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1616, file: !1617, line: 448, baseType: !1628, size: 8, offset: 432)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1616, file: !1617, line: 449, baseType: !1628, size: 8, offset: 440)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1616, file: !1617, line: 450, baseType: !1628, size: 8, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1616, file: !1617, line: 451, baseType: !1628, size: 8, offset: 456)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1616, file: !1617, line: 452, baseType: !1628, size: 8, offset: 464)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1616, file: !1617, line: 453, baseType: !1628, size: 8, offset: 472)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1616, file: !1617, line: 454, baseType: !1628, size: 8, offset: 480)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1616, file: !1617, line: 455, baseType: !1628, size: 8, offset: 488)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1616, file: !1617, line: 456, baseType: !1628, size: 8, offset: 496)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1616, file: !1617, line: 457, baseType: !1628, size: 8, offset: 504)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1616, file: !1617, line: 458, baseType: !1628, size: 8, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1616, file: !1617, line: 459, baseType: !1628, size: 8, offset: 520)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1616, file: !1617, line: 460, baseType: !1628, size: 8, offset: 528)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1616, file: !1617, line: 461, baseType: !1628, size: 8, offset: 536)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1616, file: !1617, line: 462, baseType: !1628, size: 8, offset: 544)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1616, file: !1617, line: 463, baseType: !1628, size: 8, offset: 552)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1616, file: !1617, line: 464, baseType: !1628, size: 8, offset: 560)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1616, file: !1617, line: 465, baseType: !1628, size: 8, offset: 568)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1616, file: !1617, line: 466, baseType: !1628, size: 8, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1616, file: !1617, line: 467, baseType: !1628, size: 8, offset: 584)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1616, file: !1617, line: 468, baseType: !1628, size: 8, offset: 592)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1616, file: !1617, line: 469, baseType: !1628, size: 8, offset: 600)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1616, file: !1617, line: 470, baseType: !1628, size: 8, offset: 608)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1616, file: !1617, line: 471, baseType: !1628, size: 8, offset: 616)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1616, file: !1617, line: 472, baseType: !1628, size: 8, offset: 624)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1616, file: !1617, line: 473, baseType: !1628, size: 8, offset: 632)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1616, file: !1617, line: 474, baseType: !1628, size: 8, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1616, file: !1617, line: 475, baseType: !1628, size: 8, offset: 648)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1616, file: !1617, line: 476, baseType: !1628, size: 8, offset: 656)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1616, file: !1617, line: 477, baseType: !1628, size: 8, offset: 664)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1616, file: !1617, line: 478, baseType: !1628, size: 8, offset: 672)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1616, file: !1617, line: 479, baseType: !1628, size: 8, offset: 680)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1616, file: !1617, line: 480, baseType: !1628, size: 8, offset: 688)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1616, file: !1617, line: 481, baseType: !1628, size: 8, offset: 696)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1616, file: !1617, line: 482, baseType: !1628, size: 8, offset: 704)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1616, file: !1617, line: 483, baseType: !1628, size: 8, offset: 712)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1616, file: !1617, line: 484, baseType: !1628, size: 8, offset: 720)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1616, file: !1617, line: 485, baseType: !1628, size: 8, offset: 728)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1616, file: !1617, line: 486, baseType: !1628, size: 8, offset: 736)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1616, file: !1617, line: 487, baseType: !1628, size: 8, offset: 744)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1616, file: !1617, line: 488, baseType: !1628, size: 8, offset: 752)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1616, file: !1617, line: 489, baseType: !1628, size: 8, offset: 760)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1616, file: !1617, line: 490, baseType: !1628, size: 8, offset: 768)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1616, file: !1617, line: 491, baseType: !1628, size: 8, offset: 776)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1616, file: !1617, line: 492, baseType: !1628, size: 8, offset: 784)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1616, file: !1617, line: 493, baseType: !1628, size: 8, offset: 792)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1616, file: !1617, line: 494, baseType: !1628, size: 8, offset: 800)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1616, file: !1617, line: 495, baseType: !1628, size: 8, offset: 808)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1616, file: !1617, line: 496, baseType: !1628, size: 8, offset: 816)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1616, file: !1617, line: 497, baseType: !1628, size: 8, offset: 824)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1616, file: !1617, line: 498, baseType: !1628, size: 8, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1616, file: !1617, line: 499, baseType: !1628, size: 8, offset: 840)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1616, file: !1617, line: 500, baseType: !1628, size: 8, offset: 848)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1616, file: !1617, line: 501, baseType: !1628, size: 8, offset: 856)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1616, file: !1617, line: 502, baseType: !1628, size: 8, offset: 864)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1616, file: !1617, line: 503, baseType: !1628, size: 8, offset: 872)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1616, file: !1617, line: 504, baseType: !1628, size: 8, offset: 880)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1616, file: !1617, line: 505, baseType: !1628, size: 8, offset: 888)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1616, file: !1617, line: 506, baseType: !1628, size: 8, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1616, file: !1617, line: 507, baseType: !1628, size: 8, offset: 904)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1616, file: !1617, line: 508, baseType: !1628, size: 8, offset: 912)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1616, file: !1617, line: 509, baseType: !1628, size: 8, offset: 920)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1616, file: !1617, line: 510, baseType: !1628, size: 8, offset: 928)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1616, file: !1617, line: 511, baseType: !1628, size: 8, offset: 936)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1616, file: !1617, line: 512, baseType: !1628, size: 8, offset: 944)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1616, file: !1617, line: 513, baseType: !1628, size: 8, offset: 952)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1616, file: !1617, line: 514, baseType: !1628, size: 8, offset: 960)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1616, file: !1617, line: 515, baseType: !1628, size: 8, offset: 968)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1616, file: !1617, line: 516, baseType: !1628, size: 8, offset: 976)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1616, file: !1617, line: 517, baseType: !1628, size: 8, offset: 984)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1616, file: !1617, line: 518, baseType: !1628, size: 8, offset: 992)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1616, file: !1617, line: 519, baseType: !1628, size: 8, offset: 1000)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1616, file: !1617, line: 520, baseType: !1628, size: 8, offset: 1008)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1616, file: !1617, line: 521, baseType: !1628, size: 8, offset: 1016)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1616, file: !1617, line: 522, baseType: !1628, size: 8, offset: 1024)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1616, file: !1617, line: 523, baseType: !1628, size: 8, offset: 1032)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1616, file: !1617, line: 524, baseType: !1628, size: 8, offset: 1040)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1616, file: !1617, line: 525, baseType: !1628, size: 8, offset: 1048)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1616, file: !1617, line: 526, baseType: !1628, size: 8, offset: 1056)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1616, file: !1617, line: 527, baseType: !1628, size: 8, offset: 1064)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1616, file: !1617, line: 528, baseType: !1628, size: 8, offset: 1072)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1616, file: !1617, line: 529, baseType: !1628, size: 8, offset: 1080)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1616, file: !1617, line: 530, baseType: !1628, size: 8, offset: 1088)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1616, file: !1617, line: 531, baseType: !1628, size: 8, offset: 1096)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1616, file: !1617, line: 532, baseType: !1628, size: 8, offset: 1104)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1616, file: !1617, line: 533, baseType: !1628, size: 8, offset: 1112)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1616, file: !1617, line: 534, baseType: !1628, size: 8, offset: 1120)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1616, file: !1617, line: 535, baseType: !1628, size: 8, offset: 1128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1616, file: !1617, line: 536, baseType: !1628, size: 8, offset: 1136)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1616, file: !1617, line: 537, baseType: !1628, size: 8, offset: 1144)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1616, file: !1617, line: 538, baseType: !1628, size: 8, offset: 1152)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1616, file: !1617, line: 539, baseType: !1628, size: 8, offset: 1160)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1616, file: !1617, line: 540, baseType: !1628, size: 8, offset: 1168)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1616, file: !1617, line: 541, baseType: !1628, size: 8, offset: 1176)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1616, file: !1617, line: 542, baseType: !1628, size: 8, offset: 1184)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1616, file: !1617, line: 543, baseType: !1628, size: 8, offset: 1192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1616, file: !1617, line: 544, baseType: !1628, size: 8, offset: 1200)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1616, file: !1617, line: 545, baseType: !1628, size: 8, offset: 1208)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1616, file: !1617, line: 546, baseType: !1628, size: 8, offset: 1216)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1616, file: !1617, line: 547, baseType: !1628, size: 8, offset: 1224)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1616, file: !1617, line: 548, baseType: !1628, size: 8, offset: 1232)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1616, file: !1617, line: 549, baseType: !1628, size: 8, offset: 1240)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1616, file: !1617, line: 550, baseType: !1628, size: 8, offset: 1248)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1616, file: !1617, line: 551, baseType: !1628, size: 8, offset: 1256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1616, file: !1617, line: 552, baseType: !1628, size: 8, offset: 1264)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1616, file: !1617, line: 553, baseType: !1628, size: 8, offset: 1272)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1616, file: !1617, line: 554, baseType: !1628, size: 8, offset: 1280)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1616, file: !1617, line: 555, baseType: !1628, size: 8, offset: 1288)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1616, file: !1617, line: 556, baseType: !1628, size: 8, offset: 1296)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1616, file: !1617, line: 557, baseType: !1628, size: 8, offset: 1304)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1616, file: !1617, line: 558, baseType: !1628, size: 8, offset: 1312)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1616, file: !1617, line: 559, baseType: !1628, size: 8, offset: 1320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1616, file: !1617, line: 560, baseType: !1628, size: 8, offset: 1328)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1616, file: !1617, line: 561, baseType: !1628, size: 8, offset: 1336)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1616, file: !1617, line: 562, baseType: !1628, size: 8, offset: 1344)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1616, file: !1617, line: 563, baseType: !1628, size: 8, offset: 1352)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1616, file: !1617, line: 564, baseType: !1628, size: 8, offset: 1360)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1616, file: !1617, line: 565, baseType: !1628, size: 8, offset: 1368)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1616, file: !1617, line: 566, baseType: !1628, size: 8, offset: 1376)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1616, file: !1617, line: 567, baseType: !1628, size: 8, offset: 1384)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1616, file: !1617, line: 568, baseType: !1628, size: 8, offset: 1392)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1616, file: !1617, line: 569, baseType: !1628, size: 8, offset: 1400)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1616, file: !1617, line: 570, baseType: !1628, size: 8, offset: 1408)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1616, file: !1617, line: 571, baseType: !1628, size: 8, offset: 1416)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1616, file: !1617, line: 572, baseType: !1628, size: 8, offset: 1424)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1616, file: !1617, line: 573, baseType: !1628, size: 8, offset: 1432)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1616, file: !1617, line: 574, baseType: !1628, size: 8, offset: 1440)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !915, file: !371, line: 3405, baseType: !1784, size: 384)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !371, line: 3352, size: 384, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1784, file: !371, line: 3353, baseType: !951, size: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1784, file: !371, line: 3356, baseType: !1788, size: 192, offset: 192)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1617, line: 578, size: 192, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1788, file: !1617, line: 580, baseType: !743, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1788, file: !1617, line: 581, baseType: !743, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1788, file: !1617, line: 582, baseType: !743, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1788, file: !1617, line: 583, baseType: !743, size: 32, offset: 96)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1788, file: !1617, line: 584, baseType: !742, size: 8, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1788, file: !1617, line: 585, baseType: !742, size: 8, offset: 136)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1788, file: !1617, line: 586, baseType: !742, size: 8, offset: 144)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1788, file: !1617, line: 587, baseType: !742, size: 8, offset: 152)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1788, file: !1617, line: 588, baseType: !742, size: 8, offset: 160)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1788, file: !1617, line: 589, baseType: !742, size: 8, offset: 168)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1788, file: !1617, line: 590, baseType: !742, size: 8, offset: 176)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !820, file: !598, line: 178, baseType: !770, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !820, file: !598, line: 179, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !598, line: 150, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !598, line: 142, size: 320, elements: !1806)
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1805, file: !598, line: 144, baseType: !913, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1805, file: !598, line: 145, baseType: !800, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1805, file: !598, line: 146, baseType: !800, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1805, file: !598, line: 147, baseType: !1463, size: 32, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1805, file: !598, line: 148, baseType: !7, size: 32, offset: 224)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1805, file: !598, line: 149, baseType: !742, size: 8, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !820, file: !598, line: 180, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !598, line: 162, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !598, line: 159, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1816, file: !598, line: 160, baseType: !913, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1816, file: !598, line: 161, baseType: !753, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !820, file: !598, line: 181, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !598, line: 181, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !815, file: !598, line: 317, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !753, size: 64, elements: !834)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !815, file: !598, line: 318, baseType: !1826, size: 320)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !598, line: 188, size: 320, elements: !1827)
!1827 = !{!1828, !1830, !1885}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1826, file: !598, line: 190, baseType: !1829, size: 192)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 192, elements: !984)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1826, file: !598, line: 193, baseType: !1831, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !598, line: 206, size: 320, elements: !1833)
!1833 = !{!1834, !1870, !1871, !1872, !1884}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1832, file: !598, line: 208, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !769, line: 62, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1838, line: 538, size: 256, elements: !1839)
!1838 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1839 = !{!1840, !1844, !1850, !1861}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1837, file: !1838, line: 539, baseType: !1841, size: 32)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1838, line: 482, size: 32, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1841, file: !1838, line: 484, baseType: !7, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1837, file: !1838, line: 540, baseType: !1845, size: 192)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1838, line: 488, size: 192, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1845, file: !1838, line: 489, baseType: !1841, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1845, file: !1838, line: 492, baseType: !748, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1845, file: !1838, line: 496, baseType: !913, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1837, file: !1838, line: 541, baseType: !1851, size: 256)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1838, line: 504, size: 256, elements: !1852)
!1852 = !{!1853, !1854, !1859, !1860}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1851, file: !1838, line: 505, baseType: !1841, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1851, file: !1838, line: 509, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1838, line: 501, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !1254}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1851, file: !1838, line: 510, baseType: !1254, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1851, file: !1838, line: 513, baseType: !1835, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1837, file: !1838, line: 542, baseType: !1862, size: 128)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1838, line: 530, size: 128, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1862, file: !1838, line: 531, baseType: !1841, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1862, file: !1838, line: 534, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1838, line: 525, baseType: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!742, !913, !748, !759, !759}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1832, file: !598, line: 211, baseType: !7, size: 32, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1832, file: !598, line: 214, baseType: !753, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1832, file: !598, line: 224, baseType: !1873, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !598, line: 202, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !598, line: 202, size: 128, elements: !1876)
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1875, file: !598, line: 202, baseType: !1878, size: 128)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !598, line: 200, baseType: !1879)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !598, line: 200, size: 128, elements: !1880)
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1879, file: !598, line: 200, baseType: !7, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1879, file: !598, line: 200, baseType: !7, size: 32, offset: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1879, file: !598, line: 200, baseType: !833, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1832, file: !598, line: 234, baseType: !1873, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1826, file: !598, line: 197, baseType: !753, size: 64, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !815, file: !598, line: 319, baseType: !973, size: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !815, file: !598, line: 320, baseType: !992, size: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !788, file: !356, line: 134, baseType: !747, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !788, file: !356, line: 137, baseType: !913, size: 64, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !788, file: !356, line: 138, baseType: !1033, size: 32, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !788, file: !356, line: 142, baseType: !7, size: 32, offset: 352)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !356, line: 144, baseType: !743, size: 32, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !788, file: !356, line: 145, baseType: !743, size: 32, offset: 416)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !788, file: !356, line: 146, baseType: !1895, size: 64, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !356, line: 119, baseType: !753)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !771, file: !356, line: 220, baseType: !774, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !771, file: !356, line: 223, baseType: !747, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !771, file: !356, line: 226, baseType: !1899, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !356, line: 185, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !771, file: !356, line: 229, baseType: !1902, size: 128, offset: 256)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1903, size: 128, elements: !869)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !356, line: 229, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !771, file: !356, line: 232, baseType: !770, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !771, file: !356, line: 233, baseType: !770, size: 64, offset: 448)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !771, file: !356, line: 238, baseType: !1908, size: 64, offset: 512)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !356, line: 235, size: 64, elements: !1909)
!1909 = !{!1910, !1916}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1908, file: !356, line: 236, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !356, line: 273, size: 128, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1912, file: !356, line: 275, baseType: !796, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1912, file: !356, line: 278, baseType: !796, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1908, file: !356, line: 237, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !356, line: 259, size: 320, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1918, file: !356, line: 261, baseType: !800, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1918, file: !356, line: 262, baseType: !800, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1918, file: !356, line: 266, baseType: !800, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1918, file: !356, line: 267, baseType: !800, size: 64, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1918, file: !356, line: 270, baseType: !743, size: 32, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !771, file: !356, line: 241, baseType: !1895, size: 64, offset: 576)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !771, file: !356, line: 244, baseType: !743, size: 32, offset: 640)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !771, file: !356, line: 247, baseType: !743, size: 32, offset: 672)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !771, file: !356, line: 250, baseType: !743, size: 32, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !771, file: !356, line: 253, baseType: !743, size: 32, offset: 736)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !356, line: 256, baseType: !743, size: 32, offset: 768)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !763, file: !3, line: 81, baseType: !743, size: 32, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !763, file: !3, line: 82, baseType: !800, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "btr", scope: !763, file: !3, line: 83, baseType: !743, size: 32, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !763, file: !3, line: 84, baseType: !743, size: 32, offset: 352)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !763, file: !3, line: 89, baseType: !1936, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "btr_def_group", file: !3, line: 49, baseType: !1937)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btr_def_group_s", file: !3, line: 44, size: 192, elements: !1939)
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1938, file: !3, line: 46, baseType: !1937, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1938, file: !3, line: 47, baseType: !800, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !1938, file: !3, line: 48, baseType: !762, size: 64, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !763, file: !3, line: 90, baseType: !1944, size: 64, offset: 448)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "btr_user", file: !3, line: 65, baseType: !1945)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btr_user_s", file: !3, line: 51, size: 448, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1946, file: !3, line: 53, baseType: !1945, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !1946, file: !3, line: 54, baseType: !768, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !1946, file: !3, line: 55, baseType: !743, size: 32, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1946, file: !3, line: 56, baseType: !800, size: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1946, file: !3, line: 61, baseType: !800, size: 64, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "n_reaching_defs", scope: !1946, file: !3, line: 62, baseType: !743, size: 32, offset: 320)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "first_reaching_def", scope: !1946, file: !3, line: 63, baseType: !743, size: 32, offset: 352)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "other_use_this_block", scope: !1946, file: !3, line: 64, baseType: !746, size: 8, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "has_ambiguous_use", scope: !763, file: !3, line: 94, baseType: !746, size: 8, offset: 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "other_btr_uses_before_def", scope: !763, file: !3, line: 103, baseType: !746, size: 8, offset: 520)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "other_btr_uses_after_use", scope: !763, file: !3, line: 104, baseType: !746, size: 8, offset: 528)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "own_end", scope: !763, file: !3, line: 108, baseType: !746, size: 8, offset: 536)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "live_range", scope: !763, file: !3, line: 109, baseType: !1961, size: 64, offset: 576)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !769, line: 47, baseType: !853)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1267, line: 35, baseType: !753)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "defs_uses_info", file: !3, line: 417, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 411, size: 320, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1983}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "users_this_bb", scope: !1967, file: !3, line: 412, baseType: !1944, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "btrs_written_in_block", scope: !1967, file: !3, line: 413, baseType: !757, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "btrs_live_in_block", scope: !1967, file: !3, line: 414, baseType: !757, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "bb_gen", scope: !1967, file: !3, line: 415, baseType: !1973, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !1974, line: 45, baseType: !1975)
!1974 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !1974, line: 39, size: 192, elements: !1977)
!1977 = !{!1978, !1979, !1980, !1981}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !1976, file: !1974, line: 41, baseType: !741, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !1976, file: !1974, line: 42, baseType: !7, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1976, file: !1974, line: 43, baseType: !7, size: 32, offset: 96)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1976, file: !1974, line: 44, baseType: !1982, size: 64, offset: 128)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 64, elements: !834)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "btr_defset", scope: !1967, file: !3, line: 416, baseType: !1984, size: 64, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!1986 = !{!0, !1987, !2015, !2017, !2019, !2021, !2023, !2025, !2027, !2029, !2032}
!1987 = !DIGlobalVariableExpression(var: !1988, expr: !DIExpression())
!1988 = distinct !DIGlobalVariable(name: "pass_branch_target_load_optimize2", scope: !2, file: !3, line: 1556, type: !1989, isLocal: false, isDefinition: true)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !1990)
!1990 = !{!1991}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1989, file: !6, line: 164, baseType: !1992, size: 640)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1993)
!1993 = !{!1994, !1995, !1996, !2000, !2004, !2006, !2007, !2008, !2010, !2011, !2012, !2013, !2014}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1992, file: !6, line: 117, baseType: !5, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1992, file: !6, line: 121, baseType: !748, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1992, file: !6, line: 125, baseType: !1997, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!742}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1992, file: !6, line: 130, baseType: !2001, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!7}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1992, file: !6, line: 133, baseType: !2005, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1992, file: !6, line: 136, baseType: !2005, size: 64, offset: 320)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1992, file: !6, line: 139, baseType: !743, size: 32, offset: 384)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1992, file: !6, line: 143, baseType: !2009, size: 32, offset: 416)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1992, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1992, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1992, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1992, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1992, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2015 = !DIGlobalVariableExpression(var: !2016, expr: !DIExpression())
!2016 = distinct !DIGlobalVariable(name: "issue_rate", scope: !2, file: !3, line: 112, type: !743, isLocal: true, isDefinition: true)
!2017 = !DIGlobalVariableExpression(var: !2018, expr: !DIExpression())
!2018 = distinct !DIGlobalVariable(name: "migrate_btrl_obstack", scope: !2, file: !3, line: 161, type: !881, isLocal: true, isDefinition: true)
!2019 = !DIGlobalVariableExpression(var: !2020, expr: !DIExpression())
!2020 = distinct !DIGlobalVariable(name: "all_btrs", scope: !2, file: !3, line: 172, type: !757, isLocal: true, isDefinition: true)
!2021 = !DIGlobalVariableExpression(var: !2022, expr: !DIExpression())
!2022 = distinct !DIGlobalVariable(name: "first_btr", scope: !2, file: !3, line: 176, type: !743, isLocal: true, isDefinition: true)
!2023 = !DIGlobalVariableExpression(var: !2024, expr: !DIExpression())
!2024 = distinct !DIGlobalVariable(name: "last_btr", scope: !2, file: !3, line: 176, type: !743, isLocal: true, isDefinition: true)
!2025 = !DIGlobalVariableExpression(var: !2026, expr: !DIExpression())
!2026 = distinct !DIGlobalVariable(name: "btrs_live", scope: !2, file: !3, line: 165, type: !760, isLocal: true, isDefinition: true)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(name: "btrs_live_at_end", scope: !2, file: !3, line: 169, type: !760, isLocal: true, isDefinition: true)
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(name: "btr_reference_found", scope: !2, file: !3, line: 187, type: !2031, isLocal: true, isDefinition: true)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!2032 = !DIGlobalVariableExpression(var: !2033, expr: !DIExpression())
!2033 = distinct !DIGlobalVariable(name: "warned", scope: !2034, file: !3, line: 1537, type: !743, isLocal: true, isDefinition: true)
!2034 = distinct !DISubprogram(name: "rest_of_handle_branch_target_load_optimize2", scope: !3, file: !3, line: 1535, type: !2002, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2035 = !{}
!2036 = !DIGlobalVariableExpression(var: !2033, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2037 = !{i32 2, !"Dwarf Version", i32 4}
!2038 = !{i32 2, !"Debug Info Version", i32 3}
!2039 = !{i32 1, !"wchar_size", i32 4}
!2040 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2041 = distinct !DISubprogram(name: "vprintf", scope: !2042, file: !2042, line: 39, type: !2043, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2042 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!743, !2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !748)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2048)
!2048 = !{!2049, !2050, !2051, !2052}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2047, file: !3, baseType: !7, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2047, file: !3, baseType: !7, size: 32, offset: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2047, file: !3, baseType: !747, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2047, file: !3, baseType: !747, size: 64, offset: 128)
!2053 = !{!2054, !2055}
!2054 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2041, file: !2042, line: 39, type: !2045)
!2055 = !DILocalVariable(name: "__arg", arg: 2, scope: !2041, file: !2042, line: 39, type: !2046)
!2056 = !DILocation(line: 0, scope: !2041)
!2057 = !DILocation(line: 41, column: 20, scope: !2041)
!2058 = !DILocation(line: 41, column: 10, scope: !2041)
!2059 = !DILocation(line: 41, column: 3, scope: !2041)
!2060 = distinct !DISubprogram(name: "getchar", scope: !2042, file: !2042, line: 47, type: !2061, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!743}
!2063 = !DILocation(line: 49, column: 16, scope: !2060)
!2064 = !DILocation(line: 49, column: 10, scope: !2060)
!2065 = !DILocation(line: 49, column: 3, scope: !2060)
!2066 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2042, file: !2042, line: 56, type: !2067, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!743, !2069}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2071, line: 7, baseType: !2072)
!2071 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2073, line: 49, size: 1728, elements: !2074)
!2073 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2090, !2092, !2093, !2094, !2097, !2099, !2100, !2101, !2104, !2106, !2109, !2112, !2113, !2114, !2115, !2116}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2072, file: !2073, line: 51, baseType: !743, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2072, file: !2073, line: 54, baseType: !745, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2072, file: !2073, line: 55, baseType: !745, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2072, file: !2073, line: 56, baseType: !745, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2072, file: !2073, line: 57, baseType: !745, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2072, file: !2073, line: 58, baseType: !745, size: 64, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2072, file: !2073, line: 59, baseType: !745, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2072, file: !2073, line: 60, baseType: !745, size: 64, offset: 448)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2072, file: !2073, line: 61, baseType: !745, size: 64, offset: 512)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2072, file: !2073, line: 64, baseType: !745, size: 64, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2072, file: !2073, line: 65, baseType: !745, size: 64, offset: 640)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2072, file: !2073, line: 66, baseType: !745, size: 64, offset: 704)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2072, file: !2073, line: 68, baseType: !2088, size: 64, offset: 768)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2073, line: 36, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2072, file: !2073, line: 70, baseType: !2091, size: 64, offset: 832)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2072, file: !2073, line: 72, baseType: !743, size: 32, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2072, file: !2073, line: 73, baseType: !743, size: 32, offset: 928)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2072, file: !2073, line: 74, baseType: !2095, size: 64, offset: 960)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2096, line: 152, baseType: !753)
!2096 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2072, file: !2073, line: 77, baseType: !2098, size: 16, offset: 1024)
!2098 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2072, file: !2073, line: 78, baseType: !1628, size: 8, offset: 1040)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2072, file: !2073, line: 79, baseType: !1008, size: 8, offset: 1048)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2072, file: !2073, line: 81, baseType: !2102, size: 64, offset: 1088)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2073, line: 43, baseType: null)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2072, file: !2073, line: 89, baseType: !2105, size: 64, offset: 1152)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2096, line: 153, baseType: !753)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2072, file: !2073, line: 91, baseType: !2107, size: 64, offset: 1216)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2073, line: 37, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2072, file: !2073, line: 92, baseType: !2110, size: 64, offset: 1280)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2073, line: 38, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2072, file: !2073, line: 93, baseType: !2091, size: 64, offset: 1344)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2072, file: !2073, line: 94, baseType: !747, size: 64, offset: 1408)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2072, file: !2073, line: 95, baseType: !1266, size: 64, offset: 1472)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2072, file: !2073, line: 96, baseType: !743, size: 32, offset: 1536)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2072, file: !2073, line: 98, baseType: !2117, size: 160, offset: 1568)
!2117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 160, elements: !2118)
!2118 = !{!2119}
!2119 = !DISubrange(count: 20)
!2120 = !{!2121}
!2121 = !DILocalVariable(name: "__fp", arg: 1, scope: !2066, file: !2042, line: 56, type: !2069)
!2122 = !DILocation(line: 0, scope: !2066)
!2123 = !DILocation(line: 58, column: 10, scope: !2066)
!2124 = !DILocation(line: 58, column: 3, scope: !2066)
!2125 = distinct !DISubprogram(name: "getc_unlocked", scope: !2042, file: !2042, line: 66, type: !2067, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2126 = !{!2127}
!2127 = !DILocalVariable(name: "__fp", arg: 1, scope: !2125, file: !2042, line: 66, type: !2069)
!2128 = !DILocation(line: 0, scope: !2125)
!2129 = !DILocation(line: 68, column: 10, scope: !2125)
!2130 = !DILocation(line: 68, column: 3, scope: !2125)
!2131 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2042, file: !2042, line: 73, type: !2061, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2132 = !DILocation(line: 75, column: 10, scope: !2131)
!2133 = !DILocation(line: 75, column: 3, scope: !2131)
!2134 = distinct !DISubprogram(name: "putchar", scope: !2042, file: !2042, line: 82, type: !2135, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!743, !743}
!2137 = !{!2138}
!2138 = !DILocalVariable(name: "__c", arg: 1, scope: !2134, file: !2042, line: 82, type: !743)
!2139 = !DILocation(line: 0, scope: !2134)
!2140 = !DILocation(line: 84, column: 21, scope: !2134)
!2141 = !DILocation(line: 84, column: 10, scope: !2134)
!2142 = !DILocation(line: 84, column: 3, scope: !2134)
!2143 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2042, file: !2042, line: 91, type: !2144, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!743, !743, !2069}
!2146 = !{!2147, !2148}
!2147 = !DILocalVariable(name: "__c", arg: 1, scope: !2143, file: !2042, line: 91, type: !743)
!2148 = !DILocalVariable(name: "__stream", arg: 2, scope: !2143, file: !2042, line: 91, type: !2069)
!2149 = !DILocation(line: 0, scope: !2143)
!2150 = !DILocation(line: 93, column: 10, scope: !2143)
!2151 = !DILocation(line: 93, column: 3, scope: !2143)
!2152 = distinct !DISubprogram(name: "putc_unlocked", scope: !2042, file: !2042, line: 101, type: !2144, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2153)
!2153 = !{!2154, !2155}
!2154 = !DILocalVariable(name: "__c", arg: 1, scope: !2152, file: !2042, line: 101, type: !743)
!2155 = !DILocalVariable(name: "__stream", arg: 2, scope: !2152, file: !2042, line: 101, type: !2069)
!2156 = !DILocation(line: 0, scope: !2152)
!2157 = !DILocation(line: 103, column: 10, scope: !2152)
!2158 = !DILocation(line: 103, column: 3, scope: !2152)
!2159 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2042, file: !2042, line: 108, type: !2135, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2160)
!2160 = !{!2161}
!2161 = !DILocalVariable(name: "__c", arg: 1, scope: !2159, file: !2042, line: 108, type: !743)
!2162 = !DILocation(line: 0, scope: !2159)
!2163 = !DILocation(line: 110, column: 10, scope: !2159)
!2164 = !DILocation(line: 110, column: 3, scope: !2159)
!2165 = distinct !DISubprogram(name: "getline", scope: !2042, file: !2042, line: 118, type: !2166, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!2168, !744, !2169, !2069}
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2096, line: 193, baseType: !753)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!2170 = !{!2171, !2172, !2173}
!2171 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2165, file: !2042, line: 118, type: !744)
!2172 = !DILocalVariable(name: "__n", arg: 2, scope: !2165, file: !2042, line: 118, type: !2169)
!2173 = !DILocalVariable(name: "__stream", arg: 3, scope: !2165, file: !2042, line: 118, type: !2069)
!2174 = !DILocation(line: 0, scope: !2165)
!2175 = !DILocation(line: 120, column: 10, scope: !2165)
!2176 = !DILocation(line: 120, column: 3, scope: !2165)
!2177 = distinct !DISubprogram(name: "feof_unlocked", scope: !2042, file: !2042, line: 128, type: !2067, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2178)
!2178 = !{!2179}
!2179 = !DILocalVariable(name: "__stream", arg: 1, scope: !2177, file: !2042, line: 128, type: !2069)
!2180 = !DILocation(line: 0, scope: !2177)
!2181 = !DILocation(line: 130, column: 10, scope: !2177)
!2182 = !DILocation(line: 130, column: 3, scope: !2177)
!2183 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2042, file: !2042, line: 135, type: !2067, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2184 = !{!2185}
!2185 = !DILocalVariable(name: "__stream", arg: 1, scope: !2183, file: !2042, line: 135, type: !2069)
!2186 = !DILocation(line: 0, scope: !2183)
!2187 = !DILocation(line: 137, column: 10, scope: !2183)
!2188 = !DILocation(line: 137, column: 3, scope: !2183)
!2189 = distinct !DISubprogram(name: "tolower", scope: !2190, file: !2190, line: 207, type: !2135, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2191)
!2190 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2191 = !{!2192}
!2192 = !DILocalVariable(name: "__c", arg: 1, scope: !2189, file: !2190, line: 207, type: !743)
!2193 = !DILocation(line: 0, scope: !2189)
!2194 = !DILocation(line: 209, column: 22, scope: !2189)
!2195 = !DILocation(line: 209, column: 39, scope: !2189)
!2196 = !DILocation(line: 209, column: 38, scope: !2189)
!2197 = !DILocation(line: 209, column: 37, scope: !2189)
!2198 = !DILocation(line: 209, column: 10, scope: !2189)
!2199 = !DILocation(line: 209, column: 3, scope: !2189)
!2200 = distinct !DISubprogram(name: "toupper", scope: !2190, file: !2190, line: 213, type: !2135, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2201)
!2201 = !{!2202}
!2202 = !DILocalVariable(name: "__c", arg: 1, scope: !2200, file: !2190, line: 213, type: !743)
!2203 = !DILocation(line: 0, scope: !2200)
!2204 = !DILocation(line: 215, column: 22, scope: !2200)
!2205 = !DILocation(line: 215, column: 39, scope: !2200)
!2206 = !DILocation(line: 215, column: 38, scope: !2200)
!2207 = !DILocation(line: 215, column: 37, scope: !2200)
!2208 = !DILocation(line: 215, column: 10, scope: !2200)
!2209 = !DILocation(line: 215, column: 3, scope: !2200)
!2210 = distinct !DISubprogram(name: "atoi", scope: !2211, file: !2211, line: 361, type: !2212, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2214)
!2211 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!743, !748}
!2214 = !{!2215}
!2215 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2210, file: !2211, line: 361, type: !748)
!2216 = !DILocation(line: 0, scope: !2210)
!2217 = !DILocation(line: 363, column: 16, scope: !2210)
!2218 = !DILocation(line: 363, column: 10, scope: !2210)
!2219 = !DILocation(line: 363, column: 3, scope: !2210)
!2220 = distinct !DISubprogram(name: "atol", scope: !2211, file: !2211, line: 366, type: !2221, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!753, !748}
!2223 = !{!2224}
!2224 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2220, file: !2211, line: 366, type: !748)
!2225 = !DILocation(line: 0, scope: !2220)
!2226 = !DILocation(line: 368, column: 10, scope: !2220)
!2227 = !DILocation(line: 368, column: 3, scope: !2220)
!2228 = distinct !DISubprogram(name: "atoll", scope: !2211, file: !2211, line: 373, type: !2229, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!2231, !748}
!2231 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2228, file: !2211, line: 373, type: !748)
!2234 = !DILocation(line: 0, scope: !2228)
!2235 = !DILocation(line: 375, column: 10, scope: !2228)
!2236 = !DILocation(line: 375, column: 3, scope: !2228)
!2237 = distinct !DISubprogram(name: "bsearch", scope: !2238, file: !2238, line: 20, type: !2239, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2238 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!747, !1254, !1254, !1266, !1266, !2241}
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2211, line: 808, baseType: !1258)
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252}
!2243 = !DILocalVariable(name: "__key", arg: 1, scope: !2237, file: !2238, line: 20, type: !1254)
!2244 = !DILocalVariable(name: "__base", arg: 2, scope: !2237, file: !2238, line: 20, type: !1254)
!2245 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2237, file: !2238, line: 20, type: !1266)
!2246 = !DILocalVariable(name: "__size", arg: 4, scope: !2237, file: !2238, line: 20, type: !1266)
!2247 = !DILocalVariable(name: "__compar", arg: 5, scope: !2237, file: !2238, line: 21, type: !2241)
!2248 = !DILocalVariable(name: "__l", scope: !2237, file: !2238, line: 23, type: !1266)
!2249 = !DILocalVariable(name: "__u", scope: !2237, file: !2238, line: 23, type: !1266)
!2250 = !DILocalVariable(name: "__idx", scope: !2237, file: !2238, line: 23, type: !1266)
!2251 = !DILocalVariable(name: "__p", scope: !2237, file: !2238, line: 24, type: !1254)
!2252 = !DILocalVariable(name: "__comparison", scope: !2237, file: !2238, line: 25, type: !743)
!2253 = !DILocation(line: 0, scope: !2237)
!2254 = !DILocation(line: 29, column: 3, scope: !2237)
!2255 = !DILocation(line: 27, column: 7, scope: !2237)
!2256 = !DILocation(line: 29, column: 14, scope: !2237)
!2257 = !DILocation(line: 31, column: 20, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2237, file: !2238, line: 30, column: 5)
!2259 = !DILocation(line: 31, column: 27, scope: !2258)
!2260 = !DILocation(line: 32, column: 56, scope: !2258)
!2261 = !DILocation(line: 32, column: 47, scope: !2258)
!2262 = !DILocation(line: 33, column: 22, scope: !2258)
!2263 = !DILocation(line: 34, column: 24, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2258, file: !2238, line: 34, column: 11)
!2265 = !DILocation(line: 34, column: 11, scope: !2258)
!2266 = !DILocation(line: 36, column: 29, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2264, file: !2238, line: 36, column: 16)
!2268 = !DILocation(line: 36, column: 16, scope: !2264)
!2269 = !DILocation(line: 37, column: 14, scope: !2267)
!2270 = distinct !{!2270, !2254, !2271}
!2271 = !DILocation(line: 40, column: 5, scope: !2237)
!2272 = !DILocation(line: 43, column: 1, scope: !2237)
!2273 = distinct !DISubprogram(name: "atof", scope: !2274, file: !2274, line: 25, type: !2275, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!2277, !748}
!2277 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2278 = !{!2279}
!2279 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2273, file: !2274, line: 25, type: !748)
!2280 = !DILocation(line: 0, scope: !2273)
!2281 = !DILocation(line: 27, column: 10, scope: !2273)
!2282 = !DILocation(line: 27, column: 3, scope: !2273)
!2283 = distinct !DISubprogram(name: "strtoimax", scope: !2284, file: !2284, line: 324, type: !2285, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2291)
!2284 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!2287, !2045, !2290, !743}
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2288, line: 101, baseType: !2289)
!2288 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2096, line: 72, baseType: !753)
!2290 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !744)
!2291 = !{!2292, !2293, !2294}
!2292 = !DILocalVariable(name: "nptr", arg: 1, scope: !2283, file: !2284, line: 324, type: !2045)
!2293 = !DILocalVariable(name: "endptr", arg: 2, scope: !2283, file: !2284, line: 324, type: !2290)
!2294 = !DILocalVariable(name: "base", arg: 3, scope: !2283, file: !2284, line: 324, type: !743)
!2295 = !DILocation(line: 0, scope: !2283)
!2296 = !DILocation(line: 327, column: 10, scope: !2283)
!2297 = !DILocation(line: 327, column: 3, scope: !2283)
!2298 = distinct !DISubprogram(name: "strtoumax", scope: !2284, file: !2284, line: 336, type: !2299, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2303)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!2301, !2045, !2290, !743}
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2288, line: 102, baseType: !2302)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2096, line: 73, baseType: !759)
!2303 = !{!2304, !2305, !2306}
!2304 = !DILocalVariable(name: "nptr", arg: 1, scope: !2298, file: !2284, line: 336, type: !2045)
!2305 = !DILocalVariable(name: "endptr", arg: 2, scope: !2298, file: !2284, line: 336, type: !2290)
!2306 = !DILocalVariable(name: "base", arg: 3, scope: !2298, file: !2284, line: 336, type: !743)
!2307 = !DILocation(line: 0, scope: !2298)
!2308 = !DILocation(line: 339, column: 10, scope: !2298)
!2309 = !DILocation(line: 339, column: 3, scope: !2298)
!2310 = distinct !DISubprogram(name: "wcstoimax", scope: !2284, file: !2284, line: 348, type: !2311, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2320)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!2287, !2313, !2317, !743}
!2313 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2314)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2316)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2284, line: 34, baseType: !743)
!2317 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2318)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2320 = !{!2321, !2322, !2323}
!2321 = !DILocalVariable(name: "nptr", arg: 1, scope: !2310, file: !2284, line: 348, type: !2313)
!2322 = !DILocalVariable(name: "endptr", arg: 2, scope: !2310, file: !2284, line: 348, type: !2317)
!2323 = !DILocalVariable(name: "base", arg: 3, scope: !2310, file: !2284, line: 348, type: !743)
!2324 = !DILocation(line: 0, scope: !2310)
!2325 = !DILocation(line: 351, column: 10, scope: !2310)
!2326 = !DILocation(line: 351, column: 3, scope: !2310)
!2327 = distinct !DISubprogram(name: "wcstoumax", scope: !2284, file: !2284, line: 362, type: !2328, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!2301, !2313, !2317, !743}
!2330 = !{!2331, !2332, !2333}
!2331 = !DILocalVariable(name: "nptr", arg: 1, scope: !2327, file: !2284, line: 362, type: !2313)
!2332 = !DILocalVariable(name: "endptr", arg: 2, scope: !2327, file: !2284, line: 362, type: !2317)
!2333 = !DILocalVariable(name: "base", arg: 3, scope: !2327, file: !2284, line: 362, type: !743)
!2334 = !DILocation(line: 0, scope: !2327)
!2335 = !DILocation(line: 365, column: 10, scope: !2327)
!2336 = !DILocation(line: 365, column: 3, scope: !2327)
!2337 = distinct !DISubprogram(name: "stat", scope: !2338, file: !2338, line: 453, type: !2339, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2376)
!2338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!743, !748, !2341}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2343, line: 46, size: 1152, elements: !2344)
!2343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2344 = !{!2345, !2347, !2349, !2351, !2353, !2355, !2357, !2358, !2359, !2360, !2362, !2364, !2372, !2373, !2374}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2342, file: !2343, line: 48, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2096, line: 145, baseType: !759)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2342, file: !2343, line: 53, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2096, line: 148, baseType: !759)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2342, file: !2343, line: 61, baseType: !2350, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2096, line: 151, baseType: !759)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2342, file: !2343, line: 62, baseType: !2352, size: 32, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2096, line: 150, baseType: !7)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2342, file: !2343, line: 64, baseType: !2354, size: 32, offset: 224)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2096, line: 146, baseType: !7)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2342, file: !2343, line: 65, baseType: !2356, size: 32, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2096, line: 147, baseType: !7)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2342, file: !2343, line: 67, baseType: !743, size: 32, offset: 288)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2342, file: !2343, line: 69, baseType: !2346, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2342, file: !2343, line: 74, baseType: !2095, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2342, file: !2343, line: 78, baseType: !2361, size: 64, offset: 448)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2096, line: 174, baseType: !753)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2342, file: !2343, line: 80, baseType: !2363, size: 64, offset: 512)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2096, line: 179, baseType: !753)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2342, file: !2343, line: 91, baseType: !2365, size: 128, offset: 576)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2366, line: 10, size: 128, elements: !2367)
!2366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2367 = !{!2368, !2370}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2365, file: !2366, line: 12, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2096, line: 160, baseType: !753)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2365, file: !2366, line: 16, baseType: !2371, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2096, line: 196, baseType: !753)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2342, file: !2343, line: 92, baseType: !2365, size: 128, offset: 704)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2342, file: !2343, line: 93, baseType: !2365, size: 128, offset: 832)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2342, file: !2343, line: 106, baseType: !2375, size: 192, offset: 960)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2371, size: 192, elements: !984)
!2376 = !{!2377, !2378}
!2377 = !DILocalVariable(name: "__path", arg: 1, scope: !2337, file: !2338, line: 453, type: !748)
!2378 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2337, file: !2338, line: 453, type: !2341)
!2379 = !DILocation(line: 0, scope: !2337)
!2380 = !DILocation(line: 455, column: 10, scope: !2337)
!2381 = !DILocation(line: 455, column: 3, scope: !2337)
!2382 = distinct !DISubprogram(name: "lstat", scope: !2338, file: !2338, line: 460, type: !2339, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2383)
!2383 = !{!2384, !2385}
!2384 = !DILocalVariable(name: "__path", arg: 1, scope: !2382, file: !2338, line: 460, type: !748)
!2385 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2382, file: !2338, line: 460, type: !2341)
!2386 = !DILocation(line: 0, scope: !2382)
!2387 = !DILocation(line: 462, column: 10, scope: !2382)
!2388 = !DILocation(line: 462, column: 3, scope: !2382)
!2389 = distinct !DISubprogram(name: "fstat", scope: !2338, file: !2338, line: 467, type: !2390, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!743, !743, !2341}
!2392 = !{!2393, !2394}
!2393 = !DILocalVariable(name: "__fd", arg: 1, scope: !2389, file: !2338, line: 467, type: !743)
!2394 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2389, file: !2338, line: 467, type: !2341)
!2395 = !DILocation(line: 0, scope: !2389)
!2396 = !DILocation(line: 469, column: 10, scope: !2389)
!2397 = !DILocation(line: 469, column: 3, scope: !2389)
!2398 = distinct !DISubprogram(name: "fstatat", scope: !2338, file: !2338, line: 474, type: !2399, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!743, !743, !748, !2341, !743}
!2401 = !{!2402, !2403, !2404, !2405}
!2402 = !DILocalVariable(name: "__fd", arg: 1, scope: !2398, file: !2338, line: 474, type: !743)
!2403 = !DILocalVariable(name: "__filename", arg: 2, scope: !2398, file: !2338, line: 474, type: !748)
!2404 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2398, file: !2338, line: 474, type: !2341)
!2405 = !DILocalVariable(name: "__flag", arg: 4, scope: !2398, file: !2338, line: 474, type: !743)
!2406 = !DILocation(line: 0, scope: !2398)
!2407 = !DILocation(line: 477, column: 10, scope: !2398)
!2408 = !DILocation(line: 477, column: 3, scope: !2398)
!2409 = distinct !DISubprogram(name: "mknod", scope: !2338, file: !2338, line: 483, type: !2410, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!743, !748, !2352, !2346}
!2412 = !{!2413, !2414, !2415}
!2413 = !DILocalVariable(name: "__path", arg: 1, scope: !2409, file: !2338, line: 483, type: !748)
!2414 = !DILocalVariable(name: "__mode", arg: 2, scope: !2409, file: !2338, line: 483, type: !2352)
!2415 = !DILocalVariable(name: "__dev", arg: 3, scope: !2409, file: !2338, line: 483, type: !2346)
!2416 = !DILocation(line: 0, scope: !2409)
!2417 = !DILocation(line: 485, column: 10, scope: !2409)
!2418 = !DILocation(line: 485, column: 3, scope: !2409)
!2419 = distinct !DISubprogram(name: "mknodat", scope: !2338, file: !2338, line: 491, type: !2420, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2422)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!743, !743, !748, !2352, !2346}
!2422 = !{!2423, !2424, !2425, !2426}
!2423 = !DILocalVariable(name: "__fd", arg: 1, scope: !2419, file: !2338, line: 491, type: !743)
!2424 = !DILocalVariable(name: "__path", arg: 2, scope: !2419, file: !2338, line: 491, type: !748)
!2425 = !DILocalVariable(name: "__mode", arg: 3, scope: !2419, file: !2338, line: 491, type: !2352)
!2426 = !DILocalVariable(name: "__dev", arg: 4, scope: !2419, file: !2338, line: 491, type: !2346)
!2427 = !DILocation(line: 0, scope: !2419)
!2428 = !DILocation(line: 494, column: 10, scope: !2419)
!2429 = !DILocation(line: 494, column: 3, scope: !2419)
!2430 = distinct !DISubprogram(name: "stat64", scope: !2338, file: !2338, line: 502, type: !2431, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2453)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!743, !748, !2433}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2343, line: 119, size: 1152, elements: !2435)
!2435 = !{!2436, !2437, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2449, !2450, !2451, !2452}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2434, file: !2343, line: 121, baseType: !2346, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2434, file: !2343, line: 123, baseType: !2438, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2096, line: 149, baseType: !759)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2434, file: !2343, line: 124, baseType: !2350, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2434, file: !2343, line: 125, baseType: !2352, size: 32, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2434, file: !2343, line: 132, baseType: !2354, size: 32, offset: 224)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2434, file: !2343, line: 133, baseType: !2356, size: 32, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2434, file: !2343, line: 135, baseType: !743, size: 32, offset: 288)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2434, file: !2343, line: 136, baseType: !2346, size: 64, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2434, file: !2343, line: 137, baseType: !2095, size: 64, offset: 384)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2434, file: !2343, line: 143, baseType: !2361, size: 64, offset: 448)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2434, file: !2343, line: 144, baseType: !2448, size: 64, offset: 512)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2096, line: 180, baseType: !753)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2434, file: !2343, line: 152, baseType: !2365, size: 128, offset: 576)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2434, file: !2343, line: 153, baseType: !2365, size: 128, offset: 704)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2434, file: !2343, line: 154, baseType: !2365, size: 128, offset: 832)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2434, file: !2343, line: 164, baseType: !2375, size: 192, offset: 960)
!2453 = !{!2454, !2455}
!2454 = !DILocalVariable(name: "__path", arg: 1, scope: !2430, file: !2338, line: 502, type: !748)
!2455 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2430, file: !2338, line: 502, type: !2433)
!2456 = !DILocation(line: 0, scope: !2430)
!2457 = !DILocation(line: 504, column: 10, scope: !2430)
!2458 = !DILocation(line: 504, column: 3, scope: !2430)
!2459 = distinct !DISubprogram(name: "lstat64", scope: !2338, file: !2338, line: 509, type: !2431, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2460)
!2460 = !{!2461, !2462}
!2461 = !DILocalVariable(name: "__path", arg: 1, scope: !2459, file: !2338, line: 509, type: !748)
!2462 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2459, file: !2338, line: 509, type: !2433)
!2463 = !DILocation(line: 0, scope: !2459)
!2464 = !DILocation(line: 511, column: 10, scope: !2459)
!2465 = !DILocation(line: 511, column: 3, scope: !2459)
!2466 = distinct !DISubprogram(name: "fstat64", scope: !2338, file: !2338, line: 516, type: !2467, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!743, !743, !2433}
!2469 = !{!2470, !2471}
!2470 = !DILocalVariable(name: "__fd", arg: 1, scope: !2466, file: !2338, line: 516, type: !743)
!2471 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2466, file: !2338, line: 516, type: !2433)
!2472 = !DILocation(line: 0, scope: !2466)
!2473 = !DILocation(line: 518, column: 10, scope: !2466)
!2474 = !DILocation(line: 518, column: 3, scope: !2466)
!2475 = distinct !DISubprogram(name: "fstatat64", scope: !2338, file: !2338, line: 523, type: !2476, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!743, !743, !748, !2433, !743}
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DILocalVariable(name: "__fd", arg: 1, scope: !2475, file: !2338, line: 523, type: !743)
!2480 = !DILocalVariable(name: "__filename", arg: 2, scope: !2475, file: !2338, line: 523, type: !748)
!2481 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2475, file: !2338, line: 523, type: !2433)
!2482 = !DILocalVariable(name: "__flag", arg: 4, scope: !2475, file: !2338, line: 523, type: !743)
!2483 = !DILocation(line: 0, scope: !2475)
!2484 = !DILocation(line: 526, column: 10, scope: !2475)
!2485 = !DILocation(line: 526, column: 3, scope: !2475)
!2486 = distinct !DISubprogram(name: "gate_handle_branch_target_load_optimize1", scope: !3, file: !3, line: 1493, type: !1998, scopeLine: 1494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2487 = !DILocation(line: 1495, column: 10, scope: !2486)
!2488 = !DILocation(line: 1495, column: 3, scope: !2486)
!2489 = distinct !DISubprogram(name: "rest_of_handle_branch_target_load_optimize1", scope: !3, file: !3, line: 1500, type: !2002, scopeLine: 1501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2490 = !DILocation(line: 1502, column: 32, scope: !2489)
!2491 = !DILocation(line: 1502, column: 3, scope: !2489)
!2492 = !DILocation(line: 1503, column: 3, scope: !2489)
!2493 = distinct !DISubprogram(name: "gate_handle_branch_target_load_optimize2", scope: !3, file: !3, line: 1528, type: !1998, scopeLine: 1529, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2494 = !DILocation(line: 1530, column: 11, scope: !2493)
!2495 = !DILocation(line: 1530, column: 20, scope: !2493)
!2496 = !DILocation(line: 1530, column: 24, scope: !2493)
!2497 = !DILocation(line: 1530, column: 10, scope: !2493)
!2498 = !DILocation(line: 1530, column: 3, scope: !2493)
!2499 = !DILocation(line: 1542, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1542, column: 7)
!2501 = !DILocation(line: 1543, column: 10, scope: !2500)
!2502 = !DILocation(line: 1543, column: 7, scope: !2500)
!2503 = !DILocation(line: 1544, column: 11, scope: !2500)
!2504 = !DILocation(line: 1546, column: 7, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1545, column: 5)
!2506 = !DILocation(line: 1549, column: 14, scope: !2505)
!2507 = !DILocation(line: 1550, column: 5, scope: !2505)
!2508 = !DILocation(line: 1552, column: 32, scope: !2034)
!2509 = !DILocation(line: 1552, column: 3, scope: !2034)
!2510 = !DILocation(line: 1553, column: 3, scope: !2034)
!2511 = distinct !DISubprogram(name: "branch_target_load_optimize", scope: !3, file: !3, line: 1459, type: !2512, scopeLine: 1460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !742}
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "after_prologue_epilogue_gen", arg: 1, scope: !2511, file: !3, line: 1459, type: !742)
!2516 = !DILocalVariable(name: "klass", scope: !2511, file: !3, line: 1461, type: !189)
!2517 = !DILocation(line: 0, scope: !2511)
!2518 = !DILocation(line: 1461, column: 34, scope: !2511)
!2519 = !DILocation(line: 1461, column: 26, scope: !2511)
!2520 = !DILocation(line: 1462, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 1462, column: 7)
!2522 = !DILocation(line: 1462, column: 7, scope: !2511)
!2523 = !DILocation(line: 1465, column: 25, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1465, column: 11)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1463, column: 5)
!2526 = !DILocation(line: 1465, column: 11, scope: !2524)
!2527 = !DILocation(line: 1465, column: 11, scope: !2525)
!2528 = !DILocation(line: 1466, column: 15, scope: !2524)
!2529 = !DILocation(line: 1466, column: 2, scope: !2524)
!2530 = !DILocation(line: 0, scope: !2524)
!2531 = !DILocation(line: 1470, column: 12, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 1470, column: 11)
!2533 = !DILocation(line: 1470, column: 11, scope: !2525)
!2534 = !DILocation(line: 1476, column: 17, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 1471, column: 2)
!2536 = !DILocation(line: 1476, column: 4, scope: !2535)
!2537 = !DILocation(line: 1478, column: 2, scope: !2535)
!2538 = !DILocation(line: 1479, column: 7, scope: !2525)
!2539 = !DILocation(line: 1483, column: 7, scope: !2525)
!2540 = !DILocation(line: 1485, column: 19, scope: !2525)
!2541 = !DILocation(line: 1485, column: 11, scope: !2525)
!2542 = !DILocation(line: 1485, column: 10, scope: !2525)
!2543 = !DILocation(line: 1484, column: 7, scope: !2525)
!2544 = !DILocation(line: 1488, column: 7, scope: !2525)
!2545 = !DILocation(line: 1489, column: 5, scope: !2525)
!2546 = !DILocation(line: 1490, column: 1, scope: !2511)
!2547 = distinct !DISubprogram(name: "migrate_btr_defs", scope: !3, file: !3, line: 1396, type: !2548, scopeLine: 1397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !189, !743}
!2550 = !{!2551, !2552, !2553, !2574, !2575, !2578, !2582, !2584}
!2551 = !DILocalVariable(name: "btr_class", arg: 1, scope: !2547, file: !3, line: 1396, type: !189)
!2552 = !DILocalVariable(name: "allow_callee_save", arg: 2, scope: !2547, file: !3, line: 1396, type: !743)
!2553 = !DILocalVariable(name: "all_btr_defs", scope: !2547, file: !3, line: 1398, type: !2554)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheap_t", file: !2555, line: 57, baseType: !2556)
!2555 = !DIFile(filename: "./include/fibheap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibheap", file: !2555, line: 52, size: 192, elements: !2558)
!2558 = !{!2559, !2560, !2573}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !2557, file: !2555, line: 54, baseType: !1266, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2557, file: !2555, line: 55, baseType: !2561, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibnode", file: !2555, line: 59, size: 448, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2570, !2571, !2572}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2562, file: !2555, line: 61, baseType: !2561, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2562, file: !2555, line: 62, baseType: !2561, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !2562, file: !2555, line: 63, baseType: !2561, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !2562, file: !2555, line: 64, baseType: !2561, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2562, file: !2555, line: 65, baseType: !2569, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheapkey_t", file: !2555, line: 50, baseType: !753)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2562, file: !2555, line: 66, baseType: !747, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "degree", scope: !2562, file: !2555, line: 71, baseType: !7, size: 31, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !2562, file: !2555, line: 72, baseType: !7, size: 1, offset: 415, flags: DIFlagBitField, extraData: i64 384)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2557, file: !2555, line: 56, baseType: !2561, size: 64, offset: 128)
!2574 = !DILocalVariable(name: "reg", scope: !2547, file: !3, line: 1399, type: !743)
!2575 = !DILocalVariable(name: "i", scope: !2576, file: !3, line: 1404, type: !743)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1403, column: 5)
!2577 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 1402, column: 7)
!2578 = !DILocalVariable(name: "bb", scope: !2579, file: !3, line: 1408, type: !768)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 1407, column: 2)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 1406, column: 7)
!2581 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 1406, column: 7)
!2582 = !DILocalVariable(name: "def", scope: !2583, file: !3, line: 1436, type: !761)
!2583 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 1435, column: 5)
!2584 = !DILocalVariable(name: "min_cost", scope: !2583, file: !3, line: 1437, type: !743)
!2585 = !DILocation(line: 0, scope: !2547)
!2586 = !DILocation(line: 1398, column: 28, scope: !2547)
!2587 = !DILocation(line: 1401, column: 3, scope: !2547)
!2588 = !DILocation(line: 1402, column: 7, scope: !2577)
!2589 = !DILocation(line: 1402, column: 7, scope: !2547)
!2590 = !DILocation(line: 1406, column: 7, scope: !2581)
!2591 = !DILocation(line: 0, scope: !2581)
!2592 = !DILocation(line: 0, scope: !2576)
!2593 = !DILocation(line: 1406, column: 38, scope: !2580)
!2594 = !DILocation(line: 1406, column: 36, scope: !2580)
!2595 = !DILocation(line: 1408, column: 21, scope: !2579)
!2596 = !DILocation(line: 0, scope: !2579)
!2597 = !DILocation(line: 1409, column: 12, scope: !2579)
!2598 = !DILocation(line: 1412, column: 31, scope: !2579)
!2599 = !DILocation(line: 1412, column: 42, scope: !2579)
!2600 = !DILocation(line: 1413, column: 6, scope: !2579)
!2601 = !DILocation(line: 1413, column: 52, scope: !2579)
!2602 = !DILocation(line: 1409, column: 4, scope: !2579)
!2603 = !DILocation(line: 1406, column: 57, scope: !2580)
!2604 = !DILocation(line: 1406, column: 7, scope: !2580)
!2605 = distinct !{!2605, !2590, !2606}
!2606 = !DILocation(line: 1414, column: 2, scope: !2581)
!2607 = !DILocation(line: 1417, column: 3, scope: !2547)
!2608 = !DILocation(line: 1418, column: 18, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 1418, column: 3)
!2610 = !DILocation(line: 0, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 1419, column: 9)
!2612 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1418, column: 3)
!2613 = !DILocation(line: 1418, column: 8, scope: !2609)
!2614 = !DILocation(line: 0, scope: !2609)
!2615 = !DILocation(line: 1418, column: 37, scope: !2612)
!2616 = !DILocation(line: 1418, column: 3, scope: !2609)
!2617 = !DILocation(line: 1419, column: 9, scope: !2611)
!2618 = !DILocation(line: 1420, column: 2, scope: !2611)
!2619 = !DILocation(line: 1420, column: 27, scope: !2611)
!2620 = !DILocation(line: 1421, column: 6, scope: !2611)
!2621 = !DILocation(line: 1421, column: 9, scope: !2611)
!2622 = !DILocation(line: 1419, column: 9, scope: !2612)
!2623 = !DILocation(line: 1423, column: 2, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 1422, column: 7)
!2625 = !DILocation(line: 1424, column: 11, scope: !2624)
!2626 = !DILocation(line: 1425, column: 6, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 1425, column: 6)
!2628 = !DILocation(line: 1425, column: 16, scope: !2627)
!2629 = !DILocation(line: 1425, column: 6, scope: !2624)
!2630 = !DILocation(line: 1426, column: 14, scope: !2627)
!2631 = !DILocation(line: 1426, column: 4, scope: !2627)
!2632 = !DILocation(line: 1418, column: 65, scope: !2612)
!2633 = !DILocation(line: 1418, column: 3, scope: !2612)
!2634 = distinct !{!2634, !2616, !2635}
!2635 = !DILocation(line: 1427, column: 7, scope: !2609)
!2636 = !DILocation(line: 1429, column: 15, scope: !2547)
!2637 = !DILocation(line: 1429, column: 13, scope: !2547)
!2638 = !DILocation(line: 1430, column: 22, scope: !2547)
!2639 = !DILocation(line: 1430, column: 20, scope: !2547)
!2640 = !DILocation(line: 1432, column: 3, scope: !2547)
!2641 = !DILocation(line: 1434, column: 3, scope: !2547)
!2642 = !DILocation(line: 1434, column: 11, scope: !2547)
!2643 = !DILocation(line: 1434, column: 10, scope: !2547)
!2644 = !DILocation(line: 1436, column: 31, scope: !2583)
!2645 = !DILocation(line: 1436, column: 21, scope: !2583)
!2646 = !DILocation(line: 0, scope: !2583)
!2647 = !DILocation(line: 1437, column: 23, scope: !2583)
!2648 = !DILocation(line: 1437, column: 22, scope: !2583)
!2649 = !DILocation(line: 1438, column: 11, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 1438, column: 11)
!2651 = !DILocation(line: 1438, column: 11, scope: !2583)
!2652 = !DILocation(line: 1440, column: 40, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 1439, column: 2)
!2654 = !DILocation(line: 1440, column: 34, scope: !2653)
!2655 = !DILocation(line: 1440, column: 4, scope: !2653)
!2656 = !DILocation(line: 1441, column: 8, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 1441, column: 8)
!2658 = !DILocation(line: 1441, column: 8, scope: !2653)
!2659 = !DILocation(line: 1445, column: 3, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 1442, column: 6)
!2661 = !DILocation(line: 1445, column: 30, scope: !2660)
!2662 = !DILocation(line: 1443, column: 8, scope: !2660)
!2663 = !DILocation(line: 1446, column: 6, scope: !2660)
!2664 = !DILocation(line: 1449, column: 2, scope: !2650)
!2665 = distinct !{!2665, !2641, !2666}
!2666 = !DILocation(line: 1450, column: 5, scope: !2547)
!2667 = !DILocation(line: 1452, column: 9, scope: !2547)
!2668 = !DILocation(line: 1452, column: 3, scope: !2547)
!2669 = !DILocation(line: 1453, column: 9, scope: !2547)
!2670 = !DILocation(line: 1453, column: 3, scope: !2547)
!2671 = !DILocation(line: 1454, column: 3, scope: !2547)
!2672 = !DILocation(line: 1455, column: 3, scope: !2547)
!2673 = !DILocation(line: 1456, column: 1, scope: !2547)
!2674 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !356, file: !356, line: 281, type: !2675, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2679)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!768, !2677, !7}
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1335)
!2679 = !{!2680, !2681}
!2680 = !DILocalVariable(name: "vec_", arg: 1, scope: !2674, file: !356, line: 281, type: !2677)
!2681 = !DILocalVariable(name: "ix_", arg: 2, scope: !2674, file: !356, line: 281, type: !7)
!2682 = !DILocation(line: 0, scope: !2674)
!2683 = !DILocation(line: 281, column: 1, scope: !2674)
!2684 = distinct !DISubprogram(name: "build_btr_def_use_webs", scope: !3, file: !3, line: 776, type: !2685, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{null, !2554}
!2687 = !{!2688, !2689, !2691, !2692, !2693, !2694, !2695, !2696, !2697}
!2688 = !DILocalVariable(name: "all_btr_defs", arg: 1, scope: !2684, file: !3, line: 776, type: !2554)
!2689 = !DILocalVariable(name: "max_uid", scope: !2684, file: !3, line: 778, type: !2690)
!2690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!2691 = !DILocalVariable(name: "def_array", scope: !2684, file: !3, line: 779, type: !1963)
!2692 = !DILocalVariable(name: "use_array", scope: !2684, file: !3, line: 780, type: !1964)
!2693 = !DILocalVariable(name: "btr_defset", scope: !2684, file: !3, line: 781, type: !1984)
!2694 = !DILocalVariable(name: "bb_gen", scope: !2684, file: !3, line: 783, type: !1984)
!2695 = !DILocalVariable(name: "btrs_written", scope: !2684, file: !3, line: 784, type: !760)
!2696 = !DILocalVariable(name: "bb_kill", scope: !2684, file: !3, line: 785, type: !1984)
!2697 = !DILocalVariable(name: "bb_out", scope: !2684, file: !3, line: 786, type: !1984)
!2698 = !DILocation(line: 0, scope: !2684)
!2699 = !DILocation(line: 778, column: 23, scope: !2684)
!2700 = !DILocation(line: 779, column: 27, scope: !2684)
!2701 = !DILocation(line: 780, column: 27, scope: !2684)
!2702 = !DILocation(line: 782, column: 8, scope: !2684)
!2703 = !DILocation(line: 782, column: 19, scope: !2684)
!2704 = !DILocation(line: 782, column: 17, scope: !2684)
!2705 = !DILocation(line: 782, column: 30, scope: !2684)
!2706 = !DILocation(line: 781, column: 27, scope: !2684)
!2707 = !DILocation(line: 783, column: 48, scope: !2684)
!2708 = !DILocation(line: 783, column: 26, scope: !2684)
!2709 = !DILocation(line: 784, column: 32, scope: !2684)
!2710 = !DILocation(line: 788, column: 37, scope: !2684)
!2711 = !DILocation(line: 788, column: 48, scope: !2684)
!2712 = !DILocation(line: 788, column: 46, scope: !2684)
!2713 = !DILocation(line: 788, column: 59, scope: !2684)
!2714 = !DILocation(line: 788, column: 3, scope: !2684)
!2715 = !DILocation(line: 790, column: 3, scope: !2684)
!2716 = !DILocation(line: 793, column: 35, scope: !2684)
!2717 = !DILocation(line: 793, column: 13, scope: !2684)
!2718 = !DILocation(line: 794, column: 3, scope: !2684)
!2719 = !DILocation(line: 795, column: 3, scope: !2684)
!2720 = !DILocation(line: 797, column: 34, scope: !2684)
!2721 = !DILocation(line: 797, column: 12, scope: !2684)
!2722 = !DILocation(line: 798, column: 3, scope: !2684)
!2723 = !DILocation(line: 800, column: 3, scope: !2684)
!2724 = !DILocation(line: 801, column: 3, scope: !2684)
!2725 = !DILocation(line: 803, column: 3, scope: !2684)
!2726 = !DILocation(line: 805, column: 3, scope: !2684)
!2727 = !DILocation(line: 806, column: 3, scope: !2684)
!2728 = !DILocation(line: 807, column: 3, scope: !2684)
!2729 = !DILocation(line: 808, column: 3, scope: !2684)
!2730 = !DILocation(line: 809, column: 1, scope: !2684)
!2731 = distinct !DISubprogram(name: "migrate_btr_def", scope: !3, file: !3, line: 1270, type: !2732, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!743, !761, !743}
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2750, !2757, !2758}
!2735 = !DILocalVariable(name: "def", arg: 1, scope: !2731, file: !3, line: 1270, type: !761)
!2736 = !DILocalVariable(name: "min_cost", arg: 2, scope: !2731, file: !3, line: 1270, type: !743)
!2737 = !DILocalVariable(name: "live_range", scope: !2731, file: !3, line: 1272, type: !1961)
!2738 = !DILocalVariable(name: "btrs_live_in_range", scope: !2731, file: !3, line: 1273, type: !757)
!2739 = !DILocalVariable(name: "btr_used_near_def", scope: !2731, file: !3, line: 1274, type: !743)
!2740 = !DILocalVariable(name: "def_basic_block_freq", scope: !2731, file: !3, line: 1275, type: !743)
!2741 = !DILocalVariable(name: "attempt", scope: !2731, file: !3, line: 1276, type: !768)
!2742 = !DILocalVariable(name: "give_up", scope: !2731, file: !3, line: 1277, type: !743)
!2743 = !DILocalVariable(name: "def_moved", scope: !2731, file: !3, line: 1278, type: !743)
!2744 = !DILocalVariable(name: "user", scope: !2731, file: !3, line: 1279, type: !1944)
!2745 = !DILocalVariable(name: "def_latency", scope: !2731, file: !3, line: 1280, type: !743)
!2746 = !DILocalVariable(name: "try_freq", scope: !2747, file: !3, line: 1336, type: !743)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 1333, column: 5)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1330, column: 3)
!2749 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1330, column: 3)
!2750 = !DILocalVariable(name: "ei", scope: !2747, file: !3, line: 1337, type: !2751)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !356, line: 682, baseType: !2752)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 679, size: 128, elements: !2753)
!2753 = !{!2754, !2755}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2752, file: !356, line: 680, baseType: !7, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2752, file: !356, line: 681, baseType: !2756, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!2757 = !DILocalVariable(name: "e", scope: !2747, file: !3, line: 1338, type: !786)
!2758 = !DILocalVariable(name: "btr", scope: !2759, file: !3, line: 1353, type: !743)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1352, column: 2)
!2760 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1350, column: 11)
!2761 = !DILocation(line: 0, scope: !2731)
!2762 = !DILocation(line: 1273, column: 3, scope: !2731)
!2763 = !DILocation(line: 1282, column: 7, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1282, column: 7)
!2765 = !DILocation(line: 1282, column: 7, scope: !2731)
!2766 = !DILocation(line: 1285, column: 7, scope: !2764)
!2767 = !DILocation(line: 1285, column: 34, scope: !2764)
!2768 = !DILocation(line: 1283, column: 5, scope: !2764)
!2769 = !DILocation(line: 1287, column: 13, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1287, column: 7)
!2771 = !DILocation(line: 1287, column: 8, scope: !2770)
!2772 = !DILocation(line: 1287, column: 19, scope: !2770)
!2773 = !DILocation(line: 1287, column: 27, scope: !2770)
!2774 = !DILocation(line: 1287, column: 22, scope: !2770)
!2775 = !DILocation(line: 1287, column: 7, scope: !2731)
!2776 = !DILocation(line: 1290, column: 11, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 1290, column: 11)
!2778 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1289, column: 5)
!2779 = !DILocation(line: 1290, column: 11, scope: !2778)
!2780 = !DILocation(line: 1291, column: 2, scope: !2777)
!2781 = !DILocation(line: 1295, column: 13, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1295, column: 7)
!2783 = !DILocation(line: 1295, column: 8, scope: !2782)
!2784 = !DILocation(line: 1295, column: 7, scope: !2731)
!2785 = !DILocation(line: 1300, column: 11, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1300, column: 11)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1299, column: 5)
!2788 = !DILocation(line: 1300, column: 11, scope: !2787)
!2789 = !DILocation(line: 1301, column: 2, scope: !2786)
!2790 = !DILocation(line: 1305, column: 3, scope: !2731)
!2791 = !DILocation(line: 1306, column: 16, scope: !2731)
!2792 = !DILocation(line: 1307, column: 33, scope: !2731)
!2793 = !DILocation(line: 1307, column: 3, scope: !2731)
!2794 = !DILocation(line: 1310, column: 44, scope: !2731)
!2795 = !DILocation(line: 1310, column: 17, scope: !2731)
!2796 = !DILocation(line: 1310, column: 52, scope: !2731)
!2797 = !DILocation(line: 1310, column: 50, scope: !2731)
!2798 = !DILocation(line: 1320, column: 27, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1317, column: 11)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 1316, column: 5)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 1315, column: 3)
!2802 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1315, column: 3)
!2803 = !DILocation(line: 0, scope: !2799)
!2804 = !DILocation(line: 1315, column: 8, scope: !2802)
!2805 = !DILocation(line: 0, scope: !2802)
!2806 = !DILocation(line: 1315, column: 31, scope: !2801)
!2807 = !DILocation(line: 1315, column: 3, scope: !2802)
!2808 = !DILocation(line: 1317, column: 17, scope: !2799)
!2809 = !DILocation(line: 1317, column: 28, scope: !2799)
!2810 = !DILocation(line: 1317, column: 20, scope: !2799)
!2811 = !DILocation(line: 1318, column: 4, scope: !2799)
!2812 = !DILocation(line: 1318, column: 13, scope: !2799)
!2813 = !DILocation(line: 1318, column: 25, scope: !2799)
!2814 = !DILocation(line: 1318, column: 18, scope: !2799)
!2815 = !DILocation(line: 1319, column: 4, scope: !2799)
!2816 = !DILocation(line: 1319, column: 18, scope: !2799)
!2817 = !DILocation(line: 1319, column: 33, scope: !2799)
!2818 = !DILocation(line: 1320, column: 4, scope: !2799)
!2819 = !DILocation(line: 1320, column: 36, scope: !2799)
!2820 = !DILocation(line: 1321, column: 34, scope: !2799)
!2821 = !DILocation(line: 1320, column: 9, scope: !2799)
!2822 = !DILocation(line: 1317, column: 11, scope: !2800)
!2823 = !DILocation(line: 1315, column: 53, scope: !2801)
!2824 = !DILocation(line: 1315, column: 3, scope: !2801)
!2825 = distinct !{!2825, !2807, !2826}
!2826 = !DILocation(line: 1326, column: 5, scope: !2802)
!2827 = !DILocation(line: 1328, column: 49, scope: !2731)
!2828 = !DILocation(line: 1328, column: 26, scope: !2731)
!2829 = !DILocation(line: 1330, column: 64, scope: !2749)
!2830 = !DILocation(line: 1330, column: 18, scope: !2749)
!2831 = !DILocation(line: 1331, column: 66, scope: !2748)
!2832 = !DILocation(line: 0, scope: !2747)
!2833 = !DILocation(line: 0, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1341, column: 7)
!2835 = !DILocation(line: 0, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 1341, column: 7)
!2837 = !DILocation(line: 1330, column: 8, scope: !2749)
!2838 = !DILocation(line: 1278, column: 7, scope: !2731)
!2839 = !DILocation(line: 1277, column: 7, scope: !2731)
!2840 = !DILocation(line: 0, scope: !2749)
!2841 = !DILocation(line: 1328, column: 24, scope: !2731)
!2842 = !DILocation(line: 1323, column: 22, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 1322, column: 2)
!2844 = !DILocation(line: 1331, column: 9, scope: !2748)
!2845 = !DILocation(line: 1331, column: 20, scope: !2748)
!2846 = !DILocation(line: 1331, column: 17, scope: !2748)
!2847 = !DILocation(line: 1331, column: 42, scope: !2748)
!2848 = !DILocation(line: 1331, column: 39, scope: !2748)
!2849 = !DILocation(line: 1331, column: 58, scope: !2748)
!2850 = !DILocation(line: 1331, column: 71, scope: !2748)
!2851 = !DILocation(line: 1330, column: 3, scope: !2749)
!2852 = !DILocation(line: 1336, column: 22, scope: !2747)
!2853 = !DILocation(line: 1337, column: 7, scope: !2747)
!2854 = !DILocation(line: 1338, column: 7, scope: !2747)
!2855 = !DILocation(line: 1341, column: 7, scope: !2834)
!2856 = !DILocation(line: 1341, column: 7, scope: !2836)
!2857 = !DILocation(line: 1344, column: 11, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1344, column: 11)
!2859 = !DILocation(line: 1342, column: 6, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 1342, column: 6)
!2861 = !DILocation(line: 1342, column: 9, scope: !2860)
!2862 = !DILocation(line: 1342, column: 15, scope: !2860)
!2863 = !DILocation(line: 1342, column: 6, scope: !2836)
!2864 = distinct !{!2864, !2855, !2865}
!2865 = !DILocation(line: 1343, column: 4, scope: !2834)
!2866 = !DILocation(line: 1344, column: 11, scope: !2747)
!2867 = !DILocation(line: 1347, column: 11, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1347, column: 11)
!2869 = !DILocation(line: 1347, column: 11, scope: !2747)
!2870 = !DILocation(line: 1348, column: 54, scope: !2868)
!2871 = !DILocation(line: 1348, column: 2, scope: !2868)
!2872 = !DILocation(line: 1350, column: 20, scope: !2760)
!2873 = !DILocation(line: 1351, column: 4, scope: !2760)
!2874 = !DILocation(line: 1351, column: 17, scope: !2760)
!2875 = !DILocation(line: 1351, column: 44, scope: !2760)
!2876 = !DILocation(line: 1351, column: 41, scope: !2760)
!2877 = !DILocation(line: 1354, column: 62, scope: !2759)
!2878 = !DILocation(line: 1355, column: 10, scope: !2759)
!2879 = !DILocation(line: 1354, column: 4, scope: !2759)
!2880 = !DILocation(line: 1356, column: 8, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 1356, column: 8)
!2882 = !DILocation(line: 1356, column: 8, scope: !2759)
!2883 = !DILocation(line: 1358, column: 8, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1357, column: 6)
!2885 = !DILocation(line: 1359, column: 27, scope: !2884)
!2886 = !DILocation(line: 1359, column: 8, scope: !2884)
!2887 = !DILocation(line: 1360, column: 17, scope: !2884)
!2888 = !DILocation(line: 1360, column: 8, scope: !2884)
!2889 = !DILocation(line: 1361, column: 6, scope: !2884)
!2890 = !DILocation(line: 1362, column: 22, scope: !2759)
!2891 = !DILocation(line: 1362, column: 10, scope: !2759)
!2892 = !DILocation(line: 0, scope: !2759)
!2893 = !DILocation(line: 1363, column: 12, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 1363, column: 8)
!2895 = !DILocation(line: 1363, column: 8, scope: !2759)
!2896 = !DILocation(line: 1365, column: 8, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 1364, column: 6)
!2898 = !DILocation(line: 1366, column: 37, scope: !2897)
!2899 = !DILocation(line: 1366, column: 8, scope: !2897)
!2900 = !DILocation(line: 1369, column: 54, scope: !2897)
!2901 = !DILocation(line: 1369, column: 31, scope: !2897)
!2902 = !DILocation(line: 1370, column: 6, scope: !2897)
!2903 = !DILocation(line: 1376, column: 12, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 1376, column: 12)
!2905 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 1372, column: 6)
!2906 = !DILocation(line: 1376, column: 12, scope: !2905)
!2907 = !DILocation(line: 1377, column: 3, scope: !2904)
!2908 = !DILocation(line: 1382, column: 5, scope: !2748)
!2909 = !DILocation(line: 1332, column: 18, scope: !2748)
!2910 = !DILocation(line: 1330, column: 3, scope: !2748)
!2911 = distinct !{!2911, !2851, !2912}
!2912 = !DILocation(line: 1382, column: 5, scope: !2749)
!2913 = !DILocation(line: 1383, column: 8, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 1383, column: 7)
!2915 = !DILocation(line: 1383, column: 7, scope: !2731)
!2916 = !DILocation(line: 1386, column: 11, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1386, column: 11)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1384, column: 5)
!2919 = !DILocation(line: 1386, column: 11, scope: !2918)
!2920 = !DILocation(line: 1387, column: 2, scope: !2917)
!2921 = !DILocation(line: 1389, column: 3, scope: !2731)
!2922 = !DILocation(line: 1390, column: 10, scope: !2731)
!2923 = !DILocation(line: 1390, column: 3, scope: !2731)
!2924 = !DILocation(line: 1391, column: 1, scope: !2731)
!2925 = distinct !DISubprogram(name: "compute_defs_uses_and_gen", scope: !3, file: !3, line: 445, type: !2926, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !2554, !1963, !1964, !1984, !1984, !760}
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2943, !2944, !2945, !2946, !2947, !2948, !2954, !2955, !2958, !2961, !2965, !2968, !2971, !2972, !2973, !2974, !2977}
!2929 = !DILocalVariable(name: "all_btr_defs", arg: 1, scope: !2925, file: !3, line: 445, type: !2554)
!2930 = !DILocalVariable(name: "def_array", arg: 2, scope: !2925, file: !3, line: 445, type: !1963)
!2931 = !DILocalVariable(name: "use_array", arg: 3, scope: !2925, file: !3, line: 446, type: !1964)
!2932 = !DILocalVariable(name: "btr_defset", arg: 4, scope: !2925, file: !3, line: 446, type: !1984)
!2933 = !DILocalVariable(name: "bb_gen", arg: 5, scope: !2925, file: !3, line: 447, type: !1984)
!2934 = !DILocalVariable(name: "btrs_written", arg: 6, scope: !2925, file: !3, line: 447, type: !760)
!2935 = !DILocalVariable(name: "i", scope: !2925, file: !3, line: 455, type: !743)
!2936 = !DILocalVariable(name: "insn_luid", scope: !2925, file: !3, line: 456, type: !743)
!2937 = !DILocalVariable(name: "all_btr_def_groups", scope: !2925, file: !3, line: 457, type: !1936)
!2938 = !DILocalVariable(name: "info", scope: !2925, file: !3, line: 458, type: !1966)
!2939 = !DILocalVariable(name: "bb", scope: !2940, file: !3, line: 463, type: !768)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 462, column: 5)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 461, column: 3)
!2942 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 461, column: 3)
!2943 = !DILocalVariable(name: "reg", scope: !2940, file: !3, line: 464, type: !743)
!2944 = !DILocalVariable(name: "defs_this_bb", scope: !2940, file: !3, line: 465, type: !761)
!2945 = !DILocalVariable(name: "insn", scope: !2940, file: !3, line: 466, type: !800)
!2946 = !DILocalVariable(name: "last", scope: !2940, file: !3, line: 467, type: !800)
!2947 = !DILocalVariable(name: "can_throw", scope: !2940, file: !3, line: 468, type: !743)
!2948 = !DILocalVariable(name: "regno", scope: !2949, file: !3, line: 487, type: !743)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 486, column: 6)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 485, column: 8)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 484, column: 2)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 481, column: 7)
!2953 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 481, column: 7)
!2954 = !DILocalVariable(name: "insn_uid", scope: !2949, file: !3, line: 488, type: !743)
!2955 = !DILocalVariable(name: "def", scope: !2956, file: !3, line: 492, type: !761)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 491, column: 3)
!2957 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 490, column: 12)
!2958 = !DILocalVariable(name: "user", scope: !2959, file: !3, line: 512, type: !1944)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 511, column: 3)
!2960 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 509, column: 17)
!2961 = !DILocalVariable(name: "user", scope: !2962, file: !3, line: 528, type: !1944)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 527, column: 7)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 526, column: 9)
!2964 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 525, column: 3)
!2965 = !DILocalVariable(name: "reg", scope: !2966, file: !3, line: 536, type: !743)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 535, column: 4)
!2967 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 531, column: 13)
!2968 = !DILocalVariable(name: "clobbered", scope: !2969, file: !3, line: 553, type: !760)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 552, column: 7)
!2970 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 551, column: 9)
!2971 = !DILocalVariable(name: "call_saved", scope: !2969, file: !3, line: 554, type: !757)
!2972 = !DILocalVariable(name: "pat", scope: !2969, file: !3, line: 555, type: !800)
!2973 = !DILocalVariable(name: "i", scope: !2969, file: !3, line: 556, type: !743)
!2974 = !DILocalVariable(name: "tmp", scope: !2975, file: !3, line: 591, type: !757)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 590, column: 2)
!2976 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 589, column: 11)
!2977 = !DILocalVariable(name: "regno", scope: !2978, file: !3, line: 600, type: !743)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 599, column: 2)
!2979 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 598, column: 11)
!2980 = !DILocation(line: 0, scope: !2925)
!2981 = !DILocation(line: 457, column: 3, scope: !2925)
!2982 = !DILocation(line: 457, column: 17, scope: !2925)
!2983 = !DILocation(line: 458, column: 3, scope: !2925)
!2984 = !DILocation(line: 460, column: 32, scope: !2925)
!2985 = !DILocation(line: 460, column: 3, scope: !2925)
!2986 = !DILocation(line: 0, scope: !2940)
!2987 = !DILocation(line: 0, scope: !2949)
!2988 = !DILocation(line: 0, scope: !2962)
!2989 = !DILocation(line: 0, scope: !2969)
!2990 = !DILocation(line: 461, column: 8, scope: !2942)
!2991 = !DILocation(line: 456, column: 7, scope: !2925)
!2992 = !DILocation(line: 461, column: 34, scope: !2941)
!2993 = !DILocation(line: 461, column: 32, scope: !2941)
!2994 = !DILocation(line: 461, column: 3, scope: !2942)
!2995 = !DILocation(line: 463, column: 24, scope: !2940)
!2996 = !DILocation(line: 470, column: 26, scope: !2940)
!2997 = !DILocation(line: 471, column: 21, scope: !2940)
!2998 = !DILocation(line: 471, column: 19, scope: !2940)
!2999 = !DILocation(line: 472, column: 23, scope: !2940)
!3000 = !DILocation(line: 474, column: 7, scope: !2940)
!3001 = !DILocation(line: 475, column: 7, scope: !2940)
!3002 = !DILocation(line: 476, column: 18, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 476, column: 7)
!3004 = !DILocation(line: 476, column: 12, scope: !3003)
!3005 = !DILocation(line: 0, scope: !3003)
!3006 = !DILocation(line: 476, column: 36, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 476, column: 7)
!3008 = !DILocation(line: 476, column: 33, scope: !3007)
!3009 = !DILocation(line: 476, column: 7, scope: !3003)
!3010 = !DILocation(line: 477, column: 6, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 477, column: 6)
!3012 = !DILocation(line: 478, column: 6, scope: !3011)
!3013 = !DILocation(line: 478, column: 9, scope: !3011)
!3014 = !DILocation(line: 477, column: 6, scope: !3007)
!3015 = !DILocation(line: 479, column: 4, scope: !3011)
!3016 = !DILocation(line: 476, column: 49, scope: !3007)
!3017 = !DILocation(line: 476, column: 7, scope: !3007)
!3018 = distinct !{!3018, !3009, !3019}
!3019 = !DILocation(line: 479, column: 4, scope: !3003)
!3020 = !DILocation(line: 481, column: 19, scope: !2953)
!3021 = !DILocation(line: 481, column: 40, scope: !2953)
!3022 = !DILocation(line: 481, column: 12, scope: !2953)
!3023 = !DILocation(line: 0, scope: !2953)
!3024 = !DILocation(line: 482, column: 10, scope: !2952)
!3025 = !DILocation(line: 481, column: 7, scope: !2953)
!3026 = !DILocation(line: 485, column: 8, scope: !2950)
!3027 = !DILocation(line: 485, column: 8, scope: !2951)
!3028 = !DILocation(line: 487, column: 8, scope: !2949)
!3029 = !DILocation(line: 488, column: 23, scope: !2949)
!3030 = !DILocation(line: 490, column: 12, scope: !2957)
!3031 = !DILocation(line: 490, column: 12, scope: !2949)
!3032 = !DILocation(line: 493, column: 44, scope: !2956)
!3033 = !DILocation(line: 494, column: 9, scope: !2956)
!3034 = !DILocation(line: 492, column: 19, scope: !2956)
!3035 = !DILocation(line: 0, scope: !2956)
!3036 = !DILocation(line: 497, column: 5, scope: !2956)
!3037 = !DILocation(line: 497, column: 25, scope: !2956)
!3038 = !DILocation(line: 498, column: 5, scope: !2956)
!3039 = !DILocation(line: 499, column: 5, scope: !2956)
!3040 = !DILocation(line: 500, column: 25, scope: !2956)
!3041 = !DILocation(line: 501, column: 30, scope: !2956)
!3042 = !DILocation(line: 501, column: 28, scope: !2956)
!3043 = !DILocation(line: 501, column: 11, scope: !2956)
!3044 = !DILocation(line: 500, column: 5, scope: !2956)
!3045 = !DILocation(line: 502, column: 14, scope: !2956)
!3046 = !DILocation(line: 502, column: 5, scope: !2956)
!3047 = !DILocation(line: 503, column: 10, scope: !2956)
!3048 = !DILocation(line: 503, column: 23, scope: !2956)
!3049 = !DILocation(line: 505, column: 25, scope: !2956)
!3050 = !DILocation(line: 505, column: 33, scope: !2956)
!3051 = !DILocation(line: 505, column: 31, scope: !2956)
!3052 = !DILocation(line: 505, column: 14, scope: !2956)
!3053 = !DILocation(line: 505, column: 5, scope: !2956)
!3054 = !DILocation(line: 506, column: 32, scope: !2956)
!3055 = !DILocation(line: 506, column: 44, scope: !2956)
!3056 = !DILocation(line: 506, column: 5, scope: !2956)
!3057 = !DILocation(line: 507, column: 3, scope: !2956)
!3058 = !DILocation(line: 509, column: 17, scope: !2960)
!3059 = !DILocation(line: 509, column: 23, scope: !2960)
!3060 = !DILocation(line: 510, column: 10, scope: !2960)
!3061 = !DILocation(line: 0, scope: !2963)
!3062 = !DILocation(line: 526, column: 27, scope: !2963)
!3063 = !DILocation(line: 510, column: 13, scope: !2960)
!3064 = !DILocation(line: 510, column: 39, scope: !2960)
!3065 = !DILocation(line: 509, column: 17, scope: !2957)
!3066 = !DILocation(line: 516, column: 22, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 516, column: 5)
!3068 = !DILocation(line: 0, scope: !2959)
!3069 = !DILocation(line: 516, column: 10, scope: !3067)
!3070 = !DILocation(line: 0, scope: !3067)
!3071 = !DILocation(line: 516, column: 42, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 516, column: 5)
!3073 = !DILocation(line: 516, column: 5, scope: !3067)
!3074 = !DILocation(line: 518, column: 17, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 518, column: 11)
!3076 = !DILocation(line: 518, column: 11, scope: !3075)
!3077 = !DILocation(line: 518, column: 11, scope: !3072)
!3078 = !DILocation(line: 519, column: 15, scope: !3075)
!3079 = !DILocation(line: 519, column: 36, scope: !3075)
!3080 = !DILocation(line: 519, column: 9, scope: !3075)
!3081 = !DILocation(line: 517, column: 23, scope: !3072)
!3082 = !DILocation(line: 516, column: 5, scope: !3072)
!3083 = distinct !{!3083, !3073, !3084}
!3084 = !DILocation(line: 519, column: 38, scope: !3067)
!3085 = !DILocation(line: 520, column: 5, scope: !2959)
!3086 = !DILocation(line: 521, column: 5, scope: !2959)
!3087 = !DILocation(line: 522, column: 24, scope: !2959)
!3088 = !DILocation(line: 522, column: 5, scope: !2959)
!3089 = !DILocation(line: 523, column: 3, scope: !2959)
!3090 = !DILocation(line: 526, column: 9, scope: !2963)
!3091 = !DILocation(line: 526, column: 9, scope: !2964)
!3092 = !DILocation(line: 528, column: 25, scope: !2962)
!3093 = !DILocation(line: 530, column: 9, scope: !2962)
!3094 = !DILocation(line: 530, column: 29, scope: !2962)
!3095 = !DILocation(line: 531, column: 19, scope: !2967)
!3096 = !DILocation(line: 531, column: 13, scope: !2967)
!3097 = !DILocation(line: 531, column: 13, scope: !2962)
!3098 = !DILocation(line: 532, column: 4, scope: !2967)
!3099 = !DILocation(line: 537, column: 17, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 537, column: 6)
!3101 = !DILocation(line: 0, scope: !2966)
!3102 = !DILocation(line: 0, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 538, column: 12)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 537, column: 6)
!3105 = !DILocation(line: 537, column: 11, scope: !3100)
!3106 = !DILocation(line: 0, scope: !3100)
!3107 = !DILocation(line: 537, column: 35, scope: !3104)
!3108 = !DILocation(line: 537, column: 32, scope: !3104)
!3109 = !DILocation(line: 537, column: 6, scope: !3100)
!3110 = !DILocation(line: 538, column: 12, scope: !3103)
!3111 = !DILocation(line: 539, column: 5, scope: !3103)
!3112 = !DILocation(line: 537, column: 48, scope: !3104)
!3113 = !DILocation(line: 539, column: 36, scope: !3103)
!3114 = !DILocation(line: 539, column: 47, scope: !3103)
!3115 = !DILocation(line: 539, column: 8, scope: !3103)
!3116 = !DILocation(line: 538, column: 12, scope: !3104)
!3117 = !DILocation(line: 543, column: 16, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 541, column: 10)
!3119 = !DILocation(line: 542, column: 5, scope: !3118)
!3120 = !DILocation(line: 544, column: 5, scope: !3118)
!3121 = !DILocation(line: 545, column: 10, scope: !3118)
!3122 = !DILocation(line: 537, column: 6, scope: !3104)
!3123 = distinct !{!3123, !3109, !3124}
!3124 = !DILocation(line: 545, column: 10, scope: !3100)
!3125 = !DILocation(line: 546, column: 19, scope: !2966)
!3126 = !DILocation(line: 546, column: 6, scope: !2966)
!3127 = !DILocation(line: 548, column: 27, scope: !2962)
!3128 = !DILocation(line: 548, column: 20, scope: !2962)
!3129 = !DILocation(line: 549, column: 28, scope: !2962)
!3130 = !DILocation(line: 550, column: 7, scope: !2962)
!3131 = !DILocation(line: 551, column: 9, scope: !2970)
!3132 = !DILocation(line: 551, column: 9, scope: !2964)
!3133 = !DILocation(line: 554, column: 9, scope: !2969)
!3134 = !DILocation(line: 555, column: 19, scope: !2969)
!3135 = !DILocation(line: 559, column: 13, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 559, column: 13)
!3137 = !DILocation(line: 559, column: 28, scope: !3136)
!3138 = !DILocation(line: 559, column: 13, scope: !2969)
!3139 = !DILocation(line: 560, column: 13, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 560, column: 4)
!3141 = !DILocation(line: 0, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 562, column: 8)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 561, column: 10)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 560, column: 4)
!3145 = !DILocation(line: 560, column: 9, scope: !3140)
!3146 = !DILocation(line: 0, scope: !3140)
!3147 = !DILocation(line: 560, column: 37, scope: !3144)
!3148 = !DILocation(line: 560, column: 4, scope: !3140)
!3149 = !DILocation(line: 561, column: 10, scope: !3143)
!3150 = !DILocation(line: 561, column: 41, scope: !3143)
!3151 = !DILocation(line: 561, column: 10, scope: !3144)
!3152 = !DILocation(line: 563, column: 10, scope: !3142)
!3153 = !DILocation(line: 566, column: 8, scope: !3142)
!3154 = !DILocation(line: 560, column: 4, scope: !3144)
!3155 = distinct !{!3155, !3148, !3156}
!3156 = !DILocation(line: 566, column: 8, scope: !3140)
!3157 = !DILocation(line: 568, column: 22, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 568, column: 9)
!3159 = !DILocation(line: 553, column: 23, scope: !2969)
!3160 = !DILocation(line: 568, column: 14, scope: !3158)
!3161 = !DILocation(line: 0, scope: !3158)
!3162 = !DILocation(line: 568, column: 42, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 568, column: 9)
!3164 = !DILocation(line: 568, column: 39, scope: !3163)
!3165 = !DILocation(line: 568, column: 9, scope: !3158)
!3166 = !DILocation(line: 569, column: 8, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 569, column: 8)
!3168 = !DILocation(line: 569, column: 8, scope: !3163)
!3169 = !DILocation(line: 570, column: 20, scope: !3167)
!3170 = !DILocation(line: 570, column: 6, scope: !3167)
!3171 = !DILocation(line: 568, column: 57, scope: !3163)
!3172 = !DILocation(line: 568, column: 9, scope: !3163)
!3173 = distinct !{!3173, !3165, !3174}
!3174 = !DILocation(line: 570, column: 57, scope: !3158)
!3175 = !DILocation(line: 571, column: 7, scope: !2970)
!3176 = !DILocation(line: 571, column: 7, scope: !2969)
!3177 = !DILocation(line: 573, column: 6, scope: !2950)
!3178 = !DILocation(line: 573, column: 6, scope: !2949)
!3179 = !DILocation(line: 483, column: 12, scope: !2952)
!3180 = !DILocation(line: 483, column: 39, scope: !2952)
!3181 = !DILocation(line: 481, column: 7, scope: !2952)
!3182 = distinct !{!3182, !3025, !3183}
!3183 = !DILocation(line: 574, column: 2, scope: !2953)
!3184 = !DILocation(line: 576, column: 7, scope: !2940)
!3185 = !DILocation(line: 577, column: 7, scope: !2940)
!3186 = !DILocation(line: 579, column: 7, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 579, column: 7)
!3188 = !DILocation(line: 582, column: 19, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 582, column: 7)
!3190 = !DILocation(line: 0, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 582, column: 7)
!3192 = !DILocation(line: 582, column: 12, scope: !3189)
!3193 = !DILocation(line: 0, scope: !3189)
!3194 = !DILocation(line: 582, column: 37, scope: !3191)
!3195 = !DILocation(line: 582, column: 53, scope: !3191)
!3196 = !DILocation(line: 582, column: 58, scope: !3191)
!3197 = !DILocation(line: 582, column: 7, scope: !3189)
!3198 = !DILocation(line: 583, column: 9, scope: !3191)
!3199 = !DILocation(line: 582, column: 7, scope: !3191)
!3200 = distinct !{!3200, !3197, !3201}
!3201 = !DILocation(line: 583, column: 9, scope: !3189)
!3202 = !DILocation(line: 589, column: 11, scope: !2976)
!3203 = !DILocation(line: 589, column: 11, scope: !2940)
!3204 = !DILocation(line: 593, column: 4, scope: !2975)
!3205 = !DILocation(line: 0, scope: !2975)
!3206 = !DILocation(line: 594, column: 4, scope: !2975)
!3207 = !DILocation(line: 595, column: 4, scope: !2975)
!3208 = !DILocation(line: 597, column: 2, scope: !2975)
!3209 = !DILocation(line: 598, column: 21, scope: !2979)
!3210 = !DILocation(line: 598, column: 24, scope: !2979)
!3211 = !DILocation(line: 598, column: 11, scope: !2940)
!3212 = !DILocation(line: 602, column: 17, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 602, column: 4)
!3214 = !DILocation(line: 0, scope: !2978)
!3215 = !DILocation(line: 602, column: 9, scope: !3213)
!3216 = !DILocation(line: 0, scope: !3213)
!3217 = !DILocation(line: 602, column: 37, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 602, column: 4)
!3219 = !DILocation(line: 602, column: 34, scope: !3218)
!3220 = !DILocation(line: 602, column: 4, scope: !3213)
!3221 = !DILocation(line: 603, column: 41, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 603, column: 10)
!3223 = !DILocation(line: 603, column: 10, scope: !3222)
!3224 = !DILocation(line: 603, column: 10, scope: !3218)
!3225 = !DILocation(line: 604, column: 8, scope: !3222)
!3226 = !DILocation(line: 602, column: 4, scope: !3218)
!3227 = distinct !{!3227, !3220, !3228}
!3228 = !DILocation(line: 604, column: 8, scope: !3213)
!3229 = !DILocation(line: 607, column: 11, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 607, column: 11)
!3231 = !DILocation(line: 607, column: 11, scope: !2940)
!3232 = !DILocation(line: 608, column: 2, scope: !3230)
!3233 = !DILocation(line: 461, column: 53, scope: !2941)
!3234 = !DILocation(line: 461, column: 3, scope: !2941)
!3235 = distinct !{!3235, !2994, !3236}
!3236 = !DILocation(line: 609, column: 5, scope: !2942)
!3237 = !DILocation(line: 610, column: 1, scope: !2925)
!3238 = distinct !DISubprogram(name: "compute_kill", scope: !3, file: !3, line: 613, type: !3239, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !1984, !1984, !760}
!3241 = !{!3242, !3243, !3244, !3245, !3246}
!3242 = !DILocalVariable(name: "bb_kill", arg: 1, scope: !3238, file: !3, line: 613, type: !1984)
!3243 = !DILocalVariable(name: "btr_defset", arg: 2, scope: !3238, file: !3, line: 613, type: !1984)
!3244 = !DILocalVariable(name: "btrs_written", arg: 3, scope: !3238, file: !3, line: 614, type: !760)
!3245 = !DILocalVariable(name: "i", scope: !3238, file: !3, line: 616, type: !743)
!3246 = !DILocalVariable(name: "regno", scope: !3238, file: !3, line: 617, type: !743)
!3247 = !DILocation(line: 0, scope: !3238)
!3248 = !DILocation(line: 621, column: 33, scope: !3238)
!3249 = !DILocation(line: 621, column: 3, scope: !3238)
!3250 = !DILocation(line: 622, column: 8, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 622, column: 3)
!3252 = !DILocation(line: 0, scope: !3251)
!3253 = !DILocation(line: 622, column: 34, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 622, column: 3)
!3255 = !DILocation(line: 622, column: 32, scope: !3254)
!3256 = !DILocation(line: 622, column: 3, scope: !3251)
!3257 = !DILocation(line: 624, column: 20, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 624, column: 7)
!3259 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 623, column: 5)
!3260 = !DILocation(line: 0, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 625, column: 6)
!3262 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 624, column: 7)
!3263 = !DILocation(line: 624, column: 12, scope: !3258)
!3264 = !DILocation(line: 0, scope: !3258)
!3265 = !DILocation(line: 624, column: 40, scope: !3262)
!3266 = !DILocation(line: 624, column: 37, scope: !3262)
!3267 = !DILocation(line: 624, column: 7, scope: !3258)
!3268 = !DILocation(line: 625, column: 6, scope: !3261)
!3269 = !DILocation(line: 626, column: 6, scope: !3261)
!3270 = !DILocation(line: 626, column: 9, scope: !3261)
!3271 = !DILocation(line: 625, column: 6, scope: !3262)
!3272 = !DILocation(line: 627, column: 20, scope: !3261)
!3273 = !DILocation(line: 628, column: 25, scope: !3261)
!3274 = !DILocation(line: 628, column: 23, scope: !3261)
!3275 = !DILocation(line: 628, column: 6, scope: !3261)
!3276 = !DILocation(line: 627, column: 4, scope: !3261)
!3277 = !DILocation(line: 624, column: 55, scope: !3262)
!3278 = !DILocation(line: 624, column: 7, scope: !3262)
!3279 = distinct !{!3279, !3267, !3280}
!3280 = !DILocation(line: 628, column: 35, scope: !3258)
!3281 = !DILocation(line: 622, column: 53, scope: !3254)
!3282 = !DILocation(line: 622, column: 3, scope: !3254)
!3283 = distinct !{!3283, !3256, !3284}
!3284 = !DILocation(line: 629, column: 5, scope: !3251)
!3285 = !DILocation(line: 630, column: 1, scope: !3238)
!3286 = distinct !DISubprogram(name: "compute_out", scope: !3, file: !3, line: 633, type: !3287, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{null, !1984, !1984, !1984, !743}
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295, !3296}
!3290 = !DILocalVariable(name: "bb_out", arg: 1, scope: !3286, file: !3, line: 633, type: !1984)
!3291 = !DILocalVariable(name: "bb_gen", arg: 2, scope: !3286, file: !3, line: 633, type: !1984)
!3292 = !DILocalVariable(name: "bb_kill", arg: 3, scope: !3286, file: !3, line: 633, type: !1984)
!3293 = !DILocalVariable(name: "max_uid", arg: 4, scope: !3286, file: !3, line: 633, type: !743)
!3294 = !DILocalVariable(name: "i", scope: !3286, file: !3, line: 641, type: !743)
!3295 = !DILocalVariable(name: "changed", scope: !3286, file: !3, line: 642, type: !743)
!3296 = !DILocalVariable(name: "bb_in", scope: !3286, file: !3, line: 643, type: !1973)
!3297 = !DILocation(line: 0, scope: !3286)
!3298 = !DILocation(line: 643, column: 19, scope: !3286)
!3299 = !DILocation(line: 645, column: 8, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 645, column: 3)
!3301 = !DILocation(line: 0, scope: !3300)
!3302 = !DILocation(line: 645, column: 34, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 645, column: 3)
!3304 = !DILocation(line: 645, column: 32, scope: !3303)
!3305 = !DILocation(line: 645, column: 3, scope: !3300)
!3306 = !DILocation(line: 649, column: 3, scope: !3286)
!3307 = !DILocation(line: 646, column: 19, scope: !3303)
!3308 = !DILocation(line: 646, column: 30, scope: !3303)
!3309 = !DILocation(line: 646, column: 5, scope: !3303)
!3310 = !DILocation(line: 645, column: 53, scope: !3303)
!3311 = !DILocation(line: 645, column: 3, scope: !3303)
!3312 = distinct !{!3312, !3305, !3313}
!3313 = !DILocation(line: 646, column: 39, scope: !3300)
!3314 = !DILocation(line: 652, column: 38, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 652, column: 7)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 652, column: 7)
!3317 = distinct !DILexicalBlock(scope: !3286, file: !3, line: 650, column: 5)
!3318 = !DILocation(line: 0, scope: !3317)
!3319 = !DILocation(line: 652, column: 7, scope: !3316)
!3320 = !DILocation(line: 652, column: 36, scope: !3315)
!3321 = distinct !{!3321, !3306, !3322}
!3322 = !DILocation(line: 658, column: 5, scope: !3286)
!3323 = !DILocation(line: 654, column: 4, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 653, column: 2)
!3325 = !DILocation(line: 655, column: 41, scope: !3324)
!3326 = !DILocation(line: 655, column: 52, scope: !3324)
!3327 = !DILocation(line: 656, column: 20, scope: !3324)
!3328 = !DILocation(line: 655, column: 15, scope: !3324)
!3329 = !DILocation(line: 655, column: 12, scope: !3324)
!3330 = !DILocation(line: 652, column: 57, scope: !3315)
!3331 = !DILocation(line: 652, column: 7, scope: !3315)
!3332 = distinct !{!3332, !3319, !3333}
!3333 = !DILocation(line: 657, column: 2, scope: !3316)
!3334 = !DILocation(line: 659, column: 3, scope: !3286)
!3335 = !DILocation(line: 660, column: 1, scope: !3286)
!3336 = distinct !DISubprogram(name: "link_btr_uses", scope: !3, file: !3, line: 663, type: !3337, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3339)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{null, !1963, !1964, !1984, !1984, !743}
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3351, !3352, !3353, !3359, !3360, !3361, !3364, !3365, !3376, !3379, !3383}
!3340 = !DILocalVariable(name: "def_array", arg: 1, scope: !3336, file: !3, line: 663, type: !1963)
!3341 = !DILocalVariable(name: "use_array", arg: 2, scope: !3336, file: !3, line: 663, type: !1964)
!3342 = !DILocalVariable(name: "bb_out", arg: 3, scope: !3336, file: !3, line: 663, type: !1984)
!3343 = !DILocalVariable(name: "btr_defset", arg: 4, scope: !3336, file: !3, line: 664, type: !1984)
!3344 = !DILocalVariable(name: "max_uid", arg: 5, scope: !3336, file: !3, line: 664, type: !743)
!3345 = !DILocalVariable(name: "i", scope: !3336, file: !3, line: 666, type: !743)
!3346 = !DILocalVariable(name: "reaching_defs", scope: !3336, file: !3, line: 667, type: !1973)
!3347 = !DILocalVariable(name: "bb", scope: !3348, file: !3, line: 673, type: !768)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 672, column: 5)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 671, column: 3)
!3350 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 671, column: 3)
!3351 = !DILocalVariable(name: "insn", scope: !3348, file: !3, line: 674, type: !800)
!3352 = !DILocalVariable(name: "last", scope: !3348, file: !3, line: 675, type: !800)
!3353 = !DILocalVariable(name: "insn_uid", scope: !3354, file: !3, line: 684, type: !743)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 683, column: 6)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 682, column: 8)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 681, column: 2)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 678, column: 7)
!3358 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 678, column: 7)
!3359 = !DILocalVariable(name: "def", scope: !3354, file: !3, line: 686, type: !761)
!3360 = !DILocalVariable(name: "user", scope: !3354, file: !3, line: 687, type: !1944)
!3361 = !DILocalVariable(name: "reaching_defs_of_reg", scope: !3362, file: !3, line: 700, type: !1973)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 698, column: 3)
!3363 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 697, column: 12)
!3364 = !DILocalVariable(name: "uid", scope: !3362, file: !3, line: 701, type: !7)
!3365 = !DILocalVariable(name: "sbi", scope: !3362, file: !3, line: 702, type: !3366)
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap_iterator", file: !1974, line: 111, baseType: !3367)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1974, line: 96, size: 256, elements: !3368)
!3368 = !{!3369, !3372, !3373, !3374, !3375}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3367, file: !1974, line: 98, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3367, file: !1974, line: 101, baseType: !7, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "word_num", scope: !3367, file: !1974, line: 104, baseType: !7, size: 32, offset: 96)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "bit_num", scope: !3367, file: !1974, line: 107, baseType: !7, size: 32, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !3367, file: !1974, line: 110, baseType: !759, size: 64, offset: 192)
!3376 = !DILocalVariable(name: "reg", scope: !3377, file: !3, line: 711, type: !743)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 710, column: 7)
!3378 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 704, column: 9)
!3379 = !DILocalVariable(name: "def", scope: !3380, file: !3, line: 725, type: !761)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 724, column: 7)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 723, column: 5)
!3382 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 723, column: 5)
!3383 = !DILocalVariable(name: "regno", scope: !3384, file: !3, line: 761, type: !743)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 760, column: 3)
!3385 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 759, column: 12)
!3386 = !DILocation(line: 0, scope: !3336)
!3387 = !DILocation(line: 667, column: 27, scope: !3336)
!3388 = !DILocation(line: 0, scope: !3362)
!3389 = !DILocation(line: 671, column: 8, scope: !3350)
!3390 = !DILocation(line: 0, scope: !3350)
!3391 = !DILocation(line: 671, column: 34, scope: !3349)
!3392 = !DILocation(line: 671, column: 32, scope: !3349)
!3393 = !DILocation(line: 671, column: 3, scope: !3350)
!3394 = !DILocation(line: 673, column: 24, scope: !3348)
!3395 = !DILocation(line: 0, scope: !3348)
!3396 = !DILocation(line: 677, column: 7, scope: !3348)
!3397 = !DILocation(line: 678, column: 19, scope: !3358)
!3398 = !DILocation(line: 678, column: 40, scope: !3358)
!3399 = !DILocation(line: 678, column: 12, scope: !3358)
!3400 = !DILocation(line: 0, scope: !3358)
!3401 = !DILocation(line: 679, column: 10, scope: !3357)
!3402 = !DILocation(line: 678, column: 7, scope: !3358)
!3403 = !DILocation(line: 682, column: 8, scope: !3355)
!3404 = !DILocation(line: 682, column: 8, scope: !3356)
!3405 = !DILocation(line: 684, column: 23, scope: !3354)
!3406 = !DILocation(line: 0, scope: !3354)
!3407 = !DILocation(line: 686, column: 24, scope: !3354)
!3408 = !DILocation(line: 687, column: 24, scope: !3354)
!3409 = !DILocation(line: 688, column: 16, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 688, column: 12)
!3411 = !DILocation(line: 688, column: 12, scope: !3354)
!3412 = !DILocation(line: 693, column: 27, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 689, column: 3)
!3414 = !DILocation(line: 693, column: 33, scope: !3413)
!3415 = !DILocation(line: 693, column: 31, scope: !3413)
!3416 = !DILocation(line: 693, column: 11, scope: !3413)
!3417 = !DILocation(line: 692, column: 5, scope: !3413)
!3418 = !DILocation(line: 694, column: 5, scope: !3413)
!3419 = !DILocation(line: 695, column: 3, scope: !3413)
!3420 = !DILocation(line: 697, column: 17, scope: !3363)
!3421 = !DILocation(line: 697, column: 12, scope: !3354)
!3422 = !DILocation(line: 700, column: 36, scope: !3362)
!3423 = !DILocation(line: 701, column: 5, scope: !3362)
!3424 = !DILocation(line: 701, column: 18, scope: !3362)
!3425 = !DILocation(line: 702, column: 5, scope: !3362)
!3426 = !DILocation(line: 704, column: 15, scope: !3378)
!3427 = !DILocation(line: 704, column: 9, scope: !3378)
!3428 = !DILocation(line: 704, column: 9, scope: !3362)
!3429 = !DILocation(line: 708, column: 20, scope: !3378)
!3430 = !DILocation(line: 708, column: 40, scope: !3378)
!3431 = !DILocation(line: 708, column: 38, scope: !3378)
!3432 = !DILocation(line: 708, column: 9, scope: !3378)
!3433 = !DILocation(line: 705, column: 7, scope: !3378)
!3434 = !DILocation(line: 713, column: 9, scope: !3377)
!3435 = !DILocation(line: 714, column: 20, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 714, column: 9)
!3437 = !DILocation(line: 0, scope: !3377)
!3438 = !DILocation(line: 0, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 715, column: 8)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 714, column: 9)
!3441 = !DILocation(line: 714, column: 14, scope: !3436)
!3442 = !DILocation(line: 0, scope: !3436)
!3443 = !DILocation(line: 714, column: 38, scope: !3440)
!3444 = !DILocation(line: 714, column: 35, scope: !3440)
!3445 = !DILocation(line: 714, column: 9, scope: !3436)
!3446 = !DILocation(line: 715, column: 8, scope: !3439)
!3447 = !DILocation(line: 716, column: 8, scope: !3439)
!3448 = !DILocation(line: 714, column: 51, scope: !3440)
!3449 = !DILocation(line: 716, column: 39, scope: !3439)
!3450 = !DILocation(line: 716, column: 50, scope: !3439)
!3451 = !DILocation(line: 716, column: 11, scope: !3439)
!3452 = !DILocation(line: 715, column: 8, scope: !3440)
!3453 = !DILocation(line: 721, column: 25, scope: !3439)
!3454 = !DILocation(line: 721, column: 23, scope: !3439)
!3455 = !DILocation(line: 721, column: 8, scope: !3439)
!3456 = !DILocation(line: 718, column: 6, scope: !3439)
!3457 = !DILocation(line: 714, column: 9, scope: !3440)
!3458 = distinct !{!3458, !3445, !3459}
!3459 = !DILocation(line: 721, column: 35, scope: !3436)
!3460 = !DILocation(line: 723, column: 5, scope: !3382)
!3461 = !DILocation(line: 0, scope: !3380)
!3462 = !DILocation(line: 0, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 737, column: 13)
!3464 = !DILocation(line: 0, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 751, column: 13)
!3466 = !DILocation(line: 723, column: 5, scope: !3381)
!3467 = !DILocation(line: 725, column: 33, scope: !3380)
!3468 = !DILocation(line: 725, column: 23, scope: !3380)
!3469 = !DILocation(line: 729, column: 13, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 729, column: 13)
!3471 = !DILocation(line: 729, column: 13, scope: !3380)
!3472 = !DILocation(line: 730, column: 4, scope: !3470)
!3473 = !DILocation(line: 734, column: 30, scope: !3380)
!3474 = !DILocation(line: 735, column: 20, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 735, column: 13)
!3476 = !DILocation(line: 735, column: 14, scope: !3475)
!3477 = !DILocation(line: 735, column: 13, scope: !3380)
!3478 = !DILocation(line: 736, column: 9, scope: !3475)
!3479 = !DILocation(line: 736, column: 27, scope: !3475)
!3480 = !DILocation(line: 736, column: 4, scope: !3475)
!3481 = !DILocation(line: 737, column: 19, scope: !3463)
!3482 = !DILocation(line: 737, column: 38, scope: !3463)
!3483 = !DILocation(line: 737, column: 13, scope: !3380)
!3484 = !DILocation(line: 741, column: 11, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 738, column: 4)
!3486 = !DILocation(line: 741, column: 29, scope: !3485)
!3487 = !DILocation(line: 742, column: 22, scope: !3485)
!3488 = !DILocation(line: 742, column: 6, scope: !3485)
!3489 = !DILocation(line: 743, column: 10, scope: !3485)
!3490 = !DILocation(line: 743, column: 28, scope: !3485)
!3491 = !DILocation(line: 744, column: 10, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 744, column: 10)
!3493 = !DILocation(line: 744, column: 10, scope: !3485)
!3494 = !DILocation(line: 745, column: 8, scope: !3492)
!3495 = !DILocation(line: 750, column: 31, scope: !3463)
!3496 = !DILocation(line: 750, column: 29, scope: !3463)
!3497 = !DILocation(line: 751, column: 19, scope: !3465)
!3498 = !DILocation(line: 751, column: 13, scope: !3465)
!3499 = !DILocation(line: 751, column: 13, scope: !3380)
!3500 = !DILocation(line: 752, column: 9, scope: !3465)
!3501 = !DILocation(line: 752, column: 34, scope: !3465)
!3502 = !DILocation(line: 752, column: 4, scope: !3465)
!3503 = !DILocation(line: 753, column: 27, scope: !3380)
!3504 = !DILocation(line: 753, column: 20, scope: !3380)
!3505 = !DILocation(line: 754, column: 19, scope: !3380)
!3506 = distinct !{!3506, !3460, !3507}
!3507 = !DILocation(line: 755, column: 7, scope: !3382)
!3508 = !DILocation(line: 756, column: 5, scope: !3362)
!3509 = !DILocation(line: 757, column: 3, scope: !3363)
!3510 = !DILocation(line: 757, column: 3, scope: !3362)
!3511 = !DILocation(line: 759, column: 12, scope: !3385)
!3512 = !DILocation(line: 759, column: 12, scope: !3354)
!3513 = !DILocation(line: 763, column: 18, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 763, column: 5)
!3515 = !DILocation(line: 0, scope: !3384)
!3516 = !DILocation(line: 763, column: 10, scope: !3514)
!3517 = !DILocation(line: 0, scope: !3514)
!3518 = !DILocation(line: 763, column: 38, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 763, column: 5)
!3520 = !DILocation(line: 763, column: 35, scope: !3519)
!3521 = !DILocation(line: 763, column: 5, scope: !3514)
!3522 = !DILocation(line: 764, column: 11, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 764, column: 11)
!3524 = !DILocation(line: 765, column: 4, scope: !3523)
!3525 = !DILocation(line: 765, column: 7, scope: !3523)
!3526 = !DILocation(line: 764, column: 11, scope: !3519)
!3527 = !DILocation(line: 767, column: 27, scope: !3523)
!3528 = !DILocation(line: 767, column: 25, scope: !3523)
!3529 = !DILocation(line: 767, column: 8, scope: !3523)
!3530 = !DILocation(line: 766, column: 9, scope: !3523)
!3531 = !DILocation(line: 763, column: 53, scope: !3519)
!3532 = !DILocation(line: 763, column: 5, scope: !3519)
!3533 = distinct !{!3533, !3521, !3534}
!3534 = !DILocation(line: 767, column: 37, scope: !3514)
!3535 = !DILocation(line: 680, column: 12, scope: !3357)
!3536 = !DILocation(line: 678, column: 7, scope: !3357)
!3537 = distinct !{!3537, !3402, !3538}
!3538 = !DILocation(line: 770, column: 2, scope: !3358)
!3539 = !DILocation(line: 671, column: 53, scope: !3349)
!3540 = !DILocation(line: 671, column: 3, scope: !3349)
!3541 = distinct !{!3541, !3393, !3542}
!3542 = !DILocation(line: 771, column: 5, scope: !3350)
!3543 = !DILocation(line: 772, column: 3, scope: !3336)
!3544 = !DILocation(line: 773, column: 1, scope: !3336)
!3545 = distinct !DISubprogram(name: "insn_sets_btr_p", scope: !3, file: !3, line: 225, type: !3546, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3552)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!743, !3548, !743, !3551}
!3548 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !769, line: 51, baseType: !3549)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3560}
!3553 = !DILocalVariable(name: "insn", arg: 1, scope: !3545, file: !3, line: 225, type: !3548)
!3554 = !DILocalVariable(name: "check_const", arg: 2, scope: !3545, file: !3, line: 225, type: !743)
!3555 = !DILocalVariable(name: "regno", arg: 3, scope: !3545, file: !3, line: 225, type: !3551)
!3556 = !DILocalVariable(name: "set", scope: !3545, file: !3, line: 227, type: !800)
!3557 = !DILocalVariable(name: "dest", scope: !3558, file: !3, line: 232, type: !800)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 231, column: 5)
!3559 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 229, column: 7)
!3560 = !DILocalVariable(name: "src", scope: !3558, file: !3, line: 233, type: !800)
!3561 = !DILocation(line: 0, scope: !3545)
!3562 = !DILocation(line: 229, column: 7, scope: !3559)
!3563 = !DILocation(line: 230, column: 7, scope: !3559)
!3564 = !DILocation(line: 230, column: 17, scope: !3559)
!3565 = !DILocation(line: 230, column: 15, scope: !3559)
!3566 = !DILocation(line: 229, column: 7, scope: !3545)
!3567 = !DILocation(line: 232, column: 18, scope: !3558)
!3568 = !DILocation(line: 0, scope: !3558)
!3569 = !DILocation(line: 233, column: 17, scope: !3558)
!3570 = !DILocation(line: 235, column: 11, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 235, column: 11)
!3572 = !DILocation(line: 235, column: 27, scope: !3571)
!3573 = !DILocation(line: 235, column: 11, scope: !3558)
!3574 = !DILocation(line: 236, column: 9, scope: !3571)
!3575 = !DILocation(line: 0, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 238, column: 11)
!3577 = !DILocation(line: 238, column: 11, scope: !3576)
!3578 = !DILocation(line: 236, column: 2, scope: !3571)
!3579 = !DILocation(line: 239, column: 4, scope: !3576)
!3580 = !DILocation(line: 239, column: 7, scope: !3576)
!3581 = !DILocation(line: 238, column: 11, scope: !3558)
!3582 = !DILocation(line: 241, column: 4, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 240, column: 2)
!3584 = !DILocation(line: 243, column: 9, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 243, column: 8)
!3586 = !DILocation(line: 243, column: 21, scope: !3585)
!3587 = !DILocation(line: 243, column: 24, scope: !3585)
!3588 = !DILocation(line: 243, column: 8, scope: !3583)
!3589 = !DILocation(line: 245, column: 12, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 245, column: 12)
!3591 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 244, column: 6)
!3592 = !DILocation(line: 245, column: 12, scope: !3591)
!3593 = !DILocation(line: 246, column: 12, scope: !3590)
!3594 = !DILocation(line: 246, column: 10, scope: !3590)
!3595 = !DILocation(line: 246, column: 3, scope: !3590)
!3596 = !DILocation(line: 251, column: 3, scope: !3545)
!3597 = !DILocation(line: 252, column: 1, scope: !3545)
!3598 = distinct !DISubprogram(name: "add_btr_def", scope: !3, file: !3, line: 300, type: !3599, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3602)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!761, !2554, !768, !743, !800, !7, !743, !3601}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610}
!3603 = !DILocalVariable(name: "all_btr_defs", arg: 1, scope: !3598, file: !3, line: 300, type: !2554)
!3604 = !DILocalVariable(name: "bb", arg: 2, scope: !3598, file: !3, line: 300, type: !768)
!3605 = !DILocalVariable(name: "insn_luid", arg: 3, scope: !3598, file: !3, line: 300, type: !743)
!3606 = !DILocalVariable(name: "insn", arg: 4, scope: !3598, file: !3, line: 300, type: !800)
!3607 = !DILocalVariable(name: "dest_reg", arg: 5, scope: !3598, file: !3, line: 301, type: !7)
!3608 = !DILocalVariable(name: "other_btr_uses_before_def", arg: 6, scope: !3598, file: !3, line: 301, type: !743)
!3609 = !DILocalVariable(name: "all_btr_def_groups", arg: 7, scope: !3598, file: !3, line: 302, type: !3601)
!3610 = !DILocalVariable(name: "this_def", scope: !3598, file: !3, line: 304, type: !761)
!3611 = !DILocation(line: 0, scope: !3598)
!3612 = !DILocation(line: 304, column: 22, scope: !3598)
!3613 = !DILocation(line: 305, column: 13, scope: !3598)
!3614 = !DILocation(line: 305, column: 16, scope: !3598)
!3615 = !DILocation(line: 306, column: 13, scope: !3598)
!3616 = !DILocation(line: 306, column: 18, scope: !3598)
!3617 = !DILocation(line: 307, column: 13, scope: !3598)
!3618 = !DILocation(line: 307, column: 18, scope: !3598)
!3619 = !DILocation(line: 308, column: 13, scope: !3598)
!3620 = !DILocation(line: 308, column: 17, scope: !3598)
!3621 = !DILocation(line: 309, column: 20, scope: !3598)
!3622 = !DILocation(line: 309, column: 13, scope: !3598)
!3623 = !DILocation(line: 309, column: 18, scope: !3598)
!3624 = !DILocation(line: 310, column: 13, scope: !3598)
!3625 = !DILocation(line: 310, column: 31, scope: !3598)
!3626 = !DILocation(line: 311, column: 41, scope: !3598)
!3627 = !DILocation(line: 311, column: 13, scope: !3598)
!3628 = !DILocation(line: 311, column: 39, scope: !3598)
!3629 = !DILocation(line: 312, column: 13, scope: !3598)
!3630 = !DILocation(line: 312, column: 38, scope: !3598)
!3631 = !DILocation(line: 313, column: 13, scope: !3598)
!3632 = !DILocation(line: 313, column: 26, scope: !3598)
!3633 = !DILocation(line: 314, column: 13, scope: !3598)
!3634 = !DILocation(line: 314, column: 29, scope: !3598)
!3635 = !DILocation(line: 315, column: 13, scope: !3598)
!3636 = !DILocation(line: 315, column: 18, scope: !3598)
!3637 = !DILocation(line: 316, column: 13, scope: !3598)
!3638 = !DILocation(line: 316, column: 24, scope: !3598)
!3639 = !DILocation(line: 317, column: 3, scope: !3598)
!3640 = !DILocation(line: 319, column: 44, scope: !3598)
!3641 = !DILocation(line: 319, column: 33, scope: !3598)
!3642 = !DILocation(line: 319, column: 3, scope: !3598)
!3643 = !DILocation(line: 321, column: 7, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 321, column: 7)
!3645 = !DILocation(line: 321, column: 7, scope: !3598)
!3646 = !DILocation(line: 324, column: 21, scope: !3644)
!3647 = !DILocation(line: 324, column: 28, scope: !3644)
!3648 = !DILocation(line: 325, column: 18, scope: !3644)
!3649 = !DILocation(line: 325, column: 8, scope: !3644)
!3650 = !DILocation(line: 325, column: 56, scope: !3644)
!3651 = !DILocation(line: 322, column: 5, scope: !3644)
!3652 = !DILocation(line: 327, column: 3, scope: !3598)
!3653 = distinct !DISubprogram(name: "SET_BIT", scope: !1974, file: !1974, line: 63, type: !3654, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{null, !1973, !7}
!3656 = !{!3657, !3658, !3659}
!3657 = !DILocalVariable(name: "map", arg: 1, scope: !3653, file: !1974, line: 63, type: !1973)
!3658 = !DILocalVariable(name: "bitno", arg: 2, scope: !3653, file: !1974, line: 63, type: !7)
!3659 = !DILocalVariable(name: "oldbit", scope: !3660, file: !1974, line: 67, type: !742)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !1974, line: 66, column: 5)
!3661 = distinct !DILexicalBlock(scope: !3653, file: !1974, line: 65, column: 7)
!3662 = !DILocation(line: 0, scope: !3653)
!3663 = !DILocation(line: 65, column: 12, scope: !3661)
!3664 = !DILocation(line: 65, column: 7, scope: !3661)
!3665 = !DILocation(line: 65, column: 7, scope: !3653)
!3666 = !DILocation(line: 73, column: 40, scope: !3653)
!3667 = !DILocation(line: 73, column: 29, scope: !3653)
!3668 = !DILocation(line: 72, column: 19, scope: !3653)
!3669 = !DILocation(line: 72, column: 3, scope: !3653)
!3670 = !DILocation(line: 68, column: 16, scope: !3660)
!3671 = !DILocation(line: 69, column: 12, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3660, file: !1974, line: 69, column: 11)
!3673 = !DILocation(line: 69, column: 11, scope: !3660)
!3674 = !DILocation(line: 70, column: 2, scope: !3672)
!3675 = !DILocation(line: 70, column: 41, scope: !3672)
!3676 = !DILocation(line: 73, column: 5, scope: !3653)
!3677 = !DILocation(line: 74, column: 1, scope: !3653)
!3678 = distinct !DISubprogram(name: "note_other_use_this_block", scope: !3, file: !3, line: 402, type: !3679, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{null, !7, !1944}
!3681 = !{!3682, !3683, !3684}
!3682 = !DILocalVariable(name: "regno", arg: 1, scope: !3678, file: !3, line: 402, type: !7)
!3683 = !DILocalVariable(name: "users_this_bb", arg: 2, scope: !3678, file: !3, line: 402, type: !1944)
!3684 = !DILocalVariable(name: "user", scope: !3678, file: !3, line: 404, type: !1944)
!3685 = !DILocation(line: 0, scope: !3678)
!3686 = !DILocation(line: 406, column: 8, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 406, column: 3)
!3688 = !DILocation(line: 0, scope: !3687)
!3689 = !DILocation(line: 406, column: 35, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 406, column: 3)
!3691 = !DILocation(line: 406, column: 3, scope: !3687)
!3692 = !DILocation(line: 407, column: 15, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 407, column: 9)
!3694 = !DILocation(line: 407, column: 9, scope: !3693)
!3695 = !DILocation(line: 407, column: 19, scope: !3693)
!3696 = !DILocation(line: 407, column: 22, scope: !3693)
!3697 = !DILocation(line: 407, column: 40, scope: !3693)
!3698 = !DILocation(line: 407, column: 9, scope: !3690)
!3699 = !DILocation(line: 408, column: 13, scope: !3693)
!3700 = !DILocation(line: 408, column: 34, scope: !3693)
!3701 = !DILocation(line: 408, column: 7, scope: !3693)
!3702 = !DILocation(line: 406, column: 57, scope: !3690)
!3703 = !DILocation(line: 406, column: 3, scope: !3690)
!3704 = distinct !{!3704, !3691, !3705}
!3705 = !DILocation(line: 408, column: 36, scope: !3687)
!3706 = !DILocation(line: 409, column: 1, scope: !3678)
!3707 = distinct !DISubprogram(name: "btr_referenced_p", scope: !3, file: !3, line: 215, type: !3708, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!743, !800, !2031}
!3710 = !{!3711, !3712}
!3711 = !DILocalVariable(name: "x", arg: 1, scope: !3707, file: !3, line: 215, type: !800)
!3712 = !DILocalVariable(name: "excludep", arg: 2, scope: !3707, file: !3, line: 215, type: !2031)
!3713 = !DILocation(line: 0, scope: !3707)
!3714 = !DILocation(line: 217, column: 48, scope: !3707)
!3715 = !DILocation(line: 217, column: 10, scope: !3707)
!3716 = !DILocation(line: 217, column: 3, scope: !3707)
!3717 = distinct !DISubprogram(name: "new_btr_user", scope: !3, file: !3, line: 333, type: !3718, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!1944, !768, !743, !800}
!3720 = !{!3721, !3722, !3723, !3724, !3725, !3726, !3727}
!3721 = !DILocalVariable(name: "bb", arg: 1, scope: !3717, file: !3, line: 333, type: !768)
!3722 = !DILocalVariable(name: "insn_luid", arg: 2, scope: !3717, file: !3, line: 333, type: !743)
!3723 = !DILocalVariable(name: "insn", arg: 3, scope: !3717, file: !3, line: 333, type: !800)
!3724 = !DILocalVariable(name: "usep", scope: !3717, file: !3, line: 339, type: !2031)
!3725 = !DILocalVariable(name: "use", scope: !3717, file: !3, line: 340, type: !800)
!3726 = !DILocalVariable(name: "user", scope: !3717, file: !3, line: 341, type: !1944)
!3727 = !DILocalVariable(name: "unambiguous_single_use", scope: !3728, file: !3, line: 345, type: !743)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 344, column: 5)
!3729 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 343, column: 7)
!3730 = !DILocation(line: 0, scope: !3717)
!3731 = !DILocation(line: 339, column: 29, scope: !3717)
!3732 = !DILocation(line: 339, column: 15, scope: !3717)
!3733 = !DILocation(line: 343, column: 7, scope: !3729)
!3734 = !DILocation(line: 343, column: 7, scope: !3717)
!3735 = !DILocation(line: 350, column: 51, scope: !3728)
!3736 = !DILocation(line: 350, column: 33, scope: !3728)
!3737 = !DILocation(line: 350, column: 32, scope: !3728)
!3738 = !DILocation(line: 0, scope: !3728)
!3739 = !DILocation(line: 351, column: 11, scope: !3728)
!3740 = !DILocation(line: 353, column: 5, scope: !3728)
!3741 = !DILocation(line: 339, column: 8, scope: !3717)
!3742 = !DILocation(line: 354, column: 9, scope: !3717)
!3743 = !DILocation(line: 354, column: 16, scope: !3717)
!3744 = !DILocation(line: 355, column: 10, scope: !3717)
!3745 = !DILocation(line: 356, column: 9, scope: !3717)
!3746 = !DILocation(line: 356, column: 12, scope: !3717)
!3747 = !DILocation(line: 357, column: 9, scope: !3717)
!3748 = !DILocation(line: 357, column: 14, scope: !3717)
!3749 = !DILocation(line: 358, column: 9, scope: !3717)
!3750 = !DILocation(line: 358, column: 14, scope: !3717)
!3751 = !DILocation(line: 359, column: 9, scope: !3717)
!3752 = !DILocation(line: 359, column: 13, scope: !3717)
!3753 = !DILocation(line: 360, column: 9, scope: !3717)
!3754 = !DILocation(line: 360, column: 30, scope: !3717)
!3755 = !DILocation(line: 361, column: 9, scope: !3717)
!3756 = !DILocation(line: 361, column: 14, scope: !3717)
!3757 = !DILocation(line: 362, column: 9, scope: !3717)
!3758 = !DILocation(line: 362, column: 25, scope: !3717)
!3759 = !DILocation(line: 363, column: 9, scope: !3717)
!3760 = !DILocation(line: 363, column: 28, scope: !3717)
!3761 = !DILocation(line: 365, column: 7, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 365, column: 7)
!3763 = !DILocation(line: 365, column: 7, scope: !3717)
!3764 = !DILocation(line: 368, column: 13, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 366, column: 5)
!3766 = !DILocation(line: 368, column: 20, scope: !3765)
!3767 = !DILocation(line: 367, column: 7, scope: !3765)
!3768 = !DILocation(line: 370, column: 17, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 370, column: 11)
!3770 = !DILocation(line: 370, column: 11, scope: !3769)
!3771 = !DILocation(line: 370, column: 11, scope: !3765)
!3772 = !DILocation(line: 371, column: 11, scope: !3769)
!3773 = !DILocation(line: 372, column: 4, scope: !3769)
!3774 = !DILocation(line: 371, column: 2, scope: !3769)
!3775 = !DILocation(line: 375, column: 3, scope: !3717)
!3776 = distinct !DISubprogram(name: "rhs_regno", scope: !598, file: !598, line: 1051, type: !3777, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3779)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!7, !3548}
!3779 = !{!3780}
!3780 = !DILocalVariable(name: "x", arg: 1, scope: !3776, file: !598, line: 1051, type: !3548)
!3781 = !DILocation(line: 0, scope: !3776)
!3782 = !DILocation(line: 1053, column: 10, scope: !3776)
!3783 = !DILocation(line: 1053, column: 3, scope: !3776)
!3784 = distinct !DISubprogram(name: "note_btr_set", scope: !3, file: !3, line: 424, type: !3785, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{null, !800, !3548, !747}
!3787 = !{!3788, !3789, !3790, !3791, !3792, !3793}
!3788 = !DILocalVariable(name: "dest", arg: 1, scope: !3784, file: !3, line: 424, type: !800)
!3789 = !DILocalVariable(name: "set", arg: 2, scope: !3784, file: !3, line: 424, type: !3548)
!3790 = !DILocalVariable(name: "data", arg: 3, scope: !3784, file: !3, line: 424, type: !747)
!3791 = !DILocalVariable(name: "info", scope: !3784, file: !3, line: 426, type: !1965)
!3792 = !DILocalVariable(name: "regno", scope: !3784, file: !3, line: 427, type: !743)
!3793 = !DILocalVariable(name: "end_regno", scope: !3784, file: !3, line: 427, type: !743)
!3794 = !DILocation(line: 0, scope: !3784)
!3795 = !DILocation(line: 429, column: 8, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 429, column: 7)
!3797 = !DILocation(line: 429, column: 7, scope: !3784)
!3798 = !DILocation(line: 431, column: 11, scope: !3784)
!3799 = !DILocation(line: 432, column: 15, scope: !3784)
!3800 = !DILocation(line: 0, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !3, line: 435, column: 7)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 434, column: 9)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 433, column: 3)
!3804 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 433, column: 3)
!3805 = !DILocation(line: 433, column: 3, scope: !3784)
!3806 = !DILocation(line: 433, column: 16, scope: !3803)
!3807 = !DILocation(line: 433, column: 3, scope: !3804)
!3808 = !DILocation(line: 434, column: 9, scope: !3802)
!3809 = !DILocation(line: 434, column: 9, scope: !3803)
!3810 = !DILocation(line: 436, column: 42, scope: !3801)
!3811 = !DILocation(line: 436, column: 2, scope: !3801)
!3812 = !DILocation(line: 437, column: 2, scope: !3801)
!3813 = !DILocation(line: 438, column: 2, scope: !3801)
!3814 = !DILocation(line: 439, column: 28, scope: !3801)
!3815 = !DILocation(line: 440, column: 14, scope: !3801)
!3816 = !DILocation(line: 440, column: 33, scope: !3801)
!3817 = !DILocation(line: 440, column: 31, scope: !3801)
!3818 = !DILocation(line: 440, column: 8, scope: !3801)
!3819 = !DILocation(line: 439, column: 2, scope: !3801)
!3820 = !DILocation(line: 441, column: 7, scope: !3801)
!3821 = !DILocation(line: 433, column: 34, scope: !3803)
!3822 = !DILocation(line: 433, column: 3, scope: !3803)
!3823 = distinct !{!3823, !3807, !3824}
!3824 = !DILocation(line: 441, column: 7, scope: !3804)
!3825 = !DILocation(line: 442, column: 1, scope: !3784)
!3826 = distinct !DISubprogram(name: "dump_btrs_live", scope: !3, file: !3, line: 390, type: !3827, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{null, !743}
!3829 = !{!3830}
!3830 = !DILocalVariable(name: "bb", arg: 1, scope: !3826, file: !3, line: 390, type: !743)
!3831 = !DILocation(line: 0, scope: !3826)
!3832 = !DILocation(line: 392, column: 12, scope: !3826)
!3833 = !DILocation(line: 392, column: 3, scope: !3826)
!3834 = !DILocation(line: 393, column: 22, scope: !3826)
!3835 = !DILocation(line: 393, column: 3, scope: !3826)
!3836 = !DILocation(line: 394, column: 12, scope: !3826)
!3837 = !DILocation(line: 394, column: 3, scope: !3826)
!3838 = !DILocation(line: 395, column: 1, scope: !3826)
!3839 = distinct !DISubprogram(name: "basic_block_freq", scope: !3, file: !3, line: 182, type: !3840, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3845)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!743, !3842}
!3842 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !769, line: 112, baseType: !3843)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!3845 = !{!3846}
!3846 = !DILocalVariable(name: "bb", arg: 1, scope: !3839, file: !3, line: 182, type: !3842)
!3847 = !DILocation(line: 0, scope: !3839)
!3848 = !DILocation(line: 184, column: 14, scope: !3839)
!3849 = !DILocation(line: 184, column: 3, scope: !3839)
!3850 = distinct !DISubprogram(name: "find_btr_def_group", scope: !3, file: !3, line: 265, type: !3851, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{null, !3601, !761}
!3853 = !{!3854, !3855, !3856, !3859}
!3854 = !DILocalVariable(name: "all_btr_def_groups", arg: 1, scope: !3850, file: !3, line: 265, type: !3601)
!3855 = !DILocalVariable(name: "def", arg: 2, scope: !3850, file: !3, line: 265, type: !761)
!3856 = !DILocalVariable(name: "this_group", scope: !3857, file: !3, line: 269, type: !1936)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 268, column: 5)
!3858 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 267, column: 7)
!3859 = !DILocalVariable(name: "def_src", scope: !3857, file: !3, line: 270, type: !800)
!3860 = !DILocation(line: 0, scope: !3850)
!3861 = !DILocation(line: 267, column: 29, scope: !3858)
!3862 = !DILocation(line: 267, column: 7, scope: !3858)
!3863 = !DILocation(line: 267, column: 7, scope: !3850)
!3864 = !DILocation(line: 270, column: 21, scope: !3857)
!3865 = !DILocation(line: 0, scope: !3857)
!3866 = !DILocation(line: 274, column: 12, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 274, column: 7)
!3868 = !DILocation(line: 0, scope: !3867)
!3869 = !DILocation(line: 274, column: 7, scope: !3867)
!3870 = !DILocation(line: 277, column: 40, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 277, column: 6)
!3872 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 274, column: 7)
!3873 = !DILocation(line: 277, column: 6, scope: !3871)
!3874 = !DILocation(line: 277, column: 6, scope: !3872)
!3875 = !DILocation(line: 276, column: 30, scope: !3872)
!3876 = !DILocation(line: 274, column: 7, scope: !3872)
!3877 = distinct !{!3877, !3869, !3878}
!3878 = !DILocation(line: 278, column: 4, scope: !3867)
!3879 = !DILocation(line: 280, column: 11, scope: !3857)
!3880 = !DILocation(line: 282, column: 17, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 281, column: 2)
!3882 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 280, column: 11)
!3883 = !DILocation(line: 283, column: 16, scope: !3881)
!3884 = !DILocation(line: 283, column: 20, scope: !3881)
!3885 = !DILocation(line: 284, column: 16, scope: !3881)
!3886 = !DILocation(line: 284, column: 24, scope: !3881)
!3887 = !DILocation(line: 285, column: 23, scope: !3881)
!3888 = !DILocation(line: 285, column: 21, scope: !3881)
!3889 = !DILocation(line: 286, column: 24, scope: !3881)
!3890 = !DILocation(line: 287, column: 2, scope: !3881)
!3891 = !DILocation(line: 288, column: 12, scope: !3857)
!3892 = !DILocation(line: 288, column: 18, scope: !3857)
!3893 = !DILocation(line: 289, column: 42, scope: !3857)
!3894 = !DILocation(line: 289, column: 12, scope: !3857)
!3895 = !DILocation(line: 289, column: 28, scope: !3857)
!3896 = !DILocation(line: 290, column: 27, scope: !3857)
!3897 = !DILocation(line: 291, column: 5, scope: !3857)
!3898 = !DILocation(line: 293, column: 10, scope: !3858)
!3899 = !DILocation(line: 293, column: 16, scope: !3858)
!3900 = !DILocation(line: 294, column: 1, scope: !3850)
!3901 = distinct !DISubprogram(name: "find_btr_reference", scope: !3, file: !3, line: 194, type: !3902, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!743, !2031, !747}
!3904 = !{!3905, !3906, !3907}
!3905 = !DILocalVariable(name: "px", arg: 1, scope: !3901, file: !3, line: 194, type: !2031)
!3906 = !DILocalVariable(name: "preg", arg: 2, scope: !3901, file: !3, line: 194, type: !747)
!3907 = !DILocalVariable(name: "x", scope: !3901, file: !3, line: 196, type: !800)
!3908 = !DILocation(line: 0, scope: !3901)
!3909 = !DILocation(line: 198, column: 13, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 198, column: 7)
!3911 = !DILocation(line: 198, column: 10, scope: !3910)
!3912 = !DILocation(line: 198, column: 7, scope: !3901)
!3913 = !DILocation(line: 200, column: 7, scope: !3901)
!3914 = !DILocation(line: 201, column: 8, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 201, column: 7)
!3916 = !DILocation(line: 201, column: 7, scope: !3901)
!3917 = !DILocation(line: 203, column: 32, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 203, column: 7)
!3919 = !DILocation(line: 203, column: 42, scope: !3918)
!3920 = !DILocation(line: 203, column: 56, scope: !3918)
!3921 = !DILocation(line: 203, column: 7, scope: !3918)
!3922 = !DILocation(line: 203, column: 7, scope: !3901)
!3923 = !DILocation(line: 205, column: 27, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 204, column: 5)
!3925 = !DILocation(line: 206, column: 7, scope: !3924)
!3926 = !DILocation(line: 209, column: 1, scope: !3901)
!3927 = distinct !DISubprogram(name: "overlaps_hard_reg_set_p", scope: !3928, file: !3928, line: 354, type: !3929, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3932)
!3928 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!742, !3931, !220, !7}
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!3932 = !{!3933, !3934, !3935, !3936}
!3933 = !DILocalVariable(name: "regs", arg: 1, scope: !3927, file: !3928, line: 354, type: !3931)
!3934 = !DILocalVariable(name: "mode", arg: 2, scope: !3927, file: !3928, line: 354, type: !220)
!3935 = !DILocalVariable(name: "regno", arg: 3, scope: !3927, file: !3928, line: 355, type: !7)
!3936 = !DILocalVariable(name: "end_regno", scope: !3927, file: !3928, line: 357, type: !7)
!3937 = !DILocation(line: 0, scope: !3927)
!3938 = !DILocation(line: 359, column: 7, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3927, file: !3928, line: 359, column: 7)
!3940 = !DILocation(line: 359, column: 7, scope: !3927)
!3941 = !DILocation(line: 362, column: 15, scope: !3927)
!3942 = !DILocation(line: 363, column: 3, scope: !3927)
!3943 = !DILocation(line: 363, column: 10, scope: !3927)
!3944 = !DILocation(line: 363, column: 18, scope: !3927)
!3945 = !DILocation(line: 364, column: 9, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3927, file: !3928, line: 364, column: 9)
!3947 = !DILocation(line: 364, column: 9, scope: !3927)
!3948 = distinct !{!3948, !3942, !3949}
!3949 = !DILocation(line: 365, column: 14, scope: !3927)
!3950 = !DILocation(line: 368, column: 1, scope: !3927)
!3951 = distinct !DISubprogram(name: "end_hard_regno", scope: !3928, file: !3928, line: 290, type: !3952, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3954)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!7, !220, !7}
!3954 = !{!3955, !3956}
!3955 = !DILocalVariable(name: "mode", arg: 1, scope: !3951, file: !3928, line: 290, type: !220)
!3956 = !DILocalVariable(name: "regno", arg: 2, scope: !3951, file: !3928, line: 290, type: !7)
!3957 = !DILocation(line: 0, scope: !3951)
!3958 = !DILocation(line: 292, column: 18, scope: !3951)
!3959 = !DILocation(line: 292, column: 16, scope: !3951)
!3960 = !DILocation(line: 292, column: 3, scope: !3951)
!3961 = distinct !DISubprogram(name: "find_btr_use", scope: !3, file: !3, line: 256, type: !3962, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!2031, !800}
!3964 = !{!3965}
!3965 = !DILocalVariable(name: "insn", arg: 1, scope: !3961, file: !3, line: 256, type: !800)
!3966 = !DILocation(line: 0, scope: !3961)
!3967 = !DILocation(line: 258, column: 10, scope: !3961)
!3968 = !DILocation(line: 258, column: 3, scope: !3961)
!3969 = distinct !DISubprogram(name: "dump_hard_reg_set", scope: !3, file: !3, line: 380, type: !3970, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3972)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{null, !757}
!3972 = !{!3973, !3974}
!3973 = !DILocalVariable(name: "s", arg: 1, scope: !3969, file: !3, line: 380, type: !757)
!3974 = !DILocalVariable(name: "reg", scope: !3969, file: !3, line: 382, type: !743)
!3975 = !DILocation(line: 0, scope: !3969)
!3976 = !DILocation(line: 383, column: 8, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 383, column: 3)
!3978 = !DILocation(line: 0, scope: !3977)
!3979 = !DILocation(line: 383, column: 21, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 383, column: 3)
!3981 = !DILocation(line: 383, column: 3, scope: !3977)
!3982 = !DILocation(line: 384, column: 9, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 384, column: 9)
!3984 = !DILocation(line: 384, column: 9, scope: !3980)
!3985 = !DILocation(line: 385, column: 16, scope: !3983)
!3986 = !DILocation(line: 385, column: 7, scope: !3983)
!3987 = !DILocation(line: 383, column: 49, scope: !3980)
!3988 = !DILocation(line: 383, column: 3, scope: !3980)
!3989 = distinct !{!3989, !3981, !3990}
!3990 = !DILocation(line: 385, column: 37, scope: !3977)
!3991 = !DILocation(line: 386, column: 1, scope: !3969)
!3992 = distinct !DISubprogram(name: "sbitmap_iter_init", scope: !1974, file: !1974, line: 117, type: !3993, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3999)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !3995, !3996, !7}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_sbitmap", file: !1974, line: 46, baseType: !3997)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1976)
!3999 = !{!4000, !4001, !4002}
!4000 = !DILocalVariable(name: "i", arg: 1, scope: !3992, file: !1974, line: 117, type: !3995)
!4001 = !DILocalVariable(name: "bmp", arg: 2, scope: !3992, file: !1974, line: 117, type: !3996)
!4002 = !DILocalVariable(name: "min", arg: 3, scope: !3992, file: !1974, line: 117, type: !7)
!4003 = !DILocation(line: 0, scope: !3992)
!4004 = !DILocation(line: 119, column: 6, scope: !3992)
!4005 = !DILocation(line: 119, column: 15, scope: !3992)
!4006 = !DILocation(line: 120, column: 6, scope: !3992)
!4007 = !DILocation(line: 120, column: 14, scope: !3992)
!4008 = !DILocation(line: 121, column: 18, scope: !3992)
!4009 = !DILocation(line: 121, column: 6, scope: !3992)
!4010 = !DILocation(line: 121, column: 11, scope: !3992)
!4011 = !DILocation(line: 122, column: 12, scope: !3992)
!4012 = !DILocation(line: 122, column: 6, scope: !3992)
!4013 = !DILocation(line: 122, column: 10, scope: !3992)
!4014 = !DILocation(line: 124, column: 19, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3992, file: !1974, line: 124, column: 7)
!4016 = !DILocation(line: 124, column: 7, scope: !3992)
!4017 = !DILocation(line: 125, column: 8, scope: !4015)
!4018 = !DILocation(line: 125, column: 13, scope: !4015)
!4019 = !DILocation(line: 125, column: 5, scope: !4015)
!4020 = !DILocation(line: 127, column: 16, scope: !4015)
!4021 = !DILocation(line: 127, column: 8, scope: !4015)
!4022 = !DILocation(line: 127, column: 13, scope: !4015)
!4023 = !DILocation(line: 129, column: 1, scope: !3992)
!4024 = distinct !DISubprogram(name: "sbitmap_iter_cond", scope: !1974, file: !1974, line: 136, type: !4025, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4028)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!742, !3995, !4027}
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4028 = !{!4029, !4030}
!4029 = !DILocalVariable(name: "i", arg: 1, scope: !4024, file: !1974, line: 136, type: !3995)
!4030 = !DILocalVariable(name: "n", arg: 2, scope: !4024, file: !1974, line: 136, type: !4027)
!4031 = !DILocation(line: 0, scope: !4024)
!4032 = !DILocation(line: 0, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !1974, line: 139, column: 3)
!4034 = distinct !DILexicalBlock(scope: !4024, file: !1974, line: 139, column: 3)
!4035 = !DILocation(line: 0, scope: !4036)
!4036 = distinct !DILexicalBlock(scope: !4033, file: !1974, line: 140, column: 5)
!4037 = !DILocation(line: 0, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4036, file: !1974, line: 144, column: 11)
!4039 = !DILocation(line: 139, column: 13, scope: !4033)
!4040 = !DILocation(line: 139, column: 3, scope: !4024)
!4041 = !DILocation(line: 139, column: 18, scope: !4033)
!4042 = !DILocation(line: 139, column: 3, scope: !4034)
!4043 = !DILocation(line: 151, column: 3, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4024, file: !1974, line: 151, column: 3)
!4045 = !DILocation(line: 141, column: 18, scope: !4036)
!4046 = !DILocation(line: 144, column: 29, scope: !4038)
!4047 = !DILocation(line: 144, column: 23, scope: !4038)
!4048 = !DILocation(line: 144, column: 11, scope: !4036)
!4049 = !DILocation(line: 147, column: 32, scope: !4036)
!4050 = !DILocation(line: 147, column: 18, scope: !4036)
!4051 = !DILocation(line: 139, column: 37, scope: !4033)
!4052 = !DILocation(line: 139, column: 34, scope: !4033)
!4053 = !DILocation(line: 139, column: 32, scope: !4033)
!4054 = !DILocation(line: 139, column: 3, scope: !4033)
!4055 = distinct !{!4055, !4042, !4056}
!4056 = !DILocation(line: 148, column: 5, scope: !4034)
!4057 = !DILocation(line: 151, column: 14, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4044, file: !1974, line: 151, column: 3)
!4059 = !DILocation(line: 151, column: 19, scope: !4058)
!4060 = !DILocation(line: 151, column: 24, scope: !4058)
!4061 = !DILocation(line: 152, column: 15, scope: !4058)
!4062 = !DILocation(line: 151, column: 38, scope: !4058)
!4063 = !DILocation(line: 151, column: 3, scope: !4058)
!4064 = distinct !{!4064, !4043, !4065}
!4065 = !DILocation(line: 152, column: 15, scope: !4044)
!4066 = !DILocation(line: 154, column: 6, scope: !4024)
!4067 = !DILocation(line: 156, column: 3, scope: !4024)
!4068 = !DILocation(line: 157, column: 1, scope: !4024)
!4069 = distinct !DISubprogram(name: "sbitmap_iter_next", scope: !1974, file: !1974, line: 162, type: !4070, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !3995}
!4072 = !{!4073}
!4073 = !DILocalVariable(name: "i", arg: 1, scope: !4069, file: !1974, line: 162, type: !3995)
!4074 = !DILocation(line: 0, scope: !4069)
!4075 = !DILocation(line: 164, column: 6, scope: !4069)
!4076 = !DILocation(line: 164, column: 11, scope: !4069)
!4077 = !DILocation(line: 165, column: 6, scope: !4069)
!4078 = !DILocation(line: 165, column: 13, scope: !4069)
!4079 = !DILocation(line: 166, column: 1, scope: !4069)
!4080 = distinct !DISubprogram(name: "btr_def_live_range", scope: !3, file: !3, line: 1009, type: !4081, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4083)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{null, !761, !760}
!4083 = !{!4084, !4085, !4086, !4089, !4091, !4092}
!4084 = !DILocalVariable(name: "def", arg: 1, scope: !4080, file: !3, line: 1009, type: !761)
!4085 = !DILocalVariable(name: "btrs_live_in_range", arg: 2, scope: !4080, file: !3, line: 1009, type: !760)
!4086 = !DILocalVariable(name: "user", scope: !4087, file: !3, line: 1013, type: !1944)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 1012, column: 5)
!4088 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 1011, column: 7)
!4089 = !DILocalVariable(name: "bb", scope: !4090, file: !3, line: 1035, type: !7)
!4090 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 1030, column: 5)
!4091 = !DILocalVariable(name: "def_bb", scope: !4090, file: !3, line: 1036, type: !7)
!4092 = !DILocalVariable(name: "bi", scope: !4090, file: !3, line: 1037, type: !4093)
!4093 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !855, line: 218, baseType: !4094)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !855, line: 203, size: 256, elements: !4095)
!4095 = !{!4096, !4097, !4098, !4099}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !4094, file: !855, line: 206, baseType: !858, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !4094, file: !855, line: 209, baseType: !858, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !4094, file: !855, line: 212, baseType: !7, size: 32, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4094, file: !855, line: 217, baseType: !868, size: 64, offset: 192)
!4100 = !DILocation(line: 0, scope: !4080)
!4101 = !DILocation(line: 1011, column: 13, scope: !4088)
!4102 = !DILocation(line: 1011, column: 8, scope: !4088)
!4103 = !DILocation(line: 1011, column: 7, scope: !4080)
!4104 = !DILocation(line: 1015, column: 25, scope: !4087)
!4105 = !DILocation(line: 1015, column: 23, scope: !4087)
!4106 = !DILocation(line: 1017, column: 45, scope: !4087)
!4107 = !DILocation(line: 1017, column: 49, scope: !4087)
!4108 = !DILocation(line: 1017, column: 7, scope: !4087)
!4109 = !DILocation(line: 1018, column: 7, scope: !4087)
!4110 = !DILocation(line: 1022, column: 24, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 1022, column: 7)
!4112 = !DILocation(line: 1022, column: 12, scope: !4111)
!4113 = !DILocation(line: 0, scope: !4111)
!4114 = !DILocation(line: 0, scope: !4087)
!4115 = !DILocation(line: 1022, column: 35, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 1022, column: 7)
!4117 = !DILocation(line: 1022, column: 7, scope: !4111)
!4118 = !DILocation(line: 1023, column: 27, scope: !4116)
!4119 = !DILocation(line: 1024, column: 13, scope: !4116)
!4120 = !DILocation(line: 1024, column: 23, scope: !4116)
!4121 = !DILocation(line: 1025, column: 9, scope: !4116)
!4122 = !DILocation(line: 1026, column: 9, scope: !4116)
!4123 = !DILocation(line: 1026, column: 18, scope: !4116)
!4124 = !DILocation(line: 1026, column: 26, scope: !4116)
!4125 = !DILocation(line: 1026, column: 23, scope: !4116)
!4126 = !DILocation(line: 1027, column: 9, scope: !4116)
!4127 = !DILocation(line: 1027, column: 13, scope: !4116)
!4128 = !DILocation(line: 1023, column: 2, scope: !4116)
!4129 = !DILocation(line: 1022, column: 57, scope: !4116)
!4130 = !DILocation(line: 1022, column: 7, scope: !4116)
!4131 = distinct !{!4131, !4117, !4132}
!4132 = !DILocation(line: 1027, column: 33, scope: !4111)
!4133 = !DILocation(line: 1035, column: 7, scope: !4090)
!4134 = !DILocation(line: 1036, column: 25, scope: !4090)
!4135 = !DILocation(line: 1036, column: 59, scope: !4090)
!4136 = !DILocation(line: 1036, column: 63, scope: !4090)
!4137 = !DILocation(line: 0, scope: !4090)
!4138 = !DILocation(line: 1037, column: 7, scope: !4090)
!4139 = !DILocation(line: 1039, column: 7, scope: !4090)
!4140 = !DILocation(line: 1040, column: 7, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 1040, column: 7)
!4142 = !DILocation(line: 1040, column: 7, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 1040, column: 7)
!4144 = !DILocation(line: 1042, column: 4, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 1041, column: 2)
!4146 = distinct !{!4146, !4140, !4147}
!4147 = !DILocation(line: 1045, column: 2, scope: !4141)
!4148 = !DILocation(line: 1046, column: 5, scope: !4088)
!4149 = !DILocation(line: 1047, column: 13, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 1047, column: 7)
!4151 = !DILocation(line: 1047, column: 8, scope: !4150)
!4152 = !DILocation(line: 1047, column: 39, scope: !4150)
!4153 = !DILocation(line: 1048, column: 13, scope: !4150)
!4154 = !DILocation(line: 1048, column: 8, scope: !4150)
!4155 = !DILocation(line: 1047, column: 7, scope: !4080)
!4156 = !DILocation(line: 1049, column: 5, scope: !4150)
!4157 = !DILocation(line: 1050, column: 1, scope: !4080)
!4158 = distinct !DISubprogram(name: "can_move_up", scope: !3, file: !3, line: 1236, type: !4159, scopeLine: 1237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!743, !3842, !3548, !743}
!4161 = !{!4162, !4163, !4164}
!4162 = !DILocalVariable(name: "bb", arg: 1, scope: !4158, file: !3, line: 1236, type: !3842)
!4163 = !DILocalVariable(name: "insn", arg: 2, scope: !4158, file: !3, line: 1236, type: !3548)
!4164 = !DILocalVariable(name: "n_insns", arg: 3, scope: !4158, file: !3, line: 1236, type: !743)
!4165 = !DILocation(line: 0, scope: !4158)
!4166 = !DILocation(line: 1238, column: 3, scope: !4158)
!4167 = !DILocation(line: 1238, column: 15, scope: !4158)
!4168 = !DILocation(line: 1238, column: 42, scope: !4158)
!4169 = !DILocation(line: 1238, column: 31, scope: !4158)
!4170 = !DILocation(line: 1240, column: 14, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 1239, column: 5)
!4172 = !DILocation(line: 1244, column: 11, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 1244, column: 11)
!4174 = !DILocation(line: 1244, column: 11, scope: !4171)
!4175 = !DILocation(line: 1245, column: 9, scope: !4173)
!4176 = !DILocation(line: 1245, column: 2, scope: !4173)
!4177 = distinct !{!4177, !4166, !4178}
!4178 = !DILocation(line: 1246, column: 5, scope: !4158)
!4179 = !DILocation(line: 1247, column: 18, scope: !4158)
!4180 = !DILocation(line: 1247, column: 3, scope: !4158)
!4181 = distinct !DISubprogram(name: "ei_start_1", scope: !356, file: !356, line: 696, type: !4182, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4184)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!2751, !2756}
!4184 = !{!4185, !4186}
!4185 = !DILocalVariable(name: "ev", arg: 1, scope: !4181, file: !356, line: 696, type: !2756)
!4186 = !DILocalVariable(name: "i", scope: !4181, file: !356, line: 698, type: !2751)
!4187 = !DILocation(line: 0, scope: !4181)
!4188 = !DILocation(line: 700, column: 5, scope: !4181)
!4189 = !DILocation(line: 700, column: 11, scope: !4181)
!4190 = !DILocation(line: 701, column: 5, scope: !4181)
!4191 = !DILocation(line: 701, column: 15, scope: !4181)
!4192 = !DILocation(line: 703, column: 3, scope: !4181)
!4193 = distinct !DISubprogram(name: "ei_cond", scope: !356, file: !356, line: 771, type: !4194, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4197)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!742, !2751, !4196}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!4197 = !{!4198, !4199}
!4198 = !DILocalVariable(name: "ei", arg: 1, scope: !4193, file: !356, line: 771, type: !2751)
!4199 = !DILocalVariable(name: "p", arg: 2, scope: !4193, file: !356, line: 771, type: !4196)
!4200 = !DILocation(line: 0, scope: !4193)
!4201 = !DILocation(line: 773, column: 8, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4193, file: !356, line: 773, column: 7)
!4203 = !DILocation(line: 773, column: 7, scope: !4193)
!4204 = !DILocation(line: 775, column: 12, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4202, file: !356, line: 774, column: 5)
!4206 = !DILocation(line: 776, column: 7, scope: !4205)
!4207 = !DILocation(line: 781, column: 7, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4202, file: !356, line: 779, column: 5)
!4209 = !DILocation(line: 0, scope: !4202)
!4210 = !DILocation(line: 783, column: 1, scope: !4193)
!4211 = distinct !DISubprogram(name: "ei_next", scope: !356, file: !356, line: 736, type: !4212, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4215)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{null, !4214}
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!4215 = !{!4216}
!4216 = !DILocalVariable(name: "i", arg: 1, scope: !4211, file: !356, line: 736, type: !4214)
!4217 = !DILocation(line: 0, scope: !4211)
!4218 = !DILocation(line: 738, column: 3, scope: !4211)
!4219 = !DILocation(line: 739, column: 11, scope: !4211)
!4220 = !DILocation(line: 740, column: 1, scope: !4211)
!4221 = distinct !DISubprogram(name: "augment_live_range", scope: !3, file: !3, line: 898, type: !4222, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{null, !1961, !760, !768, !768, !743}
!4224 = !{!4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4235, !4236, !4237, !4239, !4242, !4243}
!4225 = !DILocalVariable(name: "live_range", arg: 1, scope: !4221, file: !3, line: 898, type: !1961)
!4226 = !DILocalVariable(name: "btrs_live_in_range", arg: 2, scope: !4221, file: !3, line: 898, type: !760)
!4227 = !DILocalVariable(name: "head_bb", arg: 3, scope: !4221, file: !3, line: 899, type: !768)
!4228 = !DILocalVariable(name: "new_bb", arg: 4, scope: !4221, file: !3, line: 899, type: !768)
!4229 = !DILocalVariable(name: "full_range", arg: 5, scope: !4221, file: !3, line: 899, type: !743)
!4230 = !DILocalVariable(name: "worklist", scope: !4221, file: !3, line: 901, type: !1985)
!4231 = !DILocalVariable(name: "tos", scope: !4221, file: !3, line: 901, type: !1985)
!4232 = !DILocalVariable(name: "e", scope: !4233, file: !3, line: 918, type: !786)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 917, column: 5)
!4234 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 905, column: 7)
!4235 = !DILocalVariable(name: "ei", scope: !4233, file: !3, line: 919, type: !2751)
!4236 = !DILocalVariable(name: "new_block", scope: !4233, file: !3, line: 920, type: !743)
!4237 = !DILocalVariable(name: "bb", scope: !4238, file: !3, line: 947, type: !768)
!4238 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 946, column: 5)
!4239 = !DILocalVariable(name: "e", scope: !4240, file: !3, line: 950, type: !786)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 949, column: 2)
!4241 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 948, column: 11)
!4242 = !DILocalVariable(name: "ei", scope: !4240, file: !3, line: 951, type: !2751)
!4243 = !DILocalVariable(name: "pred", scope: !4244, file: !3, line: 971, type: !768)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 970, column: 6)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 969, column: 4)
!4246 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 969, column: 4)
!4247 = !DILocation(line: 0, scope: !4221)
!4248 = !DILocation(line: 903, column: 20, scope: !4221)
!4249 = !DILocation(line: 905, column: 7, scope: !4234)
!4250 = !DILocation(line: 905, column: 7, scope: !4221)
!4251 = !DILocation(line: 907, column: 18, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 907, column: 11)
!4253 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 906, column: 5)
!4254 = !DILocation(line: 907, column: 11, scope: !4253)
!4255 = !DILocation(line: 909, column: 8, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 909, column: 8)
!4257 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 908, column: 2)
!4258 = !DILocation(line: 909, column: 8, scope: !4257)
!4259 = !DILocation(line: 910, column: 6, scope: !4256)
!4260 = !DILocation(line: 911, column: 4, scope: !4257)
!4261 = !DILocation(line: 912, column: 4, scope: !4257)
!4262 = !DILocation(line: 914, column: 11, scope: !4253)
!4263 = !DILocation(line: 914, column: 14, scope: !4253)
!4264 = !DILocation(line: 915, column: 5, scope: !4253)
!4265 = !DILocation(line: 918, column: 7, scope: !4233)
!4266 = !DILocation(line: 919, column: 7, scope: !4233)
!4267 = !DILocation(line: 920, column: 31, scope: !4233)
!4268 = !DILocation(line: 0, scope: !4233)
!4269 = !DILocation(line: 922, column: 7, scope: !4233)
!4270 = !DILocation(line: 924, column: 7, scope: !4233)
!4271 = !DILocation(line: 925, column: 7, scope: !4233)
!4272 = !DILocation(line: 929, column: 7, scope: !4233)
!4273 = !DILocation(line: 930, column: 11, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 930, column: 11)
!4275 = !DILocation(line: 930, column: 11, scope: !4233)
!4276 = !DILocation(line: 931, column: 2, scope: !4274)
!4277 = !DILocation(line: 932, column: 11, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 932, column: 11)
!4279 = !DILocation(line: 932, column: 11, scope: !4233)
!4280 = !DILocation(line: 936, column: 26, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 933, column: 2)
!4282 = !DILocation(line: 934, column: 4, scope: !4281)
!4283 = !DILocation(line: 937, column: 13, scope: !4281)
!4284 = !DILocation(line: 937, column: 4, scope: !4281)
!4285 = !DILocation(line: 938, column: 23, scope: !4281)
!4286 = !DILocation(line: 938, column: 4, scope: !4281)
!4287 = !DILocation(line: 939, column: 13, scope: !4281)
!4288 = !DILocation(line: 939, column: 4, scope: !4281)
!4289 = !DILocation(line: 940, column: 2, scope: !4281)
!4290 = !DILocation(line: 941, column: 7, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 941, column: 7)
!4292 = !DILocation(line: 0, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 941, column: 7)
!4294 = !DILocation(line: 941, column: 7, scope: !4293)
!4295 = !DILocation(line: 942, column: 11, scope: !4293)
!4296 = !DILocation(line: 942, column: 14, scope: !4293)
!4297 = !DILocation(line: 942, column: 6, scope: !4293)
!4298 = !DILocation(line: 942, column: 9, scope: !4293)
!4299 = distinct !{!4299, !4290, !4300}
!4300 = !DILocation(line: 942, column: 14, scope: !4291)
!4301 = !DILocation(line: 943, column: 5, scope: !4234)
!4302 = !DILocation(line: 0, scope: !4240)
!4303 = !DILocation(line: 0, scope: !4246)
!4304 = !DILocation(line: 0, scope: !4245)
!4305 = !DILocation(line: 945, column: 3, scope: !4221)
!4306 = !DILocation(line: 945, column: 14, scope: !4221)
!4307 = !DILocation(line: 947, column: 25, scope: !4238)
!4308 = !DILocation(line: 947, column: 24, scope: !4238)
!4309 = !DILocation(line: 0, scope: !4238)
!4310 = !DILocation(line: 948, column: 42, scope: !4241)
!4311 = !DILocation(line: 948, column: 12, scope: !4241)
!4312 = !DILocation(line: 948, column: 11, scope: !4238)
!4313 = !DILocation(line: 950, column: 4, scope: !4240)
!4314 = !DILocation(line: 951, column: 4, scope: !4240)
!4315 = !DILocation(line: 953, column: 36, scope: !4240)
!4316 = !DILocation(line: 953, column: 4, scope: !4240)
!4317 = !DILocation(line: 954, column: 4, scope: !4240)
!4318 = !DILocation(line: 958, column: 4, scope: !4240)
!4319 = !DILocation(line: 960, column: 8, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 960, column: 8)
!4321 = !DILocation(line: 960, column: 8, scope: !4240)
!4322 = !DILocation(line: 963, column: 42, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 961, column: 6)
!4324 = !DILocation(line: 962, column: 8, scope: !4323)
!4325 = !DILocation(line: 964, column: 17, scope: !4323)
!4326 = !DILocation(line: 964, column: 8, scope: !4323)
!4327 = !DILocation(line: 965, column: 27, scope: !4323)
!4328 = !DILocation(line: 965, column: 8, scope: !4323)
!4329 = !DILocation(line: 966, column: 17, scope: !4323)
!4330 = !DILocation(line: 966, column: 8, scope: !4323)
!4331 = !DILocation(line: 967, column: 6, scope: !4323)
!4332 = !DILocation(line: 969, column: 4, scope: !4246)
!4333 = !DILocation(line: 969, column: 4, scope: !4245)
!4334 = !DILocation(line: 971, column: 27, scope: !4244)
!4335 = !DILocation(line: 971, column: 30, scope: !4244)
!4336 = !DILocation(line: 0, scope: !4244)
!4337 = !DILocation(line: 972, column: 45, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 972, column: 12)
!4339 = !DILocation(line: 972, column: 13, scope: !4338)
!4340 = !DILocation(line: 972, column: 12, scope: !4244)
!4341 = !DILocation(line: 973, column: 7, scope: !4338)
!4342 = !DILocation(line: 973, column: 10, scope: !4338)
!4343 = !DILocation(line: 973, column: 3, scope: !4338)
!4344 = distinct !{!4344, !4332, !4345}
!4345 = !DILocation(line: 974, column: 6, scope: !4246)
!4346 = !DILocation(line: 975, column: 2, scope: !4241)
!4347 = !DILocation(line: 975, column: 2, scope: !4240)
!4348 = distinct !{!4348, !4305, !4349}
!4349 = !DILocation(line: 976, column: 5, scope: !4221)
!4350 = !DILocation(line: 978, column: 3, scope: !4221)
!4351 = !DILocation(line: 979, column: 1, scope: !4221)
!4352 = distinct !DISubprogram(name: "choose_btr", scope: !3, file: !3, line: 984, type: !4353, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4355)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!743, !757}
!4355 = !{!4356, !4357, !4358}
!4356 = !DILocalVariable(name: "used_btrs", arg: 1, scope: !4352, file: !3, line: 984, type: !757)
!4357 = !DILocalVariable(name: "i", scope: !4352, file: !3, line: 986, type: !743)
!4358 = !DILocalVariable(name: "regno", scope: !4359, file: !3, line: 992, type: !743)
!4359 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 990, column: 7)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 989, column: 5)
!4361 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 989, column: 5)
!4362 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 988, column: 7)
!4363 = !DILocation(line: 0, scope: !4352)
!4364 = !DILocation(line: 988, column: 31, scope: !4362)
!4365 = !DILocation(line: 988, column: 8, scope: !4362)
!4366 = !DILocation(line: 988, column: 7, scope: !4352)
!4367 = !DILocation(line: 0, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4359, file: !3, line: 996, column: 6)
!4369 = !DILocation(line: 989, column: 5, scope: !4361)
!4370 = !DILocation(line: 0, scope: !4361)
!4371 = !DILocation(line: 989, column: 19, scope: !4360)
!4372 = !DILocation(line: 992, column: 14, scope: !4359)
!4373 = !DILocation(line: 0, scope: !4359)
!4374 = !DILocation(line: 996, column: 6, scope: !4368)
!4375 = !DILocation(line: 997, column: 6, scope: !4368)
!4376 = !DILocation(line: 997, column: 10, scope: !4368)
!4377 = !DILocation(line: 996, column: 6, scope: !4359)
!4378 = !DILocation(line: 999, column: 7, scope: !4360)
!4379 = !DILocation(line: 989, column: 45, scope: !4360)
!4380 = !DILocation(line: 989, column: 5, scope: !4360)
!4381 = distinct !{!4381, !4369, !4382}
!4382 = !DILocation(line: 999, column: 7, scope: !4361)
!4383 = !DILocation(line: 1001, column: 1, scope: !4352)
!4384 = distinct !DISubprogram(name: "move_btr_def", scope: !3, file: !3, line: 1145, type: !4385, scopeLine: 1147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4387)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{null, !768, !743, !761, !1961, !760}
!4387 = !{!4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402}
!4388 = !DILocalVariable(name: "new_def_bb", arg: 1, scope: !4384, file: !3, line: 1145, type: !768)
!4389 = !DILocalVariable(name: "btr", arg: 2, scope: !4384, file: !3, line: 1145, type: !743)
!4390 = !DILocalVariable(name: "def", arg: 3, scope: !4384, file: !3, line: 1145, type: !761)
!4391 = !DILocalVariable(name: "live_range", arg: 4, scope: !4384, file: !3, line: 1145, type: !1961)
!4392 = !DILocalVariable(name: "btrs_live_in_range", arg: 5, scope: !4384, file: !3, line: 1146, type: !760)
!4393 = !DILocalVariable(name: "b", scope: !4384, file: !3, line: 1153, type: !768)
!4394 = !DILocalVariable(name: "insp", scope: !4384, file: !3, line: 1154, type: !800)
!4395 = !DILocalVariable(name: "old_insn", scope: !4384, file: !3, line: 1155, type: !800)
!4396 = !DILocalVariable(name: "src", scope: !4384, file: !3, line: 1156, type: !800)
!4397 = !DILocalVariable(name: "btr_rtx", scope: !4384, file: !3, line: 1157, type: !800)
!4398 = !DILocalVariable(name: "new_insn", scope: !4384, file: !3, line: 1158, type: !800)
!4399 = !DILocalVariable(name: "btr_mode", scope: !4384, file: !3, line: 1159, type: !220)
!4400 = !DILocalVariable(name: "user", scope: !4384, file: !3, line: 1160, type: !1944)
!4401 = !DILocalVariable(name: "set", scope: !4384, file: !3, line: 1161, type: !800)
!4402 = !DILocalVariable(name: "replacement_rtx", scope: !4403, file: !3, line: 1222, type: !800)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 1217, column: 5)
!4404 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 1216, column: 3)
!4405 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1216, column: 3)
!4406 = !DILocation(line: 0, scope: !4384)
!4407 = !DILocation(line: 1154, column: 14, scope: !4384)
!4408 = !DILocation(line: 1155, column: 23, scope: !4384)
!4409 = !DILocation(line: 1163, column: 7, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1163, column: 7)
!4411 = !DILocation(line: 1163, column: 7, scope: !4384)
!4412 = !DILocation(line: 1165, column: 18, scope: !4410)
!4413 = !DILocation(line: 1164, column: 5, scope: !4410)
!4414 = !DILocation(line: 1167, column: 3, scope: !4384)
!4415 = !DILocation(line: 1168, column: 8, scope: !4384)
!4416 = !DILocation(line: 1168, column: 12, scope: !4384)
!4417 = !DILocation(line: 1169, column: 8, scope: !4384)
!4418 = !DILocation(line: 1169, column: 11, scope: !4384)
!4419 = !DILocation(line: 1170, column: 8, scope: !4384)
!4420 = !DILocation(line: 1170, column: 13, scope: !4384)
!4421 = !DILocation(line: 1171, column: 15, scope: !4384)
!4422 = !DILocation(line: 1171, column: 8, scope: !4384)
!4423 = !DILocation(line: 1171, column: 13, scope: !4384)
!4424 = !DILocation(line: 1172, column: 21, scope: !4384)
!4425 = !DILocation(line: 1172, column: 3, scope: !4384)
!4426 = !DILocation(line: 1173, column: 3, scope: !4384)
!4427 = !DILocation(line: 1174, column: 14, scope: !4384)
!4428 = !DILocation(line: 1176, column: 7, scope: !4384)
!4429 = !DILocation(line: 1175, column: 8, scope: !4384)
!4430 = !DILocation(line: 1176, column: 5, scope: !4384)
!4431 = !DILocation(line: 1177, column: 3, scope: !4384)
!4432 = !DILocation(line: 1178, column: 7, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1178, column: 7)
!4434 = !DILocation(line: 1178, column: 7, scope: !4384)
!4435 = !DILocation(line: 1179, column: 12, scope: !4433)
!4436 = !DILocation(line: 1179, column: 5, scope: !4433)
!4437 = !DILocation(line: 1185, column: 12, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1185, column: 7)
!4439 = !DILocation(line: 1185, column: 7, scope: !4438)
!4440 = !DILocation(line: 1185, column: 7, scope: !4384)
!4441 = !DILocation(line: 1188, column: 19, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 1188, column: 7)
!4443 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 1186, column: 5)
!4444 = !DILocation(line: 1188, column: 12, scope: !4442)
!4445 = !DILocation(line: 0, scope: !4442)
!4446 = !DILocation(line: 1188, column: 33, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 1188, column: 7)
!4448 = !DILocation(line: 1188, column: 7, scope: !4442)
!4449 = !DILocation(line: 1189, column: 2, scope: !4447)
!4450 = !DILocation(line: 1188, column: 55, scope: !4447)
!4451 = !DILocation(line: 1188, column: 7, scope: !4447)
!4452 = distinct !{!4452, !4448, !4453}
!4453 = !DILocation(line: 1189, column: 2, scope: !4442)
!4454 = !DILocation(line: 1191, column: 11, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 1191, column: 11)
!4456 = !DILocation(line: 1191, column: 25, scope: !4455)
!4457 = !DILocation(line: 1191, column: 28, scope: !4455)
!4458 = !DILocation(line: 1191, column: 11, scope: !4443)
!4459 = !DILocation(line: 1192, column: 9, scope: !4455)
!4460 = !DILocation(line: 1192, column: 2, scope: !4455)
!4461 = !DILocation(line: 1195, column: 9, scope: !4384)
!4462 = !DILocation(line: 1196, column: 9, scope: !4384)
!4463 = !DILocation(line: 1197, column: 14, scope: !4384)
!4464 = !DILocation(line: 1198, column: 13, scope: !4384)
!4465 = !DILocation(line: 1200, column: 14, scope: !4384)
!4466 = !DILocation(line: 1203, column: 15, scope: !4384)
!4467 = !DILocation(line: 1203, column: 13, scope: !4384)
!4468 = !DILocation(line: 1205, column: 3, scope: !4384)
!4469 = !DILocation(line: 1207, column: 7, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 1207, column: 7)
!4471 = !DILocation(line: 1207, column: 7, scope: !4384)
!4472 = !DILocation(line: 1209, column: 7, scope: !4470)
!4473 = !DILocation(line: 1209, column: 29, scope: !4470)
!4474 = !DILocation(line: 1208, column: 5, scope: !4470)
!4475 = !DILocation(line: 1212, column: 3, scope: !4384)
!4476 = !DILocation(line: 1216, column: 20, scope: !4405)
!4477 = !DILocation(line: 0, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 1223, column: 11)
!4479 = !DILocation(line: 1216, column: 8, scope: !4405)
!4480 = !DILocation(line: 0, scope: !4405)
!4481 = !DILocation(line: 1216, column: 31, scope: !4404)
!4482 = !DILocation(line: 1216, column: 3, scope: !4405)
!4483 = !DILocation(line: 1223, column: 11, scope: !4478)
!4484 = !DILocation(line: 1223, column: 35, scope: !4478)
!4485 = !DILocation(line: 1223, column: 32, scope: !4478)
!4486 = !DILocation(line: 1224, column: 4, scope: !4478)
!4487 = !DILocation(line: 1224, column: 7, scope: !4478)
!4488 = !DILocation(line: 1224, column: 28, scope: !4478)
!4489 = !DILocation(line: 1223, column: 11, scope: !4403)
!4490 = !DILocation(line: 1227, column: 33, scope: !4478)
!4491 = !DILocation(line: 1227, column: 20, scope: !4478)
!4492 = !DILocation(line: 0, scope: !4403)
!4493 = !DILocation(line: 1228, column: 35, scope: !4403)
!4494 = !DILocation(line: 1228, column: 63, scope: !4403)
!4495 = !DILocation(line: 1228, column: 7, scope: !4403)
!4496 = !DILocation(line: 1229, column: 17, scope: !4403)
!4497 = !DILocation(line: 1216, column: 53, scope: !4404)
!4498 = !DILocation(line: 1216, column: 3, scope: !4404)
!4499 = distinct !{!4499, !4482, !4500}
!4500 = !DILocation(line: 1230, column: 5, scope: !4405)
!4501 = !DILocation(line: 1231, column: 1, scope: !4384)
!4502 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !855, file: !855, line: 224, type: !4503, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4509)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{null, !4505, !4506, !7, !4027}
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !769, line: 48, baseType: !4507)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!4509 = !{!4510, !4511, !4512, !4513}
!4510 = !DILocalVariable(name: "bi", arg: 1, scope: !4502, file: !855, line: 224, type: !4505)
!4511 = !DILocalVariable(name: "map", arg: 2, scope: !4502, file: !855, line: 224, type: !4506)
!4512 = !DILocalVariable(name: "start_bit", arg: 3, scope: !4502, file: !855, line: 225, type: !7)
!4513 = !DILocalVariable(name: "bit_no", arg: 4, scope: !4502, file: !855, line: 225, type: !4027)
!4514 = !DILocation(line: 0, scope: !4502)
!4515 = !DILocation(line: 227, column: 19, scope: !4502)
!4516 = !DILocation(line: 227, column: 12, scope: !4502)
!4517 = !DILocation(line: 228, column: 7, scope: !4502)
!4518 = !DILocation(line: 228, column: 12, scope: !4502)
!4519 = !DILocation(line: 0, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !855, line: 233, column: 11)
!4521 = distinct !DILexicalBlock(scope: !4502, file: !855, line: 232, column: 5)
!4522 = !DILocation(line: 231, column: 3, scope: !4502)
!4523 = !DILocation(line: 233, column: 12, scope: !4520)
!4524 = !DILocation(line: 233, column: 11, scope: !4521)
!4525 = !DILocation(line: 235, column: 13, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4520, file: !855, line: 234, column: 2)
!4527 = !DILocation(line: 236, column: 4, scope: !4526)
!4528 = !DILocation(line: 239, column: 11, scope: !4521)
!4529 = distinct !{!4529, !4522, !4530}
!4530 = !DILocation(line: 242, column: 5, scope: !4502)
!4531 = !DILocation(line: 245, column: 11, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4502, file: !855, line: 245, column: 7)
!4533 = !DILocation(line: 245, column: 17, scope: !4532)
!4534 = !DILocation(line: 245, column: 22, scope: !4532)
!4535 = !DILocation(line: 245, column: 7, scope: !4502)
!4536 = !DILocation(line: 246, column: 27, scope: !4532)
!4537 = !DILocation(line: 246, column: 32, scope: !4532)
!4538 = !DILocation(line: 246, column: 5, scope: !4532)
!4539 = !DILocation(line: 249, column: 7, scope: !4502)
!4540 = !DILocation(line: 249, column: 15, scope: !4502)
!4541 = !DILocation(line: 250, column: 14, scope: !4502)
!4542 = !DILocation(line: 251, column: 7, scope: !4502)
!4543 = !DILocation(line: 251, column: 12, scope: !4502)
!4544 = !DILocation(line: 257, column: 16, scope: !4502)
!4545 = !DILocation(line: 257, column: 13, scope: !4502)
!4546 = !DILocation(line: 259, column: 11, scope: !4502)
!4547 = !DILocation(line: 260, column: 1, scope: !4502)
!4548 = distinct !DISubprogram(name: "bmp_iter_set", scope: !855, file: !855, line: 393, type: !4549, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4551)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!742, !4505, !4027}
!4551 = !{!4552, !4553, !4554}
!4552 = !DILocalVariable(name: "bi", arg: 1, scope: !4548, file: !855, line: 393, type: !4505)
!4553 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4548, file: !855, line: 393, type: !4027)
!4554 = !DILabel(scope: !4555, name: "next_bit", file: !855, line: 398)
!4555 = distinct !DILexicalBlock(scope: !4556, file: !855, line: 397, column: 5)
!4556 = distinct !DILexicalBlock(scope: !4548, file: !855, line: 396, column: 7)
!4557 = !DILocation(line: 0, scope: !4548)
!4558 = !DILocation(line: 396, column: 11, scope: !4556)
!4559 = !DILocation(line: 396, column: 7, scope: !4556)
!4560 = !DILocation(line: 396, column: 7, scope: !4548)
!4561 = !DILocation(line: 419, column: 15, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !855, line: 418, column: 2)
!4563 = distinct !DILexicalBlock(scope: !4548, file: !855, line: 415, column: 5)
!4564 = !DILocation(line: 399, column: 7, scope: !4555)
!4565 = !DILocation(line: 398, column: 5, scope: !4555)
!4566 = !DILocation(line: 399, column: 20, scope: !4555)
!4567 = !DILocation(line: 399, column: 25, scope: !4555)
!4568 = !DILocation(line: 399, column: 14, scope: !4555)
!4569 = !DILocation(line: 401, column: 13, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4555, file: !855, line: 400, column: 2)
!4571 = !DILocation(line: 402, column: 12, scope: !4570)
!4572 = distinct !{!4572, !4564, !4573}
!4573 = !DILocation(line: 403, column: 2, scope: !4555)
!4574 = !DILocation(line: 410, column: 15, scope: !4548)
!4575 = !DILocation(line: 410, column: 42, scope: !4548)
!4576 = !DILocation(line: 411, column: 26, scope: !4548)
!4577 = !DILocation(line: 410, column: 11, scope: !4548)
!4578 = !DILocation(line: 412, column: 7, scope: !4548)
!4579 = !DILocation(line: 412, column: 14, scope: !4548)
!4580 = !DILocation(line: 0, scope: !4563)
!4581 = !DILocation(line: 414, column: 3, scope: !4548)
!4582 = !DILocation(line: 417, column: 7, scope: !4563)
!4583 = !DILocation(line: 417, column: 18, scope: !4563)
!4584 = !DILocation(line: 417, column: 26, scope: !4563)
!4585 = !DILocation(line: 419, column: 13, scope: !4562)
!4586 = !DILocation(line: 420, column: 8, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4562, file: !855, line: 420, column: 8)
!4588 = !DILocation(line: 420, column: 8, scope: !4562)
!4589 = !DILocation(line: 422, column: 12, scope: !4562)
!4590 = !DILocation(line: 423, column: 15, scope: !4562)
!4591 = distinct !{!4591, !4582, !4592}
!4592 = !DILocation(line: 424, column: 2, scope: !4563)
!4593 = !DILocation(line: 427, column: 28, scope: !4563)
!4594 = !DILocation(line: 427, column: 16, scope: !4563)
!4595 = !DILocation(line: 428, column: 12, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4563, file: !855, line: 428, column: 11)
!4597 = !DILocation(line: 428, column: 11, scope: !4563)
!4598 = !DILocation(line: 430, column: 27, scope: !4563)
!4599 = !DILocation(line: 430, column: 32, scope: !4563)
!4600 = !DILocation(line: 430, column: 15, scope: !4563)
!4601 = !DILocation(line: 431, column: 19, scope: !4563)
!4602 = distinct !{!4602, !4581, !4603}
!4603 = !DILocation(line: 432, column: 5, scope: !4548)
!4604 = !DILocation(line: 433, column: 1, scope: !4548)
!4605 = distinct !DISubprogram(name: "bmp_iter_next", scope: !855, file: !855, line: 382, type: !4606, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4608)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{null, !4505, !4027}
!4608 = !{!4609, !4610}
!4609 = !DILocalVariable(name: "bi", arg: 1, scope: !4605, file: !855, line: 382, type: !4505)
!4610 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4605, file: !855, line: 382, type: !4027)
!4611 = !DILocation(line: 0, scope: !4605)
!4612 = !DILocation(line: 384, column: 7, scope: !4605)
!4613 = !DILocation(line: 384, column: 12, scope: !4605)
!4614 = !DILocation(line: 385, column: 11, scope: !4605)
!4615 = !DILocation(line: 386, column: 1, scope: !4605)
!4616 = distinct !DISubprogram(name: "ei_end_p", scope: !356, file: !356, line: 721, type: !4617, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4619)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!742, !2751}
!4619 = !{!4620}
!4620 = !DILocalVariable(name: "i", arg: 1, scope: !4616, file: !356, line: 721, type: !2751)
!4621 = !DILocation(line: 723, column: 22, scope: !4616)
!4622 = !DILocation(line: 723, column: 19, scope: !4616)
!4623 = !DILocation(line: 723, column: 10, scope: !4616)
!4624 = !DILocation(line: 723, column: 3, scope: !4616)
!4625 = distinct !DISubprogram(name: "ei_edge", scope: !356, file: !356, line: 752, type: !4626, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4628)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!786, !2751}
!4628 = !{!4629}
!4629 = !DILocalVariable(name: "i", arg: 1, scope: !4625, file: !356, line: 752, type: !2751)
!4630 = !DILocation(line: 754, column: 10, scope: !4625)
!4631 = !DILocation(line: 754, column: 3, scope: !4625)
!4632 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !356, file: !356, line: 150, type: !4633, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4637)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!7, !4635}
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!4637 = !{!4638}
!4638 = !DILocalVariable(name: "vec_", arg: 1, scope: !4632, file: !356, line: 150, type: !4635)
!4639 = !DILocation(line: 0, scope: !4632)
!4640 = !DILocation(line: 150, column: 1, scope: !4632)
!4641 = distinct !DISubprogram(name: "ei_container", scope: !356, file: !356, line: 685, type: !4642, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4644)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!774, !2751}
!4644 = !{!4645}
!4645 = !DILocalVariable(name: "i", arg: 1, scope: !4641, file: !356, line: 685, type: !2751)
!4646 = !DILocation(line: 687, column: 3, scope: !4641)
!4647 = !DILocation(line: 688, column: 10, scope: !4641)
!4648 = !DILocation(line: 688, column: 3, scope: !4641)
!4649 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !356, file: !356, line: 150, type: !4650, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4652)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!786, !4635, !7}
!4652 = !{!4653, !4654}
!4653 = !DILocalVariable(name: "vec_", arg: 1, scope: !4649, file: !356, line: 150, type: !4635)
!4654 = !DILocalVariable(name: "ix_", arg: 2, scope: !4649, file: !356, line: 150, type: !7)
!4655 = !DILocation(line: 0, scope: !4649)
!4656 = !DILocation(line: 150, column: 1, scope: !4649)
!4657 = distinct !DISubprogram(name: "hard_reg_set_subset_p", scope: !758, file: !758, line: 115, type: !4658, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4660)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!742, !3931, !3931}
!4660 = !{!4661, !4662}
!4661 = !DILocalVariable(name: "x", arg: 1, scope: !4657, file: !758, line: 115, type: !3931)
!4662 = !DILocalVariable(name: "y", arg: 2, scope: !4657, file: !758, line: 115, type: !3931)
!4663 = !DILocation(line: 0, scope: !4657)
!4664 = !DILocation(line: 117, column: 15, scope: !4657)
!4665 = !DILocation(line: 117, column: 13, scope: !4657)
!4666 = !DILocation(line: 117, column: 19, scope: !4657)
!4667 = !DILocation(line: 117, column: 10, scope: !4657)
!4668 = !DILocation(line: 117, column: 3, scope: !4657)
!4669 = distinct !DISubprogram(name: "clear_btr_from_live_range", scope: !3, file: !3, line: 838, type: !4670, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4672)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{null, !761}
!4672 = !{!4673, !4674, !4675}
!4673 = !DILocalVariable(name: "def", arg: 1, scope: !4669, file: !3, line: 838, type: !761)
!4674 = !DILocalVariable(name: "bb", scope: !4669, file: !3, line: 840, type: !7)
!4675 = !DILocalVariable(name: "bi", scope: !4669, file: !3, line: 841, type: !4093)
!4676 = !DILocation(line: 0, scope: !4669)
!4677 = !DILocation(line: 840, column: 3, scope: !4669)
!4678 = !DILocation(line: 841, column: 3, scope: !4669)
!4679 = !DILocation(line: 843, column: 3, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 843, column: 3)
!4681 = !DILocation(line: 0, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 845, column: 11)
!4683 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 844, column: 5)
!4684 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 843, column: 3)
!4685 = !DILocation(line: 0, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 848, column: 2)
!4687 = !DILocation(line: 843, column: 3, scope: !4684)
!4688 = !DILocation(line: 845, column: 18, scope: !4682)
!4689 = !DILocation(line: 845, column: 13, scope: !4682)
!4690 = !DILocation(line: 846, column: 5, scope: !4682)
!4691 = !DILocation(line: 846, column: 14, scope: !4682)
!4692 = !DILocation(line: 846, column: 9, scope: !4682)
!4693 = !DILocation(line: 847, column: 4, scope: !4682)
!4694 = !DILocation(line: 847, column: 39, scope: !4682)
!4695 = !DILocation(line: 847, column: 8, scope: !4682)
!4696 = !DILocation(line: 845, column: 11, scope: !4683)
!4697 = !DILocation(line: 849, column: 4, scope: !4686)
!4698 = !DILocation(line: 850, column: 4, scope: !4686)
!4699 = !DILocation(line: 851, column: 8, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 851, column: 8)
!4701 = !DILocation(line: 851, column: 8, scope: !4686)
!4702 = !DILocation(line: 852, column: 6, scope: !4700)
!4703 = distinct !{!4703, !4679, !4704}
!4704 = !DILocation(line: 854, column: 5, scope: !4680)
!4705 = !DILocation(line: 855, column: 11, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 855, column: 6)
!4707 = !DILocation(line: 855, column: 6, scope: !4706)
!4708 = !DILocation(line: 855, column: 6, scope: !4669)
!4709 = !DILocation(line: 856, column: 4, scope: !4706)
!4710 = !DILocation(line: 857, column: 1, scope: !4669)
!4711 = distinct !DISubprogram(name: "combine_btr_defs", scope: !3, file: !3, line: 1056, type: !4081, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4712)
!4712 = !{!4713, !4714, !4715, !4716, !4722, !4723, !4724, !4725, !4728}
!4713 = !DILocalVariable(name: "def", arg: 1, scope: !4711, file: !3, line: 1056, type: !761)
!4714 = !DILocalVariable(name: "btrs_live_in_range", arg: 2, scope: !4711, file: !3, line: 1056, type: !760)
!4715 = !DILocalVariable(name: "other_def", scope: !4711, file: !3, line: 1058, type: !761)
!4716 = !DILocalVariable(name: "btr", scope: !4717, file: !3, line: 1073, type: !743)
!4717 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 1068, column: 2)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 1064, column: 11)
!4719 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 1063, column: 5)
!4720 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 1060, column: 3)
!4721 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 1060, column: 3)
!4722 = !DILocalVariable(name: "combined_btrs_live", scope: !4717, file: !3, line: 1074, type: !757)
!4723 = !DILocalVariable(name: "combined_live_range", scope: !4717, file: !3, line: 1075, type: !1961)
!4724 = !DILocalVariable(name: "user", scope: !4717, file: !3, line: 1076, type: !1944)
!4725 = !DILocalVariable(name: "dummy_btrs_live_in_range", scope: !4726, file: !3, line: 1080, type: !757)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 1079, column: 6)
!4727 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 1078, column: 8)
!4728 = !DILocalVariable(name: "next", scope: !4729, file: !3, line: 1106, type: !1944)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 1105, column: 3)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 1095, column: 6)
!4731 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 1094, column: 8)
!4732 = !DILocation(line: 0, scope: !4711)
!4733 = !DILocation(line: 1060, column: 25, scope: !4721)
!4734 = !DILocation(line: 1060, column: 32, scope: !4721)
!4735 = !DILocation(line: 0, scope: !4718)
!4736 = !DILocation(line: 0, scope: !4717)
!4737 = !DILocation(line: 0, scope: !4726)
!4738 = !DILocation(line: 0, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 1097, column: 12)
!4740 = !DILocation(line: 0, scope: !4730)
!4741 = !DILocation(line: 0, scope: !4729)
!4742 = !DILocation(line: 0, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 1125, column: 12)
!4744 = !DILocation(line: 1060, column: 8, scope: !4721)
!4745 = !DILocation(line: 0, scope: !4721)
!4746 = !DILocation(line: 1061, column: 18, scope: !4720)
!4747 = !DILocation(line: 1060, column: 3, scope: !4721)
!4748 = !DILocation(line: 1064, column: 21, scope: !4718)
!4749 = !DILocation(line: 1065, column: 4, scope: !4718)
!4750 = !DILocation(line: 1065, column: 18, scope: !4718)
!4751 = !DILocation(line: 1065, column: 23, scope: !4718)
!4752 = !DILocation(line: 1066, column: 4, scope: !4718)
!4753 = !DILocation(line: 1066, column: 20, scope: !4718)
!4754 = !DILocation(line: 1066, column: 9, scope: !4718)
!4755 = !DILocation(line: 1067, column: 4, scope: !4718)
!4756 = !DILocation(line: 1067, column: 50, scope: !4718)
!4757 = !DILocation(line: 1067, column: 59, scope: !4718)
!4758 = !DILocation(line: 1067, column: 7, scope: !4718)
!4759 = !DILocation(line: 1064, column: 11, scope: !4719)
!4760 = !DILocation(line: 1074, column: 4, scope: !4717)
!4761 = !DILocation(line: 1075, column: 33, scope: !4717)
!4762 = !DILocation(line: 1078, column: 19, scope: !4727)
!4763 = !DILocation(line: 1078, column: 30, scope: !4727)
!4764 = !DILocation(line: 1078, column: 8, scope: !4717)
!4765 = !DILocation(line: 1080, column: 8, scope: !4726)
!4766 = !DILocation(line: 1081, column: 8, scope: !4726)
!4767 = !DILocation(line: 1082, column: 6, scope: !4727)
!4768 = !DILocation(line: 1082, column: 6, scope: !4726)
!4769 = !DILocation(line: 1083, column: 4, scope: !4717)
!4770 = !DILocation(line: 1084, column: 43, scope: !4717)
!4771 = !DILocation(line: 1084, column: 4, scope: !4717)
!4772 = !DILocation(line: 1086, column: 9, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 1086, column: 4)
!4774 = !DILocation(line: 0, scope: !4773)
!4775 = !DILocation(line: 1086, column: 38, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 1086, column: 4)
!4777 = !DILocation(line: 1086, column: 4, scope: !4773)
!4778 = !DILocation(line: 1088, column: 10, scope: !4776)
!4779 = !DILocation(line: 1088, column: 20, scope: !4776)
!4780 = !DILocation(line: 1089, column: 6, scope: !4776)
!4781 = !DILocation(line: 1090, column: 6, scope: !4776)
!4782 = !DILocation(line: 1090, column: 15, scope: !4776)
!4783 = !DILocation(line: 1090, column: 23, scope: !4776)
!4784 = !DILocation(line: 1090, column: 20, scope: !4776)
!4785 = !DILocation(line: 1091, column: 6, scope: !4776)
!4786 = !DILocation(line: 1091, column: 10, scope: !4776)
!4787 = !DILocation(line: 1087, column: 6, scope: !4776)
!4788 = !DILocation(line: 1086, column: 60, scope: !4776)
!4789 = !DILocation(line: 1086, column: 4, scope: !4776)
!4790 = distinct !{!4790, !4777, !4791}
!4791 = !DILocation(line: 1091, column: 30, scope: !4773)
!4792 = !DILocation(line: 1093, column: 22, scope: !4717)
!4793 = !DILocation(line: 1093, column: 10, scope: !4717)
!4794 = !DILocation(line: 1094, column: 12, scope: !4731)
!4795 = !DILocation(line: 1094, column: 8, scope: !4717)
!4796 = !DILocation(line: 1097, column: 12, scope: !4739)
!4797 = !DILocation(line: 1097, column: 12, scope: !4730)
!4798 = !DILocation(line: 1100, column: 5, scope: !4739)
!4799 = !DILocation(line: 1100, column: 33, scope: !4739)
!4800 = !DILocation(line: 1098, column: 3, scope: !4739)
!4801 = !DILocation(line: 1102, column: 17, scope: !4730)
!4802 = !DILocation(line: 1103, column: 26, scope: !4730)
!4803 = !DILocation(line: 1104, column: 8, scope: !4730)
!4804 = !DILocation(line: 1104, column: 20, scope: !4730)
!4805 = !DILocation(line: 1106, column: 27, scope: !4729)
!4806 = !DILocation(line: 1108, column: 23, scope: !4729)
!4807 = !DILocation(line: 1108, column: 16, scope: !4729)
!4808 = !DILocation(line: 1109, column: 15, scope: !4729)
!4809 = distinct !{!4809, !4803, !4810}
!4810 = !DILocation(line: 1111, column: 3, scope: !4730)
!4811 = !DILocation(line: 1118, column: 13, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 1118, column: 8)
!4813 = !DILocation(line: 0, scope: !4812)
!4814 = !DILocation(line: 1118, column: 36, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 1118, column: 8)
!4816 = !DILocation(line: 1118, column: 8, scope: !4812)
!4817 = !DILocation(line: 1119, column: 22, scope: !4815)
!4818 = !DILocation(line: 1121, column: 12, scope: !4815)
!4819 = !DILocation(line: 1120, column: 9, scope: !4815)
!4820 = !DILocation(line: 1119, column: 3, scope: !4815)
!4821 = !DILocation(line: 1118, column: 58, scope: !4815)
!4822 = !DILocation(line: 1118, column: 8, scope: !4815)
!4823 = distinct !{!4823, !4816, !4824}
!4824 = !DILocation(line: 1121, column: 30, scope: !4812)
!4825 = !DILocation(line: 1122, column: 8, scope: !4730)
!4826 = !DILocation(line: 1123, column: 24, scope: !4730)
!4827 = !DILocation(line: 1124, column: 26, scope: !4730)
!4828 = !DILocation(line: 1124, column: 8, scope: !4730)
!4829 = !DILocation(line: 1125, column: 23, scope: !4743)
!4830 = !DILocation(line: 1125, column: 27, scope: !4743)
!4831 = !DILocation(line: 1125, column: 34, scope: !4743)
!4832 = !DILocation(line: 1125, column: 48, scope: !4743)
!4833 = !DILocation(line: 1125, column: 37, scope: !4743)
!4834 = !DILocation(line: 1125, column: 12, scope: !4730)
!4835 = !DILocation(line: 1126, column: 33, scope: !4743)
!4836 = !DILocation(line: 1126, column: 3, scope: !4743)
!4837 = !DILocation(line: 1127, column: 8, scope: !4730)
!4838 = !DILocation(line: 1130, column: 32, scope: !4730)
!4839 = !DILocation(line: 1130, column: 8, scope: !4730)
!4840 = !DILocation(line: 1132, column: 6, scope: !4730)
!4841 = !DILocation(line: 1133, column: 4, scope: !4717)
!4842 = !DILocation(line: 1134, column: 2, scope: !4718)
!4843 = !DILocation(line: 1134, column: 2, scope: !4717)
!4844 = !DILocation(line: 1062, column: 31, scope: !4720)
!4845 = !DILocation(line: 1060, column: 3, scope: !4720)
!4846 = distinct !{!4846, !4747, !4847}
!4847 = !DILocation(line: 1135, column: 5, scope: !4721)
!4848 = !DILocation(line: 1136, column: 1, scope: !4711)
!4849 = distinct !DISubprogram(name: "add_btr_to_live_range", scope: !3, file: !3, line: 866, type: !4850, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4852)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{null, !761, !743}
!4852 = !{!4853, !4854, !4855, !4856}
!4853 = !DILocalVariable(name: "def", arg: 1, scope: !4849, file: !3, line: 866, type: !761)
!4854 = !DILocalVariable(name: "own_end", arg: 2, scope: !4849, file: !3, line: 866, type: !743)
!4855 = !DILocalVariable(name: "bb", scope: !4849, file: !3, line: 868, type: !7)
!4856 = !DILocalVariable(name: "bi", scope: !4849, file: !3, line: 869, type: !4093)
!4857 = !DILocation(line: 0, scope: !4849)
!4858 = !DILocation(line: 868, column: 3, scope: !4849)
!4859 = !DILocation(line: 869, column: 3, scope: !4849)
!4860 = !DILocation(line: 871, column: 3, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 871, column: 3)
!4862 = !DILocation(line: 0, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 872, column: 5)
!4864 = distinct !DILexicalBlock(scope: !4861, file: !3, line: 871, column: 3)
!4865 = !DILocation(line: 871, column: 3, scope: !4864)
!4866 = !DILocation(line: 873, column: 7, scope: !4863)
!4867 = !DILocation(line: 874, column: 7, scope: !4863)
!4868 = !DILocation(line: 875, column: 11, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 875, column: 11)
!4870 = !DILocation(line: 875, column: 11, scope: !4863)
!4871 = !DILocation(line: 876, column: 2, scope: !4869)
!4872 = distinct !{!4872, !4860, !4873}
!4873 = !DILocation(line: 877, column: 5, scope: !4861)
!4874 = !DILocation(line: 878, column: 7, scope: !4849)
!4875 = !DILocation(line: 880, column: 7, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 879, column: 5)
!4877 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 878, column: 7)
!4878 = !DILocation(line: 881, column: 12, scope: !4876)
!4879 = !DILocation(line: 881, column: 20, scope: !4876)
!4880 = !DILocation(line: 882, column: 5, scope: !4876)
!4881 = !DILocation(line: 883, column: 1, scope: !4849)
!4882 = distinct !DISubprogram(name: "block_at_edge_of_live_range_p", scope: !3, file: !3, line: 815, type: !4883, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4885)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!743, !743, !761}
!4885 = !{!4886, !4887, !4888}
!4886 = !DILocalVariable(name: "bb", arg: 1, scope: !4882, file: !3, line: 815, type: !743)
!4887 = !DILocalVariable(name: "def", arg: 2, scope: !4882, file: !3, line: 815, type: !761)
!4888 = !DILocalVariable(name: "user", scope: !4889, file: !3, line: 821, type: !1944)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 820, column: 5)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 819, column: 12)
!4891 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 817, column: 7)
!4892 = !DILocation(line: 0, scope: !4882)
!4893 = !DILocation(line: 817, column: 12, scope: !4891)
!4894 = !DILocation(line: 817, column: 7, scope: !4891)
!4895 = !DILocation(line: 817, column: 38, scope: !4891)
!4896 = !DILocation(line: 817, column: 41, scope: !4891)
!4897 = !DILocation(line: 817, column: 66, scope: !4891)
!4898 = !DILocation(line: 817, column: 58, scope: !4891)
!4899 = !DILocation(line: 817, column: 7, scope: !4882)
!4900 = !DILocation(line: 819, column: 17, scope: !4890)
!4901 = !DILocation(line: 819, column: 12, scope: !4890)
!4902 = !DILocation(line: 819, column: 12, scope: !4891)
!4903 = !DILocation(line: 822, column: 24, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 822, column: 7)
!4905 = !DILocation(line: 822, column: 12, scope: !4904)
!4906 = !DILocation(line: 0, scope: !4904)
!4907 = !DILocation(line: 0, scope: !4889)
!4908 = !DILocation(line: 822, column: 35, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 822, column: 7)
!4910 = !DILocation(line: 822, column: 7, scope: !4904)
!4911 = !DILocation(line: 823, column: 6, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 823, column: 6)
!4913 = !DILocation(line: 823, column: 32, scope: !4912)
!4914 = !DILocation(line: 823, column: 23, scope: !4912)
!4915 = !DILocation(line: 823, column: 6, scope: !4909)
!4916 = !DILocation(line: 822, column: 57, scope: !4909)
!4917 = !DILocation(line: 822, column: 7, scope: !4909)
!4918 = distinct !{!4918, !4910, !4919}
!4919 = !DILocation(line: 824, column: 11, scope: !4904)
!4920 = !DILocation(line: 826, column: 3, scope: !4882)
!4921 = !DILocation(line: 827, column: 1, scope: !4882)
