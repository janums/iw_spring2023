; ModuleID = 'postreload-gcse.bc'
source_filename = "postreload-gcse.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.anon = type { i32, i32, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.modifies_mem = type { %struct.rtx_def*, %struct.modifies_mem* }
%struct.gcov_ctr_summary = type opaque
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
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.expr = type { %struct.rtx_def*, i32, %struct.occr* }
%struct.occr = type { %struct.occr*, %struct.rtx_def*, i8 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.unoccr = type { %struct.unoccr*, %struct.edge_def*, %struct.rtx_def* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"gcse2\00", align 1
@pass_gcse2 = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_handle_gcse2, i32 ()* @rest_of_handle_gcse2, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 152, i32 0, i32 0, i32 0, i32 0, i32 1035 } }, align 8, !dbg !0
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_gcse_after_reload = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@stats = internal global %struct.anon zeroinitializer, align 4, !dbg !2029
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@expr_table = internal unnamed_addr global %struct.htab* null, align 8, !dbg !2054
@.str.1 = private unnamed_addr constant [26 x i8] c"GCSE AFTER RELOAD stats:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"copies inserted: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"moves inserted:  %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"insns deleted:   %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@uid_cuid = internal unnamed_addr global i32* null, align 8, !dbg !2036
@expr_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !2038
@occr_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !2040
@unoccr_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !2042
@modifies_mem_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !2044
@reg_avail_info = internal unnamed_addr global i32* null, align 8, !dbg !2046
@modifies_mem_obstack_bottom = internal unnamed_addr global %struct.modifies_mem* null, align 8, !dbg !2048
@.str.6 = private unnamed_addr constant [18 x i8] c"postreload-gcse.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@modifies_mem_list = internal unnamed_addr global %struct.modifies_mem* null, align 8, !dbg !2050
@regs_invalidated_by_call = external dso_local local_unnamed_addr global i64, align 8
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16
@flag_float_store = external dso_local local_unnamed_addr global i32, align 4
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@mems_conflict_p = internal unnamed_addr global i1 false, align 4, !dbg !2082
@.str.8 = private unnamed_addr constant [25 x i8] c"\0A\0Aexpression hash table\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"size %ld, %ld elements, %f collision/search ratio\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\0A\0Atable entries:\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"expr: \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"\0Ahashcode: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"list of occurrences:\0A\00", align 1
@flag_non_call_exceptions = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@profile_info = external dso_local local_unnamed_addr global %struct.gcov_ctr_summary*, align 8
@flag_branch_probabilities = external dso_local local_unnamed_addr global i32, align 4
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@.str.16 = private unnamed_addr constant [53 x i8] c"generating move from %d to %d on edge from %d to %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"generating on edge from %d to %d a copy of load: \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"deleting insn:\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2087 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2100, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2101, metadata !DIExpression()), !dbg !2102
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2103
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2104
  ret i32 %call, !dbg !2105
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2106 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2110
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2111
  ret i32 %call, !dbg !2112
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2113 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2117, metadata !DIExpression()), !dbg !2118
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2119
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2119
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2119
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2119
  %cmp = icmp uge i8* %0, %1, !dbg !2119
  %conv1 = zext i1 %cmp to i64, !dbg !2119
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2119
  %tobool = icmp eq i64 %expval, 0, !dbg !2119
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2119

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2119
  br label %cond.end, !dbg !2119

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2119
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2119
  %2 = load i8, i8* %0, align 1, !dbg !2119
  %conv3 = zext i8 %2 to i32, !dbg !2119
  br label %cond.end, !dbg !2119

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2119
  ret i32 %cond, !dbg !2120
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2121 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2123, metadata !DIExpression()), !dbg !2124
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2125
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2125
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2125
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2125
  %cmp = icmp uge i8* %0, %1, !dbg !2125
  %conv1 = zext i1 %cmp to i64, !dbg !2125
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2125
  %tobool = icmp eq i64 %expval, 0, !dbg !2125
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2125

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2125
  br label %cond.end, !dbg !2125

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2125
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2125
  %2 = load i8, i8* %0, align 1, !dbg !2125
  %conv3 = zext i8 %2 to i32, !dbg !2125
  br label %cond.end, !dbg !2125

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2125
  ret i32 %cond, !dbg !2126
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2127 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2128
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2128
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2128
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2128
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2128
  %cmp = icmp uge i8* %1, %2, !dbg !2128
  %conv1 = zext i1 %cmp to i64, !dbg !2128
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2128
  %tobool = icmp eq i64 %expval, 0, !dbg !2128
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2128

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2128
  br label %cond.end, !dbg !2128

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2128
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2128
  %3 = load i8, i8* %1, align 1, !dbg !2128
  %conv3 = zext i8 %3 to i32, !dbg !2128
  br label %cond.end, !dbg !2128

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2128
  ret i32 %cond, !dbg !2129
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2134, metadata !DIExpression()), !dbg !2135
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2136
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2137
  ret i32 %call, !dbg !2138
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2139 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2143, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2144, metadata !DIExpression()), !dbg !2145
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2146
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2146
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2146
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2146
  %cmp = icmp uge i8* %0, %1, !dbg !2146
  %conv1 = zext i1 %cmp to i64, !dbg !2146
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2146
  %tobool = icmp eq i64 %expval, 0, !dbg !2146
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2146

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2146
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2146
  br label %cond.end, !dbg !2146

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2146
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2146
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2146
  store i8 %conv2, i8* %0, align 1, !dbg !2146
  %conv6 = and i32 %__c, 255, !dbg !2146
  br label %cond.end, !dbg !2146

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2146
  ret i32 %cond, !dbg !2147
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2148 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2150, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2151, metadata !DIExpression()), !dbg !2152
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2153
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2153
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2153
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2153
  %cmp = icmp uge i8* %0, %1, !dbg !2153
  %conv1 = zext i1 %cmp to i64, !dbg !2153
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2153
  %tobool = icmp eq i64 %expval, 0, !dbg !2153
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2153

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2153
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2153
  br label %cond.end, !dbg !2153

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2153
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2153
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2153
  store i8 %conv2, i8* %0, align 1, !dbg !2153
  %conv6 = and i32 %__c, 255, !dbg !2153
  br label %cond.end, !dbg !2153

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2153
  ret i32 %cond, !dbg !2154
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2155 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2157, metadata !DIExpression()), !dbg !2158
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2159
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2159
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2159
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2159
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2159
  %cmp = icmp uge i8* %1, %2, !dbg !2159
  %conv1 = zext i1 %cmp to i64, !dbg !2159
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2159
  %tobool = icmp eq i64 %expval, 0, !dbg !2159
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2159

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2159
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2159
  br label %cond.end, !dbg !2159

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2159
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2159
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2159
  store i8 %conv4, i8* %1, align 1, !dbg !2159
  %conv6 = and i32 %__c, 255, !dbg !2159
  br label %cond.end, !dbg !2159

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2159
  ret i32 %cond, !dbg !2160
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2161 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2167, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2168, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2169, metadata !DIExpression()), !dbg !2170
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2171
  ret i64 %call, !dbg !2172
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2173 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2175, metadata !DIExpression()), !dbg !2176
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2177
  %0 = load i32, i32* %_flags, align 8, !dbg !2177
  %and = lshr i32 %0, 4, !dbg !2177
  %and.lobit = and i32 %and, 1, !dbg !2177
  ret i32 %and.lobit, !dbg !2178
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2179 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2181, metadata !DIExpression()), !dbg !2182
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2183
  %0 = load i32, i32* %_flags, align 8, !dbg !2183
  %and = lshr i32 %0, 5, !dbg !2183
  %and.lobit = and i32 %and, 1, !dbg !2183
  ret i32 %and.lobit, !dbg !2184
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2185 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2188, metadata !DIExpression()), !dbg !2189
  %__c.off = add i32 %__c, 128, !dbg !2190
  %0 = icmp ult i32 %__c.off, 384, !dbg !2190
  br i1 %0, label %cond.true, label %cond.end, !dbg !2190

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2191
  %1 = load i32*, i32** %call, align 8, !dbg !2192
  %idxprom = sext i32 %__c to i64, !dbg !2193
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2193
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2193
  br label %cond.end, !dbg !2194

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2194
  ret i32 %cond, !dbg !2195
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2196 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2198, metadata !DIExpression()), !dbg !2199
  %__c.off = add i32 %__c, 128, !dbg !2200
  %0 = icmp ult i32 %__c.off, 384, !dbg !2200
  br i1 %0, label %cond.true, label %cond.end, !dbg !2200

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2201
  %1 = load i32*, i32** %call, align 8, !dbg !2202
  %idxprom = sext i32 %__c to i64, !dbg !2203
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2203
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2203
  br label %cond.end, !dbg !2204

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2204
  ret i32 %cond, !dbg !2205
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2206 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2211, metadata !DIExpression()), !dbg !2212
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2213
  %conv = trunc i64 %call to i32, !dbg !2214
  ret i32 %conv, !dbg !2215
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2216 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2220, metadata !DIExpression()), !dbg !2221
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2222
  ret i64 %call, !dbg !2223
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2224 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2229, metadata !DIExpression()), !dbg !2230
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2231
  ret i64 %call, !dbg !2232
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2233 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2239, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2240, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2241, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2242, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2243, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 0, metadata !2244, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2245, metadata !DIExpression()), !dbg !2249
  br label %while.cond, !dbg !2250

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2251
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2249
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2245, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2244, metadata !DIExpression()), !dbg !2249
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2252
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2250

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2253
  %div = lshr i64 %add, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %div, metadata !2246, metadata !DIExpression()), !dbg !2249
  %mul = mul i64 %div, %__size, !dbg !2256
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2257
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2247, metadata !DIExpression()), !dbg !2249
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %call, metadata !2248, metadata !DIExpression()), !dbg !2249
  %cmp1 = icmp slt i32 %call, 0, !dbg !2259
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2261

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2262
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2264

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2244, metadata !DIExpression()), !dbg !2249
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2249
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2249
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2245, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2244, metadata !DIExpression()), !dbg !2249
  br label %while.cond, !dbg !2250, !llvm.loop !2266

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2249
  ret i8* %retval.0, !dbg !2268
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2269 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2275, metadata !DIExpression()), !dbg !2276
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2277
  ret double %call, !dbg !2278
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2279 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2288, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 %base, metadata !2290, metadata !DIExpression()), !dbg !2291
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2292
  ret i64 %call, !dbg !2293
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2294 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2300, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2301, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i32 %base, metadata !2302, metadata !DIExpression()), !dbg !2303
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2304
  ret i64 %call, !dbg !2305
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2306 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2317, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2318, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %base, metadata !2319, metadata !DIExpression()), !dbg !2320
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2321
  ret i64 %call, !dbg !2322
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2327, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2328, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %base, metadata !2329, metadata !DIExpression()), !dbg !2330
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2331
  ret i64 %call, !dbg !2332
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2333 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2374, metadata !DIExpression()), !dbg !2375
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2376
  ret i32 %call, !dbg !2377
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2378 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2381, metadata !DIExpression()), !dbg !2382
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2383
  ret i32 %call, !dbg !2384
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2385 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2389, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2390, metadata !DIExpression()), !dbg !2391
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2392
  ret i32 %call, !dbg !2393
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2394 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2398, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2399, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2401, metadata !DIExpression()), !dbg !2402
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2403
  ret i32 %call, !dbg !2404
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2405 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2410, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2411, metadata !DIExpression()), !dbg !2412
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2411, metadata !DIExpression(DW_OP_deref)), !dbg !2412
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2413
  ret i32 %call, !dbg !2414
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2415 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2419, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2420, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2421, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2422, metadata !DIExpression()), !dbg !2423
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2422, metadata !DIExpression(DW_OP_deref)), !dbg !2423
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2424
  ret i32 %call, !dbg !2425
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2426 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2450, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2451, metadata !DIExpression()), !dbg !2452
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2453
  ret i32 %call, !dbg !2454
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2455 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2457, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2458, metadata !DIExpression()), !dbg !2459
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2460
  ret i32 %call, !dbg !2461
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2462 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2467, metadata !DIExpression()), !dbg !2468
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2469
  ret i32 %call, !dbg !2470
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2471 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2475, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2476, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2477, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2478, metadata !DIExpression()), !dbg !2479
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2480
  ret i32 %call, !dbg !2481
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_gcse2() #4 !dbg !2482 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2483
  %cmp = icmp sgt i32 %0, 0, !dbg !2484
  %1 = load i32, i32* @flag_gcse_after_reload, align 4, !dbg !2485
  %tobool = icmp ne i32 %1, 0, !dbg !2485
  %or.cond = and i1 %cmp, %tobool, !dbg !2486
  br i1 %or.cond, label %land.rhs, label %land.end, !dbg !2486

land.rhs:                                         ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2487
  %call = tail call zeroext i8 @optimize_function_for_speed_p(%struct.function* %2) #6, !dbg !2488
  %tobool1 = icmp ne i8 %call, 0, !dbg !2489
  %phitmp = zext i1 %tobool1 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %3, !dbg !2490
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_gcse2() #4 !dbg !2491 {
entry:
  %call = tail call %struct.rtx_def* @get_insns() #6, !dbg !2492
  tail call fastcc void @gcse_after_reload_main(%struct.rtx_def* %call) #7, !dbg !2493
  %call1 = tail call %struct.rtx_def* @get_insns() #6, !dbg !2494
  tail call void @rebuild_jump_labels(%struct.rtx_def* %call1) #6, !dbg !2495
  ret i32 0, !dbg !2496
}

declare dso_local zeroext i8 @optimize_function_for_speed_p(%struct.function*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @gcse_after_reload_main(%struct.rtx_def* %f) unnamed_addr #4 !dbg !2497 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %f, metadata !2501, metadata !DIExpression()), !dbg !2502
  %call = tail call i8* @memset(i8* bitcast (%struct.anon* @stats to i8*), i32 0, i64 12) #6, !dbg !2503
  tail call fastcc void @alloc_mem() #7, !dbg !2504
  tail call void @init_alias_analysis() #6, !dbg !2505
  tail call fastcc void @compute_hash_table() #7, !dbg !2506
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2507
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2507
  br i1 %tobool, label %if.end, label %if.then, !dbg !2509

if.then:                                          ; preds = %entry
  tail call fastcc void @dump_hash_table(%struct._IO_FILE* nonnull %0) #7, !dbg !2510
  br label %if.end, !dbg !2510

if.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.htab*, %struct.htab** @expr_table, align 8, !dbg !2511
  %call1 = tail call i64 @htab_elements(%struct.htab* %1) #6, !dbg !2513
  %cmp = icmp eq i64 %call1, 0, !dbg !2514
  br i1 %cmp, label %if.end11, label %if.then2, !dbg !2515

if.then2:                                         ; preds = %if.end
  tail call fastcc void @eliminate_partially_redundant_loads() #7, !dbg !2516
  tail call fastcc void @delete_redundant_insns() #7, !dbg !2518
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2519
  %tobool3 = icmp eq %struct._IO_FILE* %2, null, !dbg !2519
  br i1 %tobool3, label %if.end11, label %if.then4, !dbg !2521

if.then4:                                         ; preds = %if.then2
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2522
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2524
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 1), align 4, !dbg !2525
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %4) #6, !dbg !2526
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2527
  %6 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 0), align 4, !dbg !2528
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %6) #6, !dbg !2529
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2530
  %8 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 2), align 4, !dbg !2531
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %8) #6, !dbg !2532
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2533
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2534
  br label %if.end11, !dbg !2535

if.end11:                                         ; preds = %if.then2, %if.end, %if.then4
  tail call void @end_alias_analysis() #6, !dbg !2536
  tail call fastcc void @free_mem() #7, !dbg !2537
  ret void, !dbg !2538
}

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #1

declare dso_local void @rebuild_jump_labels(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @alloc_mem() unnamed_addr #4 !dbg !2539 {
entry:
  %call = tail call i32 @get_max_uid() #6, !dbg !2546
  %add = add nsw i32 %call, 1, !dbg !2546
  %conv = sext i32 %add to i64, !dbg !2546
  %call1 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2546
  store i8* %call1, i8** bitcast (i32** @uid_cuid to i8**), align 8, !dbg !2547
  call void @llvm.dbg.value(metadata i32 1, metadata !2543, metadata !DIExpression()), !dbg !2548
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2549
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2549
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2549
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2549
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2549
  br label %for.cond, !dbg !2549

for.cond:                                         ; preds = %for.inc41, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.inc41 ], !dbg !2551
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.inc41 ]
  %i.0 = phi i32 [ 1, %entry ], [ %i.1.lcssa, %for.inc41 ], !dbg !2553
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2554
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2544, metadata !DIExpression()), !dbg !2548
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !2551
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2551
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !2551
  br i1 %cmp, label %for.end43, label %for.body, !dbg !2549

for.body:                                         ; preds = %for.cond
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2555
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2555
  %5 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2555
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %5, i64 0, i32 0, !dbg !2555
  br label %for.cond5, !dbg !2555

for.cond5:                                        ; preds = %for.inc, %for.body
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx40, %for.inc ]
  %i.1 = phi i32 [ %i.0, %for.body ], [ %i.2, %for.inc ], !dbg !2548
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2545, metadata !DIExpression()), !dbg !2548
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2558
  br i1 %tobool, label %for.inc41, label %land.rhs, !dbg !2558

land.rhs:                                         ; preds = %for.cond5
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2558
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 1, !dbg !2558
  %7 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2558
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2558
  %rt_rtx = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !2558
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2558
  %cmp8 = icmp eq %struct.rtx_def* %insn.0, %9, !dbg !2558
  br i1 %cmp8, label %for.inc41, label %for.body10, !dbg !2555

for.body10:                                       ; preds = %land.rhs
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2560
  %bf.load = load i32, i32* %10, align 8, !dbg !2560
  %bf.clear = and i32 %bf.load, 65535, !dbg !2560
  %cmp11 = icmp eq i32 %bf.clear, 8, !dbg !2560
  br i1 %cmp11, label %if.then, label %lor.lhs.false, !dbg !2560

lor.lhs.false:                                    ; preds = %for.body10
  %cmp15 = icmp eq i32 %bf.clear, 7, !dbg !2560
  br i1 %cmp15, label %if.then, label %lor.lhs.false17, !dbg !2560

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %cmp20 = icmp eq i32 %bf.clear, 9, !dbg !2560
  br i1 %cmp20, label %if.then, label %lor.lhs.false22, !dbg !2560

lor.lhs.false22:                                  ; preds = %lor.lhs.false17
  %cmp25 = icmp eq i32 %bf.clear, 10, !dbg !2560
  br i1 %cmp25, label %if.then, label %if.else, !dbg !2563

if.then:                                          ; preds = %lor.lhs.false22, %lor.lhs.false17, %lor.lhs.false, %for.body10
  %inc = add nsw i32 %i.1, 1, !dbg !2564
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2543, metadata !DIExpression()), !dbg !2548
  %11 = load i32*, i32** @uid_cuid, align 8, !dbg !2565
  %arrayidx29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2566
  %rt_int = bitcast %union.rtunion_def* %arrayidx29 to i32*, !dbg !2566
  %12 = load i32, i32* %rt_int, align 8, !dbg !2566
  %idxprom = sext i32 %12 to i64, !dbg !2565
  %arrayidx30 = getelementptr inbounds i32, i32* %11, i64 %idxprom, !dbg !2565
  store i32 %i.1, i32* %arrayidx30, align 4, !dbg !2567
  br label %for.inc, !dbg !2565

if.else:                                          ; preds = %lor.lhs.false22
  %13 = load i32*, i32** @uid_cuid, align 8, !dbg !2568
  %arrayidx33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2569
  %rt_int34 = bitcast %union.rtunion_def* %arrayidx33 to i32*, !dbg !2569
  %14 = load i32, i32* %rt_int34, align 8, !dbg !2569
  %idxprom35 = sext i32 %14 to i64, !dbg !2568
  %arrayidx36 = getelementptr inbounds i32, i32* %13, i64 %idxprom35, !dbg !2568
  store i32 %i.1, i32* %arrayidx36, align 4, !dbg !2570
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %i.2 = phi i32 [ %inc, %if.then ], [ %i.1, %if.else ], !dbg !2548
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !2543, metadata !DIExpression()), !dbg !2548
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2558
  %rt_rtx40 = bitcast %union.rtunion_def* %15 to %struct.rtx_def**, !dbg !2558
  br label %for.cond5, !dbg !2558, !llvm.loop !2571

for.inc41:                                        ; preds = %land.rhs, %for.cond5
  %i.1.lcssa = phi i32 [ %i.1, %land.rhs ], [ %i.1, %for.cond5 ], !dbg !2548
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !2543, metadata !DIExpression()), !dbg !2548
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2551
  %cfg3.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2573
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3.phi.trans.insert, align 8, !dbg !2551
  br label %for.cond, !dbg !2551, !llvm.loop !2574

for.end43:                                        ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !2553
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2543, metadata !DIExpression()), !dbg !2548
  %cmp44 = icmp sgt i32 %i.0.lcssa, 55, !dbg !2576
  %div46 = sdiv i32 %i.0.lcssa, 4, !dbg !2576
  %cond = select i1 %cmp44, i32 %div46, i32 13, !dbg !2576
  %conv47 = sext i32 %cond to i64, !dbg !2576
  %call48 = tail call %struct.htab* @htab_create(i64 %conv47, i32 (i8*)* nonnull @hash_expr_for_htab, i32 (i8*, i8*)* nonnull @expr_equiv_p, void (i8*)* null) #6, !dbg !2577
  store %struct.htab* %call48, %struct.htab** @expr_table, align 8, !dbg !2578
  %call49 = tail call i32 @_obstack_begin(%struct.obstack* nonnull @expr_obstack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !2579
  %call50 = tail call i32 @_obstack_begin(%struct.obstack* nonnull @occr_obstack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !2580
  %call51 = tail call i32 @_obstack_begin(%struct.obstack* nonnull @unoccr_obstack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !2581
  %call52 = tail call i32 @_obstack_begin(%struct.obstack* nonnull @modifies_mem_obstack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !2582
  %call53 = tail call i8* @xmalloc(i64 212) #6, !dbg !2583
  store i8* %call53, i8** bitcast (i32** @reg_avail_info to i8**), align 8, !dbg !2584
  store i64 16, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 5), align 8, !dbg !2585
  %16 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2585
  %17 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3) to i64*), align 8, !dbg !2585
  %sub.ptr.sub = sub i64 %16, %17, !dbg !2585
  %cmp54 = icmp slt i64 %sub.ptr.sub, 16, !dbg !2585
  %18 = inttoptr i64 %17 to i8*, !dbg !2585
  br i1 %cmp54, label %cond.true56, label %cond.end59, !dbg !2585

cond.true56:                                      ; preds = %for.end43
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @modifies_mem_obstack, i32 16) #6, !dbg !2585
  %.pre2 = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 5), align 8, !dbg !2585
  %.pre3 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3), align 8, !dbg !2585
  br label %cond.end59, !dbg !2585

cond.end59:                                       ; preds = %for.end43, %cond.true56
  %19 = phi i8* [ %18, %for.end43 ], [ %.pre3, %cond.true56 ], !dbg !2585
  %20 = phi i64 [ 16, %for.end43 ], [ %.pre2, %cond.true56 ], !dbg !2585
  %add.ptr61 = getelementptr inbounds i8, i8* %19, i64 %20, !dbg !2585
  store i8* %add.ptr61, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3), align 8, !dbg !2585
  %21 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 2), align 8, !dbg !2585
  %cmp62 = icmp eq i8* %add.ptr61, %21, !dbg !2585
  %22 = ptrtoint i8* %21 to i64, !dbg !2585
  %23 = ptrtoint i8* %add.ptr61 to i64, !dbg !2585
  br i1 %cmp62, label %cond.true64, label %cond.end68, !dbg !2585

cond.true64:                                      ; preds = %cond.end59
  %bf.load65 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 10), align 8, !dbg !2585
  %bf.set = or i8 %bf.load65, 2, !dbg !2585
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 10), align 8, !dbg !2585
  br label %cond.end68, !dbg !2585

cond.end68:                                       ; preds = %cond.end59, %cond.true64
  store i64 %22, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 5), align 8, !dbg !2585
  %24 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 6), align 8, !dbg !2585
  %conv74 = sext i32 %24 to i64, !dbg !2585
  %add75 = add nsw i64 %23, %conv74, !dbg !2585
  %neg = xor i32 %24, -1, !dbg !2585
  %conv76 = sext i32 %neg to i64, !dbg !2585
  %and = and i64 %add75, %conv76, !dbg !2585
  %25 = inttoptr i64 %and to i8*, !dbg !2585
  store i8* %25, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3), align 8, !dbg !2585
  %26 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 1) to i64*), align 8, !dbg !2585
  %sub.ptr.sub79 = sub i64 %and, %26, !dbg !2585
  %27 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2585
  %sub.ptr.sub82 = sub i64 %27, %26, !dbg !2585
  %cmp83 = icmp sgt i64 %sub.ptr.sub79, %sub.ptr.sub82, !dbg !2585
  br i1 %cmp83, label %cond.true85, label %cond.end87, !dbg !2585

cond.true85:                                      ; preds = %cond.end68
  store i64 %27, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3) to i64*), align 8, !dbg !2585
  br label %cond.end87, !dbg !2585

cond.end87:                                       ; preds = %cond.end68, %cond.true85
  %28 = phi i64 [ %and, %cond.end68 ], [ %27, %cond.true85 ], !dbg !2585
  store i64 %28, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 2) to i64*), align 8, !dbg !2585
  store i64 %22, i64* bitcast (%struct.modifies_mem** @modifies_mem_obstack_bottom to i64*), align 8, !dbg !2586
  ret void, !dbg !2587
}

declare dso_local void @init_alias_analysis() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_hash_table() unnamed_addr #4 !dbg !2588 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2595
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2595
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2595
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2595
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2595
  br label %for.cond, !dbg !2595

for.cond:                                         ; preds = %for.inc70, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.inc70 ], !dbg !2596
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.inc70 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2597
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2597
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2590, metadata !DIExpression()), !dbg !2598
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !2596
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2596
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !2596
  br i1 %cmp, label %for.end72, label %for.body, !dbg !2595

for.body:                                         ; preds = %for.cond
  tail call fastcc void @reset_opr_set_tables() #7, !dbg !2599
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2600
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2600
  %5 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2600
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %5, i64 0, i32 0, !dbg !2600
  br label %for.cond3, !dbg !2600

for.cond3:                                        ; preds = %for.inc, %for.body
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx23, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2602
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2591, metadata !DIExpression()), !dbg !2603
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2604
  br i1 %tobool, label %for.cond3.for.end_crit_edge, label %land.rhs, !dbg !2604

for.cond3.for.end_crit_edge:                      ; preds = %for.cond3
  %.pre2 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2606
  br label %for.end, !dbg !2604

land.rhs:                                         ; preds = %for.cond3
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2604
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 1, !dbg !2604
  %7 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2604
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2604
  %rt_rtx = bitcast %union.rtunion_def* %8 to %struct.rtx_def**, !dbg !2604
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2604
  %cmp6 = icmp eq %struct.rtx_def* %insn.0, %9, !dbg !2604
  br i1 %cmp6, label %for.end.loopexit, label %for.body7, !dbg !2600

for.body7:                                        ; preds = %land.rhs
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2608
  %bf.load = load i32, i32* %10, align 8, !dbg !2608
  %bf.clear = and i32 %bf.load, 65535, !dbg !2608
  %cmp8 = icmp eq i32 %bf.clear, 8, !dbg !2608
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !2608

lor.lhs.false:                                    ; preds = %for.body7
  %cmp11 = icmp eq i32 %bf.clear, 7, !dbg !2608
  br i1 %cmp11, label %if.then, label %lor.lhs.false12, !dbg !2608

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %cmp15 = icmp eq i32 %bf.clear, 9, !dbg !2608
  br i1 %cmp15, label %if.then, label %lor.lhs.false16, !dbg !2608

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %cmp19 = icmp eq i32 %bf.clear, 10, !dbg !2608
  br i1 %cmp19, label %if.then, label %for.inc, !dbg !2611

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false12, %lor.lhs.false, %for.body7
  tail call fastcc void @record_opr_changes(%struct.rtx_def* nonnull %insn.0) #7, !dbg !2612
  br label %for.inc, !dbg !2612

for.inc:                                          ; preds = %lor.lhs.false16, %if.then
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2604
  %rt_rtx23 = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !2604
  br label %for.cond3, !dbg !2604, !llvm.loop !2613

for.end.loopexit:                                 ; preds = %land.rhs
  %.lcssa = phi %struct.rtl_bb_info* [ %6, %land.rhs ], !dbg !2604
  br label %for.end, !dbg !2606

for.end:                                          ; preds = %for.end.loopexit, %for.cond3.for.end_crit_edge
  %12 = phi %struct.rtl_bb_info* [ %.pre2, %for.cond3.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !2606
  %head_26 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %12, i64 0, i32 0, !dbg !2606
  br label %for.cond27, !dbg !2606

for.cond27:                                       ; preds = %for.inc64, %for.end
  %insn.1.in = phi %struct.rtx_def** [ %head_26, %for.end ], [ %rt_rtx68, %for.inc64 ]
  %insn.1 = load %struct.rtx_def*, %struct.rtx_def** %insn.1.in, align 8, !dbg !2615
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !2591, metadata !DIExpression()), !dbg !2603
  %tobool28 = icmp eq %struct.rtx_def* %insn.1, null, !dbg !2616
  br i1 %tobool28, label %for.inc70, label %land.rhs29, !dbg !2616

land.rhs29:                                       ; preds = %for.cond27
  %13 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2616
  %end_32 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %13, i64 0, i32 1, !dbg !2616
  %14 = load %struct.rtx_def*, %struct.rtx_def** %end_32, align 8, !dbg !2616
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2616
  %rt_rtx36 = bitcast %union.rtunion_def* %15 to %struct.rtx_def**, !dbg !2616
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx36, align 8, !dbg !2616
  %cmp37 = icmp eq %struct.rtx_def* %insn.1, %16, !dbg !2616
  br i1 %cmp37, label %for.inc70, label %for.body39, !dbg !2606

for.body39:                                       ; preds = %land.rhs29
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 0, !dbg !2618
  %bf.load40 = load i32, i32* %17, align 8, !dbg !2618
  %bf.clear41 = and i32 %bf.load40, 65535, !dbg !2618
  %cmp42 = icmp eq i32 %bf.clear41, 8, !dbg !2618
  br i1 %cmp42, label %land.lhs.true, label %lor.lhs.false43, !dbg !2618

lor.lhs.false43:                                  ; preds = %for.body39
  %cmp46 = icmp eq i32 %bf.clear41, 7, !dbg !2618
  br i1 %cmp46, label %land.lhs.true, label %lor.lhs.false47, !dbg !2618

lor.lhs.false47:                                  ; preds = %lor.lhs.false43
  %cmp50 = icmp eq i32 %bf.clear41, 9, !dbg !2618
  br i1 %cmp50, label %land.lhs.true, label %lor.lhs.false51, !dbg !2618

lor.lhs.false51:                                  ; preds = %lor.lhs.false47
  %cmp54 = icmp eq i32 %bf.clear41, 10, !dbg !2618
  br i1 %cmp54, label %land.lhs.true, label %for.inc64, !dbg !2620

land.lhs.true:                                    ; preds = %lor.lhs.false51, %lor.lhs.false47, %lor.lhs.false43, %for.body39
  %u55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, !dbg !2621
  %18 = getelementptr inbounds %union.u, %union.u* %u55, i64 1, i32 0, i32 0, i64 0, !dbg !2621
  %19 = bitcast %union.rtunion_def* %18 to i32**, !dbg !2621
  %20 = load i32*, i32** %19, align 8, !dbg !2621
  %bf.load59 = load i32, i32* %20, align 8, !dbg !2621
  %bf.clear60 = and i32 %bf.load59, 65535, !dbg !2621
  %cmp61 = icmp eq i32 %bf.clear60, 23, !dbg !2622
  br i1 %cmp61, label %if.then62, label %for.inc64, !dbg !2623

if.then62:                                        ; preds = %land.lhs.true
  tail call fastcc void @hash_scan_set(%struct.rtx_def* nonnull %insn.1) #7, !dbg !2624
  br label %for.inc64, !dbg !2624

for.inc64:                                        ; preds = %lor.lhs.false51, %land.lhs.true, %if.then62
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2616
  %rt_rtx68 = bitcast %union.rtunion_def* %21 to %struct.rtx_def**, !dbg !2616
  br label %for.cond27, !dbg !2616, !llvm.loop !2625

for.inc70:                                        ; preds = %land.rhs29, %for.cond27
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2596
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2627
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2596
  br label %for.cond, !dbg !2596, !llvm.loop !2628

for.end72:                                        ; preds = %for.cond
  ret void, !dbg !2630
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_hash_table(%struct._IO_FILE* %file) unnamed_addr #4 !dbg !2631 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2635, metadata !DIExpression()), !dbg !2636
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2637
  %0 = load %struct.htab*, %struct.htab** @expr_table, align 8, !dbg !2638
  %call1 = tail call i64 @htab_size(%struct.htab* %0) #6, !dbg !2639
  %1 = load %struct.htab*, %struct.htab** @expr_table, align 8, !dbg !2640
  %call2 = tail call i64 @htab_elements(%struct.htab* %1) #6, !dbg !2641
  %2 = load %struct.htab*, %struct.htab** @expr_table, align 8, !dbg !2642
  %call3 = tail call double @htab_collisions(%struct.htab* %2) #6, !dbg !2643
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i64 %call1, i64 %call2, double %call3) #6, !dbg !2644
  %3 = load %struct.htab*, %struct.htab** @expr_table, align 8, !dbg !2645
  %call5 = tail call i64 @htab_elements(%struct.htab* %3) #6, !dbg !2647
  %cmp = icmp eq i64 %call5, 0, !dbg !2648
  br i1 %cmp, label %if.end, label %if.then, !dbg !2649

if.then:                                          ; preds = %entry
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2650
  %4 = load %struct.htab*, %struct.htab** @expr_table, align 8, !dbg !2652
  %5 = bitcast %struct._IO_FILE* %file to i8*, !dbg !2653
  tail call void @htab_traverse(%struct.htab* %4, i32 (i8**, i8*)* nonnull @dump_hash_table_entry, i8* %5) #6, !dbg !2654
  br label %if.end, !dbg !2655

if.end:                                           ; preds = %entry, %if.then
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2656
  ret void, !dbg !2657
}

declare dso_local i64 @htab_elements(%struct.htab*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @eliminate_partially_redundant_loads() unnamed_addr #4 !dbg !2658 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2673
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2673
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2673
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2673
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2673
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 6, !dbg !2675
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !2675
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !2676
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2676
  %cmp = icmp eq %struct.basic_block_def* %3, %4, !dbg !2677
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !2678

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !2679

for.cond:                                         ; preds = %for.inc121, %if.end
  %5 = phi %struct.basic_block_def* [ %4, %if.end ], [ %.pre2, %for.inc121 ], !dbg !2680
  %.pn = phi %struct.basic_block_def* [ %3, %if.end ], [ %bb.0, %for.inc121 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2681
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2681
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2661, metadata !DIExpression()), !dbg !2682
  %cmp11 = icmp eq %struct.basic_block_def* %bb.0, %5, !dbg !2680
  br i1 %cmp11, label %for.end123, label %for.body, !dbg !2679

for.body:                                         ; preds = %for.cond
  %call = tail call fastcc zeroext i8 @bb_has_well_behaved_predecessors(%struct.basic_block_def* %bb.0) #7, !dbg !2683
  %tobool = icmp eq i8 %call, 0, !dbg !2683
  br i1 %tobool, label %for.inc121, label %if.end13, !dbg !2685

if.end13:                                         ; preds = %for.body
  %call14 = tail call zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def* %bb.0) #6, !dbg !2686
  %tobool15 = icmp eq i8 %call14, 0, !dbg !2686
  br i1 %tobool15, label %if.end17, label %for.inc121, !dbg !2688

if.end17:                                         ; preds = %if.end13
  tail call fastcc void @reset_opr_set_tables() #7, !dbg !2689
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2690
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2690
  %6 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2690
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %6, i64 0, i32 0, !dbg !2690
  br label %for.cond18, !dbg !2690

for.cond18:                                       ; preds = %for.inc, %if.end17
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.end17 ], [ %rt_rtx120, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2660, metadata !DIExpression()), !dbg !2682
  %tobool19 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2692
  br i1 %tobool19, label %for.inc121.loopexit, label %land.rhs, !dbg !2692

land.rhs:                                         ; preds = %for.cond18
  %7 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2692
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %7, i64 0, i32 1, !dbg !2692
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2692
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2692
  %rt_rtx = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !2692
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2692
  %cmp22 = icmp eq %struct.rtx_def* %insn.0, %10, !dbg !2692
  br i1 %cmp22, label %for.inc121.loopexit, label %for.body23, !dbg !2690

for.body23:                                       ; preds = %land.rhs
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2693
  %bf.load = load i32, i32* %11, align 8, !dbg !2693
  %bf.clear = and i32 %bf.load, 65535, !dbg !2693
  %cmp24 = icmp eq i32 %bf.clear, 8, !dbg !2693
  br i1 %cmp24, label %land.lhs.true, label %if.end96, !dbg !2694

land.lhs.true:                                    ; preds = %for.body23
  %u25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2695
  %12 = getelementptr inbounds %union.u, %union.u* %u25, i64 1, i32 0, i32 0, i64 0, !dbg !2695
  %13 = bitcast %union.rtunion_def* %12 to i32**, !dbg !2695
  %14 = load i32*, i32** %13, align 8, !dbg !2695
  %bf.load29 = load i32, i32* %14, align 8, !dbg !2695
  %bf.clear30 = and i32 %bf.load29, 65535, !dbg !2695
  %cmp31 = icmp eq i32 %bf.clear30, 23, !dbg !2696
  br i1 %cmp31, label %land.lhs.true32, label %if.end96, !dbg !2697

land.lhs.true32:                                  ; preds = %land.lhs.true
  %arrayidx39 = getelementptr inbounds i32, i32* %14, i64 2, !dbg !2698
  %15 = bitcast i32* %arrayidx39 to i32**, !dbg !2698
  %16 = load i32*, i32** %15, align 8, !dbg !2698
  %bf.load41 = load i32, i32* %16, align 8, !dbg !2698
  %bf.clear42 = and i32 %bf.load41, 65535, !dbg !2698
  %cmp43 = icmp eq i32 %bf.clear42, 37, !dbg !2698
  br i1 %cmp43, label %land.lhs.true44, label %if.end96, !dbg !2699

land.lhs.true44:                                  ; preds = %land.lhs.true32
  %17 = getelementptr inbounds i32, i32* %14, i64 4, !dbg !2700
  %18 = bitcast i32* %17 to i32**, !dbg !2700
  %19 = load i32*, i32** %18, align 8, !dbg !2700
  %bf.load53 = load i32, i32* %19, align 8, !dbg !2700
  %bf.clear54 = and i32 %bf.load53, 65535, !dbg !2700
  %cmp55 = icmp eq i32 %bf.clear54, 43, !dbg !2700
  %20 = bitcast i32* %19 to %struct.rtx_def*, !dbg !2701
  br i1 %cmp55, label %if.then56, label %if.end96, !dbg !2701

if.then56:                                        ; preds = %land.lhs.true44
  call void @llvm.dbg.value(metadata i32* %14, metadata !2662, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata %struct.rtx_def* %20, metadata !2671, metadata !DIExpression()), !dbg !2702
  %bf.clear66 = and i32 %bf.load53, 134217728, !dbg !2703
  %tobool67 = icmp eq i32 %bf.clear66, 0, !dbg !2703
  br i1 %tobool67, label %land.lhs.true68, label %if.end96, !dbg !2705

land.lhs.true68:                                  ; preds = %if.then56
  %bf.clear71 = and i32 %bf.load53, 16711680, !dbg !2706
  %cmp72 = icmp eq i32 %bf.clear71, 65536, !dbg !2707
  br i1 %cmp72, label %if.end96, label %land.lhs.true73, !dbg !2708

land.lhs.true73:                                  ; preds = %land.lhs.true68
  %bf.lshr75 = lshr i32 %bf.load53, 16, !dbg !2709
  %bf.clear76 = and i32 %bf.lshr75, 255, !dbg !2709
  %call77 = tail call i32 @general_operand(%struct.rtx_def* %20, i32 %bf.clear76) #6, !dbg !2710
  %tobool78 = icmp eq i32 %call77, 0, !dbg !2710
  br i1 %tobool78, label %if.end96, label %land.lhs.true79, !dbg !2711

land.lhs.true79:                                  ; preds = %land.lhs.true73
  %call80 = tail call fastcc zeroext i8 @oprs_unchanged_p(%struct.rtx_def* %20, %struct.rtx_def* nonnull %insn.0, i8 zeroext 0) #7, !dbg !2712
  %tobool81 = icmp eq i8 %call80, 0, !dbg !2712
  br i1 %tobool81, label %if.end96, label %land.lhs.true82, !dbg !2713

land.lhs.true82:                                  ; preds = %land.lhs.true79
  %21 = load i32, i32* @flag_non_call_exceptions, align 4, !dbg !2714
  %tobool83 = icmp eq i32 %21, 0, !dbg !2714
  br i1 %tobool83, label %land.lhs.true87, label %land.lhs.true84, !dbg !2715

land.lhs.true84:                                  ; preds = %land.lhs.true82
  %call85 = tail call i32 @may_trap_p(%struct.rtx_def* %20) #6, !dbg !2716
  %tobool86 = icmp eq i32 %call85, 0, !dbg !2716
  br i1 %tobool86, label %land.lhs.true87, label %if.end96, !dbg !2717

land.lhs.true87:                                  ; preds = %land.lhs.true84, %land.lhs.true82
  %call88 = tail call i32 @side_effects_p(%struct.rtx_def* %20) #6, !dbg !2718
  %tobool89 = icmp eq i32 %call88, 0, !dbg !2718
  br i1 %tobool89, label %land.lhs.true90, label %if.end96, !dbg !2719

land.lhs.true90:                                  ; preds = %land.lhs.true87
  %call91 = tail call fastcc %struct.expr* @lookup_expr_in_table(%struct.rtx_def* %20) #7, !dbg !2720
  call void @llvm.dbg.value(metadata %struct.expr* %call91, metadata !2672, metadata !DIExpression()), !dbg !2702
  %cmp92 = icmp eq %struct.expr* %call91, null, !dbg !2721
  br i1 %cmp92, label %if.end96, label %if.then94, !dbg !2722

if.then94:                                        ; preds = %land.lhs.true90
  tail call fastcc void @eliminate_partially_redundant_load(%struct.basic_block_def* %bb.0, %struct.rtx_def* nonnull %insn.0, %struct.expr* nonnull %call91) #7, !dbg !2723
  br label %if.end96, !dbg !2725

if.end96:                                         ; preds = %land.lhs.true84, %land.lhs.true90, %land.lhs.true87, %land.lhs.true79, %land.lhs.true73, %land.lhs.true68, %if.then56, %if.then94, %land.lhs.true44, %land.lhs.true32, %land.lhs.true, %for.body23
  %bf.load97 = load i32, i32* %11, align 8, !dbg !2726
  %bf.clear98 = and i32 %bf.load97, 65535, !dbg !2726
  %cmp99 = icmp eq i32 %bf.clear98, 8, !dbg !2726
  br i1 %cmp99, label %if.then115, label %lor.lhs.false, !dbg !2726

lor.lhs.false:                                    ; preds = %if.end96
  %cmp103 = icmp eq i32 %bf.clear98, 7, !dbg !2726
  br i1 %cmp103, label %if.then115, label %lor.lhs.false105, !dbg !2726

lor.lhs.false105:                                 ; preds = %lor.lhs.false
  %cmp108 = icmp eq i32 %bf.clear98, 9, !dbg !2726
  br i1 %cmp108, label %if.then115, label %lor.lhs.false110, !dbg !2726

lor.lhs.false110:                                 ; preds = %lor.lhs.false105
  %cmp113 = icmp eq i32 %bf.clear98, 10, !dbg !2726
  br i1 %cmp113, label %if.then115, label %for.inc, !dbg !2728

if.then115:                                       ; preds = %lor.lhs.false110, %lor.lhs.false105, %lor.lhs.false, %if.end96
  tail call fastcc void @record_opr_changes(%struct.rtx_def* nonnull %insn.0) #7, !dbg !2729
  br label %for.inc, !dbg !2729

for.inc:                                          ; preds = %lor.lhs.false110, %if.then115
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2692
  %rt_rtx120 = bitcast %union.rtunion_def* %22 to %struct.rtx_def**, !dbg !2692
  br label %for.cond18, !dbg !2692, !llvm.loop !2730

for.inc121.loopexit:                              ; preds = %for.cond18, %land.rhs
  br label %for.inc121, !dbg !2680

for.inc121:                                       ; preds = %for.inc121.loopexit, %if.end13, %for.body
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2680
  %cfg9.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2732
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg9.phi.trans.insert, align 8, !dbg !2680
  %x_exit_block_ptr10.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre1, i64 0, i32 1, !dbg !2732
  %.pre2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr10.phi.trans.insert, align 8, !dbg !2680
  br label %for.cond, !dbg !2680, !llvm.loop !2733

for.end123:                                       ; preds = %for.cond
  tail call void @commit_edge_insertions() #6, !dbg !2735
  br label %cleanup.cont, !dbg !2736

cleanup.cont:                                     ; preds = %for.end123, %entry
  ret void, !dbg !2736
}

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_redundant_insns() unnamed_addr #4 !dbg !2737 {
entry:
  %0 = load %struct.htab*, %struct.htab** @expr_table, align 8, !dbg !2738
  tail call void @htab_traverse(%struct.htab* %0, i32 (i8**, i8*)* nonnull @delete_redundant_insns_1, i8* null) #6, !dbg !2739
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2740
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !2740
  br i1 %tobool, label %if.end, label %if.then, !dbg !2742

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2743
  br label %if.end, !dbg !2743

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2744
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local void @end_alias_analysis() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @free_mem() unnamed_addr #4 !dbg !2745 {
entry:
  %0 = load i8*, i8** bitcast (i32** @uid_cuid to i8**), align 8, !dbg !2746
  tail call void @free(i8* %0) #6, !dbg !2747
  %1 = load %struct.htab*, %struct.htab** @expr_table, align 8, !dbg !2748
  tail call void @htab_delete(%struct.htab* %1) #6, !dbg !2749
  %2 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !2750
  %sub.ptr.sub = sub i64 0, %2, !dbg !2750
  store i64 %sub.ptr.sub, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 5), align 8, !dbg !2750
  %cmp = icmp sgt i64 %sub.ptr.sub, 0, !dbg !2750
  %3 = inttoptr i64 %2 to i8*, !dbg !2750
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !2750

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2750
  %sub.ptr.sub2 = sub i64 %4, %2, !dbg !2750
  %cmp3 = icmp sgt i64 %sub.ptr.sub2, %sub.ptr.sub, !dbg !2750
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !2750

cond.true:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %sub.ptr.sub, !dbg !2750
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 2), align 8, !dbg !2750
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3), align 8, !dbg !2750
  br label %cond.end, !dbg !2750

cond.false:                                       ; preds = %land.lhs.true, %entry
  %add.ptr4 = getelementptr inbounds i8, i8* %3, i64 %sub.ptr.sub, !dbg !2750
  tail call void @obstack_free(%struct.obstack* nonnull @expr_obstack, i8* %add.ptr4) #6, !dbg !2750
  br label %cond.end, !dbg !2750

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !2751
  %sub.ptr.sub6 = sub i64 0, %5, !dbg !2751
  store i64 %sub.ptr.sub6, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 5), align 8, !dbg !2751
  %cmp7 = icmp sgt i64 %sub.ptr.sub6, 0, !dbg !2751
  %6 = inttoptr i64 %5 to i8*, !dbg !2751
  br i1 %cmp7, label %land.lhs.true8, label %cond.false15, !dbg !2751

land.lhs.true8:                                   ; preds = %cond.end
  %7 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2751
  %sub.ptr.sub11 = sub i64 %7, %5, !dbg !2751
  %cmp12 = icmp sgt i64 %sub.ptr.sub11, %sub.ptr.sub6, !dbg !2751
  br i1 %cmp12, label %cond.true13, label %cond.false15, !dbg !2751

cond.true13:                                      ; preds = %land.lhs.true8
  %add.ptr14 = getelementptr inbounds i8, i8* %6, i64 %sub.ptr.sub6, !dbg !2751
  store i8* %add.ptr14, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 2), align 8, !dbg !2751
  store i8* %add.ptr14, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 3), align 8, !dbg !2751
  br label %cond.end17, !dbg !2751

cond.false15:                                     ; preds = %land.lhs.true8, %cond.end
  %add.ptr16 = getelementptr inbounds i8, i8* %6, i64 %sub.ptr.sub6, !dbg !2751
  tail call void @obstack_free(%struct.obstack* nonnull @occr_obstack, i8* %add.ptr16) #6, !dbg !2751
  br label %cond.end17, !dbg !2751

cond.end17:                                       ; preds = %cond.false15, %cond.true13
  %8 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !2752
  %sub.ptr.sub20 = sub i64 0, %8, !dbg !2752
  store i64 %sub.ptr.sub20, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 5), align 8, !dbg !2752
  %cmp21 = icmp sgt i64 %sub.ptr.sub20, 0, !dbg !2752
  %9 = inttoptr i64 %8 to i8*, !dbg !2752
  br i1 %cmp21, label %land.lhs.true22, label %cond.false29, !dbg !2752

land.lhs.true22:                                  ; preds = %cond.end17
  %10 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2752
  %sub.ptr.sub25 = sub i64 %10, %8, !dbg !2752
  %cmp26 = icmp sgt i64 %sub.ptr.sub25, %sub.ptr.sub20, !dbg !2752
  br i1 %cmp26, label %cond.true27, label %cond.false29, !dbg !2752

cond.true27:                                      ; preds = %land.lhs.true22
  %add.ptr28 = getelementptr inbounds i8, i8* %9, i64 %sub.ptr.sub20, !dbg !2752
  store i8* %add.ptr28, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 2), align 8, !dbg !2752
  store i8* %add.ptr28, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3), align 8, !dbg !2752
  br label %cond.end31, !dbg !2752

cond.false29:                                     ; preds = %land.lhs.true22, %cond.end17
  %add.ptr30 = getelementptr inbounds i8, i8* %9, i64 %sub.ptr.sub20, !dbg !2752
  tail call void @obstack_free(%struct.obstack* nonnull @unoccr_obstack, i8* %add.ptr30) #6, !dbg !2752
  br label %cond.end31, !dbg !2752

cond.end31:                                       ; preds = %cond.false29, %cond.true27
  %11 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 1) to i64*), align 8, !dbg !2753
  %sub.ptr.sub34 = sub i64 0, %11, !dbg !2753
  store i64 %sub.ptr.sub34, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 5), align 8, !dbg !2753
  %cmp35 = icmp sgt i64 %sub.ptr.sub34, 0, !dbg !2753
  %12 = inttoptr i64 %11 to i8*, !dbg !2753
  br i1 %cmp35, label %land.lhs.true36, label %cond.false43, !dbg !2753

land.lhs.true36:                                  ; preds = %cond.end31
  %13 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2753
  %sub.ptr.sub39 = sub i64 %13, %11, !dbg !2753
  %cmp40 = icmp sgt i64 %sub.ptr.sub39, %sub.ptr.sub34, !dbg !2753
  br i1 %cmp40, label %cond.true41, label %cond.false43, !dbg !2753

cond.true41:                                      ; preds = %land.lhs.true36
  %add.ptr42 = getelementptr inbounds i8, i8* %12, i64 %sub.ptr.sub34, !dbg !2753
  store i8* %add.ptr42, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 2), align 8, !dbg !2753
  store i8* %add.ptr42, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3), align 8, !dbg !2753
  br label %cond.end45, !dbg !2753

cond.false43:                                     ; preds = %land.lhs.true36, %cond.end31
  %add.ptr44 = getelementptr inbounds i8, i8* %12, i64 %sub.ptr.sub34, !dbg !2753
  tail call void @obstack_free(%struct.obstack* nonnull @modifies_mem_obstack, i8* %add.ptr44) #6, !dbg !2753
  br label %cond.end45, !dbg !2753

cond.end45:                                       ; preds = %cond.false43, %cond.true41
  %14 = load i8*, i8** bitcast (i32** @reg_avail_info to i8**), align 8, !dbg !2754
  tail call void @free(i8* %14) #6, !dbg !2755
  ret void, !dbg !2756
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local i32 @get_max_uid() local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @hash_expr_for_htab(i8* %expp) #4 !dbg !2757 {
entry:
  call void @llvm.dbg.value(metadata i8* %expp, metadata !2759, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8* %expp, metadata !2760, metadata !DIExpression()), !dbg !2762
  %hash = getelementptr inbounds i8, i8* %expp, i64 8, !dbg !2763
  %0 = bitcast i8* %hash to i32*, !dbg !2763
  %1 = load i32, i32* %0, align 8, !dbg !2763
  ret i32 %1, !dbg !2764
}

; Function Attrs: nounwind uwtable
define internal i32 @expr_equiv_p(i8* %exp1p, i8* %exp2p) #4 !dbg !2765 {
entry:
  call void @llvm.dbg.value(metadata i8* %exp1p, metadata !2767, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %exp2p, metadata !2768, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %exp1p, metadata !2769, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %exp2p, metadata !2770, metadata !DIExpression()), !dbg !2772
  %expr = bitcast i8* %exp1p to %struct.rtx_def**, !dbg !2773
  %0 = load %struct.rtx_def*, %struct.rtx_def** %expr, align 8, !dbg !2773
  %expr1 = bitcast i8* %exp2p to %struct.rtx_def**, !dbg !2774
  %1 = load %struct.rtx_def*, %struct.rtx_def** %expr1, align 8, !dbg !2774
  %call = tail call i32 @exp_equiv_p(%struct.rtx_def* %0, %struct.rtx_def* %1, i32 0, i8 zeroext 1) #6, !dbg !2775
  call void @llvm.dbg.value(metadata i32 %call, metadata !2771, metadata !DIExpression()), !dbg !2772
  %tobool = icmp eq i32 %call, 0, !dbg !2776
  br i1 %tobool, label %cond.end, label %lor.lhs.false, !dbg !2776

lor.lhs.false:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %exp2p, metadata !2770, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %exp1p, metadata !2769, metadata !DIExpression()), !dbg !2772
  %hash = getelementptr inbounds i8, i8* %exp1p, i64 8, !dbg !2776
  %2 = bitcast i8* %hash to i32*, !dbg !2776
  %3 = load i32, i32* %2, align 8, !dbg !2776
  %hash2 = getelementptr inbounds i8, i8* %exp2p, i64 8, !dbg !2776
  %4 = bitcast i8* %hash2 to i32*, !dbg !2776
  %5 = load i32, i32* %4, align 8, !dbg !2776
  %cmp = icmp eq i32 %3, %5, !dbg !2776
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2776

cond.true:                                        ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 314, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2776
  br label %cond.end, !dbg !2776

cond.end:                                         ; preds = %entry, %lor.lhs.false, %cond.true
  ret i32 %call, !dbg !2777
}

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local void @free(i8*) #1

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #1

declare dso_local i32 @exp_equiv_p(%struct.rtx_def*, %struct.rtx_def*, i32, i8 zeroext) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @reset_opr_set_tables() unnamed_addr #4 !dbg !2778 {
entry:
  %0 = load i8*, i8** bitcast (i32** @reg_avail_info to i8**), align 8, !dbg !2779
  %call = tail call i8* @memset(i8* %0, i32 0, i64 212) #6, !dbg !2780
  %1 = load i64, i64* bitcast (%struct.modifies_mem** @modifies_mem_obstack_bottom to i64*), align 8, !dbg !2781
  %2 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 1) to i64*), align 8, !dbg !2781
  %sub.ptr.sub = sub i64 %1, %2, !dbg !2781
  store i64 %sub.ptr.sub, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 5), align 8, !dbg !2781
  %cmp = icmp sgt i64 %sub.ptr.sub, 0, !dbg !2781
  %3 = inttoptr i64 %2 to i8*, !dbg !2781
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !2781

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 4) to i64*), align 8, !dbg !2781
  %sub.ptr.sub3 = sub i64 %4, %2, !dbg !2781
  %cmp4 = icmp slt i64 %sub.ptr.sub, %sub.ptr.sub3, !dbg !2781
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !2781

cond.true:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %sub.ptr.sub, !dbg !2781
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 2), align 8, !dbg !2781
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3), align 8, !dbg !2781
  br label %cond.end, !dbg !2781

cond.false:                                       ; preds = %land.lhs.true, %entry
  %add.ptr5 = getelementptr inbounds i8, i8* %3, i64 %sub.ptr.sub, !dbg !2781
  tail call void @obstack_free(%struct.obstack* nonnull @modifies_mem_obstack, i8* %add.ptr5) #6, !dbg !2781
  br label %cond.end, !dbg !2781

cond.end:                                         ; preds = %cond.false, %cond.true
  store %struct.modifies_mem* null, %struct.modifies_mem** @modifies_mem_list, align 8, !dbg !2782
  ret void, !dbg !2783
}

; Function Attrs: nounwind uwtable
define internal fastcc void @record_opr_changes(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !2784 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2786, metadata !DIExpression()), !dbg !2793
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2794
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2794
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !2794
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2794
  %2 = bitcast %struct.rtx_def* %insn to i8*, !dbg !2795
  tail call void @note_stores(%struct.rtx_def* %1, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @record_last_set_info, i8* %2) #6, !dbg !2796
  %3 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 2, !dbg !2797
  br label %for.cond, !dbg !2799

for.cond:                                         ; preds = %for.inc, %entry
  %note.0.in.in = phi %union.rtunion_def* [ %3, %entry ], [ %6, %for.inc ]
  %note.0.in = bitcast %union.rtunion_def* %note.0.in.in to %struct.rtx_def**, !dbg !2800
  %note.0 = load %struct.rtx_def*, %struct.rtx_def** %note.0.in, align 8, !dbg !2800
  call void @llvm.dbg.value(metadata %struct.rtx_def* %note.0, metadata !2787, metadata !DIExpression()), !dbg !2793
  %tobool = icmp eq %struct.rtx_def* %note.0, null, !dbg !2801
  br i1 %tobool, label %for.end, label %for.body, !dbg !2801

for.body:                                         ; preds = %for.cond
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 0, !dbg !2802
  %bf.load = load i32, i32* %4, align 8, !dbg !2802
  %bf.clear = and i32 %bf.load, 16711680, !dbg !2802
  %cmp = icmp eq i32 %bf.clear, 131072, !dbg !2805
  br i1 %cmp, label %if.then, label %for.inc, !dbg !2806

if.then:                                          ; preds = %for.body
  %arrayidx7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2807
  %rt_rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**, !dbg !2807
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx8, align 8, !dbg !2807
  tail call fastcc void @record_last_reg_set_info(%struct.rtx_def* %insn, %struct.rtx_def* %5) #7, !dbg !2808
  br label %for.inc, !dbg !2808

for.inc:                                          ; preds = %for.body, %if.then
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %note.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2809
  br label %for.cond, !dbg !2810, !llvm.loop !2811

for.end:                                          ; preds = %for.cond
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2813
  %bf.load13 = load i32, i32* %7, align 8, !dbg !2813
  %bf.clear14 = and i32 %bf.load13, 65535, !dbg !2813
  %cmp15 = icmp eq i32 %bf.clear14, 10, !dbg !2813
  br i1 %cmp15, label %for.cond17.preheader, label %if.end70, !dbg !2814

for.cond17.preheader:                             ; preds = %for.end
  br label %for.cond17, !dbg !2815

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc23
  %indvars.iv = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next, %for.inc23 ], !dbg !2817
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2788, metadata !DIExpression()), !dbg !2818
  %exitcond = icmp eq i64 %indvars.iv, 53, !dbg !2819
  br i1 %exitcond, label %for.end24, label %for.body19, !dbg !2815

for.body19:                                       ; preds = %for.cond17
  %8 = load i64, i64* @regs_invalidated_by_call, align 8, !dbg !2821
  %shl = shl i64 1, %indvars.iv, !dbg !2821
  %and = and i64 %8, %shl, !dbg !2821
  %tobool20 = icmp eq i64 %and, 0, !dbg !2821
  br i1 %tobool20, label %for.inc23, label %if.then21, !dbg !2823

if.then21:                                        ; preds = %for.body19
  %9 = trunc i64 %indvars.iv to i32, !dbg !2824
  tail call fastcc void @record_last_reg_set_info_regno(%struct.rtx_def* %insn, i32 %9) #7, !dbg !2824
  br label %for.inc23, !dbg !2824

for.inc23:                                        ; preds = %for.body19, %if.then21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2825
  call void @llvm.dbg.value(metadata i32 undef, metadata !2788, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2818
  br label %for.cond17, !dbg !2826, !llvm.loop !2827

for.end24:                                        ; preds = %for.cond17
  %arrayidx27 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 1, !dbg !2829
  %rt_rtx28 = bitcast %struct.object_block** %arrayidx27 to %struct.rtx_def**, !dbg !2829
  br label %for.cond29, !dbg !2831

for.cond29:                                       ; preds = %for.inc55, %for.end24
  %link.0.in = phi %struct.rtx_def** [ %rt_rtx28, %for.end24 ], [ %rt_rtx59, %for.inc55 ]
  %link.0 = load %struct.rtx_def*, %struct.rtx_def** %link.0.in, align 8, !dbg !2832
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.0, metadata !2791, metadata !DIExpression()), !dbg !2818
  %tobool30 = icmp eq %struct.rtx_def* %link.0, null, !dbg !2833
  br i1 %tobool30, label %for.end60, label %for.body31, !dbg !2833

for.body31:                                       ; preds = %for.cond29
  %arrayidx34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2834
  %10 = bitcast %union.rtunion_def* %arrayidx34 to i32**, !dbg !2834
  %11 = load i32*, i32** %10, align 8, !dbg !2834
  %bf.load36 = load i32, i32* %11, align 8, !dbg !2834
  %bf.clear37 = and i32 %bf.load36, 65535, !dbg !2834
  %cmp38 = icmp eq i32 %bf.clear37, 25, !dbg !2837
  br i1 %cmp38, label %if.then39, label %for.inc55, !dbg !2838

if.then39:                                        ; preds = %for.body31
  %arrayidx46 = getelementptr inbounds i32, i32* %11, i64 2, !dbg !2839
  %rt_rtx47 = bitcast i32* %arrayidx46 to %struct.rtx_def**, !dbg !2839
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx47, align 8, !dbg !2839
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !2792, metadata !DIExpression()), !dbg !2818
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i64 0, i32 0, !dbg !2841
  %bf.load48 = load i32, i32* %13, align 8, !dbg !2841
  %bf.clear49 = and i32 %bf.load48, 65535, !dbg !2841
  %cmp50 = icmp eq i32 %bf.clear49, 37, !dbg !2841
  br i1 %cmp50, label %if.then51, label %for.inc55, !dbg !2843

if.then51:                                        ; preds = %if.then39
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %12) #7, !dbg !2844
  %cmp52 = icmp ult i32 %call, 53, !dbg !2844
  br i1 %cmp52, label %cond.end, label %cond.true, !dbg !2844

cond.true:                                        ; preds = %if.then51
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 757, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2844
  br label %cond.end, !dbg !2844

cond.end:                                         ; preds = %if.then51, %cond.true
  tail call fastcc void @record_last_reg_set_info(%struct.rtx_def* %insn, %struct.rtx_def* %12) #7, !dbg !2846
  br label %for.inc55, !dbg !2847

for.inc55:                                        ; preds = %for.body31, %cond.end, %if.then39
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2848
  %rt_rtx59 = bitcast %union.rtunion_def* %14 to %struct.rtx_def**, !dbg !2848
  br label %for.cond29, !dbg !2849, !llvm.loop !2850

for.end60:                                        ; preds = %for.cond29
  %bf.load61 = load i32, i32* %7, align 8, !dbg !2852
  %bf.clear63 = and i32 %bf.load61, 67108864, !dbg !2852
  %tobool64 = icmp eq i32 %bf.clear63, 0, !dbg !2852
  br i1 %tobool64, label %lor.lhs.false, label %if.end70, !dbg !2852

lor.lhs.false:                                    ; preds = %for.end60
  %tobool67 = icmp slt i32 %bf.load61, 0, !dbg !2852
  br i1 %tobool67, label %if.end70, label %if.then68, !dbg !2854

if.then68:                                        ; preds = %lor.lhs.false
  tail call fastcc void @record_last_mem_set_info(%struct.rtx_def* %insn) #7, !dbg !2855
  br label %if.end70, !dbg !2855

if.end70:                                         ; preds = %for.end60, %lor.lhs.false, %if.then68, %for.end
  ret void, !dbg !2856
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hash_scan_set(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !2857 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2859, metadata !DIExpression()), !dbg !2863
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2864
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2864
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !2864
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2864
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2860, metadata !DIExpression()), !dbg !2863
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2865
  %rt_rtx4 = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !2865
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx4, align 8, !dbg !2865
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !2861, metadata !DIExpression()), !dbg !2863
  %arrayidx7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2866
  %rt_rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**, !dbg !2866
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx8, align 8, !dbg !2866
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !2862, metadata !DIExpression()), !dbg !2863
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !2867
  %bf.load = load i32, i32* %5, align 8, !dbg !2867
  %bf.clear = and i32 %bf.load, 65535, !dbg !2867
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !2867
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !2869

land.lhs.true:                                    ; preds = %entry
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i64 0, i32 0, !dbg !2870
  %bf.load9 = load i32, i32* %6, align 8, !dbg !2870
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !2870
  %cmp11 = icmp eq i32 %bf.clear10, 43, !dbg !2870
  br i1 %cmp11, label %if.end, label %cleanup.cont, !dbg !2871

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2872
  %bf.load12 = load i32, i32* %7, align 8, !dbg !2872
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !2872
  %cmp14 = icmp eq i32 %bf.clear13, 9, !dbg !2872
  br i1 %cmp14, label %cleanup.cont, label %lor.lhs.false, !dbg !2874

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call i32 @set_noop_p(%struct.rtx_def* %1) #6, !dbg !2875
  %tobool = icmp eq i32 %call, 0, !dbg !2875
  br i1 %tobool, label %if.end16, label %cleanup.cont, !dbg !2876

if.end16:                                         ; preds = %lor.lhs.false
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i64 0, i32 0, !dbg !2877
  %bf.load17 = load i32, i32* %8, align 8, !dbg !2877
  %bf.clear18 = and i32 %bf.load17, 65535, !dbg !2877
  %cmp19 = icmp eq i32 %bf.clear18, 37, !dbg !2877
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !2879

if.then20:                                        ; preds = %if.end16
  %bf.lshr = lshr i32 %bf.load17, 16, !dbg !2880
  %bf.clear22 = and i32 %bf.lshr, 255, !dbg !2880
  %call23 = tail call zeroext i8 @can_copy_p(i32 %bf.clear22) #6, !dbg !2883
  %tobool24 = icmp eq i8 %call23, 0, !dbg !2883
  br i1 %tobool24, label %cleanup.cont, label %land.lhs.true25, !dbg !2884

land.lhs.true25:                                  ; preds = %if.then20
  %bf.load26 = load i32, i32* %5, align 8, !dbg !2885
  %bf.lshr27 = lshr i32 %bf.load26, 16, !dbg !2885
  %bf.clear28 = and i32 %bf.lshr27, 255, !dbg !2885
  %call29 = tail call i32 @general_operand(%struct.rtx_def* %3, i32 %bf.clear28) #6, !dbg !2886
  %tobool30 = icmp eq i32 %call29, 0, !dbg !2886
  br i1 %tobool30, label %cleanup.cont, label %land.lhs.true31, !dbg !2887

land.lhs.true31:                                  ; preds = %land.lhs.true25
  %call32 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %4) #7, !dbg !2888
  %cmp33 = icmp ult i32 %call32, 8, !dbg !2889
  br i1 %cmp33, label %land.lhs.true39, label %lor.lhs.false35, !dbg !2890

lor.lhs.false35:                                  ; preds = %land.lhs.true31
  %call36 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %4) #7, !dbg !2891
  %cmp37 = icmp ugt i32 %call36, 15, !dbg !2892
  br i1 %cmp37, label %land.lhs.true39, label %cleanup.cont, !dbg !2893

land.lhs.true39:                                  ; preds = %lor.lhs.false35, %land.lhs.true31
  %call40 = tail call fastcc zeroext i8 @oprs_unchanged_p(%struct.rtx_def* %3, %struct.rtx_def* %insn, i8 zeroext 1) #7, !dbg !2894
  %tobool42 = icmp eq i8 %call40, 0, !dbg !2894
  br i1 %tobool42, label %cleanup.cont, label %if.then43, !dbg !2895

if.then43:                                        ; preds = %land.lhs.true39
  tail call fastcc void @insert_expr_in_table(%struct.rtx_def* %3, %struct.rtx_def* %insn) #7, !dbg !2896
  br label %cleanup.cont, !dbg !2898

if.else:                                          ; preds = %if.end16
  %bf.load45 = load i32, i32* %5, align 8, !dbg !2899
  %bf.clear46 = and i32 %bf.load45, 65535, !dbg !2899
  %cmp47 = icmp eq i32 %bf.clear46, 37, !dbg !2899
  br i1 %cmp47, label %if.then49, label %cleanup.cont, !dbg !2901

if.then49:                                        ; preds = %if.else
  %bf.lshr51 = lshr i32 %bf.load45, 16, !dbg !2902
  %bf.clear52 = and i32 %bf.lshr51, 255, !dbg !2902
  %call53 = tail call zeroext i8 @can_copy_p(i32 %bf.clear52) #6, !dbg !2905
  %tobool55 = icmp eq i8 %call53, 0, !dbg !2905
  br i1 %tobool55, label %cleanup.cont, label %land.lhs.true56, !dbg !2906

land.lhs.true56:                                  ; preds = %if.then49
  %bf.load57 = load i32, i32* %8, align 8, !dbg !2907
  %bf.lshr58 = lshr i32 %bf.load57, 16, !dbg !2907
  %bf.clear59 = and i32 %bf.lshr58, 255, !dbg !2907
  %call60 = tail call i32 @general_operand(%struct.rtx_def* %4, i32 %bf.clear59) #6, !dbg !2908
  %tobool61 = icmp eq i32 %call60, 0, !dbg !2908
  br i1 %tobool61, label %cleanup.cont, label %land.lhs.true62, !dbg !2909

land.lhs.true62:                                  ; preds = %land.lhs.true56
  %call63 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %3) #7, !dbg !2910
  %cmp64 = icmp ult i32 %call63, 8, !dbg !2911
  br i1 %cmp64, label %land.lhs.true70, label %lor.lhs.false66, !dbg !2912

lor.lhs.false66:                                  ; preds = %land.lhs.true62
  %call67 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %3) #7, !dbg !2913
  %cmp68 = icmp ugt i32 %call67, 15, !dbg !2914
  br i1 %cmp68, label %land.lhs.true70, label %cleanup.cont, !dbg !2915

land.lhs.true70:                                  ; preds = %lor.lhs.false66, %land.lhs.true62
  %9 = load i32, i32* @flag_float_store, align 4, !dbg !2916
  %tobool71 = icmp eq i32 %9, 0, !dbg !2916
  br i1 %tobool71, label %land.lhs.true107, label %land.lhs.true72, !dbg !2917

land.lhs.true72:                                  ; preds = %land.lhs.true70
  %bf.load73 = load i32, i32* %8, align 8, !dbg !2918
  %bf.lshr74 = lshr i32 %bf.load73, 16, !dbg !2918
  %bf.clear75 = and i32 %bf.lshr74, 255, !dbg !2918
  %idxprom = zext i32 %bf.clear75 to i64, !dbg !2918
  %arrayidx76 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2918
  %10 = load i8, i8* %arrayidx76, align 1, !dbg !2918
  %cmp78 = icmp eq i8 %10, 8, !dbg !2918
  br i1 %cmp78, label %cleanup.cont, label %lor.lhs.false80, !dbg !2918

lor.lhs.false80:                                  ; preds = %land.lhs.true72
  %cmp87 = icmp eq i8 %10, 9, !dbg !2918
  br i1 %cmp87, label %cleanup.cont, label %lor.lhs.false89, !dbg !2918

lor.lhs.false89:                                  ; preds = %lor.lhs.false80
  %cmp96 = icmp eq i8 %10, 11, !dbg !2918
  br i1 %cmp96, label %cleanup.cont, label %lor.lhs.false98, !dbg !2918

lor.lhs.false98:                                  ; preds = %lor.lhs.false89
  %cmp105 = icmp eq i8 %10, 17, !dbg !2918
  br i1 %cmp105, label %cleanup.cont, label %land.lhs.true107, !dbg !2919

land.lhs.true107:                                 ; preds = %land.lhs.true70, %lor.lhs.false98
  %11 = load i32*, i32** @uid_cuid, align 8, !dbg !2920
  %arrayidx110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2920
  %rt_int = bitcast %union.rtunion_def* %arrayidx110 to i32*, !dbg !2920
  %12 = load i32, i32* %rt_int, align 8, !dbg !2920
  %idxprom111 = sext i32 %12 to i64, !dbg !2920
  %arrayidx112 = getelementptr inbounds i32, i32* %11, i64 %idxprom111, !dbg !2920
  %13 = load i32, i32* %arrayidx112, align 4, !dbg !2920
  %add = add nsw i32 %13, 1, !dbg !2921
  %call113 = tail call fastcc i32 @load_killed_in_block_p(i32 %add, %struct.rtx_def* %4, i8 zeroext 1) #7, !dbg !2922
  %tobool114 = icmp eq i32 %call113, 0, !dbg !2922
  br i1 %tobool114, label %land.lhs.true115, label %cleanup.cont, !dbg !2923

land.lhs.true115:                                 ; preds = %land.lhs.true107
  %arrayidx118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2924
  %rt_rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**, !dbg !2924
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx119, align 8, !dbg !2924
  %call120 = tail call fastcc zeroext i8 @oprs_unchanged_p(%struct.rtx_def* %14, %struct.rtx_def* %insn, i8 zeroext 1) #7, !dbg !2925
  %tobool122 = icmp eq i8 %call120, 0, !dbg !2925
  br i1 %tobool122, label %cleanup.cont, label %if.then123, !dbg !2926

if.then123:                                       ; preds = %land.lhs.true115
  tail call fastcc void @insert_expr_in_table(%struct.rtx_def* %4, %struct.rtx_def* %insn) #7, !dbg !2927
  br label %cleanup.cont, !dbg !2929

cleanup.cont:                                     ; preds = %land.lhs.true39, %land.lhs.true25, %if.then20, %land.lhs.true115, %land.lhs.true107, %land.lhs.true56, %if.then49, %lor.lhs.false, %land.lhs.true, %if.end, %if.else, %if.then123, %lor.lhs.false98, %lor.lhs.false89, %lor.lhs.false80, %land.lhs.true72, %lor.lhs.false66, %lor.lhs.false35, %if.then43
  ret void, !dbg !2930
}

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #1

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @record_last_set_info(%struct.rtx_def* %dest, %struct.rtx_def* %setter, i8* %data) #4 !dbg !2931 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !2938, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata %struct.rtx_def* %setter, metadata !2939, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8* %data, metadata !2940, metadata !DIExpression()), !dbg !2942
  %0 = bitcast i8* %data to %struct.rtx_def*, !dbg !2943
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !2941, metadata !DIExpression()), !dbg !2942
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 0, !dbg !2944
  %bf.load = load i32, i32* %1, align 8, !dbg !2944
  %bf.clear = and i32 %bf.load, 65535, !dbg !2944
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !2946
  br i1 %cmp, label %if.then, label %if.end, !dbg !2947

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2948
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2948
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2948
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !2938, metadata !DIExpression()), !dbg !2942
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !2949
  %bf.load1.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !2951
  br label %if.end, !dbg !2952

if.end:                                           ; preds = %if.then, %entry
  %bf.load9 = phi i32 [ %bf.load1.pre, %if.then ], [ %bf.load, %entry ], !dbg !2951
  %dest.addr.0 = phi %struct.rtx_def* [ %2, %if.then ], [ %dest, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.addr.0, metadata !2938, metadata !DIExpression()), !dbg !2942
  %bf.clear2 = and i32 %bf.load9, 65535, !dbg !2951
  %cmp3 = icmp eq i32 %bf.clear2, 37, !dbg !2951
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !2953

if.then4:                                         ; preds = %if.end
  tail call fastcc void @record_last_reg_set_info(%struct.rtx_def* %0, %struct.rtx_def* %dest.addr.0) #7, !dbg !2954
  br label %if.end15, !dbg !2954

if.else:                                          ; preds = %if.end
  %cmp7 = icmp eq i32 %bf.clear2, 43, !dbg !2955
  br i1 %cmp7, label %if.then8, label %if.end15, !dbg !2957

if.then8:                                         ; preds = %if.else
  %bf.lshr = lshr i32 %bf.load9, 16, !dbg !2958
  %bf.clear10 = and i32 %bf.lshr, 255, !dbg !2958
  %call = tail call i32 @push_operand(%struct.rtx_def* %dest.addr.0, i32 %bf.clear10) #6, !dbg !2961
  %tobool = icmp eq i32 %call, 0, !dbg !2961
  br i1 %tobool, label %if.then11, label %if.else12, !dbg !2962

if.then11:                                        ; preds = %if.then8
  tail call fastcc void @record_last_mem_set_info(%struct.rtx_def* %0) #7, !dbg !2963
  br label %if.end15, !dbg !2963

if.else12:                                        ; preds = %if.then8
  tail call fastcc void @record_last_reg_set_info_regno(%struct.rtx_def* %0, i32 7) #7, !dbg !2964
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.else12, %if.then11, %if.then4
  ret void, !dbg !2965
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @record_last_reg_set_info(%struct.rtx_def* %insn, %struct.rtx_def* %reg) unnamed_addr #0 !dbg !2966 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2970, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !2971, metadata !DIExpression()), !dbg !2974
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !2975
  call void @llvm.dbg.value(metadata i32 %call, metadata !2972, metadata !DIExpression()), !dbg !2974
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !2976
  %bf.load = load i32, i32* %0, align 8, !dbg !2976
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2976
  %bf.clear = and i32 %bf.lshr, 255, !dbg !2976
  %call1 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !2976
  %call2 = tail call fastcc i32 @end_hard_regno(i32 %bf.clear, i32 %call1) #7, !dbg !2976
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2973, metadata !DIExpression()), !dbg !2974
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2974
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2974
  br label %do.body, !dbg !2977

do.body:                                          ; preds = %do.body, %entry
  %regno.0 = phi i32 [ %call, %entry ], [ %inc, %do.body ], !dbg !2974
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !2972, metadata !DIExpression()), !dbg !2974
  %1 = load i32*, i32** @uid_cuid, align 8, !dbg !2978
  %2 = load i32, i32* %rt_int, align 8, !dbg !2978
  %idxprom = sext i32 %2 to i64, !dbg !2978
  %arrayidx3 = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2978
  %3 = load i32, i32* %arrayidx3, align 4, !dbg !2978
  %4 = load i32*, i32** @reg_avail_info, align 8, !dbg !2979
  %idxprom4 = zext i32 %regno.0 to i64, !dbg !2979
  %arrayidx5 = getelementptr inbounds i32, i32* %4, i64 %idxprom4, !dbg !2979
  store i32 %3, i32* %arrayidx5, align 4, !dbg !2980
  %inc = add i32 %regno.0, 1, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2972, metadata !DIExpression()), !dbg !2974
  %cmp = icmp ult i32 %inc, %call2, !dbg !2982
  br i1 %cmp, label %do.body, label %do.end, !dbg !2979, !llvm.loop !2983

do.end:                                           ; preds = %do.body
  ret void, !dbg !2985
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @record_last_reg_set_info_regno(%struct.rtx_def* %insn, i32 %regno) unnamed_addr #0 !dbg !2986 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i32 %regno, metadata !2991, metadata !DIExpression()), !dbg !2992
  %0 = load i32*, i32** @uid_cuid, align 8, !dbg !2993
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2993
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2993
  %1 = load i32, i32* %rt_int, align 8, !dbg !2993
  %idxprom = sext i32 %1 to i64, !dbg !2993
  %arrayidx1 = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !2993
  %2 = load i32, i32* %arrayidx1, align 4, !dbg !2993
  %3 = load i32*, i32** @reg_avail_info, align 8, !dbg !2994
  %idxprom2 = sext i32 %regno to i64, !dbg !2994
  %arrayidx3 = getelementptr inbounds i32, i32* %3, i64 %idxprom2, !dbg !2994
  store i32 %2, i32* %arrayidx3, align 4, !dbg !2995
  ret void, !dbg !2996
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !2997 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3001, metadata !DIExpression()), !dbg !3002
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3003
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3003
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3003
  ret i32 %0, !dbg !3004
}

; Function Attrs: nounwind uwtable
define internal fastcc void @record_last_mem_set_info(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !3005 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3007, metadata !DIExpression()), !dbg !3009
  store i64 16, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 5), align 8, !dbg !3010
  %0 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3010
  %1 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3010
  %sub.ptr.sub = sub i64 %0, %1, !dbg !3010
  %cmp = icmp slt i64 %sub.ptr.sub, 16, !dbg !3010
  %2 = inttoptr i64 %1 to i8*, !dbg !3010
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3010

cond.true:                                        ; preds = %entry
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @modifies_mem_obstack, i32 16) #6, !dbg !3010
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 5), align 8, !dbg !3010
  %.pre1 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3), align 8, !dbg !3010
  br label %cond.end, !dbg !3010

cond.end:                                         ; preds = %entry, %cond.true
  %3 = phi i8* [ %2, %entry ], [ %.pre1, %cond.true ], !dbg !3010
  %4 = phi i64 [ 16, %entry ], [ %.pre, %cond.true ], !dbg !3010
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !3010
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3), align 8, !dbg !3010
  %5 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 2), align 8, !dbg !3010
  %cmp1 = icmp eq i8* %add.ptr, %5, !dbg !3010
  %6 = ptrtoint i8* %5 to i64, !dbg !3010
  %7 = ptrtoint i8* %add.ptr to i64, !dbg !3010
  br i1 %cmp1, label %cond.true3, label %cond.end5, !dbg !3010

cond.true3:                                       ; preds = %cond.end
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 10), align 8, !dbg !3010
  %bf.set = or i8 %bf.load, 2, !dbg !3010
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 10), align 8, !dbg !3010
  br label %cond.end5, !dbg !3010

cond.end5:                                        ; preds = %cond.end, %cond.true3
  store i64 %6, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 5), align 8, !dbg !3010
  %8 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 6), align 8, !dbg !3010
  %conv11 = sext i32 %8 to i64, !dbg !3010
  %add = add nsw i64 %7, %conv11, !dbg !3010
  %neg = xor i32 %8, -1, !dbg !3010
  %conv12 = sext i32 %neg to i64, !dbg !3010
  %and = and i64 %add, %conv12, !dbg !3010
  %9 = inttoptr i64 %and to i8*, !dbg !3010
  store i8* %9, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3), align 8, !dbg !3010
  %10 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3010
  %sub.ptr.sub15 = sub i64 %and, %10, !dbg !3010
  %11 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3010
  %sub.ptr.sub18 = sub i64 %11, %10, !dbg !3010
  %cmp19 = icmp sgt i64 %sub.ptr.sub15, %sub.ptr.sub18, !dbg !3010
  br i1 %cmp19, label %cond.true21, label %cond.end23, !dbg !3010

cond.true21:                                      ; preds = %cond.end5
  store i64 %11, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3010
  br label %cond.end23, !dbg !3010

cond.end23:                                       ; preds = %cond.end5, %cond.true21
  %12 = phi i64 [ %and, %cond.end5 ], [ %11, %cond.true21 ], !dbg !3010
  store i64 %12, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @modifies_mem_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %5, metadata !3008, metadata !DIExpression()), !dbg !3009
  %insn25 = bitcast i8* %5 to %struct.rtx_def**, !dbg !3011
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn25, align 8, !dbg !3012
  %13 = load i64, i64* bitcast (%struct.modifies_mem** @modifies_mem_list to i64*), align 8, !dbg !3013
  %next = getelementptr inbounds i8, i8* %5, i64 8, !dbg !3014
  %14 = bitcast i8* %next to i64*, !dbg !3015
  store i64 %13, i64* %14, align 8, !dbg !3015
  store i8* %5, i8** bitcast (%struct.modifies_mem** @modifies_mem_list to i8**), align 8, !dbg !3016
  ret void, !dbg !3017
}

declare dso_local i32 @push_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3018 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3023, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3024, metadata !DIExpression()), !dbg !3025
  %idxprom = zext i32 %regno to i64, !dbg !3026
  %idxprom1 = sext i32 %mode to i64, !dbg !3026
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !3026
  %0 = load i8, i8* %arrayidx2, align 1, !dbg !3026
  %conv = zext i8 %0 to i32, !dbg !3026
  %add = add i32 %conv, %regno, !dbg !3027
  ret i32 %add, !dbg !3028
}

declare dso_local i32 @set_noop_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @can_copy_p(i32) local_unnamed_addr #1

declare dso_local i32 @general_operand(%struct.rtx_def*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @oprs_unchanged_p(%struct.rtx_def* %x, %struct.rtx_def* %insn, i8 zeroext %after_insn) unnamed_addr #4 !dbg !3029 {
entry:
  %arrayidx14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3040
  %rt_int15 = bitcast %union.rtunion_def* %arrayidx14 to i32*, !dbg !3040
  br label %tailrecurse, !dbg !3043

tailrecurse:                                      ; preds = %if.else21, %entry
  %x.tr = phi %struct.rtx_def* [ %x, %entry ], [ %7, %if.else21 ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3034, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8 %after_insn, metadata !3035, metadata !DIExpression()), !dbg !3044
  %cmp = icmp eq %struct.rtx_def* %x.tr, null, !dbg !3045
  br i1 %cmp, label %cleanup.loopexit2, label %if.end, !dbg !3047

if.end:                                           ; preds = %tailrecurse
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 0, !dbg !3048
  %bf.load = load i32, i32* %0, align 8, !dbg !3048
  %trunc = trunc i32 %bf.load to i16, !dbg !3049
  switch i16 %trunc, label %sw.epilog.loopexit [
    i16 37, label %sw.bb
    i16 43, label %sw.bb11
    i16 36, label %cleanup.loopexit2
    i16 46, label %cleanup.loopexit2
    i16 35, label %cleanup.loopexit2
    i16 30, label %cleanup.loopexit2
    i16 32, label %cleanup.loopexit2
    i16 31, label %cleanup.loopexit2
    i16 33, label %cleanup.loopexit2
    i16 45, label %cleanup.loopexit2
    i16 44, label %cleanup.loopexit2
    i16 20, label %cleanup.loopexit2
    i16 21, label %cleanup.loopexit2
    i16 74, label %sw.bb27
    i16 75, label %sw.bb27
    i16 76, label %sw.bb27
    i16 77, label %sw.bb27
    i16 78, label %sw.bb27
    i16 79, label %sw.bb27
  ], !dbg !3049

sw.bb:                                            ; preds = %if.end
  %x.tr.lcssa26 = phi %struct.rtx_def* [ %x.tr, %if.end ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa26, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa26, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa26, metadata !3033, metadata !DIExpression()), !dbg !3044
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %x.tr.lcssa26) #7, !dbg !3050
  %cmp1 = icmp ult i32 %call, 53, !dbg !3050
  br i1 %cmp1, label %cond.end, label %cond.true, !dbg !3050

cond.true:                                        ; preds = %sw.bb
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3050
  br label %cond.end, !dbg !3050

cond.end:                                         ; preds = %sw.bb, %cond.true
  %tobool = icmp eq i8 %after_insn, 0, !dbg !3051
  br i1 %tobool, label %if.else, label %if.then2, !dbg !3053

if.then2:                                         ; preds = %cond.end
  %1 = load i32*, i32** @uid_cuid, align 8, !dbg !3054
  %2 = load i32, i32* %rt_int15, align 8, !dbg !3054
  %idxprom = sext i32 %2 to i64, !dbg !3054
  %arrayidx3 = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !3054
  %3 = load i32, i32* %arrayidx3, align 4, !dbg !3054
  %sub = add nsw i32 %3, -1, !dbg !3055
  %call4 = tail call fastcc zeroext i8 @reg_changed_after_insn_p(%struct.rtx_def* nonnull %x.tr.lcssa26, i32 %sub) #7, !dbg !3056
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3057
  %conv = zext i1 %tobool5 to i8, !dbg !3057
  br label %cleanup, !dbg !3058

if.else:                                          ; preds = %cond.end
  %call6 = tail call fastcc zeroext i8 @reg_changed_after_insn_p(%struct.rtx_def* nonnull %x.tr.lcssa26, i32 0) #7, !dbg !3059
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3060
  %conv10 = zext i1 %tobool7 to i8, !dbg !3060
  br label %cleanup, !dbg !3061

sw.bb11:                                          ; preds = %if.end
  %4 = load i32*, i32** @uid_cuid, align 8, !dbg !3062
  %5 = load i32, i32* %rt_int15, align 8, !dbg !3062
  %idxprom16 = sext i32 %5 to i64, !dbg !3062
  %arrayidx17 = getelementptr inbounds i32, i32* %4, i64 %idxprom16, !dbg !3062
  %6 = load i32, i32* %arrayidx17, align 4, !dbg !3062
  %call18 = tail call fastcc i32 @load_killed_in_block_p(i32 %6, %struct.rtx_def* nonnull %x.tr, i8 zeroext %after_insn) #7, !dbg !3063
  %tobool19 = icmp eq i32 %call18, 0, !dbg !3063
  br i1 %tobool19, label %if.else21, label %cleanup.loopexit2, !dbg !3064

if.else21:                                        ; preds = %sw.bb11
  %arrayidx24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3065
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**, !dbg !3065
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3065
  br label %tailrecurse, !dbg !3043

sw.bb27:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %x.tr.lcssa27 = phi %struct.rtx_def* [ %x.tr, %if.end ], [ %x.tr, %if.end ], [ %x.tr, %if.end ], [ %x.tr, %if.end ], [ %x.tr, %if.end ], [ %x.tr, %if.end ]
  %bf.load.lcssa23 = phi i32 [ %bf.load, %if.end ], [ %bf.load, %if.end ], [ %bf.load, %if.end ], [ %bf.load, %if.end ], [ %bf.load, %if.end ], [ %bf.load, %if.end ], !dbg !3048
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa27, metadata !3033, metadata !DIExpression()), !dbg !3044
  %tobool28 = icmp eq i8 %after_insn, 0, !dbg !3066
  br i1 %tobool28, label %sw.epilog, label %cleanup, !dbg !3068

sw.epilog.loopexit:                               ; preds = %if.end
  %x.tr.lcssa25 = phi %struct.rtx_def* [ %x.tr, %if.end ]
  %bf.load.lcssa = phi i32 [ %bf.load, %if.end ], !dbg !3048
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa25, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa25, metadata !3033, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x.tr.lcssa25, metadata !3033, metadata !DIExpression()), !dbg !3044
  br label %sw.epilog, !dbg !3069

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %sw.bb27
  %x.tr28 = phi %struct.rtx_def* [ %x.tr.lcssa25, %sw.epilog.loopexit ], [ %x.tr.lcssa27, %sw.bb27 ]
  %bf.load24 = phi i32 [ %bf.load.lcssa, %sw.epilog.loopexit ], [ %bf.load.lcssa23, %sw.bb27 ]
  %bf.clear6 = and i32 %bf.load24, 65535, !dbg !3048
  %idxprom31 = zext i32 %bf.clear6 to i64, !dbg !3069
  %arrayidx32 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom31, !dbg !3069
  %8 = load i8, i8* %arrayidx32, align 1, !dbg !3069
  call void @llvm.dbg.value(metadata i8 %8, metadata !3036, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3044
  %arrayidx36 = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom31, !dbg !3071
  %9 = load i8*, i8** %arrayidx36, align 8, !dbg !3071
  call void @llvm.dbg.value(metadata i8* %9, metadata !3039, metadata !DIExpression()), !dbg !3044
  %u62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x.tr28, i64 0, i32 1, !dbg !3072
  %fld63 = bitcast %union.u* %u62 to [1 x %union.rtunion_def]*, !dbg !3072
  %10 = zext i8 %8 to i64, !dbg !3079
  br label %for.cond, !dbg !3079

for.cond:                                         ; preds = %for.inc82, %sw.epilog
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc82 ], [ %10, %sw.epilog ]
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, -1, !dbg !3080
  call void @llvm.dbg.value(metadata i32 undef, metadata !3036, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3044
  %cmp37 = icmp sgt i64 %indvars.iv20, 0, !dbg !3081
  br i1 %cmp37, label %for.body, label %cleanup.loopexit1, !dbg !3082

for.body:                                         ; preds = %for.cond
  %arrayidx40 = getelementptr inbounds i8, i8* %9, i64 %indvars.iv.next21, !dbg !3083
  %11 = load i8, i8* %arrayidx40, align 1, !dbg !3083
  %cmp42 = icmp eq i8 %11, 101, !dbg !3084
  br i1 %cmp42, label %if.then44, label %if.else54, !dbg !3085

if.then44:                                        ; preds = %for.body
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i64 0, i64 %indvars.iv.next21, !dbg !3086
  %rt_rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**, !dbg !3086
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx49, align 8, !dbg !3086
  %call50 = tail call fastcc zeroext i8 @oprs_unchanged_p(%struct.rtx_def* %12, %struct.rtx_def* %insn, i8 zeroext %after_insn) #7, !dbg !3089
  %tobool51 = icmp eq i8 %call50, 0, !dbg !3089
  br i1 %tobool51, label %cleanup.loopexit1, label %for.inc82, !dbg !3090

if.else54:                                        ; preds = %for.body
  %cmp58 = icmp eq i8 %11, 69, !dbg !3091
  br i1 %cmp58, label %for.cond61.preheader, label %for.inc82, !dbg !3092

for.cond61.preheader:                             ; preds = %if.else54
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i64 0, i64 %indvars.iv.next21, !dbg !3072
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtvec_def**, !dbg !3072
  br label %for.cond61, !dbg !3093

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond61.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !3094
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3037, metadata !DIExpression()), !dbg !3044
  %13 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !3095
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %13, i64 0, i32 0, !dbg !3095
  %14 = load i32, i32* %num_elem, align 8, !dbg !3095
  %15 = sext i32 %14 to i64, !dbg !3096
  %cmp66 = icmp slt i64 %indvars.iv, %15, !dbg !3096
  br i1 %cmp66, label %for.body68, label %for.inc82.loopexit, !dbg !3093

for.body68:                                       ; preds = %for.cond61
  %arrayidx75 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %13, i64 0, i32 1, i64 %indvars.iv, !dbg !3097
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx75, align 8, !dbg !3097
  %call76 = tail call fastcc zeroext i8 @oprs_unchanged_p(%struct.rtx_def* %16, %struct.rtx_def* %insn, i8 zeroext %after_insn) #7, !dbg !3099
  %tobool77 = icmp eq i8 %call76, 0, !dbg !3099
  br i1 %tobool77, label %cleanup.loopexit, label %for.inc, !dbg !3100

for.inc:                                          ; preds = %for.body68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i32 undef, metadata !3037, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3044
  br label %for.cond61, !dbg !3102, !llvm.loop !3103

for.inc82.loopexit:                               ; preds = %for.cond61
  br label %for.inc82, !dbg !3105

for.inc82:                                        ; preds = %for.inc82.loopexit, %if.then44, %if.else54
  call void @llvm.dbg.value(metadata i32 undef, metadata !3036, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3044
  br label %for.cond, !dbg !3105, !llvm.loop !3106

cleanup.loopexit:                                 ; preds = %for.body68
  br label %cleanup, !dbg !3108

cleanup.loopexit1:                                ; preds = %for.cond, %if.then44
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %if.then44 ]
  br label %cleanup, !dbg !3108

cleanup.loopexit2:                                ; preds = %tailrecurse, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %sw.bb11
  %retval.0.ph3 = phi i8 [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], [ 1, %if.end ], [ 0, %sw.bb11 ], [ 1, %tailrecurse ]
  br label %cleanup, !dbg !3108

cleanup:                                          ; preds = %cleanup.loopexit2, %cleanup.loopexit1, %cleanup.loopexit, %sw.bb27, %if.else, %if.then2
  %retval.0 = phi i8 [ %conv, %if.then2 ], [ %conv10, %if.else ], [ 0, %sw.bb27 ], [ 0, %cleanup.loopexit ], [ %retval.0.ph, %cleanup.loopexit1 ], [ %retval.0.ph3, %cleanup.loopexit2 ], !dbg !3044
  ret i8 %retval.0, !dbg !3108
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_expr_in_table(%struct.rtx_def* %x, %struct.rtx_def* %insn) unnamed_addr #4 !dbg !3109 {
entry:
  %do_not_record_p = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3111, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3112, metadata !DIExpression()), !dbg !3119
  %0 = bitcast i32* %do_not_record_p to i8*, !dbg !3120
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3120
  call void @llvm.dbg.value(metadata %struct.occr* null, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32* %do_not_record_p, metadata !3113, metadata !DIExpression(DW_OP_deref)), !dbg !3119
  %call = call fastcc i32 @hash_expr(%struct.rtx_def* %x, i32* nonnull %do_not_record_p) #7, !dbg !3121
  call void @llvm.dbg.value(metadata i32 %call, metadata !3114, metadata !DIExpression()), !dbg !3119
  %1 = load i32, i32* %do_not_record_p, align 4, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %1, metadata !3113, metadata !DIExpression()), !dbg !3119
  %tobool = icmp eq i32 %1, 0, !dbg !3122
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3124

if.end:                                           ; preds = %entry
  store i64 24, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 5), align 8, !dbg !3125
  %2 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3125
  %3 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3125
  %sub.ptr.sub = sub i64 %2, %3, !dbg !3125
  %cmp = icmp slt i64 %sub.ptr.sub, 24, !dbg !3125
  %4 = inttoptr i64 %3 to i8*, !dbg !3125
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3125

cond.true:                                        ; preds = %if.end
  call void @_obstack_newchunk(%struct.obstack* nonnull @expr_obstack, i32 24) #6, !dbg !3125
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 5), align 8, !dbg !3125
  %.pre4 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3), align 8, !dbg !3125
  br label %cond.end, !dbg !3125

cond.end:                                         ; preds = %if.end, %cond.true
  %5 = phi i8* [ %4, %if.end ], [ %.pre4, %cond.true ], !dbg !3125
  %6 = phi i64 [ 24, %if.end ], [ %.pre, %cond.true ], !dbg !3125
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !3125
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3), align 8, !dbg !3125
  %7 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 2), align 8, !dbg !3125
  %cmp1 = icmp eq i8* %add.ptr, %7, !dbg !3125
  %8 = ptrtoint i8* %7 to i64, !dbg !3125
  %9 = ptrtoint i8* %add.ptr to i64, !dbg !3125
  br i1 %cmp1, label %cond.true3, label %cond.end5, !dbg !3125

cond.true3:                                       ; preds = %cond.end
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 10), align 8, !dbg !3125
  %bf.set = or i8 %bf.load, 2, !dbg !3125
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 10), align 8, !dbg !3125
  br label %cond.end5, !dbg !3125

cond.end5:                                        ; preds = %cond.end, %cond.true3
  store i64 %8, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 5), align 8, !dbg !3125
  %10 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 6), align 8, !dbg !3125
  %conv11 = sext i32 %10 to i64, !dbg !3125
  %add = add nsw i64 %9, %conv11, !dbg !3125
  %neg = xor i32 %10, -1, !dbg !3125
  %conv12 = sext i32 %neg to i64, !dbg !3125
  %and = and i64 %add, %conv12, !dbg !3125
  %11 = inttoptr i64 %and to i8*, !dbg !3125
  store i8* %11, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3), align 8, !dbg !3125
  %12 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3125
  %sub.ptr.sub15 = sub i64 %and, %12, !dbg !3125
  %13 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3125
  %sub.ptr.sub18 = sub i64 %13, %12, !dbg !3125
  %cmp19 = icmp sgt i64 %sub.ptr.sub15, %sub.ptr.sub18, !dbg !3125
  %14 = bitcast i8* %7 to %struct.expr*, !dbg !3125
  br i1 %cmp19, label %cond.true21, label %cond.end23, !dbg !3125

cond.true21:                                      ; preds = %cond.end5
  store i64 %13, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3125
  br label %cond.end23, !dbg !3125

cond.end23:                                       ; preds = %cond.end5, %cond.true21
  %15 = phi i64 [ %and, %cond.end5 ], [ %13, %cond.true21 ], !dbg !3125
  store i64 %15, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3125
  call void @llvm.dbg.value(metadata %struct.expr* %14, metadata !3115, metadata !DIExpression()), !dbg !3119
  %expr = bitcast i8* %7 to %struct.rtx_def**, !dbg !3126
  store %struct.rtx_def* %x, %struct.rtx_def** %expr, align 8, !dbg !3127
  %hash25 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !3128
  %16 = bitcast i8* %hash25 to i32*, !dbg !3128
  store i32 %call, i32* %16, align 8, !dbg !3129
  %avail_occr26 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !3130
  %17 = bitcast i8* %avail_occr26 to %struct.occr**, !dbg !3130
  store %struct.occr* null, %struct.occr** %17, align 8, !dbg !3131
  %18 = load %struct.htab*, %struct.htab** @expr_table, align 8, !dbg !3132
  %call27 = call i8** @htab_find_slot_with_hash(%struct.htab* %18, i8* %7, i32 %call, i32 1) #6, !dbg !3133
  %19 = bitcast i8** %call27 to %struct.expr**, !dbg !3134
  call void @llvm.dbg.value(metadata %struct.expr** %19, metadata !3116, metadata !DIExpression()), !dbg !3119
  %20 = load %struct.expr*, %struct.expr** %19, align 8, !dbg !3135
  %tobool28 = icmp eq %struct.expr* %20, null, !dbg !3137
  br i1 %tobool28, label %if.then29, label %if.else, !dbg !3138

if.then29:                                        ; preds = %cond.end23
  store i8* %7, i8** %call27, align 8, !dbg !3139
  br label %if.end46, !dbg !3140

if.else:                                          ; preds = %cond.end23
  %21 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3141
  %sub.ptr.sub32 = sub i64 %8, %21, !dbg !3141
  store i64 %sub.ptr.sub32, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 5), align 8, !dbg !3141
  %cmp33 = icmp sgt i64 %sub.ptr.sub32, 0, !dbg !3141
  %22 = inttoptr i64 %21 to i8*, !dbg !3141
  br i1 %cmp33, label %land.lhs.true, label %cond.false42, !dbg !3141

land.lhs.true:                                    ; preds = %if.else
  %23 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3141
  %sub.ptr.sub37 = sub i64 %23, %21, !dbg !3141
  %cmp38 = icmp slt i64 %sub.ptr.sub32, %sub.ptr.sub37, !dbg !3141
  br i1 %cmp38, label %cond.true40, label %cond.false42, !dbg !3141

cond.true40:                                      ; preds = %land.lhs.true
  %add.ptr41 = getelementptr inbounds i8, i8* %22, i64 %sub.ptr.sub32, !dbg !3141
  store i8* %add.ptr41, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 2), align 8, !dbg !3141
  store i8* %add.ptr41, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3), align 8, !dbg !3141
  br label %cond.end44, !dbg !3141

cond.false42:                                     ; preds = %land.lhs.true, %if.else
  %add.ptr43 = getelementptr inbounds i8, i8* %22, i64 %sub.ptr.sub32, !dbg !3141
  call void @obstack_free(%struct.obstack* nonnull @expr_obstack, i8* %add.ptr43) #6, !dbg !3141
  br label %cond.end44, !dbg !3141

cond.end44:                                       ; preds = %cond.false42, %cond.true40
  %24 = load %struct.expr*, %struct.expr** %19, align 8, !dbg !3143
  call void @llvm.dbg.value(metadata %struct.expr* %24, metadata !3115, metadata !DIExpression()), !dbg !3119
  br label %if.end46

if.end46:                                         ; preds = %cond.end44, %if.then29
  %cur_expr.0 = phi %struct.expr* [ %24, %cond.end44 ], [ %14, %if.then29 ], !dbg !3119
  call void @llvm.dbg.value(metadata %struct.expr* %cur_expr.0, metadata !3115, metadata !DIExpression()), !dbg !3119
  %avail_occr47 = getelementptr inbounds %struct.expr, %struct.expr* %cur_expr.0, i64 0, i32 2, !dbg !3144
  %arrayidx52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, i32 0, i32 1, !dbg !3119
  %rt_bb53 = bitcast %struct.object_block** %arrayidx52 to %struct.basic_block_def**, !dbg !3119
  br label %while.cond, !dbg !3145

while.cond:                                       ; preds = %while.body, %if.end46
  %avail_occr.0.in = phi %struct.occr** [ %avail_occr47, %if.end46 ], [ %next, %while.body ]
  %last_occr.0 = phi i8** [ null, %if.end46 ], [ %phitmp, %while.body ]
  %avail_occr.0 = load %struct.occr*, %struct.occr** %avail_occr.0.in, align 8, !dbg !3119
  call void @llvm.dbg.value(metadata %struct.occr* %avail_occr.0, metadata !3117, metadata !DIExpression()), !dbg !3119
  %cond = icmp eq %struct.occr* %avail_occr.0, null, !dbg !3146
  br i1 %cond, label %if.else59.loopexit, label %land.rhs, !dbg !3146

land.rhs:                                         ; preds = %while.cond
  %insn49 = getelementptr inbounds %struct.occr, %struct.occr* %avail_occr.0, i64 0, i32 1, !dbg !3147
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn49, align 8, !dbg !3147
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i64 0, i32 1, i32 0, i32 1, !dbg !3147
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3147
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3147
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb53, align 8, !dbg !3148
  %cmp54 = icmp eq %struct.basic_block_def* %26, %27, !dbg !3149
  br i1 %cmp54, label %while.end, label %while.body, !dbg !3145

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata %struct.occr* %avail_occr.0, metadata !3118, metadata !DIExpression()), !dbg !3119
  %next = getelementptr inbounds %struct.occr, %struct.occr* %avail_occr.0, i64 0, i32 0, !dbg !3150
  %phitmp = bitcast %struct.occr* %avail_occr.0 to i8**, !dbg !3145
  br label %while.cond, !dbg !3145, !llvm.loop !3152

while.end:                                        ; preds = %land.rhs
  %insn49.lcssa = phi %struct.rtx_def** [ %insn49, %land.rhs ], !dbg !3147
  call void @llvm.dbg.value(metadata %struct.occr* undef, metadata !3118, metadata !DIExpression()), !dbg !3119
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn49.lcssa, align 8, !dbg !3154
  br label %cleanup, !dbg !3156

if.else59.loopexit:                               ; preds = %while.cond
  %last_occr.0.lcssa = phi i8** [ %last_occr.0, %while.cond ]
  store i64 24, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 5), align 8, !dbg !3157
  %28 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3157
  %29 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3157
  %sub.ptr.sub62 = sub i64 %28, %29, !dbg !3157
  %cmp63 = icmp slt i64 %sub.ptr.sub62, 24, !dbg !3157
  %30 = inttoptr i64 %29 to i8*, !dbg !3157
  br i1 %cmp63, label %cond.true65, label %cond.end68, !dbg !3157

cond.true65:                                      ; preds = %if.else59.loopexit
  call void @_obstack_newchunk(%struct.obstack* nonnull @occr_obstack, i32 24) #6, !dbg !3157
  %.pre5 = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 5), align 8, !dbg !3157
  %.pre6 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 3), align 8, !dbg !3157
  br label %cond.end68, !dbg !3157

cond.end68:                                       ; preds = %if.else59.loopexit, %cond.true65
  %31 = phi i8* [ %30, %if.else59.loopexit ], [ %.pre6, %cond.true65 ], !dbg !3157
  %32 = phi i64 [ 24, %if.else59.loopexit ], [ %.pre5, %cond.true65 ], !dbg !3157
  %add.ptr70 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !3157
  store i8* %add.ptr70, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 3), align 8, !dbg !3157
  %33 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 2), align 8, !dbg !3157
  %cmp71 = icmp eq i8* %add.ptr70, %33, !dbg !3157
  %34 = ptrtoint i8* %33 to i64, !dbg !3157
  %35 = ptrtoint i8* %add.ptr70 to i64, !dbg !3157
  br i1 %cmp71, label %cond.true73, label %cond.end78, !dbg !3157

cond.true73:                                      ; preds = %cond.end68
  %bf.load74 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 10), align 8, !dbg !3157
  %bf.set76 = or i8 %bf.load74, 2, !dbg !3157
  store i8 %bf.set76, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 10), align 8, !dbg !3157
  br label %cond.end78, !dbg !3157

cond.end78:                                       ; preds = %cond.end68, %cond.true73
  store i64 %34, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 5), align 8, !dbg !3157
  %36 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 6), align 8, !dbg !3157
  %conv84 = sext i32 %36 to i64, !dbg !3157
  %add85 = add nsw i64 %35, %conv84, !dbg !3157
  %neg86 = xor i32 %36, -1, !dbg !3157
  %conv87 = sext i32 %neg86 to i64, !dbg !3157
  %and88 = and i64 %add85, %conv87, !dbg !3157
  %37 = inttoptr i64 %and88 to i8*, !dbg !3157
  store i8* %37, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 3), align 8, !dbg !3157
  %38 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3157
  %sub.ptr.sub91 = sub i64 %and88, %38, !dbg !3157
  %39 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3157
  %sub.ptr.sub94 = sub i64 %39, %38, !dbg !3157
  %cmp95 = icmp sgt i64 %sub.ptr.sub91, %sub.ptr.sub94, !dbg !3157
  br i1 %cmp95, label %cond.true97, label %cond.end99, !dbg !3157

cond.true97:                                      ; preds = %cond.end78
  store i64 %39, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3157
  br label %cond.end99, !dbg !3157

cond.end99:                                       ; preds = %cond.end78, %cond.true97
  %40 = phi i64 [ %and88, %cond.end78 ], [ %39, %cond.true97 ], !dbg !3157
  store i64 %40, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @occr_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %33, metadata !3117, metadata !DIExpression()), !dbg !3119
  %41 = load %struct.occr*, %struct.occr** %avail_occr47, align 8, !dbg !3159
  %cmp102 = icmp eq %struct.occr* %41, null, !dbg !3161
  br i1 %cmp102, label %if.then104, label %if.else106, !dbg !3162

if.then104:                                       ; preds = %cond.end99
  %42 = bitcast %struct.occr** %avail_occr47 to i8**, !dbg !3163
  store i8* %33, i8** %42, align 8, !dbg !3163
  br label %if.end108, !dbg !3164

if.else106:                                       ; preds = %cond.end99
  store i8* %33, i8** %last_occr.0.lcssa, align 8, !dbg !3165
  br label %if.end108

if.end108:                                        ; preds = %if.else106, %if.then104
  %insn109 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !3166
  %43 = bitcast i8* %insn109 to %struct.rtx_def**, !dbg !3166
  store %struct.rtx_def* %insn, %struct.rtx_def** %43, align 8, !dbg !3167
  %next110 = bitcast i8* %33 to %struct.occr**, !dbg !3168
  store %struct.occr* null, %struct.occr** %next110, align 8, !dbg !3169
  %44 = getelementptr inbounds i8, i8* %33, i64 16, !dbg !3170
  store i8 0, i8* %44, align 8, !dbg !3171
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end, %if.end108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3172
  ret void, !dbg !3172
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @load_killed_in_block_p(i32 %uid_limit, %struct.rtx_def* %x, i8 zeroext %after_insn) unnamed_addr #4 !dbg !3173 {
entry:
  call void @llvm.dbg.value(metadata i32 %uid_limit, metadata !3177, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3178, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 %after_insn, metadata !3179, metadata !DIExpression()), !dbg !3183
  %0 = load %struct.modifies_mem*, %struct.modifies_mem** @modifies_mem_list, align 8, !dbg !3184
  call void @llvm.dbg.value(metadata %struct.modifies_mem* %0, metadata !3180, metadata !DIExpression()), !dbg !3183
  %tobool1 = icmp eq i8 %after_insn, 0, !dbg !3185
  %1 = bitcast %struct.rtx_def* %x to i8*, !dbg !3187
  br i1 %tobool1, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !3188

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %while.cond, !dbg !3188

entry.split.us:                                   ; preds = %entry
  br label %while.cond.us, !dbg !3188

while.cond.us:                                    ; preds = %while.cond.backedge.us, %entry.split.us
  %list_entry.0.us = phi %struct.modifies_mem* [ %0, %entry.split.us ], [ %list_entry.1.us, %while.cond.backedge.us ], !dbg !3183
  call void @llvm.dbg.value(metadata %struct.modifies_mem* %list_entry.0.us, metadata !3180, metadata !DIExpression()), !dbg !3183
  %tobool.us = icmp eq %struct.modifies_mem* %list_entry.0.us, null, !dbg !3188
  br i1 %tobool.us, label %cleanup25.us-lcssa.us, label %while.body.us, !dbg !3188

while.body.us:                                    ; preds = %while.cond.us
  %insn.us = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %list_entry.0.us, i64 0, i32 0, !dbg !3189
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.us, align 8, !dbg !3189
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3181, metadata !DIExpression()), !dbg !3187
  br i1 true, label %land.lhs.true5.us, label %while.body.us.if.end.us_crit_edge, !dbg !3190

while.body.us.if.end.us_crit_edge:                ; preds = %while.body.us
  br label %if.end.us, !dbg !3190

land.lhs.true5.us:                                ; preds = %while.body.us
  %3 = load i32*, i32** @uid_cuid, align 8, !dbg !3191
  %arrayidx8.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3191
  %rt_int9.us = bitcast %union.rtunion_def* %arrayidx8.us to i32*, !dbg !3191
  %4 = load i32, i32* %rt_int9.us, align 8, !dbg !3191
  %idxprom10.us = sext i32 %4 to i64, !dbg !3191
  %arrayidx11.us = getelementptr inbounds i32, i32* %3, i64 %idxprom10.us, !dbg !3191
  %5 = load i32, i32* %arrayidx11.us, align 4, !dbg !3191
  %cmp12.us = icmp sgt i32 %5, %uid_limit, !dbg !3192
  br i1 %cmp12.us, label %if.then.us, label %if.end.us, !dbg !3193

if.end.us:                                        ; preds = %while.body.us.if.end.us_crit_edge, %land.lhs.true5.us
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 0, !dbg !3194
  %bf.load.us = load i32, i32* %6, align 8, !dbg !3194
  %bf.clear.us = and i32 %bf.load.us, 65535, !dbg !3194
  %cmp14.us = icmp eq i32 %bf.clear.us, 10, !dbg !3194
  br i1 %cmp14.us, label %cleanup.us, label %if.end17.us, !dbg !3196

if.end17.us:                                      ; preds = %if.end.us
  store i1 false, i1* @mems_conflict_p, align 4, !dbg !3197
  %u18.us = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, !dbg !3198
  %7 = getelementptr inbounds %union.u, %union.u* %u18.us, i64 1, i32 0, i32 0, i64 0, !dbg !3198
  %rt_rtx.us = bitcast %union.rtunion_def* %7 to %struct.rtx_def**, !dbg !3198
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx.us, align 8, !dbg !3198
  tail call void @note_stores(%struct.rtx_def* %8, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @find_mem_conflicts, i8* %1) #6, !dbg !3199
  %.b = load i1, i1* @mems_conflict_p, align 4, !dbg !3200
  br i1 %.b, label %cleanup.us, label %if.end23.us, !dbg !3202

if.end23.us:                                      ; preds = %if.end17.us
  %next24.us = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %list_entry.0.us, i64 0, i32 1, !dbg !3203
  %9 = load %struct.modifies_mem*, %struct.modifies_mem** %next24.us, align 8, !dbg !3203
  call void @llvm.dbg.value(metadata %struct.modifies_mem* %9, metadata !3180, metadata !DIExpression()), !dbg !3183
  br label %cleanup.us, !dbg !3204

if.then.us:                                       ; preds = %land.lhs.true5.us
  %next.us = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %list_entry.0.us, i64 0, i32 1, !dbg !3205
  %10 = load %struct.modifies_mem*, %struct.modifies_mem** %next.us, align 8, !dbg !3205
  call void @llvm.dbg.value(metadata %struct.modifies_mem* %10, metadata !3180, metadata !DIExpression()), !dbg !3183
  br label %cleanup.us, !dbg !3207, !llvm.loop !3208

cleanup.us:                                       ; preds = %if.end17.us, %if.then.us, %if.end23.us, %if.end.us
  %list_entry.1.us = phi %struct.modifies_mem* [ %10, %if.then.us ], [ %9, %if.end23.us ], [ %list_entry.0.us, %if.end.us ], [ %list_entry.0.us, %if.end17.us ], !dbg !3183
  %cleanup.dest.slot.0.us = phi i32 [ 2, %if.then.us ], [ 0, %if.end23.us ], [ 1, %if.end.us ], [ 1, %if.end17.us ]
  call void @llvm.dbg.value(metadata %struct.modifies_mem* %list_entry.1.us, metadata !3180, metadata !DIExpression()), !dbg !3183
  switch i32 %cleanup.dest.slot.0.us, label %cleanup25.us-lcssa.us [
    i32 0, label %while.cond.backedge.us
    i32 2, label %while.cond.backedge.us
  ]

while.cond.backedge.us:                           ; preds = %cleanup.us, %cleanup.us
  br label %while.cond.us, !dbg !3183, !llvm.loop !3208

cleanup25.us-lcssa.us:                            ; preds = %cleanup.us, %while.cond.us
  %retval.2.ph.us = phi i32 [ 0, %while.cond.us ], [ 1, %cleanup.us ]
  br label %cleanup25, !dbg !3209

while.cond:                                       ; preds = %while.cond.backedge, %entry.entry.split_crit_edge
  %list_entry.0 = phi %struct.modifies_mem* [ %0, %entry.entry.split_crit_edge ], [ %list_entry.1, %while.cond.backedge ], !dbg !3183
  call void @llvm.dbg.value(metadata %struct.modifies_mem* %list_entry.0, metadata !3180, metadata !DIExpression()), !dbg !3183
  %tobool = icmp eq %struct.modifies_mem* %list_entry.0, null, !dbg !3188
  br i1 %tobool, label %cleanup25.us-lcssa, label %while.body, !dbg !3188

while.body:                                       ; preds = %while.cond
  %insn = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %list_entry.0, i64 0, i32 0, !dbg !3189
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3189
  call void @llvm.dbg.value(metadata %struct.rtx_def* %11, metadata !3181, metadata !DIExpression()), !dbg !3187
  %12 = load i32*, i32** @uid_cuid, align 8, !dbg !3210
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3210
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3210
  %13 = load i32, i32* %rt_int, align 8, !dbg !3210
  %idxprom = sext i32 %13 to i64, !dbg !3210
  %arrayidx2 = getelementptr inbounds i32, i32* %12, i64 %idxprom, !dbg !3210
  %14 = load i32, i32* %arrayidx2, align 4, !dbg !3210
  %cmp = icmp slt i32 %14, %uid_limit, !dbg !3211
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3212

lor.lhs.false:                                    ; preds = %while.body
  br i1 false, label %land.lhs.true5, label %if.end, !dbg !3190

land.lhs.true5:                                   ; preds = %lor.lhs.false
  br i1 undef, label %land.lhs.true5.if.then_crit_edge, label %land.lhs.true5.if.end_crit_edge, !dbg !3193

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  br label %if.end, !dbg !3193

land.lhs.true5.if.then_crit_edge:                 ; preds = %land.lhs.true5
  br label %if.then, !dbg !3193

if.then:                                          ; preds = %land.lhs.true5.if.then_crit_edge, %while.body
  %next = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %list_entry.0, i64 0, i32 1, !dbg !3205
  %15 = load %struct.modifies_mem*, %struct.modifies_mem** %next, align 8, !dbg !3205
  call void @llvm.dbg.value(metadata %struct.modifies_mem* %15, metadata !3180, metadata !DIExpression()), !dbg !3183
  br label %cleanup, !dbg !3207, !llvm.loop !3208

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %lor.lhs.false
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 0, !dbg !3194
  %bf.load = load i32, i32* %16, align 8, !dbg !3194
  %bf.clear = and i32 %bf.load, 65535, !dbg !3194
  %cmp14 = icmp eq i32 %bf.clear, 10, !dbg !3194
  br i1 %cmp14, label %cleanup, label %if.end17, !dbg !3196

if.end17:                                         ; preds = %if.end
  store i1 false, i1* @mems_conflict_p, align 4, !dbg !3197
  %u18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 1, !dbg !3198
  %17 = getelementptr inbounds %union.u, %union.u* %u18, i64 1, i32 0, i32 0, i64 0, !dbg !3198
  %rt_rtx = bitcast %union.rtunion_def* %17 to %struct.rtx_def**, !dbg !3198
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3198
  tail call void @note_stores(%struct.rtx_def* %18, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @find_mem_conflicts, i8* %1) #6, !dbg !3199
  %.b1 = load i1, i1* @mems_conflict_p, align 4, !dbg !3200
  br i1 %.b1, label %cleanup, label %if.end23, !dbg !3202

if.end23:                                         ; preds = %if.end17
  %next24 = getelementptr inbounds %struct.modifies_mem, %struct.modifies_mem* %list_entry.0, i64 0, i32 1, !dbg !3203
  %19 = load %struct.modifies_mem*, %struct.modifies_mem** %next24, align 8, !dbg !3203
  call void @llvm.dbg.value(metadata %struct.modifies_mem* %19, metadata !3180, metadata !DIExpression()), !dbg !3183
  br label %cleanup, !dbg !3204

cleanup:                                          ; preds = %if.end17, %if.end, %if.end23, %if.then
  %list_entry.1 = phi %struct.modifies_mem* [ %15, %if.then ], [ %19, %if.end23 ], [ %list_entry.0, %if.end ], [ %list_entry.0, %if.end17 ], !dbg !3183
  %cleanup.dest.slot.0 = phi i32 [ 2, %if.then ], [ 0, %if.end23 ], [ 1, %if.end ], [ 1, %if.end17 ]
  call void @llvm.dbg.value(metadata %struct.modifies_mem* %list_entry.1, metadata !3180, metadata !DIExpression()), !dbg !3183
  switch i32 %cleanup.dest.slot.0, label %cleanup25.us-lcssa [
    i32 0, label %while.cond.backedge
    i32 2, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %cleanup, %cleanup
  br label %while.cond, !dbg !3183, !llvm.loop !3208

cleanup25.us-lcssa:                               ; preds = %cleanup, %while.cond
  %retval.2.ph = phi i32 [ 0, %while.cond ], [ 1, %cleanup ]
  br label %cleanup25, !dbg !3209

cleanup25:                                        ; preds = %cleanup25.us-lcssa.us, %cleanup25.us-lcssa
  %retval.2 = phi i32 [ %retval.2.ph, %cleanup25.us-lcssa ], [ %retval.2.ph.us, %cleanup25.us-lcssa.us ]
  ret i32 %retval.2, !dbg !3209
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @reg_changed_after_insn_p(%struct.rtx_def* %x, i32 %cuid) unnamed_addr #4 !dbg !3213 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3217, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i32 %cuid, metadata !3218, metadata !DIExpression()), !dbg !3221
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #7, !dbg !3222
  call void @llvm.dbg.value(metadata i32 %call, metadata !3219, metadata !DIExpression()), !dbg !3221
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3223
  %bf.load = load i32, i32* %0, align 8, !dbg !3223
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3223
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3223
  %call1 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %x) #7, !dbg !3223
  %call2 = tail call fastcc i32 @end_hard_regno(i32 %bf.clear, i32 %call1) #7, !dbg !3223
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3220, metadata !DIExpression()), !dbg !3221
  %1 = load i32*, i32** @reg_avail_info, align 8, !dbg !3224
  br label %do.body, !dbg !3226

do.body:                                          ; preds = %do.cond, %entry
  %regno.0 = phi i32 [ %call, %entry ], [ %inc, %do.cond ], !dbg !3221
  call void @llvm.dbg.value(metadata i32 %regno.0, metadata !3219, metadata !DIExpression()), !dbg !3221
  %idxprom = zext i32 %regno.0 to i64, !dbg !3227
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !3227
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3227
  %cmp = icmp sgt i32 %2, %cuid, !dbg !3228
  br i1 %cmp, label %cleanup, label %do.cond, !dbg !3229

do.cond:                                          ; preds = %do.body
  %inc = add i32 %regno.0, 1, !dbg !3230
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3219, metadata !DIExpression()), !dbg !3221
  %cmp3 = icmp ult i32 %inc, %call2, !dbg !3231
  br i1 %cmp3, label %do.body, label %cleanup, !dbg !3232, !llvm.loop !3233

cleanup:                                          ; preds = %do.cond, %do.body
  %retval.0 = phi i8 [ 1, %do.body ], [ 0, %do.cond ], !dbg !3221
  ret i8 %retval.0, !dbg !3235
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hash_expr(%struct.rtx_def* %x, i32* %do_not_record_p) unnamed_addr #4 !dbg !3236 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3240, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32* %do_not_record_p, metadata !3241, metadata !DIExpression()), !dbg !3242
  store i32 0, i32* %do_not_record_p, align 4, !dbg !3243
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3244
  %bf.load = load i32, i32* %0, align 8, !dbg !3244
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3244
  %bf.clear = and i32 %bf.lshr, 255, !dbg !3244
  %call = tail call i32 @hash_rtx(%struct.rtx_def* %x, i32 %bf.clear, i32* %do_not_record_p, i32* null, i8 zeroext 0) #6, !dbg !3245
  ret i32 %call, !dbg !3246
}

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #1

declare dso_local i32 @hash_rtx(%struct.rtx_def*, i32, i32*, i32*, i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @find_mem_conflicts(%struct.rtx_def* %dest, %struct.rtx_def* %setter, i8* %data) #4 !dbg !3247 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest, metadata !3249, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata %struct.rtx_def* %setter, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %data, metadata !3251, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !3252, metadata !DIExpression()), !dbg !3253
  br label %while.cond, !dbg !3254

while.cond:                                       ; preds = %while.body, %entry
  %dest.addr.0 = phi %struct.rtx_def* [ %dest, %entry ], [ %1, %while.body ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.addr.0, metadata !3249, metadata !DIExpression()), !dbg !3253
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.addr.0, i64 0, i32 0, !dbg !3255
  %bf.load = load i32, i32* %0, align 8, !dbg !3255
  %bf.clear = and i32 %bf.load, 65535, !dbg !3255
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !3256
  br i1 %cmp, label %while.body, label %lor.lhs.false, !dbg !3257

lor.lhs.false:                                    ; preds = %while.cond
  %cmp3 = icmp eq i32 %bf.clear, 120, !dbg !3258
  %cmp6 = icmp eq i32 %bf.clear, 40, !dbg !3259
  %or.cond = or i1 %cmp3, %cmp6, !dbg !3260
  br i1 %or.cond, label %while.body, label %while.end, !dbg !3260

while.body:                                       ; preds = %while.cond, %lor.lhs.false
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %dest.addr.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3261
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !3261
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3261
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !3249, metadata !DIExpression()), !dbg !3253
  br label %while.cond, !dbg !3254, !llvm.loop !3262

while.end:                                        ; preds = %lor.lhs.false
  %dest.addr.0.lcssa = phi %struct.rtx_def* [ %dest.addr.0, %lor.lhs.false ]
  %bf.load.lcssa = phi i32 [ %bf.load, %lor.lhs.false ], !dbg !3255
  %bf.clear.lcssa = phi i32 [ %bf.clear, %lor.lhs.false ], !dbg !3255
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.addr.0.lcssa, metadata !3249, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.addr.0.lcssa, metadata !3249, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata %struct.rtx_def* %dest.addr.0.lcssa, metadata !3249, metadata !DIExpression()), !dbg !3253
  %cmp9 = icmp eq i32 %bf.clear.lcssa, 43, !dbg !3263
  br i1 %cmp9, label %if.end, label %cleanup.cont, !dbg !3265

if.end:                                           ; preds = %while.end
  %2 = bitcast i8* %data to %struct.rtx_def*, !dbg !3266
  %bf.lshr = lshr i32 %bf.load.lcssa, 16, !dbg !3267
  %bf.clear11 = and i32 %bf.lshr, 255, !dbg !3267
  %call = tail call i32 @true_dependence(%struct.rtx_def* %dest.addr.0.lcssa, i32 %bf.clear11, %struct.rtx_def* %2, i8 (%struct.rtx_def*, i8)* nonnull @rtx_addr_varies_p) #6, !dbg !3269
  %tobool = icmp eq i32 %call, 0, !dbg !3269
  br i1 %tobool, label %cleanup.cont, label %if.then12, !dbg !3270

if.then12:                                        ; preds = %if.end
  store i1 true, i1* @mems_conflict_p, align 4, !dbg !3271
  br label %cleanup.cont, !dbg !3272

cleanup.cont:                                     ; preds = %if.end, %while.end, %if.then12
  ret void, !dbg !3273
}

declare dso_local i32 @true_dependence(%struct.rtx_def*, i32, %struct.rtx_def*, i8 (%struct.rtx_def*, i8)*) local_unnamed_addr #1

declare dso_local zeroext i8 @rtx_addr_varies_p(%struct.rtx_def*, i8 zeroext) #1

declare dso_local i64 @htab_size(%struct.htab*) local_unnamed_addr #1

declare dso_local double @htab_collisions(%struct.htab*) local_unnamed_addr #1

declare dso_local void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @dump_hash_table_entry(i8** %slot, i8* %filep) #4 !dbg !3274 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !3278, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8* %filep, metadata !3279, metadata !DIExpression()), !dbg !3285
  %0 = bitcast i8** %slot to %struct.expr**, !dbg !3286
  %1 = load %struct.expr*, %struct.expr** %0, align 8, !dbg !3286
  call void @llvm.dbg.value(metadata %struct.expr* %1, metadata !3280, metadata !DIExpression()), !dbg !3285
  %2 = bitcast i8* %filep to %struct._IO_FILE*, !dbg !3287
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !3281, metadata !DIExpression()), !dbg !3285
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3288
  %expr1 = getelementptr inbounds %struct.expr, %struct.expr* %1, i64 0, i32 0, !dbg !3289
  %3 = load %struct.rtx_def*, %struct.rtx_def** %expr1, align 8, !dbg !3289
  tail call void @print_rtl(%struct._IO_FILE* %2, %struct.rtx_def* %3) #6, !dbg !3290
  %hash = getelementptr inbounds %struct.expr, %struct.expr* %1, i64 0, i32 1, !dbg !3291
  %4 = load i32, i32* %hash, align 8, !dbg !3291
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %4) #6, !dbg !3292
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !3293
  %avail_occr = getelementptr inbounds %struct.expr, %struct.expr* %1, i64 0, i32 2, !dbg !3294
  br label %while.cond, !dbg !3295

while.cond:                                       ; preds = %while.body, %entry
  %occr.0.in = phi %struct.occr** [ %avail_occr, %entry ], [ %next, %while.body ]
  %occr.0 = load %struct.occr*, %struct.occr** %occr.0.in, align 8, !dbg !3285
  call void @llvm.dbg.value(metadata %struct.occr* %occr.0, metadata !3282, metadata !DIExpression()), !dbg !3285
  %tobool = icmp eq %struct.occr* %occr.0, null, !dbg !3295
  br i1 %tobool, label %while.end, label %while.body, !dbg !3295

while.body:                                       ; preds = %while.cond
  %insn4 = getelementptr inbounds %struct.occr, %struct.occr* %occr.0, i64 0, i32 1, !dbg !3296
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8, !dbg !3296
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !3283, metadata !DIExpression()), !dbg !3297
  %call5 = tail call i32 @print_rtl_single(%struct._IO_FILE* %2, %struct.rtx_def* %5) #6, !dbg !3298
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3299
  %next = getelementptr inbounds %struct.occr, %struct.occr* %occr.0, i64 0, i32 0, !dbg !3300
  br label %while.cond, !dbg !3295, !llvm.loop !3301

while.end:                                        ; preds = %while.cond
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3303
  ret i32 1, !dbg !3304
}

declare dso_local void @print_rtl(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @print_rtl_single(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @bb_has_well_behaved_predecessors(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !3305 {
entry:
  %pred = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3309, metadata !DIExpression()), !dbg !3318
  %0 = bitcast %struct.edge_def** %pred to i8*, !dbg !3319
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3319
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3320
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3320
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3321
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3321
  %tobool = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !3321
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3321

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !3321
  br label %cond.end, !dbg !3321

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3321
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3321
  %cmp = icmp eq i32 %call, 0, !dbg !3323
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3324

if.end:                                           ; preds = %cond.end
  %3 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3325
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !3325
  %call3 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3325
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3325
  %5 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 0, !dbg !3325
  store i32 %5, i32* %4, align 8, !dbg !3325
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3325
  %7 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 1, !dbg !3325
  store %struct.VEC_edge_gc** %7, %struct.VEC_edge_gc*** %6, align 8, !dbg !3325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !3325
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !3325
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3327
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3327
  br label %for.cond, !dbg !3325

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %8, align 8, !dbg !3329
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.edge_def** %pred, metadata !3310, metadata !DIExpression(DW_OP_deref)), !dbg !3318
  %call4 = call fastcc zeroext i8 @ei_cond(i32 %10, %struct.VEC_edge_gc** %11, %struct.edge_def** nonnull %pred) #7, !dbg !3329
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3325
  br i1 %tobool5, label %cleanup.loopexit, label %for.body, !dbg !3325

for.body:                                         ; preds = %for.cond
  %12 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3330
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3310, metadata !DIExpression()), !dbg !3318
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 7, !dbg !3333
  %13 = load i32, i32* %flags, align 8, !dbg !3333
  %and = and i32 %13, 2, !dbg !3334
  %tobool6 = icmp eq i32 %and, 0, !dbg !3334
  br i1 %tobool6, label %if.end30, label %land.lhs.true, !dbg !3335

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3310, metadata !DIExpression()), !dbg !3318
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !3336
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3336
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i64 0, i32 1, !dbg !3336
  %15 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3336
  %tobool7 = icmp eq %struct.VEC_edge_gc* %15, null, !dbg !3336
  br i1 %tobool7, label %cond.end13, label %cond.true8, !dbg !3336

cond.true8:                                       ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3310, metadata !DIExpression()), !dbg !3318
  %base11 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %15, i64 0, i32 0, !dbg !3336
  br label %cond.end13, !dbg !3336

cond.end13:                                       ; preds = %land.lhs.true, %cond.true8
  %cond14 = phi %struct.VEC_edge_base* [ %base11, %cond.true8 ], [ null, %land.lhs.true ], !dbg !3336
  %call15 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond14) #7, !dbg !3336
  %cmp16 = icmp ugt i32 %call15, 1, !dbg !3336
  br i1 %cmp16, label %land.lhs.true17, label %if.end30, !dbg !3336

land.lhs.true17:                                  ; preds = %cond.end13
  %16 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3336
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3310, metadata !DIExpression()), !dbg !3318
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 1, !dbg !3336
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3336
  %preds18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 0, !dbg !3336
  %18 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds18, align 8, !dbg !3336
  %tobool19 = icmp eq %struct.VEC_edge_gc* %18, null, !dbg !3336
  br i1 %tobool19, label %cond.end25, label %cond.true20, !dbg !3336

cond.true20:                                      ; preds = %land.lhs.true17
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3310, metadata !DIExpression()), !dbg !3318
  %base23 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %18, i64 0, i32 0, !dbg !3336
  br label %cond.end25, !dbg !3336

cond.end25:                                       ; preds = %land.lhs.true17, %cond.true20
  %cond26 = phi %struct.VEC_edge_base* [ %base23, %cond.true20 ], [ null, %land.lhs.true17 ], !dbg !3336
  %call27 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond26) #7, !dbg !3336
  %cmp28 = icmp ugt i32 %call27, 1, !dbg !3336
  br i1 %cmp28, label %cleanup.loopexit, label %if.end30, !dbg !3337

if.end30:                                         ; preds = %for.body, %cond.end25, %cond.end13
  %19 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3338
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !3310, metadata !DIExpression()), !dbg !3318
  %src31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i64 0, i32 0, !dbg !3338
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %src31, align 8, !dbg !3338
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 7, !dbg !3338
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3338
  %21 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3338
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %21, i64 0, i32 1, !dbg !3338
  %22 = bitcast %struct.rtx_def** %end_ to i32**, !dbg !3338
  %23 = load i32*, i32** %22, align 8, !dbg !3338
  %bf.load = load i32, i32* %23, align 8, !dbg !3338
  %bf.clear = and i32 %bf.load, 65535, !dbg !3338
  %cmp32 = icmp eq i32 %bf.clear, 9, !dbg !3338
  br i1 %cmp32, label %land.lhs.true33, label %for.inc, !dbg !3338

land.lhs.true33:                                  ; preds = %if.end30
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !3310, metadata !DIExpression()), !dbg !3318
  %24 = getelementptr inbounds i32, i32* %23, i64 12, !dbg !3338
  %25 = bitcast i32* %24 to i32**, !dbg !3338
  %26 = load i32*, i32** %25, align 8, !dbg !3338
  %bf.load38 = load i32, i32* %26, align 8, !dbg !3338
  %bf.clear39 = and i32 %bf.load38, 65534, !dbg !3338
  %27 = or i32 %bf.clear39, 1, !dbg !3338
  %28 = icmp eq i32 %27, 21, !dbg !3338
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !3310, metadata !DIExpression()), !dbg !3318
  br i1 %28, label %cleanup.loopexit, label %for.inc, !dbg !3338

for.inc:                                          ; preds = %land.lhs.true33, %if.end30
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3311, metadata !DIExpression(DW_OP_deref)), !dbg !3318
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3329
  br label %for.cond, !dbg !3329, !llvm.loop !3340

cleanup.loopexit:                                 ; preds = %cond.end25, %land.lhs.true33, %for.cond
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %land.lhs.true33 ], [ 0, %cond.end25 ]
  br label %cleanup, !dbg !3342

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end
  %retval.0 = phi i8 [ 0, %cond.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !3318
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3342
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3342
  ret i8 %retval.0, !dbg !3342
}

declare dso_local zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def*) local_unnamed_addr #1

declare dso_local i32 @may_trap_p(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @side_effects_p(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.expr* @lookup_expr_in_table(%struct.rtx_def* %pat) unnamed_addr #4 !dbg !3343 {
entry:
  %do_not_record_p = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.rtx_def* %pat, metadata !3347, metadata !DIExpression()), !dbg !3352
  %0 = bitcast i32* %do_not_record_p to i8*, !dbg !3353
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3353
  call void @llvm.dbg.value(metadata i32* %do_not_record_p, metadata !3348, metadata !DIExpression(DW_OP_deref)), !dbg !3352
  %call = call fastcc i32 @hash_expr(%struct.rtx_def* %pat, i32* nonnull %do_not_record_p) #7, !dbg !3354
  call void @llvm.dbg.value(metadata i32 %call, metadata !3351, metadata !DIExpression()), !dbg !3352
  %1 = load i32, i32* %do_not_record_p, align 4, !dbg !3355
  call void @llvm.dbg.value(metadata i32 %1, metadata !3348, metadata !DIExpression()), !dbg !3352
  %tobool = icmp eq i32 %1, 0, !dbg !3355
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3357

if.end:                                           ; preds = %entry
  store i64 24, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 5), align 8, !dbg !3358
  %2 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3358
  %3 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3358
  %sub.ptr.sub = sub i64 %2, %3, !dbg !3358
  %cmp = icmp slt i64 %sub.ptr.sub, 24, !dbg !3358
  %4 = inttoptr i64 %3 to i8*, !dbg !3358
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3358

cond.true:                                        ; preds = %if.end
  call void @_obstack_newchunk(%struct.obstack* nonnull @expr_obstack, i32 24) #6, !dbg !3358
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 5), align 8, !dbg !3358
  %.pre1 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3), align 8, !dbg !3358
  br label %cond.end, !dbg !3358

cond.end:                                         ; preds = %if.end, %cond.true
  %5 = phi i8* [ %4, %if.end ], [ %.pre1, %cond.true ], !dbg !3358
  %6 = phi i64 [ 24, %if.end ], [ %.pre, %cond.true ], !dbg !3358
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !3358
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3), align 8, !dbg !3358
  %7 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 2), align 8, !dbg !3358
  %cmp1 = icmp eq i8* %add.ptr, %7, !dbg !3358
  %8 = ptrtoint i8* %7 to i64, !dbg !3358
  %9 = ptrtoint i8* %add.ptr to i64, !dbg !3358
  br i1 %cmp1, label %cond.true3, label %cond.end5, !dbg !3358

cond.true3:                                       ; preds = %cond.end
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 10), align 8, !dbg !3358
  %bf.set = or i8 %bf.load, 2, !dbg !3358
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 10), align 8, !dbg !3358
  br label %cond.end5, !dbg !3358

cond.end5:                                        ; preds = %cond.end, %cond.true3
  store i64 %8, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 5), align 8, !dbg !3358
  %10 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 6), align 8, !dbg !3358
  %conv11 = sext i32 %10 to i64, !dbg !3358
  %add = add nsw i64 %9, %conv11, !dbg !3358
  %neg = xor i32 %10, -1, !dbg !3358
  %conv12 = sext i32 %neg to i64, !dbg !3358
  %and = and i64 %add, %conv12, !dbg !3358
  %11 = inttoptr i64 %and to i8*, !dbg !3358
  store i8* %11, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3), align 8, !dbg !3358
  %12 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3358
  %sub.ptr.sub15 = sub i64 %and, %12, !dbg !3358
  %13 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3358
  %sub.ptr.sub18 = sub i64 %13, %12, !dbg !3358
  %cmp19 = icmp sgt i64 %sub.ptr.sub15, %sub.ptr.sub18, !dbg !3358
  br i1 %cmp19, label %cond.true21, label %cond.end23, !dbg !3358

cond.true21:                                      ; preds = %cond.end5
  store i64 %13, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3358
  br label %cond.end23, !dbg !3358

cond.end23:                                       ; preds = %cond.end5, %cond.true21
  %14 = phi i64 [ %and, %cond.end5 ], [ %13, %cond.true21 ], !dbg !3358
  store i64 %14, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %7, metadata !3350, metadata !DIExpression()), !dbg !3352
  %expr = bitcast i8* %7 to %struct.rtx_def**, !dbg !3359
  store %struct.rtx_def* %pat, %struct.rtx_def** %expr, align 8, !dbg !3360
  %hash25 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !3361
  %15 = bitcast i8* %hash25 to i32*, !dbg !3361
  store i32 %call, i32* %15, align 8, !dbg !3362
  %avail_occr = getelementptr inbounds i8, i8* %7, i64 16, !dbg !3363
  %16 = bitcast i8* %avail_occr to %struct.occr**, !dbg !3363
  store %struct.occr* null, %struct.occr** %16, align 8, !dbg !3364
  %17 = load %struct.htab*, %struct.htab** @expr_table, align 8, !dbg !3365
  %call26 = call i8** @htab_find_slot_with_hash(%struct.htab* %17, i8* %7, i32 %call, i32 1) #6, !dbg !3366
  %18 = bitcast i8** %call26 to %struct.expr**, !dbg !3367
  call void @llvm.dbg.value(metadata %struct.expr** %18, metadata !3349, metadata !DIExpression()), !dbg !3352
  %19 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3368
  %sub.ptr.sub29 = sub i64 %8, %19, !dbg !3368
  store i64 %sub.ptr.sub29, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 5), align 8, !dbg !3368
  %cmp30 = icmp sgt i64 %sub.ptr.sub29, 0, !dbg !3368
  %20 = inttoptr i64 %19 to i8*, !dbg !3368
  br i1 %cmp30, label %land.lhs.true, label %cond.false39, !dbg !3368

land.lhs.true:                                    ; preds = %cond.end23
  %21 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3368
  %sub.ptr.sub34 = sub i64 %21, %19, !dbg !3368
  %cmp35 = icmp slt i64 %sub.ptr.sub29, %sub.ptr.sub34, !dbg !3368
  br i1 %cmp35, label %cond.true37, label %cond.false39, !dbg !3368

cond.true37:                                      ; preds = %land.lhs.true
  %add.ptr38 = getelementptr inbounds i8, i8* %20, i64 %sub.ptr.sub29, !dbg !3368
  store i8* %add.ptr38, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 2), align 8, !dbg !3368
  store i8* %add.ptr38, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @expr_obstack, i64 0, i32 3), align 8, !dbg !3368
  br label %cond.end41, !dbg !3368

cond.false39:                                     ; preds = %land.lhs.true, %cond.end23
  %add.ptr40 = getelementptr inbounds i8, i8* %20, i64 %sub.ptr.sub29, !dbg !3368
  call void @obstack_free(%struct.obstack* nonnull @expr_obstack, i8* %add.ptr40) #6, !dbg !3368
  br label %cond.end41, !dbg !3368

cond.end41:                                       ; preds = %cond.false39, %cond.true37
  %tobool43 = icmp eq i8** %call26, null, !dbg !3369
  br i1 %tobool43, label %cleanup, label %if.else, !dbg !3371

if.else:                                          ; preds = %cond.end41
  %22 = load %struct.expr*, %struct.expr** %18, align 8, !dbg !3372
  br label %cleanup, !dbg !3373

cleanup:                                          ; preds = %cond.end41, %entry, %if.else
  %retval.0 = phi %struct.expr* [ %22, %if.else ], [ null, %entry ], [ null, %cond.end41 ], !dbg !3352
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3374
  ret %struct.expr* %retval.0, !dbg !3374
}

; Function Attrs: nounwind uwtable
define internal fastcc void @eliminate_partially_redundant_load(%struct.basic_block_def* %bb, %struct.rtx_def* %insn, %struct.expr* %expr) unnamed_addr #4 !dbg !3375 {
entry:
  %pred = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3379, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3380, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.expr* %expr, metadata !3381, metadata !DIExpression()), !dbg !3405
  %0 = bitcast %struct.edge_def** %pred to i8*, !dbg !3406
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3406
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3383, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* null, metadata !3389, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* null, metadata !3391, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* null, metadata !3392, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 0, metadata !3394, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 0, metadata !3395, metadata !DIExpression()), !dbg !3405
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3407
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3407
  call void @llvm.dbg.value(metadata i8 0, metadata !3397, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 0, metadata !3398, metadata !DIExpression()), !dbg !3405
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3408
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3408
  %rt_rtx = bitcast %union.rtunion_def* %2 to %struct.rtx_def**, !dbg !3408
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3408
  call void @llvm.dbg.value(metadata %struct.rtx_def* %3, metadata !3386, metadata !DIExpression()), !dbg !3405
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3409
  %rt_rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**, !dbg !3409
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx4, align 8, !dbg !3409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !3385, metadata !DIExpression()), !dbg !3405
  %call = tail call fastcc zeroext i8 @reg_changed_after_insn_p(%struct.rtx_def* %4, i32 0) #7, !dbg !3410
  %tobool = icmp eq i8 %call, 0, !dbg !3410
  br i1 %tobool, label %lor.lhs.false, label %cleanup372, !dbg !3412

lor.lhs.false:                                    ; preds = %entry
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !3413
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3413
  %5 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3413
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %5, i64 0, i32 0, !dbg !3413
  %6 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3413
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3413
  %rt_rtx8 = bitcast %union.rtunion_def* %7 to %struct.rtx_def**, !dbg !3413
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx8, align 8, !dbg !3413
  %call9 = tail call i32 @reg_used_between_p(%struct.rtx_def* %4, %struct.rtx_def* %8, %struct.rtx_def* %insn) #6, !dbg !3414
  %tobool10 = icmp eq i32 %call9, 0, !dbg !3414
  br i1 %tobool10, label %if.end, label %cleanup372, !dbg !3415

if.end:                                           ; preds = %lor.lhs.false
  %9 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3416
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3416
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3416
  %call11 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3416
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3416
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call11, 0, !dbg !3416
  store i32 %11, i32* %10, align 8, !dbg !3416
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3416
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call11, 1, !dbg !3416
  store %struct.VEC_edge_gc** %13, %struct.VEC_edge_gc*** %12, align 8, !dbg !3416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !3416
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #8, !dbg !3416
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3417
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3417
  %avail_occr = getelementptr inbounds %struct.expr, %struct.expr* %expr, i64 0, i32 2, !dbg !3418
  %16 = bitcast %struct.edge_def** %pred to i64*, !dbg !3420
  br label %for.cond, !dbg !3416

for.cond:                                         ; preds = %cleanup, %if.end
  %npred_ok.0 = phi i32 [ 0, %if.end ], [ %npred_ok.2, %cleanup ], !dbg !3405
  %rollback_unoccr.0 = phi %struct.unoccr* [ null, %if.end ], [ %rollback_unoccr.4, %cleanup ], !dbg !3423
  %unavail_occrs.0 = phi %struct.unoccr* [ null, %if.end ], [ %unavail_occrs.2, %cleanup ], !dbg !3424
  %avail_occrs.0 = phi %struct.unoccr* [ null, %if.end ], [ %avail_occrs.2, %cleanup ], !dbg !3425
  %ok_count.0 = phi i64 [ 0, %if.end ], [ %ok_count.2, %cleanup ], !dbg !3405
  %critical_count.0 = phi i64 [ 0, %if.end ], [ %critical_count.1, %cleanup ], !dbg !3405
  %critical_edge_split.0 = phi i8 [ 0, %if.end ], [ %critical_edge_split.4, %cleanup ], !dbg !3426
  %not_ok_count.0 = phi i64 [ 0, %if.end ], [ %not_ok_count.2, %cleanup ], !dbg !3427
  call void @llvm.dbg.value(metadata i64 %not_ok_count.0, metadata !3398, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8 %critical_edge_split.0, metadata !3397, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %critical_count.0, metadata !3395, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %ok_count.0, metadata !3394, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %avail_occrs.0, metadata !3389, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %unavail_occrs.0, metadata !3391, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %rollback_unoccr.0, metadata !3392, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i32 %npred_ok.0, metadata !3393, metadata !DIExpression()), !dbg !3405
  %17 = load i32, i32* %14, align 8, !dbg !3428
  %18 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %15, align 8, !dbg !3428
  call void @llvm.dbg.value(metadata %struct.edge_def** %pred, metadata !3382, metadata !DIExpression(DW_OP_deref)), !dbg !3405
  %call12 = call fastcc zeroext i8 @ei_cond(i32 %17, %struct.VEC_edge_gc** %18, %struct.edge_def** nonnull %pred) #7, !dbg !3428
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3416
  br i1 %tobool13, label %for.end237, label %for.body, !dbg !3416

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3383, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3384, metadata !DIExpression()), !dbg !3405
  %19 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3429
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !3382, metadata !DIExpression()), !dbg !3405
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i64 0, i32 0, !dbg !3430
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3430
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %20, metadata !3399, metadata !DIExpression()), !dbg !3405
  %il14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 7, !dbg !3431
  %rtl15 = bitcast %union.basic_block_il_dependent* %il14 to %struct.rtl_bb_info**, !dbg !3431
  %21 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl15, align 8, !dbg !3431
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %21, i64 0, i32 1, !dbg !3431
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3431
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3431
  %rt_rtx19 = bitcast %union.rtunion_def* %23 to %struct.rtx_def**, !dbg !3431
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx19, align 8, !dbg !3431
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !3400, metadata !DIExpression()), !dbg !3432
  %25 = load %struct.occr*, %struct.occr** %avail_occr, align 8, !dbg !3433
  %call20 = call fastcc %struct.occr* @get_bb_avail_insn(%struct.basic_block_def* %20, %struct.occr* %25) #7, !dbg !3434
  call void @llvm.dbg.value(metadata %struct.occr* %call20, metadata !3387, metadata !DIExpression()), !dbg !3405
  br label %for.cond21, !dbg !3435

for.cond21:                                       ; preds = %for.inc, %for.body
  %a_occr.0 = phi %struct.occr* [ %call20, %for.body ], [ %call46, %for.inc ], !dbg !3418
  %avail_reg.0 = phi %struct.rtx_def* [ null, %for.body ], [ %call25, %for.inc ], !dbg !3432
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3383, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.rtx_def* %avail_reg.0, metadata !3384, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.occr* %a_occr.0, metadata !3387, metadata !DIExpression()), !dbg !3405
  %tobool22 = icmp eq %struct.occr* %a_occr.0, null, !dbg !3436
  br i1 %tobool22, label %for.end, label %for.body23, !dbg !3436

for.body23:                                       ; preds = %for.cond21
  %insn24 = getelementptr inbounds %struct.occr, %struct.occr* %a_occr.0, i64 0, i32 1, !dbg !3437
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn24, align 8, !dbg !3437
  call void @llvm.dbg.value(metadata %struct.rtx_def* %26, metadata !3383, metadata !DIExpression()), !dbg !3405
  %call25 = call fastcc %struct.rtx_def* @get_avail_load_store_reg(%struct.rtx_def* %26) #7, !dbg !3440
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call25, metadata !3384, metadata !DIExpression()), !dbg !3405
  %tobool26 = icmp eq %struct.rtx_def* %call25, null, !dbg !3441
  br i1 %tobool26, label %cond.true, label %cond.end, !dbg !3441

cond.true:                                        ; preds = %for.body23
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 1005, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3441
  br label %cond.end, !dbg !3441

cond.end:                                         ; preds = %for.body23, %cond.true
  %call27 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %4) #6, !dbg !3442
  %call28 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %call25) #6, !dbg !3443
  %call29 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %call27, %struct.rtx_def* %call28) #6, !dbg !3444
  call void @extract_insn(%struct.rtx_def* %call29) #6, !dbg !3445
  %call30 = call i32 @constrain_operands(i32 1) #6, !dbg !3446
  %tobool31 = icmp eq i32 %call30, 0, !dbg !3446
  br i1 %tobool31, label %for.inc, label %lor.lhs.false32, !dbg !3448

lor.lhs.false32:                                  ; preds = %cond.end
  %27 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3449
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !3382, metadata !DIExpression()), !dbg !3405
  %call33 = call fastcc zeroext i8 @reg_killed_on_edge(%struct.rtx_def* %call25, %struct.edge_def* %27) #7, !dbg !3450
  %tobool35 = icmp eq i8 %call33, 0, !dbg !3450
  br i1 %tobool35, label %lor.lhs.false36, label %for.inc, !dbg !3451

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %28 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3452
  call void @llvm.dbg.value(metadata %struct.edge_def* %28, metadata !3382, metadata !DIExpression()), !dbg !3405
  %call37 = call fastcc zeroext i8 @reg_used_on_edge(%struct.rtx_def* %4, %struct.edge_def* %28) #7, !dbg !3453
  %tobool39 = icmp eq i8 %call37, 0, !dbg !3453
  br i1 %tobool39, label %if.end41, label %for.inc, !dbg !3454

if.end41:                                         ; preds = %lor.lhs.false36
  %call42 = call i32 @reg_set_between_p(%struct.rtx_def* %call25, %struct.rtx_def* %26, %struct.rtx_def* %24) #6, !dbg !3455
  %tobool43 = icmp eq i32 %call42, 0, !dbg !3455
  br i1 %tobool43, label %for.end, label %for.inc, !dbg !3457

for.inc:                                          ; preds = %if.end41, %lor.lhs.false36, %lor.lhs.false32, %cond.end
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !3383, metadata !DIExpression()), !dbg !3405
  %next = getelementptr inbounds %struct.occr, %struct.occr* %a_occr.0, i64 0, i32 0, !dbg !3458
  %29 = load %struct.occr*, %struct.occr** %next, align 8, !dbg !3458
  %call46 = call fastcc %struct.occr* @get_bb_avail_insn(%struct.basic_block_def* %20, %struct.occr* %29) #7, !dbg !3459
  call void @llvm.dbg.value(metadata %struct.occr* %call46, metadata !3387, metadata !DIExpression()), !dbg !3405
  br label %for.cond21, !dbg !3460, !llvm.loop !3461

for.end:                                          ; preds = %if.end41, %for.cond21
  %avail_reg.1 = phi %struct.rtx_def* [ %avail_reg.0, %for.cond21 ], [ %call25, %if.end41 ], !dbg !3432
  %avail_insn.2 = phi %struct.rtx_def* [ null, %for.cond21 ], [ %26, %if.end41 ], !dbg !3432
  call void @llvm.dbg.value(metadata %struct.rtx_def* %avail_insn.2, metadata !3383, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.rtx_def* %avail_reg.1, metadata !3384, metadata !DIExpression()), !dbg !3405
  %30 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3463
  call void @llvm.dbg.value(metadata %struct.edge_def* %30, metadata !3382, metadata !DIExpression()), !dbg !3405
  %src47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i64 0, i32 0, !dbg !3463
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %src47, align 8, !dbg !3463
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i64 0, i32 1, !dbg !3463
  %32 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3463
  %tobool48 = icmp eq %struct.VEC_edge_gc* %32, null, !dbg !3463
  br i1 %tobool48, label %cond.end53, label %cond.true49, !dbg !3463

cond.true49:                                      ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.edge_def* %30, metadata !3382, metadata !DIExpression()), !dbg !3405
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %32, i64 0, i32 0, !dbg !3463
  br label %cond.end53, !dbg !3463

cond.end53:                                       ; preds = %for.end, %cond.true49
  %cond54 = phi %struct.VEC_edge_base* [ %base, %cond.true49 ], [ null, %for.end ], !dbg !3463
  %call55 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond54) #7, !dbg !3463
  %cmp = icmp ugt i32 %call55, 1, !dbg !3463
  br i1 %cmp, label %land.lhs.true, label %if.end71, !dbg !3463

land.lhs.true:                                    ; preds = %cond.end53
  %33 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3463
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !3382, metadata !DIExpression()), !dbg !3405
  %dest57 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i64 0, i32 1, !dbg !3463
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %dest57, align 8, !dbg !3463
  %preds58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i64 0, i32 0, !dbg !3463
  %35 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds58, align 8, !dbg !3463
  %tobool59 = icmp eq %struct.VEC_edge_gc* %35, null, !dbg !3463
  br i1 %tobool59, label %cond.end65, label %cond.true60, !dbg !3463

cond.true60:                                      ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !3382, metadata !DIExpression()), !dbg !3405
  %base63 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %35, i64 0, i32 0, !dbg !3463
  br label %cond.end65, !dbg !3463

cond.end65:                                       ; preds = %land.lhs.true, %cond.true60
  %cond66 = phi %struct.VEC_edge_base* [ %base63, %cond.true60 ], [ null, %land.lhs.true ], !dbg !3463
  %call67 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond66) #7, !dbg !3463
  %cmp68 = icmp ugt i32 %call67, 1, !dbg !3463
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !3465

if.then70:                                        ; preds = %cond.end65
  %36 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3466
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !3382, metadata !DIExpression()), !dbg !3405
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 9, !dbg !3467
  %37 = load i64, i64* %count, align 8, !dbg !3467
  %add = add nsw i64 %critical_count.0, %37, !dbg !3468
  call void @llvm.dbg.value(metadata i64 %add, metadata !3395, metadata !DIExpression()), !dbg !3405
  br label %if.end71, !dbg !3469

if.end71:                                         ; preds = %if.then70, %cond.end65, %cond.end53
  %critical_count.1 = phi i64 [ %add, %if.then70 ], [ %critical_count.0, %cond.end65 ], [ %critical_count.0, %cond.end53 ], !dbg !3405
  call void @llvm.dbg.value(metadata i64 %critical_count.1, metadata !3395, metadata !DIExpression()), !dbg !3405
  %cmp72 = icmp eq %struct.rtx_def* %avail_insn.2, null, !dbg !3470
  br i1 %cmp72, label %if.else156, label %if.then74, !dbg !3471

if.then74:                                        ; preds = %if.end71
  %inc = add nsw i32 %npred_ok.0, 1, !dbg !3472
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3393, metadata !DIExpression()), !dbg !3405
  %38 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3473
  call void @llvm.dbg.value(metadata %struct.edge_def* %38, metadata !3382, metadata !DIExpression()), !dbg !3405
  %count75 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i64 0, i32 9, !dbg !3474
  %39 = load i64, i64* %count75, align 8, !dbg !3474
  %add76 = add nsw i64 %ok_count.0, %39, !dbg !3475
  call void @llvm.dbg.value(metadata i64 %add76, metadata !3394, metadata !DIExpression()), !dbg !3405
  %call77 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %4) #6, !dbg !3476
  %call78 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %avail_reg.1) #6, !dbg !3476
  %call79 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %call77, %struct.rtx_def* %call78) #6, !dbg !3476
  %u80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call79, i64 0, i32 1, !dbg !3476
  %40 = getelementptr inbounds %union.u, %union.u* %u80, i64 1, i32 0, i32 0, i64 0, !dbg !3476
  %rt_rtx83 = bitcast %union.rtunion_def* %40 to %struct.rtx_def**, !dbg !3476
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx83, align 8, !dbg !3476
  %call84 = call i32 @set_noop_p(%struct.rtx_def* %41) #6, !dbg !3478
  %tobool85 = icmp eq i32 %call84, 0, !dbg !3478
  br i1 %tobool85, label %if.then86, label %cleanup, !dbg !3479

if.then86:                                        ; preds = %if.then74
  %42 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %42, metadata !3382, metadata !DIExpression()), !dbg !3405
  %src87 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i64 0, i32 0, !dbg !3480
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %src87, align 8, !dbg !3480
  %succs88 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i64 0, i32 1, !dbg !3480
  %44 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs88, align 8, !dbg !3480
  %tobool89 = icmp eq %struct.VEC_edge_gc* %44, null, !dbg !3480
  br i1 %tobool89, label %cond.end95, label %cond.true90, !dbg !3480

cond.true90:                                      ; preds = %if.then86
  call void @llvm.dbg.value(metadata %struct.edge_def* %42, metadata !3382, metadata !DIExpression()), !dbg !3405
  %base93 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %44, i64 0, i32 0, !dbg !3480
  br label %cond.end95, !dbg !3480

cond.end95:                                       ; preds = %if.then86, %cond.true90
  %cond96 = phi %struct.VEC_edge_base* [ %base93, %cond.true90 ], [ null, %if.then86 ], !dbg !3480
  %call97 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond96) #7, !dbg !3480
  %cmp98 = icmp ugt i32 %call97, 1, !dbg !3480
  br i1 %cmp98, label %land.lhs.true100, label %if.end117, !dbg !3480

land.lhs.true100:                                 ; preds = %cond.end95
  %45 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3480
  call void @llvm.dbg.value(metadata %struct.edge_def* %45, metadata !3382, metadata !DIExpression()), !dbg !3405
  %dest101 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i64 0, i32 1, !dbg !3480
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %dest101, align 8, !dbg !3480
  %preds102 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i64 0, i32 0, !dbg !3480
  %47 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds102, align 8, !dbg !3480
  %tobool103 = icmp eq %struct.VEC_edge_gc* %47, null, !dbg !3480
  br i1 %tobool103, label %cond.end109, label %cond.true104, !dbg !3480

cond.true104:                                     ; preds = %land.lhs.true100
  call void @llvm.dbg.value(metadata %struct.edge_def* %45, metadata !3382, metadata !DIExpression()), !dbg !3405
  %base107 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %47, i64 0, i32 0, !dbg !3480
  br label %cond.end109, !dbg !3480

cond.end109:                                      ; preds = %land.lhs.true100, %cond.true104
  %cond110 = phi %struct.VEC_edge_base* [ %base107, %cond.true104 ], [ null, %land.lhs.true100 ], !dbg !3480
  %call111 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond110) #7, !dbg !3480
  %cmp112 = icmp ugt i32 %call111, 1, !dbg !3480
  %spec.select = select i1 %cmp112, i8 1, i8 %critical_edge_split.0, !dbg !3483
  br label %if.end117, !dbg !3483

if.end117:                                        ; preds = %cond.end109, %cond.end95
  %critical_edge_split.1 = phi i8 [ %critical_edge_split.0, %cond.end95 ], [ %spec.select, %cond.end109 ], !dbg !3405
  call void @llvm.dbg.value(metadata i8 %critical_edge_split.1, metadata !3397, metadata !DIExpression()), !dbg !3405
  store i64 24, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 5), align 8, !dbg !3484
  %48 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3484
  %49 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3484
  %sub.ptr.sub = sub i64 %48, %49, !dbg !3484
  %cmp118 = icmp slt i64 %sub.ptr.sub, 24, !dbg !3484
  %50 = inttoptr i64 %49 to i8*, !dbg !3484
  br i1 %cmp118, label %cond.true120, label %cond.end123, !dbg !3484

cond.true120:                                     ; preds = %if.end117
  call void @_obstack_newchunk(%struct.obstack* nonnull @unoccr_obstack, i32 24) #6, !dbg !3484
  %.pre = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 5), align 8, !dbg !3484
  %.pre6 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3), align 8, !dbg !3484
  br label %cond.end123, !dbg !3484

cond.end123:                                      ; preds = %if.end117, %cond.true120
  %51 = phi i8* [ %50, %if.end117 ], [ %.pre6, %cond.true120 ], !dbg !3484
  %52 = phi i64 [ 24, %if.end117 ], [ %.pre, %cond.true120 ], !dbg !3484
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %52, !dbg !3484
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3), align 8, !dbg !3484
  %53 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 2), align 8, !dbg !3484
  %cmp125 = icmp eq i8* %add.ptr, %53, !dbg !3484
  %54 = ptrtoint i8* %53 to i64, !dbg !3484
  %55 = ptrtoint i8* %add.ptr to i64, !dbg !3484
  br i1 %cmp125, label %cond.true127, label %cond.end129, !dbg !3484

cond.true127:                                     ; preds = %cond.end123
  %bf.load = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 10), align 8, !dbg !3484
  %bf.set = or i8 %bf.load, 2, !dbg !3484
  store i8 %bf.set, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 10), align 8, !dbg !3484
  br label %cond.end129, !dbg !3484

cond.end129:                                      ; preds = %cond.end123, %cond.true127
  store i64 %54, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 5), align 8, !dbg !3484
  %56 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 6), align 8, !dbg !3484
  %conv135 = sext i32 %56 to i64, !dbg !3484
  %add136 = add nsw i64 %55, %conv135, !dbg !3484
  %neg = xor i32 %56, -1, !dbg !3484
  %conv137 = sext i32 %neg to i64, !dbg !3484
  %and = and i64 %add136, %conv137, !dbg !3484
  %57 = inttoptr i64 %and to i8*, !dbg !3484
  store i8* %57, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3), align 8, !dbg !3484
  %58 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3484
  %sub.ptr.sub140 = sub i64 %and, %58, !dbg !3484
  %59 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3484
  %sub.ptr.sub143 = sub i64 %59, %58, !dbg !3484
  %cmp144 = icmp sgt i64 %sub.ptr.sub140, %sub.ptr.sub143, !dbg !3484
  %60 = bitcast i8* %53 to %struct.unoccr*, !dbg !3484
  br i1 %cmp144, label %cond.true146, label %cond.end148, !dbg !3484

cond.true146:                                     ; preds = %cond.end129
  store i64 %59, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3484
  br label %cond.end148, !dbg !3484

cond.end148:                                      ; preds = %cond.end129, %cond.true146
  %61 = phi i64 [ %and, %cond.end129 ], [ %59, %cond.true146 ], !dbg !3484
  store i64 %61, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3484
  call void @llvm.dbg.value(metadata %struct.unoccr* %60, metadata !3388, metadata !DIExpression()), !dbg !3405
  %insn150 = getelementptr inbounds i8, i8* %53, i64 16, !dbg !3485
  %62 = bitcast i8* %insn150 to %struct.rtx_def**, !dbg !3485
  store %struct.rtx_def* %avail_insn.2, %struct.rtx_def** %62, align 8, !dbg !3486
  %63 = load i64, i64* %16, align 8, !dbg !3487
  %pred151 = getelementptr inbounds i8, i8* %53, i64 8, !dbg !3488
  %64 = bitcast i8* %pred151 to i64*, !dbg !3489
  store i64 %63, i64* %64, align 8, !dbg !3489
  %next152 = bitcast i8* %53 to %struct.unoccr**, !dbg !3490
  store %struct.unoccr* %avail_occrs.0, %struct.unoccr** %next152, align 8, !dbg !3491
  call void @llvm.dbg.value(metadata %struct.unoccr* %60, metadata !3389, metadata !DIExpression()), !dbg !3405
  %tobool153 = icmp eq %struct.unoccr* %rollback_unoccr.0, null, !dbg !3492
  %spec.select1 = select i1 %tobool153, %struct.unoccr* %60, %struct.unoccr* %rollback_unoccr.0, !dbg !3494
  call void @llvm.dbg.value(metadata %struct.unoccr* %spec.select1, metadata !3392, metadata !DIExpression()), !dbg !3405
  br label %cleanup, !dbg !3495

if.else156:                                       ; preds = %if.end71
  %65 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.edge_def* %65, metadata !3382, metadata !DIExpression()), !dbg !3405
  %src157 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %65, i64 0, i32 0, !dbg !3496
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %src157, align 8, !dbg !3496
  %succs158 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %66, i64 0, i32 1, !dbg !3496
  %67 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs158, align 8, !dbg !3496
  %tobool159 = icmp eq %struct.VEC_edge_gc* %67, null, !dbg !3496
  br i1 %tobool159, label %cond.end165, label %cond.true160, !dbg !3496

cond.true160:                                     ; preds = %if.else156
  call void @llvm.dbg.value(metadata %struct.edge_def* %65, metadata !3382, metadata !DIExpression()), !dbg !3405
  %base163 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %67, i64 0, i32 0, !dbg !3496
  br label %cond.end165, !dbg !3496

cond.end165:                                      ; preds = %if.else156, %cond.true160
  %cond166 = phi %struct.VEC_edge_base* [ %base163, %cond.true160 ], [ null, %if.else156 ], !dbg !3496
  %call167 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond166) #7, !dbg !3496
  %cmp168 = icmp ugt i32 %call167, 1, !dbg !3496
  br i1 %cmp168, label %land.lhs.true170, label %if.end185, !dbg !3496

land.lhs.true170:                                 ; preds = %cond.end165
  %68 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3496
  call void @llvm.dbg.value(metadata %struct.edge_def* %68, metadata !3382, metadata !DIExpression()), !dbg !3405
  %dest171 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %68, i64 0, i32 1, !dbg !3496
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %dest171, align 8, !dbg !3496
  %preds172 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i64 0, i32 0, !dbg !3496
  %70 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds172, align 8, !dbg !3496
  %tobool173 = icmp eq %struct.VEC_edge_gc* %70, null, !dbg !3496
  br i1 %tobool173, label %cond.end179, label %cond.true174, !dbg !3496

cond.true174:                                     ; preds = %land.lhs.true170
  call void @llvm.dbg.value(metadata %struct.edge_def* %68, metadata !3382, metadata !DIExpression()), !dbg !3405
  %base177 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %70, i64 0, i32 0, !dbg !3496
  br label %cond.end179, !dbg !3496

cond.end179:                                      ; preds = %land.lhs.true170, %cond.true174
  %cond180 = phi %struct.VEC_edge_base* [ %base177, %cond.true174 ], [ null, %land.lhs.true170 ], !dbg !3496
  %call181 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond180) #7, !dbg !3496
  %cmp182 = icmp ugt i32 %call181, 1, !dbg !3496
  %spec.select2 = select i1 %cmp182, i8 1, i8 %critical_edge_split.0, !dbg !3499
  br label %if.end185, !dbg !3499

if.end185:                                        ; preds = %cond.end179, %cond.end165
  %critical_edge_split.2 = phi i8 [ %critical_edge_split.0, %cond.end165 ], [ %spec.select2, %cond.end179 ], !dbg !3405
  call void @llvm.dbg.value(metadata i8 %critical_edge_split.2, metadata !3397, metadata !DIExpression()), !dbg !3405
  %71 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.edge_def* %71, metadata !3382, metadata !DIExpression()), !dbg !3405
  %count186 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i64 0, i32 9, !dbg !3501
  %72 = load i64, i64* %count186, align 8, !dbg !3501
  %add187 = add nsw i64 %not_ok_count.0, %72, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %add187, metadata !3398, metadata !DIExpression()), !dbg !3405
  store i64 24, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 5), align 8, !dbg !3503
  %73 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3503
  %74 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3503
  %sub.ptr.sub190 = sub i64 %73, %74, !dbg !3503
  %cmp191 = icmp slt i64 %sub.ptr.sub190, 24, !dbg !3503
  %75 = inttoptr i64 %74 to i8*, !dbg !3503
  br i1 %cmp191, label %cond.true193, label %cond.end196, !dbg !3503

cond.true193:                                     ; preds = %if.end185
  call void @_obstack_newchunk(%struct.obstack* nonnull @unoccr_obstack, i32 24) #6, !dbg !3503
  %.pre7 = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 5), align 8, !dbg !3503
  %.pre8 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3), align 8, !dbg !3503
  br label %cond.end196, !dbg !3503

cond.end196:                                      ; preds = %if.end185, %cond.true193
  %76 = phi i8* [ %75, %if.end185 ], [ %.pre8, %cond.true193 ], !dbg !3503
  %77 = phi i64 [ 24, %if.end185 ], [ %.pre7, %cond.true193 ], !dbg !3503
  %add.ptr198 = getelementptr inbounds i8, i8* %76, i64 %77, !dbg !3503
  store i8* %add.ptr198, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3), align 8, !dbg !3503
  %78 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 2), align 8, !dbg !3503
  %cmp199 = icmp eq i8* %add.ptr198, %78, !dbg !3503
  %79 = ptrtoint i8* %78 to i64, !dbg !3503
  %80 = ptrtoint i8* %add.ptr198 to i64, !dbg !3503
  br i1 %cmp199, label %cond.true201, label %cond.end206, !dbg !3503

cond.true201:                                     ; preds = %cond.end196
  %bf.load202 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 10), align 8, !dbg !3503
  %bf.set204 = or i8 %bf.load202, 2, !dbg !3503
  store i8 %bf.set204, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 10), align 8, !dbg !3503
  br label %cond.end206, !dbg !3503

cond.end206:                                      ; preds = %cond.end196, %cond.true201
  store i64 %79, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 5), align 8, !dbg !3503
  %81 = load i32, i32* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 6), align 8, !dbg !3503
  %conv212 = sext i32 %81 to i64, !dbg !3503
  %add213 = add nsw i64 %80, %conv212, !dbg !3503
  %neg214 = xor i32 %81, -1, !dbg !3503
  %conv215 = sext i32 %neg214 to i64, !dbg !3503
  %and216 = and i64 %add213, %conv215, !dbg !3503
  %82 = inttoptr i64 %and216 to i8*, !dbg !3503
  store i8* %82, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3), align 8, !dbg !3503
  %83 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3503
  %sub.ptr.sub219 = sub i64 %and216, %83, !dbg !3503
  %84 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3503
  %sub.ptr.sub222 = sub i64 %84, %83, !dbg !3503
  %cmp223 = icmp sgt i64 %sub.ptr.sub219, %sub.ptr.sub222, !dbg !3503
  %85 = bitcast i8* %78 to %struct.unoccr*, !dbg !3503
  br i1 %cmp223, label %cond.true225, label %cond.end227, !dbg !3503

cond.true225:                                     ; preds = %cond.end206
  store i64 %84, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3) to i64*), align 8, !dbg !3503
  br label %cond.end227, !dbg !3503

cond.end227:                                      ; preds = %cond.end206, %cond.true225
  %86 = phi i64 [ %and216, %cond.end206 ], [ %84, %cond.true225 ], !dbg !3503
  store i64 %86, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 2) to i64*), align 8, !dbg !3503
  call void @llvm.dbg.value(metadata %struct.unoccr* %85, metadata !3390, metadata !DIExpression()), !dbg !3405
  %insn229 = getelementptr inbounds i8, i8* %78, i64 16, !dbg !3504
  %87 = bitcast i8* %insn229 to %struct.rtx_def**, !dbg !3504
  store %struct.rtx_def* null, %struct.rtx_def** %87, align 8, !dbg !3505
  %88 = load i64, i64* %16, align 8, !dbg !3506
  %pred230 = getelementptr inbounds i8, i8* %78, i64 8, !dbg !3507
  %89 = bitcast i8* %pred230 to i64*, !dbg !3508
  store i64 %88, i64* %89, align 8, !dbg !3508
  %next231 = bitcast i8* %78 to %struct.unoccr**, !dbg !3509
  store %struct.unoccr* %unavail_occrs.0, %struct.unoccr** %next231, align 8, !dbg !3510
  call void @llvm.dbg.value(metadata %struct.unoccr* %85, metadata !3391, metadata !DIExpression()), !dbg !3405
  %tobool232 = icmp eq %struct.unoccr* %rollback_unoccr.0, null, !dbg !3511
  %spec.select3 = select i1 %tobool232, %struct.unoccr* %85, %struct.unoccr* %rollback_unoccr.0, !dbg !3513
  call void @llvm.dbg.value(metadata %struct.unoccr* %spec.select3, metadata !3392, metadata !DIExpression()), !dbg !3405
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %cond.end148, %cond.end227
  %npred_ok.2 = phi i32 [ %inc, %if.then74 ], [ %inc, %cond.end148 ], [ %npred_ok.0, %cond.end227 ], !dbg !3472
  %rollback_unoccr.4 = phi %struct.unoccr* [ %rollback_unoccr.0, %if.then74 ], [ %spec.select1, %cond.end148 ], [ %spec.select3, %cond.end227 ], !dbg !3423
  %unavail_occrs.2 = phi %struct.unoccr* [ %unavail_occrs.0, %if.then74 ], [ %unavail_occrs.0, %cond.end148 ], [ %85, %cond.end227 ], !dbg !3424
  %avail_occrs.2 = phi %struct.unoccr* [ %avail_occrs.0, %if.then74 ], [ %60, %cond.end148 ], [ %avail_occrs.0, %cond.end227 ], !dbg !3405
  %ok_count.2 = phi i64 [ %add76, %if.then74 ], [ %add76, %cond.end148 ], [ %ok_count.0, %cond.end227 ], !dbg !3475
  %critical_edge_split.4 = phi i8 [ %critical_edge_split.0, %if.then74 ], [ %critical_edge_split.1, %cond.end148 ], [ %critical_edge_split.2, %cond.end227 ], !dbg !3405
  %not_ok_count.2 = phi i64 [ %not_ok_count.0, %if.then74 ], [ %not_ok_count.0, %cond.end148 ], [ %add187, %cond.end227 ], !dbg !3427
  call void @llvm.dbg.value(metadata i64 %not_ok_count.2, metadata !3398, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8 %critical_edge_split.4, metadata !3397, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %ok_count.2, metadata !3394, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %avail_occrs.2, metadata !3389, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %unavail_occrs.2, metadata !3391, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %rollback_unoccr.4, metadata !3392, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i32 %npred_ok.2, metadata !3393, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3396, metadata !DIExpression(DW_OP_deref)), !dbg !3405
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3428
  br label %for.cond, !dbg !3428, !llvm.loop !3514

for.end237:                                       ; preds = %for.cond
  %npred_ok.0.lcssa = phi i32 [ %npred_ok.0, %for.cond ], !dbg !3405
  %rollback_unoccr.0.lcssa = phi %struct.unoccr* [ %rollback_unoccr.0, %for.cond ], !dbg !3423
  %unavail_occrs.0.lcssa = phi %struct.unoccr* [ %unavail_occrs.0, %for.cond ], !dbg !3424
  %avail_occrs.0.lcssa = phi %struct.unoccr* [ %avail_occrs.0, %for.cond ], !dbg !3425
  %ok_count.0.lcssa = phi i64 [ %ok_count.0, %for.cond ], !dbg !3405
  %critical_count.0.lcssa = phi i64 [ %critical_count.0, %for.cond ], !dbg !3405
  %critical_edge_split.0.lcssa = phi i8 [ %critical_edge_split.0, %for.cond ], !dbg !3426
  %not_ok_count.0.lcssa = phi i64 [ %not_ok_count.0, %for.cond ], !dbg !3427
  call void @llvm.dbg.value(metadata i32 %npred_ok.0.lcssa, metadata !3393, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %rollback_unoccr.0.lcssa, metadata !3392, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %unavail_occrs.0.lcssa, metadata !3391, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %avail_occrs.0.lcssa, metadata !3389, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %ok_count.0.lcssa, metadata !3394, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %critical_count.0.lcssa, metadata !3395, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8 %critical_edge_split.0.lcssa, metadata !3397, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %not_ok_count.0.lcssa, metadata !3398, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i32 %npred_ok.0.lcssa, metadata !3393, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %rollback_unoccr.0.lcssa, metadata !3392, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %unavail_occrs.0.lcssa, metadata !3391, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %avail_occrs.0.lcssa, metadata !3389, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %ok_count.0.lcssa, metadata !3394, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %critical_count.0.lcssa, metadata !3395, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8 %critical_edge_split.0.lcssa, metadata !3397, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %not_ok_count.0.lcssa, metadata !3398, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i32 %npred_ok.0.lcssa, metadata !3393, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %rollback_unoccr.0.lcssa, metadata !3392, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %unavail_occrs.0.lcssa, metadata !3391, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.unoccr* %avail_occrs.0.lcssa, metadata !3389, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %ok_count.0.lcssa, metadata !3394, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %critical_count.0.lcssa, metadata !3395, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i8 %critical_edge_split.0.lcssa, metadata !3397, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 %not_ok_count.0.lcssa, metadata !3398, metadata !DIExpression()), !dbg !3405
  %cmp238 = icmp eq i32 %npred_ok.0.lcssa, 0, !dbg !3516
  br i1 %cmp238, label %cleanup351, label %lor.lhs.false240, !dbg !3518

lor.lhs.false240:                                 ; preds = %for.end237
  %call241 = call zeroext i8 @optimize_bb_for_size_p(%struct.basic_block_def* %bb) #6, !dbg !3519
  %tobool243 = icmp ne i8 %call241, 0, !dbg !3519
  %cmp245 = icmp sgt i32 %npred_ok.0.lcssa, 1, !dbg !3520
  %or.cond = and i1 %tobool243, %cmp245, !dbg !3521
  br i1 %or.cond, label %cleanup351, label %lor.lhs.false247, !dbg !3521

lor.lhs.false247:                                 ; preds = %lor.lhs.false240
  %90 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** @profile_info, align 8, !dbg !3522
  %tobool248 = icmp ne %struct.gcov_ctr_summary* %90, null, !dbg !3522
  %91 = load i32, i32* @flag_branch_probabilities, align 4, !dbg !3523
  %tobool250 = icmp ne i32 %91, 0, !dbg !3523
  %or.cond4 = and i1 %tobool248, %tobool250, !dbg !3524
  br i1 %or.cond4, label %lor.lhs.false251, label %land.lhs.true255, !dbg !3524

lor.lhs.false251:                                 ; preds = %lor.lhs.false247
  %92 = load i8 ()*, i8 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 32), align 8, !dbg !3525
  %call252 = call zeroext i8 %92() #6, !dbg !3526
  %tobool254 = icmp eq i8 %call252, 0, !dbg !3526
  br i1 %tobool254, label %if.end259, label %land.lhs.true255, !dbg !3527

land.lhs.true255:                                 ; preds = %lor.lhs.false251, %lor.lhs.false247
  %tobool257 = icmp eq i8 %critical_edge_split.0.lcssa, 0, !dbg !3528
  br i1 %tobool257, label %if.end259, label %cleanup351, !dbg !3529

if.end259:                                        ; preds = %lor.lhs.false251, %land.lhs.true255
  %93 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !3530
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %93, i64 24, i32 1, !dbg !3530
  %94 = load i32, i32* %value, align 8, !dbg !3530
  %conv261 = sext i32 %94 to i64, !dbg !3530
  %mul = mul nsw i64 %not_ok_count.0.lcssa, %conv261, !dbg !3532
  %cmp262 = icmp slt i64 %ok_count.0.lcssa, %mul, !dbg !3533
  br i1 %cmp262, label %cleanup351, label %if.end265, !dbg !3534

if.end265:                                        ; preds = %if.end259
  %value267 = getelementptr inbounds %struct.param_info, %struct.param_info* %93, i64 25, i32 1, !dbg !3535
  %95 = load i32, i32* %value267, align 8, !dbg !3535
  %conv268 = sext i32 %95 to i64, !dbg !3535
  %mul269 = mul nsw i64 %critical_count.0.lcssa, %conv268, !dbg !3537
  %cmp270 = icmp slt i64 %ok_count.0.lcssa, %mul269, !dbg !3538
  br i1 %cmp270, label %cleanup351, label %for.cond274.preheader, !dbg !3539

for.cond274.preheader:                            ; preds = %if.end265
  br label %for.cond274, !dbg !3540

for.cond274:                                      ; preds = %for.cond274.preheader, %for.inc298
  %occr.0 = phi %struct.unoccr* [ %107, %for.inc298 ], [ %avail_occrs.0.lcssa, %for.cond274.preheader ], !dbg !3542
  call void @llvm.dbg.value(metadata %struct.unoccr* %occr.0, metadata !3388, metadata !DIExpression()), !dbg !3405
  %tobool275 = icmp eq %struct.unoccr* %occr.0, null, !dbg !3540
  br i1 %tobool275, label %for.cond301.preheader, label %for.body276, !dbg !3540

for.cond301.preheader:                            ; preds = %for.cond274
  br label %for.cond301, !dbg !3543

for.body276:                                      ; preds = %for.cond274
  %insn277 = getelementptr inbounds %struct.unoccr, %struct.unoccr* %occr.0, i64 0, i32 2, !dbg !3545
  %96 = load %struct.rtx_def*, %struct.rtx_def** %insn277, align 8, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.rtx_def* %96, metadata !3383, metadata !DIExpression()), !dbg !3405
  %pred278 = getelementptr inbounds %struct.unoccr, %struct.unoccr* %occr.0, i64 0, i32 1, !dbg !3548
  %97 = bitcast %struct.edge_def** %pred278 to i64*, !dbg !3548
  %98 = load i64, i64* %97, align 8, !dbg !3548
  store i64 %98, i64* %16, align 8, !dbg !3549
  %call279 = call fastcc %struct.rtx_def* @get_avail_load_store_reg(%struct.rtx_def* %96) #7, !dbg !3550
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call279, metadata !3384, metadata !DIExpression()), !dbg !3405
  %tobool280 = icmp eq %struct.rtx_def* %call279, null, !dbg !3551
  br i1 %tobool280, label %cond.true281, label %cond.end283, !dbg !3551

cond.true281:                                     ; preds = %for.body276
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 1093, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3551
  br label %cond.end283, !dbg !3551

cond.end283:                                      ; preds = %for.body276, %cond.true281
  %call285 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %4) #6, !dbg !3552
  %call286 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %call279) #6, !dbg !3553
  %call287 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %call285, %struct.rtx_def* %call286) #6, !dbg !3554
  %99 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3555
  call void @llvm.dbg.value(metadata %struct.edge_def* %99, metadata !3382, metadata !DIExpression()), !dbg !3405
  call void @insert_insn_on_edge(%struct.rtx_def* %call287, %struct.edge_def* %99) #6, !dbg !3556
  %100 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 0), align 4, !dbg !3557
  %inc288 = add nsw i32 %100, 1, !dbg !3557
  store i32 %inc288, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 0), align 4, !dbg !3557
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3558
  %tobool289 = icmp eq %struct._IO_FILE* %101, null, !dbg !3558
  br i1 %tobool289, label %for.inc298, label %if.then290, !dbg !3560

if.then290:                                       ; preds = %cond.end283
  %call291 = call fastcc i32 @rhs_regno(%struct.rtx_def* %call279) #7, !dbg !3561
  %call292 = call fastcc i32 @rhs_regno(%struct.rtx_def* %4) #7, !dbg !3562
  %102 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3563
  call void @llvm.dbg.value(metadata %struct.edge_def* %102, metadata !3382, metadata !DIExpression()), !dbg !3405
  %src293 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %102, i64 0, i32 0, !dbg !3564
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %src293, align 8, !dbg !3564
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %103, i64 0, i32 9, !dbg !3565
  %104 = load i32, i32* %index, align 8, !dbg !3565
  call void @llvm.dbg.value(metadata %struct.edge_def* %102, metadata !3382, metadata !DIExpression()), !dbg !3405
  %dest294 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %102, i64 0, i32 1, !dbg !3566
  %105 = load %struct.basic_block_def*, %struct.basic_block_def** %dest294, align 8, !dbg !3566
  %index295 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %105, i64 0, i32 9, !dbg !3567
  %106 = load i32, i32* %index295, align 8, !dbg !3567
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %101, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i32 %call291, i32 %call292, i32 %104, i32 %106) #6, !dbg !3568
  br label %for.inc298, !dbg !3568

for.inc298:                                       ; preds = %cond.end283, %if.then290
  %next299 = getelementptr inbounds %struct.unoccr, %struct.unoccr* %occr.0, i64 0, i32 0, !dbg !3569
  %107 = load %struct.unoccr*, %struct.unoccr** %next299, align 8, !dbg !3569
  call void @llvm.dbg.value(metadata %struct.unoccr* %107, metadata !3388, metadata !DIExpression()), !dbg !3405
  br label %for.cond274, !dbg !3570, !llvm.loop !3571

for.cond301:                                      ; preds = %for.cond301.preheader, %for.inc324
  %unoccr.0 = phi %struct.unoccr* [ %122, %for.inc324 ], [ %unavail_occrs.0.lcssa, %for.cond301.preheader ], !dbg !3573
  call void @llvm.dbg.value(metadata %struct.unoccr* %unoccr.0, metadata !3390, metadata !DIExpression()), !dbg !3405
  %tobool302 = icmp eq %struct.unoccr* %unoccr.0, null, !dbg !3543
  br i1 %tobool302, label %for.end326, label %for.body303, !dbg !3543

for.body303:                                      ; preds = %for.cond301
  %pred304 = getelementptr inbounds %struct.unoccr, %struct.unoccr* %unoccr.0, i64 0, i32 1, !dbg !3574
  %108 = bitcast %struct.edge_def** %pred304 to i64*, !dbg !3574
  %109 = load i64, i64* %108, align 8, !dbg !3574
  store i64 %109, i64* %16, align 8, !dbg !3577
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3578
  %call309 = call %struct.rtx_def* @copy_insn(%struct.rtx_def* %110) #6, !dbg !3579
  %111 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3580
  call void @llvm.dbg.value(metadata %struct.edge_def* %111, metadata !3382, metadata !DIExpression()), !dbg !3405
  call void @insert_insn_on_edge(%struct.rtx_def* %call309, %struct.edge_def* %111) #6, !dbg !3581
  %112 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 1), align 4, !dbg !3582
  %inc310 = add nsw i32 %112, 1, !dbg !3582
  store i32 %inc310, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 1), align 4, !dbg !3582
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3583
  %tobool311 = icmp eq %struct._IO_FILE* %113, null, !dbg !3583
  br i1 %tobool311, label %for.inc324, label %if.then312, !dbg !3585

if.then312:                                       ; preds = %for.body303
  %114 = load %struct.edge_def*, %struct.edge_def** %pred, align 8, !dbg !3586
  call void @llvm.dbg.value(metadata %struct.edge_def* %114, metadata !3382, metadata !DIExpression()), !dbg !3405
  %src313 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %114, i64 0, i32 0, !dbg !3588
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %src313, align 8, !dbg !3588
  %index314 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %115, i64 0, i32 9, !dbg !3589
  %116 = load i32, i32* %index314, align 8, !dbg !3589
  call void @llvm.dbg.value(metadata %struct.edge_def* %114, metadata !3382, metadata !DIExpression()), !dbg !3405
  %dest315 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %114, i64 0, i32 1, !dbg !3590
  %117 = load %struct.basic_block_def*, %struct.basic_block_def** %dest315, align 8, !dbg !3590
  %index316 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %117, i64 0, i32 9, !dbg !3591
  %118 = load i32, i32* %index316, align 8, !dbg !3591
  %call317 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %113, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i32 %116, i32 %118) #6, !dbg !3592
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3593
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3594
  call void @print_rtl(%struct._IO_FILE* %119, %struct.rtx_def* %120) #6, !dbg !3595
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3596
  %call322 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3597
  br label %for.inc324, !dbg !3598

for.inc324:                                       ; preds = %for.body303, %if.then312
  %next325 = getelementptr inbounds %struct.unoccr, %struct.unoccr* %unoccr.0, i64 0, i32 0, !dbg !3599
  %122 = load %struct.unoccr*, %struct.unoccr** %next325, align 8, !dbg !3599
  call void @llvm.dbg.value(metadata %struct.unoccr* %122, metadata !3390, metadata !DIExpression()), !dbg !3405
  br label %for.cond301, !dbg !3600, !llvm.loop !3601

for.end326:                                       ; preds = %for.cond301
  %123 = load %struct.occr*, %struct.occr** %avail_occr, align 8, !dbg !3603
  %call328 = call fastcc %struct.occr* @get_bb_avail_insn(%struct.basic_block_def* %bb, %struct.occr* %123) #7, !dbg !3605
  call void @llvm.dbg.value(metadata %struct.occr* %call328, metadata !3387, metadata !DIExpression()), !dbg !3405
  br label %for.cond329, !dbg !3606

for.cond329:                                      ; preds = %for.inc335, %for.end326
  %a_occr.1 = phi %struct.occr* [ %call328, %for.end326 ], [ %call337, %for.inc335 ], !dbg !3607
  call void @llvm.dbg.value(metadata %struct.occr* %a_occr.1, metadata !3387, metadata !DIExpression()), !dbg !3405
  %cond = icmp eq %struct.occr* %a_occr.1, null, !dbg !3608
  br i1 %cond, label %if.then340.loopexit, label %land.rhs, !dbg !3608

land.rhs:                                         ; preds = %for.cond329
  %insn331 = getelementptr inbounds %struct.occr, %struct.occr* %a_occr.1, i64 0, i32 1, !dbg !3610
  %124 = load %struct.rtx_def*, %struct.rtx_def** %insn331, align 8, !dbg !3610
  %cmp332 = icmp eq %struct.rtx_def* %124, %insn, !dbg !3611
  br i1 %cmp332, label %for.end338, label %for.inc335, !dbg !3612

for.inc335:                                       ; preds = %land.rhs
  %next336 = getelementptr inbounds %struct.occr, %struct.occr* %a_occr.1, i64 0, i32 0, !dbg !3613
  %125 = load %struct.occr*, %struct.occr** %next336, align 8, !dbg !3613
  %call337 = call fastcc %struct.occr* @get_bb_avail_insn(%struct.basic_block_def* %bb, %struct.occr* %125) #7, !dbg !3614
  call void @llvm.dbg.value(metadata %struct.occr* %call337, metadata !3387, metadata !DIExpression()), !dbg !3405
  br label %for.cond329, !dbg !3615, !llvm.loop !3616

for.end338:                                       ; preds = %land.rhs
  %a_occr.1.lcssa10 = phi %struct.occr* [ %a_occr.1, %land.rhs ], !dbg !3607
  call void @llvm.dbg.value(metadata %struct.occr* %a_occr.1.lcssa10, metadata !3387, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.occr* %a_occr.1.lcssa10, metadata !3387, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata %struct.occr* %a_occr.1.lcssa10, metadata !3387, metadata !DIExpression()), !dbg !3405
  %deleted_p = getelementptr inbounds %struct.occr, %struct.occr* %a_occr.1.lcssa10, i64 0, i32 2, !dbg !3618
  store i8 1, i8* %deleted_p, align 8, !dbg !3620
  br label %cleanup351

if.then340.loopexit:                              ; preds = %for.cond329
  %126 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 2), align 4, !dbg !3621
  %inc341 = add nsw i32 %126, 1, !dbg !3621
  store i32 %inc341, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 2), align 4, !dbg !3621
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3623
  %tobool342 = icmp eq %struct._IO_FILE* %127, null, !dbg !3623
  br i1 %tobool342, label %if.end347, label %if.then343, !dbg !3625

if.then343:                                       ; preds = %if.then340.loopexit
  %call344 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3626
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3628
  %call345 = call i32 @print_rtl_single(%struct._IO_FILE* %128, %struct.rtx_def* %insn) #6, !dbg !3629
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3630
  %call346 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3631
  br label %if.end347, !dbg !3632

if.end347:                                        ; preds = %if.then340.loopexit, %if.then343
  %call348 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %insn) #6, !dbg !3633
  br label %cleanup351, !dbg !3634

cleanup351:                                       ; preds = %land.lhs.true255, %if.end347, %for.end338, %if.end265, %if.end259, %for.end237, %lor.lhs.false240
  call void @llvm.dbg.label(metadata !3404), !dbg !3635
  %tobool352 = icmp eq %struct.unoccr* %rollback_unoccr.0.lcssa, null, !dbg !3636
  br i1 %tobool352, label %cleanup372, label %if.then353, !dbg !3638

if.then353:                                       ; preds = %cleanup351
  %130 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 1) to i64*), align 8, !dbg !3639
  %sub.ptr.lhs.cast354 = ptrtoint %struct.unoccr* %rollback_unoccr.0.lcssa to i64, !dbg !3639
  %sub.ptr.sub356 = sub i64 %sub.ptr.lhs.cast354, %130, !dbg !3639
  store i64 %sub.ptr.sub356, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 5), align 8, !dbg !3639
  %cmp357 = icmp sgt i64 %sub.ptr.sub356, 0, !dbg !3639
  %131 = inttoptr i64 %130 to i8*, !dbg !3639
  br i1 %cmp357, label %land.lhs.true359, label %cond.false367, !dbg !3639

land.lhs.true359:                                 ; preds = %if.then353
  %132 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 4) to i64*), align 8, !dbg !3639
  %sub.ptr.sub362 = sub i64 %132, %130, !dbg !3639
  %cmp363 = icmp slt i64 %sub.ptr.sub356, %sub.ptr.sub362, !dbg !3639
  br i1 %cmp363, label %cond.true365, label %cond.false367, !dbg !3639

cond.true365:                                     ; preds = %land.lhs.true359
  %add.ptr366 = getelementptr inbounds i8, i8* %131, i64 %sub.ptr.sub356, !dbg !3639
  store i8* %add.ptr366, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 2), align 8, !dbg !3639
  store i8* %add.ptr366, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @unoccr_obstack, i64 0, i32 3), align 8, !dbg !3639
  br label %cleanup372, !dbg !3639

cond.false367:                                    ; preds = %land.lhs.true359, %if.then353
  %add.ptr368 = getelementptr inbounds i8, i8* %131, i64 %sub.ptr.sub356, !dbg !3639
  call void @obstack_free(%struct.obstack* nonnull @unoccr_obstack, i8* %add.ptr368) #6, !dbg !3639
  br label %cleanup372, !dbg !3639

cleanup372:                                       ; preds = %cleanup351, %lor.lhs.false, %entry, %cond.false367, %cond.true365
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3640
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3640
  ret void, !dbg !3640
}

declare dso_local void @commit_edge_insertions() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3641 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3647, metadata !DIExpression()), !dbg !3648
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3649
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3649

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3649
  %0 = load i32, i32* %num, align 8, !dbg !3649
  br label %cond.end, !dbg !3649

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3649
  ret i32 %cond, !dbg !3649
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3650 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3654, metadata !DIExpression()), !dbg !3656
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3657
  store i32 0, i32* %index, align 8, !dbg !3658
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3659
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3660
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3661
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3661
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3661
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3662 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3668, metadata !DIExpression()), !dbg !3669
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3670
  %tobool = icmp eq i8 %call, 0, !dbg !3670
  br i1 %tobool, label %if.then, label %if.else, !dbg !3672

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3673
  br label %return, !dbg !3675

if.else:                                          ; preds = %entry
  br label %return, !dbg !3676

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3678
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3678
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3678
  ret i8 %retval.0, !dbg !3679
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3680 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3685, metadata !DIExpression()), !dbg !3686
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3687
  %0 = load i32, i32* %index, align 8, !dbg !3687
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3687
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3687
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3687
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3687
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3687

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3687
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3687
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3687
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3687
  br label %cond.end, !dbg !3687

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3687
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3687
  %cmp = icmp ult i32 %0, %call2, !dbg !3687
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3687

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3687
  br label %cond.end5, !dbg !3687

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3688
  %inc = add i32 %5, 1, !dbg !3688
  store i32 %inc, i32* %index, align 8, !dbg !3688
  ret void, !dbg !3689
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3690 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3695
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3695
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3695

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3695
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3695
  br label %cond.end, !dbg !3695

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3695
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3695
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3696
  %conv3 = zext i1 %cmp to i8, !dbg !3697
  ret i8 %conv3, !dbg !3698
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3699 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3704
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3704
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3704

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3704
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3704
  br label %cond.end, !dbg !3704

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3704
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3704
  ret %struct.edge_def* %call2, !dbg !3705
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3706 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3711
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3711

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3711
  br label %cond.end, !dbg !3711

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3712
  ret %struct.VEC_edge_gc* %0, !dbg !3713
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3714 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3718, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3719, metadata !DIExpression()), !dbg !3720
  br label %land.end, !dbg !3721

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3721
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3721
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3721
  ret %struct.edge_def* %0, !dbg !3721
}

declare dso_local i32 @reg_used_between_p(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.occr* @get_bb_avail_insn(%struct.basic_block_def* %bb, %struct.occr* %occr) unnamed_addr #4 !dbg !3722 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3726, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata %struct.occr* %occr, metadata !3727, metadata !DIExpression()), !dbg !3728
  br label %for.cond, !dbg !3729

for.cond:                                         ; preds = %for.inc, %entry
  %occr.addr.0 = phi %struct.occr* [ %occr, %entry ], [ %2, %for.inc ]
  call void @llvm.dbg.value(metadata %struct.occr* %occr.addr.0, metadata !3727, metadata !DIExpression()), !dbg !3728
  %cmp = icmp eq %struct.occr* %occr.addr.0, null, !dbg !3730
  br i1 %cmp, label %return, label %for.body, !dbg !3733

for.body:                                         ; preds = %for.cond
  %insn = getelementptr inbounds %struct.occr, %struct.occr* %occr.addr.0, i64 0, i32 1, !dbg !3734
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3734
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 1, !dbg !3734
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !3734
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !3734
  %cmp1 = icmp eq %struct.basic_block_def* %1, %bb, !dbg !3736
  br i1 %cmp1, label %return, label %for.inc, !dbg !3737

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.occr, %struct.occr* %occr.addr.0, i64 0, i32 0, !dbg !3738
  %2 = load %struct.occr*, %struct.occr** %next, align 8, !dbg !3738
  call void @llvm.dbg.value(metadata %struct.occr* %2, metadata !3727, metadata !DIExpression()), !dbg !3728
  br label %for.cond, !dbg !3739, !llvm.loop !3740

return:                                           ; preds = %for.cond, %for.body
  %retval.0 = phi %struct.occr* [ %occr.addr.0, %for.body ], [ null, %for.cond ], !dbg !3728
  ret %struct.occr* %retval.0, !dbg !3742
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @get_avail_load_store_reg(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !3743 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3747, metadata !DIExpression()), !dbg !3748
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3749
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3749
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !3749
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3749
  %arrayidx3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3749
  %2 = bitcast %union.rtunion_def* %arrayidx3 to i32**, !dbg !3749
  %3 = load i32*, i32** %2, align 8, !dbg !3749
  %bf.load = load i32, i32* %3, align 8, !dbg !3749
  %bf.clear = and i32 %bf.load, 65535, !dbg !3749
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !3749
  br i1 %cmp, label %if.then, label %if.else, !dbg !3751

if.then:                                          ; preds = %entry
  br label %return, !dbg !3752

if.else:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3753
  %5 = bitcast %union.rtunion_def* %4 to i32**, !dbg !3753
  %6 = load i32*, i32** %5, align 8, !dbg !3753
  %bf.load21 = load i32, i32* %6, align 8, !dbg !3753
  %bf.clear22 = and i32 %bf.load21, 65535, !dbg !3753
  %cmp23 = icmp eq i32 %bf.clear22, 37, !dbg !3753
  br i1 %cmp23, label %cond.end, label %cond.true, !dbg !3753

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 906, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3753
  %.pre = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3755
  br label %cond.end, !dbg !3753

cond.end:                                         ; preds = %if.else, %cond.true
  %7 = phi %struct.rtx_def* [ %1, %if.else ], [ %.pre, %cond.true ], !dbg !3755
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !3755
  br label %return, !dbg !3756

return:                                           ; preds = %cond.end, %if.then
  %retval.0.in.in = phi %union.rtunion_def* [ %arrayidx3, %if.then ], [ %8, %cond.end ]
  %retval.0.in = bitcast %union.rtunion_def* %retval.0.in.in to %struct.rtx_def**, !dbg !3757
  %retval.0 = load %struct.rtx_def*, %struct.rtx_def** %retval.0.in, align 8, !dbg !3757
  ret %struct.rtx_def* %retval.0, !dbg !3758
}

declare dso_local void @extract_insn(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @copy_rtx(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @constrain_operands(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @reg_killed_on_edge(%struct.rtx_def* %reg, %struct.edge_def* %e) unnamed_addr #4 !dbg !3759 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3763, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3764, metadata !DIExpression()), !dbg !3766
  %insns = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 2, !dbg !3767
  %r = bitcast %union.edge_def_insns* %insns to %struct.rtx_def**, !dbg !3769
  br label %for.cond, !dbg !3770

for.cond:                                         ; preds = %for.inc, %entry
  %insn.0.in = phi %struct.rtx_def** [ %r, %entry ], [ %rt_rtx, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3771
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3765, metadata !DIExpression()), !dbg !3766
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3772
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3772

for.body:                                         ; preds = %for.cond
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3773
  %bf.load = load i32, i32* %0, align 8, !dbg !3773
  %bf.clear = and i32 %bf.load, 65535, !dbg !3773
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3773
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3773

lor.lhs.false:                                    ; preds = %for.body
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !3773
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4, !dbg !3773

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !3773
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false8, !dbg !3773

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !3773
  br i1 %cmp11, label %land.lhs.true, label %for.inc, !dbg !3776

land.lhs.true:                                    ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %for.body
  %call = tail call i32 @reg_set_p(%struct.rtx_def* %reg, %struct.rtx_def* nonnull %insn.0) #6, !dbg !3777
  %tobool12 = icmp eq i32 %call, 0, !dbg !3777
  br i1 %tobool12, label %for.inc, label %cleanup, !dbg !3778

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false8
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3779
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !3779
  br label %for.cond, !dbg !3780, !llvm.loop !3781

cleanup:                                          ; preds = %land.lhs.true, %for.cond
  %retval.0 = phi i8 [ 1, %land.lhs.true ], [ 0, %for.cond ], !dbg !3766
  ret i8 %retval.0, !dbg !3783
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @reg_used_on_edge(%struct.rtx_def* %reg, %struct.edge_def* %e) unnamed_addr #4 !dbg !3784 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !3786, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3787, metadata !DIExpression()), !dbg !3789
  %insns = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 2, !dbg !3790
  %r = bitcast %union.edge_def_insns* %insns to %struct.rtx_def**, !dbg !3792
  br label %for.cond, !dbg !3793

for.cond:                                         ; preds = %for.inc, %entry
  %insn.0.in = phi %struct.rtx_def** [ %r, %entry ], [ %rt_rtx16, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3794
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3788, metadata !DIExpression()), !dbg !3789
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3795
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3795

for.body:                                         ; preds = %for.cond
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3796
  %bf.load = load i32, i32* %0, align 8, !dbg !3796
  %bf.clear = and i32 %bf.load, 65535, !dbg !3796
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3796
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3796

lor.lhs.false:                                    ; preds = %for.body
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !3796
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4, !dbg !3796

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !3796
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false8, !dbg !3796

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !3796
  br i1 %cmp11, label %land.lhs.true, label %for.inc, !dbg !3799

land.lhs.true:                                    ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %for.body
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3800
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3800
  %rt_rtx = bitcast %union.rtunion_def* %1 to %struct.rtx_def**, !dbg !3800
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3800
  %call = tail call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %reg, %struct.rtx_def* %2) #6, !dbg !3801
  %tobool12 = icmp eq i32 %call, 0, !dbg !3801
  br i1 %tobool12, label %for.inc, label %cleanup, !dbg !3802

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false8
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3803
  %rt_rtx16 = bitcast %union.rtunion_def* %3 to %struct.rtx_def**, !dbg !3803
  br label %for.cond, !dbg !3804, !llvm.loop !3805

cleanup:                                          ; preds = %land.lhs.true, %for.cond
  %retval.0 = phi i8 [ 1, %land.lhs.true ], [ 0, %for.cond ], !dbg !3789
  ret i8 %retval.0, !dbg !3807
}

declare dso_local i32 @reg_set_between_p(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @copy_insn(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @delete_insn(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @delete_redundant_insns_1(i8** %slot, i8* %data) #4 !dbg !3808 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !3810, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i8* %data, metadata !3811, metadata !DIExpression()), !dbg !3814
  %0 = bitcast i8** %slot to %struct.expr**, !dbg !3815
  %1 = load %struct.expr*, %struct.expr** %0, align 8, !dbg !3815
  call void @llvm.dbg.value(metadata %struct.expr* %1, metadata !3812, metadata !DIExpression()), !dbg !3814
  %avail_occr = getelementptr inbounds %struct.expr, %struct.expr* %1, i64 0, i32 2, !dbg !3816
  br label %for.cond, !dbg !3818

for.cond:                                         ; preds = %for.inc, %entry
  %occr.0.in = phi %struct.occr** [ %avail_occr, %entry ], [ %next, %for.inc ]
  %occr.0 = load %struct.occr*, %struct.occr** %occr.0.in, align 8, !dbg !3819
  call void @llvm.dbg.value(metadata %struct.occr* %occr.0, metadata !3813, metadata !DIExpression()), !dbg !3814
  %cmp = icmp eq %struct.occr* %occr.0, null, !dbg !3820
  br i1 %cmp, label %for.end, label %for.body, !dbg !3822

for.body:                                         ; preds = %for.cond
  %deleted_p = getelementptr inbounds %struct.occr, %struct.occr* %occr.0, i64 0, i32 2, !dbg !3823
  %2 = load i8, i8* %deleted_p, align 8, !dbg !3823
  %tobool = icmp eq i8 %2, 0, !dbg !3826
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !3827

land.lhs.true:                                    ; preds = %for.body
  %call = tail call zeroext i8 @dbg_cnt(i32 13) #6, !dbg !3828
  %tobool2 = icmp eq i8 %call, 0, !dbg !3828
  br i1 %tobool2, label %for.inc, label %if.then, !dbg !3829

if.then:                                          ; preds = %land.lhs.true
  %insn = getelementptr inbounds %struct.occr, %struct.occr* %occr.0, i64 0, i32 1, !dbg !3830
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3830
  %call3 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %3) #6, !dbg !3832
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 2), align 4, !dbg !3833
  %inc = add nsw i32 %4, 1, !dbg !3833
  store i32 %inc, i32* getelementptr inbounds (%struct.anon, %struct.anon* @stats, i64 0, i32 2), align 4, !dbg !3833
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3834
  %tobool4 = icmp eq %struct._IO_FILE* %5, null, !dbg !3834
  br i1 %tobool4, label %for.inc, label %if.then5, !dbg !3836

if.then5:                                         ; preds = %if.then
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3837
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3839
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3840
  %call8 = tail call i32 @print_rtl_single(%struct._IO_FILE* %6, %struct.rtx_def* %7) #6, !dbg !3841
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3842
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3843
  br label %for.inc, !dbg !3844

for.inc:                                          ; preds = %if.then, %land.lhs.true, %for.body, %if.then5
  %next = getelementptr inbounds %struct.occr, %struct.occr* %occr.0, i64 0, i32 0, !dbg !3845
  br label %for.cond, !dbg !3846, !llvm.loop !3847

for.end:                                          ; preds = %for.cond
  ret i32 1, !dbg !3849
}

declare dso_local zeroext i8 @dbg_cnt(i32) local_unnamed_addr #1

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #1

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
!llvm.module.flags = !{!2083, !2084, !2085}
!llvm.ident = !{!2086}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_gcse2", scope: !2, file: !3, line: 1323, type: !2056, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !766, globals: !2028, nameTableKind: None)
!3 = !DIFile(filename: "postreload-gcse.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !324, !330, !335, !340, !359, !366, !373, !567, !710, !744}
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
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !318, line: 30, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322, !323}
!320 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!323 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !325, line: 363, baseType: !7, size: 32, elements: !326)
!325 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!326 = !{!327, !328, !329}
!327 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!328 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!329 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !325, line: 355, baseType: !7, size: 32, elements: !331)
!331 = !{!332, !333, !334}
!332 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !336, line: 474, baseType: !7, size: 32, elements: !337)
!336 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!337 = !{!338, !339}
!338 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !341, line: 280, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!343 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !341, line: 1817, baseType: !7, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !341, line: 1805, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!373 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !341, line: 39, baseType: !7, size: 32, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!375 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!376 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!377 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!378 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!379 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!380 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!381 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!382 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!383 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!384 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!385 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!386 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!387 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!388 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!389 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!390 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!391 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!392 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!393 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!394 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!395 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!396 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!397 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!398 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!399 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!400 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!401 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!402 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!403 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!404 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!405 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!406 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!407 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!408 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!409 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!410 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!411 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!412 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!413 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!414 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!415 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!416 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!417 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!418 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!419 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!420 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!421 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!422 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!423 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!424 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!425 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!426 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!427 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!428 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!429 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!430 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!431 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!432 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!433 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!434 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!435 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!436 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!437 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!438 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!439 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!440 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!441 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!442 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!443 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!444 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!445 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!446 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!447 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!448 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!449 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!450 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!451 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!452 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!453 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!454 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!455 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!456 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!457 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!458 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!459 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!460 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!461 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!462 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!463 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!464 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!465 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!466 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!467 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!468 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!469 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!470 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!471 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!472 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!473 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!474 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!475 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!476 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!477 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!478 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!479 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!480 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!481 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!482 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!483 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!484 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!485 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!486 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!487 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!488 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!489 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!490 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!491 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!492 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!493 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!494 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!495 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!496 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!497 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!498 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!499 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!500 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!501 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!502 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!503 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!504 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!505 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!506 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!507 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!508 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!509 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!510 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!511 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!512 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!513 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!514 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!515 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!516 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!517 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!518 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!519 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!520 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!521 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!522 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!523 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!524 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!525 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!526 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!527 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!528 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!529 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!530 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!532 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!533 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!534 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!535 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!536 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!537 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!538 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!539 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!540 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!541 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!542 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!543 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!544 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!545 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!550 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!551 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!552 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!553 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!554 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!555 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!556 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!557 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!558 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!559 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!560 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!561 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!562 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!563 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!564 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!565 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!566 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !568, line: 45, baseType: !7, size: 32, elements: !569)
!568 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!570 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!573 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!574 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!575 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!576 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!577 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!578 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!579 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!580 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!581 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!582 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!583 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!584 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!585 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!586 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!587 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!588 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!589 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!590 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!591 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!592 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!593 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!594 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!595 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!596 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!597 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!598 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!599 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!600 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!601 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!602 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!603 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!604 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!605 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!606 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!607 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!608 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!609 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!610 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!611 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!612 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!613 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!614 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!615 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!616 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!617 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!618 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!619 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!620 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!621 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!622 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!623 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!624 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!625 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!626 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!627 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!628 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!629 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!630 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!631 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!632 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!633 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!634 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!635 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!636 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!637 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!638 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!639 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!640 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!641 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!642 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!643 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!644 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!645 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!646 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!647 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!648 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!649 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!650 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!651 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!652 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!653 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!654 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!655 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!656 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!657 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!658 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!659 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!660 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!661 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!662 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!663 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!664 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!665 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!666 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!667 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!668 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!669 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!670 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!671 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!672 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!673 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!674 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!675 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!676 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!677 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!678 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!679 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!680 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!681 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!682 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!683 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!684 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!685 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!686 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!687 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!688 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!689 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!690 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!691 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!692 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!693 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!694 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!695 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!696 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!697 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!698 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!699 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!700 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!701 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!702 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!703 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!704 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!705 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!706 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!707 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!708 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!709 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!710 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_note", file: !568, line: 836, baseType: !7, size: 32, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!712 = !DIEnumerator(name: "REG_DEP_TRUE", value: 0, isUnsigned: true)
!713 = !DIEnumerator(name: "REG_DEAD", value: 1, isUnsigned: true)
!714 = !DIEnumerator(name: "REG_INC", value: 2, isUnsigned: true)
!715 = !DIEnumerator(name: "REG_EQUIV", value: 3, isUnsigned: true)
!716 = !DIEnumerator(name: "REG_EQUAL", value: 4, isUnsigned: true)
!717 = !DIEnumerator(name: "REG_NONNEG", value: 5, isUnsigned: true)
!718 = !DIEnumerator(name: "REG_UNUSED", value: 6, isUnsigned: true)
!719 = !DIEnumerator(name: "REG_CC_SETTER", value: 7, isUnsigned: true)
!720 = !DIEnumerator(name: "REG_CC_USER", value: 8, isUnsigned: true)
!721 = !DIEnumerator(name: "REG_LABEL_TARGET", value: 9, isUnsigned: true)
!722 = !DIEnumerator(name: "REG_LABEL_OPERAND", value: 10, isUnsigned: true)
!723 = !DIEnumerator(name: "REG_DEP_OUTPUT", value: 11, isUnsigned: true)
!724 = !DIEnumerator(name: "REG_DEP_ANTI", value: 12, isUnsigned: true)
!725 = !DIEnumerator(name: "REG_BR_PROB", value: 13, isUnsigned: true)
!726 = !DIEnumerator(name: "REG_VALUE_PROFILE", value: 14, isUnsigned: true)
!727 = !DIEnumerator(name: "REG_NOALIAS", value: 15, isUnsigned: true)
!728 = !DIEnumerator(name: "REG_BR_PRED", value: 16, isUnsigned: true)
!729 = !DIEnumerator(name: "REG_FRAME_RELATED_EXPR", value: 17, isUnsigned: true)
!730 = !DIEnumerator(name: "REG_CFA_DEF_CFA", value: 18, isUnsigned: true)
!731 = !DIEnumerator(name: "REG_CFA_ADJUST_CFA", value: 19, isUnsigned: true)
!732 = !DIEnumerator(name: "REG_CFA_OFFSET", value: 20, isUnsigned: true)
!733 = !DIEnumerator(name: "REG_CFA_REGISTER", value: 21, isUnsigned: true)
!734 = !DIEnumerator(name: "REG_CFA_RESTORE", value: 22, isUnsigned: true)
!735 = !DIEnumerator(name: "REG_CFA_SET_VDRAP", value: 23, isUnsigned: true)
!736 = !DIEnumerator(name: "REG_EH_CONTEXT", value: 24, isUnsigned: true)
!737 = !DIEnumerator(name: "REG_EH_REGION", value: 25, isUnsigned: true)
!738 = !DIEnumerator(name: "REG_SAVE_NOTE", value: 26, isUnsigned: true)
!739 = !DIEnumerator(name: "REG_NORETURN", value: 27, isUnsigned: true)
!740 = !DIEnumerator(name: "REG_NON_LOCAL_GOTO", value: 28, isUnsigned: true)
!741 = !DIEnumerator(name: "REG_CROSSING_JUMP", value: 29, isUnsigned: true)
!742 = !DIEnumerator(name: "REG_SETJMP", value: 30, isUnsigned: true)
!743 = !DIEnumerator(name: "REG_NOTE_MAX", value: 31, isUnsigned: true)
!744 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !745, line: 36, baseType: !7, size: 32, elements: !746)
!745 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!747 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!748 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!749 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!750 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!751 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!752 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!753 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!754 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!755 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!756 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!757 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!758 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!759 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!760 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!761 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!762 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!763 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!764 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!765 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!766 = !{!767, !768, !769, !770, !773, !774, !776, !567, !777, !781, !784, !771, !1953, !1966, !710, !189, !1967, !788, !744, !1969, !1970, !1960, !780, !1971, !2022}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!769 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!773, !780}
!780 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !773}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modifies_mem", file: !3, line: 151, size: 128, elements: !786)
!786 = !{!787, !1952}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !785, file: !3, line: 153, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !789, line: 50, baseType: !790)
!789 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !568, line: 240, size: 384, elements: !792)
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !791, file: !568, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !791, file: !568, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !791, file: !568, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !791, file: !568, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !791, file: !568, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !791, file: !568, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !791, file: !568, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !791, file: !568, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !791, file: !568, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !791, file: !568, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !791, file: !568, line: 321, baseType: !804, size: 320, offset: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !568, line: 315, size: 320, elements: !805)
!805 = !{!806, !1887, !1889, !1950, !1951}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !804, file: !568, line: 316, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 64, elements: !823)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !568, line: 183, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !568, line: 166, size: 64, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !825, !826, !838, !841, !902, !1865, !1866, !1877, !1884}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !809, file: !568, line: 168, baseType: !769, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !809, file: !568, line: 169, baseType: !7, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !809, file: !568, line: 170, baseType: !774, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !809, file: !568, line: 171, baseType: !788, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !809, file: !568, line: 172, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !789, line: 53, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !568, line: 359, size: 128, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !818, file: !568, line: 360, baseType: !769, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !818, file: !568, line: 361, baseType: !822, size: 64, offset: 64)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 64, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 1)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !809, file: !568, line: 173, baseType: !189, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !809, file: !568, line: 174, baseType: !827, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !568, line: 133, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 115, size: 32, elements: !829)
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !828, file: !568, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !828, file: !568, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !828, file: !568, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !828, file: !568, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !828, file: !568, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !828, file: !568, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !828, file: !568, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !828, file: !568, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !809, file: !568, line: 175, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !568, line: 175, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !809, file: !568, line: 176, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !844, line: 75, size: 256, elements: !845)
!844 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!845 = !{!846, !861, !862, !863}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !843, file: !844, line: 76, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !844, line: 68, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !844, line: 63, size: 320, elements: !850)
!850 = !{!851, !853, !854, !855}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !849, file: !844, line: 64, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !849, file: !844, line: 65, baseType: !852, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !849, file: !844, line: 66, baseType: !7, size: 32, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !849, file: !844, line: 67, baseType: !856, size: 128, offset: 192)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 128, elements: !859)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !844, line: 29, baseType: !858)
!858 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!859 = !{!860}
!860 = !DISubrange(count: 2)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !843, file: !844, line: 77, baseType: !847, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !843, file: !844, line: 78, baseType: !7, size: 32, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !843, file: !844, line: 79, baseType: !864, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !844, line: 49, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !844, line: 45, size: 832, elements: !867)
!867 = !{!868, !869, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !866, file: !844, line: 46, baseType: !852, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !866, file: !844, line: 47, baseType: !842, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !866, file: !844, line: 48, baseType: !871, size: 704, offset: 128)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !872, line: 164, size: 704, elements: !873)
!872 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!873 = !{!874, !875, !885, !886, !887, !888, !889, !890, !894, !898, !899, !900, !901}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !871, file: !872, line: 166, baseType: !780, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !871, file: !872, line: 167, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !872, line: 157, size: 192, elements: !878)
!878 = !{!879, !880, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !877, file: !872, line: 159, baseType: !771, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !877, file: !872, line: 160, baseType: !876, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !877, file: !872, line: 161, baseType: !882, size: 32, offset: 128)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 32, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 4)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !871, file: !872, line: 168, baseType: !771, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !871, file: !872, line: 169, baseType: !771, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !871, file: !872, line: 170, baseType: !771, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !871, file: !872, line: 171, baseType: !780, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !871, file: !872, line: 172, baseType: !769, size: 32, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !871, file: !872, line: 176, baseType: !891, size: 64, offset: 448)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!876, !773, !780}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !871, file: !872, line: 177, baseType: !895, size: 64, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !773, !876}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !871, file: !872, line: 178, baseType: !773, size: 64, offset: 576)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !871, file: !872, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !871, file: !872, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !871, file: !872, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !809, file: !568, line: 177, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !789, line: 56, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !341, line: 3371, size: 1792, elements: !906)
!906 = !{!907, !940, !946, !957, !976, !987, !992, !999, !1005, !1018, !1030, !1068, !1073, !1101, !1109, !1110, !1115, !1124, !1130, !1135, !1139, !1143, !1501, !1550, !1556, !1562, !1569, !1595, !1609, !1626, !1638, !1660, !1675, !1847}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !905, file: !341, line: 3372, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !341, line: 360, size: 64, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !908, file: !341, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !908, file: !341, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !908, file: !341, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !908, file: !341, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !908, file: !341, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !908, file: !341, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !908, file: !341, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !908, file: !341, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !908, file: !341, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !908, file: !341, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !908, file: !341, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !908, file: !341, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !908, file: !341, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !908, file: !341, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !908, file: !341, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !908, file: !341, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !908, file: !341, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !908, file: !341, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !908, file: !341, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !908, file: !341, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !908, file: !341, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !908, file: !341, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !908, file: !341, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !908, file: !341, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !908, file: !341, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !908, file: !341, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !908, file: !341, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !908, file: !341, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !908, file: !341, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !908, file: !341, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !905, file: !341, line: 3373, baseType: !941, size: 192)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !341, line: 402, size: 192, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !941, file: !341, line: 403, baseType: !908, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !941, file: !341, line: 404, baseType: !903, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !941, file: !341, line: 405, baseType: !903, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !905, file: !341, line: 3374, baseType: !947, size: 320)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !341, line: 1384, size: 320, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !947, file: !341, line: 1385, baseType: !941, size: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !947, file: !341, line: 1386, baseType: !951, size: 128, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !952, line: 58, baseType: !953)
!952 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !952, line: 54, size: 128, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !953, file: !952, line: 56, baseType: !858, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !953, file: !952, line: 57, baseType: !780, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !905, file: !341, line: 3375, baseType: !958, size: 256)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !341, line: 1397, size: 256, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !958, file: !341, line: 1398, baseType: !941, size: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !958, file: !341, line: 1399, baseType: !962, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !964, line: 52, size: 256, elements: !965)
!964 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!965 = !{!966, !967, !968, !969, !970, !971, !972}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !963, file: !964, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !963, file: !964, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !963, file: !964, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !963, file: !964, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !963, file: !964, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !963, file: !964, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !963, file: !964, line: 62, baseType: !973, size: 192, offset: 64)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 192, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 3)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !905, file: !341, line: 3376, baseType: !977, size: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !341, line: 1408, size: 256, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !977, file: !341, line: 1409, baseType: !941, size: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !977, file: !341, line: 1410, baseType: !981, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !983, line: 27, size: 192, elements: !984)
!983 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !982, file: !983, line: 29, baseType: !951, size: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !982, file: !983, line: 30, baseType: !189, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !905, file: !341, line: 3377, baseType: !988, size: 256)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !341, line: 1437, size: 256, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !988, file: !341, line: 1438, baseType: !941, size: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !988, file: !341, line: 1439, baseType: !903, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !905, file: !341, line: 3378, baseType: !993, size: 256)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !341, line: 1418, size: 256, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !993, file: !341, line: 1419, baseType: !941, size: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !993, file: !341, line: 1420, baseType: !769, size: 32, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !993, file: !341, line: 1421, baseType: !998, size: 8, offset: 224)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 8, elements: !823)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !905, file: !341, line: 3379, baseType: !1000, size: 320)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !341, line: 1428, size: 320, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1000, file: !341, line: 1429, baseType: !941, size: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1000, file: !341, line: 1430, baseType: !903, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1000, file: !341, line: 1431, baseType: !903, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !905, file: !341, line: 3380, baseType: !1006, size: 320)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !341, line: 1460, size: 320, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1006, file: !341, line: 1461, baseType: !941, size: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1006, file: !341, line: 1462, baseType: !1010, size: 128, offset: 192)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1011, line: 31, size: 128, elements: !1012)
!1011 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1012 = !{!1013, !1016, !1017}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1010, file: !1011, line: 32, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1010, file: !1011, line: 33, baseType: !7, size: 32, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1010, file: !1011, line: 34, baseType: !7, size: 32, offset: 96)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !905, file: !341, line: 3381, baseType: !1019, size: 384)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !341, line: 2507, size: 384, elements: !1020)
!1020 = !{!1021, !1022, !1027, !1028, !1029}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1019, file: !341, line: 2508, baseType: !941, size: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1019, file: !341, line: 2509, baseType: !1023, size: 32, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1024, line: 58, baseType: !1025)
!1024 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1026, line: 44, baseType: !7)
!1026 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1019, file: !341, line: 2510, baseType: !7, size: 32, offset: 224)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1019, file: !341, line: 2511, baseType: !903, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1019, file: !341, line: 2512, baseType: !903, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !905, file: !341, line: 3382, baseType: !1031, size: 896)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !341, line: 2652, size: 896, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1031, file: !341, line: 2653, baseType: !1019, size: 384)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1031, file: !341, line: 2654, baseType: !903, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1031, file: !341, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1031, file: !341, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1031, file: !341, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1031, file: !341, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1031, file: !341, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1031, file: !341, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1031, file: !341, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1031, file: !341, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1031, file: !341, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1031, file: !341, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1031, file: !341, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1031, file: !341, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1031, file: !341, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1031, file: !341, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1031, file: !341, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1031, file: !341, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1031, file: !341, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1031, file: !341, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1031, file: !341, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1031, file: !341, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1031, file: !341, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1031, file: !341, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1031, file: !341, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1031, file: !341, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1031, file: !341, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1031, file: !341, line: 2703, baseType: !7, size: 32, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1031, file: !341, line: 2705, baseType: !903, size: 64, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1031, file: !341, line: 2706, baseType: !903, size: 64, offset: 640)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1031, file: !341, line: 2707, baseType: !903, size: 64, offset: 704)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1031, file: !341, line: 2708, baseType: !903, size: 64, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1031, file: !341, line: 2711, baseType: !1066, size: 64, offset: 832)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !341, line: 2711, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !905, file: !341, line: 3383, baseType: !1069, size: 960)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !341, line: 2756, size: 960, elements: !1070)
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1069, file: !341, line: 2757, baseType: !1031, size: 896)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1069, file: !341, line: 2758, baseType: !788, size: 64, offset: 896)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !905, file: !341, line: 3384, baseType: !1074, size: 1472)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !341, line: 3114, size: 1472, elements: !1075)
!1075 = !{!1076, !1097, !1098, !1099, !1100}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1074, file: !341, line: 3115, baseType: !1077, size: 1216)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !341, line: 2984, size: 1216, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1077, file: !341, line: 2985, baseType: !1069, size: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1077, file: !341, line: 2986, baseType: !903, size: 64, offset: 960)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1077, file: !341, line: 2987, baseType: !903, size: 64, offset: 1024)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1077, file: !341, line: 2988, baseType: !903, size: 64, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1077, file: !341, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1077, file: !341, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1077, file: !341, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1077, file: !341, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1077, file: !341, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1077, file: !341, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1077, file: !341, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1077, file: !341, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1077, file: !341, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1077, file: !341, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1077, file: !341, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1077, file: !341, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1077, file: !341, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1077, file: !341, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1074, file: !341, line: 3117, baseType: !903, size: 64, offset: 1216)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1074, file: !341, line: 3119, baseType: !903, size: 64, offset: 1280)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1074, file: !341, line: 3121, baseType: !903, size: 64, offset: 1344)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1074, file: !341, line: 3123, baseType: !903, size: 64, offset: 1408)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !905, file: !341, line: 3385, baseType: !1102, size: 1088)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !341, line: 2874, size: 1088, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1102, file: !341, line: 2875, baseType: !1069, size: 960)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1102, file: !341, line: 2876, baseType: !788, size: 64, offset: 960)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1102, file: !341, line: 2877, baseType: !1107, size: 64, offset: 1024)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !341, line: 2856, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !905, file: !341, line: 3386, baseType: !1077, size: 1216)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !905, file: !341, line: 3387, baseType: !1111, size: 1280)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !341, line: 3093, size: 1280, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1111, file: !341, line: 3094, baseType: !1077, size: 1216)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1111, file: !341, line: 3095, baseType: !1107, size: 64, offset: 1216)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !905, file: !341, line: 3388, baseType: !1116, size: 1216)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !341, line: 2824, size: 1216, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1116, file: !341, line: 2825, baseType: !1031, size: 896)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1116, file: !341, line: 2827, baseType: !903, size: 64, offset: 896)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1116, file: !341, line: 2828, baseType: !903, size: 64, offset: 960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1116, file: !341, line: 2829, baseType: !903, size: 64, offset: 1024)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1116, file: !341, line: 2830, baseType: !903, size: 64, offset: 1088)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1116, file: !341, line: 2831, baseType: !903, size: 64, offset: 1152)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !905, file: !341, line: 3389, baseType: !1125, size: 1024)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !341, line: 2850, size: 1024, elements: !1126)
!1126 = !{!1127, !1128, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1125, file: !341, line: 2851, baseType: !1069, size: 960)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1125, file: !341, line: 2852, baseType: !769, size: 32, offset: 960)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1125, file: !341, line: 2853, baseType: !769, size: 32, offset: 992)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !905, file: !341, line: 3390, baseType: !1131, size: 1024)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !341, line: 2857, size: 1024, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1131, file: !341, line: 2858, baseType: !1069, size: 960)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1131, file: !341, line: 2859, baseType: !1107, size: 64, offset: 960)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !905, file: !341, line: 3391, baseType: !1136, size: 960)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !341, line: 2862, size: 960, elements: !1137)
!1137 = !{!1138}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1136, file: !341, line: 2863, baseType: !1069, size: 960)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !905, file: !341, line: 3392, baseType: !1140, size: 1472)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !341, line: 3304, size: 1472, elements: !1141)
!1141 = !{!1142}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1140, file: !341, line: 3305, baseType: !1074, size: 1472)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !905, file: !341, line: 3393, baseType: !1144, size: 1792)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !341, line: 3248, size: 1792, elements: !1145)
!1145 = !{!1146, !1147, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1144, file: !341, line: 3249, baseType: !1074, size: 1472)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1144, file: !341, line: 3251, baseType: !1148, size: 64, offset: 1472)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1150, line: 463, size: 1152, elements: !1151)
!1150 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1151 = !{!1152, !1313, !1417, !1418, !1421, !1424, !1425, !1426, !1427, !1428, !1429, !1453, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1149, file: !1150, line: 464, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !318, line: 194, size: 384, elements: !1155)
!1155 = !{!1156, !1205, !1218, !1232, !1281, !1294}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1154, file: !318, line: 197, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !318, line: 182, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !318, line: 116, size: 704, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1193, !1202, !1203, !1204}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1159, file: !318, line: 119, baseType: !1158, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1159, file: !318, line: 122, baseType: !1158, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1159, file: !318, line: 123, baseType: !1158, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1159, file: !318, line: 126, baseType: !769, size: 32, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1159, file: !318, line: 129, baseType: !317, size: 32, offset: 224)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1159, file: !318, line: 165, baseType: !1167, size: 192, offset: 256)
!1167 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !318, line: 132, size: 192, elements: !1168)
!1168 = !{!1169, !1182, !1188}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1167, file: !318, line: 137, baseType: !1170, size: 128)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !318, line: 133, size: 128, elements: !1171)
!1171 = !{!1172, !1181}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1170, file: !318, line: 135, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !318, line: 93, size: 320, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1174, file: !318, line: 96, baseType: !1173, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1174, file: !318, line: 97, baseType: !1173, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1174, file: !318, line: 101, baseType: !903, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1174, file: !318, line: 106, baseType: !903, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1174, file: !318, line: 111, baseType: !903, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1170, file: !318, line: 136, baseType: !1173, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1167, file: !318, line: 151, baseType: !1183, size: 192)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !318, line: 139, size: 192, elements: !1184)
!1184 = !{!1185, !1186, !1187}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1183, file: !318, line: 141, baseType: !903, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1183, file: !318, line: 145, baseType: !903, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1183, file: !318, line: 150, baseType: !769, size: 32, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1167, file: !318, line: 164, baseType: !1189, size: 128)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !318, line: 153, size: 128, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1189, file: !318, line: 161, baseType: !903, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1189, file: !318, line: 163, baseType: !1023, size: 32, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1159, file: !318, line: 168, baseType: !1194, size: 64, offset: 448)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !318, line: 67, size: 320, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1195, file: !318, line: 70, baseType: !1194, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1195, file: !318, line: 73, baseType: !1158, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1195, file: !318, line: 78, baseType: !903, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1195, file: !318, line: 85, baseType: !788, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1195, file: !318, line: 88, baseType: !769, size: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1159, file: !318, line: 173, baseType: !788, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1159, file: !318, line: 173, baseType: !788, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1159, file: !318, line: 177, baseType: !768, size: 8, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1154, file: !318, line: 200, baseType: !1206, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !318, line: 185, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !318, line: 185, size: 128, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1208, file: !318, line: 185, baseType: !1211, size: 128)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !318, line: 184, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !318, line: 184, size: 128, elements: !1213)
!1213 = !{!1214, !1215, !1216}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1212, file: !318, line: 184, baseType: !7, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1212, file: !318, line: 184, baseType: !7, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1212, file: !318, line: 184, baseType: !1217, size: 64, offset: 64)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1157, size: 64, elements: !823)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1154, file: !318, line: 203, baseType: !1219, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, size: 128, elements: !1222)
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1221, file: !318, line: 189, baseType: !1224, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !318, line: 188, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !318, line: 188, size: 128, elements: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1225, file: !318, line: 188, baseType: !7, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1225, file: !318, line: 188, baseType: !7, size: 32, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1225, file: !318, line: 188, baseType: !1230, size: 64, offset: 64)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 64, elements: !823)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !318, line: 180, baseType: !1194)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1154, file: !318, line: 207, baseType: !1233, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1234, line: 144, baseType: !1235)
!1234 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1234, line: 100, size: 896, elements: !1237)
!1237 = !{!1238, !1246, !1251, !1253, !1255, !1258, !1259, !1260, !1261, !1262, !1267, !1269, !1270, !1275, !1280}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1236, file: !1234, line: 102, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1234, line: 52, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1234, line: 47, baseType: !7)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1236, file: !1234, line: 105, baseType: !1247, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1234, line: 59, baseType: !1248)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!769, !1244, !1244}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1236, file: !1234, line: 108, baseType: !1252, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1234, line: 63, baseType: !781)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1236, file: !1234, line: 111, baseType: !1254, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1236, file: !1234, line: 114, baseType: !1256, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1257, line: 46, baseType: !858)
!1257 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1236, file: !1234, line: 117, baseType: !1256, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1236, file: !1234, line: 120, baseType: !1256, size: 64, offset: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1236, file: !1234, line: 124, baseType: !7, size: 32, offset: 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1236, file: !1234, line: 128, baseType: !7, size: 32, offset: 480)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1236, file: !1234, line: 131, baseType: !1263, size: 64, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1234, line: 75, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!773, !1256, !1256}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1236, file: !1234, line: 132, baseType: !1268, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1234, line: 78, baseType: !781)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1236, file: !1234, line: 135, baseType: !773, size: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1236, file: !1234, line: 136, baseType: !1271, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1234, line: 82, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!773, !773, !1256, !1256}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1236, file: !1234, line: 137, baseType: !1276, size: 64, offset: 768)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1234, line: 83, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !773, !773}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1236, file: !1234, line: 141, baseType: !7, size: 32, offset: 832)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1154, file: !318, line: 211, baseType: !1282, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !341, line: 183, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !341, line: 183, size: 128, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1284, file: !341, line: 183, baseType: !1287, size: 128)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !341, line: 182, baseType: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !341, line: 182, size: 128, elements: !1289)
!1289 = !{!1290, !1291, !1292}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1288, file: !341, line: 182, baseType: !7, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1288, file: !341, line: 182, baseType: !7, size: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1288, file: !341, line: 182, baseType: !1293, size: 64, offset: 64)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 64, elements: !823)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1154, file: !318, line: 220, baseType: !1295, size: 64, offset: 320)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !318, line: 217, size: 64, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1295, file: !318, line: 218, baseType: !1282, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1295, file: !318, line: 219, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1301, line: 29, baseType: !1302)
!1301 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1301, line: 29, size: 96, elements: !1303)
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1302, file: !1301, line: 29, baseType: !1305, size: 96)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1301, line: 27, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1301, line: 27, size: 96, elements: !1307)
!1307 = !{!1308, !1309, !1310}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1306, file: !1301, line: 27, baseType: !7, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1306, file: !1301, line: 27, baseType: !7, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1306, file: !1301, line: 27, baseType: !1311, size: 8, offset: 64)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 8, elements: !823)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1301, line: 26, baseType: !768)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1149, file: !1150, line: 467, baseType: !1314, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !325, line: 374, size: 640, elements: !1316)
!1316 = !{!1317, !1392, !1393, !1406, !1407, !1408, !1409, !1410, !1411, !1413, !1415, !1416}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1315, file: !325, line: 377, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !789, line: 111, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !325, line: 217, size: 832, elements: !1321)
!1321 = !{!1322, !1357, !1358, !1359, !1362, !1366, !1367, !1368, !1386, !1387, !1388, !1389, !1390, !1391}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1320, file: !325, line: 219, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !325, line: 151, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !325, line: 151, size: 128, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1325, file: !325, line: 151, baseType: !1328, size: 128)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !325, line: 150, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !325, line: 150, size: 128, elements: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1329, file: !325, line: 150, baseType: !7, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1329, file: !325, line: 150, baseType: !7, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1329, file: !325, line: 150, baseType: !1334, size: 64, offset: 64)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 64, elements: !823)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !789, line: 108, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !325, line: 122, size: 512, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1337, file: !325, line: 124, baseType: !1319, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1337, file: !325, line: 125, baseType: !1319, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1337, file: !325, line: 131, baseType: !1342, size: 64, offset: 128)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !325, line: 128, size: 64, elements: !1343)
!1343 = !{!1344, !1348}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1342, file: !325, line: 129, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !789, line: 66, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !789, line: 65, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1342, file: !325, line: 130, baseType: !788, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1337, file: !325, line: 134, baseType: !773, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1337, file: !325, line: 137, baseType: !903, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1337, file: !325, line: 138, baseType: !1023, size: 32, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1337, file: !325, line: 142, baseType: !7, size: 32, offset: 352)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1337, file: !325, line: 144, baseType: !769, size: 32, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1337, file: !325, line: 145, baseType: !769, size: 32, offset: 416)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1337, file: !325, line: 146, baseType: !1356, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !325, line: 119, baseType: !780)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1320, file: !325, line: 220, baseType: !1323, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1320, file: !325, line: 223, baseType: !773, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1320, file: !325, line: 226, baseType: !1360, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !325, line: 185, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1320, file: !325, line: 229, baseType: !1363, size: 128, offset: 256)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 128, elements: !859)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !325, line: 229, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1320, file: !325, line: 232, baseType: !1319, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1320, file: !325, line: 233, baseType: !1319, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1320, file: !325, line: 238, baseType: !1369, size: 64, offset: 512)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !325, line: 235, size: 64, elements: !1370)
!1370 = !{!1371, !1377}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1369, file: !325, line: 236, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !325, line: 273, size: 128, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1373, file: !325, line: 275, baseType: !1345, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1373, file: !325, line: 278, baseType: !1345, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1369, file: !325, line: 237, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !325, line: 259, size: 320, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1379, file: !325, line: 261, baseType: !788, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1379, file: !325, line: 262, baseType: !788, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1379, file: !325, line: 266, baseType: !788, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1379, file: !325, line: 267, baseType: !788, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1379, file: !325, line: 270, baseType: !769, size: 32, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1320, file: !325, line: 241, baseType: !1356, size: 64, offset: 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1320, file: !325, line: 244, baseType: !769, size: 32, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1320, file: !325, line: 247, baseType: !769, size: 32, offset: 672)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1320, file: !325, line: 250, baseType: !769, size: 32, offset: 704)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1320, file: !325, line: 253, baseType: !769, size: 32, offset: 736)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1320, file: !325, line: 256, baseType: !769, size: 32, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1315, file: !325, line: 378, baseType: !1318, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1315, file: !325, line: 381, baseType: !1394, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !325, line: 282, baseType: !1396)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !325, line: 282, size: 128, elements: !1397)
!1397 = !{!1398}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1396, file: !325, line: 282, baseType: !1399, size: 128)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !325, line: 281, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !325, line: 281, size: 128, elements: !1401)
!1401 = !{!1402, !1403, !1404}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1400, file: !325, line: 281, baseType: !7, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1400, file: !325, line: 281, baseType: !7, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1400, file: !325, line: 281, baseType: !1405, size: 64, offset: 64)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, size: 64, elements: !823)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1315, file: !325, line: 384, baseType: !769, size: 32, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1315, file: !325, line: 387, baseType: !769, size: 32, offset: 224)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1315, file: !325, line: 390, baseType: !769, size: 32, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1315, file: !325, line: 394, baseType: !1394, size: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1315, file: !325, line: 396, baseType: !324, size: 32, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1315, file: !325, line: 399, baseType: !1412, size: 64, offset: 416)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !859)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1315, file: !325, line: 402, baseType: !1414, size: 64, offset: 480)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !859)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1315, file: !325, line: 406, baseType: !769, size: 32, offset: 544)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1315, file: !325, line: 409, baseType: !769, size: 32, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1149, file: !1150, line: 470, baseType: !1346, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1149, file: !1150, line: 473, baseType: !1419, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1150, line: 166, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1149, file: !1150, line: 476, baseType: !1422, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1150, line: 476, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1149, file: !1150, line: 479, baseType: !1233, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1149, file: !1150, line: 484, baseType: !903, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1149, file: !1150, line: 488, baseType: !903, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1149, file: !1150, line: 493, baseType: !903, size: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1149, file: !1150, line: 496, baseType: !903, size: 64, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1149, file: !1150, line: 501, baseType: !1430, size: 64, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !336, line: 2355, size: 576, elements: !1432)
!1432 = !{!1433, !1436, !1437, !1438, !1439, !1441, !1442, !1447, !1448, !1449, !1450, !1451, !1452}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1431, file: !336, line: 2356, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !336, line: 2356, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1431, file: !336, line: 2357, baseType: !774, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1431, file: !336, line: 2358, baseType: !769, size: 32, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1431, file: !336, line: 2359, baseType: !769, size: 32, offset: 160)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1431, file: !336, line: 2360, baseType: !1440, size: 128, offset: 192)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 128, elements: !883)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1431, file: !336, line: 2364, baseType: !769, size: 32, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1431, file: !336, line: 2367, baseType: !1443, size: 128, offset: 384)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !336, line: 2349, size: 128, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1443, file: !336, line: 2351, baseType: !788, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1443, file: !336, line: 2352, baseType: !780, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1431, file: !336, line: 2371, baseType: !335, size: 32, offset: 512)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1431, file: !336, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1431, file: !336, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1431, file: !336, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1431, file: !336, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1431, file: !336, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1149, file: !1150, line: 504, baseType: !1454, size: 64, offset: 704)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1150, line: 504, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1149, file: !1150, line: 507, baseType: !1233, size: 64, offset: 768)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1149, file: !1150, line: 510, baseType: !769, size: 32, offset: 832)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1149, file: !1150, line: 513, baseType: !769, size: 32, offset: 864)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1149, file: !1150, line: 516, baseType: !1023, size: 32, offset: 896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1149, file: !1150, line: 519, baseType: !1023, size: 32, offset: 928)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1149, file: !1150, line: 522, baseType: !7, size: 32, offset: 960)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1149, file: !1150, line: 523, baseType: !7, size: 32, offset: 992)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1149, file: !1150, line: 528, baseType: !774, size: 64, offset: 1024)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1149, file: !1150, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1149, file: !1150, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1149, file: !1150, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1149, file: !1150, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1149, file: !1150, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1149, file: !1150, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1149, file: !1150, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1149, file: !1150, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1149, file: !1150, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1149, file: !1150, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1149, file: !1150, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1149, file: !1150, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1149, file: !1150, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1149, file: !1150, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1149, file: !1150, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1149, file: !1150, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1144, file: !341, line: 3254, baseType: !903, size: 64, offset: 1536)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1144, file: !341, line: 3257, baseType: !903, size: 64, offset: 1600)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1144, file: !341, line: 3258, baseType: !903, size: 64, offset: 1664)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1144, file: !341, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1144, file: !341, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1144, file: !341, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1144, file: !341, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1144, file: !341, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1144, file: !341, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1144, file: !341, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1144, file: !341, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1144, file: !341, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1144, file: !341, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1144, file: !341, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1144, file: !341, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1144, file: !341, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1144, file: !341, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1144, file: !341, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1144, file: !341, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1144, file: !341, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1144, file: !341, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !905, file: !341, line: 3394, baseType: !1502, size: 1344)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !341, line: 2279, size: 1344, elements: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1529, !1530, !1531, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1502, file: !341, line: 2280, baseType: !941, size: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1502, file: !341, line: 2281, baseType: !903, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1502, file: !341, line: 2282, baseType: !903, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1502, file: !341, line: 2283, baseType: !903, size: 64, offset: 320)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1502, file: !341, line: 2284, baseType: !903, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1502, file: !341, line: 2285, baseType: !7, size: 32, offset: 448)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1502, file: !341, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1502, file: !341, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1502, file: !341, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1502, file: !341, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1502, file: !341, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1502, file: !341, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1502, file: !341, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1502, file: !341, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1502, file: !341, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1502, file: !341, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1502, file: !341, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1502, file: !341, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1502, file: !341, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1502, file: !341, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1502, file: !341, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1502, file: !341, line: 2305, baseType: !7, size: 32, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1502, file: !341, line: 2306, baseType: !1527, size: 32, offset: 544)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1528, line: 31, baseType: !769)
!1528 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1502, file: !341, line: 2307, baseType: !903, size: 64, offset: 576)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1502, file: !341, line: 2308, baseType: !903, size: 64, offset: 640)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1502, file: !341, line: 2314, baseType: !1532, size: 64, offset: 704)
!1532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !341, line: 2309, size: 64, elements: !1533)
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1532, file: !341, line: 2310, baseType: !769, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1532, file: !341, line: 2311, baseType: !774, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1532, file: !341, line: 2312, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !341, line: 2277, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1502, file: !341, line: 2315, baseType: !903, size: 64, offset: 768)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1502, file: !341, line: 2316, baseType: !903, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1502, file: !341, line: 2317, baseType: !903, size: 64, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1502, file: !341, line: 2318, baseType: !903, size: 64, offset: 960)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1502, file: !341, line: 2319, baseType: !903, size: 64, offset: 1024)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1502, file: !341, line: 2320, baseType: !903, size: 64, offset: 1088)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1502, file: !341, line: 2321, baseType: !903, size: 64, offset: 1152)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1502, file: !341, line: 2322, baseType: !903, size: 64, offset: 1216)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1502, file: !341, line: 2324, baseType: !1548, size: 64, offset: 1280)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !341, line: 2324, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !905, file: !341, line: 3395, baseType: !1551, size: 320)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !341, line: 1469, size: 320, elements: !1552)
!1552 = !{!1553, !1554, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1551, file: !341, line: 1470, baseType: !941, size: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1551, file: !341, line: 1471, baseType: !903, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1551, file: !341, line: 1472, baseType: !903, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !905, file: !341, line: 3396, baseType: !1557, size: 320)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !341, line: 1482, size: 320, elements: !1558)
!1558 = !{!1559, !1560, !1561}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1557, file: !341, line: 1483, baseType: !941, size: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1557, file: !341, line: 1484, baseType: !769, size: 32, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1557, file: !341, line: 1485, baseType: !1293, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !905, file: !341, line: 3397, baseType: !1563, size: 384)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !341, line: 1829, size: 384, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1568}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1563, file: !341, line: 1830, baseType: !941, size: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1563, file: !341, line: 1831, baseType: !1023, size: 32, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1563, file: !341, line: 1832, baseType: !903, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1563, file: !341, line: 1835, baseType: !1293, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !905, file: !341, line: 3398, baseType: !1570, size: 704)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !341, line: 1898, size: 704, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1578, !1579, !1582}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1570, file: !341, line: 1899, baseType: !941, size: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1570, file: !341, line: 1902, baseType: !903, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1570, file: !341, line: 1905, baseType: !1575, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !789, line: 58, baseType: !1576)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !789, line: 57, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1570, file: !341, line: 1908, baseType: !7, size: 32, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1570, file: !341, line: 1911, baseType: !1580, size: 64, offset: 384)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !341, line: 1876, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1570, file: !341, line: 1914, baseType: !1583, size: 256, offset: 448)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !341, line: 1883, size: 256, elements: !1584)
!1584 = !{!1585, !1587, !1588, !1593}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1583, file: !341, line: 1884, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1583, file: !341, line: 1885, baseType: !1586, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1583, file: !341, line: 1891, baseType: !1589, size: 64, offset: 128)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1583, file: !341, line: 1891, size: 64, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1589, file: !341, line: 1891, baseType: !1575, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1589, file: !341, line: 1891, baseType: !903, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1583, file: !341, line: 1892, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !905, file: !341, line: 3399, baseType: !1596, size: 704)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !341, line: 2008, size: 704, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1596, file: !341, line: 2009, baseType: !941, size: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1596, file: !341, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1596, file: !341, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1596, file: !341, line: 2014, baseType: !1023, size: 32, offset: 224)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1596, file: !341, line: 2016, baseType: !903, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1596, file: !341, line: 2017, baseType: !1282, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1596, file: !341, line: 2019, baseType: !903, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1596, file: !341, line: 2020, baseType: !903, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1596, file: !341, line: 2021, baseType: !903, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1596, file: !341, line: 2022, baseType: !903, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1596, file: !341, line: 2023, baseType: !903, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !905, file: !341, line: 3400, baseType: !1610, size: 832)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !341, line: 2430, size: 832, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1610, file: !341, line: 2431, baseType: !941, size: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1610, file: !341, line: 2433, baseType: !903, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1610, file: !341, line: 2434, baseType: !903, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1610, file: !341, line: 2435, baseType: !903, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1610, file: !341, line: 2436, baseType: !903, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1610, file: !341, line: 2437, baseType: !1282, size: 64, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1610, file: !341, line: 2438, baseType: !903, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1610, file: !341, line: 2440, baseType: !903, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1610, file: !341, line: 2441, baseType: !903, size: 64, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1610, file: !341, line: 2443, baseType: !1622, size: 128, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !341, line: 182, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !341, line: 182, size: 128, elements: !1624)
!1624 = !{!1625}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1623, file: !341, line: 182, baseType: !1287, size: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !905, file: !341, line: 3401, baseType: !1627, size: 320)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !341, line: 3327, size: 320, elements: !1628)
!1628 = !{!1629, !1630, !1637}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1627, file: !341, line: 3329, baseType: !941, size: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1627, file: !341, line: 3330, baseType: !1631, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !341, line: 3320, size: 192, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1632, file: !341, line: 3322, baseType: !1631, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1632, file: !341, line: 3323, baseType: !1631, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1632, file: !341, line: 3324, baseType: !903, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1627, file: !341, line: 3331, baseType: !1631, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !905, file: !341, line: 3402, baseType: !1639, size: 256)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !341, line: 1540, size: 256, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1639, file: !341, line: 1541, baseType: !941, size: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1639, file: !341, line: 1542, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !341, line: 1538, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !341, line: 1538, size: 192, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1645, file: !341, line: 1538, baseType: !1648, size: 192)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !341, line: 1537, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !341, line: 1537, size: 192, elements: !1650)
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1649, file: !341, line: 1537, baseType: !7, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1649, file: !341, line: 1537, baseType: !7, size: 32, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1649, file: !341, line: 1537, baseType: !1654, size: 128, offset: 64)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1655, size: 128, elements: !823)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !341, line: 1535, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !341, line: 1532, size: 128, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1656, file: !341, line: 1533, baseType: !903, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1656, file: !341, line: 1534, baseType: !903, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !905, file: !341, line: 3403, baseType: !1661, size: 512)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !341, line: 1938, size: 512, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666, !1672, !1673, !1674}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1661, file: !341, line: 1939, baseType: !941, size: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1661, file: !341, line: 1940, baseType: !1023, size: 32, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1661, file: !341, line: 1941, baseType: !340, size: 32, offset: 224)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1661, file: !341, line: 1946, baseType: !1667, size: 32, offset: 256)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !341, line: 1942, size: 32, elements: !1668)
!1668 = !{!1669, !1670, !1671}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1667, file: !341, line: 1943, baseType: !359, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1667, file: !341, line: 1944, baseType: !366, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1667, file: !341, line: 1945, baseType: !373, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1661, file: !341, line: 1950, baseType: !1345, size: 64, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1661, file: !341, line: 1951, baseType: !1345, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1661, file: !341, line: 1953, baseType: !1293, size: 64, offset: 448)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !905, file: !341, line: 3404, baseType: !1676, size: 1664)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !341, line: 3337, size: 1664, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1676, file: !341, line: 3338, baseType: !941, size: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1676, file: !341, line: 3341, baseType: !1680, size: 1472, offset: 192)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1681, line: 410, size: 1472, elements: !1682)
!1681 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1680, file: !1681, line: 412, baseType: !769, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1680, file: !1681, line: 413, baseType: !769, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1680, file: !1681, line: 414, baseType: !769, size: 32, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1680, file: !1681, line: 415, baseType: !769, size: 32, offset: 96)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1680, file: !1681, line: 416, baseType: !769, size: 32, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1680, file: !1681, line: 417, baseType: !769, size: 32, offset: 160)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1680, file: !1681, line: 418, baseType: !768, size: 8, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1680, file: !1681, line: 419, baseType: !768, size: 8, offset: 200)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1680, file: !1681, line: 420, baseType: !1692, size: 8, offset: 208)
!1692 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1680, file: !1681, line: 421, baseType: !1692, size: 8, offset: 216)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1680, file: !1681, line: 422, baseType: !1692, size: 8, offset: 224)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1680, file: !1681, line: 423, baseType: !1692, size: 8, offset: 232)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1680, file: !1681, line: 424, baseType: !1692, size: 8, offset: 240)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1680, file: !1681, line: 425, baseType: !1692, size: 8, offset: 248)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1680, file: !1681, line: 426, baseType: !1692, size: 8, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1680, file: !1681, line: 427, baseType: !1692, size: 8, offset: 264)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1680, file: !1681, line: 428, baseType: !1692, size: 8, offset: 272)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1680, file: !1681, line: 429, baseType: !1692, size: 8, offset: 280)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1680, file: !1681, line: 430, baseType: !1692, size: 8, offset: 288)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1680, file: !1681, line: 431, baseType: !1692, size: 8, offset: 296)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1680, file: !1681, line: 432, baseType: !1692, size: 8, offset: 304)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1680, file: !1681, line: 433, baseType: !1692, size: 8, offset: 312)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1680, file: !1681, line: 434, baseType: !1692, size: 8, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1680, file: !1681, line: 435, baseType: !1692, size: 8, offset: 328)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1680, file: !1681, line: 436, baseType: !1692, size: 8, offset: 336)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1680, file: !1681, line: 437, baseType: !1692, size: 8, offset: 344)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1680, file: !1681, line: 438, baseType: !1692, size: 8, offset: 352)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1680, file: !1681, line: 439, baseType: !1692, size: 8, offset: 360)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1680, file: !1681, line: 440, baseType: !1692, size: 8, offset: 368)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1680, file: !1681, line: 441, baseType: !1692, size: 8, offset: 376)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1680, file: !1681, line: 442, baseType: !1692, size: 8, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1680, file: !1681, line: 443, baseType: !1692, size: 8, offset: 392)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1680, file: !1681, line: 444, baseType: !1692, size: 8, offset: 400)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1680, file: !1681, line: 445, baseType: !1692, size: 8, offset: 408)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1680, file: !1681, line: 446, baseType: !1692, size: 8, offset: 416)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1680, file: !1681, line: 447, baseType: !1692, size: 8, offset: 424)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1680, file: !1681, line: 448, baseType: !1692, size: 8, offset: 432)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1680, file: !1681, line: 449, baseType: !1692, size: 8, offset: 440)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1680, file: !1681, line: 450, baseType: !1692, size: 8, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1680, file: !1681, line: 451, baseType: !1692, size: 8, offset: 456)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1680, file: !1681, line: 452, baseType: !1692, size: 8, offset: 464)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1680, file: !1681, line: 453, baseType: !1692, size: 8, offset: 472)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1680, file: !1681, line: 454, baseType: !1692, size: 8, offset: 480)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1680, file: !1681, line: 455, baseType: !1692, size: 8, offset: 488)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1680, file: !1681, line: 456, baseType: !1692, size: 8, offset: 496)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1680, file: !1681, line: 457, baseType: !1692, size: 8, offset: 504)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1680, file: !1681, line: 458, baseType: !1692, size: 8, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1680, file: !1681, line: 459, baseType: !1692, size: 8, offset: 520)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1680, file: !1681, line: 460, baseType: !1692, size: 8, offset: 528)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1680, file: !1681, line: 461, baseType: !1692, size: 8, offset: 536)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1680, file: !1681, line: 462, baseType: !1692, size: 8, offset: 544)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1680, file: !1681, line: 463, baseType: !1692, size: 8, offset: 552)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1680, file: !1681, line: 464, baseType: !1692, size: 8, offset: 560)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1680, file: !1681, line: 465, baseType: !1692, size: 8, offset: 568)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1680, file: !1681, line: 466, baseType: !1692, size: 8, offset: 576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1680, file: !1681, line: 467, baseType: !1692, size: 8, offset: 584)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1680, file: !1681, line: 468, baseType: !1692, size: 8, offset: 592)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1680, file: !1681, line: 469, baseType: !1692, size: 8, offset: 600)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1680, file: !1681, line: 470, baseType: !1692, size: 8, offset: 608)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1680, file: !1681, line: 471, baseType: !1692, size: 8, offset: 616)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1680, file: !1681, line: 472, baseType: !1692, size: 8, offset: 624)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1680, file: !1681, line: 473, baseType: !1692, size: 8, offset: 632)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1680, file: !1681, line: 474, baseType: !1692, size: 8, offset: 640)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1680, file: !1681, line: 475, baseType: !1692, size: 8, offset: 648)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1680, file: !1681, line: 476, baseType: !1692, size: 8, offset: 656)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1680, file: !1681, line: 477, baseType: !1692, size: 8, offset: 664)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1680, file: !1681, line: 478, baseType: !1692, size: 8, offset: 672)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1680, file: !1681, line: 479, baseType: !1692, size: 8, offset: 680)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1680, file: !1681, line: 480, baseType: !1692, size: 8, offset: 688)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1680, file: !1681, line: 481, baseType: !1692, size: 8, offset: 696)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1680, file: !1681, line: 482, baseType: !1692, size: 8, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1680, file: !1681, line: 483, baseType: !1692, size: 8, offset: 712)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1680, file: !1681, line: 484, baseType: !1692, size: 8, offset: 720)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1680, file: !1681, line: 485, baseType: !1692, size: 8, offset: 728)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1680, file: !1681, line: 486, baseType: !1692, size: 8, offset: 736)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1680, file: !1681, line: 487, baseType: !1692, size: 8, offset: 744)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1680, file: !1681, line: 488, baseType: !1692, size: 8, offset: 752)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1680, file: !1681, line: 489, baseType: !1692, size: 8, offset: 760)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1680, file: !1681, line: 490, baseType: !1692, size: 8, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1680, file: !1681, line: 491, baseType: !1692, size: 8, offset: 776)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1680, file: !1681, line: 492, baseType: !1692, size: 8, offset: 784)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1680, file: !1681, line: 493, baseType: !1692, size: 8, offset: 792)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1680, file: !1681, line: 494, baseType: !1692, size: 8, offset: 800)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1680, file: !1681, line: 495, baseType: !1692, size: 8, offset: 808)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1680, file: !1681, line: 496, baseType: !1692, size: 8, offset: 816)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1680, file: !1681, line: 497, baseType: !1692, size: 8, offset: 824)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1680, file: !1681, line: 498, baseType: !1692, size: 8, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1680, file: !1681, line: 499, baseType: !1692, size: 8, offset: 840)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1680, file: !1681, line: 500, baseType: !1692, size: 8, offset: 848)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1680, file: !1681, line: 501, baseType: !1692, size: 8, offset: 856)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1680, file: !1681, line: 502, baseType: !1692, size: 8, offset: 864)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1680, file: !1681, line: 503, baseType: !1692, size: 8, offset: 872)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1680, file: !1681, line: 504, baseType: !1692, size: 8, offset: 880)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1680, file: !1681, line: 505, baseType: !1692, size: 8, offset: 888)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1680, file: !1681, line: 506, baseType: !1692, size: 8, offset: 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1680, file: !1681, line: 507, baseType: !1692, size: 8, offset: 904)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1680, file: !1681, line: 508, baseType: !1692, size: 8, offset: 912)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1680, file: !1681, line: 509, baseType: !1692, size: 8, offset: 920)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1680, file: !1681, line: 510, baseType: !1692, size: 8, offset: 928)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1680, file: !1681, line: 511, baseType: !1692, size: 8, offset: 936)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1680, file: !1681, line: 512, baseType: !1692, size: 8, offset: 944)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1680, file: !1681, line: 513, baseType: !1692, size: 8, offset: 952)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1680, file: !1681, line: 514, baseType: !1692, size: 8, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1680, file: !1681, line: 515, baseType: !1692, size: 8, offset: 968)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1680, file: !1681, line: 516, baseType: !1692, size: 8, offset: 976)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1680, file: !1681, line: 517, baseType: !1692, size: 8, offset: 984)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1680, file: !1681, line: 518, baseType: !1692, size: 8, offset: 992)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1680, file: !1681, line: 519, baseType: !1692, size: 8, offset: 1000)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1680, file: !1681, line: 520, baseType: !1692, size: 8, offset: 1008)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1680, file: !1681, line: 521, baseType: !1692, size: 8, offset: 1016)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1680, file: !1681, line: 522, baseType: !1692, size: 8, offset: 1024)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1680, file: !1681, line: 523, baseType: !1692, size: 8, offset: 1032)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1680, file: !1681, line: 524, baseType: !1692, size: 8, offset: 1040)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1680, file: !1681, line: 525, baseType: !1692, size: 8, offset: 1048)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1680, file: !1681, line: 526, baseType: !1692, size: 8, offset: 1056)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1680, file: !1681, line: 527, baseType: !1692, size: 8, offset: 1064)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1680, file: !1681, line: 528, baseType: !1692, size: 8, offset: 1072)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1680, file: !1681, line: 529, baseType: !1692, size: 8, offset: 1080)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1680, file: !1681, line: 530, baseType: !1692, size: 8, offset: 1088)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1680, file: !1681, line: 531, baseType: !1692, size: 8, offset: 1096)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1680, file: !1681, line: 532, baseType: !1692, size: 8, offset: 1104)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1680, file: !1681, line: 533, baseType: !1692, size: 8, offset: 1112)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1680, file: !1681, line: 534, baseType: !1692, size: 8, offset: 1120)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1680, file: !1681, line: 535, baseType: !1692, size: 8, offset: 1128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1680, file: !1681, line: 536, baseType: !1692, size: 8, offset: 1136)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1680, file: !1681, line: 537, baseType: !1692, size: 8, offset: 1144)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1680, file: !1681, line: 538, baseType: !1692, size: 8, offset: 1152)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1680, file: !1681, line: 539, baseType: !1692, size: 8, offset: 1160)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1680, file: !1681, line: 540, baseType: !1692, size: 8, offset: 1168)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1680, file: !1681, line: 541, baseType: !1692, size: 8, offset: 1176)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1680, file: !1681, line: 542, baseType: !1692, size: 8, offset: 1184)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1680, file: !1681, line: 543, baseType: !1692, size: 8, offset: 1192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1680, file: !1681, line: 544, baseType: !1692, size: 8, offset: 1200)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1680, file: !1681, line: 545, baseType: !1692, size: 8, offset: 1208)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1680, file: !1681, line: 546, baseType: !1692, size: 8, offset: 1216)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1680, file: !1681, line: 547, baseType: !1692, size: 8, offset: 1224)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1680, file: !1681, line: 548, baseType: !1692, size: 8, offset: 1232)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1680, file: !1681, line: 549, baseType: !1692, size: 8, offset: 1240)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1680, file: !1681, line: 550, baseType: !1692, size: 8, offset: 1248)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1680, file: !1681, line: 551, baseType: !1692, size: 8, offset: 1256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1680, file: !1681, line: 552, baseType: !1692, size: 8, offset: 1264)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1680, file: !1681, line: 553, baseType: !1692, size: 8, offset: 1272)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1680, file: !1681, line: 554, baseType: !1692, size: 8, offset: 1280)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1680, file: !1681, line: 555, baseType: !1692, size: 8, offset: 1288)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1680, file: !1681, line: 556, baseType: !1692, size: 8, offset: 1296)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1680, file: !1681, line: 557, baseType: !1692, size: 8, offset: 1304)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1680, file: !1681, line: 558, baseType: !1692, size: 8, offset: 1312)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1680, file: !1681, line: 559, baseType: !1692, size: 8, offset: 1320)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1680, file: !1681, line: 560, baseType: !1692, size: 8, offset: 1328)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1680, file: !1681, line: 561, baseType: !1692, size: 8, offset: 1336)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1680, file: !1681, line: 562, baseType: !1692, size: 8, offset: 1344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1680, file: !1681, line: 563, baseType: !1692, size: 8, offset: 1352)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1680, file: !1681, line: 564, baseType: !1692, size: 8, offset: 1360)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1680, file: !1681, line: 565, baseType: !1692, size: 8, offset: 1368)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1680, file: !1681, line: 566, baseType: !1692, size: 8, offset: 1376)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1680, file: !1681, line: 567, baseType: !1692, size: 8, offset: 1384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1680, file: !1681, line: 568, baseType: !1692, size: 8, offset: 1392)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1680, file: !1681, line: 569, baseType: !1692, size: 8, offset: 1400)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1680, file: !1681, line: 570, baseType: !1692, size: 8, offset: 1408)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1680, file: !1681, line: 571, baseType: !1692, size: 8, offset: 1416)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1680, file: !1681, line: 572, baseType: !1692, size: 8, offset: 1424)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1680, file: !1681, line: 573, baseType: !1692, size: 8, offset: 1432)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1680, file: !1681, line: 574, baseType: !1692, size: 8, offset: 1440)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !905, file: !341, line: 3405, baseType: !1848, size: 384)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !341, line: 3352, size: 384, elements: !1849)
!1849 = !{!1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1848, file: !341, line: 3353, baseType: !941, size: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1848, file: !341, line: 3356, baseType: !1852, size: 192, offset: 192)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1681, line: 578, size: 192, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1852, file: !1681, line: 580, baseType: !769, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1852, file: !1681, line: 581, baseType: !769, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1852, file: !1681, line: 582, baseType: !769, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1852, file: !1681, line: 583, baseType: !769, size: 32, offset: 96)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1852, file: !1681, line: 584, baseType: !768, size: 8, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1852, file: !1681, line: 585, baseType: !768, size: 8, offset: 136)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1852, file: !1681, line: 586, baseType: !768, size: 8, offset: 144)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1852, file: !1681, line: 587, baseType: !768, size: 8, offset: 152)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1852, file: !1681, line: 588, baseType: !768, size: 8, offset: 160)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1852, file: !1681, line: 589, baseType: !768, size: 8, offset: 168)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1852, file: !1681, line: 590, baseType: !768, size: 8, offset: 176)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !809, file: !568, line: 178, baseType: !1319, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !809, file: !568, line: 179, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !568, line: 150, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !568, line: 142, size: 320, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1869, file: !568, line: 144, baseType: !903, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1869, file: !568, line: 145, baseType: !788, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1869, file: !568, line: 146, baseType: !788, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1869, file: !568, line: 147, baseType: !1527, size: 32, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1869, file: !568, line: 148, baseType: !7, size: 32, offset: 224)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1869, file: !568, line: 149, baseType: !768, size: 8, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !809, file: !568, line: 180, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !568, line: 162, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !568, line: 159, size: 128, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1880, file: !568, line: 160, baseType: !903, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1880, file: !568, line: 161, baseType: !780, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !809, file: !568, line: 181, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !568, line: 181, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !804, file: !568, line: 317, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 64, elements: !823)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !804, file: !568, line: 318, baseType: !1890, size: 320)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !568, line: 188, size: 320, elements: !1891)
!1891 = !{!1892, !1894, !1949}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1890, file: !568, line: 190, baseType: !1893, size: 192)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 192, elements: !974)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1890, file: !568, line: 193, baseType: !1895, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !568, line: 206, size: 320, elements: !1897)
!1897 = !{!1898, !1934, !1935, !1936, !1948}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1896, file: !568, line: 208, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !789, line: 62, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1902, line: 538, size: 256, elements: !1903)
!1902 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1903 = !{!1904, !1908, !1914, !1925}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1901, file: !1902, line: 539, baseType: !1905, size: 32)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1902, line: 482, size: 32, elements: !1906)
!1906 = !{!1907}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1905, file: !1902, line: 484, baseType: !7, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1901, file: !1902, line: 540, baseType: !1909, size: 192)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1902, line: 488, size: 192, elements: !1910)
!1910 = !{!1911, !1912, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1909, file: !1902, line: 489, baseType: !1905, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1909, file: !1902, line: 492, baseType: !774, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1909, file: !1902, line: 496, baseType: !903, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1901, file: !1902, line: 541, baseType: !1915, size: 256)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1902, line: 504, size: 256, elements: !1916)
!1916 = !{!1917, !1918, !1923, !1924}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1915, file: !1902, line: 505, baseType: !1905, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1915, file: !1902, line: 509, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1902, line: 501, baseType: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1244}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1915, file: !1902, line: 510, baseType: !1244, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1915, file: !1902, line: 513, baseType: !1899, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1901, file: !1902, line: 542, baseType: !1926, size: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1902, line: 530, size: 128, elements: !1927)
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1926, file: !1902, line: 531, baseType: !1905, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1926, file: !1902, line: 534, baseType: !1930, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1902, line: 525, baseType: !1931)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!768, !903, !774, !858, !858}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1896, file: !568, line: 211, baseType: !7, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1896, file: !568, line: 214, baseType: !780, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1896, file: !568, line: 224, baseType: !1937, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !568, line: 202, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !568, line: 202, size: 128, elements: !1940)
!1940 = !{!1941}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1939, file: !568, line: 202, baseType: !1942, size: 128)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !568, line: 200, baseType: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !568, line: 200, size: 128, elements: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1943, file: !568, line: 200, baseType: !7, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1943, file: !568, line: 200, baseType: !7, size: 32, offset: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1943, file: !568, line: 200, baseType: !822, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1896, file: !568, line: 234, baseType: !1937, size: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1890, file: !568, line: 197, baseType: !780, size: 64, offset: 256)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !804, file: !568, line: 319, baseType: !963, size: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !804, file: !568, line: 320, baseType: !982, size: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !785, file: !3, line: 154, baseType: !784, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1955)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expr", file: !3, line: 98, size: 192, elements: !1956)
!1956 = !{!1957, !1958, !1959}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1955, file: !3, line: 101, baseType: !788, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1955, file: !3, line: 104, baseType: !1243, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "avail_occr", scope: !1955, file: !3, line: 107, baseType: !1960, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "occr", file: !3, line: 116, size: 192, elements: !1962)
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1961, file: !3, line: 119, baseType: !1960, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1961, file: !3, line: 121, baseType: !788, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "deleted_p", scope: !1961, file: !3, line: 123, baseType: !772, size: 8, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1257, line: 35, baseType: !780)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !1968, line: 42, baseType: !858)
!1968 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1973, line: 7, baseType: !1974)
!1973 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1975, line: 49, size: 1728, elements: !1976)
!1975 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1992, !1994, !1995, !1996, !1999, !2001, !2002, !2003, !2006, !2008, !2011, !2014, !2015, !2016, !2017, !2018}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1974, file: !1975, line: 51, baseType: !769, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1974, file: !1975, line: 54, baseType: !771, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1974, file: !1975, line: 55, baseType: !771, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1974, file: !1975, line: 56, baseType: !771, size: 64, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1974, file: !1975, line: 57, baseType: !771, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1974, file: !1975, line: 58, baseType: !771, size: 64, offset: 320)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1974, file: !1975, line: 59, baseType: !771, size: 64, offset: 384)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1974, file: !1975, line: 60, baseType: !771, size: 64, offset: 448)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1974, file: !1975, line: 61, baseType: !771, size: 64, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1974, file: !1975, line: 64, baseType: !771, size: 64, offset: 576)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1974, file: !1975, line: 65, baseType: !771, size: 64, offset: 640)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1974, file: !1975, line: 66, baseType: !771, size: 64, offset: 704)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1974, file: !1975, line: 68, baseType: !1990, size: 64, offset: 768)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1975, line: 36, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1974, file: !1975, line: 70, baseType: !1993, size: 64, offset: 832)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1974, file: !1975, line: 72, baseType: !769, size: 32, offset: 896)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1974, file: !1975, line: 73, baseType: !769, size: 32, offset: 928)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1974, file: !1975, line: 74, baseType: !1997, size: 64, offset: 960)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1998, line: 152, baseType: !780)
!1998 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1974, file: !1975, line: 77, baseType: !2000, size: 16, offset: 1024)
!2000 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1974, file: !1975, line: 78, baseType: !1692, size: 8, offset: 1040)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1974, file: !1975, line: 79, baseType: !998, size: 8, offset: 1048)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1974, file: !1975, line: 81, baseType: !2004, size: 64, offset: 1088)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1975, line: 43, baseType: null)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1974, file: !1975, line: 89, baseType: !2007, size: 64, offset: 1152)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1998, line: 153, baseType: !780)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1974, file: !1975, line: 91, baseType: !2009, size: 64, offset: 1216)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1975, line: 37, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1974, file: !1975, line: 92, baseType: !2012, size: 64, offset: 1280)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1975, line: 38, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1974, file: !1975, line: 93, baseType: !1993, size: 64, offset: 1344)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1974, file: !1975, line: 94, baseType: !773, size: 64, offset: 1408)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1974, file: !1975, line: 95, baseType: !1256, size: 64, offset: 1472)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1974, file: !1975, line: 96, baseType: !769, size: 32, offset: 1536)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1974, file: !1975, line: 98, baseType: !2019, size: 160, offset: 1568)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 160, elements: !2020)
!2020 = !{!2021}
!2021 = !DISubrange(count: 20)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unoccr", file: !3, line: 130, size: 192, elements: !2024)
!2024 = !{!2025, !2026, !2027}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2023, file: !3, line: 132, baseType: !2022, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !2023, file: !3, line: 133, baseType: !1335, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2023, file: !3, line: 134, baseType: !788, size: 64, offset: 128)
!2028 = !{!0, !2029, !2036, !2038, !2040, !2042, !2044, !2046, !2048, !2050, !2052, !2054}
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(name: "stats", scope: !2, file: !3, line: 88, type: !2031, isLocal: true, isDefinition: true)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 83, size: 96, elements: !2032)
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "moves_inserted", scope: !2031, file: !3, line: 85, baseType: !769, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "copies_inserted", scope: !2031, file: !3, line: 86, baseType: !769, size: 32, offset: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "insns_deleted", scope: !2031, file: !3, line: 87, baseType: !769, size: 32, offset: 64)
!2036 = !DIGlobalVariableExpression(var: !2037, expr: !DIExpression())
!2037 = distinct !DIGlobalVariable(name: "uid_cuid", scope: !2, file: !3, line: 168, type: !776, isLocal: true, isDefinition: true)
!2038 = !DIGlobalVariableExpression(var: !2039, expr: !DIExpression())
!2039 = distinct !DIGlobalVariable(name: "expr_obstack", scope: !2, file: !3, line: 110, type: !871, isLocal: true, isDefinition: true)
!2040 = !DIGlobalVariableExpression(var: !2041, expr: !DIExpression())
!2041 = distinct !DIGlobalVariable(name: "occr_obstack", scope: !2, file: !3, line: 126, type: !871, isLocal: true, isDefinition: true)
!2042 = !DIGlobalVariableExpression(var: !2043, expr: !DIExpression())
!2043 = distinct !DIGlobalVariable(name: "unoccr_obstack", scope: !2, file: !3, line: 137, type: !871, isLocal: true, isDefinition: true)
!2044 = !DIGlobalVariableExpression(var: !2045, expr: !DIExpression())
!2045 = distinct !DIGlobalVariable(name: "modifies_mem_obstack", scope: !2, file: !3, line: 162, type: !871, isLocal: true, isDefinition: true)
!2046 = !DIGlobalVariableExpression(var: !2047, expr: !DIExpression())
!2047 = distinct !DIGlobalVariable(name: "reg_avail_info", scope: !2, file: !3, line: 148, type: !776, isLocal: true, isDefinition: true)
!2048 = !DIGlobalVariableExpression(var: !2049, expr: !DIExpression())
!2049 = distinct !DIGlobalVariable(name: "modifies_mem_obstack_bottom", scope: !2, file: !3, line: 163, type: !784, isLocal: true, isDefinition: true)
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(name: "modifies_mem_list", scope: !2, file: !3, line: 156, type: !784, isLocal: true, isDefinition: true)
!2052 = !DIGlobalVariableExpression(var: !2053, expr: !DIExpression())
!2053 = distinct !DIGlobalVariable(name: "mems_conflict_p", scope: !2, file: !3, line: 570, type: !769, isLocal: true, isDefinition: true)
!2054 = !DIGlobalVariableExpression(var: !2055, expr: !DIExpression())
!2055 = distinct !DIGlobalVariable(name: "expr_table", scope: !2, file: !3, line: 95, type: !1233, isLocal: true, isDefinition: true)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2056, file: !6, line: 164, baseType: !2059, size: 640)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2067, !2071, !2073, !2074, !2075, !2077, !2078, !2079, !2080, !2081}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2059, file: !6, line: 117, baseType: !5, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2059, file: !6, line: 121, baseType: !774, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2059, file: !6, line: 125, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!768}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2059, file: !6, line: 130, baseType: !2068, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!7}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2059, file: !6, line: 133, baseType: !2072, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2059, file: !6, line: 136, baseType: !2072, size: 64, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2059, file: !6, line: 139, baseType: !769, size: 32, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2059, file: !6, line: 143, baseType: !2076, size: 32, offset: 416)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2059, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2059, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2059, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2059, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2059, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2082 = !DIGlobalVariableExpression(var: !2053, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!2083 = !{i32 2, !"Dwarf Version", i32 4}
!2084 = !{i32 2, !"Debug Info Version", i32 3}
!2085 = !{i32 1, !"wchar_size", i32 4}
!2086 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2087 = distinct !DISubprogram(name: "vprintf", scope: !2088, file: !2088, line: 39, type: !2089, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2088 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!769, !2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !774)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2093, file: !3, baseType: !7, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2093, file: !3, baseType: !7, size: 32, offset: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2093, file: !3, baseType: !773, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2093, file: !3, baseType: !773, size: 64, offset: 128)
!2099 = !{!2100, !2101}
!2100 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2087, file: !2088, line: 39, type: !2091)
!2101 = !DILocalVariable(name: "__arg", arg: 2, scope: !2087, file: !2088, line: 39, type: !2092)
!2102 = !DILocation(line: 0, scope: !2087)
!2103 = !DILocation(line: 41, column: 20, scope: !2087)
!2104 = !DILocation(line: 41, column: 10, scope: !2087)
!2105 = !DILocation(line: 41, column: 3, scope: !2087)
!2106 = distinct !DISubprogram(name: "getchar", scope: !2088, file: !2088, line: 47, type: !2107, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!769}
!2109 = !{}
!2110 = !DILocation(line: 49, column: 16, scope: !2106)
!2111 = !DILocation(line: 49, column: 10, scope: !2106)
!2112 = !DILocation(line: 49, column: 3, scope: !2106)
!2113 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2088, file: !2088, line: 56, type: !2114, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!769, !1971}
!2116 = !{!2117}
!2117 = !DILocalVariable(name: "__fp", arg: 1, scope: !2113, file: !2088, line: 56, type: !1971)
!2118 = !DILocation(line: 0, scope: !2113)
!2119 = !DILocation(line: 58, column: 10, scope: !2113)
!2120 = !DILocation(line: 58, column: 3, scope: !2113)
!2121 = distinct !DISubprogram(name: "getc_unlocked", scope: !2088, file: !2088, line: 66, type: !2114, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2122)
!2122 = !{!2123}
!2123 = !DILocalVariable(name: "__fp", arg: 1, scope: !2121, file: !2088, line: 66, type: !1971)
!2124 = !DILocation(line: 0, scope: !2121)
!2125 = !DILocation(line: 68, column: 10, scope: !2121)
!2126 = !DILocation(line: 68, column: 3, scope: !2121)
!2127 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2088, file: !2088, line: 73, type: !2107, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2128 = !DILocation(line: 75, column: 10, scope: !2127)
!2129 = !DILocation(line: 75, column: 3, scope: !2127)
!2130 = distinct !DISubprogram(name: "putchar", scope: !2088, file: !2088, line: 82, type: !2131, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!769, !769}
!2133 = !{!2134}
!2134 = !DILocalVariable(name: "__c", arg: 1, scope: !2130, file: !2088, line: 82, type: !769)
!2135 = !DILocation(line: 0, scope: !2130)
!2136 = !DILocation(line: 84, column: 21, scope: !2130)
!2137 = !DILocation(line: 84, column: 10, scope: !2130)
!2138 = !DILocation(line: 84, column: 3, scope: !2130)
!2139 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2088, file: !2088, line: 91, type: !2140, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!769, !769, !1971}
!2142 = !{!2143, !2144}
!2143 = !DILocalVariable(name: "__c", arg: 1, scope: !2139, file: !2088, line: 91, type: !769)
!2144 = !DILocalVariable(name: "__stream", arg: 2, scope: !2139, file: !2088, line: 91, type: !1971)
!2145 = !DILocation(line: 0, scope: !2139)
!2146 = !DILocation(line: 93, column: 10, scope: !2139)
!2147 = !DILocation(line: 93, column: 3, scope: !2139)
!2148 = distinct !DISubprogram(name: "putc_unlocked", scope: !2088, file: !2088, line: 101, type: !2140, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2149)
!2149 = !{!2150, !2151}
!2150 = !DILocalVariable(name: "__c", arg: 1, scope: !2148, file: !2088, line: 101, type: !769)
!2151 = !DILocalVariable(name: "__stream", arg: 2, scope: !2148, file: !2088, line: 101, type: !1971)
!2152 = !DILocation(line: 0, scope: !2148)
!2153 = !DILocation(line: 103, column: 10, scope: !2148)
!2154 = !DILocation(line: 103, column: 3, scope: !2148)
!2155 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2088, file: !2088, line: 108, type: !2131, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2156 = !{!2157}
!2157 = !DILocalVariable(name: "__c", arg: 1, scope: !2155, file: !2088, line: 108, type: !769)
!2158 = !DILocation(line: 0, scope: !2155)
!2159 = !DILocation(line: 110, column: 10, scope: !2155)
!2160 = !DILocation(line: 110, column: 3, scope: !2155)
!2161 = distinct !DISubprogram(name: "getline", scope: !2088, file: !2088, line: 118, type: !2162, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2164, !770, !2165, !1971}
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1998, line: 193, baseType: !780)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!2166 = !{!2167, !2168, !2169}
!2167 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2161, file: !2088, line: 118, type: !770)
!2168 = !DILocalVariable(name: "__n", arg: 2, scope: !2161, file: !2088, line: 118, type: !2165)
!2169 = !DILocalVariable(name: "__stream", arg: 3, scope: !2161, file: !2088, line: 118, type: !1971)
!2170 = !DILocation(line: 0, scope: !2161)
!2171 = !DILocation(line: 120, column: 10, scope: !2161)
!2172 = !DILocation(line: 120, column: 3, scope: !2161)
!2173 = distinct !DISubprogram(name: "feof_unlocked", scope: !2088, file: !2088, line: 128, type: !2114, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2174)
!2174 = !{!2175}
!2175 = !DILocalVariable(name: "__stream", arg: 1, scope: !2173, file: !2088, line: 128, type: !1971)
!2176 = !DILocation(line: 0, scope: !2173)
!2177 = !DILocation(line: 130, column: 10, scope: !2173)
!2178 = !DILocation(line: 130, column: 3, scope: !2173)
!2179 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2088, file: !2088, line: 135, type: !2114, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2180)
!2180 = !{!2181}
!2181 = !DILocalVariable(name: "__stream", arg: 1, scope: !2179, file: !2088, line: 135, type: !1971)
!2182 = !DILocation(line: 0, scope: !2179)
!2183 = !DILocation(line: 137, column: 10, scope: !2179)
!2184 = !DILocation(line: 137, column: 3, scope: !2179)
!2185 = distinct !DISubprogram(name: "tolower", scope: !2186, file: !2186, line: 207, type: !2131, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2187)
!2186 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2187 = !{!2188}
!2188 = !DILocalVariable(name: "__c", arg: 1, scope: !2185, file: !2186, line: 207, type: !769)
!2189 = !DILocation(line: 0, scope: !2185)
!2190 = !DILocation(line: 209, column: 22, scope: !2185)
!2191 = !DILocation(line: 209, column: 39, scope: !2185)
!2192 = !DILocation(line: 209, column: 38, scope: !2185)
!2193 = !DILocation(line: 209, column: 37, scope: !2185)
!2194 = !DILocation(line: 209, column: 10, scope: !2185)
!2195 = !DILocation(line: 209, column: 3, scope: !2185)
!2196 = distinct !DISubprogram(name: "toupper", scope: !2186, file: !2186, line: 213, type: !2131, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2197)
!2197 = !{!2198}
!2198 = !DILocalVariable(name: "__c", arg: 1, scope: !2196, file: !2186, line: 213, type: !769)
!2199 = !DILocation(line: 0, scope: !2196)
!2200 = !DILocation(line: 215, column: 22, scope: !2196)
!2201 = !DILocation(line: 215, column: 39, scope: !2196)
!2202 = !DILocation(line: 215, column: 38, scope: !2196)
!2203 = !DILocation(line: 215, column: 37, scope: !2196)
!2204 = !DILocation(line: 215, column: 10, scope: !2196)
!2205 = !DILocation(line: 215, column: 3, scope: !2196)
!2206 = distinct !DISubprogram(name: "atoi", scope: !2207, file: !2207, line: 361, type: !2208, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2210)
!2207 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!769, !774}
!2210 = !{!2211}
!2211 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2206, file: !2207, line: 361, type: !774)
!2212 = !DILocation(line: 0, scope: !2206)
!2213 = !DILocation(line: 363, column: 16, scope: !2206)
!2214 = !DILocation(line: 363, column: 10, scope: !2206)
!2215 = !DILocation(line: 363, column: 3, scope: !2206)
!2216 = distinct !DISubprogram(name: "atol", scope: !2207, file: !2207, line: 366, type: !2217, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!780, !774}
!2219 = !{!2220}
!2220 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2216, file: !2207, line: 366, type: !774)
!2221 = !DILocation(line: 0, scope: !2216)
!2222 = !DILocation(line: 368, column: 10, scope: !2216)
!2223 = !DILocation(line: 368, column: 3, scope: !2216)
!2224 = distinct !DISubprogram(name: "atoll", scope: !2207, file: !2207, line: 373, type: !2225, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!2227, !774}
!2227 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2228 = !{!2229}
!2229 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2224, file: !2207, line: 373, type: !774)
!2230 = !DILocation(line: 0, scope: !2224)
!2231 = !DILocation(line: 375, column: 10, scope: !2224)
!2232 = !DILocation(line: 375, column: 3, scope: !2224)
!2233 = distinct !DISubprogram(name: "bsearch", scope: !2234, file: !2234, line: 20, type: !2235, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2238)
!2234 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!773, !1244, !1244, !1256, !1256, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2207, line: 808, baseType: !1248)
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248}
!2239 = !DILocalVariable(name: "__key", arg: 1, scope: !2233, file: !2234, line: 20, type: !1244)
!2240 = !DILocalVariable(name: "__base", arg: 2, scope: !2233, file: !2234, line: 20, type: !1244)
!2241 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2233, file: !2234, line: 20, type: !1256)
!2242 = !DILocalVariable(name: "__size", arg: 4, scope: !2233, file: !2234, line: 20, type: !1256)
!2243 = !DILocalVariable(name: "__compar", arg: 5, scope: !2233, file: !2234, line: 21, type: !2237)
!2244 = !DILocalVariable(name: "__l", scope: !2233, file: !2234, line: 23, type: !1256)
!2245 = !DILocalVariable(name: "__u", scope: !2233, file: !2234, line: 23, type: !1256)
!2246 = !DILocalVariable(name: "__idx", scope: !2233, file: !2234, line: 23, type: !1256)
!2247 = !DILocalVariable(name: "__p", scope: !2233, file: !2234, line: 24, type: !1244)
!2248 = !DILocalVariable(name: "__comparison", scope: !2233, file: !2234, line: 25, type: !769)
!2249 = !DILocation(line: 0, scope: !2233)
!2250 = !DILocation(line: 29, column: 3, scope: !2233)
!2251 = !DILocation(line: 27, column: 7, scope: !2233)
!2252 = !DILocation(line: 29, column: 14, scope: !2233)
!2253 = !DILocation(line: 31, column: 20, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2233, file: !2234, line: 30, column: 5)
!2255 = !DILocation(line: 31, column: 27, scope: !2254)
!2256 = !DILocation(line: 32, column: 56, scope: !2254)
!2257 = !DILocation(line: 32, column: 47, scope: !2254)
!2258 = !DILocation(line: 33, column: 22, scope: !2254)
!2259 = !DILocation(line: 34, column: 24, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2254, file: !2234, line: 34, column: 11)
!2261 = !DILocation(line: 34, column: 11, scope: !2254)
!2262 = !DILocation(line: 36, column: 29, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !2234, line: 36, column: 16)
!2264 = !DILocation(line: 36, column: 16, scope: !2260)
!2265 = !DILocation(line: 37, column: 14, scope: !2263)
!2266 = distinct !{!2266, !2250, !2267}
!2267 = !DILocation(line: 40, column: 5, scope: !2233)
!2268 = !DILocation(line: 43, column: 1, scope: !2233)
!2269 = distinct !DISubprogram(name: "atof", scope: !2270, file: !2270, line: 25, type: !2271, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!2273, !774}
!2273 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2274 = !{!2275}
!2275 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2269, file: !2270, line: 25, type: !774)
!2276 = !DILocation(line: 0, scope: !2269)
!2277 = !DILocation(line: 27, column: 10, scope: !2269)
!2278 = !DILocation(line: 27, column: 3, scope: !2269)
!2279 = distinct !DISubprogram(name: "strtoimax", scope: !2280, file: !2280, line: 324, type: !2281, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2280 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!2283, !2091, !2286, !769}
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2284, line: 101, baseType: !2285)
!2284 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1998, line: 72, baseType: !780)
!2286 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !770)
!2287 = !{!2288, !2289, !2290}
!2288 = !DILocalVariable(name: "nptr", arg: 1, scope: !2279, file: !2280, line: 324, type: !2091)
!2289 = !DILocalVariable(name: "endptr", arg: 2, scope: !2279, file: !2280, line: 324, type: !2286)
!2290 = !DILocalVariable(name: "base", arg: 3, scope: !2279, file: !2280, line: 324, type: !769)
!2291 = !DILocation(line: 0, scope: !2279)
!2292 = !DILocation(line: 327, column: 10, scope: !2279)
!2293 = !DILocation(line: 327, column: 3, scope: !2279)
!2294 = distinct !DISubprogram(name: "strtoumax", scope: !2280, file: !2280, line: 336, type: !2295, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2299)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!2297, !2091, !2286, !769}
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2284, line: 102, baseType: !2298)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1998, line: 73, baseType: !858)
!2299 = !{!2300, !2301, !2302}
!2300 = !DILocalVariable(name: "nptr", arg: 1, scope: !2294, file: !2280, line: 336, type: !2091)
!2301 = !DILocalVariable(name: "endptr", arg: 2, scope: !2294, file: !2280, line: 336, type: !2286)
!2302 = !DILocalVariable(name: "base", arg: 3, scope: !2294, file: !2280, line: 336, type: !769)
!2303 = !DILocation(line: 0, scope: !2294)
!2304 = !DILocation(line: 339, column: 10, scope: !2294)
!2305 = !DILocation(line: 339, column: 3, scope: !2294)
!2306 = distinct !DISubprogram(name: "wcstoimax", scope: !2280, file: !2280, line: 348, type: !2307, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2316)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!2283, !2309, !2313, !769}
!2309 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2310)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2312)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2280, line: 34, baseType: !769)
!2313 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2314)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2316 = !{!2317, !2318, !2319}
!2317 = !DILocalVariable(name: "nptr", arg: 1, scope: !2306, file: !2280, line: 348, type: !2309)
!2318 = !DILocalVariable(name: "endptr", arg: 2, scope: !2306, file: !2280, line: 348, type: !2313)
!2319 = !DILocalVariable(name: "base", arg: 3, scope: !2306, file: !2280, line: 348, type: !769)
!2320 = !DILocation(line: 0, scope: !2306)
!2321 = !DILocation(line: 351, column: 10, scope: !2306)
!2322 = !DILocation(line: 351, column: 3, scope: !2306)
!2323 = distinct !DISubprogram(name: "wcstoumax", scope: !2280, file: !2280, line: 362, type: !2324, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!2297, !2309, !2313, !769}
!2326 = !{!2327, !2328, !2329}
!2327 = !DILocalVariable(name: "nptr", arg: 1, scope: !2323, file: !2280, line: 362, type: !2309)
!2328 = !DILocalVariable(name: "endptr", arg: 2, scope: !2323, file: !2280, line: 362, type: !2313)
!2329 = !DILocalVariable(name: "base", arg: 3, scope: !2323, file: !2280, line: 362, type: !769)
!2330 = !DILocation(line: 0, scope: !2323)
!2331 = !DILocation(line: 365, column: 10, scope: !2323)
!2332 = !DILocation(line: 365, column: 3, scope: !2323)
!2333 = distinct !DISubprogram(name: "stat", scope: !2334, file: !2334, line: 453, type: !2335, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2372)
!2334 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!769, !774, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2339, line: 46, size: 1152, elements: !2340)
!2339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2340 = !{!2341, !2343, !2345, !2347, !2349, !2351, !2353, !2354, !2355, !2356, !2358, !2360, !2368, !2369, !2370}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2338, file: !2339, line: 48, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1998, line: 145, baseType: !858)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2338, file: !2339, line: 53, baseType: !2344, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1998, line: 148, baseType: !858)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2338, file: !2339, line: 61, baseType: !2346, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1998, line: 151, baseType: !858)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2338, file: !2339, line: 62, baseType: !2348, size: 32, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1998, line: 150, baseType: !7)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2338, file: !2339, line: 64, baseType: !2350, size: 32, offset: 224)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1998, line: 146, baseType: !7)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2338, file: !2339, line: 65, baseType: !2352, size: 32, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1998, line: 147, baseType: !7)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2338, file: !2339, line: 67, baseType: !769, size: 32, offset: 288)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2338, file: !2339, line: 69, baseType: !2342, size: 64, offset: 320)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2338, file: !2339, line: 74, baseType: !1997, size: 64, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2338, file: !2339, line: 78, baseType: !2357, size: 64, offset: 448)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1998, line: 174, baseType: !780)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2338, file: !2339, line: 80, baseType: !2359, size: 64, offset: 512)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1998, line: 179, baseType: !780)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2338, file: !2339, line: 91, baseType: !2361, size: 128, offset: 576)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2362, line: 10, size: 128, elements: !2363)
!2362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2363 = !{!2364, !2366}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2361, file: !2362, line: 12, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1998, line: 160, baseType: !780)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2361, file: !2362, line: 16, baseType: !2367, size: 64, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1998, line: 196, baseType: !780)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2338, file: !2339, line: 92, baseType: !2361, size: 128, offset: 704)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2338, file: !2339, line: 93, baseType: !2361, size: 128, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2338, file: !2339, line: 106, baseType: !2371, size: 192, offset: 960)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2367, size: 192, elements: !974)
!2372 = !{!2373, !2374}
!2373 = !DILocalVariable(name: "__path", arg: 1, scope: !2333, file: !2334, line: 453, type: !774)
!2374 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2333, file: !2334, line: 453, type: !2337)
!2375 = !DILocation(line: 0, scope: !2333)
!2376 = !DILocation(line: 455, column: 10, scope: !2333)
!2377 = !DILocation(line: 455, column: 3, scope: !2333)
!2378 = distinct !DISubprogram(name: "lstat", scope: !2334, file: !2334, line: 460, type: !2335, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!2379 = !{!2380, !2381}
!2380 = !DILocalVariable(name: "__path", arg: 1, scope: !2378, file: !2334, line: 460, type: !774)
!2381 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2378, file: !2334, line: 460, type: !2337)
!2382 = !DILocation(line: 0, scope: !2378)
!2383 = !DILocation(line: 462, column: 10, scope: !2378)
!2384 = !DILocation(line: 462, column: 3, scope: !2378)
!2385 = distinct !DISubprogram(name: "fstat", scope: !2334, file: !2334, line: 467, type: !2386, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!769, !769, !2337}
!2388 = !{!2389, !2390}
!2389 = !DILocalVariable(name: "__fd", arg: 1, scope: !2385, file: !2334, line: 467, type: !769)
!2390 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2385, file: !2334, line: 467, type: !2337)
!2391 = !DILocation(line: 0, scope: !2385)
!2392 = !DILocation(line: 469, column: 10, scope: !2385)
!2393 = !DILocation(line: 469, column: 3, scope: !2385)
!2394 = distinct !DISubprogram(name: "fstatat", scope: !2334, file: !2334, line: 474, type: !2395, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!769, !769, !774, !2337, !769}
!2397 = !{!2398, !2399, !2400, !2401}
!2398 = !DILocalVariable(name: "__fd", arg: 1, scope: !2394, file: !2334, line: 474, type: !769)
!2399 = !DILocalVariable(name: "__filename", arg: 2, scope: !2394, file: !2334, line: 474, type: !774)
!2400 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2394, file: !2334, line: 474, type: !2337)
!2401 = !DILocalVariable(name: "__flag", arg: 4, scope: !2394, file: !2334, line: 474, type: !769)
!2402 = !DILocation(line: 0, scope: !2394)
!2403 = !DILocation(line: 477, column: 10, scope: !2394)
!2404 = !DILocation(line: 477, column: 3, scope: !2394)
!2405 = distinct !DISubprogram(name: "mknod", scope: !2334, file: !2334, line: 483, type: !2406, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!769, !774, !2348, !2342}
!2408 = !{!2409, !2410, !2411}
!2409 = !DILocalVariable(name: "__path", arg: 1, scope: !2405, file: !2334, line: 483, type: !774)
!2410 = !DILocalVariable(name: "__mode", arg: 2, scope: !2405, file: !2334, line: 483, type: !2348)
!2411 = !DILocalVariable(name: "__dev", arg: 3, scope: !2405, file: !2334, line: 483, type: !2342)
!2412 = !DILocation(line: 0, scope: !2405)
!2413 = !DILocation(line: 485, column: 10, scope: !2405)
!2414 = !DILocation(line: 485, column: 3, scope: !2405)
!2415 = distinct !DISubprogram(name: "mknodat", scope: !2334, file: !2334, line: 491, type: !2416, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2418)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!769, !769, !774, !2348, !2342}
!2418 = !{!2419, !2420, !2421, !2422}
!2419 = !DILocalVariable(name: "__fd", arg: 1, scope: !2415, file: !2334, line: 491, type: !769)
!2420 = !DILocalVariable(name: "__path", arg: 2, scope: !2415, file: !2334, line: 491, type: !774)
!2421 = !DILocalVariable(name: "__mode", arg: 3, scope: !2415, file: !2334, line: 491, type: !2348)
!2422 = !DILocalVariable(name: "__dev", arg: 4, scope: !2415, file: !2334, line: 491, type: !2342)
!2423 = !DILocation(line: 0, scope: !2415)
!2424 = !DILocation(line: 494, column: 10, scope: !2415)
!2425 = !DILocation(line: 494, column: 3, scope: !2415)
!2426 = distinct !DISubprogram(name: "stat64", scope: !2334, file: !2334, line: 502, type: !2427, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2449)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!769, !774, !2429}
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2339, line: 119, size: 1152, elements: !2431)
!2431 = !{!2432, !2433, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2445, !2446, !2447, !2448}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2430, file: !2339, line: 121, baseType: !2342, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2430, file: !2339, line: 123, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1998, line: 149, baseType: !858)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2430, file: !2339, line: 124, baseType: !2346, size: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2430, file: !2339, line: 125, baseType: !2348, size: 32, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2430, file: !2339, line: 132, baseType: !2350, size: 32, offset: 224)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2430, file: !2339, line: 133, baseType: !2352, size: 32, offset: 256)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2430, file: !2339, line: 135, baseType: !769, size: 32, offset: 288)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2430, file: !2339, line: 136, baseType: !2342, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2430, file: !2339, line: 137, baseType: !1997, size: 64, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2430, file: !2339, line: 143, baseType: !2357, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2430, file: !2339, line: 144, baseType: !2444, size: 64, offset: 512)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1998, line: 180, baseType: !780)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2430, file: !2339, line: 152, baseType: !2361, size: 128, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2430, file: !2339, line: 153, baseType: !2361, size: 128, offset: 704)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2430, file: !2339, line: 154, baseType: !2361, size: 128, offset: 832)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2430, file: !2339, line: 164, baseType: !2371, size: 192, offset: 960)
!2449 = !{!2450, !2451}
!2450 = !DILocalVariable(name: "__path", arg: 1, scope: !2426, file: !2334, line: 502, type: !774)
!2451 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2426, file: !2334, line: 502, type: !2429)
!2452 = !DILocation(line: 0, scope: !2426)
!2453 = !DILocation(line: 504, column: 10, scope: !2426)
!2454 = !DILocation(line: 504, column: 3, scope: !2426)
!2455 = distinct !DISubprogram(name: "lstat64", scope: !2334, file: !2334, line: 509, type: !2427, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2456)
!2456 = !{!2457, !2458}
!2457 = !DILocalVariable(name: "__path", arg: 1, scope: !2455, file: !2334, line: 509, type: !774)
!2458 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2455, file: !2334, line: 509, type: !2429)
!2459 = !DILocation(line: 0, scope: !2455)
!2460 = !DILocation(line: 511, column: 10, scope: !2455)
!2461 = !DILocation(line: 511, column: 3, scope: !2455)
!2462 = distinct !DISubprogram(name: "fstat64", scope: !2334, file: !2334, line: 516, type: !2463, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!769, !769, !2429}
!2465 = !{!2466, !2467}
!2466 = !DILocalVariable(name: "__fd", arg: 1, scope: !2462, file: !2334, line: 516, type: !769)
!2467 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2462, file: !2334, line: 516, type: !2429)
!2468 = !DILocation(line: 0, scope: !2462)
!2469 = !DILocation(line: 518, column: 10, scope: !2462)
!2470 = !DILocation(line: 518, column: 3, scope: !2462)
!2471 = distinct !DISubprogram(name: "fstatat64", scope: !2334, file: !2334, line: 523, type: !2472, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!769, !769, !774, !2429, !769}
!2474 = !{!2475, !2476, !2477, !2478}
!2475 = !DILocalVariable(name: "__fd", arg: 1, scope: !2471, file: !2334, line: 523, type: !769)
!2476 = !DILocalVariable(name: "__filename", arg: 2, scope: !2471, file: !2334, line: 523, type: !774)
!2477 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2471, file: !2334, line: 523, type: !2429)
!2478 = !DILocalVariable(name: "__flag", arg: 4, scope: !2471, file: !2334, line: 523, type: !769)
!2479 = !DILocation(line: 0, scope: !2471)
!2480 = !DILocation(line: 526, column: 10, scope: !2471)
!2481 = !DILocation(line: 526, column: 3, scope: !2471)
!2482 = distinct !DISubprogram(name: "gate_handle_gcse2", scope: !3, file: !3, line: 1308, type: !2065, scopeLine: 1309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2483 = !DILocation(line: 1310, column: 11, scope: !2482)
!2484 = !DILocation(line: 1310, column: 20, scope: !2482)
!2485 = !DILocation(line: 1310, column: 27, scope: !2482)
!2486 = !DILocation(line: 1310, column: 24, scope: !2482)
!2487 = !DILocation(line: 1311, column: 38, scope: !2482)
!2488 = !DILocation(line: 1311, column: 7, scope: !2482)
!2489 = !DILocation(line: 1311, column: 4, scope: !2482)
!2490 = !DILocation(line: 1310, column: 3, scope: !2482)
!2491 = distinct !DISubprogram(name: "rest_of_handle_gcse2", scope: !3, file: !3, line: 1316, type: !2069, scopeLine: 1317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2492 = !DILocation(line: 1318, column: 27, scope: !2491)
!2493 = !DILocation(line: 1318, column: 3, scope: !2491)
!2494 = !DILocation(line: 1319, column: 24, scope: !2491)
!2495 = !DILocation(line: 1319, column: 3, scope: !2491)
!2496 = !DILocation(line: 1320, column: 3, scope: !2491)
!2497 = distinct !DISubprogram(name: "gcse_after_reload_main", scope: !3, file: !3, line: 1268, type: !2498, scopeLine: 1269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !788}
!2500 = !{!2501}
!2501 = !DILocalVariable(name: "f", arg: 1, scope: !2497, file: !3, line: 1268, type: !788)
!2502 = !DILocation(line: 0, scope: !2497)
!2503 = !DILocation(line: 1271, column: 3, scope: !2497)
!2504 = !DILocation(line: 1275, column: 3, scope: !2497)
!2505 = !DILocation(line: 1278, column: 3, scope: !2497)
!2506 = !DILocation(line: 1280, column: 3, scope: !2497)
!2507 = !DILocation(line: 1282, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 1282, column: 7)
!2509 = !DILocation(line: 1282, column: 7, scope: !2497)
!2510 = !DILocation(line: 1283, column: 5, scope: !2508)
!2511 = !DILocation(line: 1285, column: 22, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 1285, column: 7)
!2513 = !DILocation(line: 1285, column: 7, scope: !2512)
!2514 = !DILocation(line: 1285, column: 34, scope: !2512)
!2515 = !DILocation(line: 1285, column: 7, scope: !2497)
!2516 = !DILocation(line: 1287, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 1286, column: 5)
!2518 = !DILocation(line: 1288, column: 7, scope: !2517)
!2519 = !DILocation(line: 1290, column: 11, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 1290, column: 11)
!2521 = !DILocation(line: 1290, column: 11, scope: !2517)
!2522 = !DILocation(line: 1292, column: 4, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1291, column: 2)
!2524 = !DILocation(line: 1293, column: 13, scope: !2523)
!2525 = !DILocation(line: 1293, column: 55, scope: !2523)
!2526 = !DILocation(line: 1293, column: 4, scope: !2523)
!2527 = !DILocation(line: 1294, column: 13, scope: !2523)
!2528 = !DILocation(line: 1294, column: 55, scope: !2523)
!2529 = !DILocation(line: 1294, column: 4, scope: !2523)
!2530 = !DILocation(line: 1295, column: 13, scope: !2523)
!2531 = !DILocation(line: 1295, column: 55, scope: !2523)
!2532 = !DILocation(line: 1295, column: 4, scope: !2523)
!2533 = !DILocation(line: 1296, column: 13, scope: !2523)
!2534 = !DILocation(line: 1296, column: 4, scope: !2523)
!2535 = !DILocation(line: 1297, column: 2, scope: !2523)
!2536 = !DILocation(line: 1301, column: 3, scope: !2497)
!2537 = !DILocation(line: 1303, column: 3, scope: !2497)
!2538 = !DILocation(line: 1304, column: 1, scope: !2497)
!2539 = distinct !DISubprogram(name: "alloc_mem", scope: !3, file: !3, line: 219, type: !2540, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{null}
!2542 = !{!2543, !2544, !2545}
!2543 = !DILocalVariable(name: "i", scope: !2539, file: !3, line: 221, type: !769)
!2544 = !DILocalVariable(name: "bb", scope: !2539, file: !3, line: 222, type: !1318)
!2545 = !DILocalVariable(name: "insn", scope: !2539, file: !3, line: 223, type: !788)
!2546 = !DILocation(line: 226, column: 14, scope: !2539)
!2547 = !DILocation(line: 226, column: 12, scope: !2539)
!2548 = !DILocation(line: 0, scope: !2539)
!2549 = !DILocation(line: 228, column: 3, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 228, column: 3)
!2551 = !DILocation(line: 228, column: 3, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 228, column: 3)
!2553 = !DILocation(line: 227, column: 5, scope: !2539)
!2554 = !DILocation(line: 0, scope: !2550)
!2555 = !DILocation(line: 229, column: 5, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 229, column: 5)
!2557 = !DILocation(line: 0, scope: !2556)
!2558 = !DILocation(line: 229, column: 5, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 229, column: 5)
!2560 = !DILocation(line: 231, column: 13, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 231, column: 13)
!2562 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 230, column: 7)
!2563 = !DILocation(line: 231, column: 13, scope: !2562)
!2564 = !DILocation(line: 232, column: 33, scope: !2561)
!2565 = !DILocation(line: 232, column: 4, scope: !2561)
!2566 = !DILocation(line: 232, column: 13, scope: !2561)
!2567 = !DILocation(line: 232, column: 30, scope: !2561)
!2568 = !DILocation(line: 234, column: 4, scope: !2561)
!2569 = !DILocation(line: 234, column: 13, scope: !2561)
!2570 = !DILocation(line: 234, column: 30, scope: !2561)
!2571 = distinct !{!2571, !2555, !2572}
!2572 = !DILocation(line: 235, column: 7, scope: !2556)
!2573 = !DILocation(line: 0, scope: !2552)
!2574 = distinct !{!2574, !2549, !2575}
!2575 = !DILocation(line: 235, column: 7, scope: !2550)
!2576 = !DILocation(line: 241, column: 29, scope: !2539)
!2577 = !DILocation(line: 241, column: 16, scope: !2539)
!2578 = !DILocation(line: 241, column: 14, scope: !2539)
!2579 = !DILocation(line: 246, column: 3, scope: !2539)
!2580 = !DILocation(line: 247, column: 3, scope: !2539)
!2581 = !DILocation(line: 248, column: 3, scope: !2539)
!2582 = !DILocation(line: 249, column: 3, scope: !2539)
!2583 = !DILocation(line: 253, column: 28, scope: !2539)
!2584 = !DILocation(line: 253, column: 18, scope: !2539)
!2585 = !DILocation(line: 258, column: 29, scope: !2539)
!2586 = !DILocation(line: 257, column: 31, scope: !2539)
!2587 = !DILocation(line: 260, column: 1, scope: !2539)
!2588 = distinct !DISubprogram(name: "compute_hash_table", scope: !3, file: !3, line: 834, type: !2540, scopeLine: 835, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2589)
!2589 = !{!2590, !2591}
!2590 = !DILocalVariable(name: "bb", scope: !2588, file: !3, line: 836, type: !1318)
!2591 = !DILocalVariable(name: "insn", scope: !2592, file: !3, line: 840, type: !788)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 839, column: 5)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 838, column: 3)
!2594 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 838, column: 3)
!2595 = !DILocation(line: 838, column: 3, scope: !2594)
!2596 = !DILocation(line: 838, column: 3, scope: !2593)
!2597 = !DILocation(line: 0, scope: !2594)
!2598 = !DILocation(line: 0, scope: !2588)
!2599 = !DILocation(line: 847, column: 7, scope: !2592)
!2600 = !DILocation(line: 848, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 848, column: 7)
!2602 = !DILocation(line: 0, scope: !2601)
!2603 = !DILocation(line: 0, scope: !2592)
!2604 = !DILocation(line: 848, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 848, column: 7)
!2606 = !DILocation(line: 855, column: 7, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 855, column: 7)
!2608 = !DILocation(line: 850, column: 8, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 850, column: 8)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 849, column: 2)
!2611 = !DILocation(line: 850, column: 8, scope: !2610)
!2612 = !DILocation(line: 851, column: 13, scope: !2609)
!2613 = distinct !{!2613, !2600, !2614}
!2614 = !DILocation(line: 852, column: 2, scope: !2601)
!2615 = !DILocation(line: 0, scope: !2607)
!2616 = !DILocation(line: 855, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 855, column: 7)
!2618 = !DILocation(line: 856, column: 6, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 856, column: 6)
!2620 = !DILocation(line: 856, column: 20, scope: !2619)
!2621 = !DILocation(line: 856, column: 23, scope: !2619)
!2622 = !DILocation(line: 856, column: 49, scope: !2619)
!2623 = !DILocation(line: 856, column: 6, scope: !2617)
!2624 = !DILocation(line: 857, column: 4, scope: !2619)
!2625 = distinct !{!2625, !2606, !2626}
!2626 = !DILocation(line: 857, column: 23, scope: !2607)
!2627 = !DILocation(line: 0, scope: !2593)
!2628 = distinct !{!2628, !2595, !2629}
!2629 = !DILocation(line: 858, column: 5, scope: !2594)
!2630 = !DILocation(line: 859, column: 1, scope: !2588)
!2631 = distinct !DISubprogram(name: "dump_hash_table", scope: !3, file: !3, line: 458, type: !2632, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{null, !1971}
!2634 = !{!2635}
!2635 = !DILocalVariable(name: "file", arg: 1, scope: !2631, file: !3, line: 458, type: !1971)
!2636 = !DILocation(line: 0, scope: !2631)
!2637 = !DILocation(line: 460, column: 3, scope: !2631)
!2638 = !DILocation(line: 462, column: 30, scope: !2631)
!2639 = !DILocation(line: 462, column: 19, scope: !2631)
!2640 = !DILocation(line: 463, column: 34, scope: !2631)
!2641 = !DILocation(line: 463, column: 19, scope: !2631)
!2642 = !DILocation(line: 464, column: 29, scope: !2631)
!2643 = !DILocation(line: 464, column: 12, scope: !2631)
!2644 = !DILocation(line: 461, column: 3, scope: !2631)
!2645 = !DILocation(line: 465, column: 22, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 465, column: 7)
!2647 = !DILocation(line: 465, column: 7, scope: !2646)
!2648 = !DILocation(line: 465, column: 34, scope: !2646)
!2649 = !DILocation(line: 465, column: 7, scope: !2631)
!2650 = !DILocation(line: 467, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 466, column: 5)
!2652 = !DILocation(line: 468, column: 22, scope: !2651)
!2653 = !DILocation(line: 468, column: 57, scope: !2651)
!2654 = !DILocation(line: 468, column: 7, scope: !2651)
!2655 = !DILocation(line: 469, column: 5, scope: !2651)
!2656 = !DILocation(line: 470, column: 3, scope: !2631)
!2657 = !DILocation(line: 471, column: 1, scope: !2631)
!2658 = distinct !DISubprogram(name: "eliminate_partially_redundant_loads", scope: !3, file: !3, line: 1157, type: !2540, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2659)
!2659 = !{!2660, !2661, !2662, !2671, !2672}
!2660 = !DILocalVariable(name: "insn", scope: !2658, file: !3, line: 1159, type: !788)
!2661 = !DILocalVariable(name: "bb", scope: !2658, file: !3, line: 1160, type: !1318)
!2662 = !DILocalVariable(name: "pat", scope: !2663, file: !3, line: 1194, type: !788)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1193, column: 6)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1189, column: 8)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 1187, column: 2)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1186, column: 7)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1186, column: 7)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 1171, column: 5)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 1167, column: 3)
!2670 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 1167, column: 3)
!2671 = !DILocalVariable(name: "src", scope: !2663, file: !3, line: 1195, type: !788)
!2672 = !DILocalVariable(name: "expr", scope: !2663, file: !3, line: 1196, type: !1969)
!2673 = !DILocation(line: 1164, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 1164, column: 7)
!2675 = !DILocation(line: 1164, column: 24, scope: !2674)
!2676 = !DILocation(line: 1164, column: 35, scope: !2674)
!2677 = !DILocation(line: 1164, column: 32, scope: !2674)
!2678 = !DILocation(line: 1164, column: 7, scope: !2658)
!2679 = !DILocation(line: 1167, column: 3, scope: !2670)
!2680 = !DILocation(line: 1167, column: 3, scope: !2669)
!2681 = !DILocation(line: 0, scope: !2670)
!2682 = !DILocation(line: 0, scope: !2658)
!2683 = !DILocation(line: 1173, column: 13, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1173, column: 11)
!2685 = !DILocation(line: 1173, column: 11, scope: !2668)
!2686 = !DILocation(line: 1177, column: 11, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1177, column: 11)
!2688 = !DILocation(line: 1177, column: 11, scope: !2668)
!2689 = !DILocation(line: 1182, column: 7, scope: !2668)
!2690 = !DILocation(line: 1186, column: 7, scope: !2667)
!2691 = !DILocation(line: 0, scope: !2667)
!2692 = !DILocation(line: 1186, column: 7, scope: !2666)
!2693 = !DILocation(line: 1189, column: 8, scope: !2664)
!2694 = !DILocation(line: 1190, column: 15, scope: !2664)
!2695 = !DILocation(line: 1190, column: 18, scope: !2664)
!2696 = !DILocation(line: 1190, column: 44, scope: !2664)
!2697 = !DILocation(line: 1191, column: 8, scope: !2664)
!2698 = !DILocation(line: 1191, column: 11, scope: !2664)
!2699 = !DILocation(line: 1192, column: 8, scope: !2664)
!2700 = !DILocation(line: 1192, column: 11, scope: !2664)
!2701 = !DILocation(line: 1189, column: 8, scope: !2665)
!2702 = !DILocation(line: 0, scope: !2663)
!2703 = !DILocation(line: 1198, column: 13, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 1198, column: 12)
!2705 = !DILocation(line: 1199, column: 5, scope: !2704)
!2706 = !DILocation(line: 1199, column: 8, scope: !2704)
!2707 = !DILocation(line: 1199, column: 23, scope: !2704)
!2708 = !DILocation(line: 1200, column: 5, scope: !2704)
!2709 = !DILocation(line: 1200, column: 30, scope: !2704)
!2710 = !DILocation(line: 1200, column: 8, scope: !2704)
!2711 = !DILocation(line: 1203, column: 5, scope: !2704)
!2712 = !DILocation(line: 1203, column: 8, scope: !2704)
!2713 = !DILocation(line: 1204, column: 5, scope: !2704)
!2714 = !DILocation(line: 1204, column: 10, scope: !2704)
!2715 = !DILocation(line: 1204, column: 35, scope: !2704)
!2716 = !DILocation(line: 1204, column: 38, scope: !2704)
!2717 = !DILocation(line: 1205, column: 5, scope: !2704)
!2718 = !DILocation(line: 1205, column: 9, scope: !2704)
!2719 = !DILocation(line: 1207, column: 5, scope: !2704)
!2720 = !DILocation(line: 1207, column: 16, scope: !2704)
!2721 = !DILocation(line: 1207, column: 44, scope: !2704)
!2722 = !DILocation(line: 1198, column: 12, scope: !2663)
!2723 = !DILocation(line: 1212, column: 5, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 1208, column: 3)
!2725 = !DILocation(line: 1213, column: 3, scope: !2724)
!2726 = !DILocation(line: 1219, column: 8, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1219, column: 8)
!2728 = !DILocation(line: 1219, column: 8, scope: !2665)
!2729 = !DILocation(line: 1220, column: 6, scope: !2727)
!2730 = distinct !{!2730, !2690, !2731}
!2731 = !DILocation(line: 1221, column: 2, scope: !2667)
!2732 = !DILocation(line: 0, scope: !2669)
!2733 = distinct !{!2733, !2679, !2734}
!2734 = !DILocation(line: 1222, column: 5, scope: !2670)
!2735 = !DILocation(line: 1224, column: 3, scope: !2658)
!2736 = !DILocation(line: 1225, column: 1, scope: !2658)
!2737 = distinct !DISubprogram(name: "delete_redundant_insns", scope: !3, file: !3, line: 1257, type: !2540, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2738 = !DILocation(line: 1259, column: 18, scope: !2737)
!2739 = !DILocation(line: 1259, column: 3, scope: !2737)
!2740 = !DILocation(line: 1260, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 1260, column: 7)
!2742 = !DILocation(line: 1260, column: 7, scope: !2737)
!2743 = !DILocation(line: 1261, column: 5, scope: !2741)
!2744 = !DILocation(line: 1262, column: 1, scope: !2737)
!2745 = distinct !DISubprogram(name: "free_mem", scope: !3, file: !3, line: 265, type: !2540, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2746 = !DILocation(line: 267, column: 9, scope: !2745)
!2747 = !DILocation(line: 267, column: 3, scope: !2745)
!2748 = !DILocation(line: 269, column: 16, scope: !2745)
!2749 = !DILocation(line: 269, column: 3, scope: !2745)
!2750 = !DILocation(line: 271, column: 3, scope: !2745)
!2751 = !DILocation(line: 272, column: 3, scope: !2745)
!2752 = !DILocation(line: 273, column: 3, scope: !2745)
!2753 = !DILocation(line: 274, column: 3, scope: !2745)
!2754 = !DILocation(line: 276, column: 9, scope: !2745)
!2755 = !DILocation(line: 276, column: 3, scope: !2745)
!2756 = !DILocation(line: 277, column: 1, scope: !2745)
!2757 = distinct !DISubprogram(name: "hash_expr_for_htab", scope: !3, file: !3, line: 298, type: !1241, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2758)
!2758 = !{!2759, !2760}
!2759 = !DILocalVariable(name: "expp", arg: 1, scope: !2757, file: !3, line: 298, type: !1244)
!2760 = !DILocalVariable(name: "exp", scope: !2757, file: !3, line: 300, type: !2761)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!2762 = !DILocation(line: 0, scope: !2757)
!2763 = !DILocation(line: 301, column: 15, scope: !2757)
!2764 = !DILocation(line: 301, column: 3, scope: !2757)
!2765 = distinct !DISubprogram(name: "expr_equiv_p", scope: !3, file: !3, line: 308, type: !1249, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2766)
!2766 = !{!2767, !2768, !2769, !2770, !2771}
!2767 = !DILocalVariable(name: "exp1p", arg: 1, scope: !2765, file: !3, line: 308, type: !1244)
!2768 = !DILocalVariable(name: "exp2p", arg: 2, scope: !2765, file: !3, line: 308, type: !1244)
!2769 = !DILocalVariable(name: "exp1", scope: !2765, file: !3, line: 310, type: !2761)
!2770 = !DILocalVariable(name: "exp2", scope: !2765, file: !3, line: 311, type: !2761)
!2771 = !DILocalVariable(name: "equiv_p", scope: !2765, file: !3, line: 312, type: !769)
!2772 = !DILocation(line: 0, scope: !2765)
!2773 = !DILocation(line: 312, column: 36, scope: !2765)
!2774 = !DILocation(line: 312, column: 48, scope: !2765)
!2775 = !DILocation(line: 312, column: 17, scope: !2765)
!2776 = !DILocation(line: 314, column: 3, scope: !2765)
!2777 = !DILocation(line: 315, column: 3, scope: !2765)
!2778 = distinct !DISubprogram(name: "reset_opr_set_tables", scope: !3, file: !3, line: 717, type: !2540, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2779 = !DILocation(line: 719, column: 11, scope: !2778)
!2780 = !DILocation(line: 719, column: 3, scope: !2778)
!2781 = !DILocation(line: 720, column: 3, scope: !2778)
!2782 = !DILocation(line: 721, column: 21, scope: !2778)
!2783 = !DILocation(line: 722, column: 1, scope: !2778)
!2784 = distinct !DISubprogram(name: "record_opr_changes", scope: !3, file: !3, line: 729, type: !2498, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2785)
!2785 = !{!2786, !2787, !2788, !2791, !2792}
!2786 = !DILocalVariable(name: "insn", arg: 1, scope: !2784, file: !3, line: 729, type: !788)
!2787 = !DILocalVariable(name: "note", scope: !2784, file: !3, line: 731, type: !788)
!2788 = !DILocalVariable(name: "regno", scope: !2789, file: !3, line: 744, type: !7)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 743, column: 5)
!2790 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 742, column: 7)
!2791 = !DILocalVariable(name: "link", scope: !2789, file: !3, line: 745, type: !788)
!2792 = !DILocalVariable(name: "x", scope: !2789, file: !3, line: 745, type: !788)
!2793 = !DILocation(line: 0, scope: !2784)
!2794 = !DILocation(line: 734, column: 16, scope: !2784)
!2795 = !DILocation(line: 734, column: 54, scope: !2784)
!2796 = !DILocation(line: 734, column: 3, scope: !2784)
!2797 = !DILocation(line: 737, column: 15, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 737, column: 3)
!2799 = !DILocation(line: 737, column: 8, scope: !2798)
!2800 = !DILocation(line: 0, scope: !2798)
!2801 = !DILocation(line: 737, column: 3, scope: !2798)
!2802 = !DILocation(line: 738, column: 9, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 738, column: 9)
!2804 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 737, column: 3)
!2805 = !DILocation(line: 738, column: 30, scope: !2803)
!2806 = !DILocation(line: 738, column: 9, scope: !2804)
!2807 = !DILocation(line: 739, column: 39, scope: !2803)
!2808 = !DILocation(line: 739, column: 7, scope: !2803)
!2809 = !DILocation(line: 737, column: 46, scope: !2804)
!2810 = !DILocation(line: 737, column: 3, scope: !2804)
!2811 = distinct !{!2811, !2801, !2812}
!2812 = !DILocation(line: 739, column: 53, scope: !2798)
!2813 = !DILocation(line: 742, column: 7, scope: !2790)
!2814 = !DILocation(line: 742, column: 7, scope: !2784)
!2815 = !DILocation(line: 747, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 747, column: 7)
!2817 = !DILocation(line: 0, scope: !2816)
!2818 = !DILocation(line: 0, scope: !2789)
!2819 = !DILocation(line: 747, column: 29, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 747, column: 7)
!2821 = !DILocation(line: 748, column: 6, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 748, column: 6)
!2823 = !DILocation(line: 748, column: 6, scope: !2820)
!2824 = !DILocation(line: 749, column: 4, scope: !2822)
!2825 = !DILocation(line: 747, column: 59, scope: !2820)
!2826 = !DILocation(line: 747, column: 7, scope: !2820)
!2827 = distinct !{!2827, !2815, !2828}
!2828 = !DILocation(line: 749, column: 47, scope: !2816)
!2829 = !DILocation(line: 751, column: 19, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 751, column: 7)
!2831 = !DILocation(line: 751, column: 12, scope: !2830)
!2832 = !DILocation(line: 0, scope: !2830)
!2833 = !DILocation(line: 751, column: 7, scope: !2830)
!2834 = !DILocation(line: 752, column: 6, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 752, column: 6)
!2836 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 751, column: 7)
!2837 = !DILocation(line: 752, column: 32, scope: !2835)
!2838 = !DILocation(line: 752, column: 6, scope: !2836)
!2839 = !DILocation(line: 754, column: 10, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 753, column: 4)
!2841 = !DILocation(line: 755, column: 10, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 755, column: 10)
!2843 = !DILocation(line: 755, column: 10, scope: !2840)
!2844 = !DILocation(line: 757, column: 3, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 756, column: 8)
!2846 = !DILocation(line: 758, column: 3, scope: !2845)
!2847 = !DILocation(line: 759, column: 8, scope: !2845)
!2848 = !DILocation(line: 751, column: 65, scope: !2836)
!2849 = !DILocation(line: 751, column: 7, scope: !2836)
!2850 = distinct !{!2850, !2833, !2851}
!2851 = !DILocation(line: 760, column: 4, scope: !2830)
!2852 = !DILocation(line: 762, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 762, column: 11)
!2854 = !DILocation(line: 762, column: 11, scope: !2789)
!2855 = !DILocation(line: 763, column: 2, scope: !2853)
!2856 = !DILocation(line: 765, column: 1, scope: !2784)
!2857 = distinct !DISubprogram(name: "hash_scan_set", scope: !3, file: !3, line: 772, type: !2498, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2858)
!2858 = !{!2859, !2860, !2861, !2862}
!2859 = !DILocalVariable(name: "insn", arg: 1, scope: !2857, file: !3, line: 772, type: !788)
!2860 = !DILocalVariable(name: "pat", scope: !2857, file: !3, line: 774, type: !788)
!2861 = !DILocalVariable(name: "src", scope: !2857, file: !3, line: 775, type: !788)
!2862 = !DILocalVariable(name: "dest", scope: !2857, file: !3, line: 776, type: !788)
!2863 = !DILocation(line: 0, scope: !2857)
!2864 = !DILocation(line: 774, column: 13, scope: !2857)
!2865 = !DILocation(line: 775, column: 13, scope: !2857)
!2866 = !DILocation(line: 776, column: 14, scope: !2857)
!2867 = !DILocation(line: 779, column: 9, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 779, column: 7)
!2869 = !DILocation(line: 779, column: 21, scope: !2868)
!2870 = !DILocation(line: 779, column: 26, scope: !2868)
!2871 = !DILocation(line: 779, column: 7, scope: !2857)
!2872 = !DILocation(line: 783, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 783, column: 7)
!2874 = !DILocation(line: 783, column: 21, scope: !2873)
!2875 = !DILocation(line: 783, column: 24, scope: !2873)
!2876 = !DILocation(line: 783, column: 7, scope: !2857)
!2877 = !DILocation(line: 786, column: 7, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 786, column: 7)
!2879 = !DILocation(line: 786, column: 7, scope: !2857)
!2880 = !DILocation(line: 789, column: 16, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 789, column: 4)
!2882 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 787, column: 5)
!2883 = !DILocation(line: 789, column: 4, scope: !2881)
!2884 = !DILocation(line: 791, column: 4, scope: !2881)
!2885 = !DILocation(line: 791, column: 29, scope: !2881)
!2886 = !DILocation(line: 791, column: 7, scope: !2881)
!2887 = !DILocation(line: 796, column: 4, scope: !2881)
!2888 = !DILocation(line: 796, column: 8, scope: !2881)
!2889 = !DILocation(line: 796, column: 21, scope: !2881)
!2890 = !DILocation(line: 796, column: 39, scope: !2881)
!2891 = !DILocation(line: 796, column: 42, scope: !2881)
!2892 = !DILocation(line: 796, column: 55, scope: !2881)
!2893 = !DILocation(line: 800, column: 4, scope: !2881)
!2894 = !DILocation(line: 800, column: 7, scope: !2881)
!2895 = !DILocation(line: 789, column: 4, scope: !2882)
!2896 = !DILocation(line: 802, column: 4, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 801, column: 2)
!2898 = !DILocation(line: 803, column: 2, scope: !2897)
!2899 = !DILocation(line: 805, column: 12, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 805, column: 12)
!2901 = !DILocation(line: 805, column: 12, scope: !2878)
!2902 = !DILocation(line: 809, column: 16, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 809, column: 4)
!2904 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 806, column: 5)
!2905 = !DILocation(line: 809, column: 4, scope: !2903)
!2906 = !DILocation(line: 811, column: 4, scope: !2903)
!2907 = !DILocation(line: 811, column: 30, scope: !2903)
!2908 = !DILocation(line: 811, column: 7, scope: !2903)
!2909 = !DILocation(line: 814, column: 4, scope: !2903)
!2910 = !DILocation(line: 814, column: 8, scope: !2903)
!2911 = !DILocation(line: 814, column: 20, scope: !2903)
!2912 = !DILocation(line: 814, column: 38, scope: !2903)
!2913 = !DILocation(line: 814, column: 41, scope: !2903)
!2914 = !DILocation(line: 814, column: 53, scope: !2903)
!2915 = !DILocation(line: 816, column: 4, scope: !2903)
!2916 = !DILocation(line: 816, column: 10, scope: !2903)
!2917 = !DILocation(line: 816, column: 27, scope: !2903)
!2918 = !DILocation(line: 816, column: 30, scope: !2903)
!2919 = !DILocation(line: 818, column: 4, scope: !2903)
!2920 = !DILocation(line: 818, column: 33, scope: !2903)
!2921 = !DILocation(line: 818, column: 50, scope: !2903)
!2922 = !DILocation(line: 818, column: 9, scope: !2903)
!2923 = !DILocation(line: 819, column: 4, scope: !2903)
!2924 = !DILocation(line: 819, column: 25, scope: !2903)
!2925 = !DILocation(line: 819, column: 7, scope: !2903)
!2926 = !DILocation(line: 809, column: 4, scope: !2904)
!2927 = !DILocation(line: 821, column: 4, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 820, column: 2)
!2929 = !DILocation(line: 822, column: 2, scope: !2928)
!2930 = !DILocation(line: 824, column: 1, scope: !2857)
!2931 = distinct !DISubprogram(name: "record_last_set_info", scope: !3, file: !3, line: 689, type: !2932, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2937)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{null, !788, !2934, !773}
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !789, line: 51, baseType: !2935)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!2937 = !{!2938, !2939, !2940, !2941}
!2938 = !DILocalVariable(name: "dest", arg: 1, scope: !2931, file: !3, line: 689, type: !788)
!2939 = !DILocalVariable(name: "setter", arg: 2, scope: !2931, file: !3, line: 689, type: !2934)
!2940 = !DILocalVariable(name: "data", arg: 3, scope: !2931, file: !3, line: 689, type: !773)
!2941 = !DILocalVariable(name: "last_set_insn", scope: !2931, file: !3, line: 691, type: !788)
!2942 = !DILocation(line: 0, scope: !2931)
!2943 = !DILocation(line: 691, column: 23, scope: !2931)
!2944 = !DILocation(line: 693, column: 7, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 693, column: 7)
!2946 = !DILocation(line: 693, column: 23, scope: !2945)
!2947 = !DILocation(line: 693, column: 7, scope: !2931)
!2948 = !DILocation(line: 694, column: 12, scope: !2945)
!2949 = !DILocation(line: 0, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 696, column: 7)
!2951 = !DILocation(line: 696, column: 7, scope: !2950)
!2952 = !DILocation(line: 694, column: 5, scope: !2945)
!2953 = !DILocation(line: 696, column: 7, scope: !2931)
!2954 = !DILocation(line: 697, column: 5, scope: !2950)
!2955 = !DILocation(line: 698, column: 12, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 698, column: 12)
!2957 = !DILocation(line: 698, column: 12, scope: !2950)
!2958 = !DILocation(line: 705, column: 33, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 705, column: 11)
!2960 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 699, column: 5)
!2961 = !DILocation(line: 705, column: 13, scope: !2959)
!2962 = !DILocation(line: 705, column: 11, scope: !2960)
!2963 = !DILocation(line: 706, column: 2, scope: !2959)
!2964 = !DILocation(line: 708, column: 2, scope: !2959)
!2965 = !DILocation(line: 710, column: 1, scope: !2931)
!2966 = distinct !DISubprogram(name: "record_last_reg_set_info", scope: !3, file: !3, line: 650, type: !2967, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !788, !788}
!2969 = !{!2970, !2971, !2972, !2973}
!2970 = !DILocalVariable(name: "insn", arg: 1, scope: !2966, file: !3, line: 650, type: !788)
!2971 = !DILocalVariable(name: "reg", arg: 2, scope: !2966, file: !3, line: 650, type: !788)
!2972 = !DILocalVariable(name: "regno", scope: !2966, file: !3, line: 652, type: !7)
!2973 = !DILocalVariable(name: "end_regno", scope: !2966, file: !3, line: 652, type: !7)
!2974 = !DILocation(line: 0, scope: !2966)
!2975 = !DILocation(line: 654, column: 11, scope: !2966)
!2976 = !DILocation(line: 655, column: 15, scope: !2966)
!2977 = !DILocation(line: 656, column: 3, scope: !2966)
!2978 = !DILocation(line: 657, column: 29, scope: !2966)
!2979 = !DILocation(line: 657, column: 5, scope: !2966)
!2980 = !DILocation(line: 657, column: 27, scope: !2966)
!2981 = !DILocation(line: 658, column: 10, scope: !2966)
!2982 = !DILocation(line: 658, column: 18, scope: !2966)
!2983 = distinct !{!2983, !2977, !2984}
!2984 = !DILocation(line: 658, column: 29, scope: !2966)
!2985 = !DILocation(line: 659, column: 1, scope: !2966)
!2986 = distinct !DISubprogram(name: "record_last_reg_set_info_regno", scope: !3, file: !3, line: 662, type: !2987, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !788, !769}
!2989 = !{!2990, !2991}
!2990 = !DILocalVariable(name: "insn", arg: 1, scope: !2986, file: !3, line: 662, type: !788)
!2991 = !DILocalVariable(name: "regno", arg: 2, scope: !2986, file: !3, line: 662, type: !769)
!2992 = !DILocation(line: 0, scope: !2986)
!2993 = !DILocation(line: 664, column: 27, scope: !2986)
!2994 = !DILocation(line: 664, column: 3, scope: !2986)
!2995 = !DILocation(line: 664, column: 25, scope: !2986)
!2996 = !DILocation(line: 665, column: 1, scope: !2986)
!2997 = distinct !DISubprogram(name: "rhs_regno", scope: !568, file: !568, line: 1051, type: !2998, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!7, !2934}
!3000 = !{!3001}
!3001 = !DILocalVariable(name: "x", arg: 1, scope: !2997, file: !568, line: 1051, type: !2934)
!3002 = !DILocation(line: 0, scope: !2997)
!3003 = !DILocation(line: 1053, column: 10, scope: !2997)
!3004 = !DILocation(line: 1053, column: 3, scope: !2997)
!3005 = distinct !DISubprogram(name: "record_last_mem_set_info", scope: !3, file: !3, line: 673, type: !2498, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3006)
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "insn", arg: 1, scope: !3005, file: !3, line: 673, type: !788)
!3008 = !DILocalVariable(name: "list_entry", scope: !3005, file: !3, line: 675, type: !784)
!3009 = !DILocation(line: 0, scope: !3005)
!3010 = !DILocation(line: 677, column: 40, scope: !3005)
!3011 = !DILocation(line: 679, column: 15, scope: !3005)
!3012 = !DILocation(line: 679, column: 20, scope: !3005)
!3013 = !DILocation(line: 680, column: 22, scope: !3005)
!3014 = !DILocation(line: 680, column: 15, scope: !3005)
!3015 = !DILocation(line: 680, column: 20, scope: !3005)
!3016 = !DILocation(line: 681, column: 21, scope: !3005)
!3017 = !DILocation(line: 682, column: 1, scope: !3005)
!3018 = distinct !DISubprogram(name: "end_hard_regno", scope: !3019, file: !3019, line: 290, type: !3020, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3022)
!3019 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!7, !189, !7}
!3022 = !{!3023, !3024}
!3023 = !DILocalVariable(name: "mode", arg: 1, scope: !3018, file: !3019, line: 290, type: !189)
!3024 = !DILocalVariable(name: "regno", arg: 2, scope: !3018, file: !3019, line: 290, type: !7)
!3025 = !DILocation(line: 0, scope: !3018)
!3026 = !DILocation(line: 292, column: 18, scope: !3018)
!3027 = !DILocation(line: 292, column: 16, scope: !3018)
!3028 = !DILocation(line: 292, column: 3, scope: !3018)
!3029 = distinct !DISubprogram(name: "oprs_unchanged_p", scope: !3, file: !3, line: 496, type: !3030, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!768, !788, !788, !768}
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3039}
!3033 = !DILocalVariable(name: "x", arg: 1, scope: !3029, file: !3, line: 496, type: !788)
!3034 = !DILocalVariable(name: "insn", arg: 2, scope: !3029, file: !3, line: 496, type: !788)
!3035 = !DILocalVariable(name: "after_insn", arg: 3, scope: !3029, file: !3, line: 496, type: !768)
!3036 = !DILocalVariable(name: "i", scope: !3029, file: !3, line: 498, type: !769)
!3037 = !DILocalVariable(name: "j", scope: !3029, file: !3, line: 498, type: !769)
!3038 = !DILocalVariable(name: "code", scope: !3029, file: !3, line: 499, type: !567)
!3039 = !DILocalVariable(name: "fmt", scope: !3029, file: !3, line: 500, type: !774)
!3040 = !DILocation(line: 0, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 517, column: 11)
!3042 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 507, column: 5)
!3043 = !DILocation(line: 520, column: 9, scope: !3041)
!3044 = !DILocation(line: 0, scope: !3029)
!3045 = !DILocation(line: 502, column: 9, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 502, column: 7)
!3047 = !DILocation(line: 502, column: 7, scope: !3029)
!3048 = !DILocation(line: 505, column: 10, scope: !3029)
!3049 = !DILocation(line: 506, column: 3, scope: !3029)
!3050 = !DILocation(line: 510, column: 7, scope: !3042)
!3051 = !DILocation(line: 511, column: 11, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 511, column: 11)
!3053 = !DILocation(line: 511, column: 11, scope: !3042)
!3054 = !DILocation(line: 512, column: 39, scope: !3052)
!3055 = !DILocation(line: 512, column: 56, scope: !3052)
!3056 = !DILocation(line: 512, column: 10, scope: !3052)
!3057 = !DILocation(line: 512, column: 9, scope: !3052)
!3058 = !DILocation(line: 512, column: 2, scope: !3052)
!3059 = !DILocation(line: 514, column: 10, scope: !3052)
!3060 = !DILocation(line: 514, column: 9, scope: !3052)
!3061 = !DILocation(line: 514, column: 2, scope: !3052)
!3062 = !DILocation(line: 517, column: 35, scope: !3041)
!3063 = !DILocation(line: 517, column: 11, scope: !3041)
!3064 = !DILocation(line: 517, column: 11, scope: !3042)
!3065 = !DILocation(line: 520, column: 27, scope: !3041)
!3066 = !DILocation(line: 541, column: 11, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 541, column: 11)
!3068 = !DILocation(line: 541, column: 11, scope: !3042)
!3069 = !DILocation(line: 549, column: 12, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 549, column: 3)
!3071 = !DILocation(line: 549, column: 45, scope: !3070)
!3072 = !DILocation(line: 0, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 557, column: 2)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 557, column: 2)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 556, column: 16)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 551, column: 11)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 550, column: 5)
!3078 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 549, column: 3)
!3079 = !DILocation(line: 549, column: 8, scope: !3070)
!3080 = !DILocation(line: 0, scope: !3070)
!3081 = !DILocation(line: 549, column: 70, scope: !3078)
!3082 = !DILocation(line: 549, column: 3, scope: !3070)
!3083 = !DILocation(line: 551, column: 11, scope: !3076)
!3084 = !DILocation(line: 551, column: 18, scope: !3076)
!3085 = !DILocation(line: 551, column: 11, scope: !3077)
!3086 = !DILocation(line: 553, column: 28, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 553, column: 8)
!3088 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 552, column: 2)
!3089 = !DILocation(line: 553, column: 10, scope: !3087)
!3090 = !DILocation(line: 553, column: 8, scope: !3088)
!3091 = !DILocation(line: 556, column: 23, scope: !3075)
!3092 = !DILocation(line: 556, column: 16, scope: !3076)
!3093 = !DILocation(line: 557, column: 2, scope: !3074)
!3094 = !DILocation(line: 0, scope: !3074)
!3095 = !DILocation(line: 557, column: 18, scope: !3073)
!3096 = !DILocation(line: 557, column: 16, scope: !3073)
!3097 = !DILocation(line: 558, column: 28, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 558, column: 8)
!3099 = !DILocation(line: 558, column: 10, scope: !3098)
!3100 = !DILocation(line: 558, column: 8, scope: !3073)
!3101 = !DILocation(line: 557, column: 35, scope: !3073)
!3102 = !DILocation(line: 557, column: 2, scope: !3073)
!3103 = distinct !{!3103, !3093, !3104}
!3104 = !DILocation(line: 559, column: 13, scope: !3074)
!3105 = !DILocation(line: 549, column: 3, scope: !3078)
!3106 = distinct !{!3106, !3082, !3107}
!3107 = !DILocation(line: 560, column: 5, scope: !3070)
!3108 = !DILocation(line: 563, column: 1, scope: !3029)
!3109 = distinct !DISubprogram(name: "insert_expr_in_table", scope: !3, file: !3, line: 324, type: !2967, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3110)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118}
!3111 = !DILocalVariable(name: "x", arg: 1, scope: !3109, file: !3, line: 324, type: !788)
!3112 = !DILocalVariable(name: "insn", arg: 2, scope: !3109, file: !3, line: 324, type: !788)
!3113 = !DILocalVariable(name: "do_not_record_p", scope: !3109, file: !3, line: 326, type: !769)
!3114 = !DILocalVariable(name: "hash", scope: !3109, file: !3, line: 327, type: !1243)
!3115 = !DILocalVariable(name: "cur_expr", scope: !3109, file: !3, line: 328, type: !1969)
!3116 = !DILocalVariable(name: "slot", scope: !3109, file: !3, line: 328, type: !1970)
!3117 = !DILocalVariable(name: "avail_occr", scope: !3109, file: !3, line: 329, type: !1960)
!3118 = !DILocalVariable(name: "last_occr", scope: !3109, file: !3, line: 329, type: !1960)
!3119 = !DILocation(line: 0, scope: !3109)
!3120 = !DILocation(line: 326, column: 3, scope: !3109)
!3121 = !DILocation(line: 331, column: 10, scope: !3109)
!3122 = !DILocation(line: 336, column: 7, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 336, column: 7)
!3124 = !DILocation(line: 336, column: 7, scope: !3109)
!3125 = !DILocation(line: 344, column: 30, scope: !3109)
!3126 = !DILocation(line: 346, column: 13, scope: !3109)
!3127 = !DILocation(line: 346, column: 18, scope: !3109)
!3128 = !DILocation(line: 347, column: 13, scope: !3109)
!3129 = !DILocation(line: 347, column: 18, scope: !3109)
!3130 = !DILocation(line: 348, column: 13, scope: !3109)
!3131 = !DILocation(line: 348, column: 24, scope: !3109)
!3132 = !DILocation(line: 350, column: 53, scope: !3109)
!3133 = !DILocation(line: 350, column: 27, scope: !3109)
!3134 = !DILocation(line: 350, column: 10, scope: !3109)
!3135 = !DILocation(line: 353, column: 10, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 353, column: 7)
!3137 = !DILocation(line: 353, column: 9, scope: !3136)
!3138 = !DILocation(line: 353, column: 7, scope: !3109)
!3139 = !DILocation(line: 355, column: 11, scope: !3136)
!3140 = !DILocation(line: 355, column: 5, scope: !3136)
!3141 = !DILocation(line: 360, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 357, column: 5)
!3143 = !DILocation(line: 361, column: 18, scope: !3142)
!3144 = !DILocation(line: 365, column: 26, scope: !3109)
!3145 = !DILocation(line: 366, column: 3, scope: !3109)
!3146 = !DILocation(line: 367, column: 3, scope: !3109)
!3147 = !DILocation(line: 367, column: 6, scope: !3109)
!3148 = !DILocation(line: 367, column: 43, scope: !3109)
!3149 = !DILocation(line: 367, column: 40, scope: !3109)
!3150 = !DILocation(line: 372, column: 32, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 368, column: 5)
!3152 = distinct !{!3152, !3145, !3153}
!3153 = !DILocation(line: 373, column: 5, scope: !3109)
!3154 = !DILocation(line: 380, column: 22, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 375, column: 7)
!3156 = !DILocation(line: 380, column: 5, scope: !3155)
!3157 = !DILocation(line: 384, column: 36, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 382, column: 5)
!3159 = !DILocation(line: 388, column: 21, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 388, column: 11)
!3161 = !DILocation(line: 388, column: 32, scope: !3160)
!3162 = !DILocation(line: 388, column: 11, scope: !3158)
!3163 = !DILocation(line: 389, column: 30, scope: !3160)
!3164 = !DILocation(line: 389, column: 9, scope: !3160)
!3165 = !DILocation(line: 391, column: 25, scope: !3160)
!3166 = !DILocation(line: 393, column: 19, scope: !3158)
!3167 = !DILocation(line: 393, column: 24, scope: !3158)
!3168 = !DILocation(line: 394, column: 19, scope: !3158)
!3169 = !DILocation(line: 394, column: 24, scope: !3158)
!3170 = !DILocation(line: 395, column: 19, scope: !3158)
!3171 = !DILocation(line: 395, column: 29, scope: !3158)
!3172 = !DILocation(line: 397, column: 1, scope: !3109)
!3173 = distinct !DISubprogram(name: "load_killed_in_block_p", scope: !3, file: !3, line: 608, type: !3174, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!769, !769, !788, !768}
!3176 = !{!3177, !3178, !3179, !3180, !3181}
!3177 = !DILocalVariable(name: "uid_limit", arg: 1, scope: !3173, file: !3, line: 608, type: !769)
!3178 = !DILocalVariable(name: "x", arg: 2, scope: !3173, file: !3, line: 608, type: !788)
!3179 = !DILocalVariable(name: "after_insn", arg: 3, scope: !3173, file: !3, line: 608, type: !768)
!3180 = !DILocalVariable(name: "list_entry", scope: !3173, file: !3, line: 610, type: !784)
!3181 = !DILocalVariable(name: "setter", scope: !3182, file: !3, line: 614, type: !788)
!3182 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 613, column: 5)
!3183 = !DILocation(line: 0, scope: !3173)
!3184 = !DILocation(line: 610, column: 37, scope: !3173)
!3185 = !DILocation(line: 0, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 617, column: 11)
!3187 = !DILocation(line: 0, scope: !3182)
!3188 = !DILocation(line: 612, column: 3, scope: !3173)
!3189 = !DILocation(line: 614, column: 32, scope: !3182)
!3190 = !DILocation(line: 620, column: 8, scope: !3186)
!3191 = !DILocation(line: 620, column: 11, scope: !3186)
!3192 = !DILocation(line: 620, column: 30, scope: !3186)
!3193 = !DILocation(line: 617, column: 11, scope: !3182)
!3194 = !DILocation(line: 629, column: 11, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 629, column: 11)
!3196 = !DILocation(line: 629, column: 11, scope: !3182)
!3197 = !DILocation(line: 636, column: 23, scope: !3182)
!3198 = !DILocation(line: 637, column: 20, scope: !3182)
!3199 = !DILocation(line: 637, column: 7, scope: !3182)
!3200 = !DILocation(line: 638, column: 11, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 638, column: 11)
!3202 = !DILocation(line: 638, column: 11, scope: !3182)
!3203 = !DILocation(line: 641, column: 32, scope: !3182)
!3204 = !DILocation(line: 642, column: 5, scope: !3173)
!3205 = !DILocation(line: 622, column: 29, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 621, column: 2)
!3207 = !DILocation(line: 623, column: 4, scope: !3206)
!3208 = distinct !{!3208, !3188, !3204}
!3209 = !DILocation(line: 644, column: 1, scope: !3173)
!3210 = !DILocation(line: 618, column: 8, scope: !3186)
!3211 = !DILocation(line: 618, column: 27, scope: !3186)
!3212 = !DILocation(line: 619, column: 4, scope: !3186)
!3213 = distinct !DISubprogram(name: "reg_changed_after_insn_p", scope: !3, file: !3, line: 477, type: !3214, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!768, !788, !769}
!3216 = !{!3217, !3218, !3219, !3220}
!3217 = !DILocalVariable(name: "x", arg: 1, scope: !3213, file: !3, line: 477, type: !788)
!3218 = !DILocalVariable(name: "cuid", arg: 2, scope: !3213, file: !3, line: 477, type: !769)
!3219 = !DILocalVariable(name: "regno", scope: !3213, file: !3, line: 479, type: !7)
!3220 = !DILocalVariable(name: "end_regno", scope: !3213, file: !3, line: 479, type: !7)
!3221 = !DILocation(line: 0, scope: !3213)
!3222 = !DILocation(line: 481, column: 11, scope: !3213)
!3223 = !DILocation(line: 482, column: 15, scope: !3213)
!3224 = !DILocation(line: 0, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 484, column: 9)
!3226 = !DILocation(line: 483, column: 3, scope: !3213)
!3227 = !DILocation(line: 484, column: 9, scope: !3225)
!3228 = !DILocation(line: 484, column: 31, scope: !3225)
!3229 = !DILocation(line: 484, column: 9, scope: !3213)
!3230 = !DILocation(line: 486, column: 10, scope: !3213)
!3231 = !DILocation(line: 486, column: 18, scope: !3213)
!3232 = !DILocation(line: 484, column: 33, scope: !3225)
!3233 = distinct !{!3233, !3226, !3234}
!3234 = !DILocation(line: 486, column: 29, scope: !3213)
!3235 = !DILocation(line: 488, column: 1, scope: !3213)
!3236 = distinct !DISubprogram(name: "hash_expr", scope: !3, file: !3, line: 286, type: !3237, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!1243, !788, !776}
!3239 = !{!3240, !3241}
!3240 = !DILocalVariable(name: "x", arg: 1, scope: !3236, file: !3, line: 286, type: !788)
!3241 = !DILocalVariable(name: "do_not_record_p", arg: 2, scope: !3236, file: !3, line: 286, type: !776)
!3242 = !DILocation(line: 0, scope: !3236)
!3243 = !DILocation(line: 288, column: 20, scope: !3236)
!3244 = !DILocation(line: 289, column: 23, scope: !3236)
!3245 = !DILocation(line: 289, column: 10, scope: !3236)
!3246 = !DILocation(line: 289, column: 3, scope: !3236)
!3247 = distinct !DISubprogram(name: "find_mem_conflicts", scope: !3, file: !3, line: 577, type: !2932, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3248)
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DILocalVariable(name: "dest", arg: 1, scope: !3247, file: !3, line: 577, type: !788)
!3250 = !DILocalVariable(name: "setter", arg: 2, scope: !3247, file: !3, line: 577, type: !2934)
!3251 = !DILocalVariable(name: "data", arg: 3, scope: !3247, file: !3, line: 578, type: !773)
!3252 = !DILocalVariable(name: "mem_op", scope: !3247, file: !3, line: 580, type: !788)
!3253 = !DILocation(line: 0, scope: !3247)
!3254 = !DILocation(line: 582, column: 3, scope: !3247)
!3255 = !DILocation(line: 582, column: 10, scope: !3247)
!3256 = !DILocation(line: 582, column: 26, scope: !3247)
!3257 = !DILocation(line: 583, column: 3, scope: !3247)
!3258 = !DILocation(line: 583, column: 22, scope: !3247)
!3259 = !DILocation(line: 584, column: 22, scope: !3247)
!3260 = !DILocation(line: 584, column: 3, scope: !3247)
!3261 = !DILocation(line: 585, column: 12, scope: !3247)
!3262 = distinct !{!3262, !3254, !3261}
!3263 = !DILocation(line: 590, column: 9, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 590, column: 7)
!3265 = !DILocation(line: 590, column: 7, scope: !3247)
!3266 = !DILocation(line: 580, column: 16, scope: !3247)
!3267 = !DILocation(line: 593, column: 30, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 593, column: 7)
!3269 = !DILocation(line: 593, column: 7, scope: !3268)
!3270 = !DILocation(line: 593, column: 7, scope: !3247)
!3271 = !DILocation(line: 595, column: 21, scope: !3268)
!3272 = !DILocation(line: 595, column: 5, scope: !3268)
!3273 = !DILocation(line: 596, column: 1, scope: !3247)
!3274 = distinct !DISubprogram(name: "dump_hash_table_entry", scope: !3, file: !3, line: 435, type: !3275, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!769, !1254, !773}
!3277 = !{!3278, !3279, !3280, !3281, !3282, !3283}
!3278 = !DILocalVariable(name: "slot", arg: 1, scope: !3274, file: !3, line: 435, type: !1254)
!3279 = !DILocalVariable(name: "filep", arg: 2, scope: !3274, file: !3, line: 435, type: !773)
!3280 = !DILocalVariable(name: "expr", scope: !3274, file: !3, line: 437, type: !1969)
!3281 = !DILocalVariable(name: "file", scope: !3274, file: !3, line: 438, type: !1971)
!3282 = !DILocalVariable(name: "occr", scope: !3274, file: !3, line: 439, type: !1960)
!3283 = !DILocalVariable(name: "insn", scope: !3284, file: !3, line: 448, type: !788)
!3284 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 447, column: 5)
!3285 = !DILocation(line: 0, scope: !3274)
!3286 = !DILocation(line: 437, column: 39, scope: !3274)
!3287 = !DILocation(line: 438, column: 16, scope: !3274)
!3288 = !DILocation(line: 441, column: 3, scope: !3274)
!3289 = !DILocation(line: 442, column: 26, scope: !3274)
!3290 = !DILocation(line: 442, column: 3, scope: !3274)
!3291 = !DILocation(line: 443, column: 43, scope: !3274)
!3292 = !DILocation(line: 443, column: 3, scope: !3274)
!3293 = !DILocation(line: 444, column: 3, scope: !3274)
!3294 = !DILocation(line: 445, column: 16, scope: !3274)
!3295 = !DILocation(line: 446, column: 3, scope: !3274)
!3296 = !DILocation(line: 448, column: 24, scope: !3284)
!3297 = !DILocation(line: 0, scope: !3284)
!3298 = !DILocation(line: 449, column: 7, scope: !3284)
!3299 = !DILocation(line: 450, column: 7, scope: !3284)
!3300 = !DILocation(line: 451, column: 20, scope: !3284)
!3301 = distinct !{!3301, !3295, !3302}
!3302 = !DILocation(line: 452, column: 5, scope: !3274)
!3303 = !DILocation(line: 453, column: 3, scope: !3274)
!3304 = !DILocation(line: 454, column: 3, scope: !3274)
!3305 = distinct !DISubprogram(name: "bb_has_well_behaved_predecessors", scope: !3, file: !3, line: 914, type: !3306, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!768, !1318}
!3308 = !{!3309, !3310, !3311}
!3309 = !DILocalVariable(name: "bb", arg: 1, scope: !3305, file: !3, line: 914, type: !1318)
!3310 = !DILocalVariable(name: "pred", scope: !3305, file: !3, line: 916, type: !1335)
!3311 = !DILocalVariable(name: "ei", scope: !3305, file: !3, line: 917, type: !3312)
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !325, line: 682, baseType: !3313)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 679, size: 128, elements: !3314)
!3314 = !{!3315, !3316}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3313, file: !325, line: 680, baseType: !7, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !3313, file: !325, line: 681, baseType: !3317, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!3318 = !DILocation(line: 0, scope: !3305)
!3319 = !DILocation(line: 916, column: 3, scope: !3305)
!3320 = !DILocation(line: 917, column: 3, scope: !3305)
!3321 = !DILocation(line: 919, column: 7, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 919, column: 7)
!3323 = !DILocation(line: 919, column: 30, scope: !3322)
!3324 = !DILocation(line: 919, column: 7, scope: !3305)
!3325 = !DILocation(line: 922, column: 3, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 922, column: 3)
!3327 = !DILocation(line: 0, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 922, column: 3)
!3329 = !DILocation(line: 922, column: 3, scope: !3328)
!3330 = !DILocation(line: 924, column: 12, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 924, column: 11)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 923, column: 5)
!3333 = !DILocation(line: 924, column: 18, scope: !3331)
!3334 = !DILocation(line: 924, column: 24, scope: !3331)
!3335 = !DILocation(line: 924, column: 41, scope: !3331)
!3336 = !DILocation(line: 924, column: 44, scope: !3331)
!3337 = !DILocation(line: 924, column: 11, scope: !3332)
!3338 = !DILocation(line: 927, column: 11, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 927, column: 11)
!3340 = distinct !{!3340, !3325, !3341}
!3341 = !DILocation(line: 929, column: 5, scope: !3326)
!3342 = !DILocation(line: 931, column: 1, scope: !3305)
!3343 = distinct !DISubprogram(name: "lookup_expr_in_table", scope: !3, file: !3, line: 404, type: !3344, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!1969, !788}
!3346 = !{!3347, !3348, !3349, !3350, !3351}
!3347 = !DILocalVariable(name: "pat", arg: 1, scope: !3343, file: !3, line: 404, type: !788)
!3348 = !DILocalVariable(name: "do_not_record_p", scope: !3343, file: !3, line: 406, type: !769)
!3349 = !DILocalVariable(name: "slot", scope: !3343, file: !3, line: 407, type: !1970)
!3350 = !DILocalVariable(name: "tmp_expr", scope: !3343, file: !3, line: 407, type: !1969)
!3351 = !DILocalVariable(name: "hash", scope: !3343, file: !3, line: 408, type: !1243)
!3352 = !DILocation(line: 0, scope: !3343)
!3353 = !DILocation(line: 406, column: 3, scope: !3343)
!3354 = !DILocation(line: 408, column: 20, scope: !3343)
!3355 = !DILocation(line: 410, column: 7, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 410, column: 7)
!3357 = !DILocation(line: 410, column: 7, scope: !3343)
!3358 = !DILocation(line: 413, column: 30, scope: !3343)
!3359 = !DILocation(line: 415, column: 13, scope: !3343)
!3360 = !DILocation(line: 415, column: 18, scope: !3343)
!3361 = !DILocation(line: 416, column: 13, scope: !3343)
!3362 = !DILocation(line: 416, column: 18, scope: !3343)
!3363 = !DILocation(line: 417, column: 13, scope: !3343)
!3364 = !DILocation(line: 417, column: 24, scope: !3343)
!3365 = !DILocation(line: 419, column: 53, scope: !3343)
!3366 = !DILocation(line: 419, column: 27, scope: !3343)
!3367 = !DILocation(line: 419, column: 10, scope: !3343)
!3368 = !DILocation(line: 421, column: 3, scope: !3343)
!3369 = !DILocation(line: 423, column: 8, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 423, column: 7)
!3371 = !DILocation(line: 423, column: 7, scope: !3343)
!3372 = !DILocation(line: 426, column: 13, scope: !3370)
!3373 = !DILocation(line: 426, column: 5, scope: !3370)
!3374 = !DILocation(line: 427, column: 1, scope: !3343)
!3375 = distinct !DISubprogram(name: "eliminate_partially_redundant_load", scope: !3, file: !3, line: 960, type: !3376, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{null, !1318, !788, !1969}
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3404}
!3379 = !DILocalVariable(name: "bb", arg: 1, scope: !3375, file: !3, line: 960, type: !1318)
!3380 = !DILocalVariable(name: "insn", arg: 2, scope: !3375, file: !3, line: 960, type: !788)
!3381 = !DILocalVariable(name: "expr", arg: 3, scope: !3375, file: !3, line: 961, type: !1969)
!3382 = !DILocalVariable(name: "pred", scope: !3375, file: !3, line: 963, type: !1335)
!3383 = !DILocalVariable(name: "avail_insn", scope: !3375, file: !3, line: 964, type: !788)
!3384 = !DILocalVariable(name: "avail_reg", scope: !3375, file: !3, line: 965, type: !788)
!3385 = !DILocalVariable(name: "dest", scope: !3375, file: !3, line: 966, type: !788)
!3386 = !DILocalVariable(name: "pat", scope: !3375, file: !3, line: 966, type: !788)
!3387 = !DILocalVariable(name: "a_occr", scope: !3375, file: !3, line: 967, type: !1960)
!3388 = !DILocalVariable(name: "occr", scope: !3375, file: !3, line: 968, type: !2022)
!3389 = !DILocalVariable(name: "avail_occrs", scope: !3375, file: !3, line: 968, type: !2022)
!3390 = !DILocalVariable(name: "unoccr", scope: !3375, file: !3, line: 969, type: !2022)
!3391 = !DILocalVariable(name: "unavail_occrs", scope: !3375, file: !3, line: 969, type: !2022)
!3392 = !DILocalVariable(name: "rollback_unoccr", scope: !3375, file: !3, line: 969, type: !2022)
!3393 = !DILocalVariable(name: "npred_ok", scope: !3375, file: !3, line: 970, type: !769)
!3394 = !DILocalVariable(name: "ok_count", scope: !3375, file: !3, line: 971, type: !1356)
!3395 = !DILocalVariable(name: "critical_count", scope: !3375, file: !3, line: 972, type: !1356)
!3396 = !DILocalVariable(name: "ei", scope: !3375, file: !3, line: 973, type: !3312)
!3397 = !DILocalVariable(name: "critical_edge_split", scope: !3375, file: !3, line: 974, type: !768)
!3398 = !DILocalVariable(name: "not_ok_count", scope: !3375, file: !3, line: 978, type: !1356)
!3399 = !DILocalVariable(name: "pred_bb", scope: !3375, file: !3, line: 979, type: !1318)
!3400 = !DILocalVariable(name: "next_pred_bb_end", scope: !3401, file: !3, line: 993, type: !788)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 992, column: 5)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 991, column: 3)
!3403 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 991, column: 3)
!3404 = !DILabel(scope: !3375, name: "cleanup", file: !3, line: 1149)
!3405 = !DILocation(line: 0, scope: !3375)
!3406 = !DILocation(line: 963, column: 3, scope: !3375)
!3407 = !DILocation(line: 973, column: 3, scope: !3375)
!3408 = !DILocation(line: 981, column: 9, scope: !3375)
!3409 = !DILocation(line: 982, column: 10, scope: !3375)
!3410 = !DILocation(line: 986, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 986, column: 7)
!3412 = !DILocation(line: 987, column: 7, scope: !3411)
!3413 = !DILocation(line: 987, column: 36, scope: !3411)
!3414 = !DILocation(line: 987, column: 10, scope: !3411)
!3415 = !DILocation(line: 986, column: 7, scope: !3375)
!3416 = !DILocation(line: 991, column: 3, scope: !3403)
!3417 = !DILocation(line: 0, scope: !3402)
!3418 = !DILocation(line: 0, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 999, column: 7)
!3420 = !DILocation(line: 0, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1029, column: 2)
!3422 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 1028, column: 11)
!3423 = !DILocation(line: 969, column: 50, scope: !3375)
!3424 = !DILocation(line: 969, column: 27, scope: !3375)
!3425 = !DILocation(line: 968, column: 25, scope: !3375)
!3426 = !DILocation(line: 974, column: 8, scope: !3375)
!3427 = !DILocation(line: 978, column: 13, scope: !3375)
!3428 = !DILocation(line: 991, column: 3, scope: !3402)
!3429 = !DILocation(line: 997, column: 17, scope: !3401)
!3430 = !DILocation(line: 997, column: 23, scope: !3401)
!3431 = !DILocation(line: 998, column: 26, scope: !3401)
!3432 = !DILocation(line: 0, scope: !3401)
!3433 = !DILocation(line: 999, column: 55, scope: !3419)
!3434 = !DILocation(line: 999, column: 21, scope: !3419)
!3435 = !DILocation(line: 999, column: 12, scope: !3419)
!3436 = !DILocation(line: 999, column: 7, scope: !3419)
!3437 = !DILocation(line: 1003, column: 25, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 1001, column: 2)
!3439 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 999, column: 7)
!3440 = !DILocation(line: 1004, column: 16, scope: !3438)
!3441 = !DILocation(line: 1005, column: 4, scope: !3438)
!3442 = !DILocation(line: 1009, column: 33, scope: !3438)
!3443 = !DILocation(line: 1010, column: 12, scope: !3438)
!3444 = !DILocation(line: 1009, column: 18, scope: !3438)
!3445 = !DILocation(line: 1009, column: 4, scope: !3438)
!3446 = !DILocation(line: 1011, column: 10, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 1011, column: 8)
!3448 = !DILocation(line: 1012, column: 8, scope: !3447)
!3449 = !DILocation(line: 1012, column: 42, scope: !3447)
!3450 = !DILocation(line: 1012, column: 11, scope: !3447)
!3451 = !DILocation(line: 1013, column: 8, scope: !3447)
!3452 = !DILocation(line: 1013, column: 35, scope: !3447)
!3453 = !DILocation(line: 1013, column: 11, scope: !3447)
!3454 = !DILocation(line: 1011, column: 8, scope: !3438)
!3455 = !DILocation(line: 1018, column: 9, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 1018, column: 8)
!3457 = !DILocation(line: 1018, column: 8, scope: !3438)
!3458 = !DILocation(line: 1000, column: 50, scope: !3439)
!3459 = !DILocation(line: 1000, column: 14, scope: !3439)
!3460 = !DILocation(line: 999, column: 7, scope: !3439)
!3461 = distinct !{!3461, !3436, !3462}
!3462 = !DILocation(line: 1023, column: 2, scope: !3419)
!3463 = !DILocation(line: 1025, column: 11, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 1025, column: 11)
!3465 = !DILocation(line: 1025, column: 11, scope: !3401)
!3466 = !DILocation(line: 1026, column: 20, scope: !3464)
!3467 = !DILocation(line: 1026, column: 26, scope: !3464)
!3468 = !DILocation(line: 1026, column: 17, scope: !3464)
!3469 = !DILocation(line: 1026, column: 2, scope: !3464)
!3470 = !DILocation(line: 1028, column: 22, scope: !3422)
!3471 = !DILocation(line: 1028, column: 11, scope: !3401)
!3472 = !DILocation(line: 1030, column: 12, scope: !3421)
!3473 = !DILocation(line: 1031, column: 16, scope: !3421)
!3474 = !DILocation(line: 1031, column: 22, scope: !3421)
!3475 = !DILocation(line: 1031, column: 13, scope: !3421)
!3476 = !DILocation(line: 1032, column: 22, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1032, column: 8)
!3478 = !DILocation(line: 1032, column: 10, scope: !3477)
!3479 = !DILocation(line: 1032, column: 8, scope: !3421)
!3480 = !DILocation(line: 1036, column: 12, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 1036, column: 12)
!3482 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 1034, column: 6)
!3483 = !DILocation(line: 1036, column: 12, scope: !3482)
!3484 = !DILocation(line: 1041, column: 29, scope: !3421)
!3485 = !DILocation(line: 1043, column: 10, scope: !3421)
!3486 = !DILocation(line: 1043, column: 15, scope: !3421)
!3487 = !DILocation(line: 1044, column: 17, scope: !3421)
!3488 = !DILocation(line: 1044, column: 10, scope: !3421)
!3489 = !DILocation(line: 1044, column: 15, scope: !3421)
!3490 = !DILocation(line: 1045, column: 10, scope: !3421)
!3491 = !DILocation(line: 1045, column: 15, scope: !3421)
!3492 = !DILocation(line: 1047, column: 10, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1047, column: 8)
!3494 = !DILocation(line: 1047, column: 8, scope: !3421)
!3495 = !DILocation(line: 1049, column: 2, scope: !3421)
!3496 = !DILocation(line: 1053, column: 8, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 1053, column: 8)
!3498 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1051, column: 2)
!3499 = !DILocation(line: 1053, column: 8, scope: !3498)
!3500 = !DILocation(line: 1055, column: 20, scope: !3498)
!3501 = !DILocation(line: 1055, column: 26, scope: !3498)
!3502 = !DILocation(line: 1055, column: 17, scope: !3498)
!3503 = !DILocation(line: 1056, column: 31, scope: !3498)
!3504 = !DILocation(line: 1058, column: 12, scope: !3498)
!3505 = !DILocation(line: 1058, column: 17, scope: !3498)
!3506 = !DILocation(line: 1059, column: 19, scope: !3498)
!3507 = !DILocation(line: 1059, column: 12, scope: !3498)
!3508 = !DILocation(line: 1059, column: 17, scope: !3498)
!3509 = !DILocation(line: 1060, column: 12, scope: !3498)
!3510 = !DILocation(line: 1060, column: 17, scope: !3498)
!3511 = !DILocation(line: 1062, column: 10, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 1062, column: 8)
!3513 = !DILocation(line: 1062, column: 8, scope: !3498)
!3514 = distinct !{!3514, !3416, !3515}
!3515 = !DILocation(line: 1065, column: 5, scope: !3403)
!3516 = !DILocation(line: 1068, column: 16, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1068, column: 7)
!3518 = !DILocation(line: 1070, column: 7, scope: !3517)
!3519 = !DILocation(line: 1070, column: 11, scope: !3517)
!3520 = !DILocation(line: 1070, column: 51, scope: !3517)
!3521 = !DILocation(line: 1070, column: 39, scope: !3517)
!3522 = !DILocation(line: 1073, column: 14, scope: !3517)
!3523 = !DILocation(line: 1073, column: 32, scope: !3517)
!3524 = !DILocation(line: 1073, column: 27, scope: !3517)
!3525 = !DILocation(line: 1074, column: 16, scope: !3517)
!3526 = !DILocation(line: 1074, column: 8, scope: !3517)
!3527 = !DILocation(line: 1075, column: 4, scope: !3517)
!3528 = !DILocation(line: 1075, column: 7, scope: !3517)
!3529 = !DILocation(line: 1068, column: 7, scope: !3375)
!3530 = !DILocation(line: 1079, column: 18, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1079, column: 7)
!3532 = !DILocation(line: 1079, column: 53, scope: !3531)
!3533 = !DILocation(line: 1079, column: 16, scope: !3531)
!3534 = !DILocation(line: 1079, column: 7, scope: !3375)
!3535 = !DILocation(line: 1081, column: 18, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1081, column: 7)
!3537 = !DILocation(line: 1081, column: 54, scope: !3536)
!3538 = !DILocation(line: 1081, column: 16, scope: !3536)
!3539 = !DILocation(line: 1081, column: 7, scope: !3375)
!3540 = !DILocation(line: 1086, column: 3, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1086, column: 3)
!3542 = !DILocation(line: 0, scope: !3541)
!3543 = !DILocation(line: 1110, column: 3, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1110, column: 3)
!3545 = !DILocation(line: 1088, column: 26, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 1087, column: 5)
!3547 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1086, column: 3)
!3548 = !DILocation(line: 1089, column: 20, scope: !3546)
!3549 = !DILocation(line: 1089, column: 12, scope: !3546)
!3550 = !DILocation(line: 1092, column: 19, scope: !3546)
!3551 = !DILocation(line: 1093, column: 7, scope: !3546)
!3552 = !DILocation(line: 1095, column: 43, scope: !3546)
!3553 = !DILocation(line: 1096, column: 8, scope: !3546)
!3554 = !DILocation(line: 1095, column: 28, scope: !3546)
!3555 = !DILocation(line: 1097, column: 7, scope: !3546)
!3556 = !DILocation(line: 1095, column: 7, scope: !3546)
!3557 = !DILocation(line: 1098, column: 27, scope: !3546)
!3558 = !DILocation(line: 1100, column: 11, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 1100, column: 11)
!3560 = !DILocation(line: 1100, column: 11, scope: !3546)
!3561 = !DILocation(line: 1103, column: 4, scope: !3559)
!3562 = !DILocation(line: 1104, column: 4, scope: !3559)
!3563 = !DILocation(line: 1105, column: 4, scope: !3559)
!3564 = !DILocation(line: 1105, column: 10, scope: !3559)
!3565 = !DILocation(line: 1105, column: 15, scope: !3559)
!3566 = !DILocation(line: 1106, column: 10, scope: !3559)
!3567 = !DILocation(line: 1106, column: 16, scope: !3559)
!3568 = !DILocation(line: 1101, column: 2, scope: !3559)
!3569 = !DILocation(line: 1086, column: 47, scope: !3547)
!3570 = !DILocation(line: 1086, column: 3, scope: !3547)
!3571 = distinct !{!3571, !3540, !3572}
!3572 = !DILocation(line: 1107, column: 5, scope: !3541)
!3573 = !DILocation(line: 0, scope: !3544)
!3574 = !DILocation(line: 1112, column: 22, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 1111, column: 5)
!3576 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1110, column: 3)
!3577 = !DILocation(line: 1112, column: 12, scope: !3575)
!3578 = !DILocation(line: 1113, column: 39, scope: !3575)
!3579 = !DILocation(line: 1113, column: 28, scope: !3575)
!3580 = !DILocation(line: 1113, column: 56, scope: !3575)
!3581 = !DILocation(line: 1113, column: 7, scope: !3575)
!3582 = !DILocation(line: 1114, column: 28, scope: !3575)
!3583 = !DILocation(line: 1116, column: 11, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 1116, column: 11)
!3585 = !DILocation(line: 1116, column: 11, scope: !3575)
!3586 = !DILocation(line: 1120, column: 6, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 1117, column: 2)
!3588 = !DILocation(line: 1120, column: 12, scope: !3587)
!3589 = !DILocation(line: 1120, column: 17, scope: !3587)
!3590 = !DILocation(line: 1121, column: 12, scope: !3587)
!3591 = !DILocation(line: 1121, column: 18, scope: !3587)
!3592 = !DILocation(line: 1118, column: 4, scope: !3587)
!3593 = !DILocation(line: 1122, column: 15, scope: !3587)
!3594 = !DILocation(line: 1122, column: 26, scope: !3587)
!3595 = !DILocation(line: 1122, column: 4, scope: !3587)
!3596 = !DILocation(line: 1123, column: 13, scope: !3587)
!3597 = !DILocation(line: 1123, column: 4, scope: !3587)
!3598 = !DILocation(line: 1124, column: 2, scope: !3587)
!3599 = !DILocation(line: 1110, column: 57, scope: !3576)
!3600 = !DILocation(line: 1110, column: 3, scope: !3576)
!3601 = distinct !{!3601, !3543, !3602}
!3602 = !DILocation(line: 1125, column: 5, scope: !3544)
!3603 = !DILocation(line: 1130, column: 46, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1130, column: 3)
!3605 = !DILocation(line: 1130, column: 17, scope: !3604)
!3606 = !DILocation(line: 1130, column: 8, scope: !3604)
!3607 = !DILocation(line: 0, scope: !3604)
!3608 = !DILocation(line: 1131, column: 15, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1130, column: 3)
!3610 = !DILocation(line: 1131, column: 27, scope: !3609)
!3611 = !DILocation(line: 1131, column: 32, scope: !3609)
!3612 = !DILocation(line: 1130, column: 3, scope: !3604)
!3613 = !DILocation(line: 1132, column: 48, scope: !3609)
!3614 = !DILocation(line: 1132, column: 17, scope: !3609)
!3615 = !DILocation(line: 1130, column: 3, scope: !3609)
!3616 = distinct !{!3616, !3612, !3617}
!3617 = !DILocation(line: 1132, column: 54, scope: !3604)
!3618 = !DILocation(line: 1147, column: 13, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1134, column: 7)
!3620 = !DILocation(line: 1147, column: 23, scope: !3619)
!3621 = !DILocation(line: 1136, column: 26, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 1135, column: 5)
!3623 = !DILocation(line: 1138, column: 11, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 1138, column: 11)
!3625 = !DILocation(line: 1138, column: 11, scope: !3622)
!3626 = !DILocation(line: 1140, column: 4, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1139, column: 2)
!3628 = !DILocation(line: 1141, column: 29, scope: !3627)
!3629 = !DILocation(line: 1141, column: 11, scope: !3627)
!3630 = !DILocation(line: 1142, column: 20, scope: !3627)
!3631 = !DILocation(line: 1142, column: 11, scope: !3627)
!3632 = !DILocation(line: 1143, column: 2, scope: !3627)
!3633 = !DILocation(line: 1144, column: 7, scope: !3622)
!3634 = !DILocation(line: 1145, column: 5, scope: !3622)
!3635 = !DILocation(line: 1149, column: 1, scope: !3375)
!3636 = !DILocation(line: 1150, column: 7, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 1150, column: 7)
!3638 = !DILocation(line: 1150, column: 7, scope: !3375)
!3639 = !DILocation(line: 1151, column: 5, scope: !3637)
!3640 = !DILocation(line: 1152, column: 1, scope: !3375)
!3641 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !325, file: !325, line: 150, type: !3642, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3646)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!7, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!3646 = !{!3647}
!3647 = !DILocalVariable(name: "vec_", arg: 1, scope: !3641, file: !325, line: 150, type: !3644)
!3648 = !DILocation(line: 0, scope: !3641)
!3649 = !DILocation(line: 150, column: 1, scope: !3641)
!3650 = distinct !DISubprogram(name: "ei_start_1", scope: !325, file: !325, line: 696, type: !3651, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!3312, !3317}
!3653 = !{!3654, !3655}
!3654 = !DILocalVariable(name: "ev", arg: 1, scope: !3650, file: !325, line: 696, type: !3317)
!3655 = !DILocalVariable(name: "i", scope: !3650, file: !325, line: 698, type: !3312)
!3656 = !DILocation(line: 0, scope: !3650)
!3657 = !DILocation(line: 700, column: 5, scope: !3650)
!3658 = !DILocation(line: 700, column: 11, scope: !3650)
!3659 = !DILocation(line: 701, column: 5, scope: !3650)
!3660 = !DILocation(line: 701, column: 15, scope: !3650)
!3661 = !DILocation(line: 703, column: 3, scope: !3650)
!3662 = distinct !DISubprogram(name: "ei_cond", scope: !325, file: !325, line: 771, type: !3663, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3666)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!768, !3312, !3665}
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!3666 = !{!3667, !3668}
!3667 = !DILocalVariable(name: "ei", arg: 1, scope: !3662, file: !325, line: 771, type: !3312)
!3668 = !DILocalVariable(name: "p", arg: 2, scope: !3662, file: !325, line: 771, type: !3665)
!3669 = !DILocation(line: 0, scope: !3662)
!3670 = !DILocation(line: 773, column: 8, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3662, file: !325, line: 773, column: 7)
!3672 = !DILocation(line: 773, column: 7, scope: !3662)
!3673 = !DILocation(line: 775, column: 12, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3671, file: !325, line: 774, column: 5)
!3675 = !DILocation(line: 776, column: 7, scope: !3674)
!3676 = !DILocation(line: 781, column: 7, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3671, file: !325, line: 779, column: 5)
!3678 = !DILocation(line: 0, scope: !3671)
!3679 = !DILocation(line: 783, column: 1, scope: !3662)
!3680 = distinct !DISubprogram(name: "ei_next", scope: !325, file: !325, line: 736, type: !3681, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3684)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{null, !3683}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3684 = !{!3685}
!3685 = !DILocalVariable(name: "i", arg: 1, scope: !3680, file: !325, line: 736, type: !3683)
!3686 = !DILocation(line: 0, scope: !3680)
!3687 = !DILocation(line: 738, column: 3, scope: !3680)
!3688 = !DILocation(line: 739, column: 11, scope: !3680)
!3689 = !DILocation(line: 740, column: 1, scope: !3680)
!3690 = distinct !DISubprogram(name: "ei_end_p", scope: !325, file: !325, line: 721, type: !3691, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!768, !3312}
!3693 = !{!3694}
!3694 = !DILocalVariable(name: "i", arg: 1, scope: !3690, file: !325, line: 721, type: !3312)
!3695 = !DILocation(line: 723, column: 22, scope: !3690)
!3696 = !DILocation(line: 723, column: 19, scope: !3690)
!3697 = !DILocation(line: 723, column: 10, scope: !3690)
!3698 = !DILocation(line: 723, column: 3, scope: !3690)
!3699 = distinct !DISubprogram(name: "ei_edge", scope: !325, file: !325, line: 752, type: !3700, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!1335, !3312}
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "i", arg: 1, scope: !3699, file: !325, line: 752, type: !3312)
!3704 = !DILocation(line: 754, column: 10, scope: !3699)
!3705 = !DILocation(line: 754, column: 3, scope: !3699)
!3706 = distinct !DISubprogram(name: "ei_container", scope: !325, file: !325, line: 685, type: !3707, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!1323, !3312}
!3709 = !{!3710}
!3710 = !DILocalVariable(name: "i", arg: 1, scope: !3706, file: !325, line: 685, type: !3312)
!3711 = !DILocation(line: 687, column: 3, scope: !3706)
!3712 = !DILocation(line: 688, column: 10, scope: !3706)
!3713 = !DILocation(line: 688, column: 3, scope: !3706)
!3714 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !325, file: !325, line: 150, type: !3715, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!1335, !3644, !7}
!3717 = !{!3718, !3719}
!3718 = !DILocalVariable(name: "vec_", arg: 1, scope: !3714, file: !325, line: 150, type: !3644)
!3719 = !DILocalVariable(name: "ix_", arg: 2, scope: !3714, file: !325, line: 150, type: !7)
!3720 = !DILocation(line: 0, scope: !3714)
!3721 = !DILocation(line: 150, column: 1, scope: !3714)
!3722 = distinct !DISubprogram(name: "get_bb_avail_insn", scope: !3, file: !3, line: 937, type: !3723, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3725)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!1960, !1318, !1960}
!3725 = !{!3726, !3727}
!3726 = !DILocalVariable(name: "bb", arg: 1, scope: !3722, file: !3, line: 937, type: !1318)
!3727 = !DILocalVariable(name: "occr", arg: 2, scope: !3722, file: !3, line: 937, type: !1960)
!3728 = !DILocation(line: 0, scope: !3722)
!3729 = !DILocation(line: 939, column: 3, scope: !3722)
!3730 = !DILocation(line: 939, column: 15, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 939, column: 3)
!3732 = distinct !DILexicalBlock(scope: !3722, file: !3, line: 939, column: 3)
!3733 = !DILocation(line: 939, column: 3, scope: !3732)
!3734 = !DILocation(line: 940, column: 9, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3731, file: !3, line: 940, column: 9)
!3736 = !DILocation(line: 940, column: 37, scope: !3735)
!3737 = !DILocation(line: 940, column: 9, scope: !3731)
!3738 = !DILocation(line: 939, column: 37, scope: !3731)
!3739 = !DILocation(line: 939, column: 3, scope: !3731)
!3740 = distinct !{!3740, !3733, !3741}
!3741 = !DILocation(line: 941, column: 14, scope: !3732)
!3742 = !DILocation(line: 943, column: 1, scope: !3722)
!3743 = distinct !DISubprogram(name: "get_avail_load_store_reg", scope: !3, file: !3, line: 898, type: !3744, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!788, !788}
!3746 = !{!3747}
!3747 = !DILocalVariable(name: "insn", arg: 1, scope: !3743, file: !3, line: 898, type: !788)
!3748 = !DILocation(line: 0, scope: !3743)
!3749 = !DILocation(line: 900, column: 7, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 900, column: 7)
!3751 = !DILocation(line: 900, column: 7, scope: !3743)
!3752 = !DILocation(line: 902, column: 5, scope: !3750)
!3753 = !DILocation(line: 906, column: 7, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 904, column: 5)
!3755 = !DILocation(line: 907, column: 14, scope: !3754)
!3756 = !DILocation(line: 907, column: 7, scope: !3754)
!3757 = !DILocation(line: 0, scope: !3750)
!3758 = !DILocation(line: 909, column: 1, scope: !3743)
!3759 = distinct !DISubprogram(name: "reg_killed_on_edge", scope: !3, file: !3, line: 867, type: !3760, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!768, !788, !1335}
!3762 = !{!3763, !3764, !3765}
!3763 = !DILocalVariable(name: "reg", arg: 1, scope: !3759, file: !3, line: 867, type: !788)
!3764 = !DILocalVariable(name: "e", arg: 2, scope: !3759, file: !3, line: 867, type: !1335)
!3765 = !DILocalVariable(name: "insn", scope: !3759, file: !3, line: 869, type: !788)
!3766 = !DILocation(line: 0, scope: !3759)
!3767 = !DILocation(line: 871, column: 18, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 871, column: 3)
!3769 = !DILocation(line: 871, column: 24, scope: !3768)
!3770 = !DILocation(line: 871, column: 8, scope: !3768)
!3771 = !DILocation(line: 0, scope: !3768)
!3772 = !DILocation(line: 871, column: 3, scope: !3768)
!3773 = !DILocation(line: 872, column: 9, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 872, column: 9)
!3775 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 871, column: 3)
!3776 = !DILocation(line: 872, column: 23, scope: !3774)
!3777 = !DILocation(line: 872, column: 26, scope: !3774)
!3778 = !DILocation(line: 872, column: 9, scope: !3775)
!3779 = !DILocation(line: 871, column: 40, scope: !3775)
!3780 = !DILocation(line: 871, column: 3, scope: !3775)
!3781 = distinct !{!3781, !3772, !3782}
!3782 = !DILocation(line: 873, column: 14, scope: !3768)
!3783 = !DILocation(line: 876, column: 1, scope: !3759)
!3784 = distinct !DISubprogram(name: "reg_used_on_edge", scope: !3, file: !3, line: 884, type: !3760, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3785)
!3785 = !{!3786, !3787, !3788}
!3786 = !DILocalVariable(name: "reg", arg: 1, scope: !3784, file: !3, line: 884, type: !788)
!3787 = !DILocalVariable(name: "e", arg: 2, scope: !3784, file: !3, line: 884, type: !1335)
!3788 = !DILocalVariable(name: "insn", scope: !3784, file: !3, line: 886, type: !788)
!3789 = !DILocation(line: 0, scope: !3784)
!3790 = !DILocation(line: 888, column: 18, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 888, column: 3)
!3792 = !DILocation(line: 888, column: 24, scope: !3791)
!3793 = !DILocation(line: 888, column: 8, scope: !3791)
!3794 = !DILocation(line: 0, scope: !3791)
!3795 = !DILocation(line: 888, column: 3, scope: !3791)
!3796 = !DILocation(line: 889, column: 9, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 889, column: 9)
!3798 = distinct !DILexicalBlock(scope: !3791, file: !3, line: 888, column: 3)
!3799 = !DILocation(line: 889, column: 23, scope: !3797)
!3800 = !DILocation(line: 889, column: 56, scope: !3797)
!3801 = !DILocation(line: 889, column: 26, scope: !3797)
!3802 = !DILocation(line: 889, column: 9, scope: !3798)
!3803 = !DILocation(line: 888, column: 40, scope: !3798)
!3804 = !DILocation(line: 888, column: 3, scope: !3798)
!3805 = distinct !{!3805, !3795, !3806}
!3806 = !DILocation(line: 890, column: 14, scope: !3791)
!3807 = !DILocation(line: 893, column: 1, scope: !3784)
!3808 = distinct !DISubprogram(name: "delete_redundant_insns_1", scope: !3, file: !3, line: 1232, type: !3275, scopeLine: 1233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3809)
!3809 = !{!3810, !3811, !3812, !3813}
!3810 = !DILocalVariable(name: "slot", arg: 1, scope: !3808, file: !3, line: 1232, type: !1254)
!3811 = !DILocalVariable(name: "data", arg: 2, scope: !3808, file: !3, line: 1232, type: !773)
!3812 = !DILocalVariable(name: "expr", scope: !3808, file: !3, line: 1234, type: !1969)
!3813 = !DILocalVariable(name: "occr", scope: !3808, file: !3, line: 1235, type: !1960)
!3814 = !DILocation(line: 0, scope: !3808)
!3815 = !DILocation(line: 1234, column: 39, scope: !3808)
!3816 = !DILocation(line: 1237, column: 21, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3808, file: !3, line: 1237, column: 3)
!3818 = !DILocation(line: 1237, column: 8, scope: !3817)
!3819 = !DILocation(line: 0, scope: !3817)
!3820 = !DILocation(line: 1237, column: 38, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 1237, column: 3)
!3822 = !DILocation(line: 1237, column: 3, scope: !3817)
!3823 = !DILocation(line: 1239, column: 17, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 1239, column: 11)
!3825 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 1238, column: 5)
!3826 = !DILocation(line: 1239, column: 11, scope: !3824)
!3827 = !DILocation(line: 1239, column: 27, scope: !3824)
!3828 = !DILocation(line: 1239, column: 30, scope: !3824)
!3829 = !DILocation(line: 1239, column: 11, scope: !3825)
!3830 = !DILocation(line: 1241, column: 23, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 1240, column: 2)
!3832 = !DILocation(line: 1241, column: 4, scope: !3831)
!3833 = !DILocation(line: 1242, column: 23, scope: !3831)
!3834 = !DILocation(line: 1244, column: 8, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 1244, column: 8)
!3836 = !DILocation(line: 1244, column: 8, scope: !3831)
!3837 = !DILocation(line: 1246, column: 8, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1245, column: 6)
!3839 = !DILocation(line: 1247, column: 26, scope: !3838)
!3840 = !DILocation(line: 1247, column: 43, scope: !3838)
!3841 = !DILocation(line: 1247, column: 8, scope: !3838)
!3842 = !DILocation(line: 1248, column: 17, scope: !3838)
!3843 = !DILocation(line: 1248, column: 8, scope: !3838)
!3844 = !DILocation(line: 1249, column: 6, scope: !3838)
!3845 = !DILocation(line: 1237, column: 60, scope: !3821)
!3846 = !DILocation(line: 1237, column: 3, scope: !3821)
!3847 = distinct !{!3847, !3822, !3848}
!3848 = !DILocation(line: 1251, column: 5, scope: !3817)
!3849 = !DILocation(line: 1253, column: 3, scope: !3808)
