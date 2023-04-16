; ModuleID = 'bb-reorder.bc'
source_filename = "bb-reorder.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.bbro_basic_block_data_def = type { i32, i32, i32, %struct.fibheap*, %struct.fibnode* }
%struct.fibheap = type { i64, %struct.fibnode*, %struct.fibnode* }
%struct.fibnode = type { %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, i64, i8*, i32 }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
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
%struct.trace = type { %struct.basic_block_def*, %struct.basic_block_def*, i32, i32 }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [13 x i8] c"bb-reorder.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@uncond_jump_length = internal unnamed_addr global i32 0, align 4, !dbg !0
@array_size = internal unnamed_addr global i32 0, align 4, !dbg !1855
@bbd = internal unnamed_addr global %struct.bbro_basic_block_data_def* null, align 8, !dbg !1857
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@flag_reorder_blocks_and_partition = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"compgotos\00", align 1
@pass_duplicate_computed_gotos = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8 ()* @gate_duplicate_computed_gotos, i32 ()* @duplicate_computed_gotos, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 162, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8, !dbg !1823
@.str.3 = private unnamed_addr constant [5 x i8] c"bbro\00", align 1
@pass_reorder_blocks = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8 ()* @gate_handle_reorder_blocks, i32 ()* @rest_of_handle_reorder_blocks, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 162, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8, !dbg !1851
@.str.4 = private unnamed_addr constant [7 x i8] c"bbpart\00", align 1
@pass_partition_blocks = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8 ()* @gate_handle_partition_blocks, i32 ()* @rest_of_handle_partition_blocks, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 162, i32 512, i32 0, i32 0, i32 0, i32 1025 } }, align 8, !dbg !1853
@max_entry_frequency = internal unnamed_addr global i32 0, align 4, !dbg !1859
@max_entry_count = internal unnamed_addr global i64 0, align 8, !dbg !1861
@.str.5 = private unnamed_addr constant [16 x i8] c"STC - round %d\0A\00", align 1
@exec_threshold = internal unnamed_addr constant [5 x i32] [i32 500, i32 200, i32 50, i32 0, i32 0], align 16, !dbg !1863
@branch_threshold = internal unnamed_addr constant [5 x i32] [i32 400, i32 200, i32 100, i32 0, i32 0], align 16, !dbg !1868
@.str.6 = private unnamed_addr constant [23 x i8] c"Trace %d (round %d):  \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d [%d] \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%d [%d]\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Getting bb %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"  Possible start point of next round: %d (key: %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Basic block %d was visited in trace %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Changing key for bb %d from %ld to %ld.\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"  Possible start of %s round: %d (key: %ld)\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Rotating loop %d - %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Selecting BB %d\0A\00", align 1
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@.str.19 = private unnamed_addr constant [49 x i8] c"Block %d can't be copied because its size = %d.\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Duplicated bb %d (created bb %d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Growing the dynamic array to %d elements.\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Connection: %d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Connection: %d %d \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Final order:\0A\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"multiple hot/cold transitions found (bb %i)\00", align 1
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_expensive_optimizations = external dso_local local_unnamed_addr global i32, align 4
@flag_reorder_blocks = external dso_local local_unnamed_addr global i32, align 4
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@user_defined_section_attribute = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1874 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1887, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1888, metadata !DIExpression()), !dbg !1889
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1890
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1891
  ret i32 %call, !dbg !1892
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1893 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1897
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1898
  ret i32 %call, !dbg !1899
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1900 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1955, metadata !DIExpression()), !dbg !1956
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1957
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1957
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1957
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1957
  %cmp = icmp uge i8* %0, %1, !dbg !1957
  %conv1 = zext i1 %cmp to i64, !dbg !1957
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1957
  %tobool = icmp eq i64 %expval, 0, !dbg !1957
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1957

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1957
  br label %cond.end, !dbg !1957

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1957
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1957
  %2 = load i8, i8* %0, align 1, !dbg !1957
  %conv3 = zext i8 %2 to i32, !dbg !1957
  br label %cond.end, !dbg !1957

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1957
  ret i32 %cond, !dbg !1958
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1959 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1961, metadata !DIExpression()), !dbg !1962
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1963
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1963
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1963
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1963
  %cmp = icmp uge i8* %0, %1, !dbg !1963
  %conv1 = zext i1 %cmp to i64, !dbg !1963
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1963
  %tobool = icmp eq i64 %expval, 0, !dbg !1963
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1963

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1963
  br label %cond.end, !dbg !1963

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1963
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1963
  %2 = load i8, i8* %0, align 1, !dbg !1963
  %conv3 = zext i8 %2 to i32, !dbg !1963
  br label %cond.end, !dbg !1963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1963
  ret i32 %cond, !dbg !1964
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1965 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1966
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1966
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1966
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1966
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1966
  %cmp = icmp uge i8* %1, %2, !dbg !1966
  %conv1 = zext i1 %cmp to i64, !dbg !1966
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1966
  %tobool = icmp eq i64 %expval, 0, !dbg !1966
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1966

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1966
  br label %cond.end, !dbg !1966

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1966
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1966
  %3 = load i8, i8* %1, align 1, !dbg !1966
  %conv3 = zext i8 %3 to i32, !dbg !1966
  br label %cond.end, !dbg !1966

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1966
  ret i32 %cond, !dbg !1967
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1968 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1972, metadata !DIExpression()), !dbg !1973
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1974
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1975
  ret i32 %call, !dbg !1976
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1977 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1981, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1982, metadata !DIExpression()), !dbg !1983
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1984
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1984
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1984
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1984
  %cmp = icmp uge i8* %0, %1, !dbg !1984
  %conv1 = zext i1 %cmp to i64, !dbg !1984
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1984
  %tobool = icmp eq i64 %expval, 0, !dbg !1984
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1984

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1984
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1984
  br label %cond.end, !dbg !1984

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1984
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1984
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1984
  store i8 %conv2, i8* %0, align 1, !dbg !1984
  %conv6 = and i32 %__c, 255, !dbg !1984
  br label %cond.end, !dbg !1984

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1984
  ret i32 %cond, !dbg !1985
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1986 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1988, metadata !DIExpression()), !dbg !1990
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1989, metadata !DIExpression()), !dbg !1990
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1991
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1991
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1991
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1991
  %cmp = icmp uge i8* %0, %1, !dbg !1991
  %conv1 = zext i1 %cmp to i64, !dbg !1991
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1991
  %tobool = icmp eq i64 %expval, 0, !dbg !1991
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1991

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1991
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1991
  br label %cond.end, !dbg !1991

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1991
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1991
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1991
  store i8 %conv2, i8* %0, align 1, !dbg !1991
  %conv6 = and i32 %__c, 255, !dbg !1991
  br label %cond.end, !dbg !1991

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1991
  ret i32 %cond, !dbg !1992
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1993 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1995, metadata !DIExpression()), !dbg !1996
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1997
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1997
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1997
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1997
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1997
  %cmp = icmp uge i8* %1, %2, !dbg !1997
  %conv1 = zext i1 %cmp to i64, !dbg !1997
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1997
  %tobool = icmp eq i64 %expval, 0, !dbg !1997
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1997

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1997
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1997
  br label %cond.end, !dbg !1997

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1997
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1997
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1997
  store i8 %conv4, i8* %1, align 1, !dbg !1997
  %conv6 = and i32 %__c, 255, !dbg !1997
  br label %cond.end, !dbg !1997

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1997
  ret i32 %cond, !dbg !1998
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1999 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2007, metadata !DIExpression()), !dbg !2008
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2009
  ret i64 %call, !dbg !2010
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2011 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2013, metadata !DIExpression()), !dbg !2014
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2015
  %0 = load i32, i32* %_flags, align 8, !dbg !2015
  %and = lshr i32 %0, 4, !dbg !2015
  %and.lobit = and i32 %and, 1, !dbg !2015
  ret i32 %and.lobit, !dbg !2016
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2017 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2019, metadata !DIExpression()), !dbg !2020
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2021
  %0 = load i32, i32* %_flags, align 8, !dbg !2021
  %and = lshr i32 %0, 5, !dbg !2021
  %and.lobit = and i32 %and, 1, !dbg !2021
  ret i32 %and.lobit, !dbg !2022
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2023 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2026, metadata !DIExpression()), !dbg !2027
  %__c.off = add i32 %__c, 128, !dbg !2028
  %0 = icmp ult i32 %__c.off, 384, !dbg !2028
  br i1 %0, label %cond.true, label %cond.end, !dbg !2028

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2029
  %1 = load i32*, i32** %call, align 8, !dbg !2030
  %idxprom = sext i32 %__c to i64, !dbg !2031
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2031
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2031
  br label %cond.end, !dbg !2032

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2032
  ret i32 %cond, !dbg !2033
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2034 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2036, metadata !DIExpression()), !dbg !2037
  %__c.off = add i32 %__c, 128, !dbg !2038
  %0 = icmp ult i32 %__c.off, 384, !dbg !2038
  br i1 %0, label %cond.true, label %cond.end, !dbg !2038

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2039
  %1 = load i32*, i32** %call, align 8, !dbg !2040
  %idxprom = sext i32 %__c to i64, !dbg !2041
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2041
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2041
  br label %cond.end, !dbg !2042

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2042
  ret i32 %cond, !dbg !2043
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2044 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2049, metadata !DIExpression()), !dbg !2050
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2051
  %conv = trunc i64 %call to i32, !dbg !2052
  ret i32 %conv, !dbg !2053
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2054 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2058, metadata !DIExpression()), !dbg !2059
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2060
  ret i64 %call, !dbg !2061
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2062 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2067, metadata !DIExpression()), !dbg !2068
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2069
  ret i64 %call, !dbg !2070
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2071 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2077, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2078, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2079, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2080, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2081, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 0, metadata !2082, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2083, metadata !DIExpression()), !dbg !2087
  br label %while.cond, !dbg !2088

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2089
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2087
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2083, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2082, metadata !DIExpression()), !dbg !2087
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2090
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2088

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2091
  %div = lshr i64 %add, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %div, metadata !2084, metadata !DIExpression()), !dbg !2087
  %mul = mul i64 %div, %__size, !dbg !2094
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2095
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2085, metadata !DIExpression()), !dbg !2087
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %call, metadata !2086, metadata !DIExpression()), !dbg !2087
  %cmp1 = icmp slt i32 %call, 0, !dbg !2097
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2099

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2100
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2102

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2082, metadata !DIExpression()), !dbg !2087
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2087
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2087
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2083, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2082, metadata !DIExpression()), !dbg !2087
  br label %while.cond, !dbg !2088, !llvm.loop !2104

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2087
  ret i8* %retval.0, !dbg !2106
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2107 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2113, metadata !DIExpression()), !dbg !2114
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2115
  ret double %call, !dbg !2116
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2117 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2126, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2127, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %base, metadata !2128, metadata !DIExpression()), !dbg !2129
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2130
  ret i64 %call, !dbg !2131
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2138, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2139, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %base, metadata !2140, metadata !DIExpression()), !dbg !2141
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2142
  ret i64 %call, !dbg !2143
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2144 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2155, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2156, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i32 %base, metadata !2157, metadata !DIExpression()), !dbg !2158
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2159
  ret i64 %call, !dbg !2160
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2161 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2165, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 %base, metadata !2167, metadata !DIExpression()), !dbg !2168
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2169
  ret i64 %call, !dbg !2170
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2171 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2211, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2212, metadata !DIExpression()), !dbg !2213
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2214
  ret i32 %call, !dbg !2215
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2216 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2218, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2219, metadata !DIExpression()), !dbg !2220
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2221
  ret i32 %call, !dbg !2222
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2223 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2227, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2228, metadata !DIExpression()), !dbg !2229
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2230
  ret i32 %call, !dbg !2231
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2232 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2236, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2237, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2238, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2239, metadata !DIExpression()), !dbg !2240
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2241
  ret i32 %call, !dbg !2242
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2243 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2247, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2248, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2249, metadata !DIExpression()), !dbg !2250
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2249, metadata !DIExpression(DW_OP_deref)), !dbg !2250
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2251
  ret i32 %call, !dbg !2252
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2253 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2257, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2258, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2259, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2260, metadata !DIExpression()), !dbg !2261
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2260, metadata !DIExpression(DW_OP_deref)), !dbg !2261
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2262
  ret i32 %call, !dbg !2263
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2264 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2288, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2289, metadata !DIExpression()), !dbg !2290
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2291
  ret i32 %call, !dbg !2292
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2293 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2295, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2296, metadata !DIExpression()), !dbg !2297
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2298
  ret i32 %call, !dbg !2299
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2300 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2304, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2305, metadata !DIExpression()), !dbg !2306
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2307
  ret i32 %call, !dbg !2308
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2309 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2313, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2314, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2316, metadata !DIExpression()), !dbg !2317
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2318
  ret i32 %call, !dbg !2319
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @reorder_basic_blocks() local_unnamed_addr #4 !dbg !2320 {
entry:
  %n_traces = alloca i32, align 4
  %0 = bitcast i32* %n_traces to i8*, !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2327
  %call = tail call i32 @current_ir_type() #6, !dbg !2328
  %cmp = icmp eq i32 %call, 2, !dbg !2328
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2328

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1900, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2328
  br label %cond.end, !dbg !2328

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2329
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2329
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2329
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 3, !dbg !2329
  %3 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2329
  %cmp1 = icmp slt i32 %3, 4, !dbg !2331
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !2332

if.end:                                           ; preds = %cond.end
  tail call void @set_edge_can_fallthru_flag() #6, !dbg !2333
  %call2 = tail call zeroext i8 @mark_dfs_back_edges() #6, !dbg !2334
  %4 = load i32, i32* @uncond_jump_length, align 4, !dbg !2335
  %cmp3 = icmp eq i32 %4, 0, !dbg !2337
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2338

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @get_uncond_jump_length() #8, !dbg !2339
  store i32 %call5, i32* @uncond_jump_length, align 4, !dbg !2340
  br label %if.end6, !dbg !2341

if.end6:                                          ; preds = %if.then4, %if.end
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2342
  %cfg8 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2342
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8, align 8, !dbg !2342
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 5, !dbg !2342
  %7 = load i32, i32* %x_last_basic_block, align 8, !dbg !2342
  %div = sdiv i32 %7, 4, !dbg !2342
  %8 = mul i32 %div, 5, !dbg !2342
  %mul = add i32 %8, 5, !dbg !2342
  store i32 %mul, i32* @array_size, align 4, !dbg !2343
  %conv = sext i32 %mul to i64, !dbg !2344
  %mul9 = shl nsw i64 %conv, 5, !dbg !2344
  %call10 = tail call i8* @xmalloc(i64 %mul9) #6, !dbg !2344
  store i8* %call10, i8** bitcast (%struct.bbro_basic_block_data_def** @bbd to i8**), align 8, !dbg !2345
  call void @llvm.dbg.value(metadata i32 0, metadata !2325, metadata !DIExpression()), !dbg !2346
  br label %for.cond, !dbg !2347

for.cond:                                         ; preds = %for.body, %if.end6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end6 ], !dbg !2349
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2325, metadata !DIExpression()), !dbg !2346
  %9 = load i32, i32* @array_size, align 4, !dbg !2350
  %10 = sext i32 %9 to i64, !dbg !2352
  %cmp11 = icmp slt i64 %indvars.iv, %10, !dbg !2352
  br i1 %cmp11, label %for.body, label %for.end, !dbg !2353

for.body:                                         ; preds = %for.cond
  %11 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2354
  %start_of_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %11, i64 %indvars.iv, i32 0, !dbg !2356
  store i32 -1, i32* %start_of_trace, align 8, !dbg !2357
  %12 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2358
  %in_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %12, i64 %indvars.iv, i32 2, !dbg !2359
  store i32 -1, i32* %in_trace, align 8, !dbg !2360
  %13 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2361
  %end_of_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %13, i64 %indvars.iv, i32 1, !dbg !2362
  store i32 -1, i32* %end_of_trace, align 4, !dbg !2363
  %14 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2364
  %heap = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %14, i64 %indvars.iv, i32 3, !dbg !2365
  store %struct.fibheap* null, %struct.fibheap** %heap, align 8, !dbg !2366
  %15 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2367
  %node = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %15, i64 %indvars.iv, i32 4, !dbg !2368
  store %struct.fibnode* null, %struct.fibnode** %node, align 8, !dbg !2369
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i32 undef, metadata !2325, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2346
  br label %for.cond, !dbg !2371, !llvm.loop !2372

for.end:                                          ; preds = %for.cond
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2374
  %cfg22 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2374
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg22, align 8, !dbg !2374
  %x_n_basic_blocks23 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 3, !dbg !2374
  %18 = load i32, i32* %x_n_basic_blocks23, align 8, !dbg !2374
  %conv24 = sext i32 %18 to i64, !dbg !2374
  %mul25 = mul nsw i64 %conv24, 24, !dbg !2374
  %call26 = tail call i8* @xmalloc(i64 %mul25) #6, !dbg !2374
  %19 = bitcast i8* %call26 to %struct.trace*, !dbg !2374
  call void @llvm.dbg.value(metadata %struct.trace* %19, metadata !2326, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i32 0, metadata !2324, metadata !DIExpression()), !dbg !2346
  store i32 0, i32* %n_traces, align 4, !dbg !2375
  call void @llvm.dbg.value(metadata i32* %n_traces, metadata !2324, metadata !DIExpression(DW_OP_deref)), !dbg !2346
  call fastcc void @find_traces(i32* nonnull %n_traces, %struct.trace* %19) #8, !dbg !2376
  %20 = load i32, i32* %n_traces, align 4, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %20, metadata !2324, metadata !DIExpression()), !dbg !2346
  call fastcc void @connect_traces(i32 %20, %struct.trace* %19) #8, !dbg !2378
  %tobool = icmp eq i8* %call26, null, !dbg !2379
  br i1 %tobool, label %cond.true27, label %cond.end29, !dbg !2379

cond.true27:                                      ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1929, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2379
  br label %cond.end29, !dbg !2379

cond.end29:                                       ; preds = %for.end, %cond.true27
  call void @free(i8* %call26) #6, !dbg !2379
  call void @llvm.dbg.value(metadata %struct.trace* null, metadata !2326, metadata !DIExpression()), !dbg !2346
  %21 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2380
  %tobool31 = icmp eq %struct.bbro_basic_block_data_def* %21, null, !dbg !2380
  %22 = bitcast %struct.bbro_basic_block_data_def* %21 to i8*, !dbg !2380
  br i1 %tobool31, label %cond.true32, label %cond.end34, !dbg !2380

cond.true32:                                      ; preds = %cond.end29
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1930, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2380
  %.pre = load i8*, i8** bitcast (%struct.bbro_basic_block_data_def** @bbd to i8**), align 8, !dbg !2380
  br label %cond.end34, !dbg !2380

cond.end34:                                       ; preds = %cond.end29, %cond.true32
  %23 = phi i8* [ %22, %cond.end29 ], [ %.pre, %cond.true32 ], !dbg !2380
  call void @free(i8* %23) #6, !dbg !2380
  store %struct.bbro_basic_block_data_def* null, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2380
  call void @relink_block_chain(i8 zeroext 1) #6, !dbg !2381
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2382
  %tobool36 = icmp eq %struct._IO_FILE* %24, null, !dbg !2382
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !2384

if.then37:                                        ; preds = %cond.end34
  %25 = load i32, i32* @dump_flags, align 4, !dbg !2385
  call void @dump_flow_info(%struct._IO_FILE* nonnull %24, i32 %25) #6, !dbg !2386
  br label %if.end38, !dbg !2386

if.end38:                                         ; preds = %cond.end34, %if.then37
  %26 = load i32, i32* @flag_reorder_blocks_and_partition, align 4, !dbg !2387
  %tobool39 = icmp eq i32 %26, 0, !dbg !2387
  br i1 %tobool39, label %cleanup, label %if.then40, !dbg !2389

if.then40:                                        ; preds = %if.end38
  call fastcc void @verify_hot_cold_block_grouping() #8, !dbg !2390
  br label %cleanup, !dbg !2390

cleanup:                                          ; preds = %if.end38, %if.then40, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2391
  ret void, !dbg !2391
}

declare dso_local i32 @current_ir_type() local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local void @set_edge_can_fallthru_flag() local_unnamed_addr #1

declare dso_local zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_uncond_jump_length() unnamed_addr #4 !dbg !2392 {
entry:
  %call = tail call %struct.rtx_def* @gen_label_rtx() #6, !dbg !2397
  %call1 = tail call %struct.rtx_def* @get_insns() #6, !dbg !2398
  %call2 = tail call %struct.rtx_def* @emit_label_before(%struct.rtx_def* %call, %struct.rtx_def* %call1) #6, !dbg !2399
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !2394, metadata !DIExpression()), !dbg !2400
  %call3 = tail call %struct.rtx_def* @gen_jump(%struct.rtx_def* %call2) #6, !dbg !2401
  %call4 = tail call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call3) #6, !dbg !2402
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call4, metadata !2395, metadata !DIExpression()), !dbg !2400
  %call5 = tail call i32 @get_attr_min_length(%struct.rtx_def* %call4) #6, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %call5, metadata !2396, metadata !DIExpression()), !dbg !2400
  %call6 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %call4) #6, !dbg !2404
  %call7 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %call2) #6, !dbg !2405
  ret i32 %call5, !dbg !2406
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @find_traces(i32* %n_traces, %struct.trace* %traces) unnamed_addr #4 !dbg !2407 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %heap = alloca %struct.fibheap*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32* %n_traces, metadata !2412, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata %struct.trace* %traces, metadata !2413, metadata !DIExpression()), !dbg !2435
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2436
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2436
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2437
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2437
  %2 = bitcast %struct.fibheap** %heap to i8*, !dbg !2438
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2438
  call void @llvm.dbg.value(metadata i32 4, metadata !2415, metadata !DIExpression()), !dbg !2435
  %call = tail call %struct.fibheap* @fibheap_new() #6, !dbg !2439
  call void @llvm.dbg.value(metadata %struct.fibheap* %call, metadata !2424, metadata !DIExpression()), !dbg !2435
  store %struct.fibheap* %call, %struct.fibheap** %heap, align 8, !dbg !2440
  store i32 0, i32* @max_entry_frequency, align 4, !dbg !2441
  store i64 0, i64* @max_entry_count, align 8, !dbg !2442
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2443
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2443
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2443
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2443
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2443
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !2443
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2443
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 1, !dbg !2443
  %call1 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2443
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2443
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 0, !dbg !2443
  store i32 %8, i32* %7, align 8, !dbg !2443
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2443
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 1, !dbg !2443
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !2443
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !2443
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2443
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2445
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2445
  %13 = bitcast %struct.fibheap** %heap to i64*, !dbg !2447
  br label %for.cond, !dbg !2443

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %11, align 8, !dbg !2449
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !2449
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2416, metadata !DIExpression(DW_OP_deref)), !dbg !2435
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #8, !dbg !2449
  %tobool = icmp eq i8 %call2, 0, !dbg !2443
  br i1 %tobool, label %for.cond21.preheader, label %for.body, !dbg !2443

for.cond21.preheader:                             ; preds = %for.cond
  br label %for.cond21, !dbg !2450

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %13, align 8, !dbg !2451
  %17 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2452
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2453
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !2416, metadata !DIExpression()), !dbg !2435
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i64 0, i32 1, !dbg !2454
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2454
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i64 0, i32 9, !dbg !2455
  %20 = load i32, i32* %index, align 8, !dbg !2455
  %idxprom = sext i32 %20 to i64, !dbg !2452
  %heap3 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %17, i64 %idxprom, i32 3, !dbg !2456
  %21 = bitcast %struct.fibheap** %heap3 to i64*, !dbg !2457
  store i64 %16, i64* %21, align 8, !dbg !2457
  %22 = load %struct.fibheap*, %struct.fibheap** %heap, align 8, !dbg !2458
  call void @llvm.dbg.value(metadata %struct.fibheap* %22, metadata !2424, metadata !DIExpression()), !dbg !2435
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2459
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !2416, metadata !DIExpression()), !dbg !2435
  %dest4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 1, !dbg !2460
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest4, align 8, !dbg !2460
  %call5 = call fastcc i64 @bb_to_key(%struct.basic_block_def* %24) #8, !dbg !2461
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2462
  call void @llvm.dbg.value(metadata %struct.edge_def* %25, metadata !2416, metadata !DIExpression()), !dbg !2435
  %dest6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i64 0, i32 1, !dbg !2463
  %26 = bitcast %struct.basic_block_def** %dest6 to i8**, !dbg !2463
  %27 = load i8*, i8** %26, align 8, !dbg !2463
  %call7 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %22, i64 %call5, i8* %27) #6, !dbg !2464
  %28 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2465
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2466
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !2416, metadata !DIExpression()), !dbg !2435
  %dest8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 1, !dbg !2467
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %dest8, align 8, !dbg !2467
  %index9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i64 0, i32 9, !dbg !2468
  %31 = load i32, i32* %index9, align 8, !dbg !2468
  %idxprom10 = sext i32 %31 to i64, !dbg !2465
  %node = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %28, i64 %idxprom10, i32 4, !dbg !2469
  store %struct.fibnode* %call7, %struct.fibnode** %node, align 8, !dbg !2470
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2471
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !2416, metadata !DIExpression()), !dbg !2435
  %dest12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i64 0, i32 1, !dbg !2473
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %dest12, align 8, !dbg !2473
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 11, !dbg !2474
  %34 = load i32, i32* %frequency, align 8, !dbg !2474
  %35 = load i32, i32* @max_entry_frequency, align 4, !dbg !2475
  %cmp = icmp sgt i32 %34, %35, !dbg !2476
  br i1 %cmp, label %if.then, label %if.end, !dbg !2477

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !2416, metadata !DIExpression()), !dbg !2435
  store i32 %34, i32* @max_entry_frequency, align 4, !dbg !2478
  br label %if.end, !dbg !2479

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !2416, metadata !DIExpression()), !dbg !2435
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 8, !dbg !2480
  %36 = load i64, i64* %count, align 8, !dbg !2480
  %37 = load i64, i64* @max_entry_count, align 8, !dbg !2482
  %cmp16 = icmp sgt i64 %36, %37, !dbg !2483
  br i1 %cmp16, label %if.then17, label %for.inc, !dbg !2484

if.then17:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !2416, metadata !DIExpression()), !dbg !2435
  store i64 %36, i64* @max_entry_count, align 8, !dbg !2485
  br label %for.inc, !dbg !2486

for.inc:                                          ; preds = %if.end, %if.then17
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2417, metadata !DIExpression(DW_OP_deref)), !dbg !2435
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2449
  br label %for.cond, !dbg !2449, !llvm.loop !2487

for.cond21:                                       ; preds = %for.cond21.preheader, %if.end37
  %indvars.iv7 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next8, %if.end37 ], !dbg !2489
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !2414, metadata !DIExpression()), !dbg !2435
  %exitcond = icmp eq i64 %indvars.iv7, 4, !dbg !2490
  br i1 %exitcond, label %for.end47, label %for.body23, !dbg !2450

for.body23:                                       ; preds = %for.cond21
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2491
  %tobool24 = icmp eq %struct._IO_FILE* %38, null, !dbg !2491
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !2493

if.then25:                                        ; preds = %for.body23
  %39 = trunc i64 %indvars.iv7 to i32, !dbg !2494
  %40 = add i32 %39, 1, !dbg !2494
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %40) #6, !dbg !2494
  br label %if.end27, !dbg !2494

if.end27:                                         ; preds = %for.body23, %if.then25
  %41 = load i64, i64* @max_entry_count, align 8, !dbg !2495
  %cmp28 = icmp slt i64 %41, 2147483, !dbg !2497
  br i1 %cmp28, label %if.then29, label %if.else, !dbg !2498

if.then29:                                        ; preds = %if.end27
  %arrayidx31 = getelementptr inbounds [5 x i32], [5 x i32]* @exec_threshold, i64 0, i64 %indvars.iv7, !dbg !2499
  %42 = load i32, i32* %arrayidx31, align 4, !dbg !2499
  %conv = sext i32 %42 to i64, !dbg !2499
  %mul = mul nsw i64 %41, %conv, !dbg !2500
  %div = sdiv i64 %mul, 1000, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %div, metadata !2425, metadata !DIExpression()), !dbg !2502
  br label %if.end37, !dbg !2503

if.else:                                          ; preds = %if.end27
  %div32 = sdiv i64 %41, 1000, !dbg !2504
  %arrayidx34 = getelementptr inbounds [5 x i32], [5 x i32]* @exec_threshold, i64 0, i64 %indvars.iv7, !dbg !2505
  %43 = load i32, i32* %arrayidx34, align 4, !dbg !2505
  %conv35 = sext i32 %43 to i64, !dbg !2505
  %mul36 = mul nsw i64 %div32, %conv35, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %mul36, metadata !2425, metadata !DIExpression()), !dbg !2502
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then29
  %44 = phi i32 [ %43, %if.else ], [ %42, %if.then29 ], !dbg !2507
  %count_threshold.0 = phi i64 [ %mul36, %if.else ], [ %div, %if.then29 ], !dbg !2508
  call void @llvm.dbg.value(metadata i64 %count_threshold.0, metadata !2425, metadata !DIExpression()), !dbg !2502
  %arrayidx39 = getelementptr inbounds [5 x i32], [5 x i32]* @branch_threshold, i64 0, i64 %indvars.iv7, !dbg !2509
  %45 = load i32, i32* %arrayidx39, align 4, !dbg !2509
  %div41 = mul nsw i32 %45, 10, !dbg !2510
  %46 = load i32, i32* @max_entry_frequency, align 4, !dbg !2511
  %mul44 = mul nsw i32 %46, %44, !dbg !2512
  %div45 = sdiv i32 %mul44, 1000, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.fibheap** %heap, metadata !2424, metadata !DIExpression(DW_OP_deref)), !dbg !2435
  %47 = trunc i64 %indvars.iv7 to i32, !dbg !2514
  call fastcc void @find_traces_1_round(i32 %div41, i32 %div45, i64 %count_threshold.0, %struct.trace* %traces, i32* %n_traces, i32 %47, %struct.fibheap** nonnull %heap, i32 4) #8, !dbg !2514
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !2515
  call void @llvm.dbg.value(metadata i32 undef, metadata !2414, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2435
  br label %for.cond21, !dbg !2516, !llvm.loop !2517

for.end47:                                        ; preds = %for.cond21
  %48 = load %struct.fibheap*, %struct.fibheap** %heap, align 8, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.fibheap* %48, metadata !2424, metadata !DIExpression()), !dbg !2435
  call void @fibheap_delete(%struct.fibheap* %48) #6, !dbg !2520
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2521
  %tobool48 = icmp eq %struct._IO_FILE* %49, null, !dbg !2521
  br i1 %tobool48, label %if.end79, label %for.cond50.preheader, !dbg !2522

for.cond50.preheader:                             ; preds = %for.end47
  br label %for.cond50, !dbg !2523

for.cond50:                                       ; preds = %for.cond50.preheader, %for.end71
  %indvars.iv = phi i64 [ 0, %for.cond50.preheader ], [ %indvars.iv.next, %for.end71 ], !dbg !2524
  %50 = phi %struct._IO_FILE* [ %49, %for.cond50.preheader ], [ %.pre, %for.end71 ], !dbg !2524
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2414, metadata !DIExpression()), !dbg !2435
  %51 = load i32, i32* %n_traces, align 4, !dbg !2525
  %52 = sext i32 %51 to i64, !dbg !2526
  %cmp51 = icmp slt i64 %indvars.iv, %52, !dbg !2526
  br i1 %cmp51, label %for.body53, label %for.end77, !dbg !2523

for.body53:                                       ; preds = %for.cond50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2527
  %round = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %indvars.iv, i32 2, !dbg !2528
  %53 = load i32, i32* %round, align 8, !dbg !2528
  %add57 = add nsw i32 %53, 1, !dbg !2529
  %54 = trunc i64 %indvars.iv.next to i32, !dbg !2530
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %54, i32 %add57) #6, !dbg !2530
  %first = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %indvars.iv, i32 0, !dbg !2531
  %last = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %indvars.iv, i32 1, !dbg !2533
  br label %for.cond61, !dbg !2535

for.cond61:                                       ; preds = %for.body66, %for.body53
  %bb.0.in = phi %struct.basic_block_def** [ %first, %for.body53 ], [ %59, %for.body66 ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2536
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2429, metadata !DIExpression()), !dbg !2537
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %last, align 8, !dbg !2538
  %cmp64 = icmp eq %struct.basic_block_def* %bb.0, %55, !dbg !2539
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2537
  %index67 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2537
  %57 = load i32, i32* %index67, align 8, !dbg !2537
  %frequency68 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 11, !dbg !2537
  %58 = load i32, i32* %frequency68, align 8, !dbg !2537
  br i1 %cmp64, label %for.end71, label %for.body66, !dbg !2540

for.body66:                                       ; preds = %for.cond61
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %57, i32 %58) #6, !dbg !2541
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !2542
  %59 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !2542
  br label %for.cond61, !dbg !2543, !llvm.loop !2544

for.end71:                                        ; preds = %for.cond61
  %.lcssa11 = phi %struct._IO_FILE* [ %56, %for.cond61 ], !dbg !2537
  %.lcssa10 = phi i32 [ %57, %for.cond61 ], !dbg !2537
  %.lcssa = phi i32 [ %58, %for.cond61 ], !dbg !2537
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %.lcssa10, i32 %.lcssa) #6, !dbg !2546
  call void @llvm.dbg.value(metadata i32 undef, metadata !2414, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2435
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2524
  br label %for.cond50, !dbg !2547, !llvm.loop !2548

for.end77:                                        ; preds = %for.cond50
  %.lcssa12 = phi %struct._IO_FILE* [ %50, %for.cond50 ], !dbg !2524
  %call78 = call i32 @fflush(%struct._IO_FILE* %.lcssa12) #6, !dbg !2550
  br label %if.end79, !dbg !2551

if.end79:                                         ; preds = %for.end47, %for.end77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2552
  ret void, !dbg !2552
}

; Function Attrs: nounwind uwtable
define internal fastcc void @connect_traces(i32 %n_traces, %struct.trace* %traces) unnamed_addr #4 !dbg !2553 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %ei164 = alloca %struct.edge_iterator, align 8
  %tmp165 = alloca %struct.edge_iterator, align 8
  %e2 = alloca %struct.edge_def*, align 8
  %tmp263 = alloca %struct.edge_iterator, align 8
  %ei295 = alloca %struct.edge_iterator, align 8
  %tmp316 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %n_traces, metadata !2557, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata %struct.trace* %traces, metadata !2558, metadata !DIExpression()), !dbg !2611
  %0 = load i32, i32* @max_entry_frequency, align 4, !dbg !2612
  %div = sdiv i32 %0, 10, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %div, metadata !2565, metadata !DIExpression()), !dbg !2611
  %1 = load i64, i64* @max_entry_count, align 8, !dbg !2614
  %cmp = icmp slt i64 %1, 2147483, !dbg !2616
  br i1 %cmp, label %if.then, label %if.else, !dbg !2617

if.then:                                          ; preds = %entry
  %div2 = sdiv i64 %1, 10, !dbg !2618
  call void @llvm.dbg.value(metadata i64 %div2, metadata !2566, metadata !DIExpression()), !dbg !2611
  br label %if.end, !dbg !2619

if.else:                                          ; preds = %entry
  %div3 = sdiv i64 %1, 1000, !dbg !2620
  %mul4 = mul nsw i64 %div3, 100, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %mul4, metadata !2566, metadata !DIExpression()), !dbg !2611
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %count_threshold.0 = phi i64 [ %div2, %if.then ], [ %mul4, %if.else ], !dbg !2622
  call void @llvm.dbg.value(metadata i64 %count_threshold.0, metadata !2566, metadata !DIExpression()), !dbg !2611
  %conv = sext i32 %n_traces to i64, !dbg !2623
  %call = tail call i8* @xcalloc(i64 %conv, i64 1) #6, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %call, metadata !2560, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 -1, metadata !2562, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 1, metadata !2563, metadata !DIExpression()), !dbg !2611
  %first = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 0, i32 0, !dbg !2624
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8, !dbg !2624
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 13, !dbg !2624
  %3 = load i32, i32* %flags, align 8, !dbg !2624
  %and = and i32 %3, 96, !dbg !2624
  call void @llvm.dbg.value(metadata i32 %and, metadata !2564, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 0, metadata !2561, metadata !DIExpression()), !dbg !2611
  %4 = load i32, i32* @flag_reorder_blocks_and_partition, align 4, !dbg !2625
  %tobool = icmp eq i32 %4, 0, !dbg !2625
  br i1 %tobool, label %if.end21, label %for.cond.preheader, !dbg !2627

for.cond.preheader:                               ; preds = %if.end
  %5 = sext i32 %n_traces to i64, !dbg !2628
  br label %for.cond, !dbg !2628

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !2611
  %two_passes.0 = phi i8 [ 0, %for.cond.preheader ], [ %spec.select, %for.body ], !dbg !2611
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2559, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 %two_passes.0, metadata !2561, metadata !DIExpression()), !dbg !2611
  %cmp6 = icmp slt i64 %indvars.iv, %5, !dbg !2630
  %tobool8 = icmp eq i8 %two_passes.0, 0, !dbg !2632
  %or.cond8 = and i1 %cmp6, %tobool8, !dbg !2633
  br i1 %or.cond8, label %for.body, label %if.end21.loopexit, !dbg !2633

for.body:                                         ; preds = %for.cond
  %first14 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %indvars.iv, i32 0, !dbg !2634
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %first14, align 8, !dbg !2634
  %flags15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 13, !dbg !2634
  %7 = load i32, i32* %flags15, align 8, !dbg !2634
  %8 = xor i32 %3, %7, !dbg !2636
  %9 = and i32 %8, 96, !dbg !2636
  %cmp17 = icmp ne i32 %9, 0, !dbg !2636
  %spec.select = zext i1 %cmp17 to i8, !dbg !2637
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !2561, metadata !DIExpression()), !dbg !2611
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i32 undef, metadata !2559, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2611
  br label %for.cond, !dbg !2639, !llvm.loop !2640

if.end21.loopexit:                                ; preds = %for.cond
  %two_passes.0.lcssa = phi i8 [ %two_passes.0, %for.cond ], !dbg !2611
  call void @llvm.dbg.value(metadata i8 %two_passes.0.lcssa, metadata !2561, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 %two_passes.0.lcssa, metadata !2561, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 %two_passes.0.lcssa, metadata !2561, metadata !DIExpression()), !dbg !2611
  br label %if.end21, !dbg !2642

if.end21:                                         ; preds = %if.end21.loopexit, %if.end
  %two_passes.2 = phi i8 [ 0, %if.end ], [ %two_passes.0.lcssa, %if.end21.loopexit ], !dbg !2643
  call void @llvm.dbg.value(metadata i8 %two_passes.2, metadata !2561, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 0, metadata !2559, metadata !DIExpression()), !dbg !2611
  %tobool26 = icmp ne i8 %two_passes.2, 0, !dbg !2644
  %10 = bitcast %struct.edge_def** %e to i8*, !dbg !2645
  %tobool51 = icmp eq i8 %two_passes.2, 0, !dbg !2646
  %11 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2648
  %12 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2649
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2649
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2649
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2650
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2650
  %17 = bitcast %struct.edge_iterator* %ei164 to i8*, !dbg !2651
  %18 = bitcast %struct.edge_iterator* %tmp165 to i8*, !dbg !2652
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp165, i64 0, i32 0, !dbg !2652
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp165, i64 0, i32 1, !dbg !2652
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei164, i64 0, i32 0, !dbg !2653
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei164, i64 0, i32 1, !dbg !2653
  %23 = bitcast %struct.edge_def** %e2 to i8*, !dbg !2654
  %24 = bitcast %struct.edge_iterator* %tmp263 to i8*, !dbg !2655
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp263, i64 0, i32 0, !dbg !2655
  %26 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp263, i64 0, i32 1, !dbg !2655
  %27 = bitcast %struct.edge_iterator* %ei295 to i8*, !dbg !2656
  %28 = bitcast %struct.edge_iterator* %tmp316 to i8*, !dbg !2657
  %29 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp316, i64 0, i32 0, !dbg !2657
  %30 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp316, i64 0, i32 1, !dbg !2657
  %31 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei295, i64 0, i32 0, !dbg !2658
  %32 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei295, i64 0, i32 1, !dbg !2658
  br label %for.cond22, !dbg !2642

for.cond22:                                       ; preds = %cleanup518, %if.end21
  %current_partition.0 = phi i32 [ %and, %if.end21 ], [ %current_partition.2, %cleanup518 ], !dbg !2611
  %current_pass.0 = phi i32 [ 1, %if.end21 ], [ %current_pass.1, %cleanup518 ], !dbg !2611
  %last_trace.0 = phi i32 [ -1, %if.end21 ], [ %last_trace.6, %cleanup518 ], !dbg !2659
  %i.1 = phi i32 [ 0, %if.end21 ], [ %inc526, %cleanup518 ], !dbg !2660
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2559, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %last_trace.0, metadata !2562, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %current_pass.0, metadata !2563, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %current_partition.0, metadata !2564, metadata !DIExpression()), !dbg !2611
  %cmp23 = icmp slt i32 %i.1, %n_traces, !dbg !2661
  br i1 %cmp23, label %for.body31, label %lor.rhs, !dbg !2662

lor.rhs:                                          ; preds = %for.cond22
  %cmp28 = icmp eq i32 %current_pass.0, 1, !dbg !2663
  %spec.select3 = and i1 %cmp28, %tobool26, !dbg !2664
  br i1 %spec.select3, label %for.body31, label %for.end527, !dbg !2665

for.body31:                                       ; preds = %for.cond22, %lor.rhs
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2567, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !2666
  br i1 %cmp23, label %if.end44, label %if.then34, !dbg !2667

if.then34:                                        ; preds = %for.body31
  %cmp37 = icmp eq i32 %current_pass.0, 1, !dbg !2668
  %or.cond = and i1 %tobool26, %cmp37, !dbg !2668
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !2668

cond.true:                                        ; preds = %if.then34
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 933, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2668
  br label %cond.end, !dbg !2668

cond.end:                                         ; preds = %if.then34, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !2559, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 0, metadata !2567, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 2, metadata !2563, metadata !DIExpression()), !dbg !2611
  %cmp39 = icmp eq i32 %current_partition.0, 32, !dbg !2671
  %. = select i1 %cmp39, i32 64, i32 32
  call void @llvm.dbg.value(metadata i32 %., metadata !2564, metadata !DIExpression()), !dbg !2611
  br label %if.end44, !dbg !2673

if.end44:                                         ; preds = %for.body31, %cond.end
  %t.0 = phi i32 [ 0, %cond.end ], [ %i.1, %for.body31 ], !dbg !2645
  %current_partition.2 = phi i32 [ %., %cond.end ], [ %current_partition.0, %for.body31 ], !dbg !2611
  %current_pass.1 = phi i32 [ 2, %cond.end ], [ %current_pass.0, %for.body31 ], !dbg !2611
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !2559, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %current_pass.1, metadata !2563, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %current_partition.2, metadata !2564, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !2567, metadata !DIExpression()), !dbg !2645
  %idxprom45 = sext i32 %t.0 to i64, !dbg !2674
  %arrayidx46 = getelementptr inbounds i8, i8* %call, i64 %idxprom45, !dbg !2674
  %33 = load i8, i8* %arrayidx46, align 1, !dbg !2674
  %tobool47 = icmp eq i8 %33, 0, !dbg !2674
  br i1 %tobool47, label %if.end49, label %cleanup518, !dbg !2676

if.end49:                                         ; preds = %if.end44
  br i1 %tobool51, label %if.end61, label %land.lhs.true52, !dbg !2677

land.lhs.true52:                                  ; preds = %if.end49
  %first55 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom45, i32 0, !dbg !2678
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %first55, align 8, !dbg !2678
  %flags56 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i64 0, i32 13, !dbg !2678
  %35 = load i32, i32* %flags56, align 8, !dbg !2678
  %and57 = and i32 %35, 96, !dbg !2678
  %cmp58 = icmp eq i32 %and57, %current_partition.2, !dbg !2679
  br i1 %cmp58, label %if.end61, label %cleanup518, !dbg !2680

if.end61:                                         ; preds = %land.lhs.true52, %if.end49
  store i8 1, i8* %arrayidx46, align 1, !dbg !2681
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !2571, metadata !DIExpression()), !dbg !2645
  br label %for.cond64, !dbg !2682

for.cond64:                                       ; preds = %cleanup, %if.end61
  %t2.0 = phi i32 [ %t.0, %if.end61 ], [ %t2.1, %cleanup ], !dbg !2683
  call void @llvm.dbg.value(metadata i32 %t2.0, metadata !2571, metadata !DIExpression()), !dbg !2645
  %cmp65 = icmp sgt i32 %t2.0, 0, !dbg !2684
  br i1 %cmp65, label %for.body67, label %for.end153, !dbg !2685

for.body67:                                       ; preds = %for.cond64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #7, !dbg !2686
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 0, metadata !2574, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #7, !dbg !2687
  %idxprom68 = sext i32 %t2.0 to i64, !dbg !2687
  %first70 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom68, i32 0, !dbg !2687
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %first70, align 8, !dbg !2687
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i64 0, i32 0, !dbg !2687
  %call71 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2687
  %37 = extractvalue { i32, %struct.VEC_edge_gc** } %call71, 0, !dbg !2687
  store i32 %37, i32* %13, align 8, !dbg !2687
  %38 = extractvalue { i32, %struct.VEC_edge_gc** } %call71, 1, !dbg !2687
  store %struct.VEC_edge_gc** %38, %struct.VEC_edge_gc*** %14, align 8, !dbg !2687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %12, i64 16, i1 false), !dbg !2687
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #7, !dbg !2687
  br label %for.cond72, !dbg !2687

for.cond72:                                       ; preds = %for.inc131, %for.body67
  %best_len.0 = phi i32 [ 0, %for.body67 ], [ %best_len.1, %for.inc131 ], !dbg !2688
  %best.0 = phi %struct.edge_def* [ null, %for.body67 ], [ %best.1, %for.inc131 ], !dbg !2689
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %best_len.0, metadata !2574, metadata !DIExpression()), !dbg !2645
  %39 = load i32, i32* %15, align 8, !dbg !2690
  %40 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !2690
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2572, metadata !DIExpression(DW_OP_deref)), !dbg !2645
  %call73 = call fastcc zeroext i8 @ei_cond(i32 %39, %struct.VEC_edge_gc** %40, %struct.edge_def** nonnull %e) #8, !dbg !2690
  %tobool74 = icmp eq i8 %call73, 0, !dbg !2687
  br i1 %tobool74, label %for.end132, label %for.body75, !dbg !2687

for.body75:                                       ; preds = %for.cond72
  %41 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !2572, metadata !DIExpression()), !dbg !2645
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i64 0, i32 0, !dbg !2692
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2692
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i64 0, i32 9, !dbg !2693
  %43 = load i32, i32* %index, align 8, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %43, metadata !2579, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !2572, metadata !DIExpression()), !dbg !2645
  %44 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2695
  %cfg = getelementptr inbounds %struct.function, %struct.function* %44, i64 0, i32 1, !dbg !2695
  %45 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2695
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %45, i64 0, i32 0, !dbg !2695
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2695
  %cmp77 = icmp eq %struct.basic_block_def* %42, %46, !dbg !2697
  br i1 %cmp77, label %for.inc131, label %land.lhs.true79, !dbg !2698

land.lhs.true79:                                  ; preds = %for.body75
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !2572, metadata !DIExpression()), !dbg !2645
  %flags80 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i64 0, i32 7, !dbg !2699
  %47 = load i32, i32* %flags80, align 8, !dbg !2699
  %and81 = and i32 %47, 64, !dbg !2700
  %tobool82 = icmp eq i32 %and81, 0, !dbg !2700
  br i1 %tobool82, label %for.inc131, label %land.lhs.true83, !dbg !2701

land.lhs.true83:                                  ; preds = %land.lhs.true79
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !2572, metadata !DIExpression()), !dbg !2645
  %and85 = and i32 %47, 14, !dbg !2702
  %tobool86 = icmp eq i32 %and85, 0, !dbg !2702
  br i1 %tobool86, label %land.lhs.true87, label %for.inc131, !dbg !2703

land.lhs.true87:                                  ; preds = %land.lhs.true83
  %48 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2704
  %idxprom88 = sext i32 %43 to i64, !dbg !2704
  %end_of_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %48, i64 %idxprom88, i32 1, !dbg !2705
  %49 = load i32, i32* %end_of_trace, align 4, !dbg !2705
  %cmp90 = icmp sgt i32 %49, -1, !dbg !2706
  br i1 %cmp90, label %land.lhs.true92, label %for.inc131, !dbg !2707

land.lhs.true92:                                  ; preds = %land.lhs.true87
  %idxprom96 = sext i32 %49 to i64, !dbg !2708
  %arrayidx97 = getelementptr inbounds i8, i8* %call, i64 %idxprom96, !dbg !2708
  %50 = load i8, i8* %arrayidx97, align 1, !dbg !2708
  %tobool98 = icmp eq i8 %50, 0, !dbg !2708
  br i1 %tobool98, label %land.lhs.true99, label %for.inc131, !dbg !2709

land.lhs.true99:                                  ; preds = %land.lhs.true92
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !2572, metadata !DIExpression()), !dbg !2645
  %flags101 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i64 0, i32 13, !dbg !2710
  %51 = load i32, i32* %flags101, align 8, !dbg !2710
  %and102 = and i32 %51, 96, !dbg !2710
  %cmp103 = icmp eq i32 %and102, %current_partition.2, !dbg !2711
  br i1 %cmp103, label %land.lhs.true105, label %for.inc131, !dbg !2712

land.lhs.true105:                                 ; preds = %land.lhs.true99
  %tobool106 = icmp eq %struct.edge_def* %best.0, null, !dbg !2713
  br i1 %tobool106, label %if.then123, label %lor.lhs.false, !dbg !2714

lor.lhs.false:                                    ; preds = %land.lhs.true105
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !2572, metadata !DIExpression()), !dbg !2645
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i64 0, i32 8, !dbg !2715
  %52 = load i32, i32* %probability, align 4, !dbg !2715
  %probability107 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.0, i64 0, i32 8, !dbg !2716
  %53 = load i32, i32* %probability107, align 4, !dbg !2716
  %cmp108 = icmp sgt i32 %52, %53, !dbg !2717
  br i1 %cmp108, label %if.then123, label %lor.lhs.false110, !dbg !2718

lor.lhs.false110:                                 ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !2572, metadata !DIExpression()), !dbg !2645
  %cmp113 = icmp eq i32 %52, %53, !dbg !2719
  br i1 %cmp113, label %land.lhs.true115, label %for.inc131, !dbg !2720

land.lhs.true115:                                 ; preds = %lor.lhs.false110
  %length = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom96, i32 3, !dbg !2721
  %54 = load i32, i32* %length, align 4, !dbg !2721
  %cmp121 = icmp sgt i32 %54, %best_len.0, !dbg !2722
  br i1 %cmp121, label %if.then123, label %for.inc131, !dbg !2723

if.then123:                                       ; preds = %land.lhs.true105, %land.lhs.true115, %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !2572, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_def* %41, metadata !2573, metadata !DIExpression()), !dbg !2645
  %length129 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom96, i32 3, !dbg !2724
  %55 = load i32, i32* %length129, align 4, !dbg !2724
  call void @llvm.dbg.value(metadata i32 %55, metadata !2574, metadata !DIExpression()), !dbg !2645
  br label %for.inc131, !dbg !2726

for.inc131:                                       ; preds = %land.lhs.true92, %land.lhs.true83, %land.lhs.true79, %for.body75, %land.lhs.true87, %land.lhs.true99, %lor.lhs.false110, %land.lhs.true115, %if.then123
  %best_len.1 = phi i32 [ %best_len.0, %land.lhs.true83 ], [ %best_len.0, %land.lhs.true92 ], [ %55, %if.then123 ], [ %best_len.0, %land.lhs.true115 ], [ %best_len.0, %lor.lhs.false110 ], [ %best_len.0, %land.lhs.true99 ], [ %best_len.0, %land.lhs.true87 ], [ %best_len.0, %land.lhs.true79 ], [ %best_len.0, %for.body75 ], !dbg !2648
  %best.1 = phi %struct.edge_def* [ %best.0, %land.lhs.true83 ], [ %best.0, %land.lhs.true92 ], [ %41, %if.then123 ], [ %best.0, %land.lhs.true115 ], [ %best.0, %lor.lhs.false110 ], [ %best.0, %land.lhs.true99 ], [ %best.0, %land.lhs.true87 ], [ %best.0, %land.lhs.true79 ], [ %best.0, %for.body75 ], !dbg !2648
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.1, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %best_len.1, metadata !2574, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2575, metadata !DIExpression(DW_OP_deref)), !dbg !2648
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2690
  br label %for.cond72, !dbg !2690, !llvm.loop !2727

for.end132:                                       ; preds = %for.cond72
  %best.0.lcssa = phi %struct.edge_def* [ %best.0, %for.cond72 ], !dbg !2689
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.0.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  %tobool133 = icmp eq %struct.edge_def* %best.0.lcssa, null, !dbg !2729
  br i1 %tobool133, label %cleanup, label %if.then134, !dbg !2731

if.then134:                                       ; preds = %for.end132
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.0.lcssa, i64 0, i32 1, !dbg !2732
  %56 = bitcast %struct.basic_block_def** %dest to i64*, !dbg !2732
  %57 = load i64, i64* %56, align 8, !dbg !2732
  %src135 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.0.lcssa, i64 0, i32 0, !dbg !2734
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %src135, align 8, !dbg !2734
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i64 0, i32 2, !dbg !2735
  %59 = bitcast i8** %aux to i64*, !dbg !2736
  store i64 %57, i64* %59, align 8, !dbg !2736
  %60 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2737
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %src135, align 8, !dbg !2738
  %index137 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i64 0, i32 9, !dbg !2739
  %62 = load i32, i32* %index137, align 8, !dbg !2739
  %idxprom138 = sext i32 %62 to i64, !dbg !2737
  %end_of_trace140 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %60, i64 %idxprom138, i32 1, !dbg !2740
  %63 = load i32, i32* %end_of_trace140, align 4, !dbg !2740
  call void @llvm.dbg.value(metadata i32 %63, metadata !2571, metadata !DIExpression()), !dbg !2645
  %idxprom141 = sext i32 %63 to i64, !dbg !2741
  %arrayidx142 = getelementptr inbounds i8, i8* %call, i64 %idxprom141, !dbg !2741
  store i8 1, i8* %arrayidx142, align 1, !dbg !2742
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2743
  %tobool143 = icmp eq %struct._IO_FILE* %64, null, !dbg !2743
  br i1 %tobool143, label %cleanup, label %if.then144, !dbg !2745

if.then144:                                       ; preds = %if.then134
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %src135, align 8, !dbg !2746
  %index146 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %65, i64 0, i32 9, !dbg !2748
  %66 = load i32, i32* %index146, align 8, !dbg !2748
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2749
  %index148 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %67, i64 0, i32 9, !dbg !2750
  %68 = load i32, i32* %index148, align 8, !dbg !2750
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %66, i32 %68) #6, !dbg !2751
  br label %cleanup, !dbg !2752

cleanup:                                          ; preds = %if.then134, %for.end132, %if.then144
  %cleanup.dest.slot.0 = phi i1 [ false, %for.end132 ], [ true, %if.then134 ], [ true, %if.then144 ]
  %t2.1 = phi i32 [ %t2.0, %for.end132 ], [ %63, %if.then134 ], [ %63, %if.then144 ], !dbg !2683
  call void @llvm.dbg.value(metadata i32 %t2.1, metadata !2571, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #7, !dbg !2753
  br i1 %cleanup.dest.slot.0, label %for.cond64, label %for.end153, !llvm.loop !2754

for.end153:                                       ; preds = %cleanup, %for.cond64
  %t2.2 = phi i32 [ %t2.1, %cleanup ], [ %t2.0, %for.cond64 ], !dbg !2683
  call void @llvm.dbg.value(metadata i32 %t2.2, metadata !2571, metadata !DIExpression()), !dbg !2645
  %cmp154 = icmp sgt i32 %last_trace.0, -1, !dbg !2756
  br i1 %cmp154, label %if.then156, label %if.end163, !dbg !2758

if.then156:                                       ; preds = %for.end153
  %idxprom157 = sext i32 %t2.2 to i64, !dbg !2759
  %first159 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom157, i32 0, !dbg !2760
  %69 = bitcast %struct.basic_block_def** %first159 to i64*, !dbg !2760
  %70 = load i64, i64* %69, align 8, !dbg !2760
  %idxprom160 = sext i32 %last_trace.0 to i64, !dbg !2761
  %last = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom160, i32 1, !dbg !2762
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %last, align 8, !dbg !2762
  %aux162 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %71, i64 0, i32 2, !dbg !2763
  %72 = bitcast i8** %aux162 to i64*, !dbg !2764
  store i64 %70, i64* %72, align 8, !dbg !2764
  br label %if.end163, !dbg !2761

if.end163:                                        ; preds = %if.then156, %for.end153
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !2562, metadata !DIExpression()), !dbg !2611
  br label %while.cond, !dbg !2765

while.cond:                                       ; preds = %cleanup515, %if.end163
  %t.1 = phi i32 [ %t.0, %if.end163 ], [ %t.5, %cleanup515 ], !dbg !2645
  %last_trace.1 = phi i32 [ %t.0, %if.end163 ], [ %last_trace.5, %cleanup515 ], !dbg !2645
  call void @llvm.dbg.value(metadata i32 %last_trace.1, metadata !2562, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %t.1, metadata !2567, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #7, !dbg !2766
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 0, metadata !2574, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !2767
  %idxprom166 = sext i32 %t.1 to i64, !dbg !2767
  %last168 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom166, i32 1, !dbg !2767
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %last168, align 8, !dbg !2767
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %73, i64 0, i32 1, !dbg !2767
  %call169 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2767
  %74 = extractvalue { i32, %struct.VEC_edge_gc** } %call169, 0, !dbg !2767
  store i32 %74, i32* %19, align 8, !dbg !2767
  %75 = extractvalue { i32, %struct.VEC_edge_gc** } %call169, 1, !dbg !2767
  store %struct.VEC_edge_gc** %75, %struct.VEC_edge_gc*** %20, align 8, !dbg !2767
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %17, i8* nonnull align 8 %18, i64 16, i1 false), !dbg !2767
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !2767
  br label %for.cond170, !dbg !2767

for.cond170:                                      ; preds = %for.inc236, %while.cond
  %best_len.2 = phi i32 [ 0, %while.cond ], [ %best_len.3, %for.inc236 ], !dbg !2768
  %best.2 = phi %struct.edge_def* [ null, %while.cond ], [ %best.3, %for.inc236 ], !dbg !2769
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.2, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %best_len.2, metadata !2574, metadata !DIExpression()), !dbg !2645
  %76 = load i32, i32* %21, align 8, !dbg !2770
  %77 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %22, align 8, !dbg !2770
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2572, metadata !DIExpression(DW_OP_deref)), !dbg !2645
  %call171 = call fastcc zeroext i8 @ei_cond(i32 %76, %struct.VEC_edge_gc** %77, %struct.edge_def** nonnull %e) #8, !dbg !2770
  %tobool172 = icmp eq i8 %call171, 0, !dbg !2767
  br i1 %tobool172, label %for.end237, label %for.body173, !dbg !2767

for.body173:                                      ; preds = %for.cond170
  %78 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2771
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2572, metadata !DIExpression()), !dbg !2645
  %dest174 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %78, i64 0, i32 1, !dbg !2772
  %79 = load %struct.basic_block_def*, %struct.basic_block_def** %dest174, align 8, !dbg !2772
  %index175 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %79, i64 0, i32 9, !dbg !2773
  %80 = load i32, i32* %index175, align 8, !dbg !2773
  call void @llvm.dbg.value(metadata i32 %80, metadata !2585, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2572, metadata !DIExpression()), !dbg !2645
  %81 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2775
  %cfg178 = getelementptr inbounds %struct.function, %struct.function* %81, i64 0, i32 1, !dbg !2775
  %82 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg178, align 8, !dbg !2775
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %82, i64 0, i32 1, !dbg !2775
  %83 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2775
  %cmp179 = icmp eq %struct.basic_block_def* %79, %83, !dbg !2777
  br i1 %cmp179, label %for.inc236, label %land.lhs.true181, !dbg !2778

land.lhs.true181:                                 ; preds = %for.body173
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2572, metadata !DIExpression()), !dbg !2645
  %flags182 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %78, i64 0, i32 7, !dbg !2779
  %84 = load i32, i32* %flags182, align 8, !dbg !2779
  %and183 = and i32 %84, 64, !dbg !2780
  %tobool184 = icmp eq i32 %and183, 0, !dbg !2780
  br i1 %tobool184, label %for.inc236, label %land.lhs.true185, !dbg !2781

land.lhs.true185:                                 ; preds = %land.lhs.true181
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2572, metadata !DIExpression()), !dbg !2645
  %and187 = and i32 %84, 14, !dbg !2782
  %tobool188 = icmp eq i32 %and187, 0, !dbg !2782
  br i1 %tobool188, label %land.lhs.true189, label %for.inc236, !dbg !2783

land.lhs.true189:                                 ; preds = %land.lhs.true185
  %85 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2784
  %idxprom190 = sext i32 %80 to i64, !dbg !2784
  %start_of_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %85, i64 %idxprom190, i32 0, !dbg !2785
  %86 = load i32, i32* %start_of_trace, align 8, !dbg !2785
  %cmp192 = icmp sgt i32 %86, -1, !dbg !2786
  br i1 %cmp192, label %land.lhs.true194, label %for.inc236, !dbg !2787

land.lhs.true194:                                 ; preds = %land.lhs.true189
  %idxprom198 = sext i32 %86 to i64, !dbg !2788
  %arrayidx199 = getelementptr inbounds i8, i8* %call, i64 %idxprom198, !dbg !2788
  %87 = load i8, i8* %arrayidx199, align 1, !dbg !2788
  %tobool200 = icmp eq i8 %87, 0, !dbg !2788
  br i1 %tobool200, label %land.lhs.true201, label %for.inc236, !dbg !2789

land.lhs.true201:                                 ; preds = %land.lhs.true194
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2572, metadata !DIExpression()), !dbg !2645
  %flags203 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %79, i64 0, i32 13, !dbg !2790
  %88 = load i32, i32* %flags203, align 8, !dbg !2790
  %and204 = and i32 %88, 96, !dbg !2790
  %cmp205 = icmp eq i32 %and204, %current_partition.2, !dbg !2791
  br i1 %cmp205, label %land.lhs.true207, label %for.inc236, !dbg !2792

land.lhs.true207:                                 ; preds = %land.lhs.true201
  %tobool208 = icmp eq %struct.edge_def* %best.2, null, !dbg !2793
  br i1 %tobool208, label %if.then228, label %lor.lhs.false209, !dbg !2794

lor.lhs.false209:                                 ; preds = %land.lhs.true207
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2572, metadata !DIExpression()), !dbg !2645
  %probability210 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %78, i64 0, i32 8, !dbg !2795
  %89 = load i32, i32* %probability210, align 4, !dbg !2795
  %probability211 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.2, i64 0, i32 8, !dbg !2796
  %90 = load i32, i32* %probability211, align 4, !dbg !2796
  %cmp212 = icmp sgt i32 %89, %90, !dbg !2797
  br i1 %cmp212, label %if.then228, label %lor.lhs.false214, !dbg !2798

lor.lhs.false214:                                 ; preds = %lor.lhs.false209
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2572, metadata !DIExpression()), !dbg !2645
  %cmp217 = icmp eq i32 %89, %90, !dbg !2799
  br i1 %cmp217, label %land.lhs.true219, label %for.inc236, !dbg !2800

land.lhs.true219:                                 ; preds = %lor.lhs.false214
  %length225 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom198, i32 3, !dbg !2801
  %91 = load i32, i32* %length225, align 4, !dbg !2801
  %cmp226 = icmp sgt i32 %91, %best_len.2, !dbg !2802
  br i1 %cmp226, label %if.then228, label %for.inc236, !dbg !2803

if.then228:                                       ; preds = %land.lhs.true207, %land.lhs.true219, %lor.lhs.false209
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2572, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2573, metadata !DIExpression()), !dbg !2645
  %length234 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom198, i32 3, !dbg !2804
  %92 = load i32, i32* %length234, align 4, !dbg !2804
  call void @llvm.dbg.value(metadata i32 %92, metadata !2574, metadata !DIExpression()), !dbg !2645
  br label %for.inc236, !dbg !2806

for.inc236:                                       ; preds = %land.lhs.true194, %land.lhs.true185, %land.lhs.true181, %for.body173, %land.lhs.true189, %land.lhs.true201, %lor.lhs.false214, %land.lhs.true219, %if.then228
  %best_len.3 = phi i32 [ %best_len.2, %land.lhs.true185 ], [ %best_len.2, %land.lhs.true194 ], [ %92, %if.then228 ], [ %best_len.2, %land.lhs.true219 ], [ %best_len.2, %lor.lhs.false214 ], [ %best_len.2, %land.lhs.true201 ], [ %best_len.2, %land.lhs.true189 ], [ %best_len.2, %land.lhs.true181 ], [ %best_len.2, %for.body173 ], !dbg !2651
  %best.3 = phi %struct.edge_def* [ %best.2, %land.lhs.true185 ], [ %best.2, %land.lhs.true194 ], [ %78, %if.then228 ], [ %best.2, %land.lhs.true219 ], [ %best.2, %lor.lhs.false214 ], [ %best.2, %land.lhs.true201 ], [ %best.2, %land.lhs.true189 ], [ %best.2, %land.lhs.true181 ], [ %best.2, %for.body173 ], !dbg !2651
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.3, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %best_len.3, metadata !2574, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei164, metadata !2583, metadata !DIExpression(DW_OP_deref)), !dbg !2651
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei164) #8, !dbg !2770
  br label %for.cond170, !dbg !2770, !llvm.loop !2807

for.end237:                                       ; preds = %for.cond170
  %best.2.lcssa = phi %struct.edge_def* [ %best.2, %for.cond170 ], !dbg !2769
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.2.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.2.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.2.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  %tobool238 = icmp eq %struct.edge_def* %best.2.lcssa, null, !dbg !2809
  br i1 %tobool238, label %if.else262, label %if.then239, !dbg !2810

if.then239:                                       ; preds = %for.end237
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2811
  %tobool240 = icmp eq %struct._IO_FILE* %93, null, !dbg !2811
  br i1 %tobool240, label %if.end247, label %if.then241, !dbg !2814

if.then241:                                       ; preds = %if.then239
  %src242 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.2.lcssa, i64 0, i32 0, !dbg !2815
  %94 = load %struct.basic_block_def*, %struct.basic_block_def** %src242, align 8, !dbg !2815
  %index243 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %94, i64 0, i32 9, !dbg !2817
  %95 = load i32, i32* %index243, align 8, !dbg !2817
  %dest244 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.2.lcssa, i64 0, i32 1, !dbg !2818
  %96 = load %struct.basic_block_def*, %struct.basic_block_def** %dest244, align 8, !dbg !2818
  %index245 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %96, i64 0, i32 9, !dbg !2819
  %97 = load i32, i32* %index245, align 8, !dbg !2819
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %95, i32 %97) #6, !dbg !2820
  br label %if.end247, !dbg !2821

if.end247:                                        ; preds = %if.then239, %if.then241
  %98 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2822
  %dest248 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.2.lcssa, i64 0, i32 1, !dbg !2823
  %99 = load %struct.basic_block_def*, %struct.basic_block_def** %dest248, align 8, !dbg !2823
  %index249 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %99, i64 0, i32 9, !dbg !2824
  %100 = load i32, i32* %index249, align 8, !dbg !2824
  %idxprom250 = sext i32 %100 to i64, !dbg !2822
  %start_of_trace252 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %98, i64 %idxprom250, i32 0, !dbg !2825
  %101 = load i32, i32* %start_of_trace252, align 8, !dbg !2825
  call void @llvm.dbg.value(metadata i32 %101, metadata !2567, metadata !DIExpression()), !dbg !2645
  %idxprom253 = sext i32 %101 to i64, !dbg !2826
  %first255 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom253, i32 0, !dbg !2827
  %102 = bitcast %struct.basic_block_def** %first255 to i64*, !dbg !2827
  %103 = load i64, i64* %102, align 8, !dbg !2827
  %idxprom256 = sext i32 %last_trace.1 to i64, !dbg !2828
  %last258 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom256, i32 1, !dbg !2829
  %104 = load %struct.basic_block_def*, %struct.basic_block_def** %last258, align 8, !dbg !2829
  %aux259 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %104, i64 0, i32 2, !dbg !2830
  %105 = bitcast i8** %aux259 to i64*, !dbg !2831
  store i64 %103, i64* %105, align 8, !dbg !2831
  %arrayidx261 = getelementptr inbounds i8, i8* %call, i64 %idxprom253, !dbg !2832
  store i8 1, i8* %arrayidx261, align 1, !dbg !2833
  call void @llvm.dbg.value(metadata i32 %101, metadata !2562, metadata !DIExpression()), !dbg !2611
  br label %if.end514, !dbg !2834

if.else262:                                       ; preds = %for.end237
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #7, !dbg !2835
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 0, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #7, !dbg !2836
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %last168, align 8, !dbg !2836
  %succs267 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %106, i64 0, i32 1, !dbg !2836
  %call268 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs267) #8, !dbg !2836
  %107 = extractvalue { i32, %struct.VEC_edge_gc** } %call268, 0, !dbg !2836
  store i32 %107, i32* %25, align 8, !dbg !2836
  %108 = extractvalue { i32, %struct.VEC_edge_gc** } %call268, 1, !dbg !2836
  store %struct.VEC_edge_gc** %108, %struct.VEC_edge_gc*** %26, align 8, !dbg !2836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %17, i8* nonnull align 8 %24, i64 16, i1 false), !dbg !2836
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #7, !dbg !2836
  br label %for.cond269, !dbg !2836

for.cond269:                                      ; preds = %for.inc417, %if.else262
  %next_bb.0 = phi %struct.basic_block_def* [ null, %if.else262 ], [ %next_bb.5, %for.inc417 ], !dbg !2837
  %try_copy.0 = phi i8 [ 0, %if.else262 ], [ %try_copy.5, %for.inc417 ], !dbg !2838
  %best.4 = phi %struct.edge_def* [ null, %if.else262 ], [ %best.9, %for.inc417 ], !dbg !2769
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.4, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 %try_copy.0, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.0, metadata !2592, metadata !DIExpression()), !dbg !2654
  %109 = load i32, i32* %21, align 8, !dbg !2839
  %110 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %22, align 8, !dbg !2839
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2572, metadata !DIExpression(DW_OP_deref)), !dbg !2645
  %call270 = call fastcc zeroext i8 @ei_cond(i32 %109, %struct.VEC_edge_gc** %110, %struct.edge_def** nonnull %e) #8, !dbg !2839
  %tobool271 = icmp eq i8 %call270, 0, !dbg !2836
  br i1 %tobool271, label %for.end418, label %for.body272, !dbg !2836

for.body272:                                      ; preds = %for.cond269
  %111 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2840
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !2572, metadata !DIExpression()), !dbg !2645
  %dest273 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %111, i64 0, i32 1, !dbg !2841
  %112 = load %struct.basic_block_def*, %struct.basic_block_def** %dest273, align 8, !dbg !2841
  %113 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2842
  %cfg275 = getelementptr inbounds %struct.function, %struct.function* %113, i64 0, i32 1, !dbg !2842
  %114 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg275, align 8, !dbg !2842
  %x_exit_block_ptr276 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %114, i64 0, i32 1, !dbg !2842
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr276, align 8, !dbg !2842
  %cmp277 = icmp eq %struct.basic_block_def* %112, %115, !dbg !2843
  br i1 %cmp277, label %for.inc417, label %land.lhs.true279, !dbg !2844

land.lhs.true279:                                 ; preds = %for.body272
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !2572, metadata !DIExpression()), !dbg !2645
  %flags280 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %111, i64 0, i32 7, !dbg !2845
  %116 = load i32, i32* %flags280, align 8, !dbg !2845
  %and281 = and i32 %116, 64, !dbg !2846
  %tobool282 = icmp eq i32 %and281, 0, !dbg !2846
  br i1 %tobool282, label %for.inc417, label %land.lhs.true283, !dbg !2847

land.lhs.true283:                                 ; preds = %land.lhs.true279
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !2572, metadata !DIExpression()), !dbg !2645
  %and285 = and i32 %116, 14, !dbg !2848
  %tobool286 = icmp eq i32 %and285, 0, !dbg !2848
  br i1 %tobool286, label %land.lhs.true287, label %for.inc417, !dbg !2849

land.lhs.true287:                                 ; preds = %land.lhs.true283
  %tobool288 = icmp eq %struct.edge_def* %best.4, null, !dbg !2850
  br i1 %tobool288, label %if.then294, label %lor.lhs.false289, !dbg !2851

lor.lhs.false289:                                 ; preds = %land.lhs.true287
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !2572, metadata !DIExpression()), !dbg !2645
  %probability290 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %111, i64 0, i32 8, !dbg !2852
  %117 = load i32, i32* %probability290, align 4, !dbg !2852
  %probability291 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.4, i64 0, i32 8, !dbg !2853
  %118 = load i32, i32* %probability291, align 4, !dbg !2853
  %cmp292 = icmp sgt i32 %117, %118, !dbg !2854
  br i1 %cmp292, label %if.then294, label %for.inc417, !dbg !2855

if.then294:                                       ; preds = %land.lhs.true287, %lor.lhs.false289
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #7, !dbg !2856
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !2599, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 0, metadata !2600, metadata !DIExpression()), !dbg !2656
  %119 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2857
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !2572, metadata !DIExpression()), !dbg !2645
  %index297 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %112, i64 0, i32 9, !dbg !2859
  %120 = load i32, i32* %index297, align 8, !dbg !2859
  %idxprom298 = sext i32 %120 to i64, !dbg !2857
  %start_of_trace300 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %119, i64 %idxprom298, i32 0, !dbg !2860
  %121 = load i32, i32* %start_of_trace300, align 8, !dbg !2860
  %cmp301 = icmp sgt i32 %121, -1, !dbg !2861
  br i1 %cmp301, label %land.lhs.true303, label %if.end315, !dbg !2862

land.lhs.true303:                                 ; preds = %if.then294
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !2572, metadata !DIExpression()), !dbg !2645
  %idxprom309 = sext i32 %121 to i64, !dbg !2863
  %length311 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom309, i32 3, !dbg !2864
  %122 = load i32, i32* %length311, align 4, !dbg !2864
  %cmp312 = icmp eq i32 %122, 1, !dbg !2865
  br i1 %cmp312, label %if.then314, label %if.end315, !dbg !2866

if.then314:                                       ; preds = %land.lhs.true303
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !2572, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 1, metadata !2593, metadata !DIExpression()), !dbg !2654
  br label %cleanup411, !dbg !2867

if.end315:                                        ; preds = %land.lhs.true303, %if.then294
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #7, !dbg !2869
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !2572, metadata !DIExpression()), !dbg !2645
  %succs318 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %112, i64 0, i32 1, !dbg !2869
  %call319 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs318) #8, !dbg !2869
  %123 = extractvalue { i32, %struct.VEC_edge_gc** } %call319, 0, !dbg !2869
  store i32 %123, i32* %29, align 8, !dbg !2869
  %124 = extractvalue { i32, %struct.VEC_edge_gc** } %call319, 1, !dbg !2869
  store %struct.VEC_edge_gc** %124, %struct.VEC_edge_gc*** %30, align 8, !dbg !2869
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %27, i8* nonnull align 8 %28, i64 16, i1 false), !dbg !2869
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #7, !dbg !2869
  br label %for.cond320, !dbg !2869

for.cond320:                                      ; preds = %for.inc409, %if.end315
  %next_bb.1 = phi %struct.basic_block_def* [ %next_bb.0, %if.end315 ], [ %next_bb.2, %for.inc409 ], !dbg !2654
  %try_copy.1 = phi i8 [ %try_copy.0, %if.end315 ], [ %try_copy.2, %for.inc409 ], !dbg !2654
  %best.5 = phi %struct.edge_def* [ %best.4, %if.end315 ], [ %best.6, %for.inc409 ], !dbg !2651
  %best2.0 = phi %struct.edge_def* [ null, %if.end315 ], [ %best2.1, %for.inc409 ], !dbg !2656
  %best2_len.0 = phi i32 [ 0, %if.end315 ], [ %best2_len.2, %for.inc409 ], !dbg !2656
  call void @llvm.dbg.value(metadata i32 %best2_len.0, metadata !2600, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %struct.edge_def* %best2.0, metadata !2599, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.5, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 %try_copy.1, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.1, metadata !2592, metadata !DIExpression()), !dbg !2654
  %125 = load i32, i32* %31, align 8, !dbg !2870
  %126 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %32, align 8, !dbg !2870
  call void @llvm.dbg.value(metadata %struct.edge_def** %e2, metadata !2589, metadata !DIExpression(DW_OP_deref)), !dbg !2654
  %call321 = call fastcc zeroext i8 @ei_cond(i32 %125, %struct.VEC_edge_gc** %126, %struct.edge_def** nonnull %e2) #8, !dbg !2870
  %tobool322 = icmp eq i8 %call321, 0, !dbg !2869
  br i1 %tobool322, label %cleanup411.loopexit, label %for.body323, !dbg !2869

for.body323:                                      ; preds = %for.cond320
  %127 = load %struct.edge_def*, %struct.edge_def** %e2, align 8, !dbg !2871
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  %dest325 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %127, i64 0, i32 1, !dbg !2872
  %128 = load %struct.basic_block_def*, %struct.basic_block_def** %dest325, align 8, !dbg !2872
  %index326 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %128, i64 0, i32 9, !dbg !2873
  %129 = load i32, i32* %index326, align 8, !dbg !2873
  call void @llvm.dbg.value(metadata i32 %129, metadata !2601, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  %130 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2875
  %cfg329 = getelementptr inbounds %struct.function, %struct.function* %130, i64 0, i32 1, !dbg !2875
  %131 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg329, align 8, !dbg !2875
  %x_exit_block_ptr330 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %131, i64 0, i32 1, !dbg !2875
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr330, align 8, !dbg !2875
  %cmp331 = icmp eq %struct.basic_block_def* %128, %132, !dbg !2877
  br i1 %cmp331, label %if.then391, label %lor.lhs.false333, !dbg !2878

lor.lhs.false333:                                 ; preds = %for.body323
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  %flags334 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %127, i64 0, i32 7, !dbg !2879
  %133 = load i32, i32* %flags334, align 8, !dbg !2879
  %and335 = and i32 %133, 64, !dbg !2880
  %tobool336 = icmp eq i32 %and335, 0, !dbg !2880
  br i1 %tobool336, label %for.inc409, label %land.lhs.true337, !dbg !2881

land.lhs.true337:                                 ; preds = %lor.lhs.false333
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  %and339 = and i32 %133, 14, !dbg !2882
  %tobool340 = icmp eq i32 %and339, 0, !dbg !2882
  br i1 %tobool340, label %land.lhs.true341, label %for.inc409, !dbg !2883

land.lhs.true341:                                 ; preds = %land.lhs.true337
  %134 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2884
  %idxprom342 = sext i32 %129 to i64, !dbg !2884
  %start_of_trace344 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %134, i64 %idxprom342, i32 0, !dbg !2885
  %135 = load i32, i32* %start_of_trace344, align 8, !dbg !2885
  %cmp345 = icmp sgt i32 %135, -1, !dbg !2886
  br i1 %cmp345, label %land.lhs.true347, label %for.inc409, !dbg !2887

land.lhs.true347:                                 ; preds = %land.lhs.true341
  %idxprom351 = sext i32 %135 to i64, !dbg !2888
  %arrayidx352 = getelementptr inbounds i8, i8* %call, i64 %idxprom351, !dbg !2888
  %136 = load i8, i8* %arrayidx352, align 1, !dbg !2888
  %tobool353 = icmp eq i8 %136, 0, !dbg !2888
  br i1 %tobool353, label %land.lhs.true354, label %for.inc409, !dbg !2889

land.lhs.true354:                                 ; preds = %land.lhs.true347
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  %flags356 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %128, i64 0, i32 13, !dbg !2890
  %137 = load i32, i32* %flags356, align 8, !dbg !2890
  %and357 = and i32 %137, 96, !dbg !2890
  %cmp358 = icmp eq i32 %and357, %current_partition.2, !dbg !2891
  br i1 %cmp358, label %land.lhs.true360, label %for.inc409, !dbg !2892

land.lhs.true360:                                 ; preds = %land.lhs.true354
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  %src361 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %127, i64 0, i32 0, !dbg !2893
  %138 = load %struct.basic_block_def*, %struct.basic_block_def** %src361, align 8, !dbg !2893
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %138, i64 0, i32 11, !dbg !2893
  %139 = load i32, i32* %frequency, align 8, !dbg !2893
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  %probability362 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %127, i64 0, i32 8, !dbg !2893
  %140 = load i32, i32* %probability362, align 4, !dbg !2893
  %mul363 = mul nsw i32 %139, %140, !dbg !2893
  %add = add nsw i32 %mul363, 5000, !dbg !2893
  %div364 = sdiv i32 %add, 10000, !dbg !2893
  %cmp365 = icmp slt i32 %div364, %div, !dbg !2894
  br i1 %cmp365, label %for.inc409, label %land.lhs.true367, !dbg !2895

land.lhs.true367:                                 ; preds = %land.lhs.true360
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %127, i64 0, i32 9, !dbg !2896
  %141 = load i64, i64* %count, align 8, !dbg !2896
  %cmp368 = icmp slt i64 %141, %count_threshold.0, !dbg !2897
  br i1 %cmp368, label %for.inc409, label %land.lhs.true370, !dbg !2898

land.lhs.true370:                                 ; preds = %land.lhs.true367
  %tobool371 = icmp eq %struct.edge_def* %best2.0, null, !dbg !2899
  br i1 %tobool371, label %if.then391, label %lor.lhs.false372, !dbg !2900

lor.lhs.false372:                                 ; preds = %land.lhs.true370
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  %probability374 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best2.0, i64 0, i32 8, !dbg !2901
  %142 = load i32, i32* %probability374, align 4, !dbg !2901
  %cmp375 = icmp sgt i32 %140, %142, !dbg !2902
  br i1 %cmp375, label %if.then391, label %lor.lhs.false377, !dbg !2903

lor.lhs.false377:                                 ; preds = %lor.lhs.false372
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  %cmp380 = icmp eq i32 %140, %142, !dbg !2904
  br i1 %cmp380, label %land.lhs.true382, label %for.inc409, !dbg !2905

land.lhs.true382:                                 ; preds = %lor.lhs.false377
  %length388 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom351, i32 3, !dbg !2906
  %143 = load i32, i32* %length388, align 4, !dbg !2906
  %cmp389 = icmp sgt i32 %143, %best2_len.0, !dbg !2907
  br i1 %cmp389, label %if.then391, label %for.inc409, !dbg !2908

if.then391:                                       ; preds = %land.lhs.true370, %land.lhs.true382, %lor.lhs.false372, %for.body323
  %144 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2909
  call void @llvm.dbg.value(metadata %struct.edge_def* %144, metadata !2572, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_def* %144, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2599, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  br i1 %cmp331, label %if.end406, label %if.then398, !dbg !2911

if.then398:                                       ; preds = %if.then391
  %145 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2912
  %idxprom399 = sext i32 %129 to i64, !dbg !2912
  %start_of_trace401 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %145, i64 %idxprom399, i32 0, !dbg !2914
  %146 = load i32, i32* %start_of_trace401, align 8, !dbg !2914
  %idxprom402 = sext i32 %146 to i64, !dbg !2915
  %length404 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom402, i32 3, !dbg !2916
  %147 = load i32, i32* %length404, align 4, !dbg !2916
  call void @llvm.dbg.value(metadata i32 %147, metadata !2600, metadata !DIExpression()), !dbg !2656
  br label %if.end406, !dbg !2917

if.end406:                                        ; preds = %if.then391, %if.then398
  %best2_len.1 = phi i32 [ %147, %if.then398 ], [ 2147483647, %if.then391 ], !dbg !2918
  call void @llvm.dbg.value(metadata i32 %best2_len.1, metadata !2600, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %struct.edge_def* %127, metadata !2589, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %128, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 1, metadata !2593, metadata !DIExpression()), !dbg !2654
  br label %for.inc409, !dbg !2919

for.inc409:                                       ; preds = %land.lhs.true367, %land.lhs.true360, %land.lhs.true347, %land.lhs.true337, %lor.lhs.false333, %land.lhs.true341, %land.lhs.true354, %lor.lhs.false377, %land.lhs.true382, %if.end406
  %next_bb.2 = phi %struct.basic_block_def* [ %128, %if.end406 ], [ %next_bb.1, %land.lhs.true337 ], [ %next_bb.1, %land.lhs.true347 ], [ %next_bb.1, %land.lhs.true382 ], [ %next_bb.1, %lor.lhs.false377 ], [ %next_bb.1, %land.lhs.true367 ], [ %next_bb.1, %land.lhs.true360 ], [ %next_bb.1, %land.lhs.true354 ], [ %next_bb.1, %land.lhs.true341 ], [ %next_bb.1, %lor.lhs.false333 ], !dbg !2654
  %try_copy.2 = phi i8 [ 1, %if.end406 ], [ %try_copy.1, %land.lhs.true337 ], [ %try_copy.1, %land.lhs.true347 ], [ %try_copy.1, %land.lhs.true382 ], [ %try_copy.1, %lor.lhs.false377 ], [ %try_copy.1, %land.lhs.true367 ], [ %try_copy.1, %land.lhs.true360 ], [ %try_copy.1, %land.lhs.true354 ], [ %try_copy.1, %land.lhs.true341 ], [ %try_copy.1, %lor.lhs.false333 ], !dbg !2654
  %best.6 = phi %struct.edge_def* [ %144, %if.end406 ], [ %best.5, %land.lhs.true337 ], [ %best.5, %land.lhs.true347 ], [ %best.5, %land.lhs.true382 ], [ %best.5, %lor.lhs.false377 ], [ %best.5, %land.lhs.true367 ], [ %best.5, %land.lhs.true360 ], [ %best.5, %land.lhs.true354 ], [ %best.5, %land.lhs.true341 ], [ %best.5, %lor.lhs.false333 ], !dbg !2651
  %best2.1 = phi %struct.edge_def* [ %127, %if.end406 ], [ %best2.0, %land.lhs.true337 ], [ %best2.0, %land.lhs.true347 ], [ %best2.0, %land.lhs.true382 ], [ %best2.0, %lor.lhs.false377 ], [ %best2.0, %land.lhs.true367 ], [ %best2.0, %land.lhs.true360 ], [ %best2.0, %land.lhs.true354 ], [ %best2.0, %land.lhs.true341 ], [ %best2.0, %lor.lhs.false333 ], !dbg !2656
  %best2_len.2 = phi i32 [ %best2_len.1, %if.end406 ], [ %best2_len.0, %land.lhs.true337 ], [ %best2_len.0, %land.lhs.true347 ], [ %best2_len.0, %land.lhs.true382 ], [ %best2_len.0, %lor.lhs.false377 ], [ %best2_len.0, %land.lhs.true367 ], [ %best2_len.0, %land.lhs.true360 ], [ %best2_len.0, %land.lhs.true354 ], [ %best2_len.0, %land.lhs.true341 ], [ %best2_len.0, %lor.lhs.false333 ], !dbg !2656
  call void @llvm.dbg.value(metadata i32 %best2_len.2, metadata !2600, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %struct.edge_def* %best2.1, metadata !2599, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.6, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 %try_copy.2, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.2, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei295, metadata !2594, metadata !DIExpression(DW_OP_deref)), !dbg !2656
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei295) #8, !dbg !2870
  br label %for.cond320, !dbg !2870, !llvm.loop !2920

cleanup411.loopexit:                              ; preds = %for.cond320
  %next_bb.1.lcssa = phi %struct.basic_block_def* [ %next_bb.1, %for.cond320 ], !dbg !2654
  %try_copy.1.lcssa = phi i8 [ %try_copy.1, %for.cond320 ], !dbg !2654
  %best.5.lcssa = phi %struct.edge_def* [ %best.5, %for.cond320 ], !dbg !2651
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.1.lcssa, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 %try_copy.1.lcssa, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.5.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.1.lcssa, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 %try_copy.1.lcssa, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.5.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.1.lcssa, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 %try_copy.1.lcssa, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.5.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  br label %cleanup411, !dbg !2922

cleanup411:                                       ; preds = %cleanup411.loopexit, %if.then314
  %next_bb.3 = phi %struct.basic_block_def* [ %next_bb.0, %if.then314 ], [ %next_bb.1.lcssa, %cleanup411.loopexit ], !dbg !2837
  %try_copy.3 = phi i8 [ 1, %if.then314 ], [ %try_copy.1.lcssa, %cleanup411.loopexit ], !dbg !2654
  %best.7 = phi %struct.edge_def* [ %111, %if.then314 ], [ %best.5.lcssa, %cleanup411.loopexit ], !dbg !2651
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.7, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 %try_copy.3, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.3, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7, !dbg !2922
  br label %for.inc417

for.inc417:                                       ; preds = %land.lhs.true283, %land.lhs.true279, %for.body272, %cleanup411, %lor.lhs.false289
  %next_bb.5 = phi %struct.basic_block_def* [ %next_bb.0, %land.lhs.true283 ], [ %next_bb.0, %lor.lhs.false289 ], [ %next_bb.0, %land.lhs.true279 ], [ %next_bb.0, %for.body272 ], [ %next_bb.3, %cleanup411 ], !dbg !2837
  %try_copy.5 = phi i8 [ %try_copy.0, %land.lhs.true283 ], [ %try_copy.0, %lor.lhs.false289 ], [ %try_copy.0, %land.lhs.true279 ], [ %try_copy.0, %for.body272 ], [ %try_copy.3, %cleanup411 ], !dbg !2654
  %best.9 = phi %struct.edge_def* [ %best.4, %land.lhs.true283 ], [ %best.4, %lor.lhs.false289 ], [ %best.4, %land.lhs.true279 ], [ %best.4, %for.body272 ], [ %best.7, %cleanup411 ], !dbg !2651
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.9, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 %try_copy.5, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.5, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei164, metadata !2583, metadata !DIExpression(DW_OP_deref)), !dbg !2651
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei164) #8, !dbg !2839
  br label %for.cond269, !dbg !2839, !llvm.loop !2923

for.end418:                                       ; preds = %for.cond269
  %next_bb.0.lcssa = phi %struct.basic_block_def* [ %next_bb.0, %for.cond269 ], !dbg !2837
  %try_copy.0.lcssa = phi i8 [ %try_copy.0, %for.cond269 ], !dbg !2838
  %best.4.lcssa = phi %struct.edge_def* [ %best.4, %for.cond269 ], !dbg !2769
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.0.lcssa, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 %try_copy.0.lcssa, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.4.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.0.lcssa, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 %try_copy.0.lcssa, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.4.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %next_bb.0.lcssa, metadata !2592, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 %try_copy.0.lcssa, metadata !2593, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata %struct.edge_def* %best.4.lcssa, metadata !2573, metadata !DIExpression()), !dbg !2645
  %148 = load i32, i32* @flag_reorder_blocks_and_partition, align 4, !dbg !2925
  %tobool419 = icmp eq i32 %148, 0, !dbg !2925
  %tobool42310 = icmp ne i8 %try_copy.0.lcssa, 0, !dbg !2927
  %tobool423 = and i1 %tobool419, %tobool42310, !dbg !2927
  br i1 %tobool423, label %land.lhs.true424, label %cleanup509, !dbg !2928

land.lhs.true424:                                 ; preds = %for.end418
  %dest425 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.4.lcssa, i64 0, i32 1, !dbg !2929
  %149 = load %struct.basic_block_def*, %struct.basic_block_def** %dest425, align 8, !dbg !2929
  %call426 = call zeroext i8 @optimize_edge_for_speed_p(%struct.edge_def* %best.4.lcssa) #6, !dbg !2930
  %tobool428 = icmp eq i8 %call426, 0, !dbg !2930
  br i1 %tobool428, label %land.end442, label %land.lhs.true429, !dbg !2931

land.lhs.true429:                                 ; preds = %land.lhs.true424
  %src430 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.4.lcssa, i64 0, i32 0, !dbg !2932
  %150 = load %struct.basic_block_def*, %struct.basic_block_def** %src430, align 8, !dbg !2932
  %frequency431 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %150, i64 0, i32 11, !dbg !2932
  %151 = load i32, i32* %frequency431, align 8, !dbg !2932
  %probability432 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.4.lcssa, i64 0, i32 8, !dbg !2932
  %152 = load i32, i32* %probability432, align 4, !dbg !2932
  %mul433 = mul nsw i32 %151, %152, !dbg !2932
  %add434 = add nsw i32 %mul433, 5000, !dbg !2932
  %div435 = sdiv i32 %add434, 10000, !dbg !2932
  %cmp436 = icmp slt i32 %div435, %div, !dbg !2933
  br i1 %cmp436, label %land.end442, label %land.rhs438, !dbg !2934

land.rhs438:                                      ; preds = %land.lhs.true429
  %count439 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best.4.lcssa, i64 0, i32 9, !dbg !2935
  %153 = load i64, i64* %count439, align 8, !dbg !2935
  %cmp440 = icmp sge i64 %153, %count_threshold.0, !dbg !2936
  br label %land.end442

land.end442:                                      ; preds = %land.lhs.true429, %land.lhs.true424, %land.rhs438
  %154 = phi i1 [ false, %land.lhs.true429 ], [ false, %land.lhs.true424 ], [ %cmp440, %land.rhs438 ], !dbg !2937
  %land.ext = zext i1 %154 to i32, !dbg !2934
  %call443 = call fastcc zeroext i8 @copy_bb_p(%struct.basic_block_def* %149, i32 %land.ext) #8, !dbg !2938
  %tobool445 = icmp eq i8 %call443, 0, !dbg !2938
  br i1 %tobool445, label %cleanup509, label %if.then446, !dbg !2939

if.then446:                                       ; preds = %land.end442
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2940
  %tobool447 = icmp eq %struct._IO_FILE* %155, null, !dbg !2940
  br i1 %tobool447, label %if.end472, label %if.then448, !dbg !2942

if.then448:                                       ; preds = %if.then446
  %156 = load %struct.basic_block_def*, %struct.basic_block_def** %last168, align 8, !dbg !2943
  %index452 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %156, i64 0, i32 9, !dbg !2945
  %157 = load i32, i32* %index452, align 8, !dbg !2945
  %158 = load %struct.basic_block_def*, %struct.basic_block_def** %dest425, align 8, !dbg !2946
  %index454 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %158, i64 0, i32 9, !dbg !2947
  %159 = load i32, i32* %index454, align 8, !dbg !2947
  %call455 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %157, i32 %159) #6, !dbg !2948
  %tobool456 = icmp eq %struct.basic_block_def* %next_bb.0.lcssa, null, !dbg !2949
  br i1 %tobool456, label %if.then457, label %if.else459, !dbg !2951

if.then457:                                       ; preds = %if.then448
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2952
  %call458 = call i32 @fputc(i32 10, %struct._IO_FILE* %160) #6, !dbg !2953
  br label %if.end472, !dbg !2953

if.else459:                                       ; preds = %if.then448
  %161 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2954
  %cfg461 = getelementptr inbounds %struct.function, %struct.function* %161, i64 0, i32 1, !dbg !2954
  %162 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg461, align 8, !dbg !2954
  %x_exit_block_ptr462 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %162, i64 0, i32 1, !dbg !2954
  %163 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr462, align 8, !dbg !2954
  %cmp463 = icmp eq %struct.basic_block_def* %next_bb.0.lcssa, %163, !dbg !2956
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2957
  br i1 %cmp463, label %if.then465, label %if.else467, !dbg !2958

if.then465:                                       ; preds = %if.else459
  %call466 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !2959
  br label %if.end472, !dbg !2959

if.else467:                                       ; preds = %if.else459
  %index468 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %next_bb.0.lcssa, i64 0, i32 9, !dbg !2960
  %165 = load i32, i32* %index468, align 8, !dbg !2960
  %call469 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32 %165) #6, !dbg !2961
  br label %if.end472

if.end472:                                        ; preds = %if.then446, %if.then457, %if.else467, %if.then465
  %166 = load %struct.basic_block_def*, %struct.basic_block_def** %dest425, align 8, !dbg !2962
  %167 = load %struct.basic_block_def*, %struct.basic_block_def** %last168, align 8, !dbg !2963
  %call477 = call fastcc %struct.basic_block_def* @copy_bb(%struct.basic_block_def* %166, %struct.edge_def* %best.4.lcssa, %struct.basic_block_def* %167, i32 %t.1) #8, !dbg !2964
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call477, metadata !2605, metadata !DIExpression()), !dbg !2965
  store %struct.basic_block_def* %call477, %struct.basic_block_def** %last168, align 8, !dbg !2966
  %tobool481 = icmp eq %struct.basic_block_def* %next_bb.0.lcssa, null, !dbg !2967
  br i1 %tobool481, label %cleanup504, label %land.lhs.true482, !dbg !2969

land.lhs.true482:                                 ; preds = %if.end472
  %168 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2970
  %cfg484 = getelementptr inbounds %struct.function, %struct.function* %168, i64 0, i32 1, !dbg !2970
  %169 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg484, align 8, !dbg !2970
  %x_exit_block_ptr485 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %169, i64 0, i32 1, !dbg !2970
  %170 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr485, align 8, !dbg !2970
  %cmp486 = icmp eq %struct.basic_block_def* %next_bb.0.lcssa, %170, !dbg !2971
  br i1 %cmp486, label %cleanup504, label %if.then488, !dbg !2972

if.then488:                                       ; preds = %land.lhs.true482
  %171 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !2973
  %index489 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %next_bb.0.lcssa, i64 0, i32 9, !dbg !2975
  %172 = load i32, i32* %index489, align 8, !dbg !2975
  %idxprom490 = sext i32 %172 to i64, !dbg !2973
  %start_of_trace492 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %171, i64 %idxprom490, i32 0, !dbg !2976
  %173 = load i32, i32* %start_of_trace492, align 8, !dbg !2976
  call void @llvm.dbg.value(metadata i32 %173, metadata !2567, metadata !DIExpression()), !dbg !2645
  %idxprom493 = sext i32 %173 to i64, !dbg !2977
  %first495 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom493, i32 0, !dbg !2978
  %174 = bitcast %struct.basic_block_def** %first495 to i64*, !dbg !2978
  %175 = load i64, i64* %174, align 8, !dbg !2978
  %idxprom496 = sext i32 %last_trace.1 to i64, !dbg !2979
  %last498 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idxprom496, i32 1, !dbg !2980
  %176 = load %struct.basic_block_def*, %struct.basic_block_def** %last498, align 8, !dbg !2980
  %aux499 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %176, i64 0, i32 2, !dbg !2981
  %177 = bitcast i8** %aux499 to i64*, !dbg !2982
  store i64 %175, i64* %177, align 8, !dbg !2982
  %arrayidx501 = getelementptr inbounds i8, i8* %call, i64 %idxprom493, !dbg !2983
  store i8 1, i8* %arrayidx501, align 1, !dbg !2984
  call void @llvm.dbg.value(metadata i32 %173, metadata !2562, metadata !DIExpression()), !dbg !2611
  br label %cleanup504, !dbg !2985

cleanup504:                                       ; preds = %land.lhs.true482, %if.end472, %if.then488
  %cleanup.dest.slot.2 = phi i32 [ 0, %if.then488 ], [ 14, %land.lhs.true482 ], [ 14, %if.end472 ]
  %t.2 = phi i32 [ %173, %if.then488 ], [ %t.1, %land.lhs.true482 ], [ %t.1, %if.end472 ], !dbg !2645
  %last_trace.2 = phi i32 [ %173, %if.then488 ], [ %last_trace.1, %land.lhs.true482 ], [ %last_trace.1, %if.end472 ], !dbg !2645
  call void @llvm.dbg.value(metadata i32 %last_trace.2, metadata !2562, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %t.2, metadata !2567, metadata !DIExpression()), !dbg !2645
  br label %cleanup509

cleanup509:                                       ; preds = %land.end442, %cleanup504, %for.end418
  %cleanup.dest.slot.3 = phi i32 [ 14, %land.end442 ], [ 14, %for.end418 ], [ %cleanup.dest.slot.2, %cleanup504 ]
  %t.3 = phi i32 [ %t.1, %land.end442 ], [ %t.1, %for.end418 ], [ %t.2, %cleanup504 ], !dbg !2645
  %last_trace.3 = phi i32 [ %last_trace.1, %land.end442 ], [ %last_trace.1, %for.end418 ], [ %last_trace.2, %cleanup504 ], !dbg !2645
  call void @llvm.dbg.value(metadata i32 %last_trace.3, metadata !2562, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %t.3, metadata !2567, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #7, !dbg !2986
  %cond1 = icmp eq i32 %cleanup.dest.slot.3, 0
  br i1 %cond1, label %if.end514, label %cleanup515

if.end514:                                        ; preds = %cleanup509, %if.end247
  %t.4 = phi i32 [ %101, %if.end247 ], [ %t.3, %cleanup509 ], !dbg !2987
  %last_trace.4 = phi i32 [ %101, %if.end247 ], [ %last_trace.3, %cleanup509 ], !dbg !2987
  call void @llvm.dbg.value(metadata i32 %last_trace.4, metadata !2562, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %t.4, metadata !2567, metadata !DIExpression()), !dbg !2645
  br label %cleanup515, !dbg !2988

cleanup515:                                       ; preds = %cleanup509, %if.end514
  %cleanup.dest.slot.4 = phi i32 [ 0, %if.end514 ], [ %cleanup.dest.slot.3, %cleanup509 ], !dbg !2645
  %t.5 = phi i32 [ %t.4, %if.end514 ], [ %t.3, %cleanup509 ], !dbg !2987
  %last_trace.5 = phi i32 [ %last_trace.4, %if.end514 ], [ %last_trace.3, %cleanup509 ], !dbg !2987
  call void @llvm.dbg.value(metadata i32 %last_trace.5, metadata !2562, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %t.5, metadata !2567, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #7, !dbg !2988
  %switch6 = icmp eq i32 %cleanup.dest.slot.4, 0
  br i1 %switch6, label %while.cond, label %cleanup518.loopexit, !llvm.loop !2989

cleanup518.loopexit:                              ; preds = %cleanup515
  %last_trace.5.lcssa = phi i32 [ %last_trace.5, %cleanup515 ], !dbg !2987
  call void @llvm.dbg.value(metadata i32 %last_trace.5.lcssa, metadata !2562, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %last_trace.5.lcssa, metadata !2562, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %last_trace.5.lcssa, metadata !2562, metadata !DIExpression()), !dbg !2611
  br label %cleanup518, !dbg !2990

cleanup518:                                       ; preds = %cleanup518.loopexit, %land.lhs.true52, %if.end44
  %last_trace.6 = phi i32 [ %last_trace.0, %if.end44 ], [ %last_trace.0, %land.lhs.true52 ], [ %last_trace.5.lcssa, %cleanup518.loopexit ], !dbg !2611
  call void @llvm.dbg.value(metadata i32 %last_trace.6, metadata !2562, metadata !DIExpression()), !dbg !2611
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !2990
  %inc526 = add nsw i32 %t.0, 1, !dbg !2991
  call void @llvm.dbg.value(metadata i32 %inc526, metadata !2559, metadata !DIExpression()), !dbg !2611
  br label %for.cond22, !dbg !2992, !llvm.loop !2993

for.end527:                                       ; preds = %lor.rhs
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2995
  %tobool528 = icmp eq %struct._IO_FILE* %178, null, !dbg !2995
  br i1 %tobool528, label %if.end543, label %if.then529, !dbg !2996

if.then529:                                       ; preds = %for.end527
  %call530 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !2997
  br label %for.cond533, !dbg !2998

for.cond533:                                      ; preds = %for.body535, %if.then529
  %bb.0.in = phi %struct.basic_block_def** [ %first, %if.then529 ], [ %181, %for.body535 ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3000
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2608, metadata !DIExpression()), !dbg !3001
  %tobool534 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !3002
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3001
  br i1 %tobool534, label %for.end540, label %for.body535, !dbg !3002

for.body535:                                      ; preds = %for.cond533
  %index536 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3003
  %180 = load i32, i32* %index536, align 8, !dbg !3003
  %call537 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %180) #6, !dbg !3005
  %aux539 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3006
  %181 = bitcast i8** %aux539 to %struct.basic_block_def**, !dbg !3006
  br label %for.cond533, !dbg !3007, !llvm.loop !3008

for.end540:                                       ; preds = %for.cond533
  %.lcssa = phi %struct._IO_FILE* [ %179, %for.cond533 ], !dbg !3001
  %call541 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !3010
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3011
  %call542 = call i32 @fflush(%struct._IO_FILE* %182) #6, !dbg !3012
  br label %if.end543, !dbg !3013

if.end543:                                        ; preds = %for.end527, %for.end540
  %tobool544 = icmp eq i8* %call, null, !dbg !3014
  br i1 %tobool544, label %cond.true545, label %cond.end547, !dbg !3014

cond.true545:                                     ; preds = %if.end543
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3014
  br label %cond.end547, !dbg !3014

cond.end547:                                      ; preds = %if.end543, %cond.true545
  call void @free(i8* %call) #6, !dbg !3014
  call void @llvm.dbg.value(metadata i8* null, metadata !2560, metadata !DIExpression()), !dbg !2611
  ret void, !dbg !3015
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local void @relink_block_chain(i8 zeroext) local_unnamed_addr #1

declare dso_local void @dump_flow_info(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @verify_hot_cold_block_grouping() unnamed_addr #4 !dbg !3016 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !3019, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8 0, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 0, metadata !3021, metadata !DIExpression()), !dbg !3022
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3023
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3023
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3023
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !3023
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3023
  br label %for.cond, !dbg !3023

for.cond:                                         ; preds = %for.inc, %entry
  %.pre3 = phi %struct.function* [ %0, %entry ], [ %.pre, %for.inc ]
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.inc ], !dbg !3025
  %current_partition.0 = phi i32 [ 0, %entry ], [ %current_partition.3, %for.inc ], !dbg !3027
  %switched_sections.0 = phi i8 [ 0, %entry ], [ %switched_sections.2, %for.inc ], !dbg !3028
  %err.0 = phi i32 [ 0, %entry ], [ %err.2, %for.inc ], !dbg !3022
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3029
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3029
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3018, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %err.0, metadata !3019, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8 %switched_sections.0, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %current_partition.0, metadata !3021, metadata !DIExpression()), !dbg !3022
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !3025
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3025
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !3025
  br i1 %cmp, label %for.end, label %for.body, !dbg !3023

for.body:                                         ; preds = %for.cond
  %tobool = icmp eq i32 %current_partition.0, 0, !dbg !3030
  br i1 %tobool, label %if.then, label %for.body.if.end_crit_edge, !dbg !3033

for.body.if.end_crit_edge:                        ; preds = %for.body
  %flags3.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !3034
  %.pre2 = load i32, i32* %flags3.phi.trans.insert, align 8, !dbg !3036
  %.pre5 = and i32 %.pre2, 96, !dbg !3036
  br label %if.end, !dbg !3033

if.then:                                          ; preds = %for.body
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !3037
  %5 = load i32, i32* %flags, align 8, !dbg !3037
  %and = and i32 %5, 96, !dbg !3037
  call void @llvm.dbg.value(metadata i32 %and, metadata !3021, metadata !DIExpression()), !dbg !3022
  br label %if.end, !dbg !3038

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then
  %and4.pre-phi = phi i32 [ %.pre5, %for.body.if.end_crit_edge ], [ %and, %if.then ], !dbg !3036
  %current_partition.1 = phi i32 [ %current_partition.0, %for.body.if.end_crit_edge ], [ %and, %if.then ], !dbg !3022
  call void @llvm.dbg.value(metadata i32 %current_partition.1, metadata !3021, metadata !DIExpression()), !dbg !3022
  %cmp5 = icmp eq i32 %and4.pre-phi, %current_partition.1, !dbg !3039
  br i1 %cmp5, label %for.inc, label %if.then6, !dbg !3040

if.then6:                                         ; preds = %if.end
  %tobool7 = icmp eq i8 %switched_sections.0, 0, !dbg !3041
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !3044

if.then8:                                         ; preds = %if.then6
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3045
  %6 = load i32, i32* %index, align 8, !dbg !3045
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.29, i64 0, i64 0), i32 %6) #6, !dbg !3047
  call void @llvm.dbg.value(metadata i32 1, metadata !3019, metadata !DIExpression()), !dbg !3022
  %.pre.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3025
  br label %for.inc, !dbg !3048

if.else:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata i8 1, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %and4.pre-phi, metadata !3021, metadata !DIExpression()), !dbg !3022
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.else, %if.then8
  %.pre = phi %struct.function* [ %.pre3, %if.end ], [ %.pre.pre, %if.then8 ], [ %.pre3, %if.else ], !dbg !3025
  %current_partition.3 = phi i32 [ %current_partition.1, %if.end ], [ %current_partition.1, %if.then8 ], [ %and4.pre-phi, %if.else ], !dbg !3027
  %switched_sections.2 = phi i8 [ %switched_sections.0, %if.end ], [ %switched_sections.0, %if.then8 ], [ 1, %if.else ], !dbg !3028
  %err.2 = phi i32 [ %err.0, %if.end ], [ 1, %if.then8 ], [ %err.0, %if.else ], !dbg !3022
  call void @llvm.dbg.value(metadata i32 %err.2, metadata !3019, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i8 %switched_sections.2, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %current_partition.3, metadata !3021, metadata !DIExpression()), !dbg !3022
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3049
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3025
  br label %for.cond, !dbg !3025, !llvm.loop !3050

for.end:                                          ; preds = %for.cond
  %err.0.lcssa = phi i32 [ %err.0, %for.cond ], !dbg !3022
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !3019, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !3019, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !3019, metadata !DIExpression()), !dbg !3022
  %tobool14 = icmp eq i32 %err.0.lcssa, 0, !dbg !3052
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !3052

cond.true:                                        ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1887, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3052
  br label %cond.end, !dbg !3052

cond.end:                                         ; preds = %for.end, %cond.true
  ret void, !dbg !3053
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_duplicate_computed_gotos() #4 !dbg !3054 {
entry:
  %0 = load i8 ()*, i8 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 32), align 8, !dbg !3055
  %call = tail call zeroext i8 %0() #6, !dbg !3057
  %tobool = icmp eq i8 %call, 0, !dbg !3057
  br i1 %tobool, label %if.end, label %return, !dbg !3058

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @optimize, align 4, !dbg !3059
  %cmp = icmp sgt i32 %1, 0, !dbg !3060
  %2 = load i32, i32* @flag_expensive_optimizations, align 4, !dbg !3061
  %tobool1 = icmp ne i32 %2, 0, !dbg !3061
  %or.cond = and i1 %cmp, %tobool1, !dbg !3062
  br i1 %or.cond, label %land.rhs, label %land.end, !dbg !3062

land.rhs:                                         ; preds = %if.end
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3063
  %call2 = tail call zeroext i8 @optimize_function_for_size_p(%struct.function* %3) #6, !dbg !3064
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3065
  %phitmp = zext i1 %tobool3 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %4 = phi i8 [ 0, %if.end ], [ %phitmp, %land.rhs ]
  br label %return, !dbg !3066

return:                                           ; preds = %entry, %land.end
  %retval.0 = phi i8 [ %4, %land.end ], [ 0, %entry ], !dbg !3067
  ret i8 %retval.0, !dbg !3068
}

; Function Attrs: nounwind uwtable
define internal i32 @duplicate_computed_gotos() #4 !dbg !3069 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3084
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3084
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3084
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !3084
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !3084
  %cmp = icmp slt i32 %2, 4, !dbg !3086
  br i1 %cmp, label %cleanup141, label %if.end, !dbg !3087

if.end:                                           ; preds = %entry
  tail call void @cfg_layout_initialize(i32 0) #6, !dbg !3088
  %3 = load i32, i32* @uncond_jump_length, align 4, !dbg !3089
  %cmp1 = icmp eq i32 %3, 0, !dbg !3091
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3092

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i32 @get_uncond_jump_length() #8, !dbg !3093
  store i32 %call, i32* @uncond_jump_length, align 4, !dbg !3094
  br label %if.end3, !dbg !3095

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = phi i32 [ %call, %if.then2 ], [ %3, %if.end ], !dbg !3096
  %5 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !3097
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %5, i64 56, i32 1, !dbg !3097
  %6 = load i32, i32* %value, align 8, !dbg !3097
  %mul = mul nsw i32 %4, %6, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3074, metadata !DIExpression()), !dbg !3099
  %call4 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3100
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call4, metadata !3073, metadata !DIExpression()), !dbg !3099
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3101
  %cfg6 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !3101
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6, align 8, !dbg !3101
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 0, !dbg !3101
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3101
  %10 = bitcast %struct.edge_def** %e to i8*, !dbg !3102
  %11 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3102
  %12 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3103
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3103
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3103
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3105
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3105
  br label %for.cond, !dbg !3101

for.cond:                                         ; preds = %cleanup, %if.end3
  %17 = phi %struct.control_flow_graph* [ %8, %if.end3 ], [ %.pre2, %cleanup ], !dbg !3107
  %.pn = phi %struct.basic_block_def* [ %9, %if.end3 ], [ %bb.0, %cleanup ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3108
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3108
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3071, metadata !DIExpression()), !dbg !3099
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 1, !dbg !3107
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3107
  %cmp9 = icmp eq %struct.basic_block_def* %bb.0, %18, !dbg !3107
  br i1 %cmp9, label %for.end83, label %for.body, !dbg !3101

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !3109
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #7, !dbg !3110
  %next_bb10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3111
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb10, align 8, !dbg !3111
  %cmp14 = icmp eq %struct.basic_block_def* %19, %18, !dbg !3113
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !3114

if.then15:                                        ; preds = %for.body
  %20 = ptrtoint %struct.basic_block_def* %19 to i64, !dbg !3114
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3115
  %21 = bitcast i8** %aux to i64*, !dbg !3116
  store i64 %20, i64* %21, align 8, !dbg !3116
  br label %if.end17, !dbg !3117

if.end17:                                         ; preds = %for.body, %if.then15
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !3118
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3118
  %22 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3118
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %22, i64 0, i32 1, !dbg !3118
  %23 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3118
  %call18 = call i32 @computed_jump_p(%struct.rtx_def* %23) #6, !dbg !3120
  %tobool = icmp eq i32 %call18, 0, !dbg !3120
  br i1 %tobool, label %cleanup, label %if.end20, !dbg !3121

if.end20:                                         ; preds = %if.end17
  %24 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3122
  %end_23 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %24, i64 0, i32 1, !dbg !3122
  %25 = load %struct.rtx_def*, %struct.rtx_def** %end_23, align 8, !dbg !3122
  %call24 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %25, i32 29, %struct.rtx_def* null) #6, !dbg !3124
  %tobool25 = icmp eq %struct.rtx_def* %call24, null, !dbg !3124
  br i1 %tobool25, label %lor.lhs.false, label %cleanup, !dbg !3125

lor.lhs.false:                                    ; preds = %if.end20
  %call26 = call zeroext i8 @can_duplicate_block_p(%struct.basic_block_def* %bb.0) #6, !dbg !3126
  %tobool27 = icmp eq i8 %call26, 0, !dbg !3126
  br i1 %tobool27, label %cleanup, label %if.end29, !dbg !3127

if.end29:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i32 0, metadata !3081, metadata !DIExpression()), !dbg !3102
  %26 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3128
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %26, i64 0, i32 0, !dbg !3128
  br label %for.cond32, !dbg !3128

for.cond32:                                       ; preds = %for.inc, %if.end29
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.end29 ], [ %rt_rtx62, %for.inc ]
  %size.0 = phi i32 [ 0, %if.end29 ], [ %size.1, %for.inc ], !dbg !3102
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %size.0, metadata !3081, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3075, metadata !DIExpression()), !dbg !3102
  %tobool33 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3131
  br i1 %tobool33, label %for.end, label %land.rhs, !dbg !3131

land.rhs:                                         ; preds = %for.cond32
  %27 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3131
  %end_36 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %27, i64 0, i32 1, !dbg !3131
  %28 = load %struct.rtx_def*, %struct.rtx_def** %end_36, align 8, !dbg !3131
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3131
  %rt_rtx = bitcast %union.rtunion_def* %29 to %struct.rtx_def**, !dbg !3131
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3131
  %cmp38 = icmp eq %struct.rtx_def* %insn.0, %30, !dbg !3131
  br i1 %cmp38, label %for.end, label %for.body39, !dbg !3128

for.body39:                                       ; preds = %land.rhs
  %31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3133
  %bf.load = load i32, i32* %31, align 8, !dbg !3133
  %bf.clear = and i32 %bf.load, 65535, !dbg !3133
  %cmp40 = icmp eq i32 %bf.clear, 8, !dbg !3133
  br i1 %cmp40, label %if.then53, label %lor.lhs.false41, !dbg !3133

lor.lhs.false41:                                  ; preds = %for.body39
  %cmp44 = icmp eq i32 %bf.clear, 7, !dbg !3133
  br i1 %cmp44, label %if.then53, label %lor.lhs.false45, !dbg !3133

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %cmp48 = icmp eq i32 %bf.clear, 9, !dbg !3133
  br i1 %cmp48, label %if.then53, label %lor.lhs.false49, !dbg !3133

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %cmp52 = icmp eq i32 %bf.clear, 10, !dbg !3133
  br i1 %cmp52, label %if.then53, label %for.inc, !dbg !3135

if.then53:                                        ; preds = %lor.lhs.false49, %lor.lhs.false45, %lor.lhs.false41, %for.body39
  %call54 = call i32 @get_attr_min_length(%struct.rtx_def* nonnull %insn.0) #6, !dbg !3136
  %add = add nsw i32 %size.0, %call54, !dbg !3138
  call void @llvm.dbg.value(metadata i32 %add, metadata !3081, metadata !DIExpression()), !dbg !3102
  %cmp55 = icmp sgt i32 %add, %mul, !dbg !3139
  br i1 %cmp55, label %for.end, label %for.inc, !dbg !3141

for.inc:                                          ; preds = %lor.lhs.false49, %if.then53
  %size.1 = phi i32 [ %size.0, %lor.lhs.false49 ], [ %add, %if.then53 ], !dbg !3102
  call void @llvm.dbg.value(metadata i32 %size.1, metadata !3081, metadata !DIExpression()), !dbg !3102
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3131
  %rt_rtx62 = bitcast %union.rtunion_def* %32 to %struct.rtx_def**, !dbg !3131
  br label %for.cond32, !dbg !3131, !llvm.loop !3142

for.end:                                          ; preds = %land.rhs, %for.cond32, %if.then53
  %size.2 = phi i32 [ %size.0, %land.rhs ], [ %add, %if.then53 ], [ %size.0, %for.cond32 ], !dbg !3102
  call void @llvm.dbg.value(metadata i32 %size.2, metadata !3081, metadata !DIExpression()), !dbg !3102
  %cmp63 = icmp sgt i32 %size.2, %mul, !dbg !3144
  br i1 %cmp63, label %cleanup, label %if.end65, !dbg !3146

if.end65:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !3082, metadata !DIExpression()), !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #7, !dbg !3147
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !3147
  %call66 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3147
  %33 = extractvalue { i32, %struct.VEC_edge_gc** } %call66, 0, !dbg !3147
  store i32 %33, i32* %13, align 8, !dbg !3147
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call66, 1, !dbg !3147
  store %struct.VEC_edge_gc** %34, %struct.VEC_edge_gc*** %14, align 8, !dbg !3147
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %12, i64 16, i1 false), !dbg !3147
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #7, !dbg !3147
  br label %for.cond67, !dbg !3147

for.cond67:                                       ; preds = %for.body70, %if.end65
  %all_flags.0 = phi i32 [ 0, %if.end65 ], [ %or, %for.body70 ], !dbg !3102
  call void @llvm.dbg.value(metadata i32 %all_flags.0, metadata !3082, metadata !DIExpression()), !dbg !3102
  %35 = load i32, i32* %15, align 8, !dbg !3148
  %36 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !3148
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3079, metadata !DIExpression(DW_OP_deref)), !dbg !3102
  %call68 = call fastcc zeroext i8 @ei_cond(i32 %35, %struct.VEC_edge_gc** %36, %struct.edge_def** nonnull %e) #8, !dbg !3148
  %tobool69 = icmp eq i8 %call68, 0, !dbg !3147
  br i1 %tobool69, label %for.end72, label %for.body70, !dbg !3147

for.body70:                                       ; preds = %for.cond67
  %37 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3149
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !3079, metadata !DIExpression()), !dbg !3102
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i64 0, i32 7, !dbg !3150
  %38 = load i32, i32* %flags, align 8, !dbg !3150
  %or = or i32 %all_flags.0, %38, !dbg !3151
  call void @llvm.dbg.value(metadata i32 %or, metadata !3082, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3080, metadata !DIExpression(DW_OP_deref)), !dbg !3102
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3148
  br label %for.cond67, !dbg !3148, !llvm.loop !3152

for.end72:                                        ; preds = %for.cond67
  %all_flags.0.lcssa = phi i32 [ %all_flags.0, %for.cond67 ], !dbg !3102
  call void @llvm.dbg.value(metadata i32 %all_flags.0.lcssa, metadata !3082, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i32 %all_flags.0.lcssa, metadata !3082, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i32 %all_flags.0.lcssa, metadata !3082, metadata !DIExpression()), !dbg !3102
  %and = and i32 %all_flags.0.lcssa, 14, !dbg !3154
  %tobool73 = icmp eq i32 %and, 0, !dbg !3154
  br i1 %tobool73, label %if.end75, label %cleanup, !dbg !3156

if.end75:                                         ; preds = %for.end72
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3157
  %39 = load i32, i32* %index, align 8, !dbg !3157
  %call76 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call4, i32 %39) #6, !dbg !3158
  br label %cleanup, !dbg !3159

cleanup:                                          ; preds = %for.end72, %lor.lhs.false, %if.end20, %if.end17, %for.end, %if.end75
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #7, !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !3159
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3107
  %cfg8.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3160
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8.phi.trans.insert, align 8, !dbg !3107
  br label %for.cond, !dbg !3107, !llvm.loop !3161

for.end83:                                        ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %17, %for.cond ], !dbg !3107
  %bb.0.lcssa = phi %struct.basic_block_def* [ %bb.0, %for.cond ], !dbg !3108
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %call4, i64 0, i32 0, !dbg !3163
  %40 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !3163
  %tobool84 = icmp eq %struct.bitmap_element_def* %40, null, !dbg !3163
  br i1 %tobool84, label %done, label %if.end86, !dbg !3165

if.end86:                                         ; preds = %for.end83
  %x_entry_block_ptr89 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !3166
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr89, align 8, !dbg !3166
  br label %for.cond91, !dbg !3166

for.cond91:                                       ; preds = %for.inc138, %if.end86
  %42 = phi %struct.basic_block_def* [ %bb.0.lcssa, %if.end86 ], [ %.pre5, %for.inc138 ], !dbg !3168
  %.pn1 = phi %struct.basic_block_def* [ %41, %if.end86 ], [ %bb.1, %for.inc138 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn1, i64 0, i32 6, !dbg !3170
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !3170
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !3071, metadata !DIExpression()), !dbg !3099
  %cmp95 = icmp eq %struct.basic_block_def* %bb.1, %42, !dbg !3168
  br i1 %cmp95, label %done.loopexit, label %for.body96, !dbg !3166

for.body96:                                       ; preds = %for.cond91
  %il97 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 7, !dbg !3171
  %rtl98 = bitcast %union.basic_block_il_dependent* %il97 to %struct.rtl_bb_info**, !dbg !3174
  %43 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl98, align 8, !dbg !3174
  %visited = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %43, i64 0, i32 4, !dbg !3175
  %44 = load i32, i32* %visited, align 8, !dbg !3175
  %tobool99 = icmp eq i32 %44, 0, !dbg !3176
  br i1 %tobool99, label %if.end101, label %for.inc138, !dbg !3177

if.end101:                                        ; preds = %for.body96
  store i32 1, i32* %visited, align 8, !dbg !3178
  %call105 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb.1) #8, !dbg !3179
  %tobool106 = icmp eq i8 %call105, 0, !dbg !3179
  br i1 %tobool106, label %for.inc138, label %lor.lhs.false107, !dbg !3181

lor.lhs.false107:                                 ; preds = %if.end101
  %call108 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb.1) #8, !dbg !3182
  %45 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3183
  %cfg110 = getelementptr inbounds %struct.function, %struct.function* %45, i64 0, i32 1, !dbg !3183
  %46 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg110, align 8, !dbg !3183
  %x_exit_block_ptr111 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %46, i64 0, i32 1, !dbg !3183
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr111, align 8, !dbg !3183
  %cmp112 = icmp eq %struct.basic_block_def* %call108, %47, !dbg !3184
  br i1 %cmp112, label %for.inc138, label %lor.lhs.false113, !dbg !3185

lor.lhs.false113:                                 ; preds = %lor.lhs.false107
  %call114 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb.1) #8, !dbg !3186
  %next_bb115 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 6, !dbg !3187
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb115, align 8, !dbg !3187
  %cmp116 = icmp eq %struct.basic_block_def* %call114, %48, !dbg !3188
  br i1 %cmp116, label %for.inc138, label %lor.lhs.false117, !dbg !3189

lor.lhs.false117:                                 ; preds = %lor.lhs.false113
  %call118 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb.1) #8, !dbg !3190
  %call119 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %call118) #8, !dbg !3191
  %tobool120 = icmp eq i8 %call119, 0, !dbg !3191
  br i1 %tobool120, label %if.end122, label %for.inc138, !dbg !3192

if.end122:                                        ; preds = %lor.lhs.false117
  %call123 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb.1) #8, !dbg !3193
  %index124 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call123, i64 0, i32 9, !dbg !3195
  %49 = load i32, i32* %index124, align 8, !dbg !3195
  %call125 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call4, i32 %49) #6, !dbg !3196
  %tobool126 = icmp eq i32 %call125, 0, !dbg !3196
  br i1 %tobool126, label %for.inc138, label %if.end128, !dbg !3197

if.end128:                                        ; preds = %if.end122
  %call129 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb.1) #8, !dbg !3198
  %call130 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb.1) #8, !dbg !3199
  %call131 = call %struct.basic_block_def* @duplicate_block(%struct.basic_block_def* %call129, %struct.edge_def* %call130, %struct.basic_block_def* %bb.1) #6, !dbg !3200
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call131, metadata !3072, metadata !DIExpression()), !dbg !3099
  %aux132 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !3201
  %50 = bitcast i8** %aux132 to i64*, !dbg !3201
  %51 = load i64, i64* %50, align 8, !dbg !3201
  %aux133 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call131, i64 0, i32 2, !dbg !3202
  %52 = bitcast i8** %aux133 to i64*, !dbg !3203
  store i64 %51, i64* %52, align 8, !dbg !3203
  %53 = bitcast i8** %aux132 to %struct.basic_block_def**, !dbg !3204
  store %struct.basic_block_def* %call131, %struct.basic_block_def** %53, align 8, !dbg !3204
  %il135 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call131, i64 0, i32 7, !dbg !3205
  %rtl136 = bitcast %union.basic_block_il_dependent* %il135 to %struct.rtl_bb_info**, !dbg !3206
  %54 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl136, align 8, !dbg !3206
  %visited137 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %54, i64 0, i32 4, !dbg !3207
  store i32 1, i32* %visited137, align 8, !dbg !3208
  br label %for.inc138, !dbg !3209

for.inc138:                                       ; preds = %if.end122, %lor.lhs.false117, %if.end101, %for.body96, %lor.lhs.false107, %lor.lhs.false113, %if.end128
  %.pre3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3168
  %cfg93.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre3, i64 0, i32 1, !dbg !3210
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg93.phi.trans.insert, align 8, !dbg !3168
  %x_exit_block_ptr94.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre4, i64 0, i32 1, !dbg !3210
  %.pre5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr94.phi.trans.insert, align 8, !dbg !3168
  br label %for.cond91, !dbg !3168, !llvm.loop !3211

done.loopexit:                                    ; preds = %for.cond91
  br label %done, !dbg !3213

done:                                             ; preds = %done.loopexit, %for.end83
  call void @llvm.dbg.label(metadata !3083), !dbg !3214
  call void @cfg_layout_finalize() #6, !dbg !3213
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call4) #6, !dbg !3215
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3073, metadata !DIExpression()), !dbg !3099
  br label %cleanup141, !dbg !3216

cleanup141:                                       ; preds = %entry, %done
  ret i32 0, !dbg !3217
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_reorder_blocks() #4 !dbg !3218 {
entry:
  %0 = load i8 ()*, i8 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 32), align 8, !dbg !3219
  %call = tail call zeroext i8 %0() #6, !dbg !3221
  %tobool = icmp eq i8 %call, 0, !dbg !3221
  br i1 %tobool, label %if.end, label %return, !dbg !3222

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @optimize, align 4, !dbg !3223
  %cmp = icmp sgt i32 %1, 0, !dbg !3224
  %conv1 = zext i1 %cmp to i8, !dbg !3225
  br label %return, !dbg !3226

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %conv1, %if.end ], [ 0, %entry ], !dbg !3227
  ret i8 %retval.0, !dbg !3228
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_reorder_blocks() #4 !dbg !3229 {
entry:
  tail call void @cfg_layout_initialize(i32 1) #6, !dbg !3232
  %0 = load i32, i32* @flag_reorder_blocks, align 4, !dbg !3233
  %1 = load i32, i32* @flag_reorder_blocks_and_partition, align 4, !dbg !3235
  %2 = or i32 %0, %1, !dbg !3236
  %3 = icmp eq i32 %2, 0, !dbg !3236
  br i1 %3, label %if.end, label %land.lhs.true, !dbg !3236

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3237
  %call = tail call zeroext i8 @optimize_function_for_speed_p(%struct.function* %4) #6, !dbg !3238
  %tobool2 = icmp eq i8 %call, 0, !dbg !3238
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3239

if.then:                                          ; preds = %land.lhs.true
  tail call void @reorder_basic_blocks() #8, !dbg !3240
  %call3 = tail call zeroext i8 @cleanup_cfg(i32 1) #6, !dbg !3242
  br label %if.end, !dbg !3243

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3244
  %cfg = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !3244
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3244
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !3244
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3244
  %bb.0.in.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 6, !dbg !3246
  %bb.0.pre = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in.phi.trans.insert, align 8, !dbg !3246
  br label %for.cond, !dbg !3244

for.cond:                                         ; preds = %for.inc, %if.end
  %.pre3 = phi %struct.control_flow_graph* [ %6, %if.end ], [ %.pre, %for.inc ]
  %8 = phi %struct.control_flow_graph* [ %6, %if.end ], [ %.pre, %for.inc ], !dbg !3247
  %bb.0 = phi %struct.basic_block_def* [ %bb.0.pre, %if.end ], [ %bb.02, %for.inc ], !dbg !3246
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3231, metadata !DIExpression()), !dbg !3249
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 1, !dbg !3247
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3247
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %9, !dbg !3247
  br i1 %cmp, label %for.end, label %for.body, !dbg !3244

for.body:                                         ; preds = %for.cond
  %next_bb8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !3250
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb8, align 8, !dbg !3250
  %cmp12 = icmp eq %struct.basic_block_def* %10, %9, !dbg !3252
  br i1 %cmp12, label %for.inc, label %if.then14, !dbg !3253

if.then14:                                        ; preds = %for.body
  %11 = ptrtoint %struct.basic_block_def* %10 to i64, !dbg !3253
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3254
  %12 = bitcast i8** %aux to i64*, !dbg !3255
  store i64 %11, i64* %12, align 8, !dbg !3255
  %.pre.pre = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3247
  br label %for.inc, !dbg !3256

for.inc:                                          ; preds = %for.body, %if.then14
  %.pre = phi %struct.control_flow_graph* [ %.pre3, %for.body ], [ %.pre.pre, %if.then14 ], !dbg !3247
  %bb.02 = phi %struct.basic_block_def* [ %9, %for.body ], [ %10, %if.then14 ]
  br label %for.cond, !dbg !3247, !llvm.loop !3257

for.end:                                          ; preds = %for.cond
  tail call void @cfg_layout_finalize() #6, !dbg !3259
  tail call fastcc void @insert_section_boundary_note() #8, !dbg !3260
  ret i32 0, !dbg !3261
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_partition_blocks() #4 !dbg !3262 {
entry:
  %0 = load i32, i32* @flag_reorder_blocks_and_partition, align 4, !dbg !3263
  %tobool = icmp eq i32 %0, 0, !dbg !3263
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !3264

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.tree_decl_with_vis*, %struct.tree_decl_with_vis** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_with_vis**), align 8, !dbg !3265
  %comdat_group = getelementptr inbounds %struct.tree_decl_with_vis, %struct.tree_decl_with_vis* %1, i64 0, i32 3, !dbg !3265
  %2 = load %union.tree_node*, %union.tree_node** %comdat_group, align 8, !dbg !3265
  %cmp = icmp eq %union.tree_node* %2, null, !dbg !3265
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3266

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i8, i8* @user_defined_section_attribute, align 1, !dbg !3267
  %tobool1 = icmp eq i8 %3, 0, !dbg !3268
  %phitmp = zext i1 %tobool1 to i8
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry, %land.rhs
  %4 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %4, !dbg !3269
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_partition_blocks() #4 !dbg !3270 {
entry:
  tail call fastcc void @partition_hot_cold_basic_blocks() #8, !dbg !3271
  ret i32 0, !dbg !3272
}

declare dso_local %struct.rtx_def* @emit_label_before(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_label_rtx() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_jump_insn(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_jump(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @get_attr_min_length(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @delete_insn(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.fibheap* @fibheap_new() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3273 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3277, metadata !DIExpression()), !dbg !3279
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3280
  store i32 0, i32* %index, align 8, !dbg !3281
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3282
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3283
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3284
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3284
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3284
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3285 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3290, metadata !DIExpression()), !dbg !3291
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3292
  %tobool = icmp eq i8 %call, 0, !dbg !3292
  br i1 %tobool, label %if.then, label %if.else, !dbg !3294

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3295
  br label %return, !dbg !3297

if.else:                                          ; preds = %entry
  br label %return, !dbg !3298

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3300
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3300
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3300
  ret i8 %retval.0, !dbg !3301
}

declare dso_local %struct.fibnode* @fibheap_insert(%struct.fibheap*, i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @bb_to_key(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !3302 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3306, metadata !DIExpression()), !dbg !3316
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3317
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3317
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3318
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3318
  call void @llvm.dbg.value(metadata i32 0, metadata !3309, metadata !DIExpression()), !dbg !3316
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3319
  %2 = load i32, i32* %flags, align 8, !dbg !3319
  %and = and i32 %2, 96, !dbg !3319
  %cmp = icmp eq i32 %and, 64, !dbg !3321
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !3322

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i8 @probably_never_executed_bb_p(%struct.basic_block_def* %bb) #6, !dbg !3323
  %tobool = icmp eq i8 %call, 0, !dbg !3323
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3324

if.end:                                           ; preds = %lor.lhs.false
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3325
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3325
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3325
  %call1 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3325
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3325
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 0, !dbg !3325
  store i32 %5, i32* %4, align 8, !dbg !3325
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3325
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 1, !dbg !3325
  store %struct.VEC_edge_gc** %7, %struct.VEC_edge_gc*** %6, align 8, !dbg !3325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !3325
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !3325
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3326
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3326
  br label %for.cond, !dbg !3325

for.cond:                                         ; preds = %for.inc, %if.end
  %priority.0 = phi i32 [ 0, %if.end ], [ %priority.2, %for.inc ], !dbg !3316
  call void @llvm.dbg.value(metadata i32 %priority.0, metadata !3309, metadata !DIExpression()), !dbg !3316
  %10 = load i32, i32* %8, align 8, !dbg !3327
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !3327
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3307, metadata !DIExpression(DW_OP_deref)), !dbg !3316
  %call2 = call fastcc zeroext i8 @ei_cond(i32 %10, %struct.VEC_edge_gc** %11, %struct.edge_def** nonnull %e) #8, !dbg !3327
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3325
  br i1 %tobool3, label %for.end, label %for.body, !dbg !3325

for.body:                                         ; preds = %for.cond
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3328
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3307, metadata !DIExpression()), !dbg !3316
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !3329
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3329
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3330
  %cfg = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !3330
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3330
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !3330
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3330
  %cmp4 = icmp eq %struct.basic_block_def* %13, %16, !dbg !3331
  br i1 %cmp4, label %lor.lhs.false9, label %land.lhs.true, !dbg !3332

land.lhs.true:                                    ; preds = %for.body
  %17 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3333
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3307, metadata !DIExpression()), !dbg !3316
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !3334
  %18 = load i32, i32* %index, align 8, !dbg !3334
  %idxprom = sext i32 %18 to i64, !dbg !3333
  %end_of_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %17, i64 %idxprom, i32 1, !dbg !3335
  %19 = load i32, i32* %end_of_trace, align 4, !dbg !3335
  %cmp7 = icmp sgt i32 %19, -1, !dbg !3336
  br i1 %cmp7, label %if.then13, label %lor.lhs.false9, !dbg !3337

lor.lhs.false9:                                   ; preds = %for.body, %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3307, metadata !DIExpression()), !dbg !3316
  %flags10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 7, !dbg !3338
  %20 = load i32, i32* %flags10, align 8, !dbg !3338
  %and11 = and i32 %20, 32, !dbg !3339
  %tobool12 = icmp eq i32 %and11, 0, !dbg !3339
  br i1 %tobool12, label %for.inc, label %if.then13, !dbg !3340

if.then13:                                        ; preds = %lor.lhs.false9, %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3307, metadata !DIExpression()), !dbg !3316
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 11, !dbg !3341
  %21 = load i32, i32* %frequency, align 8, !dbg !3341
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3307, metadata !DIExpression()), !dbg !3316
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 8, !dbg !3341
  %22 = load i32, i32* %probability, align 4, !dbg !3341
  %mul = mul nsw i32 %21, %22, !dbg !3341
  %add = add nsw i32 %mul, 5000, !dbg !3341
  %div = sdiv i32 %add, 10000, !dbg !3341
  call void @llvm.dbg.value(metadata i32 %div, metadata !3310, metadata !DIExpression()), !dbg !3342
  %cmp15 = icmp sgt i32 %div, %priority.0, !dbg !3343
  %spec.select = select i1 %cmp15, i32 %div, i32 %priority.0, !dbg !3345
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3309, metadata !DIExpression()), !dbg !3316
  br label %for.inc, !dbg !3346

for.inc:                                          ; preds = %lor.lhs.false9, %if.then13
  %priority.2 = phi i32 [ %spec.select, %if.then13 ], [ %priority.0, %lor.lhs.false9 ], !dbg !3316
  call void @llvm.dbg.value(metadata i32 %priority.2, metadata !3309, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3308, metadata !DIExpression(DW_OP_deref)), !dbg !3316
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3327
  br label %for.cond, !dbg !3327, !llvm.loop !3347

for.end:                                          ; preds = %for.cond
  %priority.0.lcssa = phi i32 [ %priority.0, %for.cond ], !dbg !3316
  call void @llvm.dbg.value(metadata i32 %priority.0.lcssa, metadata !3309, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 %priority.0.lcssa, metadata !3309, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 %priority.0.lcssa, metadata !3309, metadata !DIExpression()), !dbg !3316
  %tobool20 = icmp eq i32 %priority.0.lcssa, 0, !dbg !3349
  br i1 %tobool20, label %if.end27, label %if.then21, !dbg !3351

if.then21:                                        ; preds = %for.end
  %mul22 = mul nsw i32 %priority.0.lcssa, 100, !dbg !3352
  %add23 = add nsw i32 %mul22, 1000000, !dbg !3353
  %frequency24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3354
  %23 = load i32, i32* %frequency24, align 8, !dbg !3354
  %add25 = add nsw i32 %add23, %23, !dbg !3355
  %sub = sub nsw i32 0, %add25, !dbg !3356
  %conv26 = sext i32 %sub to i64, !dbg !3356
  br label %cleanup, !dbg !3357

if.end27:                                         ; preds = %for.end
  %frequency28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3358
  %24 = load i32, i32* %frequency28, align 8, !dbg !3358
  %sub29 = sub nsw i32 0, %24, !dbg !3359
  %conv30 = sext i32 %sub29 to i64, !dbg !3359
  br label %cleanup, !dbg !3360

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end27, %if.then21
  %retval.0 = phi i64 [ %conv26, %if.then21 ], [ %conv30, %if.end27 ], [ 10000, %lor.lhs.false ], [ 10000, %entry ], !dbg !3316
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3361
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3361
  ret i64 %retval.0, !dbg !3361
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3362 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3367, metadata !DIExpression()), !dbg !3368
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3369
  %0 = load i32, i32* %index, align 8, !dbg !3369
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3369
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3369
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !3369
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3369
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3369

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3369
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3369
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !3369
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3369
  br label %cond.end, !dbg !3369

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3369
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3369
  %cmp = icmp ult i32 %0, %call2, !dbg !3369
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3369

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3369
  br label %cond.end5, !dbg !3369

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3370
  %inc = add i32 %5, 1, !dbg !3370
  store i32 %inc, i32* %index, align 8, !dbg !3370
  ret void, !dbg !3371
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @find_traces_1_round(i32 %branch_th, i32 %exec_th, i64 %count_th, %struct.trace* %traces, i32* %n_traces, i32 %round, %struct.fibheap** %heap, i32 %number_of_rounds) unnamed_addr #4 !dbg !3372 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp122 = alloca %struct.edge_iterator, align 8
  %tmp311 = alloca %struct.edge_iterator, align 8
  %tmp414 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %branch_th, metadata !3377, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 %exec_th, metadata !3378, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 %count_th, metadata !3379, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata %struct.trace* %traces, metadata !3380, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32* %n_traces, metadata !3381, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 %round, metadata !3382, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata %struct.fibheap** %heap, metadata !3383, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i32 4, metadata !3384, metadata !DIExpression()), !dbg !3408
  %call = tail call %struct.fibheap* @fibheap_new() #6, !dbg !3409
  call void @llvm.dbg.value(metadata %struct.fibheap* %call, metadata !3385, metadata !DIExpression()), !dbg !3408
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3410
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3410
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3411
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3411
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3411
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3413
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3413
  %7 = bitcast %struct.edge_iterator* %tmp122 to i8*, !dbg !3415
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp122, i64 0, i32 0, !dbg !3415
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp122, i64 0, i32 1, !dbg !3415
  %10 = bitcast %struct.edge_iterator* %tmp311 to i8*, !dbg !3416
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp311, i64 0, i32 0, !dbg !3416
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp311, i64 0, i32 1, !dbg !3416
  %13 = bitcast %struct.edge_iterator* %tmp414 to i8*, !dbg !3422
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp414, i64 0, i32 0, !dbg !3422
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp414, i64 0, i32 1, !dbg !3422
  br label %while.cond, !dbg !3424

while.cond:                                       ; preds = %cleanup480, %entry
  %16 = load %struct.fibheap*, %struct.fibheap** %heap, align 8, !dbg !3425
  %call1 = call i32 @fibheap_empty(%struct.fibheap* %16) #6, !dbg !3426
  %tobool = icmp eq i32 %call1, 0, !dbg !3427
  br i1 %tobool, label %while.body, label %while.end, !dbg !3424

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3428
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3429
  %17 = load %struct.fibheap*, %struct.fibheap** %heap, align 8, !dbg !3430
  %call2 = call i8* @fibheap_extract_min(%struct.fibheap* %17) #6, !dbg !3431
  %18 = bitcast i8* %call2 to %struct.basic_block_def*, !dbg !3432
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %18, metadata !3386, metadata !DIExpression()), !dbg !3410
  %19 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3433
  %index = getelementptr inbounds i8, i8* %call2, i64 80, !dbg !3434
  %20 = bitcast i8* %index to i32*, !dbg !3434
  %21 = load i32, i32* %20, align 8, !dbg !3434
  %idxprom = sext i32 %21 to i64, !dbg !3433
  %heap3 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %19, i64 %idxprom, i32 3, !dbg !3435
  store %struct.fibheap* null, %struct.fibheap** %heap3, align 8, !dbg !3436
  %22 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3437
  %23 = load i32, i32* %20, align 8, !dbg !3438
  %idxprom5 = sext i32 %23 to i64, !dbg !3437
  %node = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %22, i64 %idxprom5, i32 4, !dbg !3439
  store %struct.fibnode* null, %struct.fibnode** %node, align 8, !dbg !3440
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3441
  %tobool7 = icmp eq %struct._IO_FILE* %24, null, !dbg !3441
  br i1 %tobool7, label %if.end, label %if.then, !dbg !3443

if.then:                                          ; preds = %while.body
  %25 = load i32, i32* %20, align 8, !dbg !3444
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %25) #6, !dbg !3445
  br label %if.end, !dbg !3445

if.end:                                           ; preds = %while.body, %if.then
  %call10 = call fastcc zeroext i8 @push_to_next_round_p(%struct.basic_block_def* %18, i32 %round, i32 4, i32 %exec_th, i64 %count_th) #8, !dbg !3446
  %tobool11 = icmp eq i8 %call10, 0, !dbg !3446
  br i1 %tobool11, label %if.end30, label %if.then12, !dbg !3447

if.then12:                                        ; preds = %if.end
  %call14 = call fastcc i64 @bb_to_key(%struct.basic_block_def* %18) #8, !dbg !3448
  call void @llvm.dbg.value(metadata i32 undef, metadata !3393, metadata !DIExpression()), !dbg !3449
  %26 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3450
  %27 = load i32, i32* %20, align 8, !dbg !3451
  %idxprom16 = sext i32 %27 to i64, !dbg !3450
  %heap18 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %26, i64 %idxprom16, i32 3, !dbg !3452
  store %struct.fibheap* %call, %struct.fibheap** %heap18, align 8, !dbg !3453
  %sext = shl i64 %call14, 32, !dbg !3454
  %conv19 = ashr exact i64 %sext, 32, !dbg !3454
  %call20 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %call, i64 %conv19, i8* %call2) #6, !dbg !3455
  %28 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3456
  %29 = load i32, i32* %20, align 8, !dbg !3457
  %idxprom22 = sext i32 %29 to i64, !dbg !3456
  %node24 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %28, i64 %idxprom22, i32 4, !dbg !3458
  store %struct.fibnode* %call20, %struct.fibnode** %node24, align 8, !dbg !3459
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3460
  %tobool25 = icmp eq %struct._IO_FILE* %30, null, !dbg !3460
  br i1 %tobool25, label %cleanup480, label %if.then26, !dbg !3462

if.then26:                                        ; preds = %if.then12
  %conv = trunc i64 %call14 to i32, !dbg !3448
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3393, metadata !DIExpression()), !dbg !3449
  %31 = load i32, i32* %20, align 8, !dbg !3463
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i32 %31, i32 %conv) #6, !dbg !3464
  br label %cleanup480, !dbg !3464

if.end30:                                         ; preds = %if.end
  %32 = load i32, i32* %n_traces, align 4, !dbg !3465
  %idx.ext = sext i32 %32 to i64, !dbg !3466
  %add.ptr = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idx.ext, !dbg !3466
  call void @llvm.dbg.value(metadata %struct.trace* %add.ptr, metadata !3388, metadata !DIExpression()), !dbg !3410
  %33 = bitcast %struct.trace* %add.ptr to i8**, !dbg !3467
  store i8* %call2, i8** %33, align 8, !dbg !3467
  %round31 = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idx.ext, i32 2, !dbg !3468
  store i32 %round, i32* %round31, align 8, !dbg !3469
  %length = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idx.ext, i32 3, !dbg !3470
  store i32 0, i32* %length, align 4, !dbg !3471
  %34 = load i32, i32* %n_traces, align 4, !dbg !3472
  %35 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3473
  %36 = load i32, i32* %20, align 8, !dbg !3474
  %idxprom33 = sext i32 %36 to i64, !dbg !3473
  %in_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %35, i64 %idxprom33, i32 2, !dbg !3475
  store i32 %34, i32* %in_trace, align 8, !dbg !3476
  %37 = load i32, i32* %n_traces, align 4, !dbg !3477
  %inc = add nsw i32 %37, 1, !dbg !3477
  store i32 %inc, i32* %n_traces, align 4, !dbg !3477
  br label %do.body, !dbg !3478

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %if.end30
  %38 = phi i32 [ %inc, %if.end30 ], [ %.pre, %cleanup.do.body_crit_edge ], !dbg !3479
  %bb.0 = phi %struct.basic_block_def* [ %18, %if.end30 ], [ %bb.6, %cleanup.do.body_crit_edge ], !dbg !3410
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3386, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32 -1073741824, metadata !3400, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 -1073741824, metadata !3401, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !3389, metadata !DIExpression()), !dbg !3410
  call fastcc void @mark_bb_visited(%struct.basic_block_def* %bb.0, i32 %38) #8, !dbg !3481
  %39 = load i32, i32* %length, align 4, !dbg !3482
  %inc36 = add nsw i32 %39, 1, !dbg !3482
  store i32 %inc36, i32* %length, align 4, !dbg !3482
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3483
  %tobool37 = icmp eq %struct._IO_FILE* %40, null, !dbg !3483
  br i1 %tobool37, label %if.end41, label %if.then38, !dbg !3485

if.then38:                                        ; preds = %do.body
  %index39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3486
  %41 = load i32, i32* %index39, align 8, !dbg !3486
  %42 = load i32, i32* %n_traces, align 4, !dbg !3487
  %sub = add nsw i32 %42, -1, !dbg !3488
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %41, i32 %sub) #6, !dbg !3489
  br label %if.end41, !dbg !3489

if.end41:                                         ; preds = %do.body, %if.then38
  %call42 = call zeroext i8 @block_ends_with_call_p(%struct.basic_block_def* %bb.0) #6, !dbg !3490
  call void @llvm.dbg.value(metadata i8 %call42, metadata !3399, metadata !DIExpression()), !dbg !3480
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3491
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !3491
  %call43 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3491
  %43 = extractvalue { i32, %struct.VEC_edge_gc** } %call43, 0, !dbg !3491
  store i32 %43, i32* %3, align 8, !dbg !3491
  %44 = extractvalue { i32, %struct.VEC_edge_gc** } %call43, 1, !dbg !3491
  store %struct.VEC_edge_gc** %44, %struct.VEC_edge_gc*** %4, align 8, !dbg !3491
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3491
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3491
  %flags64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !3492
  %tobool71 = icmp eq i8 %call42, 0, !dbg !3495
  br label %for.cond, !dbg !3491

for.cond:                                         ; preds = %for.inc, %if.end41
  %best_edge.0 = phi %struct.edge_def* [ null, %if.end41 ], [ %best_edge.3, %for.inc ], !dbg !3497
  %best_prob.0 = phi i32 [ -1073741824, %if.end41 ], [ %best_prob.3, %for.inc ], !dbg !3498
  %best_freq.0 = phi i32 [ -1073741824, %if.end41 ], [ %best_freq.3, %for.inc ], !dbg !3499
  call void @llvm.dbg.value(metadata i32 %best_freq.0, metadata !3401, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %best_prob.0, metadata !3400, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.0, metadata !3389, metadata !DIExpression()), !dbg !3410
  %45 = load i32, i32* %5, align 8, !dbg !3500
  %46 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %6, align 8, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3390, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  %call44 = call fastcc zeroext i8 @ei_cond(i32 %45, %struct.VEC_edge_gc** %46, %struct.edge_def** nonnull %e) #8, !dbg !3500
  %tobool45 = icmp eq i8 %call44, 0, !dbg !3491
  br i1 %tobool45, label %for.end, label %for.body, !dbg !3491

for.body:                                         ; preds = %for.cond
  %47 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3501
  call void @llvm.dbg.value(metadata %struct.edge_def* %47, metadata !3390, metadata !DIExpression()), !dbg !3410
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i64 0, i32 7, !dbg !3501
  %48 = load i32, i32* %flags, align 8, !dbg !3501
  %and = and i32 %48, 16, !dbg !3501
  %tobool46 = icmp eq i32 %and, 0, !dbg !3501
  br i1 %tobool46, label %cond.end, label %cond.true, !dbg !3501

cond.true:                                        ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 496, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3501
  %.pre12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3502
  br label %cond.end, !dbg !3501

cond.end:                                         ; preds = %for.body, %cond.true
  %49 = phi %struct.edge_def* [ %47, %for.body ], [ %.pre12, %cond.true ], !dbg !3502
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %49, i64 0, i32 1, !dbg !3504
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3504
  %51 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3505
  %cfg = getelementptr inbounds %struct.function, %struct.function* %51, i64 0, i32 1, !dbg !3505
  %52 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3505
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %52, i64 0, i32 1, !dbg !3505
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3505
  %cmp = icmp eq %struct.basic_block_def* %50, %53, !dbg !3506
  br i1 %cmp, label %for.inc, label %if.end50, !dbg !3507

if.end50:                                         ; preds = %cond.end
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i64 0, i32 7, !dbg !3508
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3510
  %54 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3510
  %visited = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %54, i64 0, i32 4, !dbg !3511
  %55 = load i32, i32* %visited, align 8, !dbg !3511
  %tobool52 = icmp eq i32 %55, 0, !dbg !3512
  br i1 %tobool52, label %if.end60, label %land.lhs.true, !dbg !3513

land.lhs.true:                                    ; preds = %if.end50
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %56 = load i32, i32* %n_traces, align 4, !dbg !3514
  %cmp57 = icmp eq i32 %55, %56, !dbg !3515
  br i1 %cmp57, label %if.end60, label %for.inc, !dbg !3516

if.end60:                                         ; preds = %land.lhs.true, %if.end50
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %flags62 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i64 0, i32 13, !dbg !3517
  %57 = load i32, i32* %flags62, align 8, !dbg !3517
  %58 = load i32, i32* %flags64, align 8, !dbg !3518
  %59 = xor i32 %57, %58, !dbg !3519
  %60 = and i32 %59, 96, !dbg !3519
  %cmp66 = icmp eq i32 %60, 0, !dbg !3519
  br i1 %cmp66, label %if.end69, label %for.inc, !dbg !3520

if.end69:                                         ; preds = %if.end60
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %49, i64 0, i32 8, !dbg !3521
  %61 = load i32, i32* %probability, align 4, !dbg !3521
  call void @llvm.dbg.value(metadata i32 %61, metadata !3396, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i64 0, i32 11, !dbg !3522
  %62 = load i32, i32* %frequency, align 8, !dbg !3522
  call void @llvm.dbg.value(metadata i32 %62, metadata !3398, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %flags73 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %49, i64 0, i32 7, !dbg !3523
  %63 = load i32, i32* %flags73, align 8, !dbg !3523
  %and74 = and i32 %63, 64, !dbg !3523
  %tobool75 = icmp ne i32 %and74, 0, !dbg !3523
  br i1 %tobool71, label %if.end78, label %if.then72, !dbg !3524

if.then72:                                        ; preds = %if.end69
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %spec.select = select i1 %tobool75, %struct.edge_def* %49, %struct.edge_def* %best_edge.0, !dbg !3525
  %spec.select1 = select i1 %tobool75, i32 %61, i32 %best_prob.0, !dbg !3525
  %spec.select2 = select i1 %tobool75, i32 %62, i32 %best_freq.0, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !3401, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !3400, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %spec.select, metadata !3389, metadata !DIExpression()), !dbg !3410
  br label %for.inc, !dbg !3527

if.end78:                                         ; preds = %if.end69
  br i1 %tobool75, label %lor.lhs.false, label %for.inc, !dbg !3528

lor.lhs.false:                                    ; preds = %if.end78
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %and83 = and i32 %63, 14, !dbg !3530
  %tobool84 = icmp ne i32 %and83, 0, !dbg !3530
  %cmp86 = icmp slt i32 %61, %branch_th, !dbg !3531
  %or.cond = or i1 %tobool84, %cmp86, !dbg !3532
  br i1 %or.cond, label %for.inc, label %lor.lhs.false88, !dbg !3532

lor.lhs.false88:                                  ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %49, i64 0, i32 0, !dbg !3533
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3533
  %frequency89 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i64 0, i32 11, !dbg !3533
  %65 = load i32, i32* %frequency89, align 8, !dbg !3533
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %mul = mul nsw i32 %65, %61, !dbg !3533
  %add = add nsw i32 %mul, 5000, !dbg !3533
  %div = sdiv i32 %add, 10000, !dbg !3533
  %cmp91 = icmp slt i32 %div, %exec_th, !dbg !3534
  br i1 %cmp91, label %for.inc, label %lor.lhs.false93, !dbg !3535

lor.lhs.false93:                                  ; preds = %lor.lhs.false88
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %49, i64 0, i32 9, !dbg !3536
  %66 = load i64, i64* %count, align 8, !dbg !3536
  %cmp94 = icmp slt i64 %66, %count_th, !dbg !3537
  br i1 %cmp94, label %for.inc, label %if.end97, !dbg !3538

if.end97:                                         ; preds = %lor.lhs.false93
  call void @llvm.dbg.value(metadata %struct.edge_def* %49, metadata !3390, metadata !DIExpression()), !dbg !3410
  %call98 = call fastcc zeroext i8 @better_edge_p(%struct.basic_block_def* %bb.0, %struct.edge_def* %49, i32 %61, i32 %62, i32 %best_prob.0, i32 %best_freq.0, %struct.edge_def* %best_edge.0) #8, !dbg !3539
  %tobool99 = icmp ne i8 %call98, 0, !dbg !3539
  %67 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3541
  call void @llvm.dbg.value(metadata %struct.edge_def* %67, metadata !3390, metadata !DIExpression()), !dbg !3410
  %spec.select3 = select i1 %tobool99, %struct.edge_def* %67, %struct.edge_def* %best_edge.0, !dbg !3543
  %spec.select4 = select i1 %tobool99, i32 %61, i32 %best_prob.0, !dbg !3543
  %spec.select5 = select i1 %tobool99, i32 %62, i32 %best_freq.0, !dbg !3543
  call void @llvm.dbg.value(metadata i32 %spec.select5, metadata !3401, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %spec.select4, metadata !3400, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %spec.select3, metadata !3389, metadata !DIExpression()), !dbg !3410
  br label %for.inc, !dbg !3544

for.inc:                                          ; preds = %land.lhs.true, %if.end60, %if.end78, %lor.lhs.false, %lor.lhs.false88, %lor.lhs.false93, %cond.end, %if.end97, %if.then72
  %best_edge.3 = phi %struct.edge_def* [ %spec.select, %if.then72 ], [ %spec.select3, %if.end97 ], [ %best_edge.0, %cond.end ], [ %best_edge.0, %land.lhs.true ], [ %best_edge.0, %if.end60 ], [ %best_edge.0, %lor.lhs.false93 ], [ %best_edge.0, %lor.lhs.false88 ], [ %best_edge.0, %lor.lhs.false ], [ %best_edge.0, %if.end78 ], !dbg !3480
  %best_prob.3 = phi i32 [ %spec.select1, %if.then72 ], [ %spec.select4, %if.end97 ], [ %best_prob.0, %cond.end ], [ %best_prob.0, %land.lhs.true ], [ %best_prob.0, %if.end60 ], [ %best_prob.0, %lor.lhs.false93 ], [ %best_prob.0, %lor.lhs.false88 ], [ %best_prob.0, %lor.lhs.false ], [ %best_prob.0, %if.end78 ], !dbg !3480
  %best_freq.3 = phi i32 [ %spec.select2, %if.then72 ], [ %spec.select5, %if.end97 ], [ %best_freq.0, %cond.end ], [ %best_freq.0, %land.lhs.true ], [ %best_freq.0, %if.end60 ], [ %best_freq.0, %lor.lhs.false93 ], [ %best_freq.0, %lor.lhs.false88 ], [ %best_freq.0, %lor.lhs.false ], [ %best_freq.0, %if.end78 ], !dbg !3480
  call void @llvm.dbg.value(metadata i32 %best_freq.3, metadata !3401, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %best_prob.3, metadata !3400, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.3, metadata !3389, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3392, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3500
  br label %for.cond, !dbg !3500, !llvm.loop !3545

for.end:                                          ; preds = %for.cond
  %best_edge.0.lcssa = phi %struct.edge_def* [ %best_edge.0, %for.cond ], !dbg !3497
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.0.lcssa, metadata !3389, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.0.lcssa, metadata !3389, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.0.lcssa, metadata !3389, metadata !DIExpression()), !dbg !3410
  %tobool102 = icmp eq %struct.edge_def* %best_edge.0.lcssa, null, !dbg !3547
  br i1 %tobool102, label %if.end121, label %land.lhs.true103, !dbg !3549

land.lhs.true103:                                 ; preds = %for.end
  %dest104 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best_edge.0.lcssa, i64 0, i32 1, !dbg !3550
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %dest104, align 8, !dbg !3550
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i64 0, i32 0, !dbg !3550
  %69 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3550
  %tobool105 = icmp eq %struct.VEC_edge_gc* %69, null, !dbg !3550
  br i1 %tobool105, label %cond.end110, label %cond.true106, !dbg !3550

cond.true106:                                     ; preds = %land.lhs.true103
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %69, i64 0, i32 0, !dbg !3550
  br label %cond.end110, !dbg !3550

cond.end110:                                      ; preds = %land.lhs.true103, %cond.true106
  %cond111 = phi %struct.VEC_edge_base* [ %base, %cond.true106 ], [ null, %land.lhs.true103 ], !dbg !3550
  %call112 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond111) #8, !dbg !3550
  %cmp113 = icmp ugt i32 %call112, 1, !dbg !3551
  br i1 %cmp113, label %land.lhs.true115, label %if.end121, !dbg !3552

land.lhs.true115:                                 ; preds = %cond.end110
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %dest104, align 8, !dbg !3553
  %call117 = call fastcc zeroext i8 @copy_bb_p(%struct.basic_block_def* %70, i32 0) #8, !dbg !3554
  %tobool119 = icmp eq i8 %call117, 0, !dbg !3554
  %spec.select6 = select i1 %tobool119, %struct.edge_def* %best_edge.0.lcssa, %struct.edge_def* null, !dbg !3555
  br label %if.end121, !dbg !3555

if.end121:                                        ; preds = %for.end, %land.lhs.true115, %cond.end110
  %best_edge.4 = phi %struct.edge_def* [ %best_edge.0.lcssa, %cond.end110 ], [ null, %for.end ], [ %spec.select6, %land.lhs.true115 ], !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.4, metadata !3389, metadata !DIExpression()), !dbg !3410
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3556
  %call124 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3556
  %71 = extractvalue { i32, %struct.VEC_edge_gc** } %call124, 0, !dbg !3556
  store i32 %71, i32* %8, align 8, !dbg !3556
  %72 = extractvalue { i32, %struct.VEC_edge_gc** } %call124, 1, !dbg !3556
  store %struct.VEC_edge_gc** %72, %struct.VEC_edge_gc*** %9, align 8, !dbg !3556
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !3556
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3556
  br label %for.cond125, !dbg !3556

for.cond125:                                      ; preds = %for.inc241, %if.end121
  %73 = load i32, i32* %5, align 8, !dbg !3557
  %74 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %6, align 8, !dbg !3557
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3390, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  %call126 = call fastcc zeroext i8 @ei_cond(i32 %73, %struct.VEC_edge_gc** %74, %struct.edge_def** nonnull %e) #8, !dbg !3557
  %tobool127 = icmp eq i8 %call126, 0, !dbg !3556
  br i1 %tobool127, label %for.end242, label %for.body128, !dbg !3556

for.body128:                                      ; preds = %for.cond125
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3558
  call void @llvm.dbg.value(metadata %struct.edge_def* %75, metadata !3390, metadata !DIExpression()), !dbg !3410
  %cmp129 = icmp eq %struct.edge_def* %75, %best_edge.4, !dbg !3560
  br i1 %cmp129, label %for.inc241, label %lor.lhs.false131, !dbg !3561

lor.lhs.false131:                                 ; preds = %for.body128
  call void @llvm.dbg.value(metadata %struct.edge_def* %75, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest132 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i64 0, i32 1, !dbg !3562
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %dest132, align 8, !dbg !3562
  %77 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3563
  %cfg134 = getelementptr inbounds %struct.function, %struct.function* %77, i64 0, i32 1, !dbg !3563
  %78 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg134, align 8, !dbg !3563
  %x_exit_block_ptr135 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %78, i64 0, i32 1, !dbg !3563
  %79 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr135, align 8, !dbg !3563
  %cmp136 = icmp eq %struct.basic_block_def* %76, %79, !dbg !3564
  br i1 %cmp136, label %for.inc241, label %lor.lhs.false138, !dbg !3565

lor.lhs.false138:                                 ; preds = %lor.lhs.false131
  call void @llvm.dbg.value(metadata %struct.edge_def* %75, metadata !3390, metadata !DIExpression()), !dbg !3410
  %il140 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i64 0, i32 7, !dbg !3566
  %rtl141 = bitcast %union.basic_block_il_dependent* %il140 to %struct.rtl_bb_info**, !dbg !3567
  %80 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl141, align 8, !dbg !3567
  %visited142 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %80, i64 0, i32 4, !dbg !3568
  %81 = load i32, i32* %visited142, align 8, !dbg !3568
  %tobool143 = icmp eq i32 %81, 0, !dbg !3569
  br i1 %tobool143, label %if.end145, label %for.inc241, !dbg !3570

if.end145:                                        ; preds = %lor.lhs.false138
  call void @llvm.dbg.value(metadata %struct.edge_def* %75, metadata !3390, metadata !DIExpression()), !dbg !3410
  %call147 = call fastcc i64 @bb_to_key(%struct.basic_block_def* %76) #8, !dbg !3571
  call void @llvm.dbg.value(metadata i64 %call147, metadata !3391, metadata !DIExpression()), !dbg !3410
  %82 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3572
  %83 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3573
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest148 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %83, i64 0, i32 1, !dbg !3574
  %84 = load %struct.basic_block_def*, %struct.basic_block_def** %dest148, align 8, !dbg !3574
  %index149 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %84, i64 0, i32 9, !dbg !3575
  %85 = load i32, i32* %index149, align 8, !dbg !3575
  %idxprom150 = sext i32 %85 to i64, !dbg !3572
  %heap152 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %82, i64 %idxprom150, i32 3, !dbg !3576
  %86 = load %struct.fibheap*, %struct.fibheap** %heap152, align 8, !dbg !3576
  %tobool153 = icmp eq %struct.fibheap* %86, null, !dbg !3572
  br i1 %tobool153, label %if.else, label %if.then154, !dbg !3577

if.then154:                                       ; preds = %if.end145
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  %node159 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %82, i64 %idxprom150, i32 4, !dbg !3578
  %87 = load %struct.fibnode*, %struct.fibnode** %node159, align 8, !dbg !3578
  %key160 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %87, i64 0, i32 4, !dbg !3581
  %88 = load i64, i64* %key160, align 8, !dbg !3581
  %cmp161 = icmp eq i64 %call147, %88, !dbg !3582
  br i1 %cmp161, label %for.inc241, label %if.then163, !dbg !3583

if.then163:                                       ; preds = %if.then154
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3584
  %tobool164 = icmp eq %struct._IO_FILE* %89, null, !dbg !3584
  br i1 %tobool164, label %if.end175, label %if.then165, !dbg !3587

if.then165:                                       ; preds = %if.then163
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  %call174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %85, i64 %88, i64 %call147) #6, !dbg !3588
  %.pre13 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3590
  %.pre14 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3591
  %dest176.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.pre14, i64 0, i32 1, !dbg !3592
  %.pre15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest176.phi.trans.insert, align 8, !dbg !3593
  %index177.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pre15, i64 0, i32 9, !dbg !3592
  %.pre16 = load i32, i32* %index177.phi.trans.insert, align 8, !dbg !3594
  %idxprom178.phi.trans.insert = sext i32 %.pre16 to i64, !dbg !3592
  %heap180.phi.trans.insert = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %.pre13, i64 %idxprom178.phi.trans.insert, i32 3, !dbg !3592
  %.pre17 = load %struct.fibheap*, %struct.fibheap** %heap180.phi.trans.insert, align 8, !dbg !3595
  %node185.phi.trans.insert = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %.pre13, i64 %idxprom178.phi.trans.insert, i32 4, !dbg !3592
  %.pre18 = load %struct.fibnode*, %struct.fibnode** %node185.phi.trans.insert, align 8, !dbg !3596
  br label %if.end175, !dbg !3597

if.end175:                                        ; preds = %if.then163, %if.then165
  %90 = phi %struct.fibnode* [ %87, %if.then163 ], [ %.pre18, %if.then165 ], !dbg !3596
  %91 = phi %struct.fibheap* [ %86, %if.then163 ], [ %.pre17, %if.then165 ], !dbg !3595
  %call186 = call i64 @fibheap_replace_key(%struct.fibheap* %91, %struct.fibnode* %90, i64 %call147) #6, !dbg !3598
  br label %for.inc241, !dbg !3599

if.else:                                          ; preds = %if.end145
  %92 = load %struct.fibheap*, %struct.fibheap** %heap, align 8, !dbg !3600
  call void @llvm.dbg.value(metadata %struct.fibheap* %92, metadata !3402, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct.edge_def* undef, metadata !3390, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32 undef, metadata !3396, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32 undef, metadata !3398, metadata !DIExpression(DW_OP_plus_uconst, 5000, DW_OP_constu, 10000, DW_OP_div, DW_OP_stack_value)), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  %flags195 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %83, i64 0, i32 7, !dbg !3602
  %93 = load i32, i32* %flags195, align 8, !dbg !3602
  %and196 = and i32 %93, 64, !dbg !3604
  %tobool197 = icmp eq i32 %and196, 0, !dbg !3604
  br i1 %tobool197, label %if.then212, label %lor.lhs.false198, !dbg !3605

lor.lhs.false198:                                 ; preds = %if.else
  %src189 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %83, i64 0, i32 0, !dbg !3606
  %94 = load %struct.basic_block_def*, %struct.basic_block_def** %src189, align 8, !dbg !3606
  %frequency190 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %94, i64 0, i32 11, !dbg !3606
  %95 = load i32, i32* %frequency190, align 8, !dbg !3606
  %probability191 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %83, i64 0, i32 8, !dbg !3606
  %96 = load i32, i32* %probability191, align 4, !dbg !3606
  %mul192 = mul nsw i32 %95, %96, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %mul192, metadata !3398, metadata !DIExpression(DW_OP_plus_uconst, 5000, DW_OP_constu, 10000, DW_OP_div, DW_OP_stack_value)), !dbg !3480
  %add193 = add nsw i32 %mul192, 5000, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %add193, metadata !3398, metadata !DIExpression(DW_OP_constu, 10000, DW_OP_div, DW_OP_stack_value)), !dbg !3480
  %div194 = sdiv i32 %add193, 10000, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %div194, metadata !3398, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i32 %96, metadata !3396, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  %and200 = and i32 %93, 14, !dbg !3607
  %tobool201 = icmp ne i32 %and200, 0, !dbg !3607
  %cmp203 = icmp slt i32 %96, %branch_th, !dbg !3608
  %or.cond7 = or i1 %tobool201, %cmp203, !dbg !3609
  %cmp206 = icmp slt i32 %div194, %exec_th, !dbg !3610
  %or.cond8 = or i1 %or.cond7, %cmp206, !dbg !3609
  br i1 %or.cond8, label %if.then212, label %lor.lhs.false208, !dbg !3609

lor.lhs.false208:                                 ; preds = %lor.lhs.false198
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  %count209 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %83, i64 0, i32 9, !dbg !3611
  %97 = load i64, i64* %count209, align 8, !dbg !3611
  %cmp210 = icmp slt i64 %97, %count_th, !dbg !3612
  br i1 %cmp210, label %if.then212, label %if.end218, !dbg !3613

if.then212:                                       ; preds = %if.else, %lor.lhs.false208, %lor.lhs.false198
  call void @llvm.dbg.value(metadata %struct.edge_def* %83, metadata !3390, metadata !DIExpression()), !dbg !3410
  %call214 = call fastcc zeroext i8 @push_to_next_round_p(%struct.basic_block_def* %84, i32 %round, i32 4, i32 %exec_th, i64 %count_th) #8, !dbg !3614
  %tobool215 = icmp eq i8 %call214, 0, !dbg !3614
  %spec.select9 = select i1 %tobool215, %struct.fibheap* %92, %struct.fibheap* %call, !dbg !3617
  call void @llvm.dbg.value(metadata %struct.fibheap* %spec.select9, metadata !3402, metadata !DIExpression()), !dbg !3601
  %.pre19 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3618
  %.pre20 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3619
  %dest219.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.pre20, i64 0, i32 1, !dbg !3601
  %.pre21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest219.phi.trans.insert, align 8, !dbg !3620
  %index220.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pre21, i64 0, i32 9, !dbg !3601
  %.pre22 = load i32, i32* %index220.phi.trans.insert, align 8, !dbg !3621
  %.pre29 = sext i32 %.pre22 to i64, !dbg !3618
  br label %if.end218, !dbg !3622

if.end218:                                        ; preds = %if.then212, %lor.lhs.false208
  %idxprom221.pre-phi = phi i64 [ %.pre29, %if.then212 ], [ %idxprom150, %lor.lhs.false208 ], !dbg !3618
  %98 = phi %struct.bbro_basic_block_data_def* [ %.pre19, %if.then212 ], [ %82, %lor.lhs.false208 ], !dbg !3618
  %which_heap.1 = phi %struct.fibheap* [ %spec.select9, %if.then212 ], [ %92, %lor.lhs.false208 ], !dbg !3601
  call void @llvm.dbg.value(metadata %struct.fibheap* %which_heap.1, metadata !3402, metadata !DIExpression()), !dbg !3601
  %heap223 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %98, i64 %idxprom221.pre-phi, i32 3, !dbg !3623
  store %struct.fibheap* %which_heap.1, %struct.fibheap** %heap223, align 8, !dbg !3624
  %99 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3625
  call void @llvm.dbg.value(metadata %struct.edge_def* %99, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest224 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i64 0, i32 1, !dbg !3626
  %100 = bitcast %struct.basic_block_def** %dest224 to i8**, !dbg !3626
  %101 = load i8*, i8** %100, align 8, !dbg !3626
  %call225 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %which_heap.1, i64 %call147, i8* %101) #6, !dbg !3627
  %102 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3628
  %103 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3629
  call void @llvm.dbg.value(metadata %struct.edge_def* %103, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest226 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %103, i64 0, i32 1, !dbg !3630
  %104 = load %struct.basic_block_def*, %struct.basic_block_def** %dest226, align 8, !dbg !3630
  %index227 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %104, i64 0, i32 9, !dbg !3631
  %105 = load i32, i32* %index227, align 8, !dbg !3631
  %idxprom228 = sext i32 %105 to i64, !dbg !3628
  %node230 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %102, i64 %idxprom228, i32 4, !dbg !3632
  store %struct.fibnode* %call225, %struct.fibnode** %node230, align 8, !dbg !3633
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3634
  %tobool231 = icmp eq %struct._IO_FILE* %106, null, !dbg !3634
  br i1 %tobool231, label %for.inc241, label %if.then232, !dbg !3636

if.then232:                                       ; preds = %if.end218
  %cmp233 = icmp eq %struct.fibheap* %which_heap.1, %call, !dbg !3637
  %cond235 = select i1 %cmp233, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), !dbg !3639
  %107 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3640
  call void @llvm.dbg.value(metadata %struct.edge_def* %107, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest236 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %107, i64 0, i32 1, !dbg !3641
  %108 = load %struct.basic_block_def*, %struct.basic_block_def** %dest236, align 8, !dbg !3641
  %index237 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %108, i64 0, i32 9, !dbg !3642
  %109 = load i32, i32* %index237, align 8, !dbg !3642
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i8* %cond235, i32 %109, i64 %call147) #6, !dbg !3643
  br label %for.inc241, !dbg !3644

for.inc241:                                       ; preds = %if.then154, %if.end218, %lor.lhs.false138, %if.end175, %if.then232, %for.body128, %lor.lhs.false131
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3392, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3557
  br label %for.cond125, !dbg !3557, !llvm.loop !3645

for.end242:                                       ; preds = %for.cond125
  %tobool243 = icmp eq %struct.edge_def* %best_edge.4, null, !dbg !3647
  br i1 %tobool243, label %cleanup, label %if.then244, !dbg !3648

if.then244:                                       ; preds = %for.end242
  %dest245 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best_edge.4, i64 0, i32 1, !dbg !3649
  %110 = load %struct.basic_block_def*, %struct.basic_block_def** %dest245, align 8, !dbg !3649
  %il246 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %110, i64 0, i32 7, !dbg !3650
  %rtl247 = bitcast %union.basic_block_il_dependent* %il246 to %struct.rtl_bb_info**, !dbg !3651
  %111 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl247, align 8, !dbg !3651
  %visited248 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %111, i64 0, i32 4, !dbg !3652
  %112 = load i32, i32* %visited248, align 8, !dbg !3652
  %113 = load i32, i32* %n_traces, align 4, !dbg !3653
  %cmp249 = icmp eq i32 %112, %113, !dbg !3654
  %114 = ptrtoint %struct.basic_block_def* %110 to i64, !dbg !3655
  br i1 %cmp249, label %if.then251, label %if.else310, !dbg !3655

if.then251:                                       ; preds = %if.then244
  %cmp253 = icmp eq %struct.basic_block_def* %110, %bb.0, !dbg !3656
  br i1 %cmp253, label %cleanup, label %if.then255, !dbg !3659

if.then255:                                       ; preds = %if.then251
  %src256 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best_edge.4, i64 0, i32 0, !dbg !3660
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %src256, align 8, !dbg !3660
  %frequency257 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %115, i64 0, i32 11, !dbg !3660
  %116 = load i32, i32* %frequency257, align 8, !dbg !3660
  %probability258 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best_edge.4, i64 0, i32 8, !dbg !3660
  %117 = load i32, i32* %probability258, align 4, !dbg !3660
  %mul259 = mul nsw i32 %116, %117, !dbg !3660
  %add260 = add nsw i32 %mul259, 5000, !dbg !3660
  %div261 = sdiv i32 %add260, 10000, !dbg !3660
  %frequency263 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %110, i64 0, i32 11, !dbg !3663
  %118 = load i32, i32* %frequency263, align 8, !dbg !3663
  %mul264 = shl nsw i32 %118, 2, !dbg !3664
  %div265 = sdiv i32 %mul264, 5, !dbg !3665
  %cmp266 = icmp sgt i32 %div261, %div265, !dbg !3666
  br i1 %cmp266, label %if.then268, label %if.else291, !dbg !3667

if.then268:                                       ; preds = %if.then255
  %119 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3668
  %cfg271 = getelementptr inbounds %struct.function, %struct.function* %119, i64 0, i32 1, !dbg !3668
  %120 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg271, align 8, !dbg !3668
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %120, i64 0, i32 0, !dbg !3668
  %121 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3668
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %121, i64 0, i32 6, !dbg !3671
  %122 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !3671
  %cmp272 = icmp eq %struct.basic_block_def* %110, %122, !dbg !3672
  br i1 %cmp272, label %cleanup, label %if.then274, !dbg !3673

if.then274:                                       ; preds = %if.then268
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3674
  %tobool275 = icmp eq %struct._IO_FILE* %123, null, !dbg !3674
  br i1 %tobool275, label %if.then274.if.end281_crit_edge, label %if.then276, !dbg !3677

if.then274.if.end281_crit_edge:                   ; preds = %if.then274
  br label %if.end281, !dbg !3677

if.then276:                                       ; preds = %if.then274
  %index278 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %110, i64 0, i32 9, !dbg !3678
  %124 = load i32, i32* %index278, align 8, !dbg !3678
  %index279 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3680
  %125 = load i32, i32* %index279, align 8, !dbg !3680
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %124, i32 %125) #6, !dbg !3681
  %.phi.trans.insert = bitcast %struct.basic_block_def** %dest245 to i64*, !dbg !3682
  %.pre23 = load i64, i64* %.phi.trans.insert, align 8, !dbg !3683
  br label %if.end281, !dbg !3684

if.end281:                                        ; preds = %if.then274.if.end281_crit_edge, %if.then276
  %126 = phi i64 [ %114, %if.then274.if.end281_crit_edge ], [ %.pre23, %if.then276 ], !dbg !3683
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3685
  %127 = bitcast i8** %aux to i64*, !dbg !3686
  store i64 %126, i64* %127, align 8, !dbg !3686
  %128 = load i32, i32* %n_traces, align 4, !dbg !3687
  %sub283 = add nsw i32 %128, -1, !dbg !3688
  %129 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3689
  %130 = load %struct.basic_block_def*, %struct.basic_block_def** %dest245, align 8, !dbg !3690
  %index285 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %130, i64 0, i32 9, !dbg !3691
  %131 = load i32, i32* %index285, align 8, !dbg !3691
  %idxprom286 = sext i32 %131 to i64, !dbg !3689
  %in_trace288 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %129, i64 %idxprom286, i32 2, !dbg !3692
  store i32 %sub283, i32* %in_trace288, align 8, !dbg !3693
  %132 = load i32, i32* %n_traces, align 4, !dbg !3694
  %call289 = call fastcc %struct.basic_block_def* @rotate_loop(%struct.edge_def* nonnull %best_edge.4, %struct.trace* %add.ptr, i32 %132) #8, !dbg !3695
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call289, metadata !3386, metadata !DIExpression()), !dbg !3410
  br label %cleanup, !dbg !3696

if.else291:                                       ; preds = %if.then255
  %call292 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb.0) #8, !dbg !3697
  %tobool294 = icmp eq i8 %call292, 0, !dbg !3697
  br i1 %tobool294, label %cleanup, label %land.lhs.true295, !dbg !3700

land.lhs.true295:                                 ; preds = %if.else291
  %133 = load %struct.basic_block_def*, %struct.basic_block_def** %dest245, align 8, !dbg !3701
  %call297 = call zeroext i8 @optimize_edge_for_speed_p(%struct.edge_def* nonnull %best_edge.4) #6, !dbg !3702
  %conv298 = zext i8 %call297 to i32, !dbg !3702
  %call299 = call fastcc zeroext i8 @copy_bb_p(%struct.basic_block_def* %133, i32 %conv298) #8, !dbg !3703
  %tobool301 = icmp eq i8 %call299, 0, !dbg !3703
  br i1 %tobool301, label %cleanup, label %if.then302, !dbg !3704

if.then302:                                       ; preds = %land.lhs.true295
  %134 = load %struct.basic_block_def*, %struct.basic_block_def** %dest245, align 8, !dbg !3705
  %135 = load i32, i32* %n_traces, align 4, !dbg !3707
  %call304 = call fastcc %struct.basic_block_def* @copy_bb(%struct.basic_block_def* %134, %struct.edge_def* nonnull %best_edge.4, %struct.basic_block_def* %bb.0, i32 %135) #8, !dbg !3708
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call304, metadata !3386, metadata !DIExpression()), !dbg !3410
  %136 = load i32, i32* %length, align 4, !dbg !3709
  %inc306 = add nsw i32 %136, 1, !dbg !3709
  store i32 %inc306, i32* %length, align 4, !dbg !3709
  br label %cleanup, !dbg !3710

if.else310:                                       ; preds = %if.then244
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !3711
  %call313 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3711
  %137 = extractvalue { i32, %struct.VEC_edge_gc** } %call313, 0, !dbg !3711
  store i32 %137, i32* %11, align 8, !dbg !3711
  %138 = extractvalue { i32, %struct.VEC_edge_gc** } %call313, 1, !dbg !3711
  store %struct.VEC_edge_gc** %138, %struct.VEC_edge_gc*** %12, align 8, !dbg !3711
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !3711
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !3711
  %src370 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best_edge.4, i64 0, i32 0, !dbg !3712
  %probability372 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best_edge.4, i64 0, i32 8, !dbg !3712
  br label %for.cond314, !dbg !3711

for.cond314:                                      ; preds = %for.inc386, %if.else310
  %139 = load i32, i32* %5, align 8, !dbg !3715
  %140 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %6, align 8, !dbg !3715
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3390, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  %call315 = call fastcc zeroext i8 @ei_cond(i32 %139, %struct.VEC_edge_gc** %140, %struct.edge_def** nonnull %e) #8, !dbg !3715
  %tobool316 = icmp eq i8 %call315, 0, !dbg !3711
  br i1 %tobool316, label %for.end387.loopexit, label %for.body317, !dbg !3711

for.body317:                                      ; preds = %for.cond314
  %141 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3716
  call void @llvm.dbg.value(metadata %struct.edge_def* %141, metadata !3390, metadata !DIExpression()), !dbg !3410
  %cmp318 = icmp eq %struct.edge_def* %141, %best_edge.4, !dbg !3717
  br i1 %cmp318, label %for.inc386, label %land.lhs.true320, !dbg !3718

land.lhs.true320:                                 ; preds = %for.body317
  call void @llvm.dbg.value(metadata %struct.edge_def* %141, metadata !3390, metadata !DIExpression()), !dbg !3410
  %flags321 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %141, i64 0, i32 7, !dbg !3719
  %142 = load i32, i32* %flags321, align 8, !dbg !3719
  %and322 = and i32 %142, 64, !dbg !3720
  %tobool323 = icmp eq i32 %and322, 0, !dbg !3720
  br i1 %tobool323, label %for.inc386, label %land.lhs.true324, !dbg !3721

land.lhs.true324:                                 ; preds = %land.lhs.true320
  call void @llvm.dbg.value(metadata %struct.edge_def* %141, metadata !3390, metadata !DIExpression()), !dbg !3410
  %and326 = and i32 %142, 14, !dbg !3722
  %tobool327 = icmp eq i32 %and326, 0, !dbg !3722
  br i1 %tobool327, label %land.lhs.true328, label %for.inc386, !dbg !3723

land.lhs.true328:                                 ; preds = %land.lhs.true324
  call void @llvm.dbg.value(metadata %struct.edge_def* %141, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest329 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %141, i64 0, i32 1, !dbg !3724
  %143 = load %struct.basic_block_def*, %struct.basic_block_def** %dest329, align 8, !dbg !3724
  %il330 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %143, i64 0, i32 7, !dbg !3725
  %rtl331 = bitcast %union.basic_block_il_dependent* %il330 to %struct.rtl_bb_info**, !dbg !3726
  %144 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl331, align 8, !dbg !3726
  %visited332 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %144, i64 0, i32 4, !dbg !3727
  %145 = load i32, i32* %visited332, align 8, !dbg !3727
  %tobool333 = icmp eq i32 %145, 0, !dbg !3728
  br i1 %tobool333, label %land.lhs.true334, label %for.inc386, !dbg !3729

land.lhs.true334:                                 ; preds = %land.lhs.true328
  call void @llvm.dbg.value(metadata %struct.edge_def* %141, metadata !3390, metadata !DIExpression()), !dbg !3410
  %call336 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %143) #8, !dbg !3730
  %tobool338 = icmp eq i8 %call336, 0, !dbg !3730
  br i1 %tobool338, label %for.inc386, label %land.lhs.true339, !dbg !3731

land.lhs.true339:                                 ; preds = %land.lhs.true334
  %146 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3732
  call void @llvm.dbg.value(metadata %struct.edge_def* %146, metadata !3390, metadata !DIExpression()), !dbg !3410
  %flags340 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %146, i64 0, i32 7, !dbg !3733
  %147 = load i32, i32* %flags340, align 8, !dbg !3733
  %and341 = and i32 %147, 8192, !dbg !3734
  %tobool342 = icmp eq i32 %and341, 0, !dbg !3734
  br i1 %tobool342, label %land.lhs.true343, label %for.inc386, !dbg !3735

land.lhs.true343:                                 ; preds = %land.lhs.true339
  call void @llvm.dbg.value(metadata %struct.edge_def* %146, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest344 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %146, i64 0, i32 1, !dbg !3736
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %dest344, align 8, !dbg !3736
  %call345 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %148) #8, !dbg !3737
  %tobool347 = icmp eq i8 %call345, 0, !dbg !3737
  br i1 %tobool347, label %for.inc386, label %land.lhs.true348, !dbg !3738

land.lhs.true348:                                 ; preds = %land.lhs.true343
  %149 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3739
  call void @llvm.dbg.value(metadata %struct.edge_def* %149, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest349 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %149, i64 0, i32 1, !dbg !3740
  %150 = load %struct.basic_block_def*, %struct.basic_block_def** %dest349, align 8, !dbg !3740
  %call350 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %150) #8, !dbg !3741
  %flags351 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call350, i64 0, i32 7, !dbg !3742
  %151 = load i32, i32* %flags351, align 8, !dbg !3742
  %and352 = and i32 %151, 64, !dbg !3743
  %tobool353 = icmp eq i32 %and352, 0, !dbg !3743
  br i1 %tobool353, label %for.inc386, label %land.lhs.true354, !dbg !3744

land.lhs.true354:                                 ; preds = %land.lhs.true348
  %152 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3745
  call void @llvm.dbg.value(metadata %struct.edge_def* %152, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest355 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %152, i64 0, i32 1, !dbg !3746
  %153 = load %struct.basic_block_def*, %struct.basic_block_def** %dest355, align 8, !dbg !3746
  %call356 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %153) #8, !dbg !3747
  %flags357 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call356, i64 0, i32 7, !dbg !3748
  %154 = load i32, i32* %flags357, align 8, !dbg !3748
  %and358 = and i32 %154, 14, !dbg !3749
  %tobool359 = icmp eq i32 %and358, 0, !dbg !3749
  br i1 %tobool359, label %land.lhs.true360, label %for.inc386, !dbg !3750

land.lhs.true360:                                 ; preds = %land.lhs.true354
  %155 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3751
  call void @llvm.dbg.value(metadata %struct.edge_def* %155, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest361 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %155, i64 0, i32 1, !dbg !3752
  %156 = load %struct.basic_block_def*, %struct.basic_block_def** %dest361, align 8, !dbg !3752
  %call362 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %156) #8, !dbg !3753
  %157 = load %struct.basic_block_def*, %struct.basic_block_def** %dest245, align 8, !dbg !3754
  %cmp364 = icmp eq %struct.basic_block_def* %call362, %157, !dbg !3755
  br i1 %cmp364, label %land.lhs.true366, label %for.inc386, !dbg !3756

land.lhs.true366:                                 ; preds = %land.lhs.true360
  %158 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3757
  call void @llvm.dbg.value(metadata %struct.edge_def* %158, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest367 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %158, i64 0, i32 1, !dbg !3758
  %159 = load %struct.basic_block_def*, %struct.basic_block_def** %dest367, align 8, !dbg !3758
  %frequency368 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %159, i64 0, i32 11, !dbg !3759
  %160 = load i32, i32* %frequency368, align 8, !dbg !3759
  %mul369 = shl nsw i32 %160, 1, !dbg !3760
  %161 = load %struct.basic_block_def*, %struct.basic_block_def** %src370, align 8, !dbg !3761
  %frequency371 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %161, i64 0, i32 11, !dbg !3761
  %162 = load i32, i32* %frequency371, align 8, !dbg !3761
  %163 = load i32, i32* %probability372, align 4, !dbg !3761
  %mul373 = mul nsw i32 %162, %163, !dbg !3761
  %add374 = add nsw i32 %mul373, 5000, !dbg !3761
  %div375 = sdiv i32 %add374, 10000, !dbg !3761
  %cmp376 = icmp slt i32 %mul369, %div375, !dbg !3762
  br i1 %cmp376, label %for.inc386, label %if.then378, !dbg !3763

if.then378:                                       ; preds = %land.lhs.true366
  %.lcssa32 = phi %struct.edge_def* [ %158, %land.lhs.true366 ], !dbg !3757
  %.lcssa = phi %struct.basic_block_def* [ %159, %land.lhs.true366 ], !dbg !3758
  call void @llvm.dbg.value(metadata %struct.edge_def* %.lcssa32, metadata !3390, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.edge_def* %.lcssa32, metadata !3389, metadata !DIExpression()), !dbg !3410
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3764
  %tobool379 = icmp eq %struct._IO_FILE* %164, null, !dbg !3764
  br i1 %tobool379, label %for.end387, label %if.then380, !dbg !3767

if.then380:                                       ; preds = %if.then378
  %index382 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.lcssa, i64 0, i32 9, !dbg !3768
  %165 = load i32, i32* %index382, align 8, !dbg !3768
  %call383 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %165) #6, !dbg !3769
  br label %for.end387, !dbg !3769

for.inc386:                                       ; preds = %land.lhs.true366, %land.lhs.true354, %land.lhs.true348, %land.lhs.true343, %land.lhs.true339, %land.lhs.true334, %land.lhs.true328, %land.lhs.true324, %land.lhs.true320, %for.body317, %land.lhs.true360
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3392, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3715
  br label %for.cond314, !dbg !3715, !llvm.loop !3770

for.end387.loopexit:                              ; preds = %for.cond314
  br label %for.end387, !dbg !3772

for.end387:                                       ; preds = %for.end387.loopexit, %if.then378, %if.then380
  %best_edge.5 = phi %struct.edge_def* [ %.lcssa32, %if.then380 ], [ %.lcssa32, %if.then378 ], [ %best_edge.4, %for.end387.loopexit ], !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.5, metadata !3389, metadata !DIExpression()), !dbg !3410
  %dest388 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %best_edge.5, i64 0, i32 1, !dbg !3772
  %166 = bitcast %struct.basic_block_def** %dest388 to i64*, !dbg !3772
  %167 = load i64, i64* %166, align 8, !dbg !3772
  %aux389 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !3773
  %168 = bitcast i8** %aux389 to i64*, !dbg !3774
  store i64 %167, i64* %168, align 8, !dbg !3774
  %169 = load i32, i32* %n_traces, align 4, !dbg !3775
  %sub390 = add nsw i32 %169, -1, !dbg !3776
  %170 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3777
  %171 = load %struct.basic_block_def*, %struct.basic_block_def** %dest388, align 8, !dbg !3778
  %index392 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %171, i64 0, i32 9, !dbg !3779
  %172 = load i32, i32* %index392, align 8, !dbg !3779
  %idxprom393 = sext i32 %172 to i64, !dbg !3777
  %in_trace395 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %170, i64 %idxprom393, i32 2, !dbg !3780
  store i32 %sub390, i32* %in_trace395, align 8, !dbg !3781
  %173 = load %struct.basic_block_def*, %struct.basic_block_def** %dest388, align 8, !dbg !3782
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %173, metadata !3386, metadata !DIExpression()), !dbg !3410
  br label %cleanup, !dbg !3783

cleanup:                                          ; preds = %if.then268, %land.lhs.true295, %if.else291, %if.then251, %for.end242, %for.end387, %if.then302, %if.end281
  %bb.6 = phi %struct.basic_block_def* [ %bb.0, %if.then251 ], [ %call289, %if.end281 ], [ %bb.0, %if.then268 ], [ %call304, %if.then302 ], [ %bb.0, %land.lhs.true295 ], [ %bb.0, %if.else291 ], [ %173, %for.end387 ], [ %bb.0, %for.end242 ], !dbg !3784
  %best_edge.7 = phi %struct.edge_def* [ %best_edge.4, %if.then251 ], [ %best_edge.4, %if.end281 ], [ %best_edge.4, %if.then268 ], [ %best_edge.4, %if.then302 ], [ %best_edge.4, %land.lhs.true295 ], [ %best_edge.4, %if.else291 ], [ %best_edge.5, %for.end387 ], [ null, %for.end242 ], !dbg !3480
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then251 ], [ false, %if.end281 ], [ false, %if.then268 ], [ false, %if.then302 ], [ false, %land.lhs.true295 ], [ false, %if.else291 ], [ true, %for.end387 ], [ true, %for.end242 ]
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.7, metadata !3389, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.6, metadata !3386, metadata !DIExpression()), !dbg !3410
  %tobool403 = icmp ne %struct.edge_def* %best_edge.7, null, !dbg !3785
  %or.cond10 = and i1 %cleanup.dest.slot.0, %tobool403
  br i1 %or.cond10, label %cleanup.do.body_crit_edge, label %do.end, !llvm.loop !3786

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  %.pre = load i32, i32* %n_traces, align 4, !dbg !3479
  br label %do.body

do.end:                                           ; preds = %cleanup
  %bb.6.lcssa = phi %struct.basic_block_def* [ %bb.6, %cleanup ], !dbg !3784
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.6.lcssa, metadata !3386, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.6.lcssa, metadata !3386, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.6.lcssa, metadata !3386, metadata !DIExpression()), !dbg !3410
  %last = getelementptr inbounds %struct.trace, %struct.trace* %traces, i64 %idx.ext, i32 1, !dbg !3788
  store %struct.basic_block_def* %bb.6.lcssa, %struct.basic_block_def** %last, align 8, !dbg !3789
  %174 = load i32, i32* %n_traces, align 4, !dbg !3790
  %sub404 = add nsw i32 %174, -1, !dbg !3791
  %175 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3792
  %first405 = getelementptr inbounds %struct.trace, %struct.trace* %add.ptr, i64 0, i32 0, !dbg !3793
  %176 = load %struct.basic_block_def*, %struct.basic_block_def** %first405, align 8, !dbg !3793
  %index406 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %176, i64 0, i32 9, !dbg !3794
  %177 = load i32, i32* %index406, align 8, !dbg !3794
  %idxprom407 = sext i32 %177 to i64, !dbg !3792
  %start_of_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %175, i64 %idxprom407, i32 0, !dbg !3795
  store i32 %sub404, i32* %start_of_trace, align 8, !dbg !3796
  %178 = load i32, i32* %n_traces, align 4, !dbg !3797
  %sub409 = add nsw i32 %178, -1, !dbg !3798
  %179 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3799
  %180 = load %struct.basic_block_def*, %struct.basic_block_def** %last, align 8, !dbg !3800
  %index411 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %180, i64 0, i32 9, !dbg !3801
  %181 = load i32, i32* %index411, align 8, !dbg !3801
  %idxprom412 = sext i32 %181 to i64, !dbg !3799
  %end_of_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %179, i64 %idxprom412, i32 1, !dbg !3802
  store i32 %sub409, i32* %end_of_trace, align 4, !dbg !3803
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !3804
  %succs415 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.6.lcssa, i64 0, i32 1, !dbg !3804
  %call416 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs415) #8, !dbg !3804
  %182 = extractvalue { i32, %struct.VEC_edge_gc** } %call416, 0, !dbg !3804
  store i32 %182, i32* %14, align 8, !dbg !3804
  %183 = extractvalue { i32, %struct.VEC_edge_gc** } %call416, 1, !dbg !3804
  store %struct.VEC_edge_gc** %183, %struct.VEC_edge_gc*** %15, align 8, !dbg !3804
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !3804
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !3804
  br label %for.cond417, !dbg !3804

for.cond417:                                      ; preds = %for.inc478, %do.end
  %184 = load i32, i32* %5, align 8, !dbg !3805
  %185 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %6, align 8, !dbg !3805
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3390, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  %call418 = call fastcc zeroext i8 @ei_cond(i32 %184, %struct.VEC_edge_gc** %185, %struct.edge_def** nonnull %e) #8, !dbg !3805
  %tobool419 = icmp eq i8 %call418, 0, !dbg !3804
  br i1 %tobool419, label %cleanup480.loopexit, label %for.body420, !dbg !3804

for.body420:                                      ; preds = %for.cond417
  %186 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3807
  call void @llvm.dbg.value(metadata %struct.edge_def* %186, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest421 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %186, i64 0, i32 1, !dbg !3810
  %187 = load %struct.basic_block_def*, %struct.basic_block_def** %dest421, align 8, !dbg !3810
  %188 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3811
  %cfg423 = getelementptr inbounds %struct.function, %struct.function* %188, i64 0, i32 1, !dbg !3811
  %189 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg423, align 8, !dbg !3811
  %x_exit_block_ptr424 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %189, i64 0, i32 1, !dbg !3811
  %190 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr424, align 8, !dbg !3811
  %cmp425 = icmp eq %struct.basic_block_def* %187, %190, !dbg !3812
  br i1 %cmp425, label %for.inc478, label %lor.lhs.false427, !dbg !3813

lor.lhs.false427:                                 ; preds = %for.body420
  call void @llvm.dbg.value(metadata %struct.edge_def* %186, metadata !3390, metadata !DIExpression()), !dbg !3410
  %il429 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %187, i64 0, i32 7, !dbg !3814
  %rtl430 = bitcast %union.basic_block_il_dependent* %il429 to %struct.rtl_bb_info**, !dbg !3815
  %191 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl430, align 8, !dbg !3815
  %visited431 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %191, i64 0, i32 4, !dbg !3816
  %192 = load i32, i32* %visited431, align 8, !dbg !3816
  %tobool432 = icmp eq i32 %192, 0, !dbg !3817
  br i1 %tobool432, label %if.end434, label %for.inc478, !dbg !3818

if.end434:                                        ; preds = %lor.lhs.false427
  %193 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3819
  call void @llvm.dbg.value(metadata %struct.edge_def* %186, metadata !3390, metadata !DIExpression()), !dbg !3410
  %index436 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %187, i64 0, i32 9, !dbg !3821
  %194 = load i32, i32* %index436, align 8, !dbg !3821
  %idxprom437 = sext i32 %194 to i64, !dbg !3819
  %heap439 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %193, i64 %idxprom437, i32 3, !dbg !3822
  %195 = load %struct.fibheap*, %struct.fibheap** %heap439, align 8, !dbg !3822
  %tobool440 = icmp eq %struct.fibheap* %195, null, !dbg !3819
  br i1 %tobool440, label %for.inc478, label %if.then441, !dbg !3823

if.then441:                                       ; preds = %if.end434
  call void @llvm.dbg.value(metadata %struct.edge_def* %186, metadata !3390, metadata !DIExpression()), !dbg !3410
  %call443 = call fastcc i64 @bb_to_key(%struct.basic_block_def* %187) #8, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %call443, metadata !3391, metadata !DIExpression()), !dbg !3410
  %196 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3826
  %197 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3828
  call void @llvm.dbg.value(metadata %struct.edge_def* %197, metadata !3390, metadata !DIExpression()), !dbg !3410
  %dest444 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %197, i64 0, i32 1, !dbg !3829
  %198 = load %struct.basic_block_def*, %struct.basic_block_def** %dest444, align 8, !dbg !3829
  %index445 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %198, i64 0, i32 9, !dbg !3830
  %199 = load i32, i32* %index445, align 8, !dbg !3830
  %idxprom446 = sext i32 %199 to i64, !dbg !3826
  %node448 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %196, i64 %idxprom446, i32 4, !dbg !3831
  %200 = load %struct.fibnode*, %struct.fibnode** %node448, align 8, !dbg !3831
  %key449 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %200, i64 0, i32 4, !dbg !3832
  %201 = load i64, i64* %key449, align 8, !dbg !3832
  %cmp450 = icmp eq i64 %call443, %201, !dbg !3833
  br i1 %cmp450, label %for.inc478, label %if.then452, !dbg !3834

if.then452:                                       ; preds = %if.then441
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3835
  %tobool453 = icmp eq %struct._IO_FILE* %202, null, !dbg !3835
  br i1 %tobool453, label %if.end464, label %if.then454, !dbg !3838

if.then454:                                       ; preds = %if.then452
  call void @llvm.dbg.value(metadata %struct.edge_def* %197, metadata !3390, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata %struct.edge_def* %197, metadata !3390, metadata !DIExpression()), !dbg !3410
  %call463 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %202, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %199, i64 %201, i64 %call443) #6, !dbg !3839
  %.pre24 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3841
  %.pre25 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3842
  %dest465.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.pre25, i64 0, i32 1, !dbg !3843
  %.pre26 = load %struct.basic_block_def*, %struct.basic_block_def** %dest465.phi.trans.insert, align 8, !dbg !3844
  %index466.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pre26, i64 0, i32 9, !dbg !3843
  %.pre27 = load i32, i32* %index466.phi.trans.insert, align 8, !dbg !3845
  %idxprom467.phi.trans.insert = sext i32 %.pre27 to i64, !dbg !3843
  %node474.phi.trans.insert = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %.pre24, i64 %idxprom467.phi.trans.insert, i32 4, !dbg !3843
  %.pre28 = load %struct.fibnode*, %struct.fibnode** %node474.phi.trans.insert, align 8, !dbg !3846
  br label %if.end464, !dbg !3847

if.end464:                                        ; preds = %if.then452, %if.then454
  %idxprom467.pre-phi = phi i64 [ %idxprom446, %if.then452 ], [ %idxprom467.phi.trans.insert, %if.then454 ], !dbg !3841
  %203 = phi %struct.fibnode* [ %200, %if.then452 ], [ %.pre28, %if.then454 ], !dbg !3846
  %204 = phi %struct.bbro_basic_block_data_def* [ %196, %if.then452 ], [ %.pre24, %if.then454 ], !dbg !3848
  %heap469 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %204, i64 %idxprom467.pre-phi, i32 3, !dbg !3849
  %205 = load %struct.fibheap*, %struct.fibheap** %heap469, align 8, !dbg !3849
  %call475 = call i64 @fibheap_replace_key(%struct.fibheap* %205, %struct.fibnode* %203, i64 %call443) #6, !dbg !3850
  br label %for.inc478, !dbg !3851

for.inc478:                                       ; preds = %if.then441, %if.end434, %lor.lhs.false427, %if.end464, %for.body420
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3392, metadata !DIExpression(DW_OP_deref)), !dbg !3410
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3805
  br label %for.cond417, !dbg !3805, !llvm.loop !3852

cleanup480.loopexit:                              ; preds = %for.cond417
  br label %cleanup480, !dbg !3854

cleanup480:                                       ; preds = %cleanup480.loopexit, %if.then12, %if.then26
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3854
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3854
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %206 = load %struct.fibheap*, %struct.fibheap** %heap, align 8, !dbg !3855
  call void @fibheap_delete(%struct.fibheap* %206) #6, !dbg !3856
  store %struct.fibheap* %call, %struct.fibheap** %heap, align 8, !dbg !3857
  ret void, !dbg !3858
}

declare dso_local void @fibheap_delete(%struct.fibheap*) local_unnamed_addr #1

declare dso_local i32 @fflush(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3859 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3864
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3864
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3864

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3864
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3864
  br label %cond.end, !dbg !3864

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3864
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3864
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3865
  %conv3 = zext i1 %cmp to i8, !dbg !3866
  ret i8 %conv3, !dbg !3867
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3868 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3873
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3873
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3873

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3873
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3873
  br label %cond.end, !dbg !3873

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3873
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !3873
  ret %struct.edge_def* %call2, !dbg !3874
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3875 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3881, metadata !DIExpression()), !dbg !3882
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3883
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3883

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3883
  %0 = load i32, i32* %num, align 8, !dbg !3883
  br label %cond.end, !dbg !3883

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3883
  ret i32 %cond, !dbg !3883
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3884 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3889
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3889

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3889
  br label %cond.end, !dbg !3889

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3890
  ret %struct.VEC_edge_gc* %0, !dbg !3891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3892 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3897, metadata !DIExpression()), !dbg !3898
  br label %land.end, !dbg !3899

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3899
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3899
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3899
  ret %struct.edge_def* %0, !dbg !3899
}

declare dso_local zeroext i8 @probably_never_executed_bb_p(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local i32 @fibheap_empty(%struct.fibheap*) local_unnamed_addr #1

declare dso_local i8* @fibheap_extract_min(%struct.fibheap*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @push_to_next_round_p(%struct.basic_block_def* %bb, i32 %round, i32 %number_of_rounds, i32 %exec_th, i64 %count_th) unnamed_addr #4 !dbg !3900 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3907, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 %round, metadata !3908, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 4, metadata !3909, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 %exec_th, metadata !3910, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %count_th, metadata !3911, metadata !DIExpression()), !dbg !3914
  %cmp = icmp slt i32 %round, 3, !dbg !3915
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !3912, metadata !DIExpression()), !dbg !3914
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3916
  %0 = load i32, i32* %frequency, align 8, !dbg !3916
  %cmp2 = icmp slt i32 %0, %exec_th, !dbg !3917
  br i1 %cmp2, label %lor.end, label %lor.lhs.false, !dbg !3918

lor.lhs.false:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 8, !dbg !3919
  %1 = load i64, i64* %count, align 8, !dbg !3919
  %cmp4 = icmp slt i64 %1, %count_th, !dbg !3920
  br i1 %cmp4, label %lor.end, label %lor.rhs, !dbg !3921

lor.rhs:                                          ; preds = %lor.lhs.false
  %call = tail call zeroext i8 @probably_never_executed_bb_p(%struct.basic_block_def* %bb) #6, !dbg !3922
  %tobool = icmp ne i8 %call, 0, !dbg !3921
  br label %lor.end, !dbg !3921

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %2 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool, %lor.rhs ]
  %or.cond = and i1 %cmp, %2, !dbg !3923
  %retval.0 = zext i1 %or.cond to i8, !dbg !3923
  ret i8 %retval.0, !dbg !3925
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_bb_visited(%struct.basic_block_def* %bb, i32 %trace) unnamed_addr #4 !dbg !3926 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3930, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 %trace, metadata !3931, metadata !DIExpression()), !dbg !3932
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !3933
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3934
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3934
  %visited = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 4, !dbg !3935
  store i32 %trace, i32* %visited, align 8, !dbg !3936
  %1 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3937
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3939
  %2 = load i32, i32* %index, align 8, !dbg !3939
  %idxprom = sext i32 %2 to i64, !dbg !3937
  %heap = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %1, i64 %idxprom, i32 3, !dbg !3940
  %3 = load %struct.fibheap*, %struct.fibheap** %heap, align 8, !dbg !3940
  %tobool = icmp eq %struct.fibheap* %3, null, !dbg !3937
  br i1 %tobool, label %if.end, label %if.then, !dbg !3941

if.then:                                          ; preds = %entry
  %node = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %1, i64 %idxprom, i32 4, !dbg !3942
  %4 = load %struct.fibnode*, %struct.fibnode** %node, align 8, !dbg !3942
  %call = tail call i8* @fibheap_delete_node(%struct.fibheap* nonnull %3, %struct.fibnode* %4) #6, !dbg !3944
  %5 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3945
  %6 = load i32, i32* %index, align 8, !dbg !3946
  %idxprom9 = sext i32 %6 to i64, !dbg !3945
  %heap11 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %5, i64 %idxprom9, i32 3, !dbg !3947
  store %struct.fibheap* null, %struct.fibheap** %heap11, align 8, !dbg !3948
  %7 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !3949
  %8 = load i32, i32* %index, align 8, !dbg !3950
  %idxprom13 = sext i32 %8 to i64, !dbg !3949
  %node15 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %7, i64 %idxprom13, i32 4, !dbg !3951
  store %struct.fibnode* null, %struct.fibnode** %node15, align 8, !dbg !3952
  br label %if.end, !dbg !3953

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3954
}

declare dso_local zeroext i8 @block_ends_with_call_p(%struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @better_edge_p(%struct.basic_block_def* %bb, %struct.edge_def* %e, i32 %prob, i32 %freq, i32 %best_prob, i32 %best_freq, %struct.edge_def* %cur_best_edge) unnamed_addr #4 !dbg !3955 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3962, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3963, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 %prob, metadata !3964, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 %freq, metadata !3965, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 %best_prob, metadata !3966, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 %best_freq, metadata !3967, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata %struct.edge_def* %cur_best_edge, metadata !3968, metadata !DIExpression()), !dbg !3972
  %div = sdiv i32 %best_prob, 10, !dbg !3973
  call void @llvm.dbg.value(metadata i32 %div, metadata !3970, metadata !DIExpression()), !dbg !3972
  %div1 = sdiv i32 %best_freq, 10, !dbg !3974
  call void @llvm.dbg.value(metadata i32 %div1, metadata !3971, metadata !DIExpression()), !dbg !3972
  %add = add nsw i32 %div, %best_prob, !dbg !3975
  %cmp = icmp slt i32 %add, %prob, !dbg !3977
  br i1 %cmp, label %if.end19, label %if.else, !dbg !3978

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %best_prob, %div, !dbg !3979
  %cmp2 = icmp sgt i32 %sub, %prob, !dbg !3981
  br i1 %cmp2, label %if.end19, label %if.else4, !dbg !3982

if.else4:                                         ; preds = %if.else
  %sub5 = sub nsw i32 %best_freq, %div1, !dbg !3983
  %cmp6 = icmp sgt i32 %sub5, %freq, !dbg !3985
  br i1 %cmp6, label %if.end19, label %if.else8, !dbg !3986

if.else8:                                         ; preds = %if.else4
  %add9 = add nsw i32 %div1, %best_freq, !dbg !3987
  %cmp10 = icmp slt i32 %add9, %freq, !dbg !3989
  br i1 %cmp10, label %if.end19, label %if.else12, !dbg !3990

if.else12:                                        ; preds = %if.else8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3991
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3991
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 5, !dbg !3993
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb, align 8, !dbg !3993
  %cmp13 = icmp eq %struct.basic_block_def* %1, %bb, !dbg !3994
  %. = zext i1 %cmp13 to i8
  call void @llvm.dbg.value(metadata i8 %., metadata !3969, metadata !DIExpression()), !dbg !3972
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.else12, %if.else8, %if.else4, %entry
  %is_better_edge.4 = phi i8 [ 1, %entry ], [ 0, %if.else ], [ 1, %if.else4 ], [ %., %if.else12 ], [ 0, %if.else8 ], !dbg !3995
  call void @llvm.dbg.value(metadata i8 %is_better_edge.4, metadata !3969, metadata !DIExpression()), !dbg !3972
  %tobool = icmp eq i8 %is_better_edge.4, 0, !dbg !3996
  %2 = load i32, i32* @flag_reorder_blocks_and_partition, align 4, !dbg !3998
  %tobool20 = icmp ne i32 %2, 0, !dbg !3998
  %or.cond = and i1 %tobool, %tobool20, !dbg !3999
  %tobool22 = icmp ne %struct.edge_def* %cur_best_edge, null, !dbg !4000
  %or.cond1 = and i1 %or.cond, %tobool22, !dbg !3999
  br i1 %or.cond1, label %land.lhs.true23, label %if.end30, !dbg !3999

land.lhs.true23:                                  ; preds = %if.end19
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cur_best_edge, i64 0, i32 7, !dbg !4001
  %3 = load i32, i32* %flags, align 8, !dbg !4001
  %and = and i32 %3, 8192, !dbg !4002
  %tobool24 = icmp eq i32 %and, 0, !dbg !4002
  br i1 %tobool24, label %if.end30, label %land.lhs.true25, !dbg !4003

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %flags26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !4004
  %4 = load i32, i32* %flags26, align 8, !dbg !4004
  %and27 = lshr i32 %4, 13, !dbg !4005
  %5 = trunc i32 %and27 to i8, !dbg !4005
  %6 = and i8 %5, 1, !dbg !4005
  %7 = xor i8 %6, 1, !dbg !4005
  ret i8 %7, !dbg !4005

if.end30:                                         ; preds = %land.lhs.true23, %if.end19
  call void @llvm.dbg.value(metadata i8 %is_better_edge.4, metadata !3969, metadata !DIExpression()), !dbg !3972
  ret i8 %is_better_edge.4, !dbg !4006
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @copy_bb_p(%struct.basic_block_def* %bb, i32 %code_may_grow) unnamed_addr #4 !dbg !4007 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4011, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 %code_may_grow, metadata !4012, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 0, metadata !4013, metadata !DIExpression()), !dbg !4016
  %0 = load i32, i32* @uncond_jump_length, align 4, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %0, metadata !4014, metadata !DIExpression()), !dbg !4016
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !4018
  %1 = load i32, i32* %frequency, align 8, !dbg !4018
  %tobool = icmp eq i32 %1, 0, !dbg !4020
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4021

if.end:                                           ; preds = %entry
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4022
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4022
  %tobool1 = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !4022
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4022

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !4022
  br label %cond.end, !dbg !4022

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !4022
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4022
  %cmp = icmp ult i32 %call, 2, !dbg !4024
  br i1 %cmp, label %cleanup, label %if.end4, !dbg !4025

if.end4:                                          ; preds = %cond.end
  %call5 = tail call zeroext i8 @can_duplicate_block_p(%struct.basic_block_def* %bb) #6, !dbg !4026
  %tobool6 = icmp eq i8 %call5, 0, !dbg !4026
  br i1 %tobool6, label %cleanup, label %if.end8, !dbg !4028

if.end8:                                          ; preds = %if.end4
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4029
  %3 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4029
  %tobool9 = icmp eq %struct.VEC_edge_gc* %3, null, !dbg !4029
  br i1 %tobool9, label %cond.end14, label %cond.true10, !dbg !4029

cond.true10:                                      ; preds = %if.end8
  %base12 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %3, i64 0, i32 0, !dbg !4029
  br label %cond.end14, !dbg !4029

cond.end14:                                       ; preds = %if.end8, %cond.true10
  %cond15 = phi %struct.VEC_edge_base* [ %base12, %cond.true10 ], [ null, %if.end8 ], !dbg !4029
  %call16 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond15) #8, !dbg !4029
  %cmp17 = icmp ugt i32 %call16, 8, !dbg !4031
  br i1 %cmp17, label %cleanup, label %if.end19, !dbg !4032

if.end19:                                         ; preds = %cond.end14
  %tobool20 = icmp eq i32 %code_may_grow, 0, !dbg !4033
  br i1 %tobool20, label %if.end24, label %land.lhs.true, !dbg !4035

land.lhs.true:                                    ; preds = %if.end19
  %call21 = tail call zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def* %bb) #6, !dbg !4036
  %tobool22 = icmp eq i8 %call21, 0, !dbg !4036
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !4037

if.then23:                                        ; preds = %land.lhs.true
  %4 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4038
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %4, i64 55, i32 1, !dbg !4038
  %5 = load i32, i32* %value, align 8, !dbg !4038
  %mul = mul nsw i32 %0, %5, !dbg !4039
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4014, metadata !DIExpression()), !dbg !4016
  br label %if.end24, !dbg !4040

if.end24:                                         ; preds = %land.lhs.true, %if.end19, %if.then23
  %max_size.0 = phi i32 [ %mul, %if.then23 ], [ %0, %land.lhs.true ], [ %0, %if.end19 ], !dbg !4016
  call void @llvm.dbg.value(metadata i32 %max_size.0, metadata !4014, metadata !DIExpression()), !dbg !4016
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !4041
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4041
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4041
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 0, !dbg !4041
  br label %for.cond, !dbg !4041

for.cond:                                         ; preds = %for.inc, %if.end24
  %size.0 = phi i32 [ 0, %if.end24 ], [ %size.1, %for.inc ], !dbg !4016
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.end24 ], [ %rt_rtx53, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !4043
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4015, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 %size.0, metadata !4013, metadata !DIExpression()), !dbg !4016
  %tobool25 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !4044
  br i1 %tobool25, label %for.end, label %land.rhs, !dbg !4044

land.rhs:                                         ; preds = %for.cond
  %7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4044
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 1, !dbg !4044
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4044
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4044
  %rt_rtx = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !4044
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4044
  %cmp29 = icmp eq %struct.rtx_def* %insn.0, %10, !dbg !4044
  br i1 %cmp29, label %for.end, label %for.body, !dbg !4041

for.body:                                         ; preds = %land.rhs
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !4046
  %bf.load = load i32, i32* %11, align 8, !dbg !4046
  %bf.clear = and i32 %bf.load, 65535, !dbg !4046
  %cmp31 = icmp eq i32 %bf.clear, 8, !dbg !4046
  br i1 %cmp31, label %if.then47, label %lor.lhs.false, !dbg !4046

lor.lhs.false:                                    ; preds = %for.body
  %cmp35 = icmp eq i32 %bf.clear, 7, !dbg !4046
  br i1 %cmp35, label %if.then47, label %lor.lhs.false37, !dbg !4046

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %cmp40 = icmp eq i32 %bf.clear, 9, !dbg !4046
  br i1 %cmp40, label %if.then47, label %lor.lhs.false42, !dbg !4046

lor.lhs.false42:                                  ; preds = %lor.lhs.false37
  %cmp45 = icmp eq i32 %bf.clear, 10, !dbg !4046
  br i1 %cmp45, label %if.then47, label %for.inc, !dbg !4049

if.then47:                                        ; preds = %lor.lhs.false42, %lor.lhs.false37, %lor.lhs.false, %for.body
  %call48 = tail call i32 @get_attr_min_length(%struct.rtx_def* nonnull %insn.0) #6, !dbg !4050
  %add = add nsw i32 %size.0, %call48, !dbg !4051
  call void @llvm.dbg.value(metadata i32 %add, metadata !4013, metadata !DIExpression()), !dbg !4016
  br label %for.inc, !dbg !4052

for.inc:                                          ; preds = %lor.lhs.false42, %if.then47
  %size.1 = phi i32 [ %add, %if.then47 ], [ %size.0, %lor.lhs.false42 ], !dbg !4016
  call void @llvm.dbg.value(metadata i32 %size.1, metadata !4013, metadata !DIExpression()), !dbg !4016
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4044
  %rt_rtx53 = bitcast %union.rtunion_def* %12 to %struct.rtx_def**, !dbg !4044
  br label %for.cond, !dbg !4044, !llvm.loop !4053

for.end:                                          ; preds = %land.rhs, %for.cond
  %size.0.lcssa = phi i32 [ %size.0, %land.rhs ], [ %size.0, %for.cond ], !dbg !4016
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !4013, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !4013, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !4013, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !4013, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !4013, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i32 %size.0.lcssa, metadata !4013, metadata !DIExpression()), !dbg !4016
  %cmp54 = icmp sgt i32 %size.0.lcssa, %max_size.0, !dbg !4055
  br i1 %cmp54, label %if.end57, label %cleanup, !dbg !4057

if.end57:                                         ; preds = %for.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4058
  %tobool58 = icmp eq %struct._IO_FILE* %13, null, !dbg !4058
  br i1 %tobool58, label %cleanup, label %if.then59, !dbg !4060

if.then59:                                        ; preds = %if.end57
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4061
  %14 = load i32, i32* %index, align 8, !dbg !4061
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i32 %14, i32 %size.0.lcssa) #6, !dbg !4063
  br label %cleanup, !dbg !4064

cleanup:                                          ; preds = %if.end57, %for.end, %if.end4, %entry, %if.then59, %cond.end14, %cond.end
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %cond.end ], [ 0, %if.end4 ], [ 0, %cond.end14 ], [ 1, %for.end ], [ 0, %if.then59 ], [ 0, %if.end57 ], !dbg !4016
  ret i8 %retval.0, !dbg !4065
}

declare dso_local i64 @fibheap_replace_key(%struct.fibheap*, %struct.fibnode*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @rotate_loop(%struct.edge_def* %back_edge, %struct.trace* %trace, i32 %trace_n) unnamed_addr #4 !dbg !4066 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %back_edge, metadata !4070, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.trace* %trace, metadata !4071, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 %trace_n, metadata !4072, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !4074, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 -1, metadata !4076, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 -1, metadata !4077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i8 0, metadata !4078, metadata !DIExpression()), !dbg !4103
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %back_edge, i64 0, i32 1, !dbg !4104
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4104
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !4073, metadata !DIExpression()), !dbg !4103
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !4105
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4105
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4106
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4106
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4106
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4107
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4107
  br label %do.body, !dbg !4108

do.body:                                          ; preds = %for.end, %entry
  %best_freq.0 = phi i32 [ -1, %entry ], [ %best_freq.1.lcssa, %for.end ], !dbg !4109
  %best_edge.0 = phi %struct.edge_def* [ null, %entry ], [ %best_edge.1.lcssa, %for.end ], !dbg !4110
  %best_bb.0 = phi %struct.basic_block_def* [ null, %entry ], [ %best_bb.1.lcssa, %for.end ], !dbg !4111
  %bb.0 = phi %struct.basic_block_def* [ %0, %entry ], [ %41, %for.end ], !dbg !4103
  %best_count.0 = phi i64 [ -1, %entry ], [ %best_count.1.lcssa, %for.end ], !dbg !4112
  %is_preferred.0 = phi i8 [ 0, %entry ], [ %is_preferred.1.lcssa, %for.end ], !dbg !4113
  call void @llvm.dbg.value(metadata i8 %is_preferred.0, metadata !4078, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %best_count.0, metadata !4077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %best_bb.0, metadata !4074, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.0, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 %best_freq.0, metadata !4076, metadata !DIExpression()), !dbg !4103
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4114
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4115
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4116
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !4116
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4116
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4116
  store i32 %8, i32* %4, align 8, !dbg !4116
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4116
  store %struct.VEC_edge_gc** %9, %struct.VEC_edge_gc*** %5, align 8, !dbg !4116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !4116
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4116
  br label %for.cond, !dbg !4116

for.cond:                                         ; preds = %for.inc, %do.body
  %best_freq.1 = phi i32 [ %best_freq.0, %do.body ], [ %best_freq.7, %for.inc ], !dbg !4109
  %best_edge.1 = phi %struct.edge_def* [ %best_edge.0, %do.body ], [ %best_edge.7, %for.inc ], !dbg !4110
  %best_bb.1 = phi %struct.basic_block_def* [ %best_bb.0, %do.body ], [ %best_bb.7, %for.inc ], !dbg !4111
  %best_count.1 = phi i64 [ %best_count.0, %do.body ], [ %best_count.7, %for.inc ], !dbg !4112
  %is_preferred.1 = phi i8 [ %is_preferred.0, %do.body ], [ %is_preferred.4, %for.inc ], !dbg !4113
  call void @llvm.dbg.value(metadata i8 %is_preferred.1, metadata !4078, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %best_count.1, metadata !4077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %best_bb.1, metadata !4074, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.1, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 %best_freq.1, metadata !4076, metadata !DIExpression()), !dbg !4103
  %10 = load i32, i32* %6, align 8, !dbg !4117
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %7, align 8, !dbg !4117
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4079, metadata !DIExpression(DW_OP_deref)), !dbg !4105
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %10, %struct.VEC_edge_gc** %11, %struct.edge_def** nonnull %e) #8, !dbg !4117
  %tobool = icmp eq i8 %call1, 0, !dbg !4116
  br i1 %tobool, label %for.end, label %for.body, !dbg !4116

for.body:                                         ; preds = %for.cond
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4118
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %dest2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 1, !dbg !4119
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %dest2, align 8, !dbg !4119
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4120
  %cfg = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !4120
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4120
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 1, !dbg !4120
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4120
  %cmp = icmp eq %struct.basic_block_def* %13, %16, !dbg !4121
  br i1 %cmp, label %for.inc, label %land.lhs.true, !dbg !4122

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 7, !dbg !4123
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4124
  %17 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4124
  %visited = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %17, i64 0, i32 4, !dbg !4125
  %18 = load i32, i32* %visited, align 8, !dbg !4125
  %cmp4 = icmp eq i32 %18, %trace_n, !dbg !4126
  br i1 %cmp4, label %for.inc, label %land.lhs.true5, !dbg !4127

land.lhs.true5:                                   ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 7, !dbg !4128
  %19 = load i32, i32* %flags, align 8, !dbg !4128
  %and = and i32 %19, 64, !dbg !4129
  %tobool6 = icmp eq i32 %and, 0, !dbg !4129
  br i1 %tobool6, label %for.inc, label %land.lhs.true7, !dbg !4130

land.lhs.true7:                                   ; preds = %land.lhs.true5
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %and9 = and i32 %19, 14, !dbg !4131
  %tobool10 = icmp eq i32 %and9, 0, !dbg !4131
  br i1 %tobool10, label %if.then, label %for.inc, !dbg !4132

if.then:                                          ; preds = %land.lhs.true7
  %tobool11 = icmp eq i8 %is_preferred.1, 0, !dbg !4133
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %tobool17 = icmp ne i32 %18, 0, !dbg !4134
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !4135

if.then12:                                        ; preds = %if.then
  br i1 %tobool17, label %lor.lhs.false, label %if.then20, !dbg !4136

lor.lhs.false:                                    ; preds = %if.then12
  %20 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !4137
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !4138
  %21 = load i32, i32* %index, align 8, !dbg !4138
  %idxprom = sext i32 %21 to i64, !dbg !4137
  %start_of_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %20, i64 %idxprom, i32 0, !dbg !4139
  %22 = load i32, i32* %start_of_trace, align 8, !dbg !4139
  %cmp19 = icmp sgt i32 %22, -1, !dbg !4140
  br i1 %cmp19, label %if.then20, label %for.inc, !dbg !4141

if.then20:                                        ; preds = %lor.lhs.false, %if.then12
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !4142
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4142
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 11, !dbg !4142
  %24 = load i32, i32* %frequency, align 8, !dbg !4142
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 8, !dbg !4142
  %25 = load i32, i32* %probability, align 4, !dbg !4142
  %mul = mul nsw i32 %24, %25, !dbg !4142
  %add = add nsw i32 %mul, 5000, !dbg !4142
  %div = sdiv i32 %add, 10000, !dbg !4142
  call void @llvm.dbg.value(metadata i32 %div, metadata !4082, metadata !DIExpression()), !dbg !4143
  %cmp21 = icmp sgt i32 %div, %best_freq.1, !dbg !4144
  br i1 %cmp21, label %if.then20.if.then24_crit_edge, label %lor.lhs.false22, !dbg !4146

if.then20.if.then24_crit_edge:                    ; preds = %if.then20
  %count25.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 9, !dbg !4147
  %.pre = load i64, i64* %count25.phi.trans.insert, align 8, !dbg !4149
  br label %if.then24, !dbg !4146

lor.lhs.false22:                                  ; preds = %if.then20
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 9, !dbg !4150
  %26 = load i64, i64* %count, align 8, !dbg !4150
  %cmp23 = icmp sgt i64 %26, %best_count.1, !dbg !4151
  br i1 %cmp23, label %if.then24, label %for.inc, !dbg !4152

if.then24:                                        ; preds = %if.then20.if.then24_crit_edge, %lor.lhs.false22
  %27 = phi i64 [ %.pre, %if.then20.if.then24_crit_edge ], [ %26, %lor.lhs.false22 ], !dbg !4149
  call void @llvm.dbg.value(metadata i32 %div, metadata !4076, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i64 %27, metadata !4077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4074, metadata !DIExpression()), !dbg !4103
  br label %for.inc, !dbg !4153

if.else:                                          ; preds = %if.then
  br i1 %tobool17, label %lor.lhs.false32, label %if.then39, !dbg !4154

lor.lhs.false32:                                  ; preds = %if.else
  %28 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !4155
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %index34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !4156
  %29 = load i32, i32* %index34, align 8, !dbg !4156
  %idxprom35 = sext i32 %29 to i64, !dbg !4155
  %start_of_trace37 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %28, i64 %idxprom35, i32 0, !dbg !4157
  %30 = load i32, i32* %start_of_trace37, align 8, !dbg !4157
  %cmp38 = icmp sgt i32 %30, -1, !dbg !4158
  br i1 %cmp38, label %if.then39, label %if.else47, !dbg !4159

if.then39:                                        ; preds = %lor.lhs.false32, %if.else
  call void @llvm.dbg.value(metadata i8 1, metadata !4078, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %src40 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !4160
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %src40, align 8, !dbg !4160
  %frequency41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i64 0, i32 11, !dbg !4160
  %32 = load i32, i32* %frequency41, align 8, !dbg !4160
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %probability42 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 8, !dbg !4160
  %33 = load i32, i32* %probability42, align 4, !dbg !4160
  %mul43 = mul nsw i32 %32, %33, !dbg !4160
  %add44 = add nsw i32 %mul43, 5000, !dbg !4160
  %div45 = sdiv i32 %add44, 10000, !dbg !4160
  call void @llvm.dbg.value(metadata i32 %div45, metadata !4076, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %count46 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 9, !dbg !4162
  %34 = load i64, i64* %count46, align 8, !dbg !4162
  call void @llvm.dbg.value(metadata i64 %34, metadata !4077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4074, metadata !DIExpression()), !dbg !4103
  br label %for.inc, !dbg !4163

if.else47:                                        ; preds = %lor.lhs.false32
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %src49 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !4164
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %src49, align 8, !dbg !4164
  %frequency50 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i64 0, i32 11, !dbg !4164
  %36 = load i32, i32* %frequency50, align 8, !dbg !4164
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %probability51 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 8, !dbg !4164
  %37 = load i32, i32* %probability51, align 4, !dbg !4164
  %mul52 = mul nsw i32 %36, %37, !dbg !4164
  %add53 = add nsw i32 %mul52, 5000, !dbg !4164
  %div54 = sdiv i32 %add53, 10000, !dbg !4164
  call void @llvm.dbg.value(metadata i32 %div54, metadata !4091, metadata !DIExpression()), !dbg !4165
  %tobool55 = icmp eq %struct.edge_def* %best_edge.1, null, !dbg !4166
  %cmp57 = icmp sgt i32 %div54, %best_freq.1, !dbg !4168
  %or.cond = or i1 %tobool55, %cmp57, !dbg !4169
  br i1 %or.cond, label %if.else47.if.then61_crit_edge, label %lor.lhs.false58, !dbg !4169

if.else47.if.then61_crit_edge:                    ; preds = %if.else47
  %count62.phi.trans.insert = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 9, !dbg !4170
  %.pre1 = load i64, i64* %count62.phi.trans.insert, align 8, !dbg !4172
  br label %if.then61, !dbg !4169

lor.lhs.false58:                                  ; preds = %if.else47
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  %count59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 9, !dbg !4173
  %38 = load i64, i64* %count59, align 8, !dbg !4173
  %cmp60 = icmp sgt i64 %38, %best_count.1, !dbg !4174
  br i1 %cmp60, label %if.then61, label %for.inc, !dbg !4175

if.then61:                                        ; preds = %if.else47.if.then61_crit_edge, %lor.lhs.false58
  %39 = phi i64 [ %.pre1, %if.else47.if.then61_crit_edge ], [ %38, %lor.lhs.false58 ], !dbg !4172
  call void @llvm.dbg.value(metadata i32 %div54, metadata !4076, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i64 %39, metadata !4077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4079, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4074, metadata !DIExpression()), !dbg !4103
  br label %for.inc, !dbg !4176

for.inc:                                          ; preds = %land.lhs.true7, %land.lhs.true5, %land.lhs.true, %for.body, %if.then39, %if.then61, %lor.lhs.false58, %lor.lhs.false, %if.then24, %lor.lhs.false22
  %best_freq.7 = phi i32 [ %best_freq.1, %land.lhs.true7 ], [ %best_freq.1, %land.lhs.true5 ], [ %best_freq.1, %land.lhs.true ], [ %best_freq.1, %for.body ], [ %best_freq.1, %lor.lhs.false ], [ %div, %if.then24 ], [ %best_freq.1, %lor.lhs.false22 ], [ %div45, %if.then39 ], [ %div54, %if.then61 ], [ %best_freq.1, %lor.lhs.false58 ], !dbg !4103
  %best_edge.7 = phi %struct.edge_def* [ %best_edge.1, %land.lhs.true7 ], [ %best_edge.1, %land.lhs.true5 ], [ %best_edge.1, %land.lhs.true ], [ %best_edge.1, %for.body ], [ %best_edge.1, %lor.lhs.false ], [ %12, %if.then24 ], [ %best_edge.1, %lor.lhs.false22 ], [ %12, %if.then39 ], [ %12, %if.then61 ], [ %best_edge.1, %lor.lhs.false58 ], !dbg !4103
  %best_bb.7 = phi %struct.basic_block_def* [ %best_bb.1, %land.lhs.true7 ], [ %best_bb.1, %land.lhs.true5 ], [ %best_bb.1, %land.lhs.true ], [ %best_bb.1, %for.body ], [ %best_bb.1, %lor.lhs.false ], [ %bb.0, %if.then24 ], [ %best_bb.1, %lor.lhs.false22 ], [ %bb.0, %if.then39 ], [ %bb.0, %if.then61 ], [ %best_bb.1, %lor.lhs.false58 ], !dbg !4103
  %best_count.7 = phi i64 [ %best_count.1, %land.lhs.true7 ], [ %best_count.1, %land.lhs.true5 ], [ %best_count.1, %land.lhs.true ], [ %best_count.1, %for.body ], [ %best_count.1, %lor.lhs.false ], [ %27, %if.then24 ], [ %best_count.1, %lor.lhs.false22 ], [ %34, %if.then39 ], [ %39, %if.then61 ], [ %best_count.1, %lor.lhs.false58 ], !dbg !4103
  %is_preferred.4 = phi i8 [ %is_preferred.1, %land.lhs.true7 ], [ %is_preferred.1, %land.lhs.true5 ], [ %is_preferred.1, %land.lhs.true ], [ %is_preferred.1, %for.body ], [ %is_preferred.1, %lor.lhs.false ], [ %is_preferred.1, %if.then24 ], [ %is_preferred.1, %lor.lhs.false22 ], [ 1, %if.then39 ], [ 0, %if.then61 ], [ 0, %lor.lhs.false58 ], !dbg !4113
  call void @llvm.dbg.value(metadata i8 %is_preferred.4, metadata !4078, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %best_count.7, metadata !4077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %best_bb.7, metadata !4074, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.7, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 %best_freq.7, metadata !4076, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4081, metadata !DIExpression(DW_OP_deref)), !dbg !4105
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4117
  br label %for.cond, !dbg !4117, !llvm.loop !4177

for.end:                                          ; preds = %for.cond
  %best_freq.1.lcssa = phi i32 [ %best_freq.1, %for.cond ], !dbg !4109
  %best_edge.1.lcssa = phi %struct.edge_def* [ %best_edge.1, %for.cond ], !dbg !4110
  %best_bb.1.lcssa = phi %struct.basic_block_def* [ %best_bb.1, %for.cond ], !dbg !4111
  %best_count.1.lcssa = phi i64 [ %best_count.1, %for.cond ], !dbg !4112
  %is_preferred.1.lcssa = phi i8 [ %is_preferred.1, %for.cond ], !dbg !4113
  call void @llvm.dbg.value(metadata i32 %best_freq.1.lcssa, metadata !4076, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.1.lcssa, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %best_bb.1.lcssa, metadata !4074, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %best_count.1.lcssa, metadata !4077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i8 %is_preferred.1.lcssa, metadata !4078, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 %best_freq.1.lcssa, metadata !4076, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.1.lcssa, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %best_bb.1.lcssa, metadata !4074, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %best_count.1.lcssa, metadata !4077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i8 %is_preferred.1.lcssa, metadata !4078, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i32 %best_freq.1.lcssa, metadata !4076, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %best_edge.1.lcssa, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %best_bb.1.lcssa, metadata !4074, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 %best_count.1.lcssa, metadata !4077, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i8 %is_preferred.1.lcssa, metadata !4078, metadata !DIExpression()), !dbg !4103
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !4179
  %40 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !4179
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %40, align 8, !dbg !4179
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %41, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !4180
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4180
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4181
  %cmp68 = icmp eq %struct.basic_block_def* %41, %42, !dbg !4182
  %43 = bitcast %struct.basic_block_def* %42 to i8*, !dbg !4183
  br i1 %cmp68, label %do.end, label %do.body, !dbg !4183, !llvm.loop !4184

do.end:                                           ; preds = %for.end
  %.lcssa4 = phi %struct.basic_block_def* [ %41, %for.end ], !dbg !4179
  %.lcssa = phi i8* [ %43, %for.end ], !dbg !4183
  %best_bb.1.lcssa.lcssa = phi %struct.basic_block_def* [ %best_bb.1.lcssa, %for.end ], !dbg !4111
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %best_bb.1.lcssa.lcssa, metadata !4074, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %best_bb.1.lcssa.lcssa, metadata !4074, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %best_bb.1.lcssa.lcssa, metadata !4074, metadata !DIExpression()), !dbg !4103
  %tobool69 = icmp eq %struct.basic_block_def* %best_bb.1.lcssa.lcssa, null, !dbg !4186
  br i1 %tobool69, label %if.else111, label %if.then70, !dbg !4187

if.then70:                                        ; preds = %do.end
  %first = getelementptr inbounds %struct.trace, %struct.trace* %trace, i64 0, i32 0, !dbg !4188
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8, !dbg !4188
  %cmp72 = icmp eq %struct.basic_block_def* %.lcssa4, %44, !dbg !4189
  br i1 %cmp72, label %if.then73, label %if.else76, !dbg !4190

if.then73:                                        ; preds = %if.then70
  %aux74 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %best_bb.1.lcssa.lcssa, i64 0, i32 2, !dbg !4191
  %45 = bitcast i8** %aux74 to i64*, !dbg !4191
  %46 = load i64, i64* %45, align 8, !dbg !4191
  %47 = bitcast %struct.trace* %trace to i64*, !dbg !4193
  store i64 %46, i64* %47, align 8, !dbg !4193
  br label %if.end113, !dbg !4194

if.else76:                                        ; preds = %if.then70
  br label %for.cond78, !dbg !4195

for.cond78:                                       ; preds = %for.inc83, %if.else76
  %prev_bb.0 = phi %struct.basic_block_def* [ %44, %if.else76 ], [ %49, %for.inc83 ], !dbg !4197
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0, metadata !4095, metadata !DIExpression()), !dbg !4198
  %aux79 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %prev_bb.0, i64 0, i32 2, !dbg !4199
  %48 = load i8*, i8** %aux79, align 8, !dbg !4199
  %cmp81 = icmp eq i8* %48, %.lcssa, !dbg !4201
  br i1 %cmp81, label %for.end85, label %for.inc83, !dbg !4202

for.inc83:                                        ; preds = %for.cond78
  %49 = bitcast i8* %48 to %struct.basic_block_def*, !dbg !4202
  br label %for.cond78, !dbg !4203, !llvm.loop !4204

for.end85:                                        ; preds = %for.cond78
  %prev_bb.0.lcssa = phi %struct.basic_block_def* [ %prev_bb.0, %for.cond78 ], !dbg !4197
  %aux79.lcssa = phi i8** [ %aux79, %for.cond78 ], !dbg !4199
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0.lcssa, metadata !4095, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %prev_bb.0.lcssa, metadata !4095, metadata !DIExpression()), !dbg !4198
  %aux86 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %best_bb.1.lcssa.lcssa, i64 0, i32 2, !dbg !4206
  %50 = bitcast i8** %aux86 to i64*, !dbg !4206
  %51 = load i64, i64* %50, align 8, !dbg !4206
  %52 = bitcast i8** %aux79.lcssa to i64*, !dbg !4207
  store i64 %51, i64* %52, align 8, !dbg !4207
  %call88 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %prev_bb.0.lcssa) #8, !dbg !4208
  %tobool89 = icmp eq i8 %call88, 0, !dbg !4208
  br i1 %tobool89, label %if.end113, label %if.then90, !dbg !4209

if.then90:                                        ; preds = %for.end85
  %call91 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %prev_bb.0.lcssa) #8, !dbg !4210
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call91, metadata !4100, metadata !DIExpression()), !dbg !4211
  %il92 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call91, i64 0, i32 7, !dbg !4212
  %rtl93 = bitcast %union.basic_block_il_dependent* %il92 to %struct.rtl_bb_info**, !dbg !4212
  %53 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl93, align 8, !dbg !4212
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %53, i64 0, i32 1, !dbg !4212
  %54 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4212
  %call94 = call i32 @any_condjump_p(%struct.rtx_def* %54) #6, !dbg !4214
  %tobool95 = icmp eq i32 %call94, 0, !dbg !4214
  br i1 %tobool95, label %if.end113, label %land.lhs.true96, !dbg !4215

land.lhs.true96:                                  ; preds = %if.then90
  %call97 = call fastcc zeroext i8 @copy_bb_p(%struct.basic_block_def* %call91, i32 0) #8, !dbg !4216
  %tobool98 = icmp eq i8 %call97, 0, !dbg !4216
  br i1 %tobool98, label %if.end113, label %land.lhs.true99, !dbg !4217

land.lhs.true99:                                  ; preds = %land.lhs.true96
  %55 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl93, align 8, !dbg !4218
  %end_102 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %55, i64 0, i32 1, !dbg !4218
  %56 = load %struct.rtx_def*, %struct.rtx_def** %end_102, align 8, !dbg !4218
  %call103 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %56, i32 29, %struct.rtx_def* null) #6, !dbg !4219
  %tobool104 = icmp eq %struct.rtx_def* %call103, null, !dbg !4219
  br i1 %tobool104, label %if.then105, label %if.end113, !dbg !4220

if.then105:                                       ; preds = %land.lhs.true99
  %call106 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %prev_bb.0.lcssa) #8, !dbg !4221
  %call107 = call fastcc %struct.basic_block_def* @copy_bb(%struct.basic_block_def* %call91, %struct.edge_def* %call106, %struct.basic_block_def* %prev_bb.0.lcssa, i32 %trace_n) #8, !dbg !4222
  br label %if.end113, !dbg !4222

if.else111:                                       ; preds = %do.end
  %src112 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %back_edge, i64 0, i32 0, !dbg !4223
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %src112, align 8, !dbg !4223
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %57, metadata !4074, metadata !DIExpression()), !dbg !4103
  br label %if.end113

if.end113:                                        ; preds = %land.lhs.true99, %land.lhs.true96, %if.then90, %for.end85, %if.then73, %if.then105, %if.else111
  %best_bb.8 = phi %struct.basic_block_def* [ %57, %if.else111 ], [ %best_bb.1.lcssa.lcssa, %for.end85 ], [ %best_bb.1.lcssa.lcssa, %if.then105 ], [ %best_bb.1.lcssa.lcssa, %land.lhs.true99 ], [ %best_bb.1.lcssa.lcssa, %land.lhs.true96 ], [ %best_bb.1.lcssa.lcssa, %if.then90 ], [ %best_bb.1.lcssa.lcssa, %if.then73 ], !dbg !4103
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %best_bb.8, metadata !4074, metadata !DIExpression()), !dbg !4103
  %aux114 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %best_bb.8, i64 0, i32 2, !dbg !4225
  store i8* null, i8** %aux114, align 8, !dbg !4226
  ret %struct.basic_block_def* %best_bb.8, !dbg !4227
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4228 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4232, metadata !DIExpression()), !dbg !4233
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4234
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4234
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4234
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4234

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4234
  br label %cond.end, !dbg !4234

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4234
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4234
  %cmp = icmp eq i32 %call, 1, !dbg !4235
  %conv2 = zext i1 %cmp to i8, !dbg !4234
  ret i8 %conv2, !dbg !4236
}

declare dso_local zeroext i8 @optimize_edge_for_speed_p(%struct.edge_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @copy_bb(%struct.basic_block_def* %old_bb, %struct.edge_def* %e, %struct.basic_block_def* %bb, i32 %trace) unnamed_addr #4 !dbg !4237 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %old_bb, metadata !4241, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4242, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4243, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 %trace, metadata !4244, metadata !DIExpression()), !dbg !4252
  %call = tail call %struct.basic_block_def* @duplicate_block(%struct.basic_block_def* %old_bb, %struct.edge_def* %e, %struct.basic_block_def* %bb) #6, !dbg !4253
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4245, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !4246, metadata !DIExpression()), !dbg !4254
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 13, !dbg !4255
  %0 = load i32, i32* %flags, align 8, !dbg !4255
  %and = and i32 %0, -97, !dbg !4255
  %flags1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %old_bb, i64 0, i32 13, !dbg !4255
  %1 = load i32, i32* %flags1, align 8, !dbg !4255
  %and2 = and i32 %1, 96, !dbg !4255
  %or = or i32 %and, %and2, !dbg !4255
  store i32 %or, i32* %flags, align 8, !dbg !4255
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !4256
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4256
  %cmp = icmp eq %struct.basic_block_def* %2, %call, !dbg !4256
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4256

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 762, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4256
  %.pre = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4257
  br label %cond.end, !dbg !4256

cond.end:                                         ; preds = %entry, %cond.true
  %3 = phi %struct.basic_block_def* [ %call, %entry ], [ %.pre, %cond.true ], !dbg !4257
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 7, !dbg !4257
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4257
  %4 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4257
  %visited = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %4, i64 0, i32 4, !dbg !4257
  %5 = load i32, i32* %visited, align 8, !dbg !4257
  %tobool = icmp eq i32 %5, 0, !dbg !4257
  br i1 %tobool, label %cond.end7, label %cond.true5, !dbg !4257

cond.true5:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 763, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4257
  br label %cond.end7, !dbg !4257

cond.end7:                                        ; preds = %cond.end, %cond.true5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4258
  %tobool9 = icmp eq %struct._IO_FILE* %6, null, !dbg !4258
  br i1 %tobool9, label %if.end, label %if.then, !dbg !4260

if.then:                                          ; preds = %cond.end7
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %old_bb, i64 0, i32 9, !dbg !4261
  %7 = load i32, i32* %index, align 8, !dbg !4261
  %index10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 9, !dbg !4262
  %8 = load i32, i32* %index10, align 8, !dbg !4262
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %7, i32 %8) #6, !dbg !4263
  br label %if.end, !dbg !4263

if.end:                                           ; preds = %cond.end7, %if.then
  %il12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 7, !dbg !4264
  %rtl13 = bitcast %union.basic_block_il_dependent* %il12 to %struct.rtl_bb_info**, !dbg !4265
  %9 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl13, align 8, !dbg !4265
  %visited14 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %9, i64 0, i32 4, !dbg !4266
  store i32 %trace, i32* %visited14, align 8, !dbg !4267
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 2, !dbg !4268
  %10 = bitcast i8** %aux to i64*, !dbg !4268
  %11 = load i64, i64* %10, align 8, !dbg !4268
  %aux15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 2, !dbg !4269
  %12 = bitcast i8** %aux15 to i64*, !dbg !4270
  store i64 %11, i64* %12, align 8, !dbg !4270
  %13 = bitcast i8** %aux to %struct.basic_block_def**, !dbg !4271
  store %struct.basic_block_def* %call, %struct.basic_block_def** %13, align 8, !dbg !4271
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 9, !dbg !4272
  %14 = load i32, i32* %index17, align 8, !dbg !4272
  %15 = load i32, i32* @array_size, align 4, !dbg !4273
  %cmp18 = icmp slt i32 %14, %15, !dbg !4274
  br i1 %cmp18, label %lor.lhs.false, label %if.end.if.then20_crit_edge, !dbg !4275

if.end.if.then20_crit_edge:                       ; preds = %if.end
  %.pre1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4276
  %cfg22.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre1, i64 0, i32 1, !dbg !4277
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg22.phi.trans.insert, align 8, !dbg !4276
  %x_last_basic_block23.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre2, i64 0, i32 5, !dbg !4277
  %.pre3 = load i32, i32* %x_last_basic_block23.phi.trans.insert, align 8, !dbg !4276
  br label %if.then20, !dbg !4275

lor.lhs.false:                                    ; preds = %if.end
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4278
  %cfg = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !4278
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4278
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 5, !dbg !4278
  %18 = load i32, i32* %x_last_basic_block, align 8, !dbg !4278
  %cmp19 = icmp sgt i32 %18, %15, !dbg !4279
  br i1 %cmp19, label %if.then20, label %if.end52, !dbg !4280

if.then20:                                        ; preds = %if.end.if.then20_crit_edge, %lor.lhs.false
  %19 = phi i32 [ %.pre3, %if.end.if.then20_crit_edge ], [ %18, %lor.lhs.false ], !dbg !4276
  %add = add nsw i32 %14, 1, !dbg !4276
  %cmp25 = icmp sgt i32 %19, %add, !dbg !4276
  br i1 %cmp25, label %cond.true26, label %cond.false30, !dbg !4276

cond.true26:                                      ; preds = %if.then20
  br label %cond.end33, !dbg !4276

cond.false30:                                     ; preds = %if.then20
  br label %cond.end33, !dbg !4276

cond.end33:                                       ; preds = %cond.false30, %cond.true26
  %cond34 = phi i32 [ %19, %cond.true26 ], [ %add, %cond.false30 ], !dbg !4276
  call void @llvm.dbg.value(metadata i32 %cond34, metadata !4251, metadata !DIExpression()), !dbg !4277
  %div = sdiv i32 %cond34, 4, !dbg !4281
  %20 = mul i32 %div, 5, !dbg !4281
  %mul = add i32 %20, 5, !dbg !4281
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4251, metadata !DIExpression()), !dbg !4277
  %21 = load i8*, i8** bitcast (%struct.bbro_basic_block_data_def** @bbd to i8**), align 8, !dbg !4282
  %conv = sext i32 %mul to i64, !dbg !4282
  %mul36 = shl nsw i64 %conv, 5, !dbg !4282
  %call37 = tail call i8* @xrealloc(i8* %21, i64 %mul36) #6, !dbg !4282
  store i8* %call37, i8** bitcast (%struct.bbro_basic_block_data_def** @bbd to i8**), align 8, !dbg !4283
  %22 = load i32, i32* @array_size, align 4, !dbg !4284
  call void @llvm.dbg.value(metadata i32 %22, metadata !4248, metadata !DIExpression()), !dbg !4277
  %23 = sext i32 %22 to i64, !dbg !4286
  %24 = sext i32 %mul to i64, !dbg !4286
  br label %for.cond, !dbg !4286

for.cond:                                         ; preds = %for.body, %cond.end33
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %23, %cond.end33 ], !dbg !4287
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4248, metadata !DIExpression()), !dbg !4277
  %cmp38 = icmp slt i64 %indvars.iv, %24, !dbg !4288
  br i1 %cmp38, label %for.body, label %for.end, !dbg !4290

for.body:                                         ; preds = %for.cond
  %25 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !4291
  %start_of_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %25, i64 %indvars.iv, i32 0, !dbg !4293
  store i32 -1, i32* %start_of_trace, align 8, !dbg !4294
  %26 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !4295
  %in_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %26, i64 %indvars.iv, i32 2, !dbg !4296
  store i32 -1, i32* %in_trace, align 8, !dbg !4297
  %27 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !4298
  %end_of_trace = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %27, i64 %indvars.iv, i32 1, !dbg !4299
  store i32 -1, i32* %end_of_trace, align 4, !dbg !4300
  %28 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !4301
  %heap = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %28, i64 %indvars.iv, i32 3, !dbg !4302
  store %struct.fibheap* null, %struct.fibheap** %heap, align 8, !dbg !4303
  %29 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !4304
  %node = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %29, i64 %indvars.iv, i32 4, !dbg !4305
  store %struct.fibnode* null, %struct.fibnode** %node, align 8, !dbg !4306
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !4307
  call void @llvm.dbg.value(metadata i32 undef, metadata !4248, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4277
  br label %for.cond, !dbg !4308, !llvm.loop !4309

for.end:                                          ; preds = %for.cond
  store i32 %mul, i32* @array_size, align 4, !dbg !4311
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4312
  %tobool48 = icmp eq %struct._IO_FILE* %30, null, !dbg !4312
  br i1 %tobool48, label %if.end52, label %if.then49, !dbg !4314

if.then49:                                        ; preds = %for.end
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i32 %mul) #6, !dbg !4315
  br label %if.end52, !dbg !4317

if.end52:                                         ; preds = %for.end, %if.then49, %lor.lhs.false
  %31 = load %struct.bbro_basic_block_data_def*, %struct.bbro_basic_block_data_def** @bbd, align 8, !dbg !4318
  %32 = load i32, i32* %index17, align 8, !dbg !4319
  %idxprom54 = sext i32 %32 to i64, !dbg !4318
  %in_trace56 = getelementptr inbounds %struct.bbro_basic_block_data_def, %struct.bbro_basic_block_data_def* %31, i64 %idxprom54, i32 2, !dbg !4320
  store i32 %trace, i32* %in_trace56, align 8, !dbg !4321
  ret %struct.basic_block_def* %call, !dbg !4322
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4323 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4325, metadata !DIExpression()), !dbg !4326
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4327
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4327
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4327
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4327

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4327
  br label %cond.end, !dbg !4327

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4327
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4327
  %cmp = icmp eq i32 %call, 1, !dbg !4328
  %conv2 = zext i1 %cmp to i8, !dbg !4327
  ret i8 %conv2, !dbg !4329
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4330 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4334, metadata !DIExpression()), !dbg !4335
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !4336
  %tobool = icmp eq i8 %call, 0, !dbg !4336
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4336

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4336
  br label %cond.end, !dbg !4336

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4337
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4337
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4337
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !4337

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4337
  br label %cond.end5, !dbg !4337

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !4337
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !4337
  ret %struct.edge_def* %call7, !dbg !4338
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4339 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4343, metadata !DIExpression()), !dbg !4344
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #8, !dbg !4345
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !4346
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4346
  ret %struct.basic_block_def* %0, !dbg !4347
}

declare dso_local i8* @fibheap_delete_node(%struct.fibheap*, %struct.fibnode*) local_unnamed_addr #1

declare dso_local zeroext i8 @can_duplicate_block_p(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @optimize_bb_for_speed_p(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local i32 @any_condjump_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @duplicate_block(%struct.basic_block_def*, %struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

declare dso_local zeroext i8 @optimize_function_for_size_p(%struct.function*) local_unnamed_addr #1

declare dso_local void @cfg_layout_initialize(i32) local_unnamed_addr #1

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #1

declare dso_local i32 @computed_jump_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local void @cfg_layout_finalize() local_unnamed_addr #1

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @optimize_function_for_speed_p(%struct.function*) local_unnamed_addr #1

declare dso_local zeroext i8 @cleanup_cfg(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_section_boundary_note() unnamed_addr #4 !dbg !4348 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !4352, metadata !DIExpression()), !dbg !4353
  %0 = load i32, i32* @flag_reorder_blocks_and_partition, align 4, !dbg !4354
  %tobool = icmp eq i32 %0, 0, !dbg !4354
  br i1 %tobool, label %if.end11, label %if.then, !dbg !4356

if.then:                                          ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4357
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !4357
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4357
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !4357
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4357
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 1, !dbg !4359
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4359
  br label %for.cond, !dbg !4357

for.cond:                                         ; preds = %for.inc, %if.then
  %first_partition.0 = phi i32 [ 0, %if.then ], [ %first_partition.1, %for.inc ], !dbg !4361
  %.pn = phi %struct.basic_block_def* [ %3, %if.then ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4362
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4362
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4350, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 %first_partition.0, metadata !4352, metadata !DIExpression()), !dbg !4353
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !4363
  br i1 %cmp, label %if.end11.loopexit, label %for.body, !dbg !4357

for.body:                                         ; preds = %for.cond
  %tobool3 = icmp eq i32 %first_partition.0, 0, !dbg !4364
  br i1 %tobool3, label %if.then4, label %for.body.if.end_crit_edge, !dbg !4367

for.body.if.end_crit_edge:                        ; preds = %for.body
  %flags5.phi.trans.insert = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !4368
  %.pre = load i32, i32* %flags5.phi.trans.insert, align 8, !dbg !4370
  %.pre2 = and i32 %.pre, 96, !dbg !4370
  br label %if.end, !dbg !4367

if.then4:                                         ; preds = %for.body
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !4371
  %5 = load i32, i32* %flags, align 8, !dbg !4371
  %and = and i32 %5, 96, !dbg !4371
  call void @llvm.dbg.value(metadata i32 %and, metadata !4352, metadata !DIExpression()), !dbg !4353
  br label %if.end, !dbg !4372

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then4
  %and6.pre-phi = phi i32 [ %.pre2, %for.body.if.end_crit_edge ], [ %and, %if.then4 ], !dbg !4370
  %first_partition.1 = phi i32 [ %first_partition.0, %for.body.if.end_crit_edge ], [ %and, %if.then4 ], !dbg !4353
  call void @llvm.dbg.value(metadata i32 %first_partition.1, metadata !4352, metadata !DIExpression()), !dbg !4353
  %cmp7 = icmp eq i32 %and6.pre-phi, %first_partition.1, !dbg !4373
  br i1 %cmp7, label %for.inc, label %if.then8, !dbg !4374

if.then8:                                         ; preds = %if.end
  %bb.0.lcssa4 = phi %struct.basic_block_def* [ %bb.0, %if.end ], !dbg !4362
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0.lcssa4, i64 0, i32 7, !dbg !4375
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4375
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4375
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 0, !dbg !4375
  %7 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !4375
  %call = tail call %struct.rtx_def* @emit_note_before(i32 11, %struct.rtx_def* %7) #6, !dbg !4377
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !4351, metadata !DIExpression()), !dbg !4353
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 1, !dbg !4378
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !4378
  store %struct.basic_block_def* null, %struct.basic_block_def** %rt_bb, align 8, !dbg !4379
  br label %if.end11, !dbg !4380

for.inc:                                          ; preds = %if.end
  br label %for.cond, !dbg !4363, !llvm.loop !4381

if.end11.loopexit:                                ; preds = %for.cond
  br label %if.end11, !dbg !4383

if.end11:                                         ; preds = %if.end11.loopexit, %entry, %if.then8
  ret void, !dbg !4383
}

declare dso_local %struct.rtx_def* @emit_note_before(i32, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @partition_hot_cold_basic_blocks() unnamed_addr #4 !dbg !4384 {
entry:
  %crossing_edges = alloca %struct.edge_def**, align 8
  %n_crossing_edges = alloca i32, align 4
  %max_edges = alloca i32, align 4
  %0 = bitcast %struct.edge_def*** %crossing_edges to i8*, !dbg !4389
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4389
  %1 = bitcast i32* %n_crossing_edges to i8*, !dbg !4390
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !4390
  %2 = bitcast i32* %max_edges to i8*, !dbg !4391
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7, !dbg !4391
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4392
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !4392
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4392
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 5, !dbg !4392
  %5 = load i32, i32* %x_last_basic_block, align 8, !dbg !4392
  %mul = shl nsw i32 %5, 1, !dbg !4393
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4388, metadata !DIExpression()), !dbg !4394
  store i32 %mul, i32* %max_edges, align 4, !dbg !4395
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 3, !dbg !4396
  %6 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !4396
  %cmp = icmp slt i32 %6, 4, !dbg !4398
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4399

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4388, metadata !DIExpression()), !dbg !4394
  %conv = sext i32 %mul to i64, !dbg !4400
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !4400
  call void @llvm.dbg.value(metadata i8* %call, metadata !4386, metadata !DIExpression()), !dbg !4394
  %7 = bitcast %struct.edge_def*** %crossing_edges to i8**, !dbg !4401
  store i8* %call, i8** %7, align 8, !dbg !4401
  call void @llvm.dbg.value(metadata %struct.edge_def*** %crossing_edges, metadata !4386, metadata !DIExpression(DW_OP_deref)), !dbg !4394
  call void @llvm.dbg.value(metadata i32* %n_crossing_edges, metadata !4387, metadata !DIExpression(DW_OP_deref)), !dbg !4394
  call void @llvm.dbg.value(metadata i32* %max_edges, metadata !4388, metadata !DIExpression(DW_OP_deref)), !dbg !4394
  call fastcc void @find_rarely_executed_basic_blocks_and_crossing_edges(%struct.edge_def*** nonnull %crossing_edges, i32* nonnull %n_crossing_edges, i32* nonnull %max_edges) #8, !dbg !4402
  %8 = load i32, i32* %n_crossing_edges, align 4, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %8, metadata !4387, metadata !DIExpression()), !dbg !4394
  %cmp3 = icmp sgt i32 %8, 0, !dbg !4405
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !4406

if.then5:                                         ; preds = %if.end
  %9 = load %struct.edge_def**, %struct.edge_def*** %crossing_edges, align 8, !dbg !4407
  call void @llvm.dbg.value(metadata %struct.edge_def** %9, metadata !4386, metadata !DIExpression()), !dbg !4394
  call void @llvm.dbg.value(metadata i32 %8, metadata !4387, metadata !DIExpression()), !dbg !4394
  call fastcc void @fix_edges_for_rarely_executed_code(%struct.edge_def** %9, i32 %8) #8, !dbg !4408
  br label %if.end6, !dbg !4408

if.end6:                                          ; preds = %if.then5, %if.end
  %10 = load i8*, i8** %7, align 8, !dbg !4409
  call void @free(i8* %10) #6, !dbg !4410
  br label %cleanup, !dbg !4411

cleanup:                                          ; preds = %entry, %if.end6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7, !dbg !4411
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !4411
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4411
  ret void, !dbg !4411
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_rarely_executed_basic_blocks_and_crossing_edges(%struct.edge_def*** %crossing_edges, i32* %n_crossing_edges, i32* %max_idx) unnamed_addr #4 !dbg !4412 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def*** %crossing_edges, metadata !4417, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32* %n_crossing_edges, metadata !4418, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32* %max_idx, metadata !4419, metadata !DIExpression()), !dbg !4432
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4433
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4433
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4434
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4434
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4435
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !4435
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4435
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !4435
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4435
  br label %for.cond, !dbg !4435

for.cond:                                         ; preds = %for.inc, %entry
  %5 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre2, %for.inc ], !dbg !4436
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.inc ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4437
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4437
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4420, metadata !DIExpression()), !dbg !4432
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !4436
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4436
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !4436
  br i1 %cmp, label %for.end, label %for.body, !dbg !4435

for.body:                                         ; preds = %for.cond
  %call = tail call zeroext i8 @probably_never_executed_bb_p(%struct.basic_block_def* %bb.0) #6, !dbg !4438
  %tobool = icmp eq i8 %call, 0, !dbg !4438
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 13, !dbg !4439
  %7 = load i32, i32* %flags, align 8, !dbg !4439
  %and = and i32 %7, -97, !dbg !4439
  br i1 %tobool, label %do.body4, label %do.body, !dbg !4440

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4424, metadata !DIExpression()), !dbg !4441
  %or = or i32 %and, 64, !dbg !4442
  br label %for.inc, !dbg !4442

do.body4:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4430, metadata !DIExpression()), !dbg !4443
  %or8 = or i32 %and, 32, !dbg !4444
  br label %for.inc

for.inc:                                          ; preds = %do.body, %do.body4
  %storemerge = phi i32 [ %or, %do.body ], [ %or8, %do.body4 ], !dbg !4439
  store i32 %storemerge, i32* %flags, align 8, !dbg !4439
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4436
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !4445
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !4436
  br label %for.cond, !dbg !4436, !llvm.loop !4446

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %5, %for.cond ], !dbg !4436
  %bb.0.lcssa = phi %struct.basic_block_def* [ %bb.0, %for.cond ], !dbg !4437
  call void @llvm.dbg.value(metadata i32 0, metadata !4422, metadata !DIExpression()), !dbg !4432
  %x_entry_block_ptr15 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !4448
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr15, align 8, !dbg !4448
  %9 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4450
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4450
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4450
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4453
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4453
  %14 = bitcast %struct.edge_def*** %crossing_edges to i8**, !dbg !4455
  %15 = bitcast %struct.edge_def** %e to i64*, !dbg !4461
  br label %for.cond17, !dbg !4448

for.cond17:                                       ; preds = %for.inc58, %for.end
  %16 = phi %struct.basic_block_def* [ %bb.0.lcssa, %for.end ], [ %.pre5, %for.inc58 ], !dbg !4462
  %.pn1 = phi %struct.basic_block_def* [ %8, %for.end ], [ %bb.1, %for.inc58 ]
  %i.0 = phi i32 [ 0, %for.end ], [ %i.1.lcssa, %for.inc58 ], !dbg !4463
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn1, i64 0, i32 6, !dbg !4464
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !4464
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4422, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !4420, metadata !DIExpression()), !dbg !4432
  %cmp21 = icmp eq %struct.basic_block_def* %bb.1, %16, !dbg !4462
  br i1 %cmp21, label %for.end60, label %for.body22, !dbg !4448

for.body22:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #7, !dbg !4465
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !4465
  %call23 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4465
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call23, 0, !dbg !4465
  store i32 %17, i32* %10, align 8, !dbg !4465
  %18 = extractvalue { i32, %struct.VEC_edge_gc** } %call23, 1, !dbg !4465
  store %struct.VEC_edge_gc** %18, %struct.VEC_edge_gc*** %11, align 8, !dbg !4465
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !4465
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #7, !dbg !4465
  br label %for.cond24, !dbg !4465

for.cond24:                                       ; preds = %for.inc56, %for.body22
  %i.1 = phi i32 [ %i.0, %for.body22 ], [ %i.2, %for.inc56 ], !dbg !4432
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !4422, metadata !DIExpression()), !dbg !4432
  %19 = load i32, i32* %12, align 8, !dbg !4466
  %20 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !4466
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4421, metadata !DIExpression(DW_OP_deref)), !dbg !4432
  %call25 = call fastcc zeroext i8 @ei_cond(i32 %19, %struct.VEC_edge_gc** %20, %struct.edge_def** nonnull %e) #8, !dbg !4466
  %tobool26 = icmp eq i8 %call25, 0, !dbg !4465
  br i1 %tobool26, label %for.inc58, label %for.body27, !dbg !4465

for.body27:                                       ; preds = %for.cond24
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4467
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !4421, metadata !DIExpression()), !dbg !4432
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 0, !dbg !4468
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4468
  %23 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4469
  %cfg29 = getelementptr inbounds %struct.function, %struct.function* %23, i64 0, i32 1, !dbg !4469
  %24 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg29, align 8, !dbg !4469
  %x_entry_block_ptr30 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %24, i64 0, i32 0, !dbg !4469
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr30, align 8, !dbg !4469
  %cmp31 = icmp eq %struct.basic_block_def* %22, %25, !dbg !4470
  %26 = ptrtoint %struct.edge_def* %21 to i64, !dbg !4471
  br i1 %cmp31, label %if.else52, label %land.lhs.true, !dbg !4471

land.lhs.true:                                    ; preds = %for.body27
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !4421, metadata !DIExpression()), !dbg !4432
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 1, !dbg !4472
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4472
  %x_exit_block_ptr34 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %24, i64 0, i32 1, !dbg !4473
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr34, align 8, !dbg !4473
  %cmp35 = icmp eq %struct.basic_block_def* %27, %28, !dbg !4474
  br i1 %cmp35, label %if.else52, label %land.lhs.true36, !dbg !4475

land.lhs.true36:                                  ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !4421, metadata !DIExpression()), !dbg !4432
  %flags38 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i64 0, i32 13, !dbg !4476
  %29 = load i32, i32* %flags38, align 8, !dbg !4476
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !4421, metadata !DIExpression()), !dbg !4432
  %flags41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i64 0, i32 13, !dbg !4477
  %30 = load i32, i32* %flags41, align 8, !dbg !4477
  %31 = xor i32 %29, %30, !dbg !4478
  %32 = and i32 %31, 96, !dbg !4478
  %cmp43 = icmp eq i32 %32, 0, !dbg !4478
  br i1 %cmp43, label %if.else52, label %if.then44, !dbg !4479

if.then44:                                        ; preds = %land.lhs.true36
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !4421, metadata !DIExpression()), !dbg !4432
  %flags45 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 7, !dbg !4480
  %33 = load i32, i32* %flags45, align 8, !dbg !4481
  %or46 = or i32 %33, 8192, !dbg !4481
  store i32 %or46, i32* %flags45, align 8, !dbg !4481
  %34 = load i32, i32* %max_idx, align 4, !dbg !4482
  %cmp47 = icmp eq i32 %i.1, %34, !dbg !4483
  br i1 %cmp47, label %if.then48, label %if.then44.if.end51_crit_edge, !dbg !4484

if.then44.if.end51_crit_edge:                     ; preds = %if.then44
  %.pre7 = load %struct.edge_def**, %struct.edge_def*** %crossing_edges, align 8, !dbg !4485
  br label %if.end51, !dbg !4484

if.then48:                                        ; preds = %if.then44
  %mul = shl nsw i32 %i.1, 1, !dbg !4486
  store i32 %mul, i32* %max_idx, align 4, !dbg !4486
  %35 = load i8*, i8** %14, align 8, !dbg !4487
  %conv = sext i32 %mul to i64, !dbg !4487
  %mul49 = shl nsw i64 %conv, 3, !dbg !4487
  %call50 = call i8* @xrealloc(i8* %35, i64 %mul49) #6, !dbg !4487
  store i8* %call50, i8** %14, align 8, !dbg !4488
  %.pre6 = load i64, i64* %15, align 8, !dbg !4489
  %36 = bitcast i8* %call50 to %struct.edge_def**, !dbg !4490
  br label %if.end51, !dbg !4490

if.end51:                                         ; preds = %if.then44.if.end51_crit_edge, %if.then48
  %37 = phi %struct.edge_def** [ %36, %if.then48 ], [ %.pre7, %if.then44.if.end51_crit_edge ], !dbg !4485
  %38 = phi i64 [ %.pre6, %if.then48 ], [ %26, %if.then44.if.end51_crit_edge ], !dbg !4489
  %inc = add nsw i32 %i.1, 1, !dbg !4491
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4422, metadata !DIExpression()), !dbg !4432
  %idxprom = sext i32 %i.1 to i64, !dbg !4492
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %37, i64 %idxprom, !dbg !4492
  %39 = bitcast %struct.edge_def** %arrayidx to i64*, !dbg !4493
  store i64 %38, i64* %39, align 8, !dbg !4493
  br label %for.inc56, !dbg !4494

if.else52:                                        ; preds = %land.lhs.true36, %land.lhs.true, %for.body27
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !4421, metadata !DIExpression()), !dbg !4432
  %flags53 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i64 0, i32 7, !dbg !4495
  %40 = load i32, i32* %flags53, align 8, !dbg !4496
  %and54 = and i32 %40, -8193, !dbg !4496
  store i32 %and54, i32* %flags53, align 8, !dbg !4496
  br label %for.inc56

for.inc56:                                        ; preds = %if.end51, %if.else52
  %i.2 = phi i32 [ %inc, %if.end51 ], [ %i.1, %if.else52 ], !dbg !4432
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !4422, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4423, metadata !DIExpression(DW_OP_deref)), !dbg !4432
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4466
  br label %for.cond24, !dbg !4466, !llvm.loop !4497

for.inc58:                                        ; preds = %for.cond24
  %i.1.lcssa = phi i32 [ %i.1, %for.cond24 ], !dbg !4432
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !4422, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !4422, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !4422, metadata !DIExpression()), !dbg !4432
  %.pre3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4462
  %cfg19.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre3, i64 0, i32 1, !dbg !4499
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg19.phi.trans.insert, align 8, !dbg !4462
  %x_exit_block_ptr20.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre4, i64 0, i32 1, !dbg !4499
  %.pre5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr20.phi.trans.insert, align 8, !dbg !4462
  br label %for.cond17, !dbg !4462, !llvm.loop !4500

for.end60:                                        ; preds = %for.cond17
  %i.0.lcssa = phi i32 [ %i.0, %for.cond17 ], !dbg !4463
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !4422, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !4422, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !4422, metadata !DIExpression()), !dbg !4432
  store i32 %i.0.lcssa, i32* %n_crossing_edges, align 4, !dbg !4502
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4503
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4503
  ret void, !dbg !4503
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fix_edges_for_rarely_executed_code(%struct.edge_def** %crossing_edges, i32 %n_crossing_edges) unnamed_addr #4 !dbg !4504 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %crossing_edges, metadata !4508, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i32 %n_crossing_edges, metadata !4509, metadata !DIExpression()), !dbg !4510
  tail call fastcc void @add_labels_and_missing_jumps(%struct.edge_def** %crossing_edges, i32 %n_crossing_edges) #8, !dbg !4511
  tail call fastcc void @fix_up_fall_thru_edges() #8, !dbg !4512
  tail call fastcc void @add_reg_crossing_jump_notes() #8, !dbg !4513
  ret void, !dbg !4514
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_labels_and_missing_jumps(%struct.edge_def** %crossing_edges, i32 %n_crossing_edges) unnamed_addr #4 !dbg !4515 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %crossing_edges, metadata !4517, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 %n_crossing_edges, metadata !4518, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i32 0, metadata !4519, metadata !DIExpression()), !dbg !4525
  %0 = sext i32 %n_crossing_edges to i64, !dbg !4526
  br label %for.cond, !dbg !4526

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !4528
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4519, metadata !DIExpression()), !dbg !4525
  %cmp = icmp slt i64 %indvars.iv, %0, !dbg !4529
  br i1 %cmp, label %for.body, label %for.end, !dbg !4531

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %crossing_edges, i64 %indvars.iv, !dbg !4532
  %1 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4532
  %tobool = icmp eq %struct.edge_def* %1, null, !dbg !4532
  br i1 %tobool, label %for.inc, label %if.then, !dbg !4535

if.then:                                          ; preds = %for.body
  %src3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i64 0, i32 0, !dbg !4536
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src3, align 8, !dbg !4536
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !4520, metadata !DIExpression()), !dbg !4525
  %dest6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i64 0, i32 1, !dbg !4538
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest6, align 8, !dbg !4538
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %3, metadata !4521, metadata !DIExpression()), !dbg !4525
  %tobool7 = icmp eq %struct.basic_block_def* %3, null, !dbg !4539
  br i1 %tobool7, label %for.inc, label %land.lhs.true, !dbg !4541

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4542
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !4542
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4542
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !4542
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4542
  %cmp8 = icmp eq %struct.basic_block_def* %3, %6, !dbg !4543
  br i1 %cmp8, label %for.inc, label %if.then9, !dbg !4544

if.then9:                                         ; preds = %land.lhs.true
  %call = tail call %struct.rtx_def* @block_label(%struct.basic_block_def* nonnull %3) #6, !dbg !4545
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !4522, metadata !DIExpression()), !dbg !4525
  %tobool10 = icmp eq %struct.basic_block_def* %2, null, !dbg !4547
  br i1 %tobool10, label %for.inc, label %land.lhs.true11, !dbg !4549

land.lhs.true11:                                  ; preds = %if.then9
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4550
  %cfg13 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !4550
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg13, align 8, !dbg !4550
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 0, !dbg !4550
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4550
  %cmp14 = icmp eq %struct.basic_block_def* %2, %9, !dbg !4551
  br i1 %cmp14, label %for.inc, label %if.then15, !dbg !4552

if.then15:                                        ; preds = %land.lhs.true11
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 7, !dbg !4553
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4553
  %10 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4553
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %10, i64 0, i32 1, !dbg !4553
  %11 = bitcast %struct.rtx_def** %end_ to i32**, !dbg !4553
  %12 = load i32*, i32** %11, align 8, !dbg !4553
  %bf.load = load i32, i32* %12, align 8, !dbg !4553
  %bf.clear = and i32 %bf.load, 65535, !dbg !4553
  %cmp16 = icmp eq i32 %bf.clear, 9, !dbg !4553
  br i1 %cmp16, label %for.inc, label %land.lhs.true17, !dbg !4556

land.lhs.true17:                                  ; preds = %if.then15
  %call18 = tail call zeroext i8 @block_ends_with_call_p(%struct.basic_block_def* nonnull %2) #6, !dbg !4557
  %tobool19 = icmp eq i8 %call18, 0, !dbg !4557
  br i1 %tobool19, label %if.then20, label %for.inc, !dbg !4558

if.then20:                                        ; preds = %land.lhs.true17
  %call21 = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* nonnull %2) #8, !dbg !4559
  %tobool22 = icmp eq i8 %call21, 0, !dbg !4559
  br i1 %tobool22, label %cond.true, label %cond.end, !dbg !4559

cond.true:                                        ; preds = %if.then20
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1299, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4559
  br label %cond.end, !dbg !4559

cond.end:                                         ; preds = %if.then20, %cond.true
  %call23 = tail call %struct.rtx_def* @block_label(%struct.basic_block_def* nonnull %3) #6, !dbg !4561
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call23, metadata !4522, metadata !DIExpression()), !dbg !4525
  %call24 = tail call %struct.rtx_def* @gen_jump(%struct.rtx_def* %call23) #6, !dbg !4562
  %13 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4563
  %end_27 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %13, i64 0, i32 1, !dbg !4563
  %14 = load %struct.rtx_def*, %struct.rtx_def** %end_27, align 8, !dbg !4563
  %call28 = tail call %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def* %call24, %struct.rtx_def* %14) #6, !dbg !4564
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call28, metadata !4524, metadata !DIExpression()), !dbg !4525
  %call29 = tail call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %call28) #6, !dbg !4565
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call29, metadata !4523, metadata !DIExpression()), !dbg !4525
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call28, i64 0, i32 1, !dbg !4566
  %arrayidx30 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 1, !dbg !4566
  %rt_rtx = bitcast %struct.object_block** %arrayidx30 to %struct.rtx_def**, !dbg !4566
  store %struct.rtx_def* %call23, %struct.rtx_def** %rt_rtx, align 8, !dbg !4567
  %arrayidx33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call23, i64 0, i32 1, i32 0, i32 2, !dbg !4568
  %rt_int = bitcast i64* %arrayidx33 to i32*, !dbg !4568
  %15 = load i32, i32* %rt_int, align 8, !dbg !4569
  %add = add nsw i32 %15, 1, !dbg !4569
  store i32 %add, i32* %rt_int, align 8, !dbg !4569
  %call34 = tail call %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def* %call29, %struct.rtx_def* %call29) #6, !dbg !4570
  %16 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4571
  %footer = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %16, i64 0, i32 3, !dbg !4572
  store %struct.rtx_def* %call34, %struct.rtx_def** %footer, align 8, !dbg !4573
  %17 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4574
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i64 0, i32 7, !dbg !4575
  %18 = load i32, i32* %flags, align 8, !dbg !4576
  %and = and i32 %18, -2, !dbg !4576
  store i32 %and, i32* %flags, align 8, !dbg !4576
  br label %for.inc, !dbg !4577

for.inc:                                          ; preds = %land.lhs.true17, %land.lhs.true11, %if.then9, %land.lhs.true, %if.then, %for.body, %cond.end, %if.then15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4578
  call void @llvm.dbg.value(metadata i32 undef, metadata !4519, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4525
  br label %for.cond, !dbg !4579, !llvm.loop !4580

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4582
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fix_up_fall_thru_edges() unnamed_addr #4 !dbg !4583 {
entry:
  %e54 = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !4590, metadata !DIExpression()), !dbg !4616
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4617
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4617
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4617
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !4617
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4617
  %3 = bitcast %struct.edge_def** %e54 to i8*, !dbg !4618
  %4 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4618
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4619
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4619
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4619
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4621
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4621
  br label %for.cond, !dbg !4617

for.cond:                                         ; preds = %for.inc164, %entry
  %10 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre4, %for.inc164 ], !dbg !4623
  %cond_jump.0 = phi %struct.edge_def* [ null, %entry ], [ %cond_jump.7, %for.inc164 ], !dbg !4616
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %cur_bb.0, %for.inc164 ]
  %cur_bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4624
  %cur_bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %cur_bb.0.in, align 8, !dbg !4624
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %cur_bb.0, metadata !4585, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond_jump.0, metadata !4590, metadata !DIExpression()), !dbg !4616
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !4623
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4623
  %cmp = icmp eq %struct.basic_block_def* %cur_bb.0, %11, !dbg !4623
  br i1 %cmp, label %for.end166, label %for.body, !dbg !4617

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !4589, metadata !DIExpression()), !dbg !4616
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cur_bb.0, i64 0, i32 1, !dbg !4625
  %12 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4625
  %tobool = icmp eq %struct.VEC_edge_gc* %12, null, !dbg !4625
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4625

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %12, i64 0, i32 0, !dbg !4625
  br label %cond.end, !dbg !4625

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !4625
  %call = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !4625
  %cmp4 = icmp eq i32 %call, 0, !dbg !4627
  br i1 %cmp4, label %if.end, label %if.then, !dbg !4628

if.then:                                          ; preds = %cond.end
  %13 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4629
  %tobool6 = icmp eq %struct.VEC_edge_gc* %13, null, !dbg !4629
  br i1 %tobool6, label %cond.end11, label %cond.true7, !dbg !4629

cond.true7:                                       ; preds = %if.then
  %base9 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %13, i64 0, i32 0, !dbg !4629
  br label %cond.end11, !dbg !4629

cond.end11:                                       ; preds = %if.then, %cond.true7
  %cond12 = phi %struct.VEC_edge_base* [ %base9, %cond.true7 ], [ null, %if.then ], !dbg !4629
  %call13 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond12, i32 0) #8, !dbg !4629
  call void @llvm.dbg.value(metadata %struct.edge_def* %call13, metadata !4587, metadata !DIExpression()), !dbg !4616
  br label %if.end, !dbg !4630

if.end:                                           ; preds = %cond.end, %cond.end11
  %succ1.0 = phi %struct.edge_def* [ %call13, %cond.end11 ], [ null, %cond.end ], !dbg !4631
  call void @llvm.dbg.value(metadata %struct.edge_def* %succ1.0, metadata !4587, metadata !DIExpression()), !dbg !4616
  %14 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4632
  %tobool15 = icmp eq %struct.VEC_edge_gc* %14, null, !dbg !4632
  br i1 %tobool15, label %cond.end20, label %cond.true16, !dbg !4632

cond.true16:                                      ; preds = %if.end
  %base18 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %14, i64 0, i32 0, !dbg !4632
  br label %cond.end20, !dbg !4632

cond.end20:                                       ; preds = %if.end, %cond.true16
  %cond21 = phi %struct.VEC_edge_base* [ %base18, %cond.true16 ], [ null, %if.end ], !dbg !4632
  %call22 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond21) #8, !dbg !4632
  %cmp23 = icmp ugt i32 %call22, 1, !dbg !4634
  br i1 %cmp23, label %if.then24, label %if.end35, !dbg !4635

if.then24:                                        ; preds = %cond.end20
  %15 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4636
  %tobool26 = icmp eq %struct.VEC_edge_gc* %15, null, !dbg !4636
  br i1 %tobool26, label %cond.end31, label %cond.true27, !dbg !4636

cond.true27:                                      ; preds = %if.then24
  %base29 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %15, i64 0, i32 0, !dbg !4636
  br label %cond.end31, !dbg !4636

cond.end31:                                       ; preds = %if.then24, %cond.true27
  %cond32 = phi %struct.VEC_edge_base* [ %base29, %cond.true27 ], [ null, %if.then24 ], !dbg !4636
  %call33 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond32, i32 1) #8, !dbg !4636
  call void @llvm.dbg.value(metadata %struct.edge_def* %call33, metadata !4588, metadata !DIExpression()), !dbg !4616
  br label %if.end35, !dbg !4637

if.end35:                                         ; preds = %cond.end20, %cond.end31
  %succ2.0 = phi %struct.edge_def* [ %call33, %cond.end31 ], [ null, %cond.end20 ], !dbg !4638
  call void @llvm.dbg.value(metadata %struct.edge_def* %succ2.0, metadata !4588, metadata !DIExpression()), !dbg !4616
  %tobool36 = icmp eq %struct.edge_def* %succ1.0, null, !dbg !4639
  br i1 %tobool36, label %if.else39, label %land.lhs.true, !dbg !4640

land.lhs.true:                                    ; preds = %if.end35
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %succ1.0, i64 0, i32 7, !dbg !4641
  %16 = load i32, i32* %flags, align 8, !dbg !4641
  %and = and i32 %16, 1, !dbg !4642
  %tobool37 = icmp eq i32 %and, 0, !dbg !4642
  br i1 %tobool37, label %if.else39, label %if.end68, !dbg !4643

if.else39:                                        ; preds = %land.lhs.true, %if.end35
  %tobool40 = icmp eq %struct.edge_def* %succ2.0, null, !dbg !4644
  br i1 %tobool40, label %if.else46, label %land.lhs.true41, !dbg !4645

land.lhs.true41:                                  ; preds = %if.else39
  %flags42 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %succ2.0, i64 0, i32 7, !dbg !4646
  %17 = load i32, i32* %flags42, align 8, !dbg !4646
  %and43 = and i32 %17, 1, !dbg !4647
  %tobool44 = icmp eq i32 %and43, 0, !dbg !4647
  br i1 %tobool44, label %if.else46, label %if.end68, !dbg !4648

if.else46:                                        ; preds = %land.lhs.true41, %if.else39
  br i1 %tobool36, label %if.end68, label %land.lhs.true50, !dbg !4649

land.lhs.true50:                                  ; preds = %if.else46
  %call51 = call zeroext i8 @block_ends_with_call_p(%struct.basic_block_def* %cur_bb.0) #6, !dbg !4650
  %tobool52 = icmp eq i8 %call51, 0, !dbg !4650
  br i1 %tobool52, label %if.end68, label %if.then53, !dbg !4651

if.then53:                                        ; preds = %land.lhs.true50
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !4652
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4653
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !4654
  %call56 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4654
  %18 = extractvalue { i32, %struct.VEC_edge_gc** } %call56, 0, !dbg !4654
  store i32 %18, i32* %6, align 8, !dbg !4654
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call56, 1, !dbg !4654
  store %struct.VEC_edge_gc** %19, %struct.VEC_edge_gc*** %7, align 8, !dbg !4654
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !4654
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !4654
  br label %for.cond57, !dbg !4654

for.cond57:                                       ; preds = %for.inc, %if.then53
  %20 = load i32, i32* %8, align 8, !dbg !4655
  %21 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !4655
  call void @llvm.dbg.value(metadata %struct.edge_def** %e54, metadata !4597, metadata !DIExpression(DW_OP_deref)), !dbg !4618
  %call58 = call fastcc zeroext i8 @ei_cond(i32 %20, %struct.VEC_edge_gc** %21, %struct.edge_def** nonnull %e54) #8, !dbg !4655
  %tobool59 = icmp eq i8 %call58, 0, !dbg !4654
  br i1 %tobool59, label %for.end.loopexit, label %for.body60, !dbg !4654

for.body60:                                       ; preds = %for.cond57
  %22 = load %struct.edge_def*, %struct.edge_def** %e54, align 8, !dbg !4656
  call void @llvm.dbg.value(metadata %struct.edge_def* %22, metadata !4597, metadata !DIExpression()), !dbg !4618
  %flags61 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i64 0, i32 7, !dbg !4658
  %23 = load i32, i32* %flags61, align 8, !dbg !4658
  %and62 = and i32 %23, 64, !dbg !4659
  %tobool63 = icmp eq i32 %and62, 0, !dbg !4659
  br i1 %tobool63, label %for.inc, label %if.then64, !dbg !4660

if.then64:                                        ; preds = %for.body60
  %.lcssa = phi %struct.edge_def* [ %22, %for.body60 ], !dbg !4656
  call void @llvm.dbg.value(metadata %struct.edge_def* %.lcssa, metadata !4597, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata %struct.edge_def* %.lcssa, metadata !4589, metadata !DIExpression()), !dbg !4616
  br label %for.end, !dbg !4661

for.inc:                                          ; preds = %for.body60
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4605, metadata !DIExpression(DW_OP_deref)), !dbg !4618
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4655
  br label %for.cond57, !dbg !4655, !llvm.loop !4663

for.end.loopexit:                                 ; preds = %for.cond57
  br label %for.end, !dbg !4665

for.end:                                          ; preds = %for.end.loopexit, %if.then64
  %fall_thru.0 = phi %struct.edge_def* [ %.lcssa, %if.then64 ], [ null, %for.end.loopexit ], !dbg !4666
  call void @llvm.dbg.value(metadata %struct.edge_def* %fall_thru.0, metadata !4589, metadata !DIExpression()), !dbg !4616
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !4665
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !4665
  br label %if.end68, !dbg !4667

if.end68:                                         ; preds = %land.lhs.true, %land.lhs.true41, %land.lhs.true50, %if.else46, %for.end
  %cond_jump.2 = phi %struct.edge_def* [ %succ2.0, %land.lhs.true ], [ %succ1.0, %land.lhs.true41 ], [ %cond_jump.0, %if.else46 ], [ %cond_jump.0, %for.end ], [ %cond_jump.0, %land.lhs.true50 ], !dbg !4668
  %fall_thru.3 = phi %struct.edge_def* [ %succ1.0, %land.lhs.true ], [ %succ2.0, %land.lhs.true41 ], [ null, %if.else46 ], [ %fall_thru.0, %for.end ], [ null, %land.lhs.true50 ], !dbg !4668
  call void @llvm.dbg.value(metadata %struct.edge_def* %fall_thru.3, metadata !4589, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond_jump.2, metadata !4590, metadata !DIExpression()), !dbg !4616
  %tobool69 = icmp eq %struct.edge_def* %fall_thru.3, null, !dbg !4669
  br i1 %tobool69, label %for.inc164, label %land.lhs.true70, !dbg !4670

land.lhs.true70:                                  ; preds = %if.end68
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %fall_thru.3, i64 0, i32 1, !dbg !4671
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4671
  %25 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4672
  %cfg72 = getelementptr inbounds %struct.function, %struct.function* %25, i64 0, i32 1, !dbg !4672
  %26 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg72, align 8, !dbg !4672
  %x_exit_block_ptr73 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %26, i64 0, i32 1, !dbg !4672
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr73, align 8, !dbg !4672
  %cmp74 = icmp eq %struct.basic_block_def* %24, %27, !dbg !4673
  br i1 %cmp74, label %for.inc164, label %if.then76, !dbg !4674

if.then76:                                        ; preds = %land.lhs.true70
  %flags77 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %fall_thru.3, i64 0, i32 7, !dbg !4675
  %28 = load i32, i32* %flags77, align 8, !dbg !4675
  %and78 = and i32 %28, 8192, !dbg !4676
  %tobool79 = icmp eq i32 %and78, 0, !dbg !4676
  br i1 %tobool79, label %for.inc164, label %if.then80, !dbg !4677

if.then80:                                        ; preds = %if.then76
  call void @llvm.dbg.value(metadata i8 1, metadata !4592, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i32 0, metadata !4593, metadata !DIExpression()), !dbg !4616
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cur_bb.0, i64 0, i32 7, !dbg !4678
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4678
  %29 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4678
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %29, i64 0, i32 1, !dbg !4678
  %30 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4678
  call void @llvm.dbg.value(metadata %struct.rtx_def* %30, metadata !4594, metadata !DIExpression()), !dbg !4616
  %tobool81 = icmp eq %struct.edge_def* %cond_jump.2, null, !dbg !4679
  br i1 %tobool81, label %if.end116, label %if.then82, !dbg !4681

if.then82:                                        ; preds = %if.then80
  %flags83 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond_jump.2, i64 0, i32 7, !dbg !4682
  %31 = load i32, i32* %flags83, align 8, !dbg !4682
  %and84 = lshr i32 %31, 13, !dbg !4685
  %32 = trunc i32 %and84 to i8, !dbg !4685
  %33 = and i8 %32, 1, !dbg !4685
  call void @llvm.dbg.value(metadata i8 %33, metadata !4592, metadata !DIExpression()), !dbg !4616
  %tobool88 = icmp eq i8 %33, 0, !dbg !4686
  br i1 %tobool88, label %land.lhs.true89, label %if.end116, !dbg !4688

land.lhs.true89:                                  ; preds = %if.then82
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cur_bb.0, i64 0, i32 2, !dbg !4689
  %34 = load i8*, i8** %aux, align 8, !dbg !4689
  %dest90 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond_jump.2, i64 0, i32 1, !dbg !4690
  %35 = bitcast %struct.basic_block_def** %dest90 to i8**, !dbg !4690
  %36 = load i8*, i8** %35, align 8, !dbg !4690
  %cmp91 = icmp eq i8* %34, %36, !dbg !4691
  br i1 %cmp91, label %if.then93, label %if.end116, !dbg !4692

if.then93:                                        ; preds = %land.lhs.true89
  %call95 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %24) #6, !dbg !4693
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call95, metadata !4595, metadata !DIExpression()), !dbg !4616
  %tobool96 = icmp eq %struct.rtx_def* %30, null, !dbg !4695
  br i1 %tobool96, label %if.end104, label %land.lhs.true97, !dbg !4697

land.lhs.true97:                                  ; preds = %if.then93
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i64 0, i32 0, !dbg !4698
  %bf.load = load i32, i32* %37, align 8, !dbg !4698
  %bf.clear = and i32 %bf.load, 65535, !dbg !4698
  %cmp98 = icmp eq i32 %bf.clear, 9, !dbg !4698
  %tobool101 = icmp ne %struct.rtx_def* %call95, null, !dbg !4699
  %or.cond1 = and i1 %cmp98, %tobool101, !dbg !4700
  br i1 %or.cond1, label %if.then102, label %if.end104, !dbg !4700

if.then102:                                       ; preds = %land.lhs.true97
  %call103 = call i32 @invert_jump(%struct.rtx_def* nonnull %30, %struct.rtx_def* nonnull %call95, i32 0) #6, !dbg !4701
  call void @llvm.dbg.value(metadata i32 %call103, metadata !4593, metadata !DIExpression()), !dbg !4616
  br label %if.end104, !dbg !4702

if.end104:                                        ; preds = %if.then93, %if.then102, %land.lhs.true97
  %invert_worked.0 = phi i32 [ %call103, %if.then102 ], [ 0, %land.lhs.true97 ], [ 0, %if.then93 ], !dbg !4703
  call void @llvm.dbg.value(metadata i32 %invert_worked.0, metadata !4593, metadata !DIExpression()), !dbg !4616
  %tobool105 = icmp eq i32 %invert_worked.0, 0, !dbg !4704
  br i1 %tobool105, label %if.end116, label %if.then106, !dbg !4706

if.then106:                                       ; preds = %if.end104
  %38 = load i32, i32* %flags77, align 8, !dbg !4707
  %and108 = and i32 %38, -2, !dbg !4707
  store i32 %and108, i32* %flags77, align 8, !dbg !4707
  %39 = load i32, i32* %flags83, align 8, !dbg !4709
  %or = or i32 %39, 1, !dbg !4709
  store i32 %or, i32* %flags83, align 8, !dbg !4709
  call void @update_br_prob_note(%struct.basic_block_def* %cur_bb.0) #6, !dbg !4710
  call void @llvm.dbg.value(metadata %struct.edge_def* %fall_thru.3, metadata !4591, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond_jump.2, metadata !4589, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata %struct.edge_def* %fall_thru.3, metadata !4590, metadata !DIExpression()), !dbg !4616
  %40 = load i32, i32* %flags77, align 8, !dbg !4711
  %or111 = or i32 %40, 8192, !dbg !4711
  store i32 %or111, i32* %flags77, align 8, !dbg !4711
  %41 = load i32, i32* %flags83, align 8, !dbg !4712
  %and113 = and i32 %41, -8193, !dbg !4712
  store i32 %and113, i32* %flags83, align 8, !dbg !4712
  br label %if.end116, !dbg !4713

if.end116:                                        ; preds = %if.end104, %if.then82, %if.then80, %land.lhs.true89, %if.then106
  %cond_jump_crosses.1 = phi i8 [ 1, %if.then80 ], [ 0, %if.end104 ], [ 0, %if.then106 ], [ 0, %land.lhs.true89 ], [ %33, %if.then82 ], !dbg !4714
  %invert_worked.2 = phi i32 [ 0, %if.then80 ], [ 0, %if.end104 ], [ %invert_worked.0, %if.then106 ], [ 0, %land.lhs.true89 ], [ 0, %if.then82 ], !dbg !4715
  %cond_jump.5 = phi %struct.edge_def* [ null, %if.then80 ], [ %cond_jump.2, %if.end104 ], [ %fall_thru.3, %if.then106 ], [ %cond_jump.2, %land.lhs.true89 ], [ %cond_jump.2, %if.then82 ], !dbg !4716
  %fall_thru.6 = phi %struct.edge_def* [ %fall_thru.3, %if.then80 ], [ %fall_thru.3, %if.end104 ], [ %cond_jump.2, %if.then106 ], [ %fall_thru.3, %land.lhs.true89 ], [ %fall_thru.3, %if.then82 ], !dbg !4718
  call void @llvm.dbg.value(metadata %struct.edge_def* %fall_thru.6, metadata !4589, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond_jump.5, metadata !4590, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i32 %invert_worked.2, metadata !4593, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.value(metadata i8 %cond_jump_crosses.1, metadata !4592, metadata !DIExpression()), !dbg !4616
  %tobool118 = icmp eq i8 %cond_jump_crosses.1, 0, !dbg !4719
  %tobool119 = icmp ne i32 %invert_worked.2, 0, !dbg !4720
  %or.cond2 = and i1 %tobool118, %tobool119, !dbg !4721
  br i1 %or.cond2, label %for.inc164, label %if.then120, !dbg !4721

if.then120:                                       ; preds = %if.end116
  %flags121 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %fall_thru.6, i64 0, i32 7, !dbg !4722
  %42 = load i32, i32* %flags121, align 8, !dbg !4723
  %and122 = and i32 %42, -8193, !dbg !4723
  store i32 %and122, i32* %flags121, align 8, !dbg !4723
  %call123 = call %struct.basic_block_def* @force_nonfallthru(%struct.edge_def* %fall_thru.6) #6, !dbg !4724
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call123, metadata !4586, metadata !DIExpression()), !dbg !4616
  %tobool124 = icmp eq %struct.basic_block_def* %call123, null, !dbg !4725
  br i1 %tobool124, label %if.else138, label %if.then125, !dbg !4726

if.then125:                                       ; preds = %if.then120
  %aux126 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cur_bb.0, i64 0, i32 2, !dbg !4727
  %43 = bitcast i8** %aux126 to i64*, !dbg !4727
  %44 = load i64, i64* %43, align 8, !dbg !4727
  %aux127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call123, i64 0, i32 2, !dbg !4728
  %45 = bitcast i8** %aux127 to i64*, !dbg !4729
  store i64 %44, i64* %45, align 8, !dbg !4729
  %46 = bitcast i8** %aux126 to %struct.basic_block_def**, !dbg !4730
  store %struct.basic_block_def* %call123, %struct.basic_block_def** %46, align 8, !dbg !4730
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call123, metadata !4606, metadata !DIExpression()), !dbg !4731
  %flags129 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call123, i64 0, i32 13, !dbg !4732
  %47 = load i32, i32* %flags129, align 8, !dbg !4732
  %and130 = and i32 %47, -97, !dbg !4732
  %flags131 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %cur_bb.0, i64 0, i32 13, !dbg !4732
  %48 = load i32, i32* %flags131, align 8, !dbg !4732
  %and132 = and i32 %48, 96, !dbg !4732
  %or133 = or i32 %and130, %and132, !dbg !4732
  store i32 %or133, i32* %flags129, align 8, !dbg !4732
  %call135 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* nonnull %call123) #8, !dbg !4733
  %flags136 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call135, i64 0, i32 7, !dbg !4734
  %49 = load i32, i32* %flags136, align 8, !dbg !4735
  %or137 = or i32 %49, 8192, !dbg !4735
  store i32 %or137, i32* %flags136, align 8, !dbg !4735
  br label %if.end141, !dbg !4736

if.else138:                                       ; preds = %if.then120
  %50 = load i32, i32* %flags121, align 8, !dbg !4737
  %or140 = or i32 %50, 8192, !dbg !4737
  store i32 %or140, i32* %flags121, align 8, !dbg !4737
  br label %if.end141

if.end141:                                        ; preds = %if.else138, %if.then125
  br i1 %tobool124, label %if.else151, label %if.then143, !dbg !4739

if.then143:                                       ; preds = %if.end141
  %il144 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call123, i64 0, i32 7, !dbg !4740
  %rtl145 = bitcast %union.basic_block_il_dependent* %il144 to %struct.rtl_bb_info**, !dbg !4740
  %51 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl145, align 8, !dbg !4740
  %end_146 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %51, i64 0, i32 1, !dbg !4740
  %52 = load %struct.rtx_def*, %struct.rtx_def** %end_146, align 8, !dbg !4740
  %call147 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %52) #6, !dbg !4743
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call147, metadata !4596, metadata !DIExpression()), !dbg !4616
  %call148 = call %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def* %call147, %struct.rtx_def* %call147) #6, !dbg !4744
  %53 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl145, align 8, !dbg !4745
  %footer = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %53, i64 0, i32 3, !dbg !4746
  store %struct.rtx_def* %call148, %struct.rtx_def** %footer, align 8, !dbg !4747
  br label %for.inc164, !dbg !4748

if.else151:                                       ; preds = %if.end141
  %54 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4749
  %end_154 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %54, i64 0, i32 1, !dbg !4749
  %55 = load %struct.rtx_def*, %struct.rtx_def** %end_154, align 8, !dbg !4749
  %call155 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %55) #6, !dbg !4751
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call155, metadata !4596, metadata !DIExpression()), !dbg !4616
  %call156 = call %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def* %call155, %struct.rtx_def* %call155) #6, !dbg !4752
  %56 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4753
  %footer159 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %56, i64 0, i32 3, !dbg !4754
  store %struct.rtx_def* %call156, %struct.rtx_def** %footer159, align 8, !dbg !4755
  br label %for.inc164

for.inc164:                                       ; preds = %if.then76, %land.lhs.true70, %if.end68, %if.end116, %if.else151, %if.then143
  %cond_jump.7 = phi %struct.edge_def* [ %cond_jump.2, %land.lhs.true70 ], [ %cond_jump.2, %if.end68 ], [ %cond_jump.2, %if.then76 ], [ %cond_jump.5, %if.then143 ], [ %cond_jump.5, %if.else151 ], [ %cond_jump.5, %if.end116 ], !dbg !4716
  call void @llvm.dbg.value(metadata %struct.edge_def* %cond_jump.7, metadata !4590, metadata !DIExpression()), !dbg !4616
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4623
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !4756
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !4623
  br label %for.cond, !dbg !4623, !llvm.loop !4757

for.end166:                                       ; preds = %for.cond
  ret void, !dbg !4759
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_reg_crossing_jump_notes() unnamed_addr #4 !dbg !4760 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4765
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4765
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4766
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4766
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4767
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !4767
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4767
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !4767
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4767
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4769
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4769
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4769
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4772
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4772
  br label %for.cond, !dbg !4767

for.cond:                                         ; preds = %for.inc12, %entry
  %10 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre1, %for.inc12 ], !dbg !4774
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.inc12 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4775
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4775
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4762, metadata !DIExpression()), !dbg !4776
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !4774
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4774
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !4774
  br i1 %cmp, label %for.end14, label %for.body, !dbg !4767

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !4777
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !4777
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !4777
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !4777
  store i32 %12, i32* %6, align 8, !dbg !4777
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !4777
  store %struct.VEC_edge_gc** %13, %struct.VEC_edge_gc*** %7, align 8, !dbg !4777
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !4777
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !4777
  br label %for.cond3, !dbg !4777

for.cond3:                                        ; preds = %for.inc, %for.body
  %14 = load i32, i32* %8, align 8, !dbg !4778
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !4778
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4763, metadata !DIExpression(DW_OP_deref)), !dbg !4776
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #8, !dbg !4778
  %tobool = icmp eq i8 %call4, 0, !dbg !4777
  br i1 %tobool, label %for.inc12, label %for.body5, !dbg !4777

for.body5:                                        ; preds = %for.cond3
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4779
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !4763, metadata !DIExpression()), !dbg !4776
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 7, !dbg !4781
  %17 = load i32, i32* %flags, align 8, !dbg !4781
  %and = and i32 %17, 8192, !dbg !4782
  %tobool6 = icmp eq i32 %and, 0, !dbg !4782
  br i1 %tobool6, label %for.inc, label %land.lhs.true, !dbg !4783

land.lhs.true:                                    ; preds = %for.body5
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !4763, metadata !DIExpression()), !dbg !4776
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 0, !dbg !4784
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4784
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i64 0, i32 7, !dbg !4784
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4784
  %19 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4784
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %19, i64 0, i32 1, !dbg !4784
  %20 = bitcast %struct.rtx_def** %end_ to i32**, !dbg !4784
  %21 = load i32*, i32** %20, align 8, !dbg !4784
  %bf.load = load i32, i32* %21, align 8, !dbg !4784
  %bf.clear = and i32 %bf.load, 65535, !dbg !4784
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !4784
  br i1 %cmp7, label %if.then, label %for.inc, !dbg !4785

if.then:                                          ; preds = %land.lhs.true
  %22 = bitcast i32* %21 to %struct.rtx_def*, !dbg !4785
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !4763, metadata !DIExpression()), !dbg !4776
  call void @add_reg_note(%struct.rtx_def* %22, i32 29, %struct.rtx_def* null) #6, !dbg !4786
  br label %for.inc, !dbg !4786

for.inc:                                          ; preds = %for.body5, %land.lhs.true, %if.then
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4764, metadata !DIExpression(DW_OP_deref)), !dbg !4776
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !4778
  br label %for.cond3, !dbg !4778, !llvm.loop !4787

for.inc12:                                        ; preds = %for.cond3
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4774
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !4789
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !4774
  br label %for.cond, !dbg !4774, !llvm.loop !4790

for.end14:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !4792
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4792
  ret void, !dbg !4792
}

declare dso_local %struct.rtx_def* @block_label(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @unlink_insn_chain(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @invert_jump(%struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local void @update_br_prob_note(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @force_nonfallthru(%struct.edge_def*) local_unnamed_addr #1

declare dso_local void @add_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

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
!llvm.module.flags = !{!1870, !1871, !1872}
!llvm.ident = !{!1873}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "uncond_jump_length", scope: !2, file: !3, line: 114, type: !706, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !703, globals: !1822, nameTableKind: None)
!3 = !DIFile(filename: "bb-reorder.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183, !377, !384, !560}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !135, line: 363, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !135, line: 355, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !146, line: 474, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!147 = !{!148, !149}
!148 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !151, line: 280, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!153 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!158 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !151, line: 1817, baseType: !7, size: 32, elements: !170)
!170 = !{!171, !172, !173, !174, !175}
!171 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !151, line: 1805, baseType: !7, size: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !151, line: 39, baseType: !7, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!185 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!189 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!190 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!191 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!192 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!193 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!194 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!195 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!196 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!197 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!198 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!199 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!200 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!201 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!202 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!203 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!204 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!205 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!206 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!207 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!208 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!209 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!210 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!211 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!212 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!213 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!214 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!215 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!216 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!217 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!218 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!219 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!220 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!221 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!222 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!223 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!224 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!225 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!226 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!227 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!228 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!229 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!230 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!231 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!232 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!233 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!234 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!235 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!236 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!237 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!238 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!239 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!240 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!241 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!242 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!243 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!244 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!245 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!246 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!247 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!248 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!249 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!250 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!251 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!252 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!253 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!254 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!255 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!256 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!257 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!258 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!259 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!260 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!261 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!262 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!263 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!264 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!265 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!266 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!267 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!268 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!269 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!270 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!271 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!272 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!273 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!274 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!275 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!276 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!277 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!278 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!279 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!280 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!281 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!282 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!283 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!284 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!285 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!286 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!287 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!288 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!289 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!290 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!291 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!292 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!293 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!294 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!295 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!296 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!297 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!298 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!299 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!300 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!301 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!302 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!303 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!304 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!305 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!306 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!307 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!308 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!309 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!310 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!311 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!312 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!313 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!314 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!315 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!316 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!317 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!318 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!319 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!320 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!321 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!322 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!323 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!324 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!325 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!326 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!327 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!328 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!329 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!330 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!331 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!332 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!333 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!334 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!335 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!336 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!337 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!349 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!350 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!351 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!352 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!353 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!354 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!355 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!356 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!359 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!370 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!371 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!372 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!373 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!374 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!375 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!376 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !378, line: 104, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383}
!380 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !385, line: 74, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!387 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!391 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!392 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!393 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!394 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!395 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!396 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!397 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!398 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!399 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!400 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!401 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!402 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!403 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!404 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!405 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!406 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!407 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!408 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!409 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!410 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!411 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!412 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!413 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!414 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!415 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!416 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!417 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!418 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!419 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!420 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!421 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!422 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!423 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!424 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!425 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!426 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!427 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!428 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!429 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!430 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!431 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!432 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!433 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!434 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!435 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!436 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!437 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!438 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!439 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!440 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!441 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!442 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!443 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!444 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!445 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!446 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!447 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!448 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!449 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!450 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!451 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!452 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!453 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!454 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!455 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!456 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!457 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!458 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!459 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!460 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!461 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!462 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!463 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!464 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!465 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!466 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!467 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!468 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!469 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!470 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!471 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!472 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!473 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!474 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!475 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!476 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!477 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!478 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!479 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!480 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!481 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!482 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!483 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!484 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!485 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!486 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!487 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!488 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!489 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!490 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!491 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!492 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!493 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!494 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!495 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!496 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!497 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!498 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!499 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!500 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!501 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!502 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!503 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!504 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!505 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!506 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!507 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!508 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!509 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!510 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!511 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!512 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!513 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!514 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!515 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!516 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!517 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!518 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!519 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!520 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!521 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!522 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!523 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!524 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!525 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!526 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!527 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!528 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!529 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!530 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!531 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!532 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!533 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!534 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!535 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!536 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!537 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!538 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!539 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!540 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!541 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!542 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!543 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!544 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!545 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!546 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!547 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!548 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!549 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!550 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!551 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!552 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!553 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!554 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!555 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!556 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!557 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!558 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!559 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !561, line: 45, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!563 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!569 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!570 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!571 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!572 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!573 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!574 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!575 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!576 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!577 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!578 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!579 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!580 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!581 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!582 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!583 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!584 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!585 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!586 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!587 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!588 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!589 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!590 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!591 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!592 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!593 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!594 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!595 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!596 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!597 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!598 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!599 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!600 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!601 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!602 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!603 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!604 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!605 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!606 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!607 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!608 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!609 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!610 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!611 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!612 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!613 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!614 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!615 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!616 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!617 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!618 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!619 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!620 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!621 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!622 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!623 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!624 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!625 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!626 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!627 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!628 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!629 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!630 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!631 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!632 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!633 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!634 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!635 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!636 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!637 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!638 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!639 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!640 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!641 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!642 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!643 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!644 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!645 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!646 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!647 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!648 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!649 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!650 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!651 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!652 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!653 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!654 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!655 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!656 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!657 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!658 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!659 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!660 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!661 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!662 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!663 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!664 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!665 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!666 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!667 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!668 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!669 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!670 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!671 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!672 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!673 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!674 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!675 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!676 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!677 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!678 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!679 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!680 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!681 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!682 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!683 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!684 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!685 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!686 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!687 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!688 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!689 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!690 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!691 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!692 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!693 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!694 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!695 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!696 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!697 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!698 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!699 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!700 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!701 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!702 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!703 = !{!704, !705, !706, !707, !710, !711, !713, !747, !751, !740, !560, !783, !1820, !896, !1821}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!706 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "bbro_basic_block_data", file: !3, line: 133, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbro_basic_block_data_def", file: !3, line: 117, size: 256, elements: !716)
!716 = !{!717, !718, !719, !720, !745}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "start_of_trace", scope: !715, file: !3, line: 120, baseType: !706, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "end_of_trace", scope: !715, file: !3, line: 123, baseType: !706, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "in_trace", scope: !715, file: !3, line: 126, baseType: !706, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !715, file: !3, line: 129, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheap_t", file: !722, line: 57, baseType: !723)
!722 = !DIFile(filename: "./include/fibheap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibheap", file: !722, line: 52, size: 192, elements: !725)
!725 = !{!726, !730, !744}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !724, file: !722, line: 54, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !728, line: 46, baseType: !729)
!728 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!729 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !724, file: !722, line: 55, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fibnode", file: !722, line: 59, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !741, !742, !743}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !732, file: !722, line: 61, baseType: !731, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !732, file: !722, line: 62, baseType: !731, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !732, file: !722, line: 63, baseType: !731, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !732, file: !722, line: 64, baseType: !731, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !732, file: !722, line: 65, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibheapkey_t", file: !722, line: 50, baseType: !740)
!740 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !732, file: !722, line: 66, baseType: !710, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "degree", scope: !732, file: !722, line: 71, baseType: !7, size: 31, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !732, file: !722, line: 72, baseType: !7, size: 1, offset: 415, flags: DIFlagBitField, extraData: i64 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !724, file: !722, line: 56, baseType: !731, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !3, line: 132, baseType: !746, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "fibnode_t", file: !722, line: 74, baseType: !731)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace", file: !3, line: 149, size: 192, elements: !749)
!749 = !{!750, !1817, !1818, !1819}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !748, file: !3, line: 152, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !752, line: 111, baseType: !753)
!752 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !755)
!755 = !{!756, !1782, !1783, !1784, !1787, !1791, !1792, !1793, !1811, !1812, !1813, !1814, !1815, !1816}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !754, file: !135, line: 219, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !759, file: !135, line: 151, baseType: !762, size: 128)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !763, file: !135, line: 150, baseType: !7, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !763, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !763, file: !135, line: 150, baseType: !768, size: 64, offset: 64)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 64, elements: !817)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !752, line: 108, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !772)
!772 = !{!773, !774, !775, !1774, !1775, !1776, !1777, !1778, !1779, !1780}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !771, file: !135, line: 124, baseType: !753, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !771, file: !135, line: 125, baseType: !753, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !771, file: !135, line: 131, baseType: !776, size: 64, offset: 128)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !777)
!777 = !{!778, !782}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !776, file: !135, line: 129, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !752, line: 66, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !752, line: 65, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !776, file: !135, line: 130, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !752, line: 50, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !561, line: 240, size: 384, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !785, file: !561, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !785, file: !561, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !785, file: !561, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !785, file: !561, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !785, file: !561, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !785, file: !561, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !785, file: !561, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !785, file: !561, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !785, file: !561, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !785, file: !561, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !785, file: !561, line: 321, baseType: !798, size: 320, offset: 64)
!798 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !561, line: 315, size: 320, elements: !799)
!799 = !{!800, !1709, !1711, !1772, !1773}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !798, file: !561, line: 316, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 64, elements: !817)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !561, line: 183, baseType: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !561, line: 166, size: 64, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !819, !820, !832, !835, !895, !1687, !1688, !1699, !1706}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !803, file: !561, line: 168, baseType: !706, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !803, file: !561, line: 169, baseType: !7, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !803, file: !561, line: 170, baseType: !711, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !803, file: !561, line: 171, baseType: !783, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !803, file: !561, line: 172, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !752, line: 53, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !561, line: 359, size: 128, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !812, file: !561, line: 360, baseType: !706, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !812, file: !561, line: 361, baseType: !816, size: 64, offset: 64)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 64, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 1)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !803, file: !561, line: 173, baseType: !5, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !803, file: !561, line: 174, baseType: !821, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !561, line: 133, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 115, size: 32, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829, !830, !831}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !822, file: !561, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !822, file: !561, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !822, file: !561, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !822, file: !561, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !822, file: !561, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !822, file: !561, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !822, file: !561, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !822, file: !561, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !803, file: !561, line: 175, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !561, line: 175, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !803, file: !561, line: 176, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !838, line: 75, size: 256, elements: !839)
!838 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!839 = !{!840, !854, !855, !856}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !837, file: !838, line: 76, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !838, line: 68, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !838, line: 63, size: 320, elements: !844)
!844 = !{!845, !847, !848, !849}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !843, file: !838, line: 64, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !843, file: !838, line: 65, baseType: !846, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !843, file: !838, line: 66, baseType: !7, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !843, file: !838, line: 67, baseType: !850, size: 128, offset: 192)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !851, size: 128, elements: !852)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !838, line: 29, baseType: !729)
!852 = !{!853}
!853 = !DISubrange(count: 2)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !837, file: !838, line: 77, baseType: !841, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !837, file: !838, line: 78, baseType: !7, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !837, file: !838, line: 79, baseType: !857, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !838, line: 49, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !838, line: 45, size: 832, elements: !860)
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !859, file: !838, line: 46, baseType: !846, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !859, file: !838, line: 47, baseType: !836, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !859, file: !838, line: 48, baseType: !864, size: 704, offset: 128)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !865, line: 164, size: 704, elements: !866)
!865 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!866 = !{!867, !868, !878, !879, !880, !881, !882, !883, !887, !891, !892, !893, !894}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !864, file: !865, line: 166, baseType: !740, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !864, file: !865, line: 167, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !865, line: 157, size: 192, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !870, file: !865, line: 159, baseType: !708, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !870, file: !865, line: 160, baseType: !869, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !870, file: !865, line: 161, baseType: !875, size: 32, offset: 128)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 32, elements: !876)
!876 = !{!877}
!877 = !DISubrange(count: 4)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !864, file: !865, line: 168, baseType: !708, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !864, file: !865, line: 169, baseType: !708, size: 64, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !864, file: !865, line: 170, baseType: !708, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !864, file: !865, line: 171, baseType: !740, size: 64, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !864, file: !865, line: 172, baseType: !706, size: 32, offset: 384)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !864, file: !865, line: 176, baseType: !884, size: 64, offset: 448)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!869, !710, !740}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !864, file: !865, line: 177, baseType: !888, size: 64, offset: 512)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !710, !869}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !864, file: !865, line: 178, baseType: !710, size: 64, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !864, file: !865, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !864, file: !865, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !864, file: !865, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !803, file: !561, line: 177, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !752, line: 56, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !899)
!899 = !{!900, !933, !939, !950, !969, !980, !985, !992, !998, !1011, !1023, !1061, !1066, !1094, !1102, !1103, !1108, !1117, !1123, !1128, !1132, !1136, !1311, !1360, !1366, !1373, !1380, !1406, !1431, !1448, !1460, !1482, !1497, !1669}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !898, file: !151, line: 3372, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !902)
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !901, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !901, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !901, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !901, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !901, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !901, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !901, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !901, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !901, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !901, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !901, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !901, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !901, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !901, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !901, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !901, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !901, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !901, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !901, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !901, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !901, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !901, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !901, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !901, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !901, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !901, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !901, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !901, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !901, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !901, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !898, file: !151, line: 3373, baseType: !934, size: 192)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !934, file: !151, line: 403, baseType: !901, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !934, file: !151, line: 404, baseType: !896, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !934, file: !151, line: 405, baseType: !896, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !898, file: !151, line: 3374, baseType: !940, size: 320)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !940, file: !151, line: 1385, baseType: !934, size: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !940, file: !151, line: 1386, baseType: !944, size: 128, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !945, line: 58, baseType: !946)
!945 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !945, line: 54, size: 128, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !946, file: !945, line: 56, baseType: !729, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !946, file: !945, line: 57, baseType: !740, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !898, file: !151, line: 3375, baseType: !951, size: 256)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !951, file: !151, line: 1398, baseType: !934, size: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !951, file: !151, line: 1399, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !957, line: 52, size: 256, elements: !958)
!957 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!958 = !{!959, !960, !961, !962, !963, !964, !965}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !956, file: !957, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !956, file: !957, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !956, file: !957, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !956, file: !957, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !956, file: !957, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !956, file: !957, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !956, file: !957, line: 62, baseType: !966, size: 192, offset: 64)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 192, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 3)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !898, file: !151, line: 3376, baseType: !970, size: 256)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !970, file: !151, line: 1409, baseType: !934, size: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !970, file: !151, line: 1410, baseType: !974, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !976, line: 27, size: 192, elements: !977)
!976 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !975, file: !976, line: 29, baseType: !944, size: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !975, file: !976, line: 30, baseType: !5, size: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !898, file: !151, line: 3377, baseType: !981, size: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !981, file: !151, line: 1438, baseType: !934, size: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !981, file: !151, line: 1439, baseType: !896, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !898, file: !151, line: 3378, baseType: !986, size: 256)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !986, file: !151, line: 1419, baseType: !934, size: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !986, file: !151, line: 1420, baseType: !706, size: 32, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !986, file: !151, line: 1421, baseType: !991, size: 8, offset: 224)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 8, elements: !817)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !898, file: !151, line: 3379, baseType: !993, size: 320)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !993, file: !151, line: 1429, baseType: !934, size: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !993, file: !151, line: 1430, baseType: !896, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !993, file: !151, line: 1431, baseType: !896, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !898, file: !151, line: 3380, baseType: !999, size: 320)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !999, file: !151, line: 1461, baseType: !934, size: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !999, file: !151, line: 1462, baseType: !1003, size: 128, offset: 192)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1004, line: 31, size: 128, elements: !1005)
!1004 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1005 = !{!1006, !1009, !1010}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1003, file: !1004, line: 32, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1003, file: !1004, line: 33, baseType: !7, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1003, file: !1004, line: 34, baseType: !7, size: 32, offset: 96)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !898, file: !151, line: 3381, baseType: !1012, size: 384)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !1013)
!1013 = !{!1014, !1015, !1020, !1021, !1022}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1012, file: !151, line: 2508, baseType: !934, size: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1012, file: !151, line: 2509, baseType: !1016, size: 32, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1017, line: 58, baseType: !1018)
!1017 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1019, line: 44, baseType: !7)
!1019 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1012, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1012, file: !151, line: 2511, baseType: !896, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1012, file: !151, line: 2512, baseType: !896, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !898, file: !151, line: 3382, baseType: !1024, size: 896)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1024, file: !151, line: 2653, baseType: !1012, size: 384)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1024, file: !151, line: 2654, baseType: !896, size: 64, offset: 384)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1024, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1024, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1024, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1024, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1024, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1024, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1024, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1024, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1024, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1024, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1024, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1024, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1024, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1024, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1024, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1024, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1024, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1024, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1024, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1024, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1024, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1024, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1024, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1024, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1024, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1024, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1024, file: !151, line: 2705, baseType: !896, size: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1024, file: !151, line: 2706, baseType: !896, size: 64, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1024, file: !151, line: 2707, baseType: !896, size: 64, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1024, file: !151, line: 2708, baseType: !896, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1024, file: !151, line: 2711, baseType: !1059, size: 64, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !898, file: !151, line: 3383, baseType: !1062, size: 960)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1062, file: !151, line: 2757, baseType: !1024, size: 896)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1062, file: !151, line: 2758, baseType: !783, size: 64, offset: 896)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !898, file: !151, line: 3384, baseType: !1067, size: 1472)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !1068)
!1068 = !{!1069, !1090, !1091, !1092, !1093}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1067, file: !151, line: 3115, baseType: !1070, size: 1216)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1070, file: !151, line: 2985, baseType: !1062, size: 960)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1070, file: !151, line: 2986, baseType: !896, size: 64, offset: 960)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1070, file: !151, line: 2987, baseType: !896, size: 64, offset: 1024)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1070, file: !151, line: 2988, baseType: !896, size: 64, offset: 1088)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1070, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1070, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1070, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1070, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1070, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1070, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1070, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1070, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1070, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1070, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1070, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1070, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1070, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1070, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1067, file: !151, line: 3117, baseType: !896, size: 64, offset: 1216)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1067, file: !151, line: 3119, baseType: !896, size: 64, offset: 1280)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1067, file: !151, line: 3121, baseType: !896, size: 64, offset: 1344)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1067, file: !151, line: 3123, baseType: !896, size: 64, offset: 1408)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !898, file: !151, line: 3385, baseType: !1095, size: 1088)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1095, file: !151, line: 2875, baseType: !1062, size: 960)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1095, file: !151, line: 2876, baseType: !783, size: 64, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1095, file: !151, line: 2877, baseType: !1100, size: 64, offset: 1024)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !151, line: 2856, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !898, file: !151, line: 3386, baseType: !1070, size: 1216)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !898, file: !151, line: 3387, baseType: !1104, size: 1280)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1104, file: !151, line: 3094, baseType: !1070, size: 1216)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1104, file: !151, line: 3095, baseType: !1100, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !898, file: !151, line: 3388, baseType: !1109, size: 1216)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1109, file: !151, line: 2825, baseType: !1024, size: 896)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1109, file: !151, line: 2827, baseType: !896, size: 64, offset: 896)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1109, file: !151, line: 2828, baseType: !896, size: 64, offset: 960)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1109, file: !151, line: 2829, baseType: !896, size: 64, offset: 1024)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1109, file: !151, line: 2830, baseType: !896, size: 64, offset: 1088)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1109, file: !151, line: 2831, baseType: !896, size: 64, offset: 1152)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !898, file: !151, line: 3389, baseType: !1118, size: 1024)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !1119)
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1118, file: !151, line: 2851, baseType: !1062, size: 960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1118, file: !151, line: 2852, baseType: !706, size: 32, offset: 960)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1118, file: !151, line: 2853, baseType: !706, size: 32, offset: 992)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !898, file: !151, line: 3390, baseType: !1124, size: 1024)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1124, file: !151, line: 2858, baseType: !1062, size: 960)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1124, file: !151, line: 2859, baseType: !1100, size: 64, offset: 960)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !898, file: !151, line: 3391, baseType: !1129, size: 960)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1129, file: !151, line: 2863, baseType: !1062, size: 960)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !898, file: !151, line: 3392, baseType: !1133, size: 1472)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !1134)
!1134 = !{!1135}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1133, file: !151, line: 3305, baseType: !1067, size: 1472)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !898, file: !151, line: 3393, baseType: !1137, size: 1792)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !1138)
!1138 = !{!1139, !1140, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1137, file: !151, line: 3249, baseType: !1067, size: 1472)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1137, file: !151, line: 3251, baseType: !1141, size: 64, offset: 1472)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1143, line: 463, size: 1152, elements: !1144)
!1143 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1144 = !{!1145, !1148, !1178, !1179, !1182, !1185, !1235, !1236, !1237, !1238, !1239, !1263, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1142, file: !1143, line: 464, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1143, line: 464, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1142, file: !1143, line: 467, baseType: !1149, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1167, !1168, !1169, !1170, !1171, !1172, !1174, !1176, !1177}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1150, file: !135, line: 377, baseType: !751, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1150, file: !135, line: 378, baseType: !751, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1150, file: !135, line: 381, baseType: !1155, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !1158)
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1157, file: !135, line: 282, baseType: !1160, size: 128)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1161, file: !135, line: 281, baseType: !7, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1161, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1161, file: !135, line: 281, baseType: !1166, size: 64, offset: 64)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 64, elements: !817)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1150, file: !135, line: 384, baseType: !706, size: 32, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1150, file: !135, line: 387, baseType: !706, size: 32, offset: 224)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1150, file: !135, line: 390, baseType: !706, size: 32, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1150, file: !135, line: 394, baseType: !1155, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1150, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1150, file: !135, line: 399, baseType: !1173, size: 64, offset: 416)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !852)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1150, file: !135, line: 402, baseType: !1175, size: 64, offset: 480)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !852)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1150, file: !135, line: 406, baseType: !706, size: 32, offset: 544)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1150, file: !135, line: 409, baseType: !706, size: 32, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1142, file: !1143, line: 470, baseType: !780, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1142, file: !1143, line: 473, baseType: !1180, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1143, line: 166, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1142, file: !1143, line: 476, baseType: !1183, size: 64, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1143, line: 476, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1142, file: !1143, line: 479, baseType: !1186, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1187, line: 144, baseType: !1188)
!1187 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1187, line: 100, size: 896, elements: !1190)
!1190 = !{!1191, !1199, !1204, !1209, !1211, !1212, !1213, !1214, !1215, !1216, !1221, !1223, !1224, !1229, !1234}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1189, file: !1187, line: 102, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1187, line: 52, baseType: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1187, line: 47, baseType: !7)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1189, file: !1187, line: 105, baseType: !1200, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1187, line: 59, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!706, !1197, !1197}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1189, file: !1187, line: 108, baseType: !1205, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1187, line: 63, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{null, !710}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1189, file: !1187, line: 111, baseType: !1210, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1189, file: !1187, line: 114, baseType: !727, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1189, file: !1187, line: 117, baseType: !727, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1189, file: !1187, line: 120, baseType: !727, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1189, file: !1187, line: 124, baseType: !7, size: 32, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1189, file: !1187, line: 128, baseType: !7, size: 32, offset: 480)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1189, file: !1187, line: 131, baseType: !1217, size: 64, offset: 512)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1187, line: 75, baseType: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!710, !727, !727}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1189, file: !1187, line: 132, baseType: !1222, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1187, line: 78, baseType: !1206)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1189, file: !1187, line: 135, baseType: !710, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1189, file: !1187, line: 136, baseType: !1225, size: 64, offset: 704)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1187, line: 82, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!710, !710, !727, !727}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1189, file: !1187, line: 137, baseType: !1230, size: 64, offset: 768)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1187, line: 83, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !710, !710}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1189, file: !1187, line: 141, baseType: !7, size: 32, offset: 832)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1142, file: !1143, line: 484, baseType: !896, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1142, file: !1143, line: 488, baseType: !896, size: 64, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1142, file: !1143, line: 493, baseType: !896, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1142, file: !1143, line: 496, baseType: !896, size: 64, offset: 576)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1142, file: !1143, line: 501, baseType: !1240, size: 64, offset: 640)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1242)
!1242 = !{!1243, !1246, !1247, !1248, !1249, !1251, !1252, !1257, !1258, !1259, !1260, !1261, !1262}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1241, file: !146, line: 2356, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1241, file: !146, line: 2357, baseType: !711, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1241, file: !146, line: 2358, baseType: !706, size: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1241, file: !146, line: 2359, baseType: !706, size: 32, offset: 160)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1241, file: !146, line: 2360, baseType: !1250, size: 128, offset: 192)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 128, elements: !876)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1241, file: !146, line: 2364, baseType: !706, size: 32, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1241, file: !146, line: 2367, baseType: !1253, size: 128, offset: 384)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1253, file: !146, line: 2351, baseType: !783, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1253, file: !146, line: 2352, baseType: !740, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1241, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1241, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1241, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1241, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1241, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1241, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1142, file: !1143, line: 504, baseType: !1264, size: 64, offset: 704)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1143, line: 504, flags: DIFlagFwdDecl)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1142, file: !1143, line: 507, baseType: !1186, size: 64, offset: 768)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1142, file: !1143, line: 510, baseType: !706, size: 32, offset: 832)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1142, file: !1143, line: 513, baseType: !706, size: 32, offset: 864)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1142, file: !1143, line: 516, baseType: !1016, size: 32, offset: 896)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1142, file: !1143, line: 519, baseType: !1016, size: 32, offset: 928)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1142, file: !1143, line: 522, baseType: !7, size: 32, offset: 960)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1142, file: !1143, line: 523, baseType: !7, size: 32, offset: 992)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1142, file: !1143, line: 528, baseType: !711, size: 64, offset: 1024)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1142, file: !1143, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1142, file: !1143, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1142, file: !1143, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1142, file: !1143, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1142, file: !1143, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1142, file: !1143, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1142, file: !1143, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1142, file: !1143, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1142, file: !1143, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1142, file: !1143, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1142, file: !1143, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1142, file: !1143, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1142, file: !1143, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1142, file: !1143, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1142, file: !1143, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1142, file: !1143, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1137, file: !151, line: 3254, baseType: !896, size: 64, offset: 1536)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1137, file: !151, line: 3257, baseType: !896, size: 64, offset: 1600)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1137, file: !151, line: 3258, baseType: !896, size: 64, offset: 1664)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1137, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1137, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1137, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1137, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1137, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1137, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1137, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1137, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1137, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1137, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1137, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1137, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1137, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1137, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1137, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1137, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1137, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1137, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !898, file: !151, line: 3394, baseType: !1312, size: 1344)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1339, !1340, !1341, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1312, file: !151, line: 2280, baseType: !934, size: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1312, file: !151, line: 2281, baseType: !896, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1312, file: !151, line: 2282, baseType: !896, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1312, file: !151, line: 2283, baseType: !896, size: 64, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1312, file: !151, line: 2284, baseType: !896, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1312, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1312, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1312, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1312, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1312, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1312, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1312, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1312, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1312, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1312, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1312, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1312, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1312, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1312, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1312, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1312, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1312, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1312, file: !151, line: 2306, baseType: !1337, size: 32, offset: 544)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1338, line: 31, baseType: !706)
!1338 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1312, file: !151, line: 2307, baseType: !896, size: 64, offset: 576)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1312, file: !151, line: 2308, baseType: !896, size: 64, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1312, file: !151, line: 2314, baseType: !1342, size: 64, offset: 704)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1343)
!1343 = !{!1344, !1345, !1346}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1342, file: !151, line: 2310, baseType: !706, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1342, file: !151, line: 2311, baseType: !711, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1342, file: !151, line: 2312, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1312, file: !151, line: 2315, baseType: !896, size: 64, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1312, file: !151, line: 2316, baseType: !896, size: 64, offset: 832)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1312, file: !151, line: 2317, baseType: !896, size: 64, offset: 896)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1312, file: !151, line: 2318, baseType: !896, size: 64, offset: 960)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1312, file: !151, line: 2319, baseType: !896, size: 64, offset: 1024)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1312, file: !151, line: 2320, baseType: !896, size: 64, offset: 1088)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1312, file: !151, line: 2321, baseType: !896, size: 64, offset: 1152)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1312, file: !151, line: 2322, baseType: !896, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1312, file: !151, line: 2324, baseType: !1358, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !898, file: !151, line: 3395, baseType: !1361, size: 320)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1362)
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1361, file: !151, line: 1470, baseType: !934, size: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1361, file: !151, line: 1471, baseType: !896, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1361, file: !151, line: 1472, baseType: !896, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !898, file: !151, line: 3396, baseType: !1367, size: 320)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1368)
!1368 = !{!1369, !1370, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1367, file: !151, line: 1483, baseType: !934, size: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1367, file: !151, line: 1484, baseType: !706, size: 32, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1367, file: !151, line: 1485, baseType: !1372, size: 64, offset: 256)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 64, elements: !817)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !898, file: !151, line: 3397, baseType: !1374, size: 384)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1374, file: !151, line: 1830, baseType: !934, size: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1374, file: !151, line: 1831, baseType: !1016, size: 32, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1374, file: !151, line: 1832, baseType: !896, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1374, file: !151, line: 1835, baseType: !1372, size: 64, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !898, file: !151, line: 3398, baseType: !1381, size: 704)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1389, !1390, !1393}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1381, file: !151, line: 1899, baseType: !934, size: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1381, file: !151, line: 1902, baseType: !896, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1381, file: !151, line: 1905, baseType: !1386, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !752, line: 58, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !752, line: 57, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1381, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1381, file: !151, line: 1911, baseType: !1391, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !151, line: 1876, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1381, file: !151, line: 1914, baseType: !1394, size: 256, offset: 448)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !1395)
!1395 = !{!1396, !1398, !1399, !1404}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1394, file: !151, line: 1884, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1394, file: !151, line: 1885, baseType: !1397, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1394, file: !151, line: 1891, baseType: !1400, size: 64, offset: 128)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !151, line: 1891, size: 64, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1400, file: !151, line: 1891, baseType: !1386, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1400, file: !151, line: 1891, baseType: !896, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1394, file: !151, line: 1892, baseType: !1405, size: 64, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !898, file: !151, line: 3399, baseType: !1407, size: 704)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1426, !1427, !1428, !1429, !1430}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1407, file: !151, line: 2009, baseType: !934, size: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1407, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1407, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1407, file: !151, line: 2014, baseType: !1016, size: 32, offset: 224)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1407, file: !151, line: 2016, baseType: !896, size: 64, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1407, file: !151, line: 2017, baseType: !1415, size: 64, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1417, file: !151, line: 183, baseType: !1420, size: 128)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1422)
!1422 = !{!1423, !1424, !1425}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1421, file: !151, line: 182, baseType: !7, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1421, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1421, file: !151, line: 182, baseType: !1372, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1407, file: !151, line: 2019, baseType: !896, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1407, file: !151, line: 2020, baseType: !896, size: 64, offset: 448)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1407, file: !151, line: 2021, baseType: !896, size: 64, offset: 512)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1407, file: !151, line: 2022, baseType: !896, size: 64, offset: 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1407, file: !151, line: 2023, baseType: !896, size: 64, offset: 640)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !898, file: !151, line: 3400, baseType: !1432, size: 832)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1432, file: !151, line: 2431, baseType: !934, size: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1432, file: !151, line: 2433, baseType: !896, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1432, file: !151, line: 2434, baseType: !896, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1432, file: !151, line: 2435, baseType: !896, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1432, file: !151, line: 2436, baseType: !896, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1432, file: !151, line: 2437, baseType: !1415, size: 64, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1432, file: !151, line: 2438, baseType: !896, size: 64, offset: 512)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1432, file: !151, line: 2440, baseType: !896, size: 64, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1432, file: !151, line: 2441, baseType: !896, size: 64, offset: 640)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1432, file: !151, line: 2443, baseType: !1444, size: 128, offset: 704)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1446)
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1445, file: !151, line: 182, baseType: !1420, size: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !898, file: !151, line: 3401, baseType: !1449, size: 320)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1450)
!1450 = !{!1451, !1452, !1459}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1449, file: !151, line: 3329, baseType: !934, size: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1449, file: !151, line: 3330, baseType: !1453, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1454, file: !151, line: 3322, baseType: !1453, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1454, file: !151, line: 3323, baseType: !1453, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1454, file: !151, line: 3324, baseType: !896, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1449, file: !151, line: 3331, baseType: !1453, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !898, file: !151, line: 3402, baseType: !1461, size: 256)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1461, file: !151, line: 1541, baseType: !934, size: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1461, file: !151, line: 1542, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1467, file: !151, line: 1538, baseType: !1470, size: 192)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1472)
!1472 = !{!1473, !1474, !1475}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1471, file: !151, line: 1537, baseType: !7, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1471, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1471, file: !151, line: 1537, baseType: !1476, size: 128, offset: 64)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1477, size: 128, elements: !817)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1478, file: !151, line: 1533, baseType: !896, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1478, file: !151, line: 1534, baseType: !896, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !898, file: !151, line: 3403, baseType: !1483, size: 512)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1494, !1495, !1496}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1483, file: !151, line: 1939, baseType: !934, size: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1483, file: !151, line: 1940, baseType: !1016, size: 32, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1483, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1483, file: !151, line: 1946, baseType: !1489, size: 32, offset: 256)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1490)
!1490 = !{!1491, !1492, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1489, file: !151, line: 1943, baseType: !169, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1489, file: !151, line: 1944, baseType: !176, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1489, file: !151, line: 1945, baseType: !183, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1483, file: !151, line: 1950, baseType: !779, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1483, file: !151, line: 1951, baseType: !779, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1483, file: !151, line: 1953, baseType: !1372, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !898, file: !151, line: 3404, baseType: !1498, size: 1664)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1498, file: !151, line: 3338, baseType: !934, size: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1498, file: !151, line: 3341, baseType: !1502, size: 1472, offset: 192)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1503, line: 410, size: 1472, elements: !1504)
!1503 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1502, file: !1503, line: 412, baseType: !706, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1502, file: !1503, line: 413, baseType: !706, size: 32, offset: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1502, file: !1503, line: 414, baseType: !706, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1502, file: !1503, line: 415, baseType: !706, size: 32, offset: 96)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1502, file: !1503, line: 416, baseType: !706, size: 32, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1502, file: !1503, line: 417, baseType: !706, size: 32, offset: 160)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1502, file: !1503, line: 418, baseType: !705, size: 8, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1502, file: !1503, line: 419, baseType: !705, size: 8, offset: 200)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1502, file: !1503, line: 420, baseType: !1514, size: 8, offset: 208)
!1514 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1502, file: !1503, line: 421, baseType: !1514, size: 8, offset: 216)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1502, file: !1503, line: 422, baseType: !1514, size: 8, offset: 224)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1502, file: !1503, line: 423, baseType: !1514, size: 8, offset: 232)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1502, file: !1503, line: 424, baseType: !1514, size: 8, offset: 240)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1502, file: !1503, line: 425, baseType: !1514, size: 8, offset: 248)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1502, file: !1503, line: 426, baseType: !1514, size: 8, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1502, file: !1503, line: 427, baseType: !1514, size: 8, offset: 264)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1502, file: !1503, line: 428, baseType: !1514, size: 8, offset: 272)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1502, file: !1503, line: 429, baseType: !1514, size: 8, offset: 280)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1502, file: !1503, line: 430, baseType: !1514, size: 8, offset: 288)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1502, file: !1503, line: 431, baseType: !1514, size: 8, offset: 296)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1502, file: !1503, line: 432, baseType: !1514, size: 8, offset: 304)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1502, file: !1503, line: 433, baseType: !1514, size: 8, offset: 312)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1502, file: !1503, line: 434, baseType: !1514, size: 8, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1502, file: !1503, line: 435, baseType: !1514, size: 8, offset: 328)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1502, file: !1503, line: 436, baseType: !1514, size: 8, offset: 336)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1502, file: !1503, line: 437, baseType: !1514, size: 8, offset: 344)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1502, file: !1503, line: 438, baseType: !1514, size: 8, offset: 352)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1502, file: !1503, line: 439, baseType: !1514, size: 8, offset: 360)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1502, file: !1503, line: 440, baseType: !1514, size: 8, offset: 368)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1502, file: !1503, line: 441, baseType: !1514, size: 8, offset: 376)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1502, file: !1503, line: 442, baseType: !1514, size: 8, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1502, file: !1503, line: 443, baseType: !1514, size: 8, offset: 392)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1502, file: !1503, line: 444, baseType: !1514, size: 8, offset: 400)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1502, file: !1503, line: 445, baseType: !1514, size: 8, offset: 408)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1502, file: !1503, line: 446, baseType: !1514, size: 8, offset: 416)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1502, file: !1503, line: 447, baseType: !1514, size: 8, offset: 424)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1502, file: !1503, line: 448, baseType: !1514, size: 8, offset: 432)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1502, file: !1503, line: 449, baseType: !1514, size: 8, offset: 440)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1502, file: !1503, line: 450, baseType: !1514, size: 8, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1502, file: !1503, line: 451, baseType: !1514, size: 8, offset: 456)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1502, file: !1503, line: 452, baseType: !1514, size: 8, offset: 464)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1502, file: !1503, line: 453, baseType: !1514, size: 8, offset: 472)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1502, file: !1503, line: 454, baseType: !1514, size: 8, offset: 480)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1502, file: !1503, line: 455, baseType: !1514, size: 8, offset: 488)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1502, file: !1503, line: 456, baseType: !1514, size: 8, offset: 496)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1502, file: !1503, line: 457, baseType: !1514, size: 8, offset: 504)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1502, file: !1503, line: 458, baseType: !1514, size: 8, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1502, file: !1503, line: 459, baseType: !1514, size: 8, offset: 520)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1502, file: !1503, line: 460, baseType: !1514, size: 8, offset: 528)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1502, file: !1503, line: 461, baseType: !1514, size: 8, offset: 536)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1502, file: !1503, line: 462, baseType: !1514, size: 8, offset: 544)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1502, file: !1503, line: 463, baseType: !1514, size: 8, offset: 552)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1502, file: !1503, line: 464, baseType: !1514, size: 8, offset: 560)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1502, file: !1503, line: 465, baseType: !1514, size: 8, offset: 568)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1502, file: !1503, line: 466, baseType: !1514, size: 8, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1502, file: !1503, line: 467, baseType: !1514, size: 8, offset: 584)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1502, file: !1503, line: 468, baseType: !1514, size: 8, offset: 592)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1502, file: !1503, line: 469, baseType: !1514, size: 8, offset: 600)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1502, file: !1503, line: 470, baseType: !1514, size: 8, offset: 608)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1502, file: !1503, line: 471, baseType: !1514, size: 8, offset: 616)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1502, file: !1503, line: 472, baseType: !1514, size: 8, offset: 624)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1502, file: !1503, line: 473, baseType: !1514, size: 8, offset: 632)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1502, file: !1503, line: 474, baseType: !1514, size: 8, offset: 640)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1502, file: !1503, line: 475, baseType: !1514, size: 8, offset: 648)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1502, file: !1503, line: 476, baseType: !1514, size: 8, offset: 656)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1502, file: !1503, line: 477, baseType: !1514, size: 8, offset: 664)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1502, file: !1503, line: 478, baseType: !1514, size: 8, offset: 672)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1502, file: !1503, line: 479, baseType: !1514, size: 8, offset: 680)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1502, file: !1503, line: 480, baseType: !1514, size: 8, offset: 688)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1502, file: !1503, line: 481, baseType: !1514, size: 8, offset: 696)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1502, file: !1503, line: 482, baseType: !1514, size: 8, offset: 704)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1502, file: !1503, line: 483, baseType: !1514, size: 8, offset: 712)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1502, file: !1503, line: 484, baseType: !1514, size: 8, offset: 720)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1502, file: !1503, line: 485, baseType: !1514, size: 8, offset: 728)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1502, file: !1503, line: 486, baseType: !1514, size: 8, offset: 736)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1502, file: !1503, line: 487, baseType: !1514, size: 8, offset: 744)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1502, file: !1503, line: 488, baseType: !1514, size: 8, offset: 752)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1502, file: !1503, line: 489, baseType: !1514, size: 8, offset: 760)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1502, file: !1503, line: 490, baseType: !1514, size: 8, offset: 768)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1502, file: !1503, line: 491, baseType: !1514, size: 8, offset: 776)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1502, file: !1503, line: 492, baseType: !1514, size: 8, offset: 784)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1502, file: !1503, line: 493, baseType: !1514, size: 8, offset: 792)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1502, file: !1503, line: 494, baseType: !1514, size: 8, offset: 800)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1502, file: !1503, line: 495, baseType: !1514, size: 8, offset: 808)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1502, file: !1503, line: 496, baseType: !1514, size: 8, offset: 816)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1502, file: !1503, line: 497, baseType: !1514, size: 8, offset: 824)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1502, file: !1503, line: 498, baseType: !1514, size: 8, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1502, file: !1503, line: 499, baseType: !1514, size: 8, offset: 840)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1502, file: !1503, line: 500, baseType: !1514, size: 8, offset: 848)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1502, file: !1503, line: 501, baseType: !1514, size: 8, offset: 856)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1502, file: !1503, line: 502, baseType: !1514, size: 8, offset: 864)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1502, file: !1503, line: 503, baseType: !1514, size: 8, offset: 872)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1502, file: !1503, line: 504, baseType: !1514, size: 8, offset: 880)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1502, file: !1503, line: 505, baseType: !1514, size: 8, offset: 888)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1502, file: !1503, line: 506, baseType: !1514, size: 8, offset: 896)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1502, file: !1503, line: 507, baseType: !1514, size: 8, offset: 904)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1502, file: !1503, line: 508, baseType: !1514, size: 8, offset: 912)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1502, file: !1503, line: 509, baseType: !1514, size: 8, offset: 920)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1502, file: !1503, line: 510, baseType: !1514, size: 8, offset: 928)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1502, file: !1503, line: 511, baseType: !1514, size: 8, offset: 936)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1502, file: !1503, line: 512, baseType: !1514, size: 8, offset: 944)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1502, file: !1503, line: 513, baseType: !1514, size: 8, offset: 952)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1502, file: !1503, line: 514, baseType: !1514, size: 8, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1502, file: !1503, line: 515, baseType: !1514, size: 8, offset: 968)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1502, file: !1503, line: 516, baseType: !1514, size: 8, offset: 976)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1502, file: !1503, line: 517, baseType: !1514, size: 8, offset: 984)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1502, file: !1503, line: 518, baseType: !1514, size: 8, offset: 992)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1502, file: !1503, line: 519, baseType: !1514, size: 8, offset: 1000)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1502, file: !1503, line: 520, baseType: !1514, size: 8, offset: 1008)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1502, file: !1503, line: 521, baseType: !1514, size: 8, offset: 1016)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1502, file: !1503, line: 522, baseType: !1514, size: 8, offset: 1024)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1502, file: !1503, line: 523, baseType: !1514, size: 8, offset: 1032)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1502, file: !1503, line: 524, baseType: !1514, size: 8, offset: 1040)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1502, file: !1503, line: 525, baseType: !1514, size: 8, offset: 1048)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1502, file: !1503, line: 526, baseType: !1514, size: 8, offset: 1056)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1502, file: !1503, line: 527, baseType: !1514, size: 8, offset: 1064)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1502, file: !1503, line: 528, baseType: !1514, size: 8, offset: 1072)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1502, file: !1503, line: 529, baseType: !1514, size: 8, offset: 1080)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1502, file: !1503, line: 530, baseType: !1514, size: 8, offset: 1088)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1502, file: !1503, line: 531, baseType: !1514, size: 8, offset: 1096)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1502, file: !1503, line: 532, baseType: !1514, size: 8, offset: 1104)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1502, file: !1503, line: 533, baseType: !1514, size: 8, offset: 1112)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1502, file: !1503, line: 534, baseType: !1514, size: 8, offset: 1120)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1502, file: !1503, line: 535, baseType: !1514, size: 8, offset: 1128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1502, file: !1503, line: 536, baseType: !1514, size: 8, offset: 1136)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1502, file: !1503, line: 537, baseType: !1514, size: 8, offset: 1144)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1502, file: !1503, line: 538, baseType: !1514, size: 8, offset: 1152)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1502, file: !1503, line: 539, baseType: !1514, size: 8, offset: 1160)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1502, file: !1503, line: 540, baseType: !1514, size: 8, offset: 1168)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1502, file: !1503, line: 541, baseType: !1514, size: 8, offset: 1176)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1502, file: !1503, line: 542, baseType: !1514, size: 8, offset: 1184)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1502, file: !1503, line: 543, baseType: !1514, size: 8, offset: 1192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1502, file: !1503, line: 544, baseType: !1514, size: 8, offset: 1200)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1502, file: !1503, line: 545, baseType: !1514, size: 8, offset: 1208)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1502, file: !1503, line: 546, baseType: !1514, size: 8, offset: 1216)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1502, file: !1503, line: 547, baseType: !1514, size: 8, offset: 1224)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1502, file: !1503, line: 548, baseType: !1514, size: 8, offset: 1232)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1502, file: !1503, line: 549, baseType: !1514, size: 8, offset: 1240)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1502, file: !1503, line: 550, baseType: !1514, size: 8, offset: 1248)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1502, file: !1503, line: 551, baseType: !1514, size: 8, offset: 1256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1502, file: !1503, line: 552, baseType: !1514, size: 8, offset: 1264)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1502, file: !1503, line: 553, baseType: !1514, size: 8, offset: 1272)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1502, file: !1503, line: 554, baseType: !1514, size: 8, offset: 1280)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1502, file: !1503, line: 555, baseType: !1514, size: 8, offset: 1288)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1502, file: !1503, line: 556, baseType: !1514, size: 8, offset: 1296)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1502, file: !1503, line: 557, baseType: !1514, size: 8, offset: 1304)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1502, file: !1503, line: 558, baseType: !1514, size: 8, offset: 1312)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1502, file: !1503, line: 559, baseType: !1514, size: 8, offset: 1320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1502, file: !1503, line: 560, baseType: !1514, size: 8, offset: 1328)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1502, file: !1503, line: 561, baseType: !1514, size: 8, offset: 1336)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1502, file: !1503, line: 562, baseType: !1514, size: 8, offset: 1344)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1502, file: !1503, line: 563, baseType: !1514, size: 8, offset: 1352)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1502, file: !1503, line: 564, baseType: !1514, size: 8, offset: 1360)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1502, file: !1503, line: 565, baseType: !1514, size: 8, offset: 1368)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1502, file: !1503, line: 566, baseType: !1514, size: 8, offset: 1376)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1502, file: !1503, line: 567, baseType: !1514, size: 8, offset: 1384)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1502, file: !1503, line: 568, baseType: !1514, size: 8, offset: 1392)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1502, file: !1503, line: 569, baseType: !1514, size: 8, offset: 1400)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1502, file: !1503, line: 570, baseType: !1514, size: 8, offset: 1408)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1502, file: !1503, line: 571, baseType: !1514, size: 8, offset: 1416)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1502, file: !1503, line: 572, baseType: !1514, size: 8, offset: 1424)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1502, file: !1503, line: 573, baseType: !1514, size: 8, offset: 1432)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1502, file: !1503, line: 574, baseType: !1514, size: 8, offset: 1440)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !898, file: !151, line: 3405, baseType: !1670, size: 384)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1670, file: !151, line: 3353, baseType: !934, size: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1670, file: !151, line: 3356, baseType: !1674, size: 192, offset: 192)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1503, line: 578, size: 192, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1674, file: !1503, line: 580, baseType: !706, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1674, file: !1503, line: 581, baseType: !706, size: 32, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1674, file: !1503, line: 582, baseType: !706, size: 32, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1674, file: !1503, line: 583, baseType: !706, size: 32, offset: 96)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1674, file: !1503, line: 584, baseType: !705, size: 8, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1674, file: !1503, line: 585, baseType: !705, size: 8, offset: 136)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1674, file: !1503, line: 586, baseType: !705, size: 8, offset: 144)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1674, file: !1503, line: 587, baseType: !705, size: 8, offset: 152)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1674, file: !1503, line: 588, baseType: !705, size: 8, offset: 160)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1674, file: !1503, line: 589, baseType: !705, size: 8, offset: 168)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1674, file: !1503, line: 590, baseType: !705, size: 8, offset: 176)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !803, file: !561, line: 178, baseType: !753, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !803, file: !561, line: 179, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !561, line: 150, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !561, line: 142, size: 320, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696, !1697, !1698}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1691, file: !561, line: 144, baseType: !896, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1691, file: !561, line: 145, baseType: !783, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1691, file: !561, line: 146, baseType: !783, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1691, file: !561, line: 147, baseType: !1337, size: 32, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1691, file: !561, line: 148, baseType: !7, size: 32, offset: 224)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1691, file: !561, line: 149, baseType: !705, size: 8, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !803, file: !561, line: 180, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !561, line: 162, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !561, line: 159, size: 128, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1702, file: !561, line: 160, baseType: !896, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1702, file: !561, line: 161, baseType: !740, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !803, file: !561, line: 181, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !561, line: 181, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !798, file: !561, line: 317, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 64, elements: !817)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !798, file: !561, line: 318, baseType: !1712, size: 320)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !561, line: 188, size: 320, elements: !1713)
!1713 = !{!1714, !1716, !1771}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1712, file: !561, line: 190, baseType: !1715, size: 192)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 192, elements: !967)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1712, file: !561, line: 193, baseType: !1717, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !561, line: 206, size: 320, elements: !1719)
!1719 = !{!1720, !1756, !1757, !1758, !1770}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1718, file: !561, line: 208, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !752, line: 62, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1724, line: 538, size: 256, elements: !1725)
!1724 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1725 = !{!1726, !1730, !1736, !1747}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1723, file: !1724, line: 539, baseType: !1727, size: 32)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1724, line: 482, size: 32, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1727, file: !1724, line: 484, baseType: !7, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1723, file: !1724, line: 540, baseType: !1731, size: 192)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1724, line: 488, size: 192, elements: !1732)
!1732 = !{!1733, !1734, !1735}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1731, file: !1724, line: 489, baseType: !1727, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1731, file: !1724, line: 492, baseType: !711, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1731, file: !1724, line: 496, baseType: !896, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1723, file: !1724, line: 541, baseType: !1737, size: 256)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1724, line: 504, size: 256, elements: !1738)
!1738 = !{!1739, !1740, !1745, !1746}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1737, file: !1724, line: 505, baseType: !1727, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1737, file: !1724, line: 509, baseType: !1741, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1724, line: 501, baseType: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{null, !1197}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1737, file: !1724, line: 510, baseType: !1197, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1737, file: !1724, line: 513, baseType: !1721, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1723, file: !1724, line: 542, baseType: !1748, size: 128)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1724, line: 530, size: 128, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1748, file: !1724, line: 531, baseType: !1727, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1748, file: !1724, line: 534, baseType: !1752, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1724, line: 525, baseType: !1753)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!705, !896, !711, !729, !729}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1718, file: !561, line: 211, baseType: !7, size: 32, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1718, file: !561, line: 214, baseType: !740, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1718, file: !561, line: 224, baseType: !1759, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !561, line: 202, baseType: !1761)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !561, line: 202, size: 128, elements: !1762)
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1761, file: !561, line: 202, baseType: !1764, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !561, line: 200, baseType: !1765)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !561, line: 200, size: 128, elements: !1766)
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1765, file: !561, line: 200, baseType: !7, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1765, file: !561, line: 200, baseType: !7, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1765, file: !561, line: 200, baseType: !816, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1718, file: !561, line: 234, baseType: !1759, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1712, file: !561, line: 197, baseType: !740, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !798, file: !561, line: 319, baseType: !956, size: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !798, file: !561, line: 320, baseType: !975, size: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !771, file: !135, line: 134, baseType: !710, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !771, file: !135, line: 137, baseType: !896, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !771, file: !135, line: 138, baseType: !1016, size: 32, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !771, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !135, line: 144, baseType: !706, size: 32, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !771, file: !135, line: 145, baseType: !706, size: 32, offset: 416)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !771, file: !135, line: 146, baseType: !1781, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !740)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !754, file: !135, line: 220, baseType: !757, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !754, file: !135, line: 223, baseType: !710, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !754, file: !135, line: 226, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 185, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !754, file: !135, line: 229, baseType: !1788, size: 128, offset: 256)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1789, size: 128, elements: !852)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !754, file: !135, line: 232, baseType: !753, size: 64, offset: 384)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !754, file: !135, line: 233, baseType: !753, size: 64, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !754, file: !135, line: 238, baseType: !1794, size: 64, offset: 512)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1795)
!1795 = !{!1796, !1802}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1794, file: !135, line: 236, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1798, file: !135, line: 275, baseType: !779, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1798, file: !135, line: 278, baseType: !779, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1794, file: !135, line: 237, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1809, !1810}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1804, file: !135, line: 261, baseType: !783, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1804, file: !135, line: 262, baseType: !783, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1804, file: !135, line: 266, baseType: !783, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1804, file: !135, line: 267, baseType: !783, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1804, file: !135, line: 270, baseType: !706, size: 32, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !754, file: !135, line: 241, baseType: !1781, size: 64, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !754, file: !135, line: 244, baseType: !706, size: 32, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !754, file: !135, line: 247, baseType: !706, size: 32, offset: 672)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !754, file: !135, line: 250, baseType: !706, size: 32, offset: 704)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !754, file: !135, line: 253, baseType: !706, size: 32, offset: 736)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !135, line: 256, baseType: !706, size: 32, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !748, file: !3, line: 152, baseType: !751, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "round", scope: !748, file: !3, line: 155, baseType: !706, size: 32, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !748, file: !3, line: 158, baseType: !706, size: 32, offset: 160)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !752, line: 47, baseType: !836)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!1822 = !{!1823, !1851, !1853, !0, !1855, !1857, !1859, !1861, !1863, !1868}
!1823 = !DIGlobalVariableExpression(var: !1824, expr: !DIExpression())
!1824 = distinct !DIGlobalVariable(name: "pass_duplicate_computed_gotos", scope: !2, file: !3, line: 2094, type: !1825, isLocal: false, isDefinition: true)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !378, line: 162, size: 640, elements: !1826)
!1826 = !{!1827}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1825, file: !378, line: 164, baseType: !1828, size: 640)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !378, line: 114, size: 640, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1836, !1840, !1842, !1843, !1844, !1846, !1847, !1848, !1849, !1850}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1828, file: !378, line: 117, baseType: !377, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1828, file: !378, line: 121, baseType: !711, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1828, file: !378, line: 125, baseType: !1833, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!705}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1828, file: !378, line: 130, baseType: !1837, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!7}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1828, file: !378, line: 133, baseType: !1841, size: 64, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1828, file: !378, line: 136, baseType: !1841, size: 64, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1828, file: !378, line: 139, baseType: !706, size: 32, offset: 384)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1828, file: !378, line: 143, baseType: !1845, size: 32, offset: 416)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !385, line: 80, baseType: !384)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1828, file: !378, line: 146, baseType: !7, size: 32, offset: 448)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1828, file: !378, line: 147, baseType: !7, size: 32, offset: 480)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1828, file: !378, line: 148, baseType: !7, size: 32, offset: 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1828, file: !378, line: 151, baseType: !7, size: 32, offset: 544)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1828, file: !378, line: 152, baseType: !7, size: 32, offset: 576)
!1851 = !DIGlobalVariableExpression(var: !1852, expr: !DIExpression())
!1852 = distinct !DIGlobalVariable(name: "pass_reorder_blocks", scope: !2, file: !3, line: 2237, type: !1825, isLocal: false, isDefinition: true)
!1853 = !DIGlobalVariableExpression(var: !1854, expr: !DIExpression())
!1854 = distinct !DIGlobalVariable(name: "pass_partition_blocks", scope: !2, file: !3, line: 2277, type: !1825, isLocal: false, isDefinition: true)
!1855 = !DIGlobalVariableExpression(var: !1856, expr: !DIExpression())
!1856 = distinct !DIGlobalVariable(name: "array_size", scope: !2, file: !3, line: 136, type: !706, isLocal: true, isDefinition: true)
!1857 = !DIGlobalVariableExpression(var: !1858, expr: !DIExpression())
!1858 = distinct !DIGlobalVariable(name: "bbd", scope: !2, file: !3, line: 139, type: !713, isLocal: true, isDefinition: true)
!1859 = !DIGlobalVariableExpression(var: !1860, expr: !DIExpression())
!1860 = distinct !DIGlobalVariable(name: "max_entry_frequency", scope: !2, file: !3, line: 162, type: !706, isLocal: true, isDefinition: true)
!1861 = !DIGlobalVariableExpression(var: !1862, expr: !DIExpression())
!1862 = distinct !DIGlobalVariable(name: "max_entry_count", scope: !2, file: !3, line: 163, type: !1781, isLocal: true, isDefinition: true)
!1863 = !DIGlobalVariableExpression(var: !1864, expr: !DIExpression())
!1864 = distinct !DIGlobalVariable(name: "exec_threshold", scope: !2, file: !3, line: 107, type: !1865, isLocal: true, isDefinition: true)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 160, elements: !1866)
!1866 = !{!1867}
!1867 = !DISubrange(count: 5)
!1868 = !DIGlobalVariableExpression(var: !1869, expr: !DIExpression())
!1869 = distinct !DIGlobalVariable(name: "branch_threshold", scope: !2, file: !3, line: 104, type: !1865, isLocal: true, isDefinition: true)
!1870 = !{i32 2, !"Dwarf Version", i32 4}
!1871 = !{i32 2, !"Debug Info Version", i32 3}
!1872 = !{i32 1, !"wchar_size", i32 4}
!1873 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1874 = distinct !DISubprogram(name: "vprintf", scope: !1875, file: !1875, line: 39, type: !1876, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1886)
!1875 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!706, !1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !711)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1880, file: !3, baseType: !7, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1880, file: !3, baseType: !7, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1880, file: !3, baseType: !710, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1880, file: !3, baseType: !710, size: 64, offset: 128)
!1886 = !{!1887, !1888}
!1887 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1874, file: !1875, line: 39, type: !1878)
!1888 = !DILocalVariable(name: "__arg", arg: 2, scope: !1874, file: !1875, line: 39, type: !1879)
!1889 = !DILocation(line: 0, scope: !1874)
!1890 = !DILocation(line: 41, column: 20, scope: !1874)
!1891 = !DILocation(line: 41, column: 10, scope: !1874)
!1892 = !DILocation(line: 41, column: 3, scope: !1874)
!1893 = distinct !DISubprogram(name: "getchar", scope: !1875, file: !1875, line: 47, type: !1894, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!706}
!1896 = !{}
!1897 = !DILocation(line: 49, column: 16, scope: !1893)
!1898 = !DILocation(line: 49, column: 10, scope: !1893)
!1899 = !DILocation(line: 49, column: 3, scope: !1893)
!1900 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1875, file: !1875, line: 56, type: !1901, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1954)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!706, !1903}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1905, line: 7, baseType: !1906)
!1905 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1907, line: 49, size: 1728, elements: !1908)
!1907 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1924, !1926, !1927, !1928, !1931, !1933, !1934, !1935, !1938, !1940, !1943, !1946, !1947, !1948, !1949, !1950}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1906, file: !1907, line: 51, baseType: !706, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1906, file: !1907, line: 54, baseType: !708, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1906, file: !1907, line: 55, baseType: !708, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1906, file: !1907, line: 56, baseType: !708, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1906, file: !1907, line: 57, baseType: !708, size: 64, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1906, file: !1907, line: 58, baseType: !708, size: 64, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1906, file: !1907, line: 59, baseType: !708, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1906, file: !1907, line: 60, baseType: !708, size: 64, offset: 448)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1906, file: !1907, line: 61, baseType: !708, size: 64, offset: 512)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1906, file: !1907, line: 64, baseType: !708, size: 64, offset: 576)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1906, file: !1907, line: 65, baseType: !708, size: 64, offset: 640)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1906, file: !1907, line: 66, baseType: !708, size: 64, offset: 704)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1906, file: !1907, line: 68, baseType: !1922, size: 64, offset: 768)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1907, line: 36, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1906, file: !1907, line: 70, baseType: !1925, size: 64, offset: 832)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1906, file: !1907, line: 72, baseType: !706, size: 32, offset: 896)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1906, file: !1907, line: 73, baseType: !706, size: 32, offset: 928)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1906, file: !1907, line: 74, baseType: !1929, size: 64, offset: 960)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1930, line: 152, baseType: !740)
!1930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1906, file: !1907, line: 77, baseType: !1932, size: 16, offset: 1024)
!1932 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1906, file: !1907, line: 78, baseType: !1514, size: 8, offset: 1040)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1906, file: !1907, line: 79, baseType: !991, size: 8, offset: 1048)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1906, file: !1907, line: 81, baseType: !1936, size: 64, offset: 1088)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1907, line: 43, baseType: null)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1906, file: !1907, line: 89, baseType: !1939, size: 64, offset: 1152)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1930, line: 153, baseType: !740)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1906, file: !1907, line: 91, baseType: !1941, size: 64, offset: 1216)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1907, line: 37, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1906, file: !1907, line: 92, baseType: !1944, size: 64, offset: 1280)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1907, line: 38, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1906, file: !1907, line: 93, baseType: !1925, size: 64, offset: 1344)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1906, file: !1907, line: 94, baseType: !710, size: 64, offset: 1408)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1906, file: !1907, line: 95, baseType: !727, size: 64, offset: 1472)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1906, file: !1907, line: 96, baseType: !706, size: 32, offset: 1536)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1906, file: !1907, line: 98, baseType: !1951, size: 160, offset: 1568)
!1951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 160, elements: !1952)
!1952 = !{!1953}
!1953 = !DISubrange(count: 20)
!1954 = !{!1955}
!1955 = !DILocalVariable(name: "__fp", arg: 1, scope: !1900, file: !1875, line: 56, type: !1903)
!1956 = !DILocation(line: 0, scope: !1900)
!1957 = !DILocation(line: 58, column: 10, scope: !1900)
!1958 = !DILocation(line: 58, column: 3, scope: !1900)
!1959 = distinct !DISubprogram(name: "getc_unlocked", scope: !1875, file: !1875, line: 66, type: !1901, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1960)
!1960 = !{!1961}
!1961 = !DILocalVariable(name: "__fp", arg: 1, scope: !1959, file: !1875, line: 66, type: !1903)
!1962 = !DILocation(line: 0, scope: !1959)
!1963 = !DILocation(line: 68, column: 10, scope: !1959)
!1964 = !DILocation(line: 68, column: 3, scope: !1959)
!1965 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1875, file: !1875, line: 73, type: !1894, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!1966 = !DILocation(line: 75, column: 10, scope: !1965)
!1967 = !DILocation(line: 75, column: 3, scope: !1965)
!1968 = distinct !DISubprogram(name: "putchar", scope: !1875, file: !1875, line: 82, type: !1969, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1971)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!706, !706}
!1971 = !{!1972}
!1972 = !DILocalVariable(name: "__c", arg: 1, scope: !1968, file: !1875, line: 82, type: !706)
!1973 = !DILocation(line: 0, scope: !1968)
!1974 = !DILocation(line: 84, column: 21, scope: !1968)
!1975 = !DILocation(line: 84, column: 10, scope: !1968)
!1976 = !DILocation(line: 84, column: 3, scope: !1968)
!1977 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1875, file: !1875, line: 91, type: !1978, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!706, !706, !1903}
!1980 = !{!1981, !1982}
!1981 = !DILocalVariable(name: "__c", arg: 1, scope: !1977, file: !1875, line: 91, type: !706)
!1982 = !DILocalVariable(name: "__stream", arg: 2, scope: !1977, file: !1875, line: 91, type: !1903)
!1983 = !DILocation(line: 0, scope: !1977)
!1984 = !DILocation(line: 93, column: 10, scope: !1977)
!1985 = !DILocation(line: 93, column: 3, scope: !1977)
!1986 = distinct !DISubprogram(name: "putc_unlocked", scope: !1875, file: !1875, line: 101, type: !1978, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1987 = !{!1988, !1989}
!1988 = !DILocalVariable(name: "__c", arg: 1, scope: !1986, file: !1875, line: 101, type: !706)
!1989 = !DILocalVariable(name: "__stream", arg: 2, scope: !1986, file: !1875, line: 101, type: !1903)
!1990 = !DILocation(line: 0, scope: !1986)
!1991 = !DILocation(line: 103, column: 10, scope: !1986)
!1992 = !DILocation(line: 103, column: 3, scope: !1986)
!1993 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1875, file: !1875, line: 108, type: !1969, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1994)
!1994 = !{!1995}
!1995 = !DILocalVariable(name: "__c", arg: 1, scope: !1993, file: !1875, line: 108, type: !706)
!1996 = !DILocation(line: 0, scope: !1993)
!1997 = !DILocation(line: 110, column: 10, scope: !1993)
!1998 = !DILocation(line: 110, column: 3, scope: !1993)
!1999 = distinct !DISubprogram(name: "getline", scope: !1875, file: !1875, line: 118, type: !2000, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2004)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!2002, !707, !2003, !1903}
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1930, line: 193, baseType: !740)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!2004 = !{!2005, !2006, !2007}
!2005 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1999, file: !1875, line: 118, type: !707)
!2006 = !DILocalVariable(name: "__n", arg: 2, scope: !1999, file: !1875, line: 118, type: !2003)
!2007 = !DILocalVariable(name: "__stream", arg: 3, scope: !1999, file: !1875, line: 118, type: !1903)
!2008 = !DILocation(line: 0, scope: !1999)
!2009 = !DILocation(line: 120, column: 10, scope: !1999)
!2010 = !DILocation(line: 120, column: 3, scope: !1999)
!2011 = distinct !DISubprogram(name: "feof_unlocked", scope: !1875, file: !1875, line: 128, type: !1901, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "__stream", arg: 1, scope: !2011, file: !1875, line: 128, type: !1903)
!2014 = !DILocation(line: 0, scope: !2011)
!2015 = !DILocation(line: 130, column: 10, scope: !2011)
!2016 = !DILocation(line: 130, column: 3, scope: !2011)
!2017 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1875, file: !1875, line: 135, type: !1901, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "__stream", arg: 1, scope: !2017, file: !1875, line: 135, type: !1903)
!2020 = !DILocation(line: 0, scope: !2017)
!2021 = !DILocation(line: 137, column: 10, scope: !2017)
!2022 = !DILocation(line: 137, column: 3, scope: !2017)
!2023 = distinct !DISubprogram(name: "tolower", scope: !2024, file: !2024, line: 207, type: !1969, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2025)
!2024 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2025 = !{!2026}
!2026 = !DILocalVariable(name: "__c", arg: 1, scope: !2023, file: !2024, line: 207, type: !706)
!2027 = !DILocation(line: 0, scope: !2023)
!2028 = !DILocation(line: 209, column: 22, scope: !2023)
!2029 = !DILocation(line: 209, column: 39, scope: !2023)
!2030 = !DILocation(line: 209, column: 38, scope: !2023)
!2031 = !DILocation(line: 209, column: 37, scope: !2023)
!2032 = !DILocation(line: 209, column: 10, scope: !2023)
!2033 = !DILocation(line: 209, column: 3, scope: !2023)
!2034 = distinct !DISubprogram(name: "toupper", scope: !2024, file: !2024, line: 213, type: !1969, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2035)
!2035 = !{!2036}
!2036 = !DILocalVariable(name: "__c", arg: 1, scope: !2034, file: !2024, line: 213, type: !706)
!2037 = !DILocation(line: 0, scope: !2034)
!2038 = !DILocation(line: 215, column: 22, scope: !2034)
!2039 = !DILocation(line: 215, column: 39, scope: !2034)
!2040 = !DILocation(line: 215, column: 38, scope: !2034)
!2041 = !DILocation(line: 215, column: 37, scope: !2034)
!2042 = !DILocation(line: 215, column: 10, scope: !2034)
!2043 = !DILocation(line: 215, column: 3, scope: !2034)
!2044 = distinct !DISubprogram(name: "atoi", scope: !2045, file: !2045, line: 361, type: !2046, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2048)
!2045 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!706, !711}
!2048 = !{!2049}
!2049 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2044, file: !2045, line: 361, type: !711)
!2050 = !DILocation(line: 0, scope: !2044)
!2051 = !DILocation(line: 363, column: 16, scope: !2044)
!2052 = !DILocation(line: 363, column: 10, scope: !2044)
!2053 = !DILocation(line: 363, column: 3, scope: !2044)
!2054 = distinct !DISubprogram(name: "atol", scope: !2045, file: !2045, line: 366, type: !2055, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2057)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!740, !711}
!2057 = !{!2058}
!2058 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2054, file: !2045, line: 366, type: !711)
!2059 = !DILocation(line: 0, scope: !2054)
!2060 = !DILocation(line: 368, column: 10, scope: !2054)
!2061 = !DILocation(line: 368, column: 3, scope: !2054)
!2062 = distinct !DISubprogram(name: "atoll", scope: !2045, file: !2045, line: 373, type: !2063, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!2065, !711}
!2065 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2066 = !{!2067}
!2067 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2062, file: !2045, line: 373, type: !711)
!2068 = !DILocation(line: 0, scope: !2062)
!2069 = !DILocation(line: 375, column: 10, scope: !2062)
!2070 = !DILocation(line: 375, column: 3, scope: !2062)
!2071 = distinct !DISubprogram(name: "bsearch", scope: !2072, file: !2072, line: 20, type: !2073, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2076)
!2072 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!710, !1197, !1197, !727, !727, !2075}
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2045, line: 808, baseType: !1201)
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086}
!2077 = !DILocalVariable(name: "__key", arg: 1, scope: !2071, file: !2072, line: 20, type: !1197)
!2078 = !DILocalVariable(name: "__base", arg: 2, scope: !2071, file: !2072, line: 20, type: !1197)
!2079 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2071, file: !2072, line: 20, type: !727)
!2080 = !DILocalVariable(name: "__size", arg: 4, scope: !2071, file: !2072, line: 20, type: !727)
!2081 = !DILocalVariable(name: "__compar", arg: 5, scope: !2071, file: !2072, line: 21, type: !2075)
!2082 = !DILocalVariable(name: "__l", scope: !2071, file: !2072, line: 23, type: !727)
!2083 = !DILocalVariable(name: "__u", scope: !2071, file: !2072, line: 23, type: !727)
!2084 = !DILocalVariable(name: "__idx", scope: !2071, file: !2072, line: 23, type: !727)
!2085 = !DILocalVariable(name: "__p", scope: !2071, file: !2072, line: 24, type: !1197)
!2086 = !DILocalVariable(name: "__comparison", scope: !2071, file: !2072, line: 25, type: !706)
!2087 = !DILocation(line: 0, scope: !2071)
!2088 = !DILocation(line: 29, column: 3, scope: !2071)
!2089 = !DILocation(line: 27, column: 7, scope: !2071)
!2090 = !DILocation(line: 29, column: 14, scope: !2071)
!2091 = !DILocation(line: 31, column: 20, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2071, file: !2072, line: 30, column: 5)
!2093 = !DILocation(line: 31, column: 27, scope: !2092)
!2094 = !DILocation(line: 32, column: 56, scope: !2092)
!2095 = !DILocation(line: 32, column: 47, scope: !2092)
!2096 = !DILocation(line: 33, column: 22, scope: !2092)
!2097 = !DILocation(line: 34, column: 24, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2092, file: !2072, line: 34, column: 11)
!2099 = !DILocation(line: 34, column: 11, scope: !2092)
!2100 = !DILocation(line: 36, column: 29, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !2072, line: 36, column: 16)
!2102 = !DILocation(line: 36, column: 16, scope: !2098)
!2103 = !DILocation(line: 37, column: 14, scope: !2101)
!2104 = distinct !{!2104, !2088, !2105}
!2105 = !DILocation(line: 40, column: 5, scope: !2071)
!2106 = !DILocation(line: 43, column: 1, scope: !2071)
!2107 = distinct !DISubprogram(name: "atof", scope: !2108, file: !2108, line: 25, type: !2109, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2112)
!2108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2111, !711}
!2111 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2112 = !{!2113}
!2113 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2107, file: !2108, line: 25, type: !711)
!2114 = !DILocation(line: 0, scope: !2107)
!2115 = !DILocation(line: 27, column: 10, scope: !2107)
!2116 = !DILocation(line: 27, column: 3, scope: !2107)
!2117 = distinct !DISubprogram(name: "strtoimax", scope: !2118, file: !2118, line: 324, type: !2119, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2118 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!2121, !1878, !2124, !706}
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2122, line: 101, baseType: !2123)
!2122 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1930, line: 72, baseType: !740)
!2124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !707)
!2125 = !{!2126, !2127, !2128}
!2126 = !DILocalVariable(name: "nptr", arg: 1, scope: !2117, file: !2118, line: 324, type: !1878)
!2127 = !DILocalVariable(name: "endptr", arg: 2, scope: !2117, file: !2118, line: 324, type: !2124)
!2128 = !DILocalVariable(name: "base", arg: 3, scope: !2117, file: !2118, line: 324, type: !706)
!2129 = !DILocation(line: 0, scope: !2117)
!2130 = !DILocation(line: 327, column: 10, scope: !2117)
!2131 = !DILocation(line: 327, column: 3, scope: !2117)
!2132 = distinct !DISubprogram(name: "strtoumax", scope: !2118, file: !2118, line: 336, type: !2133, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!2135, !1878, !2124, !706}
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2122, line: 102, baseType: !2136)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1930, line: 73, baseType: !729)
!2137 = !{!2138, !2139, !2140}
!2138 = !DILocalVariable(name: "nptr", arg: 1, scope: !2132, file: !2118, line: 336, type: !1878)
!2139 = !DILocalVariable(name: "endptr", arg: 2, scope: !2132, file: !2118, line: 336, type: !2124)
!2140 = !DILocalVariable(name: "base", arg: 3, scope: !2132, file: !2118, line: 336, type: !706)
!2141 = !DILocation(line: 0, scope: !2132)
!2142 = !DILocation(line: 339, column: 10, scope: !2132)
!2143 = !DILocation(line: 339, column: 3, scope: !2132)
!2144 = distinct !DISubprogram(name: "wcstoimax", scope: !2118, file: !2118, line: 348, type: !2145, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!2121, !2147, !2151, !706}
!2147 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2148)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2150)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2118, line: 34, baseType: !706)
!2151 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2152)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2154 = !{!2155, !2156, !2157}
!2155 = !DILocalVariable(name: "nptr", arg: 1, scope: !2144, file: !2118, line: 348, type: !2147)
!2156 = !DILocalVariable(name: "endptr", arg: 2, scope: !2144, file: !2118, line: 348, type: !2151)
!2157 = !DILocalVariable(name: "base", arg: 3, scope: !2144, file: !2118, line: 348, type: !706)
!2158 = !DILocation(line: 0, scope: !2144)
!2159 = !DILocation(line: 351, column: 10, scope: !2144)
!2160 = !DILocation(line: 351, column: 3, scope: !2144)
!2161 = distinct !DISubprogram(name: "wcstoumax", scope: !2118, file: !2118, line: 362, type: !2162, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2135, !2147, !2151, !706}
!2164 = !{!2165, !2166, !2167}
!2165 = !DILocalVariable(name: "nptr", arg: 1, scope: !2161, file: !2118, line: 362, type: !2147)
!2166 = !DILocalVariable(name: "endptr", arg: 2, scope: !2161, file: !2118, line: 362, type: !2151)
!2167 = !DILocalVariable(name: "base", arg: 3, scope: !2161, file: !2118, line: 362, type: !706)
!2168 = !DILocation(line: 0, scope: !2161)
!2169 = !DILocation(line: 365, column: 10, scope: !2161)
!2170 = !DILocation(line: 365, column: 3, scope: !2161)
!2171 = distinct !DISubprogram(name: "stat", scope: !2172, file: !2172, line: 453, type: !2173, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2210)
!2172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!706, !711, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2177, line: 46, size: 1152, elements: !2178)
!2177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2178 = !{!2179, !2181, !2183, !2185, !2187, !2189, !2191, !2192, !2193, !2194, !2196, !2198, !2206, !2207, !2208}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2176, file: !2177, line: 48, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1930, line: 145, baseType: !729)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2176, file: !2177, line: 53, baseType: !2182, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1930, line: 148, baseType: !729)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2176, file: !2177, line: 61, baseType: !2184, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1930, line: 151, baseType: !729)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2176, file: !2177, line: 62, baseType: !2186, size: 32, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1930, line: 150, baseType: !7)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2176, file: !2177, line: 64, baseType: !2188, size: 32, offset: 224)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1930, line: 146, baseType: !7)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2176, file: !2177, line: 65, baseType: !2190, size: 32, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1930, line: 147, baseType: !7)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2176, file: !2177, line: 67, baseType: !706, size: 32, offset: 288)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2176, file: !2177, line: 69, baseType: !2180, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2176, file: !2177, line: 74, baseType: !1929, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2176, file: !2177, line: 78, baseType: !2195, size: 64, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1930, line: 174, baseType: !740)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2176, file: !2177, line: 80, baseType: !2197, size: 64, offset: 512)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1930, line: 179, baseType: !740)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2176, file: !2177, line: 91, baseType: !2199, size: 128, offset: 576)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2200, line: 10, size: 128, elements: !2201)
!2200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2201 = !{!2202, !2204}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2199, file: !2200, line: 12, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1930, line: 160, baseType: !740)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2199, file: !2200, line: 16, baseType: !2205, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1930, line: 196, baseType: !740)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2176, file: !2177, line: 92, baseType: !2199, size: 128, offset: 704)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2176, file: !2177, line: 93, baseType: !2199, size: 128, offset: 832)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2176, file: !2177, line: 106, baseType: !2209, size: 192, offset: 960)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2205, size: 192, elements: !967)
!2210 = !{!2211, !2212}
!2211 = !DILocalVariable(name: "__path", arg: 1, scope: !2171, file: !2172, line: 453, type: !711)
!2212 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2171, file: !2172, line: 453, type: !2175)
!2213 = !DILocation(line: 0, scope: !2171)
!2214 = !DILocation(line: 455, column: 10, scope: !2171)
!2215 = !DILocation(line: 455, column: 3, scope: !2171)
!2216 = distinct !DISubprogram(name: "lstat", scope: !2172, file: !2172, line: 460, type: !2173, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2217)
!2217 = !{!2218, !2219}
!2218 = !DILocalVariable(name: "__path", arg: 1, scope: !2216, file: !2172, line: 460, type: !711)
!2219 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2216, file: !2172, line: 460, type: !2175)
!2220 = !DILocation(line: 0, scope: !2216)
!2221 = !DILocation(line: 462, column: 10, scope: !2216)
!2222 = !DILocation(line: 462, column: 3, scope: !2216)
!2223 = distinct !DISubprogram(name: "fstat", scope: !2172, file: !2172, line: 467, type: !2224, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!706, !706, !2175}
!2226 = !{!2227, !2228}
!2227 = !DILocalVariable(name: "__fd", arg: 1, scope: !2223, file: !2172, line: 467, type: !706)
!2228 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2223, file: !2172, line: 467, type: !2175)
!2229 = !DILocation(line: 0, scope: !2223)
!2230 = !DILocation(line: 469, column: 10, scope: !2223)
!2231 = !DILocation(line: 469, column: 3, scope: !2223)
!2232 = distinct !DISubprogram(name: "fstatat", scope: !2172, file: !2172, line: 474, type: !2233, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2235)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!706, !706, !711, !2175, !706}
!2235 = !{!2236, !2237, !2238, !2239}
!2236 = !DILocalVariable(name: "__fd", arg: 1, scope: !2232, file: !2172, line: 474, type: !706)
!2237 = !DILocalVariable(name: "__filename", arg: 2, scope: !2232, file: !2172, line: 474, type: !711)
!2238 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2232, file: !2172, line: 474, type: !2175)
!2239 = !DILocalVariable(name: "__flag", arg: 4, scope: !2232, file: !2172, line: 474, type: !706)
!2240 = !DILocation(line: 0, scope: !2232)
!2241 = !DILocation(line: 477, column: 10, scope: !2232)
!2242 = !DILocation(line: 477, column: 3, scope: !2232)
!2243 = distinct !DISubprogram(name: "mknod", scope: !2172, file: !2172, line: 483, type: !2244, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!706, !711, !2186, !2180}
!2246 = !{!2247, !2248, !2249}
!2247 = !DILocalVariable(name: "__path", arg: 1, scope: !2243, file: !2172, line: 483, type: !711)
!2248 = !DILocalVariable(name: "__mode", arg: 2, scope: !2243, file: !2172, line: 483, type: !2186)
!2249 = !DILocalVariable(name: "__dev", arg: 3, scope: !2243, file: !2172, line: 483, type: !2180)
!2250 = !DILocation(line: 0, scope: !2243)
!2251 = !DILocation(line: 485, column: 10, scope: !2243)
!2252 = !DILocation(line: 485, column: 3, scope: !2243)
!2253 = distinct !DISubprogram(name: "mknodat", scope: !2172, file: !2172, line: 491, type: !2254, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2256)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!706, !706, !711, !2186, !2180}
!2256 = !{!2257, !2258, !2259, !2260}
!2257 = !DILocalVariable(name: "__fd", arg: 1, scope: !2253, file: !2172, line: 491, type: !706)
!2258 = !DILocalVariable(name: "__path", arg: 2, scope: !2253, file: !2172, line: 491, type: !711)
!2259 = !DILocalVariable(name: "__mode", arg: 3, scope: !2253, file: !2172, line: 491, type: !2186)
!2260 = !DILocalVariable(name: "__dev", arg: 4, scope: !2253, file: !2172, line: 491, type: !2180)
!2261 = !DILocation(line: 0, scope: !2253)
!2262 = !DILocation(line: 494, column: 10, scope: !2253)
!2263 = !DILocation(line: 494, column: 3, scope: !2253)
!2264 = distinct !DISubprogram(name: "stat64", scope: !2172, file: !2172, line: 502, type: !2265, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!706, !711, !2267}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2177, line: 119, size: 1152, elements: !2269)
!2269 = !{!2270, !2271, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2283, !2284, !2285, !2286}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2268, file: !2177, line: 121, baseType: !2180, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2268, file: !2177, line: 123, baseType: !2272, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1930, line: 149, baseType: !729)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2268, file: !2177, line: 124, baseType: !2184, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2268, file: !2177, line: 125, baseType: !2186, size: 32, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2268, file: !2177, line: 132, baseType: !2188, size: 32, offset: 224)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2268, file: !2177, line: 133, baseType: !2190, size: 32, offset: 256)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2268, file: !2177, line: 135, baseType: !706, size: 32, offset: 288)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2268, file: !2177, line: 136, baseType: !2180, size: 64, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2268, file: !2177, line: 137, baseType: !1929, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2268, file: !2177, line: 143, baseType: !2195, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2268, file: !2177, line: 144, baseType: !2282, size: 64, offset: 512)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1930, line: 180, baseType: !740)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2268, file: !2177, line: 152, baseType: !2199, size: 128, offset: 576)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2268, file: !2177, line: 153, baseType: !2199, size: 128, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2268, file: !2177, line: 154, baseType: !2199, size: 128, offset: 832)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2268, file: !2177, line: 164, baseType: !2209, size: 192, offset: 960)
!2287 = !{!2288, !2289}
!2288 = !DILocalVariable(name: "__path", arg: 1, scope: !2264, file: !2172, line: 502, type: !711)
!2289 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2264, file: !2172, line: 502, type: !2267)
!2290 = !DILocation(line: 0, scope: !2264)
!2291 = !DILocation(line: 504, column: 10, scope: !2264)
!2292 = !DILocation(line: 504, column: 3, scope: !2264)
!2293 = distinct !DISubprogram(name: "lstat64", scope: !2172, file: !2172, line: 509, type: !2265, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!2294 = !{!2295, !2296}
!2295 = !DILocalVariable(name: "__path", arg: 1, scope: !2293, file: !2172, line: 509, type: !711)
!2296 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2293, file: !2172, line: 509, type: !2267)
!2297 = !DILocation(line: 0, scope: !2293)
!2298 = !DILocation(line: 511, column: 10, scope: !2293)
!2299 = !DILocation(line: 511, column: 3, scope: !2293)
!2300 = distinct !DISubprogram(name: "fstat64", scope: !2172, file: !2172, line: 516, type: !2301, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!706, !706, !2267}
!2303 = !{!2304, !2305}
!2304 = !DILocalVariable(name: "__fd", arg: 1, scope: !2300, file: !2172, line: 516, type: !706)
!2305 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2300, file: !2172, line: 516, type: !2267)
!2306 = !DILocation(line: 0, scope: !2300)
!2307 = !DILocation(line: 518, column: 10, scope: !2300)
!2308 = !DILocation(line: 518, column: 3, scope: !2300)
!2309 = distinct !DISubprogram(name: "fstatat64", scope: !2172, file: !2172, line: 523, type: !2310, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2312)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!706, !706, !711, !2267, !706}
!2312 = !{!2313, !2314, !2315, !2316}
!2313 = !DILocalVariable(name: "__fd", arg: 1, scope: !2309, file: !2172, line: 523, type: !706)
!2314 = !DILocalVariable(name: "__filename", arg: 2, scope: !2309, file: !2172, line: 523, type: !711)
!2315 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2309, file: !2172, line: 523, type: !2267)
!2316 = !DILocalVariable(name: "__flag", arg: 4, scope: !2309, file: !2172, line: 523, type: !706)
!2317 = !DILocation(line: 0, scope: !2309)
!2318 = !DILocation(line: 526, column: 10, scope: !2309)
!2319 = !DILocation(line: 526, column: 3, scope: !2309)
!2320 = distinct !DISubprogram(name: "reorder_basic_blocks", scope: !3, file: !3, line: 1894, type: !2321, scopeLine: 1895, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null}
!2323 = !{!2324, !2325, !2326}
!2324 = !DILocalVariable(name: "n_traces", scope: !2320, file: !3, line: 1896, type: !706)
!2325 = !DILocalVariable(name: "i", scope: !2320, file: !3, line: 1897, type: !706)
!2326 = !DILocalVariable(name: "traces", scope: !2320, file: !3, line: 1898, type: !747)
!2327 = !DILocation(line: 1896, column: 3, scope: !2320)
!2328 = !DILocation(line: 1900, column: 3, scope: !2320)
!2329 = !DILocation(line: 1902, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1902, column: 7)
!2331 = !DILocation(line: 1902, column: 22, scope: !2330)
!2332 = !DILocation(line: 1902, column: 7, scope: !2320)
!2333 = !DILocation(line: 1905, column: 3, scope: !2320)
!2334 = !DILocation(line: 1906, column: 3, scope: !2320)
!2335 = !DILocation(line: 1910, column: 7, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1910, column: 7)
!2337 = !DILocation(line: 1910, column: 26, scope: !2336)
!2338 = !DILocation(line: 1910, column: 7, scope: !2320)
!2339 = !DILocation(line: 1911, column: 26, scope: !2336)
!2340 = !DILocation(line: 1911, column: 24, scope: !2336)
!2341 = !DILocation(line: 1911, column: 5, scope: !2336)
!2342 = !DILocation(line: 1914, column: 16, scope: !2320)
!2343 = !DILocation(line: 1914, column: 14, scope: !2320)
!2344 = !DILocation(line: 1915, column: 9, scope: !2320)
!2345 = !DILocation(line: 1915, column: 7, scope: !2320)
!2346 = !DILocation(line: 0, scope: !2320)
!2347 = !DILocation(line: 1916, column: 8, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1916, column: 3)
!2349 = !DILocation(line: 0, scope: !2348)
!2350 = !DILocation(line: 1916, column: 19, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 1916, column: 3)
!2352 = !DILocation(line: 1916, column: 17, scope: !2351)
!2353 = !DILocation(line: 1916, column: 3, scope: !2348)
!2354 = !DILocation(line: 1918, column: 7, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1917, column: 5)
!2356 = !DILocation(line: 1918, column: 14, scope: !2355)
!2357 = !DILocation(line: 1918, column: 29, scope: !2355)
!2358 = !DILocation(line: 1919, column: 7, scope: !2355)
!2359 = !DILocation(line: 1919, column: 14, scope: !2355)
!2360 = !DILocation(line: 1919, column: 23, scope: !2355)
!2361 = !DILocation(line: 1920, column: 7, scope: !2355)
!2362 = !DILocation(line: 1920, column: 14, scope: !2355)
!2363 = !DILocation(line: 1920, column: 27, scope: !2355)
!2364 = !DILocation(line: 1921, column: 7, scope: !2355)
!2365 = !DILocation(line: 1921, column: 14, scope: !2355)
!2366 = !DILocation(line: 1921, column: 19, scope: !2355)
!2367 = !DILocation(line: 1922, column: 7, scope: !2355)
!2368 = !DILocation(line: 1922, column: 14, scope: !2355)
!2369 = !DILocation(line: 1922, column: 19, scope: !2355)
!2370 = !DILocation(line: 1916, column: 32, scope: !2351)
!2371 = !DILocation(line: 1916, column: 3, scope: !2351)
!2372 = distinct !{!2372, !2353, !2373}
!2373 = !DILocation(line: 1923, column: 5, scope: !2348)
!2374 = !DILocation(line: 1925, column: 12, scope: !2320)
!2375 = !DILocation(line: 1926, column: 12, scope: !2320)
!2376 = !DILocation(line: 1927, column: 3, scope: !2320)
!2377 = !DILocation(line: 1928, column: 19, scope: !2320)
!2378 = !DILocation(line: 1928, column: 3, scope: !2320)
!2379 = !DILocation(line: 1929, column: 3, scope: !2320)
!2380 = !DILocation(line: 1930, column: 3, scope: !2320)
!2381 = !DILocation(line: 1932, column: 3, scope: !2320)
!2382 = !DILocation(line: 1934, column: 7, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1934, column: 7)
!2384 = !DILocation(line: 1934, column: 7, scope: !2320)
!2385 = !DILocation(line: 1935, column: 32, scope: !2383)
!2386 = !DILocation(line: 1935, column: 5, scope: !2383)
!2387 = !DILocation(line: 1937, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1937, column: 7)
!2389 = !DILocation(line: 1937, column: 7, scope: !2320)
!2390 = !DILocation(line: 1938, column: 5, scope: !2388)
!2391 = !DILocation(line: 1939, column: 1, scope: !2320)
!2392 = distinct !DISubprogram(name: "get_uncond_jump_length", scope: !3, file: !3, line: 1198, type: !1894, scopeLine: 1199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2393)
!2393 = !{!2394, !2395, !2396}
!2394 = !DILocalVariable(name: "label", scope: !2392, file: !3, line: 1200, type: !783)
!2395 = !DILocalVariable(name: "jump", scope: !2392, file: !3, line: 1200, type: !783)
!2396 = !DILocalVariable(name: "length", scope: !2392, file: !3, line: 1201, type: !706)
!2397 = !DILocation(line: 1203, column: 30, scope: !2392)
!2398 = !DILocation(line: 1203, column: 48, scope: !2392)
!2399 = !DILocation(line: 1203, column: 11, scope: !2392)
!2400 = !DILocation(line: 0, scope: !2392)
!2401 = !DILocation(line: 1204, column: 26, scope: !2392)
!2402 = !DILocation(line: 1204, column: 10, scope: !2392)
!2403 = !DILocation(line: 1206, column: 12, scope: !2392)
!2404 = !DILocation(line: 1208, column: 3, scope: !2392)
!2405 = !DILocation(line: 1209, column: 3, scope: !2392)
!2406 = !DILocation(line: 1210, column: 3, scope: !2392)
!2407 = distinct !DISubprogram(name: "find_traces", scope: !3, file: !3, line: 221, type: !2408, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2411)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !2410, !747}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2424, !2425, !2429}
!2412 = !DILocalVariable(name: "n_traces", arg: 1, scope: !2407, file: !3, line: 221, type: !2410)
!2413 = !DILocalVariable(name: "traces", arg: 2, scope: !2407, file: !3, line: 221, type: !747)
!2414 = !DILocalVariable(name: "i", scope: !2407, file: !3, line: 223, type: !706)
!2415 = !DILocalVariable(name: "number_of_rounds", scope: !2407, file: !3, line: 224, type: !706)
!2416 = !DILocalVariable(name: "e", scope: !2407, file: !3, line: 225, type: !769)
!2417 = !DILocalVariable(name: "ei", scope: !2407, file: !3, line: 226, type: !2418)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !135, line: 682, baseType: !2419)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 679, size: 128, elements: !2420)
!2420 = !{!2421, !2422}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2419, file: !135, line: 680, baseType: !7, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2419, file: !135, line: 681, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!2424 = !DILocalVariable(name: "heap", scope: !2407, file: !3, line: 227, type: !721)
!2425 = !DILocalVariable(name: "count_threshold", scope: !2426, file: !3, line: 253, type: !1781)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 252, column: 5)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 251, column: 3)
!2428 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 251, column: 3)
!2429 = !DILocalVariable(name: "bb", scope: !2430, file: !3, line: 274, type: !751)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 273, column: 2)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 272, column: 7)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 272, column: 7)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 271, column: 5)
!2434 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 270, column: 7)
!2435 = !DILocation(line: 0, scope: !2407)
!2436 = !DILocation(line: 225, column: 3, scope: !2407)
!2437 = !DILocation(line: 226, column: 3, scope: !2407)
!2438 = !DILocation(line: 227, column: 3, scope: !2407)
!2439 = !DILocation(line: 236, column: 10, scope: !2407)
!2440 = !DILocation(line: 236, column: 8, scope: !2407)
!2441 = !DILocation(line: 237, column: 23, scope: !2407)
!2442 = !DILocation(line: 238, column: 19, scope: !2407)
!2443 = !DILocation(line: 239, column: 3, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 239, column: 3)
!2445 = !DILocation(line: 0, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 239, column: 3)
!2447 = !DILocation(line: 0, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 240, column: 5)
!2449 = !DILocation(line: 239, column: 3, scope: !2446)
!2450 = !DILocation(line: 251, column: 3, scope: !2428)
!2451 = !DILocation(line: 241, column: 34, scope: !2448)
!2452 = !DILocation(line: 241, column: 7, scope: !2448)
!2453 = !DILocation(line: 241, column: 11, scope: !2448)
!2454 = !DILocation(line: 241, column: 14, scope: !2448)
!2455 = !DILocation(line: 241, column: 20, scope: !2448)
!2456 = !DILocation(line: 241, column: 27, scope: !2448)
!2457 = !DILocation(line: 241, column: 32, scope: !2448)
!2458 = !DILocation(line: 242, column: 50, scope: !2448)
!2459 = !DILocation(line: 242, column: 67, scope: !2448)
!2460 = !DILocation(line: 242, column: 70, scope: !2448)
!2461 = !DILocation(line: 242, column: 56, scope: !2448)
!2462 = !DILocation(line: 243, column: 11, scope: !2448)
!2463 = !DILocation(line: 243, column: 14, scope: !2448)
!2464 = !DILocation(line: 242, column: 34, scope: !2448)
!2465 = !DILocation(line: 242, column: 7, scope: !2448)
!2466 = !DILocation(line: 242, column: 11, scope: !2448)
!2467 = !DILocation(line: 242, column: 14, scope: !2448)
!2468 = !DILocation(line: 242, column: 20, scope: !2448)
!2469 = !DILocation(line: 242, column: 27, scope: !2448)
!2470 = !DILocation(line: 242, column: 32, scope: !2448)
!2471 = !DILocation(line: 244, column: 11, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 244, column: 11)
!2473 = !DILocation(line: 244, column: 14, scope: !2472)
!2474 = !DILocation(line: 244, column: 20, scope: !2472)
!2475 = !DILocation(line: 244, column: 32, scope: !2472)
!2476 = !DILocation(line: 244, column: 30, scope: !2472)
!2477 = !DILocation(line: 244, column: 11, scope: !2448)
!2478 = !DILocation(line: 245, column: 22, scope: !2472)
!2479 = !DILocation(line: 245, column: 2, scope: !2472)
!2480 = !DILocation(line: 246, column: 20, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 246, column: 11)
!2482 = !DILocation(line: 246, column: 28, scope: !2481)
!2483 = !DILocation(line: 246, column: 26, scope: !2481)
!2484 = !DILocation(line: 246, column: 11, scope: !2448)
!2485 = !DILocation(line: 247, column: 18, scope: !2481)
!2486 = !DILocation(line: 247, column: 2, scope: !2481)
!2487 = distinct !{!2487, !2443, !2488}
!2488 = !DILocation(line: 248, column: 5, scope: !2444)
!2489 = !DILocation(line: 0, scope: !2428)
!2490 = !DILocation(line: 251, column: 17, scope: !2427)
!2491 = !DILocation(line: 255, column: 11, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 255, column: 11)
!2493 = !DILocation(line: 255, column: 11, scope: !2426)
!2494 = !DILocation(line: 256, column: 2, scope: !2492)
!2495 = !DILocation(line: 258, column: 11, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 258, column: 11)
!2497 = !DILocation(line: 258, column: 27, scope: !2496)
!2498 = !DILocation(line: 258, column: 11, scope: !2426)
!2499 = !DILocation(line: 259, column: 38, scope: !2496)
!2500 = !DILocation(line: 259, column: 36, scope: !2496)
!2501 = !DILocation(line: 259, column: 56, scope: !2496)
!2502 = !DILocation(line: 0, scope: !2426)
!2503 = !DILocation(line: 259, column: 2, scope: !2496)
!2504 = !DILocation(line: 261, column: 36, scope: !2496)
!2505 = !DILocation(line: 261, column: 45, scope: !2496)
!2506 = !DILocation(line: 261, column: 43, scope: !2496)
!2507 = !DILocation(line: 264, column: 29, scope: !2426)
!2508 = !DILocation(line: 0, scope: !2496)
!2509 = !DILocation(line: 263, column: 47, scope: !2426)
!2510 = !DILocation(line: 263, column: 67, scope: !2426)
!2511 = !DILocation(line: 264, column: 7, scope: !2426)
!2512 = !DILocation(line: 264, column: 27, scope: !2426)
!2513 = !DILocation(line: 264, column: 47, scope: !2426)
!2514 = !DILocation(line: 263, column: 7, scope: !2426)
!2515 = !DILocation(line: 251, column: 38, scope: !2427)
!2516 = !DILocation(line: 251, column: 3, scope: !2427)
!2517 = distinct !{!2517, !2450, !2518}
!2518 = !DILocation(line: 267, column: 5, scope: !2428)
!2519 = !DILocation(line: 268, column: 19, scope: !2407)
!2520 = !DILocation(line: 268, column: 3, scope: !2407)
!2521 = !DILocation(line: 270, column: 7, scope: !2434)
!2522 = !DILocation(line: 270, column: 7, scope: !2407)
!2523 = !DILocation(line: 272, column: 7, scope: !2432)
!2524 = !DILocation(line: 0, scope: !2433)
!2525 = !DILocation(line: 272, column: 23, scope: !2431)
!2526 = !DILocation(line: 272, column: 21, scope: !2431)
!2527 = !DILocation(line: 275, column: 52, scope: !2430)
!2528 = !DILocation(line: 276, column: 16, scope: !2430)
!2529 = !DILocation(line: 276, column: 22, scope: !2430)
!2530 = !DILocation(line: 275, column: 4, scope: !2430)
!2531 = !DILocation(line: 277, column: 24, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 277, column: 4)
!2533 = !DILocation(line: 0, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 277, column: 4)
!2535 = !DILocation(line: 277, column: 9, scope: !2532)
!2536 = !DILocation(line: 0, scope: !2532)
!2537 = !DILocation(line: 0, scope: !2430)
!2538 = !DILocation(line: 277, column: 47, scope: !2534)
!2539 = !DILocation(line: 277, column: 34, scope: !2534)
!2540 = !DILocation(line: 277, column: 4, scope: !2532)
!2541 = !DILocation(line: 278, column: 6, scope: !2534)
!2542 = !DILocation(line: 277, column: 76, scope: !2534)
!2543 = !DILocation(line: 277, column: 4, scope: !2534)
!2544 = distinct !{!2544, !2540, !2545}
!2545 = !DILocation(line: 278, column: 62, scope: !2532)
!2546 = !DILocation(line: 279, column: 4, scope: !2430)
!2547 = !DILocation(line: 272, column: 7, scope: !2431)
!2548 = distinct !{!2548, !2523, !2549}
!2549 = !DILocation(line: 280, column: 2, scope: !2432)
!2550 = !DILocation(line: 281, column: 7, scope: !2433)
!2551 = !DILocation(line: 282, column: 5, scope: !2433)
!2552 = !DILocation(line: 283, column: 1, scope: !2407)
!2553 = distinct !DISubprogram(name: "connect_traces", scope: !3, file: !3, line: 895, type: !2554, scopeLine: 896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !706, !747}
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2571, !2572, !2573, !2574, !2575, !2579, !2583, !2585, !2589, !2592, !2593, !2594, !2599, !2600, !2601, !2605, !2608}
!2557 = !DILocalVariable(name: "n_traces", arg: 1, scope: !2553, file: !3, line: 895, type: !706)
!2558 = !DILocalVariable(name: "traces", arg: 2, scope: !2553, file: !3, line: 895, type: !747)
!2559 = !DILocalVariable(name: "i", scope: !2553, file: !3, line: 897, type: !706)
!2560 = !DILocalVariable(name: "connected", scope: !2553, file: !3, line: 898, type: !704)
!2561 = !DILocalVariable(name: "two_passes", scope: !2553, file: !3, line: 899, type: !705)
!2562 = !DILocalVariable(name: "last_trace", scope: !2553, file: !3, line: 900, type: !706)
!2563 = !DILocalVariable(name: "current_pass", scope: !2553, file: !3, line: 901, type: !706)
!2564 = !DILocalVariable(name: "current_partition", scope: !2553, file: !3, line: 902, type: !706)
!2565 = !DILocalVariable(name: "freq_threshold", scope: !2553, file: !3, line: 903, type: !706)
!2566 = !DILocalVariable(name: "count_threshold", scope: !2553, file: !3, line: 904, type: !1781)
!2567 = !DILocalVariable(name: "t", scope: !2568, file: !3, line: 926, type: !706)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 925, column: 5)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 924, column: 3)
!2570 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 924, column: 3)
!2571 = !DILocalVariable(name: "t2", scope: !2568, file: !3, line: 927, type: !706)
!2572 = !DILocalVariable(name: "e", scope: !2568, file: !3, line: 928, type: !769)
!2573 = !DILocalVariable(name: "best", scope: !2568, file: !3, line: 928, type: !769)
!2574 = !DILocalVariable(name: "best_len", scope: !2568, file: !3, line: 929, type: !706)
!2575 = !DILocalVariable(name: "ei", scope: !2576, file: !3, line: 955, type: !2418)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 954, column: 2)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 953, column: 7)
!2578 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 953, column: 7)
!2579 = !DILocalVariable(name: "si", scope: !2580, file: !3, line: 960, type: !706)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 959, column: 6)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 958, column: 4)
!2582 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 958, column: 4)
!2583 = !DILocalVariable(name: "ei", scope: !2584, file: !3, line: 1001, type: !2418)
!2584 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 999, column: 2)
!2585 = !DILocalVariable(name: "di", scope: !2586, file: !3, line: 1006, type: !706)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1005, column: 6)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 1004, column: 4)
!2588 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 1004, column: 4)
!2589 = !DILocalVariable(name: "e2", scope: !2590, file: !3, line: 1039, type: !769)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1037, column: 6)
!2591 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 1024, column: 8)
!2592 = !DILocalVariable(name: "next_bb", scope: !2590, file: !3, line: 1040, type: !751)
!2593 = !DILocalVariable(name: "try_copy", scope: !2590, file: !3, line: 1041, type: !705)
!2594 = !DILocalVariable(name: "ei", scope: !2595, file: !3, line: 1049, type: !2418)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1048, column: 5)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 1044, column: 7)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 1043, column: 8)
!2598 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1043, column: 8)
!2599 = !DILocalVariable(name: "best2", scope: !2595, file: !3, line: 1050, type: !769)
!2600 = !DILocalVariable(name: "best2_len", scope: !2595, file: !3, line: 1051, type: !706)
!2601 = !DILocalVariable(name: "di", scope: !2602, file: !3, line: 1067, type: !706)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1066, column: 9)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1065, column: 7)
!2604 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 1065, column: 7)
!2605 = !DILocalVariable(name: "new_bb", scope: !2606, file: !3, line: 1106, type: !751)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1105, column: 3)
!2607 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1100, column: 12)
!2608 = !DILocalVariable(name: "bb", scope: !2609, file: !3, line: 1140, type: !751)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 1139, column: 5)
!2610 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 1138, column: 7)
!2611 = !DILocation(line: 0, scope: !2553)
!2612 = !DILocation(line: 906, column: 20, scope: !2553)
!2613 = !DILocation(line: 906, column: 64, scope: !2553)
!2614 = !DILocation(line: 907, column: 7, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 907, column: 7)
!2616 = !DILocation(line: 907, column: 23, scope: !2615)
!2617 = !DILocation(line: 907, column: 7, scope: !2553)
!2618 = !DILocation(line: 908, column: 63, scope: !2615)
!2619 = !DILocation(line: 908, column: 5, scope: !2615)
!2620 = !DILocation(line: 910, column: 39, scope: !2615)
!2621 = !DILocation(line: 910, column: 46, scope: !2615)
!2622 = !DILocation(line: 0, scope: !2615)
!2623 = !DILocation(line: 912, column: 15, scope: !2553)
!2624 = !DILocation(line: 915, column: 23, scope: !2553)
!2625 = !DILocation(line: 918, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 918, column: 7)
!2627 = !DILocation(line: 918, column: 7, scope: !2553)
!2628 = !DILocation(line: 919, column: 5, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 919, column: 5)
!2630 = !DILocation(line: 919, column: 19, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 919, column: 5)
!2632 = !DILocation(line: 919, column: 33, scope: !2631)
!2633 = !DILocation(line: 919, column: 30, scope: !2631)
!2634 = !DILocation(line: 921, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 920, column: 11)
!2636 = !DILocation(line: 921, column: 4, scope: !2635)
!2637 = !DILocation(line: 920, column: 11, scope: !2631)
!2638 = !DILocation(line: 919, column: 47, scope: !2631)
!2639 = !DILocation(line: 919, column: 5, scope: !2631)
!2640 = distinct !{!2640, !2628, !2641}
!2641 = !DILocation(line: 922, column: 15, scope: !2629)
!2642 = !DILocation(line: 924, column: 8, scope: !2570)
!2643 = !DILocation(line: 916, column: 14, scope: !2553)
!2644 = !DILocation(line: 0, scope: !2569)
!2645 = !DILocation(line: 0, scope: !2568)
!2646 = !DILocation(line: 0, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 946, column: 11)
!2648 = !DILocation(line: 0, scope: !2576)
!2649 = !DILocation(line: 0, scope: !2582)
!2650 = !DILocation(line: 0, scope: !2581)
!2651 = !DILocation(line: 0, scope: !2584)
!2652 = !DILocation(line: 0, scope: !2588)
!2653 = !DILocation(line: 0, scope: !2587)
!2654 = !DILocation(line: 0, scope: !2590)
!2655 = !DILocation(line: 0, scope: !2598)
!2656 = !DILocation(line: 0, scope: !2595)
!2657 = !DILocation(line: 0, scope: !2604)
!2658 = !DILocation(line: 0, scope: !2603)
!2659 = !DILocation(line: 913, column: 14, scope: !2553)
!2660 = !DILocation(line: 0, scope: !2570)
!2661 = !DILocation(line: 924, column: 17, scope: !2569)
!2662 = !DILocation(line: 924, column: 28, scope: !2569)
!2663 = !DILocation(line: 924, column: 59, scope: !2569)
!2664 = !DILocation(line: 924, column: 43, scope: !2569)
!2665 = !DILocation(line: 924, column: 3, scope: !2570)
!2666 = !DILocation(line: 928, column: 7, scope: !2568)
!2667 = !DILocation(line: 931, column: 11, scope: !2568)
!2668 = !DILocation(line: 933, column: 4, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 932, column: 2)
!2670 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 931, column: 11)
!2671 = !DILocation(line: 937, column: 26, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 937, column: 8)
!2673 = !DILocation(line: 941, column: 2, scope: !2669)
!2674 = !DILocation(line: 943, column: 11, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 943, column: 11)
!2676 = !DILocation(line: 943, column: 11, scope: !2568)
!2677 = !DILocation(line: 947, column: 4, scope: !2647)
!2678 = !DILocation(line: 947, column: 7, scope: !2647)
!2679 = !DILocation(line: 947, column: 38, scope: !2647)
!2680 = !DILocation(line: 946, column: 11, scope: !2568)
!2681 = !DILocation(line: 950, column: 20, scope: !2568)
!2682 = !DILocation(line: 953, column: 12, scope: !2578)
!2683 = !DILocation(line: 0, scope: !2578)
!2684 = !DILocation(line: 953, column: 23, scope: !2577)
!2685 = !DILocation(line: 953, column: 7, scope: !2578)
!2686 = !DILocation(line: 955, column: 4, scope: !2576)
!2687 = !DILocation(line: 958, column: 4, scope: !2582)
!2688 = !DILocation(line: 957, column: 13, scope: !2576)
!2689 = !DILocation(line: 956, column: 9, scope: !2576)
!2690 = !DILocation(line: 958, column: 4, scope: !2581)
!2691 = !DILocation(line: 960, column: 17, scope: !2580)
!2692 = !DILocation(line: 960, column: 20, scope: !2580)
!2693 = !DILocation(line: 960, column: 25, scope: !2580)
!2694 = !DILocation(line: 0, scope: !2580)
!2695 = !DILocation(line: 962, column: 22, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 962, column: 12)
!2697 = !DILocation(line: 962, column: 19, scope: !2696)
!2698 = !DILocation(line: 963, column: 5, scope: !2696)
!2699 = !DILocation(line: 963, column: 12, scope: !2696)
!2700 = !DILocation(line: 963, column: 18, scope: !2696)
!2701 = !DILocation(line: 964, column: 5, scope: !2696)
!2702 = !DILocation(line: 964, column: 19, scope: !2696)
!2703 = !DILocation(line: 965, column: 5, scope: !2696)
!2704 = !DILocation(line: 965, column: 8, scope: !2696)
!2705 = !DILocation(line: 965, column: 16, scope: !2696)
!2706 = !DILocation(line: 965, column: 29, scope: !2696)
!2707 = !DILocation(line: 966, column: 5, scope: !2696)
!2708 = !DILocation(line: 966, column: 9, scope: !2696)
!2709 = !DILocation(line: 967, column: 5, scope: !2696)
!2710 = !DILocation(line: 967, column: 9, scope: !2696)
!2711 = !DILocation(line: 967, column: 31, scope: !2696)
!2712 = !DILocation(line: 968, column: 5, scope: !2696)
!2713 = !DILocation(line: 968, column: 10, scope: !2696)
!2714 = !DILocation(line: 969, column: 9, scope: !2696)
!2715 = !DILocation(line: 969, column: 15, scope: !2696)
!2716 = !DILocation(line: 969, column: 35, scope: !2696)
!2717 = !DILocation(line: 969, column: 27, scope: !2696)
!2718 = !DILocation(line: 970, column: 9, scope: !2696)
!2719 = !DILocation(line: 970, column: 28, scope: !2696)
!2720 = !DILocation(line: 971, column: 6, scope: !2696)
!2721 = !DILocation(line: 971, column: 38, scope: !2696)
!2722 = !DILocation(line: 971, column: 45, scope: !2696)
!2723 = !DILocation(line: 962, column: 12, scope: !2580)
!2724 = !DILocation(line: 974, column: 45, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 972, column: 3)
!2726 = !DILocation(line: 975, column: 3, scope: !2725)
!2727 = distinct !{!2727, !2687, !2728}
!2728 = !DILocation(line: 976, column: 6, scope: !2582)
!2729 = !DILocation(line: 977, column: 8, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 977, column: 8)
!2731 = !DILocation(line: 977, column: 8, scope: !2576)
!2732 = !DILocation(line: 979, column: 31, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 978, column: 6)
!2734 = !DILocation(line: 979, column: 14, scope: !2733)
!2735 = !DILocation(line: 979, column: 19, scope: !2733)
!2736 = !DILocation(line: 979, column: 23, scope: !2733)
!2737 = !DILocation(line: 980, column: 13, scope: !2733)
!2738 = !DILocation(line: 980, column: 23, scope: !2733)
!2739 = !DILocation(line: 980, column: 28, scope: !2733)
!2740 = !DILocation(line: 980, column: 35, scope: !2733)
!2741 = !DILocation(line: 981, column: 8, scope: !2733)
!2742 = !DILocation(line: 981, column: 22, scope: !2733)
!2743 = !DILocation(line: 983, column: 12, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 983, column: 12)
!2745 = !DILocation(line: 983, column: 12, scope: !2733)
!2746 = !DILocation(line: 986, column: 13, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 984, column: 3)
!2748 = !DILocation(line: 986, column: 18, scope: !2747)
!2749 = !DILocation(line: 986, column: 31, scope: !2747)
!2750 = !DILocation(line: 986, column: 37, scope: !2747)
!2751 = !DILocation(line: 985, column: 5, scope: !2747)
!2752 = !DILocation(line: 987, column: 3, scope: !2747)
!2753 = !DILocation(line: 991, column: 2, scope: !2577)
!2754 = distinct !{!2754, !2685, !2755}
!2755 = !DILocation(line: 991, column: 2, scope: !2578)
!2756 = !DILocation(line: 993, column: 22, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 993, column: 11)
!2758 = !DILocation(line: 993, column: 11, scope: !2568)
!2759 = !DILocation(line: 994, column: 33, scope: !2757)
!2760 = !DILocation(line: 994, column: 44, scope: !2757)
!2761 = !DILocation(line: 994, column: 2, scope: !2757)
!2762 = !DILocation(line: 994, column: 21, scope: !2757)
!2763 = !DILocation(line: 994, column: 27, scope: !2757)
!2764 = !DILocation(line: 994, column: 31, scope: !2757)
!2765 = !DILocation(line: 998, column: 7, scope: !2568)
!2766 = !DILocation(line: 1001, column: 4, scope: !2584)
!2767 = !DILocation(line: 1004, column: 4, scope: !2588)
!2768 = !DILocation(line: 1003, column: 13, scope: !2584)
!2769 = !DILocation(line: 1002, column: 9, scope: !2584)
!2770 = !DILocation(line: 1004, column: 4, scope: !2587)
!2771 = !DILocation(line: 1006, column: 17, scope: !2586)
!2772 = !DILocation(line: 1006, column: 20, scope: !2586)
!2773 = !DILocation(line: 1006, column: 26, scope: !2586)
!2774 = !DILocation(line: 0, scope: !2586)
!2775 = !DILocation(line: 1008, column: 23, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1008, column: 12)
!2777 = !DILocation(line: 1008, column: 20, scope: !2776)
!2778 = !DILocation(line: 1009, column: 5, scope: !2776)
!2779 = !DILocation(line: 1009, column: 12, scope: !2776)
!2780 = !DILocation(line: 1009, column: 18, scope: !2776)
!2781 = !DILocation(line: 1010, column: 5, scope: !2776)
!2782 = !DILocation(line: 1010, column: 19, scope: !2776)
!2783 = !DILocation(line: 1011, column: 5, scope: !2776)
!2784 = !DILocation(line: 1011, column: 8, scope: !2776)
!2785 = !DILocation(line: 1011, column: 16, scope: !2776)
!2786 = !DILocation(line: 1011, column: 31, scope: !2776)
!2787 = !DILocation(line: 1012, column: 5, scope: !2776)
!2788 = !DILocation(line: 1012, column: 9, scope: !2776)
!2789 = !DILocation(line: 1013, column: 5, scope: !2776)
!2790 = !DILocation(line: 1013, column: 9, scope: !2776)
!2791 = !DILocation(line: 1013, column: 32, scope: !2776)
!2792 = !DILocation(line: 1014, column: 5, scope: !2776)
!2793 = !DILocation(line: 1014, column: 10, scope: !2776)
!2794 = !DILocation(line: 1015, column: 9, scope: !2776)
!2795 = !DILocation(line: 1015, column: 15, scope: !2776)
!2796 = !DILocation(line: 1015, column: 35, scope: !2776)
!2797 = !DILocation(line: 1015, column: 27, scope: !2776)
!2798 = !DILocation(line: 1016, column: 9, scope: !2776)
!2799 = !DILocation(line: 1016, column: 28, scope: !2776)
!2800 = !DILocation(line: 1017, column: 6, scope: !2776)
!2801 = !DILocation(line: 1017, column: 40, scope: !2776)
!2802 = !DILocation(line: 1017, column: 47, scope: !2776)
!2803 = !DILocation(line: 1008, column: 12, scope: !2586)
!2804 = !DILocation(line: 1020, column: 47, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1018, column: 3)
!2806 = !DILocation(line: 1021, column: 3, scope: !2805)
!2807 = distinct !{!2807, !2767, !2808}
!2808 = !DILocation(line: 1022, column: 6, scope: !2588)
!2809 = !DILocation(line: 1024, column: 8, scope: !2591)
!2810 = !DILocation(line: 1024, column: 8, scope: !2584)
!2811 = !DILocation(line: 1026, column: 12, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1026, column: 12)
!2813 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1025, column: 6)
!2814 = !DILocation(line: 1026, column: 12, scope: !2813)
!2815 = !DILocation(line: 1029, column: 13, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 1027, column: 3)
!2817 = !DILocation(line: 1029, column: 18, scope: !2816)
!2818 = !DILocation(line: 1029, column: 31, scope: !2816)
!2819 = !DILocation(line: 1029, column: 37, scope: !2816)
!2820 = !DILocation(line: 1028, column: 5, scope: !2816)
!2821 = !DILocation(line: 1030, column: 3, scope: !2816)
!2822 = !DILocation(line: 1031, column: 12, scope: !2813)
!2823 = !DILocation(line: 1031, column: 22, scope: !2813)
!2824 = !DILocation(line: 1031, column: 28, scope: !2813)
!2825 = !DILocation(line: 1031, column: 35, scope: !2813)
!2826 = !DILocation(line: 1032, column: 39, scope: !2813)
!2827 = !DILocation(line: 1032, column: 49, scope: !2813)
!2828 = !DILocation(line: 1032, column: 8, scope: !2813)
!2829 = !DILocation(line: 1032, column: 27, scope: !2813)
!2830 = !DILocation(line: 1032, column: 33, scope: !2813)
!2831 = !DILocation(line: 1032, column: 37, scope: !2813)
!2832 = !DILocation(line: 1033, column: 8, scope: !2813)
!2833 = !DILocation(line: 1033, column: 21, scope: !2813)
!2834 = !DILocation(line: 1035, column: 6, scope: !2813)
!2835 = !DILocation(line: 1039, column: 8, scope: !2590)
!2836 = !DILocation(line: 1043, column: 8, scope: !2598)
!2837 = !DILocation(line: 1040, column: 20, scope: !2590)
!2838 = !DILocation(line: 1041, column: 13, scope: !2590)
!2839 = !DILocation(line: 1043, column: 8, scope: !2597)
!2840 = !DILocation(line: 1044, column: 7, scope: !2596)
!2841 = !DILocation(line: 1044, column: 10, scope: !2596)
!2842 = !DILocation(line: 1044, column: 18, scope: !2596)
!2843 = !DILocation(line: 1044, column: 15, scope: !2596)
!2844 = !DILocation(line: 1045, column: 7, scope: !2596)
!2845 = !DILocation(line: 1045, column: 14, scope: !2596)
!2846 = !DILocation(line: 1045, column: 20, scope: !2596)
!2847 = !DILocation(line: 1046, column: 7, scope: !2596)
!2848 = !DILocation(line: 1046, column: 21, scope: !2596)
!2849 = !DILocation(line: 1047, column: 7, scope: !2596)
!2850 = !DILocation(line: 1047, column: 12, scope: !2596)
!2851 = !DILocation(line: 1047, column: 17, scope: !2596)
!2852 = !DILocation(line: 1047, column: 23, scope: !2596)
!2853 = !DILocation(line: 1047, column: 43, scope: !2596)
!2854 = !DILocation(line: 1047, column: 35, scope: !2596)
!2855 = !DILocation(line: 1044, column: 7, scope: !2597)
!2856 = !DILocation(line: 1049, column: 7, scope: !2595)
!2857 = !DILocation(line: 1056, column: 11, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 1056, column: 11)
!2859 = !DILocation(line: 1056, column: 24, scope: !2858)
!2860 = !DILocation(line: 1056, column: 31, scope: !2858)
!2861 = !DILocation(line: 1056, column: 46, scope: !2858)
!2862 = !DILocation(line: 1057, column: 4, scope: !2858)
!2863 = !DILocation(line: 1057, column: 7, scope: !2858)
!2864 = !DILocation(line: 1057, column: 50, scope: !2858)
!2865 = !DILocation(line: 1058, column: 7, scope: !2858)
!2866 = !DILocation(line: 1056, column: 11, scope: !2595)
!2867 = !DILocation(line: 1062, column: 4, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 1059, column: 9)
!2869 = !DILocation(line: 1065, column: 7, scope: !2604)
!2870 = !DILocation(line: 1065, column: 7, scope: !2603)
!2871 = !DILocation(line: 1067, column: 13, scope: !2602)
!2872 = !DILocation(line: 1067, column: 17, scope: !2602)
!2873 = !DILocation(line: 1067, column: 23, scope: !2602)
!2874 = !DILocation(line: 0, scope: !2602)
!2875 = !DILocation(line: 1069, column: 20, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1069, column: 8)
!2877 = !DILocation(line: 1069, column: 17, scope: !2876)
!2878 = !DILocation(line: 1070, column: 8, scope: !2876)
!2879 = !DILocation(line: 1070, column: 17, scope: !2876)
!2880 = !DILocation(line: 1070, column: 23, scope: !2876)
!2881 = !DILocation(line: 1071, column: 5, scope: !2876)
!2882 = !DILocation(line: 1071, column: 20, scope: !2876)
!2883 = !DILocation(line: 1072, column: 5, scope: !2876)
!2884 = !DILocation(line: 1072, column: 8, scope: !2876)
!2885 = !DILocation(line: 1072, column: 16, scope: !2876)
!2886 = !DILocation(line: 1072, column: 31, scope: !2876)
!2887 = !DILocation(line: 1073, column: 5, scope: !2876)
!2888 = !DILocation(line: 1073, column: 9, scope: !2876)
!2889 = !DILocation(line: 1074, column: 5, scope: !2876)
!2890 = !DILocation(line: 1074, column: 9, scope: !2876)
!2891 = !DILocation(line: 1074, column: 33, scope: !2876)
!2892 = !DILocation(line: 1075, column: 5, scope: !2876)
!2893 = !DILocation(line: 1075, column: 9, scope: !2876)
!2894 = !DILocation(line: 1075, column: 29, scope: !2876)
!2895 = !DILocation(line: 1076, column: 5, scope: !2876)
!2896 = !DILocation(line: 1076, column: 13, scope: !2876)
!2897 = !DILocation(line: 1076, column: 19, scope: !2876)
!2898 = !DILocation(line: 1077, column: 5, scope: !2876)
!2899 = !DILocation(line: 1077, column: 10, scope: !2876)
!2900 = !DILocation(line: 1078, column: 9, scope: !2876)
!2901 = !DILocation(line: 1078, column: 37, scope: !2876)
!2902 = !DILocation(line: 1078, column: 28, scope: !2876)
!2903 = !DILocation(line: 1079, column: 9, scope: !2876)
!2904 = !DILocation(line: 1079, column: 29, scope: !2876)
!2905 = !DILocation(line: 1080, column: 6, scope: !2876)
!2906 = !DILocation(line: 1080, column: 40, scope: !2876)
!2907 = !DILocation(line: 1081, column: 9, scope: !2876)
!2908 = !DILocation(line: 1069, column: 8, scope: !2602)
!2909 = !DILocation(line: 1083, column: 15, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 1082, column: 6)
!2911 = !DILocation(line: 1085, column: 12, scope: !2910)
!2912 = !DILocation(line: 1086, column: 29, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 1085, column: 12)
!2914 = !DILocation(line: 1086, column: 37, scope: !2913)
!2915 = !DILocation(line: 1086, column: 22, scope: !2913)
!2916 = !DILocation(line: 1086, column: 53, scope: !2913)
!2917 = !DILocation(line: 1086, column: 10, scope: !2913)
!2918 = !DILocation(line: 0, scope: !2913)
!2919 = !DILocation(line: 1091, column: 6, scope: !2910)
!2920 = distinct !{!2920, !2869, !2921}
!2921 = !DILocation(line: 1092, column: 9, scope: !2604)
!2922 = !DILocation(line: 1093, column: 5, scope: !2596)
!2923 = distinct !{!2923, !2836, !2924}
!2924 = !DILocation(line: 1093, column: 5, scope: !2598)
!2925 = !DILocation(line: 1095, column: 12, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1095, column: 12)
!2927 = !DILocation(line: 1100, column: 12, scope: !2607)
!2928 = !DILocation(line: 1101, column: 5, scope: !2607)
!2929 = !DILocation(line: 1101, column: 25, scope: !2607)
!2930 = !DILocation(line: 1102, column: 5, scope: !2607)
!2931 = !DILocation(line: 1103, column: 5, scope: !2607)
!2932 = !DILocation(line: 1103, column: 8, scope: !2607)
!2933 = !DILocation(line: 1103, column: 30, scope: !2607)
!2934 = !DILocation(line: 1104, column: 5, scope: !2607)
!2935 = !DILocation(line: 1104, column: 14, scope: !2607)
!2936 = !DILocation(line: 1104, column: 20, scope: !2607)
!2937 = !DILocation(line: 0, scope: !2607)
!2938 = !DILocation(line: 1101, column: 8, scope: !2607)
!2939 = !DILocation(line: 1100, column: 12, scope: !2590)
!2940 = !DILocation(line: 1108, column: 9, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1108, column: 9)
!2942 = !DILocation(line: 1108, column: 9, scope: !2606)
!2943 = !DILocation(line: 1111, column: 21, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1109, column: 7)
!2945 = !DILocation(line: 1111, column: 27, scope: !2944)
!2946 = !DILocation(line: 1111, column: 40, scope: !2944)
!2947 = !DILocation(line: 1111, column: 46, scope: !2944)
!2948 = !DILocation(line: 1110, column: 9, scope: !2944)
!2949 = !DILocation(line: 1112, column: 14, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 1112, column: 13)
!2951 = !DILocation(line: 1112, column: 13, scope: !2944)
!2952 = !DILocation(line: 1113, column: 17, scope: !2950)
!2953 = !DILocation(line: 1113, column: 4, scope: !2950)
!2954 = !DILocation(line: 1114, column: 29, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1114, column: 18)
!2956 = !DILocation(line: 1114, column: 26, scope: !2955)
!2957 = !DILocation(line: 0, scope: !2955)
!2958 = !DILocation(line: 1114, column: 18, scope: !2950)
!2959 = !DILocation(line: 1115, column: 4, scope: !2955)
!2960 = !DILocation(line: 1117, column: 41, scope: !2955)
!2961 = !DILocation(line: 1117, column: 4, scope: !2955)
!2962 = !DILocation(line: 1120, column: 29, scope: !2606)
!2963 = !DILocation(line: 1120, column: 51, scope: !2606)
!2964 = !DILocation(line: 1120, column: 14, scope: !2606)
!2965 = !DILocation(line: 0, scope: !2606)
!2966 = !DILocation(line: 1121, column: 20, scope: !2606)
!2967 = !DILocation(line: 1122, column: 9, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1122, column: 9)
!2969 = !DILocation(line: 1122, column: 17, scope: !2968)
!2970 = !DILocation(line: 1122, column: 31, scope: !2968)
!2971 = !DILocation(line: 1122, column: 28, scope: !2968)
!2972 = !DILocation(line: 1122, column: 9, scope: !2606)
!2973 = !DILocation(line: 1124, column: 13, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 1123, column: 7)
!2975 = !DILocation(line: 1124, column: 26, scope: !2974)
!2976 = !DILocation(line: 1124, column: 33, scope: !2974)
!2977 = !DILocation(line: 1125, column: 40, scope: !2974)
!2978 = !DILocation(line: 1125, column: 50, scope: !2974)
!2979 = !DILocation(line: 1125, column: 9, scope: !2974)
!2980 = !DILocation(line: 1125, column: 28, scope: !2974)
!2981 = !DILocation(line: 1125, column: 34, scope: !2974)
!2982 = !DILocation(line: 1125, column: 38, scope: !2974)
!2983 = !DILocation(line: 1126, column: 9, scope: !2974)
!2984 = !DILocation(line: 1126, column: 22, scope: !2974)
!2985 = !DILocation(line: 1131, column: 3, scope: !2607)
!2986 = !DILocation(line: 1134, column: 6, scope: !2591)
!2987 = !DILocation(line: 0, scope: !2591)
!2988 = !DILocation(line: 1135, column: 2, scope: !2568)
!2989 = distinct !{!2989, !2765, !2988}
!2990 = !DILocation(line: 1136, column: 5, scope: !2569)
!2991 = !DILocation(line: 924, column: 68, scope: !2569)
!2992 = !DILocation(line: 924, column: 3, scope: !2569)
!2993 = distinct !{!2993, !2665, !2994}
!2994 = !DILocation(line: 1136, column: 5, scope: !2570)
!2995 = !DILocation(line: 1138, column: 7, scope: !2610)
!2996 = !DILocation(line: 1138, column: 7, scope: !2553)
!2997 = !DILocation(line: 1142, column: 7, scope: !2609)
!2998 = !DILocation(line: 1143, column: 12, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1143, column: 7)
!3000 = !DILocation(line: 0, scope: !2999)
!3001 = !DILocation(line: 0, scope: !2609)
!3002 = !DILocation(line: 1143, column: 7, scope: !2999)
!3003 = !DILocation(line: 1144, column: 33, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 1143, column: 7)
!3005 = !DILocation(line: 1144, column: 2, scope: !3004)
!3006 = !DILocation(line: 1143, column: 61, scope: !3004)
!3007 = !DILocation(line: 1143, column: 7, scope: !3004)
!3008 = distinct !{!3008, !3002, !3009}
!3009 = !DILocation(line: 1144, column: 38, scope: !2999)
!3010 = !DILocation(line: 1145, column: 7, scope: !2609)
!3011 = !DILocation(line: 1146, column: 15, scope: !2609)
!3012 = !DILocation(line: 1146, column: 7, scope: !2609)
!3013 = !DILocation(line: 1147, column: 5, scope: !2609)
!3014 = !DILocation(line: 1149, column: 3, scope: !2553)
!3015 = !DILocation(line: 1150, column: 1, scope: !2553)
!3016 = distinct !DISubprogram(name: "verify_hot_cold_block_grouping", scope: !3, file: !3, line: 1860, type: !2321, scopeLine: 1861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3017)
!3017 = !{!3018, !3019, !3020, !3021}
!3018 = !DILocalVariable(name: "bb", scope: !3016, file: !3, line: 1862, type: !751)
!3019 = !DILocalVariable(name: "err", scope: !3016, file: !3, line: 1863, type: !706)
!3020 = !DILocalVariable(name: "switched_sections", scope: !3016, file: !3, line: 1864, type: !705)
!3021 = !DILocalVariable(name: "current_partition", scope: !3016, file: !3, line: 1865, type: !706)
!3022 = !DILocation(line: 0, scope: !3016)
!3023 = !DILocation(line: 1867, column: 3, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 1867, column: 3)
!3025 = !DILocation(line: 1867, column: 3, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1867, column: 3)
!3027 = !DILocation(line: 1865, column: 7, scope: !3016)
!3028 = !DILocation(line: 1864, column: 8, scope: !3016)
!3029 = !DILocation(line: 0, scope: !3024)
!3030 = !DILocation(line: 1869, column: 12, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1869, column: 11)
!3032 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1868, column: 5)
!3033 = !DILocation(line: 1869, column: 11, scope: !3032)
!3034 = !DILocation(line: 0, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1871, column: 11)
!3036 = !DILocation(line: 1871, column: 11, scope: !3035)
!3037 = !DILocation(line: 1870, column: 22, scope: !3031)
!3038 = !DILocation(line: 1870, column: 2, scope: !3031)
!3039 = !DILocation(line: 1871, column: 29, scope: !3035)
!3040 = !DILocation(line: 1871, column: 11, scope: !3032)
!3041 = !DILocation(line: 1873, column: 8, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1873, column: 8)
!3043 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1872, column: 2)
!3044 = !DILocation(line: 1873, column: 8, scope: !3043)
!3045 = !DILocation(line: 1876, column: 12, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1874, column: 6)
!3047 = !DILocation(line: 1875, column: 8, scope: !3046)
!3048 = !DILocation(line: 1878, column: 6, scope: !3046)
!3049 = !DILocation(line: 0, scope: !3026)
!3050 = distinct !{!3050, !3023, !3051}
!3051 = !DILocation(line: 1885, column: 5, scope: !3024)
!3052 = !DILocation(line: 1887, column: 3, scope: !3016)
!3053 = !DILocation(line: 1888, column: 1, scope: !3016)
!3054 = distinct !DISubprogram(name: "gate_duplicate_computed_gotos", scope: !3, file: !3, line: 1980, type: !1834, scopeLine: 1981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!3055 = !DILocation(line: 1982, column: 15, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 1982, column: 7)
!3057 = !DILocation(line: 1982, column: 7, scope: !3056)
!3058 = !DILocation(line: 1982, column: 7, scope: !3054)
!3059 = !DILocation(line: 1984, column: 11, scope: !3054)
!3060 = !DILocation(line: 1984, column: 20, scope: !3054)
!3061 = !DILocation(line: 1985, column: 7, scope: !3054)
!3062 = !DILocation(line: 1985, column: 4, scope: !3054)
!3063 = !DILocation(line: 1986, column: 39, scope: !3054)
!3064 = !DILocation(line: 1986, column: 9, scope: !3054)
!3065 = !DILocation(line: 1986, column: 7, scope: !3054)
!3066 = !DILocation(line: 1984, column: 3, scope: !3054)
!3067 = !DILocation(line: 0, scope: !3054)
!3068 = !DILocation(line: 1987, column: 1, scope: !3054)
!3069 = distinct !DISubprogram(name: "duplicate_computed_gotos", scope: !3, file: !3, line: 1991, type: !1838, scopeLine: 1992, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3070)
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3079, !3080, !3081, !3082, !3083}
!3071 = !DILocalVariable(name: "bb", scope: !3069, file: !3, line: 1993, type: !751)
!3072 = !DILocalVariable(name: "new_bb", scope: !3069, file: !3, line: 1993, type: !751)
!3073 = !DILocalVariable(name: "candidates", scope: !3069, file: !3, line: 1994, type: !1820)
!3074 = !DILocalVariable(name: "max_size", scope: !3069, file: !3, line: 1995, type: !706)
!3075 = !DILocalVariable(name: "insn", scope: !3076, file: !3, line: 2016, type: !783)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 2015, column: 5)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 2014, column: 3)
!3078 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 2014, column: 3)
!3079 = !DILocalVariable(name: "e", scope: !3076, file: !3, line: 2017, type: !769)
!3080 = !DILocalVariable(name: "ei", scope: !3076, file: !3, line: 2018, type: !2418)
!3081 = !DILocalVariable(name: "size", scope: !3076, file: !3, line: 2019, type: !706)
!3082 = !DILocalVariable(name: "all_flags", scope: !3076, file: !3, line: 2019, type: !706)
!3083 = !DILabel(scope: !3069, name: "done", file: !3, line: 2087)
!3084 = !DILocation(line: 1997, column: 7, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 1997, column: 7)
!3086 = !DILocation(line: 1997, column: 22, scope: !3085)
!3087 = !DILocation(line: 1997, column: 7, scope: !3069)
!3088 = !DILocation(line: 2000, column: 3, scope: !3069)
!3089 = !DILocation(line: 2005, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 2005, column: 7)
!3091 = !DILocation(line: 2005, column: 26, scope: !3090)
!3092 = !DILocation(line: 2005, column: 7, scope: !3069)
!3093 = !DILocation(line: 2006, column: 26, scope: !3090)
!3094 = !DILocation(line: 2006, column: 24, scope: !3090)
!3095 = !DILocation(line: 2006, column: 5, scope: !3090)
!3096 = !DILocation(line: 2008, column: 14, scope: !3069)
!3097 = !DILocation(line: 2008, column: 35, scope: !3069)
!3098 = !DILocation(line: 2008, column: 33, scope: !3069)
!3099 = !DILocation(line: 0, scope: !3069)
!3100 = !DILocation(line: 2009, column: 16, scope: !3069)
!3101 = !DILocation(line: 2014, column: 3, scope: !3078)
!3102 = !DILocation(line: 0, scope: !3076)
!3103 = !DILocation(line: 0, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 2048, column: 7)
!3105 = !DILocation(line: 0, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 2048, column: 7)
!3107 = !DILocation(line: 2014, column: 3, scope: !3077)
!3108 = !DILocation(line: 0, scope: !3078)
!3109 = !DILocation(line: 2017, column: 7, scope: !3076)
!3110 = !DILocation(line: 2018, column: 7, scope: !3076)
!3111 = !DILocation(line: 2022, column: 15, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 2022, column: 11)
!3113 = !DILocation(line: 2022, column: 23, scope: !3112)
!3114 = !DILocation(line: 2022, column: 11, scope: !3076)
!3115 = !DILocation(line: 2023, column: 6, scope: !3112)
!3116 = !DILocation(line: 2023, column: 10, scope: !3112)
!3117 = !DILocation(line: 2023, column: 2, scope: !3112)
!3118 = !DILocation(line: 2026, column: 29, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 2026, column: 11)
!3120 = !DILocation(line: 2026, column: 12, scope: !3119)
!3121 = !DILocation(line: 2026, column: 11, scope: !3076)
!3122 = !DILocation(line: 2030, column: 26, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 2030, column: 11)
!3124 = !DILocation(line: 2030, column: 11, scope: !3123)
!3125 = !DILocation(line: 2031, column: 4, scope: !3123)
!3126 = !DILocation(line: 2031, column: 8, scope: !3123)
!3127 = !DILocation(line: 2030, column: 11, scope: !3076)
!3128 = !DILocation(line: 2036, column: 7, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 2036, column: 7)
!3130 = !DILocation(line: 0, scope: !3129)
!3131 = !DILocation(line: 2036, column: 7, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 2036, column: 7)
!3133 = !DILocation(line: 2037, column: 6, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 2037, column: 6)
!3135 = !DILocation(line: 2037, column: 6, scope: !3132)
!3136 = !DILocation(line: 2039, column: 14, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 2038, column: 4)
!3138 = !DILocation(line: 2039, column: 11, scope: !3137)
!3139 = !DILocation(line: 2040, column: 15, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 2040, column: 10)
!3141 = !DILocation(line: 2040, column: 10, scope: !3137)
!3142 = distinct !{!3142, !3128, !3143}
!3143 = !DILocation(line: 2042, column: 4, scope: !3129)
!3144 = !DILocation(line: 2043, column: 16, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 2043, column: 11)
!3146 = !DILocation(line: 2043, column: 11, scope: !3076)
!3147 = !DILocation(line: 2048, column: 7, scope: !3104)
!3148 = !DILocation(line: 2048, column: 7, scope: !3106)
!3149 = !DILocation(line: 2049, column: 15, scope: !3106)
!3150 = !DILocation(line: 2049, column: 18, scope: !3106)
!3151 = !DILocation(line: 2049, column: 12, scope: !3106)
!3152 = distinct !{!3152, !3147, !3153}
!3153 = !DILocation(line: 2049, column: 18, scope: !3104)
!3154 = !DILocation(line: 2050, column: 21, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 2050, column: 11)
!3156 = !DILocation(line: 2050, column: 11, scope: !3076)
!3157 = !DILocation(line: 2053, column: 39, scope: !3076)
!3158 = !DILocation(line: 2053, column: 7, scope: !3076)
!3159 = !DILocation(line: 2054, column: 5, scope: !3077)
!3160 = !DILocation(line: 0, scope: !3077)
!3161 = distinct !{!3161, !3101, !3162}
!3162 = !DILocation(line: 2054, column: 5, scope: !3078)
!3163 = !DILocation(line: 2057, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 2057, column: 7)
!3165 = !DILocation(line: 2057, column: 7, scope: !3069)
!3166 = !DILocation(line: 2061, column: 3, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 2061, column: 3)
!3168 = !DILocation(line: 2061, column: 3, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 2061, column: 3)
!3170 = !DILocation(line: 0, scope: !3167)
!3171 = !DILocation(line: 2063, column: 15, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 2063, column: 11)
!3173 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 2062, column: 5)
!3174 = !DILocation(line: 2063, column: 18, scope: !3172)
!3175 = !DILocation(line: 2063, column: 23, scope: !3172)
!3176 = !DILocation(line: 2063, column: 11, scope: !3172)
!3177 = !DILocation(line: 2063, column: 11, scope: !3173)
!3178 = !DILocation(line: 2066, column: 27, scope: !3173)
!3179 = !DILocation(line: 2071, column: 12, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 2071, column: 11)
!3181 = !DILocation(line: 2072, column: 4, scope: !3180)
!3182 = !DILocation(line: 2072, column: 7, scope: !3180)
!3183 = !DILocation(line: 2072, column: 27, scope: !3180)
!3184 = !DILocation(line: 2072, column: 24, scope: !3180)
!3185 = !DILocation(line: 2073, column: 4, scope: !3180)
!3186 = !DILocation(line: 2073, column: 7, scope: !3180)
!3187 = !DILocation(line: 2073, column: 31, scope: !3180)
!3188 = !DILocation(line: 2073, column: 24, scope: !3180)
!3189 = !DILocation(line: 2074, column: 4, scope: !3180)
!3190 = !DILocation(line: 2074, column: 22, scope: !3180)
!3191 = !DILocation(line: 2074, column: 7, scope: !3180)
!3192 = !DILocation(line: 2071, column: 11, scope: !3173)
!3193 = !DILocation(line: 2078, column: 38, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 2078, column: 11)
!3195 = !DILocation(line: 2078, column: 56, scope: !3194)
!3196 = !DILocation(line: 2078, column: 12, scope: !3194)
!3197 = !DILocation(line: 2078, column: 11, scope: !3173)
!3198 = !DILocation(line: 2081, column: 33, scope: !3173)
!3199 = !DILocation(line: 2081, column: 51, scope: !3173)
!3200 = !DILocation(line: 2081, column: 16, scope: !3173)
!3201 = !DILocation(line: 2082, column: 25, scope: !3173)
!3202 = !DILocation(line: 2082, column: 15, scope: !3173)
!3203 = !DILocation(line: 2082, column: 19, scope: !3173)
!3204 = !DILocation(line: 2083, column: 15, scope: !3173)
!3205 = !DILocation(line: 2084, column: 15, scope: !3173)
!3206 = !DILocation(line: 2084, column: 18, scope: !3173)
!3207 = !DILocation(line: 2084, column: 23, scope: !3173)
!3208 = !DILocation(line: 2084, column: 31, scope: !3173)
!3209 = !DILocation(line: 2085, column: 5, scope: !3173)
!3210 = !DILocation(line: 0, scope: !3169)
!3211 = distinct !{!3211, !3166, !3212}
!3212 = !DILocation(line: 2085, column: 5, scope: !3167)
!3213 = !DILocation(line: 2088, column: 3, scope: !3069)
!3214 = !DILocation(line: 2087, column: 1, scope: !3069)
!3215 = !DILocation(line: 2090, column: 3, scope: !3069)
!3216 = !DILocation(line: 2091, column: 3, scope: !3069)
!3217 = !DILocation(line: 2092, column: 1, scope: !3069)
!3218 = distinct !DISubprogram(name: "gate_handle_reorder_blocks", scope: !3, file: !3, line: 2195, type: !1834, scopeLine: 2196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!3219 = !DILocation(line: 2197, column: 15, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 2197, column: 7)
!3221 = !DILocation(line: 2197, column: 7, scope: !3220)
!3222 = !DILocation(line: 2197, column: 7, scope: !3218)
!3223 = !DILocation(line: 2199, column: 11, scope: !3218)
!3224 = !DILocation(line: 2199, column: 20, scope: !3218)
!3225 = !DILocation(line: 2199, column: 10, scope: !3218)
!3226 = !DILocation(line: 2199, column: 3, scope: !3218)
!3227 = !DILocation(line: 0, scope: !3218)
!3228 = !DILocation(line: 2200, column: 1, scope: !3218)
!3229 = distinct !DISubprogram(name: "rest_of_handle_reorder_blocks", scope: !3, file: !3, line: 2205, type: !1838, scopeLine: 2206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "bb", scope: !3229, file: !3, line: 2207, type: !751)
!3232 = !DILocation(line: 2211, column: 3, scope: !3229)
!3233 = !DILocation(line: 2213, column: 8, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 2213, column: 7)
!3235 = !DILocation(line: 2213, column: 31, scope: !3234)
!3236 = !DILocation(line: 2213, column: 28, scope: !3234)
!3237 = !DILocation(line: 2221, column: 41, scope: !3234)
!3238 = !DILocation(line: 2221, column: 10, scope: !3234)
!3239 = !DILocation(line: 2213, column: 7, scope: !3229)
!3240 = !DILocation(line: 2223, column: 7, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 2222, column: 5)
!3242 = !DILocation(line: 2224, column: 7, scope: !3241)
!3243 = !DILocation(line: 2225, column: 5, scope: !3241)
!3244 = !DILocation(line: 2227, column: 3, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 2227, column: 3)
!3246 = !DILocation(line: 0, scope: !3245)
!3247 = !DILocation(line: 2227, column: 3, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 2227, column: 3)
!3249 = !DILocation(line: 0, scope: !3229)
!3250 = !DILocation(line: 2228, column: 13, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 2228, column: 9)
!3252 = !DILocation(line: 2228, column: 21, scope: !3251)
!3253 = !DILocation(line: 2228, column: 9, scope: !3248)
!3254 = !DILocation(line: 2229, column: 11, scope: !3251)
!3255 = !DILocation(line: 2229, column: 15, scope: !3251)
!3256 = !DILocation(line: 2229, column: 7, scope: !3251)
!3257 = distinct !{!3257, !3244, !3258}
!3258 = !DILocation(line: 2229, column: 21, scope: !3245)
!3259 = !DILocation(line: 2230, column: 3, scope: !3229)
!3260 = !DILocation(line: 2233, column: 3, scope: !3229)
!3261 = !DILocation(line: 2234, column: 3, scope: !3229)
!3262 = distinct !DISubprogram(name: "gate_handle_partition_blocks", scope: !3, file: !3, line: 2257, type: !1834, scopeLine: 2258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!3263 = !DILocation(line: 2264, column: 11, scope: !3262)
!3264 = !DILocation(line: 2265, column: 4, scope: !3262)
!3265 = !DILocation(line: 2265, column: 8, scope: !3262)
!3266 = !DILocation(line: 2266, column: 4, scope: !3262)
!3267 = !DILocation(line: 2266, column: 8, scope: !3262)
!3268 = !DILocation(line: 2266, column: 7, scope: !3262)
!3269 = !DILocation(line: 2264, column: 3, scope: !3262)
!3270 = distinct !DISubprogram(name: "rest_of_handle_partition_blocks", scope: !3, file: !3, line: 2271, type: !1838, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1896)
!3271 = !DILocation(line: 2273, column: 3, scope: !3270)
!3272 = !DILocation(line: 2274, column: 3, scope: !3270)
!3273 = distinct !DISubprogram(name: "ei_start_1", scope: !135, file: !135, line: 696, type: !3274, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!2418, !2423}
!3276 = !{!3277, !3278}
!3277 = !DILocalVariable(name: "ev", arg: 1, scope: !3273, file: !135, line: 696, type: !2423)
!3278 = !DILocalVariable(name: "i", scope: !3273, file: !135, line: 698, type: !2418)
!3279 = !DILocation(line: 0, scope: !3273)
!3280 = !DILocation(line: 700, column: 5, scope: !3273)
!3281 = !DILocation(line: 700, column: 11, scope: !3273)
!3282 = !DILocation(line: 701, column: 5, scope: !3273)
!3283 = !DILocation(line: 701, column: 15, scope: !3273)
!3284 = !DILocation(line: 703, column: 3, scope: !3273)
!3285 = distinct !DISubprogram(name: "ei_cond", scope: !135, file: !135, line: 771, type: !3286, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!705, !2418, !1821}
!3288 = !{!3289, !3290}
!3289 = !DILocalVariable(name: "ei", arg: 1, scope: !3285, file: !135, line: 771, type: !2418)
!3290 = !DILocalVariable(name: "p", arg: 2, scope: !3285, file: !135, line: 771, type: !1821)
!3291 = !DILocation(line: 0, scope: !3285)
!3292 = !DILocation(line: 773, column: 8, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3285, file: !135, line: 773, column: 7)
!3294 = !DILocation(line: 773, column: 7, scope: !3285)
!3295 = !DILocation(line: 775, column: 12, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !135, line: 774, column: 5)
!3297 = !DILocation(line: 776, column: 7, scope: !3296)
!3298 = !DILocation(line: 781, column: 7, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3293, file: !135, line: 779, column: 5)
!3300 = !DILocation(line: 0, scope: !3293)
!3301 = !DILocation(line: 783, column: 1, scope: !3285)
!3302 = distinct !DISubprogram(name: "bb_to_key", scope: !3, file: !3, line: 807, type: !3303, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!739, !751}
!3305 = !{!3306, !3307, !3308, !3309, !3310}
!3306 = !DILocalVariable(name: "bb", arg: 1, scope: !3302, file: !3, line: 807, type: !751)
!3307 = !DILocalVariable(name: "e", scope: !3302, file: !3, line: 809, type: !769)
!3308 = !DILocalVariable(name: "ei", scope: !3302, file: !3, line: 810, type: !2418)
!3309 = !DILocalVariable(name: "priority", scope: !3302, file: !3, line: 811, type: !706)
!3310 = !DILocalVariable(name: "edge_freq", scope: !3311, file: !3, line: 826, type: !706)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 825, column: 2)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 823, column: 11)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 822, column: 5)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 821, column: 3)
!3315 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 821, column: 3)
!3316 = !DILocation(line: 0, scope: !3302)
!3317 = !DILocation(line: 809, column: 3, scope: !3302)
!3318 = !DILocation(line: 810, column: 3, scope: !3302)
!3319 = !DILocation(line: 815, column: 7, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 815, column: 7)
!3321 = !DILocation(line: 815, column: 25, scope: !3320)
!3322 = !DILocation(line: 816, column: 7, scope: !3320)
!3323 = !DILocation(line: 816, column: 10, scope: !3320)
!3324 = !DILocation(line: 815, column: 7, scope: !3302)
!3325 = !DILocation(line: 821, column: 3, scope: !3315)
!3326 = !DILocation(line: 0, scope: !3314)
!3327 = !DILocation(line: 821, column: 3, scope: !3314)
!3328 = !DILocation(line: 823, column: 12, scope: !3312)
!3329 = !DILocation(line: 823, column: 15, scope: !3312)
!3330 = !DILocation(line: 823, column: 22, scope: !3312)
!3331 = !DILocation(line: 823, column: 19, scope: !3312)
!3332 = !DILocation(line: 823, column: 38, scope: !3312)
!3333 = !DILocation(line: 823, column: 41, scope: !3312)
!3334 = !DILocation(line: 823, column: 53, scope: !3312)
!3335 = !DILocation(line: 823, column: 60, scope: !3312)
!3336 = !DILocation(line: 823, column: 73, scope: !3312)
!3337 = !DILocation(line: 824, column: 4, scope: !3312)
!3338 = !DILocation(line: 824, column: 11, scope: !3312)
!3339 = !DILocation(line: 824, column: 17, scope: !3312)
!3340 = !DILocation(line: 823, column: 11, scope: !3313)
!3341 = !DILocation(line: 826, column: 20, scope: !3311)
!3342 = !DILocation(line: 0, scope: !3311)
!3343 = !DILocation(line: 828, column: 18, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 828, column: 8)
!3345 = !DILocation(line: 828, column: 8, scope: !3311)
!3346 = !DILocation(line: 830, column: 2, scope: !3311)
!3347 = distinct !{!3347, !3325, !3348}
!3348 = !DILocation(line: 831, column: 5, scope: !3315)
!3349 = !DILocation(line: 833, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 833, column: 7)
!3351 = !DILocation(line: 833, column: 7, scope: !3302)
!3352 = !DILocation(line: 835, column: 38, scope: !3350)
!3353 = !DILocation(line: 835, column: 32, scope: !3350)
!3354 = !DILocation(line: 835, column: 55, scope: !3350)
!3355 = !DILocation(line: 835, column: 49, scope: !3350)
!3356 = !DILocation(line: 835, column: 12, scope: !3350)
!3357 = !DILocation(line: 835, column: 5, scope: !3350)
!3358 = !DILocation(line: 836, column: 15, scope: !3302)
!3359 = !DILocation(line: 836, column: 10, scope: !3302)
!3360 = !DILocation(line: 836, column: 3, scope: !3302)
!3361 = !DILocation(line: 837, column: 1, scope: !3302)
!3362 = distinct !DISubprogram(name: "ei_next", scope: !135, file: !135, line: 736, type: !3363, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3366)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !3365}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!3366 = !{!3367}
!3367 = !DILocalVariable(name: "i", arg: 1, scope: !3362, file: !135, line: 736, type: !3365)
!3368 = !DILocation(line: 0, scope: !3362)
!3369 = !DILocation(line: 738, column: 3, scope: !3362)
!3370 = !DILocation(line: 739, column: 11, scope: !3362)
!3371 = !DILocation(line: 740, column: 1, scope: !3362)
!3372 = distinct !DISubprogram(name: "find_traces_1_round", scope: !3, file: !3, line: 425, type: !3373, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3376)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{null, !706, !706, !1781, !747, !2410, !706, !3375, !706}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!3376 = !{!3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3388, !3389, !3390, !3391, !3392, !3393, !3396, !3398, !3399, !3400, !3401, !3402}
!3377 = !DILocalVariable(name: "branch_th", arg: 1, scope: !3372, file: !3, line: 425, type: !706)
!3378 = !DILocalVariable(name: "exec_th", arg: 2, scope: !3372, file: !3, line: 425, type: !706)
!3379 = !DILocalVariable(name: "count_th", arg: 3, scope: !3372, file: !3, line: 425, type: !1781)
!3380 = !DILocalVariable(name: "traces", arg: 4, scope: !3372, file: !3, line: 426, type: !747)
!3381 = !DILocalVariable(name: "n_traces", arg: 5, scope: !3372, file: !3, line: 426, type: !2410)
!3382 = !DILocalVariable(name: "round", arg: 6, scope: !3372, file: !3, line: 426, type: !706)
!3383 = !DILocalVariable(name: "heap", arg: 7, scope: !3372, file: !3, line: 427, type: !3375)
!3384 = !DILocalVariable(name: "number_of_rounds", arg: 8, scope: !3372, file: !3, line: 427, type: !706)
!3385 = !DILocalVariable(name: "new_heap", scope: !3372, file: !3, line: 431, type: !721)
!3386 = !DILocalVariable(name: "bb", scope: !3387, file: !3, line: 435, type: !751)
!3387 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 434, column: 5)
!3388 = !DILocalVariable(name: "trace", scope: !3387, file: !3, line: 436, type: !747)
!3389 = !DILocalVariable(name: "best_edge", scope: !3387, file: !3, line: 437, type: !769)
!3390 = !DILocalVariable(name: "e", scope: !3387, file: !3, line: 437, type: !769)
!3391 = !DILocalVariable(name: "key", scope: !3387, file: !3, line: 438, type: !739)
!3392 = !DILocalVariable(name: "ei", scope: !3387, file: !3, line: 439, type: !2418)
!3393 = !DILocalVariable(name: "key", scope: !3394, file: !3, line: 456, type: !706)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 455, column: 2)
!3395 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 453, column: 11)
!3396 = !DILocalVariable(name: "prob", scope: !3397, file: !3, line: 476, type: !706)
!3397 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 475, column: 2)
!3398 = !DILocalVariable(name: "freq", scope: !3397, file: !3, line: 476, type: !706)
!3399 = !DILocalVariable(name: "ends_in_call", scope: !3397, file: !3, line: 477, type: !705)
!3400 = !DILocalVariable(name: "best_prob", scope: !3397, file: !3, line: 480, type: !706)
!3401 = !DILocalVariable(name: "best_freq", scope: !3397, file: !3, line: 481, type: !706)
!3402 = !DILocalVariable(name: "which_heap", scope: !3403, file: !3, line: 579, type: !721)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 578, column: 3)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 560, column: 12)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 552, column: 6)
!3406 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 551, column: 4)
!3407 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 551, column: 4)
!3408 = !DILocation(line: 0, scope: !3372)
!3409 = !DILocation(line: 431, column: 24, scope: !3372)
!3410 = !DILocation(line: 0, scope: !3387)
!3411 = !DILocation(line: 0, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 494, column: 4)
!3413 = !DILocation(line: 0, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 494, column: 4)
!3415 = !DILocation(line: 0, scope: !3407)
!3416 = !DILocation(line: 0, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 683, column: 5)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 661, column: 3)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 616, column: 12)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 615, column: 6)
!3421 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 614, column: 8)
!3422 = !DILocation(line: 0, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 718, column: 7)
!3424 = !DILocation(line: 433, column: 3, scope: !3372)
!3425 = !DILocation(line: 433, column: 26, scope: !3372)
!3426 = !DILocation(line: 433, column: 11, scope: !3372)
!3427 = !DILocation(line: 433, column: 10, scope: !3372)
!3428 = !DILocation(line: 437, column: 7, scope: !3387)
!3429 = !DILocation(line: 439, column: 7, scope: !3387)
!3430 = !DILocation(line: 441, column: 47, scope: !3387)
!3431 = !DILocation(line: 441, column: 26, scope: !3387)
!3432 = !DILocation(line: 441, column: 12, scope: !3387)
!3433 = !DILocation(line: 442, column: 7, scope: !3387)
!3434 = !DILocation(line: 442, column: 15, scope: !3387)
!3435 = !DILocation(line: 442, column: 22, scope: !3387)
!3436 = !DILocation(line: 442, column: 27, scope: !3387)
!3437 = !DILocation(line: 443, column: 7, scope: !3387)
!3438 = !DILocation(line: 443, column: 15, scope: !3387)
!3439 = !DILocation(line: 443, column: 22, scope: !3387)
!3440 = !DILocation(line: 443, column: 27, scope: !3387)
!3441 = !DILocation(line: 445, column: 11, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 445, column: 11)
!3443 = !DILocation(line: 445, column: 11, scope: !3387)
!3444 = !DILocation(line: 446, column: 45, scope: !3442)
!3445 = !DILocation(line: 446, column: 2, scope: !3442)
!3446 = !DILocation(line: 453, column: 11, scope: !3395)
!3447 = !DILocation(line: 453, column: 11, scope: !3387)
!3448 = !DILocation(line: 456, column: 14, scope: !3394)
!3449 = !DILocation(line: 0, scope: !3394)
!3450 = !DILocation(line: 457, column: 4, scope: !3394)
!3451 = !DILocation(line: 457, column: 12, scope: !3394)
!3452 = !DILocation(line: 457, column: 19, scope: !3394)
!3453 = !DILocation(line: 457, column: 24, scope: !3394)
!3454 = !DILocation(line: 458, column: 52, scope: !3394)
!3455 = !DILocation(line: 458, column: 26, scope: !3394)
!3456 = !DILocation(line: 458, column: 4, scope: !3394)
!3457 = !DILocation(line: 458, column: 12, scope: !3394)
!3458 = !DILocation(line: 458, column: 19, scope: !3394)
!3459 = !DILocation(line: 458, column: 24, scope: !3394)
!3460 = !DILocation(line: 460, column: 8, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 460, column: 8)
!3462 = !DILocation(line: 460, column: 8, scope: !3394)
!3463 = !DILocation(line: 463, column: 12, scope: !3461)
!3464 = !DILocation(line: 461, column: 6, scope: !3461)
!3465 = !DILocation(line: 467, column: 24, scope: !3387)
!3466 = !DILocation(line: 467, column: 22, scope: !3387)
!3467 = !DILocation(line: 468, column: 20, scope: !3387)
!3468 = !DILocation(line: 469, column: 14, scope: !3387)
!3469 = !DILocation(line: 469, column: 20, scope: !3387)
!3470 = !DILocation(line: 470, column: 14, scope: !3387)
!3471 = !DILocation(line: 470, column: 21, scope: !3387)
!3472 = !DILocation(line: 471, column: 33, scope: !3387)
!3473 = !DILocation(line: 471, column: 7, scope: !3387)
!3474 = !DILocation(line: 471, column: 15, scope: !3387)
!3475 = !DILocation(line: 471, column: 22, scope: !3387)
!3476 = !DILocation(line: 471, column: 31, scope: !3387)
!3477 = !DILocation(line: 472, column: 18, scope: !3387)
!3478 = !DILocation(line: 474, column: 7, scope: !3387)
!3479 = !DILocation(line: 484, column: 25, scope: !3397)
!3480 = !DILocation(line: 0, scope: !3397)
!3481 = !DILocation(line: 484, column: 4, scope: !3397)
!3482 = !DILocation(line: 485, column: 17, scope: !3397)
!3483 = !DILocation(line: 487, column: 8, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 487, column: 8)
!3485 = !DILocation(line: 487, column: 8, scope: !3397)
!3486 = !DILocation(line: 489, column: 12, scope: !3484)
!3487 = !DILocation(line: 489, column: 19, scope: !3484)
!3488 = !DILocation(line: 489, column: 29, scope: !3484)
!3489 = !DILocation(line: 488, column: 6, scope: !3484)
!3490 = !DILocation(line: 491, column: 19, scope: !3397)
!3491 = !DILocation(line: 494, column: 4, scope: !3412)
!3492 = !DILocation(line: 0, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 505, column: 12)
!3494 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 495, column: 6)
!3495 = !DILocation(line: 0, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 513, column: 12)
!3497 = !DILocation(line: 483, column: 14, scope: !3397)
!3498 = !DILocation(line: 480, column: 8, scope: !3397)
!3499 = !DILocation(line: 481, column: 8, scope: !3397)
!3500 = !DILocation(line: 494, column: 4, scope: !3414)
!3501 = !DILocation(line: 496, column: 8, scope: !3494)
!3502 = !DILocation(line: 498, column: 12, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 498, column: 12)
!3504 = !DILocation(line: 498, column: 15, scope: !3503)
!3505 = !DILocation(line: 498, column: 23, scope: !3503)
!3506 = !DILocation(line: 498, column: 20, scope: !3503)
!3507 = !DILocation(line: 498, column: 12, scope: !3494)
!3508 = !DILocation(line: 501, column: 21, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 501, column: 12)
!3510 = !DILocation(line: 501, column: 24, scope: !3509)
!3511 = !DILocation(line: 501, column: 29, scope: !3509)
!3512 = !DILocation(line: 501, column: 12, scope: !3509)
!3513 = !DILocation(line: 502, column: 5, scope: !3509)
!3514 = !DILocation(line: 502, column: 36, scope: !3509)
!3515 = !DILocation(line: 502, column: 33, scope: !3509)
!3516 = !DILocation(line: 501, column: 12, scope: !3494)
!3517 = !DILocation(line: 505, column: 12, scope: !3493)
!3518 = !DILocation(line: 505, column: 38, scope: !3493)
!3519 = !DILocation(line: 505, column: 35, scope: !3493)
!3520 = !DILocation(line: 505, column: 12, scope: !3494)
!3521 = !DILocation(line: 508, column: 18, scope: !3494)
!3522 = !DILocation(line: 509, column: 24, scope: !3494)
!3523 = !DILocation(line: 0, scope: !3494)
!3524 = !DILocation(line: 513, column: 12, scope: !3494)
!3525 = !DILocation(line: 515, column: 9, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 514, column: 3)
!3527 = !DILocation(line: 521, column: 5, scope: !3526)
!3528 = !DILocation(line: 526, column: 44, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 526, column: 12)
!3530 = !DILocation(line: 526, column: 57, scope: !3529)
!3531 = !DILocation(line: 527, column: 13, scope: !3529)
!3532 = !DILocation(line: 527, column: 5, scope: !3529)
!3533 = !DILocation(line: 527, column: 28, scope: !3529)
!3534 = !DILocation(line: 527, column: 47, scope: !3529)
!3535 = !DILocation(line: 528, column: 5, scope: !3529)
!3536 = !DILocation(line: 528, column: 11, scope: !3529)
!3537 = !DILocation(line: 528, column: 17, scope: !3529)
!3538 = !DILocation(line: 526, column: 12, scope: !3494)
!3539 = !DILocation(line: 534, column: 12, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 534, column: 12)
!3541 = !DILocation(line: 537, column: 17, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 536, column: 3)
!3543 = !DILocation(line: 534, column: 12, scope: !3494)
!3544 = !DILocation(line: 541, column: 6, scope: !3494)
!3545 = distinct !{!3545, !3491, !3546}
!3546 = !DILocation(line: 541, column: 6, scope: !3412)
!3547 = !DILocation(line: 546, column: 8, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 546, column: 8)
!3549 = !DILocation(line: 546, column: 18, scope: !3548)
!3550 = !DILocation(line: 546, column: 21, scope: !3548)
!3551 = !DILocation(line: 546, column: 57, scope: !3548)
!3552 = !DILocation(line: 547, column: 8, scope: !3548)
!3553 = !DILocation(line: 547, column: 33, scope: !3548)
!3554 = !DILocation(line: 547, column: 11, scope: !3548)
!3555 = !DILocation(line: 546, column: 8, scope: !3397)
!3556 = !DILocation(line: 551, column: 4, scope: !3407)
!3557 = !DILocation(line: 551, column: 4, scope: !3406)
!3558 = !DILocation(line: 553, column: 12, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 553, column: 12)
!3560 = !DILocation(line: 553, column: 14, scope: !3559)
!3561 = !DILocation(line: 554, column: 5, scope: !3559)
!3562 = !DILocation(line: 554, column: 11, scope: !3559)
!3563 = !DILocation(line: 554, column: 19, scope: !3559)
!3564 = !DILocation(line: 554, column: 16, scope: !3559)
!3565 = !DILocation(line: 555, column: 5, scope: !3559)
!3566 = !DILocation(line: 555, column: 17, scope: !3559)
!3567 = !DILocation(line: 555, column: 20, scope: !3559)
!3568 = !DILocation(line: 555, column: 25, scope: !3559)
!3569 = !DILocation(line: 555, column: 8, scope: !3559)
!3570 = !DILocation(line: 553, column: 12, scope: !3405)
!3571 = !DILocation(line: 558, column: 14, scope: !3405)
!3572 = !DILocation(line: 560, column: 12, scope: !3404)
!3573 = !DILocation(line: 560, column: 16, scope: !3404)
!3574 = !DILocation(line: 560, column: 19, scope: !3404)
!3575 = !DILocation(line: 560, column: 25, scope: !3404)
!3576 = !DILocation(line: 560, column: 32, scope: !3404)
!3577 = !DILocation(line: 560, column: 12, scope: !3405)
!3578 = !DILocation(line: 563, column: 36, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 563, column: 9)
!3580 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 561, column: 3)
!3581 = !DILocation(line: 563, column: 42, scope: !3579)
!3582 = !DILocation(line: 563, column: 13, scope: !3579)
!3583 = !DILocation(line: 563, column: 9, scope: !3580)
!3584 = !DILocation(line: 565, column: 13, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 565, column: 13)
!3586 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 564, column: 7)
!3587 = !DILocation(line: 565, column: 13, scope: !3586)
!3588 = !DILocation(line: 567, column: 6, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 566, column: 4)
!3590 = !DILocation(line: 573, column: 30, scope: !3586)
!3591 = !DILocation(line: 573, column: 34, scope: !3586)
!3592 = !DILocation(line: 0, scope: !3586)
!3593 = !DILocation(line: 573, column: 37, scope: !3586)
!3594 = !DILocation(line: 573, column: 43, scope: !3586)
!3595 = !DILocation(line: 573, column: 50, scope: !3586)
!3596 = !DILocation(line: 574, column: 29, scope: !3586)
!3597 = !DILocation(line: 572, column: 4, scope: !3589)
!3598 = !DILocation(line: 573, column: 9, scope: !3586)
!3599 = !DILocation(line: 575, column: 7, scope: !3586)
!3600 = !DILocation(line: 579, column: 28, scope: !3403)
!3601 = !DILocation(line: 0, scope: !3403)
!3602 = !DILocation(line: 584, column: 14, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 584, column: 9)
!3604 = !DILocation(line: 584, column: 20, scope: !3603)
!3605 = !DILocation(line: 585, column: 9, scope: !3603)
!3606 = !DILocation(line: 582, column: 12, scope: !3403)
!3607 = !DILocation(line: 585, column: 22, scope: !3603)
!3608 = !DILocation(line: 586, column: 17, scope: !3603)
!3609 = !DILocation(line: 586, column: 9, scope: !3603)
!3610 = !DILocation(line: 586, column: 37, scope: !3603)
!3611 = !DILocation(line: 587, column: 15, scope: !3603)
!3612 = !DILocation(line: 587, column: 21, scope: !3603)
!3613 = !DILocation(line: 584, column: 9, scope: !3403)
!3614 = !DILocation(line: 593, column: 13, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 593, column: 13)
!3616 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 588, column: 7)
!3617 = !DILocation(line: 593, column: 13, scope: !3616)
!3618 = !DILocation(line: 599, column: 5, scope: !3403)
!3619 = !DILocation(line: 599, column: 9, scope: !3403)
!3620 = !DILocation(line: 599, column: 12, scope: !3403)
!3621 = !DILocation(line: 599, column: 18, scope: !3403)
!3622 = !DILocation(line: 597, column: 7, scope: !3616)
!3623 = !DILocation(line: 599, column: 25, scope: !3403)
!3624 = !DILocation(line: 599, column: 30, scope: !3403)
!3625 = !DILocation(line: 601, column: 14, scope: !3403)
!3626 = !DILocation(line: 601, column: 17, scope: !3403)
!3627 = !DILocation(line: 600, column: 32, scope: !3403)
!3628 = !DILocation(line: 600, column: 5, scope: !3403)
!3629 = !DILocation(line: 600, column: 9, scope: !3403)
!3630 = !DILocation(line: 600, column: 12, scope: !3403)
!3631 = !DILocation(line: 600, column: 18, scope: !3403)
!3632 = !DILocation(line: 600, column: 25, scope: !3403)
!3633 = !DILocation(line: 600, column: 30, scope: !3403)
!3634 = !DILocation(line: 603, column: 9, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 603, column: 9)
!3636 = !DILocation(line: 603, column: 9, scope: !3403)
!3637 = !DILocation(line: 607, column: 23, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 604, column: 7)
!3639 = !DILocation(line: 607, column: 11, scope: !3638)
!3640 = !DILocation(line: 608, column: 11, scope: !3638)
!3641 = !DILocation(line: 608, column: 14, scope: !3638)
!3642 = !DILocation(line: 608, column: 20, scope: !3638)
!3643 = !DILocation(line: 605, column: 9, scope: !3638)
!3644 = !DILocation(line: 609, column: 7, scope: !3638)
!3645 = distinct !{!3645, !3556, !3646}
!3646 = !DILocation(line: 612, column: 6, scope: !3407)
!3647 = !DILocation(line: 614, column: 8, scope: !3421)
!3648 = !DILocation(line: 614, column: 8, scope: !3397)
!3649 = !DILocation(line: 616, column: 23, scope: !3419)
!3650 = !DILocation(line: 616, column: 29, scope: !3419)
!3651 = !DILocation(line: 616, column: 32, scope: !3419)
!3652 = !DILocation(line: 616, column: 37, scope: !3419)
!3653 = !DILocation(line: 616, column: 48, scope: !3419)
!3654 = !DILocation(line: 616, column: 45, scope: !3419)
!3655 = !DILocation(line: 616, column: 12, scope: !3420)
!3656 = !DILocation(line: 619, column: 25, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 619, column: 9)
!3658 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 617, column: 3)
!3659 = !DILocation(line: 619, column: 9, scope: !3658)
!3660 = !DILocation(line: 621, column: 13, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 621, column: 13)
!3662 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 620, column: 7)
!3663 = !DILocation(line: 622, column: 29, scope: !3661)
!3664 = !DILocation(line: 622, column: 10, scope: !3661)
!3665 = !DILocation(line: 622, column: 39, scope: !3661)
!3666 = !DILocation(line: 622, column: 6, scope: !3661)
!3667 = !DILocation(line: 621, column: 13, scope: !3662)
!3668 = !DILocation(line: 628, column: 29, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 628, column: 10)
!3670 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 623, column: 4)
!3671 = !DILocation(line: 628, column: 46, scope: !3669)
!3672 = !DILocation(line: 628, column: 26, scope: !3669)
!3673 = !DILocation(line: 628, column: 10, scope: !3670)
!3674 = !DILocation(line: 630, column: 14, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 630, column: 14)
!3676 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 629, column: 8)
!3677 = !DILocation(line: 630, column: 14, scope: !3676)
!3678 = !DILocation(line: 634, column: 26, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 631, column: 5)
!3680 = !DILocation(line: 634, column: 37, scope: !3679)
!3681 = !DILocation(line: 632, column: 7, scope: !3679)
!3682 = !DILocation(line: 0, scope: !3676)
!3683 = !DILocation(line: 636, column: 31, scope: !3676)
!3684 = !DILocation(line: 635, column: 5, scope: !3679)
!3685 = !DILocation(line: 636, column: 14, scope: !3676)
!3686 = !DILocation(line: 636, column: 18, scope: !3676)
!3687 = !DILocation(line: 638, column: 14, scope: !3676)
!3688 = !DILocation(line: 638, column: 25, scope: !3676)
!3689 = !DILocation(line: 637, column: 10, scope: !3676)
!3690 = !DILocation(line: 637, column: 25, scope: !3676)
!3691 = !DILocation(line: 637, column: 31, scope: !3676)
!3692 = !DILocation(line: 637, column: 38, scope: !3676)
!3693 = !DILocation(line: 637, column: 47, scope: !3676)
!3694 = !DILocation(line: 639, column: 46, scope: !3676)
!3695 = !DILocation(line: 639, column: 15, scope: !3676)
!3696 = !DILocation(line: 640, column: 8, scope: !3676)
!3697 = !DILocation(line: 646, column: 10, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 646, column: 10)
!3699 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 643, column: 4)
!3700 = !DILocation(line: 647, column: 10, scope: !3698)
!3701 = !DILocation(line: 647, column: 35, scope: !3698)
!3702 = !DILocation(line: 648, column: 16, scope: !3698)
!3703 = !DILocation(line: 647, column: 13, scope: !3698)
!3704 = !DILocation(line: 646, column: 10, scope: !3699)
!3705 = !DILocation(line: 650, column: 35, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 649, column: 8)
!3707 = !DILocation(line: 651, column: 10, scope: !3706)
!3708 = !DILocation(line: 650, column: 15, scope: !3706)
!3709 = !DILocation(line: 652, column: 23, scope: !3706)
!3710 = !DILocation(line: 653, column: 8, scope: !3706)
!3711 = !DILocation(line: 683, column: 5, scope: !3417)
!3712 = !DILocation(line: 0, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 684, column: 11)
!3714 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 683, column: 5)
!3715 = !DILocation(line: 683, column: 5, scope: !3714)
!3716 = !DILocation(line: 684, column: 11, scope: !3713)
!3717 = !DILocation(line: 684, column: 13, scope: !3713)
!3718 = !DILocation(line: 685, column: 4, scope: !3713)
!3719 = !DILocation(line: 685, column: 11, scope: !3713)
!3720 = !DILocation(line: 685, column: 17, scope: !3713)
!3721 = !DILocation(line: 686, column: 4, scope: !3713)
!3722 = !DILocation(line: 686, column: 18, scope: !3713)
!3723 = !DILocation(line: 687, column: 4, scope: !3713)
!3724 = !DILocation(line: 687, column: 11, scope: !3713)
!3725 = !DILocation(line: 687, column: 17, scope: !3713)
!3726 = !DILocation(line: 687, column: 20, scope: !3713)
!3727 = !DILocation(line: 687, column: 25, scope: !3713)
!3728 = !DILocation(line: 687, column: 8, scope: !3713)
!3729 = !DILocation(line: 688, column: 4, scope: !3713)
!3730 = !DILocation(line: 688, column: 7, scope: !3713)
!3731 = !DILocation(line: 689, column: 4, scope: !3713)
!3732 = !DILocation(line: 689, column: 9, scope: !3713)
!3733 = !DILocation(line: 689, column: 12, scope: !3713)
!3734 = !DILocation(line: 689, column: 18, scope: !3713)
!3735 = !DILocation(line: 690, column: 4, scope: !3713)
!3736 = !DILocation(line: 690, column: 25, scope: !3713)
!3737 = !DILocation(line: 690, column: 7, scope: !3713)
!3738 = !DILocation(line: 691, column: 4, scope: !3713)
!3739 = !DILocation(line: 691, column: 26, scope: !3713)
!3740 = !DILocation(line: 691, column: 29, scope: !3713)
!3741 = !DILocation(line: 691, column: 8, scope: !3713)
!3742 = !DILocation(line: 691, column: 36, scope: !3713)
!3743 = !DILocation(line: 692, column: 8, scope: !3713)
!3744 = !DILocation(line: 693, column: 4, scope: !3713)
!3745 = !DILocation(line: 693, column: 27, scope: !3713)
!3746 = !DILocation(line: 693, column: 30, scope: !3713)
!3747 = !DILocation(line: 693, column: 9, scope: !3713)
!3748 = !DILocation(line: 693, column: 37, scope: !3713)
!3749 = !DILocation(line: 693, column: 43, scope: !3713)
!3750 = !DILocation(line: 694, column: 4, scope: !3713)
!3751 = !DILocation(line: 694, column: 20, scope: !3713)
!3752 = !DILocation(line: 694, column: 23, scope: !3713)
!3753 = !DILocation(line: 694, column: 7, scope: !3713)
!3754 = !DILocation(line: 694, column: 43, scope: !3713)
!3755 = !DILocation(line: 694, column: 29, scope: !3713)
!3756 = !DILocation(line: 695, column: 4, scope: !3713)
!3757 = !DILocation(line: 695, column: 11, scope: !3713)
!3758 = !DILocation(line: 695, column: 14, scope: !3713)
!3759 = !DILocation(line: 695, column: 20, scope: !3713)
!3760 = !DILocation(line: 695, column: 9, scope: !3713)
!3761 = !DILocation(line: 695, column: 33, scope: !3713)
!3762 = !DILocation(line: 695, column: 30, scope: !3713)
!3763 = !DILocation(line: 684, column: 11, scope: !3714)
!3764 = !DILocation(line: 698, column: 8, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 698, column: 8)
!3766 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 696, column: 9)
!3767 = !DILocation(line: 698, column: 8, scope: !3766)
!3768 = !DILocation(line: 700, column: 25, scope: !3765)
!3769 = !DILocation(line: 699, column: 6, scope: !3765)
!3770 = distinct !{!3770, !3711, !3771}
!3771 = !DILocation(line: 702, column: 9, scope: !3417)
!3772 = !DILocation(line: 704, column: 26, scope: !3418)
!3773 = !DILocation(line: 704, column: 9, scope: !3418)
!3774 = !DILocation(line: 704, column: 13, scope: !3418)
!3775 = !DILocation(line: 705, column: 45, scope: !3418)
!3776 = !DILocation(line: 705, column: 56, scope: !3418)
!3777 = !DILocation(line: 705, column: 5, scope: !3418)
!3778 = !DILocation(line: 705, column: 20, scope: !3418)
!3779 = !DILocation(line: 705, column: 26, scope: !3418)
!3780 = !DILocation(line: 705, column: 33, scope: !3418)
!3781 = !DILocation(line: 705, column: 42, scope: !3418)
!3782 = !DILocation(line: 706, column: 21, scope: !3418)
!3783 = !DILocation(line: 708, column: 6, scope: !3420)
!3784 = !DILocation(line: 0, scope: !3419)
!3785 = !DILocation(line: 709, column: 2, scope: !3397)
!3786 = distinct !{!3786, !3478, !3787}
!3787 = !DILocation(line: 710, column: 23, scope: !3387)
!3788 = !DILocation(line: 711, column: 14, scope: !3387)
!3789 = !DILocation(line: 711, column: 19, scope: !3387)
!3790 = !DILocation(line: 712, column: 49, scope: !3387)
!3791 = !DILocation(line: 712, column: 59, scope: !3387)
!3792 = !DILocation(line: 712, column: 7, scope: !3387)
!3793 = !DILocation(line: 712, column: 18, scope: !3387)
!3794 = !DILocation(line: 712, column: 25, scope: !3387)
!3795 = !DILocation(line: 712, column: 32, scope: !3387)
!3796 = !DILocation(line: 712, column: 47, scope: !3387)
!3797 = !DILocation(line: 713, column: 46, scope: !3387)
!3798 = !DILocation(line: 713, column: 56, scope: !3387)
!3799 = !DILocation(line: 713, column: 7, scope: !3387)
!3800 = !DILocation(line: 713, column: 18, scope: !3387)
!3801 = !DILocation(line: 713, column: 24, scope: !3387)
!3802 = !DILocation(line: 713, column: 31, scope: !3387)
!3803 = !DILocation(line: 713, column: 44, scope: !3387)
!3804 = !DILocation(line: 718, column: 7, scope: !3423)
!3805 = !DILocation(line: 718, column: 7, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 718, column: 7)
!3807 = !DILocation(line: 720, column: 8, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !3, line: 720, column: 8)
!3809 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 719, column: 2)
!3810 = !DILocation(line: 720, column: 11, scope: !3808)
!3811 = !DILocation(line: 720, column: 19, scope: !3808)
!3812 = !DILocation(line: 720, column: 16, scope: !3808)
!3813 = !DILocation(line: 721, column: 8, scope: !3808)
!3814 = !DILocation(line: 721, column: 20, scope: !3808)
!3815 = !DILocation(line: 721, column: 23, scope: !3808)
!3816 = !DILocation(line: 721, column: 28, scope: !3808)
!3817 = !DILocation(line: 721, column: 11, scope: !3808)
!3818 = !DILocation(line: 720, column: 8, scope: !3809)
!3819 = !DILocation(line: 724, column: 8, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3809, file: !3, line: 724, column: 8)
!3821 = !DILocation(line: 724, column: 21, scope: !3820)
!3822 = !DILocation(line: 724, column: 28, scope: !3820)
!3823 = !DILocation(line: 724, column: 8, scope: !3809)
!3824 = !DILocation(line: 726, column: 14, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 725, column: 6)
!3826 = !DILocation(line: 727, column: 19, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 727, column: 12)
!3828 = !DILocation(line: 727, column: 23, scope: !3827)
!3829 = !DILocation(line: 727, column: 26, scope: !3827)
!3830 = !DILocation(line: 727, column: 32, scope: !3827)
!3831 = !DILocation(line: 727, column: 39, scope: !3827)
!3832 = !DILocation(line: 727, column: 45, scope: !3827)
!3833 = !DILocation(line: 727, column: 16, scope: !3827)
!3834 = !DILocation(line: 727, column: 12, scope: !3825)
!3835 = !DILocation(line: 729, column: 9, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !3, line: 729, column: 9)
!3837 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 728, column: 3)
!3838 = !DILocation(line: 729, column: 9, scope: !3837)
!3839 = !DILocation(line: 731, column: 9, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 730, column: 7)
!3841 = !DILocation(line: 736, column: 26, scope: !3837)
!3842 = !DILocation(line: 736, column: 30, scope: !3837)
!3843 = !DILocation(line: 0, scope: !3837)
!3844 = !DILocation(line: 736, column: 33, scope: !3837)
!3845 = !DILocation(line: 736, column: 39, scope: !3837)
!3846 = !DILocation(line: 737, column: 32, scope: !3837)
!3847 = !DILocation(line: 735, column: 7, scope: !3840)
!3848 = !DILocation(line: 737, column: 12, scope: !3837)
!3849 = !DILocation(line: 736, column: 46, scope: !3837)
!3850 = !DILocation(line: 736, column: 5, scope: !3837)
!3851 = !DILocation(line: 739, column: 3, scope: !3837)
!3852 = distinct !{!3852, !3804, !3853}
!3853 = !DILocation(line: 741, column: 2, scope: !3423)
!3854 = !DILocation(line: 742, column: 5, scope: !3372)
!3855 = !DILocation(line: 744, column: 19, scope: !3372)
!3856 = !DILocation(line: 744, column: 3, scope: !3372)
!3857 = !DILocation(line: 747, column: 9, scope: !3372)
!3858 = !DILocation(line: 748, column: 1, scope: !3372)
!3859 = distinct !DISubprogram(name: "ei_end_p", scope: !135, file: !135, line: 721, type: !3860, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3862)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!705, !2418}
!3862 = !{!3863}
!3863 = !DILocalVariable(name: "i", arg: 1, scope: !3859, file: !135, line: 721, type: !2418)
!3864 = !DILocation(line: 723, column: 22, scope: !3859)
!3865 = !DILocation(line: 723, column: 19, scope: !3859)
!3866 = !DILocation(line: 723, column: 10, scope: !3859)
!3867 = !DILocation(line: 723, column: 3, scope: !3859)
!3868 = distinct !DISubprogram(name: "ei_edge", scope: !135, file: !135, line: 752, type: !3869, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3871)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!769, !2418}
!3871 = !{!3872}
!3872 = !DILocalVariable(name: "i", arg: 1, scope: !3868, file: !135, line: 752, type: !2418)
!3873 = !DILocation(line: 754, column: 10, scope: !3868)
!3874 = !DILocation(line: 754, column: 3, scope: !3868)
!3875 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !3876, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3880)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!7, !3878}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!3880 = !{!3881}
!3881 = !DILocalVariable(name: "vec_", arg: 1, scope: !3875, file: !135, line: 150, type: !3878)
!3882 = !DILocation(line: 0, scope: !3875)
!3883 = !DILocation(line: 150, column: 1, scope: !3875)
!3884 = distinct !DISubprogram(name: "ei_container", scope: !135, file: !135, line: 685, type: !3885, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!757, !2418}
!3887 = !{!3888}
!3888 = !DILocalVariable(name: "i", arg: 1, scope: !3884, file: !135, line: 685, type: !2418)
!3889 = !DILocation(line: 687, column: 3, scope: !3884)
!3890 = !DILocation(line: 688, column: 10, scope: !3884)
!3891 = !DILocation(line: 688, column: 3, scope: !3884)
!3892 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !3893, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!769, !3878, !7}
!3895 = !{!3896, !3897}
!3896 = !DILocalVariable(name: "vec_", arg: 1, scope: !3892, file: !135, line: 150, type: !3878)
!3897 = !DILocalVariable(name: "ix_", arg: 2, scope: !3892, file: !135, line: 150, type: !7)
!3898 = !DILocation(line: 0, scope: !3892)
!3899 = !DILocation(line: 150, column: 1, scope: !3892)
!3900 = distinct !DISubprogram(name: "push_to_next_round_p", scope: !3, file: !3, line: 197, type: !3901, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3906)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!705, !3903, !706, !706, !706, !1781}
!3903 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !752, line: 112, baseType: !3904)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3907 = !DILocalVariable(name: "bb", arg: 1, scope: !3900, file: !3, line: 197, type: !3903)
!3908 = !DILocalVariable(name: "round", arg: 2, scope: !3900, file: !3, line: 197, type: !706)
!3909 = !DILocalVariable(name: "number_of_rounds", arg: 3, scope: !3900, file: !3, line: 197, type: !706)
!3910 = !DILocalVariable(name: "exec_th", arg: 4, scope: !3900, file: !3, line: 198, type: !706)
!3911 = !DILocalVariable(name: "count_th", arg: 5, scope: !3900, file: !3, line: 198, type: !1781)
!3912 = !DILocalVariable(name: "there_exists_another_round", scope: !3900, file: !3, line: 200, type: !705)
!3913 = !DILocalVariable(name: "block_not_hot_enough", scope: !3900, file: !3, line: 201, type: !705)
!3914 = !DILocation(line: 0, scope: !3900)
!3915 = !DILocation(line: 203, column: 38, scope: !3900)
!3916 = !DILocation(line: 205, column: 31, scope: !3900)
!3917 = !DILocation(line: 205, column: 41, scope: !3900)
!3918 = !DILocation(line: 206, column: 6, scope: !3900)
!3919 = !DILocation(line: 206, column: 13, scope: !3900)
!3920 = !DILocation(line: 206, column: 19, scope: !3900)
!3921 = !DILocation(line: 207, column: 6, scope: !3900)
!3922 = !DILocation(line: 207, column: 9, scope: !3900)
!3923 = !DILocation(line: 210, column: 7, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 209, column: 7)
!3925 = !DILocation(line: 214, column: 1, scope: !3900)
!3926 = distinct !DISubprogram(name: "mark_bb_visited", scope: !3, file: !3, line: 405, type: !3927, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3929)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !751, !706}
!3929 = !{!3930, !3931}
!3930 = !DILocalVariable(name: "bb", arg: 1, scope: !3926, file: !3, line: 405, type: !751)
!3931 = !DILocalVariable(name: "trace", arg: 2, scope: !3926, file: !3, line: 405, type: !706)
!3932 = !DILocation(line: 0, scope: !3926)
!3933 = !DILocation(line: 407, column: 7, scope: !3926)
!3934 = !DILocation(line: 407, column: 10, scope: !3926)
!3935 = !DILocation(line: 407, column: 15, scope: !3926)
!3936 = !DILocation(line: 407, column: 23, scope: !3926)
!3937 = !DILocation(line: 408, column: 7, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 408, column: 7)
!3939 = !DILocation(line: 408, column: 15, scope: !3938)
!3940 = !DILocation(line: 408, column: 22, scope: !3938)
!3941 = !DILocation(line: 408, column: 7, scope: !3926)
!3942 = !DILocation(line: 410, column: 64, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 409, column: 5)
!3944 = !DILocation(line: 410, column: 7, scope: !3943)
!3945 = !DILocation(line: 411, column: 7, scope: !3943)
!3946 = !DILocation(line: 411, column: 15, scope: !3943)
!3947 = !DILocation(line: 411, column: 22, scope: !3943)
!3948 = !DILocation(line: 411, column: 27, scope: !3943)
!3949 = !DILocation(line: 412, column: 7, scope: !3943)
!3950 = !DILocation(line: 412, column: 15, scope: !3943)
!3951 = !DILocation(line: 412, column: 22, scope: !3943)
!3952 = !DILocation(line: 412, column: 27, scope: !3943)
!3953 = !DILocation(line: 413, column: 5, scope: !3943)
!3954 = !DILocation(line: 414, column: 1, scope: !3926)
!3955 = distinct !DISubprogram(name: "better_edge_p", scope: !3, file: !3, line: 847, type: !3956, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3961)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!705, !3903, !3958, !706, !706, !706, !706, !3958}
!3958 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_edge", file: !752, line: 109, baseType: !3959)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!3961 = !{!3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971}
!3962 = !DILocalVariable(name: "bb", arg: 1, scope: !3955, file: !3, line: 847, type: !3903)
!3963 = !DILocalVariable(name: "e", arg: 2, scope: !3955, file: !3, line: 847, type: !3958)
!3964 = !DILocalVariable(name: "prob", arg: 3, scope: !3955, file: !3, line: 847, type: !706)
!3965 = !DILocalVariable(name: "freq", arg: 4, scope: !3955, file: !3, line: 847, type: !706)
!3966 = !DILocalVariable(name: "best_prob", arg: 5, scope: !3955, file: !3, line: 847, type: !706)
!3967 = !DILocalVariable(name: "best_freq", arg: 6, scope: !3955, file: !3, line: 848, type: !706)
!3968 = !DILocalVariable(name: "cur_best_edge", arg: 7, scope: !3955, file: !3, line: 848, type: !3958)
!3969 = !DILocalVariable(name: "is_better_edge", scope: !3955, file: !3, line: 850, type: !705)
!3970 = !DILocalVariable(name: "diff_prob", scope: !3955, file: !3, line: 854, type: !706)
!3971 = !DILocalVariable(name: "diff_freq", scope: !3955, file: !3, line: 855, type: !706)
!3972 = !DILocation(line: 0, scope: !3955)
!3973 = !DILocation(line: 854, column: 29, scope: !3955)
!3974 = !DILocation(line: 855, column: 29, scope: !3955)
!3975 = !DILocation(line: 857, column: 24, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 857, column: 7)
!3977 = !DILocation(line: 857, column: 12, scope: !3976)
!3978 = !DILocation(line: 857, column: 7, scope: !3955)
!3979 = !DILocation(line: 860, column: 29, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3976, file: !3, line: 860, column: 12)
!3981 = !DILocation(line: 860, column: 17, scope: !3980)
!3982 = !DILocation(line: 860, column: 12, scope: !3976)
!3983 = !DILocation(line: 863, column: 29, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 863, column: 12)
!3985 = !DILocation(line: 863, column: 17, scope: !3984)
!3986 = !DILocation(line: 863, column: 12, scope: !3980)
!3987 = !DILocation(line: 869, column: 29, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 869, column: 12)
!3989 = !DILocation(line: 869, column: 17, scope: !3988)
!3990 = !DILocation(line: 869, column: 12, scope: !3984)
!3991 = !DILocation(line: 872, column: 15, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 872, column: 12)
!3993 = !DILocation(line: 872, column: 21, scope: !3992)
!3994 = !DILocation(line: 872, column: 29, scope: !3992)
!3995 = !DILocation(line: 0, scope: !3976)
!3996 = !DILocation(line: 882, column: 8, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 882, column: 7)
!3998 = !DILocation(line: 883, column: 10, scope: !3997)
!3999 = !DILocation(line: 883, column: 7, scope: !3997)
!4000 = !DILocation(line: 884, column: 10, scope: !3997)
!4001 = !DILocation(line: 885, column: 26, scope: !3997)
!4002 = !DILocation(line: 885, column: 32, scope: !3997)
!4003 = !DILocation(line: 886, column: 7, scope: !3997)
!4004 = !DILocation(line: 886, column: 15, scope: !3997)
!4005 = !DILocation(line: 882, column: 7, scope: !3955)
!4006 = !DILocation(line: 889, column: 3, scope: !3955)
!4007 = distinct !DISubprogram(name: "copy_bb_p", scope: !3, file: !3, line: 1156, type: !4008, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4010)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!705, !3903, !706}
!4010 = !{!4011, !4012, !4013, !4014, !4015}
!4011 = !DILocalVariable(name: "bb", arg: 1, scope: !4007, file: !3, line: 1156, type: !3903)
!4012 = !DILocalVariable(name: "code_may_grow", arg: 2, scope: !4007, file: !3, line: 1156, type: !706)
!4013 = !DILocalVariable(name: "size", scope: !4007, file: !3, line: 1158, type: !706)
!4014 = !DILocalVariable(name: "max_size", scope: !4007, file: !3, line: 1159, type: !706)
!4015 = !DILocalVariable(name: "insn", scope: !4007, file: !3, line: 1160, type: !783)
!4016 = !DILocation(line: 0, scope: !4007)
!4017 = !DILocation(line: 1159, column: 18, scope: !4007)
!4018 = !DILocation(line: 1162, column: 12, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1162, column: 7)
!4020 = !DILocation(line: 1162, column: 8, scope: !4019)
!4021 = !DILocation(line: 1162, column: 7, scope: !4007)
!4022 = !DILocation(line: 1164, column: 7, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1164, column: 7)
!4024 = !DILocation(line: 1164, column: 30, scope: !4023)
!4025 = !DILocation(line: 1164, column: 7, scope: !4007)
!4026 = !DILocation(line: 1166, column: 8, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1166, column: 7)
!4028 = !DILocation(line: 1166, column: 7, scope: !4007)
!4029 = !DILocation(line: 1170, column: 7, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1170, column: 7)
!4031 = !DILocation(line: 1170, column: 30, scope: !4030)
!4032 = !DILocation(line: 1170, column: 7, scope: !4007)
!4033 = !DILocation(line: 1173, column: 7, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1173, column: 7)
!4035 = !DILocation(line: 1173, column: 21, scope: !4034)
!4036 = !DILocation(line: 1173, column: 24, scope: !4034)
!4037 = !DILocation(line: 1173, column: 7, scope: !4007)
!4038 = !DILocation(line: 1174, column: 17, scope: !4034)
!4039 = !DILocation(line: 1174, column: 14, scope: !4034)
!4040 = !DILocation(line: 1174, column: 5, scope: !4034)
!4041 = !DILocation(line: 1176, column: 3, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1176, column: 3)
!4043 = !DILocation(line: 0, scope: !4042)
!4044 = !DILocation(line: 1176, column: 3, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 1176, column: 3)
!4046 = !DILocation(line: 1178, column: 11, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 1178, column: 11)
!4048 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 1177, column: 5)
!4049 = !DILocation(line: 1178, column: 11, scope: !4048)
!4050 = !DILocation(line: 1179, column: 10, scope: !4047)
!4051 = !DILocation(line: 1179, column: 7, scope: !4047)
!4052 = !DILocation(line: 1179, column: 2, scope: !4047)
!4053 = distinct !{!4053, !4041, !4054}
!4054 = !DILocation(line: 1180, column: 5, scope: !4042)
!4055 = !DILocation(line: 1182, column: 12, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1182, column: 7)
!4057 = !DILocation(line: 1182, column: 7, scope: !4007)
!4058 = !DILocation(line: 1185, column: 7, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 1185, column: 7)
!4060 = !DILocation(line: 1185, column: 7, scope: !4007)
!4061 = !DILocation(line: 1189, column: 13, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 1186, column: 5)
!4063 = !DILocation(line: 1187, column: 7, scope: !4062)
!4064 = !DILocation(line: 1190, column: 5, scope: !4062)
!4065 = !DILocation(line: 1193, column: 1, scope: !4007)
!4066 = distinct !DISubprogram(name: "rotate_loop", scope: !3, file: !3, line: 289, type: !4067, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4069)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!751, !769, !747, !706}
!4069 = !{!4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4081, !4082, !4091, !4095, !4100}
!4070 = !DILocalVariable(name: "back_edge", arg: 1, scope: !4066, file: !3, line: 289, type: !769)
!4071 = !DILocalVariable(name: "trace", arg: 2, scope: !4066, file: !3, line: 289, type: !747)
!4072 = !DILocalVariable(name: "trace_n", arg: 3, scope: !4066, file: !3, line: 289, type: !706)
!4073 = !DILocalVariable(name: "bb", scope: !4066, file: !3, line: 291, type: !751)
!4074 = !DILocalVariable(name: "best_bb", scope: !4066, file: !3, line: 294, type: !751)
!4075 = !DILocalVariable(name: "best_edge", scope: !4066, file: !3, line: 295, type: !769)
!4076 = !DILocalVariable(name: "best_freq", scope: !4066, file: !3, line: 296, type: !706)
!4077 = !DILocalVariable(name: "best_count", scope: !4066, file: !3, line: 297, type: !1781)
!4078 = !DILocalVariable(name: "is_preferred", scope: !4066, file: !3, line: 300, type: !705)
!4079 = !DILocalVariable(name: "e", scope: !4080, file: !3, line: 306, type: !769)
!4080 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 305, column: 5)
!4081 = !DILocalVariable(name: "ei", scope: !4080, file: !3, line: 307, type: !2418)
!4082 = !DILocalVariable(name: "freq", scope: !4083, file: !3, line: 322, type: !706)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 320, column: 3)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 318, column: 12)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 316, column: 6)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 315, column: 8)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 314, column: 2)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 310, column: 6)
!4089 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 309, column: 7)
!4090 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 309, column: 7)
!4091 = !DILocalVariable(name: "freq", scope: !4092, file: !3, line: 346, type: !706)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 345, column: 3)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 334, column: 12)
!4094 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 333, column: 6)
!4095 = !DILocalVariable(name: "prev_bb", scope: !4096, file: !3, line: 371, type: !751)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 370, column: 2)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 365, column: 11)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 362, column: 5)
!4099 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 361, column: 7)
!4100 = !DILocalVariable(name: "header", scope: !4101, file: !3, line: 382, type: !751)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 381, column: 6)
!4102 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 380, column: 8)
!4103 = !DILocation(line: 0, scope: !4066)
!4104 = !DILocation(line: 303, column: 19, scope: !4066)
!4105 = !DILocation(line: 0, scope: !4080)
!4106 = !DILocation(line: 0, scope: !4090)
!4107 = !DILocation(line: 0, scope: !4089)
!4108 = !DILocation(line: 304, column: 3, scope: !4066)
!4109 = !DILocation(line: 296, column: 7, scope: !4066)
!4110 = !DILocation(line: 295, column: 8, scope: !4066)
!4111 = !DILocation(line: 294, column: 15, scope: !4066)
!4112 = !DILocation(line: 297, column: 13, scope: !4066)
!4113 = !DILocation(line: 300, column: 8, scope: !4066)
!4114 = !DILocation(line: 306, column: 7, scope: !4080)
!4115 = !DILocation(line: 307, column: 7, scope: !4080)
!4116 = !DILocation(line: 309, column: 7, scope: !4090)
!4117 = !DILocation(line: 309, column: 7, scope: !4089)
!4118 = !DILocation(line: 310, column: 6, scope: !4088)
!4119 = !DILocation(line: 310, column: 9, scope: !4088)
!4120 = !DILocation(line: 310, column: 17, scope: !4088)
!4121 = !DILocation(line: 310, column: 14, scope: !4088)
!4122 = !DILocation(line: 311, column: 6, scope: !4088)
!4123 = !DILocation(line: 311, column: 18, scope: !4088)
!4124 = !DILocation(line: 311, column: 21, scope: !4088)
!4125 = !DILocation(line: 311, column: 26, scope: !4088)
!4126 = !DILocation(line: 311, column: 34, scope: !4088)
!4127 = !DILocation(line: 312, column: 6, scope: !4088)
!4128 = !DILocation(line: 312, column: 13, scope: !4088)
!4129 = !DILocation(line: 312, column: 19, scope: !4088)
!4130 = !DILocation(line: 313, column: 6, scope: !4088)
!4131 = !DILocation(line: 313, column: 20, scope: !4088)
!4132 = !DILocation(line: 310, column: 6, scope: !4089)
!4133 = !DILocation(line: 315, column: 8, scope: !4086)
!4134 = !DILocation(line: 0, scope: !4086)
!4135 = !DILocation(line: 315, column: 8, scope: !4087)
!4136 = !DILocation(line: 319, column: 5, scope: !4084)
!4137 = !DILocation(line: 319, column: 8, scope: !4084)
!4138 = !DILocation(line: 319, column: 21, scope: !4084)
!4139 = !DILocation(line: 319, column: 28, scope: !4084)
!4140 = !DILocation(line: 319, column: 43, scope: !4084)
!4141 = !DILocation(line: 318, column: 12, scope: !4085)
!4142 = !DILocation(line: 322, column: 16, scope: !4083)
!4143 = !DILocation(line: 0, scope: !4083)
!4144 = !DILocation(line: 323, column: 14, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 323, column: 9)
!4146 = !DILocation(line: 323, column: 26, scope: !4145)
!4147 = !DILocation(line: 0, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 324, column: 7)
!4149 = !DILocation(line: 326, column: 25, scope: !4148)
!4150 = !DILocation(line: 323, column: 32, scope: !4145)
!4151 = !DILocation(line: 323, column: 38, scope: !4145)
!4152 = !DILocation(line: 323, column: 9, scope: !4083)
!4153 = !DILocation(line: 329, column: 7, scope: !4148)
!4154 = !DILocation(line: 335, column: 5, scope: !4093)
!4155 = !DILocation(line: 335, column: 8, scope: !4093)
!4156 = !DILocation(line: 335, column: 21, scope: !4093)
!4157 = !DILocation(line: 335, column: 28, scope: !4093)
!4158 = !DILocation(line: 335, column: 43, scope: !4093)
!4159 = !DILocation(line: 334, column: 12, scope: !4094)
!4160 = !DILocation(line: 339, column: 17, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 336, column: 3)
!4162 = !DILocation(line: 340, column: 21, scope: !4161)
!4163 = !DILocation(line: 343, column: 3, scope: !4161)
!4164 = !DILocation(line: 346, column: 16, scope: !4092)
!4165 = !DILocation(line: 0, scope: !4092)
!4166 = !DILocation(line: 347, column: 10, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 347, column: 9)
!4168 = !DILocation(line: 347, column: 28, scope: !4167)
!4169 = !DILocation(line: 347, column: 20, scope: !4167)
!4170 = !DILocation(line: 0, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 348, column: 7)
!4172 = !DILocation(line: 350, column: 25, scope: !4171)
!4173 = !DILocation(line: 347, column: 46, scope: !4167)
!4174 = !DILocation(line: 347, column: 52, scope: !4167)
!4175 = !DILocation(line: 347, column: 9, scope: !4092)
!4176 = !DILocation(line: 353, column: 7, scope: !4171)
!4177 = distinct !{!4177, !4116, !4178}
!4178 = !DILocation(line: 356, column: 2, scope: !4090)
!4179 = !DILocation(line: 357, column: 30, scope: !4080)
!4180 = !DILocation(line: 358, column: 5, scope: !4066)
!4181 = !DILocation(line: 359, column: 27, scope: !4066)
!4182 = !DILocation(line: 359, column: 13, scope: !4066)
!4183 = !DILocation(line: 358, column: 5, scope: !4080)
!4184 = distinct !{!4184, !4108, !4185}
!4185 = !DILocation(line: 359, column: 31, scope: !4066)
!4186 = !DILocation(line: 361, column: 7, scope: !4099)
!4187 = !DILocation(line: 361, column: 7, scope: !4066)
!4188 = !DILocation(line: 365, column: 37, scope: !4097)
!4189 = !DILocation(line: 365, column: 27, scope: !4097)
!4190 = !DILocation(line: 365, column: 11, scope: !4098)
!4191 = !DILocation(line: 367, column: 42, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 366, column: 2)
!4193 = !DILocation(line: 367, column: 17, scope: !4192)
!4194 = !DILocation(line: 368, column: 2, scope: !4192)
!4195 = !DILocation(line: 373, column: 9, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 373, column: 4)
!4197 = !DILocation(line: 0, scope: !4196)
!4198 = !DILocation(line: 0, scope: !4096)
!4199 = !DILocation(line: 374, column: 18, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 373, column: 4)
!4201 = !DILocation(line: 374, column: 22, scope: !4200)
!4202 = !DILocation(line: 373, column: 4, scope: !4196)
!4203 = !DILocation(line: 373, column: 4, scope: !4200)
!4204 = distinct !{!4204, !4202, !4205}
!4205 = !DILocation(line: 376, column: 6, scope: !4196)
!4206 = !DILocation(line: 377, column: 28, scope: !4096)
!4207 = !DILocation(line: 377, column: 17, scope: !4096)
!4208 = !DILocation(line: 380, column: 8, scope: !4102)
!4209 = !DILocation(line: 380, column: 8, scope: !4096)
!4210 = !DILocation(line: 382, column: 29, scope: !4101)
!4211 = !DILocation(line: 0, scope: !4101)
!4212 = !DILocation(line: 386, column: 28, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 386, column: 12)
!4214 = !DILocation(line: 386, column: 12, scope: !4213)
!4215 = !DILocation(line: 386, column: 45, scope: !4213)
!4216 = !DILocation(line: 386, column: 48, scope: !4213)
!4217 = !DILocation(line: 387, column: 5, scope: !4213)
!4218 = !DILocation(line: 387, column: 24, scope: !4213)
!4219 = !DILocation(line: 387, column: 9, scope: !4213)
!4220 = !DILocation(line: 386, column: 12, scope: !4101)
!4221 = !DILocation(line: 389, column: 20, scope: !4213)
!4222 = !DILocation(line: 389, column: 3, scope: !4213)
!4223 = !DILocation(line: 396, column: 28, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 394, column: 5)
!4225 = !DILocation(line: 398, column: 12, scope: !4066)
!4226 = !DILocation(line: 398, column: 16, scope: !4066)
!4227 = !DILocation(line: 399, column: 3, scope: !4066)
!4228 = distinct !DISubprogram(name: "single_succ_p", scope: !135, file: !135, line: 626, type: !4229, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4231)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!705, !3903}
!4231 = !{!4232}
!4232 = !DILocalVariable(name: "bb", arg: 1, scope: !4228, file: !135, line: 626, type: !3903)
!4233 = !DILocation(line: 0, scope: !4228)
!4234 = !DILocation(line: 628, column: 10, scope: !4228)
!4235 = !DILocation(line: 628, column: 33, scope: !4228)
!4236 = !DILocation(line: 628, column: 3, scope: !4228)
!4237 = distinct !DISubprogram(name: "copy_bb", scope: !3, file: !3, line: 755, type: !4238, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4240)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!751, !751, !769, !751, !706}
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4246, !4248, !4251}
!4241 = !DILocalVariable(name: "old_bb", arg: 1, scope: !4237, file: !3, line: 755, type: !751)
!4242 = !DILocalVariable(name: "e", arg: 2, scope: !4237, file: !3, line: 755, type: !769)
!4243 = !DILocalVariable(name: "bb", arg: 3, scope: !4237, file: !3, line: 755, type: !751)
!4244 = !DILocalVariable(name: "trace", arg: 4, scope: !4237, file: !3, line: 755, type: !706)
!4245 = !DILocalVariable(name: "new_bb", scope: !4237, file: !3, line: 757, type: !751)
!4246 = !DILocalVariable(name: "bb_", scope: !4247, file: !3, line: 760, type: !751)
!4247 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 760, column: 3)
!4248 = !DILocalVariable(name: "i", scope: !4249, file: !3, line: 775, type: !706)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 774, column: 5)
!4250 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 773, column: 7)
!4251 = !DILocalVariable(name: "new_size", scope: !4249, file: !3, line: 776, type: !706)
!4252 = !DILocation(line: 0, scope: !4237)
!4253 = !DILocation(line: 759, column: 12, scope: !4237)
!4254 = !DILocation(line: 0, scope: !4247)
!4255 = !DILocation(line: 760, column: 3, scope: !4247)
!4256 = !DILocation(line: 762, column: 3, scope: !4237)
!4257 = !DILocation(line: 763, column: 3, scope: !4237)
!4258 = !DILocation(line: 765, column: 7, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 765, column: 7)
!4260 = !DILocation(line: 765, column: 7, scope: !4237)
!4261 = !DILocation(line: 768, column: 15, scope: !4259)
!4262 = !DILocation(line: 768, column: 30, scope: !4259)
!4263 = !DILocation(line: 766, column: 5, scope: !4259)
!4264 = !DILocation(line: 769, column: 11, scope: !4237)
!4265 = !DILocation(line: 769, column: 14, scope: !4237)
!4266 = !DILocation(line: 769, column: 19, scope: !4237)
!4267 = !DILocation(line: 769, column: 27, scope: !4237)
!4268 = !DILocation(line: 770, column: 21, scope: !4237)
!4269 = !DILocation(line: 770, column: 11, scope: !4237)
!4270 = !DILocation(line: 770, column: 15, scope: !4237)
!4271 = !DILocation(line: 771, column: 11, scope: !4237)
!4272 = !DILocation(line: 773, column: 15, scope: !4250)
!4273 = !DILocation(line: 773, column: 24, scope: !4250)
!4274 = !DILocation(line: 773, column: 21, scope: !4250)
!4275 = !DILocation(line: 773, column: 35, scope: !4250)
!4276 = !DILocation(line: 778, column: 18, scope: !4249)
!4277 = !DILocation(line: 0, scope: !4249)
!4278 = !DILocation(line: 773, column: 38, scope: !4250)
!4279 = !DILocation(line: 773, column: 55, scope: !4250)
!4280 = !DILocation(line: 773, column: 7, scope: !4237)
!4281 = !DILocation(line: 779, column: 18, scope: !4249)
!4282 = !DILocation(line: 780, column: 13, scope: !4249)
!4283 = !DILocation(line: 780, column: 11, scope: !4249)
!4284 = !DILocation(line: 781, column: 16, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 781, column: 7)
!4286 = !DILocation(line: 781, column: 12, scope: !4285)
!4287 = !DILocation(line: 0, scope: !4285)
!4288 = !DILocation(line: 781, column: 30, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 781, column: 7)
!4290 = !DILocation(line: 781, column: 7, scope: !4285)
!4291 = !DILocation(line: 783, column: 4, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 782, column: 2)
!4293 = !DILocation(line: 783, column: 11, scope: !4292)
!4294 = !DILocation(line: 783, column: 26, scope: !4292)
!4295 = !DILocation(line: 784, column: 4, scope: !4292)
!4296 = !DILocation(line: 784, column: 11, scope: !4292)
!4297 = !DILocation(line: 784, column: 20, scope: !4292)
!4298 = !DILocation(line: 785, column: 4, scope: !4292)
!4299 = !DILocation(line: 785, column: 11, scope: !4292)
!4300 = !DILocation(line: 785, column: 24, scope: !4292)
!4301 = !DILocation(line: 786, column: 4, scope: !4292)
!4302 = !DILocation(line: 786, column: 11, scope: !4292)
!4303 = !DILocation(line: 786, column: 16, scope: !4292)
!4304 = !DILocation(line: 787, column: 4, scope: !4292)
!4305 = !DILocation(line: 787, column: 11, scope: !4292)
!4306 = !DILocation(line: 787, column: 16, scope: !4292)
!4307 = !DILocation(line: 781, column: 43, scope: !4289)
!4308 = !DILocation(line: 781, column: 7, scope: !4289)
!4309 = distinct !{!4309, !4290, !4310}
!4310 = !DILocation(line: 788, column: 2, scope: !4285)
!4311 = !DILocation(line: 789, column: 18, scope: !4249)
!4312 = !DILocation(line: 791, column: 11, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 791, column: 11)
!4314 = !DILocation(line: 791, column: 11, scope: !4249)
!4315 = !DILocation(line: 793, column: 4, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 792, column: 2)
!4317 = !DILocation(line: 796, column: 2, scope: !4316)
!4318 = !DILocation(line: 799, column: 3, scope: !4237)
!4319 = !DILocation(line: 799, column: 15, scope: !4237)
!4320 = !DILocation(line: 799, column: 22, scope: !4237)
!4321 = !DILocation(line: 799, column: 31, scope: !4237)
!4322 = !DILocation(line: 801, column: 3, scope: !4237)
!4323 = distinct !DISubprogram(name: "single_pred_p", scope: !135, file: !135, line: 634, type: !4229, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4324)
!4324 = !{!4325}
!4325 = !DILocalVariable(name: "bb", arg: 1, scope: !4323, file: !135, line: 634, type: !3903)
!4326 = !DILocation(line: 0, scope: !4323)
!4327 = !DILocation(line: 636, column: 10, scope: !4323)
!4328 = !DILocation(line: 636, column: 33, scope: !4323)
!4329 = !DILocation(line: 636, column: 3, scope: !4323)
!4330 = distinct !DISubprogram(name: "single_succ_edge", scope: !135, file: !135, line: 643, type: !4331, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4333)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!769, !3903}
!4333 = !{!4334}
!4334 = !DILocalVariable(name: "bb", arg: 1, scope: !4330, file: !135, line: 643, type: !3903)
!4335 = !DILocation(line: 0, scope: !4330)
!4336 = !DILocation(line: 645, column: 3, scope: !4330)
!4337 = !DILocation(line: 646, column: 10, scope: !4330)
!4338 = !DILocation(line: 646, column: 3, scope: !4330)
!4339 = distinct !DISubprogram(name: "single_succ", scope: !135, file: !135, line: 663, type: !4340, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4342)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!751, !3903}
!4342 = !{!4343}
!4343 = !DILocalVariable(name: "bb", arg: 1, scope: !4339, file: !135, line: 663, type: !3903)
!4344 = !DILocation(line: 0, scope: !4339)
!4345 = !DILocation(line: 665, column: 10, scope: !4339)
!4346 = !DILocation(line: 665, column: 33, scope: !4339)
!4347 = !DILocation(line: 665, column: 3, scope: !4339)
!4348 = distinct !DISubprogram(name: "insert_section_boundary_note", scope: !3, file: !3, line: 1950, type: !2321, scopeLine: 1951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4349)
!4349 = !{!4350, !4351, !4352}
!4350 = !DILocalVariable(name: "bb", scope: !4348, file: !3, line: 1952, type: !751)
!4351 = !DILocalVariable(name: "new_note", scope: !4348, file: !3, line: 1953, type: !783)
!4352 = !DILocalVariable(name: "first_partition", scope: !4348, file: !3, line: 1954, type: !706)
!4353 = !DILocation(line: 0, scope: !4348)
!4354 = !DILocation(line: 1956, column: 7, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 1956, column: 7)
!4356 = !DILocation(line: 1956, column: 7, scope: !4348)
!4357 = !DILocation(line: 1957, column: 5, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 1957, column: 5)
!4359 = !DILocation(line: 0, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 1957, column: 5)
!4361 = !DILocation(line: 1954, column: 7, scope: !4348)
!4362 = !DILocation(line: 0, scope: !4358)
!4363 = !DILocation(line: 1957, column: 5, scope: !4360)
!4364 = !DILocation(line: 1959, column: 12, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 1959, column: 11)
!4366 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 1958, column: 5)
!4367 = !DILocation(line: 1959, column: 11, scope: !4366)
!4368 = !DILocation(line: 0, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 1961, column: 11)
!4370 = !DILocation(line: 1961, column: 11, scope: !4369)
!4371 = !DILocation(line: 1960, column: 20, scope: !4365)
!4372 = !DILocation(line: 1960, column: 2, scope: !4365)
!4373 = !DILocation(line: 1961, column: 29, scope: !4369)
!4374 = !DILocation(line: 1961, column: 11, scope: !4366)
!4375 = !DILocation(line: 1964, column: 12, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 1962, column: 2)
!4377 = !DILocation(line: 1963, column: 15, scope: !4376)
!4378 = !DILocation(line: 1967, column: 4, scope: !4376)
!4379 = !DILocation(line: 1967, column: 30, scope: !4376)
!4380 = !DILocation(line: 1968, column: 4, scope: !4376)
!4381 = distinct !{!4381, !4357, !4382}
!4382 = !DILocation(line: 1970, column: 5, scope: !4358)
!4383 = !DILocation(line: 1971, column: 1, scope: !4348)
!4384 = distinct !DISubprogram(name: "partition_hot_cold_basic_blocks", scope: !3, file: !3, line: 2173, type: !2321, scopeLine: 2174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4385)
!4385 = !{!4386, !4387, !4388}
!4386 = !DILocalVariable(name: "crossing_edges", scope: !4384, file: !3, line: 2175, type: !1821)
!4387 = !DILocalVariable(name: "n_crossing_edges", scope: !4384, file: !3, line: 2176, type: !706)
!4388 = !DILocalVariable(name: "max_edges", scope: !4384, file: !3, line: 2177, type: !706)
!4389 = !DILocation(line: 2175, column: 3, scope: !4384)
!4390 = !DILocation(line: 2176, column: 3, scope: !4384)
!4391 = !DILocation(line: 2177, column: 3, scope: !4384)
!4392 = !DILocation(line: 2177, column: 23, scope: !4384)
!4393 = !DILocation(line: 2177, column: 21, scope: !4384)
!4394 = !DILocation(line: 0, scope: !4384)
!4395 = !DILocation(line: 2177, column: 7, scope: !4384)
!4396 = !DILocation(line: 2179, column: 7, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 2179, column: 7)
!4398 = !DILocation(line: 2179, column: 22, scope: !4397)
!4399 = !DILocation(line: 2179, column: 7, scope: !4384)
!4400 = !DILocation(line: 2182, column: 20, scope: !4384)
!4401 = !DILocation(line: 2182, column: 18, scope: !4384)
!4402 = !DILocation(line: 2184, column: 3, scope: !4384)
!4403 = !DILocation(line: 2188, column: 7, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4384, file: !3, line: 2188, column: 7)
!4405 = !DILocation(line: 2188, column: 24, scope: !4404)
!4406 = !DILocation(line: 2188, column: 7, scope: !4384)
!4407 = !DILocation(line: 2189, column: 41, scope: !4404)
!4408 = !DILocation(line: 2189, column: 5, scope: !4404)
!4409 = !DILocation(line: 2191, column: 9, scope: !4384)
!4410 = !DILocation(line: 2191, column: 3, scope: !4384)
!4411 = !DILocation(line: 2192, column: 1, scope: !4384)
!4412 = distinct !DISubprogram(name: "find_rarely_executed_basic_blocks_and_crossing_edges", scope: !3, file: !3, line: 1218, type: !4413, scopeLine: 1221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4416)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !4415, !2410, !2410}
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!4416 = !{!4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4430}
!4417 = !DILocalVariable(name: "crossing_edges", arg: 1, scope: !4412, file: !3, line: 1218, type: !4415)
!4418 = !DILocalVariable(name: "n_crossing_edges", arg: 2, scope: !4412, file: !3, line: 1219, type: !2410)
!4419 = !DILocalVariable(name: "max_idx", arg: 3, scope: !4412, file: !3, line: 1220, type: !2410)
!4420 = !DILocalVariable(name: "bb", scope: !4412, file: !3, line: 1222, type: !751)
!4421 = !DILocalVariable(name: "e", scope: !4412, file: !3, line: 1223, type: !769)
!4422 = !DILocalVariable(name: "i", scope: !4412, file: !3, line: 1224, type: !706)
!4423 = !DILocalVariable(name: "ei", scope: !4412, file: !3, line: 1225, type: !2418)
!4424 = !DILocalVariable(name: "bb_", scope: !4425, file: !3, line: 1232, type: !751)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 1232, column: 2)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 1231, column: 11)
!4427 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 1230, column: 5)
!4428 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 1229, column: 3)
!4429 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 1229, column: 3)
!4430 = !DILocalVariable(name: "bb_", scope: !4431, file: !3, line: 1234, type: !751)
!4431 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 1234, column: 2)
!4432 = !DILocation(line: 0, scope: !4412)
!4433 = !DILocation(line: 1223, column: 3, scope: !4412)
!4434 = !DILocation(line: 1225, column: 3, scope: !4412)
!4435 = !DILocation(line: 1229, column: 3, scope: !4429)
!4436 = !DILocation(line: 1229, column: 3, scope: !4428)
!4437 = !DILocation(line: 0, scope: !4429)
!4438 = !DILocation(line: 1231, column: 11, scope: !4426)
!4439 = !DILocation(line: 0, scope: !4426)
!4440 = !DILocation(line: 1231, column: 11, scope: !4427)
!4441 = !DILocation(line: 0, scope: !4425)
!4442 = !DILocation(line: 1232, column: 2, scope: !4425)
!4443 = !DILocation(line: 0, scope: !4431)
!4444 = !DILocation(line: 1234, column: 2, scope: !4431)
!4445 = !DILocation(line: 0, scope: !4428)
!4446 = distinct !{!4446, !4435, !4447}
!4447 = !DILocation(line: 1235, column: 5, scope: !4429)
!4448 = !DILocation(line: 1240, column: 3, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 1240, column: 3)
!4450 = !DILocation(line: 0, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 1241, column: 5)
!4452 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 1240, column: 3)
!4453 = !DILocation(line: 0, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 1241, column: 5)
!4455 = !DILocation(line: 0, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 1249, column: 6)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 1248, column: 8)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 1246, column: 2)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 1243, column: 11)
!4460 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 1242, column: 5)
!4461 = !DILocation(line: 0, scope: !4458)
!4462 = !DILocation(line: 1240, column: 3, scope: !4452)
!4463 = !DILocation(line: 1239, column: 5, scope: !4412)
!4464 = !DILocation(line: 0, scope: !4449)
!4465 = !DILocation(line: 1241, column: 5, scope: !4451)
!4466 = !DILocation(line: 1241, column: 5, scope: !4454)
!4467 = !DILocation(line: 1243, column: 11, scope: !4459)
!4468 = !DILocation(line: 1243, column: 14, scope: !4459)
!4469 = !DILocation(line: 1243, column: 21, scope: !4459)
!4470 = !DILocation(line: 1243, column: 18, scope: !4459)
!4471 = !DILocation(line: 1244, column: 4, scope: !4459)
!4472 = !DILocation(line: 1244, column: 10, scope: !4459)
!4473 = !DILocation(line: 1244, column: 18, scope: !4459)
!4474 = !DILocation(line: 1244, column: 15, scope: !4459)
!4475 = !DILocation(line: 1245, column: 4, scope: !4459)
!4476 = !DILocation(line: 1245, column: 7, scope: !4459)
!4477 = !DILocation(line: 1245, column: 32, scope: !4459)
!4478 = !DILocation(line: 1245, column: 29, scope: !4459)
!4479 = !DILocation(line: 1243, column: 11, scope: !4460)
!4480 = !DILocation(line: 1247, column: 7, scope: !4458)
!4481 = !DILocation(line: 1247, column: 13, scope: !4458)
!4482 = !DILocation(line: 1248, column: 13, scope: !4457)
!4483 = !DILocation(line: 1248, column: 10, scope: !4457)
!4484 = !DILocation(line: 1248, column: 8, scope: !4458)
!4485 = !DILocation(line: 1253, column: 5, scope: !4458)
!4486 = !DILocation(line: 1250, column: 17, scope: !4456)
!4487 = !DILocation(line: 1251, column: 26, scope: !4456)
!4488 = !DILocation(line: 1251, column: 24, scope: !4456)
!4489 = !DILocation(line: 1253, column: 29, scope: !4458)
!4490 = !DILocation(line: 1252, column: 6, scope: !4456)
!4491 = !DILocation(line: 1253, column: 23, scope: !4458)
!4492 = !DILocation(line: 1253, column: 4, scope: !4458)
!4493 = !DILocation(line: 1253, column: 27, scope: !4458)
!4494 = !DILocation(line: 1254, column: 2, scope: !4458)
!4495 = !DILocation(line: 1256, column: 5, scope: !4459)
!4496 = !DILocation(line: 1256, column: 11, scope: !4459)
!4497 = distinct !{!4497, !4465, !4498}
!4498 = !DILocation(line: 1257, column: 5, scope: !4451)
!4499 = !DILocation(line: 0, scope: !4452)
!4500 = distinct !{!4500, !4448, !4501}
!4501 = !DILocation(line: 1257, column: 5, scope: !4449)
!4502 = !DILocation(line: 1258, column: 21, scope: !4412)
!4503 = !DILocation(line: 1259, column: 1, scope: !4412)
!4504 = distinct !DISubprogram(name: "fix_edges_for_rarely_executed_code", scope: !3, file: !3, line: 1820, type: !4505, scopeLine: 1822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4507)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{null, !1821, !706}
!4507 = !{!4508, !4509}
!4508 = !DILocalVariable(name: "crossing_edges", arg: 1, scope: !4504, file: !3, line: 1820, type: !1821)
!4509 = !DILocalVariable(name: "n_crossing_edges", arg: 2, scope: !4504, file: !3, line: 1821, type: !706)
!4510 = !DILocation(line: 0, scope: !4504)
!4511 = !DILocation(line: 1826, column: 3, scope: !4504)
!4512 = !DILocation(line: 1832, column: 3, scope: !4504)
!4513 = !DILocation(line: 1850, column: 3, scope: !4504)
!4514 = !DILocation(line: 1851, column: 1, scope: !4504)
!4515 = distinct !DISubprogram(name: "add_labels_and_missing_jumps", scope: !3, file: !3, line: 1266, type: !4505, scopeLine: 1267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4516)
!4516 = !{!4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524}
!4517 = !DILocalVariable(name: "crossing_edges", arg: 1, scope: !4515, file: !3, line: 1266, type: !1821)
!4518 = !DILocalVariable(name: "n_crossing_edges", arg: 2, scope: !4515, file: !3, line: 1266, type: !706)
!4519 = !DILocalVariable(name: "i", scope: !4515, file: !3, line: 1268, type: !706)
!4520 = !DILocalVariable(name: "src", scope: !4515, file: !3, line: 1269, type: !751)
!4521 = !DILocalVariable(name: "dest", scope: !4515, file: !3, line: 1270, type: !751)
!4522 = !DILocalVariable(name: "label", scope: !4515, file: !3, line: 1271, type: !783)
!4523 = !DILocalVariable(name: "barrier", scope: !4515, file: !3, line: 1272, type: !783)
!4524 = !DILocalVariable(name: "new_jump", scope: !4515, file: !3, line: 1273, type: !783)
!4525 = !DILocation(line: 0, scope: !4515)
!4526 = !DILocation(line: 1275, column: 8, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 1275, column: 3)
!4528 = !DILocation(line: 0, scope: !4527)
!4529 = !DILocation(line: 1275, column: 15, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 1275, column: 3)
!4531 = !DILocation(line: 1275, column: 3, scope: !4527)
!4532 = !DILocation(line: 1277, column: 11, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 1277, column: 11)
!4534 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 1276, column: 5)
!4535 = !DILocation(line: 1277, column: 11, scope: !4534)
!4536 = !DILocation(line: 1279, column: 29, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 1278, column: 2)
!4538 = !DILocation(line: 1280, column: 30, scope: !4537)
!4539 = !DILocation(line: 1284, column: 8, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 1284, column: 8)
!4541 = !DILocation(line: 1284, column: 13, scope: !4540)
!4542 = !DILocation(line: 1284, column: 25, scope: !4540)
!4543 = !DILocation(line: 1284, column: 22, scope: !4540)
!4544 = !DILocation(line: 1284, column: 8, scope: !4537)
!4545 = !DILocation(line: 1286, column: 16, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 1285, column: 6)
!4547 = !DILocation(line: 1293, column: 12, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 1293, column: 12)
!4549 = !DILocation(line: 1293, column: 16, scope: !4548)
!4550 = !DILocation(line: 1293, column: 27, scope: !4548)
!4551 = !DILocation(line: 1293, column: 24, scope: !4548)
!4552 = !DILocation(line: 1293, column: 12, scope: !4546)
!4553 = !DILocation(line: 1295, column: 10, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 1295, column: 9)
!4555 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 1294, column: 3)
!4556 = !DILocation(line: 1295, column: 32, scope: !4554)
!4557 = !DILocation(line: 1295, column: 36, scope: !4554)
!4558 = !DILocation(line: 1295, column: 9, scope: !4555)
!4559 = !DILocation(line: 1299, column: 9, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 1297, column: 7)
!4561 = !DILocation(line: 1302, column: 17, scope: !4560)
!4562 = !DILocation(line: 1304, column: 42, scope: !4560)
!4563 = !DILocation(line: 1305, column: 14, scope: !4560)
!4564 = !DILocation(line: 1304, column: 20, scope: !4560)
!4565 = !DILocation(line: 1306, column: 19, scope: !4560)
!4566 = !DILocation(line: 1307, column: 9, scope: !4560)
!4567 = !DILocation(line: 1307, column: 31, scope: !4560)
!4568 = !DILocation(line: 1308, column: 9, scope: !4560)
!4569 = !DILocation(line: 1308, column: 29, scope: !4560)
!4570 = !DILocation(line: 1309, column: 31, scope: !4560)
!4571 = !DILocation(line: 1309, column: 17, scope: !4560)
!4572 = !DILocation(line: 1309, column: 22, scope: !4560)
!4573 = !DILocation(line: 1309, column: 29, scope: !4560)
!4574 = !DILocation(line: 1311, column: 9, scope: !4560)
!4575 = !DILocation(line: 1311, column: 28, scope: !4560)
!4576 = !DILocation(line: 1311, column: 34, scope: !4560)
!4577 = !DILocation(line: 1312, column: 7, scope: !4560)
!4578 = !DILocation(line: 1275, column: 36, scope: !4530)
!4579 = !DILocation(line: 1275, column: 3, scope: !4530)
!4580 = distinct !{!4580, !4531, !4581}
!4581 = !DILocation(line: 1316, column: 5, scope: !4527)
!4582 = !DILocation(line: 1317, column: 1, scope: !4515)
!4583 = distinct !DISubprogram(name: "fix_up_fall_thru_edges", scope: !3, file: !3, line: 1329, type: !2321, scopeLine: 1330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4584)
!4584 = !{!4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4605, !4606}
!4585 = !DILocalVariable(name: "cur_bb", scope: !4583, file: !3, line: 1331, type: !751)
!4586 = !DILocalVariable(name: "new_bb", scope: !4583, file: !3, line: 1332, type: !751)
!4587 = !DILocalVariable(name: "succ1", scope: !4583, file: !3, line: 1333, type: !769)
!4588 = !DILocalVariable(name: "succ2", scope: !4583, file: !3, line: 1334, type: !769)
!4589 = !DILocalVariable(name: "fall_thru", scope: !4583, file: !3, line: 1335, type: !769)
!4590 = !DILocalVariable(name: "cond_jump", scope: !4583, file: !3, line: 1336, type: !769)
!4591 = !DILocalVariable(name: "e", scope: !4583, file: !3, line: 1337, type: !769)
!4592 = !DILocalVariable(name: "cond_jump_crosses", scope: !4583, file: !3, line: 1338, type: !705)
!4593 = !DILocalVariable(name: "invert_worked", scope: !4583, file: !3, line: 1339, type: !706)
!4594 = !DILocalVariable(name: "old_jump", scope: !4583, file: !3, line: 1340, type: !783)
!4595 = !DILocalVariable(name: "fall_thru_label", scope: !4583, file: !3, line: 1341, type: !783)
!4596 = !DILocalVariable(name: "barrier", scope: !4583, file: !3, line: 1342, type: !783)
!4597 = !DILocalVariable(name: "e", scope: !4598, file: !3, line: 1373, type: !769)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !3, line: 1372, column: 7)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 1371, column: 16)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 1365, column: 16)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 1359, column: 11)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 1345, column: 5)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 1344, column: 3)
!4604 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 1344, column: 3)
!4605 = !DILocalVariable(name: "ei", scope: !4598, file: !3, line: 1374, type: !2418)
!4606 = !DILocalVariable(name: "bb_", scope: !4607, file: !3, line: 1459, type: !751)
!4607 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 1459, column: 9)
!4608 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 1452, column: 7)
!4609 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 1451, column: 9)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 1437, column: 3)
!4611 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 1436, column: 12)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 1390, column: 6)
!4613 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 1389, column: 8)
!4614 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1386, column: 2)
!4615 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 1385, column: 11)
!4616 = !DILocation(line: 0, scope: !4583)
!4617 = !DILocation(line: 1344, column: 3, scope: !4604)
!4618 = !DILocation(line: 0, scope: !4598)
!4619 = !DILocation(line: 0, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 1377, column: 9)
!4621 = !DILocation(line: 0, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 1377, column: 9)
!4623 = !DILocation(line: 1344, column: 3, scope: !4603)
!4624 = !DILocation(line: 0, scope: !4604)
!4625 = !DILocation(line: 1347, column: 11, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 1347, column: 11)
!4627 = !DILocation(line: 1347, column: 38, scope: !4626)
!4628 = !DILocation(line: 1347, column: 11, scope: !4602)
!4629 = !DILocation(line: 1348, column: 10, scope: !4626)
!4630 = !DILocation(line: 1348, column: 2, scope: !4626)
!4631 = !DILocation(line: 0, scope: !4626)
!4632 = !DILocation(line: 1352, column: 11, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 1352, column: 11)
!4634 = !DILocation(line: 1352, column: 38, scope: !4633)
!4635 = !DILocation(line: 1352, column: 11, scope: !4602)
!4636 = !DILocation(line: 1353, column: 10, scope: !4633)
!4637 = !DILocation(line: 1353, column: 2, scope: !4633)
!4638 = !DILocation(line: 0, scope: !4633)
!4639 = !DILocation(line: 1359, column: 11, scope: !4601)
!4640 = !DILocation(line: 1360, column: 4, scope: !4601)
!4641 = !DILocation(line: 1360, column: 15, scope: !4601)
!4642 = !DILocation(line: 1360, column: 21, scope: !4601)
!4643 = !DILocation(line: 1359, column: 11, scope: !4602)
!4644 = !DILocation(line: 1365, column: 16, scope: !4600)
!4645 = !DILocation(line: 1366, column: 9, scope: !4600)
!4646 = !DILocation(line: 1366, column: 20, scope: !4600)
!4647 = !DILocation(line: 1366, column: 26, scope: !4600)
!4648 = !DILocation(line: 1365, column: 16, scope: !4601)
!4649 = !DILocation(line: 1371, column: 27, scope: !4599)
!4650 = !DILocation(line: 1371, column: 39, scope: !4599)
!4651 = !DILocation(line: 1371, column: 16, scope: !4600)
!4652 = !DILocation(line: 1373, column: 9, scope: !4598)
!4653 = !DILocation(line: 1374, column: 9, scope: !4598)
!4654 = !DILocation(line: 1377, column: 9, scope: !4620)
!4655 = !DILocation(line: 1377, column: 9, scope: !4622)
!4656 = !DILocation(line: 1378, column: 15, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 1378, column: 15)
!4658 = !DILocation(line: 1378, column: 18, scope: !4657)
!4659 = !DILocation(line: 1378, column: 24, scope: !4657)
!4660 = !DILocation(line: 1378, column: 15, scope: !4622)
!4661 = !DILocation(line: 1381, column: 13, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 1379, column: 11)
!4663 = distinct !{!4663, !4654, !4664}
!4664 = !DILocation(line: 1382, column: 11, scope: !4620)
!4665 = !DILocation(line: 1383, column: 7, scope: !4599)
!4666 = !DILocation(line: 0, scope: !4602)
!4667 = !DILocation(line: 1383, column: 7, scope: !4598)
!4668 = !DILocation(line: 0, scope: !4601)
!4669 = !DILocation(line: 1385, column: 11, scope: !4615)
!4670 = !DILocation(line: 1385, column: 21, scope: !4615)
!4671 = !DILocation(line: 1385, column: 36, scope: !4615)
!4672 = !DILocation(line: 1385, column: 44, scope: !4615)
!4673 = !DILocation(line: 1385, column: 41, scope: !4615)
!4674 = !DILocation(line: 1385, column: 11, scope: !4602)
!4675 = !DILocation(line: 1389, column: 19, scope: !4613)
!4676 = !DILocation(line: 1389, column: 25, scope: !4613)
!4677 = !DILocation(line: 1389, column: 8, scope: !4614)
!4678 = !DILocation(line: 1396, column: 19, scope: !4612)
!4679 = !DILocation(line: 1400, column: 12, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 1400, column: 12)
!4681 = !DILocation(line: 1400, column: 12, scope: !4612)
!4682 = !DILocation(line: 1402, column: 22, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 1402, column: 9)
!4684 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 1401, column: 3)
!4685 = !DILocation(line: 1402, column: 9, scope: !4684)
!4686 = !DILocation(line: 1411, column: 10, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 1411, column: 9)
!4688 = !DILocation(line: 1412, column: 9, scope: !4687)
!4689 = !DILocation(line: 1412, column: 20, scope: !4687)
!4690 = !DILocation(line: 1412, column: 38, scope: !4687)
!4691 = !DILocation(line: 1412, column: 24, scope: !4687)
!4692 = !DILocation(line: 1411, column: 9, scope: !4684)
!4693 = !DILocation(line: 1417, column: 27, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 1413, column: 7)
!4695 = !DILocation(line: 1419, column: 13, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 1419, column: 13)
!4697 = !DILocation(line: 1419, column: 22, scope: !4696)
!4698 = !DILocation(line: 1419, column: 25, scope: !4696)
!4699 = !DILocation(line: 1419, column: 46, scope: !4696)
!4700 = !DILocation(line: 1419, column: 43, scope: !4696)
!4701 = !DILocation(line: 1420, column: 20, scope: !4696)
!4702 = !DILocation(line: 1420, column: 4, scope: !4696)
!4703 = !DILocation(line: 0, scope: !4612)
!4704 = !DILocation(line: 1422, column: 13, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 1422, column: 13)
!4706 = !DILocation(line: 1422, column: 13, scope: !4694)
!4707 = !DILocation(line: 1424, column: 23, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 1423, column: 4)
!4709 = !DILocation(line: 1425, column: 23, scope: !4708)
!4710 = !DILocation(line: 1426, column: 6, scope: !4708)
!4711 = !DILocation(line: 1430, column: 23, scope: !4708)
!4712 = !DILocation(line: 1431, column: 23, scope: !4708)
!4713 = !DILocation(line: 1432, column: 4, scope: !4708)
!4714 = !DILocation(line: 1394, column: 26, scope: !4612)
!4715 = !DILocation(line: 1395, column: 23, scope: !4612)
!4716 = !DILocation(line: 1363, column: 14, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 1361, column: 2)
!4718 = !DILocation(line: 1362, column: 14, scope: !4717)
!4719 = !DILocation(line: 1436, column: 12, scope: !4611)
!4720 = !DILocation(line: 1436, column: 34, scope: !4611)
!4721 = !DILocation(line: 1436, column: 30, scope: !4611)
!4722 = !DILocation(line: 1448, column: 30, scope: !4610)
!4723 = !DILocation(line: 1448, column: 36, scope: !4610)
!4724 = !DILocation(line: 1449, column: 14, scope: !4610)
!4725 = !DILocation(line: 1451, column: 9, scope: !4609)
!4726 = !DILocation(line: 1451, column: 9, scope: !4610)
!4727 = !DILocation(line: 1453, column: 31, scope: !4608)
!4728 = !DILocation(line: 1453, column: 17, scope: !4608)
!4729 = !DILocation(line: 1453, column: 21, scope: !4608)
!4730 = !DILocation(line: 1454, column: 21, scope: !4608)
!4731 = !DILocation(line: 0, scope: !4607)
!4732 = !DILocation(line: 1459, column: 9, scope: !4607)
!4733 = !DILocation(line: 1460, column: 9, scope: !4608)
!4734 = !DILocation(line: 1460, column: 36, scope: !4608)
!4735 = !DILocation(line: 1460, column: 42, scope: !4608)
!4736 = !DILocation(line: 1461, column: 7, scope: !4608)
!4737 = !DILocation(line: 1466, column: 40, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 1463, column: 21)
!4739 = !DILocation(line: 1471, column: 9, scope: !4610)
!4740 = !DILocation(line: 1473, column: 39, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 1472, column: 7)
!4742 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 1471, column: 9)
!4743 = !DILocation(line: 1473, column: 19, scope: !4741)
!4744 = !DILocation(line: 1474, column: 34, scope: !4741)
!4745 = !DILocation(line: 1474, column: 20, scope: !4741)
!4746 = !DILocation(line: 1474, column: 25, scope: !4741)
!4747 = !DILocation(line: 1474, column: 32, scope: !4741)
!4748 = !DILocation(line: 1476, column: 7, scope: !4741)
!4749 = !DILocation(line: 1479, column: 39, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 1478, column: 7)
!4751 = !DILocation(line: 1479, column: 19, scope: !4750)
!4752 = !DILocation(line: 1480, column: 34, scope: !4750)
!4753 = !DILocation(line: 1480, column: 20, scope: !4750)
!4754 = !DILocation(line: 1480, column: 25, scope: !4750)
!4755 = !DILocation(line: 1480, column: 32, scope: !4750)
!4756 = !DILocation(line: 0, scope: !4603)
!4757 = distinct !{!4757, !4617, !4758}
!4758 = !DILocation(line: 1486, column: 5, scope: !4604)
!4759 = !DILocation(line: 1487, column: 1, scope: !4583)
!4760 = distinct !DISubprogram(name: "add_reg_crossing_jump_notes", scope: !3, file: !3, line: 1775, type: !2321, scopeLine: 1776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4761)
!4761 = !{!4762, !4763, !4764}
!4762 = !DILocalVariable(name: "bb", scope: !4760, file: !3, line: 1777, type: !751)
!4763 = !DILocalVariable(name: "e", scope: !4760, file: !3, line: 1778, type: !769)
!4764 = !DILocalVariable(name: "ei", scope: !4760, file: !3, line: 1779, type: !2418)
!4765 = !DILocation(line: 1778, column: 3, scope: !4760)
!4766 = !DILocation(line: 1779, column: 3, scope: !4760)
!4767 = !DILocation(line: 1781, column: 3, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 1781, column: 3)
!4769 = !DILocation(line: 0, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 1782, column: 5)
!4771 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 1781, column: 3)
!4772 = !DILocation(line: 0, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 1782, column: 5)
!4774 = !DILocation(line: 1781, column: 3, scope: !4771)
!4775 = !DILocation(line: 0, scope: !4768)
!4776 = !DILocation(line: 0, scope: !4760)
!4777 = !DILocation(line: 1782, column: 5, scope: !4770)
!4778 = !DILocation(line: 1782, column: 5, scope: !4773)
!4779 = !DILocation(line: 1783, column: 12, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 1783, column: 11)
!4781 = !DILocation(line: 1783, column: 15, scope: !4780)
!4782 = !DILocation(line: 1783, column: 21, scope: !4780)
!4783 = !DILocation(line: 1784, column: 4, scope: !4780)
!4784 = !DILocation(line: 1784, column: 7, scope: !4780)
!4785 = !DILocation(line: 1783, column: 11, scope: !4773)
!4786 = !DILocation(line: 1785, column: 2, scope: !4780)
!4787 = distinct !{!4787, !4777, !4788}
!4788 = !DILocation(line: 1785, column: 60, scope: !4770)
!4789 = !DILocation(line: 0, scope: !4771)
!4790 = distinct !{!4790, !4767, !4791}
!4791 = !DILocation(line: 1785, column: 60, scope: !4768)
!4792 = !DILocation(line: 1786, column: 1, scope: !4760)
