; ModuleID = 'cfg.bc'
source_filename = "cfg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.gimple_df = type { %struct.htab*, %struct.VEC_gimple_gc*, %struct.VEC_tree_gc*, %union.tree_node*, %struct.pt_solution, %struct.pt_solution, %struct.pointer_map_t*, %union.tree_node*, %struct.htab*, %struct.bitmap_head_def*, i8, %struct.ssa_operands }
%struct.VEC_gimple_gc = type { %struct.VEC_gimple_base }
%struct.VEC_gimple_base = type { i32, i32, [1 x %union.gimple_statement_d*] }
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
%struct.loops = type { i32, %struct.VEC_loop_p_gc*, %struct.htab*, %struct.loop* }
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
%struct.df = type { [8 x %struct.dataflow*], [8 x %struct.dataflow*], %struct.bitmap_head_def*, %struct.df_ref_info, %struct.df_ref_info, %struct.df_reg_info**, %struct.df_reg_info**, %struct.df_reg_info**, i32, i32, %struct.df_insn_info**, i32, i32, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32*, i32*, i32, i32, i32*, i32, i8, i8, i8 }
%struct.dataflow = type { %struct.df_problem*, i8**, i32, %struct.alloc_pool_def*, %struct.bitmap_head_def*, i8*, i32, i8, i8, i8 }
%struct.df_problem = type { i32, i32, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.basic_block_def*, i8*)*, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32)*, void (%struct.basic_block_def*)*, void (%struct.edge_def*)*, i8 (i32)*, void (%struct.bitmap_head_def*)*, void ()*, void ()*, void (%struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void ()*, void ()*, %struct.df_problem*, i32, i8 }
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
%struct.regstat_n_sets_and_refs_t = type { i32, i32 }
%struct.reg_info_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.htab_bb_copy_original_entry = type { i32, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [6 x i8] c"cfg.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid sum of outgoing probabilities %.1f%%\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Invalid sum of outgoing counts %i, should be %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Invalid sum of incoming frequencies %i, should be %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Invalid sum of incoming counts %i, should be %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" (nil)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@reg_names = external dso_local local_unnamed_addr global [53 x i8*], align 16
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"\0A%sBasic block %d \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c", prev %d\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c", next %d\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c", loop_depth %d, count \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c", freq %i\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c", maybe hot\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c", probably never executed\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"%sPredecessors: \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"\0A%sSuccessors: \00", align 1
@reload_completed = external dso_local local_unnamed_addr global i32, align 4
@reg_info_p_size = external dso_local local_unnamed_addr global i64, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"%d registers.\0A\00", align 1
@regstat_n_sets_and_refs = external dso_local local_unnamed_addr global %struct.regstat_n_sets_and_refs_t*, align 8
@.str.21 = private unnamed_addr constant [43 x i8] c"\0ARegister %d used %d times across %d insns\00", align 1
@reg_info_p = external dso_local local_unnamed_addr global %struct.reg_info_t*, align 8
@.str.22 = private unnamed_addr constant [13 x i8] c" in block %d\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"; set %d time%s\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@regno_reg_rtx = external dso_local local_unnamed_addr global %struct.rtx_def**, align 8
@.str.26 = private unnamed_addr constant [11 x i8] c"; user var\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"; dies in %d places\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"; crosses 1 call\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"; crosses %d calls\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"; crosses call with %d frequency\00", align 1
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@.str.31 = private unnamed_addr constant [11 x i8] c"; %d bytes\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"; pref %s\00", align 1
@reg_class_names = external dso_local local_unnamed_addr global [0 x i8*], align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"; %s or none\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"; pref %s, else %s\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"; pointer\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"\0A%d basic blocks, %d edges.\0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c" ENTRY\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c" EXIT\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c" [%.1f%%] \00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c" count:\00", align 1
@dump_edge_info.bitnames = internal unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0)], align 16, !dbg !0
@.str.41 = private unnamed_addr constant [9 x i8] c"fallthru\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"abcall\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"eh\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"dfs_back\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"can_fallthru\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"irreducible\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"sibcall\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"loop_exit\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@first_block_aux_obj = internal unnamed_addr global i8* null, align 8, !dbg !2051
@block_aux_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !2018
@alloc_aux_for_blocks.initialized = internal unnamed_addr global i1 false, align 4, !dbg !2086
@first_edge_aux_obj = internal unnamed_addr global i8* null, align 8, !dbg !2053
@edge_aux_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !2020
@alloc_aux_for_edges.initialized = internal unnamed_addr global i1 false, align 4, !dbg !2087
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.56 = private unnamed_addr constant [44 x i8] c"bb %i count became negative after threading\00", align 1
@.str.57 = private unnamed_addr constant [86 x i8] c"Jump threading proved probability of edge %i->%i too small (it is %i, should be %i).\0A\00", align 1
@.str.58 = private unnamed_addr constant [94 x i8] c"Edge frequencies of bb %i has been reset, frequency of block should end up being 0, it is %i\0A\00", align 1
@.str.59 = private unnamed_addr constant [50 x i8] c"edge %i->%i count became negative after threading\00", align 1
@original_copy_bb_pool = internal unnamed_addr global %struct.alloc_pool_def* null, align 8, !dbg !2028
@.str.60 = private unnamed_addr constant [14 x i8] c"original_copy\00", align 1
@bb_original = internal unnamed_addr global %struct.htab* null, align 8, !dbg !2022
@bb_copy = internal unnamed_addr global %struct.htab* null, align 8, !dbg !2024
@loop_copy = internal unnamed_addr global %struct.htab* null, align 8, !dbg !2026
@reg_obstack = common dso_local local_unnamed_addr global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !2016
@.str.61 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@dump_cfg_bb_info.bb_bitnames = internal unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0)], align 16, !dbg !2055
@.str.62 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"reachable\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"irreducible_loop\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"superblock\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"nosched\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"dup\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"xlabel\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"rtl\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"fwdr\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"nothrd\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"Basic block %d\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"Predecessors: \00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"\0ASuccessors: \00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2092 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2105, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2106, metadata !DIExpression()), !dbg !2107
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2108
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2109
  ret i32 %call, !dbg !2110
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2111 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2115
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2116
  ret i32 %call, !dbg !2117
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2118 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2122, metadata !DIExpression()), !dbg !2123
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2124
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2124
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2124
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2124
  %cmp = icmp uge i8* %0, %1, !dbg !2124
  %conv1 = zext i1 %cmp to i64, !dbg !2124
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2124
  %tobool = icmp eq i64 %expval, 0, !dbg !2124
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2124

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2124
  br label %cond.end, !dbg !2124

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2124
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2124
  %2 = load i8, i8* %0, align 1, !dbg !2124
  %conv3 = zext i8 %2 to i32, !dbg !2124
  br label %cond.end, !dbg !2124

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2124
  ret i32 %cond, !dbg !2125
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2126 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2128, metadata !DIExpression()), !dbg !2129
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2130
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2130
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2130
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2130
  %cmp = icmp uge i8* %0, %1, !dbg !2130
  %conv1 = zext i1 %cmp to i64, !dbg !2130
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2130
  %tobool = icmp eq i64 %expval, 0, !dbg !2130
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2130

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2130
  br label %cond.end, !dbg !2130

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2130
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2130
  %2 = load i8, i8* %0, align 1, !dbg !2130
  %conv3 = zext i8 %2 to i32, !dbg !2130
  br label %cond.end, !dbg !2130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2130
  ret i32 %cond, !dbg !2131
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2132 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2133
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2133
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2133
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2133
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2133
  %cmp = icmp uge i8* %1, %2, !dbg !2133
  %conv1 = zext i1 %cmp to i64, !dbg !2133
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2133
  %tobool = icmp eq i64 %expval, 0, !dbg !2133
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2133

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2133
  br label %cond.end, !dbg !2133

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2133
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2133
  %3 = load i8, i8* %1, align 1, !dbg !2133
  %conv3 = zext i8 %3 to i32, !dbg !2133
  br label %cond.end, !dbg !2133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2133
  ret i32 %cond, !dbg !2134
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2135 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2139, metadata !DIExpression()), !dbg !2140
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2141
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2142
  ret i32 %call, !dbg !2143
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2144 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2148, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2149, metadata !DIExpression()), !dbg !2150
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2151
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2151
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2151
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2151
  %cmp = icmp uge i8* %0, %1, !dbg !2151
  %conv1 = zext i1 %cmp to i64, !dbg !2151
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2151
  %tobool = icmp eq i64 %expval, 0, !dbg !2151
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2151

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2151
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2151
  br label %cond.end, !dbg !2151

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2151
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2151
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2151
  store i8 %conv2, i8* %0, align 1, !dbg !2151
  %conv6 = and i32 %__c, 255, !dbg !2151
  br label %cond.end, !dbg !2151

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2151
  ret i32 %cond, !dbg !2152
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2153 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2155, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2156, metadata !DIExpression()), !dbg !2157
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2158
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2158
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2158
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2158
  %cmp = icmp uge i8* %0, %1, !dbg !2158
  %conv1 = zext i1 %cmp to i64, !dbg !2158
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2158
  %tobool = icmp eq i64 %expval, 0, !dbg !2158
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2158

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2158
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2158
  br label %cond.end, !dbg !2158

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2158
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2158
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2158
  store i8 %conv2, i8* %0, align 1, !dbg !2158
  %conv6 = and i32 %__c, 255, !dbg !2158
  br label %cond.end, !dbg !2158

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2158
  ret i32 %cond, !dbg !2159
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2160 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2162, metadata !DIExpression()), !dbg !2163
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2164
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2164
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2164
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2164
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2164
  %cmp = icmp uge i8* %1, %2, !dbg !2164
  %conv1 = zext i1 %cmp to i64, !dbg !2164
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2164
  %tobool = icmp eq i64 %expval, 0, !dbg !2164
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2164

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2164
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2164
  br label %cond.end, !dbg !2164

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2164
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2164
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2164
  store i8 %conv4, i8* %1, align 1, !dbg !2164
  %conv6 = and i32 %__c, 255, !dbg !2164
  br label %cond.end, !dbg !2164

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2164
  ret i32 %cond, !dbg !2165
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2166 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2172, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2173, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2174, metadata !DIExpression()), !dbg !2175
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2176
  ret i64 %call, !dbg !2177
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2180, metadata !DIExpression()), !dbg !2181
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2182
  %0 = load i32, i32* %_flags, align 8, !dbg !2182
  %and = lshr i32 %0, 4, !dbg !2182
  %and.lobit = and i32 %and, 1, !dbg !2182
  ret i32 %and.lobit, !dbg !2183
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2184 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2186, metadata !DIExpression()), !dbg !2187
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2188
  %0 = load i32, i32* %_flags, align 8, !dbg !2188
  %and = lshr i32 %0, 5, !dbg !2188
  %and.lobit = and i32 %and, 1, !dbg !2188
  ret i32 %and.lobit, !dbg !2189
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2190 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2193, metadata !DIExpression()), !dbg !2194
  %__c.off = add i32 %__c, 128, !dbg !2195
  %0 = icmp ult i32 %__c.off, 384, !dbg !2195
  br i1 %0, label %cond.true, label %cond.end, !dbg !2195

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2196
  %1 = load i32*, i32** %call, align 8, !dbg !2197
  %idxprom = sext i32 %__c to i64, !dbg !2198
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2198
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2198
  br label %cond.end, !dbg !2199

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2199
  ret i32 %cond, !dbg !2200
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2201 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2203, metadata !DIExpression()), !dbg !2204
  %__c.off = add i32 %__c, 128, !dbg !2205
  %0 = icmp ult i32 %__c.off, 384, !dbg !2205
  br i1 %0, label %cond.true, label %cond.end, !dbg !2205

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2206
  %1 = load i32*, i32** %call, align 8, !dbg !2207
  %idxprom = sext i32 %__c to i64, !dbg !2208
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2208
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2208
  br label %cond.end, !dbg !2209

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2209
  ret i32 %cond, !dbg !2210
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2211 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2216, metadata !DIExpression()), !dbg !2217
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2218
  %conv = trunc i64 %call to i32, !dbg !2219
  ret i32 %conv, !dbg !2220
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2221 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2225, metadata !DIExpression()), !dbg !2226
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2227
  ret i64 %call, !dbg !2228
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2229 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2234, metadata !DIExpression()), !dbg !2235
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2236
  ret i64 %call, !dbg !2237
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2238 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2244, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2245, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2246, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2247, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2248, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 0, metadata !2249, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2250, metadata !DIExpression()), !dbg !2254
  br label %while.cond, !dbg !2255

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2256
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2254
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2250, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2249, metadata !DIExpression()), !dbg !2254
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2257
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2255

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2258
  %div = lshr i64 %add, 1, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %div, metadata !2251, metadata !DIExpression()), !dbg !2254
  %mul = mul i64 %div, %__size, !dbg !2261
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2262
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2252, metadata !DIExpression()), !dbg !2254
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %call, metadata !2253, metadata !DIExpression()), !dbg !2254
  %cmp1 = icmp slt i32 %call, 0, !dbg !2264
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2266

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2267
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2269

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2249, metadata !DIExpression()), !dbg !2254
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2254
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2254
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2250, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2249, metadata !DIExpression()), !dbg !2254
  br label %while.cond, !dbg !2255, !llvm.loop !2271

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2254
  ret i8* %retval.0, !dbg !2273
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2274 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2280, metadata !DIExpression()), !dbg !2281
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2282
  ret double %call, !dbg !2283
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2284 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2293, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2294, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 %base, metadata !2295, metadata !DIExpression()), !dbg !2296
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2297
  ret i64 %call, !dbg !2298
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2299 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2305, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2306, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 %base, metadata !2307, metadata !DIExpression()), !dbg !2308
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2309
  ret i64 %call, !dbg !2310
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2311 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2322, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2323, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 %base, metadata !2324, metadata !DIExpression()), !dbg !2325
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2326
  ret i64 %call, !dbg !2327
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2328 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2332, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2333, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i32 %base, metadata !2334, metadata !DIExpression()), !dbg !2335
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2336
  ret i64 %call, !dbg !2337
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2338 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2378, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2379, metadata !DIExpression()), !dbg !2380
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2381
  ret i32 %call, !dbg !2382
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2383 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2385, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2386, metadata !DIExpression()), !dbg !2387
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2388
  ret i32 %call, !dbg !2389
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2390 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2394, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2395, metadata !DIExpression()), !dbg !2396
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2397
  ret i32 %call, !dbg !2398
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2399 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2403, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2404, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2405, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2406, metadata !DIExpression()), !dbg !2407
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2408
  ret i32 %call, !dbg !2409
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2410 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2414, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2415, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2416, metadata !DIExpression()), !dbg !2417
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2416, metadata !DIExpression(DW_OP_deref)), !dbg !2417
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2418
  ret i32 %call, !dbg !2419
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2420 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2424, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2425, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2427, metadata !DIExpression()), !dbg !2428
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2427, metadata !DIExpression(DW_OP_deref)), !dbg !2428
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2429
  ret i32 %call, !dbg !2430
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2431 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2456, metadata !DIExpression()), !dbg !2457
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2458
  ret i32 %call, !dbg !2459
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2460 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2462, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2463, metadata !DIExpression()), !dbg !2464
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2465
  ret i32 %call, !dbg !2466
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2467 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2471, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2472, metadata !DIExpression()), !dbg !2473
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2474
  ret i32 %call, !dbg !2475
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2476 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2480, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2483, metadata !DIExpression()), !dbg !2484
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2485
  ret i32 %call, !dbg !2486
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_flow(%struct.function* %the_fun) local_unnamed_addr #4 !dbg !2487 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %the_fun, metadata !2491, metadata !DIExpression()), !dbg !2492
  %cfg = getelementptr inbounds %struct.function, %struct.function* %the_fun, i64 0, i32 1, !dbg !2493
  %0 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2493
  %tobool = icmp eq %struct.control_flow_graph* %0, null, !dbg !2495
  br i1 %tobool, label %if.then, label %if.end, !dbg !2496

if.then:                                          ; preds = %entry
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 80) #6, !dbg !2497
  %1 = bitcast %struct.control_flow_graph** %cfg to i8**, !dbg !2498
  store i8* %call, i8** %1, align 8, !dbg !2498
  %2 = bitcast i8* %call to %struct.control_flow_graph*, !dbg !2499
  br label %if.end, !dbg !2499

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct.control_flow_graph* [ %0, %entry ], [ %2, %if.then ], !dbg !2500
  %x_n_edges = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 4, !dbg !2500
  store i32 0, i32* %x_n_edges, align 4, !dbg !2501
  %call3 = tail call i8* @ggc_alloc_cleared_stat(i64 104) #6, !dbg !2502
  %4 = bitcast %struct.control_flow_graph** %cfg to i8***, !dbg !2503
  %5 = load i8**, i8*** %4, align 8, !dbg !2503
  store i8* %call3, i8** %5, align 8, !dbg !2504
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2505
  %x_entry_block_ptr6 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !2505
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr6, align 8, !dbg !2505
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 9, !dbg !2506
  store i32 0, i32* %index, align 8, !dbg !2507
  %call7 = tail call i8* @ggc_alloc_cleared_stat(i64 104) #6, !dbg !2508
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2509
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 1, !dbg !2509
  %9 = bitcast %struct.basic_block_def** %x_exit_block_ptr to i8**, !dbg !2510
  store i8* %call7, i8** %9, align 8, !dbg !2510
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2511
  %x_exit_block_ptr10 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2511
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr10, align 8, !dbg !2511
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i64 0, i32 9, !dbg !2512
  store i32 1, i32* %index11, align 8, !dbg !2513
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2514
  %x_exit_block_ptr13 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 1, !dbg !2514
  %13 = bitcast %struct.basic_block_def** %x_exit_block_ptr13 to i64*, !dbg !2514
  %14 = load i64, i64* %13, align 8, !dbg !2514
  %x_entry_block_ptr15 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 0, !dbg !2515
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr15, align 8, !dbg !2515
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 6, !dbg !2516
  %16 = bitcast %struct.basic_block_def** %next_bb to i64*, !dbg !2517
  store i64 %14, i64* %16, align 8, !dbg !2517
  %17 = bitcast %struct.control_flow_graph** %cfg to i64**, !dbg !2518
  %18 = load i64*, i64** %17, align 8, !dbg !2518
  %19 = load i64, i64* %18, align 8, !dbg !2518
  %x_exit_block_ptr19 = getelementptr inbounds i64, i64* %18, i64 1, !dbg !2519
  %20 = bitcast i64* %x_exit_block_ptr19 to %struct.basic_block_def**, !dbg !2519
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %20, align 8, !dbg !2519
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 5, !dbg !2520
  %22 = bitcast %struct.basic_block_def** %prev_bb to i64*, !dbg !2521
  store i64 %19, i64* %22, align 8, !dbg !2521
  ret void, !dbg !2522
}

declare dso_local i8* @ggc_alloc_cleared_stat(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @clear_edges() local_unnamed_addr #4 !dbg !2523 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp19 = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2530
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2530
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2531
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2531
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2532
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2532
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2532
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2532
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2532
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2534
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2534
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2534
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2538
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2538
  br label %for.cond, !dbg !2532

for.cond:                                         ; preds = %cond.end14, %entry
  %10 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre1, %cond.end14 ], !dbg !2540
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %cond.end14 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2541
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2541
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2527, metadata !DIExpression()), !dbg !2542
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2540
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2540
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !2540
  br i1 %cmp, label %for.end18, label %for.body, !dbg !2532

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2543
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2543
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2543
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2543
  store i32 %12, i32* %6, align 8, !dbg !2543
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2543
  store %struct.VEC_edge_gc** %13, %struct.VEC_edge_gc*** %7, align 8, !dbg !2543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !2543
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2543
  br label %for.cond3, !dbg !2543

for.cond3:                                        ; preds = %for.body5, %for.body
  %14 = load i32, i32* %8, align 8, !dbg !2544
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2528, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #8, !dbg !2544
  %tobool = icmp eq i8 %call4, 0, !dbg !2543
  br i1 %tobool, label %for.end, label %for.body5, !dbg !2543

for.body5:                                        ; preds = %for.cond3
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2545
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !2528, metadata !DIExpression()), !dbg !2542
  call fastcc void @free_edge(%struct.edge_def* %16) #8, !dbg !2546
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2529, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2544
  br label %for.cond3, !dbg !2544, !llvm.loop !2547

for.end:                                          ; preds = %for.cond3
  %17 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2549
  %tobool7 = icmp eq %struct.VEC_edge_gc* %17, null, !dbg !2549
  br i1 %tobool7, label %cond.end, label %cond.true, !dbg !2549

cond.true:                                        ; preds = %for.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %17, i64 0, i32 0, !dbg !2549
  br label %cond.end, !dbg !2549

cond.end:                                         ; preds = %for.end, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.end ], !dbg !2549
  call fastcc void @VEC_edge_base_truncate(%struct.VEC_edge_base* %cond, i32 0) #8, !dbg !2549
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !2550
  %18 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2550
  %tobool9 = icmp eq %struct.VEC_edge_gc* %18, null, !dbg !2550
  br i1 %tobool9, label %cond.end14, label %cond.true10, !dbg !2550

cond.true10:                                      ; preds = %cond.end
  %base12 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %18, i64 0, i32 0, !dbg !2550
  br label %cond.end14, !dbg !2550

cond.end14:                                       ; preds = %cond.end, %cond.true10
  %cond15 = phi %struct.VEC_edge_base* [ %base12, %cond.true10 ], [ null, %cond.end ], !dbg !2550
  call fastcc void @VEC_edge_base_truncate(%struct.VEC_edge_base* %cond15, i32 0) #8, !dbg !2550
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2540
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2551
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2540
  br label %for.cond, !dbg !2540, !llvm.loop !2552

for.end18:                                        ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %10, %for.cond ], !dbg !2540
  %19 = bitcast %struct.edge_iterator* %tmp19 to i8*, !dbg !2554
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #7, !dbg !2554
  %x_entry_block_ptr22 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !2554
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr22, align 8, !dbg !2554
  %succs23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 1, !dbg !2554
  %call24 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs23) #8, !dbg !2554
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp19, i64 0, i32 0, !dbg !2554
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call24, 0, !dbg !2554
  store i32 %22, i32* %21, align 8, !dbg !2554
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp19, i64 0, i32 1, !dbg !2554
  %24 = extractvalue { i32, %struct.VEC_edge_gc** } %call24, 1, !dbg !2554
  store %struct.VEC_edge_gc** %24, %struct.VEC_edge_gc*** %23, align 8, !dbg !2554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %19, i64 16, i1 false), !dbg !2554
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #7, !dbg !2554
  br label %for.cond25, !dbg !2554

for.cond25:                                       ; preds = %for.body28, %for.end18
  %25 = load i32, i32* %8, align 8, !dbg !2556
  %26 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2528, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  %call26 = call fastcc zeroext i8 @ei_cond(i32 %25, %struct.VEC_edge_gc** %26, %struct.edge_def** nonnull %e) #8, !dbg !2556
  %tobool27 = icmp eq i8 %call26, 0, !dbg !2554
  br i1 %tobool27, label %for.end30, label %for.body28, !dbg !2554

for.body28:                                       ; preds = %for.cond25
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2558
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !2528, metadata !DIExpression()), !dbg !2542
  call fastcc void @free_edge(%struct.edge_def* %27) #8, !dbg !2559
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2529, metadata !DIExpression(DW_OP_deref)), !dbg !2542
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2556
  br label %for.cond25, !dbg !2556, !llvm.loop !2560

for.end30:                                        ; preds = %for.cond25
  %28 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2562
  %cfg32 = getelementptr inbounds %struct.function, %struct.function* %28, i64 0, i32 1, !dbg !2562
  %29 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg32, align 8, !dbg !2562
  %x_exit_block_ptr33 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %29, i64 0, i32 1, !dbg !2562
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr33, align 8, !dbg !2562
  %preds34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i64 0, i32 0, !dbg !2562
  %31 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds34, align 8, !dbg !2562
  %tobool35 = icmp eq %struct.VEC_edge_gc* %31, null, !dbg !2562
  br i1 %tobool35, label %cond.end43, label %cond.true36, !dbg !2562

cond.true36:                                      ; preds = %for.end30
  %base41 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %31, i64 0, i32 0, !dbg !2562
  br label %cond.end43, !dbg !2562

cond.end43:                                       ; preds = %for.end30, %cond.true36
  %cond44 = phi %struct.VEC_edge_base* [ %base41, %cond.true36 ], [ null, %for.end30 ], !dbg !2562
  call fastcc void @VEC_edge_base_truncate(%struct.VEC_edge_base* %cond44, i32 0) #8, !dbg !2562
  %32 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2563
  %cfg46 = getelementptr inbounds %struct.function, %struct.function* %32, i64 0, i32 1, !dbg !2563
  %33 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg46, align 8, !dbg !2563
  %x_entry_block_ptr47 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %33, i64 0, i32 0, !dbg !2563
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr47, align 8, !dbg !2563
  %succs48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i64 0, i32 1, !dbg !2563
  %35 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs48, align 8, !dbg !2563
  %tobool49 = icmp eq %struct.VEC_edge_gc* %35, null, !dbg !2563
  br i1 %tobool49, label %cond.end57, label %cond.true50, !dbg !2563

cond.true50:                                      ; preds = %cond.end43
  %base55 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %35, i64 0, i32 0, !dbg !2563
  br label %cond.end57, !dbg !2563

cond.end57:                                       ; preds = %cond.end43, %cond.true50
  %cond58 = phi %struct.VEC_edge_base* [ %base55, %cond.true50 ], [ null, %cond.end43 ], !dbg !2563
  call fastcc void @VEC_edge_base_truncate(%struct.VEC_edge_base* %cond58, i32 0) #8, !dbg !2563
  %36 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2564
  %cfg60 = getelementptr inbounds %struct.function, %struct.function* %36, i64 0, i32 1, !dbg !2564
  %37 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg60, align 8, !dbg !2564
  %x_n_edges = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %37, i64 0, i32 4, !dbg !2564
  %38 = load i32, i32* %x_n_edges, align 4, !dbg !2564
  %tobool61 = icmp eq i32 %38, 0, !dbg !2564
  br i1 %tobool61, label %cond.end64, label %cond.true62, !dbg !2564

cond.true62:                                      ; preds = %cond.end57
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2564
  br label %cond.end64, !dbg !2564

cond.end64:                                       ; preds = %cond.end57, %cond.true62
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2565
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2565
  ret void, !dbg !2565
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2566 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2570, metadata !DIExpression()), !dbg !2572
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2573
  store i32 0, i32* %index, align 8, !dbg !2574
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2575
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2576
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2577
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2577
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2577
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2578 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2584, metadata !DIExpression()), !dbg !2585
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2586
  %tobool = icmp eq i8 %call, 0, !dbg !2586
  br i1 %tobool, label %if.then, label %if.else, !dbg !2588

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !2589
  br label %return, !dbg !2591

if.else:                                          ; preds = %entry
  br label %return, !dbg !2592

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2594
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2594
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2594
  ret i8 %retval.0, !dbg !2595
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_edge(%struct.edge_def* %e) unnamed_addr #4 !dbg !2596 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2600, metadata !DIExpression()), !dbg !2601
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2602
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2602
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2602
  %x_n_edges = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 4, !dbg !2602
  %2 = load i32, i32* %x_n_edges, align 4, !dbg !2603
  %dec = add nsw i32 %2, -1, !dbg !2603
  store i32 %dec, i32* %x_n_edges, align 4, !dbg !2603
  %3 = bitcast %struct.edge_def* %e to i8*, !dbg !2604
  tail call void @ggc_free(i8* %3) #6, !dbg !2605
  ret void, !dbg !2606
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2607 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2612, metadata !DIExpression()), !dbg !2613
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2614
  %0 = load i32, i32* %index, align 8, !dbg !2614
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2614
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2614
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !2614
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2614
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2614

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2614
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2614
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !2614
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2614
  br label %cond.end, !dbg !2614

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2614
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2614
  %cmp = icmp ult i32 %0, %call2, !dbg !2614
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2614

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2614
  br label %cond.end5, !dbg !2614

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2615
  %inc = add i32 %5, 1, !dbg !2615
  store i32 %inc, i32* %index, align 8, !dbg !2615
  ret void, !dbg !2616
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_edge_base_truncate(%struct.VEC_edge_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !2617 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2622, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i32 0, metadata !2623, metadata !DIExpression()), !dbg !2624
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2625
  br label %cond.true, !dbg !2625

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2625

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !2625

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !2625

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2626
  store i32 0, i32* %num3, align 8, !dbg !2626
  br label %if.end, !dbg !2626

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !2625
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @alloc_block() local_unnamed_addr #4 !dbg !2628 {
entry:
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 104) #6, !dbg !2633
  %0 = bitcast i8* %call to %struct.basic_block_def*, !dbg !2633
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2632, metadata !DIExpression()), !dbg !2634
  ret %struct.basic_block_def* %0, !dbg !2635
}

; Function Attrs: nounwind uwtable
define dso_local void @link_block(%struct.basic_block_def* %b, %struct.basic_block_def* %after) local_unnamed_addr #4 !dbg !2636 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b, metadata !2640, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %after, metadata !2641, metadata !DIExpression()), !dbg !2642
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %after, i64 0, i32 6, !dbg !2643
  %0 = bitcast %struct.basic_block_def** %next_bb to i64*, !dbg !2643
  %1 = load i64, i64* %0, align 8, !dbg !2643
  %next_bb1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 6, !dbg !2644
  %2 = bitcast %struct.basic_block_def** %next_bb1 to i64*, !dbg !2645
  store i64 %1, i64* %2, align 8, !dbg !2645
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 5, !dbg !2646
  store %struct.basic_block_def* %after, %struct.basic_block_def** %prev_bb, align 8, !dbg !2647
  store %struct.basic_block_def* %b, %struct.basic_block_def** %next_bb, align 8, !dbg !2648
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb1, align 8, !dbg !2649
  %prev_bb4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 5, !dbg !2650
  store %struct.basic_block_def* %b, %struct.basic_block_def** %prev_bb4, align 8, !dbg !2651
  ret void, !dbg !2652
}

; Function Attrs: nounwind uwtable
define dso_local void @unlink_block(%struct.basic_block_def* %b) local_unnamed_addr #4 !dbg !2653 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b, metadata !2657, metadata !DIExpression()), !dbg !2658
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 5, !dbg !2659
  %0 = bitcast %struct.basic_block_def** %prev_bb to i64*, !dbg !2659
  %1 = load i64, i64* %0, align 8, !dbg !2659
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 6, !dbg !2660
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !2660
  %prev_bb1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 5, !dbg !2661
  %3 = bitcast %struct.basic_block_def** %prev_bb1 to i64*, !dbg !2662
  store i64 %1, i64* %3, align 8, !dbg !2662
  %4 = bitcast %struct.basic_block_def** %next_bb to i64*, !dbg !2663
  %5 = load i64, i64* %4, align 8, !dbg !2663
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb, align 8, !dbg !2664
  %next_bb4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 6, !dbg !2665
  %7 = bitcast %struct.basic_block_def** %next_bb4 to i64*, !dbg !2666
  store i64 %5, i64* %7, align 8, !dbg !2666
  store %struct.basic_block_def* null, %struct.basic_block_def** %prev_bb, align 8, !dbg !2667
  store %struct.basic_block_def* null, %struct.basic_block_def** %next_bb, align 8, !dbg !2668
  ret void, !dbg !2669
}

; Function Attrs: nounwind uwtable
define dso_local void @compact_blocks() local_unnamed_addr #4 !dbg !2670 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2676
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2676
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2676
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !2676
  %2 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2676
  %tobool = icmp eq %struct.VEC_basic_block_gc* %2, null, !dbg !2676
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2676

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %2, i64 0, i32 0, !dbg !2676
  br label %cond.end, !dbg !2676

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2676
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2676
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2676
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %cond, i32 0, %struct.basic_block_def* %3) #8, !dbg !2676
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2677
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2677
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !2677
  %x_basic_block_info8 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 2, !dbg !2677
  %6 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info8, align 8, !dbg !2677
  %tobool9 = icmp eq %struct.VEC_basic_block_gc* %6, null, !dbg !2677
  br i1 %tobool9, label %cond.end16, label %cond.true10, !dbg !2677

cond.true10:                                      ; preds = %cond.end
  %base14 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %6, i64 0, i32 0, !dbg !2677
  br label %cond.end16, !dbg !2677

cond.end16:                                       ; preds = %cond.end, %cond.true10
  %cond17 = phi %struct.VEC_basic_block_base* [ %base14, %cond.true10 ], [ null, %cond.end ], !dbg !2677
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !2677
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2677
  %call20 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %cond17, i32 1, %struct.basic_block_def* %7) #8, !dbg !2677
  %8 = load %struct.df*, %struct.df** @df, align 8, !dbg !2678
  %tobool21 = icmp eq %struct.df* %8, null, !dbg !2678
  br i1 %tobool21, label %if.else, label %if.then, !dbg !2679

if.then:                                          ; preds = %cond.end16
  tail call void @df_compact_blocks() #6, !dbg !2680
  %.pre2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2681
  %cfg71.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre2, i64 0, i32 1, !dbg !2682
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg71.phi.trans.insert, align 8, !dbg !2681
  br label %if.end, !dbg !2680

if.else:                                          ; preds = %cond.end16
  call void @llvm.dbg.value(metadata i32 2, metadata !2672, metadata !DIExpression()), !dbg !2682
  %9 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2683
  %cfg23 = getelementptr inbounds %struct.function, %struct.function* %9, i64 0, i32 1, !dbg !2683
  %10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg23, align 8, !dbg !2683
  %x_entry_block_ptr24 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 0, !dbg !2683
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr24, align 8, !dbg !2683
  br label %for.cond, !dbg !2683

for.cond:                                         ; preds = %cond.end38, %if.else
  %12 = phi %struct.control_flow_graph* [ %10, %if.else ], [ %.pre1, %cond.end38 ], !dbg !2685
  %.pn = phi %struct.basic_block_def* [ %11, %if.else ], [ %bb.0, %cond.end38 ]
  %i.0 = phi i32 [ 2, %if.else ], [ %inc, %cond.end38 ], !dbg !2687
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2688
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2688
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2672, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2673, metadata !DIExpression()), !dbg !2687
  %x_exit_block_ptr27 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 1, !dbg !2685
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr27, align 8, !dbg !2685
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %13, !dbg !2685
  br i1 %cmp, label %for.end, label %for.body, !dbg !2683

for.body:                                         ; preds = %for.cond
  %x_basic_block_info30 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 2, !dbg !2689
  %14 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info30, align 8, !dbg !2689
  %tobool31 = icmp eq %struct.VEC_basic_block_gc* %14, null, !dbg !2689
  br i1 %tobool31, label %cond.end38, label %cond.true32, !dbg !2689

cond.true32:                                      ; preds = %for.body
  %base36 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %14, i64 0, i32 0, !dbg !2689
  br label %cond.end38, !dbg !2689

cond.end38:                                       ; preds = %for.body, %cond.true32
  %cond39 = phi %struct.VEC_basic_block_base* [ %base36, %cond.true32 ], [ null, %for.body ], !dbg !2689
  %call40 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %cond39, i32 %i.0, %struct.basic_block_def* %bb.0) #8, !dbg !2689
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2691
  store i32 %i.0, i32* %index, align 8, !dbg !2692
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2672, metadata !DIExpression()), !dbg !2682
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2685
  %cfg26.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2694
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg26.phi.trans.insert, align 8, !dbg !2685
  br label %for.cond, !dbg !2685, !llvm.loop !2695

for.end:                                          ; preds = %for.cond
  %.lcssa5 = phi %struct.control_flow_graph* [ %12, %for.cond ], !dbg !2685
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !2687
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2672, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2672, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2672, metadata !DIExpression()), !dbg !2682
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa5, i64 0, i32 3, !dbg !2697
  %15 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2697
  %cmp44 = icmp eq i32 %i.0.lcssa, %15, !dbg !2697
  br i1 %cmp44, label %cond.end47, label %cond.true45, !dbg !2697

cond.true45:                                      ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2697
  br label %cond.end47, !dbg !2697

cond.end47:                                       ; preds = %for.end, %cond.true45
  br label %for.cond49, !dbg !2698

for.cond49:                                       ; preds = %cond.end64, %cond.end47
  %i.1 = phi i32 [ %i.0.lcssa, %cond.end47 ], [ %inc68, %cond.end64 ], !dbg !2687
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2672, metadata !DIExpression()), !dbg !2682
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2699
  %cfg51 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2699
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg51, align 8, !dbg !2699
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 5, !dbg !2699
  %18 = load i32, i32* %x_last_basic_block, align 8, !dbg !2699
  %cmp52 = icmp slt i32 %i.1, %18, !dbg !2702
  br i1 %cmp52, label %for.body53, label %if.end.loopexit, !dbg !2703

for.body53:                                       ; preds = %for.cond49
  %x_basic_block_info56 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 2, !dbg !2704
  %19 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info56, align 8, !dbg !2704
  %tobool57 = icmp eq %struct.VEC_basic_block_gc* %19, null, !dbg !2704
  br i1 %tobool57, label %cond.end64, label %cond.true58, !dbg !2704

cond.true58:                                      ; preds = %for.body53
  %base62 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %19, i64 0, i32 0, !dbg !2704
  br label %cond.end64, !dbg !2704

cond.end64:                                       ; preds = %for.body53, %cond.true58
  %cond65 = phi %struct.VEC_basic_block_base* [ %base62, %cond.true58 ], [ null, %for.body53 ], !dbg !2704
  %call66 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %cond65, i32 %i.1, %struct.basic_block_def* null) #8, !dbg !2704
  %inc68 = add nuw nsw i32 %i.1, 1, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %inc68, metadata !2672, metadata !DIExpression()), !dbg !2682
  br label %for.cond49, !dbg !2706, !llvm.loop !2707

if.end.loopexit:                                  ; preds = %for.cond49
  %.lcssa = phi %struct.control_flow_graph* [ %17, %for.cond49 ], !dbg !2699
  br label %if.end, !dbg !2681

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %20 = phi %struct.control_flow_graph* [ %.lcssa, %if.end.loopexit ], [ %.pre3, %if.then ], !dbg !2681
  %x_n_basic_blocks72 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %20, i64 0, i32 3, !dbg !2681
  %21 = load i32, i32* %x_n_basic_blocks72, align 8, !dbg !2681
  %x_last_basic_block75 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %20, i64 0, i32 5, !dbg !2709
  store i32 %21, i32* %x_last_basic_block75, align 8, !dbg !2710
  ret void, !dbg !2711
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %vec_, i32 %ix_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !2712 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !2717, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2718, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !2719, metadata !DIExpression()), !dbg !2721
  %idxprom = zext i32 %ix_ to i64, !dbg !2722
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2722
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2722
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2720, metadata !DIExpression()), !dbg !2721
  store %struct.basic_block_def* %obj_, %struct.basic_block_def** %arrayidx, align 8, !dbg !2722
  ret %struct.basic_block_def* %0, !dbg !2722
}

declare dso_local void @df_compact_blocks() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @expunge_block(%struct.basic_block_def* %b) local_unnamed_addr #4 !dbg !2723 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b, metadata !2725, metadata !DIExpression()), !dbg !2726
  tail call void @unlink_block(%struct.basic_block_def* %b) #8, !dbg !2727
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2728
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2728
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2728
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !2728
  %2 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2728
  %tobool = icmp eq %struct.VEC_basic_block_gc* %2, null, !dbg !2728
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2728

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %2, i64 0, i32 0, !dbg !2728
  br label %cond.end, !dbg !2728

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2728
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 9, !dbg !2728
  %3 = load i32, i32* %index, align 8, !dbg !2728
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %cond, i32 %3, %struct.basic_block_def* null) #8, !dbg !2728
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2729
  %cfg5 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2729
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5, align 8, !dbg !2729
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 3, !dbg !2729
  %6 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2730
  %dec = add nsw i32 %6, -1, !dbg !2730
  store i32 %dec, i32* %x_n_basic_blocks, align 8, !dbg !2730
  ret void, !dbg !2731
}

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @unchecked_make_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dst, i32 %flags) local_unnamed_addr #4 !dbg !2732 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %src, metadata !2736, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dst, metadata !2737, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2738, metadata !DIExpression()), !dbg !2740
  %call = tail call i8* @ggc_alloc_cleared_stat(i64 64) #6, !dbg !2741
  %0 = bitcast i8* %call to %struct.edge_def*, !dbg !2741
  call void @llvm.dbg.value(metadata %struct.edge_def* %0, metadata !2739, metadata !DIExpression()), !dbg !2740
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2742
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2742
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2742
  %x_n_edges = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 4, !dbg !2742
  %3 = load i32, i32* %x_n_edges, align 4, !dbg !2743
  %inc = add nsw i32 %3, 1, !dbg !2743
  store i32 %inc, i32* %x_n_edges, align 4, !dbg !2743
  %src1 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2744
  store %struct.basic_block_def* %src, %struct.basic_block_def** %src1, align 8, !dbg !2745
  %dest = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2746
  %4 = bitcast i8* %dest to %struct.basic_block_def**, !dbg !2746
  store %struct.basic_block_def* %dst, %struct.basic_block_def** %4, align 8, !dbg !2747
  %flags2 = getelementptr inbounds i8, i8* %call, i64 48, !dbg !2748
  %5 = bitcast i8* %flags2 to i32*, !dbg !2748
  store i32 %flags, i32* %5, align 8, !dbg !2749
  tail call fastcc void @connect_src(%struct.edge_def* %0) #8, !dbg !2750
  tail call fastcc void @connect_dest(%struct.edge_def* %0) #8, !dbg !2751
  tail call void @execute_on_growing_pred(%struct.edge_def* %0) #6, !dbg !2752
  ret %struct.edge_def* %0, !dbg !2753
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @connect_src(%struct.edge_def* %e) unnamed_addr #0 !dbg !2754 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2756, metadata !DIExpression()), !dbg !2757
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !2758
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2758
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 1, !dbg !2758
  %call = tail call fastcc %struct.edge_def** @VEC_edge_gc_safe_push(%struct.VEC_edge_gc** nonnull %succs, %struct.edge_def* %e) #8, !dbg !2758
  tail call void @df_mark_solutions_dirty() #6, !dbg !2759
  ret void, !dbg !2760
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @connect_dest(%struct.edge_def* %e) unnamed_addr #0 !dbg !2761 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2763, metadata !DIExpression()), !dbg !2765
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2766
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8, !dbg !2766
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2764, metadata !DIExpression()), !dbg !2765
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 0, !dbg !2767
  %call = tail call fastcc %struct.edge_def** @VEC_edge_gc_safe_push(%struct.VEC_edge_gc** %preds, %struct.edge_def* %e) #8, !dbg !2767
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2768
  %tobool = icmp eq %struct.VEC_edge_gc* %1, null, !dbg !2768
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2768

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !2768
  br label %cond.end, !dbg !2768

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2768
  %call4 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2768
  %sub = add i32 %call4, -1, !dbg !2769
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !2770
  store i32 %sub, i32* %dest_idx, align 4, !dbg !2771
  tail call void @df_mark_solutions_dirty() #6, !dbg !2772
  ret void, !dbg !2773
}

declare dso_local void @execute_on_growing_pred(%struct.edge_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def* %edge_cache, %struct.basic_block_def* %src, %struct.basic_block_def* %dst, i32 %flags) local_unnamed_addr #4 !dbg !2774 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %edge_cache, metadata !2788, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %src, metadata !2789, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dst, metadata !2790, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2791, metadata !DIExpression()), !dbg !2795
  %cmp = icmp eq %struct.simple_bitmap_def* %edge_cache, null, !dbg !2796
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2798

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2799
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2799
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2799
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2799
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2799
  %cmp1 = icmp eq %struct.basic_block_def* %2, %src, !dbg !2800
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !2801

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !2802
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2802
  %cmp5 = icmp eq %struct.basic_block_def* %3, %dst, !dbg !2803
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2804

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %call = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dst, i32 %flags) #8, !dbg !2805
  br label %return, !dbg !2806

if.end:                                           ; preds = %lor.lhs.false2
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %dst, i64 0, i32 9, !dbg !2807
  %4 = load i32, i32* %index, align 8, !dbg !2807
  %div = lshr i32 %4, 6, !dbg !2807
  %idxprom = zext i32 %div to i64, !dbg !2807
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %edge_cache, i64 0, i32 3, i64 %idxprom, !dbg !2807
  %5 = load i64, i64* %arrayidx, align 8, !dbg !2807
  %rem = and i32 %4, 63, !dbg !2807
  %sh_prom = zext i32 %rem to i64, !dbg !2807
  %6 = shl i64 1, %sh_prom, !dbg !2807
  %7 = and i64 %5, %6, !dbg !2807
  %tobool = icmp eq i64 %7, 0, !dbg !2807
  br i1 %tobool, label %if.then7, label %if.end10, !dbg !2809

if.then7:                                         ; preds = %if.end
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* nonnull %edge_cache, i32 %4) #8, !dbg !2810
  %call9 = tail call %struct.edge_def* @unchecked_make_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dst, i32 %flags) #8, !dbg !2812
  br label %return, !dbg !2813

if.end10:                                         ; preds = %if.end
  %tobool11 = icmp eq i32 %flags, 0, !dbg !2814
  br i1 %tobool11, label %return, label %if.then12, !dbg !2815

if.then12:                                        ; preds = %if.end10
  %call13 = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dst) #6, !dbg !2816
  call void @llvm.dbg.value(metadata %struct.edge_def* %call13, metadata !2792, metadata !DIExpression()), !dbg !2817
  %flags14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call13, i64 0, i32 7, !dbg !2818
  %8 = load i32, i32* %flags14, align 8, !dbg !2819
  %or = or i32 %8, %flags, !dbg !2819
  store i32 %or, i32* %flags14, align 8, !dbg !2819
  br label %return, !dbg !2820

return:                                           ; preds = %if.end10, %if.then12, %if.then7, %if.then
  %retval.0 = phi %struct.edge_def* [ %call, %if.then ], [ %call9, %if.then7 ], [ null, %if.then12 ], [ null, %if.end10 ], !dbg !2795
  ret %struct.edge_def* %retval.0, !dbg !2821
}

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @make_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dest, i32 %flags) local_unnamed_addr #4 !dbg !2822 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %src, metadata !2824, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest, metadata !2825, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2826, metadata !DIExpression()), !dbg !2828
  %call = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dest) #6, !dbg !2829
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !2827, metadata !DIExpression()), !dbg !2828
  %tobool = icmp eq %struct.edge_def* %call, null, !dbg !2830
  br i1 %tobool, label %if.end, label %if.then, !dbg !2832

if.then:                                          ; preds = %entry
  %flags1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 7, !dbg !2833
  %0 = load i32, i32* %flags1, align 8, !dbg !2835
  %or = or i32 %0, %flags, !dbg !2835
  store i32 %or, i32* %flags1, align 8, !dbg !2835
  br label %cleanup, !dbg !2836

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.edge_def* @unchecked_make_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dest, i32 %flags) #8, !dbg !2837
  br label %cleanup, !dbg !2838

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.edge_def* [ null, %if.then ], [ %call2, %if.end ], !dbg !2828
  ret %struct.edge_def* %retval.0, !dbg !2839
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !2840 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !2844, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !2845, metadata !DIExpression()), !dbg !2849
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !2850
  %0 = load i8*, i8** %popcount, align 8, !dbg !2850
  %tobool = icmp eq i8* %0, null, !dbg !2851
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !2852

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !2853
  %.pre2 = zext i32 %.pre to i64, !dbg !2854
  %.pre3 = shl i64 1, %.pre2, !dbg !2854
  %.pre4 = lshr i32 %bitno, 6, !dbg !2855
  %.pre5 = zext i32 %.pre4 to i64, !dbg !2856
  br label %if.end7, !dbg !2852

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !2857
  %idxprom = zext i32 %div to i64, !dbg !2857
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !2857
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2857
  %rem = and i32 %bitno, 63, !dbg !2857
  %sh_prom = zext i32 %rem to i64, !dbg !2857
  %2 = shl i64 1, %sh_prom, !dbg !2858
  %3 = and i64 %1, %2, !dbg !2858
  %tobool1 = icmp eq i64 %3, 0, !dbg !2858
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !2860

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !2861
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !2862
  %inc = add i8 %4, 1, !dbg !2862
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !2862
  br label %if.end7, !dbg !2861

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !2856
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !2854
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !2856
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !2863
  %or = or i64 %5, %shl.pre-phi, !dbg !2863
  store i64 %or, i64* %arrayidx13, align 8, !dbg !2863
  ret void, !dbg !2864
}

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dest, i32 %flags) local_unnamed_addr #4 !dbg !2865 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %src, metadata !2867, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest, metadata !2868, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2869, metadata !DIExpression()), !dbg !2871
  %call = tail call %struct.edge_def* @make_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dest, i32 %flags) #8, !dbg !2872
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !2870, metadata !DIExpression()), !dbg !2871
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 8, !dbg !2873
  store i32 10000, i32* %probability, align 4, !dbg !2874
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %src, i64 0, i32 8, !dbg !2875
  %0 = load i64, i64* %count, align 8, !dbg !2875
  %count1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 9, !dbg !2876
  store i64 %0, i64* %count1, align 8, !dbg !2877
  ret %struct.edge_def* %call, !dbg !2878
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_edge_raw(%struct.edge_def* %e) local_unnamed_addr #4 !dbg !2879 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2881, metadata !DIExpression()), !dbg !2882
  tail call void @remove_predictions_associated_with_edge(%struct.edge_def* %e) #6, !dbg !2883
  tail call void @execute_on_shrinking_pred(%struct.edge_def* %e) #6, !dbg !2884
  tail call fastcc void @disconnect_src(%struct.edge_def* %e) #8, !dbg !2885
  tail call fastcc void @disconnect_dest(%struct.edge_def* %e) #8, !dbg !2886
  tail call void @redirect_edge_var_map_clear(%struct.edge_def* %e) #6, !dbg !2887
  tail call fastcc void @free_edge(%struct.edge_def* %e) #8, !dbg !2888
  ret void, !dbg !2889
}

declare dso_local void @remove_predictions_associated_with_edge(%struct.edge_def*) local_unnamed_addr #1

declare dso_local void @execute_on_shrinking_pred(%struct.edge_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @disconnect_src(%struct.edge_def* %e) unnamed_addr #0 !dbg !2890 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %tmp2 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2892, metadata !DIExpression()), !dbg !2896
  %src1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !2897
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8, !dbg !2897
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2893, metadata !DIExpression()), !dbg !2896
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2898
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2898
  %2 = bitcast %struct.edge_iterator* %tmp2 to i8*, !dbg !2899
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2899
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 1, !dbg !2899
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2899
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp2, i64 0, i32 0, !dbg !2899
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !2899
  store i32 %4, i32* %3, align 8, !dbg !2899
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp2, i64 0, i32 1, !dbg !2899
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !2899
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !2899
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !2899
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2899
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2901
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2901
  br label %for.cond, !dbg !2903

for.cond:                                         ; preds = %if.else, %entry
  %9 = load i32, i32* %7, align 8, !dbg !2904
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !2904
  %call3 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %9, %struct.VEC_edge_gc** %10) #8, !dbg !2904
  call void @llvm.dbg.value(metadata %struct.edge_def* %call3, metadata !2895, metadata !DIExpression()), !dbg !2896
  %tobool = icmp eq %struct.edge_def* %call3, null, !dbg !2905
  br i1 %tobool, label %for.end, label %for.body, !dbg !2905

for.body:                                         ; preds = %for.cond
  %cmp = icmp eq %struct.edge_def* %call3, %e, !dbg !2906
  br i1 %cmp, label %if.then, label %if.else, !dbg !2909

if.then:                                          ; preds = %for.body
  %11 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2910
  %tobool5 = icmp eq %struct.VEC_edge_gc* %11, null, !dbg !2910
  br i1 %tobool5, label %cond.end, label %cond.true, !dbg !2910

cond.true:                                        ; preds = %if.then
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %11, i64 0, i32 0, !dbg !2910
  br label %cond.end, !dbg !2910

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.then ], !dbg !2910
  %12 = load i32, i32* %7, align 8, !dbg !2910
  %call7 = call fastcc %struct.edge_def* @VEC_edge_base_unordered_remove(%struct.VEC_edge_base* %cond, i32 %12) #8, !dbg !2910
  br label %cleanup, !dbg !2912

if.else:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2894, metadata !DIExpression(DW_OP_deref)), !dbg !2896
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2913
  br label %for.cond, !dbg !2914, !llvm.loop !2915

for.end:                                          ; preds = %for.cond
  call void @df_mark_solutions_dirty() #6, !dbg !2917
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2918
  br label %cleanup, !dbg !2919

cleanup:                                          ; preds = %for.end, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2919
  ret void, !dbg !2919
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @disconnect_dest(%struct.edge_def* %e) unnamed_addr #0 !dbg !2920 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2922, metadata !DIExpression()), !dbg !2925
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2926
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8, !dbg !2926
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2923, metadata !DIExpression()), !dbg !2925
  %dest_idx2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !2927
  %1 = load i32, i32* %dest_idx2, align 4, !dbg !2927
  call void @llvm.dbg.value(metadata i32 %1, metadata !2924, metadata !DIExpression()), !dbg !2925
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 0, !dbg !2928
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2928
  %tobool = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !2928
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2928

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !2928
  br label %cond.end, !dbg !2928

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2928
  %call = tail call fastcc %struct.edge_def* @VEC_edge_base_unordered_remove(%struct.VEC_edge_base* %cond, i32 %1) #8, !dbg !2928
  %3 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2929
  %tobool5 = icmp eq %struct.VEC_edge_gc* %3, null, !dbg !2929
  br i1 %tobool5, label %cond.end10, label %cond.true6, !dbg !2929

cond.true6:                                       ; preds = %cond.end
  %base8 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %3, i64 0, i32 0, !dbg !2929
  br label %cond.end10, !dbg !2929

cond.end10:                                       ; preds = %cond.end, %cond.true6
  %cond11 = phi %struct.VEC_edge_base* [ %base8, %cond.true6 ], [ null, %cond.end ], !dbg !2929
  %call12 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond11) #8, !dbg !2929
  %cmp = icmp ult i32 %1, %call12, !dbg !2931
  br i1 %cmp, label %if.then, label %if.end, !dbg !2932

if.then:                                          ; preds = %cond.end10
  %4 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2933
  %tobool14 = icmp eq %struct.VEC_edge_gc* %4, null, !dbg !2933
  br i1 %tobool14, label %cond.end19, label %cond.true15, !dbg !2933

cond.true15:                                      ; preds = %if.then
  %base17 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %4, i64 0, i32 0, !dbg !2933
  br label %cond.end19, !dbg !2933

cond.end19:                                       ; preds = %if.then, %cond.true15
  %cond20 = phi %struct.VEC_edge_base* [ %base17, %cond.true15 ], [ null, %if.then ], !dbg !2933
  %call21 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond20, i32 %1) #8, !dbg !2933
  %dest_idx22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 6, !dbg !2934
  store i32 %1, i32* %dest_idx22, align 4, !dbg !2935
  br label %if.end, !dbg !2933

if.end:                                           ; preds = %cond.end19, %cond.end10
  tail call void @df_mark_solutions_dirty() #6, !dbg !2936
  ret void, !dbg !2937
}

declare dso_local void @redirect_edge_var_map_clear(%struct.edge_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @redirect_edge_succ(%struct.edge_def* %e, %struct.basic_block_def* %new_succ) local_unnamed_addr #4 !dbg !2938 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %new_succ, metadata !2943, metadata !DIExpression()), !dbg !2944
  tail call void @execute_on_shrinking_pred(%struct.edge_def* %e) #6, !dbg !2945
  tail call fastcc void @disconnect_dest(%struct.edge_def* %e) #8, !dbg !2946
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !2947
  store %struct.basic_block_def* %new_succ, %struct.basic_block_def** %dest, align 8, !dbg !2948
  tail call fastcc void @connect_dest(%struct.edge_def* %e) #8, !dbg !2949
  tail call void @execute_on_growing_pred(%struct.edge_def* %e) #6, !dbg !2950
  ret void, !dbg !2951
}

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def* %e, %struct.basic_block_def* %new_succ) local_unnamed_addr #4 !dbg !2952 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2956, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %new_succ, metadata !2957, metadata !DIExpression()), !dbg !2959
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !2960
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2960
  %call = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %0, %struct.basic_block_def* %new_succ) #6, !dbg !2961
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !2958, metadata !DIExpression()), !dbg !2959
  %tobool = icmp ne %struct.edge_def* %call, null, !dbg !2962
  %cmp = icmp ne %struct.edge_def* %call, %e, !dbg !2964
  %or.cond = and i1 %tobool, %cmp, !dbg !2965
  br i1 %or.cond, label %if.then, label %if.else, !dbg !2965

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !2966
  %1 = load i32, i32* %flags, align 8, !dbg !2966
  %flags1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 7, !dbg !2968
  %2 = load i32, i32* %flags1, align 8, !dbg !2969
  %or = or i32 %2, %1, !dbg !2969
  store i32 %or, i32* %flags1, align 8, !dbg !2969
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 8, !dbg !2970
  %3 = load i32, i32* %probability, align 4, !dbg !2970
  %probability2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 8, !dbg !2971
  %4 = load i32, i32* %probability2, align 4, !dbg !2972
  %add = add nsw i32 %4, %3, !dbg !2972
  %cmp4 = icmp sgt i32 %add, 10000, !dbg !2973
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !2975

if.then5:                                         ; preds = %if.then
  br label %if.end, !dbg !2976

if.end:                                           ; preds = %if.then5, %if.then
  %storemerge = phi i32 [ 10000, %if.then5 ], [ %add, %if.then ], !dbg !2977
  store i32 %storemerge, i32* %probability2, align 4, !dbg !2977
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 9, !dbg !2978
  %5 = load i64, i64* %count, align 8, !dbg !2978
  %count7 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 9, !dbg !2979
  %6 = load i64, i64* %count7, align 8, !dbg !2980
  %add8 = add nsw i64 %6, %5, !dbg !2980
  store i64 %add8, i64* %count7, align 8, !dbg !2980
  tail call void @remove_edge(%struct.edge_def* %e) #6, !dbg !2981
  tail call void @redirect_edge_var_map_dup(%struct.edge_def* nonnull %call, %struct.edge_def* %e) #6, !dbg !2982
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !2956, metadata !DIExpression()), !dbg !2959
  br label %if.end9, !dbg !2983

if.else:                                          ; preds = %entry
  tail call void @redirect_edge_succ(%struct.edge_def* %e, %struct.basic_block_def* %new_succ) #8, !dbg !2984
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %e.addr.0 = phi %struct.edge_def* [ %call, %if.end ], [ %e, %if.else ]
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.addr.0, metadata !2956, metadata !DIExpression()), !dbg !2959
  ret %struct.edge_def* %e.addr.0, !dbg !2985
}

declare dso_local void @remove_edge(%struct.edge_def*) local_unnamed_addr #1

declare dso_local void @redirect_edge_var_map_dup(%struct.edge_def*, %struct.edge_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @redirect_edge_pred(%struct.edge_def* %e, %struct.basic_block_def* %new_pred) local_unnamed_addr #4 !dbg !2986 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %new_pred, metadata !2989, metadata !DIExpression()), !dbg !2990
  tail call fastcc void @disconnect_src(%struct.edge_def* %e) #8, !dbg !2991
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !2992
  store %struct.basic_block_def* %new_pred, %struct.basic_block_def** %src, align 8, !dbg !2993
  tail call fastcc void @connect_src(%struct.edge_def* %e) #8, !dbg !2994
  ret void, !dbg !2995
}

; Function Attrs: nounwind uwtable
define dso_local void @clear_bb_flags() local_unnamed_addr #4 !dbg !2996 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2999
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2999
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2999
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2999
  br label %for.cond, !dbg !2999

for.cond:                                         ; preds = %for.body, %entry
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.body ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3001
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2998, metadata !DIExpression()), !dbg !3002
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3003
  br i1 %cmp, label %for.end, label %for.body, !dbg !2999

for.body:                                         ; preds = %for.cond
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !3005
  %2 = load i32, i32* %flags, align 8, !dbg !3005
  %or = and i32 %2, 880, !dbg !3006
  store i32 %or, i32* %flags, align 8, !dbg !3007
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3003
  br label %for.cond, !dbg !3003, !llvm.loop !3008

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3010
}

; Function Attrs: nounwind uwtable
define dso_local void @check_bb_profile(%struct.basic_block_def* %bb, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !3011 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp16 = alloca %struct.edge_iterator, align 8
  %tmp57 = alloca %struct.edge_iterator, align 8
  %tmp79 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3015, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3016, metadata !DIExpression()), !dbg !3021
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3022
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3022
  call void @llvm.dbg.value(metadata i32 0, metadata !3018, metadata !DIExpression()), !dbg !3021
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3023
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3023
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3024
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3024
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3024
  %x_profile_status = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 7, !dbg !3024
  %4 = load i32, i32* %x_profile_status, align 8, !dbg !3024
  %cmp = icmp eq i32 %4, 0, !dbg !3026
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3027

if.end:                                           ; preds = %entry
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !3028
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3028
  %cmp3 = icmp eq %struct.basic_block_def* %5, %bb, !dbg !3030
  br i1 %cmp3, label %if.end51, label %if.then4, !dbg !3031

if.then4:                                         ; preds = %if.end
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3032
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3032
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3032
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3032
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3032
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3032
  store i32 %8, i32* %7, align 8, !dbg !3032
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3032
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3032
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !3032
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !3032
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3032
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3035
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3035
  br label %for.cond, !dbg !3032

for.cond:                                         ; preds = %for.body, %if.then4
  %sum.0 = phi i32 [ 0, %if.then4 ], [ %add, %for.body ], !dbg !3021
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !3018, metadata !DIExpression()), !dbg !3021
  %13 = load i32, i32* %11, align 8, !dbg !3037
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !3037
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  %call5 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %e) #8, !dbg !3037
  %tobool = icmp eq i8 %call5, 0, !dbg !3032
  br i1 %tobool, label %for.end, label %for.body, !dbg !3032

for.body:                                         ; preds = %for.cond
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3038
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !3017, metadata !DIExpression()), !dbg !3021
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 8, !dbg !3039
  %16 = load i32, i32* %probability, align 4, !dbg !3039
  %add = add nsw i32 %sum.0, %16, !dbg !3040
  call void @llvm.dbg.value(metadata i32 %add, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3020, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3037
  br label %for.cond, !dbg !3037, !llvm.loop !3041

for.end:                                          ; preds = %for.cond
  %sum.0.lcssa = phi i32 [ %sum.0, %for.cond ], !dbg !3021
  call void @llvm.dbg.value(metadata i32 %sum.0.lcssa, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i32 %sum.0.lcssa, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i32 %sum.0.lcssa, metadata !3018, metadata !DIExpression()), !dbg !3021
  %17 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3043
  %tobool7 = icmp eq %struct.VEC_edge_gc* %17, null, !dbg !3043
  br i1 %tobool7, label %cond.end, label %cond.true, !dbg !3043

cond.true:                                        ; preds = %for.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %17, i64 0, i32 0, !dbg !3043
  br label %cond.end, !dbg !3043

cond.end:                                         ; preds = %for.end, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.end ], !dbg !3043
  %call9 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3043
  %tobool10 = icmp eq i32 %call9, 0, !dbg !3043
  br i1 %tobool10, label %if.end15, label %land.lhs.true, !dbg !3045

land.lhs.true:                                    ; preds = %cond.end
  %sub = add nsw i32 %sum.0.lcssa, -10000, !dbg !3046
  %call11 = call i32 @abs(i32 %sub) #6, !dbg !3047
  %cmp12 = icmp sgt i32 %call11, 100, !dbg !3048
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !3049

if.then13:                                        ; preds = %land.lhs.true
  %conv = sitofp i32 %sum.0.lcssa to double, !dbg !3050
  %mul = fmul double %conv, 1.000000e+02, !dbg !3051
  %div = fdiv double %mul, 1.000000e+04, !dbg !3052
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), double %div) #6, !dbg !3053
  br label %if.end15, !dbg !3053

if.end15:                                         ; preds = %cond.end, %if.then13, %land.lhs.true
  call void @llvm.dbg.value(metadata i64 0, metadata !3019, metadata !DIExpression()), !dbg !3021
  %18 = bitcast %struct.edge_iterator* %tmp16 to i8*, !dbg !3054
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3054
  %call18 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3054
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp16, i64 0, i32 0, !dbg !3054
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call18, 0, !dbg !3054
  store i32 %20, i32* %19, align 8, !dbg !3054
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp16, i64 0, i32 1, !dbg !3054
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call18, 1, !dbg !3054
  store %struct.VEC_edge_gc** %22, %struct.VEC_edge_gc*** %21, align 8, !dbg !3054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !3054
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3054
  br label %for.cond19, !dbg !3054

for.cond19:                                       ; preds = %for.body22, %if.end15
  %lsum.0 = phi i64 [ 0, %if.end15 ], [ %add23, %for.body22 ], !dbg !3056
  call void @llvm.dbg.value(metadata i64 %lsum.0, metadata !3019, metadata !DIExpression()), !dbg !3021
  %23 = load i32, i32* %11, align 8, !dbg !3057
  %24 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !3057
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  %call20 = call fastcc zeroext i8 @ei_cond(i32 %23, %struct.VEC_edge_gc** %24, %struct.edge_def** nonnull %e) #8, !dbg !3057
  %tobool21 = icmp eq i8 %call20, 0, !dbg !3054
  br i1 %tobool21, label %for.end25, label %for.body22, !dbg !3054

for.body22:                                       ; preds = %for.cond19
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3059
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !3017, metadata !DIExpression()), !dbg !3021
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i64 0, i32 9, !dbg !3060
  %26 = load i64, i64* %count, align 8, !dbg !3060
  %add23 = add nsw i64 %lsum.0, %26, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %add23, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3020, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3057
  br label %for.cond19, !dbg !3057, !llvm.loop !3062

for.end25:                                        ; preds = %for.cond19
  %lsum.0.lcssa = phi i64 [ %lsum.0, %for.cond19 ], !dbg !3056
  call void @llvm.dbg.value(metadata i64 %lsum.0.lcssa, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %lsum.0.lcssa, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %lsum.0.lcssa, metadata !3019, metadata !DIExpression()), !dbg !3021
  %27 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3064
  %tobool27 = icmp eq %struct.VEC_edge_gc* %27, null, !dbg !3064
  br i1 %tobool27, label %cond.end32, label %cond.true28, !dbg !3064

cond.true28:                                      ; preds = %for.end25
  %base30 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %27, i64 0, i32 0, !dbg !3064
  br label %cond.end32, !dbg !3064

cond.end32:                                       ; preds = %for.end25, %cond.true28
  %cond33 = phi %struct.VEC_edge_base* [ %base30, %cond.true28 ], [ null, %for.end25 ], !dbg !3064
  %call34 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond33) #8, !dbg !3064
  %tobool35 = icmp eq i32 %call34, 0, !dbg !3064
  br i1 %tobool35, label %if.end51, label %land.lhs.true36, !dbg !3066

land.lhs.true36:                                  ; preds = %cond.end32
  %count37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 8, !dbg !3067
  %28 = load i64, i64* %count37, align 8, !dbg !3067
  %sub38 = sub nsw i64 %lsum.0.lcssa, %28, !dbg !3068
  %cmp39 = icmp sgt i64 %sub38, 100, !dbg !3069
  br i1 %cmp39, label %if.then45, label %lor.lhs.false, !dbg !3070

lor.lhs.false:                                    ; preds = %land.lhs.true36
  %cmp43 = icmp slt i64 %sub38, -100, !dbg !3071
  br i1 %cmp43, label %if.then45, label %if.end51, !dbg !3072

if.then45:                                        ; preds = %lor.lhs.false, %land.lhs.true36
  %conv46 = trunc i64 %lsum.0.lcssa to i32, !dbg !3073
  %conv48 = trunc i64 %28 to i32, !dbg !3074
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %conv46, i32 %conv48) #6, !dbg !3075
  br label %if.end51, !dbg !3075

if.end51:                                         ; preds = %cond.end32, %if.end, %lor.lhs.false, %if.then45
  %29 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3076
  %cfg53 = getelementptr inbounds %struct.function, %struct.function* %29, i64 0, i32 1, !dbg !3076
  %30 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg53, align 8, !dbg !3076
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %30, i64 0, i32 0, !dbg !3076
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3076
  %cmp54 = icmp eq %struct.basic_block_def* %31, %bb, !dbg !3078
  br i1 %cmp54, label %cleanup, label %if.then56, !dbg !3079

if.then56:                                        ; preds = %if.end51
  call void @llvm.dbg.value(metadata i32 0, metadata !3018, metadata !DIExpression()), !dbg !3021
  %32 = bitcast %struct.edge_iterator* %tmp57 to i8*, !dbg !3080
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #7, !dbg !3080
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3080
  %call58 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3080
  %33 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp57, i64 0, i32 0, !dbg !3080
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call58, 0, !dbg !3080
  store i32 %34, i32* %33, align 8, !dbg !3080
  %35 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp57, i64 0, i32 1, !dbg !3080
  %36 = extractvalue { i32, %struct.VEC_edge_gc** } %call58, 1, !dbg !3080
  store %struct.VEC_edge_gc** %36, %struct.VEC_edge_gc*** %35, align 8, !dbg !3080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %32, i64 16, i1 false), !dbg !3080
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #7, !dbg !3080
  %37 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3083
  %38 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3083
  br label %for.cond59, !dbg !3080

for.cond59:                                       ; preds = %for.body62, %if.then56
  %sum.1 = phi i32 [ 0, %if.then56 ], [ %add67, %for.body62 ], !dbg !3085
  call void @llvm.dbg.value(metadata i32 %sum.1, metadata !3018, metadata !DIExpression()), !dbg !3021
  %39 = load i32, i32* %37, align 8, !dbg !3086
  %40 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %38, align 8, !dbg !3086
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  %call60 = call fastcc zeroext i8 @ei_cond(i32 %39, %struct.VEC_edge_gc** %40, %struct.edge_def** nonnull %e) #8, !dbg !3086
  %tobool61 = icmp eq i8 %call60, 0, !dbg !3080
  br i1 %tobool61, label %for.end69, label %for.body62, !dbg !3080

for.body62:                                       ; preds = %for.cond59
  %41 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3087
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !3017, metadata !DIExpression()), !dbg !3021
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i64 0, i32 0, !dbg !3087
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3087
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i64 0, i32 11, !dbg !3087
  %43 = load i32, i32* %frequency, align 8, !dbg !3087
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !3017, metadata !DIExpression()), !dbg !3021
  %probability63 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i64 0, i32 8, !dbg !3087
  %44 = load i32, i32* %probability63, align 4, !dbg !3087
  %mul64 = mul nsw i32 %43, %44, !dbg !3087
  %add65 = add nsw i32 %mul64, 5000, !dbg !3087
  %div66 = sdiv i32 %add65, 10000, !dbg !3087
  %add67 = add nsw i32 %sum.1, %div66, !dbg !3088
  call void @llvm.dbg.value(metadata i32 %add67, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3020, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3086
  br label %for.cond59, !dbg !3086, !llvm.loop !3089

for.end69:                                        ; preds = %for.cond59
  %sum.1.lcssa = phi i32 [ %sum.1, %for.cond59 ], !dbg !3085
  call void @llvm.dbg.value(metadata i32 %sum.1.lcssa, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i32 %sum.1.lcssa, metadata !3018, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i32 %sum.1.lcssa, metadata !3018, metadata !DIExpression()), !dbg !3021
  %frequency70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3091
  %45 = load i32, i32* %frequency70, align 8, !dbg !3091
  %sub71 = sub nsw i32 %sum.1.lcssa, %45, !dbg !3093
  %call72 = call i32 @abs(i32 %sub71) #6, !dbg !3094
  %cmp73 = icmp sgt i32 %call72, 100, !dbg !3095
  br i1 %cmp73, label %if.then75, label %if.end78, !dbg !3096

if.then75:                                        ; preds = %for.end69
  %46 = load i32, i32* %frequency70, align 8, !dbg !3097
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %sum.1.lcssa, i32 %46) #6, !dbg !3098
  br label %if.end78, !dbg !3098

if.end78:                                         ; preds = %if.then75, %for.end69
  call void @llvm.dbg.value(metadata i64 0, metadata !3019, metadata !DIExpression()), !dbg !3021
  %47 = bitcast %struct.edge_iterator* %tmp79 to i8*, !dbg !3099
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %47) #7, !dbg !3099
  %call81 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3099
  %48 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp79, i64 0, i32 0, !dbg !3099
  %49 = extractvalue { i32, %struct.VEC_edge_gc** } %call81, 0, !dbg !3099
  store i32 %49, i32* %48, align 8, !dbg !3099
  %50 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp79, i64 0, i32 1, !dbg !3099
  %51 = extractvalue { i32, %struct.VEC_edge_gc** } %call81, 1, !dbg !3099
  store %struct.VEC_edge_gc** %51, %struct.VEC_edge_gc*** %50, align 8, !dbg !3099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %47, i64 16, i1 false), !dbg !3099
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %47) #7, !dbg !3099
  br label %for.cond82, !dbg !3099

for.cond82:                                       ; preds = %for.body85, %if.end78
  %lsum.1 = phi i64 [ 0, %if.end78 ], [ %add87, %for.body85 ], !dbg !3085
  call void @llvm.dbg.value(metadata i64 %lsum.1, metadata !3019, metadata !DIExpression()), !dbg !3021
  %52 = load i32, i32* %37, align 8, !dbg !3101
  %53 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %38, align 8, !dbg !3101
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3017, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  %call83 = call fastcc zeroext i8 @ei_cond(i32 %52, %struct.VEC_edge_gc** %53, %struct.edge_def** nonnull %e) #8, !dbg !3101
  %tobool84 = icmp eq i8 %call83, 0, !dbg !3099
  br i1 %tobool84, label %for.end89, label %for.body85, !dbg !3099

for.body85:                                       ; preds = %for.cond82
  %54 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3103
  call void @llvm.dbg.value(metadata %struct.edge_def* %54, metadata !3017, metadata !DIExpression()), !dbg !3021
  %count86 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %54, i64 0, i32 9, !dbg !3104
  %55 = load i64, i64* %count86, align 8, !dbg !3104
  %add87 = add nsw i64 %lsum.1, %55, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %add87, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3020, metadata !DIExpression(DW_OP_deref)), !dbg !3021
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3101
  br label %for.cond82, !dbg !3101, !llvm.loop !3106

for.end89:                                        ; preds = %for.cond82
  %lsum.1.lcssa = phi i64 [ %lsum.1, %for.cond82 ], !dbg !3085
  call void @llvm.dbg.value(metadata i64 %lsum.1.lcssa, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %lsum.1.lcssa, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %lsum.1.lcssa, metadata !3019, metadata !DIExpression()), !dbg !3021
  %count90 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 8, !dbg !3108
  %56 = load i64, i64* %count90, align 8, !dbg !3108
  %sub91 = sub nsw i64 %lsum.1.lcssa, %56, !dbg !3110
  %cmp92 = icmp sgt i64 %sub91, 100, !dbg !3111
  br i1 %cmp92, label %if.then99, label %lor.lhs.false94, !dbg !3112

lor.lhs.false94:                                  ; preds = %for.end89
  %cmp97 = icmp slt i64 %sub91, -100, !dbg !3113
  br i1 %cmp97, label %if.then99, label %cleanup, !dbg !3114

if.then99:                                        ; preds = %lor.lhs.false94, %for.end89
  %conv100 = trunc i64 %lsum.1.lcssa to i32, !dbg !3115
  %conv102 = trunc i64 %56 to i32, !dbg !3116
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %conv100, i32 %conv102) #6, !dbg !3117
  br label %cleanup, !dbg !3117

cleanup:                                          ; preds = %if.end51, %if.then99, %lor.lhs.false94, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3118
  ret void, !dbg !3118
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3119 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3125, metadata !DIExpression()), !dbg !3126
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3127
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3127

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3127
  %0 = load i32, i32* %num, align 8, !dbg !3127
  br label %cond.end, !dbg !3127

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3127
  ret i32 %cond, !dbg !3127
}

declare dso_local i32 @abs(i32) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_regset(%struct.bitmap_head_def* %r, %struct._IO_FILE* %outf) local_unnamed_addr #4 !dbg !3128 {
entry:
  %i = alloca i32, align 4
  %rsi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %r, metadata !3133, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %outf, metadata !3134, metadata !DIExpression()), !dbg !3145
  %0 = bitcast i32* %i to i8*, !dbg !3146
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3146
  %1 = bitcast %struct.bitmap_iterator* %rsi to i8*, !dbg !3147
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #7, !dbg !3147
  %cmp = icmp eq %struct.bitmap_head_def* %r, null, !dbg !3148
  br i1 %cmp, label %if.then, label %if.end, !dbg !3150

if.then:                                          ; preds = %entry
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %outf) #6, !dbg !3151
  br label %cleanup, !dbg !3153

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %i, metadata !3135, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !3136, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %rsi, %struct.bitmap_head_def* nonnull %r, i32 0, i32* nonnull %i) #8, !dbg !3154
  br label %for.cond, !dbg !3154

for.cond:                                         ; preds = %for.inc, %if.end
  call void @llvm.dbg.value(metadata i32* %i, metadata !3135, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !3136, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  %call1 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %rsi, i32* nonnull %i) #8, !dbg !3156
  %tobool = icmp eq i8 %call1, 0, !dbg !3154
  br i1 %tobool, label %cleanup.loopexit, label %for.body, !dbg !3154

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !3158
  call void @llvm.dbg.value(metadata i32 %2, metadata !3135, metadata !DIExpression()), !dbg !3145
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %2) #6, !dbg !3160
  %3 = load i32, i32* %i, align 4, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %3, metadata !3135, metadata !DIExpression()), !dbg !3145
  %cmp3 = icmp ult i32 %3, 53, !dbg !3163
  br i1 %cmp3, label %if.then4, label %for.inc, !dbg !3164

if.then4:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %3, metadata !3135, metadata !DIExpression()), !dbg !3145
  %idxprom = zext i32 %3 to i64, !dbg !3165
  %arrayidx = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %idxprom, !dbg !3165
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !3165
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %4) #6, !dbg !3166
  br label %for.inc, !dbg !3166

for.inc:                                          ; preds = %for.body, %if.then4
  call void @llvm.dbg.value(metadata i32* %i, metadata !3135, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %rsi, metadata !3136, metadata !DIExpression(DW_OP_deref)), !dbg !3145
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %rsi, i32* nonnull %i) #8, !dbg !3156
  br label %for.cond, !dbg !3156, !llvm.loop !3167

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3169

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #7, !dbg !3169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3169
  ret void, !dbg !3169
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3170 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3179, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3180, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3182, metadata !DIExpression()), !dbg !3183
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3184
  %1 = load i64, i64* %0, align 8, !dbg !3184
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3185
  store i64 %1, i64* %2, align 8, !dbg !3185
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3186
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3187
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3188
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3191
  br label %while.body, !dbg !3191

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !3192
  br i1 %tobool, label %if.then, label %if.end, !dbg !3193

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3194
  br label %while.end, !dbg !3196

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !3197

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !3191, !llvm.loop !3198

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !3200

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3200
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !3202
  %7 = load i32, i32* %indx9, align 8, !dbg !3202
  %cmp11 = icmp eq i32 %7, 0, !dbg !3203
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3204

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !3205
  %8 = load i32, i32* %indx14, align 8, !dbg !3205
  %mul = shl i32 %8, 7, !dbg !3206
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3181, metadata !DIExpression()), !dbg !3183
  br label %if.end15, !dbg !3207

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3181, metadata !DIExpression()), !dbg !3183
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3208
  store i32 0, i32* %word_no, align 8, !dbg !3209
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !3210
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3210
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3211
  store i64 %9, i64* %bits21, align 8, !dbg !3212
  %tobool23 = icmp eq i64 %9, 0, !dbg !3213
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3213
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !3214
  call void @llvm.dbg.value(metadata i32 %add, metadata !3181, metadata !DIExpression()), !dbg !3183
  store i32 %add, i32* %bit_no, align 4, !dbg !3215
  ret void, !dbg !3216
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3217 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3221, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3222, metadata !DIExpression()), !dbg !3226
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3227
  %0 = load i64, i64* %bits, align 8, !dbg !3227
  %tobool = icmp eq i64 %0, 0, !dbg !3228
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3229

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3230
  br label %next_bit, !dbg !3233

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3223), !dbg !3234
  br label %while.cond, !dbg !3233

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3235
  %and = and i64 %2, 1, !dbg !3236
  %tobool2 = icmp eq i64 %and, 0, !dbg !3237
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3233

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3238
  store i64 %shr, i64* %bits, align 8, !dbg !3238
  %3 = load i32, i32* %bit_no, align 4, !dbg !3240
  %add = add i32 %3, 1, !dbg !3240
  store i32 %add, i32* %bit_no, align 4, !dbg !3240
  %.pre = load i64, i64* %bits, align 8, !dbg !3235
  br label %while.cond, !dbg !3233, !llvm.loop !3241

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3243
  %sub = add i32 %4, 63, !dbg !3244
  %div = and i32 %sub, -64, !dbg !3245
  store i32 %div, i32* %bit_no, align 4, !dbg !3246
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3247
  %5 = load i32, i32* %word_no, align 8, !dbg !3248
  %inc = add i32 %5, 1, !dbg !3248
  store i32 %inc, i32* %word_no, align 8, !dbg !3248
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3249
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3249
  br label %while.body6, !dbg !3250

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3251

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3252
  %cmp = icmp eq i32 %8, 2, !dbg !3253
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3249
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3251

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3230
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3230
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3230
  store i64 %10, i64* %bits, align 8, !dbg !3254
  %tobool14 = icmp eq i64 %10, 0, !dbg !3255
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3257

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3258
  %add17 = add i32 %11, 64, !dbg !3258
  store i32 %add17, i32* %bit_no, align 4, !dbg !3258
  %12 = load i32, i32* %word_no, align 8, !dbg !3259
  %inc19 = add i32 %12, 1, !dbg !3259
  store i32 %inc19, i32* %word_no, align 8, !dbg !3259
  br label %while.cond7, !dbg !3251, !llvm.loop !3260

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3249
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3262
  %14 = load i64, i64* %13, align 8, !dbg !3262
  store i64 %14, i64* %6, align 8, !dbg !3263
  %tobool24 = icmp eq i64 %14, 0, !dbg !3264
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3266

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3266
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3267
  %16 = load i32, i32* %indx, align 8, !dbg !3267
  %mul28 = shl i32 %16, 7, !dbg !3268
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3269
  store i32 0, i32* %word_no, align 8, !dbg !3270
  br label %while.body6, !dbg !3250, !llvm.loop !3271

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3273

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3273

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3226
  ret i8 %retval.0, !dbg !3273
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3274 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3278, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3279, metadata !DIExpression()), !dbg !3280
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3281
  %0 = load i64, i64* %bits, align 8, !dbg !3282
  %shr = lshr i64 %0, 1, !dbg !3282
  store i64 %shr, i64* %bits, align 8, !dbg !3282
  %1 = load i32, i32* %bit_no, align 4, !dbg !3283
  %add = add i32 %1, 1, !dbg !3283
  store i32 %add, i32* %bit_no, align 4, !dbg !3283
  ret void, !dbg !3284
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_regset(%struct.bitmap_head_def* %r) local_unnamed_addr #4 !dbg !3285 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %r, metadata !3289, metadata !DIExpression()), !dbg !3290
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3291
  tail call void @dump_regset(%struct.bitmap_head_def* %r, %struct._IO_FILE* %0) #8, !dbg !3292
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3293
  %call = tail call i32 @putc(i32 10, %struct._IO_FILE* %1) #6, !dbg !3294
  ret void, !dbg !3295
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_bb_info(%struct.basic_block_def* %bb, i8 zeroext %header, i8 zeroext %footer, i32 %flags, i8* %prefix, %struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !3296 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp49 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3300, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 %header, metadata !3301, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 %footer, metadata !3302, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3303, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !3304, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3305, metadata !DIExpression()), !dbg !3308
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3309
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3309
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3310
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3310
  %tobool = icmp eq i8 %header, 0, !dbg !3311
  br i1 %tobool, label %if.end45, label %if.then, !dbg !3313

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3314
  %2 = load i32, i32* %index, align 8, !dbg !3314
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %prefix, i32 %2) #6, !dbg !3316
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 5, !dbg !3317
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb, align 8, !dbg !3317
  %tobool1 = icmp eq %struct.basic_block_def* %3, null, !dbg !3319
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !3320

if.then2:                                         ; preds = %if.then
  %index4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 9, !dbg !3321
  %4 = load i32, i32* %index4, align 8, !dbg !3321
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %4) #6, !dbg !3322
  br label %if.end, !dbg !3322

if.end:                                           ; preds = %if.then, %if.then2
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 6, !dbg !3323
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !3323
  %tobool6 = icmp eq %struct.basic_block_def* %5, null, !dbg !3325
  br i1 %tobool6, label %if.end11, label %if.then7, !dbg !3326

if.then7:                                         ; preds = %if.end
  %index9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 9, !dbg !3327
  %6 = load i32, i32* %index9, align 8, !dbg !3327
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %6) #6, !dbg !3328
  br label %if.end11, !dbg !3328

if.end11:                                         ; preds = %if.end, %if.then7
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 10, !dbg !3329
  %7 = load i32, i32* %loop_depth, align 4, !dbg !3329
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %7) #6, !dbg !3330
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 8, !dbg !3331
  %8 = load i64, i64* %count, align 8, !dbg !3331
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %8) #6, !dbg !3332
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3333
  %9 = load i32, i32* %frequency, align 8, !dbg !3333
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %9) #6, !dbg !3334
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3335
  %tobool15 = icmp eq %struct.function* %10, null, !dbg !3335
  br i1 %tobool15, label %if.end20, label %land.lhs.true, !dbg !3337

land.lhs.true:                                    ; preds = %if.end11
  %call16 = tail call zeroext i8 @maybe_hot_bb_p(%struct.basic_block_def* %bb) #6, !dbg !3338
  %tobool17 = icmp eq i8 %call16, 0, !dbg !3338
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !3339

if.then18:                                        ; preds = %land.lhs.true
  %call19 = tail call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3340
  br label %if.end20, !dbg !3340

if.end20:                                         ; preds = %land.lhs.true, %if.end11, %if.then18
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3341
  %tobool22 = icmp eq %struct.function* %11, null, !dbg !3341
  br i1 %tobool22, label %if.end29, label %land.lhs.true23, !dbg !3343

land.lhs.true23:                                  ; preds = %if.end20
  %call24 = tail call zeroext i8 @probably_never_executed_bb_p(%struct.basic_block_def* %bb) #6, !dbg !3344
  %tobool26 = icmp eq i8 %call24, 0, !dbg !3344
  br i1 %tobool26, label %if.end29, label %if.then27, !dbg !3345

if.then27:                                        ; preds = %land.lhs.true23
  %call28 = tail call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3346
  br label %if.end29, !dbg !3346

if.end29:                                         ; preds = %land.lhs.true23, %if.end20, %if.then27
  %call30 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3347
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %prefix) #6, !dbg !3348
  %12 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3349
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #7, !dbg !3349
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3349
  %call32 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3349
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3349
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call32, 0, !dbg !3349
  store i32 %14, i32* %13, align 8, !dbg !3349
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3349
  %16 = extractvalue { i32, %struct.VEC_edge_gc** } %call32, 1, !dbg !3349
  store %struct.VEC_edge_gc** %16, %struct.VEC_edge_gc*** %15, align 8, !dbg !3349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %12, i64 16, i1 false), !dbg !3349
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #7, !dbg !3349
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3351
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3351
  br label %for.cond, !dbg !3349

for.cond:                                         ; preds = %for.body, %if.end29
  %19 = load i32, i32* %17, align 8, !dbg !3353
  %20 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %18, align 8, !dbg !3353
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3306, metadata !DIExpression(DW_OP_deref)), !dbg !3308
  %call33 = call fastcc zeroext i8 @ei_cond(i32 %19, %struct.VEC_edge_gc** %20, %struct.edge_def** nonnull %e) #8, !dbg !3353
  %tobool34 = icmp eq i8 %call33, 0, !dbg !3349
  br i1 %tobool34, label %for.end, label %for.body, !dbg !3349

for.body:                                         ; preds = %for.cond
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3354
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @dump_edge_info(%struct._IO_FILE* %file, %struct.edge_def* %21, i32 0) #8, !dbg !3355
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3307, metadata !DIExpression(DW_OP_deref)), !dbg !3308
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3353
  br label %for.cond, !dbg !3353, !llvm.loop !3356

for.end:                                          ; preds = %for.cond
  %and = and i32 %flags, 8, !dbg !3358
  %tobool35 = icmp eq i32 %and, 0, !dbg !3358
  br i1 %tobool35, label %if.end45, label %land.lhs.true36, !dbg !3360

land.lhs.true36:                                  ; preds = %for.end
  %flags37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3361
  %22 = load i32, i32* %flags37, align 8, !dbg !3361
  %and38 = and i32 %22, 512, !dbg !3362
  %tobool39 = icmp ne i32 %and38, 0, !dbg !3362
  %23 = load %struct.df*, %struct.df** @df, align 8, !dbg !3363
  %tobool41 = icmp ne %struct.df* %23, null, !dbg !3363
  %or.cond = and i1 %tobool39, %tobool41, !dbg !3364
  br i1 %or.cond, label %if.then42, label %if.end45, !dbg !3364

if.then42:                                        ; preds = %land.lhs.true36
  %call43 = call i32 @putc(i32 10, %struct._IO_FILE* %file) #6, !dbg !3365
  call void @df_dump_top(%struct.basic_block_def* %bb, %struct._IO_FILE* %file) #6, !dbg !3367
  br label %if.end45, !dbg !3368

if.end45:                                         ; preds = %for.end, %entry, %land.lhs.true36, %if.then42
  %tobool46 = icmp eq i8 %footer, 0, !dbg !3369
  br i1 %tobool46, label %if.end68, label %if.then47, !dbg !3371

if.then47:                                        ; preds = %if.end45
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %prefix) #6, !dbg !3372
  %24 = bitcast %struct.edge_iterator* %tmp49 to i8*, !dbg !3374
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #7, !dbg !3374
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3374
  %call50 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3374
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp49, i64 0, i32 0, !dbg !3374
  %26 = extractvalue { i32, %struct.VEC_edge_gc** } %call50, 0, !dbg !3374
  store i32 %26, i32* %25, align 8, !dbg !3374
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp49, i64 0, i32 1, !dbg !3374
  %28 = extractvalue { i32, %struct.VEC_edge_gc** } %call50, 1, !dbg !3374
  store %struct.VEC_edge_gc** %28, %struct.VEC_edge_gc*** %27, align 8, !dbg !3374
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %24, i64 16, i1 false), !dbg !3374
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #7, !dbg !3374
  %29 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3376
  %30 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3376
  br label %for.cond51, !dbg !3374

for.cond51:                                       ; preds = %for.body54, %if.then47
  %31 = load i32, i32* %29, align 8, !dbg !3378
  %32 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %30, align 8, !dbg !3378
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3306, metadata !DIExpression(DW_OP_deref)), !dbg !3308
  %call52 = call fastcc zeroext i8 @ei_cond(i32 %31, %struct.VEC_edge_gc** %32, %struct.edge_def** nonnull %e) #8, !dbg !3378
  %tobool53 = icmp eq i8 %call52, 0, !dbg !3374
  br i1 %tobool53, label %for.end56, label %for.body54, !dbg !3374

for.body54:                                       ; preds = %for.cond51
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3379
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @dump_edge_info(%struct._IO_FILE* %file, %struct.edge_def* %33, i32 1) #8, !dbg !3380
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3307, metadata !DIExpression(DW_OP_deref)), !dbg !3308
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3378
  br label %for.cond51, !dbg !3378, !llvm.loop !3381

for.end56:                                        ; preds = %for.cond51
  %and57 = and i32 %flags, 8, !dbg !3383
  %tobool58 = icmp eq i32 %and57, 0, !dbg !3383
  br i1 %tobool58, label %if.end68, label %land.lhs.true59, !dbg !3385

land.lhs.true59:                                  ; preds = %for.end56
  %flags60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3386
  %34 = load i32, i32* %flags60, align 8, !dbg !3386
  %and61 = and i32 %34, 512, !dbg !3387
  %tobool62 = icmp ne i32 %and61, 0, !dbg !3387
  %35 = load %struct.df*, %struct.df** @df, align 8, !dbg !3388
  %tobool64 = icmp ne %struct.df* %35, null, !dbg !3388
  %or.cond1 = and i1 %tobool62, %tobool64, !dbg !3389
  br i1 %or.cond1, label %if.then65, label %if.end68, !dbg !3389

if.then65:                                        ; preds = %land.lhs.true59
  %call66 = call i32 @putc(i32 10, %struct._IO_FILE* %file) #6, !dbg !3390
  call void @df_dump_bottom(%struct.basic_block_def* %bb, %struct._IO_FILE* %file) #6, !dbg !3392
  br label %if.end68, !dbg !3393

if.end68:                                         ; preds = %for.end56, %if.end45, %land.lhs.true59, %if.then65
  %call69 = call i32 @putc(i32 10, %struct._IO_FILE* %file) #6, !dbg !3394
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3395
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3395
  ret void, !dbg !3395
}

declare dso_local zeroext i8 @maybe_hot_bb_p(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @probably_never_executed_bb_p(%struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_edge_info(%struct._IO_FILE* %file, %struct.edge_def* %e, i32 %do_succ) local_unnamed_addr #4 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2074, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2075, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i32 %do_succ, metadata !2076, metadata !DIExpression()), !dbg !3396
  %tobool = icmp eq i32 %do_succ, 0, !dbg !3397
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3397

cond.true:                                        ; preds = %entry
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3398
  br label %cond.end, !dbg !3397

cond.false:                                       ; preds = %entry
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3399
  br label %cond.end, !dbg !3397

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.basic_block_def** [ %dest, %cond.true ], [ %src, %cond.false ]
  %cond = load %struct.basic_block_def*, %struct.basic_block_def** %cond.in, align 8, !dbg !3397
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cond, metadata !2077, metadata !DIExpression()), !dbg !3396
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3400
  %tobool1 = icmp eq %struct.function* %0, null, !dbg !3400
  br i1 %tobool1, label %if.else, label %land.lhs.true, !dbg !3402

land.lhs.true:                                    ; preds = %cond.end
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3403
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3403
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3403
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3403
  %cmp = icmp eq %struct.basic_block_def* %cond, %2, !dbg !3404
  br i1 %cmp, label %if.then, label %if.else, !dbg !3405

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3406
  br label %if.end13, !dbg !3406

if.else:                                          ; preds = %cond.end, %land.lhs.true
  br i1 %tobool1, label %if.else11, label %land.lhs.true5, !dbg !3407

land.lhs.true5:                                   ; preds = %if.else
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3409
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !3409
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !3409
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3409
  %cmp8 = icmp eq %struct.basic_block_def* %cond, %4, !dbg !3410
  br i1 %cmp8, label %if.then9, label %if.else11, !dbg !3411

if.then9:                                         ; preds = %land.lhs.true5
  %call10 = tail call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3412
  br label %if.end13, !dbg !3412

if.else11:                                        ; preds = %if.else, %land.lhs.true5
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cond, i64 0, i32 9, !dbg !3413
  %5 = load i32, i32* %index, align 8, !dbg !3413
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %5) #6, !dbg !3414
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else11, %if.then
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 8, !dbg !3415
  %6 = load i32, i32* %probability, align 4, !dbg !3415
  %tobool14 = icmp eq i32 %6, 0, !dbg !3417
  br i1 %tobool14, label %if.end18, label %if.then15, !dbg !3418

if.then15:                                        ; preds = %if.end13
  %conv = sitofp i32 %6 to double, !dbg !3419
  %mul = fmul double %conv, 1.000000e+02, !dbg !3420
  %div = fdiv double %mul, 1.000000e+04, !dbg !3421
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), double %div) #6, !dbg !3422
  br label %if.end18, !dbg !3422

if.end18:                                         ; preds = %if.end13, %if.then15
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 9, !dbg !3423
  %7 = load i64, i64* %count, align 8, !dbg !3423
  %tobool19 = icmp eq i64 %7, 0, !dbg !3425
  br i1 %tobool19, label %if.end24, label %if.then20, !dbg !3426

if.then20:                                        ; preds = %if.end18
  %call21 = tail call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3427
  %8 = load i64, i64* %count, align 8, !dbg !3429
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %8) #6, !dbg !3430
  br label %if.end24, !dbg !3431

if.end24:                                         ; preds = %if.end18, %if.then20
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !3432
  %9 = load i32, i32* %flags, align 8, !dbg !3432
  %tobool25 = icmp eq i32 %9, 0, !dbg !3433
  br i1 %tobool25, label %if.end48, label %if.then26, !dbg !3434

if.then26:                                        ; preds = %if.end24
  call void @llvm.dbg.value(metadata i32 0, metadata !2078, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %9, metadata !2082, metadata !DIExpression()), !dbg !3435
  %call29 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3436
  call void @llvm.dbg.value(metadata i32 0, metadata !2081, metadata !DIExpression()), !dbg !3435
  br label %for.cond, !dbg !3437

for.cond:                                         ; preds = %for.inc, %if.then26
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then26 ], !dbg !3435
  %comma.0 = phi i32 [ %comma.1, %for.inc ], [ 0, %if.then26 ], !dbg !3435
  %flags27.0 = phi i32 [ %flags27.1, %for.inc ], [ %9, %if.then26 ], !dbg !3435
  call void @llvm.dbg.value(metadata i32 %flags27.0, metadata !2082, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2081, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %comma.0, metadata !2078, metadata !DIExpression()), !dbg !3435
  %tobool30 = icmp eq i32 %flags27.0, 0, !dbg !3439
  br i1 %tobool30, label %for.end, label %for.body, !dbg !3439

for.body:                                         ; preds = %for.cond
  %10 = trunc i64 %indvars.iv to i32, !dbg !3440
  %shl = shl i32 1, %10, !dbg !3440
  %and = and i32 %flags27.0, %shl, !dbg !3443
  %tobool31 = icmp eq i32 %and, 0, !dbg !3443
  br i1 %tobool31, label %for.inc, label %if.then32, !dbg !3444

if.then32:                                        ; preds = %for.body
  %neg = xor i32 %shl, -1, !dbg !3445
  %and34 = and i32 %flags27.0, %neg, !dbg !3447
  call void @llvm.dbg.value(metadata i32 %and34, metadata !2082, metadata !DIExpression()), !dbg !3435
  %tobool35 = icmp eq i32 %comma.0, 0, !dbg !3448
  br i1 %tobool35, label %if.end38, label %if.then36, !dbg !3450

if.then36:                                        ; preds = %if.then32
  %call37 = tail call i32 @fputc(i32 44, %struct._IO_FILE* %file) #6, !dbg !3451
  br label %if.end38, !dbg !3451

if.end38:                                         ; preds = %if.then32, %if.then36
  %cmp39 = icmp ult i64 %indvars.iv, 13, !dbg !3452
  br i1 %cmp39, label %if.then41, label %if.else43, !dbg !3454

if.then41:                                        ; preds = %if.end38
  %arrayidx = getelementptr inbounds [13 x i8*], [13 x i8*]* @dump_edge_info.bitnames, i64 0, i64 %indvars.iv, !dbg !3455
  %11 = load i8*, i8** %arrayidx, align 8, !dbg !3455
  %call42 = tail call i32 @fputs(i8* %11, %struct._IO_FILE* %file) #6, !dbg !3456
  br label %for.inc, !dbg !3456

if.else43:                                        ; preds = %if.end38
  %12 = trunc i64 %indvars.iv to i32, !dbg !3457
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i32 %12) #6, !dbg !3457
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else43, %if.then41
  %comma.1 = phi i32 [ %comma.0, %for.body ], [ 1, %if.else43 ], [ 1, %if.then41 ], !dbg !3435
  %flags27.1 = phi i32 [ %flags27.0, %for.body ], [ %and34, %if.else43 ], [ %and34, %if.then41 ], !dbg !3435
  call void @llvm.dbg.value(metadata i32 %flags27.1, metadata !2082, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %comma.1, metadata !2078, metadata !DIExpression()), !dbg !3435
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !3458
  call void @llvm.dbg.value(metadata i32 undef, metadata !2081, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3435
  br label %for.cond, !dbg !3459, !llvm.loop !3460

for.end:                                          ; preds = %for.cond
  %call47 = tail call i32 @fputc(i32 41, %struct._IO_FILE* %file) #6, !dbg !3462
  br label %if.end48, !dbg !3463

if.end48:                                         ; preds = %if.end24, %for.end
  ret void, !dbg !3464
}

declare dso_local void @df_dump_top(%struct.basic_block_def*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @df_dump_bottom(%struct.basic_block_def*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_reg_info(%struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !3465 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3469, metadata !DIExpression()), !dbg !3477
  %call = tail call i32 @max_reg_num() #6, !dbg !3478
  call void @llvm.dbg.value(metadata i32 %call, metadata !3471, metadata !DIExpression()), !dbg !3477
  %0 = load i32, i32* @reload_completed, align 4, !dbg !3479
  %tobool = icmp eq i32 %0, 0, !dbg !3479
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !3481

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @reg_info_p_size, align 8, !dbg !3482
  %conv = zext i32 %call to i64, !dbg !3484
  %cmp = icmp ult i64 %1, %conv, !dbg !3485
  %conv3 = trunc i64 %1 to i32, !dbg !3486
  %max.0 = select i1 %cmp, i32 %conv3, i32 %call, !dbg !3486
  call void @llvm.dbg.value(metadata i32 %max.0, metadata !3471, metadata !DIExpression()), !dbg !3477
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %max.0) #6, !dbg !3487
  call void @llvm.dbg.value(metadata i32 53, metadata !3470, metadata !DIExpression()), !dbg !3477
  %2 = zext i32 %max.0 to i64, !dbg !3488
  br label %for.cond, !dbg !3488

for.cond:                                         ; preds = %if.end179, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end179 ], [ 53, %if.end ], !dbg !3489
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3470, metadata !DIExpression()), !dbg !3477
  %cmp6 = icmp ult i64 %indvars.iv, %2, !dbg !3490
  br i1 %cmp6, label %for.body, label %cleanup.cont.loopexit, !dbg !3491

for.body:                                         ; preds = %for.cond
  %3 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !3492
  %tobool8 = icmp eq %struct.regstat_n_sets_and_refs_t* %3, null, !dbg !3492
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !3494

if.then9:                                         ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32, !dbg !3495
  %call10 = tail call fastcc i32 @REG_N_REFS(i32 %4) #8, !dbg !3495
  %5 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3496
  %live_length = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %5, i64 %indvars.iv, i32 2, !dbg !3496
  %6 = load i32, i32* %live_length, align 4, !dbg !3496
  %7 = trunc i64 %indvars.iv to i32, !dbg !3497
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i32 %7, i32 %call10, i32 %6) #6, !dbg !3497
  br label %if.end24, !dbg !3497

if.else:                                          ; preds = %for.body
  %8 = load %struct.df*, %struct.df** @df, align 8, !dbg !3498
  %tobool12 = icmp eq %struct.df* %8, null, !dbg !3498
  br i1 %tobool12, label %if.else.if.end24_crit_edge, label %if.then13, !dbg !3500

if.else.if.end24_crit_edge:                       ; preds = %if.else
  br label %if.end24, !dbg !3500

if.then13:                                        ; preds = %if.else
  %use_regs = getelementptr inbounds %struct.df, %struct.df* %8, i64 0, i32 6, !dbg !3501
  %9 = load %struct.df_reg_info**, %struct.df_reg_info*** %use_regs, align 8, !dbg !3501
  %arrayidx15 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %9, i64 %indvars.iv, !dbg !3501
  %10 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx15, align 8, !dbg !3501
  %n_refs = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %10, i64 0, i32 1, !dbg !3501
  %11 = load i32, i32* %n_refs, align 8, !dbg !3501
  %def_regs = getelementptr inbounds %struct.df, %struct.df* %8, i64 0, i32 5, !dbg !3502
  %12 = load %struct.df_reg_info**, %struct.df_reg_info*** %def_regs, align 8, !dbg !3502
  %arrayidx17 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %12, i64 %indvars.iv, !dbg !3502
  %13 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx17, align 8, !dbg !3502
  %n_refs18 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %13, i64 0, i32 1, !dbg !3502
  %14 = load i32, i32* %n_refs18, align 8, !dbg !3502
  %add = add i32 %11, %14, !dbg !3503
  %15 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3504
  %live_length21 = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %15, i64 %indvars.iv, i32 2, !dbg !3504
  %16 = load i32, i32* %live_length21, align 4, !dbg !3504
  %17 = trunc i64 %indvars.iv to i32, !dbg !3505
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i32 %17, i32 %add, i32 %16) #6, !dbg !3505
  br label %if.end24, !dbg !3505

if.end24:                                         ; preds = %if.else.if.end24_crit_edge, %if.then13, %if.then9
  %18 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3506
  %basic_block = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %18, i64 %indvars.iv, i32 6, !dbg !3506
  %19 = load i32, i32* %basic_block, align 4, !dbg !3506
  %cmp27 = icmp sgt i32 %19, 1, !dbg !3508
  br i1 %cmp27, label %if.then29, label %if.end34, !dbg !3509

if.then29:                                        ; preds = %if.end24
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32 %19) #6, !dbg !3510
  br label %if.end34, !dbg !3510

if.end34:                                         ; preds = %if.then29, %if.end24
  %20 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !3511
  %tobool35 = icmp eq %struct.regstat_n_sets_and_refs_t* %20, null, !dbg !3511
  br i1 %tobool35, label %if.else42, label %if.then36, !dbg !3513

if.then36:                                        ; preds = %if.end34
  %21 = trunc i64 %indvars.iv to i32, !dbg !3514
  %call37 = tail call fastcc i32 @REG_N_SETS(i32 %21) #8, !dbg !3514
  %22 = trunc i64 %indvars.iv to i32, !dbg !3515
  %call38 = tail call fastcc i32 @REG_N_SETS(i32 %22) #8, !dbg !3515
  %cmp39 = icmp eq i32 %call38, 1, !dbg !3516
  %cond = select i1 %cmp39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), !dbg !3517
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %call37, i8* %cond) #6, !dbg !3518
  br label %if.end58, !dbg !3518

if.else42:                                        ; preds = %if.end34
  %23 = load %struct.df*, %struct.df** @df, align 8, !dbg !3519
  %tobool43 = icmp eq %struct.df* %23, null, !dbg !3519
  br i1 %tobool43, label %if.end58, label %if.then44, !dbg !3521

if.then44:                                        ; preds = %if.else42
  %def_regs45 = getelementptr inbounds %struct.df, %struct.df* %23, i64 0, i32 5, !dbg !3522
  %24 = load %struct.df_reg_info**, %struct.df_reg_info*** %def_regs45, align 8, !dbg !3522
  %arrayidx47 = getelementptr inbounds %struct.df_reg_info*, %struct.df_reg_info** %24, i64 %indvars.iv, !dbg !3522
  %25 = load %struct.df_reg_info*, %struct.df_reg_info** %arrayidx47, align 8, !dbg !3522
  %n_refs48 = getelementptr inbounds %struct.df_reg_info, %struct.df_reg_info* %25, i64 0, i32 1, !dbg !3522
  %26 = load i32, i32* %n_refs48, align 8, !dbg !3522
  %cmp53 = icmp eq i32 %26, 1, !dbg !3523
  %cond55 = select i1 %cmp53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), !dbg !3524
  %call56 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %26, i8* %cond55) #6, !dbg !3525
  br label %if.end58, !dbg !3525

if.end58:                                         ; preds = %if.else42, %if.then44, %if.then36
  %27 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !3526
  %arrayidx60 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %27, i64 %indvars.iv, !dbg !3526
  %28 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx60, align 8, !dbg !3526
  %cmp61 = icmp eq %struct.rtx_def* %28, null, !dbg !3528
  br i1 %cmp61, label %if.end68, label %land.lhs.true, !dbg !3529

land.lhs.true:                                    ; preds = %if.end58
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i64 0, i32 0, !dbg !3529
  %bf.load = load i32, i32* %29, align 8, !dbg !3530
  %bf.clear = and i32 %bf.load, 134217728, !dbg !3530
  %tobool65 = icmp eq i32 %bf.clear, 0, !dbg !3530
  br i1 %tobool65, label %if.end68, label %if.then66, !dbg !3531

if.then66:                                        ; preds = %land.lhs.true
  %call67 = tail call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3532
  br label %if.end68, !dbg !3532

if.end68:                                         ; preds = %land.lhs.true, %if.end58, %if.then66
  %30 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3533
  %deaths = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %30, i64 %indvars.iv, i32 1, !dbg !3533
  %31 = load i32, i32* %deaths, align 4, !dbg !3533
  %cmp71 = icmp eq i32 %31, 1, !dbg !3535
  br i1 %cmp71, label %if.end78, label %if.then73, !dbg !3536

if.then73:                                        ; preds = %if.end68
  %call77 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i32 %31) #6, !dbg !3537
  %.pre = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3538
  br label %if.end78, !dbg !3537

if.end78:                                         ; preds = %if.end68, %if.then73
  %32 = phi %struct.reg_info_t* [ %30, %if.end68 ], [ %.pre, %if.then73 ], !dbg !3538
  %calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %32, i64 %indvars.iv, i32 3, !dbg !3538
  %33 = load i32, i32* %calls_crossed, align 4, !dbg !3538
  %cmp81 = icmp eq i32 %33, 1, !dbg !3540
  br i1 %cmp81, label %if.then83, label %if.else85, !dbg !3541

if.then83:                                        ; preds = %if.end78
  %call84 = tail call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3542
  br label %if.end96, !dbg !3542

if.else85:                                        ; preds = %if.end78
  %tobool89 = icmp eq i32 %33, 0, !dbg !3543
  br i1 %tobool89, label %if.end96, label %if.then90, !dbg !3545

if.then90:                                        ; preds = %if.else85
  %call94 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32 %33) #6, !dbg !3546
  br label %if.end96, !dbg !3546

if.end96:                                         ; preds = %if.else85, %if.then90, %if.then83
  %34 = load %struct.reg_info_t*, %struct.reg_info_t** @reg_info_p, align 8, !dbg !3547
  %freq_calls_crossed = getelementptr inbounds %struct.reg_info_t, %struct.reg_info_t* %34, i64 %indvars.iv, i32 4, !dbg !3547
  %35 = load i32, i32* %freq_calls_crossed, align 4, !dbg !3547
  %tobool99 = icmp eq i32 %35, 0, !dbg !3547
  br i1 %tobool99, label %if.end105, label %if.then100, !dbg !3549

if.then100:                                       ; preds = %if.end96
  %call104 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32 %35) #6, !dbg !3550
  br label %if.end105, !dbg !3550

if.end105:                                        ; preds = %if.end96, %if.then100
  %36 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !3551
  %arrayidx107 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %36, i64 %indvars.iv, !dbg !3551
  %37 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx107, align 8, !dbg !3551
  %cmp108 = icmp eq %struct.rtx_def* %37, null, !dbg !3553
  br i1 %cmp108, label %if.end133, label %land.lhs.true110, !dbg !3554

land.lhs.true110:                                 ; preds = %if.end105
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i64 0, i32 0, !dbg !3554
  %bf.load113 = load i32, i32* %38, align 8, !dbg !3555
  %bf.lshr114 = lshr i32 %bf.load113, 16, !dbg !3555
  %bf.clear115 = and i32 %bf.lshr114, 255, !dbg !3555
  %idxprom116 = zext i32 %bf.clear115 to i64, !dbg !3555
  %arrayidx117 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom116, !dbg !3555
  %39 = load i8, i8* %arrayidx117, align 1, !dbg !3555
  %cmp120 = icmp eq i8 %39, 4, !dbg !3556
  br i1 %cmp120, label %if.end133, label %if.then122, !dbg !3557

if.then122:                                       ; preds = %land.lhs.true110
  %conv131 = zext i8 %39 to i32, !dbg !3558
  %call132 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 %conv131) #6, !dbg !3559
  br label %if.end133, !dbg !3559

if.end133:                                        ; preds = %land.lhs.true110, %if.end105, %if.then122
  %40 = trunc i64 %indvars.iv to i32, !dbg !3560
  %call134 = tail call i32 @reg_preferred_class(i32 %40) #6, !dbg !3560
  call void @llvm.dbg.value(metadata i32 %call134, metadata !3472, metadata !DIExpression()), !dbg !3561
  %41 = trunc i64 %indvars.iv to i32, !dbg !3562
  %call135 = tail call i32 @reg_alternate_class(i32 %41) #6, !dbg !3562
  call void @llvm.dbg.value(metadata i32 %call135, metadata !3476, metadata !DIExpression()), !dbg !3561
  %cmp136 = icmp ne i32 %call134, 13, !dbg !3563
  %cmp138 = icmp ne i32 %call135, 26, !dbg !3565
  %or.cond = or i1 %cmp136, %cmp138, !dbg !3566
  br i1 %or.cond, label %if.then140, label %if.end165, !dbg !3566

if.then140:                                       ; preds = %if.end133
  %cmp141 = icmp eq i32 %call135, 26, !dbg !3567
  %cmp144 = icmp eq i32 %call134, 26, !dbg !3570
  %or.cond1 = or i1 %cmp141, %cmp144, !dbg !3571
  br i1 %or.cond1, label %if.then146, label %if.else150, !dbg !3571

if.then146:                                       ; preds = %if.then140
  %idxprom147 = sext i32 %call134 to i64, !dbg !3572
  %arrayidx148 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom147, !dbg !3572
  %42 = load i8*, i8** %arrayidx148, align 8, !dbg !3572
  %call149 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8* %42) #6, !dbg !3573
  br label %if.end165, !dbg !3573

if.else150:                                       ; preds = %if.then140
  %cmp151 = icmp eq i32 %call135, 0, !dbg !3574
  %idxprom154 = sext i32 %call134 to i64, !dbg !3576
  %arrayidx155 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom154, !dbg !3576
  %43 = load i8*, i8** %arrayidx155, align 8, !dbg !3576
  br i1 %cmp151, label %if.then153, label %if.else157, !dbg !3577

if.then153:                                       ; preds = %if.else150
  %call156 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* %43) #6, !dbg !3578
  br label %if.end165, !dbg !3578

if.else157:                                       ; preds = %if.else150
  %idxprom160 = sext i32 %call135 to i64, !dbg !3579
  %arrayidx161 = getelementptr inbounds [0 x i8*], [0 x i8*]* @reg_class_names, i64 0, i64 %idxprom160, !dbg !3579
  %44 = load i8*, i8** %arrayidx161, align 8, !dbg !3579
  %call162 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i8* %43, i8* %44) #6, !dbg !3580
  br label %if.end165

if.end165:                                        ; preds = %if.then146, %if.else157, %if.then153, %if.end133
  %45 = load %struct.rtx_def**, %struct.rtx_def*** @regno_reg_rtx, align 8, !dbg !3581
  %arrayidx167 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %45, i64 %indvars.iv, !dbg !3581
  %46 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx167, align 8, !dbg !3581
  %cmp168 = icmp eq %struct.rtx_def* %46, null, !dbg !3583
  br i1 %cmp168, label %if.end179, label %land.lhs.true170, !dbg !3584

land.lhs.true170:                                 ; preds = %if.end165
  %47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i64 0, i32 0, !dbg !3584
  %bf.load173 = load i32, i32* %47, align 8, !dbg !3585
  %bf.clear175 = and i32 %bf.load173, 1073741824, !dbg !3585
  %tobool176 = icmp eq i32 %bf.clear175, 0, !dbg !3585
  br i1 %tobool176, label %if.end179, label %if.then177, !dbg !3586

if.then177:                                       ; preds = %land.lhs.true170
  %call178 = tail call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3587
  br label %if.end179, !dbg !3587

if.end179:                                        ; preds = %land.lhs.true170, %if.end165, %if.then177
  %call180 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3588
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3589
  br label %for.cond, !dbg !3590, !llvm.loop !3591

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3593

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !3593
}

declare dso_local i32 @max_reg_num() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @REG_N_REFS(i32 %regno) unnamed_addr #0 !dbg !3594 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3597, metadata !DIExpression()), !dbg !3598
  %0 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !3599
  %idxprom = sext i32 %regno to i64, !dbg !3599
  %refs = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %0, i64 %idxprom, i32 1, !dbg !3600
  %1 = load i32, i32* %refs, align 4, !dbg !3600
  ret i32 %1, !dbg !3601
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @REG_N_SETS(i32 %regno) unnamed_addr #0 !dbg !3602 {
entry:
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3604, metadata !DIExpression()), !dbg !3605
  %0 = load %struct.regstat_n_sets_and_refs_t*, %struct.regstat_n_sets_and_refs_t** @regstat_n_sets_and_refs, align 8, !dbg !3606
  %idxprom = sext i32 %regno to i64, !dbg !3606
  %sets = getelementptr inbounds %struct.regstat_n_sets_and_refs_t, %struct.regstat_n_sets_and_refs_t* %0, i64 %idxprom, i32 0, !dbg !3607
  %1 = load i32, i32* %sets, align 4, !dbg !3607
  ret i32 %1, !dbg !3608
}

declare dso_local i32 @reg_preferred_class(i32) local_unnamed_addr #1

declare dso_local i32 @reg_alternate_class(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_flow_info(%struct._IO_FILE* %file, i32 %flags) local_unnamed_addr #4 !dbg !3609 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3613, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3614, metadata !DIExpression()), !dbg !3616
  %0 = load i64, i64* @reg_info_p_size, align 8, !dbg !3617
  %tobool = icmp ne i64 %0, 0, !dbg !3617
  %and = and i32 %flags, 8, !dbg !3619
  %cmp = icmp ne i32 %and, 0, !dbg !3620
  %or.cond = and i1 %tobool, %cmp, !dbg !3621
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3621

if.then:                                          ; preds = %entry
  tail call void @dump_reg_info(%struct._IO_FILE* %file) #8, !dbg !3622
  br label %if.end, !dbg !3622

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3623
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3623
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3623
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 3, !dbg !3623
  %3 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3623
  %x_n_edges = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 4, !dbg !3624
  %4 = load i32, i32* %x_n_edges, align 4, !dbg !3624
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i32 %3, i32 %4) #6, !dbg !3625
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3626
  %cfg4 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !3626
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4, align 8, !dbg !3626
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !3626
  br label %for.cond, !dbg !3626

for.cond:                                         ; preds = %for.body, %if.end
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.end ], [ %next_bb, %for.body ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3628
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3615, metadata !DIExpression()), !dbg !3616
  %tobool5 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3626
  br i1 %tobool5, label %for.end, label %for.body, !dbg !3626

for.body:                                         ; preds = %for.cond
  tail call void @dump_bb_info(%struct.basic_block_def* nonnull %bb.0, i8 zeroext 1, i8 zeroext 1, i32 %flags, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), %struct._IO_FILE* %file) #8, !dbg !3629
  tail call void @check_bb_profile(%struct.basic_block_def* nonnull %bb.0, %struct._IO_FILE* %file) #8, !dbg !3632
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3633
  br label %for.cond, !dbg !3633, !llvm.loop !3634

for.end:                                          ; preds = %for.cond
  %call6 = tail call i32 @putc(i32 10, %struct._IO_FILE* %file) #6, !dbg !3636
  ret void, !dbg !3637
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_flow_info() local_unnamed_addr #4 !dbg !3638 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3639
  tail call void @dump_flow_info(%struct._IO_FILE* %0, i32 8) #8, !dbg !3640
  ret void, !dbg !3641
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @alloc_aux_for_block(%struct.basic_block_def* %bb, i32 %size) local_unnamed_addr #4 !dbg !3642 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 %size, metadata !3647, metadata !DIExpression()), !dbg !3648
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 2, !dbg !3649
  %0 = load i8*, i8** %aux, align 8, !dbg !3649
  %tobool = icmp eq i8* %0, null, !dbg !3649
  %1 = load i8*, i8** @first_block_aux_obj, align 8, !dbg !3649
  %tobool1 = icmp ne i8* %1, null, !dbg !3649
  %or.cond = and i1 %tobool, %tobool1, !dbg !3649
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !3649

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 741, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3649
  br label %cond.end, !dbg !3649

cond.end:                                         ; preds = %entry, %cond.true
  %conv = sext i32 %size to i64, !dbg !3650
  store i64 %conv, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 5), align 8, !dbg !3650
  %2 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3650
  %3 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3650
  %sub.ptr.sub = sub i64 %2, %3, !dbg !3650
  %cmp = icmp slt i64 %sub.ptr.sub, %conv, !dbg !3650
  %4 = inttoptr i64 %3 to i8*, !dbg !3650
  br i1 %cmp, label %cond.true3, label %cond.end6, !dbg !3650

cond.true3:                                       ; preds = %cond.end
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @block_aux_obstack, i32 %size) #6, !dbg !3650
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 5), align 8, !dbg !3650
  %.pre1 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3), align 8, !dbg !3650
  br label %cond.end6, !dbg !3650

cond.end6:                                        ; preds = %cond.end, %cond.true3
  %5 = phi i8* [ %4, %cond.end ], [ %.pre1, %cond.true3 ], !dbg !3650
  %6 = phi i64 [ %conv, %cond.end ], [ %.pre, %cond.true3 ], !dbg !3650
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !3650
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3), align 8, !dbg !3650
  %7 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 2), align 8, !dbg !3650
  %cmp8 = icmp eq i8* %add.ptr, %7, !dbg !3650
  %8 = ptrtoint i8* %7 to i64, !dbg !3650
  %9 = ptrtoint i8* %add.ptr to i64, !dbg !3650
  br i1 %cmp8, label %cond.true10, label %cond.end12, !dbg !3650

cond.true10:                                      ; preds = %cond.end6
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 10), align 8, !dbg !3650
  %bf.set = or i8 %bf.load, 2, !dbg !3650
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 10), align 8, !dbg !3650
  br label %cond.end12, !dbg !3650

cond.end12:                                       ; preds = %cond.end6, %cond.true10
  store i64 %8, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 5), align 8, !dbg !3650
  %10 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 6), align 8, !dbg !3650
  %conv18 = sext i32 %10 to i64, !dbg !3650
  %add = add nsw i64 %9, %conv18, !dbg !3650
  %neg = xor i32 %10, -1, !dbg !3650
  %conv19 = sext i32 %neg to i64, !dbg !3650
  %and = and i64 %add, %conv19, !dbg !3650
  %11 = inttoptr i64 %and to i8*, !dbg !3650
  store i8* %11, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3), align 8, !dbg !3650
  %12 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3650
  %sub.ptr.sub22 = sub i64 %and, %12, !dbg !3650
  %13 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3650
  %sub.ptr.sub25 = sub i64 %13, %12, !dbg !3650
  %cmp26 = icmp sgt i64 %sub.ptr.sub22, %sub.ptr.sub25, !dbg !3650
  br i1 %cmp26, label %cond.true28, label %cond.end30, !dbg !3650

cond.true28:                                      ; preds = %cond.end12
  store i64 %13, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3650
  br label %cond.end30, !dbg !3650

cond.end30:                                       ; preds = %cond.end12, %cond.true28
  %14 = phi i64 [ %and, %cond.end12 ], [ %13, %cond.true28 ], !dbg !3650
  store i64 %14, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3650
  %15 = bitcast i8** %aux to i64*, !dbg !3651
  store i64 %8, i64* %15, align 8, !dbg !3651
  %call = tail call i8* @memset(i8* %7, i32 0, i64 %conv) #6, !dbg !3652
  ret void, !dbg !3653
}

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @alloc_aux_for_blocks(i32 %size) local_unnamed_addr #4 !dbg !1989 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !1993, metadata !DIExpression()), !dbg !3654
  %.b = load i1, i1* @alloc_aux_for_blocks.initialized, align 4, !dbg !3655
  br i1 %.b, label %if.else, label %if.then, !dbg !3657

if.then:                                          ; preds = %entry
  %call = tail call i32 @_obstack_begin(%struct.obstack* nonnull @block_aux_obstack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !3658
  store i1 true, i1* @alloc_aux_for_blocks.initialized, align 4, !dbg !3660
  br label %if.end, !dbg !3661

if.else:                                          ; preds = %entry
  %0 = load i8*, i8** @first_block_aux_obj, align 8, !dbg !3662
  %tobool1 = icmp eq i8* %0, null, !dbg !3662
  br i1 %tobool1, label %if.end, label %cond.true, !dbg !3662

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 761, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3662
  br label %if.end, !dbg !3662

if.end:                                           ; preds = %if.else, %cond.true, %if.then
  store i64 0, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 5), align 8, !dbg !3663
  %1 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3663
  %2 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3663
  %sub.ptr.sub = sub i64 %1, %2, !dbg !3663
  %cmp = icmp slt i64 %sub.ptr.sub, 0, !dbg !3663
  %3 = inttoptr i64 %2 to i8*, !dbg !3663
  br i1 %cmp, label %cond.true2, label %cond.end4, !dbg !3663

cond.true2:                                       ; preds = %if.end
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @block_aux_obstack, i32 0) #6, !dbg !3663
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 5), align 8, !dbg !3663
  %.pre1 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3), align 8, !dbg !3663
  br label %cond.end4, !dbg !3663

cond.end4:                                        ; preds = %if.end, %cond.true2
  %4 = phi i8* [ %3, %if.end ], [ %.pre1, %cond.true2 ], !dbg !3663
  %5 = phi i64 [ 0, %if.end ], [ %.pre, %cond.true2 ], !dbg !3663
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !3663
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3), align 8, !dbg !3663
  %6 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 2), align 8, !dbg !3663
  %cmp6 = icmp eq i8* %add.ptr, %6, !dbg !3663
  %7 = ptrtoint i8* %6 to i64, !dbg !3663
  %8 = ptrtoint i8* %add.ptr to i64, !dbg !3663
  br i1 %cmp6, label %cond.true8, label %cond.end10, !dbg !3663

cond.true8:                                       ; preds = %cond.end4
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 10), align 8, !dbg !3663
  %bf.set = or i8 %bf.load, 2, !dbg !3663
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 10), align 8, !dbg !3663
  br label %cond.end10, !dbg !3663

cond.end10:                                       ; preds = %cond.end4, %cond.true8
  store i64 %7, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 5), align 8, !dbg !3663
  %9 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 6), align 8, !dbg !3663
  %conv16 = sext i32 %9 to i64, !dbg !3663
  %add = add nsw i64 %8, %conv16, !dbg !3663
  %neg = xor i32 %9, -1, !dbg !3663
  %conv17 = sext i32 %neg to i64, !dbg !3663
  %and = and i64 %add, %conv17, !dbg !3663
  %10 = inttoptr i64 %and to i8*, !dbg !3663
  store i8* %10, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3), align 8, !dbg !3663
  %11 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3663
  %sub.ptr.sub20 = sub i64 %and, %11, !dbg !3663
  %12 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3663
  %sub.ptr.sub23 = sub i64 %12, %11, !dbg !3663
  %cmp24 = icmp sgt i64 %sub.ptr.sub20, %sub.ptr.sub23, !dbg !3663
  br i1 %cmp24, label %cond.true26, label %cond.end28, !dbg !3663

cond.true26:                                      ; preds = %cond.end10
  store i64 %12, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3663
  br label %cond.end28, !dbg !3663

cond.end28:                                       ; preds = %cond.end10, %cond.true26
  %13 = phi i64 [ %and, %cond.end10 ], [ %12, %cond.true26 ], !dbg !3663
  store i64 %13, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3663
  store i64 %7, i64* bitcast (i8** @first_block_aux_obj to i64*), align 8, !dbg !3664
  %tobool30 = icmp eq i32 %size, 0, !dbg !3665
  br i1 %tobool30, label %if.end35, label %if.then31, !dbg !3666

if.then31:                                        ; preds = %cond.end28
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3667
  %cfg = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !3667
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3667
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !3667
  br label %for.cond, !dbg !3667

for.cond:                                         ; preds = %for.body, %if.then31
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.then31 ], [ %next_bb, %for.body ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3669
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !1994, metadata !DIExpression()), !dbg !3670
  %cmp33 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3671
  br i1 %cmp33, label %if.end35.loopexit, label %for.body, !dbg !3667

for.body:                                         ; preds = %for.cond
  tail call void @alloc_aux_for_block(%struct.basic_block_def* nonnull %bb.0, i32 %size) #8, !dbg !3673
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3671
  br label %for.cond, !dbg !3671, !llvm.loop !3674

if.end35.loopexit:                                ; preds = %for.cond
  br label %if.end35, !dbg !3676

if.end35:                                         ; preds = %if.end35.loopexit, %cond.end28
  ret void, !dbg !3676
}

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local void @free(i8*) #1

; Function Attrs: nounwind uwtable
define dso_local void @clear_aux_for_blocks() local_unnamed_addr #4 !dbg !3677 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3680
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3680
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3680
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3680
  br label %for.cond, !dbg !3680

for.cond:                                         ; preds = %for.body, %entry
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.body ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3682
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3679, metadata !DIExpression()), !dbg !3683
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3684
  br i1 %cmp, label %for.end, label %for.body, !dbg !3680

for.body:                                         ; preds = %for.cond
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3686
  store i8* null, i8** %aux, align 8, !dbg !3687
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3684
  br label %for.cond, !dbg !3684, !llvm.loop !3688

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local void @free_aux_for_blocks() local_unnamed_addr #4 !dbg !3691 {
entry:
  %0 = load i8*, i8** @first_block_aux_obj, align 8, !dbg !3692
  %tobool = icmp eq i8* %0, null, !dbg !3692
  %1 = ptrtoint i8* %0 to i64, !dbg !3692
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3692

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 790, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3692
  %.pre = load i64, i64* bitcast (i8** @first_block_aux_obj to i64*), align 8, !dbg !3693
  br label %cond.end, !dbg !3692

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i64 [ %1, %entry ], [ %.pre, %cond.true ], !dbg !3693
  %3 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3693
  %sub.ptr.sub = sub i64 %2, %3, !dbg !3693
  store i64 %sub.ptr.sub, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 5), align 8, !dbg !3693
  %cmp = icmp sgt i64 %sub.ptr.sub, 0, !dbg !3693
  %4 = inttoptr i64 %3 to i8*, !dbg !3693
  br i1 %cmp, label %land.lhs.true, label %cond.false6, !dbg !3693

land.lhs.true:                                    ; preds = %cond.end
  %5 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3693
  %sub.ptr.sub3 = sub i64 %5, %3, !dbg !3693
  %cmp4 = icmp slt i64 %sub.ptr.sub, %sub.ptr.sub3, !dbg !3693
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !3693

cond.true5:                                       ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %sub.ptr.sub, !dbg !3693
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 2), align 8, !dbg !3693
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @block_aux_obstack, i64 0, i32 3), align 8, !dbg !3693
  br label %cond.end8, !dbg !3693

cond.false6:                                      ; preds = %land.lhs.true, %cond.end
  %add.ptr7 = getelementptr inbounds i8, i8* %4, i64 %sub.ptr.sub, !dbg !3693
  tail call void @obstack_free(%struct.obstack* nonnull @block_aux_obstack, i8* %add.ptr7) #6, !dbg !3693
  br label %cond.end8, !dbg !3693

cond.end8:                                        ; preds = %cond.false6, %cond.true5
  store i8* null, i8** @first_block_aux_obj, align 8, !dbg !3694
  tail call void @clear_aux_for_blocks() #8, !dbg !3695
  ret void, !dbg !3696
}

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @alloc_aux_for_edge(%struct.edge_def* %e, i32 %size) local_unnamed_addr #4 !dbg !3697 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3701, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i32 %size, metadata !3702, metadata !DIExpression()), !dbg !3703
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 3, !dbg !3704
  %0 = load i8*, i8** %aux, align 8, !dbg !3704
  %tobool = icmp eq i8* %0, null, !dbg !3704
  %1 = load i8*, i8** @first_edge_aux_obj, align 8, !dbg !3704
  %tobool1 = icmp ne i8* %1, null, !dbg !3704
  %or.cond = and i1 %tobool, %tobool1, !dbg !3704
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !3704

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 804, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3704
  br label %cond.end, !dbg !3704

cond.end:                                         ; preds = %entry, %cond.true
  %conv = sext i32 %size to i64, !dbg !3705
  store i64 %conv, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 5), align 8, !dbg !3705
  %2 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3705
  %3 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3705
  %sub.ptr.sub = sub i64 %2, %3, !dbg !3705
  %cmp = icmp slt i64 %sub.ptr.sub, %conv, !dbg !3705
  %4 = inttoptr i64 %3 to i8*, !dbg !3705
  br i1 %cmp, label %cond.true3, label %cond.end6, !dbg !3705

cond.true3:                                       ; preds = %cond.end
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @edge_aux_obstack, i32 %size) #6, !dbg !3705
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 5), align 8, !dbg !3705
  %.pre1 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3), align 8, !dbg !3705
  br label %cond.end6, !dbg !3705

cond.end6:                                        ; preds = %cond.end, %cond.true3
  %5 = phi i8* [ %4, %cond.end ], [ %.pre1, %cond.true3 ], !dbg !3705
  %6 = phi i64 [ %conv, %cond.end ], [ %.pre, %cond.true3 ], !dbg !3705
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !3705
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3), align 8, !dbg !3705
  %7 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 2), align 8, !dbg !3705
  %cmp8 = icmp eq i8* %add.ptr, %7, !dbg !3705
  %8 = ptrtoint i8* %7 to i64, !dbg !3705
  %9 = ptrtoint i8* %add.ptr to i64, !dbg !3705
  br i1 %cmp8, label %cond.true10, label %cond.end12, !dbg !3705

cond.true10:                                      ; preds = %cond.end6
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 10), align 8, !dbg !3705
  %bf.set = or i8 %bf.load, 2, !dbg !3705
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 10), align 8, !dbg !3705
  br label %cond.end12, !dbg !3705

cond.end12:                                       ; preds = %cond.end6, %cond.true10
  store i64 %8, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 5), align 8, !dbg !3705
  %10 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 6), align 8, !dbg !3705
  %conv18 = sext i32 %10 to i64, !dbg !3705
  %add = add nsw i64 %9, %conv18, !dbg !3705
  %neg = xor i32 %10, -1, !dbg !3705
  %conv19 = sext i32 %neg to i64, !dbg !3705
  %and = and i64 %add, %conv19, !dbg !3705
  %11 = inttoptr i64 %and to i8*, !dbg !3705
  store i8* %11, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3), align 8, !dbg !3705
  %12 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3705
  %sub.ptr.sub22 = sub i64 %and, %12, !dbg !3705
  %13 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3705
  %sub.ptr.sub25 = sub i64 %13, %12, !dbg !3705
  %cmp26 = icmp sgt i64 %sub.ptr.sub22, %sub.ptr.sub25, !dbg !3705
  br i1 %cmp26, label %cond.true28, label %cond.end30, !dbg !3705

cond.true28:                                      ; preds = %cond.end12
  store i64 %13, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3705
  br label %cond.end30, !dbg !3705

cond.end30:                                       ; preds = %cond.end12, %cond.true28
  %14 = phi i64 [ %and, %cond.end12 ], [ %13, %cond.true28 ], !dbg !3705
  store i64 %14, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3705
  %15 = bitcast i8** %aux to i64*, !dbg !3706
  store i64 %8, i64* %15, align 8, !dbg !3706
  %call = tail call i8* @memset(i8* %7, i32 0, i64 %conv) #6, !dbg !3707
  ret void, !dbg !3708
}

; Function Attrs: nounwind uwtable
define dso_local void @alloc_aux_for_edges(i32 %size) local_unnamed_addr #4 !dbg !1999 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %size, metadata !2001, metadata !DIExpression()), !dbg !3709
  %.b = load i1, i1* @alloc_aux_for_edges.initialized, align 4, !dbg !3710
  br i1 %.b, label %if.else, label %if.then, !dbg !3712

if.then:                                          ; preds = %entry
  %call = tail call i32 @_obstack_begin(%struct.obstack* nonnull @edge_aux_obstack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !3713
  store i1 true, i1* @alloc_aux_for_edges.initialized, align 4, !dbg !3715
  br label %if.end, !dbg !3716

if.else:                                          ; preds = %entry
  %0 = load i8*, i8** @first_edge_aux_obj, align 8, !dbg !3717
  %tobool1 = icmp eq i8* %0, null, !dbg !3717
  br i1 %tobool1, label %if.end, label %cond.true, !dbg !3717

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 824, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3717
  br label %if.end, !dbg !3717

if.end:                                           ; preds = %if.else, %cond.true, %if.then
  store i64 0, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 5), align 8, !dbg !3718
  %1 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3718
  %2 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3718
  %sub.ptr.sub = sub i64 %1, %2, !dbg !3718
  %cmp = icmp slt i64 %sub.ptr.sub, 0, !dbg !3718
  %3 = inttoptr i64 %2 to i8*, !dbg !3718
  br i1 %cmp, label %cond.true2, label %cond.end4, !dbg !3718

cond.true2:                                       ; preds = %if.end
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @edge_aux_obstack, i32 0) #6, !dbg !3718
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 5), align 8, !dbg !3718
  %.pre1 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3), align 8, !dbg !3718
  br label %cond.end4, !dbg !3718

cond.end4:                                        ; preds = %if.end, %cond.true2
  %4 = phi i8* [ %3, %if.end ], [ %.pre1, %cond.true2 ], !dbg !3718
  %5 = phi i64 [ 0, %if.end ], [ %.pre, %cond.true2 ], !dbg !3718
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !3718
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3), align 8, !dbg !3718
  %6 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 2), align 8, !dbg !3718
  %cmp6 = icmp eq i8* %add.ptr, %6, !dbg !3718
  %7 = ptrtoint i8* %6 to i64, !dbg !3718
  %8 = ptrtoint i8* %add.ptr to i64, !dbg !3718
  br i1 %cmp6, label %cond.true8, label %cond.end10, !dbg !3718

cond.true8:                                       ; preds = %cond.end4
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 10), align 8, !dbg !3718
  %bf.set = or i8 %bf.load, 2, !dbg !3718
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 10), align 8, !dbg !3718
  br label %cond.end10, !dbg !3718

cond.end10:                                       ; preds = %cond.end4, %cond.true8
  store i64 %7, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 5), align 8, !dbg !3718
  %9 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 6), align 8, !dbg !3718
  %conv16 = sext i32 %9 to i64, !dbg !3718
  %add = add nsw i64 %8, %conv16, !dbg !3718
  %neg = xor i32 %9, -1, !dbg !3718
  %conv17 = sext i32 %neg to i64, !dbg !3718
  %and = and i64 %add, %conv17, !dbg !3718
  %10 = inttoptr i64 %and to i8*, !dbg !3718
  store i8* %10, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3), align 8, !dbg !3718
  %11 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3718
  %sub.ptr.sub20 = sub i64 %and, %11, !dbg !3718
  %12 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3718
  %sub.ptr.sub23 = sub i64 %12, %11, !dbg !3718
  %cmp24 = icmp sgt i64 %sub.ptr.sub20, %sub.ptr.sub23, !dbg !3718
  br i1 %cmp24, label %cond.true26, label %cond.end28, !dbg !3718

cond.true26:                                      ; preds = %cond.end10
  store i64 %12, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3718
  br label %cond.end28, !dbg !3718

cond.end28:                                       ; preds = %cond.end10, %cond.true26
  %13 = phi i64 [ %and, %cond.end10 ], [ %12, %cond.true26 ], !dbg !3718
  store i64 %13, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3718
  store i64 %7, i64* bitcast (i8** @first_edge_aux_obj to i64*), align 8, !dbg !3719
  %tobool30 = icmp eq i32 %size, 0, !dbg !3720
  br i1 %tobool30, label %if.end44, label %if.then31, !dbg !3721

if.then31:                                        ; preds = %cond.end28
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3722
  %cfg = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !3722
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3722
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !3722
  %16 = bitcast %struct.edge_def** %e to i8*, !dbg !3723
  %17 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3723
  %18 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3724
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3724
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3724
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3726
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3726
  br label %for.cond, !dbg !3722

for.cond:                                         ; preds = %for.end, %if.then31
  %23 = phi %struct.control_flow_graph* [ %15, %if.then31 ], [ %.pre3, %for.end ], !dbg !3728
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.then31 ], [ %next_bb, %for.end ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3729
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2002, metadata !DIExpression()), !dbg !3730
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %23, i64 0, i32 1, !dbg !3728
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3728
  %cmp35 = icmp eq %struct.basic_block_def* %bb.0, %24, !dbg !3728
  br i1 %cmp35, label %if.end44.loopexit, label %for.body, !dbg !3722

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #7, !dbg !3731
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #7, !dbg !3732
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3733
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3733
  %call37 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3733
  %25 = extractvalue { i32, %struct.VEC_edge_gc** } %call37, 0, !dbg !3733
  store i32 %25, i32* %19, align 8, !dbg !3733
  %26 = extractvalue { i32, %struct.VEC_edge_gc** } %call37, 1, !dbg !3733
  store %struct.VEC_edge_gc** %26, %struct.VEC_edge_gc*** %20, align 8, !dbg !3733
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %17, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !3733
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !3733
  br label %for.cond38, !dbg !3733

for.cond38:                                       ; preds = %for.body41, %for.body
  %27 = load i32, i32* %21, align 8, !dbg !3734
  %28 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %22, align 8, !dbg !3734
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2005, metadata !DIExpression(DW_OP_deref)), !dbg !3723
  %call39 = call fastcc zeroext i8 @ei_cond(i32 %27, %struct.VEC_edge_gc** %28, %struct.edge_def** nonnull %e) #8, !dbg !3734
  %tobool40 = icmp eq i8 %call39, 0, !dbg !3733
  br i1 %tobool40, label %for.end, label %for.body41, !dbg !3733

for.body41:                                       ; preds = %for.cond38
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3735
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !2005, metadata !DIExpression()), !dbg !3723
  call void @alloc_aux_for_edge(%struct.edge_def* %29, i32 %size) #8, !dbg !3736
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2009, metadata !DIExpression(DW_OP_deref)), !dbg !3723
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3734
  br label %for.cond38, !dbg !3734, !llvm.loop !3737

for.end:                                          ; preds = %for.cond38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #7, !dbg !3739
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #7, !dbg !3739
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3728
  %.pre2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3728
  %cfg34.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre2, i64 0, i32 1, !dbg !3740
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg34.phi.trans.insert, align 8, !dbg !3728
  br label %for.cond, !dbg !3728, !llvm.loop !3741

if.end44.loopexit:                                ; preds = %for.cond
  br label %if.end44, !dbg !3743

if.end44:                                         ; preds = %if.end44.loopexit, %cond.end28
  ret void, !dbg !3743
}

; Function Attrs: nounwind uwtable
define dso_local void @clear_aux_for_edges() local_unnamed_addr #4 !dbg !3744 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3752
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3752
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3753
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3753
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3753
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3753
  %3 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3754
  %4 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3755
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3755
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3755
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3757
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3757
  br label %for.cond, !dbg !3753

for.cond:                                         ; preds = %for.end, %entry
  %9 = phi %struct.control_flow_graph* [ %2, %entry ], [ %.pre1, %for.end ], !dbg !3759
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.end ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3760
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3746, metadata !DIExpression()), !dbg !3761
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 1, !dbg !3759
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3759
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %10, !dbg !3759
  br i1 %cmp, label %for.end7, label %for.body, !dbg !3753

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3762
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3763
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3763
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3763
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3763
  store i32 %11, i32* %5, align 8, !dbg !3763
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3763
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %6, align 8, !dbg !3763
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !3763
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !3763
  br label %for.cond3, !dbg !3763

for.cond3:                                        ; preds = %for.body5, %for.body
  %13 = load i32, i32* %7, align 8, !dbg !3764
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3764
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3747, metadata !DIExpression(DW_OP_deref)), !dbg !3761
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %e) #8, !dbg !3764
  %tobool = icmp eq i8 %call4, 0, !dbg !3763
  br i1 %tobool, label %for.end, label %for.body5, !dbg !3763

for.body5:                                        ; preds = %for.cond3
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3765
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !3747, metadata !DIExpression()), !dbg !3761
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 3, !dbg !3766
  store i8* null, i8** %aux, align 8, !dbg !3767
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3748, metadata !DIExpression(DW_OP_deref)), !dbg !3754
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3764
  br label %for.cond3, !dbg !3764, !llvm.loop !3768

for.end:                                          ; preds = %for.cond3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3770
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3759
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3759
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3771
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3759
  br label %for.cond, !dbg !3759, !llvm.loop !3772

for.end7:                                         ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3774
  ret void, !dbg !3774
}

; Function Attrs: nounwind uwtable
define dso_local void @free_aux_for_edges() local_unnamed_addr #4 !dbg !3775 {
entry:
  %0 = load i8*, i8** @first_edge_aux_obj, align 8, !dbg !3776
  %tobool = icmp eq i8* %0, null, !dbg !3776
  %1 = ptrtoint i8* %0 to i64, !dbg !3776
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3776

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 864, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3776
  %.pre = load i64, i64* bitcast (i8** @first_edge_aux_obj to i64*), align 8, !dbg !3777
  br label %cond.end, !dbg !3776

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i64 [ %1, %entry ], [ %.pre, %cond.true ], !dbg !3777
  %3 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3777
  %sub.ptr.sub = sub i64 %2, %3, !dbg !3777
  store i64 %sub.ptr.sub, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 5), align 8, !dbg !3777
  %cmp = icmp sgt i64 %sub.ptr.sub, 0, !dbg !3777
  %4 = inttoptr i64 %3 to i8*, !dbg !3777
  br i1 %cmp, label %land.lhs.true, label %cond.false6, !dbg !3777

land.lhs.true:                                    ; preds = %cond.end
  %5 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3777
  %sub.ptr.sub3 = sub i64 %5, %3, !dbg !3777
  %cmp4 = icmp slt i64 %sub.ptr.sub, %sub.ptr.sub3, !dbg !3777
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !3777

cond.true5:                                       ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %sub.ptr.sub, !dbg !3777
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 2), align 8, !dbg !3777
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @edge_aux_obstack, i64 0, i32 3), align 8, !dbg !3777
  br label %cond.end8, !dbg !3777

cond.false6:                                      ; preds = %land.lhs.true, %cond.end
  %add.ptr7 = getelementptr inbounds i8, i8* %4, i64 %sub.ptr.sub, !dbg !3777
  tail call void @obstack_free(%struct.obstack* nonnull @edge_aux_obstack, i8* %add.ptr7) #6, !dbg !3777
  br label %cond.end8, !dbg !3777

cond.end8:                                        ; preds = %cond.false6, %cond.true5
  store i8* null, i8** @first_edge_aux_obj, align 8, !dbg !3778
  tail call void @clear_aux_for_edges() #8, !dbg !3779
  ret void, !dbg !3780
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_bb(%struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !3781 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3783, metadata !DIExpression()), !dbg !3784
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3785
  tail call void @dump_bb(%struct.basic_block_def* %bb, %struct._IO_FILE* %0, i32 0) #6, !dbg !3786
  ret void, !dbg !3787
}

declare dso_local void @dump_bb(%struct.basic_block_def*, %struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @debug_bb_n(i32 %n) local_unnamed_addr #4 !dbg !3788 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !3792, metadata !DIExpression()), !dbg !3794
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3795
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3795
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3795
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !3795
  %2 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3795
  %tobool = icmp eq %struct.VEC_basic_block_gc* %2, null, !dbg !3795
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3795

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %2, i64 0, i32 0, !dbg !3795
  br label %cond.end, !dbg !3795

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3795
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %n) #8, !dbg !3795
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3793, metadata !DIExpression()), !dbg !3794
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3796
  tail call void @dump_bb(%struct.basic_block_def* %call, %struct._IO_FILE* %3, i32 0) #6, !dbg !3797
  ret %struct.basic_block_def* %call, !dbg !3798
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3799 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3805, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3806, metadata !DIExpression()), !dbg !3807
  br label %land.end, !dbg !3808

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3808
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3808
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3808
  ret %struct.basic_block_def* %0, !dbg !3808
}

; Function Attrs: nounwind uwtable
define dso_local void @brief_dump_cfg(%struct._IO_FILE* %file) local_unnamed_addr #4 !dbg !3809 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3811, metadata !DIExpression()), !dbg !3813
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3814
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3814
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3814
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3814
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3814
  br label %for.cond, !dbg !3814

for.cond:                                         ; preds = %for.body, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.body ], !dbg !3816
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3818
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3818
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3812, metadata !DIExpression()), !dbg !3813
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !3816
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3816
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !3816
  br i1 %cmp, label %for.end, label %for.body, !dbg !3814

for.body:                                         ; preds = %for.cond
  tail call fastcc void @dump_cfg_bb_info(%struct._IO_FILE* %file, %struct.basic_block_def* %bb.0) #8, !dbg !3819
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3816
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3821
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3816
  br label %for.cond, !dbg !3816, !llvm.loop !3822

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3824
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_cfg_bb_info(%struct._IO_FILE* %file, %struct.basic_block_def* %bb) unnamed_addr #4 !dbg !2057 {
entry:
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp21 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2061, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2062, metadata !DIExpression()), !dbg !3825
  %0 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3826
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3826
  call void @llvm.dbg.value(metadata i8 1, metadata !2065, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 12, metadata !2066, metadata !DIExpression()), !dbg !3825
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3827
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3827
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3828
  %2 = load i32, i32* %index, align 8, !dbg !3828
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i64 0, i64 0), i32 %2) #6, !dbg !3829
  call void @llvm.dbg.value(metadata i32 0, metadata !2063, metadata !DIExpression()), !dbg !3825
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3830
  br label %for.cond, !dbg !3834

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3835
  %first.0 = phi i8 [ %first.1, %for.inc ], [ 1, %entry ], !dbg !3825
  call void @llvm.dbg.value(metadata i8 %first.0, metadata !2065, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2063, metadata !DIExpression()), !dbg !3825
  %exitcond = icmp eq i64 %indvars.iv, 12, !dbg !3836
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3837

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %flags, align 8, !dbg !3838
  %4 = trunc i64 %indvars.iv to i32, !dbg !3839
  %shl = shl i32 1, %4, !dbg !3839
  %and = and i32 %3, %shl, !dbg !3840
  %tobool = icmp eq i32 %and, 0, !dbg !3840
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3841

if.then:                                          ; preds = %for.body
  %tobool1 = icmp eq i8 %first.0, 0, !dbg !3842
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !3845

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3846
  br label %if.end, !dbg !3846

if.else:                                          ; preds = %if.then
  %call4 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3847
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  call void @llvm.dbg.value(metadata i8 0, metadata !2065, metadata !DIExpression()), !dbg !3825
  %arrayidx = getelementptr inbounds [12 x i8*], [12 x i8*]* @dump_cfg_bb_info.bb_bitnames, i64 0, i64 %indvars.iv, !dbg !3848
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !3848
  %call5 = tail call i32 @fputs(i8* %5, %struct._IO_FILE* %file) #6, !dbg !3849
  br label %for.inc, !dbg !3850

for.inc:                                          ; preds = %for.body, %if.end
  %first.1 = phi i8 [ 0, %if.end ], [ %first.0, %for.body ], !dbg !3825
  call void @llvm.dbg.value(metadata i8 %first.1, metadata !2065, metadata !DIExpression()), !dbg !3825
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3851
  call void @llvm.dbg.value(metadata i32 undef, metadata !2063, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3825
  br label %for.cond, !dbg !3852, !llvm.loop !3853

for.end:                                          ; preds = %for.cond
  %first.0.lcssa = phi i8 [ %first.0, %for.cond ], !dbg !3825
  call void @llvm.dbg.value(metadata i8 %first.0.lcssa, metadata !2065, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 %first.0.lcssa, metadata !2065, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i8 %first.0.lcssa, metadata !2065, metadata !DIExpression()), !dbg !3825
  %tobool7 = icmp eq i8 %first.0.lcssa, 0, !dbg !3855
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !3857

if.then8:                                         ; preds = %for.end
  %call9 = tail call i32 @putc(i32 41, %struct._IO_FILE* %file) #6, !dbg !3858
  br label %if.end10, !dbg !3858

if.end10:                                         ; preds = %for.end, %if.then8
  %call11 = tail call i32 @putc(i32 10, %struct._IO_FILE* %file) #6, !dbg !3859
  %call12 = tail call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3860
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3861
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3861
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3861
  %call13 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3861
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3861
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call13, 0, !dbg !3861
  store i32 %8, i32* %7, align 8, !dbg !3861
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3861
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call13, 1, !dbg !3861
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !3861
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !3861
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3861
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3863
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3863
  br label %for.cond14, !dbg !3861

for.cond14:                                       ; preds = %for.body17, %if.end10
  %13 = load i32, i32* %11, align 8, !dbg !3865
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !3865
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2068, metadata !DIExpression(DW_OP_deref)), !dbg !3825
  %call15 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %e) #8, !dbg !3865
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3861
  br i1 %tobool16, label %for.end19, label %for.body17, !dbg !3861

for.body17:                                       ; preds = %for.cond14
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3866
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !2068, metadata !DIExpression()), !dbg !3825
  call void @dump_edge_info(%struct._IO_FILE* %file, %struct.edge_def* %15, i32 0) #8, !dbg !3867
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2064, metadata !DIExpression(DW_OP_deref)), !dbg !3825
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3865
  br label %for.cond14, !dbg !3865, !llvm.loop !3868

for.end19:                                        ; preds = %for.cond14
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i64 0, i64 0)) #6, !dbg !3870
  %16 = bitcast %struct.edge_iterator* %tmp21 to i8*, !dbg !3871
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !3871
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3871
  %call22 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3871
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp21, i64 0, i32 0, !dbg !3871
  %18 = extractvalue { i32, %struct.VEC_edge_gc** } %call22, 0, !dbg !3871
  store i32 %18, i32* %17, align 8, !dbg !3871
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp21, i64 0, i32 1, !dbg !3871
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call22, 1, !dbg !3871
  store %struct.VEC_edge_gc** %20, %struct.VEC_edge_gc*** %19, align 8, !dbg !3871
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !3871
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !3871
  br label %for.cond23, !dbg !3871

for.cond23:                                       ; preds = %for.body26, %for.end19
  %21 = load i32, i32* %11, align 8, !dbg !3873
  %22 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !3873
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2068, metadata !DIExpression(DW_OP_deref)), !dbg !3825
  %call24 = call fastcc zeroext i8 @ei_cond(i32 %21, %struct.VEC_edge_gc** %22, %struct.edge_def** nonnull %e) #8, !dbg !3873
  %tobool25 = icmp eq i8 %call24, 0, !dbg !3871
  br i1 %tobool25, label %for.end28, label %for.body26, !dbg !3871

for.body26:                                       ; preds = %for.cond23
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3875
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !2068, metadata !DIExpression()), !dbg !3825
  call void @dump_edge_info(%struct._IO_FILE* %file, %struct.edge_def* %23, i32 1) #8, !dbg !3876
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2064, metadata !DIExpression(DW_OP_deref)), !dbg !3825
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3873
  br label %for.cond23, !dbg !3873, !llvm.loop !3877

for.end28:                                        ; preds = %for.cond23
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !3879
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3880
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3880
  ret void, !dbg !3880
}

; Function Attrs: nounwind uwtable
define dso_local void @update_bb_profile_for_threading(%struct.basic_block_def* %bb, i32 %edge_frequency, i64 %count, %struct.edge_def* %taken_edge) local_unnamed_addr #4 !dbg !3881 {
entry:
  %c = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp53 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3885, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i32 %edge_frequency, metadata !3886, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 %count, metadata !3887, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata %struct.edge_def* %taken_edge, metadata !3888, metadata !DIExpression()), !dbg !3896
  %0 = bitcast %struct.edge_def** %c to i8*, !dbg !3897
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3897
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3898
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3898
  %count1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 8, !dbg !3899
  %2 = load i64, i64* %count1, align 8, !dbg !3900
  %sub = sub nsw i64 %2, %count, !dbg !3900
  store i64 %sub, i64* %count1, align 8, !dbg !3900
  %cmp = icmp slt i64 %sub, 0, !dbg !3901
  br i1 %cmp, label %if.then, label %if.end5, !dbg !3903

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3904
  %tobool = icmp eq %struct._IO_FILE* %3, null, !dbg !3904
  br i1 %tobool, label %if.end, label %if.then3, !dbg !3907

if.then3:                                         ; preds = %if.then
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3908
  %4 = load i32, i32* %index, align 8, !dbg !3908
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.56, i64 0, i64 0), i32 %4) #6, !dbg !3909
  br label %if.end, !dbg !3909

if.end:                                           ; preds = %if.then, %if.then3
  store i64 0, i64* %count1, align 8, !dbg !3910
  br label %if.end5, !dbg !3911

if.end5:                                          ; preds = %if.end, %entry
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3912
  %5 = load i32, i32* %frequency, align 8, !dbg !3912
  %tobool6 = icmp eq i32 %5, 0, !dbg !3914
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !3915

if.then7:                                         ; preds = %if.end5
  %mul = mul nsw i32 %edge_frequency, 10000, !dbg !3916
  %div = sdiv i32 %mul, %5, !dbg !3917
  call void @llvm.dbg.value(metadata i32 %div, metadata !3890, metadata !DIExpression()), !dbg !3896
  br label %if.end9, !dbg !3918

if.end9:                                          ; preds = %if.end5, %if.then7
  %prob.0 = phi i32 [ %div, %if.then7 ], [ 0, %if.end5 ], !dbg !3919
  call void @llvm.dbg.value(metadata i32 %prob.0, metadata !3890, metadata !DIExpression()), !dbg !3896
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %taken_edge, i64 0, i32 8, !dbg !3920
  %6 = load i32, i32* %probability, align 4, !dbg !3920
  %cmp10 = icmp sgt i32 %prob.0, %6, !dbg !3922
  br i1 %cmp10, label %if.then11, label %if.end20, !dbg !3923

if.then11:                                        ; preds = %if.end9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3924
  %tobool12 = icmp eq %struct._IO_FILE* %7, null, !dbg !3924
  br i1 %tobool12, label %if.end18, label %if.then13, !dbg !3927

if.then13:                                        ; preds = %if.then11
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %taken_edge, i64 0, i32 0, !dbg !3928
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3928
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 9, !dbg !3929
  %9 = load i32, i32* %index14, align 8, !dbg !3929
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %taken_edge, i64 0, i32 1, !dbg !3930
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3930
  %index15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 9, !dbg !3931
  %11 = load i32, i32* %index15, align 8, !dbg !3931
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.57, i64 0, i64 0), i32 %9, i32 %11, i32 %6, i32 %prob.0) #6, !dbg !3932
  %.pre = load i32, i32* %probability, align 4, !dbg !3933
  br label %if.end18, !dbg !3932

if.end18:                                         ; preds = %if.then11, %if.then13
  %12 = phi i32 [ %6, %if.then11 ], [ %.pre, %if.then13 ], !dbg !3933
  call void @llvm.dbg.value(metadata i32 %12, metadata !3890, metadata !DIExpression()), !dbg !3896
  br label %if.end20, !dbg !3934

if.end20:                                         ; preds = %if.end18, %if.end9
  %13 = phi i32 [ %12, %if.end18 ], [ %6, %if.end9 ], !dbg !3935
  %prob.1 = phi i32 [ %12, %if.end18 ], [ %prob.0, %if.end9 ], !dbg !3896
  call void @llvm.dbg.value(metadata i32 %prob.1, metadata !3890, metadata !DIExpression()), !dbg !3896
  %sub22 = sub nsw i32 %13, %prob.1, !dbg !3935
  store i32 %sub22, i32* %probability, align 4, !dbg !3935
  %sub23 = sub nsw i32 10000, %prob.1, !dbg !3936
  call void @llvm.dbg.value(metadata i32 %sub23, metadata !3890, metadata !DIExpression()), !dbg !3896
  %14 = load i32, i32* %frequency, align 8, !dbg !3937
  %sub25 = sub nsw i32 %14, %edge_frequency, !dbg !3937
  %cmp27 = icmp slt i32 %sub25, 0, !dbg !3938
  br i1 %cmp27, label %if.then28, label %if.end30, !dbg !3940

if.then28:                                        ; preds = %if.end20
  br label %if.end30, !dbg !3941

if.end30:                                         ; preds = %if.then28, %if.end20
  %storemerge = phi i32 [ 0, %if.then28 ], [ %sub25, %if.end20 ], !dbg !3896
  %15 = phi i32 [ 0, %if.then28 ], [ %sub25, %if.end20 ]
  store i32 %storemerge, i32* %frequency, align 8, !dbg !3896
  %cmp31 = icmp sgt i32 %prob.1, 9999, !dbg !3942
  br i1 %cmp31, label %if.then32, label %if.else48, !dbg !3943

if.then32:                                        ; preds = %if.end30
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3944
  %tobool33 = icmp eq %struct._IO_FILE* %16, null, !dbg !3944
  br i1 %tobool33, label %if.end38, label %if.then34, !dbg !3947

if.then34:                                        ; preds = %if.then32
  %index35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3948
  %17 = load i32, i32* %index35, align 8, !dbg !3948
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.58, i64 0, i64 0), i32 %17, i32 %15) #6, !dbg !3949
  br label %if.end38, !dbg !3949

if.end38:                                         ; preds = %if.then32, %if.then34
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3950
  %18 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3950
  %tobool39 = icmp eq %struct.VEC_edge_gc* %18, null, !dbg !3950
  br i1 %tobool39, label %cond.end, label %cond.true, !dbg !3950

cond.true:                                        ; preds = %if.end38
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %18, i64 0, i32 0, !dbg !3950
  br label %cond.end, !dbg !3950

cond.end:                                         ; preds = %if.end38, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end38 ], !dbg !3950
  %call41 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 0) #8, !dbg !3950
  %probability42 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call41, i64 0, i32 8, !dbg !3951
  store i32 10000, i32* %probability42, align 4, !dbg !3952
  %19 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3953
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #7, !dbg !3953
  %call44 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3953
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3953
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call44, 0, !dbg !3953
  store i32 %21, i32* %20, align 8, !dbg !3953
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3953
  %23 = extractvalue { i32, %struct.VEC_edge_gc** } %call44, 1, !dbg !3953
  store %struct.VEC_edge_gc** %23, %struct.VEC_edge_gc*** %22, align 8, !dbg !3953
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %19, i64 16, i1 false), !dbg !3953
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #7, !dbg !3953
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3891, metadata !DIExpression(DW_OP_deref)), !dbg !3896
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3954
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3955
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3955
  br label %for.cond, !dbg !3958

for.cond:                                         ; preds = %for.body, %cond.end
  %26 = load i32, i32* %24, align 8, !dbg !3959
  %27 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %25, align 8, !dbg !3959
  %call45 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %26, %struct.VEC_edge_gc** %27) #8, !dbg !3959
  call void @llvm.dbg.value(metadata %struct.edge_def* %call45, metadata !3889, metadata !DIExpression()), !dbg !3896
  store %struct.edge_def* %call45, %struct.edge_def** %c, align 8, !dbg !3960
  %tobool46 = icmp eq %struct.edge_def* %call45, null, !dbg !3961
  br i1 %tobool46, label %if.end79.loopexit, label %for.body, !dbg !3961

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.edge_def* %call45, metadata !3889, metadata !DIExpression()), !dbg !3896
  %probability47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call45, i64 0, i32 8, !dbg !3962
  store i32 0, i32* %probability47, align 4, !dbg !3963
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3891, metadata !DIExpression(DW_OP_deref)), !dbg !3896
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3964
  br label %for.cond, !dbg !3965, !llvm.loop !3966

if.else48:                                        ; preds = %if.end30
  %cmp49 = icmp eq i32 %prob.1, 0, !dbg !3968
  br i1 %cmp49, label %if.end79, label %if.then50, !dbg !3969

if.then50:                                        ; preds = %if.else48
  %div51 = sdiv i32 %sub23, 2, !dbg !3970
  %add = add nsw i32 %div51, 655360000, !dbg !3970
  %div52 = sdiv i32 %add, %sub23, !dbg !3970
  call void @llvm.dbg.value(metadata i32 %div52, metadata !3892, metadata !DIExpression()), !dbg !3971
  %28 = bitcast %struct.edge_iterator* %tmp53 to i8*, !dbg !3972
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #7, !dbg !3972
  %succs54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3972
  %call55 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs54) #8, !dbg !3972
  %29 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp53, i64 0, i32 0, !dbg !3972
  %30 = extractvalue { i32, %struct.VEC_edge_gc** } %call55, 0, !dbg !3972
  store i32 %30, i32* %29, align 8, !dbg !3972
  %31 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp53, i64 0, i32 1, !dbg !3972
  %32 = extractvalue { i32, %struct.VEC_edge_gc** } %call55, 1, !dbg !3972
  store %struct.VEC_edge_gc** %32, %struct.VEC_edge_gc*** %31, align 8, !dbg !3972
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %28, i64 16, i1 false), !dbg !3972
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #7, !dbg !3972
  %33 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3974
  %34 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3974
  br label %for.cond56, !dbg !3972

for.cond56:                                       ; preds = %for.inc76, %if.then50
  %35 = load i32, i32* %33, align 8, !dbg !3976
  %36 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %34, align 8, !dbg !3976
  call void @llvm.dbg.value(metadata %struct.edge_def** %c, metadata !3889, metadata !DIExpression(DW_OP_deref)), !dbg !3896
  %call57 = call fastcc zeroext i8 @ei_cond(i32 %35, %struct.VEC_edge_gc** %36, %struct.edge_def** nonnull %c) #8, !dbg !3976
  %tobool58 = icmp eq i8 %call57, 0, !dbg !3972
  br i1 %tobool58, label %if.end79.loopexit1, label %for.body59, !dbg !3972

for.body59:                                       ; preds = %for.cond56
  %37 = load %struct.edge_def*, %struct.edge_def** %c, align 8, !dbg !3977
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !3889, metadata !DIExpression()), !dbg !3896
  %probability60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i64 0, i32 8, !dbg !3980
  %38 = load i32, i32* %probability60, align 4, !dbg !3980
  %cmp61 = icmp sgt i32 %38, %sub23, !dbg !3981
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !3889, metadata !DIExpression()), !dbg !3896
  br i1 %cmp61, label %if.then62, label %if.else64, !dbg !3982

if.then62:                                        ; preds = %for.body59
  store i32 10000, i32* %probability60, align 4, !dbg !3983
  br label %for.inc76, !dbg !3984

if.else64:                                        ; preds = %for.body59
  %mul66 = mul nsw i32 %38, %div52, !dbg !3985
  %add67 = add nsw i32 %mul66, 32768, !dbg !3985
  %div68 = sdiv i32 %add67, 65536, !dbg !3985
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !3889, metadata !DIExpression()), !dbg !3896
  store i32 %div68, i32* %probability60, align 4, !dbg !3987
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !3889, metadata !DIExpression()), !dbg !3896
  %cmp71 = icmp sgt i32 %add67, 655425535, !dbg !3988
  br i1 %cmp71, label %if.then72, label %for.inc76, !dbg !3990

if.then72:                                        ; preds = %if.else64
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !3889, metadata !DIExpression()), !dbg !3896
  store i32 10000, i32* %probability60, align 4, !dbg !3991
  br label %for.inc76, !dbg !3992

for.inc76:                                        ; preds = %if.then62, %if.then72, %if.else64
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3891, metadata !DIExpression(DW_OP_deref)), !dbg !3896
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3976
  br label %for.cond56, !dbg !3976, !llvm.loop !3993

if.end79.loopexit:                                ; preds = %for.cond
  br label %if.end79, !dbg !3995

if.end79.loopexit1:                               ; preds = %for.cond56
  br label %if.end79, !dbg !3995

if.end79:                                         ; preds = %if.end79.loopexit1, %if.end79.loopexit, %if.else48
  %src80 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %taken_edge, i64 0, i32 0, !dbg !3995
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %src80, align 8, !dbg !3995
  %cmp81 = icmp eq %struct.basic_block_def* %39, %bb, !dbg !3995
  br i1 %cmp81, label %cond.end84, label %cond.true82, !dbg !3995

cond.true82:                                      ; preds = %if.end79
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1016, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3995
  br label %cond.end84, !dbg !3995

cond.end84:                                       ; preds = %if.end79, %cond.true82
  %count86 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %taken_edge, i64 0, i32 9, !dbg !3996
  %40 = load i64, i64* %count86, align 8, !dbg !3997
  %sub87 = sub nsw i64 %40, %count, !dbg !3997
  store i64 %sub87, i64* %count86, align 8, !dbg !3997
  %cmp89 = icmp slt i64 %sub87, 0, !dbg !3998
  br i1 %cmp89, label %if.then90, label %if.end100, !dbg !4000

if.then90:                                        ; preds = %cond.end84
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4001
  %tobool91 = icmp eq %struct._IO_FILE* %41, null, !dbg !4001
  br i1 %tobool91, label %if.end98, label %if.then92, !dbg !4004

if.then92:                                        ; preds = %if.then90
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %src80, align 8, !dbg !4005
  %index94 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i64 0, i32 9, !dbg !4006
  %43 = load i32, i32* %index94, align 8, !dbg !4006
  %dest95 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %taken_edge, i64 0, i32 1, !dbg !4007
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %dest95, align 8, !dbg !4007
  %index96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i64 0, i32 9, !dbg !4008
  %45 = load i32, i32* %index96, align 8, !dbg !4008
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.59, i64 0, i64 0), i32 %43, i32 %45) #6, !dbg !4009
  br label %if.end98, !dbg !4009

if.end98:                                         ; preds = %if.then90, %if.then92
  store i64 0, i64* %count86, align 8, !dbg !4010
  br label %if.end100, !dbg !4011

if.end100:                                        ; preds = %if.end98, %cond.end84
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4012
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4012
  ret void, !dbg !4012
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4013 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4018, metadata !DIExpression()), !dbg !4019
  br label %land.end, !dbg !4020

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4020
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4020
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4020
  ret %struct.edge_def* %0, !dbg !4020
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4021 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4026
  %tobool = icmp eq i8 %call, 0, !dbg !4026
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4027

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4028
  br label %cond.end, !dbg !4027

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !4027
  ret %struct.edge_def* %cond, !dbg !4029
}

; Function Attrs: nounwind uwtable
define dso_local void @scale_bbs_frequencies_int(%struct.basic_block_def** %bbs, i32 %nbbs, i32 %num, i32 %den) local_unnamed_addr #4 !dbg !4030 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bbs, metadata !4035, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %nbbs, metadata !4036, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %num, metadata !4037, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %den, metadata !4038, metadata !DIExpression()), !dbg !4045
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4046
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4046
  %1 = icmp sgt i32 %num, 0, !dbg !4047
  %spec.select = select i1 %1, i32 %num, i32 0, !dbg !4047
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4037, metadata !DIExpression()), !dbg !4045
  %cmp1 = icmp sgt i32 %den, 1000, !dbg !4048
  br i1 %cmp1, label %if.then2, label %if.end7, !dbg !4050

if.then2:                                         ; preds = %entry
  %cmp3 = icmp sgt i32 %spec.select, 1000000, !dbg !4051
  br i1 %cmp3, label %cleanup, label %if.end5, !dbg !4054

if.end5:                                          ; preds = %if.then2
  %mul = mul nsw i32 %spec.select, 1000, !dbg !4055
  %div = sdiv i32 %den, 2, !dbg !4055
  %add = add nsw i32 %mul, %div, !dbg !4055
  %div6 = sdiv i32 %add, %den, !dbg !4055
  call void @llvm.dbg.value(metadata i32 %div6, metadata !4037, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i32 1000, metadata !4038, metadata !DIExpression()), !dbg !4045
  br label %if.end7, !dbg !4056

if.end7:                                          ; preds = %if.end5, %entry
  %den.addr.0 = phi i32 [ 1000, %if.end5 ], [ %den, %entry ]
  %num.addr.1 = phi i32 [ %div6, %if.end5 ], [ %spec.select, %entry ], !dbg !4045
  call void @llvm.dbg.value(metadata i32 %num.addr.1, metadata !4037, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.value(metadata i32 %den.addr.0, metadata !4038, metadata !DIExpression()), !dbg !4045
  %mul8 = mul nsw i32 %den.addr.0, 100, !dbg !4057
  %cmp9 = icmp sgt i32 %num.addr.1, %mul8, !dbg !4059
  br i1 %cmp9, label %cleanup, label %for.cond.preheader, !dbg !4060

for.cond.preheader:                               ; preds = %if.end7
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4061
  %div14 = sdiv i32 %den.addr.0, 2, !dbg !4061
  %conv = sext i32 %num.addr.1 to i64, !dbg !4061
  %conv33 = sext i32 %div14 to i64, !dbg !4061
  %conv35 = sext i32 %den.addr.0 to i64, !dbg !4061
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4062
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4062
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4062
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4064
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4064
  %8 = sext i32 %nbbs to i64, !dbg !4066
  br label %for.cond, !dbg !4066

for.cond:                                         ; preds = %for.cond.preheader, %for.end
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.end ], !dbg !4067
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4039, metadata !DIExpression()), !dbg !4045
  %cmp12 = icmp slt i64 %indvars.iv, %8, !dbg !4068
  br i1 %cmp12, label %for.body, label %cleanup.loopexit, !dbg !4066

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4069
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv, !dbg !4070
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4070
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 11, !dbg !4070
  %10 = load i32, i32* %frequency, align 8, !dbg !4070
  %mul13 = mul nsw i32 %10, %num.addr.1, !dbg !4070
  %add15 = add nsw i32 %mul13, %div14, !dbg !4070
  %div16 = sdiv i32 %add15, %den.addr.0, !dbg !4070
  store i32 %div16, i32* %frequency, align 8, !dbg !4071
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4072
  %frequency22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i64 0, i32 11, !dbg !4074
  %12 = load i32, i32* %frequency22, align 8, !dbg !4074
  %cmp23 = icmp sgt i32 %12, 10000, !dbg !4075
  br i1 %cmp23, label %if.then24, label %if.end28, !dbg !4076

if.then24:                                        ; preds = %for.body
  store i32 10000, i32* %frequency22, align 8, !dbg !4077
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4078
  br label %if.end28, !dbg !4079

if.end28:                                         ; preds = %if.then24, %for.body
  %13 = phi %struct.basic_block_def* [ %.pre, %if.then24 ], [ %11, %for.body ], !dbg !4080
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 8, !dbg !4078
  %14 = load i64, i64* %count, align 8, !dbg !4078
  %mul31 = mul nsw i64 %14, %conv, !dbg !4078
  %add34 = add nsw i64 %mul31, %conv33, !dbg !4078
  %div36 = sdiv i64 %add34, %conv35, !dbg !4078
  store i64 %div36, i64* %count, align 8, !dbg !4081
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4082
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4082
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 1, !dbg !4082
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4082
  %16 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4082
  store i32 %16, i32* %4, align 8, !dbg !4082
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4082
  store %struct.VEC_edge_gc** %17, %struct.VEC_edge_gc*** %5, align 8, !dbg !4082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !4082
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4082
  br label %for.cond42, !dbg !4082

for.cond42:                                       ; preds = %for.body44, %if.end28
  %18 = load i32, i32* %6, align 8, !dbg !4083
  %19 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %7, align 8, !dbg !4083
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4040, metadata !DIExpression(DW_OP_deref)), !dbg !4045
  %call43 = call fastcc zeroext i8 @ei_cond(i32 %18, %struct.VEC_edge_gc** %19, %struct.edge_def** nonnull %e) #8, !dbg !4083
  %tobool = icmp eq i8 %call43, 0, !dbg !4082
  br i1 %tobool, label %for.end, label %for.body44, !dbg !4082

for.body44:                                       ; preds = %for.cond42
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4084
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !4040, metadata !DIExpression()), !dbg !4045
  %count45 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i64 0, i32 9, !dbg !4084
  %21 = load i64, i64* %count45, align 8, !dbg !4084
  %mul47 = mul nsw i64 %21, %conv, !dbg !4084
  %add50 = add nsw i64 %mul47, %conv33, !dbg !4084
  %div52 = sdiv i64 %add50, %conv35, !dbg !4084
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !4040, metadata !DIExpression()), !dbg !4045
  store i64 %div52, i64* %count45, align 8, !dbg !4085
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4041, metadata !DIExpression(DW_OP_deref)), !dbg !4061
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4083
  br label %for.cond42, !dbg !4083, !llvm.loop !4086

for.end:                                          ; preds = %for.cond42
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4088
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4089
  call void @llvm.dbg.value(metadata i32 undef, metadata !4039, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4045
  br label %for.cond, !dbg !4090, !llvm.loop !4091

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !4093

cleanup:                                          ; preds = %cleanup.loopexit, %if.end7, %if.then2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4093
  ret void, !dbg !4093
}

; Function Attrs: nounwind uwtable
define dso_local void @scale_bbs_frequencies_gcov_type(%struct.basic_block_def** %bbs, i32 %nbbs, i64 %num, i64 %den) local_unnamed_addr #4 !dbg !4094 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %ei67 = alloca %struct.edge_iterator, align 8
  %tmp89 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bbs, metadata !4098, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i32 %nbbs, metadata !4099, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %num, metadata !4100, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %den, metadata !4101, metadata !DIExpression()), !dbg !4114
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4115
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4115
  %mul = shl nsw i64 %num, 16, !dbg !4116
  %div = sdiv i64 %den, 2, !dbg !4116
  %add = add nsw i64 %mul, %div, !dbg !4116
  %div1 = sdiv i64 %add, %den, !dbg !4116
  call void @llvm.dbg.value(metadata i64 %div1, metadata !4104, metadata !DIExpression()), !dbg !4114
  %cmp = icmp sgt i64 %div1, -1, !dbg !4117
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4117

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1079, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4117
  br label %cond.end, !dbg !4117

cond.end:                                         ; preds = %entry, %cond.true
  %cmp2 = icmp slt i64 %num, -2147483648, !dbg !4118
  call void @llvm.dbg.value(metadata i32 0, metadata !4102, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i32 0, metadata !4102, metadata !DIExpression()), !dbg !4114
  br i1 %cmp2, label %for.cond.preheader, label %for.cond63.preheader, !dbg !4119

for.cond63.preheader:                             ; preds = %cond.end
  %1 = bitcast %struct.edge_iterator* %ei67 to i8*, !dbg !4120
  %2 = bitcast %struct.edge_iterator* %tmp89 to i8*, !dbg !4121
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp89, i64 0, i32 0, !dbg !4121
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp89, i64 0, i32 1, !dbg !4121
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei67, i64 0, i32 0, !dbg !4123
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei67, i64 0, i32 1, !dbg !4123
  %7 = sext i32 %nbbs to i64, !dbg !4125
  br label %for.cond63, !dbg !4125

for.cond.preheader:                               ; preds = %cond.end
  %8 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4126
  %9 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4127
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4127
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4127
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4129
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4129
  %14 = sext i32 %nbbs to i64, !dbg !4131
  br label %for.cond, !dbg !4131

for.cond:                                         ; preds = %for.cond.preheader, %for.end
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.end ], !dbg !4132
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4102, metadata !DIExpression()), !dbg !4114
  %cmp3 = icmp slt i64 %indvars.iv, %14, !dbg !4133
  br i1 %cmp3, label %for.body, label %if.end108.loopexit, !dbg !4131

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !4134
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv, !dbg !4135
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4135
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 11, !dbg !4135
  %16 = load i32, i32* %frequency, align 8, !dbg !4135
  %conv = sext i32 %16 to i64, !dbg !4135
  %mul4 = mul nsw i64 %conv, %num, !dbg !4135
  %add6 = add nsw i64 %mul4, %div, !dbg !4135
  %div7 = sdiv i64 %add6, %den, !dbg !4135
  %conv8 = trunc i64 %div7 to i32, !dbg !4135
  store i32 %conv8, i32* %frequency, align 8, !dbg !4136
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4137
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 8, !dbg !4139
  %18 = load i64, i64* %count, align 8, !dbg !4139
  %cmp14 = icmp slt i64 %18, -2147483647, !dbg !4140
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !4141

if.then16:                                        ; preds = %for.body
  %mul20 = mul nsw i64 %18, %num, !dbg !4142
  %add22 = add nsw i64 %mul20, %div, !dbg !4142
  %div23 = sdiv i64 %add22, %den, !dbg !4142
  br label %if.end, !dbg !4143

if.else:                                          ; preds = %for.body
  %mul30 = mul nsw i64 %18, %div1, !dbg !4144
  %add31 = add nsw i64 %mul30, 32768, !dbg !4144
  %div32 = sdiv i64 %add31, 65536, !dbg !4144
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then16
  %storemerge = phi i64 [ %div32, %if.else ], [ %div23, %if.then16 ], !dbg !4145
  store i64 %storemerge, i64* %count, align 8, !dbg !4145
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #7, !dbg !4146
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4146
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i64 0, i32 1, !dbg !4146
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4146
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4146
  store i32 %20, i32* %10, align 8, !dbg !4146
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4146
  store %struct.VEC_edge_gc** %21, %struct.VEC_edge_gc*** %11, align 8, !dbg !4146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !4146
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #7, !dbg !4146
  br label %for.cond38, !dbg !4146

for.cond38:                                       ; preds = %for.inc, %if.end
  %22 = load i32, i32* %12, align 8, !dbg !4147
  %23 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !4147
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4103, metadata !DIExpression(DW_OP_deref)), !dbg !4114
  %call39 = call fastcc zeroext i8 @ei_cond(i32 %22, %struct.VEC_edge_gc** %23, %struct.edge_def** nonnull %e) #8, !dbg !4147
  %tobool = icmp eq i8 %call39, 0, !dbg !4146
  br i1 %tobool, label %for.end, label %for.body40, !dbg !4146

for.body40:                                       ; preds = %for.cond38
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4148
  %count43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i64 0, i32 8, !dbg !4150
  %25 = load i64, i64* %count43, align 8, !dbg !4150
  %cmp44 = icmp slt i64 %25, -2147483647, !dbg !4151
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4152
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !4103, metadata !DIExpression()), !dbg !4114
  %count47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i64 0, i32 9, !dbg !4152
  %27 = load i64, i64* %count47, align 8, !dbg !4152
  br i1 %cmp44, label %if.then46, label %if.else53, !dbg !4153

if.then46:                                        ; preds = %for.body40
  %mul48 = mul nsw i64 %27, %num, !dbg !4154
  %add50 = add nsw i64 %mul48, %div, !dbg !4154
  %div51 = sdiv i64 %add50, %den, !dbg !4154
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !4103, metadata !DIExpression()), !dbg !4114
  br label %for.inc, !dbg !4155

if.else53:                                        ; preds = %for.body40
  %mul55 = mul nsw i64 %27, %div1, !dbg !4156
  %add56 = add nsw i64 %mul55, 32768, !dbg !4156
  %div57 = sdiv i64 %add56, 65536, !dbg !4156
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !4103, metadata !DIExpression()), !dbg !4114
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %if.else53
  %storemerge4 = phi i64 [ %div57, %if.else53 ], [ %div51, %if.then46 ], !dbg !4152
  store i64 %storemerge4, i64* %count47, align 8, !dbg !4152
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4105, metadata !DIExpression(DW_OP_deref)), !dbg !4126
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4147
  br label %for.cond38, !dbg !4147, !llvm.loop !4157

for.end:                                          ; preds = %for.cond38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !4159
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4160
  call void @llvm.dbg.value(metadata i32 undef, metadata !4102, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4114
  br label %for.cond, !dbg !4161, !llvm.loop !4162

for.cond63:                                       ; preds = %for.cond63.preheader, %for.end104
  %indvars.iv2 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next3, %for.end104 ], !dbg !4164
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !4102, metadata !DIExpression()), !dbg !4114
  %cmp64 = icmp slt i64 %indvars.iv2, %7, !dbg !4165
  br i1 %cmp64, label %for.body66, label %if.end108.loopexit1, !dbg !4125

for.body66:                                       ; preds = %for.cond63
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4166
  %arrayidx69 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %bbs, i64 %indvars.iv2, !dbg !4167
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx69, align 8, !dbg !4167
  %frequency70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i64 0, i32 11, !dbg !4167
  %29 = load i32, i32* %frequency70, align 8, !dbg !4167
  %conv71 = sext i32 %29 to i64, !dbg !4167
  %mul72 = mul nsw i64 %conv71, %num, !dbg !4167
  %add74 = add nsw i64 %mul72, %div, !dbg !4167
  %div75 = sdiv i64 %add74, %den, !dbg !4167
  %conv76 = trunc i64 %div75 to i32, !dbg !4167
  store i32 %conv76, i32* %frequency70, align 8, !dbg !4169
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx69, align 8, !dbg !4170
  %count82 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i64 0, i32 8, !dbg !4170
  %31 = load i64, i64* %count82, align 8, !dbg !4170
  %mul83 = mul nsw i64 %31, %div1, !dbg !4170
  %add84 = add nsw i64 %mul83, 32768, !dbg !4170
  %div85 = sdiv i64 %add84, 65536, !dbg !4170
  store i64 %div85, i64* %count82, align 8, !dbg !4171
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4172
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx69, align 8, !dbg !4172
  %succs92 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i64 0, i32 1, !dbg !4172
  %call93 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs92) #8, !dbg !4172
  %33 = extractvalue { i32, %struct.VEC_edge_gc** } %call93, 0, !dbg !4172
  store i32 %33, i32* %3, align 8, !dbg !4172
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call93, 1, !dbg !4172
  store %struct.VEC_edge_gc** %34, %struct.VEC_edge_gc*** %4, align 8, !dbg !4172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !4172
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4172
  br label %for.cond94, !dbg !4172

for.cond94:                                       ; preds = %for.body97, %for.body66
  %35 = load i32, i32* %5, align 8, !dbg !4173
  %36 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %6, align 8, !dbg !4173
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4103, metadata !DIExpression(DW_OP_deref)), !dbg !4114
  %call95 = call fastcc zeroext i8 @ei_cond(i32 %35, %struct.VEC_edge_gc** %36, %struct.edge_def** nonnull %e) #8, !dbg !4173
  %tobool96 = icmp eq i8 %call95, 0, !dbg !4172
  br i1 %tobool96, label %for.end104, label %for.body97, !dbg !4172

for.body97:                                       ; preds = %for.cond94
  %37 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4174
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !4103, metadata !DIExpression()), !dbg !4114
  %count98 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i64 0, i32 9, !dbg !4174
  %38 = load i64, i64* %count98, align 8, !dbg !4174
  %mul99 = mul nsw i64 %38, %div1, !dbg !4174
  %add100 = add nsw i64 %mul99, 32768, !dbg !4174
  %div101 = sdiv i64 %add100, 65536, !dbg !4174
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !4103, metadata !DIExpression()), !dbg !4114
  store i64 %div101, i64* %count98, align 8, !dbg !4175
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei67, metadata !4110, metadata !DIExpression(DW_OP_deref)), !dbg !4120
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei67) #8, !dbg !4173
  br label %for.cond94, !dbg !4173, !llvm.loop !4176

for.end104:                                       ; preds = %for.cond94
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4178
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !4179
  call void @llvm.dbg.value(metadata i32 undef, metadata !4102, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4114
  br label %for.cond63, !dbg !4180, !llvm.loop !4181

if.end108.loopexit:                               ; preds = %for.cond
  br label %if.end108, !dbg !4183

if.end108.loopexit1:                              ; preds = %for.cond63
  br label %if.end108, !dbg !4183

if.end108:                                        ; preds = %if.end108.loopexit1, %if.end108.loopexit
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4183
  ret void, !dbg !4183
}

; Function Attrs: nounwind uwtable
define dso_local void @initialize_original_copy_tables() local_unnamed_addr #4 !dbg !4184 {
entry:
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4185
  %tobool = icmp eq %struct.alloc_pool_def* %0, null, !dbg !4185
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4185

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4185
  br label %cond.end, !dbg !4185

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call %struct.alloc_pool_def* @create_alloc_pool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i64 0, i64 0), i64 8, i64 10) #6, !dbg !4186
  store %struct.alloc_pool_def* %call, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4187
  %call1 = tail call %struct.htab* @htab_create(i64 10, i32 (i8*)* nonnull @bb_copy_original_hash, i32 (i8*, i8*)* nonnull @bb_copy_original_eq, void (i8*)* null) #6, !dbg !4188
  store %struct.htab* %call1, %struct.htab** @bb_original, align 8, !dbg !4189
  %call2 = tail call %struct.htab* @htab_create(i64 10, i32 (i8*)* nonnull @bb_copy_original_hash, i32 (i8*, i8*)* nonnull @bb_copy_original_eq, void (i8*)* null) #6, !dbg !4190
  store %struct.htab* %call2, %struct.htab** @bb_copy, align 8, !dbg !4191
  %call3 = tail call %struct.htab* @htab_create(i64 10, i32 (i8*)* nonnull @bb_copy_original_hash, i32 (i8*, i8*)* nonnull @bb_copy_original_eq, void (i8*)* null) #6, !dbg !4192
  store %struct.htab* %call3, %struct.htab** @loop_copy, align 8, !dbg !4193
  ret void, !dbg !4194
}

declare dso_local %struct.alloc_pool_def* @create_alloc_pool(i8*, i64, i64) local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @bb_copy_original_hash(i8* %p) #4 !dbg !4195 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4197, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i8* %p, metadata !4198, metadata !DIExpression()), !dbg !4199
  %index1 = bitcast i8* %p to i32*, !dbg !4200
  %0 = load i32, i32* %index1, align 4, !dbg !4200
  ret i32 %0, !dbg !4201
}

; Function Attrs: nounwind uwtable
define internal i32 @bb_copy_original_eq(i8* %p, i8* %q) #4 !dbg !4202 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !4204, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i8* %q, metadata !4205, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i8* %p, metadata !4206, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata i8* %q, metadata !4207, metadata !DIExpression()), !dbg !4208
  %index1 = bitcast i8* %p to i32*, !dbg !4209
  %0 = load i32, i32* %index1, align 4, !dbg !4209
  %index11 = bitcast i8* %q to i32*, !dbg !4210
  %1 = load i32, i32* %index11, align 4, !dbg !4210
  %cmp = icmp eq i32 %0, %1, !dbg !4211
  %conv = zext i1 %cmp to i32, !dbg !4211
  ret i32 %conv, !dbg !4212
}

; Function Attrs: nounwind uwtable
define dso_local void @free_original_copy_tables() local_unnamed_addr #4 !dbg !4213 {
entry:
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4214
  %tobool = icmp eq %struct.alloc_pool_def* %0, null, !dbg !4214
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4214

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4214
  br label %cond.end, !dbg !4214

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load %struct.htab*, %struct.htab** @bb_copy, align 8, !dbg !4215
  tail call void @htab_delete(%struct.htab* %1) #6, !dbg !4216
  %2 = load %struct.htab*, %struct.htab** @bb_original, align 8, !dbg !4217
  tail call void @htab_delete(%struct.htab* %2) #6, !dbg !4218
  %3 = load %struct.htab*, %struct.htab** @loop_copy, align 8, !dbg !4219
  tail call void @htab_delete(%struct.htab* %3) #6, !dbg !4220
  %4 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4221
  tail call void @free_alloc_pool(%struct.alloc_pool_def* %4) #6, !dbg !4222
  store %struct.htab* null, %struct.htab** @bb_copy, align 8, !dbg !4223
  store %struct.htab* null, %struct.htab** @bb_original, align 8, !dbg !4224
  store %struct.htab* null, %struct.htab** @loop_copy, align 8, !dbg !4225
  store %struct.alloc_pool_def* null, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4226
  ret void, !dbg !4227
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #1

declare dso_local void @free_alloc_pool(%struct.alloc_pool_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @set_bb_original(%struct.basic_block_def* %bb, %struct.basic_block_def* %original) local_unnamed_addr #4 !dbg !4228 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4230, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %original, metadata !4231, metadata !DIExpression()), !dbg !4232
  %0 = load %struct.htab*, %struct.htab** @bb_original, align 8, !dbg !4233
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4234
  %1 = load i32, i32* %index, align 8, !dbg !4234
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %original, i64 0, i32 9, !dbg !4235
  %2 = load i32, i32* %index1, align 8, !dbg !4235
  tail call fastcc void @copy_original_table_set(%struct.htab* %0, i32 %1, i32 %2) #8, !dbg !4236
  ret void, !dbg !4237
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_original_table_set(%struct.htab* %tab, i32 %obj, i32 %val) unnamed_addr #4 !dbg !4238 {
entry:
  %key = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.dbg.value(metadata %struct.htab* %tab, metadata !4242, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i32 %obj, metadata !4243, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i32 %val, metadata !4244, metadata !DIExpression()), !dbg !4247
  %0 = bitcast %struct.htab_bb_copy_original_entry* %key to i8*, !dbg !4248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4248
  %1 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4249
  %tobool = icmp eq %struct.alloc_pool_def* %1, null, !dbg !4249
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4251

if.end:                                           ; preds = %entry
  %index1 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %key, i64 0, i32 0, !dbg !4252
  store i32 %obj, i32* %index1, align 4, !dbg !4253
  %call = call i8** @htab_find_slot(%struct.htab* %tab, i8* nonnull %0, i32 1) #6, !dbg !4254
  %2 = bitcast i8** %call to %struct.htab_bb_copy_original_entry**, !dbg !4255
  call void @llvm.dbg.value(metadata %struct.htab_bb_copy_original_entry** %2, metadata !4245, metadata !DIExpression()), !dbg !4247
  %3 = load %struct.htab_bb_copy_original_entry*, %struct.htab_bb_copy_original_entry** %2, align 8, !dbg !4256
  %tobool1 = icmp eq %struct.htab_bb_copy_original_entry* %3, null, !dbg !4256
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !4258

if.then2:                                         ; preds = %if.end
  %4 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4259
  %call3 = call i8* @pool_alloc(%struct.alloc_pool_def* %4) #6, !dbg !4261
  store i8* %call3, i8** %call, align 8, !dbg !4262
  %index14 = bitcast i8* %call3 to i32*, !dbg !4263
  store i32 %obj, i32* %index14, align 4, !dbg !4264
  %.pre = load %struct.htab_bb_copy_original_entry*, %struct.htab_bb_copy_original_entry** %2, align 8, !dbg !4265
  br label %if.end5, !dbg !4266

if.end5:                                          ; preds = %if.end, %if.then2
  %5 = phi %struct.htab_bb_copy_original_entry* [ %3, %if.end ], [ %.pre, %if.then2 ], !dbg !4265
  %index2 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %5, i64 0, i32 1, !dbg !4267
  store i32 %val, i32* %index2, align 4, !dbg !4268
  br label %cleanup, !dbg !4269

cleanup:                                          ; preds = %entry, %if.end5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4269
  ret void, !dbg !4269
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @get_bb_original(%struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !4270 {
entry:
  %key = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4274, metadata !DIExpression()), !dbg !4277
  %0 = bitcast %struct.htab_bb_copy_original_entry* %key to i8*, !dbg !4278
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4278
  %1 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4279
  %tobool = icmp eq %struct.alloc_pool_def* %1, null, !dbg !4279
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4279

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1237, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4279
  br label %cond.end, !dbg !4279

cond.end:                                         ; preds = %entry, %cond.true
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4280
  %2 = load i32, i32* %index, align 8, !dbg !4280
  %index1 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %key, i64 0, i32 0, !dbg !4281
  store i32 %2, i32* %index1, align 4, !dbg !4282
  %3 = load %struct.htab*, %struct.htab** @bb_original, align 8, !dbg !4283
  %call = call i8* @htab_find(%struct.htab* %3, i8* nonnull %0) #6, !dbg !4284
  call void @llvm.dbg.value(metadata i8* %call, metadata !4275, metadata !DIExpression()), !dbg !4277
  %tobool2 = icmp eq i8* %call, null, !dbg !4285
  br i1 %tobool2, label %cleanup, label %if.then, !dbg !4287

if.then:                                          ; preds = %cond.end
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4288
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !4288
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4288
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 2, !dbg !4288
  %6 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !4288
  %tobool3 = icmp eq %struct.VEC_basic_block_gc* %6, null, !dbg !4288
  br i1 %tobool3, label %cond.end9, label %cond.true4, !dbg !4288

cond.true4:                                       ; preds = %if.then
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %6, i64 0, i32 0, !dbg !4288
  br label %cond.end9, !dbg !4288

cond.end9:                                        ; preds = %if.then, %cond.true4
  %cond10 = phi %struct.VEC_basic_block_base* [ %base, %cond.true4 ], [ null, %if.then ], !dbg !4288
  %index2 = getelementptr inbounds i8, i8* %call, i64 4, !dbg !4288
  %7 = bitcast i8* %index2 to i32*, !dbg !4288
  %8 = load i32, i32* %7, align 4, !dbg !4288
  %call11 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond10, i32 %8) #8, !dbg !4288
  br label %cleanup, !dbg !4289

cleanup:                                          ; preds = %cond.end, %cond.end9
  %retval.0 = phi %struct.basic_block_def* [ %call11, %cond.end9 ], [ null, %cond.end ], !dbg !4290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4291
  ret %struct.basic_block_def* %retval.0, !dbg !4291
}

declare dso_local i8* @htab_find(%struct.htab*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @set_bb_copy(%struct.basic_block_def* %bb, %struct.basic_block_def* %copy) local_unnamed_addr #4 !dbg !4292 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4294, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %copy, metadata !4295, metadata !DIExpression()), !dbg !4296
  %0 = load %struct.htab*, %struct.htab** @bb_copy, align 8, !dbg !4297
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4298
  %1 = load i32, i32* %index, align 8, !dbg !4298
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %copy, i64 0, i32 9, !dbg !4299
  %2 = load i32, i32* %index1, align 8, !dbg !4299
  tail call fastcc void @copy_original_table_set(%struct.htab* %0, i32 %1, i32 %2) #8, !dbg !4300
  ret void, !dbg !4301
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %bb) local_unnamed_addr #4 !dbg !4302 {
entry:
  %key = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4304, metadata !DIExpression()), !dbg !4307
  %0 = bitcast %struct.htab_bb_copy_original_entry* %key to i8*, !dbg !4308
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4308
  %1 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4309
  %tobool = icmp eq %struct.alloc_pool_def* %1, null, !dbg !4309
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4309

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4309
  br label %cond.end, !dbg !4309

cond.end:                                         ; preds = %entry, %cond.true
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4310
  %2 = load i32, i32* %index, align 8, !dbg !4310
  %index1 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %key, i64 0, i32 0, !dbg !4311
  store i32 %2, i32* %index1, align 4, !dbg !4312
  %3 = load %struct.htab*, %struct.htab** @bb_copy, align 8, !dbg !4313
  %call = call i8* @htab_find(%struct.htab* %3, i8* nonnull %0) #6, !dbg !4314
  call void @llvm.dbg.value(metadata i8* %call, metadata !4305, metadata !DIExpression()), !dbg !4307
  %tobool2 = icmp eq i8* %call, null, !dbg !4315
  br i1 %tobool2, label %cleanup, label %if.then, !dbg !4317

if.then:                                          ; preds = %cond.end
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4318
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !4318
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4318
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 2, !dbg !4318
  %6 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !4318
  %tobool3 = icmp eq %struct.VEC_basic_block_gc* %6, null, !dbg !4318
  br i1 %tobool3, label %cond.end9, label %cond.true4, !dbg !4318

cond.true4:                                       ; preds = %if.then
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %6, i64 0, i32 0, !dbg !4318
  br label %cond.end9, !dbg !4318

cond.end9:                                        ; preds = %if.then, %cond.true4
  %cond10 = phi %struct.VEC_basic_block_base* [ %base, %cond.true4 ], [ null, %if.then ], !dbg !4318
  %index2 = getelementptr inbounds i8, i8* %call, i64 4, !dbg !4318
  %7 = bitcast i8* %index2 to i32*, !dbg !4318
  %8 = load i32, i32* %7, align 4, !dbg !4318
  %call11 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond10, i32 %8) #8, !dbg !4318
  br label %cleanup, !dbg !4319

cleanup:                                          ; preds = %cond.end, %cond.end9
  %retval.0 = phi %struct.basic_block_def* [ %call11, %cond.end9 ], [ null, %cond.end ], !dbg !4320
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4321
  ret %struct.basic_block_def* %retval.0, !dbg !4321
}

; Function Attrs: nounwind uwtable
define dso_local void @set_loop_copy(%struct.loop* %loop, %struct.loop* %copy) local_unnamed_addr #4 !dbg !4322 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4326, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata %struct.loop* %copy, metadata !4327, metadata !DIExpression()), !dbg !4328
  %tobool = icmp eq %struct.loop* %copy, null, !dbg !4329
  %0 = load %struct.htab*, %struct.htab** @loop_copy, align 8, !dbg !4331
  %num1 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !4331
  %1 = load i32, i32* %num1, align 8, !dbg !4331
  br i1 %tobool, label %if.then, label %if.else, !dbg !4332

if.then:                                          ; preds = %entry
  tail call fastcc void @copy_original_table_clear(%struct.htab* %0, i32 %1) #8, !dbg !4333
  br label %if.end, !dbg !4333

if.else:                                          ; preds = %entry
  %num2 = getelementptr inbounds %struct.loop, %struct.loop* %copy, i64 0, i32 0, !dbg !4334
  %2 = load i32, i32* %num2, align 8, !dbg !4334
  tail call fastcc void @copy_original_table_set(%struct.htab* %0, i32 %1, i32 %2) #8, !dbg !4335
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4336
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_original_table_clear(%struct.htab* %tab, i32 %obj) unnamed_addr #4 !dbg !4337 {
entry:
  %key = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.dbg.value(metadata %struct.htab* %tab, metadata !4341, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 %obj, metadata !4342, metadata !DIExpression()), !dbg !4346
  %0 = bitcast %struct.htab_bb_copy_original_entry* %key to i8*, !dbg !4347
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4347
  %1 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4348
  %tobool = icmp eq %struct.alloc_pool_def* %1, null, !dbg !4348
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4350

if.end:                                           ; preds = %entry
  %index1 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %key, i64 0, i32 0, !dbg !4351
  store i32 %obj, i32* %index1, align 4, !dbg !4352
  %call = call i8** @htab_find_slot(%struct.htab* %tab, i8* nonnull %0, i32 0) #6, !dbg !4353
  call void @llvm.dbg.value(metadata i8** %call, metadata !4343, metadata !DIExpression()), !dbg !4346
  %tobool1 = icmp eq i8** %call, null, !dbg !4354
  br i1 %tobool1, label %cleanup, label %if.end3, !dbg !4356

if.end3:                                          ; preds = %if.end
  %2 = load i8*, i8** %call, align 8, !dbg !4357
  call void @htab_clear_slot(%struct.htab* %tab, i8** nonnull %call) #6, !dbg !4358
  %3 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4359
  call void @pool_free(%struct.alloc_pool_def* %3, i8* %2) #6, !dbg !4360
  br label %cleanup, !dbg !4361

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4361
  ret void, !dbg !4361
}

; Function Attrs: nounwind uwtable
define dso_local %struct.loop* @get_loop_copy(%struct.loop* %loop) local_unnamed_addr #4 !dbg !4362 {
entry:
  %key = alloca %struct.htab_bb_copy_original_entry, align 4
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4366, metadata !DIExpression()), !dbg !4369
  %0 = bitcast %struct.htab_bb_copy_original_entry* %key to i8*, !dbg !4370
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4370
  %1 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @original_copy_bb_pool, align 8, !dbg !4371
  %tobool = icmp eq %struct.alloc_pool_def* %1, null, !dbg !4371
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4371

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4371
  br label %cond.end, !dbg !4371

cond.end:                                         ; preds = %entry, %cond.true
  %num = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !4372
  %2 = load i32, i32* %num, align 8, !dbg !4372
  %index1 = getelementptr inbounds %struct.htab_bb_copy_original_entry, %struct.htab_bb_copy_original_entry* %key, i64 0, i32 0, !dbg !4373
  store i32 %2, i32* %index1, align 4, !dbg !4374
  %3 = load %struct.htab*, %struct.htab** @loop_copy, align 8, !dbg !4375
  %call = call i8* @htab_find(%struct.htab* %3, i8* nonnull %0) #6, !dbg !4376
  call void @llvm.dbg.value(metadata i8* %call, metadata !4367, metadata !DIExpression()), !dbg !4369
  %tobool2 = icmp eq i8* %call, null, !dbg !4377
  br i1 %tobool2, label %cleanup, label %if.then, !dbg !4379

if.then:                                          ; preds = %cond.end
  call void @llvm.dbg.value(metadata i8* %call, metadata !4367, metadata !DIExpression()), !dbg !4369
  %index2 = getelementptr inbounds i8, i8* %call, i64 4, !dbg !4380
  %4 = bitcast i8* %index2 to i32*, !dbg !4380
  %5 = load i32, i32* %4, align 4, !dbg !4380
  %call3 = call fastcc %struct.loop* @get_loop(i32 %5) #8, !dbg !4381
  br label %cleanup, !dbg !4382

cleanup:                                          ; preds = %cond.end, %if.then
  %retval.0 = phi %struct.loop* [ %call3, %if.then ], [ null, %cond.end ], !dbg !4383
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4384
  ret %struct.loop* %retval.0, !dbg !4384
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !4385 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !4389, metadata !DIExpression()), !dbg !4390
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4391
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4391
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4391
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !4391
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !4391
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !4391
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4391

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !4391
  br label %cond.end, !dbg !4391

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4391
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !4391
  ret %struct.loop* %call, !dbg !4392
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4393 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4398
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4398
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4398

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4398
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4398
  br label %cond.end, !dbg !4398

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4398
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4398
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4399
  %conv3 = zext i1 %cmp to i8, !dbg !4400
  ret i8 %conv3, !dbg !4401
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4402 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4405
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4405
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4405

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4405
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4405
  br label %cond.end, !dbg !4405

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4405
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !4405
  ret %struct.edge_def* %call2, !dbg !4406
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4407 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4412
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4412

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4412
  br label %cond.end, !dbg !4412

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4413
  ret %struct.VEC_edge_gc* %0, !dbg !4414
}

declare dso_local void @ggc_free(i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def** @VEC_edge_gc_safe_push(%struct.VEC_edge_gc** %vec_, %struct.edge_def* %obj_) unnamed_addr #0 !dbg !4415 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %vec_, metadata !4419, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata %struct.edge_def* %obj_, metadata !4420, metadata !DIExpression()), !dbg !4421
  %call = tail call fastcc i32 @VEC_edge_gc_reserve(%struct.VEC_edge_gc** %vec_, i32 1) #8, !dbg !4422
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %vec_, align 8, !dbg !4422
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4422
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4422

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4422
  br label %cond.end, !dbg !4422

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4422
  %call1 = tail call fastcc %struct.edge_def** @VEC_edge_base_quick_push(%struct.VEC_edge_base* %cond, %struct.edge_def* %obj_) #8, !dbg !4422
  ret %struct.edge_def** %call1, !dbg !4422
}

declare dso_local void @df_mark_solutions_dirty() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_gc_reserve(%struct.VEC_edge_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4423 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %vec_, metadata !4427, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 1, metadata !4428, metadata !DIExpression()), !dbg !4430
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %vec_, align 8, !dbg !4431
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4431
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4431

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4431
  br label %cond.end, !dbg !4431

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4431
  %call = tail call fastcc i32 @VEC_edge_base_space(%struct.VEC_edge_base* %cond, i32 1) #8, !dbg !4431
  %tobool1 = icmp eq i32 %call, 0, !dbg !4431
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4431
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4429, metadata !DIExpression()), !dbg !4430
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4431

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_edge_gc** %vec_ to i8**, !dbg !4432
  %2 = load i8*, i8** %1, align 8, !dbg !4432
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %2, i32 1) #6, !dbg !4432
  store i8* %call3, i8** %1, align 8, !dbg !4432
  br label %if.end, !dbg !4432

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4431
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def** @VEC_edge_base_quick_push(%struct.VEC_edge_base* %vec_, %struct.edge_def* %obj_) unnamed_addr #0 !dbg !4434 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4438, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata %struct.edge_def* %obj_, metadata !4439, metadata !DIExpression()), !dbg !4441
  %num1 = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4442
  %0 = load i32, i32* %num1, align 8, !dbg !4442
  %inc = add i32 %0, 1, !dbg !4442
  store i32 %inc, i32* %num1, align 8, !dbg !4442
  %idxprom = zext i32 %0 to i64, !dbg !4442
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4442
  call void @llvm.dbg.value(metadata %struct.edge_def** %arrayidx, metadata !4440, metadata !DIExpression()), !dbg !4441
  store %struct.edge_def* %obj_, %struct.edge_def** %arrayidx, align 8, !dbg !4442
  ret %struct.edge_def** %arrayidx, !dbg !4442
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_space(%struct.VEC_edge_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4443 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4447, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i32 1, metadata !4448, metadata !DIExpression()), !dbg !4449
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4450
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4450

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 1, !dbg !4450
  %0 = load i32, i32* %alloc, align 4, !dbg !4450
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4450
  %1 = load i32, i32* %num, align 8, !dbg !4450
  %cmp1 = icmp ne i32 %0, %1, !dbg !4450
  %phitmp = zext i1 %cmp1 to i32, !dbg !4450
  br label %cond.end, !dbg !4450

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4450

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4450
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_unordered_remove(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4451 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4455, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4456, metadata !DIExpression()), !dbg !4459
  %idxprom = zext i32 %ix_ to i64, !dbg !4460
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4460
  call void @llvm.dbg.value(metadata %struct.edge_def** %arrayidx, metadata !4457, metadata !DIExpression()), !dbg !4459
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4460
  call void @llvm.dbg.value(metadata %struct.edge_def* %0, metadata !4458, metadata !DIExpression()), !dbg !4459
  %num2 = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4460
  %1 = load i32, i32* %num2, align 8, !dbg !4460
  %dec = add i32 %1, -1, !dbg !4460
  store i32 %dec, i32* %num2, align 8, !dbg !4460
  %idxprom3 = zext i32 %dec to i64, !dbg !4460
  %arrayidx4 = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom3, !dbg !4460
  %2 = bitcast %struct.edge_def** %arrayidx4 to i64*, !dbg !4460
  %3 = load i64, i64* %2, align 8, !dbg !4460
  %4 = bitcast %struct.edge_def** %arrayidx to i64*, !dbg !4460
  store i64 %3, i64* %4, align 8, !dbg !4460
  ret %struct.edge_def* %0, !dbg !4460
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

declare dso_local i8* @pool_alloc(%struct.alloc_pool_def*) local_unnamed_addr #1

declare dso_local void @htab_clear_slot(%struct.htab*, i8**) local_unnamed_addr #1

declare dso_local void @pool_free(%struct.alloc_pool_def*, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4461 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !4467, metadata !DIExpression()), !dbg !4469
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4468, metadata !DIExpression()), !dbg !4469
  br label %land.end, !dbg !4470

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4470
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4470
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !4470
  ret %struct.loop* %0, !dbg !4470
}

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

!llvm.dbg.cu = !{!1939}
!llvm.module.flags = !{!2088, !2089, !2090}
!llvm.ident = !{!2091}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bitnames", scope: !2, file: !3, line: 700, type: !2083, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "dump_edge_info", scope: !3, file: !3, line: 678, type: !4, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2073)
!3 = !DIFile(filename: "cfg.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !69, !13}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 7, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !10, line: 49, size: 1728, elements: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!11 = !{!12, !14, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !30, !32, !33, !34, !38, !40, !42, !46, !49, !51, !54, !57, !58, !60, !64, !65}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !9, file: !10, line: 51, baseType: !13, size: 32)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !9, file: !10, line: 54, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !9, file: !10, line: 55, baseType: !15, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !9, file: !10, line: 56, baseType: !15, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !9, file: !10, line: 57, baseType: !15, size: 64, offset: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !9, file: !10, line: 58, baseType: !15, size: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !9, file: !10, line: 59, baseType: !15, size: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !9, file: !10, line: 60, baseType: !15, size: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !9, file: !10, line: 61, baseType: !15, size: 64, offset: 512)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !9, file: !10, line: 64, baseType: !15, size: 64, offset: 576)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !9, file: !10, line: 65, baseType: !15, size: 64, offset: 640)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !9, file: !10, line: 66, baseType: !15, size: 64, offset: 704)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !9, file: !10, line: 68, baseType: !28, size: 64, offset: 768)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !10, line: 36, flags: DIFlagFwdDecl)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !9, file: !10, line: 70, baseType: !31, size: 64, offset: 832)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !9, file: !10, line: 72, baseType: !13, size: 32, offset: 896)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !9, file: !10, line: 73, baseType: !13, size: 32, offset: 928)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !9, file: !10, line: 74, baseType: !35, size: 64, offset: 960)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !36, line: 152, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!37 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !9, file: !10, line: 77, baseType: !39, size: 16, offset: 1024)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !9, file: !10, line: 78, baseType: !41, size: 8, offset: 1040)
!41 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !9, file: !10, line: 79, baseType: !43, size: 8, offset: 1048)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 1)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !9, file: !10, line: 81, baseType: !47, size: 64, offset: 1088)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !10, line: 43, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !9, file: !10, line: 89, baseType: !50, size: 64, offset: 1152)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !36, line: 153, baseType: !37)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !9, file: !10, line: 91, baseType: !52, size: 64, offset: 1216)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !10, line: 37, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !9, file: !10, line: 92, baseType: !55, size: 64, offset: 1280)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !10, line: 38, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !9, file: !10, line: 93, baseType: !31, size: 64, offset: 1344)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !9, file: !10, line: 94, baseType: !59, size: 64, offset: 1408)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !9, file: !10, line: 95, baseType: !61, size: 64, offset: 1472)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 46, baseType: !63)
!62 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!63 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !9, file: !10, line: 96, baseType: !13, size: 32, offset: 1536)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !9, file: !10, line: 98, baseType: !66, size: 160, offset: 1568)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 160, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 20)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !70, line: 108, baseType: !71)
!70 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !73, line: 122, size: 512, elements: !74)
!73 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!74 = !{!75, !1926, !1927, !1932, !1933, !1934, !1935, !1936, !1937, !1938}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !72, file: !73, line: 124, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !73, line: 217, size: 832, elements: !78)
!78 = !{!79, !93, !94, !95, !1895, !1899, !1900, !1901, !1919, !1921, !1922, !1923, !1924, !1925}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !77, file: !73, line: 219, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !73, line: 151, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !73, line: 151, size: 128, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !82, file: !73, line: 151, baseType: !85, size: 128)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !73, line: 150, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !73, line: 150, size: 128, elements: !87)
!87 = !{!88, !90, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !86, file: !73, line: 150, baseType: !89, size: 32)
!89 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !86, file: !73, line: 150, baseType: !89, size: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !86, file: !73, line: 150, baseType: !92, size: 64, offset: 64)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !44)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !77, file: !73, line: 220, baseType: !80, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !77, file: !73, line: 223, baseType: !59, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !77, file: !73, line: 226, baseType: !96, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !98, line: 100, size: 1216, elements: !99)
!98 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!99 = !{!100, !101, !102, !103, !104, !117, !118, !119, !133, !134, !135, !136, !1868, !1869, !1870, !1871, !1872, !1877, !1885, !1893, !1894}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !97, file: !98, line: 102, baseType: !13, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !97, file: !98, line: 105, baseType: !89, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !97, file: !98, line: 108, baseType: !76, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !97, file: !98, line: 111, baseType: !76, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !97, file: !98, line: 114, baseType: !105, size: 64, offset: 192)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !98, line: 41, size: 64, elements: !106)
!106 = !{!107, !116}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !105, file: !98, line: 42, baseType: !108, size: 32)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !98, line: 31, baseType: !89, size: 32, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!115 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !105, file: !98, line: 43, baseType: !89, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !97, file: !98, line: 117, baseType: !89, size: 32, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !97, file: !98, line: 120, baseType: !89, size: 32, offset: 288)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !97, file: !98, line: 123, baseType: !120, size: 64, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !98, line: 87, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !98, line: 87, size: 128, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !122, file: !98, line: 87, baseType: !125, size: 128)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !98, line: 85, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !98, line: 85, size: 128, elements: !127)
!127 = !{!128, !129, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !126, file: !98, line: 85, baseType: !89, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !126, file: !98, line: 85, baseType: !89, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !126, file: !98, line: 85, baseType: !131, size: 64, offset: 64)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 64, elements: !44)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !98, line: 84, baseType: !96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !97, file: !98, line: 126, baseType: !96, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !98, line: 129, baseType: !96, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !97, file: !98, line: 132, baseType: !59, size: 64, offset: 512)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !97, file: !98, line: 139, baseType: !137, size: 64, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !70, line: 56, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !140, line: 3371, size: 1792, elements: !141)
!140 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!141 = !{!142, !175, !181, !192, !211, !350, !355, !361, !367, !381, !393, !431, !641, !669, !686, !687, !692, !701, !707, !712, !716, !720, !1488, !1535, !1541, !1547, !1554, !1567, !1581, !1598, !1610, !1632, !1679, !1850}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !139, file: !140, line: 3372, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !140, line: 360, size: 64, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !143, file: !140, line: 361, baseType: !89, size: 16, flags: DIFlagBitField, extraData: i64 0)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !143, file: !140, line: 363, baseType: !89, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !143, file: !140, line: 364, baseType: !89, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !143, file: !140, line: 365, baseType: !89, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !143, file: !140, line: 366, baseType: !89, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !143, file: !140, line: 367, baseType: !89, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !143, file: !140, line: 368, baseType: !89, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !143, file: !140, line: 369, baseType: !89, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !143, file: !140, line: 370, baseType: !89, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !143, file: !140, line: 372, baseType: !89, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !143, file: !140, line: 373, baseType: !89, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !143, file: !140, line: 374, baseType: !89, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !143, file: !140, line: 375, baseType: !89, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !143, file: !140, line: 376, baseType: !89, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !143, file: !140, line: 377, baseType: !89, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !143, file: !140, line: 378, baseType: !89, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !143, file: !140, line: 379, baseType: !89, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !143, file: !140, line: 381, baseType: !89, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !143, file: !140, line: 382, baseType: !89, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !143, file: !140, line: 383, baseType: !89, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !143, file: !140, line: 384, baseType: !89, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !143, file: !140, line: 385, baseType: !89, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !143, file: !140, line: 386, baseType: !89, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !143, file: !140, line: 387, baseType: !89, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !143, file: !140, line: 388, baseType: !89, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !143, file: !140, line: 390, baseType: !89, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !143, file: !140, line: 391, baseType: !89, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !143, file: !140, line: 392, baseType: !89, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !143, file: !140, line: 394, baseType: !89, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !143, file: !140, line: 399, baseType: !89, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !139, file: !140, line: 3373, baseType: !176, size: 192)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !140, line: 402, size: 192, elements: !177)
!177 = !{!178, !179, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !176, file: !140, line: 403, baseType: !143, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !176, file: !140, line: 404, baseType: !137, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !140, line: 405, baseType: !137, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !139, file: !140, line: 3374, baseType: !182, size: 320)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !140, line: 1384, size: 320, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !182, file: !140, line: 1385, baseType: !176, size: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !182, file: !140, line: 1386, baseType: !186, size: 128, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !187, line: 58, baseType: !188)
!187 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !187, line: 54, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !188, file: !187, line: 56, baseType: !63, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !188, file: !187, line: 57, baseType: !37, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !139, file: !140, line: 3375, baseType: !193, size: 256)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !140, line: 1397, size: 256, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !193, file: !140, line: 1398, baseType: !176, size: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !193, file: !140, line: 1399, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !199, line: 52, size: 256, elements: !200)
!199 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!200 = !{!201, !202, !203, !204, !205, !206, !207}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !198, file: !199, line: 56, baseType: !89, size: 2, flags: DIFlagBitField, extraData: i64 0)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !198, file: !199, line: 57, baseType: !89, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !198, file: !199, line: 58, baseType: !89, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !198, file: !199, line: 59, baseType: !89, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !198, file: !199, line: 60, baseType: !89, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !198, file: !199, line: 61, baseType: !89, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !198, file: !199, line: 62, baseType: !208, size: 192, offset: 64)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 192, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 3)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !139, file: !140, line: 3376, baseType: !212, size: 256)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !140, line: 1408, size: 256, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !212, file: !140, line: 1409, baseType: !176, size: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !212, file: !140, line: 1410, baseType: !216, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !218, line: 27, size: 192, elements: !219)
!218 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !217, file: !218, line: 29, baseType: !186, size: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !217, file: !218, line: 30, baseType: !222, size: 32, offset: 128)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !223, line: 7, baseType: !89, size: 32, elements: !224)
!223 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!225 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!226 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!227 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!228 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!229 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!230 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!231 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!232 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!233 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!234 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!235 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!236 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!237 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!238 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!239 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!240 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!241 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!242 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!243 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!244 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!245 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!246 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!247 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!248 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!249 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!250 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!251 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!252 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!253 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!254 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!255 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!256 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!257 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!258 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!259 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!260 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!261 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!262 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!263 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!264 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!265 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!266 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!267 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!268 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!269 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!270 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!271 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!272 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!273 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!274 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!275 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!276 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!277 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!278 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!279 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!280 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!281 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!282 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!283 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!284 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!285 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!286 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!287 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!288 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!289 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!290 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!291 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!292 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!293 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!294 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!295 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!296 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!297 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!298 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!299 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!300 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!301 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!302 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!303 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!304 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!305 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!306 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!307 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!308 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!309 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!310 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!311 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!312 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!313 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!314 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!315 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!316 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!317 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!318 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!319 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!320 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!322 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!323 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!324 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!325 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!326 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!327 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!328 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!329 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!330 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!331 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!332 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!333 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!334 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!335 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!336 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!337 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!338 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!339 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!340 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!341 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!342 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!343 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!345 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!346 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!347 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!348 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!349 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !139, file: !140, line: 3377, baseType: !351, size: 256)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !140, line: 1437, size: 256, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !351, file: !140, line: 1438, baseType: !176, size: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !351, file: !140, line: 1439, baseType: !137, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !139, file: !140, line: 3378, baseType: !356, size: 256)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !140, line: 1418, size: 256, elements: !357)
!357 = !{!358, !359, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !356, file: !140, line: 1419, baseType: !176, size: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !356, file: !140, line: 1420, baseType: !13, size: 32, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !356, file: !140, line: 1421, baseType: !43, size: 8, offset: 224)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !139, file: !140, line: 3379, baseType: !362, size: 320)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !140, line: 1428, size: 320, elements: !363)
!363 = !{!364, !365, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !362, file: !140, line: 1429, baseType: !176, size: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !362, file: !140, line: 1430, baseType: !137, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !362, file: !140, line: 1431, baseType: !137, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !139, file: !140, line: 3380, baseType: !368, size: 320)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !140, line: 1460, size: 320, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !368, file: !140, line: 1461, baseType: !176, size: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !368, file: !140, line: 1462, baseType: !372, size: 128, offset: 192)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !373, line: 31, size: 128, elements: !374)
!373 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!374 = !{!375, !379, !380}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !372, file: !373, line: 32, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !372, file: !373, line: 33, baseType: !89, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !372, file: !373, line: 34, baseType: !89, size: 32, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !139, file: !140, line: 3381, baseType: !382, size: 384)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !140, line: 2507, size: 384, elements: !383)
!383 = !{!384, !385, !390, !391, !392}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !382, file: !140, line: 2508, baseType: !176, size: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !382, file: !140, line: 2509, baseType: !386, size: 32, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !387, line: 58, baseType: !388)
!387 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !389, line: 44, baseType: !89)
!389 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!390 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !382, file: !140, line: 2510, baseType: !89, size: 32, offset: 224)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !140, line: 2511, baseType: !137, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !382, file: !140, line: 2512, baseType: !137, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !139, file: !140, line: 3382, baseType: !394, size: 896)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !140, line: 2652, size: 896, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !394, file: !140, line: 2653, baseType: !382, size: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !394, file: !140, line: 2654, baseType: !137, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !394, file: !140, line: 2656, baseType: !89, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !394, file: !140, line: 2658, baseType: !89, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !394, file: !140, line: 2659, baseType: !89, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !394, file: !140, line: 2660, baseType: !89, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !394, file: !140, line: 2661, baseType: !89, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !394, file: !140, line: 2662, baseType: !89, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !394, file: !140, line: 2663, baseType: !89, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !394, file: !140, line: 2664, baseType: !89, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !394, file: !140, line: 2666, baseType: !89, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !394, file: !140, line: 2667, baseType: !89, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !394, file: !140, line: 2668, baseType: !89, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !394, file: !140, line: 2669, baseType: !89, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !394, file: !140, line: 2670, baseType: !89, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !394, file: !140, line: 2671, baseType: !89, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !394, file: !140, line: 2672, baseType: !89, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !394, file: !140, line: 2673, baseType: !89, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !394, file: !140, line: 2674, baseType: !89, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !394, file: !140, line: 2678, baseType: !89, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !394, file: !140, line: 2682, baseType: !89, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !394, file: !140, line: 2685, baseType: !89, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !394, file: !140, line: 2688, baseType: !89, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !394, file: !140, line: 2690, baseType: !89, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !394, file: !140, line: 2692, baseType: !89, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !394, file: !140, line: 2695, baseType: !89, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !394, file: !140, line: 2698, baseType: !89, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !394, file: !140, line: 2703, baseType: !89, size: 32, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !394, file: !140, line: 2705, baseType: !137, size: 64, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !394, file: !140, line: 2706, baseType: !137, size: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !394, file: !140, line: 2707, baseType: !137, size: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !394, file: !140, line: 2708, baseType: !137, size: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !394, file: !140, line: 2711, baseType: !429, size: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !140, line: 2711, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !139, file: !140, line: 3383, baseType: !432, size: 960)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !140, line: 2756, size: 960, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !432, file: !140, line: 2757, baseType: !394, size: 896)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !432, file: !140, line: 2758, baseType: !436, size: 64, offset: 896)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !70, line: 50, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !439, line: 240, size: 384, elements: !440)
!439 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !438, file: !439, line: 242, baseType: !89, size: 16, flags: DIFlagBitField, extraData: i64 0)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !438, file: !439, line: 245, baseType: !89, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !438, file: !439, line: 252, baseType: !89, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !438, file: !439, line: 257, baseType: !89, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !438, file: !439, line: 265, baseType: !89, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !438, file: !439, line: 277, baseType: !89, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !438, file: !439, line: 291, baseType: !89, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !438, file: !439, line: 298, baseType: !89, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !438, file: !439, line: 305, baseType: !89, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !438, file: !439, line: 310, baseType: !89, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !438, file: !439, line: 321, baseType: !452, size: 320, offset: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !439, line: 315, size: 320, elements: !453)
!453 = !{!454, !574, !576, !639, !640}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !452, file: !439, line: 316, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 64, elements: !44)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !439, line: 183, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !439, line: 166, size: 64, elements: !458)
!458 = !{!459, !460, !461, !464, !465, !473, !474, !486, !489, !549, !550, !551, !564, !571}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !457, file: !439, line: 168, baseType: !13, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !457, file: !439, line: 169, baseType: !89, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !457, file: !439, line: 170, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !457, file: !439, line: 171, baseType: !436, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !457, file: !439, line: 172, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !70, line: 53, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !439, line: 359, size: 128, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !468, file: !439, line: 360, baseType: !13, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !468, file: !439, line: 361, baseType: !472, size: 64, offset: 64)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 64, elements: !44)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !457, file: !439, line: 173, baseType: !222, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !457, file: !439, line: 174, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !439, line: 133, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 115, size: 32, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !476, file: !439, line: 118, baseType: !89, size: 8, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !476, file: !439, line: 120, baseType: !89, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !476, file: !439, line: 121, baseType: !89, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !476, file: !439, line: 123, baseType: !89, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !476, file: !439, line: 125, baseType: !89, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !476, file: !439, line: 127, baseType: !89, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !476, file: !439, line: 130, baseType: !89, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !476, file: !439, line: 132, baseType: !89, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !457, file: !439, line: 175, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !439, line: 175, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !457, file: !439, line: 176, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !492, line: 75, size: 256, elements: !493)
!492 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!493 = !{!494, !508, !509, !510}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !491, file: !492, line: 76, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !492, line: 68, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !492, line: 63, size: 320, elements: !498)
!498 = !{!499, !501, !502, !503}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !492, line: 64, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !497, file: !492, line: 65, baseType: !500, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !497, file: !492, line: 66, baseType: !89, size: 32, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !497, file: !492, line: 67, baseType: !504, size: 128, offset: 192)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 128, elements: !506)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !492, line: 29, baseType: !63)
!506 = !{!507}
!507 = !DISubrange(count: 2)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !491, file: !492, line: 77, baseType: !495, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !491, file: !492, line: 78, baseType: !89, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !491, file: !492, line: 79, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !492, line: 49, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !492, line: 45, size: 832, elements: !514)
!514 = !{!515, !516, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !513, file: !492, line: 46, baseType: !500, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !513, file: !492, line: 47, baseType: !490, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !513, file: !492, line: 48, baseType: !518, size: 704, offset: 128)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !519, line: 164, size: 704, elements: !520)
!519 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!520 = !{!521, !522, !532, !533, !534, !535, !536, !537, !541, !545, !546, !547, !548}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !518, file: !519, line: 166, baseType: !37, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !518, file: !519, line: 167, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !519, line: 157, size: 192, elements: !525)
!525 = !{!526, !527, !528}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !524, file: !519, line: 159, baseType: !15, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !524, file: !519, line: 160, baseType: !523, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !524, file: !519, line: 161, baseType: !529, size: 32, offset: 128)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 32, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 4)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !518, file: !519, line: 168, baseType: !15, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !518, file: !519, line: 169, baseType: !15, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !518, file: !519, line: 170, baseType: !15, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !518, file: !519, line: 171, baseType: !37, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !518, file: !519, line: 172, baseType: !13, size: 32, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !518, file: !519, line: 176, baseType: !538, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!523, !59, !37}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !518, file: !519, line: 177, baseType: !542, size: 64, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !59, !523}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !518, file: !519, line: 178, baseType: !59, size: 64, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !518, file: !519, line: 179, baseType: !89, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !518, file: !519, line: 180, baseType: !89, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !518, file: !519, line: 184, baseType: !89, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !457, file: !439, line: 177, baseType: !137, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !457, file: !439, line: 178, baseType: !76, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !457, file: !439, line: 179, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !439, line: 150, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !439, line: 142, size: 320, elements: !555)
!555 = !{!556, !557, !558, !559, !562, !563}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !554, file: !439, line: 144, baseType: !137, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !554, file: !439, line: 145, baseType: !436, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !554, file: !439, line: 146, baseType: !436, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !554, file: !439, line: 147, baseType: !560, size: 32, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !561, line: 31, baseType: !13)
!561 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !554, file: !439, line: 148, baseType: !89, size: 32, offset: 224)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !554, file: !439, line: 149, baseType: !378, size: 8, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !457, file: !439, line: 180, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !439, line: 162, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !439, line: 159, size: 128, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !567, file: !439, line: 160, baseType: !137, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !567, file: !439, line: 161, baseType: !37, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !457, file: !439, line: 181, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !439, line: 181, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !452, file: !439, line: 317, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !44)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !452, file: !439, line: 318, baseType: !577, size: 320)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !439, line: 188, size: 320, elements: !578)
!578 = !{!579, !581, !638}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !577, file: !439, line: 190, baseType: !580, size: 192)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 192, elements: !209)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !577, file: !439, line: 193, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !439, line: 206, size: 320, elements: !584)
!584 = !{!585, !623, !624, !625, !637}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !583, file: !439, line: 208, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !70, line: 62, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !589, line: 538, size: 256, elements: !590)
!589 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!590 = !{!591, !595, !601, !614}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !588, file: !589, line: 539, baseType: !592, size: 32)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !589, line: 482, size: 32, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !589, line: 484, baseType: !89, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !588, file: !589, line: 540, baseType: !596, size: 192)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !589, line: 488, size: 192, elements: !597)
!597 = !{!598, !599, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !596, file: !589, line: 489, baseType: !592, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !596, file: !589, line: 492, baseType: !462, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !596, file: !589, line: 496, baseType: !137, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !588, file: !589, line: 541, baseType: !602, size: 256)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !589, line: 504, size: 256, elements: !603)
!603 = !{!604, !605, !612, !613}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !602, file: !589, line: 505, baseType: !592, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !602, file: !589, line: 509, baseType: !606, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !589, line: 501, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !602, file: !589, line: 510, baseType: !610, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !602, file: !589, line: 513, baseType: !586, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !588, file: !589, line: 542, baseType: !615, size: 128)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !589, line: 530, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !615, file: !589, line: 531, baseType: !592, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !615, file: !589, line: 534, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !589, line: 525, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!378, !137, !462, !63, !63}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !583, file: !439, line: 211, baseType: !89, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !583, file: !439, line: 214, baseType: !37, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !583, file: !439, line: 224, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !439, line: 202, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !439, line: 202, size: 128, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !628, file: !439, line: 202, baseType: !631, size: 128)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !439, line: 200, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !439, line: 200, size: 128, elements: !633)
!633 = !{!634, !635, !636}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !632, file: !439, line: 200, baseType: !89, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !632, file: !439, line: 200, baseType: !89, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !632, file: !439, line: 200, baseType: !472, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !583, file: !439, line: 234, baseType: !626, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !577, file: !439, line: 197, baseType: !37, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !452, file: !439, line: 319, baseType: !198, size: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !452, file: !439, line: 320, baseType: !217, size: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !139, file: !140, line: 3384, baseType: !642, size: 1472)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !140, line: 3114, size: 1472, elements: !643)
!643 = !{!644, !665, !666, !667, !668}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !642, file: !140, line: 3115, baseType: !645, size: 1216)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !140, line: 2984, size: 1216, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !645, file: !140, line: 2985, baseType: !432, size: 960)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !645, file: !140, line: 2986, baseType: !137, size: 64, offset: 960)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !645, file: !140, line: 2987, baseType: !137, size: 64, offset: 1024)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !645, file: !140, line: 2988, baseType: !137, size: 64, offset: 1088)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !645, file: !140, line: 2991, baseType: !89, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !645, file: !140, line: 2992, baseType: !89, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !645, file: !140, line: 2993, baseType: !89, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !645, file: !140, line: 2994, baseType: !89, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !645, file: !140, line: 2995, baseType: !89, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !645, file: !140, line: 2996, baseType: !89, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !645, file: !140, line: 2998, baseType: !89, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !645, file: !140, line: 3000, baseType: !89, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !645, file: !140, line: 3002, baseType: !89, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !645, file: !140, line: 3003, baseType: !89, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !645, file: !140, line: 3004, baseType: !89, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !645, file: !140, line: 3005, baseType: !89, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !645, file: !140, line: 3007, baseType: !89, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !645, file: !140, line: 3010, baseType: !89, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !642, file: !140, line: 3117, baseType: !137, size: 64, offset: 1216)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !642, file: !140, line: 3119, baseType: !137, size: 64, offset: 1280)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !642, file: !140, line: 3121, baseType: !137, size: 64, offset: 1344)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !642, file: !140, line: 3123, baseType: !137, size: 64, offset: 1408)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !139, file: !140, line: 3385, baseType: !670, size: 1088)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !140, line: 2874, size: 1088, elements: !671)
!671 = !{!672, !673, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !670, file: !140, line: 2875, baseType: !432, size: 960)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !670, file: !140, line: 2876, baseType: !436, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !670, file: !140, line: 2877, baseType: !675, size: 64, offset: 1024)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !677, line: 172, size: 128, elements: !678)
!677 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!678 = !{!679, !680, !681, !682, !683, !684, !685}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !676, file: !677, line: 174, baseType: !89, size: 1, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !676, file: !677, line: 178, baseType: !89, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !676, file: !677, line: 183, baseType: !89, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !676, file: !677, line: 187, baseType: !89, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !676, file: !677, line: 192, baseType: !89, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !676, file: !677, line: 195, baseType: !89, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !676, file: !677, line: 199, baseType: !137, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !139, file: !140, line: 3386, baseType: !645, size: 1216)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !139, file: !140, line: 3387, baseType: !688, size: 1280)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !140, line: 3093, size: 1280, elements: !689)
!689 = !{!690, !691}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !688, file: !140, line: 3094, baseType: !645, size: 1216)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !688, file: !140, line: 3095, baseType: !675, size: 64, offset: 1216)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !139, file: !140, line: 3388, baseType: !693, size: 1216)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !140, line: 2824, size: 1216, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !693, file: !140, line: 2825, baseType: !394, size: 896)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !693, file: !140, line: 2827, baseType: !137, size: 64, offset: 896)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !693, file: !140, line: 2828, baseType: !137, size: 64, offset: 960)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !693, file: !140, line: 2829, baseType: !137, size: 64, offset: 1024)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !693, file: !140, line: 2830, baseType: !137, size: 64, offset: 1088)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !693, file: !140, line: 2831, baseType: !137, size: 64, offset: 1152)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !139, file: !140, line: 3389, baseType: !702, size: 1024)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !140, line: 2850, size: 1024, elements: !703)
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !702, file: !140, line: 2851, baseType: !432, size: 960)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !702, file: !140, line: 2852, baseType: !13, size: 32, offset: 960)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !702, file: !140, line: 2853, baseType: !13, size: 32, offset: 992)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !139, file: !140, line: 3390, baseType: !708, size: 1024)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !140, line: 2857, size: 1024, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !708, file: !140, line: 2858, baseType: !432, size: 960)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !708, file: !140, line: 2859, baseType: !675, size: 64, offset: 960)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !139, file: !140, line: 3391, baseType: !713, size: 960)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !140, line: 2862, size: 960, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !713, file: !140, line: 2863, baseType: !432, size: 960)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !139, file: !140, line: 3392, baseType: !717, size: 1472)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !140, line: 3304, size: 1472, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !717, file: !140, line: 3305, baseType: !642, size: 1472)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !139, file: !140, line: 3393, baseType: !721, size: 1792)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !140, line: 3248, size: 1792, elements: !722)
!722 = !{!723, !724, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !721, file: !140, line: 3249, baseType: !642, size: 1472)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !721, file: !140, line: 3251, baseType: !725, size: 64, offset: 1472)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !727, line: 463, size: 1152, elements: !728)
!727 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!728 = !{!729, !896, !937, !1344, !1398, !1406, !1407, !1408, !1409, !1410, !1411, !1440, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !726, file: !727, line: 464, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !732, line: 194, size: 384, elements: !733)
!732 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!733 = !{!734, !789, !802, !816, !864, !877}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !731, file: !732, line: 197, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !732, line: 182, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !732, line: 116, size: 704, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !750, !777, !786, !787, !788}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !737, file: !732, line: 119, baseType: !736, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !737, file: !732, line: 122, baseType: !736, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !737, file: !732, line: 123, baseType: !736, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !737, file: !732, line: 126, baseType: !13, size: 32, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !732, line: 129, baseType: !744, size: 32, offset: 224)
!744 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !732, line: 30, baseType: !89, size: 32, elements: !745)
!745 = !{!746, !747, !748, !749}
!746 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!747 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!748 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!749 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !737, file: !732, line: 165, baseType: !751, size: 192, offset: 256)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !732, line: 132, size: 192, elements: !752)
!752 = !{!753, !766, !772}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !751, file: !732, line: 137, baseType: !754, size: 128)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !732, line: 133, size: 128, elements: !755)
!755 = !{!756, !765}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !754, file: !732, line: 135, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !732, line: 93, size: 320, elements: !759)
!759 = !{!760, !761, !762, !763, !764}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !758, file: !732, line: 96, baseType: !757, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !758, file: !732, line: 97, baseType: !757, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !758, file: !732, line: 101, baseType: !137, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !758, file: !732, line: 106, baseType: !137, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !758, file: !732, line: 111, baseType: !137, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !754, file: !732, line: 136, baseType: !757, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !751, file: !732, line: 151, baseType: !767, size: 192)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !732, line: 139, size: 192, elements: !768)
!768 = !{!769, !770, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !767, file: !732, line: 141, baseType: !137, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !767, file: !732, line: 145, baseType: !137, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !767, file: !732, line: 150, baseType: !13, size: 32, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !751, file: !732, line: 164, baseType: !773, size: 128)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !732, line: 153, size: 128, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !773, file: !732, line: 161, baseType: !137, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !773, file: !732, line: 163, baseType: !386, size: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !737, file: !732, line: 168, baseType: !778, size: 64, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !732, line: 67, size: 320, elements: !780)
!780 = !{!781, !782, !783, !784, !785}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !779, file: !732, line: 70, baseType: !778, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !779, file: !732, line: 73, baseType: !736, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !779, file: !732, line: 78, baseType: !137, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !779, file: !732, line: 85, baseType: !436, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !779, file: !732, line: 88, baseType: !13, size: 32, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !737, file: !732, line: 173, baseType: !436, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !737, file: !732, line: 173, baseType: !436, size: 64, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !737, file: !732, line: 177, baseType: !378, size: 8, offset: 640)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !731, file: !732, line: 200, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !732, line: 185, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !732, line: 185, size: 128, elements: !793)
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !792, file: !732, line: 185, baseType: !795, size: 128)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !732, line: 184, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !732, line: 184, size: 128, elements: !797)
!797 = !{!798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !796, file: !732, line: 184, baseType: !89, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !796, file: !732, line: 184, baseType: !89, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !796, file: !732, line: 184, baseType: !801, size: 64, offset: 64)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 64, elements: !44)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !731, file: !732, line: 203, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !732, line: 189, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !732, line: 189, size: 128, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !805, file: !732, line: 189, baseType: !808, size: 128)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !732, line: 188, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !732, line: 188, size: 128, elements: !810)
!810 = !{!811, !812, !813}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !809, file: !732, line: 188, baseType: !89, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !809, file: !732, line: 188, baseType: !89, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !809, file: !732, line: 188, baseType: !814, size: 64, offset: 64)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 64, elements: !44)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !732, line: 180, baseType: !778)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !731, file: !732, line: 207, baseType: !817, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !818, line: 144, baseType: !819)
!818 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !818, line: 100, size: 896, elements: !821)
!821 = !{!822, !828, !833, !838, !840, !841, !842, !843, !844, !845, !850, !852, !853, !858, !863}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !820, file: !818, line: 102, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !818, line: 52, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!827, !610}
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !818, line: 47, baseType: !89)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !820, file: !818, line: 105, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !818, line: 59, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!13, !610, !610}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !820, file: !818, line: 108, baseType: !834, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !818, line: 63, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !59}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !820, file: !818, line: 111, baseType: !839, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !820, file: !818, line: 114, baseType: !61, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !820, file: !818, line: 117, baseType: !61, size: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !820, file: !818, line: 120, baseType: !61, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !820, file: !818, line: 124, baseType: !89, size: 32, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !820, file: !818, line: 128, baseType: !89, size: 32, offset: 480)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !820, file: !818, line: 131, baseType: !846, size: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !818, line: 75, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!59, !61, !61}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !820, file: !818, line: 132, baseType: !851, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !818, line: 78, baseType: !835)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !820, file: !818, line: 135, baseType: !59, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !820, file: !818, line: 136, baseType: !854, size: 64, offset: 704)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !818, line: 82, baseType: !855)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!59, !59, !61, !61}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !820, file: !818, line: 137, baseType: !859, size: 64, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !818, line: 83, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !59, !59}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !820, file: !818, line: 141, baseType: !89, size: 32, offset: 832)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !731, file: !732, line: 211, baseType: !865, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !140, line: 183, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !140, line: 183, size: 128, elements: !868)
!868 = !{!869}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !867, file: !140, line: 183, baseType: !870, size: 128)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !140, line: 182, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !140, line: 182, size: 128, elements: !872)
!872 = !{!873, !874, !875}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !871, file: !140, line: 182, baseType: !89, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !871, file: !140, line: 182, baseType: !89, size: 32, offset: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !871, file: !140, line: 182, baseType: !876, size: 64, offset: 64)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !44)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !731, file: !732, line: 220, baseType: !878, size: 64, offset: 320)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !732, line: 217, size: 64, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !878, file: !732, line: 218, baseType: !865, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !878, file: !732, line: 219, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !884, line: 29, baseType: !885)
!884 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !884, line: 29, size: 96, elements: !886)
!886 = !{!887}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !885, file: !884, line: 29, baseType: !888, size: 96)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !884, line: 27, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !884, line: 27, size: 96, elements: !890)
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !889, file: !884, line: 27, baseType: !89, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !889, file: !884, line: 27, baseType: !89, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !889, file: !884, line: 27, baseType: !894, size: 8, offset: 64)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 8, elements: !44)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !884, line: 26, baseType: !378)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !726, file: !727, line: 467, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !73, line: 374, size: 640, elements: !899)
!899 = !{!900, !902, !903, !916, !917, !918, !919, !920, !926, !933, !935, !936}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !898, file: !73, line: 377, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !70, line: 111, baseType: !76)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !898, file: !73, line: 378, baseType: !901, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !898, file: !73, line: 381, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !73, line: 282, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !73, line: 282, size: 128, elements: !907)
!907 = !{!908}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !906, file: !73, line: 282, baseType: !909, size: 128)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !73, line: 281, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !73, line: 281, size: 128, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !910, file: !73, line: 281, baseType: !89, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !910, file: !73, line: 281, baseType: !89, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !910, file: !73, line: 281, baseType: !915, size: 64, offset: 64)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 64, elements: !44)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !898, file: !73, line: 384, baseType: !13, size: 32, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !898, file: !73, line: 387, baseType: !13, size: 32, offset: 224)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !898, file: !73, line: 390, baseType: !13, size: 32, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !898, file: !73, line: 394, baseType: !904, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !898, file: !73, line: 396, baseType: !921, size: 32, offset: 384)
!921 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !73, line: 363, baseType: !89, size: 32, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!924 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!925 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !898, file: !73, line: 399, baseType: !927, size: 64, offset: 416)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 64, elements: !506)
!928 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !73, line: 355, baseType: !89, size: 32, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!931 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!932 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !898, file: !73, line: 402, baseType: !934, size: 64, offset: 480)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !506)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !898, file: !73, line: 406, baseType: !13, size: 32, offset: 544)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !898, file: !73, line: 409, baseType: !13, size: 32, offset: 576)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !726, file: !727, line: 470, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !940, line: 143, size: 192, elements: !941)
!940 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!941 = !{!942, !1342, !1343}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !939, file: !940, line: 145, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !70, line: 69, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !940, line: 136, size: 192, elements: !946)
!946 = !{!947, !1340, !1341}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !945, file: !940, line: 137, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !70, line: 58, baseType: !949)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !940, line: 737, size: 768, elements: !951)
!951 = !{!952, !969, !1002, !1008, !1013, !1019, !1026, !1032, !1038, !1043, !1057, !1062, !1068, !1073, !1083, !1088, !1298, !1305, !1312, !1318, !1323, !1329, !1335}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !950, file: !940, line: 738, baseType: !953, size: 256)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !940, line: 271, size: 256, elements: !954)
!954 = !{!955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !953, file: !940, line: 274, baseType: !89, size: 8, flags: DIFlagBitField, extraData: i64 0)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !953, file: !940, line: 277, baseType: !89, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !953, file: !940, line: 281, baseType: !89, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !953, file: !940, line: 284, baseType: !89, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !953, file: !940, line: 291, baseType: !89, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !953, file: !940, line: 295, baseType: !89, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !953, file: !940, line: 298, baseType: !89, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !953, file: !940, line: 301, baseType: !89, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !953, file: !940, line: 307, baseType: !89, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !953, file: !940, line: 312, baseType: !89, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !953, file: !940, line: 316, baseType: !386, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !953, file: !940, line: 319, baseType: !89, size: 32, offset: 96)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !953, file: !940, line: 323, baseType: !76, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !953, file: !940, line: 327, baseType: !137, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !950, file: !940, line: 739, baseType: !970, size: 448)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !940, line: 350, size: 448, elements: !971)
!971 = !{!972, !1001}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !970, file: !940, line: 353, baseType: !973, size: 384)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !940, line: 333, size: 384, elements: !974)
!974 = !{!975, !976, !984}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !973, file: !940, line: 336, baseType: !953, size: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !973, file: !940, line: 343, baseType: !977, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !979, line: 37, size: 128, elements: !980)
!979 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !978, file: !979, line: 39, baseType: !977, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !978, file: !979, line: 40, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !973, file: !940, line: 344, baseType: !985, size: 64, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !979, line: 45, size: 320, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !986, file: !979, line: 47, baseType: !985, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !986, file: !979, line: 48, baseType: !990, size: 256, offset: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !140, line: 1883, size: 256, elements: !991)
!991 = !{!992, !994, !995, !1000}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !990, file: !140, line: 1884, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !990, file: !140, line: 1885, baseType: !993, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !990, file: !140, line: 1891, baseType: !996, size: 64, offset: 128)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !990, file: !140, line: 1891, size: 64, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !996, file: !140, line: 1891, baseType: !948, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !996, file: !140, line: 1891, baseType: !137, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !990, file: !140, line: 1892, baseType: !983, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !970, file: !940, line: 359, baseType: !876, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !950, file: !940, line: 740, baseType: !1003, size: 512)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !940, line: 365, size: 512, elements: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1003, file: !940, line: 368, baseType: !973, size: 384)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1003, file: !940, line: 373, baseType: !137, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1003, file: !940, line: 374, baseType: !137, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !950, file: !940, line: 741, baseType: !1009, size: 576)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !940, line: 380, size: 576, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1009, file: !940, line: 383, baseType: !1003, size: 512)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1009, file: !940, line: 389, baseType: !876, size: 64, offset: 512)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !950, file: !940, line: 742, baseType: !1014, size: 320)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !940, line: 395, size: 320, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1014, file: !940, line: 397, baseType: !953, size: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1014, file: !940, line: 400, baseType: !1018, size: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !70, line: 66, baseType: !938)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !950, file: !940, line: 743, baseType: !1020, size: 448)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !940, line: 406, size: 448, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1020, file: !940, line: 408, baseType: !953, size: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1020, file: !940, line: 412, baseType: !137, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1020, file: !940, line: 420, baseType: !137, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1020, file: !940, line: 423, baseType: !1018, size: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !950, file: !940, line: 744, baseType: !1027, size: 384)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !940, line: 429, size: 384, elements: !1028)
!1028 = !{!1029, !1030, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1027, file: !940, line: 431, baseType: !953, size: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1027, file: !940, line: 434, baseType: !137, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1027, file: !940, line: 437, baseType: !1018, size: 64, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !950, file: !940, line: 745, baseType: !1033, size: 384)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !940, line: 443, size: 384, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1033, file: !940, line: 445, baseType: !953, size: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1033, file: !940, line: 449, baseType: !137, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1033, file: !940, line: 453, baseType: !1018, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !950, file: !940, line: 746, baseType: !1039, size: 320)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !940, line: 459, size: 320, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1039, file: !940, line: 461, baseType: !953, size: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1039, file: !940, line: 464, baseType: !137, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !950, file: !940, line: 747, baseType: !1044, size: 768)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !940, line: 469, size: 768, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1050}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1044, file: !940, line: 471, baseType: !953, size: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1044, file: !940, line: 474, baseType: !89, size: 32, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1044, file: !940, line: 475, baseType: !89, size: 32, offset: 288)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1044, file: !940, line: 478, baseType: !137, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1044, file: !940, line: 481, baseType: !1051, size: 384, offset: 384)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1052, size: 384, elements: !44)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !140, line: 1917, size: 384, elements: !1053)
!1053 = !{!1054, !1055, !1056}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1052, file: !140, line: 1920, baseType: !990, size: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1052, file: !140, line: 1921, baseType: !137, size: 64, offset: 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1052, file: !140, line: 1922, baseType: !386, size: 32, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !950, file: !940, line: 748, baseType: !1058, size: 320)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !940, line: 487, size: 320, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1058, file: !940, line: 490, baseType: !953, size: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1058, file: !940, line: 494, baseType: !13, size: 32, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !950, file: !940, line: 749, baseType: !1063, size: 384)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !940, line: 500, size: 384, elements: !1064)
!1064 = !{!1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1063, file: !940, line: 502, baseType: !953, size: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1063, file: !940, line: 506, baseType: !1018, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1063, file: !940, line: 510, baseType: !1018, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !950, file: !940, line: 750, baseType: !1069, size: 320)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !940, line: 529, size: 320, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1069, file: !940, line: 531, baseType: !953, size: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1069, file: !940, line: 540, baseType: !1018, size: 64, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !950, file: !940, line: 751, baseType: !1074, size: 704)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !940, line: 546, size: 704, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1074, file: !940, line: 549, baseType: !1003, size: 512)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1074, file: !940, line: 553, baseType: !462, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1074, file: !940, line: 557, baseType: !378, size: 8, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1074, file: !940, line: 558, baseType: !378, size: 8, offset: 584)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1074, file: !940, line: 559, baseType: !378, size: 8, offset: 592)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1074, file: !940, line: 560, baseType: !378, size: 8, offset: 600)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1074, file: !940, line: 566, baseType: !876, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !950, file: !940, line: 752, baseType: !1084, size: 384)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !940, line: 571, size: 384, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1084, file: !940, line: 573, baseType: !1014, size: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1084, file: !940, line: 577, baseType: !137, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !950, file: !940, line: 753, baseType: !1089, size: 576)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !940, line: 600, size: 576, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094, !1297}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1089, file: !940, line: 602, baseType: !1014, size: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1089, file: !940, line: 605, baseType: !137, size: 64, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1089, file: !940, line: 609, baseType: !61, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1089, file: !940, line: 612, baseType: !1095, size: 64, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !940, line: 581, size: 320, elements: !1097)
!1097 = !{!1098, !1293, !1294, !1295, !1296}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1096, file: !940, line: 583, baseType: !1099, size: 32)
!1099 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !140, line: 39, baseType: !89, size: 32, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292}
!1101 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!1102 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!1103 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!1104 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!1105 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!1106 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!1107 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!1108 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!1109 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!1110 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!1111 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!1112 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!1113 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!1114 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!1115 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!1116 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!1117 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!1118 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!1119 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!1120 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!1121 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!1122 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!1123 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!1124 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!1125 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!1126 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!1127 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!1128 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!1129 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!1130 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!1131 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!1132 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!1133 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!1134 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!1135 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!1136 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!1137 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!1138 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!1139 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!1140 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!1141 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!1142 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!1143 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!1144 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!1145 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!1146 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!1147 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!1148 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!1149 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!1150 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!1151 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!1152 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!1153 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!1154 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!1155 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!1156 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!1157 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!1158 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!1159 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!1160 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!1161 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!1162 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!1163 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!1164 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!1165 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!1166 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!1167 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!1168 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!1169 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!1170 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!1171 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!1172 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!1173 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!1174 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!1175 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!1176 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!1177 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!1178 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!1179 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!1180 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!1181 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!1182 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!1183 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!1184 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!1185 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!1186 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!1187 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!1188 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!1189 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!1190 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!1191 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!1192 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!1193 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!1194 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!1195 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!1196 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!1197 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!1198 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!1199 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!1200 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!1201 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!1202 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!1203 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!1204 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!1205 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!1206 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!1207 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!1208 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!1209 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!1210 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!1211 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!1212 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!1213 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!1214 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!1215 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!1216 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!1217 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!1218 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!1219 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!1220 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!1221 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!1222 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!1223 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!1224 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!1225 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!1226 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!1227 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!1228 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!1229 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!1230 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!1231 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!1232 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!1233 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!1234 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!1235 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!1236 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!1237 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!1238 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!1239 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!1240 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!1241 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!1242 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!1243 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!1244 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!1245 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!1246 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!1247 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!1248 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!1249 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!1250 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!1251 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!1252 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!1253 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!1254 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!1255 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!1256 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!1257 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!1258 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!1259 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!1260 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!1261 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!1262 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!1263 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!1264 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!1265 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!1266 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!1267 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!1268 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!1269 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!1270 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!1271 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!1272 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!1273 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!1274 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!1275 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!1276 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!1277 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!1278 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!1279 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!1280 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!1281 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!1282 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!1283 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!1284 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!1285 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!1286 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!1287 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!1288 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!1289 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!1290 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!1291 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!1292 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1096, file: !940, line: 586, baseType: !137, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1096, file: !940, line: 589, baseType: !137, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1096, file: !940, line: 592, baseType: !137, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1096, file: !940, line: 595, baseType: !137, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1089, file: !940, line: 616, baseType: !1018, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !950, file: !940, line: 754, baseType: !1299, size: 512)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !940, line: 622, size: 512, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1299, file: !940, line: 624, baseType: !1014, size: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1299, file: !940, line: 628, baseType: !137, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1299, file: !940, line: 632, baseType: !137, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1299, file: !940, line: 636, baseType: !137, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !950, file: !940, line: 755, baseType: !1306, size: 704)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !940, line: 642, size: 704, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1306, file: !940, line: 644, baseType: !1299, size: 512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1306, file: !940, line: 648, baseType: !137, size: 64, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1306, file: !940, line: 652, baseType: !137, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1306, file: !940, line: 653, baseType: !137, size: 64, offset: 640)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !950, file: !940, line: 756, baseType: !1313, size: 448)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !940, line: 663, size: 448, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1313, file: !940, line: 665, baseType: !1014, size: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1313, file: !940, line: 668, baseType: !137, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1313, file: !940, line: 673, baseType: !137, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !950, file: !940, line: 757, baseType: !1319, size: 384)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !940, line: 694, size: 384, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1319, file: !940, line: 696, baseType: !1014, size: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1319, file: !940, line: 699, baseType: !137, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !950, file: !940, line: 758, baseType: !1324, size: 384)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !940, line: 681, size: 384, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1324, file: !940, line: 683, baseType: !953, size: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1324, file: !940, line: 686, baseType: !137, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1324, file: !940, line: 689, baseType: !137, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !950, file: !940, line: 759, baseType: !1330, size: 384)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !940, line: 707, size: 384, elements: !1331)
!1331 = !{!1332, !1333, !1334}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1330, file: !940, line: 709, baseType: !953, size: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1330, file: !940, line: 712, baseType: !137, size: 64, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1330, file: !940, line: 712, baseType: !137, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !950, file: !940, line: 760, baseType: !1336, size: 320)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !940, line: 718, size: 320, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1336, file: !940, line: 720, baseType: !953, size: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1336, file: !940, line: 723, baseType: !137, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !945, file: !940, line: 138, baseType: !944, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !945, file: !940, line: 139, baseType: !944, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !939, file: !940, line: 146, baseType: !943, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !939, file: !940, line: 152, baseType: !1018, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !726, file: !727, line: 473, baseType: !1345, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !677, line: 39, size: 1152, elements: !1347)
!1347 = !{!1348, !1349, !1362, !1363, !1364, !1376, !1377, !1380, !1381, !1382, !1383, !1384}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1346, file: !677, line: 41, baseType: !817, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1346, file: !677, line: 48, baseType: !1350, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !940, line: 35, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !940, line: 35, size: 128, elements: !1353)
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1352, file: !940, line: 35, baseType: !1355, size: 128)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !940, line: 33, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !940, line: 33, size: 128, elements: !1357)
!1357 = !{!1358, !1359, !1360}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1356, file: !940, line: 33, baseType: !89, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1356, file: !940, line: 33, baseType: !89, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1356, file: !940, line: 33, baseType: !1361, size: 64, offset: 64)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 64, elements: !44)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1346, file: !677, line: 51, baseType: !865, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1346, file: !677, line: 54, baseType: !137, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1346, file: !677, line: 57, baseType: !1365, size: 128, offset: 256)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1366, line: 31, size: 128, elements: !1367)
!1366 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1365, file: !1366, line: 35, baseType: !89, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1365, file: !1366, line: 39, baseType: !89, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1365, file: !1366, line: 42, baseType: !89, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1365, file: !1366, line: 46, baseType: !89, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1365, file: !1366, line: 50, baseType: !89, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1365, file: !1366, line: 53, baseType: !89, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1365, file: !1366, line: 56, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !70, line: 47, baseType: !490)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1346, file: !677, line: 60, baseType: !1365, size: 128, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1346, file: !677, line: 64, baseType: !1378, size: 64, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !732, line: 27, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1346, file: !677, line: 67, baseType: !137, size: 64, offset: 576)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1346, file: !677, line: 73, baseType: !817, size: 64, offset: 640)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1346, file: !677, line: 77, baseType: !1375, size: 64, offset: 704)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1346, file: !677, line: 80, baseType: !89, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1346, file: !677, line: 82, baseType: !1385, size: 320, offset: 832)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !979, line: 62, size: 320, elements: !1386)
!1386 = !{!1387, !1393, !1394, !1395, !1396, !1397}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1385, file: !979, line: 63, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !979, line: 56, size: 128, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1389, file: !979, line: 57, baseType: !1388, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1389, file: !979, line: 58, baseType: !43, size: 8, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1385, file: !979, line: 64, baseType: !89, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1385, file: !979, line: 66, baseType: !89, size: 32, offset: 96)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1385, file: !979, line: 68, baseType: !378, size: 8, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1385, file: !979, line: 70, baseType: !977, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1385, file: !979, line: 71, baseType: !985, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !726, file: !727, line: 476, baseType: !1399, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !98, line: 187, size: 256, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1400, file: !98, line: 189, baseType: !13, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1400, file: !98, line: 192, baseType: !120, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1400, file: !98, line: 197, baseType: !817, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1400, file: !98, line: 200, baseType: !96, size: 64, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !726, file: !727, line: 479, baseType: !817, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !726, file: !727, line: 484, baseType: !137, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !726, file: !727, line: 488, baseType: !137, size: 64, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !726, file: !727, line: 493, baseType: !137, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !726, file: !727, line: 496, baseType: !137, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !726, file: !727, line: 501, baseType: !1412, size: 64, offset: 640)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !1414, line: 2355, size: 576, elements: !1415)
!1414 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1415 = !{!1416, !1419, !1420, !1421, !1422, !1424, !1425, !1430, !1435, !1436, !1437, !1438, !1439}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1413, file: !1414, line: 2356, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !1414, line: 2356, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1413, file: !1414, line: 2357, baseType: !462, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1413, file: !1414, line: 2358, baseType: !13, size: 32, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1413, file: !1414, line: 2359, baseType: !13, size: 32, offset: 160)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1413, file: !1414, line: 2360, baseType: !1423, size: 128, offset: 192)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !530)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1413, file: !1414, line: 2364, baseType: !13, size: 32, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1413, file: !1414, line: 2367, baseType: !1426, size: 128, offset: 384)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !1414, line: 2349, size: 128, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1426, file: !1414, line: 2351, baseType: !436, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1426, file: !1414, line: 2352, baseType: !37, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1413, file: !1414, line: 2371, baseType: !1431, size: 32, offset: 512)
!1431 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !1414, line: 474, baseType: !89, size: 32, elements: !1432)
!1432 = !{!1433, !1434}
!1433 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!1434 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1413, file: !1414, line: 2374, baseType: !89, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1413, file: !1414, line: 2377, baseType: !89, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1413, file: !1414, line: 2381, baseType: !89, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1413, file: !1414, line: 2392, baseType: !89, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1413, file: !1414, line: 2396, baseType: !89, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !726, file: !727, line: 504, baseType: !1441, size: 64, offset: 704)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !727, line: 504, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !726, file: !727, line: 507, baseType: !817, size: 64, offset: 768)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !726, file: !727, line: 510, baseType: !13, size: 32, offset: 832)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !726, file: !727, line: 513, baseType: !13, size: 32, offset: 864)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !726, file: !727, line: 516, baseType: !386, size: 32, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !726, file: !727, line: 519, baseType: !386, size: 32, offset: 928)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !726, file: !727, line: 522, baseType: !89, size: 32, offset: 960)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !726, file: !727, line: 523, baseType: !89, size: 32, offset: 992)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !726, file: !727, line: 528, baseType: !462, size: 64, offset: 1024)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !726, file: !727, line: 535, baseType: !89, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !726, file: !727, line: 539, baseType: !89, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !726, file: !727, line: 543, baseType: !89, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !726, file: !727, line: 546, baseType: !89, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !726, file: !727, line: 550, baseType: !89, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !726, file: !727, line: 554, baseType: !89, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !726, file: !727, line: 559, baseType: !89, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !726, file: !727, line: 562, baseType: !89, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !726, file: !727, line: 571, baseType: !89, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !726, file: !727, line: 573, baseType: !89, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !726, file: !727, line: 574, baseType: !89, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !726, file: !727, line: 581, baseType: !89, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !726, file: !727, line: 585, baseType: !89, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !726, file: !727, line: 588, baseType: !89, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !726, file: !727, line: 592, baseType: !89, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !726, file: !727, line: 598, baseType: !89, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !721, file: !140, line: 3254, baseType: !137, size: 64, offset: 1536)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !721, file: !140, line: 3257, baseType: !137, size: 64, offset: 1600)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !721, file: !140, line: 3258, baseType: !137, size: 64, offset: 1664)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !721, file: !140, line: 3264, baseType: !89, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !721, file: !140, line: 3265, baseType: !89, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !721, file: !140, line: 3267, baseType: !89, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !721, file: !140, line: 3268, baseType: !89, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !721, file: !140, line: 3269, baseType: !89, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !721, file: !140, line: 3271, baseType: !89, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !721, file: !140, line: 3272, baseType: !89, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !721, file: !140, line: 3273, baseType: !89, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !721, file: !140, line: 3274, baseType: !89, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !721, file: !140, line: 3275, baseType: !89, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !721, file: !140, line: 3276, baseType: !89, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !721, file: !140, line: 3277, baseType: !89, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !721, file: !140, line: 3279, baseType: !89, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !721, file: !140, line: 3280, baseType: !89, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !721, file: !140, line: 3281, baseType: !89, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !721, file: !140, line: 3282, baseType: !89, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !721, file: !140, line: 3283, baseType: !89, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !721, file: !140, line: 3284, baseType: !89, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !140, line: 3394, baseType: !1489, size: 1344)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !140, line: 2279, size: 1344, elements: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1489, file: !140, line: 2280, baseType: !176, size: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1489, file: !140, line: 2281, baseType: !137, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1489, file: !140, line: 2282, baseType: !137, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1489, file: !140, line: 2283, baseType: !137, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1489, file: !140, line: 2284, baseType: !137, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1489, file: !140, line: 2285, baseType: !89, size: 32, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1489, file: !140, line: 2287, baseType: !89, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1489, file: !140, line: 2288, baseType: !89, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1489, file: !140, line: 2289, baseType: !89, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1489, file: !140, line: 2290, baseType: !89, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1489, file: !140, line: 2291, baseType: !89, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1489, file: !140, line: 2292, baseType: !89, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1489, file: !140, line: 2294, baseType: !89, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1489, file: !140, line: 2296, baseType: !89, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1489, file: !140, line: 2297, baseType: !89, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1489, file: !140, line: 2298, baseType: !89, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1489, file: !140, line: 2299, baseType: !89, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1489, file: !140, line: 2300, baseType: !89, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1489, file: !140, line: 2301, baseType: !89, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1489, file: !140, line: 2302, baseType: !89, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1489, file: !140, line: 2303, baseType: !89, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1489, file: !140, line: 2305, baseType: !89, size: 32, offset: 512)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1489, file: !140, line: 2306, baseType: !560, size: 32, offset: 544)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1489, file: !140, line: 2307, baseType: !137, size: 64, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1489, file: !140, line: 2308, baseType: !137, size: 64, offset: 640)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1489, file: !140, line: 2314, baseType: !1517, size: 64, offset: 704)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !140, line: 2309, size: 64, elements: !1518)
!1518 = !{!1519, !1520, !1521}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1517, file: !140, line: 2310, baseType: !13, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1517, file: !140, line: 2311, baseType: !462, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1517, file: !140, line: 2312, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !140, line: 2277, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1489, file: !140, line: 2315, baseType: !137, size: 64, offset: 768)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1489, file: !140, line: 2316, baseType: !137, size: 64, offset: 832)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1489, file: !140, line: 2317, baseType: !137, size: 64, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1489, file: !140, line: 2318, baseType: !137, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1489, file: !140, line: 2319, baseType: !137, size: 64, offset: 1024)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1489, file: !140, line: 2320, baseType: !137, size: 64, offset: 1088)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1489, file: !140, line: 2321, baseType: !137, size: 64, offset: 1152)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1489, file: !140, line: 2322, baseType: !137, size: 64, offset: 1216)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1489, file: !140, line: 2324, baseType: !1533, size: 64, offset: 1280)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !140, line: 2324, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !139, file: !140, line: 3395, baseType: !1536, size: 320)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !140, line: 1469, size: 320, elements: !1537)
!1537 = !{!1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1536, file: !140, line: 1470, baseType: !176, size: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1536, file: !140, line: 1471, baseType: !137, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1536, file: !140, line: 1472, baseType: !137, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !139, file: !140, line: 3396, baseType: !1542, size: 320)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !140, line: 1482, size: 320, elements: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1542, file: !140, line: 1483, baseType: !176, size: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1542, file: !140, line: 1484, baseType: !13, size: 32, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1542, file: !140, line: 1485, baseType: !876, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !139, file: !140, line: 3397, baseType: !1548, size: 384)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !140, line: 1829, size: 384, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1548, file: !140, line: 1830, baseType: !176, size: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1548, file: !140, line: 1831, baseType: !386, size: 32, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1548, file: !140, line: 1832, baseType: !137, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1548, file: !140, line: 1835, baseType: !876, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !139, file: !140, line: 3398, baseType: !1555, size: 704)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !140, line: 1898, size: 704, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1566}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1555, file: !140, line: 1899, baseType: !176, size: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1555, file: !140, line: 1902, baseType: !137, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1555, file: !140, line: 1905, baseType: !948, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1555, file: !140, line: 1908, baseType: !89, size: 32, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1555, file: !140, line: 1911, baseType: !1562, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !677, line: 117, size: 128, elements: !1564)
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1563, file: !677, line: 120, baseType: !1365, size: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1555, file: !140, line: 1914, baseType: !990, size: 256, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !139, file: !140, line: 3399, baseType: !1568, size: 704)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !140, line: 2008, size: 704, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1568, file: !140, line: 2009, baseType: !176, size: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1568, file: !140, line: 2011, baseType: !89, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1568, file: !140, line: 2012, baseType: !89, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1568, file: !140, line: 2014, baseType: !386, size: 32, offset: 224)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1568, file: !140, line: 2016, baseType: !137, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1568, file: !140, line: 2017, baseType: !865, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1568, file: !140, line: 2019, baseType: !137, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1568, file: !140, line: 2020, baseType: !137, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1568, file: !140, line: 2021, baseType: !137, size: 64, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1568, file: !140, line: 2022, baseType: !137, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1568, file: !140, line: 2023, baseType: !137, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !139, file: !140, line: 3400, baseType: !1582, size: 832)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !140, line: 2430, size: 832, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1582, file: !140, line: 2431, baseType: !176, size: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1582, file: !140, line: 2433, baseType: !137, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1582, file: !140, line: 2434, baseType: !137, size: 64, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1582, file: !140, line: 2435, baseType: !137, size: 64, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1582, file: !140, line: 2436, baseType: !137, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1582, file: !140, line: 2437, baseType: !865, size: 64, offset: 448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1582, file: !140, line: 2438, baseType: !137, size: 64, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1582, file: !140, line: 2440, baseType: !137, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1582, file: !140, line: 2441, baseType: !137, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1582, file: !140, line: 2443, baseType: !1594, size: 128, offset: 704)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !140, line: 182, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !140, line: 182, size: 128, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1595, file: !140, line: 182, baseType: !870, size: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !139, file: !140, line: 3401, baseType: !1599, size: 320)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !140, line: 3327, size: 320, elements: !1600)
!1600 = !{!1601, !1602, !1609}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1599, file: !140, line: 3329, baseType: !176, size: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1599, file: !140, line: 3330, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !140, line: 3320, size: 192, elements: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1604, file: !140, line: 3322, baseType: !1603, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1604, file: !140, line: 3323, baseType: !1603, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1604, file: !140, line: 3324, baseType: !137, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1599, file: !140, line: 3331, baseType: !1603, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !139, file: !140, line: 3402, baseType: !1611, size: 256)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !140, line: 1540, size: 256, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1611, file: !140, line: 1541, baseType: !176, size: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1611, file: !140, line: 1542, baseType: !1615, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !140, line: 1538, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !140, line: 1538, size: 192, elements: !1618)
!1618 = !{!1619}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1617, file: !140, line: 1538, baseType: !1620, size: 192)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !140, line: 1537, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !140, line: 1537, size: 192, elements: !1622)
!1622 = !{!1623, !1624, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1621, file: !140, line: 1537, baseType: !89, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1621, file: !140, line: 1537, baseType: !89, size: 32, offset: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1621, file: !140, line: 1537, baseType: !1626, size: 128, offset: 64)
!1626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1627, size: 128, elements: !44)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !140, line: 1535, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !140, line: 1532, size: 128, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1628, file: !140, line: 1533, baseType: !137, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1628, file: !140, line: 1534, baseType: !137, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !139, file: !140, line: 3403, baseType: !1633, size: 512)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !140, line: 1938, size: 512, elements: !1634)
!1634 = !{!1635, !1636, !1637, !1656, !1676, !1677, !1678}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1633, file: !140, line: 1939, baseType: !176, size: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1633, file: !140, line: 1940, baseType: !386, size: 32, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1633, file: !140, line: 1941, baseType: !1638, size: 32, offset: 224)
!1638 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !140, line: 280, baseType: !89, size: 32, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1640 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!1641 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!1642 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!1643 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!1644 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!1645 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!1646 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!1647 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!1648 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!1649 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!1650 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!1651 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!1652 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!1653 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!1654 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!1655 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1633, file: !140, line: 1946, baseType: !1657, size: 32, offset: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !140, line: 1942, size: 32, elements: !1658)
!1658 = !{!1659, !1667, !1675}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1657, file: !140, line: 1943, baseType: !1660, size: 32)
!1660 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !140, line: 1817, baseType: !89, size: 32, elements: !1661)
!1661 = !{!1662, !1663, !1664, !1665, !1666}
!1662 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!1663 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!1664 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!1665 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!1666 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1657, file: !140, line: 1944, baseType: !1668, size: 32)
!1668 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !140, line: 1805, baseType: !89, size: 32, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673, !1674}
!1670 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!1671 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!1672 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!1673 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!1674 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1657, file: !140, line: 1945, baseType: !1099, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1633, file: !140, line: 1950, baseType: !1018, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1633, file: !140, line: 1951, baseType: !1018, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1633, file: !140, line: 1953, baseType: !876, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !139, file: !140, line: 3404, baseType: !1680, size: 1664)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !140, line: 3337, size: 1664, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1680, file: !140, line: 3338, baseType: !176, size: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1680, file: !140, line: 3341, baseType: !1684, size: 1472, offset: 192)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1685, line: 410, size: 1472, elements: !1686)
!1685 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1684, file: !1685, line: 412, baseType: !13, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1684, file: !1685, line: 413, baseType: !13, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1684, file: !1685, line: 414, baseType: !13, size: 32, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1684, file: !1685, line: 415, baseType: !13, size: 32, offset: 96)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1684, file: !1685, line: 416, baseType: !13, size: 32, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1684, file: !1685, line: 417, baseType: !13, size: 32, offset: 160)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1684, file: !1685, line: 418, baseType: !378, size: 8, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1684, file: !1685, line: 419, baseType: !378, size: 8, offset: 200)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1684, file: !1685, line: 420, baseType: !41, size: 8, offset: 208)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1684, file: !1685, line: 421, baseType: !41, size: 8, offset: 216)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1684, file: !1685, line: 422, baseType: !41, size: 8, offset: 224)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1684, file: !1685, line: 423, baseType: !41, size: 8, offset: 232)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1684, file: !1685, line: 424, baseType: !41, size: 8, offset: 240)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1684, file: !1685, line: 425, baseType: !41, size: 8, offset: 248)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1684, file: !1685, line: 426, baseType: !41, size: 8, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1684, file: !1685, line: 427, baseType: !41, size: 8, offset: 264)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1684, file: !1685, line: 428, baseType: !41, size: 8, offset: 272)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1684, file: !1685, line: 429, baseType: !41, size: 8, offset: 280)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1684, file: !1685, line: 430, baseType: !41, size: 8, offset: 288)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1684, file: !1685, line: 431, baseType: !41, size: 8, offset: 296)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1684, file: !1685, line: 432, baseType: !41, size: 8, offset: 304)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1684, file: !1685, line: 433, baseType: !41, size: 8, offset: 312)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1684, file: !1685, line: 434, baseType: !41, size: 8, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1684, file: !1685, line: 435, baseType: !41, size: 8, offset: 328)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1684, file: !1685, line: 436, baseType: !41, size: 8, offset: 336)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1684, file: !1685, line: 437, baseType: !41, size: 8, offset: 344)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1684, file: !1685, line: 438, baseType: !41, size: 8, offset: 352)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1684, file: !1685, line: 439, baseType: !41, size: 8, offset: 360)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1684, file: !1685, line: 440, baseType: !41, size: 8, offset: 368)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1684, file: !1685, line: 441, baseType: !41, size: 8, offset: 376)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1684, file: !1685, line: 442, baseType: !41, size: 8, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1684, file: !1685, line: 443, baseType: !41, size: 8, offset: 392)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1684, file: !1685, line: 444, baseType: !41, size: 8, offset: 400)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1684, file: !1685, line: 445, baseType: !41, size: 8, offset: 408)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1684, file: !1685, line: 446, baseType: !41, size: 8, offset: 416)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1684, file: !1685, line: 447, baseType: !41, size: 8, offset: 424)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1684, file: !1685, line: 448, baseType: !41, size: 8, offset: 432)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1684, file: !1685, line: 449, baseType: !41, size: 8, offset: 440)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1684, file: !1685, line: 450, baseType: !41, size: 8, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1684, file: !1685, line: 451, baseType: !41, size: 8, offset: 456)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1684, file: !1685, line: 452, baseType: !41, size: 8, offset: 464)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1684, file: !1685, line: 453, baseType: !41, size: 8, offset: 472)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1684, file: !1685, line: 454, baseType: !41, size: 8, offset: 480)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1684, file: !1685, line: 455, baseType: !41, size: 8, offset: 488)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1684, file: !1685, line: 456, baseType: !41, size: 8, offset: 496)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1684, file: !1685, line: 457, baseType: !41, size: 8, offset: 504)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1684, file: !1685, line: 458, baseType: !41, size: 8, offset: 512)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1684, file: !1685, line: 459, baseType: !41, size: 8, offset: 520)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1684, file: !1685, line: 460, baseType: !41, size: 8, offset: 528)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1684, file: !1685, line: 461, baseType: !41, size: 8, offset: 536)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1684, file: !1685, line: 462, baseType: !41, size: 8, offset: 544)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1684, file: !1685, line: 463, baseType: !41, size: 8, offset: 552)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1684, file: !1685, line: 464, baseType: !41, size: 8, offset: 560)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1684, file: !1685, line: 465, baseType: !41, size: 8, offset: 568)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1684, file: !1685, line: 466, baseType: !41, size: 8, offset: 576)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1684, file: !1685, line: 467, baseType: !41, size: 8, offset: 584)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1684, file: !1685, line: 468, baseType: !41, size: 8, offset: 592)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1684, file: !1685, line: 469, baseType: !41, size: 8, offset: 600)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1684, file: !1685, line: 470, baseType: !41, size: 8, offset: 608)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1684, file: !1685, line: 471, baseType: !41, size: 8, offset: 616)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1684, file: !1685, line: 472, baseType: !41, size: 8, offset: 624)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1684, file: !1685, line: 473, baseType: !41, size: 8, offset: 632)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1684, file: !1685, line: 474, baseType: !41, size: 8, offset: 640)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1684, file: !1685, line: 475, baseType: !41, size: 8, offset: 648)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1684, file: !1685, line: 476, baseType: !41, size: 8, offset: 656)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1684, file: !1685, line: 477, baseType: !41, size: 8, offset: 664)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1684, file: !1685, line: 478, baseType: !41, size: 8, offset: 672)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1684, file: !1685, line: 479, baseType: !41, size: 8, offset: 680)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1684, file: !1685, line: 480, baseType: !41, size: 8, offset: 688)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1684, file: !1685, line: 481, baseType: !41, size: 8, offset: 696)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1684, file: !1685, line: 482, baseType: !41, size: 8, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1684, file: !1685, line: 483, baseType: !41, size: 8, offset: 712)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1684, file: !1685, line: 484, baseType: !41, size: 8, offset: 720)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1684, file: !1685, line: 485, baseType: !41, size: 8, offset: 728)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1684, file: !1685, line: 486, baseType: !41, size: 8, offset: 736)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1684, file: !1685, line: 487, baseType: !41, size: 8, offset: 744)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1684, file: !1685, line: 488, baseType: !41, size: 8, offset: 752)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1684, file: !1685, line: 489, baseType: !41, size: 8, offset: 760)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1684, file: !1685, line: 490, baseType: !41, size: 8, offset: 768)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1684, file: !1685, line: 491, baseType: !41, size: 8, offset: 776)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1684, file: !1685, line: 492, baseType: !41, size: 8, offset: 784)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1684, file: !1685, line: 493, baseType: !41, size: 8, offset: 792)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1684, file: !1685, line: 494, baseType: !41, size: 8, offset: 800)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1684, file: !1685, line: 495, baseType: !41, size: 8, offset: 808)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1684, file: !1685, line: 496, baseType: !41, size: 8, offset: 816)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1684, file: !1685, line: 497, baseType: !41, size: 8, offset: 824)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1684, file: !1685, line: 498, baseType: !41, size: 8, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1684, file: !1685, line: 499, baseType: !41, size: 8, offset: 840)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1684, file: !1685, line: 500, baseType: !41, size: 8, offset: 848)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1684, file: !1685, line: 501, baseType: !41, size: 8, offset: 856)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1684, file: !1685, line: 502, baseType: !41, size: 8, offset: 864)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1684, file: !1685, line: 503, baseType: !41, size: 8, offset: 872)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1684, file: !1685, line: 504, baseType: !41, size: 8, offset: 880)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1684, file: !1685, line: 505, baseType: !41, size: 8, offset: 888)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1684, file: !1685, line: 506, baseType: !41, size: 8, offset: 896)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1684, file: !1685, line: 507, baseType: !41, size: 8, offset: 904)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1684, file: !1685, line: 508, baseType: !41, size: 8, offset: 912)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1684, file: !1685, line: 509, baseType: !41, size: 8, offset: 920)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1684, file: !1685, line: 510, baseType: !41, size: 8, offset: 928)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1684, file: !1685, line: 511, baseType: !41, size: 8, offset: 936)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1684, file: !1685, line: 512, baseType: !41, size: 8, offset: 944)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1684, file: !1685, line: 513, baseType: !41, size: 8, offset: 952)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1684, file: !1685, line: 514, baseType: !41, size: 8, offset: 960)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1684, file: !1685, line: 515, baseType: !41, size: 8, offset: 968)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1684, file: !1685, line: 516, baseType: !41, size: 8, offset: 976)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1684, file: !1685, line: 517, baseType: !41, size: 8, offset: 984)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1684, file: !1685, line: 518, baseType: !41, size: 8, offset: 992)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1684, file: !1685, line: 519, baseType: !41, size: 8, offset: 1000)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1684, file: !1685, line: 520, baseType: !41, size: 8, offset: 1008)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1684, file: !1685, line: 521, baseType: !41, size: 8, offset: 1016)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1684, file: !1685, line: 522, baseType: !41, size: 8, offset: 1024)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1684, file: !1685, line: 523, baseType: !41, size: 8, offset: 1032)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1684, file: !1685, line: 524, baseType: !41, size: 8, offset: 1040)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1684, file: !1685, line: 525, baseType: !41, size: 8, offset: 1048)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1684, file: !1685, line: 526, baseType: !41, size: 8, offset: 1056)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1684, file: !1685, line: 527, baseType: !41, size: 8, offset: 1064)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1684, file: !1685, line: 528, baseType: !41, size: 8, offset: 1072)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1684, file: !1685, line: 529, baseType: !41, size: 8, offset: 1080)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1684, file: !1685, line: 530, baseType: !41, size: 8, offset: 1088)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1684, file: !1685, line: 531, baseType: !41, size: 8, offset: 1096)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1684, file: !1685, line: 532, baseType: !41, size: 8, offset: 1104)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1684, file: !1685, line: 533, baseType: !41, size: 8, offset: 1112)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1684, file: !1685, line: 534, baseType: !41, size: 8, offset: 1120)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1684, file: !1685, line: 535, baseType: !41, size: 8, offset: 1128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1684, file: !1685, line: 536, baseType: !41, size: 8, offset: 1136)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1684, file: !1685, line: 537, baseType: !41, size: 8, offset: 1144)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1684, file: !1685, line: 538, baseType: !41, size: 8, offset: 1152)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1684, file: !1685, line: 539, baseType: !41, size: 8, offset: 1160)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1684, file: !1685, line: 540, baseType: !41, size: 8, offset: 1168)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1684, file: !1685, line: 541, baseType: !41, size: 8, offset: 1176)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1684, file: !1685, line: 542, baseType: !41, size: 8, offset: 1184)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1684, file: !1685, line: 543, baseType: !41, size: 8, offset: 1192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1684, file: !1685, line: 544, baseType: !41, size: 8, offset: 1200)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1684, file: !1685, line: 545, baseType: !41, size: 8, offset: 1208)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1684, file: !1685, line: 546, baseType: !41, size: 8, offset: 1216)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1684, file: !1685, line: 547, baseType: !41, size: 8, offset: 1224)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1684, file: !1685, line: 548, baseType: !41, size: 8, offset: 1232)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1684, file: !1685, line: 549, baseType: !41, size: 8, offset: 1240)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1684, file: !1685, line: 550, baseType: !41, size: 8, offset: 1248)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1684, file: !1685, line: 551, baseType: !41, size: 8, offset: 1256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1684, file: !1685, line: 552, baseType: !41, size: 8, offset: 1264)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1684, file: !1685, line: 553, baseType: !41, size: 8, offset: 1272)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1684, file: !1685, line: 554, baseType: !41, size: 8, offset: 1280)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1684, file: !1685, line: 555, baseType: !41, size: 8, offset: 1288)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1684, file: !1685, line: 556, baseType: !41, size: 8, offset: 1296)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1684, file: !1685, line: 557, baseType: !41, size: 8, offset: 1304)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1684, file: !1685, line: 558, baseType: !41, size: 8, offset: 1312)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1684, file: !1685, line: 559, baseType: !41, size: 8, offset: 1320)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1684, file: !1685, line: 560, baseType: !41, size: 8, offset: 1328)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1684, file: !1685, line: 561, baseType: !41, size: 8, offset: 1336)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1684, file: !1685, line: 562, baseType: !41, size: 8, offset: 1344)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1684, file: !1685, line: 563, baseType: !41, size: 8, offset: 1352)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1684, file: !1685, line: 564, baseType: !41, size: 8, offset: 1360)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1684, file: !1685, line: 565, baseType: !41, size: 8, offset: 1368)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1684, file: !1685, line: 566, baseType: !41, size: 8, offset: 1376)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1684, file: !1685, line: 567, baseType: !41, size: 8, offset: 1384)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1684, file: !1685, line: 568, baseType: !41, size: 8, offset: 1392)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1684, file: !1685, line: 569, baseType: !41, size: 8, offset: 1400)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1684, file: !1685, line: 570, baseType: !41, size: 8, offset: 1408)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1684, file: !1685, line: 571, baseType: !41, size: 8, offset: 1416)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1684, file: !1685, line: 572, baseType: !41, size: 8, offset: 1424)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1684, file: !1685, line: 573, baseType: !41, size: 8, offset: 1432)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1684, file: !1685, line: 574, baseType: !41, size: 8, offset: 1440)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !139, file: !140, line: 3405, baseType: !1851, size: 384)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !140, line: 3352, size: 384, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1851, file: !140, line: 3353, baseType: !176, size: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1851, file: !140, line: 3356, baseType: !1855, size: 192, offset: 192)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1685, line: 578, size: 192, elements: !1856)
!1856 = !{!1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1855, file: !1685, line: 580, baseType: !13, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1855, file: !1685, line: 581, baseType: !13, size: 32, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1855, file: !1685, line: 582, baseType: !13, size: 32, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1855, file: !1685, line: 583, baseType: !13, size: 32, offset: 96)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1855, file: !1685, line: 584, baseType: !378, size: 8, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1855, file: !1685, line: 585, baseType: !378, size: 8, offset: 136)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1855, file: !1685, line: 586, baseType: !378, size: 8, offset: 144)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1855, file: !1685, line: 587, baseType: !378, size: 8, offset: 152)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1855, file: !1685, line: 588, baseType: !378, size: 8, offset: 160)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1855, file: !1685, line: 589, baseType: !378, size: 8, offset: 168)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1855, file: !1685, line: 590, baseType: !378, size: 8, offset: 176)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !97, file: !98, line: 143, baseType: !186, size: 128, offset: 640)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !97, file: !98, line: 146, baseType: !186, size: 128, offset: 768)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !97, file: !98, line: 148, baseType: !378, size: 8, offset: 896)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !97, file: !98, line: 149, baseType: !378, size: 8, offset: 904)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !97, file: !98, line: 153, baseType: !1873, size: 32, offset: 928)
!1873 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !98, line: 91, baseType: !89, size: 32, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!1876 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !97, file: !98, line: 156, baseType: !1878, size: 64, offset: 960)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !98, line: 48, size: 320, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1884}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1879, file: !98, line: 50, baseType: !948, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1879, file: !98, line: 59, baseType: !186, size: 128, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1879, file: !98, line: 64, baseType: !378, size: 8, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1879, file: !98, line: 67, baseType: !1878, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !97, file: !98, line: 159, baseType: !1886, size: 64, offset: 1024)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !98, line: 72, size: 256, elements: !1888)
!1888 = !{!1889, !1890, !1891, !1892}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1887, file: !98, line: 74, baseType: !71, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1887, file: !98, line: 77, baseType: !1886, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1887, file: !98, line: 78, baseType: !1886, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1887, file: !98, line: 81, baseType: !1886, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !97, file: !98, line: 162, baseType: !378, size: 8, offset: 1088)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !97, file: !98, line: 166, baseType: !137, size: 64, offset: 1152)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !77, file: !73, line: 229, baseType: !1896, size: 128, offset: 256)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1897, size: 128, elements: !506)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !73, line: 229, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !77, file: !73, line: 232, baseType: !76, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !77, file: !73, line: 233, baseType: !76, size: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !77, file: !73, line: 238, baseType: !1902, size: 64, offset: 512)
!1902 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !73, line: 235, size: 64, elements: !1903)
!1903 = !{!1904, !1910}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1902, file: !73, line: 236, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !73, line: 273, size: 128, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1906, file: !73, line: 275, baseType: !1018, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1906, file: !73, line: 278, baseType: !1018, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1902, file: !73, line: 237, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !73, line: 259, size: 320, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1917, !1918}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1912, file: !73, line: 261, baseType: !436, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1912, file: !73, line: 262, baseType: !436, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1912, file: !73, line: 266, baseType: !436, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1912, file: !73, line: 267, baseType: !436, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1912, file: !73, line: 270, baseType: !13, size: 32, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !77, file: !73, line: 241, baseType: !1920, size: 64, offset: 576)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !73, line: 119, baseType: !37)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !77, file: !73, line: 244, baseType: !13, size: 32, offset: 640)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !77, file: !73, line: 247, baseType: !13, size: 32, offset: 672)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !77, file: !73, line: 250, baseType: !13, size: 32, offset: 704)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !77, file: !73, line: 253, baseType: !13, size: 32, offset: 736)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !73, line: 256, baseType: !13, size: 32, offset: 768)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !72, file: !73, line: 125, baseType: !76, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !72, file: !73, line: 131, baseType: !1928, size: 64, offset: 128)
!1928 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !73, line: 128, size: 64, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1928, file: !73, line: 129, baseType: !1018, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1928, file: !73, line: 130, baseType: !436, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !72, file: !73, line: 134, baseType: !59, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !72, file: !73, line: 137, baseType: !137, size: 64, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !72, file: !73, line: 138, baseType: !386, size: 32, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !72, file: !73, line: 142, baseType: !89, size: 32, offset: 352)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !73, line: 144, baseType: !13, size: 32, offset: 384)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !72, file: !73, line: 145, baseType: !13, size: 32, offset: 416)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !72, file: !73, line: 146, baseType: !1920, size: 64, offset: 448)
!1939 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1940, retainedTypes: !1971, globals: !1986, nameTableKind: None)
!1940 = !{!744, !222, !1099, !108, !1873, !1638, !1660, !1668, !921, !928, !1431, !1941}
!1941 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_class", file: !1414, line: 1188, baseType: !89, size: 32, elements: !1942)
!1942 = !{!1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970}
!1943 = !DIEnumerator(name: "NO_REGS", value: 0, isUnsigned: true)
!1944 = !DIEnumerator(name: "AREG", value: 1, isUnsigned: true)
!1945 = !DIEnumerator(name: "DREG", value: 2, isUnsigned: true)
!1946 = !DIEnumerator(name: "CREG", value: 3, isUnsigned: true)
!1947 = !DIEnumerator(name: "BREG", value: 4, isUnsigned: true)
!1948 = !DIEnumerator(name: "SIREG", value: 5, isUnsigned: true)
!1949 = !DIEnumerator(name: "DIREG", value: 6, isUnsigned: true)
!1950 = !DIEnumerator(name: "AD_REGS", value: 7, isUnsigned: true)
!1951 = !DIEnumerator(name: "CLOBBERED_REGS", value: 8, isUnsigned: true)
!1952 = !DIEnumerator(name: "Q_REGS", value: 9, isUnsigned: true)
!1953 = !DIEnumerator(name: "NON_Q_REGS", value: 10, isUnsigned: true)
!1954 = !DIEnumerator(name: "INDEX_REGS", value: 11, isUnsigned: true)
!1955 = !DIEnumerator(name: "LEGACY_REGS", value: 12, isUnsigned: true)
!1956 = !DIEnumerator(name: "GENERAL_REGS", value: 13, isUnsigned: true)
!1957 = !DIEnumerator(name: "FP_TOP_REG", value: 14, isUnsigned: true)
!1958 = !DIEnumerator(name: "FP_SECOND_REG", value: 15, isUnsigned: true)
!1959 = !DIEnumerator(name: "FLOAT_REGS", value: 16, isUnsigned: true)
!1960 = !DIEnumerator(name: "SSE_FIRST_REG", value: 17, isUnsigned: true)
!1961 = !DIEnumerator(name: "SSE_REGS", value: 18, isUnsigned: true)
!1962 = !DIEnumerator(name: "MMX_REGS", value: 19, isUnsigned: true)
!1963 = !DIEnumerator(name: "FP_TOP_SSE_REGS", value: 20, isUnsigned: true)
!1964 = !DIEnumerator(name: "FP_SECOND_SSE_REGS", value: 21, isUnsigned: true)
!1965 = !DIEnumerator(name: "FLOAT_SSE_REGS", value: 22, isUnsigned: true)
!1966 = !DIEnumerator(name: "FLOAT_INT_REGS", value: 23, isUnsigned: true)
!1967 = !DIEnumerator(name: "INT_SSE_REGS", value: 24, isUnsigned: true)
!1968 = !DIEnumerator(name: "FLOAT_INT_SSE_REGS", value: 25, isUnsigned: true)
!1969 = !DIEnumerator(name: "ALL_REGS", value: 26, isUnsigned: true)
!1970 = !DIEnumerator(name: "LIM_REG_CLASSES", value: 27, isUnsigned: true)
!1971 = !{!1972, !378, !13, !1973, !59, !462, !897, !76, !71, !89, !39, !222, !15, !1974, !835, !1977, !1978, !80, !63, !1983, !1985}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!59, !37}
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !62, line: 35, baseType: !37)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab_bb_copy_original_entry", file: !3, line: 1119, size: 64, elements: !1980)
!1980 = !{!1981, !1982}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "index1", scope: !1979, file: !3, line: 1122, baseType: !13, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "index2", scope: !1979, file: !3, line: 1124, baseType: !13, size: 32, offset: 32)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1986 = !{!0, !1987, !1997, !2016, !2018, !2020, !2022, !2024, !2026, !2028, !2051, !2053, !2055}
!1987 = !DIGlobalVariableExpression(var: !1988, expr: !DIExpression())
!1988 = distinct !DIGlobalVariable(name: "initialized", scope: !1989, file: !3, line: 752, type: !13, isLocal: true, isDefinition: true)
!1989 = distinct !DISubprogram(name: "alloc_aux_for_blocks", scope: !3, file: !3, line: 750, type: !1990, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !1992)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !13}
!1992 = !{!1993, !1994}
!1993 = !DILocalVariable(name: "size", arg: 1, scope: !1989, file: !3, line: 750, type: !13)
!1994 = !DILocalVariable(name: "bb", scope: !1995, file: !3, line: 766, type: !901)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 765, column: 5)
!1996 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 764, column: 7)
!1997 = !DIGlobalVariableExpression(var: !1998, expr: !DIExpression())
!1998 = distinct !DIGlobalVariable(name: "initialized", scope: !1999, file: !3, line: 815, type: !13, isLocal: true, isDefinition: true)
!1999 = distinct !DISubprogram(name: "alloc_aux_for_edges", scope: !3, file: !3, line: 813, type: !1990, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2000)
!2000 = !{!2001, !2002, !2005, !2009}
!2001 = !DILocalVariable(name: "size", arg: 1, scope: !1999, file: !3, line: 813, type: !13)
!2002 = !DILocalVariable(name: "bb", scope: !2003, file: !3, line: 829, type: !901)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 828, column: 5)
!2004 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 827, column: 7)
!2005 = !DILocalVariable(name: "e", scope: !2006, file: !3, line: 833, type: !69)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 832, column: 2)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 831, column: 7)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 831, column: 7)
!2009 = !DILocalVariable(name: "ei", scope: !2006, file: !3, line: 834, type: !2010)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !73, line: 682, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 679, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2011, file: !73, line: 680, baseType: !89, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2011, file: !73, line: 681, baseType: !2015, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2016 = !DIGlobalVariableExpression(var: !2017, expr: !DIExpression())
!2017 = distinct !DIGlobalVariable(name: "reg_obstack", scope: !1939, file: !3, line: 74, type: !513, isLocal: false, isDefinition: true)
!2018 = !DIGlobalVariableExpression(var: !2019, expr: !DIExpression())
!2019 = distinct !DIGlobalVariable(name: "block_aux_obstack", scope: !1939, file: !3, line: 729, type: !518, isLocal: true, isDefinition: true)
!2020 = !DIGlobalVariableExpression(var: !2021, expr: !DIExpression())
!2021 = distinct !DIGlobalVariable(name: "edge_aux_obstack", scope: !1939, file: !3, line: 731, type: !518, isLocal: true, isDefinition: true)
!2022 = !DIGlobalVariableExpression(var: !2023, expr: !DIExpression())
!2023 = distinct !DIGlobalVariable(name: "bb_original", scope: !1939, file: !3, line: 1112, type: !817, isLocal: true, isDefinition: true)
!2024 = !DIGlobalVariableExpression(var: !2025, expr: !DIExpression())
!2025 = distinct !DIGlobalVariable(name: "bb_copy", scope: !1939, file: !3, line: 1113, type: !817, isLocal: true, isDefinition: true)
!2026 = !DIGlobalVariableExpression(var: !2027, expr: !DIExpression())
!2027 = distinct !DIGlobalVariable(name: "loop_copy", scope: !1939, file: !3, line: 1116, type: !817, isLocal: true, isDefinition: true)
!2028 = !DIGlobalVariableExpression(var: !2029, expr: !DIExpression())
!2029 = distinct !DIGlobalVariable(name: "original_copy_bb_pool", scope: !1939, file: !3, line: 1117, type: !2030, isLocal: true, isDefinition: true)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool", file: !2031, line: 58, baseType: !2032)
!2031 = !DIFile(filename: "./alloc-pool.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_def", file: !2031, line: 32, size: 704, elements: !2034)
!2034 = !{!2035, !2036, !2037, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2033, file: !2031, line: 34, baseType: !462, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "elts_per_block", scope: !2033, file: !2031, line: 38, baseType: !61, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "returned_free_list", scope: !2033, file: !2031, line: 41, baseType: !2038, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool_list", file: !2031, line: 30, baseType: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_list_def", file: !2031, line: 26, size: 64, elements: !2041)
!2041 = !{!2042}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2040, file: !2031, line: 28, baseType: !2039, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_free_list", scope: !2033, file: !2031, line: 45, baseType: !15, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_elts_remaining", scope: !2033, file: !2031, line: 49, baseType: !61, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "elts_allocated", scope: !2033, file: !2031, line: 51, baseType: !61, size: 64, offset: 320)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "elts_free", scope: !2033, file: !2031, line: 52, baseType: !61, size: 64, offset: 384)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_allocated", scope: !2033, file: !2031, line: 53, baseType: !61, size: 64, offset: 448)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "block_list", scope: !2033, file: !2031, line: 54, baseType: !2038, size: 64, offset: 512)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !2033, file: !2031, line: 55, baseType: !61, size: 64, offset: 576)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !2033, file: !2031, line: 56, baseType: !61, size: 64, offset: 640)
!2051 = !DIGlobalVariableExpression(var: !2052, expr: !DIExpression())
!2052 = distinct !DIGlobalVariable(name: "first_block_aux_obj", scope: !1939, file: !3, line: 730, type: !59, isLocal: true, isDefinition: true)
!2053 = !DIGlobalVariableExpression(var: !2054, expr: !DIExpression())
!2054 = distinct !DIGlobalVariable(name: "first_edge_aux_obj", scope: !1939, file: !3, line: 732, type: !59, isLocal: true, isDefinition: true)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(name: "bb_bitnames", scope: !2057, file: !3, line: 893, type: !2069, isLocal: true, isDefinition: true)
!2057 = distinct !DISubprogram(name: "dump_cfg_bb_info", scope: !3, file: !3, line: 888, type: !2058, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !6, !901}
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2066, !2068}
!2061 = !DILocalVariable(name: "file", arg: 1, scope: !2057, file: !3, line: 888, type: !6)
!2062 = !DILocalVariable(name: "bb", arg: 2, scope: !2057, file: !3, line: 888, type: !901)
!2063 = !DILocalVariable(name: "i", scope: !2057, file: !3, line: 890, type: !89)
!2064 = !DILocalVariable(name: "ei", scope: !2057, file: !3, line: 891, type: !2010)
!2065 = !DILocalVariable(name: "first", scope: !2057, file: !3, line: 892, type: !378)
!2066 = !DILocalVariable(name: "n_bitnames", scope: !2057, file: !3, line: 899, type: !2067)
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!2068 = !DILocalVariable(name: "e", scope: !2057, file: !3, line: 900, type: !69)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2070, size: 768, elements: !2071)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!2071 = !{!2072}
!2072 = !DISubrange(count: 12)
!2073 = !{!2074, !2075, !2076, !2077, !2078, !2081, !2082}
!2074 = !DILocalVariable(name: "file", arg: 1, scope: !2, file: !3, line: 678, type: !6)
!2075 = !DILocalVariable(name: "e", arg: 2, scope: !2, file: !3, line: 678, type: !69)
!2076 = !DILocalVariable(name: "do_succ", arg: 3, scope: !2, file: !3, line: 678, type: !13)
!2077 = !DILocalVariable(name: "side", scope: !2, file: !3, line: 680, type: !901)
!2078 = !DILocalVariable(name: "comma", scope: !2079, file: !3, line: 705, type: !13)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 699, column: 5)
!2080 = distinct !DILexicalBlock(scope: !2, file: !3, line: 698, column: 7)
!2081 = !DILocalVariable(name: "i", scope: !2079, file: !3, line: 706, type: !13)
!2082 = !DILocalVariable(name: "flags", scope: !2079, file: !3, line: 706, type: !13)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2070, size: 832, elements: !2084)
!2084 = !{!2085}
!2085 = !DISubrange(count: 13)
!2086 = !DIGlobalVariableExpression(var: !1988, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2087 = !DIGlobalVariableExpression(var: !1998, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2088 = !{i32 2, !"Dwarf Version", i32 4}
!2089 = !{i32 2, !"Debug Info Version", i32 3}
!2090 = !{i32 1, !"wchar_size", i32 4}
!2091 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2092 = distinct !DISubprogram(name: "vprintf", scope: !2093, file: !2093, line: 39, type: !2094, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2104)
!2093 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!13, !2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !462)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2099)
!2099 = !{!2100, !2101, !2102, !2103}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2098, file: !3, baseType: !89, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2098, file: !3, baseType: !89, size: 32, offset: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2098, file: !3, baseType: !59, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2098, file: !3, baseType: !59, size: 64, offset: 128)
!2104 = !{!2105, !2106}
!2105 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2092, file: !2093, line: 39, type: !2096)
!2106 = !DILocalVariable(name: "__arg", arg: 2, scope: !2092, file: !2093, line: 39, type: !2097)
!2107 = !DILocation(line: 0, scope: !2092)
!2108 = !DILocation(line: 41, column: 20, scope: !2092)
!2109 = !DILocation(line: 41, column: 10, scope: !2092)
!2110 = !DILocation(line: 41, column: 3, scope: !2092)
!2111 = distinct !DISubprogram(name: "getchar", scope: !2093, file: !2093, line: 47, type: !2112, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!13}
!2114 = !{}
!2115 = !DILocation(line: 49, column: 16, scope: !2111)
!2116 = !DILocation(line: 49, column: 10, scope: !2111)
!2117 = !DILocation(line: 49, column: 3, scope: !2111)
!2118 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2093, file: !2093, line: 56, type: !2119, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!13, !6}
!2121 = !{!2122}
!2122 = !DILocalVariable(name: "__fp", arg: 1, scope: !2118, file: !2093, line: 56, type: !6)
!2123 = !DILocation(line: 0, scope: !2118)
!2124 = !DILocation(line: 58, column: 10, scope: !2118)
!2125 = !DILocation(line: 58, column: 3, scope: !2118)
!2126 = distinct !DISubprogram(name: "getc_unlocked", scope: !2093, file: !2093, line: 66, type: !2119, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2127)
!2127 = !{!2128}
!2128 = !DILocalVariable(name: "__fp", arg: 1, scope: !2126, file: !2093, line: 66, type: !6)
!2129 = !DILocation(line: 0, scope: !2126)
!2130 = !DILocation(line: 68, column: 10, scope: !2126)
!2131 = !DILocation(line: 68, column: 3, scope: !2126)
!2132 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2093, file: !2093, line: 73, type: !2112, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2114)
!2133 = !DILocation(line: 75, column: 10, scope: !2132)
!2134 = !DILocation(line: 75, column: 3, scope: !2132)
!2135 = distinct !DISubprogram(name: "putchar", scope: !2093, file: !2093, line: 82, type: !2136, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!13, !13}
!2138 = !{!2139}
!2139 = !DILocalVariable(name: "__c", arg: 1, scope: !2135, file: !2093, line: 82, type: !13)
!2140 = !DILocation(line: 0, scope: !2135)
!2141 = !DILocation(line: 84, column: 21, scope: !2135)
!2142 = !DILocation(line: 84, column: 10, scope: !2135)
!2143 = !DILocation(line: 84, column: 3, scope: !2135)
!2144 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2093, file: !2093, line: 91, type: !2145, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!13, !13, !6}
!2147 = !{!2148, !2149}
!2148 = !DILocalVariable(name: "__c", arg: 1, scope: !2144, file: !2093, line: 91, type: !13)
!2149 = !DILocalVariable(name: "__stream", arg: 2, scope: !2144, file: !2093, line: 91, type: !6)
!2150 = !DILocation(line: 0, scope: !2144)
!2151 = !DILocation(line: 93, column: 10, scope: !2144)
!2152 = !DILocation(line: 93, column: 3, scope: !2144)
!2153 = distinct !DISubprogram(name: "putc_unlocked", scope: !2093, file: !2093, line: 101, type: !2145, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2154)
!2154 = !{!2155, !2156}
!2155 = !DILocalVariable(name: "__c", arg: 1, scope: !2153, file: !2093, line: 101, type: !13)
!2156 = !DILocalVariable(name: "__stream", arg: 2, scope: !2153, file: !2093, line: 101, type: !6)
!2157 = !DILocation(line: 0, scope: !2153)
!2158 = !DILocation(line: 103, column: 10, scope: !2153)
!2159 = !DILocation(line: 103, column: 3, scope: !2153)
!2160 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2093, file: !2093, line: 108, type: !2136, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2161)
!2161 = !{!2162}
!2162 = !DILocalVariable(name: "__c", arg: 1, scope: !2160, file: !2093, line: 108, type: !13)
!2163 = !DILocation(line: 0, scope: !2160)
!2164 = !DILocation(line: 110, column: 10, scope: !2160)
!2165 = !DILocation(line: 110, column: 3, scope: !2160)
!2166 = distinct !DISubprogram(name: "getline", scope: !2093, file: !2093, line: 118, type: !2167, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2171)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!2169, !1973, !2170, !6}
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !36, line: 193, baseType: !37)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!2171 = !{!2172, !2173, !2174}
!2172 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2166, file: !2093, line: 118, type: !1973)
!2173 = !DILocalVariable(name: "__n", arg: 2, scope: !2166, file: !2093, line: 118, type: !2170)
!2174 = !DILocalVariable(name: "__stream", arg: 3, scope: !2166, file: !2093, line: 118, type: !6)
!2175 = !DILocation(line: 0, scope: !2166)
!2176 = !DILocation(line: 120, column: 10, scope: !2166)
!2177 = !DILocation(line: 120, column: 3, scope: !2166)
!2178 = distinct !DISubprogram(name: "feof_unlocked", scope: !2093, file: !2093, line: 128, type: !2119, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2179)
!2179 = !{!2180}
!2180 = !DILocalVariable(name: "__stream", arg: 1, scope: !2178, file: !2093, line: 128, type: !6)
!2181 = !DILocation(line: 0, scope: !2178)
!2182 = !DILocation(line: 130, column: 10, scope: !2178)
!2183 = !DILocation(line: 130, column: 3, scope: !2178)
!2184 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2093, file: !2093, line: 135, type: !2119, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2185)
!2185 = !{!2186}
!2186 = !DILocalVariable(name: "__stream", arg: 1, scope: !2184, file: !2093, line: 135, type: !6)
!2187 = !DILocation(line: 0, scope: !2184)
!2188 = !DILocation(line: 137, column: 10, scope: !2184)
!2189 = !DILocation(line: 137, column: 3, scope: !2184)
!2190 = distinct !DISubprogram(name: "tolower", scope: !2191, file: !2191, line: 207, type: !2136, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2192)
!2191 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2192 = !{!2193}
!2193 = !DILocalVariable(name: "__c", arg: 1, scope: !2190, file: !2191, line: 207, type: !13)
!2194 = !DILocation(line: 0, scope: !2190)
!2195 = !DILocation(line: 209, column: 22, scope: !2190)
!2196 = !DILocation(line: 209, column: 39, scope: !2190)
!2197 = !DILocation(line: 209, column: 38, scope: !2190)
!2198 = !DILocation(line: 209, column: 37, scope: !2190)
!2199 = !DILocation(line: 209, column: 10, scope: !2190)
!2200 = !DILocation(line: 209, column: 3, scope: !2190)
!2201 = distinct !DISubprogram(name: "toupper", scope: !2191, file: !2191, line: 213, type: !2136, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2202)
!2202 = !{!2203}
!2203 = !DILocalVariable(name: "__c", arg: 1, scope: !2201, file: !2191, line: 213, type: !13)
!2204 = !DILocation(line: 0, scope: !2201)
!2205 = !DILocation(line: 215, column: 22, scope: !2201)
!2206 = !DILocation(line: 215, column: 39, scope: !2201)
!2207 = !DILocation(line: 215, column: 38, scope: !2201)
!2208 = !DILocation(line: 215, column: 37, scope: !2201)
!2209 = !DILocation(line: 215, column: 10, scope: !2201)
!2210 = !DILocation(line: 215, column: 3, scope: !2201)
!2211 = distinct !DISubprogram(name: "atoi", scope: !2212, file: !2212, line: 361, type: !2213, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2215)
!2212 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!13, !462}
!2215 = !{!2216}
!2216 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2211, file: !2212, line: 361, type: !462)
!2217 = !DILocation(line: 0, scope: !2211)
!2218 = !DILocation(line: 363, column: 16, scope: !2211)
!2219 = !DILocation(line: 363, column: 10, scope: !2211)
!2220 = !DILocation(line: 363, column: 3, scope: !2211)
!2221 = distinct !DISubprogram(name: "atol", scope: !2212, file: !2212, line: 366, type: !2222, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2224)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!37, !462}
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2221, file: !2212, line: 366, type: !462)
!2226 = !DILocation(line: 0, scope: !2221)
!2227 = !DILocation(line: 368, column: 10, scope: !2221)
!2228 = !DILocation(line: 368, column: 3, scope: !2221)
!2229 = distinct !DISubprogram(name: "atoll", scope: !2212, file: !2212, line: 373, type: !2230, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2233)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!2232, !462}
!2232 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2233 = !{!2234}
!2234 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2229, file: !2212, line: 373, type: !462)
!2235 = !DILocation(line: 0, scope: !2229)
!2236 = !DILocation(line: 375, column: 10, scope: !2229)
!2237 = !DILocation(line: 375, column: 3, scope: !2229)
!2238 = distinct !DISubprogram(name: "bsearch", scope: !2239, file: !2239, line: 20, type: !2240, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2243)
!2239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!59, !610, !610, !61, !61, !2242}
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2212, line: 808, baseType: !830)
!2243 = !{!2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2244 = !DILocalVariable(name: "__key", arg: 1, scope: !2238, file: !2239, line: 20, type: !610)
!2245 = !DILocalVariable(name: "__base", arg: 2, scope: !2238, file: !2239, line: 20, type: !610)
!2246 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2238, file: !2239, line: 20, type: !61)
!2247 = !DILocalVariable(name: "__size", arg: 4, scope: !2238, file: !2239, line: 20, type: !61)
!2248 = !DILocalVariable(name: "__compar", arg: 5, scope: !2238, file: !2239, line: 21, type: !2242)
!2249 = !DILocalVariable(name: "__l", scope: !2238, file: !2239, line: 23, type: !61)
!2250 = !DILocalVariable(name: "__u", scope: !2238, file: !2239, line: 23, type: !61)
!2251 = !DILocalVariable(name: "__idx", scope: !2238, file: !2239, line: 23, type: !61)
!2252 = !DILocalVariable(name: "__p", scope: !2238, file: !2239, line: 24, type: !610)
!2253 = !DILocalVariable(name: "__comparison", scope: !2238, file: !2239, line: 25, type: !13)
!2254 = !DILocation(line: 0, scope: !2238)
!2255 = !DILocation(line: 29, column: 3, scope: !2238)
!2256 = !DILocation(line: 27, column: 7, scope: !2238)
!2257 = !DILocation(line: 29, column: 14, scope: !2238)
!2258 = !DILocation(line: 31, column: 20, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2238, file: !2239, line: 30, column: 5)
!2260 = !DILocation(line: 31, column: 27, scope: !2259)
!2261 = !DILocation(line: 32, column: 56, scope: !2259)
!2262 = !DILocation(line: 32, column: 47, scope: !2259)
!2263 = !DILocation(line: 33, column: 22, scope: !2259)
!2264 = !DILocation(line: 34, column: 24, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2259, file: !2239, line: 34, column: 11)
!2266 = !DILocation(line: 34, column: 11, scope: !2259)
!2267 = !DILocation(line: 36, column: 29, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !2239, line: 36, column: 16)
!2269 = !DILocation(line: 36, column: 16, scope: !2265)
!2270 = !DILocation(line: 37, column: 14, scope: !2268)
!2271 = distinct !{!2271, !2255, !2272}
!2272 = !DILocation(line: 40, column: 5, scope: !2238)
!2273 = !DILocation(line: 43, column: 1, scope: !2238)
!2274 = distinct !DISubprogram(name: "atof", scope: !2275, file: !2275, line: 25, type: !2276, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2279)
!2275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!2278, !462}
!2278 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2279 = !{!2280}
!2280 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2274, file: !2275, line: 25, type: !462)
!2281 = !DILocation(line: 0, scope: !2274)
!2282 = !DILocation(line: 27, column: 10, scope: !2274)
!2283 = !DILocation(line: 27, column: 3, scope: !2274)
!2284 = distinct !DISubprogram(name: "strtoimax", scope: !2285, file: !2285, line: 324, type: !2286, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2292)
!2285 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!2288, !2096, !2291, !13}
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2289, line: 101, baseType: !2290)
!2289 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !36, line: 72, baseType: !37)
!2291 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1973)
!2292 = !{!2293, !2294, !2295}
!2293 = !DILocalVariable(name: "nptr", arg: 1, scope: !2284, file: !2285, line: 324, type: !2096)
!2294 = !DILocalVariable(name: "endptr", arg: 2, scope: !2284, file: !2285, line: 324, type: !2291)
!2295 = !DILocalVariable(name: "base", arg: 3, scope: !2284, file: !2285, line: 324, type: !13)
!2296 = !DILocation(line: 0, scope: !2284)
!2297 = !DILocation(line: 327, column: 10, scope: !2284)
!2298 = !DILocation(line: 327, column: 3, scope: !2284)
!2299 = distinct !DISubprogram(name: "strtoumax", scope: !2285, file: !2285, line: 336, type: !2300, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2304)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!2302, !2096, !2291, !13}
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2289, line: 102, baseType: !2303)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !36, line: 73, baseType: !63)
!2304 = !{!2305, !2306, !2307}
!2305 = !DILocalVariable(name: "nptr", arg: 1, scope: !2299, file: !2285, line: 336, type: !2096)
!2306 = !DILocalVariable(name: "endptr", arg: 2, scope: !2299, file: !2285, line: 336, type: !2291)
!2307 = !DILocalVariable(name: "base", arg: 3, scope: !2299, file: !2285, line: 336, type: !13)
!2308 = !DILocation(line: 0, scope: !2299)
!2309 = !DILocation(line: 339, column: 10, scope: !2299)
!2310 = !DILocation(line: 339, column: 3, scope: !2299)
!2311 = distinct !DISubprogram(name: "wcstoimax", scope: !2285, file: !2285, line: 348, type: !2312, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2321)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!2288, !2314, !2318, !13}
!2314 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2315)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!2317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2285, line: 34, baseType: !13)
!2318 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2319)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2321 = !{!2322, !2323, !2324}
!2322 = !DILocalVariable(name: "nptr", arg: 1, scope: !2311, file: !2285, line: 348, type: !2314)
!2323 = !DILocalVariable(name: "endptr", arg: 2, scope: !2311, file: !2285, line: 348, type: !2318)
!2324 = !DILocalVariable(name: "base", arg: 3, scope: !2311, file: !2285, line: 348, type: !13)
!2325 = !DILocation(line: 0, scope: !2311)
!2326 = !DILocation(line: 351, column: 10, scope: !2311)
!2327 = !DILocation(line: 351, column: 3, scope: !2311)
!2328 = distinct !DISubprogram(name: "wcstoumax", scope: !2285, file: !2285, line: 362, type: !2329, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!2302, !2314, !2318, !13}
!2331 = !{!2332, !2333, !2334}
!2332 = !DILocalVariable(name: "nptr", arg: 1, scope: !2328, file: !2285, line: 362, type: !2314)
!2333 = !DILocalVariable(name: "endptr", arg: 2, scope: !2328, file: !2285, line: 362, type: !2318)
!2334 = !DILocalVariable(name: "base", arg: 3, scope: !2328, file: !2285, line: 362, type: !13)
!2335 = !DILocation(line: 0, scope: !2328)
!2336 = !DILocation(line: 365, column: 10, scope: !2328)
!2337 = !DILocation(line: 365, column: 3, scope: !2328)
!2338 = distinct !DISubprogram(name: "stat", scope: !2339, file: !2339, line: 453, type: !2340, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2377)
!2339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!13, !462, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2344, line: 46, size: 1152, elements: !2345)
!2344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2345 = !{!2346, !2348, !2350, !2352, !2354, !2356, !2358, !2359, !2360, !2361, !2363, !2365, !2373, !2374, !2375}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2343, file: !2344, line: 48, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !36, line: 145, baseType: !63)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2343, file: !2344, line: 53, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !36, line: 148, baseType: !63)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2343, file: !2344, line: 61, baseType: !2351, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !36, line: 151, baseType: !63)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2343, file: !2344, line: 62, baseType: !2353, size: 32, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !36, line: 150, baseType: !89)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2343, file: !2344, line: 64, baseType: !2355, size: 32, offset: 224)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !36, line: 146, baseType: !89)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2343, file: !2344, line: 65, baseType: !2357, size: 32, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !36, line: 147, baseType: !89)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2343, file: !2344, line: 67, baseType: !13, size: 32, offset: 288)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2343, file: !2344, line: 69, baseType: !2347, size: 64, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2343, file: !2344, line: 74, baseType: !35, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2343, file: !2344, line: 78, baseType: !2362, size: 64, offset: 448)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !36, line: 174, baseType: !37)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2343, file: !2344, line: 80, baseType: !2364, size: 64, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !36, line: 179, baseType: !37)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2343, file: !2344, line: 91, baseType: !2366, size: 128, offset: 576)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2367, line: 10, size: 128, elements: !2368)
!2367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2368 = !{!2369, !2371}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2366, file: !2367, line: 12, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !36, line: 160, baseType: !37)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2366, file: !2367, line: 16, baseType: !2372, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !36, line: 196, baseType: !37)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2343, file: !2344, line: 92, baseType: !2366, size: 128, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2343, file: !2344, line: 93, baseType: !2366, size: 128, offset: 832)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2343, file: !2344, line: 106, baseType: !2376, size: 192, offset: 960)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2372, size: 192, elements: !209)
!2377 = !{!2378, !2379}
!2378 = !DILocalVariable(name: "__path", arg: 1, scope: !2338, file: !2339, line: 453, type: !462)
!2379 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2338, file: !2339, line: 453, type: !2342)
!2380 = !DILocation(line: 0, scope: !2338)
!2381 = !DILocation(line: 455, column: 10, scope: !2338)
!2382 = !DILocation(line: 455, column: 3, scope: !2338)
!2383 = distinct !DISubprogram(name: "lstat", scope: !2339, file: !2339, line: 460, type: !2340, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2384)
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "__path", arg: 1, scope: !2383, file: !2339, line: 460, type: !462)
!2386 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2383, file: !2339, line: 460, type: !2342)
!2387 = !DILocation(line: 0, scope: !2383)
!2388 = !DILocation(line: 462, column: 10, scope: !2383)
!2389 = !DILocation(line: 462, column: 3, scope: !2383)
!2390 = distinct !DISubprogram(name: "fstat", scope: !2339, file: !2339, line: 467, type: !2391, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!13, !13, !2342}
!2393 = !{!2394, !2395}
!2394 = !DILocalVariable(name: "__fd", arg: 1, scope: !2390, file: !2339, line: 467, type: !13)
!2395 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2390, file: !2339, line: 467, type: !2342)
!2396 = !DILocation(line: 0, scope: !2390)
!2397 = !DILocation(line: 469, column: 10, scope: !2390)
!2398 = !DILocation(line: 469, column: 3, scope: !2390)
!2399 = distinct !DISubprogram(name: "fstatat", scope: !2339, file: !2339, line: 474, type: !2400, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!13, !13, !462, !2342, !13}
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DILocalVariable(name: "__fd", arg: 1, scope: !2399, file: !2339, line: 474, type: !13)
!2404 = !DILocalVariable(name: "__filename", arg: 2, scope: !2399, file: !2339, line: 474, type: !462)
!2405 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2399, file: !2339, line: 474, type: !2342)
!2406 = !DILocalVariable(name: "__flag", arg: 4, scope: !2399, file: !2339, line: 474, type: !13)
!2407 = !DILocation(line: 0, scope: !2399)
!2408 = !DILocation(line: 477, column: 10, scope: !2399)
!2409 = !DILocation(line: 477, column: 3, scope: !2399)
!2410 = distinct !DISubprogram(name: "mknod", scope: !2339, file: !2339, line: 483, type: !2411, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!13, !462, !2353, !2347}
!2413 = !{!2414, !2415, !2416}
!2414 = !DILocalVariable(name: "__path", arg: 1, scope: !2410, file: !2339, line: 483, type: !462)
!2415 = !DILocalVariable(name: "__mode", arg: 2, scope: !2410, file: !2339, line: 483, type: !2353)
!2416 = !DILocalVariable(name: "__dev", arg: 3, scope: !2410, file: !2339, line: 483, type: !2347)
!2417 = !DILocation(line: 0, scope: !2410)
!2418 = !DILocation(line: 485, column: 10, scope: !2410)
!2419 = !DILocation(line: 485, column: 3, scope: !2410)
!2420 = distinct !DISubprogram(name: "mknodat", scope: !2339, file: !2339, line: 491, type: !2421, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!13, !13, !462, !2353, !2347}
!2423 = !{!2424, !2425, !2426, !2427}
!2424 = !DILocalVariable(name: "__fd", arg: 1, scope: !2420, file: !2339, line: 491, type: !13)
!2425 = !DILocalVariable(name: "__path", arg: 2, scope: !2420, file: !2339, line: 491, type: !462)
!2426 = !DILocalVariable(name: "__mode", arg: 3, scope: !2420, file: !2339, line: 491, type: !2353)
!2427 = !DILocalVariable(name: "__dev", arg: 4, scope: !2420, file: !2339, line: 491, type: !2347)
!2428 = !DILocation(line: 0, scope: !2420)
!2429 = !DILocation(line: 494, column: 10, scope: !2420)
!2430 = !DILocation(line: 494, column: 3, scope: !2420)
!2431 = distinct !DISubprogram(name: "stat64", scope: !2339, file: !2339, line: 502, type: !2432, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2454)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!13, !462, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2344, line: 119, size: 1152, elements: !2436)
!2436 = !{!2437, !2438, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2450, !2451, !2452, !2453}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2435, file: !2344, line: 121, baseType: !2347, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2435, file: !2344, line: 123, baseType: !2439, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !36, line: 149, baseType: !63)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2435, file: !2344, line: 124, baseType: !2351, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2435, file: !2344, line: 125, baseType: !2353, size: 32, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2435, file: !2344, line: 132, baseType: !2355, size: 32, offset: 224)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2435, file: !2344, line: 133, baseType: !2357, size: 32, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2435, file: !2344, line: 135, baseType: !13, size: 32, offset: 288)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2435, file: !2344, line: 136, baseType: !2347, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2435, file: !2344, line: 137, baseType: !35, size: 64, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2435, file: !2344, line: 143, baseType: !2362, size: 64, offset: 448)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2435, file: !2344, line: 144, baseType: !2449, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !36, line: 180, baseType: !37)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2435, file: !2344, line: 152, baseType: !2366, size: 128, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2435, file: !2344, line: 153, baseType: !2366, size: 128, offset: 704)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2435, file: !2344, line: 154, baseType: !2366, size: 128, offset: 832)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2435, file: !2344, line: 164, baseType: !2376, size: 192, offset: 960)
!2454 = !{!2455, !2456}
!2455 = !DILocalVariable(name: "__path", arg: 1, scope: !2431, file: !2339, line: 502, type: !462)
!2456 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2431, file: !2339, line: 502, type: !2434)
!2457 = !DILocation(line: 0, scope: !2431)
!2458 = !DILocation(line: 504, column: 10, scope: !2431)
!2459 = !DILocation(line: 504, column: 3, scope: !2431)
!2460 = distinct !DISubprogram(name: "lstat64", scope: !2339, file: !2339, line: 509, type: !2432, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2461)
!2461 = !{!2462, !2463}
!2462 = !DILocalVariable(name: "__path", arg: 1, scope: !2460, file: !2339, line: 509, type: !462)
!2463 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2460, file: !2339, line: 509, type: !2434)
!2464 = !DILocation(line: 0, scope: !2460)
!2465 = !DILocation(line: 511, column: 10, scope: !2460)
!2466 = !DILocation(line: 511, column: 3, scope: !2460)
!2467 = distinct !DISubprogram(name: "fstat64", scope: !2339, file: !2339, line: 516, type: !2468, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!13, !13, !2434}
!2470 = !{!2471, !2472}
!2471 = !DILocalVariable(name: "__fd", arg: 1, scope: !2467, file: !2339, line: 516, type: !13)
!2472 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2467, file: !2339, line: 516, type: !2434)
!2473 = !DILocation(line: 0, scope: !2467)
!2474 = !DILocation(line: 518, column: 10, scope: !2467)
!2475 = !DILocation(line: 518, column: 3, scope: !2467)
!2476 = distinct !DISubprogram(name: "fstatat64", scope: !2339, file: !2339, line: 523, type: !2477, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!13, !13, !462, !2434, !13}
!2479 = !{!2480, !2481, !2482, !2483}
!2480 = !DILocalVariable(name: "__fd", arg: 1, scope: !2476, file: !2339, line: 523, type: !13)
!2481 = !DILocalVariable(name: "__filename", arg: 2, scope: !2476, file: !2339, line: 523, type: !462)
!2482 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2476, file: !2339, line: 523, type: !2434)
!2483 = !DILocalVariable(name: "__flag", arg: 4, scope: !2476, file: !2339, line: 523, type: !13)
!2484 = !DILocation(line: 0, scope: !2476)
!2485 = !DILocation(line: 526, column: 10, scope: !2476)
!2486 = !DILocation(line: 526, column: 3, scope: !2476)
!2487 = distinct !DISubprogram(name: "init_flow", scope: !3, file: !3, line: 84, type: !2488, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !725}
!2490 = !{!2491}
!2491 = !DILocalVariable(name: "the_fun", arg: 1, scope: !2487, file: !3, line: 84, type: !725)
!2492 = !DILocation(line: 0, scope: !2487)
!2493 = !DILocation(line: 86, column: 17, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 86, column: 7)
!2495 = !DILocation(line: 86, column: 8, scope: !2494)
!2496 = !DILocation(line: 86, column: 7, scope: !2487)
!2497 = !DILocation(line: 87, column: 20, scope: !2494)
!2498 = !DILocation(line: 87, column: 18, scope: !2494)
!2499 = !DILocation(line: 87, column: 5, scope: !2494)
!2500 = !DILocation(line: 88, column: 3, scope: !2487)
!2501 = !DILocation(line: 88, column: 34, scope: !2487)
!2502 = !DILocation(line: 90, column: 7, scope: !2487)
!2503 = !DILocation(line: 89, column: 3, scope: !2487)
!2504 = !DILocation(line: 90, column: 5, scope: !2487)
!2505 = !DILocation(line: 91, column: 3, scope: !2487)
!2506 = !DILocation(line: 91, column: 43, scope: !2487)
!2507 = !DILocation(line: 91, column: 49, scope: !2487)
!2508 = !DILocation(line: 93, column: 7, scope: !2487)
!2509 = !DILocation(line: 92, column: 3, scope: !2487)
!2510 = !DILocation(line: 93, column: 5, scope: !2487)
!2511 = !DILocation(line: 94, column: 3, scope: !2487)
!2512 = !DILocation(line: 94, column: 42, scope: !2487)
!2513 = !DILocation(line: 94, column: 48, scope: !2487)
!2514 = !DILocation(line: 96, column: 7, scope: !2487)
!2515 = !DILocation(line: 95, column: 3, scope: !2487)
!2516 = !DILocation(line: 95, column: 43, scope: !2487)
!2517 = !DILocation(line: 96, column: 5, scope: !2487)
!2518 = !DILocation(line: 98, column: 7, scope: !2487)
!2519 = !DILocation(line: 97, column: 3, scope: !2487)
!2520 = !DILocation(line: 97, column: 42, scope: !2487)
!2521 = !DILocation(line: 98, column: 5, scope: !2487)
!2522 = !DILocation(line: 99, column: 1, scope: !2487)
!2523 = distinct !DISubprogram(name: "clear_edges", scope: !3, file: !3, line: 114, type: !2524, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null}
!2526 = !{!2527, !2528, !2529}
!2527 = !DILocalVariable(name: "bb", scope: !2523, file: !3, line: 116, type: !901)
!2528 = !DILocalVariable(name: "e", scope: !2523, file: !3, line: 117, type: !69)
!2529 = !DILocalVariable(name: "ei", scope: !2523, file: !3, line: 118, type: !2010)
!2530 = !DILocation(line: 117, column: 3, scope: !2523)
!2531 = !DILocation(line: 118, column: 3, scope: !2523)
!2532 = !DILocation(line: 120, column: 3, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 120, column: 3)
!2534 = !DILocation(line: 0, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 122, column: 7)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 121, column: 5)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 120, column: 3)
!2538 = !DILocation(line: 0, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 122, column: 7)
!2540 = !DILocation(line: 120, column: 3, scope: !2537)
!2541 = !DILocation(line: 0, scope: !2533)
!2542 = !DILocation(line: 0, scope: !2523)
!2543 = !DILocation(line: 122, column: 7, scope: !2535)
!2544 = !DILocation(line: 122, column: 7, scope: !2539)
!2545 = !DILocation(line: 123, column: 13, scope: !2539)
!2546 = !DILocation(line: 123, column: 2, scope: !2539)
!2547 = distinct !{!2547, !2543, !2548}
!2548 = !DILocation(line: 123, column: 14, scope: !2535)
!2549 = !DILocation(line: 124, column: 7, scope: !2536)
!2550 = !DILocation(line: 125, column: 7, scope: !2536)
!2551 = !DILocation(line: 0, scope: !2537)
!2552 = distinct !{!2552, !2532, !2553}
!2553 = !DILocation(line: 126, column: 5, scope: !2533)
!2554 = !DILocation(line: 128, column: 3, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 128, column: 3)
!2556 = !DILocation(line: 128, column: 3, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 128, column: 3)
!2558 = !DILocation(line: 129, column: 16, scope: !2557)
!2559 = !DILocation(line: 129, column: 5, scope: !2557)
!2560 = distinct !{!2560, !2554, !2561}
!2561 = !DILocation(line: 129, column: 17, scope: !2555)
!2562 = !DILocation(line: 130, column: 3, scope: !2523)
!2563 = !DILocation(line: 131, column: 3, scope: !2523)
!2564 = !DILocation(line: 133, column: 3, scope: !2523)
!2565 = !DILocation(line: 134, column: 1, scope: !2523)
!2566 = distinct !DISubprogram(name: "ei_start_1", scope: !73, file: !73, line: 696, type: !2567, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!2010, !2015}
!2569 = !{!2570, !2571}
!2570 = !DILocalVariable(name: "ev", arg: 1, scope: !2566, file: !73, line: 696, type: !2015)
!2571 = !DILocalVariable(name: "i", scope: !2566, file: !73, line: 698, type: !2010)
!2572 = !DILocation(line: 0, scope: !2566)
!2573 = !DILocation(line: 700, column: 5, scope: !2566)
!2574 = !DILocation(line: 700, column: 11, scope: !2566)
!2575 = !DILocation(line: 701, column: 5, scope: !2566)
!2576 = !DILocation(line: 701, column: 15, scope: !2566)
!2577 = !DILocation(line: 703, column: 3, scope: !2566)
!2578 = distinct !DISubprogram(name: "ei_cond", scope: !73, file: !73, line: 771, type: !2579, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2582)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!378, !2010, !2581}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2582 = !{!2583, !2584}
!2583 = !DILocalVariable(name: "ei", arg: 1, scope: !2578, file: !73, line: 771, type: !2010)
!2584 = !DILocalVariable(name: "p", arg: 2, scope: !2578, file: !73, line: 771, type: !2581)
!2585 = !DILocation(line: 0, scope: !2578)
!2586 = !DILocation(line: 773, column: 8, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2578, file: !73, line: 773, column: 7)
!2588 = !DILocation(line: 773, column: 7, scope: !2578)
!2589 = !DILocation(line: 775, column: 12, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2587, file: !73, line: 774, column: 5)
!2591 = !DILocation(line: 776, column: 7, scope: !2590)
!2592 = !DILocation(line: 781, column: 7, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2587, file: !73, line: 779, column: 5)
!2594 = !DILocation(line: 0, scope: !2587)
!2595 = !DILocation(line: 783, column: 1, scope: !2578)
!2596 = distinct !DISubprogram(name: "free_edge", scope: !3, file: !3, line: 105, type: !2597, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !69}
!2599 = !{!2600}
!2600 = !DILocalVariable(name: "e", arg: 1, scope: !2596, file: !3, line: 105, type: !69)
!2601 = !DILocation(line: 0, scope: !2596)
!2602 = !DILocation(line: 107, column: 3, scope: !2596)
!2603 = !DILocation(line: 107, column: 10, scope: !2596)
!2604 = !DILocation(line: 108, column: 13, scope: !2596)
!2605 = !DILocation(line: 108, column: 3, scope: !2596)
!2606 = !DILocation(line: 109, column: 1, scope: !2596)
!2607 = distinct !DISubprogram(name: "ei_next", scope: !73, file: !73, line: 736, type: !2608, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2611)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{null, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2611 = !{!2612}
!2612 = !DILocalVariable(name: "i", arg: 1, scope: !2607, file: !73, line: 736, type: !2610)
!2613 = !DILocation(line: 0, scope: !2607)
!2614 = !DILocation(line: 738, column: 3, scope: !2607)
!2615 = !DILocation(line: 739, column: 11, scope: !2607)
!2616 = !DILocation(line: 740, column: 1, scope: !2607)
!2617 = distinct !DISubprogram(name: "VEC_edge_base_truncate", scope: !73, file: !73, line: 150, type: !2618, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2621)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !2620, !89}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!2621 = !{!2622, !2623}
!2622 = !DILocalVariable(name: "vec_", arg: 1, scope: !2617, file: !73, line: 150, type: !2620)
!2623 = !DILocalVariable(name: "size_", arg: 2, scope: !2617, file: !73, line: 150, type: !89)
!2624 = !DILocation(line: 0, scope: !2617)
!2625 = !DILocation(line: 150, column: 1, scope: !2617)
!2626 = !DILocation(line: 150, column: 1, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2617, file: !73, line: 150, column: 1)
!2628 = distinct !DISubprogram(name: "alloc_block", scope: !3, file: !3, line: 139, type: !2629, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!901}
!2631 = !{!2632}
!2632 = !DILocalVariable(name: "bb", scope: !2628, file: !3, line: 141, type: !901)
!2633 = !DILocation(line: 142, column: 8, scope: !2628)
!2634 = !DILocation(line: 0, scope: !2628)
!2635 = !DILocation(line: 143, column: 3, scope: !2628)
!2636 = distinct !DISubprogram(name: "link_block", scope: !3, file: !3, line: 148, type: !2637, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !901, !901}
!2639 = !{!2640, !2641}
!2640 = !DILocalVariable(name: "b", arg: 1, scope: !2636, file: !3, line: 148, type: !901)
!2641 = !DILocalVariable(name: "after", arg: 2, scope: !2636, file: !3, line: 148, type: !901)
!2642 = !DILocation(line: 0, scope: !2636)
!2643 = !DILocation(line: 150, column: 23, scope: !2636)
!2644 = !DILocation(line: 150, column: 6, scope: !2636)
!2645 = !DILocation(line: 150, column: 14, scope: !2636)
!2646 = !DILocation(line: 151, column: 6, scope: !2636)
!2647 = !DILocation(line: 151, column: 14, scope: !2636)
!2648 = !DILocation(line: 152, column: 18, scope: !2636)
!2649 = !DILocation(line: 153, column: 6, scope: !2636)
!2650 = !DILocation(line: 153, column: 15, scope: !2636)
!2651 = !DILocation(line: 153, column: 23, scope: !2636)
!2652 = !DILocation(line: 154, column: 1, scope: !2636)
!2653 = distinct !DISubprogram(name: "unlink_block", scope: !3, file: !3, line: 158, type: !2654, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{null, !901}
!2656 = !{!2657}
!2657 = !DILocalVariable(name: "b", arg: 1, scope: !2653, file: !3, line: 158, type: !901)
!2658 = !DILocation(line: 0, scope: !2653)
!2659 = !DILocation(line: 160, column: 28, scope: !2653)
!2660 = !DILocation(line: 160, column: 6, scope: !2653)
!2661 = !DILocation(line: 160, column: 15, scope: !2653)
!2662 = !DILocation(line: 160, column: 23, scope: !2653)
!2663 = !DILocation(line: 161, column: 28, scope: !2653)
!2664 = !DILocation(line: 161, column: 6, scope: !2653)
!2665 = !DILocation(line: 161, column: 15, scope: !2653)
!2666 = !DILocation(line: 161, column: 23, scope: !2653)
!2667 = !DILocation(line: 162, column: 14, scope: !2653)
!2668 = !DILocation(line: 163, column: 14, scope: !2653)
!2669 = !DILocation(line: 164, column: 1, scope: !2653)
!2670 = distinct !DISubprogram(name: "compact_blocks", scope: !3, file: !3, line: 168, type: !2524, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2671)
!2671 = !{!2672, !2673}
!2672 = !DILocalVariable(name: "i", scope: !2670, file: !3, line: 170, type: !13)
!2673 = !DILocalVariable(name: "bb", scope: !2674, file: !3, line: 179, type: !901)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 178, column: 5)
!2675 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 175, column: 7)
!2676 = !DILocation(line: 172, column: 3, scope: !2670)
!2677 = !DILocation(line: 173, column: 3, scope: !2670)
!2678 = !DILocation(line: 175, column: 7, scope: !2675)
!2679 = !DILocation(line: 175, column: 7, scope: !2670)
!2680 = !DILocation(line: 176, column: 5, scope: !2675)
!2681 = !DILocation(line: 193, column: 22, scope: !2670)
!2682 = !DILocation(line: 0, scope: !2670)
!2683 = !DILocation(line: 182, column: 7, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 182, column: 7)
!2685 = !DILocation(line: 182, column: 7, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 182, column: 7)
!2687 = !DILocation(line: 0, scope: !2674)
!2688 = !DILocation(line: 0, scope: !2684)
!2689 = !DILocation(line: 184, column: 4, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 183, column: 2)
!2691 = !DILocation(line: 185, column: 8, scope: !2690)
!2692 = !DILocation(line: 185, column: 14, scope: !2690)
!2693 = !DILocation(line: 186, column: 5, scope: !2690)
!2694 = !DILocation(line: 0, scope: !2686)
!2695 = distinct !{!2695, !2683, !2696}
!2696 = !DILocation(line: 187, column: 2, scope: !2684)
!2697 = !DILocation(line: 188, column: 7, scope: !2674)
!2698 = !DILocation(line: 190, column: 7, scope: !2674)
!2699 = !DILocation(line: 190, column: 18, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 190, column: 7)
!2701 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 190, column: 7)
!2702 = !DILocation(line: 190, column: 16, scope: !2700)
!2703 = !DILocation(line: 190, column: 7, scope: !2701)
!2704 = !DILocation(line: 191, column: 2, scope: !2700)
!2705 = !DILocation(line: 190, column: 37, scope: !2700)
!2706 = !DILocation(line: 190, column: 7, scope: !2700)
!2707 = distinct !{!2707, !2703, !2708}
!2708 = !DILocation(line: 191, column: 2, scope: !2701)
!2709 = !DILocation(line: 193, column: 3, scope: !2670)
!2710 = !DILocation(line: 193, column: 20, scope: !2670)
!2711 = !DILocation(line: 194, column: 1, scope: !2670)
!2712 = distinct !DISubprogram(name: "VEC_basic_block_base_replace", scope: !73, file: !73, line: 281, type: !2713, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2716)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!901, !2715, !89, !901}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DILocalVariable(name: "vec_", arg: 1, scope: !2712, file: !73, line: 281, type: !2715)
!2718 = !DILocalVariable(name: "ix_", arg: 2, scope: !2712, file: !73, line: 281, type: !89)
!2719 = !DILocalVariable(name: "obj_", arg: 3, scope: !2712, file: !73, line: 281, type: !901)
!2720 = !DILocalVariable(name: "old_obj_", scope: !2712, file: !73, line: 281, type: !901)
!2721 = !DILocation(line: 0, scope: !2712)
!2722 = !DILocation(line: 281, column: 1, scope: !2712)
!2723 = distinct !DISubprogram(name: "expunge_block", scope: !3, file: !3, line: 199, type: !2654, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2724)
!2724 = !{!2725}
!2725 = !DILocalVariable(name: "b", arg: 1, scope: !2723, file: !3, line: 199, type: !901)
!2726 = !DILocation(line: 0, scope: !2723)
!2727 = !DILocation(line: 201, column: 3, scope: !2723)
!2728 = !DILocation(line: 202, column: 3, scope: !2723)
!2729 = !DILocation(line: 203, column: 3, scope: !2723)
!2730 = !DILocation(line: 203, column: 17, scope: !2723)
!2731 = !DILocation(line: 209, column: 1, scope: !2723)
!2732 = distinct !DISubprogram(name: "unchecked_make_edge", scope: !3, file: !3, line: 277, type: !2733, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!69, !901, !901, !13}
!2735 = !{!2736, !2737, !2738, !2739}
!2736 = !DILocalVariable(name: "src", arg: 1, scope: !2732, file: !3, line: 277, type: !901)
!2737 = !DILocalVariable(name: "dst", arg: 2, scope: !2732, file: !3, line: 277, type: !901)
!2738 = !DILocalVariable(name: "flags", arg: 3, scope: !2732, file: !3, line: 277, type: !13)
!2739 = !DILocalVariable(name: "e", scope: !2732, file: !3, line: 279, type: !69)
!2740 = !DILocation(line: 0, scope: !2732)
!2741 = !DILocation(line: 280, column: 7, scope: !2732)
!2742 = !DILocation(line: 281, column: 3, scope: !2732)
!2743 = !DILocation(line: 281, column: 10, scope: !2732)
!2744 = !DILocation(line: 283, column: 6, scope: !2732)
!2745 = !DILocation(line: 283, column: 10, scope: !2732)
!2746 = !DILocation(line: 284, column: 6, scope: !2732)
!2747 = !DILocation(line: 284, column: 11, scope: !2732)
!2748 = !DILocation(line: 285, column: 6, scope: !2732)
!2749 = !DILocation(line: 285, column: 12, scope: !2732)
!2750 = !DILocation(line: 287, column: 3, scope: !2732)
!2751 = !DILocation(line: 288, column: 3, scope: !2732)
!2752 = !DILocation(line: 290, column: 3, scope: !2732)
!2753 = !DILocation(line: 291, column: 3, scope: !2732)
!2754 = distinct !DISubprogram(name: "connect_src", scope: !3, file: !3, line: 214, type: !2597, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2755)
!2755 = !{!2756}
!2756 = !DILocalVariable(name: "e", arg: 1, scope: !2754, file: !3, line: 214, type: !69)
!2757 = !DILocation(line: 0, scope: !2754)
!2758 = !DILocation(line: 216, column: 3, scope: !2754)
!2759 = !DILocation(line: 217, column: 3, scope: !2754)
!2760 = !DILocation(line: 218, column: 1, scope: !2754)
!2761 = distinct !DISubprogram(name: "connect_dest", scope: !3, file: !3, line: 223, type: !2597, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2762)
!2762 = !{!2763, !2764}
!2763 = !DILocalVariable(name: "e", arg: 1, scope: !2761, file: !3, line: 223, type: !69)
!2764 = !DILocalVariable(name: "dest", scope: !2761, file: !3, line: 225, type: !901)
!2765 = !DILocation(line: 0, scope: !2761)
!2766 = !DILocation(line: 225, column: 25, scope: !2761)
!2767 = !DILocation(line: 226, column: 3, scope: !2761)
!2768 = !DILocation(line: 227, column: 17, scope: !2761)
!2769 = !DILocation(line: 227, column: 42, scope: !2761)
!2770 = !DILocation(line: 227, column: 6, scope: !2761)
!2771 = !DILocation(line: 227, column: 15, scope: !2761)
!2772 = !DILocation(line: 228, column: 3, scope: !2761)
!2773 = !DILocation(line: 229, column: 1, scope: !2761)
!2774 = distinct !DISubprogram(name: "cached_make_edge", scope: !3, file: !3, line: 298, type: !2775, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2787)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!69, !2777, !901, !901, !13}
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !2778, line: 45, baseType: !2779)
!2778 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !2778, line: 39, size: 192, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !2780, file: !2778, line: 41, baseType: !1972, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !2780, file: !2778, line: 42, baseType: !89, size: 32, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2780, file: !2778, line: 43, baseType: !89, size: 32, offset: 96)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2780, file: !2778, line: 44, baseType: !2786, size: 64, offset: 128)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 64, elements: !44)
!2787 = !{!2788, !2789, !2790, !2791, !2792}
!2788 = !DILocalVariable(name: "edge_cache", arg: 1, scope: !2774, file: !3, line: 298, type: !2777)
!2789 = !DILocalVariable(name: "src", arg: 2, scope: !2774, file: !3, line: 298, type: !901)
!2790 = !DILocalVariable(name: "dst", arg: 3, scope: !2774, file: !3, line: 298, type: !901)
!2791 = !DILocalVariable(name: "flags", arg: 4, scope: !2774, file: !3, line: 298, type: !13)
!2792 = !DILocalVariable(name: "e", scope: !2793, file: !3, line: 318, type: !69)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 317, column: 5)
!2794 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 316, column: 7)
!2795 = !DILocation(line: 0, scope: !2774)
!2796 = !DILocation(line: 300, column: 18, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 300, column: 7)
!2798 = !DILocation(line: 301, column: 7, scope: !2797)
!2799 = !DILocation(line: 301, column: 17, scope: !2797)
!2800 = !DILocation(line: 301, column: 14, scope: !2797)
!2801 = !DILocation(line: 302, column: 7, scope: !2797)
!2802 = !DILocation(line: 302, column: 17, scope: !2797)
!2803 = !DILocation(line: 302, column: 14, scope: !2797)
!2804 = !DILocation(line: 300, column: 7, scope: !2774)
!2805 = !DILocation(line: 303, column: 12, scope: !2797)
!2806 = !DILocation(line: 303, column: 5, scope: !2797)
!2807 = !DILocation(line: 306, column: 9, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 306, column: 7)
!2809 = !DILocation(line: 306, column: 7, scope: !2774)
!2810 = !DILocation(line: 310, column: 7, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 307, column: 5)
!2812 = !DILocation(line: 311, column: 14, scope: !2811)
!2813 = !DILocation(line: 311, column: 7, scope: !2811)
!2814 = !DILocation(line: 316, column: 7, scope: !2794)
!2815 = !DILocation(line: 316, column: 7, scope: !2774)
!2816 = !DILocation(line: 318, column: 16, scope: !2793)
!2817 = !DILocation(line: 0, scope: !2793)
!2818 = !DILocation(line: 319, column: 10, scope: !2793)
!2819 = !DILocation(line: 319, column: 16, scope: !2793)
!2820 = !DILocation(line: 320, column: 5, scope: !2793)
!2821 = !DILocation(line: 323, column: 1, scope: !2774)
!2822 = distinct !DISubprogram(name: "make_edge", scope: !3, file: !3, line: 329, type: !2733, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2823)
!2823 = !{!2824, !2825, !2826, !2827}
!2824 = !DILocalVariable(name: "src", arg: 1, scope: !2822, file: !3, line: 329, type: !901)
!2825 = !DILocalVariable(name: "dest", arg: 2, scope: !2822, file: !3, line: 329, type: !901)
!2826 = !DILocalVariable(name: "flags", arg: 3, scope: !2822, file: !3, line: 329, type: !13)
!2827 = !DILocalVariable(name: "e", scope: !2822, file: !3, line: 331, type: !69)
!2828 = !DILocation(line: 0, scope: !2822)
!2829 = !DILocation(line: 331, column: 12, scope: !2822)
!2830 = !DILocation(line: 334, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 334, column: 7)
!2832 = !DILocation(line: 334, column: 7, scope: !2822)
!2833 = !DILocation(line: 336, column: 10, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 335, column: 5)
!2835 = !DILocation(line: 336, column: 16, scope: !2834)
!2836 = !DILocation(line: 337, column: 7, scope: !2834)
!2837 = !DILocation(line: 340, column: 10, scope: !2822)
!2838 = !DILocation(line: 340, column: 3, scope: !2822)
!2839 = !DILocation(line: 341, column: 1, scope: !2822)
!2840 = distinct !DISubprogram(name: "SET_BIT", scope: !2778, file: !2778, line: 63, type: !2841, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !2777, !89}
!2843 = !{!2844, !2845, !2846}
!2844 = !DILocalVariable(name: "map", arg: 1, scope: !2840, file: !2778, line: 63, type: !2777)
!2845 = !DILocalVariable(name: "bitno", arg: 2, scope: !2840, file: !2778, line: 63, type: !89)
!2846 = !DILocalVariable(name: "oldbit", scope: !2847, file: !2778, line: 67, type: !378)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !2778, line: 66, column: 5)
!2848 = distinct !DILexicalBlock(scope: !2840, file: !2778, line: 65, column: 7)
!2849 = !DILocation(line: 0, scope: !2840)
!2850 = !DILocation(line: 65, column: 12, scope: !2848)
!2851 = !DILocation(line: 65, column: 7, scope: !2848)
!2852 = !DILocation(line: 65, column: 7, scope: !2840)
!2853 = !DILocation(line: 73, column: 40, scope: !2840)
!2854 = !DILocation(line: 73, column: 29, scope: !2840)
!2855 = !DILocation(line: 72, column: 19, scope: !2840)
!2856 = !DILocation(line: 72, column: 3, scope: !2840)
!2857 = !DILocation(line: 68, column: 16, scope: !2847)
!2858 = !DILocation(line: 69, column: 12, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2847, file: !2778, line: 69, column: 11)
!2860 = !DILocation(line: 69, column: 11, scope: !2847)
!2861 = !DILocation(line: 70, column: 2, scope: !2859)
!2862 = !DILocation(line: 70, column: 41, scope: !2859)
!2863 = !DILocation(line: 73, column: 5, scope: !2840)
!2864 = !DILocation(line: 74, column: 1, scope: !2840)
!2865 = distinct !DISubprogram(name: "make_single_succ_edge", scope: !3, file: !3, line: 347, type: !2733, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2866)
!2866 = !{!2867, !2868, !2869, !2870}
!2867 = !DILocalVariable(name: "src", arg: 1, scope: !2865, file: !3, line: 347, type: !901)
!2868 = !DILocalVariable(name: "dest", arg: 2, scope: !2865, file: !3, line: 347, type: !901)
!2869 = !DILocalVariable(name: "flags", arg: 3, scope: !2865, file: !3, line: 347, type: !13)
!2870 = !DILocalVariable(name: "e", scope: !2865, file: !3, line: 349, type: !69)
!2871 = !DILocation(line: 0, scope: !2865)
!2872 = !DILocation(line: 349, column: 12, scope: !2865)
!2873 = !DILocation(line: 351, column: 6, scope: !2865)
!2874 = !DILocation(line: 351, column: 18, scope: !2865)
!2875 = !DILocation(line: 352, column: 19, scope: !2865)
!2876 = !DILocation(line: 352, column: 6, scope: !2865)
!2877 = !DILocation(line: 352, column: 12, scope: !2865)
!2878 = !DILocation(line: 353, column: 3, scope: !2865)
!2879 = distinct !DISubprogram(name: "remove_edge_raw", scope: !3, file: !3, line: 359, type: !2597, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2880)
!2880 = !{!2881}
!2881 = !DILocalVariable(name: "e", arg: 1, scope: !2879, file: !3, line: 359, type: !69)
!2882 = !DILocation(line: 0, scope: !2879)
!2883 = !DILocation(line: 361, column: 3, scope: !2879)
!2884 = !DILocation(line: 362, column: 3, scope: !2879)
!2885 = !DILocation(line: 364, column: 3, scope: !2879)
!2886 = !DILocation(line: 365, column: 3, scope: !2879)
!2887 = !DILocation(line: 368, column: 3, scope: !2879)
!2888 = !DILocation(line: 370, column: 3, scope: !2879)
!2889 = !DILocation(line: 371, column: 1, scope: !2879)
!2890 = distinct !DISubprogram(name: "disconnect_src", scope: !3, file: !3, line: 234, type: !2597, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2891)
!2891 = !{!2892, !2893, !2894, !2895}
!2892 = !DILocalVariable(name: "e", arg: 1, scope: !2890, file: !3, line: 234, type: !69)
!2893 = !DILocalVariable(name: "src", scope: !2890, file: !3, line: 236, type: !901)
!2894 = !DILocalVariable(name: "ei", scope: !2890, file: !3, line: 237, type: !2010)
!2895 = !DILocalVariable(name: "tmp", scope: !2890, file: !3, line: 238, type: !69)
!2896 = !DILocation(line: 0, scope: !2890)
!2897 = !DILocation(line: 236, column: 24, scope: !2890)
!2898 = !DILocation(line: 237, column: 3, scope: !2890)
!2899 = !DILocation(line: 240, column: 13, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 240, column: 3)
!2901 = !DILocation(line: 0, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 240, column: 3)
!2903 = !DILocation(line: 240, column: 8, scope: !2900)
!2904 = !DILocation(line: 240, column: 43, scope: !2902)
!2905 = !DILocation(line: 240, column: 3, scope: !2900)
!2906 = !DILocation(line: 242, column: 15, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 242, column: 11)
!2908 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 241, column: 5)
!2909 = !DILocation(line: 242, column: 11, scope: !2908)
!2910 = !DILocation(line: 244, column: 4, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 243, column: 2)
!2912 = !DILocation(line: 245, column: 4, scope: !2911)
!2913 = !DILocation(line: 248, column: 2, scope: !2907)
!2914 = !DILocation(line: 240, column: 3, scope: !2902)
!2915 = distinct !{!2915, !2905, !2916}
!2916 = !DILocation(line: 249, column: 5, scope: !2900)
!2917 = !DILocation(line: 251, column: 3, scope: !2890)
!2918 = !DILocation(line: 252, column: 3, scope: !2890)
!2919 = !DILocation(line: 253, column: 1, scope: !2890)
!2920 = distinct !DISubprogram(name: "disconnect_dest", scope: !3, file: !3, line: 258, type: !2597, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2921)
!2921 = !{!2922, !2923, !2924}
!2922 = !DILocalVariable(name: "e", arg: 1, scope: !2920, file: !3, line: 258, type: !69)
!2923 = !DILocalVariable(name: "dest", scope: !2920, file: !3, line: 260, type: !901)
!2924 = !DILocalVariable(name: "dest_idx", scope: !2920, file: !3, line: 261, type: !89)
!2925 = !DILocation(line: 0, scope: !2920)
!2926 = !DILocation(line: 260, column: 25, scope: !2920)
!2927 = !DILocation(line: 261, column: 30, scope: !2920)
!2928 = !DILocation(line: 263, column: 3, scope: !2920)
!2929 = !DILocation(line: 267, column: 18, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 267, column: 7)
!2931 = !DILocation(line: 267, column: 16, scope: !2930)
!2932 = !DILocation(line: 267, column: 7, scope: !2920)
!2933 = !DILocation(line: 268, column: 5, scope: !2930)
!2934 = !DILocation(line: 268, column: 33, scope: !2930)
!2935 = !DILocation(line: 268, column: 42, scope: !2930)
!2936 = !DILocation(line: 269, column: 3, scope: !2920)
!2937 = !DILocation(line: 270, column: 1, scope: !2920)
!2938 = distinct !DISubprogram(name: "redirect_edge_succ", scope: !3, file: !3, line: 376, type: !2939, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !69, !901}
!2941 = !{!2942, !2943}
!2942 = !DILocalVariable(name: "e", arg: 1, scope: !2938, file: !3, line: 376, type: !69)
!2943 = !DILocalVariable(name: "new_succ", arg: 2, scope: !2938, file: !3, line: 376, type: !901)
!2944 = !DILocation(line: 0, scope: !2938)
!2945 = !DILocation(line: 378, column: 3, scope: !2938)
!2946 = !DILocation(line: 380, column: 3, scope: !2938)
!2947 = !DILocation(line: 382, column: 6, scope: !2938)
!2948 = !DILocation(line: 382, column: 11, scope: !2938)
!2949 = !DILocation(line: 385, column: 3, scope: !2938)
!2950 = !DILocation(line: 387, column: 3, scope: !2938)
!2951 = !DILocation(line: 388, column: 1, scope: !2938)
!2952 = distinct !DISubprogram(name: "redirect_edge_succ_nodup", scope: !3, file: !3, line: 393, type: !2953, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!69, !69, !901}
!2955 = !{!2956, !2957, !2958}
!2956 = !DILocalVariable(name: "e", arg: 1, scope: !2952, file: !3, line: 393, type: !69)
!2957 = !DILocalVariable(name: "new_succ", arg: 2, scope: !2952, file: !3, line: 393, type: !901)
!2958 = !DILocalVariable(name: "s", scope: !2952, file: !3, line: 395, type: !69)
!2959 = !DILocation(line: 0, scope: !2952)
!2960 = !DILocation(line: 397, column: 21, scope: !2952)
!2961 = !DILocation(line: 397, column: 7, scope: !2952)
!2962 = !DILocation(line: 398, column: 7, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 398, column: 7)
!2964 = !DILocation(line: 398, column: 14, scope: !2963)
!2965 = !DILocation(line: 398, column: 9, scope: !2963)
!2966 = !DILocation(line: 400, column: 22, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 399, column: 5)
!2968 = !DILocation(line: 400, column: 10, scope: !2967)
!2969 = !DILocation(line: 400, column: 16, scope: !2967)
!2970 = !DILocation(line: 401, column: 28, scope: !2967)
!2971 = !DILocation(line: 401, column: 10, scope: !2967)
!2972 = !DILocation(line: 401, column: 22, scope: !2967)
!2973 = !DILocation(line: 402, column: 26, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 402, column: 11)
!2975 = !DILocation(line: 402, column: 11, scope: !2967)
!2976 = !DILocation(line: 403, column: 2, scope: !2974)
!2977 = !DILocation(line: 0, scope: !2967)
!2978 = !DILocation(line: 404, column: 22, scope: !2967)
!2979 = !DILocation(line: 404, column: 10, scope: !2967)
!2980 = !DILocation(line: 404, column: 16, scope: !2967)
!2981 = !DILocation(line: 405, column: 7, scope: !2967)
!2982 = !DILocation(line: 406, column: 7, scope: !2967)
!2983 = !DILocation(line: 408, column: 5, scope: !2967)
!2984 = !DILocation(line: 410, column: 5, scope: !2963)
!2985 = !DILocation(line: 412, column: 3, scope: !2952)
!2986 = distinct !DISubprogram(name: "redirect_edge_pred", scope: !3, file: !3, line: 418, type: !2939, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2987)
!2987 = !{!2988, !2989}
!2988 = !DILocalVariable(name: "e", arg: 1, scope: !2986, file: !3, line: 418, type: !69)
!2989 = !DILocalVariable(name: "new_pred", arg: 2, scope: !2986, file: !3, line: 418, type: !901)
!2990 = !DILocation(line: 0, scope: !2986)
!2991 = !DILocation(line: 420, column: 3, scope: !2986)
!2992 = !DILocation(line: 422, column: 6, scope: !2986)
!2993 = !DILocation(line: 422, column: 10, scope: !2986)
!2994 = !DILocation(line: 425, column: 3, scope: !2986)
!2995 = !DILocation(line: 426, column: 1, scope: !2986)
!2996 = distinct !DISubprogram(name: "clear_bb_flags", scope: !3, file: !3, line: 431, type: !2524, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2997)
!2997 = !{!2998}
!2998 = !DILocalVariable(name: "bb", scope: !2996, file: !3, line: 433, type: !901)
!2999 = !DILocation(line: 435, column: 3, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 435, column: 3)
!3001 = !DILocation(line: 0, scope: !3000)
!3002 = !DILocation(line: 0, scope: !2996)
!3003 = !DILocation(line: 435, column: 3, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 435, column: 3)
!3005 = !DILocation(line: 436, column: 18, scope: !3004)
!3006 = !DILocation(line: 437, column: 4, scope: !3004)
!3007 = !DILocation(line: 436, column: 15, scope: !3004)
!3008 = distinct !{!3008, !2999, !3009}
!3009 = !DILocation(line: 437, column: 77, scope: !3000)
!3010 = !DILocation(line: 438, column: 1, scope: !2996)
!3011 = distinct !DISubprogram(name: "check_bb_profile", scope: !3, file: !3, line: 446, type: !3012, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !901, !6}
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3020}
!3015 = !DILocalVariable(name: "bb", arg: 1, scope: !3011, file: !3, line: 446, type: !901)
!3016 = !DILocalVariable(name: "file", arg: 2, scope: !3011, file: !3, line: 446, type: !6)
!3017 = !DILocalVariable(name: "e", scope: !3011, file: !3, line: 448, type: !69)
!3018 = !DILocalVariable(name: "sum", scope: !3011, file: !3, line: 449, type: !13)
!3019 = !DILocalVariable(name: "lsum", scope: !3011, file: !3, line: 450, type: !1920)
!3020 = !DILocalVariable(name: "ei", scope: !3011, file: !3, line: 451, type: !2010)
!3021 = !DILocation(line: 0, scope: !3011)
!3022 = !DILocation(line: 448, column: 3, scope: !3011)
!3023 = !DILocation(line: 451, column: 3, scope: !3011)
!3024 = !DILocation(line: 453, column: 7, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 453, column: 7)
!3026 = !DILocation(line: 453, column: 22, scope: !3025)
!3027 = !DILocation(line: 453, column: 7, scope: !3011)
!3028 = !DILocation(line: 456, column: 13, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 456, column: 7)
!3030 = !DILocation(line: 456, column: 10, scope: !3029)
!3031 = !DILocation(line: 456, column: 7, scope: !3011)
!3032 = !DILocation(line: 458, column: 7, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 458, column: 7)
!3034 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 457, column: 5)
!3035 = !DILocation(line: 0, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 458, column: 7)
!3037 = !DILocation(line: 458, column: 7, scope: !3036)
!3038 = !DILocation(line: 459, column: 9, scope: !3036)
!3039 = !DILocation(line: 459, column: 12, scope: !3036)
!3040 = !DILocation(line: 459, column: 6, scope: !3036)
!3041 = distinct !{!3041, !3032, !3042}
!3042 = !DILocation(line: 459, column: 12, scope: !3033)
!3043 = !DILocation(line: 460, column: 11, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 460, column: 11)
!3045 = !DILocation(line: 460, column: 34, scope: !3044)
!3046 = !DILocation(line: 460, column: 46, scope: !3044)
!3047 = !DILocation(line: 460, column: 37, scope: !3044)
!3048 = !DILocation(line: 460, column: 66, scope: !3044)
!3049 = !DILocation(line: 460, column: 11, scope: !3034)
!3050 = !DILocation(line: 462, column: 4, scope: !3044)
!3051 = !DILocation(line: 462, column: 8, scope: !3044)
!3052 = !DILocation(line: 462, column: 16, scope: !3044)
!3053 = !DILocation(line: 461, column: 2, scope: !3044)
!3054 = !DILocation(line: 464, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 464, column: 7)
!3056 = !DILocation(line: 0, scope: !3034)
!3057 = !DILocation(line: 464, column: 7, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 464, column: 7)
!3059 = !DILocation(line: 465, column: 10, scope: !3058)
!3060 = !DILocation(line: 465, column: 13, scope: !3058)
!3061 = !DILocation(line: 465, column: 7, scope: !3058)
!3062 = distinct !{!3062, !3054, !3063}
!3063 = !DILocation(line: 465, column: 13, scope: !3055)
!3064 = !DILocation(line: 466, column: 11, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 466, column: 11)
!3066 = !DILocation(line: 467, column: 4, scope: !3065)
!3067 = !DILocation(line: 467, column: 19, scope: !3065)
!3068 = !DILocation(line: 467, column: 13, scope: !3065)
!3069 = !DILocation(line: 467, column: 25, scope: !3065)
!3070 = !DILocation(line: 467, column: 31, scope: !3065)
!3071 = !DILocation(line: 467, column: 51, scope: !3065)
!3072 = !DILocation(line: 466, column: 11, scope: !3034)
!3073 = !DILocation(line: 469, column: 4, scope: !3065)
!3074 = !DILocation(line: 469, column: 16, scope: !3065)
!3075 = !DILocation(line: 468, column: 2, scope: !3065)
!3076 = !DILocation(line: 471, column: 13, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 471, column: 7)
!3078 = !DILocation(line: 471, column: 10, scope: !3077)
!3079 = !DILocation(line: 471, column: 7, scope: !3011)
!3080 = !DILocation(line: 474, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 474, column: 7)
!3082 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 472, column: 5)
!3083 = !DILocation(line: 0, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 474, column: 7)
!3085 = !DILocation(line: 0, scope: !3082)
!3086 = !DILocation(line: 474, column: 7, scope: !3084)
!3087 = !DILocation(line: 475, column: 9, scope: !3084)
!3088 = !DILocation(line: 475, column: 6, scope: !3084)
!3089 = distinct !{!3089, !3080, !3090}
!3090 = !DILocation(line: 475, column: 9, scope: !3081)
!3091 = !DILocation(line: 476, column: 26, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 476, column: 11)
!3093 = !DILocation(line: 476, column: 20, scope: !3092)
!3094 = !DILocation(line: 476, column: 11, scope: !3092)
!3095 = !DILocation(line: 476, column: 37, scope: !3092)
!3096 = !DILocation(line: 476, column: 11, scope: !3082)
!3097 = !DILocation(line: 479, column: 13, scope: !3092)
!3098 = !DILocation(line: 477, column: 2, scope: !3092)
!3099 = !DILocation(line: 481, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 481, column: 7)
!3101 = !DILocation(line: 481, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 481, column: 7)
!3103 = !DILocation(line: 482, column: 10, scope: !3102)
!3104 = !DILocation(line: 482, column: 13, scope: !3102)
!3105 = !DILocation(line: 482, column: 7, scope: !3102)
!3106 = distinct !{!3106, !3099, !3107}
!3107 = !DILocation(line: 482, column: 13, scope: !3100)
!3108 = !DILocation(line: 483, column: 22, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 483, column: 11)
!3110 = !DILocation(line: 483, column: 16, scope: !3109)
!3111 = !DILocation(line: 483, column: 28, scope: !3109)
!3112 = !DILocation(line: 483, column: 34, scope: !3109)
!3113 = !DILocation(line: 483, column: 54, scope: !3109)
!3114 = !DILocation(line: 483, column: 11, scope: !3082)
!3115 = !DILocation(line: 485, column: 4, scope: !3109)
!3116 = !DILocation(line: 485, column: 16, scope: !3109)
!3117 = !DILocation(line: 484, column: 2, scope: !3109)
!3118 = !DILocation(line: 487, column: 1, scope: !3011)
!3119 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !73, file: !73, line: 150, type: !3120, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3124)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!89, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3124 = !{!3125}
!3125 = !DILocalVariable(name: "vec_", arg: 1, scope: !3119, file: !73, line: 150, type: !3122)
!3126 = !DILocation(line: 0, scope: !3119)
!3127 = !DILocation(line: 150, column: 1, scope: !3119)
!3128 = distinct !DISubprogram(name: "dump_regset", scope: !3, file: !3, line: 493, type: !3129, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3132)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{null, !3131, !6}
!3131 = !DIDerivedType(tag: DW_TAG_typedef, name: "regset", file: !73, line: 37, baseType: !1375)
!3132 = !{!3133, !3134, !3135, !3136}
!3133 = !DILocalVariable(name: "r", arg: 1, scope: !3128, file: !3, line: 493, type: !3131)
!3134 = !DILocalVariable(name: "outf", arg: 2, scope: !3128, file: !3, line: 493, type: !6)
!3135 = !DILocalVariable(name: "i", scope: !3128, file: !3, line: 495, type: !89)
!3136 = !DILocalVariable(name: "rsi", scope: !3128, file: !3, line: 496, type: !3137)
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_set_iterator", file: !73, line: 90, baseType: !3138)
!3138 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !492, line: 218, baseType: !3139)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 203, size: 256, elements: !3140)
!3140 = !{!3141, !3142, !3143, !3144}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !3139, file: !492, line: 206, baseType: !495, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !3139, file: !492, line: 209, baseType: !495, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !3139, file: !492, line: 212, baseType: !89, size: 32, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3139, file: !492, line: 217, baseType: !505, size: 64, offset: 192)
!3145 = !DILocation(line: 0, scope: !3128)
!3146 = !DILocation(line: 495, column: 3, scope: !3128)
!3147 = !DILocation(line: 496, column: 3, scope: !3128)
!3148 = !DILocation(line: 498, column: 9, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 498, column: 7)
!3150 = !DILocation(line: 498, column: 7, scope: !3128)
!3151 = !DILocation(line: 500, column: 7, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 499, column: 5)
!3153 = !DILocation(line: 501, column: 7, scope: !3152)
!3154 = !DILocation(line: 504, column: 3, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 504, column: 3)
!3156 = !DILocation(line: 504, column: 3, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 504, column: 3)
!3158 = !DILocation(line: 506, column: 29, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 505, column: 5)
!3160 = !DILocation(line: 506, column: 7, scope: !3159)
!3161 = !DILocation(line: 507, column: 11, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 507, column: 11)
!3163 = !DILocation(line: 507, column: 13, scope: !3162)
!3164 = !DILocation(line: 507, column: 11, scope: !3159)
!3165 = !DILocation(line: 509, column: 4, scope: !3162)
!3166 = !DILocation(line: 508, column: 2, scope: !3162)
!3167 = distinct !{!3167, !3154, !3168}
!3168 = !DILocation(line: 510, column: 5, scope: !3155)
!3169 = !DILocation(line: 511, column: 1, scope: !3128)
!3170 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !492, file: !492, line: 224, type: !3171, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3178)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{null, !3173, !3174, !89, !3177}
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !70, line: 48, baseType: !3175)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!3178 = !{!3179, !3180, !3181, !3182}
!3179 = !DILocalVariable(name: "bi", arg: 1, scope: !3170, file: !492, line: 224, type: !3173)
!3180 = !DILocalVariable(name: "map", arg: 2, scope: !3170, file: !492, line: 224, type: !3174)
!3181 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3170, file: !492, line: 225, type: !89)
!3182 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3170, file: !492, line: 225, type: !3177)
!3183 = !DILocation(line: 0, scope: !3170)
!3184 = !DILocation(line: 227, column: 19, scope: !3170)
!3185 = !DILocation(line: 227, column: 12, scope: !3170)
!3186 = !DILocation(line: 228, column: 7, scope: !3170)
!3187 = !DILocation(line: 228, column: 12, scope: !3170)
!3188 = !DILocation(line: 0, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !492, line: 233, column: 11)
!3190 = distinct !DILexicalBlock(scope: !3170, file: !492, line: 232, column: 5)
!3191 = !DILocation(line: 231, column: 3, scope: !3170)
!3192 = !DILocation(line: 233, column: 12, scope: !3189)
!3193 = !DILocation(line: 233, column: 11, scope: !3190)
!3194 = !DILocation(line: 235, column: 13, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3189, file: !492, line: 234, column: 2)
!3196 = !DILocation(line: 236, column: 4, scope: !3195)
!3197 = !DILocation(line: 239, column: 11, scope: !3190)
!3198 = distinct !{!3198, !3191, !3199}
!3199 = !DILocation(line: 242, column: 5, scope: !3170)
!3200 = !DILocation(line: 245, column: 11, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3170, file: !492, line: 245, column: 7)
!3202 = !DILocation(line: 245, column: 17, scope: !3201)
!3203 = !DILocation(line: 245, column: 22, scope: !3201)
!3204 = !DILocation(line: 245, column: 7, scope: !3170)
!3205 = !DILocation(line: 246, column: 27, scope: !3201)
!3206 = !DILocation(line: 246, column: 32, scope: !3201)
!3207 = !DILocation(line: 246, column: 5, scope: !3201)
!3208 = !DILocation(line: 249, column: 7, scope: !3170)
!3209 = !DILocation(line: 249, column: 15, scope: !3170)
!3210 = !DILocation(line: 250, column: 14, scope: !3170)
!3211 = !DILocation(line: 251, column: 7, scope: !3170)
!3212 = !DILocation(line: 251, column: 12, scope: !3170)
!3213 = !DILocation(line: 257, column: 16, scope: !3170)
!3214 = !DILocation(line: 257, column: 13, scope: !3170)
!3215 = !DILocation(line: 259, column: 11, scope: !3170)
!3216 = !DILocation(line: 260, column: 1, scope: !3170)
!3217 = distinct !DISubprogram(name: "bmp_iter_set", scope: !492, file: !492, line: 393, type: !3218, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!378, !3173, !3177}
!3220 = !{!3221, !3222, !3223}
!3221 = !DILocalVariable(name: "bi", arg: 1, scope: !3217, file: !492, line: 393, type: !3173)
!3222 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3217, file: !492, line: 393, type: !3177)
!3223 = !DILabel(scope: !3224, name: "next_bit", file: !492, line: 398)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !492, line: 397, column: 5)
!3225 = distinct !DILexicalBlock(scope: !3217, file: !492, line: 396, column: 7)
!3226 = !DILocation(line: 0, scope: !3217)
!3227 = !DILocation(line: 396, column: 11, scope: !3225)
!3228 = !DILocation(line: 396, column: 7, scope: !3225)
!3229 = !DILocation(line: 396, column: 7, scope: !3217)
!3230 = !DILocation(line: 419, column: 15, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !492, line: 418, column: 2)
!3232 = distinct !DILexicalBlock(scope: !3217, file: !492, line: 415, column: 5)
!3233 = !DILocation(line: 399, column: 7, scope: !3224)
!3234 = !DILocation(line: 398, column: 5, scope: !3224)
!3235 = !DILocation(line: 399, column: 20, scope: !3224)
!3236 = !DILocation(line: 399, column: 25, scope: !3224)
!3237 = !DILocation(line: 399, column: 14, scope: !3224)
!3238 = !DILocation(line: 401, column: 13, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3224, file: !492, line: 400, column: 2)
!3240 = !DILocation(line: 402, column: 12, scope: !3239)
!3241 = distinct !{!3241, !3233, !3242}
!3242 = !DILocation(line: 403, column: 2, scope: !3224)
!3243 = !DILocation(line: 410, column: 15, scope: !3217)
!3244 = !DILocation(line: 410, column: 42, scope: !3217)
!3245 = !DILocation(line: 411, column: 26, scope: !3217)
!3246 = !DILocation(line: 410, column: 11, scope: !3217)
!3247 = !DILocation(line: 412, column: 7, scope: !3217)
!3248 = !DILocation(line: 412, column: 14, scope: !3217)
!3249 = !DILocation(line: 0, scope: !3232)
!3250 = !DILocation(line: 414, column: 3, scope: !3217)
!3251 = !DILocation(line: 417, column: 7, scope: !3232)
!3252 = !DILocation(line: 417, column: 18, scope: !3232)
!3253 = !DILocation(line: 417, column: 26, scope: !3232)
!3254 = !DILocation(line: 419, column: 13, scope: !3231)
!3255 = !DILocation(line: 420, column: 8, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3231, file: !492, line: 420, column: 8)
!3257 = !DILocation(line: 420, column: 8, scope: !3231)
!3258 = !DILocation(line: 422, column: 12, scope: !3231)
!3259 = !DILocation(line: 423, column: 15, scope: !3231)
!3260 = distinct !{!3260, !3251, !3261}
!3261 = !DILocation(line: 424, column: 2, scope: !3232)
!3262 = !DILocation(line: 427, column: 28, scope: !3232)
!3263 = !DILocation(line: 427, column: 16, scope: !3232)
!3264 = !DILocation(line: 428, column: 12, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3232, file: !492, line: 428, column: 11)
!3266 = !DILocation(line: 428, column: 11, scope: !3232)
!3267 = !DILocation(line: 430, column: 27, scope: !3232)
!3268 = !DILocation(line: 430, column: 32, scope: !3232)
!3269 = !DILocation(line: 430, column: 15, scope: !3232)
!3270 = !DILocation(line: 431, column: 19, scope: !3232)
!3271 = distinct !{!3271, !3250, !3272}
!3272 = !DILocation(line: 432, column: 5, scope: !3217)
!3273 = !DILocation(line: 433, column: 1, scope: !3217)
!3274 = distinct !DISubprogram(name: "bmp_iter_next", scope: !492, file: !492, line: 382, type: !3275, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{null, !3173, !3177}
!3277 = !{!3278, !3279}
!3278 = !DILocalVariable(name: "bi", arg: 1, scope: !3274, file: !492, line: 382, type: !3173)
!3279 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3274, file: !492, line: 382, type: !3177)
!3280 = !DILocation(line: 0, scope: !3274)
!3281 = !DILocation(line: 384, column: 7, scope: !3274)
!3282 = !DILocation(line: 384, column: 12, scope: !3274)
!3283 = !DILocation(line: 385, column: 11, scope: !3274)
!3284 = !DILocation(line: 386, column: 1, scope: !3274)
!3285 = distinct !DISubprogram(name: "debug_regset", scope: !3, file: !3, line: 518, type: !3286, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{null, !3131}
!3288 = !{!3289}
!3289 = !DILocalVariable(name: "r", arg: 1, scope: !3285, file: !3, line: 518, type: !3131)
!3290 = !DILocation(line: 0, scope: !3285)
!3291 = !DILocation(line: 520, column: 19, scope: !3285)
!3292 = !DILocation(line: 520, column: 3, scope: !3285)
!3293 = !DILocation(line: 521, column: 15, scope: !3285)
!3294 = !DILocation(line: 521, column: 3, scope: !3285)
!3295 = !DILocation(line: 522, column: 1, scope: !3285)
!3296 = distinct !DISubprogram(name: "dump_bb_info", scope: !3, file: !3, line: 530, type: !3297, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{null, !901, !378, !378, !13, !462, !6}
!3299 = !{!3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307}
!3300 = !DILocalVariable(name: "bb", arg: 1, scope: !3296, file: !3, line: 530, type: !901)
!3301 = !DILocalVariable(name: "header", arg: 2, scope: !3296, file: !3, line: 530, type: !378)
!3302 = !DILocalVariable(name: "footer", arg: 3, scope: !3296, file: !3, line: 530, type: !378)
!3303 = !DILocalVariable(name: "flags", arg: 4, scope: !3296, file: !3, line: 530, type: !13)
!3304 = !DILocalVariable(name: "prefix", arg: 5, scope: !3296, file: !3, line: 531, type: !462)
!3305 = !DILocalVariable(name: "file", arg: 6, scope: !3296, file: !3, line: 531, type: !6)
!3306 = !DILocalVariable(name: "e", scope: !3296, file: !3, line: 533, type: !69)
!3307 = !DILocalVariable(name: "ei", scope: !3296, file: !3, line: 534, type: !2010)
!3308 = !DILocation(line: 0, scope: !3296)
!3309 = !DILocation(line: 533, column: 3, scope: !3296)
!3310 = !DILocation(line: 534, column: 3, scope: !3296)
!3311 = !DILocation(line: 536, column: 7, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 536, column: 7)
!3313 = !DILocation(line: 536, column: 7, scope: !3296)
!3314 = !DILocation(line: 538, column: 57, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 537, column: 5)
!3316 = !DILocation(line: 538, column: 7, scope: !3315)
!3317 = !DILocation(line: 539, column: 15, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 539, column: 11)
!3319 = !DILocation(line: 539, column: 11, scope: !3318)
!3320 = !DILocation(line: 539, column: 11, scope: !3315)
!3321 = !DILocation(line: 540, column: 50, scope: !3318)
!3322 = !DILocation(line: 540, column: 9, scope: !3318)
!3323 = !DILocation(line: 541, column: 15, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 541, column: 11)
!3325 = !DILocation(line: 541, column: 11, scope: !3324)
!3326 = !DILocation(line: 541, column: 11, scope: !3315)
!3327 = !DILocation(line: 542, column: 50, scope: !3324)
!3328 = !DILocation(line: 542, column: 9, scope: !3324)
!3329 = !DILocation(line: 543, column: 53, scope: !3315)
!3330 = !DILocation(line: 543, column: 7, scope: !3315)
!3331 = !DILocation(line: 544, column: 53, scope: !3315)
!3332 = !DILocation(line: 544, column: 7, scope: !3315)
!3333 = !DILocation(line: 545, column: 39, scope: !3315)
!3334 = !DILocation(line: 545, column: 7, scope: !3315)
!3335 = !DILocation(line: 548, column: 11, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 548, column: 11)
!3337 = !DILocation(line: 548, column: 16, scope: !3336)
!3338 = !DILocation(line: 548, column: 19, scope: !3336)
!3339 = !DILocation(line: 548, column: 11, scope: !3315)
!3340 = !DILocation(line: 549, column: 2, scope: !3336)
!3341 = !DILocation(line: 550, column: 11, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 550, column: 11)
!3343 = !DILocation(line: 550, column: 16, scope: !3342)
!3344 = !DILocation(line: 550, column: 19, scope: !3342)
!3345 = !DILocation(line: 550, column: 11, scope: !3315)
!3346 = !DILocation(line: 551, column: 2, scope: !3342)
!3347 = !DILocation(line: 552, column: 7, scope: !3315)
!3348 = !DILocation(line: 554, column: 7, scope: !3315)
!3349 = !DILocation(line: 555, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 555, column: 7)
!3351 = !DILocation(line: 0, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 555, column: 7)
!3353 = !DILocation(line: 555, column: 7, scope: !3352)
!3354 = !DILocation(line: 556, column: 24, scope: !3352)
!3355 = !DILocation(line: 556, column: 2, scope: !3352)
!3356 = distinct !{!3356, !3349, !3357}
!3357 = !DILocation(line: 556, column: 28, scope: !3350)
!3358 = !DILocation(line: 558, column: 18, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 558, column: 11)
!3360 = !DILocation(line: 559, column: 4, scope: !3359)
!3361 = !DILocation(line: 559, column: 12, scope: !3359)
!3362 = !DILocation(line: 559, column: 18, scope: !3359)
!3363 = !DILocation(line: 560, column: 7, scope: !3359)
!3364 = !DILocation(line: 560, column: 4, scope: !3359)
!3365 = !DILocation(line: 562, column: 4, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 561, column: 2)
!3367 = !DILocation(line: 563, column: 4, scope: !3366)
!3368 = !DILocation(line: 564, column: 2, scope: !3366)
!3369 = !DILocation(line: 567, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 567, column: 7)
!3371 = !DILocation(line: 567, column: 7, scope: !3296)
!3372 = !DILocation(line: 569, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 568, column: 5)
!3374 = !DILocation(line: 570, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 570, column: 7)
!3376 = !DILocation(line: 0, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 570, column: 7)
!3378 = !DILocation(line: 570, column: 7, scope: !3377)
!3379 = !DILocation(line: 571, column: 24, scope: !3377)
!3380 = !DILocation(line: 571, column: 2, scope: !3377)
!3381 = distinct !{!3381, !3374, !3382}
!3382 = !DILocation(line: 571, column: 28, scope: !3375)
!3383 = !DILocation(line: 573, column: 18, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 573, column: 11)
!3385 = !DILocation(line: 574, column: 4, scope: !3384)
!3386 = !DILocation(line: 574, column: 12, scope: !3384)
!3387 = !DILocation(line: 574, column: 18, scope: !3384)
!3388 = !DILocation(line: 575, column: 7, scope: !3384)
!3389 = !DILocation(line: 575, column: 4, scope: !3384)
!3390 = !DILocation(line: 577, column: 4, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 576, column: 2)
!3392 = !DILocation(line: 578, column: 4, scope: !3391)
!3393 = !DILocation(line: 579, column: 2, scope: !3391)
!3394 = !DILocation(line: 582, column: 3, scope: !3296)
!3395 = !DILocation(line: 583, column: 1, scope: !3296)
!3396 = !DILocation(line: 0, scope: !2)
!3397 = !DILocation(line: 680, column: 23, scope: !2)
!3398 = !DILocation(line: 680, column: 36, scope: !2)
!3399 = !DILocation(line: 680, column: 46, scope: !2)
!3400 = !DILocation(line: 682, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !2, file: !3, line: 682, column: 7)
!3402 = !DILocation(line: 682, column: 12, scope: !3401)
!3403 = !DILocation(line: 682, column: 23, scope: !3401)
!3404 = !DILocation(line: 682, column: 20, scope: !3401)
!3405 = !DILocation(line: 682, column: 7, scope: !2)
!3406 = !DILocation(line: 683, column: 5, scope: !3401)
!3407 = !DILocation(line: 684, column: 17, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 684, column: 12)
!3409 = !DILocation(line: 684, column: 28, scope: !3408)
!3410 = !DILocation(line: 684, column: 25, scope: !3408)
!3411 = !DILocation(line: 684, column: 12, scope: !3401)
!3412 = !DILocation(line: 685, column: 5, scope: !3408)
!3413 = !DILocation(line: 687, column: 33, scope: !3408)
!3414 = !DILocation(line: 687, column: 5, scope: !3408)
!3415 = !DILocation(line: 689, column: 10, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !2, file: !3, line: 689, column: 7)
!3417 = !DILocation(line: 689, column: 7, scope: !3416)
!3418 = !DILocation(line: 689, column: 7, scope: !2)
!3419 = !DILocation(line: 690, column: 34, scope: !3416)
!3420 = !DILocation(line: 690, column: 49, scope: !3416)
!3421 = !DILocation(line: 690, column: 57, scope: !3416)
!3422 = !DILocation(line: 690, column: 5, scope: !3416)
!3423 = !DILocation(line: 692, column: 10, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !2, file: !3, line: 692, column: 7)
!3425 = !DILocation(line: 692, column: 7, scope: !3424)
!3426 = !DILocation(line: 692, column: 7, scope: !2)
!3427 = !DILocation(line: 694, column: 7, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 693, column: 5)
!3429 = !DILocation(line: 695, column: 52, scope: !3428)
!3430 = !DILocation(line: 695, column: 7, scope: !3428)
!3431 = !DILocation(line: 696, column: 5, scope: !3428)
!3432 = !DILocation(line: 698, column: 10, scope: !2080)
!3433 = !DILocation(line: 698, column: 7, scope: !2080)
!3434 = !DILocation(line: 698, column: 7, scope: !2)
!3435 = !DILocation(line: 0, scope: !2079)
!3436 = !DILocation(line: 708, column: 7, scope: !2079)
!3437 = !DILocation(line: 709, column: 12, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 709, column: 7)
!3439 = !DILocation(line: 709, column: 7, scope: !3438)
!3440 = !DILocation(line: 710, column: 17, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 710, column: 6)
!3442 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 709, column: 7)
!3443 = !DILocation(line: 710, column: 12, scope: !3441)
!3444 = !DILocation(line: 710, column: 6, scope: !3442)
!3445 = !DILocation(line: 712, column: 15, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 711, column: 4)
!3447 = !DILocation(line: 712, column: 12, scope: !3446)
!3448 = !DILocation(line: 714, column: 10, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 714, column: 10)
!3450 = !DILocation(line: 714, column: 10, scope: !3446)
!3451 = !DILocation(line: 715, column: 8, scope: !3449)
!3452 = !DILocation(line: 716, column: 12, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 716, column: 10)
!3454 = !DILocation(line: 716, column: 10, scope: !3446)
!3455 = !DILocation(line: 717, column: 15, scope: !3453)
!3456 = !DILocation(line: 717, column: 8, scope: !3453)
!3457 = !DILocation(line: 719, column: 8, scope: !3453)
!3458 = !DILocation(line: 709, column: 27, scope: !3442)
!3459 = !DILocation(line: 709, column: 7, scope: !3442)
!3460 = distinct !{!3460, !3439, !3461}
!3461 = !DILocation(line: 721, column: 4, scope: !3438)
!3462 = !DILocation(line: 723, column: 7, scope: !2079)
!3463 = !DILocation(line: 724, column: 5, scope: !2079)
!3464 = !DILocation(line: 725, column: 1, scope: !2)
!3465 = distinct !DISubprogram(name: "dump_reg_info", scope: !3, file: !3, line: 588, type: !3466, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{null, !6}
!3468 = !{!3469, !3470, !3471, !3472, !3476}
!3469 = !DILocalVariable(name: "file", arg: 1, scope: !3465, file: !3, line: 588, type: !6)
!3470 = !DILocalVariable(name: "i", scope: !3465, file: !3, line: 590, type: !89)
!3471 = !DILocalVariable(name: "max", scope: !3465, file: !3, line: 590, type: !89)
!3472 = !DILocalVariable(name: "rclass", scope: !3473, file: !3, line: 600, type: !1941)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 599, column: 5)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 598, column: 3)
!3475 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 598, column: 3)
!3476 = !DILocalVariable(name: "altclass", scope: !3473, file: !3, line: 600, type: !1941)
!3477 = !DILocation(line: 0, scope: !3465)
!3478 = !DILocation(line: 590, column: 25, scope: !3465)
!3479 = !DILocation(line: 591, column: 7, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 591, column: 7)
!3481 = !DILocation(line: 591, column: 7, scope: !3465)
!3482 = !DILocation(line: 594, column: 7, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 594, column: 7)
!3484 = !DILocation(line: 594, column: 25, scope: !3483)
!3485 = !DILocation(line: 594, column: 23, scope: !3483)
!3486 = !DILocation(line: 594, column: 7, scope: !3465)
!3487 = !DILocation(line: 597, column: 3, scope: !3465)
!3488 = !DILocation(line: 598, column: 8, scope: !3475)
!3489 = !DILocation(line: 0, scope: !3475)
!3490 = !DILocation(line: 598, column: 37, scope: !3474)
!3491 = !DILocation(line: 598, column: 3, scope: !3475)
!3492 = !DILocation(line: 602, column: 11, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 602, column: 11)
!3494 = !DILocation(line: 602, column: 11, scope: !3473)
!3495 = !DILocation(line: 604, column: 7, scope: !3493)
!3496 = !DILocation(line: 604, column: 23, scope: !3493)
!3497 = !DILocation(line: 603, column: 2, scope: !3493)
!3498 = !DILocation(line: 605, column: 16, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 605, column: 16)
!3500 = !DILocation(line: 605, column: 16, scope: !3493)
!3501 = !DILocation(line: 607, column: 7, scope: !3499)
!3502 = !DILocation(line: 607, column: 30, scope: !3499)
!3503 = !DILocation(line: 607, column: 28, scope: !3499)
!3504 = !DILocation(line: 607, column: 52, scope: !3499)
!3505 = !DILocation(line: 606, column: 2, scope: !3499)
!3506 = !DILocation(line: 609, column: 11, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 609, column: 11)
!3508 = !DILocation(line: 609, column: 31, scope: !3507)
!3509 = !DILocation(line: 609, column: 11, scope: !3473)
!3510 = !DILocation(line: 610, column: 2, scope: !3507)
!3511 = !DILocation(line: 611, column: 11, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 611, column: 11)
!3513 = !DILocation(line: 611, column: 11, scope: !3473)
!3514 = !DILocation(line: 612, column: 36, scope: !3512)
!3515 = !DILocation(line: 613, column: 5, scope: !3512)
!3516 = !DILocation(line: 613, column: 20, scope: !3512)
!3517 = !DILocation(line: 613, column: 4, scope: !3512)
!3518 = !DILocation(line: 612, column: 2, scope: !3512)
!3519 = !DILocation(line: 614, column: 16, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 614, column: 16)
!3521 = !DILocation(line: 614, column: 16, scope: !3512)
!3522 = !DILocation(line: 615, column: 36, scope: !3520)
!3523 = !DILocation(line: 616, column: 26, scope: !3520)
!3524 = !DILocation(line: 616, column: 4, scope: !3520)
!3525 = !DILocation(line: 615, column: 2, scope: !3520)
!3526 = !DILocation(line: 617, column: 11, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 617, column: 11)
!3528 = !DILocation(line: 617, column: 28, scope: !3527)
!3529 = !DILocation(line: 617, column: 36, scope: !3527)
!3530 = !DILocation(line: 617, column: 39, scope: !3527)
!3531 = !DILocation(line: 617, column: 11, scope: !3473)
!3532 = !DILocation(line: 618, column: 2, scope: !3527)
!3533 = !DILocation(line: 619, column: 11, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 619, column: 11)
!3535 = !DILocation(line: 619, column: 28, scope: !3534)
!3536 = !DILocation(line: 619, column: 11, scope: !3473)
!3537 = !DILocation(line: 620, column: 2, scope: !3534)
!3538 = !DILocation(line: 621, column: 11, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 621, column: 11)
!3540 = !DILocation(line: 621, column: 35, scope: !3539)
!3541 = !DILocation(line: 621, column: 11, scope: !3473)
!3542 = !DILocation(line: 622, column: 2, scope: !3539)
!3543 = !DILocation(line: 623, column: 16, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 623, column: 16)
!3545 = !DILocation(line: 623, column: 16, scope: !3539)
!3546 = !DILocation(line: 624, column: 2, scope: !3544)
!3547 = !DILocation(line: 625, column: 11, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 625, column: 11)
!3549 = !DILocation(line: 625, column: 11, scope: !3473)
!3550 = !DILocation(line: 626, column: 2, scope: !3548)
!3551 = !DILocation(line: 627, column: 11, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 627, column: 11)
!3553 = !DILocation(line: 627, column: 28, scope: !3552)
!3554 = !DILocation(line: 628, column: 4, scope: !3552)
!3555 = !DILocation(line: 628, column: 7, scope: !3552)
!3556 = !DILocation(line: 628, column: 30, scope: !3552)
!3557 = !DILocation(line: 627, column: 11, scope: !3473)
!3558 = !DILocation(line: 629, column: 31, scope: !3552)
!3559 = !DILocation(line: 629, column: 2, scope: !3552)
!3560 = !DILocation(line: 631, column: 16, scope: !3473)
!3561 = !DILocation(line: 0, scope: !3473)
!3562 = !DILocation(line: 632, column: 18, scope: !3473)
!3563 = !DILocation(line: 633, column: 18, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 633, column: 11)
!3565 = !DILocation(line: 633, column: 46, scope: !3564)
!3566 = !DILocation(line: 633, column: 34, scope: !3564)
!3567 = !DILocation(line: 635, column: 17, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 635, column: 8)
!3569 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 634, column: 2)
!3570 = !DILocation(line: 635, column: 39, scope: !3568)
!3571 = !DILocation(line: 635, column: 29, scope: !3568)
!3572 = !DILocation(line: 636, column: 34, scope: !3568)
!3573 = !DILocation(line: 636, column: 6, scope: !3568)
!3574 = !DILocation(line: 637, column: 22, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 637, column: 13)
!3576 = !DILocation(line: 0, scope: !3575)
!3577 = !DILocation(line: 637, column: 13, scope: !3568)
!3578 = !DILocation(line: 638, column: 6, scope: !3575)
!3579 = !DILocation(line: 642, column: 8, scope: !3575)
!3580 = !DILocation(line: 640, column: 6, scope: !3575)
!3581 = !DILocation(line: 645, column: 11, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 645, column: 11)
!3583 = !DILocation(line: 645, column: 28, scope: !3582)
!3584 = !DILocation(line: 645, column: 36, scope: !3582)
!3585 = !DILocation(line: 645, column: 39, scope: !3582)
!3586 = !DILocation(line: 645, column: 11, scope: !3473)
!3587 = !DILocation(line: 646, column: 2, scope: !3582)
!3588 = !DILocation(line: 647, column: 7, scope: !3473)
!3589 = !DILocation(line: 598, column: 45, scope: !3474)
!3590 = !DILocation(line: 598, column: 3, scope: !3474)
!3591 = distinct !{!3591, !3491, !3592}
!3592 = !DILocation(line: 648, column: 5, scope: !3475)
!3593 = !DILocation(line: 649, column: 1, scope: !3465)
!3594 = distinct !DISubprogram(name: "REG_N_REFS", scope: !3595, file: !3595, line: 79, type: !2136, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3596)
!3595 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3596 = !{!3597}
!3597 = !DILocalVariable(name: "regno", arg: 1, scope: !3594, file: !3595, line: 79, type: !13)
!3598 = !DILocation(line: 0, scope: !3594)
!3599 = !DILocation(line: 81, column: 10, scope: !3594)
!3600 = !DILocation(line: 81, column: 41, scope: !3594)
!3601 = !DILocation(line: 81, column: 3, scope: !3594)
!3602 = distinct !DISubprogram(name: "REG_N_SETS", scope: !3595, file: !3595, line: 90, type: !2136, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3603)
!3603 = !{!3604}
!3604 = !DILocalVariable(name: "regno", arg: 1, scope: !3602, file: !3595, line: 90, type: !13)
!3605 = !DILocation(line: 0, scope: !3602)
!3606 = !DILocation(line: 92, column: 10, scope: !3602)
!3607 = !DILocation(line: 92, column: 41, scope: !3602)
!3608 = !DILocation(line: 92, column: 3, scope: !3602)
!3609 = distinct !DISubprogram(name: "dump_flow_info", scope: !3, file: !3, line: 653, type: !3610, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !6, !13}
!3612 = !{!3613, !3614, !3615}
!3613 = !DILocalVariable(name: "file", arg: 1, scope: !3609, file: !3, line: 653, type: !6)
!3614 = !DILocalVariable(name: "flags", arg: 2, scope: !3609, file: !3, line: 653, type: !13)
!3615 = !DILocalVariable(name: "bb", scope: !3609, file: !3, line: 655, type: !901)
!3616 = !DILocation(line: 0, scope: !3609)
!3617 = !DILocation(line: 658, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 658, column: 7)
!3619 = !DILocation(line: 658, column: 33, scope: !3618)
!3620 = !DILocation(line: 658, column: 48, scope: !3618)
!3621 = !DILocation(line: 658, column: 23, scope: !3618)
!3622 = !DILocation(line: 659, column: 5, scope: !3618)
!3623 = !DILocation(line: 661, column: 52, scope: !3609)
!3624 = !DILocation(line: 661, column: 68, scope: !3609)
!3625 = !DILocation(line: 661, column: 3, scope: !3609)
!3626 = !DILocation(line: 662, column: 3, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 662, column: 3)
!3628 = !DILocation(line: 0, scope: !3627)
!3629 = !DILocation(line: 664, column: 7, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 663, column: 5)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 662, column: 3)
!3632 = !DILocation(line: 665, column: 7, scope: !3630)
!3633 = !DILocation(line: 662, column: 3, scope: !3631)
!3634 = distinct !{!3634, !3626, !3635}
!3635 = !DILocation(line: 666, column: 5, scope: !3627)
!3636 = !DILocation(line: 668, column: 3, scope: !3609)
!3637 = !DILocation(line: 669, column: 1, scope: !3609)
!3638 = distinct !DISubprogram(name: "debug_flow_info", scope: !3, file: !3, line: 672, type: !2524, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2114)
!3639 = !DILocation(line: 674, column: 19, scope: !3638)
!3640 = !DILocation(line: 674, column: 3, scope: !3638)
!3641 = !DILocation(line: 675, column: 1, scope: !3638)
!3642 = distinct !DISubprogram(name: "alloc_aux_for_block", scope: !3, file: !3, line: 738, type: !3643, scopeLine: 739, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !901, !13}
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "bb", arg: 1, scope: !3642, file: !3, line: 738, type: !901)
!3647 = !DILocalVariable(name: "size", arg: 2, scope: !3642, file: !3, line: 738, type: !13)
!3648 = !DILocation(line: 0, scope: !3642)
!3649 = !DILocation(line: 741, column: 3, scope: !3642)
!3650 = !DILocation(line: 742, column: 13, scope: !3642)
!3651 = !DILocation(line: 742, column: 11, scope: !3642)
!3652 = !DILocation(line: 743, column: 3, scope: !3642)
!3653 = !DILocation(line: 744, column: 1, scope: !3642)
!3654 = !DILocation(line: 0, scope: !1989)
!3655 = !DILocation(line: 754, column: 8, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 754, column: 7)
!3657 = !DILocation(line: 754, column: 7, scope: !1989)
!3658 = !DILocation(line: 756, column: 7, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 755, column: 5)
!3660 = !DILocation(line: 757, column: 19, scope: !3659)
!3661 = !DILocation(line: 758, column: 5, scope: !3659)
!3662 = !DILocation(line: 761, column: 5, scope: !3656)
!3663 = !DILocation(line: 763, column: 25, scope: !1989)
!3664 = !DILocation(line: 763, column: 23, scope: !1989)
!3665 = !DILocation(line: 764, column: 7, scope: !1996)
!3666 = !DILocation(line: 764, column: 7, scope: !1989)
!3667 = !DILocation(line: 768, column: 7, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 768, column: 7)
!3669 = !DILocation(line: 0, scope: !3668)
!3670 = !DILocation(line: 0, scope: !1995)
!3671 = !DILocation(line: 768, column: 7, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 768, column: 7)
!3673 = !DILocation(line: 769, column: 2, scope: !3672)
!3674 = distinct !{!3674, !3667, !3675}
!3675 = !DILocation(line: 769, column: 31, scope: !3668)
!3676 = !DILocation(line: 771, column: 1, scope: !1989)
!3677 = distinct !DISubprogram(name: "clear_aux_for_blocks", scope: !3, file: !3, line: 776, type: !2524, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3678)
!3678 = !{!3679}
!3679 = !DILocalVariable(name: "bb", scope: !3677, file: !3, line: 778, type: !901)
!3680 = !DILocation(line: 780, column: 3, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 780, column: 3)
!3682 = !DILocation(line: 0, scope: !3681)
!3683 = !DILocation(line: 0, scope: !3677)
!3684 = !DILocation(line: 780, column: 3, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 780, column: 3)
!3686 = !DILocation(line: 781, column: 9, scope: !3685)
!3687 = !DILocation(line: 781, column: 13, scope: !3685)
!3688 = distinct !{!3688, !3680, !3689}
!3689 = !DILocation(line: 781, column: 15, scope: !3681)
!3690 = !DILocation(line: 782, column: 1, scope: !3677)
!3691 = distinct !DISubprogram(name: "free_aux_for_blocks", scope: !3, file: !3, line: 788, type: !2524, scopeLine: 789, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2114)
!3692 = !DILocation(line: 790, column: 3, scope: !3691)
!3693 = !DILocation(line: 791, column: 3, scope: !3691)
!3694 = !DILocation(line: 792, column: 23, scope: !3691)
!3695 = !DILocation(line: 794, column: 3, scope: !3691)
!3696 = !DILocation(line: 795, column: 1, scope: !3691)
!3697 = distinct !DISubprogram(name: "alloc_aux_for_edge", scope: !3, file: !3, line: 801, type: !3698, scopeLine: 802, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !69, !13}
!3700 = !{!3701, !3702}
!3701 = !DILocalVariable(name: "e", arg: 1, scope: !3697, file: !3, line: 801, type: !69)
!3702 = !DILocalVariable(name: "size", arg: 2, scope: !3697, file: !3, line: 801, type: !13)
!3703 = !DILocation(line: 0, scope: !3697)
!3704 = !DILocation(line: 804, column: 3, scope: !3697)
!3705 = !DILocation(line: 805, column: 12, scope: !3697)
!3706 = !DILocation(line: 805, column: 10, scope: !3697)
!3707 = !DILocation(line: 806, column: 3, scope: !3697)
!3708 = !DILocation(line: 807, column: 1, scope: !3697)
!3709 = !DILocation(line: 0, scope: !1999)
!3710 = !DILocation(line: 817, column: 8, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 817, column: 7)
!3712 = !DILocation(line: 817, column: 7, scope: !1999)
!3713 = !DILocation(line: 819, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 818, column: 5)
!3715 = !DILocation(line: 820, column: 19, scope: !3714)
!3716 = !DILocation(line: 821, column: 5, scope: !3714)
!3717 = !DILocation(line: 824, column: 5, scope: !3711)
!3718 = !DILocation(line: 826, column: 24, scope: !1999)
!3719 = !DILocation(line: 826, column: 22, scope: !1999)
!3720 = !DILocation(line: 827, column: 7, scope: !2004)
!3721 = !DILocation(line: 827, column: 7, scope: !1999)
!3722 = !DILocation(line: 831, column: 7, scope: !2008)
!3723 = !DILocation(line: 0, scope: !2006)
!3724 = !DILocation(line: 0, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 836, column: 4)
!3726 = !DILocation(line: 0, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 836, column: 4)
!3728 = !DILocation(line: 831, column: 7, scope: !2007)
!3729 = !DILocation(line: 0, scope: !2008)
!3730 = !DILocation(line: 0, scope: !2003)
!3731 = !DILocation(line: 833, column: 4, scope: !2006)
!3732 = !DILocation(line: 834, column: 4, scope: !2006)
!3733 = !DILocation(line: 836, column: 4, scope: !3725)
!3734 = !DILocation(line: 836, column: 4, scope: !3727)
!3735 = !DILocation(line: 837, column: 26, scope: !3727)
!3736 = !DILocation(line: 837, column: 6, scope: !3727)
!3737 = distinct !{!3737, !3733, !3738}
!3738 = !DILocation(line: 837, column: 33, scope: !3725)
!3739 = !DILocation(line: 838, column: 2, scope: !2007)
!3740 = !DILocation(line: 0, scope: !2007)
!3741 = distinct !{!3741, !3722, !3742}
!3742 = !DILocation(line: 838, column: 2, scope: !2008)
!3743 = !DILocation(line: 840, column: 1, scope: !1999)
!3744 = distinct !DISubprogram(name: "clear_aux_for_edges", scope: !3, file: !3, line: 845, type: !2524, scopeLine: 846, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3745)
!3745 = !{!3746, !3747, !3748}
!3746 = !DILocalVariable(name: "bb", scope: !3744, file: !3, line: 847, type: !901)
!3747 = !DILocalVariable(name: "e", scope: !3744, file: !3, line: 848, type: !69)
!3748 = !DILocalVariable(name: "ei", scope: !3749, file: !3, line: 852, type: !2010)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 851, column: 5)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 850, column: 3)
!3751 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 850, column: 3)
!3752 = !DILocation(line: 848, column: 3, scope: !3744)
!3753 = !DILocation(line: 850, column: 3, scope: !3751)
!3754 = !DILocation(line: 0, scope: !3749)
!3755 = !DILocation(line: 0, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 853, column: 7)
!3757 = !DILocation(line: 0, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 853, column: 7)
!3759 = !DILocation(line: 850, column: 3, scope: !3750)
!3760 = !DILocation(line: 0, scope: !3751)
!3761 = !DILocation(line: 0, scope: !3744)
!3762 = !DILocation(line: 852, column: 7, scope: !3749)
!3763 = !DILocation(line: 853, column: 7, scope: !3756)
!3764 = !DILocation(line: 853, column: 7, scope: !3758)
!3765 = !DILocation(line: 854, column: 2, scope: !3758)
!3766 = !DILocation(line: 854, column: 5, scope: !3758)
!3767 = !DILocation(line: 854, column: 9, scope: !3758)
!3768 = distinct !{!3768, !3763, !3769}
!3769 = !DILocation(line: 854, column: 11, scope: !3756)
!3770 = !DILocation(line: 855, column: 5, scope: !3750)
!3771 = !DILocation(line: 0, scope: !3750)
!3772 = distinct !{!3772, !3753, !3773}
!3773 = !DILocation(line: 855, column: 5, scope: !3751)
!3774 = !DILocation(line: 856, column: 1, scope: !3744)
!3775 = distinct !DISubprogram(name: "free_aux_for_edges", scope: !3, file: !3, line: 862, type: !2524, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2114)
!3776 = !DILocation(line: 864, column: 3, scope: !3775)
!3777 = !DILocation(line: 865, column: 3, scope: !3775)
!3778 = !DILocation(line: 866, column: 22, scope: !3775)
!3779 = !DILocation(line: 868, column: 3, scope: !3775)
!3780 = !DILocation(line: 869, column: 1, scope: !3775)
!3781 = distinct !DISubprogram(name: "debug_bb", scope: !3, file: !3, line: 872, type: !2654, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3782)
!3782 = !{!3783}
!3783 = !DILocalVariable(name: "bb", arg: 1, scope: !3781, file: !3, line: 872, type: !901)
!3784 = !DILocation(line: 0, scope: !3781)
!3785 = !DILocation(line: 874, column: 16, scope: !3781)
!3786 = !DILocation(line: 874, column: 3, scope: !3781)
!3787 = !DILocation(line: 875, column: 1, scope: !3781)
!3788 = distinct !DISubprogram(name: "debug_bb_n", scope: !3, file: !3, line: 878, type: !3789, scopeLine: 879, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!901, !13}
!3791 = !{!3792, !3793}
!3792 = !DILocalVariable(name: "n", arg: 1, scope: !3788, file: !3, line: 878, type: !13)
!3793 = !DILocalVariable(name: "bb", scope: !3788, file: !3, line: 880, type: !901)
!3794 = !DILocation(line: 0, scope: !3788)
!3795 = !DILocation(line: 880, column: 20, scope: !3788)
!3796 = !DILocation(line: 881, column: 16, scope: !3788)
!3797 = !DILocation(line: 881, column: 3, scope: !3788)
!3798 = !DILocation(line: 882, column: 3, scope: !3788)
!3799 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !73, file: !73, line: 281, type: !3800, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3804)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!901, !3802, !89}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !909)
!3804 = !{!3805, !3806}
!3805 = !DILocalVariable(name: "vec_", arg: 1, scope: !3799, file: !73, line: 281, type: !3802)
!3806 = !DILocalVariable(name: "ix_", arg: 2, scope: !3799, file: !73, line: 281, type: !89)
!3807 = !DILocation(line: 0, scope: !3799)
!3808 = !DILocation(line: 281, column: 1, scope: !3799)
!3809 = distinct !DISubprogram(name: "brief_dump_cfg", scope: !3, file: !3, line: 930, type: !3466, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3810)
!3810 = !{!3811, !3812}
!3811 = !DILocalVariable(name: "file", arg: 1, scope: !3809, file: !3, line: 930, type: !6)
!3812 = !DILocalVariable(name: "bb", scope: !3809, file: !3, line: 932, type: !901)
!3813 = !DILocation(line: 0, scope: !3809)
!3814 = !DILocation(line: 934, column: 3, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3809, file: !3, line: 934, column: 3)
!3816 = !DILocation(line: 934, column: 3, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 934, column: 3)
!3818 = !DILocation(line: 0, scope: !3815)
!3819 = !DILocation(line: 936, column: 7, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 935, column: 5)
!3821 = !DILocation(line: 0, scope: !3817)
!3822 = distinct !{!3822, !3814, !3823}
!3823 = !DILocation(line: 937, column: 5, scope: !3815)
!3824 = !DILocation(line: 938, column: 1, scope: !3809)
!3825 = !DILocation(line: 0, scope: !2057)
!3826 = !DILocation(line: 891, column: 3, scope: !2057)
!3827 = !DILocation(line: 900, column: 3, scope: !2057)
!3828 = !DILocation(line: 902, column: 40, scope: !2057)
!3829 = !DILocation(line: 902, column: 3, scope: !2057)
!3830 = !DILocation(line: 0, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 904, column: 9)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 903, column: 3)
!3833 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 903, column: 3)
!3834 = !DILocation(line: 903, column: 8, scope: !3833)
!3835 = !DILocation(line: 0, scope: !3833)
!3836 = !DILocation(line: 903, column: 17, scope: !3832)
!3837 = !DILocation(line: 903, column: 3, scope: !3833)
!3838 = !DILocation(line: 904, column: 13, scope: !3831)
!3839 = !DILocation(line: 904, column: 24, scope: !3831)
!3840 = !DILocation(line: 904, column: 19, scope: !3831)
!3841 = !DILocation(line: 904, column: 9, scope: !3832)
!3842 = !DILocation(line: 906, column: 6, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 906, column: 6)
!3844 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 905, column: 7)
!3845 = !DILocation(line: 906, column: 6, scope: !3844)
!3846 = !DILocation(line: 907, column: 4, scope: !3843)
!3847 = !DILocation(line: 909, column: 4, scope: !3843)
!3848 = !DILocation(line: 911, column: 9, scope: !3844)
!3849 = !DILocation(line: 911, column: 2, scope: !3844)
!3850 = !DILocation(line: 912, column: 7, scope: !3844)
!3851 = !DILocation(line: 903, column: 32, scope: !3832)
!3852 = !DILocation(line: 903, column: 3, scope: !3832)
!3853 = distinct !{!3853, !3837, !3854}
!3854 = !DILocation(line: 912, column: 7, scope: !3833)
!3855 = !DILocation(line: 913, column: 8, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 913, column: 7)
!3857 = !DILocation(line: 913, column: 7, scope: !2057)
!3858 = !DILocation(line: 914, column: 5, scope: !3856)
!3859 = !DILocation(line: 915, column: 3, scope: !2057)
!3860 = !DILocation(line: 917, column: 3, scope: !2057)
!3861 = !DILocation(line: 918, column: 3, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 918, column: 3)
!3863 = !DILocation(line: 0, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 918, column: 3)
!3865 = !DILocation(line: 918, column: 3, scope: !3864)
!3866 = !DILocation(line: 919, column: 27, scope: !3864)
!3867 = !DILocation(line: 919, column: 5, scope: !3864)
!3868 = distinct !{!3868, !3861, !3869}
!3869 = !DILocation(line: 919, column: 31, scope: !3862)
!3870 = !DILocation(line: 921, column: 3, scope: !2057)
!3871 = !DILocation(line: 922, column: 3, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 922, column: 3)
!3873 = !DILocation(line: 922, column: 3, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 922, column: 3)
!3875 = !DILocation(line: 923, column: 27, scope: !3874)
!3876 = !DILocation(line: 923, column: 5, scope: !3874)
!3877 = distinct !{!3877, !3871, !3878}
!3878 = !DILocation(line: 923, column: 31, scope: !3872)
!3879 = !DILocation(line: 924, column: 3, scope: !2057)
!3880 = !DILocation(line: 925, column: 1, scope: !2057)
!3881 = distinct !DISubprogram(name: "update_bb_profile_for_threading", scope: !3, file: !3, line: 948, type: !3882, scopeLine: 950, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !901, !13, !1920, !69}
!3884 = !{!3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892}
!3885 = !DILocalVariable(name: "bb", arg: 1, scope: !3881, file: !3, line: 948, type: !901)
!3886 = !DILocalVariable(name: "edge_frequency", arg: 2, scope: !3881, file: !3, line: 948, type: !13)
!3887 = !DILocalVariable(name: "count", arg: 3, scope: !3881, file: !3, line: 949, type: !1920)
!3888 = !DILocalVariable(name: "taken_edge", arg: 4, scope: !3881, file: !3, line: 949, type: !69)
!3889 = !DILocalVariable(name: "c", scope: !3881, file: !3, line: 951, type: !69)
!3890 = !DILocalVariable(name: "prob", scope: !3881, file: !3, line: 952, type: !13)
!3891 = !DILocalVariable(name: "ei", scope: !3881, file: !3, line: 953, type: !2010)
!3892 = !DILocalVariable(name: "scale", scope: !3893, file: !3, line: 1000, type: !13)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 999, column: 5)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 998, column: 12)
!3895 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 986, column: 7)
!3896 = !DILocation(line: 0, scope: !3881)
!3897 = !DILocation(line: 951, column: 3, scope: !3881)
!3898 = !DILocation(line: 953, column: 3, scope: !3881)
!3899 = !DILocation(line: 955, column: 7, scope: !3881)
!3900 = !DILocation(line: 955, column: 13, scope: !3881)
!3901 = !DILocation(line: 956, column: 17, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 956, column: 7)
!3903 = !DILocation(line: 956, column: 7, scope: !3881)
!3904 = !DILocation(line: 958, column: 11, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 958, column: 11)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 957, column: 5)
!3907 = !DILocation(line: 958, column: 11, scope: !3906)
!3908 = !DILocation(line: 960, column: 8, scope: !3905)
!3909 = !DILocation(line: 959, column: 2, scope: !3905)
!3910 = !DILocation(line: 961, column: 17, scope: !3906)
!3911 = !DILocation(line: 962, column: 5, scope: !3906)
!3912 = !DILocation(line: 966, column: 11, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 966, column: 7)
!3914 = !DILocation(line: 966, column: 7, scope: !3913)
!3915 = !DILocation(line: 966, column: 7, scope: !3881)
!3916 = !DILocation(line: 967, column: 27, scope: !3913)
!3917 = !DILocation(line: 967, column: 46, scope: !3913)
!3918 = !DILocation(line: 967, column: 5, scope: !3913)
!3919 = !DILocation(line: 0, scope: !3913)
!3920 = !DILocation(line: 970, column: 26, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 970, column: 7)
!3922 = !DILocation(line: 970, column: 12, scope: !3921)
!3923 = !DILocation(line: 970, column: 7, scope: !3881)
!3924 = !DILocation(line: 972, column: 11, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 972, column: 11)
!3926 = distinct !DILexicalBlock(scope: !3921, file: !3, line: 971, column: 5)
!3927 = !DILocation(line: 972, column: 11, scope: !3926)
!3928 = !DILocation(line: 975, column: 16, scope: !3925)
!3929 = !DILocation(line: 975, column: 21, scope: !3925)
!3930 = !DILocation(line: 975, column: 40, scope: !3925)
!3931 = !DILocation(line: 975, column: 46, scope: !3925)
!3932 = !DILocation(line: 973, column: 2, scope: !3925)
!3933 = !DILocation(line: 977, column: 26, scope: !3926)
!3934 = !DILocation(line: 978, column: 5, scope: !3926)
!3935 = !DILocation(line: 981, column: 27, scope: !3881)
!3936 = !DILocation(line: 982, column: 27, scope: !3881)
!3937 = !DILocation(line: 983, column: 17, scope: !3881)
!3938 = !DILocation(line: 984, column: 21, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 984, column: 7)
!3940 = !DILocation(line: 984, column: 7, scope: !3881)
!3941 = !DILocation(line: 985, column: 5, scope: !3939)
!3942 = !DILocation(line: 986, column: 12, scope: !3895)
!3943 = !DILocation(line: 986, column: 7, scope: !3881)
!3944 = !DILocation(line: 988, column: 11, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 988, column: 11)
!3946 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 987, column: 5)
!3947 = !DILocation(line: 988, column: 11, scope: !3946)
!3948 = !DILocation(line: 991, column: 8, scope: !3945)
!3949 = !DILocation(line: 989, column: 2, scope: !3945)
!3950 = !DILocation(line: 992, column: 7, scope: !3946)
!3951 = !DILocation(line: 992, column: 26, scope: !3946)
!3952 = !DILocation(line: 992, column: 38, scope: !3946)
!3953 = !DILocation(line: 993, column: 12, scope: !3946)
!3954 = !DILocation(line: 994, column: 7, scope: !3946)
!3955 = !DILocation(line: 0, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !3, line: 995, column: 7)
!3957 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 995, column: 7)
!3958 = !DILocation(line: 995, column: 7, scope: !3946)
!3959 = !DILocation(line: 995, column: 19, scope: !3956)
!3960 = !DILocation(line: 995, column: 17, scope: !3956)
!3961 = !DILocation(line: 995, column: 7, scope: !3957)
!3962 = !DILocation(line: 996, column: 5, scope: !3956)
!3963 = !DILocation(line: 996, column: 17, scope: !3956)
!3964 = !DILocation(line: 995, column: 39, scope: !3956)
!3965 = !DILocation(line: 995, column: 7, scope: !3956)
!3966 = distinct !{!3966, !3961, !3967}
!3967 = !DILocation(line: 996, column: 19, scope: !3957)
!3968 = !DILocation(line: 998, column: 17, scope: !3894)
!3969 = !DILocation(line: 998, column: 12, scope: !3895)
!3970 = !DILocation(line: 1000, column: 19, scope: !3893)
!3971 = !DILocation(line: 0, scope: !3893)
!3972 = !DILocation(line: 1002, column: 7, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 1002, column: 7)
!3974 = !DILocation(line: 0, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3973, file: !3, line: 1002, column: 7)
!3976 = !DILocation(line: 1002, column: 7, scope: !3975)
!3977 = !DILocation(line: 1005, column: 8, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 1005, column: 8)
!3979 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 1003, column: 2)
!3980 = !DILocation(line: 1005, column: 11, scope: !3978)
!3981 = !DILocation(line: 1005, column: 23, scope: !3978)
!3982 = !DILocation(line: 1005, column: 8, scope: !3979)
!3983 = !DILocation(line: 1006, column: 21, scope: !3978)
!3984 = !DILocation(line: 1006, column: 6, scope: !3978)
!3985 = !DILocation(line: 1009, column: 25, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3978, file: !3, line: 1008, column: 6)
!3987 = !DILocation(line: 1009, column: 23, scope: !3986)
!3988 = !DILocation(line: 1010, column: 27, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 1010, column: 12)
!3990 = !DILocation(line: 1010, column: 12, scope: !3986)
!3991 = !DILocation(line: 1011, column: 18, scope: !3989)
!3992 = !DILocation(line: 1011, column: 3, scope: !3989)
!3993 = distinct !{!3993, !3972, !3994}
!3994 = !DILocation(line: 1013, column: 2, scope: !3973)
!3995 = !DILocation(line: 1016, column: 3, scope: !3881)
!3996 = !DILocation(line: 1017, column: 15, scope: !3881)
!3997 = !DILocation(line: 1017, column: 21, scope: !3881)
!3998 = !DILocation(line: 1018, column: 25, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 1018, column: 7)
!4000 = !DILocation(line: 1018, column: 7, scope: !3881)
!4001 = !DILocation(line: 1020, column: 11, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 1020, column: 11)
!4003 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 1019, column: 5)
!4004 = !DILocation(line: 1020, column: 11, scope: !4003)
!4005 = !DILocation(line: 1022, column: 16, scope: !4002)
!4006 = !DILocation(line: 1022, column: 21, scope: !4002)
!4007 = !DILocation(line: 1022, column: 40, scope: !4002)
!4008 = !DILocation(line: 1022, column: 46, scope: !4002)
!4009 = !DILocation(line: 1021, column: 2, scope: !4002)
!4010 = !DILocation(line: 1023, column: 25, scope: !4003)
!4011 = !DILocation(line: 1024, column: 5, scope: !4003)
!4012 = !DILocation(line: 1025, column: 1, scope: !3881)
!4013 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !73, file: !73, line: 150, type: !4014, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!69, !3122, !89}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "vec_", arg: 1, scope: !4013, file: !73, line: 150, type: !3122)
!4018 = !DILocalVariable(name: "ix_", arg: 2, scope: !4013, file: !73, line: 150, type: !89)
!4019 = !DILocation(line: 0, scope: !4013)
!4020 = !DILocation(line: 150, column: 1, scope: !4013)
!4021 = distinct !DISubprogram(name: "ei_safe_edge", scope: !73, file: !73, line: 761, type: !4022, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!69, !2010}
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "i", arg: 1, scope: !4021, file: !73, line: 761, type: !2010)
!4026 = !DILocation(line: 763, column: 11, scope: !4021)
!4027 = !DILocation(line: 763, column: 10, scope: !4021)
!4028 = !DILocation(line: 763, column: 26, scope: !4021)
!4029 = !DILocation(line: 763, column: 3, scope: !4021)
!4030 = distinct !DISubprogram(name: "scale_bbs_frequencies_int", scope: !3, file: !3, line: 1030, type: !4031, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4034)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{null, !4033, !13, !13, !13}
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!4034 = !{!4035, !4036, !4037, !4038, !4039, !4040, !4041}
!4035 = !DILocalVariable(name: "bbs", arg: 1, scope: !4030, file: !3, line: 1030, type: !4033)
!4036 = !DILocalVariable(name: "nbbs", arg: 2, scope: !4030, file: !3, line: 1030, type: !13)
!4037 = !DILocalVariable(name: "num", arg: 3, scope: !4030, file: !3, line: 1030, type: !13)
!4038 = !DILocalVariable(name: "den", arg: 4, scope: !4030, file: !3, line: 1030, type: !13)
!4039 = !DILocalVariable(name: "i", scope: !4030, file: !3, line: 1032, type: !13)
!4040 = !DILocalVariable(name: "e", scope: !4030, file: !3, line: 1033, type: !69)
!4041 = !DILocalVariable(name: "ei", scope: !4042, file: !3, line: 1053, type: !2010)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 1052, column: 5)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 1051, column: 3)
!4044 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 1051, column: 3)
!4045 = !DILocation(line: 0, scope: !4030)
!4046 = !DILocation(line: 1033, column: 3, scope: !4030)
!4047 = !DILocation(line: 1034, column: 7, scope: !4030)
!4048 = !DILocation(line: 1040, column: 11, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 1040, column: 7)
!4050 = !DILocation(line: 1040, column: 7, scope: !4030)
!4051 = !DILocation(line: 1042, column: 15, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 1042, column: 11)
!4053 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 1041, column: 5)
!4054 = !DILocation(line: 1042, column: 11, scope: !4053)
!4055 = !DILocation(line: 1045, column: 13, scope: !4053)
!4056 = !DILocation(line: 1047, column: 5, scope: !4053)
!4057 = !DILocation(line: 1048, column: 17, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 1048, column: 7)
!4059 = !DILocation(line: 1048, column: 11, scope: !4058)
!4060 = !DILocation(line: 1048, column: 7, scope: !4030)
!4061 = !DILocation(line: 0, scope: !4042)
!4062 = !DILocation(line: 0, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 1059, column: 7)
!4064 = !DILocation(line: 0, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 1059, column: 7)
!4066 = !DILocation(line: 1051, column: 3, scope: !4044)
!4067 = !DILocation(line: 0, scope: !4044)
!4068 = !DILocation(line: 1051, column: 17, scope: !4043)
!4069 = !DILocation(line: 1053, column: 7, scope: !4042)
!4070 = !DILocation(line: 1054, column: 27, scope: !4042)
!4071 = !DILocation(line: 1054, column: 25, scope: !4042)
!4072 = !DILocation(line: 1056, column: 11, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 1056, column: 11)
!4074 = !DILocation(line: 1056, column: 19, scope: !4073)
!4075 = !DILocation(line: 1056, column: 29, scope: !4073)
!4076 = !DILocation(line: 1056, column: 11, scope: !4042)
!4077 = !DILocation(line: 1057, column: 20, scope: !4073)
!4078 = !DILocation(line: 1058, column: 23, scope: !4042)
!4079 = !DILocation(line: 1057, column: 2, scope: !4073)
!4080 = !DILocation(line: 1058, column: 7, scope: !4042)
!4081 = !DILocation(line: 1058, column: 21, scope: !4042)
!4082 = !DILocation(line: 1059, column: 7, scope: !4063)
!4083 = !DILocation(line: 1059, column: 7, scope: !4065)
!4084 = !DILocation(line: 1060, column: 13, scope: !4065)
!4085 = !DILocation(line: 1060, column: 11, scope: !4065)
!4086 = distinct !{!4086, !4082, !4087}
!4087 = !DILocation(line: 1060, column: 13, scope: !4063)
!4088 = !DILocation(line: 1061, column: 5, scope: !4043)
!4089 = !DILocation(line: 1051, column: 26, scope: !4043)
!4090 = !DILocation(line: 1051, column: 3, scope: !4043)
!4091 = distinct !{!4091, !4066, !4092}
!4092 = !DILocation(line: 1061, column: 5, scope: !4044)
!4093 = !DILocation(line: 1062, column: 1, scope: !4030)
!4094 = distinct !DISubprogram(name: "scale_bbs_frequencies_gcov_type", scope: !3, file: !3, line: 1072, type: !4095, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4097)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !4033, !13, !1920, !1920}
!4097 = !{!4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4110}
!4098 = !DILocalVariable(name: "bbs", arg: 1, scope: !4094, file: !3, line: 1072, type: !4033)
!4099 = !DILocalVariable(name: "nbbs", arg: 2, scope: !4094, file: !3, line: 1072, type: !13)
!4100 = !DILocalVariable(name: "num", arg: 3, scope: !4094, file: !3, line: 1072, type: !1920)
!4101 = !DILocalVariable(name: "den", arg: 4, scope: !4094, file: !3, line: 1073, type: !1920)
!4102 = !DILocalVariable(name: "i", scope: !4094, file: !3, line: 1075, type: !13)
!4103 = !DILocalVariable(name: "e", scope: !4094, file: !3, line: 1076, type: !69)
!4104 = !DILocalVariable(name: "fraction", scope: !4094, file: !3, line: 1077, type: !1920)
!4105 = !DILocalVariable(name: "ei", scope: !4106, file: !3, line: 1084, type: !2010)
!4106 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 1083, column: 7)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 1082, column: 5)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 1082, column: 5)
!4109 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 1081, column: 7)
!4110 = !DILocalVariable(name: "ei", scope: !4111, file: !3, line: 1099, type: !2010)
!4111 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 1098, column: 7)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 1097, column: 5)
!4113 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 1097, column: 5)
!4114 = !DILocation(line: 0, scope: !4094)
!4115 = !DILocation(line: 1076, column: 3, scope: !4094)
!4116 = !DILocation(line: 1077, column: 24, scope: !4094)
!4117 = !DILocation(line: 1079, column: 3, scope: !4094)
!4118 = !DILocation(line: 1081, column: 11, scope: !4109)
!4119 = !DILocation(line: 1081, column: 7, scope: !4094)
!4120 = !DILocation(line: 0, scope: !4111)
!4121 = !DILocation(line: 0, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 1105, column: 2)
!4123 = !DILocation(line: 0, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4122, file: !3, line: 1105, column: 2)
!4125 = !DILocation(line: 1097, column: 5, scope: !4113)
!4126 = !DILocation(line: 0, scope: !4106)
!4127 = !DILocation(line: 0, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 1090, column: 2)
!4129 = !DILocation(line: 0, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 1090, column: 2)
!4131 = !DILocation(line: 1082, column: 5, scope: !4108)
!4132 = !DILocation(line: 0, scope: !4108)
!4133 = !DILocation(line: 1082, column: 19, scope: !4107)
!4134 = !DILocation(line: 1084, column: 2, scope: !4106)
!4135 = !DILocation(line: 1085, column: 22, scope: !4106)
!4136 = !DILocation(line: 1085, column: 20, scope: !4106)
!4137 = !DILocation(line: 1086, column: 6, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 1086, column: 6)
!4139 = !DILocation(line: 1086, column: 14, scope: !4138)
!4140 = !DILocation(line: 1086, column: 20, scope: !4138)
!4141 = !DILocation(line: 1086, column: 6, scope: !4106)
!4142 = !DILocation(line: 1087, column: 20, scope: !4138)
!4143 = !DILocation(line: 1087, column: 4, scope: !4138)
!4144 = !DILocation(line: 1089, column: 20, scope: !4138)
!4145 = !DILocation(line: 0, scope: !4138)
!4146 = !DILocation(line: 1090, column: 2, scope: !4128)
!4147 = !DILocation(line: 1090, column: 2, scope: !4130)
!4148 = !DILocation(line: 1091, column: 8, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 1091, column: 8)
!4150 = !DILocation(line: 1091, column: 16, scope: !4149)
!4151 = !DILocation(line: 1091, column: 22, scope: !4149)
!4152 = !DILocation(line: 0, scope: !4149)
!4153 = !DILocation(line: 1091, column: 8, scope: !4130)
!4154 = !DILocation(line: 1092, column: 17, scope: !4149)
!4155 = !DILocation(line: 1092, column: 6, scope: !4149)
!4156 = !DILocation(line: 1094, column: 17, scope: !4149)
!4157 = distinct !{!4157, !4146, !4158}
!4158 = !DILocation(line: 1094, column: 17, scope: !4128)
!4159 = !DILocation(line: 1095, column: 7, scope: !4107)
!4160 = !DILocation(line: 1082, column: 28, scope: !4107)
!4161 = !DILocation(line: 1082, column: 5, scope: !4107)
!4162 = distinct !{!4162, !4131, !4163}
!4163 = !DILocation(line: 1095, column: 7, scope: !4108)
!4164 = !DILocation(line: 0, scope: !4113)
!4165 = !DILocation(line: 1097, column: 19, scope: !4112)
!4166 = !DILocation(line: 1099, column: 2, scope: !4111)
!4167 = !DILocation(line: 1101, column: 24, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 1100, column: 6)
!4169 = !DILocation(line: 1101, column: 22, scope: !4168)
!4170 = !DILocation(line: 1104, column: 18, scope: !4111)
!4171 = !DILocation(line: 1104, column: 16, scope: !4111)
!4172 = !DILocation(line: 1105, column: 2, scope: !4122)
!4173 = !DILocation(line: 1105, column: 2, scope: !4124)
!4174 = !DILocation(line: 1106, column: 15, scope: !4124)
!4175 = !DILocation(line: 1106, column: 13, scope: !4124)
!4176 = distinct !{!4176, !4172, !4177}
!4177 = !DILocation(line: 1106, column: 15, scope: !4122)
!4178 = !DILocation(line: 1107, column: 7, scope: !4112)
!4179 = !DILocation(line: 1097, column: 28, scope: !4112)
!4180 = !DILocation(line: 1097, column: 5, scope: !4112)
!4181 = distinct !{!4181, !4125, !4182}
!4182 = !DILocation(line: 1107, column: 7, scope: !4113)
!4183 = !DILocation(line: 1108, column: 1, scope: !4094)
!4184 = distinct !DISubprogram(name: "initialize_original_copy_tables", scope: !3, file: !3, line: 1149, type: !2524, scopeLine: 1150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2114)
!4185 = !DILocation(line: 1151, column: 3, scope: !4184)
!4186 = !DILocation(line: 1153, column: 7, scope: !4184)
!4187 = !DILocation(line: 1153, column: 5, scope: !4184)
!4188 = !DILocation(line: 1155, column: 17, scope: !4184)
!4189 = !DILocation(line: 1155, column: 15, scope: !4184)
!4190 = !DILocation(line: 1157, column: 13, scope: !4184)
!4191 = !DILocation(line: 1157, column: 11, scope: !4184)
!4192 = !DILocation(line: 1158, column: 15, scope: !4184)
!4193 = !DILocation(line: 1158, column: 13, scope: !4184)
!4194 = !DILocation(line: 1159, column: 1, scope: !4184)
!4195 = distinct !DISubprogram(name: "bb_copy_original_hash", scope: !3, file: !3, line: 1128, type: !825, scopeLine: 1129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4196)
!4196 = !{!4197, !4198}
!4197 = !DILocalVariable(name: "p", arg: 1, scope: !4195, file: !3, line: 1128, type: !610)
!4198 = !DILocalVariable(name: "data", scope: !4195, file: !3, line: 1130, type: !1983)
!4199 = !DILocation(line: 0, scope: !4195)
!4200 = !DILocation(line: 1133, column: 16, scope: !4195)
!4201 = !DILocation(line: 1133, column: 3, scope: !4195)
!4202 = distinct !DISubprogram(name: "bb_copy_original_eq", scope: !3, file: !3, line: 1136, type: !831, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4203)
!4203 = !{!4204, !4205, !4206, !4207}
!4204 = !DILocalVariable(name: "p", arg: 1, scope: !4202, file: !3, line: 1136, type: !610)
!4205 = !DILocalVariable(name: "q", arg: 2, scope: !4202, file: !3, line: 1136, type: !610)
!4206 = !DILocalVariable(name: "data", scope: !4202, file: !3, line: 1138, type: !1983)
!4207 = !DILocalVariable(name: "data2", scope: !4202, file: !3, line: 1140, type: !1983)
!4208 = !DILocation(line: 0, scope: !4202)
!4209 = !DILocation(line: 1143, column: 16, scope: !4202)
!4210 = !DILocation(line: 1143, column: 33, scope: !4202)
!4211 = !DILocation(line: 1143, column: 23, scope: !4202)
!4212 = !DILocation(line: 1143, column: 3, scope: !4202)
!4213 = distinct !DISubprogram(name: "free_original_copy_tables", scope: !3, file: !3, line: 1164, type: !2524, scopeLine: 1165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !2114)
!4214 = !DILocation(line: 1166, column: 3, scope: !4213)
!4215 = !DILocation(line: 1167, column: 16, scope: !4213)
!4216 = !DILocation(line: 1167, column: 3, scope: !4213)
!4217 = !DILocation(line: 1168, column: 16, scope: !4213)
!4218 = !DILocation(line: 1168, column: 3, scope: !4213)
!4219 = !DILocation(line: 1169, column: 16, scope: !4213)
!4220 = !DILocation(line: 1169, column: 3, scope: !4213)
!4221 = !DILocation(line: 1170, column: 20, scope: !4213)
!4222 = !DILocation(line: 1170, column: 3, scope: !4213)
!4223 = !DILocation(line: 1171, column: 11, scope: !4213)
!4224 = !DILocation(line: 1172, column: 15, scope: !4213)
!4225 = !DILocation(line: 1173, column: 13, scope: !4213)
!4226 = !DILocation(line: 1174, column: 25, scope: !4213)
!4227 = !DILocation(line: 1175, column: 1, scope: !4213)
!4228 = distinct !DISubprogram(name: "set_bb_original", scope: !3, file: !3, line: 1225, type: !2637, scopeLine: 1226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4229)
!4229 = !{!4230, !4231}
!4230 = !DILocalVariable(name: "bb", arg: 1, scope: !4228, file: !3, line: 1225, type: !901)
!4231 = !DILocalVariable(name: "original", arg: 2, scope: !4228, file: !3, line: 1225, type: !901)
!4232 = !DILocation(line: 0, scope: !4228)
!4233 = !DILocation(line: 1227, column: 28, scope: !4228)
!4234 = !DILocation(line: 1227, column: 45, scope: !4228)
!4235 = !DILocation(line: 1227, column: 62, scope: !4228)
!4236 = !DILocation(line: 1227, column: 3, scope: !4228)
!4237 = !DILocation(line: 1228, column: 1, scope: !4228)
!4238 = distinct !DISubprogram(name: "copy_original_table_set", scope: !3, file: !3, line: 1202, type: !4239, scopeLine: 1203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4241)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{null, !817, !89, !89}
!4241 = !{!4242, !4243, !4244, !4245, !4246}
!4242 = !DILocalVariable(name: "tab", arg: 1, scope: !4238, file: !3, line: 1202, type: !817)
!4243 = !DILocalVariable(name: "obj", arg: 2, scope: !4238, file: !3, line: 1202, type: !89)
!4244 = !DILocalVariable(name: "val", arg: 3, scope: !4238, file: !3, line: 1202, type: !89)
!4245 = !DILocalVariable(name: "slot", scope: !4238, file: !3, line: 1204, type: !1985)
!4246 = !DILocalVariable(name: "key", scope: !4238, file: !3, line: 1205, type: !1979)
!4247 = !DILocation(line: 0, scope: !4238)
!4248 = !DILocation(line: 1205, column: 3, scope: !4238)
!4249 = !DILocation(line: 1207, column: 8, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 1207, column: 7)
!4251 = !DILocation(line: 1207, column: 7, scope: !4238)
!4252 = !DILocation(line: 1210, column: 7, scope: !4238)
!4253 = !DILocation(line: 1210, column: 14, scope: !4238)
!4254 = !DILocation(line: 1212, column: 3, scope: !4238)
!4255 = !DILocation(line: 1211, column: 10, scope: !4238)
!4256 = !DILocation(line: 1213, column: 8, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 1213, column: 7)
!4258 = !DILocation(line: 1213, column: 7, scope: !4238)
!4259 = !DILocation(line: 1216, column: 15, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 1214, column: 5)
!4261 = !DILocation(line: 1216, column: 3, scope: !4260)
!4262 = !DILocation(line: 1215, column: 13, scope: !4260)
!4263 = !DILocation(line: 1217, column: 16, scope: !4260)
!4264 = !DILocation(line: 1217, column: 23, scope: !4260)
!4265 = !DILocation(line: 1219, column: 4, scope: !4238)
!4266 = !DILocation(line: 1218, column: 5, scope: !4260)
!4267 = !DILocation(line: 1219, column: 12, scope: !4238)
!4268 = !DILocation(line: 1219, column: 19, scope: !4238)
!4269 = !DILocation(line: 1220, column: 1, scope: !4238)
!4270 = distinct !DISubprogram(name: "get_bb_original", scope: !3, file: !3, line: 1232, type: !4271, scopeLine: 1233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4273)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!901, !901}
!4273 = !{!4274, !4275, !4276}
!4274 = !DILocalVariable(name: "bb", arg: 1, scope: !4270, file: !3, line: 1232, type: !901)
!4275 = !DILocalVariable(name: "entry", scope: !4270, file: !3, line: 1234, type: !1978)
!4276 = !DILocalVariable(name: "key", scope: !4270, file: !3, line: 1235, type: !1979)
!4277 = !DILocation(line: 0, scope: !4270)
!4278 = !DILocation(line: 1235, column: 3, scope: !4270)
!4279 = !DILocation(line: 1237, column: 3, scope: !4270)
!4280 = !DILocation(line: 1239, column: 20, scope: !4270)
!4281 = !DILocation(line: 1239, column: 7, scope: !4270)
!4282 = !DILocation(line: 1239, column: 14, scope: !4270)
!4283 = !DILocation(line: 1240, column: 61, scope: !4270)
!4284 = !DILocation(line: 1240, column: 50, scope: !4270)
!4285 = !DILocation(line: 1241, column: 7, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 1241, column: 7)
!4287 = !DILocation(line: 1241, column: 7, scope: !4270)
!4288 = !DILocation(line: 1242, column: 12, scope: !4286)
!4289 = !DILocation(line: 1242, column: 5, scope: !4286)
!4290 = !DILocation(line: 0, scope: !4286)
!4291 = !DILocation(line: 1245, column: 1, scope: !4270)
!4292 = distinct !DISubprogram(name: "set_bb_copy", scope: !3, file: !3, line: 1250, type: !2637, scopeLine: 1251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4293)
!4293 = !{!4294, !4295}
!4294 = !DILocalVariable(name: "bb", arg: 1, scope: !4292, file: !3, line: 1250, type: !901)
!4295 = !DILocalVariable(name: "copy", arg: 2, scope: !4292, file: !3, line: 1250, type: !901)
!4296 = !DILocation(line: 0, scope: !4292)
!4297 = !DILocation(line: 1252, column: 28, scope: !4292)
!4298 = !DILocation(line: 1252, column: 41, scope: !4292)
!4299 = !DILocation(line: 1252, column: 54, scope: !4292)
!4300 = !DILocation(line: 1252, column: 3, scope: !4292)
!4301 = !DILocation(line: 1253, column: 1, scope: !4292)
!4302 = distinct !DISubprogram(name: "get_bb_copy", scope: !3, file: !3, line: 1257, type: !4271, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4303)
!4303 = !{!4304, !4305, !4306}
!4304 = !DILocalVariable(name: "bb", arg: 1, scope: !4302, file: !3, line: 1257, type: !901)
!4305 = !DILocalVariable(name: "entry", scope: !4302, file: !3, line: 1259, type: !1978)
!4306 = !DILocalVariable(name: "key", scope: !4302, file: !3, line: 1260, type: !1979)
!4307 = !DILocation(line: 0, scope: !4302)
!4308 = !DILocation(line: 1260, column: 3, scope: !4302)
!4309 = !DILocation(line: 1262, column: 3, scope: !4302)
!4310 = !DILocation(line: 1264, column: 20, scope: !4302)
!4311 = !DILocation(line: 1264, column: 7, scope: !4302)
!4312 = !DILocation(line: 1264, column: 14, scope: !4302)
!4313 = !DILocation(line: 1265, column: 61, scope: !4302)
!4314 = !DILocation(line: 1265, column: 50, scope: !4302)
!4315 = !DILocation(line: 1266, column: 7, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 1266, column: 7)
!4317 = !DILocation(line: 1266, column: 7, scope: !4302)
!4318 = !DILocation(line: 1267, column: 12, scope: !4316)
!4319 = !DILocation(line: 1267, column: 5, scope: !4316)
!4320 = !DILocation(line: 0, scope: !4316)
!4321 = !DILocation(line: 1270, column: 1, scope: !4302)
!4322 = distinct !DISubprogram(name: "set_loop_copy", scope: !3, file: !3, line: 1276, type: !4323, scopeLine: 1277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4325)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{null, !96, !96}
!4325 = !{!4326, !4327}
!4326 = !DILocalVariable(name: "loop", arg: 1, scope: !4322, file: !3, line: 1276, type: !96)
!4327 = !DILocalVariable(name: "copy", arg: 2, scope: !4322, file: !3, line: 1276, type: !96)
!4328 = !DILocation(line: 0, scope: !4322)
!4329 = !DILocation(line: 1278, column: 8, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 1278, column: 7)
!4331 = !DILocation(line: 0, scope: !4330)
!4332 = !DILocation(line: 1278, column: 7, scope: !4322)
!4333 = !DILocation(line: 1279, column: 5, scope: !4330)
!4334 = !DILocation(line: 1281, column: 58, scope: !4330)
!4335 = !DILocation(line: 1281, column: 5, scope: !4330)
!4336 = !DILocation(line: 1282, column: 1, scope: !4322)
!4337 = distinct !DISubprogram(name: "copy_original_table_clear", scope: !3, file: !3, line: 1180, type: !4338, scopeLine: 1181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4340)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{null, !817, !89}
!4340 = !{!4341, !4342, !4343, !4344, !4345}
!4341 = !DILocalVariable(name: "tab", arg: 1, scope: !4337, file: !3, line: 1180, type: !817)
!4342 = !DILocalVariable(name: "obj", arg: 2, scope: !4337, file: !3, line: 1180, type: !89)
!4343 = !DILocalVariable(name: "slot", scope: !4337, file: !3, line: 1182, type: !839)
!4344 = !DILocalVariable(name: "key", scope: !4337, file: !3, line: 1183, type: !1979)
!4345 = !DILocalVariable(name: "elt", scope: !4337, file: !3, line: 1183, type: !1978)
!4346 = !DILocation(line: 0, scope: !4337)
!4347 = !DILocation(line: 1183, column: 3, scope: !4337)
!4348 = !DILocation(line: 1185, column: 8, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 1185, column: 7)
!4350 = !DILocation(line: 1185, column: 7, scope: !4337)
!4351 = !DILocation(line: 1188, column: 7, scope: !4337)
!4352 = !DILocation(line: 1188, column: 14, scope: !4337)
!4353 = !DILocation(line: 1189, column: 10, scope: !4337)
!4354 = !DILocation(line: 1190, column: 8, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 1190, column: 7)
!4356 = !DILocation(line: 1190, column: 7, scope: !4337)
!4357 = !DILocation(line: 1193, column: 48, scope: !4337)
!4358 = !DILocation(line: 1194, column: 3, scope: !4337)
!4359 = !DILocation(line: 1195, column: 14, scope: !4337)
!4360 = !DILocation(line: 1195, column: 3, scope: !4337)
!4361 = !DILocation(line: 1196, column: 1, scope: !4337)
!4362 = distinct !DISubprogram(name: "get_loop_copy", scope: !3, file: !3, line: 1287, type: !4363, scopeLine: 1288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4365)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!96, !96}
!4365 = !{!4366, !4367, !4368}
!4366 = !DILocalVariable(name: "loop", arg: 1, scope: !4362, file: !3, line: 1287, type: !96)
!4367 = !DILocalVariable(name: "entry", scope: !4362, file: !3, line: 1289, type: !1978)
!4368 = !DILocalVariable(name: "key", scope: !4362, file: !3, line: 1290, type: !1979)
!4369 = !DILocation(line: 0, scope: !4362)
!4370 = !DILocation(line: 1290, column: 3, scope: !4362)
!4371 = !DILocation(line: 1292, column: 3, scope: !4362)
!4372 = !DILocation(line: 1294, column: 22, scope: !4362)
!4373 = !DILocation(line: 1294, column: 7, scope: !4362)
!4374 = !DILocation(line: 1294, column: 14, scope: !4362)
!4375 = !DILocation(line: 1295, column: 61, scope: !4362)
!4376 = !DILocation(line: 1295, column: 50, scope: !4362)
!4377 = !DILocation(line: 1296, column: 7, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 1296, column: 7)
!4379 = !DILocation(line: 1296, column: 7, scope: !4362)
!4380 = !DILocation(line: 1297, column: 29, scope: !4378)
!4381 = !DILocation(line: 1297, column: 12, scope: !4378)
!4382 = !DILocation(line: 1297, column: 5, scope: !4378)
!4383 = !DILocation(line: 0, scope: !4378)
!4384 = !DILocation(line: 1300, column: 1, scope: !4362)
!4385 = distinct !DISubprogram(name: "get_loop", scope: !98, file: !98, line: 417, type: !4386, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4388)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!96, !89}
!4388 = !{!4389}
!4389 = !DILocalVariable(name: "num", arg: 1, scope: !4385, file: !98, line: 417, type: !89)
!4390 = !DILocation(line: 0, scope: !4385)
!4391 = !DILocation(line: 419, column: 10, scope: !4385)
!4392 = !DILocation(line: 419, column: 3, scope: !4385)
!4393 = distinct !DISubprogram(name: "ei_end_p", scope: !73, file: !73, line: 721, type: !4394, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4396)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!378, !2010}
!4396 = !{!4397}
!4397 = !DILocalVariable(name: "i", arg: 1, scope: !4393, file: !73, line: 721, type: !2010)
!4398 = !DILocation(line: 723, column: 22, scope: !4393)
!4399 = !DILocation(line: 723, column: 19, scope: !4393)
!4400 = !DILocation(line: 723, column: 10, scope: !4393)
!4401 = !DILocation(line: 723, column: 3, scope: !4393)
!4402 = distinct !DISubprogram(name: "ei_edge", scope: !73, file: !73, line: 752, type: !4022, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4403)
!4403 = !{!4404}
!4404 = !DILocalVariable(name: "i", arg: 1, scope: !4402, file: !73, line: 752, type: !2010)
!4405 = !DILocation(line: 754, column: 10, scope: !4402)
!4406 = !DILocation(line: 754, column: 3, scope: !4402)
!4407 = distinct !DISubprogram(name: "ei_container", scope: !73, file: !73, line: 685, type: !4408, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4410)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!80, !2010}
!4410 = !{!4411}
!4411 = !DILocalVariable(name: "i", arg: 1, scope: !4407, file: !73, line: 685, type: !2010)
!4412 = !DILocation(line: 687, column: 3, scope: !4407)
!4413 = !DILocation(line: 688, column: 10, scope: !4407)
!4414 = !DILocation(line: 688, column: 3, scope: !4407)
!4415 = distinct !DISubprogram(name: "VEC_edge_gc_safe_push", scope: !73, file: !73, line: 151, type: !4416, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4418)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!2581, !2015, !69}
!4418 = !{!4419, !4420}
!4419 = !DILocalVariable(name: "vec_", arg: 1, scope: !4415, file: !73, line: 151, type: !2015)
!4420 = !DILocalVariable(name: "obj_", arg: 2, scope: !4415, file: !73, line: 151, type: !69)
!4421 = !DILocation(line: 0, scope: !4415)
!4422 = !DILocation(line: 151, column: 1, scope: !4415)
!4423 = distinct !DISubprogram(name: "VEC_edge_gc_reserve", scope: !73, file: !73, line: 151, type: !4424, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4426)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!13, !2015, !13}
!4426 = !{!4427, !4428, !4429}
!4427 = !DILocalVariable(name: "vec_", arg: 1, scope: !4423, file: !73, line: 151, type: !2015)
!4428 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4423, file: !73, line: 151, type: !13)
!4429 = !DILocalVariable(name: "extend", scope: !4423, file: !73, line: 151, type: !13)
!4430 = !DILocation(line: 0, scope: !4423)
!4431 = !DILocation(line: 151, column: 1, scope: !4423)
!4432 = !DILocation(line: 151, column: 1, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4423, file: !73, line: 151, column: 1)
!4434 = distinct !DISubprogram(name: "VEC_edge_base_quick_push", scope: !73, file: !73, line: 150, type: !4435, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4437)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!2581, !2620, !69}
!4437 = !{!4438, !4439, !4440}
!4438 = !DILocalVariable(name: "vec_", arg: 1, scope: !4434, file: !73, line: 150, type: !2620)
!4439 = !DILocalVariable(name: "obj_", arg: 2, scope: !4434, file: !73, line: 150, type: !69)
!4440 = !DILocalVariable(name: "slot_", scope: !4434, file: !73, line: 150, type: !2581)
!4441 = !DILocation(line: 0, scope: !4434)
!4442 = !DILocation(line: 150, column: 1, scope: !4434)
!4443 = distinct !DISubprogram(name: "VEC_edge_base_space", scope: !73, file: !73, line: 150, type: !4444, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4446)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!13, !2620, !13}
!4446 = !{!4447, !4448}
!4447 = !DILocalVariable(name: "vec_", arg: 1, scope: !4443, file: !73, line: 150, type: !2620)
!4448 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4443, file: !73, line: 150, type: !13)
!4449 = !DILocation(line: 0, scope: !4443)
!4450 = !DILocation(line: 150, column: 1, scope: !4443)
!4451 = distinct !DISubprogram(name: "VEC_edge_base_unordered_remove", scope: !73, file: !73, line: 150, type: !4452, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4454)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!69, !2620, !89}
!4454 = !{!4455, !4456, !4457, !4458}
!4455 = !DILocalVariable(name: "vec_", arg: 1, scope: !4451, file: !73, line: 150, type: !2620)
!4456 = !DILocalVariable(name: "ix_", arg: 2, scope: !4451, file: !73, line: 150, type: !89)
!4457 = !DILocalVariable(name: "slot_", scope: !4451, file: !73, line: 150, type: !2581)
!4458 = !DILocalVariable(name: "obj_", scope: !4451, file: !73, line: 150, type: !69)
!4459 = !DILocation(line: 0, scope: !4451)
!4460 = !DILocation(line: 150, column: 1, scope: !4451)
!4461 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !98, file: !98, line: 85, type: !4462, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1939, retainedNodes: !4466)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!132, !4464, !89}
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!4466 = !{!4467, !4468}
!4467 = !DILocalVariable(name: "vec_", arg: 1, scope: !4461, file: !98, line: 85, type: !4464)
!4468 = !DILocalVariable(name: "ix_", arg: 2, scope: !4461, file: !98, line: 85, type: !89)
!4469 = !DILocation(line: 0, scope: !4461)
!4470 = !DILocation(line: 85, column: 1, scope: !4461)
